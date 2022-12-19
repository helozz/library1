public class DataHolder<T>
{
    public T Value { get; set; }

    public DataHolder(T value)
    {
        Value = value;
    }
}

public class DataHolder<T1, T2>
{
    public T1 Value1 { get; set; }
    public T2 Value2 { get; set; }

    public DataHolder()
    {
    }

    public DataHolder(T1 value1, T2 value2)
    {
        Value1 = value1;
        Value2 = value2;
    }
}

public class DataHolder<T1, T2, T3>
{
    public T1 Value1 { get; set; }
    public T2 Value2 { get; set; }
    public T3 Value3 { get; set; }

    public DataHolder(T1 value1, T2 value2, T3 value3)
    {
        Value1 = value1;
        Value2 = value2;
        Value3 = value3;
    }
}