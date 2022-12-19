﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;

namespace TW
{
    public class BlindBuyAttempts
    {
        //crew
        [JsonProperty(PropertyName = "c1")]
        public int totalAttemptsByMoneyForCrew;

        [JsonProperty(PropertyName = "ct1")]
        public int todayAttemptsByMoneyForCrew;

        [JsonProperty(PropertyName = "cp1")]
        public long crewBuyByMoneyStamp;

        public BlindBuyAttempts()
        {
        }

        public void UpdateTotalAttempts(BlindBuy crewBlindBuy, int crewByGold, int crewByMoney)
        {
            totalAttemptsByMoneyForCrew += crewByMoney > 0 ? 1 : 0;

            if (crewByMoney > 0 && (crewBlindBuy.mask & BlindBuy.MASK_SHOW_FOR_NEWBIE) == 0)
            {
                if (Util.IsNewDay(crewBuyByMoneyStamp))
                {
                    todayAttemptsByMoneyForCrew = 0; //reset
                    crewBuyByMoneyStamp = Util.GetMs();
                }

                todayAttemptsByMoneyForCrew++;
            }
        }
    }

    public class ResultBB
    {
        public UserUnit tank;
        public UserCrew crew;
    }

    public class BlindBuy
    {


        internal const int MASK_SHOW_IN_SHOP = 1;
        internal const int MASK_SHOW_ITEMS = 1 << 1;
        internal const int MASK_SHOW_CHANCES = 1 << 2;
        internal const int MASK_SHOW_IN_CREW_SHOP = 1 << 3;
        internal const int MASK_SHOW_FOR_NEWBIE = 1 << 4;

        public class Item
        {
            public int tank; // for tank shop section
            public int tier; // for crew shop section
            public int crew; //crew id
            public double weight;
            public int[] upgrades;
            public int[] ids;
        }

        public int id;
        public string ident;
        public int tier;
        public int money;
        public int gold;
        public Item[] items = { };
        public int mask;

        public double weight;
        public string json;

        /*{
            "ident":"blindbuy_1","money":10,"tier":15,"mask":1,
            "items":[
                {"tank":27,"weight":3},
                {"tank":4,"weight":23,"upgrades":[2,2,2,37,44]}
            ]
        }*/


        /*{
            "ident":"common_crew1", "money":5000, "mask":6,
            "items":[
                {"tier":1,"weight":8},
                {"tier":2,"weight":2}
            ]
        }*/
    }

    public class BlindBuyService
    {
        public const string CACHE_BLIND_BUY = "blind_buy";
        public const string CACHE_BLIND_BUY_JSON = "blind_buy_json";
        private const double CACHE_KEEP_MINUTES = 60;

        private const int CREW_BUY_ATTEMPTS_FOR_NEWBIE = 4;

        private static readonly Random random = new Random();

        private List<BlindBuy> Load()
        {
            var list = Caching.Get<List<BlindBuy>>(CACHE_BLIND_BUY);
            if (list == null)
            {
                list = new List<BlindBuy>();
                var db = new TanksDBDataContext();
                foreach (var c in Query.ListBlindBuys(db))
                {
                    var bb = JsonConvert.DeserializeObject<BlindBuy>(c.json);
                    foreach (var item in bb.items)
                    {
                        bb.weight += item.weight;
                    }
                    bb.id = c.id;
                    bb.json = c.json;
                    list.Add(bb);
                }
                Caching.Add(CACHE_BLIND_BUY, list, CACHE_KEEP_MINUTES);
            }
            return list;
        }

        public string BlindBuySettingsToJson()
        {
            var json = Caching.Get<string>(CACHE_BLIND_BUY_JSON);
            if (json == null)
            {
                var list = Load();
                var sb = new StringBuilder(list.Count * 100);
                sb.Append('[');
                foreach (var bb in list)
                {
                    if (sb.Length > 1) sb.Append(',');
                    sb.Append(bb.json);
                }
                sb.Append(']');
                json = sb.ToString();
                Caching.Add(CACHE_BLIND_BUY_JSON, json, CACHE_KEEP_MINUTES);
            }
            return json;
        }

