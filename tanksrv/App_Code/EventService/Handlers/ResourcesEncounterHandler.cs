using System;
using System.Collections.Generic;
using TW;

public class ResourcesEncounterHandler : AbstractEncounterHandler<List<int>>
{
    public ResourcesEncounterHandler(string parametrs)
    {
        data = ParseParameters(parametrs);
    }

    public override void Do(User user, EventParameters eventParameters, Dictionary<int, string> resultResponseBuffer, Dictionary<Type, object> handlersResult)
    {
        //fuel, reputation, money, parts, items
        var value = data[0]; //fuel
        if (value > 0)
            new UserBuilding(user.id, BuildingType.EventTower).SetFullFuel(eventParameters.timeNow, user);
        else if (value < 0)
            new UserService().SpendFuel(user, BuildingType.EventTower, Math.Abs(value), eventParameters.timeNow);

        value = data[1]; //reputation
        if (value > 0)
            user.eventReputation += value;
        else if (value < 0)
            user.eventReputation = Math.Max(user.eventReputation - Math.Abs(value), 0);

        value = data[2]; //money
        if (value > 0)
            user.AddMoney(value);
        else if (value < 0)
            user.SpendMoney(Math.Abs(value));

        value = data[3]; //parts
        if (value > 0)
            user.AddDetails(value);
        else if (value < 0)
            user.SpendDetails(Math.Abs(value));

        value = data[4]; //items
        var amount = data[5];

        if (value > 0)
            resultResponseBuffer.Add(GetId(), "" + ItemService.AddItem(user.id, value, amount)); //Util.ClearJson(Util.ToJson(result)));
        else if (value < 0)
            new ItemService().UseItemByItemId(user, value, eventParameters.timeNow, Math.Abs(value));
    }

    public override Error CanUse(User user, double timeNow)
    {
        //fuel, reputation, money, parts, items
        var value = data[0]; //fuel
        if (value < 0)
        {
            var userBuilding = new UserBuilding(user.id, BuildingType.EventTower);
            var building = new Building(userBuilding.GetLevel(timeNow), BuildingType.EventTower);

            if (userBuilding.GetFuel(user, timeNow, building) < Math.Abs(value))
                return Error.LACK_FUEL;
        }

        value = data[1]; //reputation
        if (value < 0 && user.eventReputation < Math.Abs(value))
            return Error.LACK_EVENT_REPUTATION;

        value = data[2]; //money
        if (value < 0 && user.GetMoney() < Math.Abs(value))
            return Error.LACK_MONEY;

        value = data[3]; //parts
        if (value < 0 && user.GetDetails() < Math.Abs(value))
            return Error.LACK_PARTS;

        value = data[4]; //items
        var amount = data[5];

        var userItem = new ItemService().GetUserItemByItemId(user.id, value);
        if (amount < 0 && userItem != null && userItem.amount < Math.Abs(amount))
            return Error.LACK_ITEM;

        return Error.OK;
    }

    private List<int> ParseParameters(string parametrs)
    {
        var args = parametrs.Split(',');

        var result = new List<int>();
        foreach (var arg in args)
        {
            result.Add(int.Parse(arg.Trim()));
        }

        return result;
    }
}
