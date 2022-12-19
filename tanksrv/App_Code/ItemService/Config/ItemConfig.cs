using System.Collections.Generic;

public class ItemConfig
{
    public int id;
    public string type;
    public int tier;
    public string name;
    public int price;       //sell
    public int param;
    public int customId;    //for custom configs (like power ups)
    public bool active;
    public int money;       // buy
    public int gold;        // buy
    public int amount = 1;

    public List<HandlerConfig> OnBeforeUse;
    public List<HandlerConfig> OnPostUse;
    public List<HandlerConfig> OnUse;

    public ItemConfig()
    {
    }

    public List<HandlerConfig> ListOnBeforeUseHandlers()
    {
        return OnBeforeUse ?? new List<HandlerConfig>();
    }

    public List<HandlerConfig> ListOnPostUseHandlers()
    {
        return OnPostUse ?? new List<HandlerConfig>();
    }

    public List<HandlerConfig> ListOnUseHandlers()
    {
        return OnUse ?? new List<HandlerConfig>();
    }
}

public class HandlerConfig
{
    public string name;
    public string args;

    public HandlerConfig()
    {
    }
}