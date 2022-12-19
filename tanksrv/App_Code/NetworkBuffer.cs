
using System.Collections.Generic;

public class NetworkBuffer
{
    public Dictionary<string, object> Data;

    public NetworkBuffer()
    {
    }

    public void Add(string key, object data)
    {
        if (Data == null)
            Data = new Dictionary<string, object>();

        Data.Add(key, data);
    }

    public bool IsEmpty()
    {
        return Data == null || Data.Count == 0;
    }
}