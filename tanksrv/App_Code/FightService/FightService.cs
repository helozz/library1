using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using Newtonsoft.Json;

namespace TW
{
    public enum DefenceBonus
    {
        ARMOR,
        DAMAGE
    }

    public class FightService : AbstractService
    {
        private const int MinTopLevel = 10;
        private const int MaxBotCount = 5;
        private const int MaxDefenceCount = 5;
        private const int MinBotUnitPower = 50;
        private const int MaxBotUnitPower = 1200;
        private const int BestLevelStaticTopIndex = 8;
        private const int PremiumDefaultUnit = 4;
        private const int BotMinLevel = 10;
        private const int MAX_BASEVSBASE_UNIT_COUNT = 3;
        private const int defaultDeltaRating = 15;
        private const int maxDeltaRating = 25;

        private readonly List<int> powerBotList = new List<int> { 4694, 3033, 2056, 1399, 903, 581, 120 };
        private readonly List<int> placeBotList = new List<int> { 1, 65, 85, 231, 403, 901, 1350 };
        private readonly List<List<Bonus>> rewards = JsonConvert.DeserializeObject<List<List<Bonus>>>(Define.DMRewards);
        /*private readonly Dictionary<int, List<Bonus>> rewards = new Dictionary<int, List<Bonus>>() { { 1, new List<Bonus>() { new Bonus() { num = 1, type = 7, item = 1002 } } },
                                                                                                     { 2, new List<Bonus>() { new Bonus() { num = 50, type = 1 } } },
                                                                                                     { 3, new List<Bonus>() { new Bonus() { num = 20, type = 1 } } }};
        */
        private const string BattleBotName = "Guest";
        private const string AttackerPrefix = ".attacker";
        private const string DefenderPrefix = ".defender";
        private const string SyncPvPPrefix = ".pvp";


        private const string BattlesConfigCache = "BattlesConfig";
        private const string BattleMissionsCache = "BattleMissions";
        private const string BattleDefaultUnitsCache = "BattleDefaultUnits";

        private const double BattlesConfigCacheKeepMinutes = 60;

        private static readonly Dictionary<string, UserBattleState> BattleStates = new Dictionary<string, UserBattleState>();
        private static readonly ConcurrentDictionary<int, UserBattle> BotStates = new ConcurrentDictionary<int, UserBattle>();
        private static readonly ConcurrentDictionary<int, Room> RoomsPool = new ConcurrentDictionary<int, Room>();

        private static readonly object GetOrCreateRoomLock = new object();
        private static readonly object BattleStateLock = new object();
        private static readonly object PlaceLock = new object();

        //
        private readonly ClanService clanService = new ClanService();
        private readonly UserService userService = new UserService();
        private readonly RadarService radarService = new RadarService();

        private readonly Random random = new Random();

        private static int savedDayMark = DateTime.Now.DayOfYear;

        //call this method only one time
        public void InitializeUserBattles()
        {
            var db = new TanksDBDataContext();

            //delete old data
            db.UserBattles.DeleteAllOnSubmit(from c in db.UserBattles select c);

            //add bots
            int placeIndex = 0;
            int botId = -1;

            int botPlaceEnd = 1;

            float powerStep = 0f;
            float newPower = 1;
            int botPlace = 1;

            int maxBotCountInTop = placeBotList[placeBotList.Count - 1];

            for (var i = 0; i < maxBotCountInTop - 1; i++)
            {
                if (i + 1 == botPlaceEnd)
                {
                    int botPlaceStart = placeBotList[placeIndex];
                    botPlaceEnd = placeBotList[placeIndex + 1];
                    var botPowerStart = powerBotList[placeIndex];
                    var botPowerEnd = powerBotList[placeIndex + 1];
                    powerStep = (float)(botPowerEnd - botPowerStart) / (botPlaceEnd - botPlaceStart);
                    newPower = botPowerStart;
                    placeIndex++;
                }
                db.UserBattles.InsertOnSubmit(new UserBattles { userId = botId, isBot = true, place = botPlace, squadPower = (int)newPower });
                botId--;
                botPlace++;

                newPower += powerStep;
            }

            db.SubmitChanges();
        }

        public Error BuyBattleAttempts(User user)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (user.battlesLastTime > 0 && ((int)TimeSpan.FromMilliseconds(user.battlesLastTime).TotalDays >= (int)TimeSpan.FromMilliseconds(Util.GetMs()).TotalDays))
                return Error.MAX_BATTLE_ATTEMPTS_TODAY_PURCHASED;

            //validate
            var battleCost = (int)Define.Get(Def.BattleAttemptsCost);
            var battleMaxAttempts = (int)Define.Get(Def.BattleMaxAttempts);

            if (user.battlesCount >= battleMaxAttempts && user.Gold < battleCost)
                return Error.LACK_GOLD;

            new Gold(user, "battle_buy_attempts", 0, -battleCost);
            user.Gold -= battleCost;
            user.battlesLastTime = Util.GetMs();
            user.battlesCount = 0;
            user.Saving();

            return Error.OK;
        }

        public Error ResetBattleCooldown(User user)
        {
            SendRewardsForDM();
            if (user == null)
                return Error.USER_NOT_FOUND;
            /*
            var battleCooldown = (int)Define.Get(Def.BattleCooldown);
            var battleCooldownCost = (int)Define.Get(Def.BattleCooldownCost);

            var timeRamins = (user.battleTime + battleCooldown * 60 * 1000) - Util.GetMs();
            var calculatedCost = Math.Ceiling(timeRamins / (1000 * 60)) * battleCooldownCost;
            calculatedCost = Math.Max(calculatedCost, 0);

            if (user.Gold < calculatedCost)
                return Error.LACK_GOLD;

            DropBattleSate(user.id + AttackerPrefix);

            new Gold(user, "battle_reset_cooldown", 0, -calculatedCost);
            user.Gold -= calculatedCost;
            user.battleTime = 0;
            user.Saving();
            */
            return Error.OK;
        }

        public bool IsUserInBattle(string userIdWithPrefix)
        {
            UserBattleState userBattleState;
            if (!HasBattleCooldown(userIdWithPrefix))
                DropBattleSate(userIdWithPrefix);
            return BattleStates.TryGetValue(userIdWithPrefix, out userBattleState) && userBattleState.IsInBattle;
        }

        public Error StartBattle(User attackerUser, int[] attackerUnits, int opponentUserId, int fuel, double timeNow)
        {
            if (attackerUser == null)
                return Error.USER_NOT_FOUND;

            User opponentUser = null;
            if (!IsBotUser(opponentUserId) && !userService.GetUserByUserId(opponentUserId, out opponentUser))
                return Error.USER_NOT_FOUND;
            var room = GetRoomByUserId(attackerUser.id);
            if (room.type != MissionType.AsynchronousPvP) return Error.OK;
            //remove old state
            TryToDropBattleSate(attackerUser.id + AttackerPrefix);
            TryToDropBattleSate(attackerUser.id + DefenderPrefix);            

            //validate
            /*if (HasBattleCooldown(attackerUser.id + AttackerPrefix))
                return Error.BATTLE_COOLDOWN;*/

            if (attackerUser.battlesCount >= (int)Define.Get(Def.BattleMaxAttempts))
                return Error.MAX_BATTLE_ATTEMPTS_REACHED;

            if (IsUserInBattle(attackerUser.id + AttackerPrefix) || IsUserInBattle(opponentUserId + AttackerPrefix) || IsUserInBattle(opponentUserId + DefenderPrefix))
                return Error.USER_IN_BATTLE;

            //consume fuel        
            //var spendFuelResult = userService.SpendFuel(attackerUser, BuildingType.HeadQuarters, fuel, timeNow);
            //if (spendFuelResult != Error.OK)
            //    return spendFuelResult;

            //log
            var attackerBattleLog = SaveUpdateBattleLog(attackerUser, null, opponentUserId, false, 0, LogType.Attack, 0);

            UserBattleLog opponentBattleLog = null;
            if (opponentUserId > 0) //if not bot
            {
                opponentBattleLog = SaveUpdateBattleLog(opponentUser, attackerUnits, attackerUser.id, true, 0, LogType.Defence, 0);
            }

            //fight
            lock (BattleStateLock)
            {
                var startTime = Util.GetMs();
                if (BattleStates.ContainsKey(attackerUser.id + AttackerPrefix))
                    BattleStates.Remove(attackerUser.id + AttackerPrefix);
                if (BattleStates.ContainsKey(opponentUserId + DefenderPrefix))
                    BattleStates.Remove(opponentUserId + DefenderPrefix);
                BattleStates.Add(attackerUser.id + AttackerPrefix, new UserBattleState { IsInBattle = true, StartTime = startTime, BattleLogId = attackerBattleLog.id });
                BattleStates.Add(opponentUserId + DefenderPrefix, new UserBattleState { IsInBattle = true, StartTime = startTime, BattleLogId = opponentBattleLog == null ? 0 : opponentBattleLog.id });
            }

            attackerUser.battlesCount++;
            attackerUser.battleTime = Util.GetMs();
            attackerUser.Saving();

            var todoService = new TodoService();
            todoService.ProcessTodoStep(attackerUser, TodoService.TodoStepType.PlayBattleArena);

            return Error.OK;
        }

        //Arena
        public Error EndBattle(User attackerUser, int missionId, int opponentUserId, BattleResultStat respve, int statusWin, int userPower, double timeNow, bool swap = true, bool online = false) //ARENA
        {
            int deltaRating = 0;
            if (attackerUser == null)
                return Error.USER_NOT_FOUND;

            User opponentUser = null;
            if (!IsBotUser(opponentUserId) && !userService.GetUserByUserId(opponentUserId, out opponentUser))
                return Error.USER_NOT_FOUND;

            var response = string.Empty;

            //swap
            lock (BattleStateLock)
            {
                UserBattleState attackerUserBattleState;
                if (BattleStates.TryGetValue(attackerUser.id + AttackerPrefix, out attackerUserBattleState))
                {
                    var db = new TanksDBDataContext();
                    var cust = Query.GetBattleLogById(db, attackerUserBattleState.BattleLogId);
                    var ub = cust.FirstOrDefault();
                    if (ub != null && ub.deltaRating == 0 && swap)
                    {
                        int placeDelta = 0;
                        deltaRating = SwapBattleUsers(attackerUser, opponentUserId, ref placeDelta, statusWin == 1, online);
                        var todoService = new TodoService();
                        if (statusWin == 1)
                        {
                            todoService.ProcessTodoStep(attackerUser, TodoService.TodoStepType.WinBattleArena);
                        }
                        SaveUpdateBattleLog(attackerUser, null, opponentUserId, statusWin == 1, attackerUserBattleState.BattleLogId, LogType.Attack, deltaRating);

                        UserBattleState opponentUserBattleState;
                        if (opponentUserId > 0 && BattleStates.TryGetValue(opponentUserId + DefenderPrefix, out opponentUserBattleState)) //if not bot
                        {
                            SaveUpdateBattleLog(opponentUser, null, attackerUser.id, statusWin == 0, opponentUserBattleState.BattleLogId, LogType.Defence, -deltaRating);                            
                        }

                        UserBattleState attackerBattleState;
                        if (BattleStates.TryGetValue(attackerUser.id + AttackerPrefix, out attackerBattleState))
                        {
                            attackerBattleState.IsInBattle = false; //save data for cooldown
                        }
                        BattleStates.Remove(opponentUserId + DefenderPrefix);

                    }
                }
                

                //calculate reward            
            }
            var endBattleResult = GetMissionReward(attackerUser, missionId, userPower, statusWin, respve, timeNow);
            return endBattleResult;
        }

