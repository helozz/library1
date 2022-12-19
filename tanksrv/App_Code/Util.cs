using System;
using System.Collections.Concurrent;
using System.IO;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace TW
{
    public class Util
    {
        public const int MinuteMs = 60000;
        public const int DayMs = 86400000;

        private const string BATTLE_TAG_CHARS = "123456789BCDFGHJKLMNPQRSTVWXYZ";
        private const string DEFAULT_LOCALE = "EN";
        private const string LOCALE_KEY_SEP = ":";

        private static readonly DateTime UnixTimeStart = new DateTime(1970, 1, 1, 0, 0, 0);
        private static readonly JsonConverter[] JsonConverters;
        private static StreamWriter log;
        private static StreamWriter pLog;
        private static StreamWriter uLog;
        private static readonly ConcurrentDictionary<string, string> TRANS = new ConcurrentDictionary<string, string>();
        private static object lockObject = new object();

        private class TransHolder
        {
            public string lang;
            public string key;
            public string tr;
        }

        static Util()
        {
            // initiate and load all Json converters
            var list = typeof(Util).Assembly.GetTypes().Where(type => type.IsSubclassOf(typeof(JsonConverter)) && !type.IsAbstract);
            JsonConverters = list.Select(el => (JsonConverter)Activator.CreateInstance(el)).ToArray();

            // load translations
            var trans = File.ReadAllText(SystemDefine.LocaleFolderL + "locale.json");
            var tr = JsonConvert.DeserializeObject<TransHolder[]>(trans);
            foreach (var holder in tr)
            {
                TRANS.TryAdd(holder.lang + LOCALE_KEY_SEP + holder.key, holder.tr);
            }
        }

        public static long GetMs()
        {
            return (long)(DateTime.UtcNow - UnixTimeStart).TotalMilliseconds;
        }

        public static double GetTime()
        {
            return Math.Round((DateTime.UtcNow - UnixTimeStart).TotalMilliseconds, 0);
        }

        public static DateTime GetHumanDateTime(double time)
        {
            TimeSpan ts = new TimeSpan((long)time * TimeSpan.TicksPerMillisecond);
            return UnixTimeStart + ts;
        }

        public static double GetUnixTime(DateTime time)
        {
            return (time - UnixTimeStart).TotalMilliseconds;
        }

        public static bool IsNewDay(double milliseconds)
        {
            return (int)TimeSpan.FromMilliseconds(milliseconds).TotalDays < (int)TimeSpan.FromMilliseconds(GetMs()).TotalDays;
        }

        public static string ToJson(object value)
        {
            return value == null ?
                null : JsonConvert.SerializeObject(value, Formatting.None, JsonConverters);
        }

        public static string ClearJson(string data)
        {
            return data.Replace("\"", "'");
        }

        public static bool IsValidType(int types, int type)
        {
            return ((types & (1 << (type - 1))) > 0);
        }
        public static int AddType(int types, int type)
        {
            if (!IsValidType(types, type)) return types + (1 << (type - 1));
            return types;
        }

        public static int RemType(int types, int type)
        {
            if (IsValidType(types, type)) return types - (1 << (type - 1));
            return types;
        }

        public static int DecompileBattleTag(string tag)
        {
            if (tag.Length < 2 || tag[0] != '#')
            {
                return 0;
            }
            // reverse custom-letter encoded #XXX to <id>
            var id = 0;
            var basis = BATTLE_TAG_CHARS.Length;
            for (var i = 1; i < tag.Length; i++)
            {
                id *= basis;
                id += BATTLE_TAG_CHARS.IndexOf(tag[i]);
            }
            return id;
        }

        public static void Log(string s)
        {
            if (log == null)
            {
                lock (lockObject)
                {
                    if (log == null)
                    {
                        log = new StreamWriter(SystemDefine.LocaleFolderL + "Log.txt", true, System.Text.Encoding.UTF8)
                        {
                            AutoFlush = true
                        };
                    }
                }
            }
            var n = DateTime.UtcNow;
            log.WriteLine("[{0}] {1}", n, s);
        }

        public static void PurchaseLog(string s)
        {
            if (pLog == null)
            {
                lock (lockObject)
                {
                    if (pLog == null)
                    {
                        pLog = new StreamWriter(SystemDefine.LocaleFolderL + "PurchaseLog.txt", true, System.Text.Encoding.UTF8)
                        {
                            AutoFlush = true
                        };
                    }
                }
            }
            var n = DateTime.UtcNow;
            pLog.WriteLine("[{0}] {1}", n, s);
        }

        public static string Translate(string locale, string keyword)
        {
            string tr;
            if (TRANS.TryGetValue(locale + LOCALE_KEY_SEP + keyword, out tr)) return tr;
            if (TRANS.TryGetValue(DEFAULT_LOCALE + LOCALE_KEY_SEP + keyword, out tr)) return tr;
            return keyword;
        }

        public static string GetIPAddress(HttpContext context)
        {
            var ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (!string.IsNullOrEmpty(ipAddress))
            {
                var addresses = ipAddress.Split(',');
                if (addresses.Length != 0) return addresses[0];
            }
            return context.Request.ServerVariables["REMOTE_ADDR"];
        }

        public static Error SaveLogs(User user, string s)
        {
            if (uLog == null)
            {
                lock (lockObject)
                {
                    if (uLog == null)
                    {
                        uLog = new StreamWriter(SystemDefine.LocaleFolderL + "UserExLogs.txt", true, System.Text.Encoding.UTF8) { AutoFlush = true };
                    }
                }
            }
            var n = DateTime.UtcNow;
            uLog.WriteLine("[{0}] {1}", n, " user#" + user.id + " " + s);
            return Error.OK;
        }
    }
}