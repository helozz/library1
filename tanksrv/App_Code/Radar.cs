using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;

namespace TW
{

    public class Radar : IToJson
    {
        public Int32 id;
        public Int32 minPower;
        public Int32 maxPower;
        public Int32 mVeasy;
        public Int32 mEasy;
        public Int32 mNorm;
        public Int32 mHard;
        public Int32 eVeasy;
        public Int32 eEasy;
        public Int32 eNorm;
        public Int32 eHard;
        public Int32 pVeasy;
        public Int32 pEasy;
        public Int32 pNorm;
        public Int32 pHard;
        public Int32 dVeasy;
        public Int32 dEasy;
        public Int32 dNorm;
        public Int32 dHard;
        public Int32 bundleId;
        public double compMinVeasy;
        public double compMaxVeasy;
        public double compMinEasy;
        public double compMaxEasy;
        public double compMinNorm;
        public double compMaxNorm;
        public double compMinHard;
        public double compMaxHard;
        public Int32 type;

        public Radar()
        {

        }

        public Radar(RadarConfigs rad)
        {
            this.id = rad.id;
            this.dVeasy = rad.dVeasy;
            this.dEasy = rad.dEasy;
            this.dHard = rad.dHard;
            this.dNorm = rad.dNorm;
            this.minPower = rad.minPower;
            this.maxPower = rad.maxPower;
            this.eVeasy = rad.eVeasy;
            this.eEasy = rad.eEasy;
            this.eNorm = rad.eNorm;
            this.eHard = rad.eHard;
            this.mVeasy = rad.mVeasy;
            this.mEasy = rad.mEasy;
            this.mHard = rad.mHard;
            this.mNorm = rad.mNorm;
            this.pVeasy = rad.pVeasy;
            this.pEasy = rad.pEasy;
            this.pNorm = rad.pNorm;
            this.pHard = rad.pHard;
            this.bundleId = rad.bundleId;
            this.compMinVeasy = rad.compMinVeasy;
            this.compMaxVeasy = rad.compMaxVeasy;
            this.compMinEasy = rad.compMinEasy;
            this.compMaxEasy = rad.compMaxEasy;
            this.compMinNorm = rad.compMinNorm;
            this.compMaxNorm = rad.compMaxNorm;
            this.compMinHard = rad.compMinHard;
            this.compMaxHard = rad.compMaxHard;
            this.type = (int)MissionType.PvEmission1;
        }

        public Radar(PvPConfigs rad)
        {
            this.id = rad.id;
            this.minPower = rad.minPower;
            this.maxPower = rad.maxPower;
            this.eNorm = rad.eNorm;
            this.mNorm = rad.mNorm;
            this.pNorm = rad.pNorm;
            this.bundleId = rad.bundleId;
            this.compMinNorm = rad.compMinNorm;
            this.compMaxNorm = rad.compMaxNorm;
            this.type = rad.type;
        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            json.BeginObject();
            json.Name("id").Value(id);
            json.EndObject();
        }
    }


    public class NewMission : IToJson
    {
        public Int32 id;
        public string name;
        public Int32 fuelcost;
        public MissionType type;
        public string map;
        public Int32 money;
        public Int32 pPoints;
        public Int32 exp;
        public Int32 mult;
        public Int32 difficulty;
        public Int32 power1;
        public Int32 power1num;
        public Int32 minPower;
        public Int32 maxPower;
        private NewMissions c;

        public NewMission()
        {
        }

        public NewMission(NewMissions newMs)
        {
            this.id = newMs.id;
            this.name = newMs.name;
            this.type = (MissionType)newMs.type;
            this.mult = newMs.powermult;
            this.map = newMs.map;
            this.power1 = newMs.power1;
            this.power1num = newMs.power1num;
            this.minPower = newMs.minPower;
            this.maxPower = newMs.maxPower;
        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            json.BeginObject();
            json.Name("id").Value(id);
            json.Name("nm").Value(name);
            json.Name("c").Value(fuelcost);
            json.Name("tp").Value((int)type);
            json.Name("m").Value(money);
            json.Name("map").Value(map);
            json.Name("d").Value(difficulty);
            json.Name("p1").Value(power1);
            json.Name("p1n").Value(power1num);
            json.Name("pp").Value(pPoints);
            json.Name("exp").Value(exp);
            json.Name("mul").Value(mult);
            json.Name("mnp").Value(minPower);
            json.Name("mxp").Value(maxPower);
            json.EndObject();
        }
    }

    public class UserNewMission : IToJson
    {
        public Int32 id;
        public Int32 userId;
        public Int32 userZone;
        public Int32 missionId;
        public Int32 itemId;
        public Int32 itemCnt;
        public Int32 diff;
        public Int32 money;
        public Int32 exp;
        public Int32 parts;
        public NewMission newMission;

        public UserNewMission()
        {

        }

