﻿using System;
using System.Collections.Generic;
﻿using System.Globalization;
﻿using System.Linq;
﻿using Newtonsoft.Json;

namespace TW
{
    public enum MarketItemType
    {
        none,
        item,
        tank,
        crew,
        powerUp
    }
    public class UserMarket
    {
        [JsonProperty(PropertyName = "s")]
        public int slot;
        [JsonProperty(PropertyName = "m")]
        public int money;
        [JsonProperty(PropertyName = "g")]
        public int gold;
        [JsonProperty(PropertyName = "i")]
        public int itemId;
        [JsonProperty(PropertyName = "c")]
        public int count;
        [JsonProperty(PropertyName = "t")]
        public int type;
        [JsonProperty(PropertyName = "d")]
        public bool sold;

        public UserMarkets ToUserMarkets(int userId)
        {
            var um = new UserMarkets();
            um.userId = userId;
            um.money = this.money;
            um.gold = this.gold;
            um.count = this.count;
            um.cellId = this.slot;
            um.itemId = this.itemId;
            um.type = this.type;
            um.sold = this.sold;
            return um;
        }
        public UserMarket()
        {

        }
        public UserMarket(UserMarkets um)
        {
            this.slot = um.cellId;
            this.money = um.money;
            this.gold = um.gold;
            this.count = um.count;
            this.itemId = um.itemId;
            this.type = um.type;
            this.sold = um.sold;
        }
    }

    public class MarketItem
    {
        public int id;
        public string ident;
        public double totalWeight;
        public int[] items;
        public int[] counts;
        public int[] weights;
    }

    public class RandomItem : IToJson
    {

        public class Item
        {
            public int item; // item id            
            public double weight;
            public int count;
        }

        public int id;
        public string ident;
        public int hq;
        public int slot;
        public Item[] items = { };

        public double weight;
        public string json;

        public void CalculateWeigth()
        {
            weight = 0;
            foreach (var item in items)
            {
                weight += item.weight;
            }
        }

        public Error ImportFromJson(string json, int id, int hq = 0, int slot = 0)
        {
            if (string.IsNullOrEmpty(json)) return Error.NOCONFIG;
            var bb = JsonConvert.DeserializeObject<MarketItem>(json);
            this.items = new Item[bb.items.Length];
            int i = 0;
            if (bb.weights.Length != bb.items.Length) return Error.INCORRECT_CONFIG;
            foreach (var item in bb.weights)
            {
                int itemsCount = 1;
                if (bb.counts != null && i < bb.counts.Length)
                    itemsCount = bb.counts[i];

                bb.totalWeight += item;
                this.items[i] = new Item { count = itemsCount, item = bb.items[i], weight = item };
                i++;
            }
            this.id = id;
            this.json = json;
            this.hq = hq;
            this.slot = slot;
            this.weight = bb.totalWeight;
            this.ident = bb.ident;
            return Error.OK;
        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            json.BeginObject();
            json.Name("i").Value(id);
            json.Name("id").Value(ident);
            json.Name("w").Value(weight);
            json.Name("it").BeginArray();
            foreach (var item in items)
            {
                json.Name("i").Value(item.item);
            }
            json.EndArray();
            json.Name("iw").BeginArray();
            foreach (var item in items)
            {
                json.Name("w").Value(item.weight);
            }
            json.EndArray();
            json.EndObject();
        }
        /*{
            "ident":"s_1"
            "items":[
                {"item":27,"weight":3, "count":1,"money":100,"gold":0}                
            ]
        }*/

    }

    public class MarketService : AbstractService
    {
        internal const int TIME_6H = 21600000;
        public const string CACHE_RANDOM_BUY = "market_buy";
        public const string CACHE_RANDOM_BUY_JSON = "market_assortiment_json";
        private const double CACHE_KEEP_MINUTES = 60;
        //private const int MAX_ATTEMPTS = 10;

        private static readonly Random random = new Random();

        public class Result
        {
            public List<UserMarket> items;
            public int[] reqMarket;
            public int marketAttempts;

            public Result(List<UserMarket> it, int attempts)
            {
                this.items = it;
                this.reqMarket = Define.ReqMarketLvl;
                this.marketAttempts = attempts;
            }
        }

