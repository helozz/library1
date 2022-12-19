using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;

namespace TW
{
    /// <summary>
    /// Сводное описание для Action
    /// </summary>
    public class Action
    {
        public enum ShopOfferType
        {
            None = 0,
            Single = 1,
            GroupMoney = 2,
            GroupGold = 3,
            BeginnerPack = 4
        }

        public enum OfferType
        {
            None = 0,
            Tank = 1,
            TankWithParts = 2,
            TankWithCrew = 3,
            BeginnerPack = 4,
            Books = 5,
            Items = 6,
            Crew = 7,
            Gold = 8,
            Parts = 9,
            PowerUps = 10,
            Money = 11,
            VIP = 12,
            VeteranPack = 13,
            ElitePack = 14
        }

        public enum OfferLimitType
        {
            None = 0,
            LowGold,
            HighGold,
            Money,
            Parts,
            Components,
            Books,            
        }
            
        [JsonProperty(PropertyName = "i")]
        public int id;
        [JsonProperty(PropertyName = "q")]
        public int uniqueId;
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
        [JsonProperty(PropertyName = "p")]
        public int priority;
        [JsonProperty(PropertyName = "d")]
        public int discount;
        [JsonProperty(PropertyName = "b")]
        public int bonus;
        [JsonProperty(PropertyName = "it")]
        public int item;
        [JsonProperty(PropertyName = "stp")]
        public int shopType;
        [JsonProperty(PropertyName = "ip")]
        public bool isPurchase;
        [JsonProperty(PropertyName = "pr")]
        public int price;
        [JsonProperty(PropertyName = "c")]
        public int counter;

        //triggers
        [JsonProperty(PropertyName = "st")]
        public double startTrigger;
        [JsonProperty(PropertyName = "et")]
        public double endTrigger;
        [JsonProperty(PropertyName = "du")]
        public double duration;
        [JsonProperty(PropertyName = "h")]
        public int HQLevel;
        [JsonProperty(PropertyName = "ul")]
        public int userLevel;   //levelTrigger             


        static string KEY = "Actions";

        public Action()
        {
        }

        public Action From(Actions c)
        {
            id = c.id;
            uniqueId = c.uniqueId;
            name = c.name;
            startTrigger = c.startTrigger;
            endTrigger = c.endTrigger;
            userLevel = c.levelTrigger;
            duration = c.duration;
            itemType = c.itemType;
            itemId = c.itemId;
            discount = c.discount;
            priority = c.priority;
            item = c.item;
            bonus = c.bonus;
            price = c.price;
            amount = c.amount;
            isPurchase = c.isPurchase;
            counter = c.counter;
            HQLevel = c.HQLevel;            
            shopType = c.shopType;     
            offerTypeId = c.offerType;

            return this;
        }

        public static List<Action> GetAllActions()
        {
            var actions = Caching.Get<List<Action>>(KEY);
            if (actions == null)
            {
                var db = new TanksDBDataContext();
                var custs = Query.ListActions.Invoke(db);
                actions = new List<Action>();
                foreach (Actions aa in custs) actions.Add(new Action().From(aa));
                Caching.Add(KEY, actions, 60);
            }
            return actions;
        }

        public static void DropCache()
        {
            Caching.Remove(KEY);
        }

        public static List<Action> GetLevelActions(Int32 level)
        {
            var acts = GetAllActions();
            List<Action> actions = new List<Action>();
            foreach (Action a in acts) if(a.userLevel == level) actions.Add(a);
            return actions;
        }

        public static List<Action> GetHQLevelActions(Int32 HQlevel)
        {
            var acts = GetAllActions();
            List<Action> actions = new List<Action>();
            foreach (Action a in acts) if (a.HQLevel == HQlevel) actions.Add(a);
            return actions;
        }

        public static List<Action> GetUserTierActions(int tier)
        {
            var acts = GetAllActions();
            var actions = acts.FindAll(a => a.HQLevel == tier && a.startTrigger == 0);            
            return actions;
        }
      
        public static List<Action> GetTimeActions(double timeNow, User user)
        {
            var acts = GetAllActions();
            List<Action> actions = new List<Action>();
            foreach (Action a in acts) if (a.startTrigger <= timeNow && a.endTrigger > timeNow && a.HQLevel < user.Tier) actions.Add(a);
            return actions;
        }

        public static string GetActions()
        {
            var gs = new StringBuilder("[");
            var acts = GetAllActions();
            List<Action> actions = new List<Action>();
            foreach (Action a in acts) if (a.userLevel > 0) actions.Add(a);

            var cn = 0;
            foreach (var c in actions)
            {
                if (cn > 0) gs.Append(",");
                gs.Append(Util.ToJson(c));                
                cn++;
            }
            gs.Append("]");
            return gs.ToString();
        }

    }
}