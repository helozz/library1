using System;
using System.Collections.Generic;
using TW;

public class ScoutEnemyBonusEncounterHandler : AbstractEncounterHandler<object>
{
    public ScoutEnemyBonusEncounterHandler(string parametrs)
    {
        //not required        
    }

    public override void Do(User user, EventParameters eventParameters, Dictionary<int, string> resultResponseBuffer, Dictionary<Type, object> handlersResult)
    {
        var processedCells = new HashSet<UserEventMapState>();
        new EventService().ProcessScoutBonus(Cell.BonusType.ScoutingEnemy, eventParameters, new List<Cell.Type> { Cell.Type.Fight, Cell.Type.Encounter, Cell.Type.EncounterBlocking }, processedCells);

        handlersResult.Add(GetType(), processedCells);
    }
}