        private Error GetMissionReward(User user, int missionId, int userPower, int statusWin, BattleResultStat respvp, double timeNow, int points = 0)
        {
            var db = new TanksDBDataContext();
            var custs = Query.GetNewMissionsById(db, missionId);
            var missionData = Enumerable.FirstOrDefault(custs.Select(nm => new NewMission(nm)));
            if (missionData == null)
                return Error.NOMISSIONS_AVAILABLE;
            //Get PvPConfigs
            var custs1 = Query.ListPvPConfig(db, userPower);
            var rd = Enumerable.FirstOrDefault(custs1.Select(c => new Radar(c)));

            var rew = rd == null ? new Rewards() : RadarService.GetReward(2, rd);
            if (statusWin == 0 || statusWin == 2)
            {
                rew.money /= 2;
                rew.exp /= 2;
                rew.parts = 0;
            }
            //rewards, use premium koef there
            int moneyReward = (int)Math.Round((rew.money / 100f) * userPower);
            int partsReward = (int)Math.Round((rew.parts / 100f) * userPower);
            int experienceReward = (int)Math.Round((rew.exp / 100f) * userPower);

            var rewardItem = MarketService.GetRandomReward(user, rd.bundleId, true);
            var itemCnt = 0;
            var userItemId = 0;
            int VIPitemcnt = 0;
            var noAttempts = user.synPVP > Define.Get(Def.PVPDailyCount) & (missionData.type != MissionType.AsynchronousPvP);
            if (rewardItem != null && !noAttempts)
            {
                itemCnt = radarService.GetComponentCount(rewardItem.count, userPower, rew.compMin, rew.compMax);
                itemCnt = points > 0 ? (itemCnt * points) / 60 : itemCnt;
                VIPitemcnt = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionDropBonus, (double)itemCnt, timeNow);
                userItemId = ItemService.AddItem(user.id, rewardItem.item, itemCnt + VIPitemcnt);
            }
            if (noAttempts) // low reward, no attempts
            {
                experienceReward = 0;
                moneyReward = 0;
                partsReward /= 2;
            }

