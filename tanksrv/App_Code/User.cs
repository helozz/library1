using System.Data.Linq;
using Newtonsoft.Json;

namespace TW
{
    using System;
    using System.Collections.Generic;
    using System.Linq;

    public enum VIPdata
    {
        Level,
        PurchasedGold,
        GoldFor1Day,
        GoldFor7Day,
        GoldFor30Day,
        SubscriptionBonus,
        SubscriptionDropBonus,
        FuelBonus,
        MarketRefreshBonus,
        EventFuelBonus
    }

    public class User
    {
        public Int32 id;     // id
        public String Name;
        public String BundleId;
        public String Photo;
        public String SocialID;
        public String AuthKey;
        public Int32 Rating;
        public Int32 UserLevel;     // level
        public double Gold;    // gold
        private double Money;    // money
        private Int32 ProductionPoints; //parts
        public String Locale;
        public Int32 t;
        public Int32 d;
        public Int32 Experience;
        public Int32 Victories;
        public Int32 Defeats;
        public Int32 al;
        public Int32 Slots;
        public Int32 Flags;
        public Int32 rg = 0; // флаг регистрации
        public bool y; //флаг обновления версии
        public Int32 MissionID;
        public String Device;

        public String FBLink;
        public String TWLink;
        public Int32 Draws;
        public Int32 TestGroup;
        public Int32 PowerSlots;
        public int clan_id;
        public int clan_position;
        public int clanSkill1;
        public int clanSkill2;
        public int clanSkill3;
        public int clanSkill4;
        public int clanSkill5;
        public int clanSkill6;
        public int clanSkill7;
        public Int32 Tier;
        public string PushToken;
        public double BanEndTime;

        public int zones1;
        public int hiredTanks;
        public int LimitDetails;
        public int LimitMoney;
        public int LimitFuel;
        public int LimitEventFuel;
        public int RNDTank;
        public double upgradeTime;
        public double RegisterTime;

        public int ScanAttempt;
        public double lastLogin;
        public string blindBuyAttempts = string.Empty;
        public int synPVP;
        public double scanTime;

        //battle
        public string battleSquad;
        public int battlesScan;
        public double battlesLastScan;
        public int battlesCount;
        public double battleTime;
        public double battlesLastTime;
        public double battleDailyRewardTime;
        public double battleBestLvlReward;
        public double battleBestReward;
        public string tutorialState = string.Empty;
        public string todoState;
        public string todoReward;
        public string eventReward;
        public double gameTime;

        public List<int> buildingsConstructed = new List<int>();

        public double marketTime;
        public int marketBuyAttempts;

        public int EventFuelRestoreAttempt;

        public double dailyRewardTime;
        public int dailyRewardIndex;
        public int eventReputation;

        public double VIPgold;
        public double VIPsubscription;

        private bool y2;

        //============ Methods

        public bool IsPremium
        {
            get { return BundleId.EndsWith(".premium"); }
        }

        public List<int> GetTodoRewards()
        {
            return string.IsNullOrEmpty(todoReward) ? new List<int>() : todoReward.Split(',').Select(int.Parse).ToList();
        }

        public List<int> GetEventRewards()
        {
            return string.IsNullOrEmpty(eventReward) ? new List<int>() : eventReward.Split(',').Select(int.Parse).ToList();
        }

        public int[] Newday(double timeNow) // Выдача премий за посещение 
        {
            y2 = y;
            var day = (int)Math.Floor(timeNow / 86400000);
            int[] res = { 0, 0 };

            UserAction.UserActionsByFunnel(this, timeNow);
            UserAction.UserActionsByDay(this, timeNow);            
            if (t <= day - 1)
            {
                t = day - 1;
                if (y) y = false;
                t = day;
                RNDTank = 0;
                hiredTanks = 0;
                Flags = Util.RemType(Flags, (int)Flag.QuestDropped);
                Flags = Util.RemType(Flags, (int)Flag.HireUnit);
                synPVP = 0;
                marketBuyAttempts = 0;
                EventFuelRestoreAttempt = 0;
                SocialService ss = new SocialService();
                if (rg != 1)
                {
                    ss.SetLastExp(this);
                    if (d < Define.GiftPeriod)
                        d++;
                    else if (d == Define.GiftPeriod)
                        d = 1;
                    //UserAction.UserActionsByTime(this, timeNow);                    
                }
                UserAction.Clear(this.id, timeNow);                   
                ScanAttempt = 0;
                Util.RemType(Flags, (int)Flag.RewardClaimed);
                MessageShowAndSaving(timeNow);
                t = 0;
                SendDailyRewards(timeNow);
            }
            else if (y)
            {
                y = false;
                MessageShowAndSaving(timeNow);
            }
            else
            {
                MessageShowAndSaving(timeNow);
            }
            return res;
        }

        public void SendDailyRewards(double timeNow)
        {            
            var mailService = new MailService();
            var itemService = new ItemService();            
            var rewardData = new List<Bonus>() { new Bonus() { type = 7, num = 1, item = Define.DailyRewards[Tier], id = 0 } }; 
            mailService.RewardNotification(this.id, timeNow, "dailyReward.mailTopic", "dailyReward.mailMsg", Util.ToJson(rewardData));            
        }

        private void MessageShowAndSaving(double timeNow)
        {
            bool flag = false;
            if (Util.IsValidType(Flags, (int)Flag.MessageShow))
            {
                flag = true;
                Flags = Util.RemType(Flags, (int)Flag.MessageShow);
            }
            double prevLogin = lastLogin;
            lastLogin = timeNow;
            gameTime = Util.GetMs();
            Saving(true);
            y = y2;
            lastLogin = prevLogin;
            if (flag) Flags = Util.AddType(Flags, (int)Flag.MessageShow);
        }