        private List<RandomItem> Load()
        {
            //Load market config
            //Caching.Remove(CACHE_RANDOM_BUY);
            var list = Caching.Get<List<RandomItem>>(CACHE_RANDOM_BUY);
            if (list == null || list.Count == 0)
            {
                list = new List<RandomItem>();
                var db = new TanksDBDataContext();
                foreach (var c in Query.ListRandomItems(db))
                {
                    var element = new RandomItem();
                    if (element.ImportFromJson(c.json, c.id, c.hq, c.slot) != Error.OK) Util.Log("Market config error, check table MarketItems. ItemId: " + c.id + ". JSON: " + c.json);
                    list.Add(element);
                }
                Caching.Add(CACHE_RANDOM_BUY, list, CACHE_KEEP_MINUTES);
            }
            return list;
        }

        private void Save2Cache(User user, List<UserMarket> items)
        {
            Caching.Remove(CACHE_RANDOM_BUY_JSON + "#" + user.id);
            var serializeObject = JsonConvert.SerializeObject(new Result(items, user.marketBuyAttempts));
            Caching.Add(CACHE_RANDOM_BUY_JSON + "#" + user.id, serializeObject, CACHE_KEEP_MINUTES);
        }

        private string LoadFromCache(int userId)
        {
            var json = Caching.Get<string>(CACHE_RANDOM_BUY_JSON + "#" + userId.ToString());
            if (json == null) return "[]";
            return json;
        }
        public void DropCache()
        {
            Caching.Remove(CACHE_RANDOM_BUY);
            Caching.Remove(CACHE_RANDOM_BUY_JSON);
        }

        public Error GenerateGoods(User user, double timeNow, int startSlot = 0)
        {
            var itemService = new ItemService();
            //get data
            var marketList = Load();
            //check HQ
            var hq = UserBuilding.GetHQLevel(user, timeNow);
            if (hq < 1) return Error.HQ_BUILDING_REQUIRED;

            //get goods and check market condition
            var goods = new List<RandomItem>();
            for (int i = 1; i < 19; i++)
            {
                if (startSlot > 0 && (i > (startSlot + 5) || i < startSlot)) continue;
                var findItem = marketList.FindLast(a => a.slot == i && a.hq <= hq);
                if (findItem != null) goods.Add(findItem);
            }

            if (goods.Count == 0)
                return Error.NOCONFIG;

            //generate goods
            var items = new List<UserMarket>();
            foreach (var el in goods)
            {
                el.CalculateWeigth();
                var it = Unpack(el);

                var cellItem = new UserMarket();
                cellItem.sold = false;
                cellItem.slot = el.slot;
                cellItem.itemId = it.item;
                cellItem.count = 1;

                if (el.ident == MarketItemType.item.ToString())
                {
                    cellItem.type = (int)MarketItemType.item;
                    cellItem.count = itemService.GetItemParameters(it.item).itemConfig.amount;
                    cellItem.money = itemService.GetItemParameters(it.item).itemConfig.money;
                    cellItem.gold = itemService.GetItemParameters(it.item).itemConfig.gold;
                }
                else if (el.ident == MarketItemType.tank.ToString())
                {
                    cellItem.type = (int)MarketItemType.tank;
                    var dTank = new DefaultUnit(it.item);
                    cellItem.money = (int)dTank.Money;
                    cellItem.gold = (int)dTank.Gold;
                }
                else if (el.ident == MarketItemType.crew.ToString())
                {
                    cellItem.type = (int)MarketItemType.crew;
                    var dCrew = new Crew(it.item);
                    cellItem.money = dCrew.money;
                    cellItem.gold = dCrew.gold;
                }
                else if (el.ident == MarketItemType.powerUp.ToString())
                {
                    cellItem.type = (int)MarketItemType.powerUp;
                    var powerUp = new PowerUp(it.item);
                    cellItem.count = it.count;
                    cellItem.money = (int)powerUp.money;
                    cellItem.gold = (int)powerUp.gold;
                }
                else
                {
                    continue;
                }

                items.Add(cellItem);
            }
            return SaveMarket(user, items, timeNow);
        }

