<%@ WebHandler Language="C#" Class="c" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using Newtonsoft.Json;
using TW;
using System.Net;
using System.IO;
using System.Web.DynamicData;

public class c : IHttpHandler
{
    public bool IsReusable { get { return false; } }

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";

        if (context.Request.QueryString["u"] == "testLogIn54515454151515")
        {
            string b = "";
            var webRequest = (HttpWebRequest)WebRequest.Create("http://91.237.98.115/r.ashx");
            webRequest.Method = "POST";
            webRequest.ContentType = "application/x-www-form-urlencoded";
            string data = "{}";
            var hhh = new WebHeaderCollection();
            hhh.Add("Auth: 68cdda42b0c85022c28f4a180acd5d33");
            hhh.Add("Client: 0.1.8");
            hhh.Add("Device: 02596f858c44367ffae76bd9c5d49bdd");
            hhh.Add("Method: LogUser");
            hhh.Add("Sign: 15bbc6a1fbede7c0c260d41a5f3b902c");
            hhh.Add("User: fb100001454371005");
            hhh.Add("Time: 1424791850072");
            webRequest.Headers = hhh;
            webRequest.ContentLength = data.Length;
            using (var requestWriter2 = new StreamWriter(webRequest.GetRequestStream()))
            {
                requestWriter2.Write(data);
            }
            try
            {
                using (var responseReader = new StreamReader(webRequest.GetResponse().GetResponseStream()))
                {
                    b = responseReader.ReadToEnd();
                }
            }
            catch (Exception e)
            {
                context.Response.Write(e.Message);
            }
            finally
            {
                context.Response.Write(b);
            }

        }

        if (context.Request.QueryString["u"] == "ShowMessage")
        {
            TanksDBDataContext db = new TanksDBDataContext();
            var custs = from c in db.Users
                        where c.BundleId == "com.iron5studio.iron5.premium"
                        select c;

            foreach (var c in custs)
            {
                var user = new User(c.id);
                user.Flags = Util.AddType(user.Flags, (int)Flag.MessageShow);
                c.Gold += 250;
            }
            db.SubmitChanges();
            context.Response.Write("Сообщение установлено!");
        }

        if (context.Request.QueryString["u"] == "migratecrews")
        {
            var crew = new CrewService();
            if (crew.ConvertUserCrews() == Error.OK)
            {
                context.Response.Write("Friend to UserCrew conversion complete");
            }
            else context.Response.Write("Friend to UserCrew conversion failed");
            /*User userCurrent = new User(10);
            int zone = 6;
            if (!userCurrent.IsZoneOpened(zone))
            {
                userCurrent.OpenZone(zone);
                //double time = Util.GetTime();
                //UserBuilding.GetUserNewBuildingsIds(userCurrent, time, zone);
                context.Response.Write("zone opened");
            }*/
        }

        if (context.Request.QueryString["u"] == "shelltotier")
        {
            TanksDBDataContext db = new TanksDBDataContext();

            var custs = from c in db.UserShells
                        select new
                        {
                            c.u
                        };

            var custs2 = from c in db.UserUnits
                         select new
                         {
                             c.u
                         };

            custs = custs.Concat(custs2);
            custs = custs.Distinct();
            foreach (var c in custs)
            {
                User user = new User(c.u);
                //context.Response.Write(user.id + "  " + user.Name + "\r\n");
                double money = 0;
                double gold = 0;

                UserShells[] shells = JsonConvert.DeserializeObject<UserShells[]>(UserShell.GetUserShell(user.id));
                foreach (UserShells ud in shells)
                {
                    ShellShop currentShell = new ShellShop(ud.s);
                    gold += currentShell.g * ud.n;
                    money += currentShell.m * ud.n;
                }

                var units = Query.ListUserUnitsById.Invoke(db, user.id);
                foreach (UserUnits ud in units)
                {
                    if (ud.st > 0)
                    {
                        ShellShop ss = new ShellShop(ud.st);
                        money += ss.m * ud.sn;
                        gold += ss.g * ud.sn;
                    }
                    if (ud.et > 0)
                    {
                        ShellShop ss = new ShellShop(ud.et);
                        money += ss.m * ud.en;
                        gold += ss.g * ud.en;
                    }
                    ud.et = 0;
                    ud.en = 0;
                    ud.st = 0;
                    ud.sn = 0;
                }
                db.SubmitChanges();

                //user.Flags = Util.AddType(user.Flags, (int)Flag.MessageShow);
                gold = Math.Ceiling(gold);
                if (gold > 0) new Gold(user, "ShellMigration", 0, gold, 1);
                user.Gold += gold;
                user.AddMoneyWithoutLimits((int)money);
                user.Saving();
            }

            context.Response.Write("Привет всем!");
        }

