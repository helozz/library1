using System.Collections.Generic;
using TW;

public class AddResourcesOnUseItemHandler : AbstractOnUseItemHandler<int[]>
{
    public AddResourcesOnUseItemHandler(string parametrs)
    {
        data = ParseParameters(parametrs);
    }

    public override void Process(User user, ItemParameters param, Dictionary<int, string> resultResponseBuffer)
    {
        user.AddMoney(data[0]);
        user.AddDetails(data[1]);
    }

    private int[] ParseParameters(string parametrs)
    {
        var strings = parametrs.Split(',');
        return new[]
        {
            int.Parse(strings[0]),
            int.Parse(strings[1]),
        };
    }
}