        public UserNewMission(UserNewMissions unm)
        {
            this.id = unm.id;
            this.userId = unm.userId;
            this.missionId = unm.missionid;
            this.userZone = unm.userzone;
            this.diff = unm.diff;
            this.money = unm.money;
            this.exp = unm.exp;
            this.parts = unm.parts;
            this.itemCnt = unm.itemCnt;
            this.itemId = unm.itemId;
        }

        public void SetReward(int item, int count)
        {
            this.itemId = item;
            this.itemCnt = count;
        }

        internal UserNewMissions ToUserNewMissions(UserNewMissions c)
        {
            c.userId = userId;
            c.userzone = userZone;
            c.missionid = missionId;
            c.itemId = itemId;
            c.itemCnt = itemCnt;
            c.diff = diff;
            c.money = money;
            c.exp = exp;
            c.parts = parts;
            return c;
        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            if (newMission == null) return;
            json.BeginObject();
            json.Name("id").Value(id);
            json.Name("mid").Value(newMission.id);
            json.Name("nm").Value(newMission.name);
            json.Name("c").Value(newMission.fuelcost);
            json.Name("tp").Value((int)newMission.type);
            json.Name("m").Value(money);
            json.Name("map").Value(newMission.map);
            json.Name("d").Value(newMission.difficulty);
            json.Name("p1").Value(newMission.power1);
            json.Name("p1n").Value(newMission.power1num);
            json.Name("pp").Value(parts);
            json.Name("ci").Value(itemId);
            json.Name("cc").Value(itemCnt);
            json.Name("exp").Value(exp);
            json.Name("mul").Value(newMission.mult);
            json.Name("mnp").Value(newMission.minPower);
            json.Name("mxp").Value(newMission.maxPower);
            json.Name("uz").Value(userZone);
            json.EndObject();
        }

        internal void Save()
        {
            var db = new TanksDBDataContext();

            foreach (var c in Query.GetNewUserMissionByUserId.Invoke(db, userId))
            {
                ToUserNewMissions(c);
            }

            db.SubmitChanges();
        }
    }

    public class UserBattleLog : IToJson
    {
        public Int32 id;
        public Int32 userId;      
        public Int32 enemyId;
        public Int32 enemyLvl;
        public string enemyName;
        public string enemyClan;
        public string enemyClanIcon;
        public Int32 enemySquadPower;
        public Int32 type;
        public string enemySquad;
        public long timestamp;        
        public bool win;
        public LogType logType;
        public bool viewed;        
        public int deltaRating;        

        public UserBattleLog()
        {

        }

        public UserBattleLog(UserBattleLogs ubl)
        {
            this.Set(ubl);
        }

        internal UserBattleLogs ToUserBattleLogs(UserBattleLogs c)
        {
            c.userid = userId;
            c.enemyclan = enemyClan;
            c.enemyid = enemyId;
            c.enemylvl = enemyLvl;
            c.enemyname = enemyName;
            c.enemysqpower = enemySquadPower;
            c.enemysquad = enemySquad;
            c.type = type;            
            c.timestamp = timestamp;                                   
            c.win = win;
            c.logtype = (int)logType;
            c.viewed = viewed;
            c.deltaRating = deltaRating;
            c.enemyClanIcon = enemyClanIcon;                             
            return c;
        }

        internal UserBattleLogs ConvertToUserBattleLogs()
        {
            var ubl = new UserBattleLogs();
            ubl.userid = this.userId;
            ubl.enemyclan = this.enemyClan;
            ubl.enemyid = this.enemyId;
            ubl.enemylvl = this.enemyLvl;
            ubl.enemyname = this.enemyName;
            ubl.enemysqpower = this.enemySquadPower;
            ubl.enemysquad = this.enemySquad;
            ubl.type = this.type;            
            ubl.timestamp = this.timestamp;                                  
            ubl.win = this.win;
            ubl.logtype = (int)this.logType;
            ubl.viewed = viewed;
            ubl.enemyClanIcon = enemyClanIcon;
            ubl.deltaRating = deltaRating;                                 
            return ubl;
        }

        void Set(UserBattleLogs ubl)
        {
            this.id = ubl.id;
            this.userId = ubl.userid;
            this.enemyId = ubl.enemyid;
            this.enemyLvl = ubl.enemylvl;
            this.enemyName = ubl.enemyname;
            this.enemySquadPower = ubl.enemysqpower;
            this.enemyClan = ubl.enemyclan;
            this.enemySquad = ubl.enemysquad;            
            this.type = ubl.type;
            this.timestamp = ubl.timestamp;                                    
            this.win = ubl.win;
            this.logType = (LogType)ubl.logtype;
            this.viewed = ubl.viewed;
            this.deltaRating = ubl.deltaRating;
            this.enemyClanIcon = ubl.enemyClanIcon;                        
        }

