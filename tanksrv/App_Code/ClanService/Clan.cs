using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Transactions;
using Newtonsoft.Json;

namespace TW
{
    public class Clan : IToJson
    {
        public const int RankOwner = 1;
        public const int RankCollonel = 2;
        public const int RankController = 3;
        public const int RankCommander = 4;
        public const int RankFighter = 5;
        public const int RankRookie = 6;

        public enum Skills
        {
            CurrentMaterialsCars = 1,
            CurrentMaterialsMiddle = 2,
            CurrentMaterialsHeavy = 3,
            RechargeCarsLight = 4,
            RechargeOthers = 5,
            SensorSystems = 6,
            CurrentSuspension = 7,
        }

        public int id;
        public string name;
        public string flag;
        public string logo;
        public double treasury;

        public double tax;
        public int places; // number of players
        public int join_price;
        public string statement;
        public int level;

        //
        public int players;//calculated by top in runtime
        public string leaderName; //calculate by top in runtime
        public int power; //calculated by top in runtime
        public int place; //calculate bu top in runtime

        internal Clan()
        {

        }

        internal Clan(Clans c)
        {
            // on change, mainain ToClans() as well
            id = c.id;
            name = c.name;
            flag = c.flag.Trim();
            logo = c.logo.Trim();
            treasury = c.treasury;

            tax = c.tax;
            places = c.places;
            join_price = c.join_price;
            statement = c.statement;
            level = c.level;
        }

        internal Clans ToClans(Clans c)
        {
            // on change, maintain constructor(id) as well
            c.id = id;
            c.name = name;
            c.flag = flag;
            c.logo = logo;
            c.treasury = treasury;


            c.tax = tax;
            c.places = places;
            c.join_price = join_price;
            c.statement = statement;
            c.level = level;

            return c;
        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            json.BeginObject();
            json.Name("id").Value(id);
            json.Name("name").Value(name);
            json.Name("flag").Value(flag);
            json.Name("logo").Value(logo);
            json.Name("treasury").Value(treasury);
            json.Name("tax").Value(tax);
            json.Name("places").Value(places);
            json.Name("join_price").Value(join_price);
            json.Name("leaderName").Value(leaderName);
            json.Name("power").Value(power);
            json.Name("players").Value(players);
            json.Name("place").Value(place);
            json.Name("statement").Value(statement);
            json.Name("level").Value(level);
            json.EndObject();
        }

        internal void Save()
        {
            var db = new TanksDBDataContext();
            foreach (var c in Query.GetClanById.Invoke(db, id))
            {
                ToClans(c);
            }
            db.SubmitChanges();
        }
    }

    public class ClanMember : IToJson
    {
        public int id;
        public string name;
        public int level;
        public int position;
        public double lastLogin;
        public int wins;

        public int power;       //calculated in runtime
        public bool isOnline;   //calculated in runtime        

        public ClanMember(Users u)
        {
            id = u.id;
            name = u.Name;
            level = u.UserLevel;
            position = u.clan_position;
            lastLogin = u.lastLogin;
            wins = u.Victories;
        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            json.BeginObject();
            json.Name("i").Value(id);
            json.Name("n").Value(name);
            json.Name("l").Value(level);
            json.Name("p").Value(position);
            json.Name("lg").Value(lastLogin);
            json.Name("pr").Value(wins);
            json.Name("o").Value(isOnline);
            json.Name("v").Value(wins);
            json.EndObject();
        }
    }

    public class ClanKick
    {
        public string name;
    }

    public class ClanService : AbstractService
    {
        public const int InviteMailExpirationMs = 7200000;
        private const int MinNameLen = 3;
        private const int MaxNameLen = 50;
        private const string ClanDefaultLogoId = "1";

        private const string ClanLevelConfigCache = "ClanLevelConfig";
        private const string ClanSkillConfigCache = "ClanSkillConfig";

        public static Dictionary<string, string> countries = new Dictionary<string, string>();