        if (context.Request.QueryString["u"] == "shelltotier2")
        {
            TanksDBDataContext db = new TanksDBDataContext();

            var custs = from c in db.Users
                        select new
                        {
                            c.id
                        };
            custs = custs.Distinct();
            foreach (var c in custs)
            {
                User user = new User(c.id);

                var units = Query.ListUserUnitsById.Invoke(db, user.id);
                foreach (UserUnits uer in units)
                {
                    UserUnit ud = new UserUnit(uer.i);
                    DefaultUnit du = new DefaultUnit(ud.t);
                    ud.st = ShellShop.GetFirstShell(du.z, du.sz, du.t);
                    //context.Response.Write("GetFirstShell " + du.z + ", " + du.sz + ", " + du.t + " = " + ud.st+"\r\n");
                    ud.sn = du.az;
                    ud.Saving();
                }

                user.SetMoney((int)Math.Ceiling((double)user.GetMoney() / 10));
                user.Saving();
            }
            context.Response.Write("ShellMigration");
        }

        if (context.Request.QueryString["u"] == "01230123")
        {
            TanksDBDataContext db = new TanksDBDataContext();
            var custs3 = from c in db.Users
                         select new
                         {
                             c.id
                         };
            foreach (var c in custs3)
            {
                User user = new User(c.id);
                var units = Query.ListUserUnitsById.Invoke(db, user.id);
                int[] cnt = new int[100];
                for (int i = 0; i < 100; i++) cnt[i] = 0;

                foreach (UserUnits uu in units)
                {
                    cnt[uu.t]++;
                    if (cnt[uu.t] == 1 && uu.name != "")
                    {
                        uu.name = "";
                    }
                    else if (cnt[uu.t] > 1) uu.name = "#" + cnt[uu.t];
                }
                db.SubmitChanges();
            }
            context.Response.Write("Привет всем танкам!");
        }

        if (context.Request.QueryString["u"] == "setuserlevel")
        {
            TanksDBDataContext db = new TanksDBDataContext();
            var users = from c in db.Users
                        select c;
            foreach (Users a in users)
            {
                User u = new User(a);
                u.UserLevel = 0;
                Level lll = new Level(u.UserLevel + 1);
                while (u.Experience >= lll.e)
                {
                    u.UserLevel++;
                    if (lll.e == -1) break;
                    lll = new Level(u.UserLevel + 1);
                }
                for (int i = 0; i < Define.UserTierLevels.Length; i++)
                {
                    if (Define.UserTierLevels[i] <= u.UserLevel) u.Tier = i + 1;
                }
                u.Saving();
            }

            context.Response.Write("User tiers & levels are set");
        }

        if (context.Request.QueryString["u"] == "buildingQueue")
        {
            TanksDBDataContext db = new TanksDBDataContext();
            var custs3 = from c in db.Users
                         select c;

            foreach (var c in custs3)
            {
                c.Flags = Util.AddType(c.Flags, (int)Flag.ThirdBuildingQueue);
            }
            db.SubmitChanges();
            context.Response.Write("User building queue is set");
        }

