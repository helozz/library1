using System;
using System.Collections.Generic;
using TW;

public class StartBattleEncounterHandler : AbstractEncounterHandler<List<int>>
{
    public StartBattleEncounterHandler(string parametrs)
    {
        data = ParseParameters(parametrs);
    }

    public override void Do(User user, EventParameters eventParameters, Dictionary<int, string> resultResponseBuffer, Dictionary<Type, object> handlersResult)
    {
        //not required on server
    }

    private List<int> ParseParameters(string parametrs)
    {
        var result = new List<int>();
        foreach (var arg in parametrs.Split(','))
        {
            result.Add(int.Parse(arg.Trim()));
        }

        return result;
    }

    public override bool IsUnblockable()
    {
        return false;
    }
}
