using System;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;
namespace TW
{
    /// <summary>
    /// Сводное описание для UserAction
    /// </summary>
    public class UserAction
    {
        private static readonly Dictionary<UserItem.Type, ItemType> ActionsData = new Dictionary<UserItem.Type, ItemType>
        {
            {UserItem.Type.Resources, ItemType.Money},
            {UserItem.Type.EvolvePart, ItemType.Components},
            {UserItem.Type.Book, ItemType.Books},
            {UserItem.Type.PowerUp, ItemType.PowerUp},
            {UserItem.Type.Exp, ItemType.Books},
        };
        public static readonly Dictionary<string, Flag> mapActionName2Flag = new Dictionary<string, Flag>
        {
            {"componentpack1",  Flag.DSC_ComponentsPack},
            {"bookpack2",  Flag.DSC_BooksPack},
            {"veteran_crew1", Flag.DSC_CrewPack},
            {"com.iron5studio.iron5.tank2tier", Flag.DSC_Tank2Tier},
            {"com.iron5studio.iron5.beginnerpack", Flag.DSC_BeginnerPack},
            {"com.iron5studio.iron5.gold_offer_03_discount", Flag.DSC_Gold25},
            {"com.iron5studio.iron5.veteranpack", Flag.DSC_VeteranPack},
            {"com.iron5studio.iron5.elitepack", Flag.DSC_ElitePack}, 
        };        

        [JsonProperty(PropertyName = "i")]
        public int id;
        [JsonProperty(PropertyName = "ui")]
        public int userId;
        [JsonProperty(PropertyName = "q")]
        public int actionUnique;
        [JsonProperty(PropertyName = "oti")]
        public int offerTypeId;
        [JsonProperty(PropertyName = "n")]
        public string name;
        [JsonProperty(PropertyName = "itp")]
        public string itemType; // ItemType
        [JsonProperty(PropertyName = "ii")]
        public string itemId;
        [JsonProperty(PropertyName = "a")]
        public string amount;
        [JsonProperty(PropertyName = "d")]
        public int discount;
        [JsonProperty(PropertyName = "b")]
        public int bonus;
        [JsonProperty(PropertyName = "p")]
        public int priority;
        [JsonProperty(PropertyName = "it")]
        public int item;
        [JsonProperty(PropertyName = "stp")]
        public int shopType;
        [JsonProperty(PropertyName = "ip")]
        public bool isPurchase;
        [JsonProperty(PropertyName = "c")]
        public int counter;
        [JsonProperty(PropertyName = "pr")]
        public int price;
        [JsonProperty(PropertyName = "h")]
        public int HQLevel;
        [JsonProperty(PropertyName = "st")]
        public double startTime;
        [JsonProperty(PropertyName = "et")]
        public double endTime;

        public UserAction()
        {
        }

        public UserAction(Int32 userId, Int32 actionUnique)
        {
            var db = new TanksDBDataContext();
            IQueryable<UserActions> custs = from c in db.UserActions
                                            where c.actionUnique == actionUnique && c.userId == userId
                                            select c;
            foreach (UserActions c in custs)
            {
                From(c);
            }
        }

        public static void Clear(Int32 userId, double timeNow)
        {
            var db = new TanksDBDataContext();
            IQueryable<UserActions> custs = Query.GetUserActionsOutOfDate(db, userId, timeNow);
            foreach (UserActions c in custs)
            {
                db.UserActions.DeleteOnSubmit(c);
            }
            db.SubmitChanges();
        }

        public UserAction From(UserActions c)
        {
            id = c.id;
            userId = c.userId;
            actionUnique = c.actionUnique;
            name = c.name;
            startTime = c.startTime;
            endTime = c.endTime;
            itemType = c.itemType;
            itemId = c.itemId;
            discount = c.discount;
            priority = c.priority;
            item = c.item;
            amount = c.amount;
            isPurchase = c.isPurchase;
            counter = c.counter;
            HQLevel = c.HQLevel;
            shopType = c.shopType;
            bonus = c.bonus;
            price = c.price;
            offerTypeId = c.offerType;

            return this;
        }

        public static List<UserAction> GetByItemId(Int32 userId, ItemType itemType, Int32 itemId, double timeNow)
        {
            List<UserAction> list = new List<UserAction>();
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserActions> custs = Query.GetUserActionsItemId(db, userId, (int)itemType, itemId, timeNow);
            foreach (UserActions c in custs)
            {
                UserAction aa = new UserAction();
                list.Add(aa.From(c));
            }
            return list;
        }

        public static List<UserAction> GetByItemIdent(int userId, string itemType, string itemIdent, double timeNow)
        {
            List<UserAction> list = new List<UserAction>();
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserActions> custs = Query.GetUserActionsIdent(db, userId, itemType, itemIdent, timeNow);
            foreach (UserActions c in custs)
            {
                UserAction aa = new UserAction();
                list.Add(aa.From(c));
            }
            return list;
        }