        private Error SaveMarket(User user, List<UserMarket> cells, double timeNow)
        {
            var db = new TanksDBDataContext();
            var custs = Query.GetUserMarket(db, user.id);
            var list = Enumerable.ToList(custs);
            var exportList = new List<UserMarket>();
            if (list.Count != 0)
            {
                for (int i = 0; i < list.Count; i++)
                {
                    if (cells.Exists(c => c.slot == list[i].cellId))
                    {
                        db.UserMarkets.DeleteOnSubmit(list[i]);
                    }
                    else exportList.Add(new UserMarket(list[i]));
                }
                db.SubmitChanges();
                exportList.AddRange(cells);
            }
            foreach (var element in cells)
            {
                //save
                var record = new UserMarkets();
                record = element.ToUserMarkets(user.id);
                db.UserMarkets.InsertOnSubmit(record);
            }
            db.SubmitChanges();
            if (exportList.Count > 0) cells = exportList.OrderBy(c => c.slot).ToList();
            Save2Cache(user, cells);
            user.marketTime = Math.Floor(timeNow / TIME_6H) * TIME_6H;
            user.Saving();
            return Error.OK;
        }

        public string LoadMarket(User user, int forGold, double timeNow)
        {
            //check time 6h interval            
            if (forGold > 0) forGold = user.marketBuyAttempts >= user.GetVIPData()[(int)VIPdata.MarketRefreshBonus] ? 0 : forGold;
            if ((user.marketTime + TIME_6H) < timeNow || forGold > 0)
            {
                if (forGold > 0)
                {
                    if (user.Gold < (int)Define.Get(Def.RefreshMarketPrice)) return Util.ToJson(Error.LACK_GOLD);
                    user.Gold -= (int)Define.Get(Def.RefreshMarketPrice);
                    new Gold(user, "refreshMarket", 0, -(int)Define.Get(Def.RefreshMarketPrice));
                    user.marketBuyAttempts++;
                }

                var result = GenerateGoods(user, timeNow, forGold);
                if (result != Error.OK) return Util.ToJson(result);
            }
            //load if exist load from cache else from db
            var serializeObject = LoadFromCache(user.id);
            if (serializeObject == "[]")
            {
                serializeObject = LoadUserMarket(user, timeNow);
            }
            return serializeObject;
        }

        //Load user's goods
        private string LoadUserMarket(User user, double timeNow)
        {
            string resultString = "[]";
            var db = new TanksDBDataContext();
            var custs = Query.GetUserMarket(db, user.id);
            var list = Enumerable.ToList(custs);
            if (list.Count == 0)
            {
                var result = GenerateGoods(user, timeNow);
                if (result != Error.OK) return Util.ToJson(result);
                resultString = LoadFromCache(user.id);
            }
            else
            {
                var items = new List<UserMarket>();
                foreach (var element in list)
                {
                    items.Add(new UserMarket(element));
                }
                Save2Cache(user, items);
            }
            resultString = LoadFromCache(user.id);
            return resultString;
        }


        public Error Buy(User user, int slotId, double timeNow, out BuyRequestResult buyRequestResult)
        {
            buyRequestResult = null;

            var output = LoadFromCache(user.id);
            if (output == "[]")
            {
                output = LoadUserMarket(user, timeNow);
            }

            var bb = JsonConvert.DeserializeObject<Result>(output).items;
            UserMarket cell = bb.FirstOrDefault(a => a.slot == slotId);
            if (cell == null)
                return Error.ITEM_NOT_FOUND;

            //1 - validate total money and gold required
            var discount = UserAction.GetUserDiscountByShopType(user.id, cell, timeNow);

            //2 - validate 
            var canBuyResult = CanBuy(user, cell, discount);
            if (canBuyResult != Error.OK)
                return canBuyResult;

            //3 - try buy 
            var buyResult = BuyItem(user, cell, discount, timeNow, out buyRequestResult);
            if (buyResult != Error.OK)
                return buyResult;

            cell.sold = true;  // mark as sold item
            SaveMarket(user, bb, timeNow);

            return buyResult;
        }