        internal void Update()
        {
            var db = new TanksDBDataContext();
            foreach (var c in Query.GetBattleLogById.Invoke(db, id))
            {
                ToUserBattleLogs(c);
            }
            db.SubmitChanges();
        }

        internal void Save()
        {
            var db = new TanksDBDataContext();
            UserBattleLogs ll = this.ConvertToUserBattleLogs();
            db.UserBattleLogs.InsertOnSubmit(ll);
            db.SubmitChanges();
            this.Set(ll);
        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            json.BeginObject();
            json.Name("id").Value(id);
            json.Name("i").Value(userId);            
            json.Name("ei").Value(enemyId);
            json.Name("el").Value(enemyLvl);
            json.Name("en").Value(enemyName);
            json.Name("ec").Value(enemyClan);
            json.Name("ep").Value(enemySquadPower);
            json.Name("es").Value(enemySquad);
            json.Name("eci").Value(enemyClanIcon);
            json.Name("tp").Value(type);
            json.Name("t").Value(timestamp);                                    
            json.Name("w").Value(win);
            json.Name("lt").Value((int)logType);
            json.Name("vw").Value(viewed);
            json.Name("dr").Value(deltaRating);
            json.EndObject();
        }
    }

    public class PvPAttackInfo
    {
        public int userid;
        public int zoneid;
        public double timestamp;
        public PvPAttackInfo(int userid, int zoneid, double timestamp)
        {
            this.userid = userid;
            this.zoneid = zoneid;
            this.timestamp = timestamp;
        }

        public PvPAttackInfo()
        {

        }
    }

    public class RadarService
    {
        private const double CACHE_KEEP_MINUTES = 60;
        private static readonly Random random = new Random();
        private static readonly ConcurrentDictionary<int, List<PvPAttackInfo>> attacks = new ConcurrentDictionary<int, List<PvPAttackInfo>>();

        private int GetDiff(Radar rad)
        {
            List<int> list = new List<int>() { rad.dVeasy, rad.dEasy, rad.dNorm, rad.dHard };
            return Roll(list);
        }

        private int Roll(List<int> arr)
        {
            int weight = arr.Sum();
            var roll = random.NextDouble();
            double current = 0;
            int counter = 0;
            foreach (var item in arr)
            {
                current += item;
                if (current / weight > roll) return counter;
                counter++;
            }
            Util.Log("Failed roll type of map ");
            return 0;
        }

        private int GetPowerByDifficulty(Difficulty diff, int tier)
        {
            var db = new TanksDBDataContext();
            int min = Caching.Get<int>("mintier#" + tier.ToString());
            int max = Caching.Get<int>("maxtier#" + tier.ToString());
            if (min == 0)
            {
                min = Query.GetMinUnitPowerInTier(db, tier);
                Caching.Add("mintier#" + tier.ToString(), min);
            }
            if (max == 0)
            {
                max = Query.GetMaxUnitPowerInTier(db, tier);
                Caching.Add("maxtier#" + tier.ToString(), max);
            }
            return (int)(min + Define.DifficultyMult[(int)diff] * (max * Define.UpperMult - min));
        }

        public int GetComponentCount(int tier, int power, double min, double max)
        {
            return (int)Math.Round(power * ((min + random.NextDouble() * (max - min)) / 100f) / Define.ComponentsCost[tier - 1]);
        }

        private List<UserNewMission> GetUserNewMissions(int powerPlayer, Radar rad, User user, double timeNow)
        {
            var db = new TanksDBDataContext();
            var randomList = new List<NewMission>();
            var missionlist = new List<UserNewMission>();
            //Pick missions by power
            var custsNewMissions = Query.ListNewMissionsByPower(db, powerPlayer, powerPlayer);
            //get all available missions
            var newMissionsList = Enumerable.ToList(custsNewMissions);
            // get only radar mission
            int radarLvl = UserBuilding.GetRadarLevel(user, timeNow);
            newMissionsList =
                newMissionsList.FindAll(
                    a =>
                        a.type == (int)MissionType.PvEmission1 || a.type == (int)MissionType.PvEmission2 ||
                        a.type == (int)MissionType.PvEmission3);
            if (newMissionsList.Count == 0) return missionlist;
            for (int i = 0; i < radarLvl + 1; i++)
            {
                randomList.Add(new NewMission(newMissionsList[random.Next(0, newMissionsList.Count)]));
            }
            //set user mission list
            int index = 2;
            foreach (var mission in randomList)
            {
                var userMission = new UserNewMission();
                userMission.userId = user.id;
                userMission.missionId = mission.id;
                userMission.diff = GetDiff(rad);
                mission.fuelcost = Define.FuelCost[userMission.diff];
                mission.difficulty = userMission.diff;
                userMission.newMission = mission;
                userMission.userZone = index++;
                missionlist.Add(userMission);
            }
            return missionlist;
        }