        internal static readonly int[] CanInvite = { Clan.RankOwner, Clan.RankCollonel, Clan.RankController };
        internal static readonly int[] CanUpgrade = { Clan.RankOwner, Clan.RankCollonel };
        internal static readonly int[] CanSendMail = { Clan.RankOwner, Clan.RankCollonel };
        internal static readonly int[] CanAltPosition = { Clan.RankOwner, Clan.RankController, Clan.RankCommander, Clan.RankCollonel };
        internal static readonly int[] CanFire = { Clan.RankOwner, Clan.RankCollonel };
        internal static readonly int[] Acl = { Clan.RankRookie, Clan.RankFighter, Clan.RankCommander, Clan.RankController, Clan.RankCollonel, Clan.RankOwner};

        private static readonly ConcurrentDictionary<int, ClanKick> kicks = new ConcurrentDictionary<int, ClanKick>();

        static ClanService()
        {
            countries.Add("USA", "flag-usa");
            countries.Add("RUSSIA", "flag-ru");
            countries.Add("GERMANY", "flag-gr");
            countries.Add("SWEDEN", "flag-sw");
            countries.Add("POLAND", "flag-pl");
            countries.Add("ITALY", "flag-it");
            countries.Add("SPAIN", "flag-es");
            countries.Add("LATVIA", "flag-lv");
            countries.Add("SINGAPORE", "flag-sin");
            countries.Add("FRANCE", "flag-fr");
            countries.Add("UKRAINE", "flag-ua");
            countries.Add("BELARUS", "flag-by");
            countries.Add("KAZAKHSTAN", "flag-kz");
        }

        private Dictionary<int, ClanLevel> GetClanLevelConfig()
        {
            var result = Caching.Get<Dictionary<int, ClanLevel>>(ClanLevelConfigCache);
            if (result != null)
                return result;

            var db = new TanksDBDataContext();
            var custs = Query.GetClanLevelConfig(db);

            result = custs.Select(clanLevels => new ClanLevel(clanLevels)).ToDictionary(clanLevel => clanLevel.level);
            Caching.Add(ClanLevelConfigCache, result);

            return result;
        }

        private List<ClanSkillLevel> GetClanSkillConfig()
        {
            var result = Caching.Get<List<ClanSkillLevel>>(ClanSkillConfigCache);
            if (result != null)
                return result;

            var db = new TanksDBDataContext();
            var custs = Query.GetClanSkillLevelConfig(db);

            result = custs.Select(clanSkillLevels => new ClanSkillLevel(clanSkillLevels)).ToList();
            Caching.Add(ClanSkillConfigCache, result);

            return result;
        }

        private bool GetClanLevelSettings(int clanLevel, out ClanLevel result)
        {
            var clanLevelConfig = GetClanLevelConfig();
            return clanLevelConfig.TryGetValue(clanLevel, out result);
        }

        private bool GetSkillLevelSettings(int skillIndex, int skillLevel, out ClanSkillLevel result)
        {
            var clanSkillConfig = GetClanSkillConfig();

            result = clanSkillConfig.Find(level => level.index == skillIndex && level.level == skillLevel);
            return result != null;
        }

        public Clan GetClanWithStatistic(int id)
        {
            return new TopService().GetClanTop(id);
        }

        public bool GetClan(int id, out Clan result)
        {
            result = GetClan(id);
            return result != null;
        }

        public Clan GetClan(int id, TanksDBDataContext dbContext = null)
        {
            if (id <= 0)
                return null;

            var db = dbContext ?? new TanksDBDataContext();
            var custs = Query.GetClanById(db, id).ToList();
            if (custs == null || custs.Count == 0)
            {
                return null;
            }
            return Enumerable.FirstOrDefault(custs.Select(c => new Clan(c)));
        }

        public Clan GetClanByName(string clanName)
        {
            if (string.IsNullOrEmpty(clanName))
                return null;

            var db = new TanksDBDataContext();
            var custs = Query.GetClansByName(db, clanName);

            var clan = Enumerable.FirstOrDefault(custs.Select(c => new Clan(c)));
            if (clan == null)
                return null;

            var clanMembers = GetPlayers(clan.id);
            return clanMembers.Count == 0 ? null : clan;
        }

