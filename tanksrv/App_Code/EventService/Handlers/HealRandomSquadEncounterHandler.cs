using System;
using System.Collections.Generic;
using Newtonsoft.Json;
using TW;

public class HealRandomSquadEncounterHandler : AbstractEncounterHandler<object>
{
    public HealRandomSquadEncounterHandler(string parametrs)
    {
        //not required        
    }

    public override void Do(User user, EventParameters eventParameters, Dictionary<int, string> resultResponseBuffer, Dictionary<Type, object> handlersResult)
    {
        if (string.IsNullOrEmpty(eventParameters.userMissionEvent.squadData))
            return;

        var squadData = JsonConvert.DeserializeObject<List<UnitState>>(eventParameters.userMissionEvent.squadData);
        squadData.Shuffle(new Random());

        var eventService = new EventService();
        foreach (var unitState in squadData)
        {
            if (unitState.isBot || unitState.hp <= 0)
                continue;

            var defaultUnit = eventService.GetConfigByDefaultUnitId(unitState.defaultUnitId);
            unitState.hp = defaultUnit.MaxHp;
            break;
        }
    }
}