        private void ClearUserNewMissions(int userid)
        {
            var db = new TanksDBDataContext();
            IQueryable<UserNewMissions> userNewMissions = from uznm in db.UserNewMissions
                                                          where uznm.userId == userid
                                                          select uznm;
            foreach (UserNewMissions f in userNewMissions)
            {
                db.UserNewMissions.DeleteOnSubmit(f);
            }
            db.SubmitChanges();
        }

        public string GetRandomMission(User user, int powerPlayer, bool isFreeScan, double timeNow)
        {
            if (powerPlayer <= 0 || user.id <= 0)
                return null;

            var db = new TanksDBDataContext();
            var result = new List<UserNewMission>();
            var custs1 = Query.ListRadarConfig(db, powerPlayer);
            Radar rd = Enumerable.FirstOrDefault(custs1.Select(c => new Radar(c)));            
            if (rd == null) return Util.ToJson(Error.NORADAR);            
            //get user mission list
            var missionlist = GetUserNewMissions(powerPlayer, rd, user, timeNow);
            if (missionlist.Count == 0) return Util.ToJson(Error.NOMISSIONS_AVAILABLE);

            ClearUserNewMissions(user.id);

            if ((Util.GetMs() - user.scanTime) < Define.Get(Def.RadarScanDelay))
            {
                int scanCost = (int)Define.Get(Def.ScanRadarCost);
                if (user.ScanAttempt > 0 && !isFreeScan)
                {
                    //scanCost = (int)(scanCost * Math.Pow(1.5f, user.ScanAttempt > 5 ? 4 : (user.ScanAttempt - 1)));  // -1 - because first attempt is free
                    if (user.Gold < scanCost) return Util.ToJson(Error.LACK_GOLD);
                    user.Gold -= scanCost;
                    new Gold(user, "Radar", 1, -scanCost);
                }
            }
            user.scanTime = Util.GetMs();
            //var custsNewMissions = Query.ListNewMissions(db);
            //get all available missions
            //var newMissionsList = Enumerable.ToList(custsNewMissions);
            foreach (var element in missionlist)
            {
                var usnm = new UserNewMissions();
                //element.newMission = new NewMission(newMissionsList.Find(c => c.id == element.missionId));
                var reward = MarketService.GetRandomReward(user, rd.bundleId);
                if (reward == null) return Util.ToJson(Error.INCORRECT_CONFIG);
                var rew = GetReward(element.diff, rd);
                element.SetReward(reward.item, GetComponentCount(reward.count, powerPlayer, rew.compMin, rew.compMax));   // rew[3,4] - comp koef                             
                element.money = (int)Math.Round((rew.money / 100f) * powerPlayer);
                element.exp = (int)Math.Round((rew.exp / 100f) * powerPlayer);
                element.parts = (int)Math.Round((rew.parts / 100f) * powerPlayer);
                //element.newMission.fuelcost = 
                element.ToUserNewMissions(usnm);
                db.UserNewMissions.InsertOnSubmit(usnm);
                result.Add(element);
            }
            db.SubmitChanges();
            //get mission id
            var missionsCusts = Query.GetNewUserMissionByUserId(db, user.id);
            var mList = Enumerable.ToList(missionsCusts);
            foreach (var element in mList)
            {
                result[result.FindIndex(a => a.userZone == element.userzone)].id = element.id;
            }

            if (!isFreeScan)
            {
                user.ScanAttempt++;
            }

            user.Saving();
            return Util.ToJson(result);
        }

        public string GetGlobalMapState(User user, int powerPlayer)
        {
            var db = new TanksDBDataContext();
            var custs3 = Query.GetNewUserMissionByUserId(db, user.id);
            var result = new List<UserNewMission>();
            var usernmlist = Enumerable.ToList(custs3);
            //Pick missions by power
            var custsNewMissions = Query.ListNewMissionsByPower(db, powerPlayer, 0);
            //get all available missions
            var missionList = Enumerable.ToList(custsNewMissions);
            if (usernmlist.Count > 0)
            {
                foreach (var st in usernmlist)
                {
                    var nms = missionList.Find(c => c.id == st.missionid);
                    if (nms == null) continue;
                    var unm = new UserNewMission();
                    unm.id = st.id;
                    unm.missionId = st.missionid;
                    unm.userId = user.id;
                    unm.userZone = st.userzone;
                    unm.money = st.money;
                    unm.exp = st.exp;
                    unm.parts = st.parts;
                    unm.itemId = st.itemId;
                    unm.itemCnt = st.itemCnt;
                    unm.newMission = new NewMission(nms);
                    unm.newMission.difficulty = st.diff;
                    unm.newMission.fuelcost = Define.FuelCost[st.diff];
                    result.Add(unm);
                }
            }
            if ((Util.GetMs() - user.scanTime) > Define.Get(Def.RadarScanDelay))
            {
                user.ScanAttempt = 0;
            }
            var rep = new Result { data = result, sc = user.ScanAttempt };
            return Util.ToJson(rep);
        }