        public int[] AddBonus(int type, Int32 num, Int32 item, string reason = "", int GoldItemId = 0, bool limit = true)
        {
            int[] adds = { 0, 0, 0, 0 };
            if (type == (int)BonusType.Money)
            {
                if (limit) AddMoney(num);
                else adds[2] += AddMoneyWithoutLimits(num);
            }
            else if (type == (int)BonusType.Gold)
            {
                new Gold(this, reason, GoldItemId, num, 1);
                Gold += num;
            }
            else if (type == (int)BonusType.Crew)
            {/*
                FriendShop fs = new FriendShop();
                Friend fr = fs.New(id, false);
                adds[0] = fr.i;
                adds[1] = fr.x;
                fr.x = 0;*/
            }
            else if (type == (int)BonusType.Experience)
            {
                Experience += num;
            }
            else if (type == (int)BonusType.Details)
            {
                if (limit) AddDetails(num);
                else adds[3] += AddDetailsWithoutLimits(num);
            }
            else if (type == (int)BonusType.Item)
            {
                adds[0] = ItemService.AddItem(id, item, num);
                adds[1] = item;
            }

            return adds;
        }

        public Bonus AddBonus(Bonus bonus, string reason)
        {
            switch ((BonusType)bonus.type)
            {
                case BonusType.Money:
                    AddMoney(bonus.num);
                    return bonus.Clone();
                case BonusType.Gold:
                    new Gold(this, reason, 0, bonus.num);
                    Gold += bonus.num;
                    return bonus.Clone();
                case BonusType.Item:
                    {
                        var clone = bonus.Clone();
                        clone.id = ItemService.AddItem(id, bonus.item, bonus.num);
                        return clone;
                    }
                case BonusType.Details:
                    AddDetails(bonus.num);
                    return bonus.Clone();
                case BonusType.Experience:
                    Experience += bonus.num;
                    return bonus.Clone();
                case BonusType.Tank:
                    {
                        var clone = bonus.Clone();
                        var defaultUnit = new DefaultUnit(bonus.item);
                        if (defaultUnit.Id > 0)
                        {
                            var defaultShell = ShellShop.GetFirstShell(defaultUnit.z, defaultUnit.sz, defaultUnit.t);
                            var tank = new UserUnit(id, defaultUnit.Id, defaultUnit.MaxHp, defaultUnit.AmmoSize, defaultShell, 0, defaultUnit.Power);
                            clone.userUnit = tank;
                        }
                        return clone;
                    }
                case BonusType.Crew:
                    {
                        var clone = bonus.Clone();
                        var userCrew = new UserCrew(bonus.item, id);
                        if (userCrew.id > 0)
                        {
                            clone.userCrew = userCrew;
                        }
                        return clone;
                    }
            }
            return null;
        }

        public Error CanAddBonus(Bonus bonus, double time)
        {
            switch ((BonusType)bonus.type)
            {
                case BonusType.Tank:
                    if (Slots <= GetUserUnitNum())
                        return Error.HANGAR_NO_SLOT;
                    break;
                case BonusType.Crew:
                    var hqCrewBuildingConfig = new Building(1, BuildingType.HQCrews);
                    int capacity = hqCrewBuildingConfig.storageSize;

                    var officerSchoolBuilding = new UserBuilding(this, BuildingType.OfficerSchool);
                    if (officerSchoolBuilding.id > 0)
                    {
                        var building = new Building(officerSchoolBuilding.GetLevel(time), officerSchoolBuilding.type);
                        capacity += building.storageSize;
                    }

                    if (UserCrew.GetUserCrewsCount(this) >= capacity)
                    {
                        return Error.NOT_ENOUGH_OFFICER_SCHOOL_CAPACITY;
                    }
                    break;

            }
            return Error.OK;
        }

        public int AddMoney(int toAdd)
        {
            int max = (int)Math.Min(toAdd, Math.Max(0, (this.LimitMoney - this.Money)));
            this.Money += max;
            return toAdd - max;
        }

        public int AddDetails(int toAdd)
        {
            int max = (int)Math.Min(toAdd, Math.Max(0, (this.LimitDetails - this.ProductionPoints)));
            this.ProductionPoints += max;
            return toAdd - max;
        }

        public void AddGoldWithoutLimits(int toAdd)
        {
            this.Gold += toAdd;
        }

        public int AddMoneyWithoutLimits(int toAdd)
        {
            int max = (int)Math.Min(toAdd, Math.Max(0, (this.LimitMoney - this.Money)));
            this.Money += toAdd;
            return toAdd - max;
        }

        public int AddDetailsWithoutLimits(int toAdd)
        {
            int max = (int)Math.Min(toAdd, Math.Max(0, (this.LimitDetails - this.ProductionPoints)));
            this.ProductionPoints += toAdd;
            return toAdd - max;
        }

        public void SpendMoney(int toSpend)
        {
            this.Money -= toSpend;
        }

        public void SpendDetails(int toSpend)
        {
            this.ProductionPoints -= toSpend;
        }

        public int GetMoney()
        {
            return (int)this.Money;
        }

        public void SetMoney(int money)
        {
            this.Money = money;
        }

        public int GetDetails()
        {
            return (int)this.ProductionPoints;
        }

        public void SetDetails(int details)
        {
            this.ProductionPoints = details;
        }

