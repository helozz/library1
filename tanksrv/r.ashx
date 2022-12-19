﻿
<%@ WebHandler Language="C#" Class="r" %>

using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Text;
using Newtonsoft.Json;
using TW;
using System.Text.RegularExpressions;
using System.Net;
using System.IO;

public class r : IHttpHandler
{
    private const bool CheckSign = true;
    private static readonly Dictionary<string, Processor> Processors = new Dictionary<string, Processor>();

    static r()
    {
        var list = typeof(r).Assembly.GetTypes().Where(type => type.IsSubclassOf(typeof(Processor)));
        foreach (var processor in list.Select(el => (Processor)Activator.CreateInstance(el)))
        {
            if (string.IsNullOrEmpty(processor.Method))
                processor.Method = processor.GetType().Name;

            Processors.Add(processor.Method, processor);
        }
    }

    public void ProcessRequest(HttpContext tcontext)
    {
        tcontext.Response.ContentType = "text/html";
        double time = Util.GetTime();
        string stime = Convert.ToString(time);
        tcontext.Response.AddHeader("TIME", stime);
        string resp = null;
        var method = tcontext.Request.Headers["Method"];
        try
        {
            if (method != null)
            {
                Processor processor;
                Processors.TryGetValue(method, out processor);
                if (processor != null)
                {
                    User user;
                    Request request;
                    string device, headerUser, headerAuth;

                    var result = GetDataForProcessor(processor, this, tcontext, time, out user, out request, out device, out headerUser, out headerAuth);
                    resp = result == Error.OK ? processor.DoProcess(user, request, time, new Processor.HeaderData { HeaderDevice = device, HeaderUser = headerUser, HeaderAuth = headerAuth }) : Util.ToJson(result);
                }
            }

            if (resp == null)
                resp = gameHandler(tcontext, time, method);
        }
        catch (Exception e)
        {
            resp = Exc(161, e.Message + " \r\non Request: " + method);
            Util.Log(">> " + method + " caused exception: " + e);
        }
        tcontext.Response.Write(resp);
        tcontext.Response.AddHeader("SIGN", SignResponse(resp, tcontext.Request.Headers["User"], tcontext.Request.Headers["Auth"], method, stime));
    }