            int VIPmoneyReward = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, (double)moneyReward, timeNow);
            int VIPpartsReward = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, (double)partsReward, timeNow);
            int VIPexperienceReward = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, (double)experienceReward, timeNow);

            var resp = CompleteBattleResult(user, moneyReward, respvp, statusWin, timeNow);
            //set reward
            resp.parts = partsReward;
            resp.exp = experienceReward;
            resp.itemId = userItemId;
            resp.itemConfig = rewardItem == null ? 0 : rewardItem.item;
            resp.count = itemCnt;
            user.Experience += resp.exp;
            if (noAttempts)
            {
                resp.money = (int)(resp.repair * 1.2);
                VIPmoneyReward = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, (double)resp.money, timeNow);
            }
            else resp.money = moneyReward;
            resp.VIPmoney = VIPmoneyReward;
            resp.VIPparts = VIPpartsReward;
            resp.VIPexp = VIPexperienceReward;
            resp.VIPitem = VIPitemcnt;
            resp.rating = user.Rating;            
            //apply
            user.AddDetails(VIPpartsReward + resp.parts);
            user.AddMoney(VIPmoneyReward + resp.money - resp.repair - resp.clanTax);
            if (missionData.type == MissionType.PvPDeathmatch2x2) user.synPVP++;  // only for DeathMatch mode
            user.SetLevel(timeNow);
            var js = JsonConvert.SerializeObject(resp, Formatting.None, new BattleLogisticsConverter());
            var response = js.Replace("\"", "'");
            return Error.OK.SetData(response);
        }

        public BattleLogistics CompleteBattleResult(User user, int money, BattleResultStat resBattleLog, int winStatus, double timeNow, bool isRepairFree = false)
        {
            SharingService sharing = new SharingService();
            var resBattle = new BattleLogistics();           
            //user exp money
            if (money > 0 && user.clan_id > 0)
            {
                var service = new ClanService();
                var clan = service.GetClan(user.clan_id);

                if (clan != null)
                {
                    var tax = (int)Math.Floor(money * clan.tax / 100);
                    //money -= tax;
                    resBattle.clanTax = tax;
                    service.AddClanTreasury(clan, tax, 0);
                }
            }
            else
            {
                resBattle.clanTax = 0;
            }

            var allUnits = UserUnit.GetAllUserUnits(user);
            var allDefault = DefaultUnit.GetAllDefaultUnitsFromCache();
            var allWounds = UserWound.GetAllUserWounds(user, timeNow);
            var allCrews = UserCrew.GetUserCrewList(user);

            var woundTanks = new List<WTank>();
            foreach (var s in resBattleLog._units)
            {
                WTank tt = new WTank();
                tt.resTank = new ResTank(s);
                tt.userUnit = new UserUnit(allUnits.Find(u => u.i == s.hangarId));
                if (tt.userUnit == null) continue;
                tt.defUnit = allDefault.Find(u => u.i == tt.userUnit.t);
                tt.unitCrew = allCrews.Find(u => u.id == tt.userUnit.td);
                if (tt.unitCrew == null) continue;
                woundTanks.Add(tt);
            }

            // heal/repair/reload/ crew exp
            double credit = 0;
            double gold = 0;
            foreach (var tank in woundTanks)
            {
                if (!tank.userUnit.Reload)// || uun.rr)
                    continue;

                double[] price = tank.userUnit.GetShellPriceOnAutoReload(tank.resTank.s, tank.resTank.e, tank.defUnit.cs);
                credit += price[0];
                gold += price[1];
            }

            bool reprel = credit <= user.GetMoney() && gold <= user.Gold;
            foreach (WTank tank in woundTanks)
            {
                tank.userUnit.h += tank.resTank.h;
                if (tank.userUnit.rd && reprel)
                {
                    Int32 bsn = tank.userUnit.sn - tank.resTank.s;                    
                    tank.userUnit.sn = tank.resTank.s;
                    tank.userUnit.en = tank.resTank.e;
                    if (bsn > 0) tank.userUnit.AddBuyShell(tank.userUnit.st, bsn, 0, user, false, new DefaultUnit(tank.defUnit));                    
                }
                else
                {
                    tank.userUnit.sn = tank.resTank.s;
                    tank.userUnit.en = tank.resTank.e;
                    if (tank.userUnit.sn == 0) tank.userUnit.st = 0;
                    if (tank.userUnit.en == 0) tank.userUnit.et = 0;
                }
                if (tank.userUnit.Hp < 0 && tank.defUnit.i > 0)
                {
                    if (!isRepairFree)
                    {
                        credit += Convert.ToInt32(Math.Ceiling((double)(-tank.userUnit.Hp) * tank.defUnit.rm / (tank.defUnit.hx)));
                    }
                    tank.userUnit.h = 0;
                }

                if (!tank.unitCrew.IsMaxLevel)
                {
                    tank.unitCrew.exp += tank.resTank.p + (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, (double)tank.resTank.p, timeNow); // exp add
                    tank.unitCrew.SetLevel();
                }

                if (tank.userUnit.sharingClanUnit < 0) tank.userUnit.sharingData++;
                sharing.ReturnUnitOrSaving(user, tank.userUnit, timeNow);
            }
            //end repair/reload   
            //wounds
            foreach (WTank tank in woundTanks)
            {
                if (tank.resTank.w == null || tank.resTank.w.Length == 0)
                    continue;

                UserWound wnd = null;
                foreach (UserWound ww in allWounds)
                {
                    if (ww.crew == tank.unitCrew.id) wnd = ww;
                }

                if (wnd != null)
                {
                    if (wnd.timeEnd <= timeNow) wnd.Disappear();
                    else
                    {
                        if (wnd.wound == tank.resTank.w[0])
                        {
                            wnd.timeEnd += wnd.GetWoundTime(tank.unitCrew);
                            wnd.skillsDisabled = tank.resTank.w[1];
                            wnd.Saving();
                            resBattle.userWounds.Add(wnd);
                        }
                        if (wnd.wound > tank.resTank.w[0])
                        {
                            wnd.Disappear();
                            resBattle.userWounds.Add(new UserWound(user.id, tank.unitCrew, tank.resTank.w[0], tank.resTank.w[1], timeNow));
                        }
                    }
                }
                else resBattle.userWounds.Add(new UserWound(user.id, tank.unitCrew, tank.resTank.w[0], tank.resTank.w[1], timeNow));
            }
            //heal crew
            foreach (WTank tank in woundTanks)
            {
                if (!tank.userUnit.Repair)
                    continue;

                var userWound = resBattle.userWounds.Find(wound => wound.crew == tank.unitCrew.id);
                if (userWound == null)
                    continue;

                var healCost = userWound.GetHealCost(timeNow);
                if (user.GetMoney() < healCost)
                    continue;

                userWound.Disappear();
                credit += healCost;
            }
            //end wounds
            resBattle.rating = user.Rating;
            resBattle.repair = (int)credit;
            // user statistics          
            if (resBattle.repair > 0) // if autocombat
                user.Victories += (winStatus == 1) ? 1 : 0;
            user.Defeats += (winStatus == 0) ? 1 : 0;
            user.Draws += (winStatus == 2) ? 1 : 0;
            return resBattle;
        }

        public BattleResultStat ConvertFromResUser(ResUser rUser)
        {
            var battleResultStat = new BattleResultStat();
            foreach (string s in rUser.t)
            {
                var resTank = new ResTank(s);
                battleResultStat._units.Add(resTank.ToUnitBattleResult());
            }
            return battleResultStat;
        }


        private void RecalculateTopPlaces()
        {            
            var time = DateTime.UtcNow;
            if (time.DayOfYear > savedDayMark)
            {
                savedDayMark = time.DayOfYear;
                var db = new TanksDBDataContext();
                var custs = Query.GetBattleUsers(db);
                var data = custs.OrderByDescending(c => c.rating);
                int cnt = 1;
                foreach (var player in data)
                {
                    player.place0 = player.rating;
                    player.place = cnt++;
                }
                db.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);                
                SendRewardsForDM();
                CleanOldLogs(3);
            }
        }

        /*
        private Error CalculateReward(User user, int missionId, int userPower, int statusWin, string respve, double timeNow)
        {
            var db = new TanksDBDataContext();
            var custs = Query.GetNewMissionsById(db, missionId);
            var missionData = Enumerable.FirstOrDefault(custs.Select(nm => new NewMission(nm)));
            if (missionData == null)
                return Error.NOMISSIONS_AVAILABLE;

            //Get PvPConfigs
            var custs1 = Query.ListPvPConfig(db, userPower);
            var rd = Enumerable.FirstOrDefault(custs1.Select(c => new Radar(c)));

            var rew = rd == null ? new Rewards() : RadarService.GetReward(2, rd);
            if (statusWin == 0 || statusWin == 2)
            {
                rew.money /= 2;
                rew.exp /= 2;
                rew.parts = 0;
            }
            int moneyReward = (int)Math.Round((rew.money / 100f) * userPower);
            int partsReward = (int)Math.Round((rew.parts / 100f) * userPower);
            int experienceReward = (int)Math.Round((rew.exp / 100f) * userPower);
            if (user.synPVP > Define.Get(Def.PVPDailyCount)) experienceReward = 0;
            var rewardItem = MarketService.GetRandomReward(user, rd.bundleId, false);
            if (rewardItem == null) return Error.INCORRECT_CONFIG;
            var synchro = (missionData.type != MissionType.AsynchronousPvP);
            var itemCnt = radarService.GetComponentCount(rewardItem.count, userPower, rew.compMin, rew.compMax);     // rew[3,4] - comp koef  
            if (itemCnt < 0 || user.synPVP > Define.Get(Def.PVPDailyCount) & synchro) itemCnt = 0;
            var userItemId = ItemService.AddItem(user.id, rewardItem.item, itemCnt);

            int VIPmoneyReward = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, (double)moneyReward, timeNow);
            int VIPpartsReward = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, (double)partsReward, timeNow);
            int VIPexperienceReward = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, (double)experienceReward, timeNow);
            moneyReward += VIPmoneyReward;
            partsReward += VIPpartsReward;
            experienceReward += VIPexperienceReward;

            var resp = Game.ApplyCompleteBattleResult(user, respve, true, timeNow, 0, 0, (int)missionData.type, synchro,
                new BattleLogistics(moneyReward, partsReward, experienceReward, VIPmoneyReward, VIPpartsReward, VIPexperienceReward, userItemId, itemCnt, rewardItem.item),
                statusWin == 1);

            user.SetLevel(timeNow);
            var js = JsonConvert.SerializeObject(resp, Formatting.None, new BattleLogisticsConverter());
            var response = js.Replace("\"", "'");
            return Error.OK.SetData(response);
        }*/

        public Error PreBattleStart(User user, int[] unitsIds, int money, int gold, out PreBattleRquestResult rquestResult)
        {
            rquestResult = null;
            if (user == null)
                return Error.USER_NOT_FOUND;

            int moneyResult, goldResult;
            userService.TryToCorrectBalance(user, money, gold, out moneyResult, out goldResult);
            TryToRepairUserUnits(user, unitsIds);

            rquestResult = new PreBattleRquestResult { money = moneyResult, gold = goldResult };

            return Error.OK;
        }

        private void TryToRepairUserUnits(User user, int[] unitsIds)
        {
            var result = false;
            foreach (var id in unitsIds)
            {
                var userUnit = new UserUnit(id);
                if (userUnit.Id == 0 || userUnit.Hp == 0)
                    continue;

                var defaultUnit = GetConfigByDefaultUnitId(userUnit.DefaultUnitId);
                if (defaultUnit == null || user.GetMoney() < userUnit.GetRepairPrice(defaultUnit))
                    continue;

                user.SpendMoney(userUnit.GetRepairPrice(defaultUnit));
                userUnit.Hp = 0;
                userUnit.Saving();

                result = true;
            }

            if (result)
                user.Saving();
        }

        private Error RegisterBattleUser(User user)
        {
            var defaultUnits = GetDefaultUnits();

            var db = new TanksDBDataContext();
            var unitsCuts = Query.ListUserUnitsById(db, user.id);
            var userUnits = unitsCuts.Select(us => new UserUnit(us)).ToList();

            userUnits.Sort((u1, u2) => u2.power.CompareTo(u1.power));

            //validate default unit config
            foreach (var userUnit in new List<UserUnit>(userUnits))
            {
                if (defaultUnits.Find(unit => unit.Id == userUnit.DefaultUnitId) == null)
                {
                    userUnits.Remove(userUnit);
                }
            }
            int power = 0;
            var defeceList = new List<int>();
            for (var i = 0; i < MaxDefenceCount; i++)
            {
                if (i >= userUnits.Count)
                    break;
                power += userUnits[i].power;
                defeceList.Add(userUnits[i].i);
            }

            var addBattleDefenceResult = AddBattleDefence(user, defeceList.ToArray(),power);
            if (addBattleDefenceResult != Error.OK)
                return addBattleDefenceResult;

            lock (PlaceLock)
            {
                var lastUserBattle = GetBattleUsersLastPlace(db);
                var lastPlace = lastUserBattle == null ? 0 : lastUserBattle.place;

                db.UserBattles.InsertOnSubmit(new UserBattles { userId = user.id, isBot = false, place = lastPlace + 1, squadPower = 0, rating = 100 });
                db.SubmitChanges();
                user.Rating = 100;
                user.battleDailyRewardTime = Util.GetMs();
                user.Saving();
            }

            return Error.OK;
        }

        public void ResetBattleAndScanState(User user)
        {
            int actions = 0;
            if (user.battleTime > 0 && Util.IsNewDay(user.battleTime))
            {
                user.battlesCount = 0;
                user.battleTime = 0;
                user.battlesLastTime = 0;
                actions++;
            }

            if (user.battlesLastScan > 0 && Util.IsNewDay(user.battlesLastScan))
            {
                user.battlesLastScan = 0;
                user.battlesScan = 0;
                actions++;
            }

            if (actions > 0)
                user.Saving();
        }

        private int CalculateDeltaRating(int rating1, int rating2, bool win)
        {
            return win ? Math.Min(defaultDeltaRating - Math.Min((rating1 - rating2) / defaultDeltaRating, defaultDeltaRating), maxDeltaRating) :
                Math.Min(defaultDeltaRating + Math.Min((rating1 - rating2) / defaultDeltaRating, defaultDeltaRating), maxDeltaRating);             
        }

        private int SwapBattleUsers(User attackerUser, int opponentUserId, ref int placeDeltaResult, bool win = true, bool online = false)
        {
            var attackerBattleData = GetUserBattleByUserId(attackerUser.id);
            var opponentBattleData = GetUserBattleByUserId(opponentUserId);

            //rating change

            int delta = 15;
            if (!online) delta = CalculateDeltaRating(attackerBattleData.rating, opponentBattleData.rating, win);
            if (win)
            {                
                attackerBattleData.rating += delta;
                opponentBattleData.rating -= delta;
            }
            else 
            {             
                attackerBattleData.rating -= delta;
                opponentBattleData.rating += delta;
            }                        
                       
            attackerUser.Rating = attackerBattleData.rating;
                           
            attackerBattleData.Update();
            opponentBattleData.Update();
            attackerUser.Saving();
            RecalculateTopPlaces();
            return delta;                 
        }

        public UserBattle GetUserBattleByUserId(int userId)
        {
            var db = new TanksDBDataContext();
            var custs = Query.GetUserBattleByUserId(db, userId);            
            return Enumerable.FirstOrDefault(custs.Select(ub => new UserBattle(ub, null, null, null)));
        }

        private int GetNewBattleLogsCount(int userId)
        {
            var delay = Define.Get(Def.BattleCooldown) * 60 * 1000;

            var db = new TanksDBDataContext();
            var logsCusts = Query.GetBattleLogByIdByViewedAndStamp(db, userId, Util.GetMs() - delay);
            return logsCusts.Count();
        }

        private UserBattle GetBotBattleByBotId(int botId)
        {
            UserBattle result;
            BotStates.TryGetValue(botId, out result);
            return result;
        }

        private List<Battle> GetBattleConfig()
        {
            var result = Caching.Get<List<Battle>>(BattlesConfigCache);
            if (result != null)
                return result;

            var db = new TanksDBDataContext();
            var custs = Query.GetBattlesConfig(db);

            result = new List<Battle>();
            result.AddRange(custs.Select(bt => new Battle(bt)));

            Caching.Add(BattlesConfigCache, result, BattlesConfigCacheKeepMinutes);

            return result;
        }

        public string GetUserBattleState(User user)
        {
            if (user == null)
                return Util.ToJson(Error.USER_NOT_FOUND);

            var userBattle = GetUserBattleByUserId(user.id);
            if (userBattle == null)
                return Util.ToJson(Error.INCORRECT_VALUE);

            var newBattleLogsCount = GetNewBattleLogsCount(user.id);
            return Util.ToJson(new UserBattleStateRequestResult { rating = userBattle.rating, attacked = newBattleLogsCount > 0 });
        }

        public string GetBattleState(User user)
        {
            if (user == null)
                return Util.ToJson(Error.USER_NOT_FOUND);

            var userBuilding = new UserBuilding(user.id, BuildingType.BattleArena);
            if (userBuilding.id == 0)
                return Util.ToJson(Error.NOT_SUCH_A_BUILDING);

            var currentUserBattleState = GetUserBattleByUserId(user.id);
            if (currentUserBattleState == null)
            {
                var registerBattleUser = RegisterBattleUser(user);
                if (registerBattleUser != Error.OK)
                    return Util.ToJson(registerBattleUser);
                currentUserBattleState = GetUserBattleByUserId(user.id);
                if (currentUserBattleState == null)
                    currentUserBattleState = new UserBattle();
            }

            var currentUserLeague = GetBattleConfigForUser(user.id);
            //var battleOponnentsForCurrentUser = GetBattleOpponentForUsers(user.id);
            //var battleMission = GetRandomBattleMission(MissionType.AsynchronousPvP);
            var currentUserBattleSquad = JsonConvert.DeserializeObject<int[]>("[" + user.battleSquad + "]");
            var newBattleLogsCount = GetNewBattleLogsCount(user.id);

            return Util.ToJson(new BattleRequestResult
            {
                newLogs = newBattleLogsCount,
                league = currentUserLeague.league,
                bestLvlReward = user.battleBestReward,
                squad = currentUserBattleSquad,
                rating = currentUserBattleState.rating,
                attackBonusExpirationTime = currentUserBattleState.attackBonus,
                defenseBonusExpirationTime = currentUserBattleState.defenseBonus
            });
        }

        // get opponent for Arena
        public string ScanForBattleOpponents(User user, int power, int[] units)
        {
            if (user == null)
                return Util.ToJson(Error.USER_NOT_FOUND);
   
            var battleOpponentForCurrentUser = GetBattleOpponentForUser(user.id);
            var attackerBattleData = GetUserBattleByUserId(user.id);
            var room = GetRoom(user, MissionType.AsynchronousPvP, power, units);            
            battleOpponentForCurrentUser.squadCrews = GetUserCrews(battleOpponentForCurrentUser.squadUnits);       
            battleOpponentForCurrentUser.userProfile.stats = new[] { 0, 0, 0, CalculateDeltaRating(attackerBattleData.rating, battleOpponentForCurrentUser.rating, true), CalculateDeltaRating(attackerBattleData.rating, battleOpponentForCurrentUser.rating, false) };
            room.players.Add(new UserBattleInfo(UserBattleInfo.BattleSide.SideB, battleOpponentForCurrentUser));
            room.open = false;
            return Util.ToJson(room);
        }

        private UserBattle GetBattleOpponentForUser(int userId)
        {
            var result = new List<UserBattle>();

            var db = new TanksDBDataContext();            
            var currentUserBattleState = GetUserBattleByUserId(userId);

            int power = currentUserBattleState.squadPower;
            var room = GetRoomByUserId(userId);
            if (room != null)
                power = room.power;
            var currentUserPlace = currentUserBattleState.place;
            //var step = Math.Max(1, currentUserPlace / 50f);
            //var p1 = step * 5;

            var from = (int)(currentUserBattleState.rating - 100);
            var to = (int)(currentUserBattleState.rating + currentUserBattleState.rating * 0.33f);
            var fromPower =(int)(power - power * 0.2f);
            var toPower = (int)(power + power * 0.3f);
            /*if (currentUserPlace < 5)
                    to = Math.Max(currentUserPlace + (int)Math.Ceiling(p1), 1);*/           
            
            var custs = new List<UserBattles>();
            // data1 = Query.GetBattleOpponentsForUser(db, from, to, currentUserPlace).Take(100).ToList();
            //var data1 = Query.GetBattleOpponentsByPower(db, from, to, currentUserPlace).OrderByDescending(o => o.place).ToList();
            //var data1 = Query.GetBattleOpponentsByRating(db, from, to, currentUserPlace).ToList();
            var data1 = new List<UserBattles>();
            if (from > 900) data1 = Query.GetBattleOpponentsByRating(db, from, to, currentUserPlace).ToList();
            else
            {
                data1 = Query.GetBattleOpponentsByRatingAndPower(db, from, to, fromPower, toPower, currentUserPlace).ToList();
                if (data1.Count == 0) data1 = Query.GetBattleOpponentsByRating(db, from, to, currentUserPlace).ToList();
            }

            //filter by power   
            var delta = (int)(power * 0.05f);
            var newDelta = 0;
            var opponentsRange = new List<UserBattles>();      
            var rand = new Random();
            if (from > 900)
            {
                opponentsRange.InsertRange(0, data1);                
            }
            else while (opponentsRange.Count < 5 && newDelta < delta * 7)
            {
                newDelta += delta;
                opponentsRange = data1.FindAll(p => p.squadPower > fromPower + newDelta);
            }
            
            if (opponentsRange.Count > 0)
            {                
                foreach (var ubs in opponentsRange.OrderBy(u => u.squadPower))
                {
                    if (!ubs.isBot)
                        custs.Add(ubs);
                    if (custs.Count == 10) break;
                }
                if (custs.Count < 3)
                {
                    custs.Add(opponentsRange[rand.Next(opponentsRange.Count)]);
                }
            }
            else
            {
                //var filtered = data1.FindAll(p => p.squadPower > power || p.squadPower < 250);
                custs.Add(data1[rand.Next(data1.Count)]);
            }
            foreach (var userBattles in custs)
            {
                //validate                                

                if (IsUserInBattle(userBattles.id + AttackerPrefix) || IsUserInBattle(userBattles.id + DefenderPrefix))
                    continue;

                var units = new List<UserUnit>();

                //1 - add player
                if (!userBattles.isBot)
                {
                    var userDefenderSquadUnits = GetUserDefenderSquadUnits(userBattles.userId);
                    result.Add(new UserBattle(userBattles, userService.GetUserProfile(userBattles.userId), userDefenderSquadUnits, GetUserCrews(userDefenderSquadUnits)));
                    continue;
                }

                //2 - add bot
                var botBattleByBotId = GetBotBattleByBotId(userBattles.userId);
                if (botBattleByBotId == null)
                {
                    units.AddRange(GetOrGenerateBotUnits(userBattles.userId, userBattles.squadPower));

                    var userProfile = new UserProfile {id = userBattles.userId, name = BattleBotName, level = GenerateBotLevel(units) };
                    result.Add(new UserBattle(userBattles, userProfile, units));

                    //save cache for bot
                    BotStates.TryAdd(userBattles.userId, new UserBattle(userBattles, userProfile, units));
                }
                else
                {
                    result.Add(botBattleByBotId);
                }
            }
            var rnd = new Random();
            return result[rnd.Next(result.Count)];
        }

        public void RecalculateSquadPower()
        {
            var db = new TanksDBDataContext();
            var custs = Query.GetBattleUsers(db);
            foreach (var ubs in custs)
            {
                var userDefenderSquadUnits = GetUserDefenderSquadUnits(ubs.userId);
                ubs.squadPower = userDefenderSquadUnits.Sum(a => a.power);                
            }
            db.SubmitChanges();
        }

        private UserBattles AddMissingBotToTop(TanksDBDataContext db, int missingPlace, int power)
        {            
                //
                var userBattles = new UserBattles { userId = 0, isBot = true, place = missingPlace, squadPower = (int)power, rating = 100 };
                db.UserBattles.InsertOnSubmit(userBattles);
                db.SubmitChanges();

                userBattles.userId = -userBattles.id;
                db.SubmitChanges();

                return userBattles;         
        }

        private Battle GetBattleConfigForUser(int userId)
        {
            var db = new TanksDBDataContext();
            var currentUserBattleState = GetUserBattleByUserId(userId);            
            var battleConfig = GetBattleConfig();
            var battleUsersCount = GetBattleUsersCount(db);

            var staticTop = battleConfig.FindLast(battle => battle.toPlace > 0).toPlace;
            var currentBattleConfig = battleConfig.Last();
            if (currentUserBattleState == null) return currentBattleConfig;
            var currentUserPlace = currentUserBattleState == null ? battleUsersCount : currentUserBattleState.place0;

            if (currentUserBattleState.rating > 0)
            {
                foreach (var config in battleConfig)
                {
                    if (currentUserBattleState.rating < config.fromPlace || currentUserBattleState.rating > config.toPlace)
                        continue;

                    currentBattleConfig = config;
                    break;
                }
            }
            else
            {
                currentUserPlace = currentUserPlace - staticTop; //because we divide pool
                var battleUsersPool = battleUsersCount - staticTop;
                var userPercentageInBattlePool = (100f / battleUsersPool) * currentUserPlace;

                var sumPercentage = 0;
                foreach (var config in battleConfig)
                {
                    if (config.percentage == 0) //skip if is static top (like top 50)
                        continue;

                    sumPercentage += config.percentage;
                    if (sumPercentage < userPercentageInBattlePool)
                        continue;

                    currentBattleConfig = config;
                    break;
                }
            }

            return currentBattleConfig;
        }

        private NewMission GetRandomBattleMission(MissionType type)
        {
            var result = Caching.Get<List<NewMission>>(BattleMissionsCache + type.ToString());

            if (result == null || result.Count == 0)
            {
                var db = new TanksDBDataContext();
                var custs = Query.ListNewMissionsByType(db, (int)type).ToList();
                if (custs.Count == 0) return null;
                result = new List<NewMission>();
                result.AddRange(custs.Select(ms => new NewMission(ms)));

                Caching.Add(BattleMissionsCache + type.ToString(), result, BattlesConfigCacheKeepMinutes);
            }

            var next = random.Next(0, result.Count);
            return result[next];
        }

        public Error AddBattleDefence(User user, int[] squadParameters, int power)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (squadParameters == null || squadParameters.Length == 0)
                return Error.BATTLE_DEFENSE_NOT_SET;
            /*
            foreach (var unitId in squadParameters)
            {
                var userUnit = new UserUnit(unitId);
                if (userUnit.i == 0)
                    return Error.INCORRECT_VALUE;
            }*/

            var battleSquad = SquadParametersToString(squadParameters);
            user.battleSquad = battleSquad;
            user.Saving();
            var db = new TanksDBDataContext();
            var currentUserBattleState = GetUserBattleByUserId(user.id);
            if (currentUserBattleState != null)
            {
                currentUserBattleState.squadPower = power;
                currentUserBattleState.Update();
            }            
            return Error.OK;
        }

        public Error ClaimBattleReward(User user)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;
            if (user.battleDailyRewardTime == 0)
            {
                user.battleDailyRewardTime = Util.GetMs();
            }

            if (user.battleDailyRewardTime > 0 && ((int)TimeSpan.FromMilliseconds(user.battleDailyRewardTime).TotalDays >= (int)TimeSpan.FromMilliseconds(Util.GetMs()).TotalDays))
                return Error.BATTLE_DAILY_REWARD_ALREADY_TAKEN;

            var battleConfig = GetBattleConfigForUser(user.id);
            foreach (var dailyReward in battleConfig.dailyRewards)
            {
                user.AddBonus(dailyReward, "battle_daily_bonus");
            }

            user.battleDailyRewardTime = Util.GetMs();
            user.Saving();

            return Error.OK;
        }

        public Error ClaimBattleBestLevelReward(User user)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            var battleBestReward = user.battleBestReward;
            if (battleBestReward <= 0)
                return Error.INCORRECT_VALUE;

            new Gold(user, "battle_best_lvl_reward", 0, battleBestReward);
            user.Gold += battleBestReward;
            user.battleBestReward = 0;
            user.Saving();

            return Error.OK;
        }

        private UserBattleLog SaveUpdateBattleLog(User attackerUser, int[] attackerUnits, int opponentUserId, bool statusWin, int battleLogId, LogType logType, int delta)
        {
            //1 - try to update log
            UserBattleLog userBattleLog;
            if (battleLogId > 0)
            {
                var db = new TanksDBDataContext();
                var cust = Query.GetBattleLogById(db, battleLogId);

                userBattleLog = Enumerable.FirstOrDefault(cust.Select(ubl => new UserBattleLog(ubl)));

                if (userBattleLog != null)
                {
                    if (statusWin) userBattleLog.deltaRating = Math.Abs(delta);
                    else userBattleLog.deltaRating = delta;
                    userBattleLog.win = statusWin;
                    userBattleLog.Update();
                    return userBattleLog;
                }
            }

            //2 - try to insert new log
            User opponentUser = null;
            var botBattle = GetBotBattleByBotId(opponentUserId);
            if (botBattle == null)
            {
                userService.GetUserByUserId(opponentUserId, out opponentUser);
            }

            //get squad
            var opponentSquadPower = 0;
            var opponentSquad = string.Empty;
            var opponentSquadLvl = string.Empty;
            List<UserUnit> squadUnits;
            switch (logType)
            {
                case LogType.Attack:
                    squadUnits = opponentUser == null ? GetBotSquadUnits(opponentUserId) : GetUserDefenderSquadUnits(opponentUserId);
                    break;
                default:
                    squadUnits = GetUserUnits(attackerUnits);
                    break;
            }

            foreach (var squadUnit in squadUnits)
            {
                if (opponentSquad.Length > 0)
                {
                    opponentSquad += ",";
                    opponentSquadLvl += ",";
                }

                opponentSquad += squadUnit.t + ":" + squadUnit.power;
                opponentSquadPower += squadUnit.power;
                opponentSquadLvl += squadUnit.GetUpgradesSet();
            }

            //get clan
            Clan opponentClan = null;
            if (opponentUser != null && opponentUser.clan_id > 0)
            {
                opponentClan = clanService.GetClan(opponentUser.clan_id);
            }

            //add log record
            userBattleLog = new UserBattleLog
            {
                userId = attackerUser.id,                
                enemyId = opponentUserId,
                enemyLvl = opponentUser == null ? botBattle.userProfile.level : opponentUser.UserLevel,
                enemyName = opponentUser == null ? botBattle.userProfile.name : opponentUser.Name,
                enemyClan = opponentClan == null ? string.Empty : opponentClan.name, //
                enemySquadPower = opponentSquadPower,
                type = (int)MissionType.AsynchronousPvP,
                enemySquad = opponentSquad, //
                timestamp = Util.GetMs(),                
                win = statusWin,
                logType = logType,
                viewed = false,                
                enemyClanIcon = opponentClan == null ? string.Empty : opponentClan.logo,
                deltaRating = delta
            };

            userBattleLog.Save();
            return userBattleLog;
        }

        public List<UserUnit> GetUserUnits(int[] userUnitIds)
        {
            var result = new List<UserUnit>();
            if (userUnitIds == null)
                return result;

            foreach (var unitId in userUnitIds)
            {
                if (unitId == 0) continue;
                var userUnit = new UserUnit(unitId);
                if (userUnit.Id == 0)
                    continue;

                result.Add(userUnit);
            }

            return result;
        }

        public List<UserCrew> GetUserCrews(List<UserUnit> units)
        {
            var result = new List<UserCrew>();
            if (units == null || units.Count == 0)
                return result;

            var db = new TanksDBDataContext();
            var userCrews = Query.ListUserCrewsByUserId(db, units[0].UserId);//userUnit.CrewId
            var userSquad = userCrews.Select(c => new UserCrew(c)).ToList();
            units = units.FindAll(u => u.CrewId != 0);
            result.AddRange(units.Select(unit => userSquad.Find(u => u.id == unit.CrewId)));
            return result;
        }

        public List<UserUnit> GetUserUnitsTop(int userId, int top)
        {
            var db = new TanksDBDataContext();
            var unitsCuts = Query.ListUserUnitsById(db, userId);
            var userUnits = unitsCuts.Select(us => new UserUnit(us)).ToList();

            userUnits.Sort((u1, u2) => u2.power.CompareTo(u1.power));
            return userUnits.GetRange(0, Math.Min(top, userUnits.Count));
        }

        private List<UserUnit> GetUserDefenderSquadUnits(int userId)
        {
            var result = new List<UserUnit>();

            User opponentUser;
            if (!userService.GetUserByUserId(userId, out opponentUser))
                return result;

            foreach (var unitId in SquadParametersToArray(opponentUser.battleSquad))
            {
                var userUnit = new UserUnit(unitId);
                if (userUnit.i == 0)
                    continue;

                result.Add(userUnit);
            }

            return result;
        }

        public Error BuyArenaBonus(User user, double timeNow, DefenceBonus bonusType)
        {
            var timeStamp = timeNow + Define.Get(Def.ArenaBonusDuration);
            var battleData = GetUserBattleByUserId(user.id);
            if (bonusType == DefenceBonus.DAMAGE)
            {
                if (user.Gold < Define.Get(Def.ArenaAttackBonusPrice)) return Error.LACK_GOLD;
                battleData.attackBonus = timeStamp;
            }
            if (bonusType == DefenceBonus.ARMOR)
            {
                if (user.GetMoney() < Define.Get(Def.ArenaDefenceBonusPrice)) return Error.LACK_MONEY;
                battleData.defenseBonus = timeStamp;
            }
            battleData.Update();
            return Error.OK.SetData(Util.ToJson(timeStamp));
        }

        private int GenerateBotLevel(List<UserUnit> units)
        {
            var defaultUnits = GetDefaultUnits();

            var defaultUnit = defaultUnits.Find(unit => unit.i == units[0].DefaultUnitId);
            var maxTier = defaultUnit.Tier;

            for (int i = 1; i < units.Count - 1; i++)
            {
                defaultUnit = defaultUnits.Find(unit => unit.i == units[i].DefaultUnitId);
                if (defaultUnit.Tier > maxTier)
                    maxTier = defaultUnit.Tier;
            }

            return Math.Max(BotMinLevel, ((maxTier - 1) * BotMinLevel) + random.Next(1, 9));
        }

        private List<UserUnit> GetBotSquadUnits(int botId)
        {
            UserBattle userBattle;
            return BotStates.TryGetValue(botId, out userBattle) ? userBattle.squadUnits : null;
        }

        private bool IsBotUser(int userId)
        {
            var result = GetUserBattleByUserId(userId);
            return result != null && result.isBot;
        }

        private int GetBattleUsersCount(TanksDBDataContext db)
        {
            return Query.CountBattleUsers(db);
        }

        private UserBattle GetBattleUsersLastPlace(TanksDBDataContext db)
        {
            var custs = Query.GetBattleUsersLastPlace(db);
            var result = Enumerable.FirstOrDefault(custs.Select(ub => new UserBattle(ub, null, null, null)));

            return result;
        }

        private List<UserUnit> GetOrGenerateBotUnits(int botId, int squadPower)
        {
            //try to get bot squad
            var result = GetBotSquadUnits(botId);
            if (botId != -1 && result != null && result.Count > 0)
                return result;

            //get cached default units (config)
            var defaultUnits = new List<DefaultUnit>(GetDefaultUnits());
            defaultUnits.RemoveAll(unit => unit.p == PremiumDefaultUnit);

            //generate power
            var powerData = new List<int>();
            var maxUnitCount = squadPower / MinBotUnitPower < MaxBotCount ? squadPower / MinBotUnitPower : MaxBotCount;
            var averagePower = (float)squadPower / maxUnitCount;
            var fromPower = (int)Math.Max((averagePower / 1.3f), MinBotUnitPower);
            var toPower = (int)Math.Min(averagePower * 1.3f, MaxBotUnitPower);
            var sumPower = 0;
            for (var i = 0; i < maxUnitCount - 1; i++)
            {
                var power = random.Next(fromPower, toPower);
                powerData.Add(power);
                sumPower += power;
            }

            var lastUnitPower = squadPower - sumPower;
            var averagePowerHalf = averagePower / 2;
            if (lastUnitPower < averagePowerHalf)
                maxUnitCount--;
            else
                powerData.Add(lastUnitPower);


            //distribute power
            result = new List<UserUnit>();
            for (int i = 0; i < maxUnitCount; i++)
            {
                var calculatedPower = powerData[i];
                //var botUnitByPower = defaultUnits.Find(unit => unit.c >= calculatedPower);
                DefaultUnit botUnitByPower = null;
                //if (botUnitByPower == null)
                {
                    var filter = defaultUnits.FindAll(unit => unit.c < calculatedPower * 1.3 && unit.c > calculatedPower * 0.8);
                    int delta = MaxBotUnitPower;
                    foreach (var unit in filter)
                    {
                        if (Math.Abs(unit.c - calculatedPower) < delta)
                        {
                            delta = Math.Abs(unit.c - calculatedPower);
                            botUnitByPower = unit;
                        }

                    }
                }
                botUnitByPower = botUnitByPower ?? defaultUnits.Find(unit => unit.c >= calculatedPower);
                botUnitByPower = botUnitByPower ?? defaultUnits.Last();

                //var botUnitsByTier = defaultUnits.FindAll(unit => unit.sz == botUnitByPower.sz);
                //var botUnit = botUnitsByTier[random.Next(0, botUnitsByTier.Count - 1)];

                result.Add(new UserUnit(new UserUnits()) { power = botUnitByPower.Power, t = botUnitByPower.Id, sn = botUnitByPower.AmmoSize });
            }

            return result;
        }

        private List<UserCrew> GenerateBotCrews(List<UserUnit> units)
        {
            var result = new List<UserCrew>();
            foreach (var unit in units)
            {
                var id = unit.CrewId;
                if (unit.CrewId == 0) id = random.Next(50);  // need test          
                result.Add(new UserCrew(id));
            }
            return result;
        }

        private List<UserUnit> GenerateBotUnitsForPvP(int squadPower, List<UserUnit> units)
        {
            //get cached default units (config)
            var defaultUnits = new List<DefaultUnit>(GetDefaultUnits());
            //defaultUnits.RemoveAll(unit => unit.p == PremiumDefaultUnit);

            //generate power
            var powerData = new List<int>();
            var maxUnitCount = units.Count;
            var averagePower = (float)squadPower / maxUnitCount;
            var fromPower = (int)Math.Max((averagePower / 1.3f), MinBotUnitPower);
            var toPower = (int)Math.Min(averagePower * 1.3f, MaxBotUnitPower);
            var sumPower = 0;
            for (var i = 0; i < maxUnitCount - 1; i++)
            {
                var power = random.Next(fromPower, toPower);
                powerData.Add(power);
                sumPower += power;
            }

            var lastUnitPower = squadPower - sumPower;
            var averagePowerHalf = averagePower / 2;
            if (lastUnitPower < averagePowerHalf)
                maxUnitCount--;
            else
                powerData.Add(lastUnitPower);


            //distribute power
            int maxTier = 0;
            foreach (var unit in units)
            {
                maxTier += unit.Tier;
            }
            maxTier = (int)Math.Round((double)maxTier / maxUnitCount);
            var result = new List<UserUnit>();
            for (int i = 0; i < maxUnitCount; i++)
            {
                var calculatedPower = powerData[i];
                //var botUnitByPower = defaultUnits.Find(unit => unit.c >= calculatedPower);
                DefaultUnit botUnitByPower = null;
                //if (botUnitByPower == null)
                {
                    var filter = defaultUnits.FindAll(unit => unit.c < calculatedPower * 1.4 && unit.c > calculatedPower * 0.8 && unit.Tier <= maxTier);
                    int delta = MaxBotUnitPower;
                    foreach (var unit in filter)
                    {
                        if (Math.Abs(unit.c - calculatedPower) < delta)
                        {
                            delta = Math.Abs(unit.c - calculatedPower);
                            botUnitByPower = unit;
                        }

                    }
                }
                botUnitByPower = botUnitByPower ?? defaultUnits.Find(unit => unit.c >= calculatedPower);
                //botUnitByPower = botUnitByPower ?? defaultUnits.Last();

                //var botUnitsByTier = defaultUnits.FindAll(unit => unit.sz == botUnitByPower.sz);
                //var botUnit = botUnitsByTier[random.Next(0, botUnitsByTier.Count - 1)];

                result.Add(new UserUnit(new UserUnits()) { power = botUnitByPower.Power, t = botUnitByPower.Id, sn = botUnitByPower.AmmoSize });
            }

            return result;
        }

        private List<DefaultUnit> GetDefaultUnits()
        {
            var defaultUnits = Caching.Get<List<DefaultUnit>>(BattleDefaultUnitsCache);
            if (defaultUnits != null)
                return defaultUnits;

            var db = new TanksDBDataContext();
            var custs = Query.GetDefaultUnits(db);

            defaultUnits = custs.Select(units => new DefaultUnit(units)).ToList();
            defaultUnits.RemoveAll(unit => unit.i < 200);
            defaultUnits.Sort(delegate (DefaultUnit df1, DefaultUnit df2)
            {
                if (df1.c < df2.c)
                    return -1;

                return df1.c > df2.c ? 1 : df1.sz.CompareTo(df2.sz);
            });

            Caching.Add(BattleDefaultUnitsCache, defaultUnits);

            return defaultUnits;
        }

        private void CalculateBestLevelRewardForUser(User user, int bestPlace)
        {/*
            var dynamicTopGoldReward = (int)Define.Get(Def.BattleDynamicTopGoldReward);
            var staticTopGoldReward = (int)Define.Get(Def.BattleStaticTopGoldReward);

            var db = new TanksDBDataContext();
            var battleUsersCount = GetBattleUsersCount(db);
            var battleConfig = GetBattleConfig();

            var battle = battleConfig[BestLevelStaticTopIndex];
            var staticTop = battle.toPlace;
            var lastBestLvlReward = user.battleBestLvlReward;

            //
            double reward = 0;

            //calculate dynamic top reward
            if (lastBestLvlReward < dynamicTopGoldReward)
            {
                reward += CalculateBestLevelReward(dynamicTopGoldReward, battleUsersCount - staticTop, Math.Max(bestPlace - staticTop, 0), lastBestLvlReward); //dynamic top reward
            }

            //calculate static top reward
            reward += CalculateBestLevelReward(staticTopGoldReward, staticTop, bestPlace, Math.Max(lastBestLvlReward - dynamicTopGoldReward, 0)); //static top reward        
            reward = Math.Max(reward, 1);

            user.battleBestLvlReward += reward;
            user.battleBestReward = reward;
            user.Saving();*/
        }

        public int CalculateUserPower(int userId, TanksDBDataContext dbContext = null)
        {
            var db = dbContext ?? new TanksDBDataContext();
            var custs = Query.ListUserUnitsById(db, userId);

            return custs.Sum(units => units.power);
        }

        public int CalculateUserPower(int userId, int top, TanksDBDataContext dbContext = null)
        {
            var db = dbContext ?? new TanksDBDataContext();
            var custs = Query.ListUserUnitsById(db, userId);

            var result = custs.Select(units => new UserUnit(units)).ToList();
            result.Sort((u1, u2) => u2.power.CompareTo(u1.power));

            var power = 0;
            for (int i = 0; i < Math.Min(top, result.Count); i++)
            {
                power += result[i].power;
            }

            return power;
        }

        private double CalculateBestLevelReward(int bonusReward, int battleUsersPool, int currentBestPlace, double lastBestLevelReward)
        {
            double lastRewardInPercentage = (lastBestLevelReward / bonusReward) * 100d;
            double currentRewardPercentage = (battleUsersPool - currentBestPlace) * (100d / battleUsersPool);
            double calculatedRewardPercentage = currentRewardPercentage - lastRewardInPercentage;

            return Math.Max((bonusReward / 100d) * calculatedRewardPercentage, 0);
        }

        private bool HasBattleCooldown(string userIdWithPrexfix)
        {
            double delay = Define.Get(Def.BattleCooldown) * 60 * 1000;
            UserBattleState userBattleState;
            if (BattleStates.TryGetValue(userIdWithPrexfix, out userBattleState) && Util.GetMs() < userBattleState.StartTime + delay)
                return true;

            return false;
        }

        private void DropBattleSate(string userIdWithPrexfix)
        {
            UserBattleState userBattleState;
            if (BattleStates.TryGetValue(userIdWithPrexfix, out userBattleState))
            {
                BattleStates.Remove(userIdWithPrexfix);
            }
        }

        private void TryToDropBattleSate(string userIdWithPrexfix)
        {
            double delay = Define.Get(Def.BattleCooldown) * 60 * 1000;
            UserBattleState userBattleState;
            if (BattleStates.TryGetValue(userIdWithPrexfix, out userBattleState) && Util.GetMs() > userBattleState.StartTime + delay)
            {
                BattleStates.Remove(userIdWithPrexfix);
            }
        }

        private string SquadParametersToString(int[] squadParameters)
        {
            if (squadParameters == null || squadParameters.Length == 0)
                return string.Empty;

            return string.Join(",", squadParameters.Select(x => "" + x).ToArray());
        }

        private int[] SquadParametersToArray(string squadParameters)
        {
            if (string.IsNullOrEmpty(squadParameters))
                return new int[0];

            return squadParameters.Split(',').Select(int.Parse).ToArray();
        }

        // For New Coop 
        public void FillRoomWithBots(List<int> users, Room room, UserBattleInfo.BattleSide side)
        {
            foreach (var id in users)
            {
                var bot = GetBattleOpponentForUser(id);
                bot.squadCrews = GetUserCrews(bot.squadUnits);                
                room.players.Add(new UserBattleInfo(UserBattleInfo.BattleSide.SideB, bot));
            }                               
        }
        /*
        public void AddTournamentRoomOfflineBot(UserProfile userProfile, int allyId, Room room, UserBattleInfo.BattleSide side)
        {
            var tournamentService = new TournamentService();

            var allyUnits = new List<UserUnit>();
            ParticipantState participantState;
            if (tournamentService.GetParticipantState(userProfile.clan.id, allyId, out participantState))
                allyUnits = GetUserUnits(participantState.Squad.ToArray()).Take(3).ToList();

            var allyUser = new User(allyId);
            if (allyUser.id == 0)
                return;

            var myBattleInfo = room.players.Find(c => c.userProfile.id == userProfile.id);
            if (myBattleInfo == null)
                return;

            int botPower = allyUnits.Sum(unit => unit.power);
            var botProfile = new UserProfile { id = -1, name = allyUser.Name, level = allyUser.UserLevel, clan = userProfile.clan };        //fake profile
            var ally = new UserBattleInfo(side, botPower, botProfile, allyUnits, GenerateBotCrews(allyUnits));
            room.players.Add(ally);
        }
        */
        public UserBattleInfo.BattleSide CalculateSideForPlayer(Room room, User user)
        {
            var usersBattleInfo = room.GetPlayersBySide(UserBattleInfo.BattleSide.SideA);
            if (usersBattleInfo.Count > 0 && usersBattleInfo[0].userProfile.clan != null && usersBattleInfo[0].userProfile.clan.id == user.clan_id)
                return UserBattleInfo.BattleSide.SideA;

            usersBattleInfo = room.GetPlayersBySide(UserBattleInfo.BattleSide.SideB);
            if (usersBattleInfo.Count > 0 && usersBattleInfo[0].userProfile.clan != null && usersBattleInfo[0].userProfile.clan.id == user.clan_id)
                return UserBattleInfo.BattleSide.SideB;

            return UserBattleInfo.BattleSide.Neutral;
        }

        public bool IsRoomAvailableForJoin(Room room, User user)
        {
            if (!room.open || room.players.Count >= room.maxPlayers)
                return false;

            var playersCountPerSide = Math.Max(room.maxPlayers / 2, 1);

            var calculatedSideForPlayer = CalculateSideForPlayer(room, user);
            if (calculatedSideForPlayer == UserBattleInfo.BattleSide.SideA && room.GetPlayersCountBySide(UserBattleInfo.BattleSide.SideA) >= playersCountPerSide)
                return false;

            if (calculatedSideForPlayer == UserBattleInfo.BattleSide.SideB && room.GetPlayersCountBySide(UserBattleInfo.BattleSide.SideB) >= playersCountPerSide)
                return false;

            return true;
        }

        private void ClearOldRooms()
        {
            var idToClear = new List<int>();
            foreach (var room in RoomsPool)
            {
                if ((!room.Value.open && room.Value.players.Count == 0) || (room.Value.open && room.Value.timeStamp + 1000000 < Util.GetMs()))
                    idToClear.Add(room.Key);
            }
            foreach (var id in idToClear)
            {
                RemoveRoomById(id);
            }
        }

        public int GetRecommendedPower(int squadPower, MissionType type)
        {
            var delta = 5000;
            var newPower = squadPower;
            foreach (var rm in RoomsPool)
            {
                if (rm.Value.open && rm.Value.maxPlayers == 2 && rm.Value.type == type && rm.Value.players.Count == 1 && Math.Abs(squadPower - rm.Value.power) < delta)
                {
                    delta = Math.Abs(squadPower - rm.Value.power);
                    newPower = rm.Value.power;
                }
            }
            return newPower;
        }

        public Error TeamPrepare(User user, int friendId, MissionType type, int squadPower, int[] units)
        {
            if (units == null || units.Length == 0)
                return Error.ERROR_NO_TANKS;

            //        if (friendId == 0)
            //            return Error.USER_NOT_FOUND;

            ClearOldRooms();

            Room room;
            lock (GetOrCreateRoomLock)
            {
                var element = RoomsPool.FirstOrDefault(rm => rm.Value.open && rm.Value.type == type && rm.Value.timeStamp + Util.MinuteMs > Util.GetMs() && rm.Value.players.Exists(o => o.userProfile.id == friendId));
                room = element.Value;
                var tankUnits = GetUserUnits(units);
                if (room == null) // create a room
                {
                    room = new Room(type, squadPower);
                    var mission = GetRandomBattleMission(type);
                    if (mission == null)
                    {
                        Util.Log("No PVP missions in table");
                        room.missionId = -1;
                        return Error.NOMISSIONS_AVAILABLE;
                    }

                    room.missionId = mission.id;
                    room.mapName = mission.map;
                    room.maxPlayers = 2;//type == MissionType.PvPBaseVsBase ? 4 : 2;
                    var userProfile = new UserProfile(user);
                    room.players.Add(new UserBattleInfo(UserBattleInfo.BattleSide.SideA, squadPower, userProfile, tankUnits, GetUserCrews(tankUnits)));
                    /*if (!UserService.IsUserOnline(friendId))
                        AddTournamentRoomOfflineBot(userProfile, friendId, room, UserBattleInfo.BattleSide.SideA);*/

                    room.tier = GetTierFromUnits(tankUnits);
                    RoomsPool.TryAdd(room.id, room);
                }
                else if (!room.players.Exists(info => info.userProfile.id == user.id))
                {
                    room.players.Add(new UserBattleInfo(UserBattleInfo.BattleSide.SideA, squadPower, new UserProfile(user), tankUnits, GetUserCrews(tankUnits)));
                    var roomTier = GetTierFromUnits(tankUnits);
                    room.tier = room.tier < roomTier ? roomTier : room.tier;
                }
            }
            return Error.OK.SetData(Util.ToJson(room)); //OK room    
        }

        private int GetTierFromUnits(List<UserUnit> units)
        {
            var max = units.Select(unit => unit.Tier).Concat(new[] { 0 }).Max();
            if (max > 0 && max < 4) return 1;
            if (max > 3 && max < 7) return 2;
            if (max > 6 && max < 10) return 3;
            return 0;
        }


        public Room GetRoom(User user, MissionType type, int squadPower, int[] units)
        {
            lock (GetOrCreateRoomLock)
            {
                Room room;
                ClearOldRooms();

                var element = RoomsPool.FirstOrDefault(rm => rm.Value.players.Exists(o => o.userProfile.id == user.id));
                if (element.Value != null)
                    RemoveOldRoom(user, element.Value);
                /* var element = RoomsPool.FirstOrDefault(rm => IsRoomAvailableForJoin(rm.Value, user) && rm.Value.type == type &&
                                                         (rm.Value.power - deltaPower) <= squadPower &&
                                                         (rm.Value.power + deltaPower) >= squadPower &&
                                                         !rm.Value.players.Exists(o => o.userProfile.id == user.id));            
                 room = element.Value;*/
                var tanks = GetUserUnits(units);
                //if (room == null) //create a room

                room = new Room(type, squadPower);
                if (type == MissionType.none)
                    type = MissionType.PvPDeathMatch;    //temp fix
                var mission = GetRandomBattleMission(type);
                if (mission == null)
                {
                    Util.Log("No PVP missions in table, type = " + type);
                    room.missionId = -1;
                    return room;
                }

                room.missionId = mission.id;
                room.mapName = mission.map;
                room.maxPlayers = 2; // type == MissionType.PvPBaseVsBase ? 4 : 2;
                room.players.Add(new UserBattleInfo(UserBattleInfo.BattleSide.SideA, squadPower, new UserProfile(user), tanks, GetUserCrews(tanks)));
                RoomsPool.TryAdd(room.id, room);
                TryToDropBattleSate(user.id + AttackerPrefix);
                TryToDropBattleSate(user.id + DefenderPrefix);
                return room;
            }
        }

        public Error GetRoomState(User user, int roomId, int delta = 0)
        {
            lock (GetOrCreateRoomLock)
            {
                //transfer player to existing room
                Room currentRoom;
                if (!RoomsPool.TryGetValue(roomId, out currentRoom))
                {
                    var element = RoomsPool.FirstOrDefault(pair => pair.Value.players.Exists(o => o.userProfile.id == user.id));
                    if (element.Value != null)
                    {
                        return Error.OK.SetData(Util.ToJson(element.Value)); //new room for player 2
                    }
                    return Error.BATTLE_NO_ROOM;
                }

                if (currentRoom.type == MissionType.PvPDeathMatch || currentRoom.type == MissionType.AsynchronousPvP)
                {
                    var player = currentRoom.players.Find(a => a.userProfile.id == user.id);
                    if (currentRoom.players.Count == currentRoom.maxPlayers)
                    {
                        currentRoom.open = false;
                        if (currentRoom.type == MissionType.AsynchronousPvP)
                        {
                            var enemy = currentRoom.players.Find(p => p.userProfile.id != user.id);
                            if (enemy != null)
                            {                                
                                var attackerBattleData = GetUserBattleByUserId(user.id);
                                var opponentBattleData = GetUserBattleByUserId(enemy.userProfile.id);
                                //CalculateDeltaRating(attackerBattleData.rating, opponentBattleData.rating, true);
                                //CalculateDeltaRating(attackerBattleData.rating, opponentBattleData.rating, false);
                                //CalculateDeltaRating(opponentBattleData.rating, attackerBattleData.rating, true);
                                //CalculateDeltaRating(opponentBattleData.rating, attackerBattleData.rating, false);
                                player.userProfile.stats[3] = 15;
                                player.userProfile.stats[4] = -15;
                                enemy.userProfile.stats[3] = 15;
                                enemy.userProfile.stats[4] = -15;
                                enemy.userProfile.rating = opponentBattleData.rating;
                            }
                        }
                    }
                    if (!currentRoom.open) return Error.OK.SetData(Util.ToJson(currentRoom)); //OK old room                    
                    if (player == null) //Need to join
                    {
                        Room oldRoom;
                        var element = RoomsPool.FirstOrDefault(pair => pair.Value.players.Exists(o => o.userProfile.id == user.id));
                        if (element.Value != null && RoomsPool.TryGetValue(element.Value.id, out oldRoom))
                        {
                            var side = GetFreeSide(currentRoom);
                            player = oldRoom.players.Find(a => a.userProfile.id == user.id);
                            player.side = side;
                            currentRoom.players.Add(player);
                            RemoveOldRoom(user, oldRoom);
                            return Error.OK.SetData(Util.ToJson(currentRoom));
                        }

                        /*var userProfile = new UserProfile(user);
                        var tankUnits = GetUserUnits(units);*/

                    }
                } 

                if (currentRoom.type == MissionType.PvPBaseVsBase || currentRoom.type == MissionType.PvPDeathmatch2x2)
                {                    
                    if (currentRoom.players.Count == currentRoom.maxPlayers && currentRoom.open)
                    {
                        currentRoom.open = false;
                        /*if (currentRoom.type == MissionType.PvPDeathmatch2x2)
                        {
                            currentRoom.maxPlayers = 4;                            
                            //if (currentRoom.players.Count != 2) return Error.USER_NOT_FOUND;
                            var players = new List<int>();
                            foreach (var player in currentRoom.players)
                            {
                                players.Add(player.userProfile.id);
                            }
                            FillRoomWithBots(players, currentRoom, UserBattleInfo.BattleSide.SideB);
                        } */                                   
                    }
                    return Error.OK.SetData(Util.ToJson(currentRoom)); //OK old room
                }
                return Error.BATTLE_NO_ROOM;
            }
        }

        private static UserBattleInfo.BattleSide ChangeSide(UserBattleInfo.BattleSide side)
        {
            return side == UserBattleInfo.BattleSide.SideA ? UserBattleInfo.BattleSide.SideB : UserBattleInfo.BattleSide.SideA;
        }

        public Error StartGame(User user, bool bot, int roomId, double timeNow)
        {
            Room room;
            if (!RoomsPool.TryGetValue(roomId, out room))
                return Error.BATTLE_NO_ROOM;

            if (user == null)
                return Error.USER_NOT_FOUND;
           

            //remove old state
            TryToDropBattleSate(user.id + SyncPvPPrefix);

            //validate
            //if (HasBattleCooldown(user.id + SyncPvPPrefix)) return Error.BATTLE_COOLDOWN;

            //if (IsUserInBattle(user.id + SyncPvPPrefix)) return Error.USER_IN_BATTLE;

            //consume fuel        
            //var spendFuelResult = radarService.SpendFuel(user, fuel, timeNow);
            //if (spendFuelResult != Error.OK)
            //return spendFuelResult;

            //log
            //var attackerBattleLog = SaveUpdateBattleLog(user, null, opponentUserId, false, 0, LogType.Attack, 0);

            //fight
            //lock (BattleStateLock)
            {
                var startTime = Util.GetMs();
                //BattleStates.Add(user.id + SyncPvPPrefix, new UserBattleState { IsInBattle = true, StartTime = startTime, BattleLogId = 0 });            
            }

            var todoService = new TodoService();
            todoService.ProcessTodoStep(user, TodoService.TodoStepType.PlayPvP);
            if (room.type == MissionType.PvPBaseVsBase)
                new TournamentService().StartBattle(user, timeNow);                           
            return new Error(99, Util.ToJson(room));   //OK     
        }

        public Error EndGame(User user, int roomId, BattleResultStat resPVE, int win, int points, double timeNow) // PVP
        {
            Room room;
            if (!RoomsPool.TryGetValue(roomId, out room))
                return Error.BATTLE_NO_ROOM;

            var player = room.players.FirstOrDefault(a => a.userProfile.id == user.id);
            if (player == null) return Error.USER_NOT_FOUND;
            Caching.AddOrUpdate(SyncPvPPrefix + user.id, resPVE, 2);
            if (room.type == MissionType.PvPBaseVsBase)
            {
                TournamentService tournamentService = new TournamentService();
                tournamentService.EndBattle(user, points, timeNow);
                tournamentService.LogTournamentBattle(user, roomId, win, points, timeNow);
            }
            else if (room.type == MissionType.AsynchronousPvP)
            {
                bool online = room.players.Count == 2;             
                return EndBattle(user, room.missionId, room.players.Find(p => p.userProfile.id != user.id).userProfile.id, resPVE, win, player.squadPower, timeNow, true, online);                             
            }
            else if (room.type == MissionType.PvPDeathMatch && win == 1)
            {
                var todoService = new TodoService();
                todoService.ProcessTodoStep(user, TodoService.TodoStepType.WinPvP);
            }
            else if (room.type == MissionType.PvPDeathmatch2x2)
            {
                if (win == 1)
                {
                    var todoService = new TodoService();
                    todoService.ProcessTodoStep(user, TodoService.TodoStepType.WinPvP);                   
                }
                var db = new TanksDBDataContext();
                var ub = Query.GetUserBattleByUserId(db, user.id);
                var userBattle = ub.FirstOrDefault();
                if (userBattle != null)
                {
                    userBattle.prevBestPlace += points;
                    db.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
                }
                else RegisterBattleUser(user);
            }
            var endBattleResult = GetMissionReward(user, room.missionId, player.squadPower, win, resPVE, timeNow, points);            
            //RemoveOldRoom(user, room);        

            return endBattleResult;
        }

        public Error GetUserBattleResult(int userId)
        {
            var result = Caching.Get<string>(SyncPvPPrefix + userId);
            if (string.IsNullOrEmpty(result))
                return Error.NOBATTLELOGS;
            return Error.OK.SetData(result);
        }

        public bool GetRoomById(int roomId, out Room roomResult)
        {
            return RoomsPool.TryGetValue(roomId, out roomResult);
        }

        public Room GetRoomByUserId(int userId)
        {
            return RoomsPool.FirstOrDefault(r => r.Value.players.Exists(p => p.userProfile.id == userId)).Value;
        }

        public bool RemoveRoomById(int roomId)
        {
            Room result;
            return RoomsPool.TryRemove(roomId, out result);
        }

        public Error KillRoom(User user, int roomId)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            Room room;
            if (!GetRoomById(roomId, out room))
                return Error.INCORRECT_VALUE;

            if (room.players.Count == 0 || room.players.Count > room.maxPlayers)
            {
                RemoveRoomById(roomId);
                return Error.OK;
            }
            return Error.BATTLE_ROOM_CLOSED;
        }

        public Error LeaveRoom(User user, int roomId, string state, double timeNow)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            Room room;
            if (!GetRoomById(roomId, out room))
                return Error.INCORRECT_VALUE;

            var data = room.players.FindAll(info => info != null && info.userProfile != null && info.userProfile.clan != null && info.userProfile.clan.id == user.clan_id);
            foreach (var entry in new List<UserBattleInfo>(data))
            {
                if (entry.userProfile.id == user.id || entry.userProfile.id < 0)
                    data.Remove(entry);
            }

            return Error.OK;
        }

        private void RemoveOldRoom(User user, Room room)
        {
            //remove old room
            var profile = room.players.Find(a => a.userProfile.id == user.id);
            if (profile != null)
            {
                lock (room.players)
                {
                    room.players.Remove(profile);
                }
            }
            if (room.players.FindAll(a => a.userProfile.id < 0).Count == room.players.Count)
                RoomsPool.TryRemove(room.id, out room);
        }

        public Error JoinRoom(User user, int roomId, int power, int[] units, UserBattleInfo.BattleSide side)
        {
            lock (GetOrCreateRoomLock)
            {
                //transfer player to existing room
                Room currentRoom;
                /*var element = RoomsPool.FirstOrDefault(pair => pair.Value.players.Exists(o => o.userProfile.id == user.id));
                if (element.Value != null && RoomsPool.TryGetValue(element.Value.id, out currentRoom))
                    RemoveOldRoom(user, currentRoom);*/
                if (!RoomsPool.TryGetValue(roomId, out currentRoom)) return Error.BATTLE_NO_ROOM;
                if (currentRoom.players.Count == currentRoom.maxPlayers) return Error.ERR_FULL_ROOM;
                var userProfile = new UserProfile(user);
                var tankUnits = GetUserUnits(units);
                var userSide = currentRoom.type == MissionType.PvPDeathmatch2x2 ? UserBattleInfo.BattleSide.SideA : GetFreeSide(currentRoom);
                currentRoom.players.Add(new UserBattleInfo(userSide, power, userProfile, tankUnits, GetUserCrews(tankUnits)));
                return Error.OK.SetData(Util.ToJson(currentRoom)); //new room for player
            }
        }

        public double GetTimeWhenDMEnd()
        {
            var time = DateTime.UtcNow;            
            var days = (int)(7 - time.DayOfWeek);
            if (days == 7)
                days = 0;
            time = time.Date.AddDays(days + 1);
            return Util.GetUnixTime(time);
        }

        public Error GetDeathMatchState(User user, double timeNow, out DeathMatchEvent result)
        {
            result = null;
            if (user == null)
                return Error.USER_NOT_FOUND;

            //SendRewardsForDM();
            var db = new TanksDBDataContext();
            result = new DeathMatchEvent();
            result.battles = 0;
            result.place = 0;
            var top = new TopService().GetDeathMatchTop();
            var custs = Query.GetUserBattleByUserId(db, user.id).FirstOrDefault();
            if (custs != null)
            {
                result.battles = custs.prevBestPlace;                
            }
            var topItem = top.FirstOrDefault(pl => pl.userId == user.id);
            if (topItem != null)
                result.place = topItem.place;
            
            result.top = top.Take(3).ToList();          
            result.endTime = GetTimeWhenDMEnd();            
            return Error.OK;
        }

        public void SendRewardsForDM()
        {
            var time = DateTime.UtcNow;
            if (time.DayOfWeek != DayOfWeek.Monday) return;
            var mailService = new MailService();            
            var top = new TopService().GetDeathMatchTop(reset:true).Take(3);
            var timeNow = Util.GetUnixTime(time);
            foreach (var topEntry in top)
            {         
                var rewardData = rewards[topEntry.place - 1];
                if (rewardData == null)
                    continue;                
                mailService.RewardNotification(topEntry.userId, timeNow, "DeathMatch.mailTopic", "DeathMatch.mailMsg", Util.ToJson(rewardData));                
            }
        }

        private static UserBattleInfo.BattleSide GetFreeSide(Room room)
        {
            var usersBattleInfo = room.GetPlayersBySide(UserBattleInfo.BattleSide.SideA);
            return usersBattleInfo.Count > 0 ? UserBattleInfo.BattleSide.SideB : UserBattleInfo.BattleSide.SideA;
        }

        public Error AddBot(User user, int botUserId, int roomId)
        {
            lock (GetOrCreateRoomLock)
            {
                Room currentRoom;
                if (!RoomsPool.TryGetValue(roomId, out currentRoom))
                    return Error.BATTLE_NO_ROOM;

                var side = currentRoom.GetPlayerSide(user.id);
                if (side == UserBattleInfo.BattleSide.Neutral)
                    return Error.INCORRECT_VALUE;

                var userProfile = new UserProfile(user);
                //AddTournamentRoomOfflineBot(userProfile, botUserId, currentRoom, side);

                return Error.OK.SetData(Util.ToJson(currentRoom)); //new room for player
            }
        }

        public string BattleSettingsToJson()
        {
            var battleConfig = GetBattleConfig();
            return JsonConvert.SerializeObject(battleConfig);
        }

        //calculate wins, battle count, time, power, deadth, kills
        //rewards

        public int CleanOldLogs(int days)
        {
            var db = new TanksDBDataContext();
            var userBL = from u in db.UserBattleLogs
                         where u.timestamp < (Util.GetMs() - days * 86400000)  // 86400 - 1 day in ms
                         select u;

            int count = 0;
            foreach (UserBattleLogs u in userBL)
            {
                db.UserBattleLogs.DeleteOnSubmit(u);
                count++;
            }
            db.SubmitChanges();

            return count;
        }

        public string GetUserLogs(User user)
        {
            if (user == null)
                return Util.ToJson(Error.USER_NOT_FOUND);

            if (user.lastLogin == 0)
                return Util.ToJson(Error.NOBATTLELOGS);

            var delay = Define.Get(Def.BattleCooldown) * 60 * 1000;

            var db = new TanksDBDataContext();
            var custs = Query.GetBattleLogByIdByStamp(db, user.id, Util.GetMs() - delay);
            var battleLogsData = custs.ToList();

            if (battleLogsData.Count == 0)
                return Util.ToJson(Error.NOBATTLELOGS);

            var result = new List<UserBattleLog>();
            foreach (var ubl in battleLogsData)
            {
                var ub = new UserBattleLog(ubl);
                result.Add(ub);
                ub.viewed = true;
                foreach (var c in Query.GetBattleLogById.Invoke(db, ub.id))
                {
                    ub.ToUserBattleLogs(c);
                }
            }

            db.SubmitChanges();
            return Util.ToJson(result);
        }
    }

    public class PreBattleRquestResult
    {
        public int money;
        public int gold;
    }

    public class TopRequestResult
    {
        public List<Clan> clans;
        public List<UserBattle> battles;
        public List<TournamentDivisionTop> tournaments;
        public List<DeathMatchTop> deathmatches;
        public Clan clan;
        public UserBattle battle;
    }

    internal class UserBattleState
    {
        public bool IsInBattle;
        public double StartTime;
        public int BattleLogId;
        public List<UserUnit> squad;
    }

    public class UserBattleStateRequestResult
    {
        public int rating;
        public bool attacked;
    }

    public class BattleRequestResult
    {
        [JsonProperty(PropertyName = "nl")]
        public int newLogs;
        [JsonProperty(PropertyName = "l")]
        public int league;
        [JsonProperty(PropertyName = "s")]
        public int[] squad;
        [JsonProperty(PropertyName = "blr")]
        public double bestLvlReward;
        [JsonProperty(PropertyName = "r")]
        public int rating;
        [JsonProperty(PropertyName = "abt")]
        public double attackBonusExpirationTime;
        [JsonProperty(PropertyName = "dbt")]
        public double defenseBonusExpirationTime;
    }
}