        public void DropCache()
        {
            Caching.Remove(CACHE_BLIND_BUY);
            Caching.Remove(CACHE_BLIND_BUY_JSON);
        }

        public Error RenameTank(User user, int tankId, string newName)
        {
            var tank = new UserUnit(tankId);
            if (tank.i == 0 || tank.u != user.id) return Error.INCORRECT_VALUE;
            if (newName == null) newName = "";
            if (newName.Equals(tank.name)) return Error.OK;

            if ((tank.mask & UserUnit.MASK_RENAMED) > 0)
            {
                //2nd+ rename is payed
                var cost = Define.Get(Def.TankRenameCost);
                if (user.Gold < cost) return Error.LACK_MONEY;
                new Gold(user, "tank_rename", 0, -cost);
                user.Gold -= cost;
                user.Saving();
            }
            else
            {
                tank.mask |= UserUnit.MASK_RENAMED;
            }

            tank.name = newName;
            tank.Saving();

            return Error.OK;
        }

        public Error SellCrew(User user, int id)
        {
            var db = new TanksDBDataContext();

            //validate if user have crew
            var cuts = Query.GetUserCrewById(db, id);
            var userCrew = Enumerable.FirstOrDefault(cuts.Select(c => new UserCrew(c)));
            if (userCrew == null)
            {
                return Error.USER_NOT_HAVE_CREW;
            }

            //get crew config
            var crewConfig = Enumerable.FirstOrDefault(Query.GetCrewById(db, userCrew.crewid));
            if (crewConfig == null)
            {
                return Error.USER_NOT_HAVE_CREW;
            }

            //unassingn crew from user unit
            var userUnit = new UserUnit(userCrew.id, false);
            userUnit.RemFriend(userCrew.id);

            //return money to user
            int price = (int)Math.Ceiling((crewConfig.gold * Define.GMCourse + crewConfig.money) * Define.SellCrew / 100);
            userCrew.Disappear();

            user.AddMoney(price);
            user.Saving();

            return Error.OK;
        }

        public object Buy(User user, string tankIdent, string crewIdent, double timeNow)
        {
            var blindBuyAttempts = GetBlindBuyAttempts(user.blindBuyAttempts);

            int crewBlindBuyMask = blindBuyAttempts.totalAttemptsByMoneyForCrew < CREW_BUY_ATTEMPTS_FOR_NEWBIE ? BlindBuy.MASK_SHOW_FOR_NEWBIE | BlindBuy.MASK_SHOW_IN_CREW_SHOP : BlindBuy.MASK_SHOW_IN_CREW_SHOP;

            //get data
            var blindBuys = Load();
            var tankBlindBuy = blindBuys.FirstOrDefault(b => b.ident == tankIdent);
            var crewBlindBuy = blindBuys.FirstOrDefault(b => b.ident == crewIdent && b.mask == crewBlindBuyMask);

            //1 - validate total money and gold required
            int totalMoneyRequired = tankBlindBuy == null ? 0 : tankBlindBuy.money;
            totalMoneyRequired += GetCrewBlindBuyMoneyPrice(crewBlindBuy, blindBuyAttempts);

            List<UserAction> aa = (crewBlindBuy != null) ? UserAction.GetByItemIdent(user.id, "", crewBlindBuy.ident, timeNow) : new List<UserAction>();
            double scale = (aa.Count > 0) ? (100 - (double)aa[0].discount) / 100 : 1;

            int totalGoldRequired = tankBlindBuy == null ? 0 : tankBlindBuy.gold;
            totalGoldRequired += crewBlindBuy == null ? 0 : (int)Math.Floor(crewBlindBuy.gold * scale);

            if (totalMoneyRequired > 0 && user.GetMoney() < totalMoneyRequired)
                return Error.LACK_MONEY;

            if (totalGoldRequired > 0 && user.Gold < totalGoldRequired)
                return Error.LACK_GOLD;