        public static Rewards GetReward(int diff, Radar rd)
        {
            var reward = new Rewards();
            switch (diff)
            {
                case 0:
                    reward.money = rd.mVeasy;
                    reward.exp = rd.eVeasy;
                    reward.parts = rd.pVeasy;
                    reward.compMin = rd.compMinVeasy;
                    reward.compMax = rd.compMaxVeasy;
                    break;
                case 1:
                    reward.money = rd.mEasy;
                    reward.exp = rd.eEasy;
                    reward.parts = rd.pEasy;
                    reward.compMin = rd.compMinEasy;
                    reward.compMax = rd.compMaxEasy;
                    break;
                case 2:
                    reward.money = rd.mNorm;
                    reward.exp = rd.eNorm;
                    reward.parts = rd.pNorm;
                    reward.compMin = rd.compMinNorm;
                    reward.compMax = rd.compMaxNorm;
                    break;
                case 3:
                    reward.money = rd.mHard;
                    reward.exp = rd.eHard;
                    reward.parts = rd.pHard;
                    reward.compMin = rd.compMinHard;
                    reward.compMax = rd.compMaxHard;
                    break;
            }
            return reward;
        }

        public Error CompleteMission(int id, int missionId, int pos, bool win, string respve, string enemySquad, int zoneId, int victimId, User user, double timeNow, int userPower)
        {
            var db = new TanksDBDataContext();
            var custs1 = Query.ListRadarConfig(db, userPower);
            var fightService = new FightService();
            Radar rd = Enumerable.FirstOrDefault(custs1.Select(c => new Radar(c)));
            if (rd == null) return Error.NORADAR;
            var custs = Query.GetNewUserMissionById(db, id);
            UserNewMission usernm = Enumerable.FirstOrDefault(custs.Select(c => new UserNewMission(c)));
            string response = "";
            if (usernm != null)
            {
                // remove complete mission from list                                
                // Save data                                                                
                var custs2 = Query.GetNewMissionsById(db, missionId);
                NewMission nm = Enumerable.FirstOrDefault(custs2.Select(c => new NewMission(c)));
                if (nm == null) return Error.NOMISSIONS_AVAILABLE;
                {
                    //Calculate reward  

                    int userItemId = 0;
                    int extramoney = 0;
                    int extradetails = 0;

                    int moneyReward = 0;
                    int partsReward = 0;
                    int experienceReward = 0;
                    int VIPmoneyReward = 0;
                    int VIPexperienceReward = 0;
                    int VIPpartsReward = 0;
                    int VIPItemcnt = 0;


                    // get calculated res                                                                        
                    if (win)
                    {
                        moneyReward += usernm.money;
                        partsReward += usernm.parts;
                        experienceReward += usernm.exp;

                        VIPmoneyReward = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, (double)moneyReward, timeNow);
                        VIPpartsReward = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, (double)partsReward, timeNow);
                        VIPexperienceReward = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, (double)experienceReward, timeNow);
                        VIPItemcnt = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionDropBonus, (double)usernm.itemCnt, timeNow);

                        extramoney += user.AddMoney(moneyReward + VIPmoneyReward);
                        extradetails += user.AddDetails(partsReward + VIPpartsReward);
                        user.Experience += usernm.exp + VIPexperienceReward;
                        userItemId = ItemService.AddItem(user.id, usernm.itemId, usernm.itemCnt + VIPItemcnt); //components reward                           
                    }

                    var rUser = JsonConvert.DeserializeObject<ResUser[]>(respve)[0];
                    var resp = fightService.CompleteBattleResult(user, moneyReward + VIPmoneyReward, fightService.ConvertFromResUser(rUser), win ? 1 : 0, timeNow);
                    /*BattleLogistics resp = Game.ApplyCompleteBattleResult(user, respve, false, timeNow, extramoney, extradetails, -1, false,
                        new BattleLogistics(extramoney, extradetails, (int)Math.Round((nm.exp / 100f) * userPower), VIPmoneyReward, VIPpartsReward, VIPexperienceReward, userItemId, usernm.itemCnt, usernm.itemId));*/
                    //set reward
                    resp.money = moneyReward;
                    resp.parts = partsReward;
                    resp.exp = experienceReward;
                    resp.itemId =  userItemId;
                    resp.itemConfig = usernm.itemId;
                    resp.count = usernm.itemCnt;
                    user.Experience += resp.exp;                                       
                    resp.VIPmoney = VIPmoneyReward;
                    resp.VIPparts = VIPpartsReward;
                    resp.VIPexp = VIPexperienceReward;
                    resp.VIPitem = VIPItemcnt;
                    if (win)
                    {
                        user.SpendMoney(resp.repair - resp.clanTax);
                    }
                    user.SetLevel(timeNow);
                    string js = JsonConvert.SerializeObject(resp, Formatting.None, new BattleLogisticsConverter());
                    response = Util.ClearJson(js);                    