    string gameHandler(HttpContext context, double time, string method)
    {
        string Response = string.Empty;
        var userService = new UserService();
        try
        {
            if (SystemDefine.ShutDown) return Exc(161);
            if (context.Request.Headers["Client"] != SystemDefine.ClientVersion && !SystemDefine.Maintenance) return Exc(177);
            if (context.Request.Headers["User"] == null) return Exc(0);

            String InputStream = ReadRequest(context);
            var req = JsonConvert.DeserializeObject<Request>(InputStream);
            var userCurrent = new User();
            //========== Signing:

            if (CheckSign &&
                !SignUser(context.Request.Headers["Sign"], InputStream, context.Request.Headers["User"], context.Request.Headers["Auth"], method, context.Request.Headers["Time"])) // UserId: 14228555 = viewer_id
            {
                Response += Exc(100);
                return Response;
            }


            //========== Authorization:
            if (!AuthUser(context.Request.Headers["User"], context.Request.Headers["Auth"])) // UserId: 14228555 = viewer_id
            {
                Response += Exc(101);
                return Response;
            }

            if (method != "GetUser")
            {
                userCurrent = new User(context.Request.Headers["User"], context.Request.Headers["Auth"]);
                if (userCurrent.id == 0 && method != "AccountLinked") // Есть ли такой пользователь
                {
                    Response += Exc(108);
                    return Response;
                }
                if (method != "AccountLinked")
                {
                    if (userCurrent.id > 0) userCurrent.RemoveLimitTask(time);
                    if (userCurrent.y)
                    {
                        Response += Exc(161);
                        return Response;
                    }
                    if (userCurrent.Device != context.Request.Headers["Device"])
                    {
                        Response += Exc(174);
                        return Response;
                    }
                }
            }

            //========== Purchase==============================:
            if (method == "Purchase")
            {
                var paymentServ = new PaymentService();
                // req.s - receipt req.lc - signature
                Response += Util.ToJson(paymentServ.PurchaseGold(userCurrent, req.n, req.b, req.s, req.lc, Util.GetIPAddress(context), time));
            }
            //========== LinkAccount:
            else if (method == "LinkAccount")
            {
                //req.v - fbid
                User fbUser = new User(req.v, req.w, req.t);
                userCurrent = SwapUsers(time, userCurrent, fbUser, req, context.Request.Headers["Device"]);
                Response += userService.SerializeUser(userCurrent, userCurrent.Newday(time), time);
                SocialService ss = new SocialService();
                ss.ActivateFriend(fbUser.id, fbUser.SocialID);
            }
            //========== AccountLinked: check
            else if (method == "AccountLinked")
            {
                //req.v - fbid
                User fbUser = new User(req.v, req.w, req.t);
                if ((fbUser.id == userCurrent.id && fbUser.id != 0) || userCurrent.id == 0) Response += Exc(99, "{'r':0,'d':[0,0]}");
                else if (fbUser.id == 0) Response += Exc(99, "{'r':0,'d':[0,0]}");
                else
                {
                    double[] purch0 = Purchase.GoldFlowPurchase(userCurrent);
                    int[] purch = { Convert.ToInt32(purch0[0]), Convert.ToInt32(purch0[1]) };
                    purch[0] = (purch[0] > 0) ? (int)Math.Max(0, purch[0] - Gold.GoldTotal(userCurrent, "Shell")) : 0;
                    if (req.t == 1 && (fbUser.TWLink == req.w || req.w == "")) Response += Exc(99, "{'r':1,'d':" + JsonConvert.SerializeObject(purch) + "}");
                    else if (req.t == 2 && (fbUser.FBLink == req.v || req.v == "")) Response += Exc(99, "{'r':1,'d':" + JsonConvert.SerializeObject(purch) + "}");
                    else Response += Exc(173);
                }
            }
            //========== Tutorial:
            else if (method == "Tutorial")
            {
                if (Util.IsValidType(userCurrent.Flags, (int)Flag.Tutorial))
                {
                    Response += Exc(178);
                }
                else
                {
                    userCurrent.Flags = Util.AddType(userCurrent.Flags, (int)Flag.Tutorial);
                    Level l = new Level(2);
                    userCurrent.Experience += l.e;
                    userCurrent.SetLevel(time);
                    Response += Exc(99);
                }
            }
            //========== NewLevel:
            else if (method == "NewLevel")
            {
                int zone = 0;
                if (req.n > 0)
                {
                    var HQ = new UserBuilding(userCurrent, BuildingType.HeadQuarters);
                    HQ.SetFuel(time, userCurrent);
                    Zone z = Zone.GetZoneByLevel(req.n);
                    if (z != null)
                    {
                        zone = z.zone;
                        if (userCurrent.IsZoneOpened(zone)) zone = 0;
                        else userCurrent.OpenZone(z.zone, true);
                    }
                }
                string bbb = (zone == 0) ? "[]" : JsonConvert.SerializeObject(UserBuilding.GetUserNewBuildingsIds(userCurrent, time, zone));
                Response += Exc(99, "{'a':'" + UserAction.GetUserActions(userCurrent.id, time).Replace("\"", "#") + "','b':" + bbb + "}");
            }
            //========== EpisodeComplete:
            else if (method == "EpisodeComplete")
            {
                var userCampaign = new UserCampaign(req.t, userCurrent);
                if (userCampaign.EpisodeComplete(req.q, req.d) == 99)
                {
                    var extramoney = 0;
                    var extradetails = 0;
                    var extraexp = 0;
                    var campaign = new Campaign(req.t, req.q, req.d);
                    var episodeRewards = new List<int>();
                    var campaignRewards = new List<int>();
                    var userNewBuildingsIds = new List<int>();

                    int[] tmp = userCurrent.AddBonus(campaign.reward1, campaign.reward1Num, campaign.reward1Item, "Episode", campaign.id, false);
                    episodeRewards.Add(tmp[0]);
                    episodeRewards.Add(tmp[1]);
                    extramoney += tmp[2];
                    extradetails += tmp[3];

                    tmp = userCurrent.AddBonus(campaign.reward2, campaign.reward2Num, campaign.reward2Item, "Episode", campaign.id, false);
                    episodeRewards.Add(tmp[0]);
                    episodeRewards.Add(tmp[1]);
                    extramoney += tmp[2];
                    extradetails += tmp[3];

                    tmp = userCurrent.AddBonus(campaign.reward3, campaign.reward3Num, campaign.reward3Item, "Episode", campaign.id, false);
                    episodeRewards.Add(tmp[0]);
                    episodeRewards.Add(tmp[1]);
                    extramoney += tmp[2];
                    extradetails += tmp[3];

                    if (userCampaign.CampaignComplete(req.d))
                    {
                        if ((int)Define.Get(Def.QueueCampaign) == req.t)
                        {
                            userCurrent.Flags = Util.AddType(userCurrent.Flags, (int)Flag.ThirdBuildingQueue);
                        }

                        campaign = new Campaign(req.t, 0, req.d);
                        tmp = userCurrent.AddBonus(campaign.reward1, campaign.reward1Num, campaign.reward1Item, "Campaign", campaign.id, false);
                        campaignRewards.Add(tmp[0]);
                        campaignRewards.Add(tmp[1]);
                        extramoney += tmp[2];
                        extradetails += tmp[3];

                        tmp = userCurrent.AddBonus(campaign.reward2, campaign.reward2Num, campaign.reward2Item, "Campaign", campaign.id, false);
                        campaignRewards.Add(tmp[0]);
                        campaignRewards.Add(tmp[1]);
                        extramoney += tmp[2];
                        extradetails += tmp[3];
                        extraexp = campaign.reward2Num;
                        tmp = userCurrent.AddBonus(campaign.reward3, campaign.reward3Num, campaign.reward3Item, "Campaign", campaign.id, false);
                        campaignRewards.Add(tmp[0]);
                        campaignRewards.Add(tmp[1]);
                        extramoney += tmp[2];
                        extradetails += tmp[3];

                        userCurrent.AddBonus(-1, 0, -1, "Campaign", campaign.id);

                        var todoService = new TodoService();
                        todoService.ProcessTodoStep(userCurrent, TodoService.TodoStepType.PlayCampaign);
                    }
                    if (campaign.openZone > 0 && !userCurrent.IsZoneOpened(campaign.openZone))
                    {
                        userCurrent.OpenZone(campaign.openZone);
                        userNewBuildingsIds = UserBuilding.GetUserNewBuildingsIds(userCurrent, time, campaign.openZone);
                    }
                    if (userCurrent.TestGroup == 0 && req.q == 1 && req.d == 0) userCurrent.TestGroup = userCurrent.id % 2 + 1;

                    var fightService = new FightService();
                    var rUser = JsonConvert.DeserializeObject<ResUser[]>(req.s)[0];
                    BattleLogistics bll = fightService.CompleteBattleResult(userCurrent, extramoney, fightService.ConvertFromResUser(rUser), 1, time);
                    bll.parts = extradetails;
                    bll.money = extramoney;
                    bll.exp = extraexp;
                    bll.VIPmoney = (int)userCurrent.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, extramoney, time);
                    bll.VIPparts = (int)userCurrent.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, extradetails, time);
                    bll.VIPexp = (int)userCurrent.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, extraexp, time);
                    userCurrent.AddMoneyWithoutLimits(bll.VIPmoney);
                    userCurrent.AddDetailsWithoutLimits(bll.VIPparts);
                    userCurrent.SpendMoney(bll.clanTax + bll.repair);
                    userCurrent.Experience += bll.VIPexp;
                    userCurrent.SetLevel(time);
                    Response += Exc(99, "{'e':" + JsonConvert.SerializeObject(episodeRewards.ToArray()) + ",'o':\\'" + JsonConvert.SerializeObject(bll, Formatting.None, new BattleLogisticsConverter()).Replace("\"", "#") + "\\','c':" + JsonConvert.SerializeObject(campaignRewards.ToArray()) + ",'b':" + JsonConvert.SerializeObject(userNewBuildingsIds.ToArray()) + "}");
                }
                else Response += Exc(175);
            }
            //========== SetReload:
            else if (method == "SetReload")
            {
                UserUnit uunit = new UserUnit(req.t);
                if (uunit.i == 0)     //   Есть ли такой танк
                {
                    Response += Exc(107);
                    return Response;
                }
                if (uunit.u != userCurrent.id) //   Принадлежит ли танк пользователю
                {
                    Response += Exc(111);
                    return Response;
                }
                Response += Exc(uunit.SetReload(req.b));
            }
            //========== SetRepair:
            else if (method == "SetRepair")
            {
                var userUnit = new UserUnit(req.t);
                if (userUnit.Id == 0)     //   Есть ли такой танк
                {
                    Response += Exc(107);
                    return Response;
                }
                if (userUnit.u != userCurrent.id) //   Принадлежит ли танк пользователю
                {
                    Response += Exc(111);
                    return Response;
                }
                Response += Exc(userUnit.SetRepair(req.b));
            }
            //========== AddSFriend:
            else if (method == "AddSFriend")
            {
                var uunit = new UserUnit(req.t);
                if (uunit.i == 0)     //   Есть ли такой танк
                {
                    Response += Exc(107);
                    return Response;
                }
                if (uunit.u != userCurrent.id || uunit.sharingClanUnit < 0) //   Принадлежит ли танк пользователю
                {
                    Response += Exc(111);
                    return Response;
                }

                //Friend ufrnd = new Friend(req.f);
                var ufrnd = new UserCrew(req.f);

                if (ufrnd.id == 0)     //   Есть ли такой friend
                {
                    Response += Exc(114);
                    return Response;
                }


                Response += Exc(uunit.AddFriend(ufrnd.id, "td"));
            }
            //========== RemFriend:
            else if (method == "RemFriend")
            {
                var uunit = new UserUnit(req.t);
                if (uunit.i == 0)     //   Есть ли такой танк
                {
                    Response += Exc(107);
                    return Response;
                }
                if (uunit.u != userCurrent.id) //   Принадлежит ли танк пользователю
                {
                    Response += Exc(111);
                    return Response;
                }
                //Friend ufrnd = new Friend(req.f);
                var ufrnd = new UserCrew(req.f);
                if (ufrnd.id == 0)     //   Есть ли такой friend
                {
                    Response += Exc(114);
                    return Response;
                }
                Response += Exc(uunit.RemFriend(req.f));
            }
            //========== AddShell:
            else if (method == "AddShell")
            {
                var uunit = new UserUnit(req.t);
                if (uunit.i == 0)     //   Есть ли такой танк
                {
                    Response += Exc(107);
                    return Response;
                }
                if (uunit.u != userCurrent.id) //   Принадлежит ли танк пользователю
                {
                    Response += Exc(111);
                    return Response;
                }
                Response += Exc(uunit.AddBuyShell(req.j, req.n, req.d, userCurrent));
            }
            //========== RemShell:
            else if (method == "RemShell")
            {
                UserUnit uunit = new UserUnit(req.t);
                if (uunit.i == 0)     //   Есть ли такой танк
                {
                    Response += Exc(107);
                    return Response;
                }
                if (uunit.u != userCurrent.id) //   Принадлежит ли танк пользователю
                {
                    Response += Exc(111);
                    return Response;
                }
                Response += Exc(uunit.RemShell(req.j, req.n, req.d));
            }
            //========== PowerSlots:
            else if (method == "PowerSlots")
            {
                if (req.n + userCurrent.PowerSlots > 3) //
                {
                    Response += Exc(149);
                    return Response;
                }
                var sl = new Slot(2);
                double money = req.n * sl.m;
                double gold = req.n * sl.g;

                if (userCurrent.Gold >= gold)
                {
                    if (userCurrent.GetMoney() >= money)
                    {
                        if (sl.g > 0) new Gold(userCurrent, "PowerSlot", sl.n, -sl.g, req.n);
                        userCurrent.PowerSlots += req.n;
                        userCurrent.SpendMoney((int)money);
                        userCurrent.Gold -= gold;
                        userCurrent.Saving();
                        Response += Exc(148);
                    }
                    else Response += Exc(102);
                }
                else Response += Exc(109);
            }
            //========== BuyUnit:
            else if (method == "BuyUnit")
            {
                DefaultUnit unt = new DefaultUnit(req.u);
                if (unt.i == 0) // Есть ли такой Unit
                {
                    Response += Exc(135);
                    return Response;
                }
                if (unt.lm > userCurrent.UserLevel)
                {
                    Response += Exc(156);
                    return Response;
                }
                if (userCurrent.GetUserUnitNum() >= userCurrent.Slots)
                {
                    Response += Exc(154);
                    return Response;
                }
                double discountG = 0;
                double discountM = 0;
                List<UserAction> action = UserAction.GetByItemId(userCurrent.id, ItemType.Tank, unt.i, time);
                if (action.Count > 0)
                {
                    discountG = Math.Ceiling(unt.g * action[0].discount / 100);
                    discountM = Math.Ceiling(unt.m * action[0].discount / 100);
                }
                String resl = "";
                if (userCurrent.Gold >= unt.g - discountG)
                {
                    if (userCurrent.GetMoney() >= unt.m - discountM)
                    {
                        //FriendShop fs = new FriendShop();
                        //Friend ffr = fs.New(userCurrent.id, unt.s);
                        var uunit = new UserUnit(userCurrent.id, req.u, unt.hx, unt.az, ShellShop.GetFirstShell(unt.z, unt.sz, unt.t), 0, unt.c);
                        if (uunit.i == 0)
                        {
                            Response += Exc(0);
                            return Response;
                        }
                        if (unt.g > 0) new Gold(userCurrent, "Tank", unt.i, -(unt.g - discountG));
                        userCurrent.SpendMoney((int)unt.m - (int)discountM);
                        userCurrent.Gold -= unt.g - discountG;
                        userCurrent.Saving();
                        resl += Exc(134, "{'u':" + Util.ToJson(uunit).Replace("\"", "'") + "}");
                    }
                    else resl += Exc(102);
                }
                else resl += Exc(109);
                Response += resl;
            }
            //========== RepairUnit:
            else if (method == "RepairUnit")
            {
                double moneyB4 = userCurrent.GetMoney();
                for (int i = 0; i < req.a.Length; i++)
                {
                    var uunit = new UserUnit(i);
                    if (uunit.i == 0)     //   Есть ли такой танк
                    {
                        Response += Exc(107);
                        return Response;
                    }
                    if (uunit.u != userCurrent.id) //   Принадлежит ли танк пользователю
                    {
                        Response += Exc(111);
                        return Response;
                    }
                    var unt = new DefaultUnit(uunit.t);
                    if (unt.i == 0) // Есть ли такой Unit
                    {
                        Response += Exc(135);
                        return Response;
                    }
                    if (unt.hx == uunit.h) return Exc(136);
                    Int32 nd = uunit.GetRepairPrice(unt);
                    if (userCurrent.GetMoney() >= nd)
                    {
                        userCurrent.SpendMoney(nd);
                        uunit.Hp = 0;
                        uunit.Saving();
                    }
                }
                if (moneyB4 == userCurrent.GetMoney()) return Exc(102);
                userCurrent.Saving();
                return Exc(147);
            }
            //========== HealCrew:
            else if (method == "HealCrew")
            {
                var uwound = new UserWound(req.f);
                if (uwound.id == 0)     //   Есть ли такaя рана
                {
                    Response += Exc(162);
                    return Response;
                }
                if (uwound.userId != userCurrent.id) //   Принадлежит ли рана пользователю
                {
                    Response += Exc(163);
                    return Response;
                }

                Int32 money = uwound.GetHealCost(time);
                if (money - req.n > 5)
                {
                    Response += Exc(176);
                    return Response;
                }
                if (userCurrent.GetMoney() >= req.n)
                {
                    userCurrent.SpendMoney(req.n);
                    uwound.Disappear();
                    userCurrent.Saving();
                    Response += Exc(99);
                }
                else Response += Exc(102);
            }
            //========== GetUser:
            else if (method == "GetUser")
            {
                userCurrent = new User(time, req.nm, req.sn, context.Request.Headers["User"], context.Request.Headers["Auth"], req.p, req.lc, context.Request.Headers["Device"], req.v, req.w);
                if (userCurrent.id == 0) // Есть ли такой пользователь
                {
                    Response += Exc(171);
                    return Response;
                }
                Response += userService.SerializeUser(userCurrent, userCurrent.Newday(time), time);
            }
            //==========  SingleResult
            else if (method == "SingleResult")
            {
                User user = new User(req.u);
                Response += Exc(99);
            }

        }
        catch (Exception e)
        {
            return Exc(161, e.Message);
        }
        return Response;
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

    private String Exc(Int32 e, String o = "")
    {
        var ab = new Error(e, o);
        return JsonConvert.SerializeObject(ab);
    }

    private bool AuthUser(String uid, String auth)
    {
        if (uid != null && auth != null)
        {
            if (SystemDefine.Platform == "vk")
            {
                if (Crypt.md5hash(SystemDefine.AppId + "_" + uid + "_" + SystemDefine.SecretKey) == auth) return true;
            }
            if (SystemDefine.Platform == "ios")
            {
                if (uid.IndexOf("@") > 0 || IsEmail(uid))  // Need to be updated ===========================================================================================================
                {
                    User userCurrent0 = new User(uid);
                    if (userCurrent0.AuthKey == auth || userCurrent0.id == 0) return true;
                }
                else
                {
                    if (Crypt.md5hash(SystemDefine.AppId + "_" + uid + "_" + SystemDefine.SecretKey) == auth) return true;
                }
            }
        }
        return false;
    }

    private static string GetAuth(String uid)
    {
        if (uid != null)
        {
            if (SystemDefine.Platform == "vk")
            {
                return Crypt.md5hash(SystemDefine.AppId + "_" + uid + "_" + SystemDefine.SecretKey);
            }
            if (SystemDefine.Platform == "ios")
            {
                if (uid.IndexOf("@") > 0 || IsEmail(uid))  // Need to be updated ===========================================================================================================
                {
                    User userCurrent0 = new User(uid);
                    return userCurrent0.AuthKey;
                }
                return Crypt.md5hash(SystemDefine.AppId + "_" + uid + "_" + SystemDefine.SecretKey);
            }
        }
        return null;
    }

    private bool SignUser(String sign, String req, String uid, String auth, String meth, String stime)
    {
        if (req != null && sign != null)
        {
            if (Crypt.md5hash(uid + "_" + auth + "_" + meth + "_" + req + "_" + stime + "_" + SystemDefine.Sign) == sign) return true;
        }
        return false;
    }

    private string SignResponse(String req, String uid, String auth, String meth, String stime)
    {
        if (req != null)
        {
            return Crypt.md5hash(uid + "_" + auth + "_" + meth + "_" + req + "_" + stime + "_" + SystemDefine.Sign);
        }
        return "";
    }

    private static bool IsEmail(string email)
    {
        Regex ptt = new Regex("^((?>[a-zA-Z\\d!#$%&'*+\\-/=?^_`{|}~]+\\x20*|\"((?=[\\x01-\\x7f])[^\"\\\\]|\\\\[\\x01-\\x7f])*\"\\x20*)*(?<angle><))?((?!\\.)(?>\\.?[a-zA-Z\\d!#$%&'*+\\-/=?^_`{|}~]+)+|\"((?=[\\x01-\\x7f])[^\"\\\\]|\\\\[\\x01-\\x7f])*\")@(((?!-)[a-zA-Z\\d\\-]+(?<!-)\\.)+[a-zA-Z]{2,}|\\[(((?(?<!\\[)\\.)(25[0-5]|2[0-4]\\d|[01]?\\d?\\d)){4}|[a-zA-Z\\d\\-]*[a-zA-Z\\d]:((?=[\\x01-\\x7f])[^\\\\\\[\\]]|\\\\[\\x01-\\x7f])+)\\])(?(angle)>)$");
        return ptt.IsMatch(email);
    }



    private static User SwapUsers(double timeNow, User deviceUser, User socialUser, Request req, string Device)
    {
        string name = (req.nm != "") ? req.nm : "Guest";
        if (socialUser.id == 0 || socialUser.id == deviceUser.id)
        {
            if (deviceUser.id == 0)
            {
                if (req.t == 1 && !string.IsNullOrEmpty(req.v))
                {
                    deviceUser = new User(timeNow, name, req.lc, req.v, GetAuth(req.v), "", "EN", Device, req.v, "");
                }
                if (req.t == 2 && !string.IsNullOrEmpty(req.w))
                {
                    deviceUser = new User(timeNow, name, req.lc, req.w, GetAuth(req.w), "", "EN", Device, "", req.w);
                }
            }

            if (req.t == 1 && !string.IsNullOrEmpty(req.v))
            {
                deviceUser.FBLink = req.v;
                deviceUser.SocialID = req.v;
                deviceUser.AuthKey = GetAuth(req.v);
                deviceUser.Name = (deviceUser.Name == "Guest" && name != "Guest") ? name : deviceUser.Name;
                //new Gold(deviceUser, "FBLink", 0, Define.FBLinkGold, 1);
                //deviceUser.g += Define.FBLinkGold;
                SetNewDevice(deviceUser, Device);
                deviceUser.Password();
                deviceUser.Saving();
            }
            if (req.t == 2 && !string.IsNullOrEmpty(req.w))
            {
                deviceUser.TWLink = req.w;
                deviceUser.SocialID = req.w;
                deviceUser.AuthKey = GetAuth(req.w);
                deviceUser.Name = (deviceUser.Name == "Guest" && name != "Guest") ? name : deviceUser.Name;
                //new Gold(deviceUser, "TWLink", 0, Define.TWLinkGold, 1);
                //deviceUser.g += Define.TWLinkGold;
                SetNewDevice(deviceUser, Device);
                deviceUser.Password();
                deviceUser.Saving();
            }
        }
        else
        {
            if (req.t == 1 && (socialUser.TWLink == req.w || req.w == "") && !string.IsNullOrEmpty(req.v))
            {
                if (deviceUser.TWLink == "" && deviceUser.FBLink == "")
                {
                    double[] purch = Purchase.GoldFlowPurchase(deviceUser);
                    purch[0] = (purch[0] > 0) ? Math.Max(0, purch[0] - Gold.GoldTotal(deviceUser, "Shell")) : 0;
                    if (purch[0] > 0) new Gold(socialUser, "Account", deviceUser.id, purch[0], 1);
                    socialUser.Gold += purch[0];
                    socialUser.AddMoney((int)purch[1]);
                    deviceUser.Disappear();
                }
                deviceUser = socialUser;
                deviceUser.SocialID = req.v;
                deviceUser.AuthKey = GetAuth(req.v);
                deviceUser.Name = (deviceUser.Name == "Guest" && name != "Guest") ? name : deviceUser.Name;
                deviceUser.Password();
                SetNewDevice(deviceUser, Device);
                deviceUser.Saving();
            }
            else if (req.t == 2 && (socialUser.FBLink == req.v || req.v == "") && !string.IsNullOrEmpty(req.w))
            {
                if (deviceUser.TWLink == "" && deviceUser.FBLink == "")
                {
                    double[] purch = Purchase.GoldFlowPurchase(deviceUser);
                    purch[0] = (purch[0] > 0) ? Math.Max(0, purch[0] - Gold.GoldTotal(deviceUser, "Shell")) : 0;
                    if (purch[0] > 0) new Gold(socialUser, "Account", deviceUser.id, purch[0], 1);
                    socialUser.Gold += purch[0];
                    socialUser.AddMoney((int)purch[1]);
                    deviceUser.Disappear();
                }
                deviceUser = socialUser;
                deviceUser.SocialID = req.w;
                deviceUser.AuthKey = GetAuth(req.w);
                deviceUser.Name = (deviceUser.Name == "Guest" && name != "Guest") ? name : deviceUser.Name;
                deviceUser.Password();
                SetNewDevice(deviceUser, Device);
                deviceUser.Saving();
            }
        }
        return deviceUser;
    }

    private static void SetNewDevice(User user, String newDevice)
    {
        user.Device = newDevice;
        var key = "last_device_" + user.SocialID;
        Caching.Remove(key);
        Caching.Add(key, newDevice);
    }

    private string ReadRequest(HttpContext context)
    {
        long nLen = context.Request.InputStream.Length;
        var bytes = new byte[nLen];
        context.Request.InputStream.Read(bytes, 0, Convert.ToInt32(nLen));
        return Encoding.UTF8.GetString(bytes);
    }

    public Error GetDataForProcessor(Processor processor, r r, HttpContext httpContext, double timeNow, out User userResult, out Request requestResult, out string headerDevice, out string headerUser, out string headerAuth)
    {
        userResult = null;
        requestResult = null;
        headerDevice = headerUser = headerAuth = string.Empty;

        if (SystemDefine.ShutDown)
            return new Error(161);

        if (httpContext.Request.Headers["Client"] != SystemDefine.ClientVersion && !SystemDefine.Maintenance)
            return new Error(177);

        headerUser = httpContext.Request.Headers["User"];
        if (string.IsNullOrEmpty(headerUser))
            return Error.UNKNOWN;

        var inputStream = r.ReadRequest(httpContext);
        requestResult = JsonConvert.DeserializeObject<Request>(inputStream);

        string headerMethod = httpContext.Request.Headers["Method"];
        headerDevice = httpContext.Request.Headers["Device"];

        //========== Signing:
        headerAuth = httpContext.Request.Headers["Auth"];
        string headerSign = httpContext.Request.Headers["Sign"];
        string headerTime = httpContext.Request.Headers["Time"];

        if (CheckSign && !r.SignUser(headerSign, inputStream, headerUser, headerAuth, processor.Method, headerTime)) // UserId: 14228555 = viewer_id
            return Error.SIGN_FAILED;

        if (processor.NeedAuth && !r.AuthUser(headerUser, headerAuth))
            return Error.AUTH_FAILED;

        if (processor.NeedUser)
        {
            userResult = new User(headerUser);
            if (userResult.id == 0)
                return new Error(108);

            if (headerMethod != "LogUser" && headerMethod != "AccountLinked")
                userResult.RemoveLimitTask(timeNow);
        }

        return Error.OK;
    }

    public abstract class Processor
    {
        public string Method = string.Empty;
        public bool NeedAuth = true;
        public bool NeedUser = true;

        protected BlindBuyService blindBuyService = new BlindBuyService();
        protected ClanService clanService = new ClanService();
        protected ChatService chatService = new ChatService();
        protected ItemService itemService = new ItemService();
        protected PushService pushService = new PushService();
        protected UserService userService = new UserService();
        protected RadarService radarService = new RadarService();
        protected CrewService crewService = new CrewService();
        protected FightService fightService = new FightService();
        protected TournamentService tournamentService = new TournamentService();
        protected TopService topService = new TopService();
        protected SocialService socialService = new SocialService();
        protected EvolveService evolveService = new EvolveService();
        protected MarketService marketService = new MarketService();
        protected EventService eventService = new EventService();
        protected TodoService todoService = new TodoService();
        protected MailService mailService = new MailService();
        protected SharingService sharingService = new SharingService();
        protected PaymentService paymentService = new PaymentService();
        protected ResearchService researchService = new ResearchService();

        public string DoProcess(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Process(user, request, timeNow, headerData);
        }

        protected abstract string Process(User user, Request request, double timeNow, HeaderData headerData);

        protected string Exc(int e, string o = "")
        {
            return JsonConvert.SerializeObject(new Error(e, o));
        }

        public class HeaderData
        {
            public string HeaderDevice;
            public string HeaderUser;
            public string HeaderAuth;
        }

    }

    internal class TryDevice : Processor
    {
        public TryDevice()
        {
            NeedAuth = false;
            NeedUser = false;
        }

        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var networkBuffer = new NetworkBuffer();
            if (string.IsNullOrEmpty(headerData.HeaderUser))
                return Util.ToJson(Error.USER_NOT_FOUND);

            //single banned device
            if (headerData.HeaderDevice == "2212a127e0cae9410d6532e6bb82c7e9") return Util.ToJson(Error.INCORRECT_DEVICE);
           
            var key = "last_device_" + headerData.HeaderUser;
            var cachedDevice = Caching.Get<string>(key);
            if (cachedDevice == null)
            {
                user = new User(headerData.HeaderUser);
                if (user.id == 0)
                {
                    Caching.Add(key, "INVALID_DEVICE");
                    return Exc(108);
                }
                if (user.y)
                {
                    return Util.ToJson(Error.CONNECT_ERROR);
                }
                cachedDevice = user.Device;
                Caching.Add(key, cachedDevice);
            }

            if (cachedDevice != headerData.HeaderDevice)
                return Util.ToJson(Error.INCORRECT_DEVICE);

            var userId = userService.GetUserIdBySocialId(headerData.HeaderUser);

            userService.AddOrUpdateOnlineUser(userId);

            var kick = clanService.GetAndRemoveClanKick(userId);
            if (kick != null)
                networkBuffer.Add("clanKick", kick);

            var tournamentInvite = tournamentService.GetOpenInvite(userId);
            if (tournamentInvite != null)
                networkBuffer.Add("tournamentInvite", tournamentInvite);

            if (networkBuffer.Data != null && networkBuffer.Data.Count > 0)
                return Util.ToJson(networkBuffer);

            return Util.ToJson(Error.OK);
        }
    }

    internal class LogUser : Processor
    {
        public LogUser()
        {
            NeedUser = false;
        }

        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            if (string.IsNullOrEmpty(headerData.HeaderUser))
                return Util.ToJson(Error.USER_NOT_FOUND);
            //single banned device
            //if (headerData.HeaderDevice == "efd405fb831fe8fe789d60f8ea944b33") return Util.ToJson(Error.USER_NOT_FOUND);

            
            user = new User(headerData.HeaderUser);

            //check if player linked by game center of facebook
            if (request != null && request.t > 0 && (!string.IsNullOrEmpty(request.v) || !string.IsNullOrEmpty(request.w))) //v - social, w - game center
            {
                var userSocial = new User(request.v, request.w, request.t);
                user = SwapUsers(timeNow, user, userSocial, request, headerData.HeaderDevice);
                if (userSocial.id == 0) user.rg = 1;
                fightService.ResetBattleAndScanState(user); //TODO:move this call to NewDay()?
                //eventService.GenerateOrResetEventForUser(user);
                todoService.ResetTodoList(user);

                if (user.id == 0)
                {
                    user = new User(timeNow, "Guest", request.lc, headerData.HeaderUser, headerData.HeaderAuth, "", "EN", headerData.HeaderDevice);
                }
                if (request.t == 1) // FB
                {
                    var ss = new SocialService();
                    ss.ActivateFriend(userSocial.id, userSocial.SocialID);
                }
                return userService.SerializeUser(user, user.Newday(timeNow), timeNow);
            }

            if (user.id == 0) // Есть ли такой пользователь
            {
                if (request != null && request.t == 0)
                {
                    user = new User(timeNow, "Guest", request.lc, headerData.HeaderUser, headerData.HeaderAuth, "", "EN", headerData.HeaderDevice);
                    if (user.id == 0)
                        return Util.ToJson(Error.LINK_FAILED);
                }

                fightService.ResetBattleAndScanState(user); //TODO:move this call to NewDay()?
                //eventService.GenerateOrResetEventForUser(user); //TODO:move this call to NewDay()?
                todoService.ResetTodoList(user);
                return userService.SerializeUser(user, user.Newday(timeNow), timeNow);
            }

            if (user.Device != headerData.HeaderDevice)
            {
                SetNewDevice(user, headerData.HeaderDevice);
                user.Saving();
            }

            fightService.ResetBattleAndScanState(user); //TODO:move this call to NewDay()?
            eventService.GenerateOrResetEventForUser(user); //TODO:move this call to NewDay()?
            todoService.ResetTodoList(user);
            userService.AddOrUpdateOnlineUser(user.id);
            return userService.SerializeUser(user, user.Newday(timeNow), timeNow);
        }
    }

    //
    internal class FindPlayers : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(userService.FindUserProfiles(request.s));
        }
    }

    internal class ChangeName : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(userService.ChangeName(user, request.s));
        }
    }

    internal class ChangeLocale : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(userService.ChangeLocale(user, request.s));
        }
    }

    //clan
    internal class CreateClan : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return clanService.Create(user, request.name, request.flag, request.s, request.n, request.b);
        }
    }

    internal class GetClan : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var clan = clanService.GetClanWithStatistic(request.id);
            return clan != null ? Util.ToJson(clan) : Util.ToJson(Error.CLAN_NOT_FOUND);
        }
    }

    internal class GetClanByName : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var clan = clanService.GetClanByName(request.s);
            return clan != null ? Util.ToJson(clan) : Util.ToJson(Error.CLAN_NOT_FOUND);
        }
    }

    internal class GetClanPlayers : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(clanService.GetPlayersWithStatistics(request.id));
        }
    }

    internal class GetProfile : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var target = userService.GetUserProfile(request.id);
            return target == null
                ? Util.ToJson(Error.USER_NOT_FOUND)
                : Util.ToJson(target);
        }
    }

    internal class ChangeClanConfig : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(clanService.ChangeClanConfig(user, request.dic));
        }
    }

    internal class ChangeClanStatement : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(clanService.ChangeClanStatement(user, request.s));
        }
    }

    internal class AddClanTreasury : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(clanService.AddClanTreasury(user, request.id));
        }
    }

    internal class BuyClanSkill : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(clanService.BuyClanSkill(user, request.id));
        }
    }

    internal class ChangeClanRank : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(clanService.ChangeClanPosition(user, request.id, request.r));
        }
    }

    internal class LeaveClan : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(clanService.LeaveClan(user));
        }
    }

    internal class FireFromClan : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(clanService.FireFromClan(user, request.id));
        }
    }

    internal class JoinClanManual : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return clanService.JoinClanManual(user, request.id);
        }
    }

    internal class InviteToClan : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(clanService.InviteToClan(user, request.id, timeNow));
        }
    }

    internal class InviteToClanByTag : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var target = userService.GetUserByBattleTag(request.s.ToUpperInvariant());
            return target == null
                ? Util.ToJson(Error.USER_NOT_FOUND)
                : Util.ToJson(clanService.InviteToClan(user, target.id, timeNow));
        }
    }

    internal class ChangeClanOwnerByTag : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var target = userService.GetUserByBattleTag(request.s.ToUpperInvariant());
            return target == null
                ? Util.ToJson(Error.USER_NOT_FOUND)
                : Util.ToJson(clanService.ChangeClanLeader(user, target.id));
        }
    }

    //chat
    internal class GetChatHistory : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return chatService.GetChatHistory(request.sl);
        }
    }

    internal class AddMessageToHistory : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //string channel, string userData, string userName, string message
            return Util.ToJson(chatService.AddMessageToChat(request.sl[0], request.sl[1], request.sl[2], request.sl[3]));
        }
    }

    internal class RespondClanInvite : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(clanService.RespondInvite(user, request.id, request.b));
        }
    }

    //
    internal class BuyGood : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var shop = new Shop(request.t);
            if (shop.id <= 0)
                return Exc(186);

            var scale = 1d;
            var num = 0;
            var userActions = UserAction.GetByItemId(user.id, ItemType.InstantPurchase, 0, timeNow);
            if (userActions.Count > 0) scale = (100d - userActions[0].discount) / 100d;

            switch (shop.type)
            {
                case ShopType.Money:
                    num = (int)Math.Floor((double)user.LimitMoney * shop.percentage / 100);
                    break;
                case ShopType.ProductionPoints:
                    num = (int)Math.Floor((double)user.LimitDetails * shop.percentage / 100);
                    break;
            }

            int gold = shop.useSpecial ? (int)Math.Ceiling(num * shop.specialPrice * scale) : (int)Math.Ceiling(num * shop.price * scale);
            if (user.Gold < gold)
                return Exc(109);

            var res = user.AddGood(shop, gold, num);
            return Exc(99);
        }
    }

    internal class InitializeForPush : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            pushService.Register(user, (PushService.Device)request.d, request.s);
            return Util.ToJson(Error.OK);
        }
    }

    internal class DropUpgrade : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(researchService.DropUpgrade(user, request.id, request.t, request.d));
        }
    }

    internal class BuyUpgrade : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(researchService.BuyUpgrade(user, request.t, request.u, request.r, request.b, todoService, timeNow));
        }
    }

    internal class RestoreTank : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            if (user.Gold >= Define.TankRestorePrice)
            {
                new Gold(user, "TankRestore", 0, -(double)Define.TankRestorePrice, 1);
                user.Gold -= Define.TankRestorePrice;
                user.Saving();
                return Exc(99);
            }
            return Exc(109);
        }
    }

    internal class PurchaseBlindBuy : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(blindBuyService.Buy(user, request.s, request.p, timeNow));
        }
    }

    internal class PurchaseBlindBuyByIdent : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(blindBuyService.BuyPackByIdent(user, request.s, timeNow));
        }
    }

    internal class PurchaseCrewBlindBuy : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(blindBuyService.Buy(user, request.s, request.p, timeNow));
        }
    }

    internal class RenameTank : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(blindBuyService.RenameTank(user, request.t, request.s));
        }
    }

    internal class PushTest : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            pushService.Notify(user, PushService.Type.TEST_MESSAGE, -1, "Default");
            return Util.ToJson(Error.OK);
        }
    }

    internal class Build : Processor
    {
        private const int shopOfferPriceId = 2;

        // request.t - type to build, request.n - existing user building id, request.b - for gold
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var type = (BuildingType)request.t;
            var forGold = request.b;
            if (type == BuildingType.None) return Exc(193);

            UserBuilding userBuilding = null;
            var db = new TanksDBDataContext();
            var blist = Query.ListUserBuildings(db, user.id).ToList();

            int countQueue = 0;
            foreach (UserBuildings b0 in blist)
            {
                if (b0.id == request.n) userBuilding = new UserBuilding(b0);
                if (b0.time > timeNow) countQueue++;
            }

            if (userBuilding == null) return Exc(194);
            if (radarService.GetUserZoneState(user.id, userBuilding.zone)) return Exc(203);

            if (type == BuildingType.Ground && userBuilding.type != BuildingType.Ground)
            {
                if (!userBuilding.removable) return Exc(200);
                if (user.Gold < Define.BuildingRemovePrice) return Exc(109);
                int res = userBuilding.DoBuilding(user, type, timeNow, 0, blist);
                if (res == 99)
                {
                    user.Gold -= Define.BuildingRemovePrice;
                    user.Saving();
                }
                return Exc(res, "{'a':'" + UserAction.GetUserActions(user.id, timeNow).Replace("\"", "#") + "'}");
            }

            Building b;
            int userQueue = (Util.IsValidType(user.Flags, (int)Flag.ThirdBuildingQueue)) ? Define.BuildingQueue : Define.BuildingQueue - 1;
            if (userBuilding.type == BuildingType.Ground && type != BuildingType.Ground)
            {
                if (countQueue >= userQueue) return Exc(202);
                b = new Building(1, type);
            }
            else
            {
                if (countQueue >= userQueue && userBuilding.blevel > -1) return Exc(202);
                b = new Building(userBuilding.blevel + 1, type);
            }

            if (b.id == 0) return Exc(195);

            var HQBuilding = new UserBuilding(user, BuildingType.HeadQuarters);
            if (b.HQLevelReq > HQBuilding.GetLevel(timeNow))
                return Exc(199);

            //1 - calculate price by ratio            
            var shopOffer = new Shop(shopOfferPriceId);
            float ratio = shopOffer == null ? 0 : (float)shopOffer.price;

            //2 - validate
            if (!forGold && user.GetMoney() < b.buildingPrice)
                return Util.ToJson(Error.LACK_MONEY);

            var goldRequired = (b.buildingPrice - user.GetMoney()) * ratio;
            if (forGold && user.Gold < goldRequired)
                return Util.ToJson(Error.LACK_GOLD);

            //3 - build
            int res2 = userBuilding.DoBuilding(user, type, timeNow, b.buildingTime * 60 * 1000, blist);
            if (res2 == 99)
            {
                if (forGold && b.buildingPrice > user.GetMoney())
                {
                    user.Gold -= goldRequired;
                    user.SpendMoney(user.GetMoney());
                }
                else
                {
                    user.SpendMoney(b.buildingPrice);
                }

                user.Saving();

                //
                if (userBuilding.blevel > 1)
                    todoService.ProcessTodoStep(user, TodoService.TodoStepType.UpgradeBuilding);
            }

            return Exc(res2, "{'a':'" + UserAction.GetUserActions(user.id, timeNow).Replace("\"", "#") + "'}");
        }
    }

    internal class Collect : Processor
    { // request.n - existing user building id
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var userBuilding = new UserBuilding(request.n);
            if (userBuilding.id == 0) return Exc(194);
            if (radarService.GetUserZoneState(user.id, userBuilding.zone)) return Exc(203);
            //if (ub.IsUnderConstruction(this.time)) return r.Exc(196);
            var building = new Building(userBuilding.GetLevel(timeNow), userBuilding.type);
            if (building.id == 0) return Exc(195);

            int res = userBuilding.DoCollectSingle(user, timeNow, building);
            if (userBuilding.type == BuildingType.Market && res >= TodoService.Collect400MoneyMarket)
            {
                todoService.ProcessTodoStep(user, TodoService.TodoStepType.Collect400MoneyMarket);
            }

            return Exc(99, res.ToString());
        }
    }

    internal class ZoneCollect : Processor
    { // request.q - existing user zone
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            if (radarService.GetUserZoneState(user.id, request.q)) return Exc(203);
            UserBuilding.CollectResourcesFromZone(user, request.q, timeNow);
            return Util.ToJson(Error.OK);
        }
    }

    internal class Accelerate : Processor
    { // request.n - existing user building id
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var ub = new UserBuilding(request.n);
            if (ub.id == 0) return Exc(194);
            if (radarService.GetUserZoneState(user.id, ub.zone)) return Exc(203);
            if (!ub.IsUnderConstruction(timeNow)) return Exc(197);
            var b = new Building(ub.blevel, ub.type);
            if (b.id == 0) return Exc(195);
            int price = ub.GetAccelerationPrice(timeNow, b);
            if (price - request.q > 5) return Exc(307);
            if (user.Gold < request.q) return Exc(109);
            int res = ub.DoAccelerate(user, timeNow, request.q);
            return Exc(99, "{'a':'" + UserAction.GetUserActions(user.id, timeNow).Replace("\"", "#") + "'}");
        }
    }

    internal class AccelerateByItem : Processor
    {// request.n - existing user building id, request.id - user item id
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var userBuilding = new UserBuilding(request.n);
            if (userBuilding.id == 0) return Util.ToJson(Error.NOT_SUCH_A_BUILDING);
            if (radarService.GetUserZoneState(user.id, userBuilding.zone)) return Exc(203);
            if (!userBuilding.IsUnderConstruction(timeNow)) return Exc(197);
            var building = new Building(userBuilding.blevel, userBuilding.type);
            if (building.id == 0) return Exc(195);

            UserItem userItem;
            ItemUseRequestResult itemUseRequestResult;
            var useItemResult = itemService.UseItemById(user, request.id, timeNow, out userItem, out itemUseRequestResult, new List<UserItem.Type> { UserItem.Type.Construction });
            if (useItemResult != Error.OK)
                return Util.ToJson(useItemResult);

            var itemParameters = itemService.GetItemParameters(userItem.itemId);
            userBuilding.UseAccelerationTicket(user, timeNow, itemParameters.itemConfig.param);

            return Exc(99, "{'a':'" + UserAction.GetUserActions(user.id, timeNow).Replace("\"", "#") + "'}");
        }
    }

    internal class GetRadarMissions : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.u - power
            return radarService.GetRandomMission(user, request.u, request.b, timeNow);
        }
    }

    internal class GetGlobalMapState : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.u - power
            return radarService.GetGlobalMapState(user, request.u);
        }
    }

    internal class CompleteRadarMission : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.d - id,  request.id -missionid, request.f - pos, request.b - win, request.s - respve, request.nm - enemySquad, request.t - zoneId, request.u - victimId, User user, request.q - userPower
            return Util.ToJson(radarService.CompleteMission(request.d, request.id, request.f, request.b, request.s, request.nm, request.t, request.u, user, timeNow, request.q));
        }
    }

    internal class SpendFuel : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(userService.SpendFuel(user, BuildingType.HeadQuarters, request.f, timeNow));
        }
    }


    internal class GetUserLogs : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return fightService.GetUserLogs(user);
        }
    }

    internal class BuyFuel : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            if (user.Gold < Define.Get(Def.FuelPrice))
                return Exc(109);

            new Gold(user, "Fuel", 0, -Define.Get(Def.FuelPrice));
            user.Gold -= Define.Get(Def.FuelPrice);
            user.Saving();

            var userBuilding = new UserBuilding(user, BuildingType.HeadQuarters);
            userBuilding.SetFullFuel(timeNow, user);

            return Exc(Error.OK.e);
        }
    }

    internal class SetThirdFuel : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var userHqBuilding = new UserBuilding(user, BuildingType.HeadQuarters);
            userHqBuilding.SetThirdFuel(timeNow, user);
            return Exc(Error.OK.e);
        }
    }

    internal class SetPartialEventFuel : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(eventService.SetPartialEventFuel(user, timeNow));
        }
    }

    internal class BuyEventFuel : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(eventService.BuyFuel(user, request.b, timeNow, request.bl));
        }
    }

    //crew
    internal class CrewResetSkills : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.u - UserCrew  request.a - set of flags
            return Util.ToJson(crewService.ResetAbilities(request.u, request.a, user));
        }
    }

    internal class UpgradeCrewSkill : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(crewService.UpgradeCrewSkill(user, request.id, request.n, timeNow));
        }
    }

    internal class ChangeCrewSkill : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(crewService.ChangeCrewSkill(user, request.id, request.n, request.d, timeNow));
        }
    }

    internal class TransferCrewExperience : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(crewService.TransferCrewExperience(user, request.b, request.id, request.a));
        }
    }

    //buildings
    internal class CancelBuilding : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.n - building id
            var b = new UserBuilding(request.n);
            return Exc(b.CancelBuilding(user, timeNow), "{'a':'" + UserAction.GetUserActions(user.id, timeNow).Replace("\"", "#") + "'}");
        }
    }

    internal class BuyQueue : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            if (!Util.IsValidType(user.Flags, (int)Flag.ThirdBuildingQueue))
            {
                if (Define.Get(Def.QueueGold) > user.Gold) return Exc(109);
                user.Gold -= Define.Get(Def.QueueGold);
                user.Flags = Util.AddType(user.Flags, (int)Flag.ThirdBuildingQueue);
                user.Saving();
                return Util.ToJson(Error.OK);
            }
            return Exc(204);
        }
    }

    internal class BuyZone : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var zone = new Zone(request.n);
            if (zone.id == 0 || user.IsZoneOpened(zone.zone))
                return Util.ToJson(Error.INCORRECT_VALUE);

            if (user.Gold < zone.forGold)
                return Util.ToJson(Error.LACK_GOLD);

            user.Gold -= zone.forGold;
            user.OpenZone(zone.zone);
            user.Saving();

            return Exc(99, "{'b':" + JsonConvert.SerializeObject(UserBuilding.GetUserNewBuildingsIds(user, timeNow, zone.zone)) + "}");
        }
    }

    //items
    internal class UseItem : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            ItemUseRequestResult itemUseRequestResult;
            var result = itemService.UseItemById(user, request.id, timeNow, out itemUseRequestResult);
            return result == Error.OK ? Util.ToJson(itemUseRequestResult) : Util.ToJson(result);
        }
    }

    internal class SellItem : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(itemService.SellItem(user, request.id, request.n));
        }
    }

    internal class GetUserItems : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(itemService.GetItemsByUserId(user.id));
        }
    }

    //tournament
    internal class GetTournament : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            TournamentRequestResult requestResult;
            var result = tournamentService.GetTournament(user, timeNow, out requestResult);

            return result == Error.OK ? Util.ToJson(requestResult) : Util.ToJson(result);
        }
    }

    internal class SendTournamentInvite : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(tournamentService.SendInvite(user, request.id));
        }
    }

    internal class RespondTournamentInvite : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(tournamentService.RespondInvite(user, request.b));
        }
    }

    internal class CancelTournamentInvite : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(tournamentService.CancelInvite(user, request.id));
        }
    }

    internal class GetTournamentBattleConfirm : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            ConfirmedBattleRequestResult requestResult;
            var result = tournamentService.GetConfirmBattle(user, out requestResult);

            return result == Error.OK ? Util.ToJson(requestResult) : Util.ToJson(result);
        }
    }

    internal class ConfirmTournamentBattle : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(tournamentService.ConfirmBattle(user, request.id));
        }
    }

    internal class CancelConfirmTournamentBattle : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(tournamentService.CancelConfirmBattle(user, request.id));
        }
    }

    internal class TournamentOfferSelf : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(tournamentService.OfferSelf(user, request.b));
        }
    }

    internal class SaveTournamentUnitsState : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(tournamentService.SaveUnitsState(user, request.a));
        }
    }

    internal class AcceptTournamentConfirmedInvite : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(tournamentService.AcceptConfirmedInvite(user, request.id));
        }
    }

    internal class AcceptTournamentOffer : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(tournamentService.AcceptOffer(user, request.id));
        }
    }

    internal class GetTournamentOffers : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            List<TournamentParticipant> requestResult;
            var result = tournamentService.GetOffers(user, out requestResult);
            return result == Error.OK ? Util.ToJson(requestResult) : Util.ToJson(result);
        }
    }

    internal class GetTournamentTop : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            List<TournamentDivisionTop> requestResult;
            var result = tournamentService.GetTournamentTop(user, out requestResult);

            return result == Error.OK ? Util.ToJson(requestResult) : Util.ToJson(result);
        }
    }

    #region FightService
    internal class StartBattle : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(fightService.StartBattle(user, request.a, request.id, request.f, timeNow));
        }
    }

    //Arena
    internal class EndBattle : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(fightService.EndBattle(user, request.d, request.id, request.brs, request.t, request.q, timeNow));
        }
    }

    internal class GetUserBattleState : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return fightService.GetUserBattleState(user);
        }
    }

    internal class GetBattleState : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return fightService.GetBattleState(user);
        }
    }

    internal class ScanForBattleOpponents : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.t - MissionType, request.r - power, request.d - delta, request.a - units            
            return Util.ToJson(Error.OK.SetData(fightService.ScanForBattleOpponents(user, request.r, request.a)));
        }
    }

    internal class ClaimBattleReward : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(fightService.ClaimBattleReward(user));
        }
    }

    internal class ClaimBattleBestLvLReward : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(fightService.ClaimBattleBestLevelReward(user));
        }
    }

    internal class BuyBattleAttempts : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(fightService.BuyBattleAttempts(user));
        }
    }

    internal class ResetBattleCooldown : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(fightService.ResetBattleCooldown(user));
        }
    }

    internal class AddBattleDefence : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(fightService.AddBattleDefence(user, request.a, request.q));
        }
    }

    internal class TeamPrepare : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.f - friendId, request.t - MissionType, request.r - power, request.a - units
            return Util.ToJson(fightService.TeamPrepare(user, request.f, (MissionType)request.t, request.r, request.a));
        }
    }

    internal class GetRoom : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.t - MissionType, request.r - power, request.d - delta, request.a - units
            return Util.ToJson(fightService.GetRoom(user, (MissionType)request.t, request.r, request.a));
        }
    }

    internal class GetRoomState : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.id - roomId, request.d - delta
            return Util.ToJson(fightService.GetRoomState(user, request.id, request.d));
        }
    }

    internal class KillRoom : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(fightService.KillRoom(user, request.id));
        }
    }

    internal class LeaveRoom : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(fightService.LeaveRoom(user, request.id, request.s, timeNow));
        }
    }

    internal class StartGame : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.id - roomId, request.b - bot
            return Util.ToJson(fightService.StartGame(user, request.b, request.id, timeNow));
        }
    }

    internal class EndGame : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.id - roomId, request.s - resPVE, request.t - win
            return Util.ToJson(fightService.EndGame(user, request.id, request.brs, request.t, request.n, timeNow));
        }
    }

    internal class GetUserBattleResult : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(fightService.GetUserBattleResult(user.id));
        }
    }

    internal class PreBattleStart : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            PreBattleRquestResult rquestResult;
            var result = fightService.PreBattleStart(user, request.a, (int)request.money, (int)request.gold, out rquestResult);
            return result == Error.OK ? Util.ToJson(rquestResult) : Util.ToJson(result);
        }
    }

    internal class GetBattleTops : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            TopRequestResult requestResult;
            var result = topService.GetBattleTops(user, out requestResult);
            return result != Error.OK ? Util.ToJson(result) : Util.ToJson(requestResult);
        }
    }


    internal class GetRecommendedPower : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.t - MissionType, request.r - power
            return Util.ToJson(fightService.GetRecommendedPower(request.r, (MissionType)request.t));
        }
    }

    internal class JoinRoom : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.t - MissionType, request.r - power, request.a - units, request.d - side
            return Util.ToJson(fightService.JoinRoom(user, request.id, request.r, request.a, (UserBattleInfo.BattleSide)request.d));
        }
    }

    internal class AddBot : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.t - MissionType, request.id - room id
            return Util.ToJson(fightService.AddBot(user, request.id, request.n));
        }
    }

    #endregion

    #region Evolve
    internal class ChangeModification : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return evolveService.ChangeModification(user, request.id, timeNow);
        }
    }

    internal class ChangeTier : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return evolveService.ChangeTier(user, request.id, request.d, timeNow);
        }
    }

    internal class DisassembleTank : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(evolveService.DisassembleTank(user, request.id));
        }
    }
    #endregion

    //others
    internal class AddFeedback : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.name - UserName request.nm - title request.p - content request.r - stars                       
            mailService.SendEmail(SystemDefine.EMail, request.name, request.nm, SystemDefine.RegTemplate, "TankSquad Feedback", request.p, request.r);
            var userFeedBack = new UserFeedback(user, request.r, timeNow, request.nm, request.p);
            return Util.ToJson(userFeedBack.SendReward(user));
        }
    }

    internal class ClaimDailyReward : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            ItemUseRequestResult itemUseRequestResult;
            var result = itemService.ClaimDailyReward(user, timeNow, out itemUseRequestResult);
            return result == Error.OK ? Util.ToJson(itemUseRequestResult) : Util.ToJson(result);
        }
    }

    #region social
    internal class AddFriends : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.sl - friendId                        
            return Util.ToJson(socialService.AddFriend(user, request.sl));
        }
    }

    internal class DeleteFriend : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.s - fb userId
            return Util.ToJson(socialService.DeleteFriend(request.s));
        }
    }

    internal class CheckFriends : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return socialService.CheckFriendsActivity(user).ToString();
        }
    }

    internal class GetFriendList : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return socialService.GetFriendList(user.id, timeNow);
        }
    }

    internal class ClaimReward : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(socialService.ClaimReward(user));
        }
    }
    #endregion

    //market
    internal class GetMarket : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.b - forGold            
            return marketService.LoadMarket(user, request.d, timeNow);
        }
    }

    internal class BuyItemFromMarket : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.d - slot id
            BuyRequestResult buyRequestResult;
            var result = marketService.Buy(user, request.d, timeNow, out buyRequestResult);
            return result == Error.OK ? Util.ToJson(buyRequestResult) : Util.ToJson(result);
        }
    }

    internal class GetGoldItemPrice : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.id - item id request.q - qnty             
            var result = marketService.GetItemPrice(request.id, request.q);
            return Util.ToJson(result);
        }
    }

    internal class InstantBuyItem : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.id - item id request.q - qnty 
            BuyRequestResult buyRequestResult;
            var result = marketService.InstantBuyItem(user, request.id, request.q, out buyRequestResult);
            return result == Error.OK ? Util.ToJson(buyRequestResult) : Util.ToJson(result);
        }
    }

    internal class TankCrewGold : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.nm - action name
            var tankCrewForGold = UserAction.PurchaseForGold(user, timeNow, request.nm);
            return Util.ToJson(tankCrewForGold);
        }
    }

    internal class PurchaseForGold : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.nm - action name
            var good = UserAction.PurchaseForGold(user, timeNow, request.nm);
            return Util.ToJson(good);
        }
    }

    //tutorial
    internal class SaveTutorial : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(userService.SaveTutorial(user, request.s, timeNow));
        }
    }

    //event
    internal class CompleteEventMission : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(eventService.CompleteEventMission(user, request.u, request.b, request.id, request.n, request.p, request.s, timeNow));
        }
    }

    internal class ResurrectEventTank : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(eventService.ResurrectEventTank(user, request.id, request.n, timeNow));
        }
    }

    internal class OpenEventMapCell : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            OpenCellRequestResult openCellRequestResult;
            var result = eventService.OpenCell(user, request.id, request.n, timeNow, out openCellRequestResult);
            return result == Error.OK ? Util.ToJson(openCellRequestResult) : Util.ToJson(result);
        }
    }

    internal class UnblockEventMapCell : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(eventService.UnblockAndOpenCell(user, request.id, request.n, timeNow, null));
        }
    }

    internal class BuyEventMapBonus : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(eventService.BuyBonus(user, request.id, request.n, request.b));
        }
    }

    internal class UseEventMapBonus : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(eventService.UseBonus(user, request.id, request.n, request.u, timeNow));
        }
    }

    internal class EncounterEventAction : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            EncounterActionRequestResult encounterActionRequestResult;
            var result = eventService.EncounterAction(user, request.id, request.d, request.n, request.u, timeNow, out encounterActionRequestResult);
            return result == Error.OK ? Util.ToJson(encounterActionRequestResult) : Util.ToJson(result);
        }
    }

    internal class ClaimEventReward : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(eventService.ClaimEventReward(user, request.id));
        }
    }

    internal class ResetEventRewards : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //clear eventReward progress
            user.eventReward = "";
            user.eventReputation = 0;
            user.Saving();
            return Util.ToJson(Error.OK);
        }
    }

    //premium
    internal class TransferToPremium : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(userService.TransferToPremium(user));
        }
    }

    //log
    internal class SaveUserLogs : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.s - userlog
            //return Util.ToJson(Util.SaveLogs(user, request.s));
            return Util.ToJson(Error.OK);
        }
    }

    //new day start
    internal class NewDayStart : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var checkNewDayStartAndUpdate = userService.CheckNewDayStartAndUpdate(user);
            if (!checkNewDayStartAndUpdate)
                return Util.ToJson(Error.UNKNOWN);

            //
            todoService.ResetTodoList(user, false);

            return Util.ToJson(Error.OK);
        }
    }

    //user todo list
    internal class UpdateTodoStep : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(todoService.UpdateTodoStep(user, request.id));
        }
    }

    internal class ClaimTodoReward : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(todoService.ClaimTodoReward(user, request.id));
        }
    }

    //user mails
    internal class DeleteMail : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(mailService.DeleteMail(user.id, request.n));
        }
    }

    internal class UserMessage : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.u - to User request.s - message
            return Util.ToJson(mailService.UserMessage(user.id, request.u, timeNow, request.p, request.s));
        }
    }

    internal class ReadMail : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(mailService.ReadMail(user.id, request.n));
        }
    }

    internal class ClaimMailReward : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(mailService.ClaimReward(user, request.id));
        }
    }

    internal class GenerateUserPersonalOffer : Processor  //test
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            var result = UserAction.GenerateUserPersonalOffer(user, (int)user.Gold, timeNow);
            if (result == null) return Util.ToJson(Error.ERROR_NO_OFFER);
            result.Saving();
            return Util.ToJson(Error.OK);
        }
    }

    internal class GetMail : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(Error.OK.SetData("{\"mm\":" + mailService.GetMail(user.id, timeNow) + "}"));
        }
    }

    internal class ClanMail : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(clanService.SendBroadcastMail(user, request.s, timeNow));
        }
    }

    internal class UnitShare : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(sharingService.ShareUnit(user, new UserUnit(Convert.ToInt32(request.u)), timeNow));
        }
    }

    internal class UnitUnshare : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(sharingService.UnShareUnit(user, new UserUnit(Convert.ToInt32(request.u)), timeNow));
        }
    }

    internal class UnitHire : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(sharingService.HireUnit(user, new UserUnit(Convert.ToInt32(request.u)), timeNow));
        }
    }

    internal class ClanUnits : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(sharingService.ListClanUnits(user, timeNow));
        }
    }

    internal class HireAgain : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(sharingService.HireAgain(user));
        }
    }

    internal class SendAndroidPaymentData : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.s - SKU request.sn - signature request.sp - JSON                                                                           
            Offer good = new Offer(request.s);
            //Check and give gold
            return Util.ToJson(paymentService.PurchaseGold(user, good.id, true, request.sp, request.sn, "7.7.7.7", timeNow));
        }
    }

    internal class ValidatedPaymentData : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            // request.s - SKU request.sn - signature request.sp - JSON                                                                           
            Offer good = new Offer(request.s);
            //validate
            return Util.ToJson(paymentService.PurchaseGold(user, good.id, true, request.sp, request.sn, "8.8.8.8", timeNow));
        }
    }

    internal class BuySubscription : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(paymentService.BuySupscription(user, (VIPdata)request.n, timeNow));
        }
    }

    internal class SetPushSettings : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(userService.SetPushSettings(user, request.a));
        }
    }

    internal class InviteFriends : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            for (int i = 0; i < request.j; i++)
            {
                todoService.ProcessTodoStep(user, TodoService.TodoStepType.CompletePvPQuest);
            }
            return Util.ToJson(Error.OK);
        }
    }

    internal class Research : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(researchService.ResearchUnit(evolveService, user, request.u, request.t, timeNow));
        }
    }

    internal class AccelerateResearch : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(researchService.AccelerateResearch(user, request.u, timeNow));
        }
    }

    internal class BuyTank : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(researchService.BuyTank(user, request.u, timeNow));
        }
    }

    internal class SellTank : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(researchService.SellTank(user, request.u, timeNow, itemService, tournamentService));
        }
    }

    internal class GenerateOffer : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(UserAction.GenerateUserPersonalOffer(user, request.n, timeNow));
        }
    }

    internal class GetFreeGold : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            return Util.ToJson(paymentService.GetFreeGold(user, timeNow));
        }
    }

    internal class BuyArenaBonus : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.t - bonusType
            return Util.ToJson(fightService.BuyArenaBonus(user, timeNow, (DefenceBonus)request.t));
        }
    }

    internal class GetDeathMatchState : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            DeathMatchEvent requestResult;
            var result = fightService.GetDeathMatchState(user, timeNow, out requestResult);
            return result == Error.OK ? Util.ToJson(requestResult) : Util.ToJson(result);
        }
    }

    internal class TrainCrew : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //parameters.Add("id", "" + userCrew.id);
            //parameters.Add("n", "" + itemId);
            //parameters.Add("d", "" + amount);
            return Util.ToJson(crewService.TrainCrew(user, request.id, request.n, request.d, timeNow));
        }
    }

    internal class SellCrew : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //parameters.Add("id", "" + userCrew.id);            
            return Util.ToJson(crewService.SellCrew(user.id, request.id, request.b));
        }
    }

    internal class RenameCrew : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //parameters.Add("id", "sn");            
            return Util.ToJson(crewService.RenameCrew(user, request.id, request.name));
        }
    }

    internal class ExchangeItemForGold : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.id - item id, request.d - amount, request.n - newId 
            return Util.ToJson(itemService.ExchangeItemForGold(user, request.id, request.d, request.n));
        }
    }

    internal class SendDivMateGift : Processor
    {
        protected override string Process(User user, Request request, double timeNow, HeaderData headerData)
        {
            //request.id - item id, request.d - amount, request.n - newId 
            return Util.ToJson(clanService.SendFriendGift(user, request.id, timeNow));
        }
    }
   
}
