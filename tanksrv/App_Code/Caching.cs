using System;
using System.Runtime.Caching;

namespace TW
{
    public class Caching
    {
        private static readonly ObjectCache Cache = MemoryCache.Default;
        private const int DefaultCacheKeepMinutes = 10;

        public static string Key(string prefix, int suffix)
        {
            return prefix + suffix;
        }

        public static bool Add(string key, object value, double keepAliveMinutes = -1)
        {
            var ttl = DateTime.Now.AddMinutes(keepAliveMinutes >= 0 ? keepAliveMinutes : DefaultCacheKeepMinutes);
            if (value == null)
                return false;

            return Cache.Add(key, value, ttl);
        }

        public static void AddOrUpdate(string key, object value, double keepAliveMinutes = -1)
        {
            var ttl = DateTime.Now.AddMinutes(keepAliveMinutes >= 0 ? keepAliveMinutes : DefaultCacheKeepMinutes);
            if (value == null)
                return;

            Cache.Set(key, value, ttl);
        }

        public static T Get<T>(string key)
        {
            var result = Cache.Get(key);
            if (result == null)
            {
                if (typeof(T).IsAssignableFrom(typeof(int)))
                {
                    return (T)(object)0;
                }
            }
            return (T)result;
        }

        public static bool Remove(string key)
        {
            return Cache.Remove(key) != null;
        }
    }
}