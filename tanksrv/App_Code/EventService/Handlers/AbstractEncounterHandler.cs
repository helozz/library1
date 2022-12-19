using System;
using System.Collections.Generic;
using TW;

public abstract class AbstractEncounterHandler<T> : IEncounterHandler
{
    protected T data;

    private static readonly Dictionary<Type, int> handlersId = new Dictionary<Type, int>
    {
        {typeof(ResourcesEncounterHandler), 1},
        {typeof(ScoutEnemyBonusEncounterHandler), 2}
    };

    protected int GetId()
    {
        int result;
        if (!handlersId.TryGetValue(GetType(), out result))
            throw new ArgumentException("Add id for handler:" + GetType() + " into AbstractEncounterHandler!");

        return result;
    }

    public virtual void Do(User user, EventParameters eventParameters, Dictionary<int, string> resultResponseBuffer, Dictionary<Type, object> handlersResult)
    {
        //not required
    }

    public virtual Error CanUse(User user, double timeNow)
    {
        return Error.OK;
    }

    public virtual bool IsUnblockable()
    {
        return true;
    }
}