/*if ()
 {

     if (!currentRoom.open || currentRoom.players.Count > 1) //OK old room
         return Error.OK.SetData(Util.ToJson(currentRoom));

     //find other my room if it complete
     var myRoom = RoomsPool.FirstOrDefault(a => !a.Value.open && a.Value.type == currentRoom.type && a.Value.players.Exists(o => o.userProfile.id == user.id));
     if (myRoom.Value != null)
         return Error.OK.SetData(Util.ToJson(myRoom.Value));

     // find alternative
     var element = RoomsPool.FirstOrDefault(a => a.Value.open && a.Value.type == currentRoom.type && !a.Value.players.Exists(o => o.userProfile.id == user.id) && currentRoom.power >= (a.Value.power - delta) && currentRoom.power <= (a.Value.power + delta));
     var newRoom = element.Value;
     if (currentRoom.timeStamp + 45000 < Util.GetMs()) currentRoom.open = false;
     if (newRoom == null)
         return Error.OK.SetData(Util.ToJson(currentRoom)); //OK old room

     var player = currentRoom.players.Find(a => a.userProfile.id == user.id);
     if (currentRoom.type == newRoom.type)
     {
         player.side = (UserBattleInfo.BattleSide)(newRoom.players.Count % 2) + 1;
         newRoom.players.Add(player);
         currentRoom.players.Remove(player);
         if (newRoom.players.Count == newRoom.maxPlayers)
             newRoom.open = false;

         if (currentRoom.players.Count == 0)
             RoomsPool.TryRemove(currentRoom.id, out currentRoom);
     }
     return Error.OK.SetData(Util.ToJson(newRoom)); //OK new room    
     //search room for combine
     var element = RoomsPool.FirstOrDefault(a => a.Value.open && a.Value.type == currentRoom.type && !a.Value.players.Exists(o => o.userProfile.id == user.id) && currentRoom.tier == a.Value.tier);
     var newRoom = element.Value;

     if (currentRoom.players.Count == 0)
     {
         element = RoomsPool.FirstOrDefault(pair => pair.Value.type == currentRoom.type && pair.Value.players.Exists(o => o.userProfile.id == user.id) && pair.Value.timeStamp + Util.MinuteMs > Util.GetMs());
         if (element.Value != null)
         {
             return Error.OK.SetData(Util.ToJson(element.Value)); //new room for player 2
         }
     }*/