        private Error BuyItem(User user, UserMarket cell, int discount, double time, out BuyRequestResult buyRequestResult)
        {
            buyRequestResult = null;
            var name = string.Empty;
            switch ((MarketItemType)cell.type)
            {
                case MarketItemType.item:
                    var itemService = new ItemService();
                    var itemParameters = itemService.GetItemParameters(cell.itemId);
                    var userItemId = itemParameters.type == UserItem.Type.ShopItem ?
                                       ItemService.AddItem(user.id, itemParameters.itemConfig.param, itemParameters.itemConfig.amount) :
                                       ItemService.AddItem(user.id, cell.itemId, cell.count);
                    buyRequestResult = new BuyRequestResult { userItemId = userItemId };
                    name = itemParameters.type.ToString();
                    break;
                case MarketItemType.tank:
                    if (user.GetUserUnitNum() >= user.Slots)
                        return Error.HANGAR_NO_SLOT;

                    var defaultUnit = new DefaultUnit(cell.itemId);
                    if (defaultUnit.Id == 0)
                        return Error.INCORRECT_CONFIG;

                    var userUnit = new UserUnit(user.id, cell.itemId, defaultUnit.MaxHp, defaultUnit.AmmoSize, ShellShop.GetFirstShell(defaultUnit.Calibre, defaultUnit.Tier, defaultUnit.Class), 0, defaultUnit.Power);
                    buyRequestResult = new BuyRequestResult { unit = userUnit };
                    name = defaultUnit.Name;
                    break;
                case MarketItemType.crew:
                    var crew = new Crew(cell.itemId);
                    if (crew.id == 0)
                        return Error.INCORRECT_CONFIG;

                    var hqCrewBuildingConfig = new Building(1, BuildingType.HQCrews);
                    int capacity = hqCrewBuildingConfig.storageSize;                                       

                    var officerSchoolBuilding = new UserBuilding(user, BuildingType.OfficerSchool);
                    if (officerSchoolBuilding.id > 0)
                    {
                        var building = new Building(officerSchoolBuilding.GetLevel(time), officerSchoolBuilding.type);
                        capacity += building.storageSize;
                    }

                    //temp hardcode
                    //if (UserCrew.GetUserCrewsCount(user) >= capacity)
                    //    return Error.NOT_ENOUGH_OFFICER_SCHOOL_CAPACITY;

                    //
                    var userCrew = new UserCrew(crew.id, user.id);
                    buyRequestResult = new BuyRequestResult { crew = userCrew };
                    name = crew.name;
                    break;
                default:
                    return Error.ITEM_NOT_FOUND;
            }

            var money = CalculatePrice(cell.money, discount);
            if (money > 0)
                user.SpendMoney(money);

            var gold = CalculatePrice(cell.gold, discount);
            if (gold > 0)
            {
                new Gold(user, "buy " + (MarketItemType)cell.type + "#" + name, cell.itemId, ((double)-gold / cell.count), cell.count);
                user.Gold -= gold;
            }
            user.Saving();

            return Error.OK;
        }

        private Error CanBuy(User user, UserMarket cell, int discount)
        {
            if (cell == null || cell.count <= 0)
                return Error.INCORRECT_VALUE;

            var money = CalculatePrice(cell.money, discount);
            if (cell.money > 0 && user.GetMoney() < money)
                return Error.LACK_MONEY;

            var gold = CalculatePrice(cell.gold, discount);
            if (cell.gold > 0 && user.Gold < gold)
                return Error.LACK_GOLD;

            return Error.OK;
        }

        private int CalculatePrice(int price, int discount)
        {
            if (discount <= 0)
                return price;

            return (int)(price - ((price / 100f) * discount));
        }

        private static RandomItem.Item Unpack(RandomItem r)
        {
            if (r == null)
                return null;

            var roll = random.NextDouble();
            double current = 0;
            foreach (var item in r.items)
            {
                current += item.weight;
                if (current / r.weight >= roll) return item;
            }

            Util.Log("Failed to unpack RandomItem from " + r.ident + " roll " + roll);

            return null;
        }

