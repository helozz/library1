using System;
using System.Collections.Generic;
using Newtonsoft.Json;
using TW;

public class ChestOnUseItemHandler : AbstractOnUseItemHandler<List<ChestOnUseItemHandler.ChestItem>>
{
    public ChestOnUseItemHandler(string parametrs)
    {
        data = ParseParameters(parametrs);
    }

    public override Error CanUse(User user, ItemParameters param, double time)
    {
        foreach (ChestItem chestItem in data)
        {
            foreach (var bonus in chestItem.ListBonus(user))
            {
                var result = user.CanAddBonus(bonus, time);
                if (result != Error.OK)
                    return result;
            }
        }

        return Error.OK;
    }

    public override void Process(User user, ItemParameters param, Dictionary<int, string> resultResponseBuffer)
    {
        var chestItem = Unpack(data);

        var result = new List<Bonus>();
        foreach (var bonus in chestItem.ListBonus(user))
        {
            result.Add(user.AddBonus(bonus, "chest_bonus_" + param.type));
        }

        resultResponseBuffer.Add(GetId(), Util.ClearJson(Util.ToJson(result)));
    }

    private List<ChestItem> ParseParameters(string parametrs)
    {
        return JsonConvert.DeserializeObject<List<ChestItem>>(parametrs);
    }

    private ChestItem Unpack(List<ChestItem> items)
    {
        var roll = new Random().NextDouble();

        double total = 0;
        foreach (var item in items)
            total += item.weight;

        double current = 0;
        foreach (var item in items)
        {
            current += item.weight;
            if (current / total > roll)
                return item;
        }
        return null;
    }
    public class ChestItem
    {
        public double weight;
        public List<Bonus> bonus;
        public List<Bonus> premiumBonus;

        public ChestItem()
        {
        }

        public List<Bonus> ListBonus(User user)
        {
            return user.IsPremium && premiumBonus != null && premiumBonus.Count > 0 ? premiumBonus : bonus;
        }
    }
}