        public static List<UserAction> GetByName(int userId, string name, double timeNow, bool notPurchase = false)
        {
            List<UserAction> list = new List<UserAction>();
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserActions> custs = Query.GetUserActionsName(db, userId, name, timeNow, notPurchase);
            foreach (UserActions c in custs)
            {
                UserAction aa = new UserAction();
                list.Add(aa.From(c));
            }
            return list;
        }

        public static List<UserAction> GetByNameChanging(int userId, string name, double timeNow)
        {
            List<UserAction> list = new List<UserAction>();
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserActions> custs = Query.GetUserActionsName4Changing(db, userId, name, timeNow);
            foreach (UserActions c in custs)
            {
                UserAction aa = new UserAction();
                list.Add(aa.From(c));
            }
            return list;
        }

        public static List<UserAction> GetByHQLevelChanging(int userId, int HQLevel, double timeNow)
        {
            List<UserAction> list = new List<UserAction>();
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserActions> custs = Query.GetUserActionsHQLevel4Changing(db, userId, HQLevel, timeNow);
            foreach (UserActions c in custs)
            {
                UserAction aa = new UserAction();
                list.Add(aa.From(c));
            }
            return list;
        }

        public UserAction(Int32 userId, Action action, double timeStart)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            UserActions ord = new UserActions
            {
                userId = userId,
                actionUnique = action.uniqueId,
                name = action.name,
                startTime = timeStart,
                endTime = timeStart + action.duration,
                itemType = action.itemType,
                itemId = action.itemId,
                discount = action.discount,
                priority = action.priority,
                item = action.item,
                amount = action.amount,
                isPurchase = action.isPurchase,
                counter = action.counter,
                HQLevel = action.HQLevel,
                shopType = action.shopType,
                offerType = action.offerTypeId,
                bonus = action.bonus,
                price = action.price,

            };
            db.UserActions.InsertOnSubmit(ord);
            db.SubmitChanges();
            From(ord);
        }

        public void Saving()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserActions> custs = from c in db.UserActions
                                            where c.id == this.id
                                            select c;