                    //delete from DB
                    DeleteFromUserNewMissions(usernm.id);

                    //
                    if (win && usernm.diff == (int)Difficulty5.Hard)
                    {
                        var todoService = new TodoService();
                        todoService.ProcessTodoStep(user, TodoService.TodoStepType.WinRadarMissionHard);
                    }
                }
            }
            else return Error.NOUSERMISSIONS_AVAILABLE;
            return new Error(99, response);  // OK
        }

        private void DeleteFromUserNewMissions(int id)
        {
            var db = new TanksDBDataContext();
            IQueryable<UserNewMissions> custs = from c in db.UserNewMissions
                                                where c.id == id
                                                select c;
            foreach (UserNewMissions c in custs)
            {
                db.UserNewMissions.DeleteOnSubmit(c);
            }
            db.SubmitChanges();
        }
        
        public Error MoveTankToZone(int tankId, int power, int zoneId, User user)
        {
             return Error.OK;
        }

        public Error MoveTankFromZone(int tankId, int power, int zoneId, User user)
        {            
            return Error.OK;
        }

        public Error RecalculatePowerInZone(int power, int zoneId, User user)
        {
            /*var db = new TanksDBDataContext();
            var custs = Query.GetUserZoneByZoneId(db, user.id, zoneId);
            UserZone uz = Enumerable.FirstOrDefault(custs.Select(c => new UserZone(c)));

            if (uz != null)
            {
                uz.power += power;
                uz.powerUnit = RecalculateUnitPower(uz.power, uz.tanks, user);
                uz.Saving();
            }
            else return new Error(201);  //nouserzone */
            return Error.OK;
        }

        public List<UserZones> PVPMissionZones(double timeNow, Difficulty5 diff, User user)
        {
            List<UserZones> list = new List<UserZones>();
            TanksDBDataContext db = new TanksDBDataContext();
            if (diff == Difficulty5.VeryHard) list = Query.GetPVPUserZonesVeryHard(db, timeNow, user.id).Take(1).ToList();
            if (diff == Difficulty5.Hard || (diff == Difficulty5.VeryHard && list.Count() == 0)) list = Query.GetPVPUserZonesHard(db, timeNow, user.id).Take(1).ToList();
            if (diff == Difficulty5.Normal || (diff == Difficulty5.Hard && list.Count() == 0)) list = Query.GetPVPUserZonesNormal(db, timeNow, user.id).Take(1).ToList();
            if (diff == Difficulty5.Easy || (diff == Difficulty5.Normal && list.Count() == 0)) list = Query.GetPVPUserZonesEasy(db, timeNow, user.id).Take(1).ToList();
            if (diff == Difficulty5.VeryEasy || (diff == Difficulty5.Easy && list.Count() == 0)) list = Query.GetPVPUserZonesVeryEasy(db, timeNow, user.id).Take(1).ToList();
            return list;
        }

        private double RecalculateUnitPower(int power, int tanks, User user)
        {
            int min = Caching.Get<int>("mintier#" + user.Tier.ToString());
            if (min == 0)
            {
                TanksDBDataContext db = new TanksDBDataContext();
                min = Query.GetMinUnitPowerInTier(db, user.Tier);
                Caching.Add("mintier#" + user.Tier.ToString(), min);
            }
            if (tanks == 0) tanks = 1;
            return (1 + ((double)tanks - 5) * 0.1) * (double)power / (min * 1.1 * tanks);
        }
            


        public Error PvPAttack(User user, int enemyId, int enemyZone, double timeNow)
        {            
            return Error.OK;
        }

        public void PurgeAttacks(double timeNow)  // clear old blocks
        {
            foreach (var listPvP in attacks)
            {
                listPvP.Value.RemoveAll(info => (info.timestamp + 300000) < timeNow);
            }
        }


        public bool GetUserZoneState(int userId, int zoneId)
        {
            List<PvPAttackInfo> data;
            if (attacks.TryGetValue(userId, out data))
            {
                return data.Exists(a => a.zoneid == zoneId);
            }
            return false;
        }
    }


    public class Result
    {
        public List<UserNewMission> data;
        public int sc;
    }

    public class Rewards
    {
        public int money;
        public int exp;
        public int parts;
        public double compMin;
        public double compMax;
    }
}

