using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;

namespace TW
{
    public class ChatMessage : IToJson
    {
        public long stamp;
        public int userId;
        public string userName;
        public string message;
        public int channel;
        public int clanId;
        public string clanName;
        public int level;

        public ChatMessage(User user, string message)
        {
            stamp = Util.GetMs();
            if (user != null)
            {
                userId = user.id;
                userName = user.Name;
                clanId = user.clan_id;
                level = user.UserLevel;
            }
            this.message = message;
        }

        public ChatMessage(string message)
        {
            this.stamp = Util.GetMs();
            this.message = message;
        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            json.BeginObject();
            json.Name("s").Value(stamp);
            json.Name("u").Value(userId);
            json.Name("n").Value(userName);
            json.Name("m").Value(message);
            if (channel != ChatService.Global)
            {
                json.Name("c").Value(channel);
            }
            if (clanId > 0)
            {
                json.Name("ci").Value(clanId);
                json.Name("cn").Value(clanName);
            }
            if (level > 0) json.Name("l").Value(level);
            json.EndObject();
        }
    }

    public class ChatService
    {
        public const int Global = 0;
        public const int Clan = 1;
        private const int MAX_MESSAGE_COUNT = 20;
        private const int MaxMessageLen = 250;
        public const long CHAT_CLEANUP_DELAY = 1L * 60 * 1000;              //1m
        public const long CHAT_KEEP_MESSAGES_GLOBAL = 10L * 60 * 1000;      //10m
        public const long CHAT_KEEP_MESSAGES_CLAN = 3L * 24 * 60 * 60 * 1000;   //3d

        private static readonly ConcurrentDictionary<string, List<string>> Chats = new ConcurrentDictionary<string, List<string>>();
        private static readonly ConcurrentDictionary<string, DateTime> TimeStamps = new ConcurrentDictionary<string, DateTime>();

        public Error AddMessageToChat(string channel, string userData, string userName, string message)
        {
            if (!Chats.ContainsKey(channel))
            {
                Chats.TryAdd(channel, new List<string>());
            }
            List<string> listMsgs;
            var msg = DecodeIRCUserInfo(userData, userName, message);
            if (!Chats.TryGetValue(channel, out listMsgs)) return Error.NOCONFIG;
            lock (Chats)
            {
                listMsgs.Add(Util.ToJson(msg));
            }
            return Error.OK;
        }

        //TODO: Helga need to rewrite
        public string GetChatHistory(string[] channels)
        {
            var sb = new StringBuilder();
            sb.Append("[");
            for (int i = 0; i < channels.Length; i++)
            {
                if (i > 0)
                    sb.Append(',');

                sb.Append(GetLogFromService(channels[i]));
            }
            sb.Append("]");

            return sb.ToString();
        }

        private static ChatMessage DecodeIRCUserInfo(string data, string name, string message)
        {
            var info = data.Split('|');
            if (info.Length < 5) return null;
            info[0] = info[0].Replace("u", "");
            info[3] = info[3].Replace("_", "");
            return new ChatMessage(message)
            {
                userId = Util.DecompileBattleTag(info[0]),
                level = int.Parse(info[1]),
                clanName = info[2],
                clanId = int.Parse(info[3]),
                userName = name,
            };
        }

        /* {"userId":380102,"userName":"#H3C3","message":"всем привет!","clanId":1307,"clanName":"BAGRATION","level":5,"stamp":1512814020324}

         Nick Tursumbaev, [15.02.18 22:37]
  var fileName = SystemDefine.LocaleFolderL + "chat-" + "#" + channel + ".log";

  Nick Tursumbaev, [15.02.18 22:42]
  Прикрутить фильтр для сообщений

  Nick Tursumbaev, [15.02.18 22:42]
  1) Написать метод для сохранения лога на сервере

  Nick Tursumbaev, [15.02.18 22:43]
  2)Доработать метод ReadLog

  Nick Tursumbaev, [15.02.18 22:43]
  3) Сделать новый метод извлечения истории из словаря и заменить метод GetLogFromService на него

  Nick Tursumbaev, [15.02.18 22:44]
  4) вписать сохранение лога в метод AddMessageToChat

  Nick Tursumbaev, [15.02.18 22:44]
  не забыть использовать Lock на обьектах которые могут использоваться разными потоками
       
       
         */
        private string GetLogFromService(string channel)
        {
            var request = (HttpWebRequest)WebRequest.Create("http://52.169.205.103:8088/chat?id=" + channel);
            var response = (HttpWebResponse)request.GetResponse();
            var responseString = new StreamReader(response.GetResponseStream()).ReadToEnd();
            if (responseString == "NOSUCHCHANNEL")
                responseString = "[]";
            return responseString;
        }

