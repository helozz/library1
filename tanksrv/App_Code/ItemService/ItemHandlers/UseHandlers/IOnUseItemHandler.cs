using System.Collections.Generic;
using TW;

public interface IOnUseItemHandler : IItemHandler
{
    Error CanUse(User user, ItemParameters param, double time);

    void Process(User user, ItemParameters param, Dictionary<int, string> resultResponseBuffer);
}