        public string Create(User creator, string name, string flag, string logoKey, int joinPrice, bool forGold)
        {
            if (creator.clan_id > 0)
                return Util.ToJson(Error.ALREADY_IN_CLAN);

            if (creator.UserLevel < Define.Get(Def.ClanCreateMinLevel))
                return Util.ToJson(Error.LEVEL_TOO_LOW);

            var moneyCost = Define.Get(Def.ClanCreatePrice);
            if (creator.GetMoney() < moneyCost)
            {
                if (!forGold)
                    return Util.ToJson(Error.LACK_MONEY);

                var shop = new Shop(ShopType.Money);
                var gold = Math.Ceiling((moneyCost - creator.GetMoney()) * shop.price);
                if (creator.Gold < gold)
                    return Util.ToJson(Error.LACK_GOLD);

                creator.SetMoney((int)moneyCost);

                new Gold(creator, "Clan", -1, -gold, 1);
                creator.Gold -= gold;
            }

            name = name.Trim();
            if (name.Length < MinNameLen || name.Length > MaxNameLen)
                return Util.ToJson(Error.CLAN_NAME_LENGTH);

            var db = new TanksDBDataContext();
            if (Query.GetClansByName.Invoke(db, name).Any())
                return Util.ToJson(Error.CLAN_NAME_NOT_UNIQUE);

            var clans = new Clans
            {
                name = name,
                flag = flag,
                logo = string.IsNullOrEmpty(logoKey) ? ClanDefaultLogoId : logoKey,
                places = 10,
                join_price = joinPrice,
                statement = string.Empty,
                level = 1
            };
            db.Clans.InsertOnSubmit(clans);
            db.SubmitChanges();

            var clan = new Clan(clans);

            creator.SpendMoney((int)Math.Max(moneyCost, 0));
            creator.clan_id = clan.id;
            creator.clan_position = Clan.RankOwner;
            creator.Saving();

            return Util.ToJson(clan);
        }

        public List<ClanMember> GetPlayersWithStatistics(int id)
        {
            var clanMembers = GetPlayers(id);

            var fightService = new FightService();
            foreach (var clanMember in clanMembers)
            {
                clanMember.power = fightService.CalculateUserPower(clanMember.id);
                clanMember.isOnline = UserService.IsUserOnline(clanMember.id);
            }

            return clanMembers;
        }

        public List<ClanMember> GetPlayers(int id)
        {
            var result = new List<ClanMember>();
            if (id <= 0)
                return result;

            var db = new TanksDBDataContext();
            result.AddRange(Query.GetUsersByClan(db, id).Select(c => new ClanMember(c)));

            return result;
        }

        private static int ComparePosition(int a, int b)
        {
            var indexA = Array.IndexOf(Acl, a);
            var indexB = Array.IndexOf(Acl, b);
            return (indexA > indexB) ? 1 : (indexA < indexB ? -1 : 0);
        }

        public Error ChangeClanConfig(User user, Request.Dic[] configData)
        {
            if (!CanUpgrade.Contains(user.clan_position))
                return Error.CLAN_POSITION_TOO_LOW;

            var clan = GetClan(user.clan_id);
            if (clan == null)
                return Error.CLAN_NOT_FOUND;

            int fullPrice = 0;
            foreach (var data in configData)
            {
                string configKey = data.s;
                int intValue = data.i;
                string stringValue = data.n;

                switch (configKey)
                {
                    case "join":
                        if (intValue < -1) return Error.INCORRECT_VALUE;
                        break;
                    case "tax":
                        if (intValue < 0 || intValue > 50) return Error.INCORRECT_VALUE;
                        fullPrice += (int)Define.Get(Def.ClanChangeTaxPrice);
                        break;
                    case "logo":
                        if (string.IsNullOrWhiteSpace(stringValue) || stringValue == clan.logo) return Error.INCORRECT_VALUE;
                        fullPrice += (int)Define.Get(Def.ClanChangeLogoPrice);
                        break;
                    case "flag":
                        if (string.IsNullOrWhiteSpace(stringValue) || stringValue == clan.flag || !countries.ContainsKey(stringValue)) return Error.INCORRECT_VALUE;
                        fullPrice += (int)Define.Get(Def.ClanChangeFlagPrice);
                        break;
                }
            }

            if (user.GetMoney() < fullPrice)
                return Error.LACK_MONEY;

            foreach (var data in configData)
            {
                string configKey = data.s;
                int intValue = data.i;
                string stringValue = data.n;

                switch (configKey)
                {
                    case "join":
                        clan.join_price = intValue;
                        clan.Save();
                        break;
                    case "tax":
                        clan.tax = intValue;
                        clan.Save();

                        user.SpendMoney((int)Define.Get(Def.ClanChangeTaxPrice));
                        user.Saving();
                        break;
                    case "logo":
                        clan.logo = stringValue;
                        clan.Save();

                        user.SpendMoney((int)Define.Get(Def.ClanChangeLogoPrice));
                        user.Saving();
                        break;
                    case "flag":
                        clan.flag = stringValue;
                        clan.Save();

                        user.SpendMoney((int)Define.Get(Def.ClanChangeFlagPrice));
                        user.Saving();
                        break;
                }
            }

            return Error.OK;
        }