        private string ReadLog(string channel)
        {
            string outStr = "";
            var fileName = SystemDefine.LocaleFolderL + "chat-" + "#" + channel + ".log";
            if (!File.Exists(fileName))
            {
                return "[]";
            }
            try
            {
                var outLog = new StreamReader(fileName, System.Text.Encoding.UTF8, true);
                lock (outLog)
                {
                    DateTime timeStamp;
                    //check if exist or old data
                    if (!(TimeStamps.TryGetValue(channel, out timeStamp) && File.GetLastWriteTimeUtc(fileName) < timeStamp))
                    {
                        var list = new List<string>();
                        while (!outLog.EndOfStream)
                        {
                            list.Add(outLog.ReadLine());
                        }
                        list.RemoveRange(0, list.Count > MAX_MESSAGE_COUNT ? list.Count - MAX_MESSAGE_COUNT : 0);
                        Chats[channel] = list;
                        TimeStamps[channel] = DateTime.UtcNow;
                    }
                    var textBuilder = new StringBuilder();
                    int q = 0;
                    textBuilder.Append("[");
                    while (q < Chats[channel].Count)
                    {
                        if (q > 0) textBuilder.Append(",");
                        textBuilder.Append(Chats[channel][q]);
                        q++;
                    }
                    textBuilder.Append("]");
                    outLog.Close();
                    outStr = textBuilder.ToString();
                }
            }
            catch (Exception)
            {
                throw;
            }
            return outStr;
        }
    }

