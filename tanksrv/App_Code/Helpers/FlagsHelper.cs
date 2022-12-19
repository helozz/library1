public class FlagsHelper
{
    public static bool HasFlag(int mask, int flag)
    {
        return (mask & (1 << flag)) != 0;
    }

    public static int Add(int mask, int flag)
    {
        return (mask | (1 << flag));
    }

    public static int Remove(int mask, int flag)
    {
        return (mask & ~(1 << flag));
    }
}