        if (context.Request.QueryString["u"] == "messageShow")
        {
            TanksDBDataContext db = new TanksDBDataContext();
            var custs3 = from c in db.Users
                         select c;

            foreach (var c in custs3)
            {
                c.Flags = Util.AddType(c.Flags, (int)Flag.MessageShow);
                c.Gold += 100;
            }
            db.SubmitChanges();
            context.Response.Write("User MessageShow is set");
        }

        if (context.Request.QueryString["u"] == "money2gold")
        {
            int cnt = 0;
            TanksDBDataContext db = new TanksDBDataContext();
            var custs3 = from c in db.Users
                         select c;
            foreach (var c in custs3)
            {
                if (c.Money > 2500 && Util.IsValidType(c.Flags, (int)Flag.MessageShow))
                {
                    c.Gold += Math.Ceiling((c.Money - 2500) / 20);
                    c.Money = 2500;
                    cnt++;
                }
            }
            db.SubmitChanges();
            context.Response.Write("User money2gold is set for " + cnt + " users");
        }

        if (context.Request.QueryString["u"] == "addgold")
        {
            int cnt = 0;
            TanksDBDataContext db = new TanksDBDataContext();
            var custs3 = from c in db.Users
                         select c;
            foreach (var c in custs3)
            {
                if (c.Money == 2500 && Util.IsValidType(c.Flags, (int)Flag.MessageShow))
                {
                    User user = new User(c);
                    new Gold(user, "Deflation", 0, 100, 1);
                    c.Gold += 100;
                    cnt++;
                }
            }
            db.SubmitChanges();
            context.Response.Write("User addgold is set for " + cnt + " users");
        }

        if (context.Request.QueryString["u"] == "buildingschanged")
        {
            int min = 0;
            int max = 0;
            if (!int.TryParse(context.Request.QueryString["min"], out min))
            {
                context.Response.Write("Not enough parameters");
                return;
            }
            if (!int.TryParse(context.Request.QueryString["max"], out max))
            {
                context.Response.Write("Not enough parameters");
                return;
            }
            int[] mapStorageMoney = { 0, 1, 3, 4, 5, 6, 9, 10, 14, 15, 17, 18, 21, 23, 25, 26, 28, 30, 32, 34, 36 };
            int[] mapStorageParts = { 0, 1, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20, 22, 24, 25 };
            Dictionary<int, int> mapBuilddingZone = new Dictionary<int, int> {{1, 1}, {3, 1}, {7, 1}, {9, 1}, {12, 1}, {21, 1}, {11, 2}, {2, 3}, {20, 4}, {6, 7} };
            var db = new TanksDBDataContext();
            var users = from c in db.Users
                        where c.id < max && c.id >= min && c.lastLogin > 1463011200000
                        select c;
            foreach (Users a in users)
            {
                User u = new User(a);
                /*    u.zones2 = 0;
                    u.zones1 = 1;
                    Zone.DropCache();
                    List<Zones> zz = Zone.GetZonesFromCache();
                    foreach (Zones z in zz)
                    {
                        if (u.UserLevel >= z.forLevel && z.forLevel > 0)
                        {
                            u.OpenZone(z.zone);
                        }
                    }
            */
                var userBuildings = Query.ListUserBuildings.Invoke(db, u.id);
                //markets

                int levels = 0;
                int hqLevel = 1;
                int storageMoneyCount = 0;
                int storagePartsCount = 0;
                int marketCount = 0;
                int hangarCount = 0;
                int hangarLevel = 0;

                foreach (var bb in userBuildings)
                {
                    switch (bb.type)
                    {
                        case (int)BuildingType.Market:
                            levels += bb.blevel;
                            marketCount++;
                            if (marketCount > 1) db.UserBuildings.DeleteOnSubmit(bb);
                            break;
                        case (int)BuildingType.Hangar:
                            hangarCount++;
                            switch (bb.blevel)
                            {
                                case 7:
                                    hangarLevel =  hangarLevel < 8 ? 8 : hangarLevel;
                                    break;
                                case 8:
                                    hangarLevel =  hangarLevel < 10 ? 10 : hangarLevel;
                                    break;
                                case 9:
                                    hangarLevel =  hangarLevel < 12 ? 12 : hangarLevel;
                                    break;
                                case 10:
                                    hangarLevel =  hangarLevel < 14 ? 14 : hangarLevel;
                                    break;
                            }                            
                            if (hangarCount > 2) db.UserBuildings.DeleteOnSubmit(bb);
                            break;
                                case (int)BuildingType.HeadQuarters:
                            hqLevel = bb.blevel;
                            break;
                        case (int)BuildingType.StorageMoney:
                            storageMoneyCount++;
                            if (storageMoneyCount > 2) db.UserBuildings.DeleteOnSubmit(bb);
                            break;
                        case (int)BuildingType.StorageDetails:
                            storagePartsCount++;
                            if (storagePartsCount > 1) db.UserBuildings.DeleteOnSubmit(bb);
                            break;
                    }
                }
                db.SubmitChanges();
                var userBuildingsNew = Query.ListUserBuildings.Invoke(db, u.id);
                levels = levels / 3;
                foreach (var bb in userBuildingsNew)
                {
                    bb.zone = mapBuilddingZone[bb.type];
                    switch (bb.type)
                    {
                        case (int)BuildingType.StorageMoney:
                            bb.blevel = mapStorageMoney[hqLevel];
                            break;
                        case (int)BuildingType.StorageDetails:
                            bb.blevel = mapStorageParts[hqLevel];
                            break;
                        case (int)BuildingType.Market:
                            bb.blevel = levels;
                            break;
                        case (int)BuildingType.Hangar:
                            bb.blevel = hangarLevel;
                            break;
                    }
                }
                db.SubmitChanges();
                context.Response.Write("User #" + u.id + " buildings ready");
            }
        }