            BlindBuy.Item tankItem = null, crewItem = null;
            Error canBuyTank = null, canBuyCrew = null;

            //2 - validate can buy tank
            if (tankBlindBuy != null)
            {
                tankItem = Unpack(tankBlindBuy);
                canBuyTank = CanBuyTank(user, tankBlindBuy, tankItem);
            }

            //3 - validate can buy crew
            if (crewBlindBuy != null)
            {
                crewItem = Unpack(crewBlindBuy);
                canBuyCrew = CanBuyCrew(user, timeNow, crewBlindBuy, crewItem, blindBuyAttempts);
            }

            if (tankBlindBuy != null && canBuyTank != Error.OK)
                return canBuyTank;

            if (crewBlindBuy != null && canBuyCrew != Error.OK)
                return canBuyCrew;

            UserUnit userUnit = null;
            UserCrew userCrew = null;

            //4 - try buy tank
            if (canBuyTank == Error.OK)
                userUnit = BuyTank(user, tankBlindBuy, tankItem, timeNow);

            //5 - try buy crew
            if (canBuyCrew == Error.OK)
                userCrew = BuyCrew(user, crewBlindBuy, crewItem, blindBuyAttempts, timeNow, aa);

            //6 - assign crew in tank
            if (userUnit != null && userCrew != null)
            {
                userUnit.AddFriend(userCrew.id, "td");
            }

            return new ResultBB { tank = userUnit, crew = userCrew };
        }

        //{"ident":"my_test1","gold":0,"money":0,"items":[{"tank":17},{"crew":1,"tier":1}]} // tank:17 = id, cre:1 = id
        public object BuyPackByIdent(User user, string ident, double timeNow)
        {
            //get data
            var blindBuys = Load();
            var blindBuy = blindBuys.FirstOrDefault(b => b.ident == ident);

            if (blindBuy == null)
                return Error.INCORRECT_VALUE;

            if (blindBuy.money > 0 && user.GetMoney() < blindBuy.money)
                return Error.LACK_MONEY;

            if (blindBuy.gold > 0 && user.Gold < blindBuy.gold)
                return Error.LACK_GOLD;

            foreach (var item in blindBuy.items)
            {
                if (item.tank > 0)
                {
                    var canBuyTank = CanBuyTank(user, blindBuy, item);
                    if (canBuyTank != Error.OK)
                        return canBuyTank;
                }
                else if (item.crew > 0)
                {
                    var canBuyCrew = CanBuyCrew(user, timeNow, blindBuy, item, null);
                    if (canBuyCrew != Error.OK)
                        return canBuyCrew;
                }
            }

            UserUnit userUnit = null;
            UserCrew userCrew = null;

            var db = new TanksDBDataContext();
            foreach (var item in blindBuy.items)
            {
                if (item.crew > 0) //crew
                {
                    var cuts = Query.GetCrewById(db, item.crew);
                    var crewTemplate = Enumerable.FirstOrDefault(cuts.Select(c => new Crew(c)));

                    userCrew = new UserCrew(crewTemplate.id, user.id);
                }
                else if (item.tank > 0) //tank
                {
                    userUnit = BuyTank(user, item);
                }
                else if (item.crew == 0 && item.tank == 0)
                {
                    userCrew = new CrewService().CreateRandomCrew(user);
                }
            }

            if (blindBuy.money > 0)
            {
                user.SpendMoney(blindBuy.money);
            }

            if (blindBuy.gold > 0)
            {
                new Gold(user, "blindbuy_" + blindBuy.ident, 0, -blindBuy.gold);
                user.Gold -= blindBuy.gold;
            }

            user.Saving();

            //assign crew in tank
            if (userUnit != null && userCrew != null)
            {
                userUnit.AddFriend(userCrew.id, "td");
            }

            return new ResultBB { tank = userUnit, crew = userCrew };
        }

