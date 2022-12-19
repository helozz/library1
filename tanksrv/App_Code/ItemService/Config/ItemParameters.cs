using System.Collections.Generic;

public class ItemParameters
{
    public UserItem.Type type;
    public ItemConfig itemConfig;

    private List<IOnBeforeUseItemHandler> OnBeforeUseHandlers;
    private List<IOnPostUseItemHandler> OnPostUseHandlers;
    private List<IOnUseItemHandler> OnUseHandlers;

    public ItemParameters(UserItem.Type type, ItemConfig itemConfig)
    {
        this.type = type;
        this.itemConfig = itemConfig;
    }

    public void AddOnBeforeUseHandler(IOnBeforeUseItemHandler handler)
    {
        Add(handler, ref OnBeforeUseHandlers);
    }

    public void AddOnPostUseHandler(IOnPostUseItemHandler handler)
    {
        Add(handler, ref OnPostUseHandlers);
    }

    public void AddOnUseHandler(IOnUseItemHandler handler)
    {
        Add(handler, ref OnUseHandlers);
    }

    public List<IOnBeforeUseItemHandler> ListOnBeforeUseHandlers()
    {
        return OnBeforeUseHandlers ?? new List<IOnBeforeUseItemHandler>();
    }

    public List<IOnUseItemHandler> ListOnUseHandlers()
    {
        return OnUseHandlers ?? new List<IOnUseItemHandler>();
    }

    public List<IOnPostUseItemHandler> ListOnPostUseHandlers()
    {
        return OnPostUseHandlers ?? new List<IOnPostUseItemHandler>();
    }

    private void Add<T>(T handler, ref List<T> data) where T : IItemHandler
    {
        if (handler == null)
            return;

        if (data == null)
            data = new List<T>();

        data.Add(handler);
    }
}