            foreach (UserActions c in custs)
            {
                c.counter = this.counter;
                c.endTime = this.endTime;
                c.startTime = this.startTime;
            }
            db.SubmitChanges();
        }

        public void Disappear()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserActions> custs = Query.GetUserActionsById(db, this.id);
            foreach (UserActions c in custs)
            {
                db.UserActions.DeleteOnSubmit(c);
            }
            db.SubmitChanges();
        }

        public static List<UserAction> UserActionsByLevel(User user, Int32 level, double timeNow)
        {
            List<UserAction> result = new List<UserAction>();
            List<Action> source = Action.GetLevelActions(level);
            foreach (Action action in source)
            {
                result.Add(new UserAction(user.id, action, timeNow));
            }
            return result;
        }

        public static List<UserAction> UserActionsByHQlvl(User user, Int32 HQlevel, double timeNow)
        {
            List<UserAction> result = new List<UserAction>();
            List<Action> source = Action.GetHQLevelActions(HQlevel);
            foreach (Action action in source)
            {
               result.Add(new UserAction(user.id, action, timeNow));
            }
            return result;
        }
        
        //проверяет и создает персональные акции для клиента
        public static List<UserAction> UserActionsByFunnel(User user, double timeNow)
        {
            List<UserAction> result = new List<UserAction>();
            List<Action> source = Action.GetTimeActions(timeNow, user);
            source.RemoveAll(o => o.HQLevel > user.Tier);
            var tanks = source.FindAll(o => o.offerTypeId == (int)Action.OfferType.Tank);
            // choose one best tank            
            if (tanks.Count > 1)
            {
                var off = tanks.OrderBy(a => a.HQLevel).Last();
                source.RemoveAll(o => o.offerTypeId == (int)Action.OfferType.Tank);
                source.Add(off);
            }
            foreach (Action offer in source)
            {
                UserAction tmp = new UserAction(user.id, offer.uniqueId);
                if (tmp.id > 0) continue;
                if (offer.offerTypeId == (int)Action.OfferType.Tank || user.CanSetOffer(offer.name) || offer.offerTypeId == (int)Action.OfferType.None)                
                    result.Add(new UserAction(user.id, offer, timeNow));           
            }
            return result;
        }       

        public static List<UserAction> UserActionsByDay(User user, double timeNow)
        {
            var db = new TanksDBDataContext();
            var list = Query.GetUserActions(db, user.id, timeNow).ToList();                     
            var result = new List<UserAction>();
            if (list.Count == 0 || (list.Count == 1 && list.FirstOrDefault().offerType == 8))
            {
                Random rnd = new Random();
                var offerList = Action.GetUserTierActions(user.Tier);
                var cnt = Math.Min(rnd.Next(offerList.Count), offerList.Count - 1);
                if (cnt < 0) return result;
                var offer = offerList[cnt];                
                result.Add(new UserAction(user.id, offer, timeNow));                
            }
            else
            {                
                foreach (var offer in list)
                {
                    result.Add(new UserAction().From(offer));
                }
            }
            return result;
        }

        public static string GetUserActions(Int32 userId, double timeNow)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserActions> custs = Query.GetUserActions(db, userId, timeNow);
            //return JsonConvert.SerializeObject(custs.ToArray(), Formatting.None, new UserActionsArrayConverter());
            var arr = custs.ToArray();
            var list = new List<UserAction>();
            foreach (var element in arr)
            {
                list.Add(new UserAction().From(element));
            }
            return JsonConvert.SerializeObject(list);
        }

        public static int GetUserDiscountByShopType(int userId, UserMarket userMarket, double timeNow)
        {
            var itemService = new ItemService();
            var itemParameters = itemService.GetItemParameters(userMarket.itemId);
            if (itemParameters == null)
                return 0;

            if (itemParameters.type == UserItem.Type.ShopItem)
            {
                itemParameters = itemService.GetItemParameters(itemParameters.itemConfig.param);
                if (itemParameters == null)
                    return 0;
            }

            ItemType itemType;
            if (!ActionsData.TryGetValue(itemParameters.type, out itemType))
                return 0;

            var db = new TanksDBDataContext();
            var custs = Query.GetUserActionsByOfferType(db, userId, userMarket.itemId, "[" + (int)itemType + "]", userMarket.gold, userMarket.money, timeNow);
            var userAction = Enumerable.FirstOrDefault(custs.Select(acs => new UserAction().From(acs)));            
            return userAction == null ? 0 : userAction.discount;
        }

        public static PurchaseResult Purchase(List<UserAction> list, User user, double timeNow)
        {
            var result = new PurchaseResult();
            ItemService itsv = new ItemService();
            var userAction = list.FirstOrDefault(a => a.endTime > timeNow);
            {
                if (userAction.isPurchase)  // for Hard currency
                {
                    var itemType = JsonConvert.DeserializeObject<int[]>(userAction.itemType);
                    var itemId = JsonConvert.DeserializeObject<int[]>(userAction.itemId);
                    var amount = JsonConvert.DeserializeObject<int[]>(userAction.amount);
                    int k = 0;
                    foreach (var it in itemType)
                    {
                        switch (it)
                        {
                            case (int)ItemType.AddBuilder:
                                user.Flags = Util.AddType(user.Flags, (int)Flag.ThirdBuildingQueue);
                                break;
                            case (int)ItemType.Gold:
                                user.Gold += amount[k];
                                user.VIPgold += amount[k];
                                new Gold(user, "StarterPack", userAction.actionUnique, (int)(amount[k]));
                                break;
                            case (int)ItemType.Money:
                                user.AddMoney(amount[k]);
                                break;
                            case (int)ItemType.Details:
                                user.AddDetails(amount[k]);
                                break;
                            case (int)ItemType.Item:                                
                                result.ids.Add(ItemService.AddItem(user.id, itemId[k], amount[k]));
                                break;
                            case (int)ItemType.Tank:
                                UserUnit.CreateUserUnit(result, itemId[k], false, user, 0, 0);
                                break;
                            case (int)ItemType.Crew:
                                CrewService cs = new CrewService();
                                result.crew.Add(cs.CreateCrewById(user, itemId[k]));
                                break;
                            case (int)ItemType.TankCrew:
                                // second parameter must be crew!!!                                 
                                UserUnit.CreateUserUnit(result, itemId[k], true, user, itemId[k + 1], itemId[k]);
                                break;
                            case (int)ItemType.VIPSubscription:
                                {
                                    double n = (double)amount[k];
                                    int[] data = user.GetVIPData();
                                    if (user.VIPsubscription > timeNow)
                                    {
                                        user.VIPsubscription += n * 86400000;
                                    }
                                    else user.VIPsubscription = timeNow + n * 86400000;
                                }
                                break;
                        }
                        k++;
                    }
                    if (userAction.counter == 1)
                    {
                        userAction.endTime = timeNow;
                        userAction.Saving();
                    }
                    user.Saving();
                }
            }
            return result;
        }

        public static PurchaseResult PurchaseForGold(User user, double timeNow, string actionName)
        {
            var result = new PurchaseResult();

            var actions = GetByName(user.id, actionName, timeNow, true);
            if (actions.Count == 0)
                return result;

            var userAction = actions.FirstOrDefault();
            var price = userAction.price - (userAction.price * userAction.discount / 100f);
            if (user.Gold < price)
                return result;

            var itemType = JsonConvert.DeserializeObject<int[]>(userAction.itemType);
            var itemId = JsonConvert.DeserializeObject<int[]>(userAction.itemId);
            var amount = JsonConvert.DeserializeObject<int[]>(userAction.amount);
            int k = 0;
            string message = "";
            Flag flag = Flag.None;
            if (mapActionName2Flag.TryGetValue(userAction.name, out flag))
                user.Flags = Util.AddType(user.Flags, (int)flag);
                               
            foreach (var it in itemType)
            {
                switch (it)
                {
                    case (int)ItemType.Tank:
                        {
                            message = "user_action_tank";
                            UserUnit.CreateUserUnit(result, itemId[k], false, user, 0, 0);                            
                            var researchService = new ResearchService();
                            researchService.ResearchUnitForFree(user.id, itemId[k], timeNow);
                            break;
                        }
                    case (int)ItemType.Crew:
                        {
                            message = "user_action_crew";
                            var cs = new CrewService();
                            result.crew.Add(cs.CreateCrewById(user, itemId[k]));
                            break;
                        }
                    case (int)ItemType.TankCrew:
                        {
                            message = "user_action_tankcrew";
                            UserUnit.CreateUserUnit(result, itemId[k], true, user, itemId[k + 1], itemId[k]);
                            break;
                        }
                    case (int)ItemType.Item:
                        {
                            result.ids.Add(ItemService.AddItem(user.id, itemId[k], amount[k]));
                            break;
                        }
                    case (int)ItemType.Details:
                        {
                            // ADD parts to user
                            user.AddDetails(amount[k]);
                            break;
                        }
                    case (int)ItemType.Books:
                        {
                            //like items
                            // books
                            break;
                        }
                    case (int)ItemType.Components:
                        {
                            //components
                            break;
                        }
                }
                k++;
            }
            if (userAction.counter == 1)
            {
                userAction.endTime = timeNow;
                userAction.Saving();
            }
            if (price > 0) new Gold(user, message, 0, -price);
            user.Gold -= price;
            user.Saving();
            return result;
        }

        // они при апгрейде HQ создаются сами, не юзать
        /*
        public static UserAction AddTankTierOffer(int HQLevel, int userId)
        {
            var source = Action.GetHQLevelActions(HQLevel); // tanktier offer
            var off = source.FirstOrDefault(c => c.item > 0);
            if (off == null) return null;
            var offer = new UserAction(userId, off, Util.GetMs());
            return offer;
        }
         * */
                
        // для создания одиночных акций по запросу с клиента. после запроса добавить флаг на клиенте
        public static UserAction GenerateUserPersonalOffer(User user, int limitType, double timeNow)
        {
            switch ((Action.OfferLimitType)limitType)
            {
                case Action.OfferLimitType.LowGold:
                    break;
                case Action.OfferLimitType.Components:
                    break;
                case Action.OfferLimitType.Books:
                    break;
            }
            /*var HQlevel = (user.Tier * 2 - 1);
            var db = new TanksDBDataContext();
            if (HQlevel < 5) return null;    // no offers for noobs
            if (HQlevel > 18) HQlevel = 18;  //limit to 10 tier
            var source = Action.GetHQLevelActions(HQlevel);
            var off = source.FirstOrDefault(c => c.itemId > 0);
            if (off == null) return null;   //if not found
            var custs = Query.GetUserActionsItemId(db, user.id, off.itemType, off.itemId, timeNow); // take user offers
            var res = custs.FirstOrDefault();
            var offer = new UserAction();
            if (res == null)
            {
                offer = AddTankTierOffer(HQlevel, user.id);
            }
            else
                offer.From(res);

            offer.startTime = Util.GetMs();
            offer.endTime = offer.startTime + 172800000; // 2 days
            var price = (int)Math.Round(offer.amount / ((100f - offer.discount) / 100f));
            //calculate new price
            var newPrice = 0;
            if (gold > offer.amount) newPrice = offer.amount;
            else
            {
                var delta = offer.amount - gold;
                if (delta > 2100 && (price / 2) - 2100 < gold) newPrice = gold + price / 10;
                else newPrice = (int)Math.Round(((100f - (offer.discount + 5f)) / 100f) * price);
            }
            offer.amount = newPrice;
            offer.discount = price == 0 ? 0 : (int)(100 - (newPrice / (double)price) * 100f);
            return offer;*/
            return null;
        }
    }

    public class PurchaseResult
    {
        public UserUnit tank;
        public List<UserCrew> crew = new List<UserCrew>();
        public List<int> ids = new List<int>();
        public PurchaseResult()
        {

        }
    }
}