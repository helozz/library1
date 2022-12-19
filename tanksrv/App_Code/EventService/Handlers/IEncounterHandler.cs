using System;
using System.Collections.Generic;
using TW;

public interface IEncounterHandler
{
    void Do(User user, EventParameters eventParameters, Dictionary<int, string> resultResponseBuffer, Dictionary<Type, object> handlersResult);

    Error CanUse(User user, double timeNow);

    bool IsUnblockable();
}
