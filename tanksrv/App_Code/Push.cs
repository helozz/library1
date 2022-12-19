
using System;
using System.Collections.Concurrent;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using PushSharp;
using PushSharp.Android;
using PushSharp.Apple;
using System.Collections.Generic;

namespace TW
{
    public class PushService : AbstractService
    {
        public const int PushSettingStart = 11;

        private const bool DEBUG = true;
        private const int PUSH_RESOLUTION_RATE = 600000000;        

        public enum Device
        {
            IOS,
            ANDROID,
            WINMOBILE,
        }

        public enum Type
        {
            DAILY_BONUS_AVAILABLE, TEST_MESSAGE
        }

        private static readonly Device[] SUPPORTS_PUSH = { Device.IOS };

        private static Worker worker;
        private static Thread workerThread;

        private class Push
        {
            internal Device device;
            internal string token;
            internal string text;
            internal int badge;
            internal string sound;

            internal AppleNotification ToApple()
            {
                var an = new AppleNotification().ForDeviceToken(token).WithAlert(text);
                if (badge >= 0) an.WithBadge(badge);
                if (sound != null) an.WithSound(sound);
                return an;
            }

            internal GcmNotification ToAndroid()
            {
                var an = new GcmNotification().ForDeviceRegistrationId(token);
                var json = new StringBuilder("{");
                json.Append("\"alert\":\"").Append(text).Append("\"");
                if (badge >= 0) json.Append(",\"badge\":").Append(badge);
                if (sound != null) json.Append(",\"sound\":\"").Append(sound).Append("\"");
                json.Append('}');
                an.WithJson(json.ToString());
                return an;
            }
        }

        private class Worker
        {
            private readonly PushService _service;
            internal readonly ConcurrentQueue<Push> queue = new ConcurrentQueue<Push>();

            public Worker(PushService service)
            {
                _service = service;
            }

            public void Run()
            {
                Thread.Sleep(PUSH_RESOLUTION_RATE);

                var broker = new PushBroker();
                if (DEBUG)
                {
                    broker.OnChannelCreated += (sender, channel) => Util.Log("OnChannelCreated" + channel);
                    broker.OnChannelDestroyed += (sender) => Util.Log("OnChannelDestroyed");
                    broker.OnNotificationSent += (sender, notify) => Util.Log("OnNotificationSent" + notify);
                    broker.OnNotificationFailed +=
                        (sender, notify, error) => Util.Log("OnNotificationFailed" + notify + " / " + error);
                    broker.OnNotificationRequeue += (sender, args) => Util.Log("OnNotificationRequeue" + args);
                    broker.OnChannelException +=
                        (sender, channel, error) => Util.Log("OnChannelException" + channel + " / " + error);
                    broker.OnServiceException += (sender, error) => Util.Log("OnServiceException" + error);
                    broker.OnDeviceSubscriptionExpired +=
                        (sender, text, time, error) =>
                            Util.Log("OnDeviceSubscriptionExpired" + text + " / " + time + " / " + error);
                    broker.OnDeviceSubscriptionChanged +=
                        (sender, text, text2, error) =>
                            Util.Log("OnDeviceSubscriptionChangedDelegate" + text + " / " + text2 + " / " + error);
                }

                var appleCert = File.ReadAllBytes(SystemDefine.LocaleFolderL + "ApplePushCert.p12");
                broker.RegisterAppleService(new ApplePushChannelSettings(!SystemDefine.Sandbox, appleCert, "12345678"));
                //broker.RegisterGcmService(new GcmPushChannelSettings("GOOGLE_CONSOLE_API_TOKEN")); -- for android

                while (true)
                {
                    Thread.Sleep(PUSH_RESOLUTION_RATE);


                    // periodic scheduled tasks
                    var now = DateTime.Now;
                    /*  move to client
                    if (now.Hour == 19 && now.Minute == 0)
                    {
                        if (DEBUG) Util.Log("Time to send daily bonus push notification");
                        SendDailyBonusNotify();
                    }
                     * */
                    if (now.Hour == 02 && now.Minute == 0) // clean radar logs
                    {
                        if (DEBUG) Util.Log("Time to clean radar logs");                        
                    }


                    // process queue
                    if (!queue.IsEmpty)
                    {
                        if (DEBUG) Util.Log("Push queue not empty, processing");
                        Push push;
                        while (queue.TryDequeue(out push))
                        {
                            switch (push.device)
                            {
                                case Device.IOS:
                                    broker.QueueNotification(push.ToApple());
                                    break;
                                case Device.ANDROID:
                                    broker.QueueNotification(push.ToAndroid());
                                    break;
                            }
                        }
                    }
                }
            }

            private void SendDailyBonusNotify()
            {
                var day = (int)Math.Floor(Util.GetTime() / 86400000);
                var db = new TanksDBDataContext();
                List<Users> uuusers = (SystemDefine.LocaleFolder == "http://91.237.98.115/Static/") ? Query.ListUsersLoggedBetween(db, day - 20, day).ToList() : Query.ListUsersLoggedBetween(db, day - 3, day - 1).ToList();
                foreach (var user in uuusers)
                {
                    _service.Notify(user, Type.DAILY_BONUS_AVAILABLE);
                }
            }
        }

        public PushService()
        {
            Init();
        }

        private void Init()
        {
            if (worker != null) return;
            // prepare broker
            worker = new Worker(this);
            //workerThread = new Thread(worker.Run);
            //workerThread.Start();
        }

        public void Register(User user, Device device, string token)
        {
            var value = ((int)device) + "/" + token;
            if (!value.Equals(user.PushToken))
            {
                user.PushToken = value;
                user.Saving();
            }
        }

        public void Notify(User user, Type type, int badge = -1, string sound = null)
        {
            Notify(user.PushToken, user.Locale, type, badge, sound);
        }

        public void Notify(Users user, Type type, int badge = -1, string sound = null)
        {
            Notify(user.PushToken, user.Locale, type, badge, sound);
        }

        public void Notify(string pt, string locale, Type type, int badge = -1, string sound = null)
        {
            if (string.IsNullOrEmpty(pt)) return;
            var parts = pt.Split('/');
            if (parts.Length < 2) return;
            var device = (Device)Convert.ToInt32(parts[0]);
            if (!SUPPORTS_PUSH.Contains(device)) return;
            var token = parts[1];
            if (DEBUG) Util.Log("requested to notify " + type + " for token " + token + " for device " + device);

            token = SafeEscape(token);
            var text = SafeEscape(Util.Translate(locale, type.ToString("G")));
            worker.queue.Enqueue(new Push { device = device, token = token, text = text, badge = badge, sound = sound });
        }

        private string SafeEscape(string s)
        {
            if (s.Contains('"')) s = s.Replace('"', '\'');
            return s;
        }
    }
}