        private static UserUnit BuyTank(User user, BlindBuy.Item item)
        {
            var tankTpl = new DefaultUnit(item.tank);

            var shell = ShellShop.GetFirstShell(tankTpl.z, tankTpl.sz, tankTpl.t);
            var tank = new UserUnit(user.id, item.tank, tankTpl.hx, tankTpl.az, shell, 0, tankTpl.c);

            // apply upgrades
            if (item.upgrades != null)
            {
                foreach (var grade in item.upgrades)
                {
                    tank.upgradesSet[grade]++;
                }
                tank.Saving();
            }

            // auto-rename tank if same-id tank was found to NAME #X
            var db = new TanksDBDataContext();
            var custs = Query.ListTanksByUserByTankId(db, user.id, item.tank);
            if (custs != null)
            {
                var lastIdx = 1;
                var count = 0;

                foreach (var c in custs)
                {
                    count++;
                    if (string.IsNullOrEmpty(c.name) || !c.name.StartsWith("#")) continue;
                    //name = "#12" <- extract 12; name = "PupkinTank#2" - skip as custom
                    try
                    {
                        lastIdx = Math.Max(lastIdx, Convert.ToInt32(c.name.Substring(1)));
                    }
                    catch (FormatException ignore)
                    {
                    }
                }
                if (count > 1)
                {
                    tank.name = "#" + (lastIdx + 1);
                    tank.Saving();
                }
            }

            return tank;
        }

        private UserUnit BuyTank(User user, BlindBuy bb, BlindBuy.Item item, double timeNow)
        {
            /*var scale = 1.0;

            var action = UserAction.GetByItemIdent(user.id, ItemType.ReinforcementOrder, bb.ident, timeNow);
            if (action.Count > 0)
            {
                scale = Math.Ceiling((100 - (double)action[0].discount) / 100);
            }

            if (bb.money > 0)
                user.SpendMoney((int)(bb.money * scale));

            if (bb.gold > 0)
            {
                new Gold(user, "blindbuy_" + bb.ident, 0, -bb.gold * scale);
                user.Gold -= bb.gold;
            }

            user.Saving();

            return BuyTank(user, item);*/
            return null;
        }

        private UserCrew BuyCrew(User user, BlindBuy bb, BlindBuy.Item item, BlindBuyAttempts blindBuyAttempts, double timeNow, List<UserAction> aa = null)
        {
            var db = new TanksDBDataContext();

            int? crewIdByAttempt = null;
            if (item.ids != null && bb.money > 0 && blindBuyAttempts.totalAttemptsByMoneyForCrew < item.ids.Length)
            {
                crewIdByAttempt = item.ids[blindBuyAttempts.totalAttemptsByMoneyForCrew];
            }

            //1 - try get template by attempt id
            Crew randomCrewTemplate = null;
            if (crewIdByAttempt != null)
            {
                var cuts = Query.GetCrewById(db, crewIdByAttempt.GetValueOrDefault());
                if (cuts != null)
                    randomCrewTemplate = Enumerable.FirstOrDefault(cuts.Select(c => new Crew(c)));
            }

            //2 - try get random template if 1 is not successful
            if (randomCrewTemplate == null)
            {
                randomCrewTemplate = new Crew(); //this generate random crew
            }

            //3 - create the user crew
            var userCrew = new UserCrew(randomCrewTemplate.id, user.id);

            //4 - consume money, gold
            if (aa == null) aa = new List<UserAction>();
            double scale = 1;

            if (aa.Count > 0)
            {
                scale = (100 - (double)aa[0].discount) / 100;
                aa[0].Disappear();
            }
            int money = GetCrewBlindBuyMoneyPrice(bb, blindBuyAttempts);
            double gold = Math.Floor(bb.gold * scale);

            if (bb.gold > 0) new Gold(user, "Crew", randomCrewTemplate.id, -bb.gold * scale);
            user.Gold -= gold;
            user.SpendMoney(money);
            user.blindBuyAttempts = IncrementBlindBuyAttempts(user.blindBuyAttempts, bb, (int)gold, money);
            user.Saving();

            return userCrew;
        }

