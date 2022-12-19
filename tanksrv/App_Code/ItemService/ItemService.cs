using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;
using Newtonsoft.Json.Utilities;
using TW;

public class ItemService : AbstractService
{
    private const string CacheItemSettings = "ItemSettings";
    private const string CacheItemSettingsJson = "ItemSettingsJson";

    private const double CacheKeepMinutes = 60;

    public Dictionary<int, ItemParameters> Load()
    {
        var itemSettings = Caching.Get<Dictionary<int, ItemParameters>>(CacheItemSettings);
        if (itemSettings != null)
        {
            return itemSettings;
        }

        itemSettings = new Dictionary<int, ItemParameters>();

        var db = new TanksDBDataContext();
        var items = Query.ListItems(db);
        var itemConfigs = new List<ItemConfig>();
        foreach (var item in items)
        {
            var itemConfig = JsonConvert.DeserializeObject<ItemConfig>(item.json);
            itemConfig.id = item.id;

            var itemParameters = new ItemParameters((UserItem.Type)Enum.Parse(typeof(UserItem.Type), itemConfig.type), itemConfig);
            foreach (var handlerConfig in itemConfig.ListOnBeforeUseHandlers())
            {
                itemParameters.AddOnBeforeUseHandler((IOnBeforeUseItemHandler)ReflectionUtils.CreateInstance(Type.GetType(handlerConfig.name), handlerConfig.args));
            }

            foreach (var handlerConfig in itemConfig.ListOnPostUseHandlers())
            {
                itemParameters.AddOnPostUseHandler((IOnPostUseItemHandler)ReflectionUtils.CreateInstance(Type.GetType(handlerConfig.name), handlerConfig.args));
            }

            foreach (var handlerConfig in itemConfig.ListOnUseHandlers())
            {
                itemParameters.AddOnUseHandler((IOnUseItemHandler)ReflectionUtils.CreateInstance(Type.GetType(handlerConfig.name), handlerConfig.args));
            }

            itemSettings.Add(item.id, itemParameters);
            itemConfigs.Add(itemConfig);
        }


        foreach (var item in itemSettings)
        {
            switch (item.Value.type)
            {
                case UserItem.Type.ShopItem:
                    var loadProcessor = new AfterLoadShopItemProcessor(item.Value.itemConfig, itemSettings);
                    loadProcessor.onLoad();

                    item.Value.AddOnUseHandler(new ShopItemOnUseItemHandler());
                    break;

            }
        }

        Caching.Add(CacheItemSettings, itemSettings, CacheKeepMinutes);
        Caching.Add(CacheItemSettingsJson, JsonConvert.SerializeObject(itemConfigs), CacheKeepMinutes);

        return itemSettings;
    }

    public StringBuilder ValidateItemSettings()
    {
        var jsonResult = new StringBuilder();

        var db = new TanksDBDataContext();
        var items = Query.ListItems(db);

        foreach (var item in items)
        {
            try
            {
                var itemConfig = JsonConvert.DeserializeObject<ItemConfig>(item.json);
                itemConfig.id = item.id;

                var itemParameters = new ItemParameters((UserItem.Type)Enum.Parse(typeof(UserItem.Type), itemConfig.type), itemConfig);

                foreach (var handlerConfig in itemConfig.ListOnUseHandlers())
                {
                    itemParameters.AddOnUseHandler((IOnUseItemHandler)ReflectionUtils.CreateInstance(Type.GetType(handlerConfig.name), handlerConfig.args));
                }
            }
            catch (Exception ex)
            {
                jsonResult.Append("Invalid json id:" + item.id + ", " + item.json).Append("\n\n");
            }
        }

        return jsonResult;
    }

    public Error UseItemById(User user, int id, double time, out ItemUseRequestResult itemUseRequestResult)
    {
        UserItem userItemResult;
        return UseItemById(user, id, time, out userItemResult, out itemUseRequestResult);
    }

