using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace TW
{
    public class UserBuilding
    {
        public int id;
        public int userId;
        public int zone;
        public BuildingType type;
        public int blevel;
        public double time;
        public double collectTime;
        public bool removable;

        //======== special
        const string beginnerPack = "beginnerpack";

        private void Set(UserBuildings z)
        {
            this.id = z.id;
            this.userId = z.userId;
            this.zone = z.zone;
            this.type = (BuildingType)z.type;
            this.blevel = z.blevel;
            this.time = z.time;
            this.removable = z.removable;
            this.collectTime = z.collectTime;
        }

        public void Saving()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserBuildings> custs = from c in db.UserBuildings
                                              where c.id == this.id
                                              select c;
            foreach (UserBuildings z in custs)
            {
                z.type = (int)this.type;
                z.blevel = this.blevel;
                z.time = this.time;
                z.removable = this.removable;
                z.collectTime = this.collectTime;
            }
            db.SubmitChanges();
        }

        public UserBuilding(int id)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserBuildings> custs = from c in db.UserBuildings
                                              where c.id == id
                                              select c;
            foreach (UserBuildings c in custs)
            {
                Set(c);
            }
        }

        public UserBuilding(User user, BuildingType buildingType)
        {
            if (Define.BuildingsLimit[(int)buildingType] != 1) return;
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserBuildings> custs = Query.GetUserBuilding.Invoke(db, user.id, buildingType);
            foreach (UserBuildings c in custs)
            {
                Set(c);
            }
        }

        public UserBuilding(int userId, BuildingType type)
        {
            var db = new TanksDBDataContext();
            var custs = Query.GetUserBuilding.Invoke(db, userId, type);
            foreach (UserBuildings c in custs)
            {
                Set(c);
            }
        }

        public UserBuilding(UserBuildings z)
        {
            Set(z);
        }

        public UserBuilding()
        {
        }

        /*
        public UserBuilding(int userId, int zone, BuildingType type, int blevel, double time) // creating building, do not use
        {
            TanksDBDataContext db = new TanksDBDataContext();
            UserBuildings ord = new UserBuildings { userId = userId, zone = zone, blevel = blevel, type = (int)type, time = time, removable = false };
            db.UserBuildings.InsertOnSubmit(ord);
            db.SubmitChanges();
            Set(ord);
        }
        */

        public static List<int> GetUserNewBuildingsIds(User user, double timeNow, int newZone)  // 
        {
            List<int> ids = new List<int>();
            var db = new TanksDBDataContext();
            UserZone uz = new UserZone(user, newZone, timeNow, true);
            //List<UserZones> listz = Query.GetUserZones(db, user.id).ToList();
            List<UserBuildings> list = Query.ListUserBuildings.Invoke(db, user.id).ToList();
            list = AddBuildings(user, timeNow, list, true);
            foreach (UserBuildings ub in list) ids.Add(ub.id);
            User.SetUserLimits(user, Query.ListUserBuildings.Invoke(db, user.id).ToList(), timeNow);
            return ids;
        }

        public static string GetUserBuildings(User user, double timeNow)  // Добываем статик
        {
            var mapBuildings = new Dictionary<int, int>() { { 1, 0 }, { 6, 1 }, { 20, 2 }, { 7, 3 }, { 11, 4 }, { 9, 5 }, { 2, 6 }, { 3, 7 }, { 12, 8 }, { 21, 9 } };

            var db = new TanksDBDataContext();
            List<UserBuildings> list = Query.ListUserBuildings.Invoke(db, user.id).ToList();
            if (user.y || user.rg > 0)
            {
                list = AddBuildings(user, timeNow, list);
                User.SetUserLimits(user, list, timeNow);
            }
            else user.RemoveLimitTask(timeNow, list);            
            if (list.Count > 10) Util.Log("Building problem at user " + user.id);
            var newList = new List<UserBuildings>(10);
            for (int i = 0; i < 10; i++)
            {
                newList.Add(new UserBuildings());
            }
            foreach (var userBuilding in list)
            {
                newList[mapBuildings[userBuilding.type]] = userBuilding;
            }
            newList.RemoveAll(a => a.blevel == 0);
            return Util.ToJson(newList.ToArray());
        }

        public int GetLevel(double timeNow)
        {
            if (IsUnderConstruction(timeNow)) return this.blevel - 1;
            else return this.blevel;
        }

        public bool IsUnderConstruction(double timeNow)
        {
            double t = timeNow - this.time;
            if (t < 0) return true;
            else return false;
        }

        public static List<UserBuildings> AddBuildings(User user, double timeNow, List<UserBuildings> list, bool onlyNew = false)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            List<List<int>> zones = new List<List<int>>();
            for (int i1 = 0; i1 < Define.Zones.Length; i1++)
            {
                zones.Add(new List<int>());
                for (int i2 = 0; i2 < Define.Zones[i1].Length; i2++)
                {
                    zones[i1].Add(Define.Zones[i1][i2]);
                }
            }

            List<UserBuildings> newlist = new List<UserBuildings>();
            foreach (UserBuildings b in list)
            {
                UserBuildings ub = new UserBuildings
                {
                    id = b.id,
                    userId = b.userId,
                    blevel = b.blevel,
                    collectTime = b.collectTime,
                    removable = b.removable,
                    time = b.time,
                    type = b.type,
                    zone = b.zone
                };
                newlist.Add(ub);
            }

            if (onlyNew) list = new List<UserBuildings>();

            for (int i1 = 0; i1 < zones.Count(); i1++)
            {
                for (int i2 = 0; i2 < zones[i1].Count(); i2++)
                {
                    foreach (UserBuildings b in newlist)
                    {
                        if ((b.type == zones[i1][i2] || (zones[i1][i2] == (int)BuildingType.Ground && b.removable)) && b.zone == i1 + 1)
                        {
                            zones[i1][i2] = 0;
                            b.type = 0;
                            break;
                        }
                    }
                }
            }
            int[] buildingsQuota = new int[Define.BuildingsLimit.Length];
            for (int a = 0; a < Define.BuildingsLimit.Length; a++) buildingsQuota[a] = 0;
            foreach (UserBuildings b in newlist) buildingsQuota[b.type]++;

            for (int i1 = 0; i1 < zones.Count(); i1++)
            {
                if (user.IsZoneOpened(i1 + 1))
                {
                    int[] levels = null;
                    Zone zero = new Zone(-(i1 + 1));
                    levels = zero.buildings;
                    for (int i2 = 0; i2 < zones[i1].Count(); i2++)
                    {
                        if (zones[i1][i2] != (int)BuildingType.None && buildingsQuota[zones[i1][i2]] < Define.BuildingsLimit[zones[i1][i2]])
                        {
                            int blevel = (levels == null || levels.Length < i2 + 1) ? 1 : levels[i2];
                            double time = timeNow;
                            if ((BuildingType)zones[i1][i2] == BuildingType.HeadQuarters) time = 999;
                            if ((BuildingType)zones[i1][i2] == BuildingType.EventTower) time = 777;
                            UserBuildings ord = new UserBuildings { userId = user.id, zone = i1 + 1, blevel = blevel, type = zones[i1][i2], time = time, removable = false, collectTime = time };
                            db.UserBuildings.InsertOnSubmit(ord);
                            db.SubmitChanges();
                            list.Add(ord);
                        }
                    }
                }
            }
            return list;
        }

        public int DoBuilding(User user, BuildingType type, double timeNow, double buildingTime, List<UserBuildings> list)
        {
            if (type == BuildingType.None) return 193;

            // использовалось для выставления акции после постройки первого здания, a.startTime задавалось как недостижимое число при создании
            /*
            List<UserAction> ualist = UserAction.GetByNameChanging(user.id, SystemDefine.BundleId + '.' + beginnerPack, timeNow);
            foreach (UserAction a in ualist)
            {
                if (a.startTime > timeNow + buildingTime)
                {
                    double dur = a.endTime - a.startTime;
                    a.startTime = timeNow + buildingTime;
                    a.endTime = a.startTime + dur;
                    a.Saving();
                }
            }
            */

            if (type != BuildingType.Ground)
            {
                if (this.type == BuildingType.Ground && this.type != type)
                {
                    var db = new TanksDBDataContext();
                    int[] buildingsQuota = new int[Define.BuildingsLimit.Length];
                    for (int a = 0; a < Define.BuildingsLimit.Length; a++) buildingsQuota[a] = 0;
                    foreach (UserBuildings b in list) buildingsQuota[b.type]++;
                    if (buildingsQuota[(int)type] < Define.BuildingsLimit[(int)type])
                    {
                        this.type = type;
                        this.blevel = 1;
                        this.removable = true;
                        this.time = timeNow + buildingTime;
                        this.collectTime = (this.type != BuildingType.HeadQuarters && this.type != BuildingType.EventTower) ? timeNow + buildingTime : 888;
                        this.Saving();
                        user.AddLimitTask(this.time, timeNow);
                        return 99;
                    }
                    else return 198;
                }
                else if (this.type == type)
                {
                    if (this.IsUnderConstruction(timeNow)) return 196;
                    this.blevel++;
                    this.time = timeNow + buildingTime;
                    Building b0 = new Building(this.blevel - 1, this.type);
                    if (this.type != BuildingType.HeadQuarters && this.type != BuildingType.EventTower)
                    {
                        //if (this.zone == 1)
                        //{
                        this.collectTime = Math.Max(this.collectTime, timeNow - b0.storageSize * 1000 * b0.productionInSeconds);
                        //}
                    }
                    else if (this.type == BuildingType.EventTower)
                    {
                        this.collectTime = Math.Max(this.collectTime, timeNow - user.GetLimitEventFuel() * 1000 * b0.productionInSeconds);
                    }
                    else
                    {
                        this.collectTime = Math.Max(this.collectTime, timeNow - user.GetLimitFuel() * 1000 * b0.productionInSeconds);
                        //UserAction.UserActionsByHQlvl(user, this.blevel, timeNow + buildingTime);
                    }
                    this.Saving();
                    user.AddLimitTask(this.time, timeNow);
                    return 99;
                }
                else return 193;
            }
            else
            {
                this.type = BuildingType.Ground;
                this.blevel = 1;
                this.removable = false;
                this.time = timeNow + buildingTime;
                this.Saving();
                user.AddLimitTask(this.time, timeNow);
                return 99;
            }
        }

        public int CancelBuilding(User user, double timeNow)
        {
            Building b = new Building(this.blevel, type);
            if (this.blevel == 1 && this.removable)
            {
                this.type = BuildingType.Ground;
                this.removable = false;
                this.blevel = 1;
            }
            else
            {
                if (this.type == BuildingType.HeadQuarters)
                {
                    List<UserAction> ualist = UserAction.GetByHQLevelChanging(this.userId, this.blevel, timeNow);
                    foreach (UserAction a in ualist)
                    {
                        if (a.startTime == this.time && a.HQLevel == this.blevel)
                        {
                            a.Disappear();
                        }
                    }
                }
                this.blevel--;
            }
            this.time = timeNow;
            user.AddMoney((int)(Math.Floor((double)b.buildingPrice / 2)));
            user.Saving();
            this.Saving();
            return 99;
        }

        public int DoCollectSingle(User user, double timeNow, Building building)
        {
            int res = 0; // first is collected
            this.collectTime = Math.Max(timeNow - building.storageSize * building.productionInSeconds * 1000, this.collectTime);
            switch (type)
            {
                case BuildingType.Factory:
                    {
                        res = (int)Math.Min(this.resoursesCount(timeNow, building), Math.Max(0, user.LimitDetails - user.GetDetails()));
                        user.AddDetails(res);
                        this.SetTime(user, res, building, timeNow);
                    }; break;
                case BuildingType.Market:
                    {
                        res = (int)Math.Min(this.resoursesCount(timeNow, building), Math.Max(0, user.LimitMoney - user.GetMoney()));
                        user.AddMoney(res);
                        this.SetTime(user, res, building, timeNow);
                    }; break;
            }
            user.Saving();
            this.Saving();
            return res;
        }

        public int GetFuel(User user, double timeNow, Building building)
        {
            if (type != BuildingType.HeadQuarters && type != BuildingType.EventTower) return 0;
            this.collectTime = (type == BuildingType.HeadQuarters) ?
                Math.Max(timeNow - user.GetLimitFuel() * building.productionInSeconds * 1000, this.collectTime)
                : Math.Max(timeNow - user.GetLimitEventFuel() * building.productionInSeconds * 1000, this.collectTime);
            int res = resoursesCount(timeNow, building);

            return res;
        }

        public int UseFuel(User user, int barrels, double timeNow, Building building)
        // result >0 => barrels left, fuel used successfully
        // res<0 => barrels need to use fuel
        {
            double tmp = this.collectTime;
            if (type != BuildingType.HeadQuarters && type != BuildingType.EventTower) return 0;
            this.collectTime = (type == BuildingType.HeadQuarters) ?
                Math.Max(timeNow - user.GetLimitFuel() * building.productionInSeconds * 1000, this.collectTime)
                : Math.Max(timeNow - user.GetLimitEventFuel() * building.productionInSeconds * 1000, this.collectTime);
            int res = this.resoursesCount(timeNow, building);
            if (res >= barrels)
            {
                this.SetTime(user, barrels, building, timeNow, false);
            }
            else if(this.collectTime != tmp) this.Saving();
            return res - barrels;
        }

        private void SetTime(User user, int collected, Building building, double timeNow, bool limit = true)
        {
            if (building == null) return;
            if (limit)
            {
                int storage = building.storageSize;
                if (building.typeEnum == BuildingType.HeadQuarters) storage = user.GetLimitFuel();
                if (building.typeEnum == BuildingType.EventTower) storage = (int)user.GetLimitEventFuel();
                this.collectTime = Math.Max(timeNow - storage * building.productionInSeconds * 1000, this.collectTime);
            }
            double t = 1000 * building.productionInSeconds * collected;

            if (!(user.GetVIPData()[(int)VIPdata.FuelBonus] > 700 && building.typeEnum == BuildingType.HeadQuarters && collected > 0)) this.collectTime += t;
            this.Saving();
        }

        public void SetFullFuel(double timeNow, User user)
        {
            if (type != BuildingType.HeadQuarters && type != BuildingType.EventTower) return;
            var b = new Building(this.GetLevel(timeNow), type);
            if (b.id == 0) return;
            var timeToSet = (type == BuildingType.HeadQuarters) ?
                user.GetLimitFuel() * b.productionInSeconds * 1000
                : user.GetLimitEventFuel() * b.productionInSeconds * 1000;
            SetTime(timeToSet, timeNow);
        }

        private void SetTime(double timeToSet, double timeNow)
        {
            this.collectTime = timeNow - timeToSet;
            this.Saving();
        }

        public void SetThirdFuel(double timeNow, User user, int persent = 334)
        {
            if (type != BuildingType.HeadQuarters && type != BuildingType.EventTower) return;
            var b = new Building(this.GetLevel(timeNow), type);
            if (b.id == 0) return;
            var timeToSet = (type == BuildingType.HeadQuarters) ?
                Math.Ceiling(user.GetLimitFuel() * b.productionInSeconds * persent)
                : Math.Ceiling(user.GetLimitEventFuel() * b.productionInSeconds * persent);
            this.collectTime = this.collectTime - timeToSet;
            this.Saving();
        }

        //Adding bonus fuel each level
        public void SetFuel(double timeNow, User user)
        {
            Building b = new Building(this.GetLevel(timeNow), BuildingType.HeadQuarters);
            if (b.id == 0) return;
            if (this.type == BuildingType.HeadQuarters)
            {
                this.collectTime = Math.Max(timeNow - user.GetLimitFuel() * b.productionInSeconds * 1000, this.collectTime);
                int res = this.resoursesCount(timeNow, b);
                if (res == user.GetLimitFuel()) return;
                int barrels = (user.GetLimitFuel() - res) >= Define.Get(Def.FuelPerLvl) ? -(int)Define.Get(Def.FuelPerLvl) : -(user.GetLimitFuel() - res);
                SetTime(user, barrels, b, timeNow, false);
                Saving();
            }
        }

        public int resoursesCount(double timeNow, Building building)
        {
            double t1 = Math.Max(0, timeNow - this.collectTime);
            if (building != null)
            {
                if (building.productionInSeconds == 0) return 0;
                return (int)Math.Floor(t1 / (1000 * building.productionInSeconds));
            }
            else return 0;
        }

        public static int GetRadarLevel(User user, double timeNow)
        {
            UserBuilding bb = new UserBuilding(user, BuildingType.Radar);
            if (bb.id <= 0) return -2;
            return bb.GetLevel(timeNow);
        }

        public static int GetHQLevel(User user, double timeNow)
        {
            var userBuilding = new UserBuilding(user.id, BuildingType.HeadQuarters);
            if (userBuilding.id <= 0) return -2;
            return userBuilding.GetLevel(timeNow);
        }

        public static int GetMarketLevel(User user, double timeNow)
        {
            var userBuilding = new UserBuilding(user.id, BuildingType.Market);
            if (userBuilding.id <= 0) return -2;
            return userBuilding.GetLevel(timeNow);
        }

        public int DoAccelerate(User user, double timeNow, int price)
        {
            user.upgradeTime = timeNow;

            new Gold(user, "building_accelerate", 0, -price);
            user.Gold -= price;
            user.Saving();
            setDiscountTime(timeNow, timeNow);
            this.time = timeNow;
            this.Saving();
            user.RemoveLimitTask(timeNow);
            if (type == BuildingType.HeadQuarters) user.Tier = (int)this.blevel;
            user.Saving();
            return 99;
        }

        private void setDiscountTime(double timeNow, double newTime)
        {
            List<UserAction> ualist = UserAction.GetByNameChanging(this.userId, SystemDefine.BundleId + beginnerPack, timeNow);
            foreach (UserAction a in ualist)
            {
                if (a.startTime == this.time)
                {
                    double dur = a.endTime - a.startTime;
                    a.startTime = newTime;
                    a.endTime = a.startTime + dur;
                    a.Saving();
                }
            }
            ualist = UserAction.GetByHQLevelChanging(this.userId, this.blevel, timeNow);
            foreach (UserAction a in ualist)
            {
                if (a.startTime == this.time && a.HQLevel == this.blevel)
                {
                    double dur = a.endTime - a.startTime;
                    a.startTime = newTime;
                    a.endTime = a.startTime + dur;
                    a.Saving();
                }
            }
        }

        public int UseAccelerationTicket(User user, double timeNow, int minutes = 0)
        {
            if (!IsUnderConstruction(timeNow)) return 0;
            double ttt = minutes == 0 ? timeNow : Math.Max(time - (double)minutes * 60 * 1000, timeNow);
            setDiscountTime(timeNow, ttt);
            time = ttt;
            this.Saving();
            user.AddLimitTask(time, timeNow);
            user.RemoveLimitTask(timeNow);
            return 99;
        }

        public int GetAccelerationPrice(double timeNow, Building building)
        {
            if (time <= timeNow) return 0;
            if (timeNow - time >= 0) return building.accelerationPrice;
            return (int)Math.Ceiling((double)building.accelerationPrice * ((time - timeNow) / 3600000) / (building.buildingTime / 60));
        }

        public void SetCollectTime(double timeNow, User user)
        {
            List<Buildings> bb = Building.GetBuildingsFromCache();
            Buildings b0 = null;
            Buildings b1 = null;
            foreach (Buildings b in bb)
            {
                if (b.typeEnum == (int)type)
                {
                    if (b.bLevel == this.blevel) b1 = b;
                    if (b.bLevel == this.blevel - 1) b0 = b;
                }
            }
            if (b1 != null && b0 != null)
            {
                if (b0.productionInSeconds == 0 || b1.productionInSeconds == 0 || this.time <= this.collectTime) return;
                if (type != BuildingType.HeadQuarters && type != BuildingType.EventTower) this.collectTime = Math.Max(this.collectTime, this.time - b0.storageSize * 1000 * b0.productionInSeconds);
                else if (type == BuildingType.HeadQuarters) this.collectTime = Math.Max(this.collectTime, this.time - user.GetLimitFuel() * 1000 * b0.productionInSeconds);
                else this.collectTime = Math.Max(this.collectTime, this.time - user.GetLimitEventFuel() * 1000 * b0.productionInSeconds);
                double t = this.time - this.collectTime;
                int barrels = (int)Math.Floor(t / (1000 * b0.productionInSeconds));
                double left = t - barrels * 1000 * b0.productionInSeconds;
                double t2 = barrels * 1000 * b1.productionInSeconds + left;
                this.collectTime = this.time - t2;
                this.Saving();
            }
        }

        public static int[] GetResourcesFromZone(User user, int zone, double timeNow)
        {// 0- money, 1-details, 2-research
            List<UserBuildings> list0 = UserBuilding.ListZoneBuildings(user, zone);
            List<Buildings> blds = Building.GetBuildingsFromCache();
            int[] limits = { 0, 0, 0 };
            int[] resourses = { 0, 0, 0 };

            foreach (UserBuildings ab in list0)
            {
                UserBuilding b = new UserBuilding(ab);
                Building bd = null;
                foreach (Buildings bb in blds)
                {
                    if (bb.typeEnum == (int)b.type && bb.bLevel == b.GetLevel(timeNow)) bd = new Building(bb);
                }
                switch (b.type)
                {
                    case BuildingType.Factory:
                        {
                            resourses[1] += b.resoursesCount(timeNow, bd);
                            limits[1] += bd.storageSize;
                        }; break;
                    case BuildingType.Market:
                        {
                            resourses[0] += b.resoursesCount(timeNow, bd);
                            limits[0] += bd.storageSize;
                        }; break;
                }
            }
            int[] Resourses = new int[] { 0, 0, 0 };
            Resourses[0] = Math.Min(limits[0], resourses[0]); // money
            Resourses[1] = Math.Min(limits[1], resourses[1]); // prod points
            Resourses[2] = Math.Min(limits[2], resourses[2]); // reserch points
            return Resourses;
        }

        public static int[] DiminishResourcesInZone(User user, int zone, double timeNow, int percent, List<UserBuildings> list)
        {// 0- money, 1-details, 2-research
            List<UserBuildings> list0 = new List<UserBuildings>();
            foreach (UserBuildings b in list)
            {
                if (b.zone == zone) list0.Add(b);
            }
            List<Buildings> blds = Building.GetBuildingsFromCache();
            int[] limits = { 0, 0, 0 };
            int[] resourses = { 0, 0, 0 };
            int[] result = { 0, 0, 0 };
            List<double>[] resoursesProd = { new List<double>(), new List<double>(), new List<double>() };

            foreach (UserBuildings ab in list0)
            {
                UserBuilding b = new UserBuilding(ab);
                Building bd = null;
                foreach (Buildings bb in blds)
                {
                    if (bb.typeEnum == (int)b.type && bb.bLevel == b.GetLevel(timeNow)) bd = new Building(bb);
                }
                switch (b.type)
                {
                    case BuildingType.Factory:
                        {
                            if (bd.productionInSeconds == 0) resoursesProd[1].Add(0);
                            else resoursesProd[1].Add(Math.Floor((double)3600 / bd.productionInSeconds));
                            resourses[1] += b.resoursesCount(timeNow, bd);
                            limits[1] += bd.storageSize;
                        }; break;
                    case BuildingType.Market:
                        {
                            if (bd.productionInSeconds == 0) resoursesProd[0].Add(0);
                            else resoursesProd[0].Add(Math.Floor((double)3600 / bd.productionInSeconds));
                            resourses[0] += b.resoursesCount(timeNow, bd);
                            limits[0] += bd.storageSize;
                        }; break;
                }
            }
            for (int i = 0; i < 3; i++)
            {
                if (limits[i] < 0) continue;
                BuildingType tt = BuildingType.None;
                int allPresent = Math.Min(resourses[i], limits[i]);
                int allToCollect = Math.Max(0, (int)Math.Floor((double)allPresent * percent / 100));
                if (allToCollect == 0) continue;
                int allToRemain = allPresent - allToCollect;
                allToRemain = Math.Max(0, allToRemain);

                double prodAll = 0;
                foreach (double q in resoursesProd[i]) prodAll += q;
                if (prodAll == 0) continue;
                List<double> relProd = new List<double>();
                foreach (double w in resoursesProd[i]) relProd.Add(w / prodAll);
                List<double> capRel = new List<double>();
                foreach (double r in relProd) capRel.Add(r * allToRemain);
                List<double> f = new List<double>();
                for (int t = 0; t < resoursesProd[i].Count(); t++)
                {
                    f.Add(Math.Ceiling(3600 * 1000 * capRel[t] / resoursesProd[i][t]));
                }
                switch (i)
                {
                    case 0:
                        {
                            tt = BuildingType.Market;
                            result[0] += allToCollect;
                        }
                        break;
                    case 1:
                        {
                            tt = BuildingType.Factory;
                            result[1] += allToCollect;
                        }; break;
                }
                foreach (UserBuildings b in list0)
                {
                    if (b.type == (int)tt && tt != BuildingType.None)
                    {
                        UserBuilding ub = new UserBuilding(b);
                        ub.SetTime(f[0], timeNow);
                        foreach (UserBuildings ubb in list)
                        {
                            if (ubb.id == ub.id) ubb.collectTime = ub.collectTime;
                        }
                    }
                }
            }
            return result;
        }

        public static void CollectResourcesFromZone(User user, int zone, double timeNow)
        {// 0- money, 1-details, 2-research
            List<UserBuildings> list0 = UserBuilding.ListZoneBuildings(user, zone);
            List<Buildings> blds = Building.GetBuildingsFromCache();

            int[] limits2 = { 0, 0, 0 };
            limits2[0] = (int)Math.Max(0, user.LimitMoney - user.GetMoney());
            limits2[1] = (int)Math.Max(0, user.LimitDetails - user.GetDetails());
            limits2[2] = 0;

            int[] limits = { 0, 0, 0 };
            int[] resourses = { 0, 0, 0 };
            List<double>[] resoursesProd = { new List<double>(), new List<double>(), new List<double>() };

            foreach (UserBuildings ab in list0)
            {
                UserBuilding b = new UserBuilding(ab);
                Building bd = null;
                foreach (Buildings bb in blds)
                {
                    if (bb.typeEnum == (int)b.type && bb.bLevel == b.GetLevel(timeNow)) bd = new Building(bb);
                }
                switch (b.type)
                {
                    case BuildingType.Factory:
                        {
                            if (bd.productionInSeconds == 0) resoursesProd[1].Add(0);
                            else resoursesProd[1].Add(Math.Floor((double)3600 / bd.productionInSeconds));
                            resourses[1] += b.resoursesCount(timeNow, bd);
                            limits[1] += bd.storageSize;
                        }; break;
                    case BuildingType.Market:
                        {
                            if (bd.productionInSeconds == 0) resoursesProd[0].Add(0);
                            else resoursesProd[0].Add(Math.Floor((double)3600 / bd.productionInSeconds));
                            resourses[0] += b.resoursesCount(timeNow, bd);
                            limits[0] += bd.storageSize;
                        }; break;
                }
            }
            for (int i = 0; i < 3; i++)
            {
                if (limits[i] < 0) continue;
                BuildingType tt = BuildingType.None;
                int allPresent = Math.Min(resourses[i], limits[i]);
                int allToCollect = Math.Max(0, Math.Min(allPresent, limits2[i]));
                if (allToCollect == 0) continue;
                int allToRemain = allPresent - allToCollect;
                double prodAll = 0;
                foreach (double q in resoursesProd[i]) prodAll += q;
                if (prodAll == 0) continue;
                List<double> relProd = new List<double>();
                foreach (double w in resoursesProd[i]) relProd.Add(w / prodAll);
                List<double> capRel = new List<double>();
                foreach (double r in relProd) capRel.Add(r * allToRemain);
                List<double> f = new List<double>();
                for (int t = 0; t < resoursesProd[i].Count(); t++)
                {
                    f.Add(Math.Ceiling(3600 * 1000 * capRel[t] / resoursesProd[i][t]));
                }
                switch (i)
                {
                    case 0:
                        {
                            tt = BuildingType.Market;
                            user.AddMoney(allToCollect);
                        }
                        break;
                    case 1:
                        {
                            tt = BuildingType.Factory;
                            user.AddDetails(allToCollect);
                        }; break;
                }
                foreach (UserBuildings b in list0)
                {
                    if (b.type == (int)tt && tt != BuildingType.None)
                    {
                        UserBuilding ub = new UserBuilding(b);


                        ub.SetTime(f[0], timeNow);
                    }
                }
            }
            user.Saving();
        }

        /*
        private static List<UserBuilding> MergeUserBuildings(List<UserBuildings> list, double timeNow, List<Buildings> blds)
        {
            List<UserBuilding> newlist = new List<UserBuilding>();

            UserBuilding money = new UserBuilding();
            UserBuilding details = new UserBuilding();
            UserBuilding research = new UserBuilding();

            foreach (UserBuildings ab in list)
            {
                UserBuilding b = new UserBuilding(ab);
                Buildings bd = null;
                foreach (Buildings bb in blds)
                {
                    if (bb.typeEnum == (int)b.type && bb.bLevel == b.GetLevel(timeNow)) bd = bb;
                }
                switch (b.type)
                {
                    case BuildingType.Factory:
                        {
                            details.collectTime = b.collectTime;
                            details.type = (BuildingType)b.type;
                            if (bd.productionInSeconds > 0)
                            {
                                details.storageSize += bd.storageSize;
                                details.productionPerHour += (int)Math.Floor((double)3600 / bd.productionInSeconds);
                            }
                        }; break;
                    case BuildingType.Market:
                        {
                            money.collectTime = b.collectTime;
                            money.type = (BuildingType)b.type;
                            if (bd.productionInSeconds > 0)
                            {
                                money.storageSize += bd.storageSize;
                                money.productionPerHour += (int)Math.Floor((double)3600 / bd.productionInSeconds);
                            }
                        }; break;
                    case BuildingType.DesingOffice:
                        {
                            research.collectTime = b.collectTime;
                            research.type = (BuildingType)b.type;
                            if (bd.productionInSeconds > 0)
                            {
                                research.storageSize += bd.storageSize;
                                research.productionPerHour += (int)Math.Floor((double)3600 / bd.productionInSeconds);
                            }
                        }; break;
                }
            }
            newlist.Add(money);
            newlist.Add(details);
            newlist.Add(research);
            return newlist;
        }*/

        public static List<UserBuildings> ListZoneBuildings(User user, int zone)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            return Query.ListUserBuildingsInZone(db, user.id, zone).ToList();
        }

    }
}