        private Error CanBuyTank(User user, BlindBuy bb, BlindBuy.Item item)
        {
            if (bb == null || item == null || item.tank <= 0)
            {
                return Error.INCORRECT_VALUE;
            }

            if (user.Slots <= user.GetUserUnitNum())
                return Error.HANGAR_NO_SLOT;
         
            if (bb.money > 0 && user.GetMoney() < bb.money)
                return Error.LACK_MONEY;

            if (bb.gold > 0 && user.Gold < bb.gold)
                return Error.LACK_GOLD;

            if (item.tank > 0)
            {
                var tankTpl = new DefaultUnit(item.tank);
                if (tankTpl.i == 0)
                    return Error.NO_SUCH_TANK;
            }

            return Error.OK;
        }

        private Error CanBuyCrew(User user, double timeNow, BlindBuy bb, BlindBuy.Item item, BlindBuyAttempts blindBuyAttempts)
        {
            // crew limits check
            var hqCrewBuildingConfig = new Building(1, BuildingType.HQCrews);
            int capacity = hqCrewBuildingConfig.storageSize;

            var officerSchoolBuilding = new UserBuilding(user, BuildingType.OfficerSchool);
            if (officerSchoolBuilding.id > 0)
            {
                var building = new Building(officerSchoolBuilding.GetLevel(timeNow), officerSchoolBuilding.type);
                capacity += building.storageSize;
            }

            if (UserCrew.GetUserCrewsCount(user) >= capacity)
            {
                return Error.NOT_ENOUGH_OFFICER_SCHOOL_CAPACITY;
            }

            //validate
            if (bb == null || item == null || item.tier <= 0)
            {
                return Error.INCORRECT_VALUE;
            }

            if (bb.money > 0 && user.GetMoney() < GetCrewBlindBuyMoneyPrice(bb, blindBuyAttempts))
            {
                return Error.LACK_MONEY;
            }

            return Error.OK;
        }

        private int GetCrewBlindBuyMoneyPrice(BlindBuy crewBlindBuy, BlindBuyAttempts blindBuyAttempts)
        {
            if (crewBlindBuy == null)
                return 0;

            if (blindBuyAttempts == null)
                return crewBlindBuy.money;

            int todayAttemptsByMoneyForCrew = blindBuyAttempts.todayAttemptsByMoneyForCrew;
            if (crewBlindBuy.money > 0 && (crewBlindBuy.mask & BlindBuy.MASK_SHOW_FOR_NEWBIE) == 0 && Util.IsNewDay(blindBuyAttempts.crewBuyByMoneyStamp))
            {
                todayAttemptsByMoneyForCrew = 0; //reset
            }

            var price = (int)(crewBlindBuy.money * Math.Pow(todayAttemptsByMoneyForCrew + 1, 1.4f));
            return Math.Max(crewBlindBuy.money, price);
        }

        private BlindBuyAttempts GetBlindBuyAttempts(string blindBuyAttempts)
        {
            var attempetsData = new BlindBuyAttempts();
            if (!string.IsNullOrEmpty(blindBuyAttempts))
            {
                attempetsData = JsonConvert.DeserializeObject<BlindBuyAttempts>(blindBuyAttempts);
            }

            return attempetsData;
        }

        private string IncrementBlindBuyAttempts(string blindBuyAttemptsData, BlindBuy crewBlindBuy, int crewByGold, int crewByMoney)
        {
            var attempetsData = new BlindBuyAttempts();
            if (!string.IsNullOrEmpty(blindBuyAttemptsData))
            {
                attempetsData = JsonConvert.DeserializeObject<BlindBuyAttempts>(blindBuyAttemptsData);
            }

            attempetsData.UpdateTotalAttempts(crewBlindBuy, crewByGold, crewByMoney);
            return Util.ToJson(attempetsData);
        }

        private BlindBuy.Item Unpack(BlindBuy blind)
        {
            if (blind == null)
                return null;

            var roll = random.NextDouble();
            double current = 0;
            foreach (var item in blind.items)
            {
                current += item.weight;
                if (current / blind.weight > roll) return item;
            }

            Util.Log("Failed to unpack blindbuy from " + blind.ident + " roll " + roll);

            return null;
        }
    }
}