        if (context.Request.QueryString["u"] == "AddUsersToBattleTop")
        {
            new FightService().InitializeUserBattles();
        }

        if (context.Request.QueryString["u"] == "CleanOldBattleLogs")
        {
            int cleanOldLogs = new FightService().CleanOldLogs(3);
            context.Response.Write("Battle logs removed:" + cleanOldLogs);
        }

        if (context.Request.QueryString["u"] == "ValidateItemSettings")
        {
            var jsonResult = new ItemService().ValidateItemSettings();

            if (jsonResult.Length == 0)
                context.Response.Write("Validateion completed: OK!");
            else
                context.Response.Write("Validateion completed:" + jsonResult);
        }


        if (context.Request.QueryString["u"] == "MigrateUserUnit")
        {
            var jsonResult = new EvolveService().MigrateUserUnit();

            if (jsonResult.Length == 0)
                context.Response.Write("Migration completed: OK!");
            else
                context.Response.Write("Migration completed:" + jsonResult);
        }

        if (context.Request.QueryString["u"] == "TournamentRewards")
        {
            var mailService = new MailService();
            var clanService = new ClanService();

            var tournamentDivisionTops = new List<TournamentDivisionTop>();
            tournamentDivisionTops.Add(new TournamentDivisionTop { clanId = 57, place = 1 });
            tournamentDivisionTops.Add(new TournamentDivisionTop { clanId = 88, place = 2 });

            foreach (var topEntry in tournamentDivisionTops)
            {
                var rewardData = TournamentService.tournamentSettings.rewards.Find(rewardHolder => topEntry.place >= rewardHolder.Value1 && topEntry.place <= rewardHolder.Value2);
                if (rewardData == null)
                    continue;

                var clanMembers = clanService.GetPlayers(topEntry.clanId);
                foreach (var clanMember in clanMembers)
                {
                    mailService.RewardNotification(clanMember.id, Util.GetMs(), "clanBattle.mailTopic", "clanBattle.mailMsg", Util.ToJson(rewardData.Value3));
                }
            }
        }