        public Error ChangeClanStatement(User user, string statement)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (user.clan_id <= 0)
                return Error.USER_NOT_CLAN_MEMBER;

            if (!CanAltPosition.Contains(user.clan_position))
                return Error.CLAN_POSITION_TOO_LOW;

            var clan = GetClan(user.clan_id);
            if (clan == null)
                return Error.CLAN_NOT_FOUND;
            // need check before
            clan.statement = statement.Replace("\"", "");
            clan.Save();

            return Error.OK;
        }

        public Error AddClanTreasury(User user, int donatePackIndex)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (user.clan_id <= 0)
                return Error.USER_NOT_CLAN_MEMBER;

            var clan = GetClan(user.clan_id);
            if (clan == null)
                return Error.CLAN_NOT_FOUND;

            var clanMaxPlaceLimit = Define.Get(Def.ClanMaxPlaceLimit);
            if (clan.places >= clanMaxPlaceLimit)
                return Error.CLAN_MEMBERS_MAX_LIMIT;

            if (donatePackIndex >= Define.ClanDonateGoldPacks.Length)
                return Error.INCORRECT_CONFIG;

            var packValue = Define.ClanDonateGoldPacks[donatePackIndex];
            if (user.Gold < packValue)
                return Error.LACK_GOLD;

            //consume gold
            user.Gold -= packValue;
            user.Saving();

            new Gold(user, Gold.CLAN_INVEST, 0, -packValue);