    public Error UseItemById(User user, int id, double time, out UserItem resultUserItem, out ItemUseRequestResult itemUseRequestResult, List<UserItem.Type> requiredTypes = null)
    {
        resultUserItem = null;
        itemUseRequestResult = null;

        if (user == null)
            return Error.USER_NOT_FOUND;

        var userItem = GetUserItemById(user.id, id);
        if (userItem == null)
            return Error.ITEM_NOT_FOUND;

        if (userItem.amount <= 0)
            return Error.LACK_ITEM;

        var itemParameters = GetItemParameters(userItem.itemId);
        if (itemParameters == null)
            return Error.ITEM_NOT_FOUND;

        if (requiredTypes != null && !requiredTypes.Contains(itemParameters.type))
            return Error.INCORRECT_VALUE;

        foreach (var handler in itemParameters.ListOnUseHandlers())
        {
            var result = handler.CanUse(user, itemParameters, time);
            if (result != Error.OK)
                return result;
        }

        if (!ConsumeItem(user.id, id))
            return Error.LACK_ITEM;

        var resultResponseBuffer = new Dictionary<int, string>();
        foreach (var handler in itemParameters.ListOnUseHandlers())
        {
            handler.Process(user, itemParameters, resultResponseBuffer);
        }

        itemUseRequestResult = new ItemUseRequestResult { data = resultResponseBuffer };
        resultUserItem = userItem;
        user.Saving();

        return Error.OK;
    }

    public Error UseItemByItemId(User user, int itemId, double time, int amount, List<UserItem.Type> requiredTypes = null)
    {
        if (user == null)
            return Error.USER_NOT_FOUND;

        var userItem = GetUserItemByItemId(user.id, itemId);
        if (userItem == null)
            return Error.ITEM_NOT_FOUND;

        if (userItem.amount <= 0 || userItem.amount < amount)
            return Error.LACK_ITEM;

        var itemParameters = GetItemParameters(userItem.itemId);
        if (itemParameters == null)
            return Error.ITEM_NOT_FOUND;

        if (requiredTypes != null && !requiredTypes.Contains(itemParameters.type))
            return Error.INCORRECT_VALUE;

        foreach (var handler in itemParameters.ListOnUseHandlers())
        {
            var result = handler.CanUse(user, itemParameters, time);
            if (result != Error.OK)
                return result;
        }

        if (!ConsumeItem(user.id, userItem.id, amount))
            return Error.LACK_ITEM;

        foreach (var handler in itemParameters.ListOnUseHandlers())
        {
            handler.Process(user, itemParameters, null);
        }

        user.Saving();

        return Error.OK;
    }

    //Airfield
    public Error ClaimDailyReward(User user, double timeNow, out ItemUseRequestResult itemUseRequestResult)
    {
        itemUseRequestResult = null;

        if (user == null)
            return Error.USER_NOT_FOUND;

        var userBuilding = new UserBuilding(user.id, BuildingType.Airfield);
        if (userBuilding.id == 0)
            return Error.NOT_SUCH_A_BUILDING;

        if (Util.GetMs() < (user.dailyRewardTime + Define.DailyRewardTimeMs[user.dailyRewardIndex]))
            return Error.INCORRECT_VALUE;

        int dailyRewardsByBuildingLevel = Define.DailyRewards[Math.Min(user.Tier, Define.DailyRewards.Length - 1)];
        var unpackResult = UnpackItem(user, dailyRewardsByBuildingLevel, timeNow, out itemUseRequestResult);
        if (unpackResult != Error.OK)
            return unpackResult;

        user.dailyRewardTime = Util.GetMs();
        user.dailyRewardIndex = user.dailyRewardIndex >= Define.DailyRewardTimeMs.Length - 1 ? 0 : user.dailyRewardIndex + 1;
        user.Saving();

        return Error.OK;
    }

    public Error UnpackItem(User user, int itemId, double timeNow, out ItemUseRequestResult itemUseRequestResult)
    {
        itemUseRequestResult = null;

        var itemParameters = GetItemParameters(itemId);
        if (itemParameters == null)
            return Error.ITEM_NOT_FOUND;

        foreach (var handler in itemParameters.ListOnUseHandlers())
        {
            var result = handler.CanUse(user, itemParameters, timeNow);
            if (result != Error.OK)
                return result;
        }

        var resultResponseBuffer = new Dictionary<int, string>();
        foreach (var handler in itemParameters.ListOnUseHandlers())
        {
            handler.Process(user, itemParameters, resultResponseBuffer);
        }

        itemUseRequestResult = new ItemUseRequestResult { data = resultResponseBuffer };

        return Error.OK;
    }

    public Error SellItem(User user, int id, int amount)
    {
        if (user == null)
            return Error.USER_NOT_FOUND;

        var userItem = GetUserItemById(user.id, id);
        if (userItem == null)
            return Error.ITEM_NOT_FOUND;

        if (userItem.amount <= 0 || userItem.amount < amount)
            return Error.LACK_ITEM;

        var itemParameters = GetItemParameters(userItem.itemId);
        if (itemParameters == null)
            return Error.ITEM_NOT_FOUND;

        if (!ConsumeItem(user.id, id, amount))
            return Error.LACK_ITEM;

        user.AddMoney(itemParameters.itemConfig.price * amount);
        user.Saving();
        return Error.OK;
    }

