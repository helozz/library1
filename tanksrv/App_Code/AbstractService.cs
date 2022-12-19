
using System;
using System.Collections.Generic;
using System.Linq;
using TW;
using Action = System.Action;


public abstract class AbstractService
{
    public DefaultUnit GetConfigByDefaultUnitId(int defaultUnitId)
    {
        var defaultUnits = GetDefaultUnitsConfig();
        DefaultUnit result;

        return defaultUnits != null && defaultUnits.TryGetValue(defaultUnitId, out result) ? result : null;
    }

    public Dictionary<int, DefaultUnit> GetDefaultUnitsConfig()
    {
        var result = Caching.Get<Dictionary<int, DefaultUnit>>(DefaultUnit.DefaultUnitsCache);
        if (result != null)
            return result;

        var db = new TanksDBDataContext();
        var custs = Query.GetDefaultUnits(db);

        result = custs.Select(units => new DefaultUnit(units)).ToDictionary(defaultUnit => defaultUnit.Id);
        Caching.Add(DefaultUnit.DefaultUnitsCache, result);

        return result;
    }

    public void ProcessAction(Action action)
    {
        if (action != null)
            action();
    }

    public void ProcessAction<T>(Action<T> action, T data)
    {
        if (action != null)
            action(data);
    }

    public void ProcessAction<T1, T2>(Action<T1, T2> action, T1 data1, T2 data2)
    {
        if (action != null)
            action(data1, data2);
    }
}