        public static RandomItem.Item GetRandomReward(User user, int bundleId, bool rand = true)
        {
            var db = new TanksDBDataContext();
            var itemSrv = new ItemService();
            //get components by Tier
            var custs = Query.GetRandomItemById(db, user.Tier);
            var goods = Enumerable.FirstOrDefault(custs);
            if (goods == null)
            {
                Util.Log("check table RandomItems, goods is null");
                return null;
            }
                
            var source = new RandomItem();
            if (source.ImportFromJson(goods.json, goods.id) != Error.OK)
            {
                Util.Log("Market config error, check table RandomItems. ItemId:" + goods.id + ". JSON: " + goods.json);
                return null;
            }
            IndexArray first;
            source.CalculateWeigth();
            var it = Unpack(source);
            it.count = itemSrv.GetItemParameters(it.item).itemConfig.tier;
            if (rand) return it;
            // change random
            var itemList = itemSrv.GetItemsByUserId(user.id);
            if (itemList.Count == 0) return it;
            //check user storage and find less
            double w1 = 0f; // weights
            double w2 = 0f;
            double w3 = 0f;
            foreach (var el in source.items)
            {
                if (itemSrv.GetItemParameters(el.item).itemConfig.tier == 1) w1 += el.weight;
                if (itemSrv.GetItemParameters(el.item).itemConfig.tier == 2) w2 += el.weight;
                if (itemSrv.GetItemParameters(el.item).itemConfig.tier == 3) w3 += el.weight;
            }
            var resultList = itemList.FindAll(a => itemSrv.GetItemParameters(a.itemId).type == UserItem.Type.EvolvePart);
            int type = 0;
            double r = random.NextDouble();
            if (r < (w1 / (w1 + w2 + w3)))
            {
                type = 1;
            }
            else if (r < (w1 + w2) / (w1 + w2 + w3))
            {
                type = 2;
            }
            else
            {
                type = 3;
            }
            var commonList = resultList.FindAll(a => itemSrv.GetItemParameters(a.itemId).itemConfig.tier == type);
            if (commonList.Count == 0) return it;

            var indexCommon = new List<IndexArray>();
            int k = 0;
            foreach (var el in source.items)
            {
                if (el.weight == 0) continue;
                if (itemSrv.GetItemParameters(el.item).itemConfig.tier == type)
                {
                    var element = commonList.Find(a => a.itemId == el.item);
                    indexCommon.Add(new IndexArray(k, element == null ? 0 : element.amount));
                }
                else
                {
                    el.weight = 0;
                }
                k++;
            }
            // change weigth                         
            if (indexCommon.Count > 0)
            {
                indexCommon = indexCommon.OrderBy(a => a.count).ToList();
                first = indexCommon[0];
                if (indexCommon.Exists(a => a.count != first.count))
                {
                    source.items[first.index].weight += source.items[first.index].weight * 0.5f;
                    var dec = source.items[first.index].weight * 0.5f / (indexCommon.Count - 1);
                    foreach (var e in indexCommon)
                    {
                        if (e == first) continue;
                        source.items[e.index].weight -= dec;
                    }
                }
            }
            source.CalculateWeigth();
            it = Unpack(source) ?? Unpack(source);
            if (it == null)
            {
                Util.Log("Can't generate random item");
                return null;
            }
            it.count = itemSrv.GetItemParameters(it.item).itemConfig.tier;
            return it;
        }

        public int GetItemPrice(int itemId, int qnty)
        {
            var itemSrv = new ItemService();
            return itemSrv.GetItemParameters(itemId).itemConfig.gold * qnty;
        }

        public Error InstantBuyItem(User user, int itemId, int qnty, out BuyRequestResult buyRequestResult)
        {
            buyRequestResult = null;
            string name = "";
            var itemService = new ItemService();
            var itemParameters = itemService.GetItemParameters(itemId);
            name = itemParameters.type.ToString();
            var gold = itemParameters.itemConfig.gold * qnty;
            if (gold > 0 && user.Gold < gold) return Error.LACK_GOLD;
            new Gold(user, "buy " + itemParameters.type + "#" + name, itemId, ((double)-itemParameters.itemConfig.gold), qnty);
            user.Gold -= gold;
            var userItemId = ItemService.AddItem(user.id, itemId, qnty);
            buyRequestResult = new BuyRequestResult { userItemId = userItemId };
            return Error.OK;
        }

        private class IndexArray
        {
            public int index;
            public int count;

            public IndexArray(int i, int c)
            {
                this.index = i;
                this.count = c;
            }
        }
    }

    public class BuyRequestResult
    {
        public UserUnit unit;
        public UserCrew crew;
        public int userItemId;

        public BuyRequestResult()
        {
        }
    }
}