//if pvp place log
/*if (nm.type >= MissionType.PvPmission1 && nm.type < MissionType.PvEmission1)
{
    pvpFlag = true;
    // write Defence log
    UserBattleLog ub = new UserBattleLog();
    // get calculated res
    var custs4 = Query.GetUserByUserId(db, victimId);
    User us = Enumerable.FirstOrDefault(custs4.Select(c => new User(c)));
    if (us != null)
    {
        List<UserBuildings> list = Query.ListUserBuildings.Invoke(db, us.id).ToList();
        if (us.y || us.rg > 0)
        {
            list = UserBuilding.AddBuildings(us, timeNow, list);
            User.SetUserLimits(us, list, timeNow);
        }
        else us.RemoveLimitTask(timeNow, list);
        int[] rewards = UserBuilding.DiminishResourcesInZone(us, zoneId, timeNow, 50, list); // 50 - percent to rob                                
        ub.money = rewards[0];
        ub.prodPoints = rewards[1];                            
    }
    ub.timestamp = Util.GetMs();
    ub.type = (int)nm.type;
    ub.enemyId = user.id;
    ub.enemyLvl = user.UserLevel;
    ub.enemyName = user.Name;
    var custs5 = Query.GetClanById(db, user.clan_id);
    Clan cl = Enumerable.FirstOrDefault(custs5.Select(c => new Clan(c)));
    if (cl != null) ub.enemyClan = cl.name;
    else ub.enemyClan = "";
    ub.enemySquadPower = 0;
    ub.zoneId = zoneId;
    if (enemySquad == "") return Error.NO_SUCH_TANK;
    ub.enemySquad = enemySquad;
    ub.userId = victimId;
    ub.win = !win;
    ub.logType = LogType.Defence;
    ub.Save();
}
 */

//user.Saving();

/*if (victimId > 0)
{
    uba.timestamp = Util.GetMs();
    uba.type = (int)nm.type;
    uba.enemyId = victimId;
    var cachedNewMission = Query.GetNewMissionInfoByUserIdByEnemyId(db, user.id, victimId);
    NewMissionInfo nmi = Enumerable.FirstOrDefault(cachedNewMission.Select(c => new NewMissionInfo(c)));
    if (nmi != null)
    {
        uba.enemyName = nmi.enemyName;
        uba.enemyLvl = nmi.enemyLvl;
        uba.enemyClan = nmi.enemyClanName;
        uba.zoneId = zoneId;
        uba.enemySquad = "";
        foreach (UserUnit uu in nmi.enemySquad)
        {
            uba.enemySquadPower += uu.power;
            if (uba.enemySquad.Length > 0) uba.enemySquad += ",";
            uba.enemySquad += uu.t.ToString() + ":" + uu.power;
        }
    }
    else return Error.MISSIONS_ALREADY_COMPLETED;

    uba.userId = user.id;
    uba.win = win;
    uba.logType = LogType.Attack;
    uba.Save();
}
}*/