        public int AddGood(Shop shop, int gold, int num)
        {
            int res = 0;
            if (shop.type == ShopType.Money)
            {
                this.AddMoney(num);
                new Gold(this, "BuyMoney", shop.id, -gold, 1);
            }
            else if (shop.type == ShopType.ProductionPoints)
            {
                this.AddDetails(num);
                new Gold(this, "BuyParts", shop.id, -gold, 1);
            }
            Gold -= gold;
            Saving();
            return res;
        }


        public Int32 GetUserUnitNum()  //
        {
            var db = new TanksDBDataContext();
            IQueryable<UserUnits> custs = from c in db.UserUnits
                                          where c.u == id && c.sharingClanUnit >= 0
                                          select c;
            return custs.Count();
        }

        public void SetLevel(double timeNow)
        {
            var lll = new Level(UserLevel + 1);
            while (Experience >= lll.e)
            {
                UserLevel++;
                if (lll.g > 0) new Gold(this, "Level", lll.l, lll.g);
                Gold += lll.g;
                AddMoney((int)lll.m);
                if (lll.e == -1)
                    break;

                UserAction.UserActionsByLevel(this, lll.l, timeNow);
                lll = new Level(UserLevel + 1);
            }

            /*
            for (int i = 0; i < Define.UserTierLevels.Length; i++)
            {
                if (Define.UserTierLevels[i] <= UserLevel) Tier = i + 1;
            }*/
            Saving();

            //
            var todoService = new TodoService();
            todoService.ProcessTodoStep(this, TodoService.TodoStepType.LevelUp);
        }

        public int GetLimitFuel()
        {
            return GetVIPData()[(int)VIPdata.FuelBonus] + LimitFuel;
        }

        public int GetLimitEventFuel()
        {
            return LimitEventFuel;
        }

        public int GetUserVIP()
        {
            for (int i = Define.VIPs.Length - 1; i >= 0; i--)
            {
                if (this.VIPgold >= (double)Define.VIPs[i][(int)VIPdata.PurchasedGold]) return Define.VIPs[i][(int)VIPdata.Level];
            }
            return 1;
        }

        public double GetVIPSubscribtionBonus(VIPdata vip, double count, double timeNow)
        {
            if ((vip != VIPdata.SubscriptionBonus && vip != VIPdata.SubscriptionDropBonus) || this.VIPsubscription < timeNow) return 0;
            return Math.Ceiling(count * (double)GetVIPData()[(int)vip] / 100);
        }

        public bool CanSetOffer(string name)
        {         
            Flag flag = Flag.None;            
            if (!UserAction.mapActionName2Flag.TryGetValue(name, out flag)) return false;
            if (flag == Flag.DSC_Tank2Tier) return true;
            if (flag == Flag.DSC_BeginnerPack) return true;
            if (flag == Flag.DSC_VeteranPack) return true;
            if (flag == Flag.DSC_ElitePack) return true;
            if (Util.IsValidType(Flags, (int)Flag.DSC_Tank2Tier))
            {
                if (Util.IsValidType(Flags, (int)Flag.DSC_BeginnerPack))
                {
                    if (Util.IsValidType(Flags, (int)Flag.DSC_ComponentsPack))
                    {
                        //VIP Ends
                    }
                    if (flag == Flag.DSC_ComponentsPack) return true;
                }
                else
                {
                    if (Util.IsValidType(Flags, (int)Flag.DSC_CrewPack))
                    {
                        if (Util.IsValidType(Flags, (int)Flag.DSC_BooksPack))
                        {
                            //VIP Ends
                        }
                        if (flag == Flag.DSC_BooksPack) return true;
                    }
                    if (flag == Flag.DSC_CrewPack) return true;
                }
            }
            else
            {
                if (!Util.IsValidType(Flags, (int)Flag.DSC_BeginnerPack))
                {
                    if (!Util.IsValidType(Flags, (int)Flag.DSC_Gold25))
                    {
                        if (!Util.IsValidType(Flags, (int)Flag.DSC_Gold50))
                        {
                            //NOPAYER
                        }
                        if (flag == Flag.DSC_Gold50) return true;
                    }
                    if (flag == Flag.DSC_Gold25) return true;
                }
            }           
            return false;
        }


        //============ Updaters

        public void Saving(bool withFlags = false)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Users> custs = from c in db.Users
                                      where c.id == id
                                      select c;

