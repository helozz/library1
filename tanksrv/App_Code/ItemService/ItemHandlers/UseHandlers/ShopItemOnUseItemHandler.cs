using System.Collections.Generic;
using TW;

public class ShopItemOnUseItemHandler : IOnUseItemHandler
{
    public Error CanUse(User user, ItemParameters param, double time)
    {
        return Error.OK;
    }

    public void Process(User user, ItemParameters param, Dictionary<int, string> resultResponseBuffer)
    {
        ItemService.AddItem(user.id, param.itemConfig.param, param.itemConfig.amount);
    }

}