        if (context.Request.QueryString["u"] == "TestTournament")
        {
            var tournamentService = new TournamentService();
            if (users.Count == 0)
            {
                var db = new TanksDBDataContext();
                var custs = Query.ListAllUsers(db);
                users = Enumerable.Select(custs, us => new User(us)).ToList();
            }

            if (nextUserIndex >= users.Count)
                nextUserIndex = 0;

            var user = users[nextUserIndex];
            nextUserIndex++;

            TournamentRequestResult requestResult;
            if (tournamentService.GetTournament(user, 0, out requestResult) == Error.OK)
                context.Response.Write("GetTournament True!");
            else
                context.Response.Write("GetTournament False");

            List<TournamentParticipant> offers;
            if (tournamentService.GetOffers(user, out offers) == Error.OK)
                context.Response.Write("GetOffers True!");
            else
                context.Response.Write("GetOffers False!");

            if (tournamentService.OfferSelf(user, false) == Error.OK)
                context.Response.Write("OfferSelf True!");
            else
                context.Response.Write("OfferSelf False!");

            ConfirmedBattleRequestResult confirmedBattleRequestResult;
            if (tournamentService.GetConfirmBattle(user, out confirmedBattleRequestResult) == Error.OK)
                context.Response.Write("GetConfirmBattle True!");
            else
                context.Response.Write("GetConfirmBattle False!");

            if (tournamentService.AcceptOffer(user, 1) == Error.OK)
                context.Response.Write("AcceptOffer True!");
            else
                context.Response.Write("AcceptOffer False!");

            if (tournamentService.AcceptConfirmedInvite(user, 1) == Error.OK)
                context.Response.Write("AcceptConfirmedInvite True!");
            else
                context.Response.Write("AcceptConfirmedInvite False!");

            if (tournamentService.SendInvite(user, 1) == Error.OK)
                context.Response.Write("SendInvite True!");
            else
                context.Response.Write("SendInvite False!");

            if (tournamentService.RespondInvite(user, false) == Error.OK)
                context.Response.Write("RespondInvite True!");
            else
                context.Response.Write("RespondInvite False!");

            if (tournamentService.ConfirmBattle(user, 1) == Error.OK)
                context.Response.Write("CancelConfirmBattle True!");
            else
                context.Response.Write("CancelConfirmBattle False!");

            if (tournamentService.CancelConfirmBattle(user, 1) == Error.OK)
                context.Response.Write("CancelConfirmBattle True!");
            else
                context.Response.Write("CancelConfirmBattle False!");
        }


        if (context.Request.QueryString["u"] == "MigrateVIP")
        {
            TanksDBDataContext db = new TanksDBDataContext();

            var purchases = from d in db.Purchases
                            select d;
            foreach (Purchases a in purchases)
            {
                if (a.name.StartsWith("com.iron5studio.iron5.gold_offer"))
                {
                    User u = new User(a.userId);
                    u.VIPgold += a.costAndroid + a.costIOS;
                    u.Saving();
                }
            }
            context.Response.Write(" VIP Migration completed: OK!");

        }
        if (context.Request.QueryString["u"] == "CheckUserForOffers")
        {
            int id = 0;
            if (int.TryParse(context.Request.QueryString["i"], out id))
            {
                var user = new User(id);
                var result = UserAction.GenerateUserPersonalOffer(user, (int)user.Gold, Util.GetMs());
                if (result == null) context.Response.Write("Offer not avalaible!");
                else
                {
                    result.Saving();
                    context.Response.Write("Offer is avalaible! " + result.name);
                }
            }
            else context.Response.Write("User not found!");

        }
    }

    private static List<User> users = new List<User>();
    private static int nextUserIndex = 0;
}