            foreach (Users c in custs)
            {
                c.BundleId = BundleId;
                c.Rating = Rating;
                c.UserLevel = UserLevel;
                c.Gold = Gold;
                c.Money = Money;
                c.Locale = Locale;
                if (withFlags) c.d = d;
                if (withFlags) c.t = t;
                c.Experience = Experience;
                c.Victories = Victories;
                c.Defeats = Defeats;
                c.al = al;
                c.Slots = Slots;
                c.Flags = Flags;
                if (withFlags) c.y = y;
                c.MissionID = MissionID;
                c.Draws = Draws;
                c.FBLink = FBLink;
                c.TWLink = TWLink;
                c.Name = Name;
                c.SocialID = SocialID;
                c.Device = Device;
                c.TestGroup = TestGroup;
                c.PowerSlots = PowerSlots;
                c.clan_id = clan_id;
                c.clan_position = clan_position;
                c.ProductionPoints = ProductionPoints;
                c.Tier = Tier;
                c.PushToken = PushToken;
                c.BanEndTime = BanEndTime;
                c.zones1 = zones1;
                c.zones2 = hiredTanks;
                c.LimitDetails = LimitDetails;
                c.LimitFuel = LimitFuel;
                c.LimitEventFuel = LimitEventFuel;
                c.LimitMoney = LimitMoney;
                c.RNDTank = RNDTank;
                c.RegisterTime = RegisterTime;
                c.upgradeTime = upgradeTime;
                c.ScanAttempt = ScanAttempt;
                c.lastLogin = lastLogin;
                c.blindBuyAttempts = blindBuyAttempts;
                c.synPVP = synPVP;
                c.ScanTime = scanTime;
                c.battleSquad = battleSquad;
                c.battlesScan = battlesScan;
                c.battlesLastScan = battlesLastScan;
                c.battlesCount = battlesCount;
                c.battleTime = battleTime;
                c.battlesLastTime = battlesLastTime;
                c.battleDailyRewardTime = battleDailyRewardTime;
                c.battleBestLvlReward = battleBestLvlReward;
                c.battleBestReward = battleBestReward;
                c.marketTime = marketTime;
                c.tutorialState = tutorialState;
                c.marketBuyAttempts = marketBuyAttempts;
                c.todoState = todoState;
                c.todoReward = todoReward;
                c.clanSkill1 = clanSkill1;
                c.clanSkill2 = clanSkill2;
                c.clanSkill3 = clanSkill3;
                c.clanSkill4 = clanSkill4;
                c.clanSkill5 = clanSkill5;
                c.clanSkill6 = clanSkill6;
                c.clanSkill7 = clanSkill7;
                c.gameTime = gameTime;
                c.dailyRewardTime = dailyRewardTime;
                c.dailyRewardIndex = dailyRewardIndex;
                c.eventReputation = eventReputation;
                c.VIPgold = VIPgold;
                c.VIPsubscription = VIPsubscription;
                c.EventFuelRestoreAttempt = EventFuelRestoreAttempt;
                c.eventReward = eventReward ?? String.Empty;
            }

            try
            {
                db.SubmitChanges();
            }
            catch (ChangeConflictException)
            {
                db.ChangeConflicts.ResolveAll(RefreshMode.KeepChanges);
                {
                    db.SubmitChanges();
                    //if exception, conflict repeated
                }
            }
            UserService.DropUserProfileFromCache(id);
        }

        public void Disappear()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Users> custs = from c in db.Users
                                      where c.id == id
                                      select c;

