using System;
using System.Collections.Generic;
using Newtonsoft.Json;
using TW;

public class DamageRandomSquadEncounterHandler : AbstractEncounterHandler<int>
{
    public DamageRandomSquadEncounterHandler(string parametrs)
    {
        data = ParseParameters(parametrs);
    }

    public override void Do(User user, EventParameters eventParameters, Dictionary<int, string> resultResponseBuffer, Dictionary<Type, object> handlersResult)
    {
        if (string.IsNullOrEmpty(eventParameters.userMissionEvent.squadData))
            return;

        var squadData = JsonConvert.DeserializeObject<List<UnitState>>(eventParameters.userMissionEvent.squadData);
        squadData.Shuffle(new Random());

        foreach (var unitState in squadData)
        {
            if (unitState.isBot || unitState.hp <= 0)
                continue;

            unitState.hp = (int)(unitState.hp - (unitState.hp / 100f * data));
            break;
        }
    }

    private int ParseParameters(string parametrs)
    {
        return int.Parse(parametrs.Trim());
    }
}