            //fill clan treasury
            clan.treasury += packValue * Define.ClanDonateGoldPacksMult[donatePackIndex];
            RecalculateClanLevel(clan);
            return Error.OK;
        }

        private void RecalculateClanLevel(Clan clan)
        {
            //recalculate clan level, place, treasury
            ClanLevel clanLevel;
            GetClanLevelSettings(clan.level + 1, out clanLevel);

            while (clanLevel != null && clan.treasury >= clanLevel.experience)
            {
                clan.level++;
                clan.places = clan.level + 10;
                clan.treasury -= clanLevel.experience;

                if (!GetClanLevelSettings(clan.level + 1, out clanLevel))
                    break;
            }

            clan.Save();
        }

        public Error BuyClanSkill(User user, int skillType)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (!Enum.IsDefined(typeof(Clan.Skills), skillType))
                return Error.INCORRECT_VALUE;

            if (user.clan_id <= 0)
                return Error.USER_NOT_CLAN_MEMBER;

            var clan = GetClan(user.clan_id);
            if (clan == null)
                return Error.CLAN_NOT_FOUND;

            var skillLevel = user.GetSkillLevel((Clan.Skills)skillType);

            ClanSkillLevel clanSkillLevelConfig;
            if (!GetSkillLevelSettings(skillType, skillLevel, out clanSkillLevelConfig))
                return Error.INCORRECT_CONFIG;

            if (clan.level < clanSkillLevelConfig.clanLevel)
                return Error.CLAN_LOW_LEVEL;

            if (user.GetMoney() < clanSkillLevelConfig.money)
                return Error.LACK_MONEY;

            user.SpendMoney(clanSkillLevelConfig.money);
            user.SetSkill((Clan.Skills)skillType, skillLevel + 1);
            user.Saving();

            return Error.OK;
        }

        public Error ChangeClanPosition(User user, int targetUserId, int rankId)
        {
            if (ComparePosition(user.clan_position, rankId) <= 0 || !CanAltPosition.Contains(user.clan_position))
                return Error.CLAN_POSITION_TOO_LOW;
            var target = new User(targetUserId);

            if (ComparePosition(user.clan_position, target.clan_position) == 0)
                return Error.CLAN_POSITION_TOO_LOW;

            if (target.clan_position == Clan.RankOwner)
                return Error.CLAN_POSITION_TOO_LOW;

            if (target.id == 0 || target.clan_id != user.clan_id)
                return Error.CLAN_NOT_FOUND;

            target.clan_position = rankId;
            target.Saving();

            return Error.OK;
        }

        public Error LeaveClan(User user)
        {
            var clan = GetClan(user.clan_id);
            if (clan == null)
                return Error.CLAN_NOT_FOUND;

            if (user.clan_position == Clan.RankOwner && GetPlayers(clan.id).Count > 1)
                return Error.CLAN_OWNER_CANT_LEAVE_FULL_CLAN;

            var tournamentService = new TournamentService();
            tournamentService.RemoveParticipant(user.clan_id, user.id);

            user.clan_id = 0;
            user.clan_position = 0;
            user.Saving();

            return Error.OK;
        }

        public Error FireFromClan(User user, int targetUserId)
        {
            if (!CanFire.Contains(user.clan_position))
                return Error.CLAN_POSITION_TOO_LOW;

            var target = new User(targetUserId);
            if (target.id == 0 || ComparePosition(user.clan_position, target.clan_position) <= 0 ||
                target.clan_position == Clan.RankOwner)
                return Error.CLAN_POSITION_TOO_LOW;

            var tournamentService = new TournamentService();
            tournamentService.RemoveParticipant(user.clan_id, user.id);

            target.clan_id = 0;
            target.clan_position = 0;
            target.Saving();

            kicks[target.id] = new ClanKick { name = user.Name };

            return Error.OK;
        }

        public string JoinClanManual(User user, int clanId)
        {
            if (user.clan_id != 0)
                return Util.ToJson(Error.ALREADY_IN_CLAN);

            var clan = GetClan(clanId);
            if (clan == null)
                return Util.ToJson(Error.CLAN_NOT_FOUND);

            if (clan.join_price < 0)
                return Util.ToJson(Error.CLAN_RESTRICTS_ENTER);

            if (user.GetMoney() < clan.join_price)
                return Util.ToJson(Error.LACK_MONEY);

            var db = new TanksDBDataContext();
            var cuts = Query.CountClanMembersByClan(db, clanId);
            var counter = Enumerable.FirstOrDefault(cuts);
            if (counter == null)
                return Util.ToJson(Error.CLAN_NOT_FOUND);

            if (counter.Count >= clan.places)
                return Util.ToJson(Error.NO_CLAN_SPACE);

            if (clan.join_price > 0)
            {
                var add = Define.Get(Def.ClanConvertMoneyToTreasury) * clan.join_price;
                clan.treasury += add;
                RecalculateClanLevel(clan);

                user.SpendMoney(clan.join_price);
            }
            user.clan_id = clanId;
            user.clan_position = Clan.RankRookie;
            user.Saving();

            return Util.ToJson(clan);
        }

        public Error ChangeClanLeader(User user, int targetUserId)
        {
            if (user.clan_position != Clan.RankOwner)
                return Error.CLAN_POSITION_TOO_LOW;

            var clan = GetClan(user.clan_id);
            if (clan == null)
                return Error.CLAN_NOT_FOUND;

            var target = new User(targetUserId);
            if (target.id == 0 || clan.id != target.clan_id)
                return Error.USER_NOT_CLAN_MEMBER;

            var price = (int)Define.Get(Def.ClanChangeOwner);
            if (user.GetMoney() < price)
                return Error.LACK_MONEY;

            //safe update
            using (var scope = new TransactionScope())
            {
                //consume price
                user.SpendMoney(price);

                //remove old owner
                user.clan_position = Clan.RankRookie;
                user.Saving();

                //set new owner
                target.clan_position = Clan.RankOwner;
                target.Saving();

                scope.Complete();
            }

            return Error.OK;
        }

        public ClanKick GetAndRemoveClanKick(int userId)
        {
            ClanKick kick = null;
            if (kicks.TryGetValue(userId, out kick))
            {
                kicks[userId] = null;
            }

            return kick;
        }

        public Error InviteToClan(User user, int targetUserId, double timeNow)
        {
            if (!CanInvite.Contains(user.clan_position))
                return Error.CLAN_POSITION_TOO_LOW;

            var clan = GetClanWithStatistic(user.clan_id);
            if (clan == null)
                return Error.CLAN_NOT_FOUND;

            var target = new User(targetUserId);
            if (target.id == 0 || target.clan_id != 0)
                return Error.ALREADY_IN_CLAN;

            if (clan.players >= clan.places)
                return Error.NO_CLAN_SPACE;

            var mailService = new MailService();
            mailService.ClanInvitation(user.id, targetUserId, user.clan_id, timeNow, "clanInvite.mailTopic", "clanInvite.mailMsg");

            return Error.OK;
        }

        public Error RespondInvite(User user, int mailId, bool accept)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (user.clan_id > 0)
                return Error.ALREADY_IN_CLAN;

            var mailService = new MailService();

            var db = new TanksDBDataContext();
            if (!accept)
            {
                mailService.DeleteMail(user.id, mailId, db);
                return Error.OK;
            }

            //get invite mail
            var custs = Query.GetSingleUserMail(db, user.id, mailId);
            var inviteMail = Enumerable.FirstOrDefault(custs.Select(entry => new MailboxItem(entry)));
            if (inviteMail == null)
                return Error.INCORRECT_VALUE;

            //check mail expiration
            if (Util.GetMs() > inviteMail.timeCreated + InviteMailExpirationMs)
            {
                mailService.DeleteMail(user.id, mailId, db);
                return Error.ERROR_MAIL_EXPIRED;
            }

            //try get clan from details
            var clan = GetClanWithStatistic(inviteMail.details);
            if (clan == null)
                return Error.CLAN_NOT_FOUND;

            if (clan.players >= clan.places)
                return Error.NO_CLAN_SPACE;

            //assign new clan
            user.clan_id = clan.id;
            user.clan_position = Clan.RankRookie;
            user.Saving();

            //remove mail
            mailService.DeleteMail(user.id, mailId, db);

            return Error.OK;
        }

        public Error SendBroadcastMail(User user, string message, double timeNow)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (user.clan_id <= 0)
                return Error.USER_NOT_CLAN_MEMBER;

            if (string.IsNullOrEmpty(message))
                return Error.INCORRECT_VALUE;

            if (!CanSendMail.Contains(user.clan_position))
                return Error.CLAN_POSITION_TOO_LOW;

            new MailService().SendClanMail(user, timeNow, GetPlayers(user.clan_id), message);
            //SendFriendGift(user, user.id, timeNow);
            return Error.OK;
        }

        public void AddClanTreasury(Clan clan, double money, double gold)
        {
            if (money > 0 || gold > 0)
            {
                clan.treasury += Define.Get(Def.ClanConvertMoneyToTreasury) * money;
                clan.treasury += Define.Get(Def.ClanConvertGoldToTreasury) * gold;
                clan.Save();
            }
        }

        public string ClanSettingsToJson()
        {
            var clanLevelConfig = GetClanLevelConfig();
            var clanSkillConfig = GetClanSkillConfig();

            return Util.ToJson(new ClanSettings { clanLevelConfig = clanLevelConfig.Values.ToList(), clanSkillConfig = clanSkillConfig });
        }

        public Error SendFriendGift(User user, int userId, double timeNow)
        {
            int money = (int)Define.Get(Def.SendGiftMoney);
            int parts = (int)Define.Get(Def.SendGiftParts);
            if (user.GetMoney() < money) return Error.LACK_MONEY;
            if (user.GetDetails() < parts) return Error.LACK_PARTS;
            var result = (user.EventFuelRestoreAttempt / (int)Math.Pow(10, 8)) % 10;
            if (result > 2) return Error.NOREWARD;
            var mailService = new MailService();
            var itemService = new ItemService();
            var rewardData = new List<Bonus>() { new Bonus() { type = 0, num = money, id = 0 }, new Bonus() { type = 5, num = parts, id = 0 } };
            mailService.SendGiftToClanmate(user.id, user.clan_id, userId, timeNow, Util.ToJson(rewardData));
            user.SpendMoney(money);
            user.SpendDetails(parts);
            user.EventFuelRestoreAttempt += (int)Math.Pow(10, 8);  //saving free gift use
            user.Saving();
            return Error.OK;
        }
    }

    public class ClanSettings
    {
        public List<ClanLevel> clanLevelConfig;
        public List<ClanSkillLevel> clanSkillConfig;

        public ClanSettings()
        {
        }
    }
}