    public static int AddItem(int userId, int itemId, int amount = 1)
    {
        if (itemId == 0 || amount == 0)
            return 0;

        var db = new TanksDBDataContext();
        var custs = Query.ListUserItemsByItemId(db, userId, itemId);
        var userItem = Enumerable.FirstOrDefault(custs);
        if (userItem != null)
        {
            userItem.amount += amount;
        }
        else
        {
            userItem = new UserItems { userId = userId, itemId = itemId, amount = amount };
            db.UserItems.InsertOnSubmit(userItem);
        }
        db.SubmitChanges();

        return userItem.id;
    }

    public UserItem GetUserItemById(int userId, int id)
    {
        var db = new TanksDBDataContext();
        var custs = Query.ListUserItemsById(db, userId, id);

        return Enumerable.FirstOrDefault(custs.Select(userItems => new UserItem(userItems)));
    }

    public UserItem GetUserItemByItemId(int userId, int itemId)
    {
        var db = new TanksDBDataContext();
        var custs = Query.ListUserItemsByItemId(db, userId, itemId);
        return Enumerable.FirstOrDefault(custs.Select(userItems => new UserItem(userItems)));
    }

    public List<UserItem> GetItemsByUserId(int userId)
    {
        var db = new TanksDBDataContext();
        var custs = Query.ListUserItems(db, userId);

        var list = new List<UserItem>();
        list.AddRange(custs.Select(userItems => new UserItem(userItems)));

        return list;
    }

    private bool ConsumeItem(int userId, int id, int amount = 1)
    {
        var db = new TanksDBDataContext();
        var custs = Query.ListUserItemsById(db, userId, id);

        var rec = Enumerable.FirstOrDefault(custs);
        if (rec == null) return false;
        if (rec.amount < amount) return false;
        if (rec.amount == amount)
        {
            db.UserItems.DeleteOnSubmit(rec);
        }
        else
        {
            rec.amount -= amount;
        }
        db.SubmitChanges();
        return true;
    }

    public ItemParameters GetItemParameters(int itemId)
    {
        ItemParameters result;
        Load().TryGetValue(itemId, out result);
        return result;
    }

    public void DropCache()
    {
        Caching.Remove(CacheItemSettings);
        Caching.Remove(CacheItemSettingsJson);
    }

    public string ItemsSettingsToJson()
    {
        Load();
        return Caching.Get<string>(CacheItemSettingsJson);
    }

    public string UserItemsToJson(int userId)
    {
        var items = GetItemsByUserId(userId);
        var serializeObject = JsonConvert.SerializeObject(items);
        return serializeObject;
    }

    public string DailyRewardSettingsToJson()
    {
        return Util.ToJson(new DailyRewardSettings { rewards = Define.DailyRewards, timeMs = Define.DailyRewardTimeMs });
    }

    private int ExchangeItem(int userId, int id, int amount, int newId)
    {        
        int itemId = 0;
        if (amount > 10000)
            amount = 10000;
        var db = new TanksDBDataContext();
        var custs = Query.ListUserItemsByItemId(db, userId, id);

        var rec = Enumerable.FirstOrDefault(custs);
        if (rec == null) return itemId;
        if (rec.amount < amount) return itemId;
        if (rec.amount == amount)
        {
            db.UserItems.DeleteOnSubmit(rec);
        }
        else
        {
            rec.amount -= amount;
        }
        db.SubmitChanges();        
        itemId = AddItem(userId, newId, amount);                                    
        return itemId;
    }

    public Error ExchangeItemForGold(User user, int id, int amount, int newId)
    {
        if (user.Gold < Define.Get(Def.ExchangeComponentPrice))
            return Error.LACK_GOLD;
        if (newId == 0 || GetItemParameters(id).type != UserItem.Type.EvolvePart || GetItemParameters(newId).type != UserItem.Type.EvolvePart) // if user not selected
            return Error.INCORRECT_VALUE;
        var itemId = ExchangeItem(user.id, id, amount, newId);
        if (itemId > 0)
        {
            user.Gold -= Define.Get(Def.ExchangeComponentPrice);
            new Gold(user, "Exchange", id, -Define.Get(Def.ExchangeComponentPrice));
            user.Saving();
        }
        return Error.OK.SetData(itemId.ToString());
    }
}

public class ItemUseRequestResult
{
    public Dictionary<int, string> data;
}

public class DailyRewardSettings
{
    public int[] rewards;
    public int[] timeMs;

    public DailyRewardSettings()
    {
    }
}
