using System;
using System.Collections.Generic;
using TW;

public class AddBonusEncounterHandler : AbstractEncounterHandler<DataHolder<Cell.BonusType, int>>
{
    public AddBonusEncounterHandler(string parametrs)
    {
        data = ParseParameters(parametrs);
    }

    public override void Do(User user, EventParameters eventParameters, Dictionary<int, string> resultResponseBuffer, Dictionary<Type, object> handlersResult)
    {
        eventParameters.userMissionEvent.AddBonus(data.Value1, data.Value2);
    }

    private DataHolder<Cell.BonusType, int> ParseParameters(string parametrs)
    {
        var args = parametrs.Split(',');
        var bonusType = (Cell.BonusType)Enum.Parse(typeof(Cell.BonusType), args[0].Trim());
        var amount = int.Parse(args[1].Trim());

        return new DataHolder<Cell.BonusType, int>(bonusType, amount);
    }
}