            foreach (Users c in custs)
            {
                IQueryable<UserUnits> units = from u in db.UserUnits
                                              where u.u == id
                                              select u;
                foreach (UserUnits u in units)
                {
                    db.UserUnits.DeleteOnSubmit(u);
                }
                
                IQueryable<UserShells> shells = from s in db.UserShells
                                                where s.u == id
                                                select s;
                foreach (UserShells s in shells)
                {
                    db.UserShells.DeleteOnSubmit(s);
                }
                IQueryable<UserWounds> wounds = from w in db.UserWounds
                                                where w.userId == id
                                                select w;
                foreach (UserWounds w in wounds)
                {
                    db.UserWounds.DeleteOnSubmit(w);
                }
                
                IQueryable<UserCampaigns> campaigns = from uc in db.UserCampaigns
                                                      where uc.userID == id
                                                      select uc;
                foreach (UserCampaigns f in campaigns)
                {
                    db.UserCampaigns.DeleteOnSubmit(f);
                }
                IQueryable<UserActions> actions = from ua in db.UserActions
                                                  where ua.userId == id
                                                  select ua;
                foreach (UserActions f in actions)
                {
                    db.UserActions.DeleteOnSubmit(f);
                }
                
                IQueryable<UserBuildings> buildings = from uz in db.UserBuildings
                                                      where uz.userId == id
                                                      select uz;
                foreach (UserBuildings f in buildings)
                {
                    db.UserBuildings.DeleteOnSubmit(f);
                }

                IQueryable<UserNewMissions> newMissions = from unm in db.UserNewMissions
                                                          where unm.userId == id
                                                          select unm;
                foreach (UserNewMissions f in newMissions)
                {
                    db.UserNewMissions.DeleteOnSubmit(f);
                }

                IQueryable<UserZones> userZones = from uzs in db.UserZones
                                                  where uzs.userId == id
                                                  select uzs;
                foreach (UserZones f in userZones)
                {
                    db.UserZones.DeleteOnSubmit(f);
                }

                IQueryable<UserItems> userItems = from uzs in db.UserItems
                                                  where uzs.userId == id
                                                  select uzs;
                foreach (UserItems f in userItems)
                {
                    db.UserItems.DeleteOnSubmit(f);
                }

                IQueryable<UserFriendsRewards> userFr = from uzf in db.UserFriendsRewards
                                                        where uzf.userId == id
                                                        select uzf;
                foreach (UserFriendsRewards f in userFr)
                {
                    db.UserFriendsRewards.DeleteOnSubmit(f);
                }

                //
                var userBattles = from usb in db.UserBattles where usb.userId == id select usb;
                foreach (var ub in userBattles)
                {
                    db.UserBattles.DeleteOnSubmit(ub);
                }

                var userMissionEvents = from usb in db.UserMissionEvents where usb.userId == id select usb;
                foreach (var ub in userMissionEvents)
                {
                    db.UserMissionEvents.DeleteOnSubmit(ub);
                }

                IQueryable<UserResearches> userRr = from uzr in db.UserResearches
                                                        where uzr.userId == id
                                                        select uzr;
                foreach (var f in userRr)
                {
                    db.UserResearches.DeleteOnSubmit(f);
                }

                db.Users.DeleteOnSubmit(c);
            }
            db.SubmitChanges();
        }

        public void Password()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Users> custs = from c in db.Users
                                      where c.id == id
                                      select c;

            foreach (Users c in custs)
            {
                c.AuthKey = AuthKey;
            }
            db.SubmitChanges();
        }

        //============ Constructors

        public User()
        {

        }

        public User(Users users)
        {
            LoadFromUsers(users);
        }

        public User(Int32 uid)
        {
            if (uid > 0)
            {
                TanksDBDataContext db = new TanksDBDataContext();
                IQueryable<Users> custs = from c in db.Users
                                          where c.id == uid
                                          select c;

                foreach (Users c in custs)
                {
                    LoadFromUsers(c);
                }
            }
            else
            {
                id = uid;
                Name = "";
                BundleId = "";
                Photo = "";
                AuthKey = "";
                SocialID = "";
                Rating = 0;
                UserLevel = 1;
                Gold = 0;
                Money = 0;
                Locale = "EN";
                d = 0;
                t = 0;
                Experience = 0;
                Victories = 0;
                Defeats = 0;
                al = 0;
                Slots = 4;
                Flags = 0;
                y = false;
                MissionID = 0;
                TWLink = "";
                FBLink = "";
                Draws = 0;
                Device = "";
                TestGroup = 0;
                PowerSlots = 1;
                clan_id = 0;
                clan_position = 0;
                Tier = 1;
                ProductionPoints = 0;
                PushToken = "";
                BanEndTime = 0;
                zones1 = 1;
                hiredTanks = 0;
                LimitMoney = 1000;
                LimitFuel = 25;
                LimitEventFuel = 25;
                LimitDetails = 1000;
                upgradeTime = 0;
                ScanAttempt = 0;
                lastLogin = 0;
                blindBuyAttempts = "";
                synPVP = 0;
                scanTime = 0;
                RegisterTime = 0;
                RNDTank = 1;
                battleSquad = string.Empty;
                battlesScan = 0;
                battlesLastScan = 0;
                battlesCount = 0;
                battleTime = 0;
                battlesLastTime = 0;
                battleDailyRewardTime = 0;
                battleBestLvlReward = 0;
                battleBestReward = 0;
                tutorialState = string.Empty;
                todoState = string.Empty;
                todoReward = string.Empty;
                clanSkill1 = 0;
                clanSkill2 = 0;
                clanSkill3 = 0;
                clanSkill4 = 0;
                clanSkill5 = 0;
                clanSkill6 = 0;
                clanSkill7 = 0;
                gameTime = Util.GetMs();
                dailyRewardTime = 0;
                dailyRewardIndex = 0;
                eventReputation = 0;
                VIPsubscription = 0;
                VIPgold = 0;
                eventReward = string.Empty;
            }
        }

        public User(string soc)
        {
            var db = new TanksDBDataContext();
            var custs = Query.GetUserBySoc(db, soc);
            var users = Enumerable.FirstOrDefault(custs);
            if (users != null) LoadFromUsers(users);
        }

        public User(string soc, string auth)
        {
            var db = new TanksDBDataContext();
            var custs = Query.GetUserBySocAndAuth(db, soc, auth);
            var users = Enumerable.FirstOrDefault(custs);
            if (users != null) LoadFromUsers(users);
        }

        public bool IsZoneOpened(int zone)
        {
            if (zone <= 30 && zone > 0) return Util.IsValidType(this.zones1, zone);            
            else return false;
        }

        public void OpenZone(int zone, bool saving = false)
        {
            if (zone <= 30 && zone > 0) this.zones1 = Util.AddType(this.zones1, zone);            
            if (saving) Saving();
        }

        public void LoadFromUsers(Users c)
        {
            id = c.id;
            Name = c.Name;
            BundleId = c.BundleId;
            Photo = c.Photo;
            AuthKey = c.AuthKey;
            SocialID = c.SocialID;
            Rating = c.Rating;
            UserLevel = c.UserLevel;
            Gold = c.Gold;
            Money = c.Money;
            Locale = c.Locale;
            d = c.d;
            t = c.t;
            Experience = c.Experience;
            Victories = c.Victories;
            Defeats = c.Defeats;
            al = c.al;
            Slots = c.Slots;
            Flags = c.Flags;
            y = c.y;
            MissionID = c.MissionID;
            TWLink = c.TWLink;
            FBLink = c.FBLink;
            Draws = c.Draws;
            Device = c.Device;
            TestGroup = c.TestGroup;
            PowerSlots = c.PowerSlots;
            clan_id = c.clan_id;
            clan_position = c.clan_position;
            Tier = c.Tier;
            ProductionPoints = c.ProductionPoints;
            PushToken = c.PushToken;
            BanEndTime = c.BanEndTime;
            zones1 = c.zones1;
            hiredTanks = c.zones2;
            LimitDetails = c.LimitDetails;
            LimitEventFuel = c.LimitEventFuel;
            LimitFuel = c.LimitFuel;
            LimitMoney = c.LimitMoney;
            upgradeTime = c.upgradeTime;
            ScanAttempt = c.ScanAttempt;
            lastLogin = c.lastLogin;
            blindBuyAttempts = c.blindBuyAttempts;
            synPVP = c.synPVP;
            scanTime = c.ScanTime;
            RegisterTime = c.RegisterTime;
            RNDTank = c.RNDTank;
            battleSquad = c.battleSquad;
            battlesScan = c.battlesScan;
            battlesLastScan = c.battlesLastScan;
            battlesCount = c.battlesCount;
            battleTime = c.battleTime;
            battlesLastTime = c.battlesLastTime;
            battleDailyRewardTime = c.battleDailyRewardTime;
            battleBestLvlReward = c.battleBestLvlReward;
            battleBestReward = c.battleBestReward;
            marketTime = c.marketTime;
            marketBuyAttempts = c.marketBuyAttempts;
            tutorialState = c.tutorialState;
            todoState = c.todoState;
            todoReward = c.todoReward;
            clanSkill1 = c.clanSkill1;
            clanSkill2 = c.clanSkill2;
            clanSkill3 = c.clanSkill3;
            clanSkill4 = c.clanSkill4;
            clanSkill5 = c.clanSkill5;
            clanSkill6 = c.clanSkill6;
            clanSkill7 = c.clanSkill7;
            gameTime = c.gameTime;
            dailyRewardTime = c.dailyRewardTime;
            dailyRewardIndex = c.dailyRewardIndex;
            eventReputation = c.eventReputation;
            VIPgold = c.VIPgold;
            VIPsubscription = c.VIPsubscription;
            EventFuelRestoreAttempt = c.EventFuelRestoreAttempt;
            eventReward = c.eventReward;
        }

        public User(String fb, String tw, int type)
        {
            var db = new TanksDBDataContext();
            var custs = from c in db.Users
                        where (type == 1 && c.FBLink == fb && !string.IsNullOrEmpty(fb)) || (type == 2 && c.TWLink == tw && !string.IsNullOrEmpty(tw))
                        select c;

            foreach (Users c in custs)
            {
                LoadFromUsers(c);
            }
        }

        public User(double timeNow, String name, String sname, String soc, String auth, String photo, String locale, String device, String fb = "", String tw = "")
        {
            var db = new TanksDBDataContext();
            var custs = from c in db.Users
                        where c.SocialID == soc || c.FBLink == fb && !string.IsNullOrEmpty(fb) || c.TWLink == tw && !string.IsNullOrEmpty(tw)
                        select c;

            if (!custs.Any())
            {
                var b = new Building(1, BuildingType.HeadQuarters);
                LimitFuel = b.storageSize;
                b = new Building(0, BuildingType.EventTower);
                LimitEventFuel = b.storageSize;
                b = new Building(1, BuildingType.HQMoney);
                LimitMoney = b.storageSize;
                b = new Building(1, BuildingType.HQDetails);
                LimitDetails = b.storageSize;
                b = new Building(1, BuildingType.HQHangar);
                Slots = b.storageSize;
                var ord = new Users
                {
                    Name = name,
                    BundleId = sname,
                    Photo = photo,
                    AuthKey = auth,
                    SocialID = soc,
                    Rating = 0,
                    UserLevel = 1,
                    Gold = Define.InitGold,
                    Money = Define.InitMoney,
                    Locale = locale,
                    t = 0,
                    d = 0,
                    Experience = 0,
                    Victories = 0,
                    Defeats = 0,
                    al = 0,
                    Slots = Slots,
                    Flags = Util.AddType(Util.AddType(Util.AddType(0, (int)Flag.PushEvent), (int)Flag.PushMarket), (int)Flag.PushShop),
                    y = false,
                    MissionID = 0,
                    TWLink = tw,
                    FBLink = fb,
                    Draws = 0,
                    Device = device,
                    TestGroup = 0,
                    PowerSlots = 1,
                    clan_id = 0,
                    clan_position = 0,
                    RegisterTime = timeNow,
                    Tier = 1,
                    ProductionPoints = (int)Define.InitParts,
                    PushToken = "",
                    BanEndTime = 0,
                    zones1 = 1,
                    zones2 = 0,
                    LimitDetails = LimitDetails,
                    LimitFuel = LimitFuel,
                    LimitEventFuel = LimitEventFuel,
                    LimitMoney = LimitMoney,
                    RNDTank = 1,
                    upgradeTime = 0,
                    ScanAttempt = 0,
                    lastLogin = 0,
                    blindBuyAttempts = "",
                    synPVP = 0,
                    battleSquad = string.Empty,
                    battlesScan = 0,
                    battlesLastScan = 0,
                    battlesCount = 0,
                    battleTime = 0,
                    battlesLastTime = 0,
                    battleDailyRewardTime = 0,
                    battleBestLvlReward = 0,
                    battleBestReward = 0,
                    tutorialState = string.Empty,
                    todoState = string.Empty,
                    todoReward = string.Empty,
                    clanSkill1 = 0,
                    clanSkill2 = 0,
                    clanSkill3 = 0,
                    clanSkill4 = 0,
                    clanSkill5 = 0,
                    clanSkill6 = 0,
                    clanSkill7 = 0,
                    gameTime = Util.GetMs(),
                    dailyRewardTime = 0,
                    dailyRewardIndex = 0,
                    eventReputation = 0,
                    VIPgold = 0,
                    VIPsubscription = 0,
                    eventReward = string.Empty
                };
                db.Users.InsertOnSubmit(ord);
                db.SubmitChanges();

                //
                LoadFromUsers(ord);
                rg = 1;

                // Base car and crew
                var defenceList = new List<int>();
                foreach (int i in Define.InitTank)
                {
                    defenceList.Add(UserUnit.CreateUserUnit(i, true, this, 1, 55, 0)[0]);
                }
                /*
                Quests[] arr = Quest.GetRandomToAllSlots(1);
                foreach (Quests q in arr)
                {
                    var uq = new UserQuest(q.id, true, q, id, false);
                }
                */
                List<Action> aa = Action.GetLevelActions(1);
                foreach (Action a in aa)
                {
                    UserAction aaa = new UserAction(this.id, a, timeNow + a.startTrigger);
                }

                return;
            }

            foreach (Users c in custs)
            {
                if (c.SocialID.IndexOf("@") == -1 || c.AuthKey == auth)
                {
                    bool updtd = false;
                    if (c.Name != name)
                    {
                        c.Name = name;
                        updtd = true;
                    }
                    if (c.BundleId != sname)
                    {
                        c.BundleId = sname;
                        updtd = true;
                    }
                    if (c.AuthKey != auth)
                    {
                        c.AuthKey = auth;
                        updtd = true;
                    }
                    if (c.Photo != photo)
                    {
                        c.Photo = photo;
                        updtd = true;
                    }
                    if (c.Locale != locale)
                    {
                        c.Locale = locale;
                        updtd = true;
                    }
                    if (c.FBLink != fb && !string.IsNullOrEmpty(fb))
                    {
                        c.FBLink = fb;
                        updtd = true;
                    }
                    if (c.TWLink != tw && !string.IsNullOrEmpty(tw))
                    {
                        c.TWLink = tw;
                        updtd = true;
                    }
                    if (c.Device != device && !string.IsNullOrEmpty(device))
                    {
                        c.Device = device;
                        updtd = true;
                    }
                    if (updtd)
                    {
                        db.SubmitChanges();
                    }

                    LoadFromUsers(c);
                }
            }
        }

        public static void SetUserLimits(User user, List<UserBuildings> list, double timeNow)
        {
            double newUserUpgradeTime = 0;
            double nextUpgradeTime = 0;
            double currentUpgradeTime = user.upgradeTime;
            int limitMoney, limitFuel, limitDetails, slots, limitEventFuel;
            limitMoney = limitDetails = slots = limitFuel = limitEventFuel = 0;
            List<Buildings> bb = Building.GetBuildingsFromCache();
            bool upgrading = true;
            bool userChanged = false;
            UserBuilding HQb = null;
            foreach (UserBuildings ub0 in list)
            {
                if (ub0.type == (int)BuildingType.HeadQuarters) HQb = new UserBuilding(ub0);
            }
            if (HQb == null) return;
            Buildings HQmoney = null;
            Buildings HQdetails = null;
            Buildings HQhangar = null;

            foreach (Buildings b0 in bb)
            {
                if (b0.typeEnum == (int)BuildingType.HQMoney && b0.bLevel == HQb.GetLevel(timeNow)) HQmoney = b0;
                if (b0.typeEnum == (int)BuildingType.HQDetails && b0.bLevel == HQb.GetLevel(timeNow)) HQdetails = b0;
                if (b0.typeEnum == (int)BuildingType.HQHangar && HQb.GetLevel(timeNow) >= 1) HQhangar = b0;
            }
            if (HQmoney == null || HQdetails == null || HQhangar == null) return;

            while (upgrading)
            {
                nextUpgradeTime = 0;
                limitMoney = limitDetails = slots = limitFuel = 0;

                foreach (Buildings b in bb)
                {
                    foreach (UserBuildings ub in list)
                    {
                        UserBuilding uz = new UserBuilding(ub);
                        if (b.typeEnum == ub.type && b.bLevel == uz.GetLevel(timeNow))
                        {
                            if (uz.time > timeNow)
                            {
                                if (newUserUpgradeTime == 0) newUserUpgradeTime = uz.time;
                                else newUserUpgradeTime = Math.Min(newUserUpgradeTime, uz.time);
                            }
                            if (uz.time > currentUpgradeTime && uz.time <= timeNow && currentUpgradeTime > 0)
                            {
                                if (nextUpgradeTime == 0) nextUpgradeTime = uz.time;
                                else nextUpgradeTime = Math.Min(nextUpgradeTime, uz.time);
                            }
                            if (currentUpgradeTime == uz.time && uz.time <= timeNow && user.rg == 0)
                            {
                                user.buildingsConstructed.Add(uz.id);
                            }
                            if (currentUpgradeTime == uz.time && uz.time <= timeNow && (uz.type == BuildingType.HeadQuarters || uz.type == BuildingType.EventTower || uz.type == BuildingType.Factory || uz.type == BuildingType.Market))
                            {
                                uz.SetCollectTime(timeNow, user);
                                ub.collectTime = uz.collectTime;
                            }
                            if (uz.GetLevel(timeNow) > 0 && uz.type == BuildingType.StorageMoney) limitMoney += b.storageSize;
                            if (uz.GetLevel(timeNow) > 0 && uz.type == BuildingType.StorageDetails) limitDetails += b.storageSize;
                            if (uz.GetLevel(timeNow) > 0 && (uz.type == BuildingType.HeadQuarters || uz.type == BuildingType.StorageFuel)) limitFuel += b.storageSize;
                            if (uz.type == BuildingType.EventTower) limitEventFuel += b.storageSize;
                            if (uz.GetLevel(timeNow) > 0 && uz.type == BuildingType.Hangar) slots += b.storageSize;
                            if (uz.GetLevel(timeNow) > 0 && uz.type == BuildingType.HeadQuarters)
                            {
                                limitMoney += HQmoney.storageSize;
                                limitDetails += HQdetails.storageSize;
                                slots += HQhangar.storageSize;
                            }
                        }
                    }
                }
                if (nextUpgradeTime == 0) upgrading = false;
                else currentUpgradeTime = nextUpgradeTime;
            }

            if (user.LimitMoney != limitMoney || user.LimitFuel != limitFuel ||
                    user.LimitDetails != limitDetails || user.Slots != slots || user.LimitEventFuel != limitEventFuel)
            {
                user.LimitMoney = limitMoney;
                user.LimitFuel = limitFuel;
                user.LimitDetails = limitDetails;
                user.LimitEventFuel = limitEventFuel;
                user.Slots = slots;
                userChanged = true;
            }
            if (user.upgradeTime != newUserUpgradeTime)
            {
                user.upgradeTime = newUserUpgradeTime;
                userChanged = true;
            };
            if (userChanged) user.Saving();
        }

        public void AddLimitTask(double t, double timeNow)
        {
            if ((this.upgradeTime == 0 || this.upgradeTime > t) && t >= timeNow)
            {
                this.upgradeTime = t;
                Saving();
            }
        }

        public void RemoveLimitTask(double timeNow, List<UserBuildings> ubuildings = null)
        {
            if (this.upgradeTime > 0 && this.upgradeTime <= timeNow)
            {
                if (ubuildings == null)
                {
                    var db = new TanksDBDataContext();
                    ubuildings = Query.ListUserBuildings.Invoke(db, this.id).ToList();
                }
                User.SetUserLimits(this, ubuildings, timeNow);
            }
        }

        public List<DefaultUnit> GetSquad()
        {
            var db = new TanksDBDataContext();
            var list = new List<DefaultUnit>();
            var custs = Query.GetUserTanks(db, this.id);
            foreach (var unit in custs)
            {
                list.Add(new DefaultUnit(unit));
            }
            return list;
        }

        public List<int> GetClanSkills()
        {
            return new List<int> { clanSkill1, clanSkill2, clanSkill3, clanSkill4, clanSkill5, clanSkill6, clanSkill7 };
        }

        public int GetSkillLevel(Clan.Skills skill)
        {
            switch (skill)
            {
                case Clan.Skills.CurrentMaterialsCars:
                    return clanSkill1;
                case Clan.Skills.CurrentMaterialsMiddle:
                    return clanSkill2;
                case Clan.Skills.CurrentMaterialsHeavy:
                    return clanSkill3;
                case Clan.Skills.RechargeCarsLight:
                    return clanSkill4;
                case Clan.Skills.RechargeOthers:
                    return clanSkill5;
                case Clan.Skills.SensorSystems:
                    return clanSkill6;
                case Clan.Skills.CurrentSuspension:
                    return clanSkill7;
                default:
                    return 0;
            }
        }

        public void SetSkill(Clan.Skills skill, int value)
        {
            switch (skill)
            {
                case Clan.Skills.CurrentMaterialsCars:
                    clanSkill1 = value;
                    break;
                case Clan.Skills.CurrentMaterialsMiddle:
                    clanSkill2 = value;
                    break;
                case Clan.Skills.CurrentMaterialsHeavy:
                    clanSkill3 = value;
                    break;
                case Clan.Skills.RechargeCarsLight:
                    clanSkill4 = value;
                    break;
                case Clan.Skills.RechargeOthers:
                    clanSkill5 = value;
                    break;
                case Clan.Skills.SensorSystems:
                    clanSkill6 = value;
                    break;
                case Clan.Skills.CurrentSuspension:
                    clanSkill7 = value;
                    break;
            }
        }

        public int[] GetVIPData(int level = 0)
        {
            if (level == 0) level = GetUserVIP();
            int[][] VIP = Define.VIPs;
            for (int i = VIP.Length - 1; i >= 0; i--)
            {
                if (level == VIP[i][(int)VIPdata.Level]) return VIP[i];
            }
            return VIP[0];
        }

        public void CheckUnlimitFuel(double timeNow, int goldPurchased)
        {

            if (CheckVIPLevelUpdate(timeNow, goldPurchased) < 0) return;

            int[] arr = GetVIPData();
            if (arr[(int)VIPdata.FuelBonus] > 700)
            {
                UserBuilding HQ = new UserBuilding(this.id, BuildingType.HeadQuarters);
                HQ.SetFullFuel(timeNow, this);
            }
        }

        public int CheckVIPLevelUpdate(double timeNow, int goldPurchased)
        {
            int[] arr = GetVIPData();
            if (this.VIPgold - goldPurchased < arr[(int)VIPdata.PurchasedGold]) return Math.Min(arr[(int)VIPdata.Level] - 1, 0);
            return -1;
        }

    }


    public class UserProfile : IToJson
    {
        public int id;
        public string name;
        public int level;
        public int clan_position;
        public int rating;
        public Clan clan;
        public int tier;
        public int[] stats;
        public int[] bestTanks;
        public int vip;

        public UserProfile()
        {
        }

        public UserProfile(User user)
        {
            id = user.id;
            tier = user.Tier;
            name = user.Name;
            level = user.UserLevel;
            rating = user.Rating;
            stats = new[] { user.Victories, user.Defeats, user.Draws, 0, 0 };
            vip = user.GetUserVIP();
            FillClanInfo(user.clan_id, user.clan_position);
            var fightService = new FightService();
            var userUnitsTop = fightService.GetUserUnitsTop(user.id, 5);
            var list = new List<int>();
            foreach (var unit in userUnitsTop)
            {
                list.Add(unit.DefaultUnitId);
            }
            if (list.Count == 0) bestTanks = null;
            else bestTanks = list.ToArray();
        }

        public UserProfile(Users user)
        {
            id = user.id;
            tier = user.Tier;
            name = user.Name;
            level = user.UserLevel;
            stats = new[] { user.Victories, user.Defeats, user.Draws, 0, 0 };            
            FillClanInfo(user.clan_id, user.clan_position);
        }

        private void FillClanInfo(int clanId, int position)
        {
            if (clanId < 1) return;
            clan = new ClanService().GetClanWithStatistic(clanId);
            if (clan == null) return;
            clan_position = position;
        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            json.BeginObject();
            json.Name("i").Value(id);
            json.Name("n").Value(name);
            json.Name("l").Value(level);
            json.Name("r").Value(rating);

            json.Name("v").Value(vip);
            if (clan != null)
            {
                json.Name("cp").Value(clan_position);
                json.Name("cl").Value(clan);
            }
            json.Name("s").Value(stats);
            json.Name("bt").Value(bestTanks);
            json.EndObject();
        }


    }
}
