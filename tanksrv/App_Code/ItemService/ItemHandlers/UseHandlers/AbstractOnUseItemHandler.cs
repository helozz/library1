
using System;
using System.Collections.Generic;
using TW;

public abstract class AbstractOnUseItemHandler<T> : IOnUseItemHandler
{
    protected T data;

    private static readonly Dictionary<Type, int> handlersId = new Dictionary<Type, int>
    {
        {typeof(ChestOnUseItemHandler), 1},        
        {typeof(AddResourcesOnUseItemHandler), 2},
		{typeof(OrderItemOnUseItemHandler), 3},
    };

    protected int GetId()
    {
        int result;
        if (!handlersId.TryGetValue(GetType(), out result))
            throw new ArgumentException("Add id for handler:" + GetType() + " into AbstractOnUseItemHandler!");

        return result;
    }
    public virtual Error CanUse(User user, ItemParameters param, double time)
    {
        return Error.OK;
    }

    public virtual void Process(User user, ItemParameters param, Dictionary<int, string> resultResponseBuffer)
    {
        //not required
    }
}