/*
            //Random bot or Player
            var db = new TanksDBDataContext();
            var cachedNewMission = Query.GetNewMissionInfoByUserIdByZoneId(db, user.id, zoneId);
            NewMissionInfo nmi = Enumerable.FirstOrDefault(cachedNewMission.Select(c => new NewMissionInfo(c)));
            //nmi = Caching.Get<NewMissionInfo>("pvpMission#" + missionId.ToString() + "#" + user.id.ToString());
            var custs = Query.ListUserUnits(db);
            List<UserUnits> duList = Enumerable.ToList<UserUnits>(custs);
            if (nmi != null)
            {
                //check user's changing
                if (nmi.enemyId > 0)
                {
                    //Get user defend list
                    var custs1 = Query.ListUserUnitsInZone(db, nmi.enemyId, nmi.zoneId);
                    List<UserUnits> defendList = Enumerable.ToList<UserUnits>(custs1);
                    int x = 0;
                    foreach (UserUnits uus in defendList)
                    {
                        if (nmi.enemySquad[x].i != uus.i)
                        {
                            UserUnit userUnit = new UserUnit(uus);
                            nmi.enemySquad[x] = userUnit;
                        }
                        x++;
                    }
                    //Get resources from zone
                    int[] rewards = UserBuilding.GetResourcesFromZone(user, nmi.zoneId, timeNow);
                    nmi.money = rewards[0];
                    nmi.prodPoints = rewards[1];
                    //nmi.exp = rewards[2];
                }
                else
                {
                    // check unit if bot
                    List<UserUnit> listUserU = new List<UserUnit>();
                    foreach (UserUnit uu in nmi.enemySquad)
                    {
                        UserUnits uuTank = duList.Find(item => item.i == uu.i);
                        if (uuTank != null)
                        {
                            UserUnit tank = new UserUnit(uuTank);
                            if (!tank.Equals(uu))
                            {
                                listUserU.Add(tank);
                            }
                            else listUserU.Add(uu);
                        }
                    }
                    nmi.enemySquad = listUserU;
                }
            }
            else
            {
                nmi = new NewMissionInfo();
                var custs2 = Query.GetNewMissionsById(db, missionId);
                NewMission nm = Enumerable.FirstOrDefault(custs2.Select(c => new NewMission(c)));
                if (nm != null)
                {
                    //Get nearest player enemyZone
                    var cachedNewMission2 = Query.GetNewMissionInfoByUserId(db, user.id);
                    List<UserNewMissionInfos> mList = Enumerable.ToList(cachedNewMission2);
                    var custs3 = Query.ListUserZones(db, timeNow);
                    List<UserZones> listUserZones = Enumerable.ToList<UserZones>(custs3);
                    List<UserUnit> arr = new List<UserUnit>();
                    int i = 0;
                    int index = 0;
                    int enemyPower = (nm.mult * power) / 100;
                    int delta = (int)Math.Round(enemyPower * 0.1);
                    foreach (UserZones uz in listUserZones)
                    {
                        if (Math.Abs(uz.power - enemyPower) < delta && !mList.Any(a => a.enemyId == uz.userId))
                        {
                            index = i;
                            delta = Math.Abs(uz.power - enemyPower);
                        }
                        i++;
                    }
                    if (index > 0)  // found nearest enemy    && zoneId == listUserZones[index].zoneId
                    {
                        nmi.power = listUserZones[index].power;
                        nmi.zoneId = zoneId;
                        nmi.enemyId = listUserZones[index].userId;
                        var custs4 = Query.GetUserByUserId(db, nmi.enemyId);

                        User us = Enumerable.FirstOrDefault(custs4.Select(c => new User(c)));
                        nmi.enemyName = us.Name;
                        nmi.enemyLvl = us.UserLevel;
                        var custs5 = Query.GetClanById(db, us.clan_id);
                        Clan cl = Enumerable.FirstOrDefault(custs5.Select(c => new Clan(c)));
                        if (cl != null) nmi.enemyClanName = cl.name;

                        //Get user defend list
                        var custs6 = Query.ListUserUnitsInZone(db, nmi.enemyId, listUserZones[index].zoneId);
                        List<UserUnits> defendList = Enumerable.ToList<UserUnits>(custs6);
                        foreach (UserUnits uus in defendList)
                        {
                            UserUnit uu = new UserUnit(uus);
                            arr.Add(uu);
                        }
                        nmi.enemySquad = arr;
                        //Get resources from zone
                        int[] rewards = UserBuilding.GetResourcesFromZone(user, nmi.zoneId, timeNow);
                        nmi.money = rewards[0];
                        nmi.prodPoints = rewards[1];
                        nmi.exp = (int)Math.Round((nm.exp / 100f) * power);
                        //nmi.exp = rewards[2];
                    }
                    else
                    {
                        //Get list of Default units
                        power = (int)Math.Round((double)nm.mult * power / 100f);
                        var custs7 = Query.GetTopTierTanks(db, user.id);
                        List<int> tierList = Enumerable.ToList<int>(custs7);
                        int unitCount = tierList.Count;
                        int averagePower;

                        var custs8 = Query.GetLastUserId(db);
                        int lastid = Enumerable.FirstOrDefault(custs8);
                        var custs9 = Query.GetRandomName(db, random.Next(lastid), user.id);
                        User enemy = Enumerable.FirstOrDefault(custs9.Select(c => new User(c)));
                        if (enemy == null)
                        {
                            nmi.enemyName = "Vasya";
                            nmi.enemyClanName = "";
                            nmi.enemyLvl = 100;
                            nmi.enemyId = -1;
                            nmi.zoneId = -1;
                        }
                        else
                        {
                            nmi.enemyName = enemy.Name;
                            nmi.enemyLvl = enemy.UserLevel;
                            nmi.enemyId = enemy.id;
                            nmi.zoneId = zoneId;
                            var custs5 = Query.GetClanById(db, enemy.clan_id);
                            Clan cl = Enumerable.FirstOrDefault(custs5.Select(c => new Clan(c)));
                            if (cl != null) nmi.enemyClanName = cl.name;
                            else nmi.enemyClanName = "";
                        }
                        nmi.money = 2 * power;

                        var roll = random.NextDouble() - 0.5f;

                        UserUnits uuTank = new UserUnits();
                        foreach (int t in tierList)
                        {
                            averagePower = GetPowerByDifficulty((Difficulty)nm.difficulty, t);
                            averagePower = averagePower + (random.Next((int)(averagePower * 0.2)) - (int)(averagePower * 0.1));
                            delta = 200;
                            foreach (UserUnits du in duList)
                            {
                                if (Math.Abs(du.power - averagePower) < delta)
                                {
                                    delta = Math.Abs(du.power - averagePower);
                                    uuTank = du;
                                }
                            }
                            UserUnit tank = new UserUnit(uuTank);
                            power -= tank.power;
                            nmi.power += tank.power;
                            arr.Add(tank);
                            duList.Remove(uuTank);
                        }
                        
                        for (int x = 0; x < unitCount; x++)
                        {
                            averagePower = power / (unitCount - x);
                            averagePower += (int)Math.Round(averagePower * roll * 0.2f);                                                        
                        }
                         
                        nmi.enemySquad = arr;
                    }
                    nmi.userId = user.id;
                    nmi.Save();
                }
            }
            return nmi;
*/