    public class ChatMessageFilter
    {
        public const string CHAT_BAD_MSG_REPLACEMENT = "###";
        public static List<string> words = new List<string> {
            "ass",
            "asses",
            "assface",
            "assfaces",
            "asshole",
            "assholes",
            "bastard",
            "bastards",
            "bitch",
            "bitches",
            "bitchy",
            "bullshit",
            "cocksucker",
            "cocksuckers",
            "cocksucking",
            "cunt",
            "cunts",
            "dickhead",
            "dickheads",
            "faggot",
            "faggots",
            "fuc",
            "fuck",
            "fucked",
            "fuckedup",
            "fucker",
            "fuckers",
            "fucking",
            "fuckoff",
            "fucks",
            "fuckup",
            "fuk",
            "fukker",
            "fukkers",
            "fuq",
            "goddamn",
            "goddamnit",
            "jackass",
            "jackasses",
            "motherfucker",
            "motherfuckers",
            "motherfucking",
            "nigger",
            "niggers",
            "pussy",
            "shit",
            "shithead",
            "shitheads",
            "shits",
            "shittier",
            "shittiest",
            "shitting",
            "shitty",
            "smartass",
            "smartasses",
            "tities",
            "tits",
            "titties",
            "wiseass",
            "wiseasses",
            "блять",
            "блядь",
            "писта",
            "писту",
            "6лядь", 
            "6лять", 
            "eblan", 
            "eбaл", 
            "eбaть", 
            "eбyч", 
            "eбать", 
            "eбёт", 
            "eблантий", 
            "xyёв", 
            "xyй", 
            "xyя", 
            "xуе",
            "xуй", 
            "xую", 
            "zaeb", 
            "zaebal", 
            "zaebali", 
            "zaebat", 
            "архипиздрит", 
            "ахуел", 
            "ахуеть", 
            "бздение", 
            "бздеть", 
            "бздех", 
            "бздецы", 
            "бздит", 
            "бздицы", 
            "бздло", 
            "бзднуть", 
            "бздун", 
            "бздунья", 
            "бздюха", 
            "бздюшка", 
            "бздюшко", 
            "бля", 
            "блябу", 
            "блябуду", 
            "бляд", 
            "бляди", 
            "блядина", 
            "блядище", 
            "блядки", 
            "блядовать", 
            "блядство", 
            "блядун", 
            "блядуны", 
            "блядунья", 
            "блядь", 
            "блядюга", 
            "блять", 
            "вафел", 
            "вафлёр", "взъебка", "взьебка", "взьебывать", "въеб", "въебался", "въебенн", "въебусь", "въебывать", "выблядок", "выблядыш", "выеб", 
            "выебать", "выебен", "выебнулся", "выебон", "выебываться", "выпердеть", "высраться", "выссаться", "вьебен", "гавно", "гавнюк", "гавнючка",
            "гамно", "гандон", "гнид", "гнида", "гниды", "говенка", "говенный", "говешка", "говназия", "говнецо", "говнище", "говно", "говноед", 
            "говнолинк", "говночист", "говнюк", "говнюха", "говнядина", "говняк", "говняный", "говнять", "гондон", "доебываться", "долбоеб", "долбоёб", 
            "долбоящер", "дрисня", "дрист", "дристануть", "дристать", "дристун", "дристуха", "дрочелло", "дрочена", "дрочила", "дрочилка", "дрочистый", 
            "дрочить", "дрочка", "дрочун", "е6ал", "е6ут", "еб твою мать", "ёб твою мать", "ёбaн", "ебaть", "ебyч", "ебал", "ебало", "ебальник", "ебан", 
            "ебанамать", "ебанат", "ебаная", "ёбаная", "ебанический", "ебанный", "ебанныйврот", "ебаное", "ебануть", "ебануться", "ёбаную", "ебаный", 
            "ебанько", "ебарь", "ебат", "ёбат", "ебатория", "ебать", "ебать-копать", "ебаться", "ебашить", "ебёна", "ебет", "ебёт", "ебец", "ебик", "ебин", 
            "ебись", "ебическая", "ебки", "ебла", "еблан", "ебливый", "еблище", "ебло", "еблыст", "ебля", "ёбн", "ебнуть", "ебнуться", "ебня", "ебошить", 
            "ебская", "ебский", "ебтвоюмать", "ебун", "ебут", "ебуч", "ебуче", "ебучее", "ебучий", "ебучим", "ебущ", "ебырь", "елда", "елдак", "елдачить", 
            "жопа", "жопу", "заговнять", "задрачивать", "задристать", "задрота", "зае6", "заё6", "заеб", "заёб", "заеба", "заебал", "заебанец", "заебастая", 
            "заебастый", "заебать", "заебаться", "заебашить", "заебистое", "заёбистое", "заебистые", "заёбистые", "заебистый", "заёбистый", "заебись", "заебошить",
            "заебываться", "залуп", "залупа", "залупаться", "залупить", "залупиться", "замудохаться", "запиздячить", "засерать", "засерун", "засеря", "засирать",
            "засрун", "захуячить", "заябестая", "злоеб", "злоебучая", "злоебучее", "злоебучий", "ибанамат", "ибонех", "изговнять", "изговняться", "изъебнуться",
            "ипать", "ипаться", "ипаццо", "Какдвапальцаобоссать", "конча", "курва", "курвятник", "лох", "лошарa", "лошара", "лошары", "лошок", "лярва", "малафья",
            "мандавошек", "мандавошка", "мандавошки", "мандей", "мандень", "мандеть", "мандища", "мандой", "манду", "мандюк", "минет", "минетчик", 
            "минетчица", "млять", "мокрощелка", "мокрощёлка", "мразь", "мудak", "мудaк", "мудаг", "мудак", "муде", "мудель", "мудеть", "муди", "мудил", "мудила", 
            "мудистый", "мудня", "мудоеб", "мудозвон", "мудоклюй", "на хер", "на хуй", "набздел", "набздеть", "наговнять", "надристать", "надрочить", "наебать", 
            "наебет", "наебнуть", "наебнуться", "наебывать", "напиздел", "напиздели", "напиздело", "напиздили", "насрать", "настопиздить", "нахер", "нахрен", "нахуй",
            "нахуйник", "не ебет", "не ебёт", "невротебучий", "невъебенно", "нехира", "нехрен", "Нехуй", "нехуйственно", "ниибацо", "ниипацца", "ниипаццо", "ниипет",
            "никуя", "нихера", "нихуя", "обдристаться", "обосранец", "обосрать", "обосцать", "обосцаться", "обсирать", "объебос", "обьебать обьебос", "однохуйственно", 
            "опездал", "опизде", "опизденивающе", "остоебенить", "остопиздеть", "отмудохать", "отпиздить", "отпиздячить", "отпороть", "отъебись", "охуевательский", 
            "охуевать", "охуевающий", "охуел", "охуенно", "охуеньчик", "охуеть", "охуительно", "охуительный", "охуяньчик", "охуячивать", "охуячить", "очкун", "падла",
            "падонки", "падонок", "паскуда", "педерас", "педик", "педрик", "педрила", "педрилло", "педрило", "педрилы", "пездень", "пездит", "пездишь", "пездо", "пездят",
            "пердануть", "пердеж", "пердение", "пердеть", "пердильник", "перднуть", "пёрднуть", "пердун", "пердунец", "пердунина", "пердунья", "пердуха", "пердь", 
            "переёбок", "пернуть", "пёрнуть", "пи3д", "пи3де", "пи3ду", "пиzдец", "пидар", "пидарaс", "пидарас", "пидарасы", "пидары", "пидор", "пидорасы", "пидорка",
            "пидорок", "пидоры", "пидрас", "пизда", "пиздануть", "пиздануться", "пиздарваньчик", "пиздато", "пиздатое", "пиздатый", "пизденка", "пизденыш", "пиздёныш",
            "пиздеть", "пиздец", "пиздит", "пиздить", "пиздиться", "пиздишь", "пиздища", "пиздище", "пиздобол", "пиздоболы", "пиздобратия", "пиздоватая", "пиздоватый", 
            "пиздолиз", "пиздонутые", "пиздорванец", "пиздорванка", "пиздострадатель", "пизду", "пиздуй", "пиздун", "пиздунья", "пизды", "пиздюга", "пиздюк", "пиздюлина",
            "пиздюля", "пиздят", "пиздячить", "писбшки", "писька", "писькострадатель", "писюн", "писюшка", "по хуй", "по хую", "подговнять", "подонки", "подонок",
            "подъебнуть", "подъебнуться", "поебать", "поебень", "поёбываает", "поскуда", "посрать", "потаскуха", "потаскушка", "похер", "похерил", "похерила", 
            "похерили", "похеру", "похрен", "похрену", "похуй", "похуист", "похуистка", "похую", "придурок", "приебаться", "припиздень", "припизднутый", 
            "припиздюлина", "пробзделся", "проблядь", "проеб", "проебанка", "проебать", "промандеть", "промудеть", "пропизделся", "пропиздеть", "пропиздячить", 
            "раздолбай", "разхуячить", "разъеб", "разъеба", "разъебай", "разъебать", "распиздай", "распиздеться", "распиздяй", "распиздяйство", "распроеть", 
            "сволота", "сволочь", "сговнять", "секель", "серун", "серька", "сестроеб", "сикель", "соси", "спиздел", "спиздеть", 
            "спиздил", "спиздила", "спиздили", "спиздит", "спиздить", "срака", "сраку", "сраный", "сранье", "срать", "срун", "ссака", "ссышь", "стерва", 
            "страхопиздище", "сука", "суки", "суходрочка", "сучара", "сучий", "сучка", "сучко", "сучонок", "сучье", "сцание", "сцать", "сцука", "сцуки", 
            "сцуконах", "сцуль", "сцыха", "сцышь", "съебаться", "сыкун", "трахае6", "трахаеб", "трахаёб", "трахатель", "ублюдок", "уебать", "уёбища", "уебище",
            "уёбище", "уебищное", "уёбищное", "уебк", "уебки", "уёбки", "уебок", "уёбок", "урюк", "усраться", "ушлепок", "х_у_я_р_а", "хyё", "хyй", "хyйня", "хамло", 
            "хер", "херня", "херовато", "херовина", "херовый", "хитровыебанный", "хитрожопый", "хуeм", "хуе", "хуё", "хуевато", "хуёвенький", "хуевина", "хуево", 
            "хуевый", "хуёвый", "хуек", "хуёк", "хуел", "хуем", "хуенч", "хуеныш", "хуенький", "хуеплет", "хуеплёт", "хуепромышленник", "хуерик", "хуерыло", "хуесос", 
            "хуесоска", "хуета", "хуетень", "хуею", "хуи", "хуй", "хуйком", "хуйло", "хуйня", "хуйрик", "хуище", "хуля", "хую", "хуюл", "хуя", "хуяк", "хуякать", 
            "хуякнуть", "хуяра", "хуясе", "хуячить", "целка", "чмо", "чмошник", "чмырь", "шалава", "шалавой", "шараёбиться", "шлюха", "шлюхой" 
        };

        private static string pattern = string.Empty;

        public static string GetFilterPattern()
        {
            if (!string.IsNullOrEmpty(pattern))
            {
                return pattern;
            }

            words.Sort((s1, s2) => Math.Sign(s2.Length - s1.Length));

            for (int i = 0; i < words.Count; i++)
            {
                if (i > 0)
                {
                    pattern += '|';
                }
                pattern += words[i];
            }

            return pattern;
        }

        public static string FilterMessage(string text)
        {
            var wordFilter = new Regex(GetFilterPattern(), RegexOptions.IgnoreCase);// | RegexOptions.CultureInvariant);            
            return wordFilter.Replace(text, CHAT_BAD_MSG_REPLACEMENT);
        }
    }
}
