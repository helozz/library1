using System;
using System.Collections.Generic;
namespace TW
{
    static class IListExtensions
    {
        public static void Shuffle<T>(this IList<T> list, Random random)
        {
            for (int i = list.Count; i > 1; i--)
            {
                int k = random.Next(i);
                T temp = list[k];
                list[k] = list[i - 1];
                list[i - 1] = temp;
            }
        }
    }
}