//try to combine two allies
/*if (currentRoom.players.Count == 1)
{
    element = RoomsPool.FirstOrDefault(pair => pair.Value.type == currentRoom.type && pair.Value.players.Exists(o => o.userProfile.clan.id == user.clan_id) && pair.Value.timeStamp + Util.MinuteMs > Util.GetMs());
    if (element.Value != null)
    {
        var player1 = currentRoom.players.First();
        var player2 = element.Value.players.FirstOrDefault(o => o.userProfile.clan.id == user.clan_id); //FIND ally
        currentRoom.players.Remove(player1);

        player1.side = player2.side;
        element.Value.players.Add(player1);
        if (element.Value.players.Count == element.Value.maxPlayers) element.Value.open = false;
        return Error.OK.SetData(Util.ToJson(element.Value)); //OK new room
    }
}*/

//combine 2 rooms
/*if (newRoom != null && currentRoom.players.Count == 2)
{
    var player1 = currentRoom.players.First();
    var player2 = currentRoom.players.Last();

    var player2FromNewRoom = newRoom.players.FirstOrDefault();
    if (player2FromNewRoom != null && player1.userProfile.clan.id == player2FromNewRoom.userProfile.clan.id)
        return Error.OK.SetData(Util.ToJson(currentRoom)); //OK old room

    player1.side = UserBattleInfo.BattleSide.SideB;
    player2.side = UserBattleInfo.BattleSide.SideB;
    newRoom.players.Add(player1);
    newRoom.players.Add(player2);

    currentRoom.players.Remove(player1);
    currentRoom.players.Remove(player2);
    newRoom.open = false;
    return Error.OK.SetData(Util.ToJson(newRoom)); //OK new room
}
}*/
