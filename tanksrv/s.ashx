<%@ WebHandler Language="C#" Class="s" %>

using System;
using System.Collections.Generic;
using System.Globalization;
using System.Web;
using System.IO;
using System.Linq;
using Newtonsoft.Json;
using TW;

public class s : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/html";

        if (context.Request.QueryString["u"] == "fgkjhghntyjhgfjkh5676767gh67dcgDFghjhghjkJHGhjj000")
        {
            StreamWriter f = new StreamWriter(SystemDefine.LocaleFolderL.Replace("Static", "App_Code") + "Define.cs", false, System.Text.Encoding.UTF8);
            f.Write(getDefines(true, false));
            f.Close();
            context.Response.Write("Define000 has been created<br />");
            StreamWriter f2 = new StreamWriter(SystemDefine.LocaleFolderL.Replace("Static", "App_Code") + "SystemDefine.cs", false, System.Text.Encoding.UTF8);
            f2.Write(getSystemDefines(true, false));
            f2.Close();
            context.Response.Write("SystemDefine000 has been created<br />");
        }
        if (context.Request.QueryString["u"] == "fgkjhghntyjhgfjkh5676767gh67dcgDFghjhghjkJHGhjj00")
        {
            StreamWriter f = new StreamWriter(SystemDefine.LocaleFolderL.Replace("Static", "App_Code") + "Define.cs", false, System.Text.Encoding.UTF8);
            f.Write(getDefines(false, true));
            f.Close();
            context.Response.Write("Define00 has been created<br />");
            StreamWriter f2 = new StreamWriter(SystemDefine.LocaleFolderL.Replace("Static", "App_Code") + "SystemDefine.cs", false, System.Text.Encoding.UTF8);
            f2.Write(getSystemDefines(true, true));
            f2.Close();
            context.Response.Write("SystemDefine00 has been created<br />");
            f = new StreamWriter(SystemDefine.LocaleFolderL + "Client.txt", false, System.Text.Encoding.UTF8);
            f.Write(getClient());
            f.Close();
            context.Response.Write("Client has been created<br />");
        }
        if (context.Request.QueryString["u"] == "fgkjhghntyjhgfjkh5676767gh67dcgDFghjhghjkJHGhjj0")
        {
            StreamWriter ff = new StreamWriter(SystemDefine.LocaleFolderL + "Client.txt", false, System.Text.Encoding.UTF8);
            ff.Write(SystemDefine.ClientVersion);
            ff.Close();
            context.Response.Write("Client has been created<br />");
            StreamWriter f = new StreamWriter(SystemDefine.LocaleFolderL + "Static.txt", false, System.Text.Encoding.UTF8);
            f.Write(getData());
            f.Close();
            context.Response.Write("Static has been created<br />");
            //f = new StreamWriter(Define.LocaleFolderL + "RU.txt", false, System.Text.Encoding.UTF8);
            //f.Write(getLocale("RU"));
            //f.Close();
            //f = new StreamWriter(Define.LocaleFolderL + "RU.crc", false, System.Text.Encoding.UTF8);
            //f.Write(Crypt.md5file(Define.LocaleFolderL + "RU.txt"));
            //f.Close();
            //context.Response.Write("RU has been created<br />");
            //f = new StreamWriter(Define.LocaleFolderL + "EN.txt", false, System.Text.Encoding.UTF8);
            //f.Write(getLocale("EN"));
            //f.Close();
            //f = new StreamWriter(Define.LocaleFolderL + "EN.crc", false, System.Text.Encoding.UTF8);
            //f.Write(Crypt.md5file(Define.LocaleFolderL + "EN.txt"));
            //f.Close();
            //context.Response.Write("EN has been created<br />");            
        }
        if (context.Request.QueryString["u"] == "fgkjhghntyjhgfjkh5676767gh67dcgDFghjhghjkJHGhjj")
        {
            StreamWriter f = new StreamWriter(SystemDefine.LocaleFolderL.Replace("Static", "App_Code") + "Define.cs", false, System.Text.Encoding.UTF8);
            f.Write(getDefines(false, false));
            f.Close();
            context.Response.Write("Define has been created<br />");
            StreamWriter f2 = new StreamWriter(SystemDefine.LocaleFolderL.Replace("Static", "App_Code") + "SystemDefine.cs", false, System.Text.Encoding.UTF8);
            f2.Write(getSystemDefines(false, false));
            f2.Close();
            context.Response.Write("SystemDefine has been created<br />");
        }

    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }


    private String getData()
    {
        /*TanksDBDataContext db = new TanksDBDataContext();
        IQueryable<Users> custs = from c in db.Users
                                  select c;
        foreach (Users c in custs)
        {
            c.y = true;
            Caching.Remove("last_device_" + c.SocialID);
        }
        db.SubmitChanges();*/
        DropCaches();

        String dt = "{\"du\":";
        dt += DefaultUnit.GetStatic();
        dt += ",\"ss\":";
        dt += ShellShop.GetStatic();
        //dt += ",\"w\":";
        //dt += Wound.GetStatic();
        dt += ",\"p\":";
        dt += PowerUp.GetStatic();
        dt += ",\"fl\":";
        dt += FriendLevel.GetStatic();
        dt += ",\"lv\":";
        dt += Level.GetStatic();
        dt += ",\"of\":";
        dt += Offer.GetStatic();
        dt += ",\"so\":";
        dt += Shop.GetStatic();
        dt += ",\"cs\":";
        dt += Crew.GetStatic();
        dt += ",\"sk\":";
        dt += Skill.GetStatic();
        dt += ",\"cm\":";
        dt += Campaign.GetStatic();
        dt += ",\"z\":";
        dt += Zone.GetStatic();
        dt += ",\"b\":";
        dt += Building.GetStatic();
        dt += ",\"a\":";
        dt += TW.Action.GetActions();
        dt += ",\"sl\":";
        dt += Slot.GetStatic() + ",";
        dt += "\"gi\":" + Define.InitMoney + ",";
        dt += "\"mi\":" + Define.InitGold + ",";
        dt += "\"qd\":" + Define.QuestDropPrice + ",";
        dt += "\"qp\":" + Define.QuestNowPrice + ",";
        dt += "\"qw\":" + Define.QuestWaitingTime + ",";
        dt += "\"qc\":" + Define.QuestChoosePrice + ",";
        dt += "\"qg\":" + Define.Quest4GoldPercent + ",";
        dt += "\"ud\":" + Define.UpgradeDropPrice + ",";
        dt += "\"sv\":" + Define.StaticVersion + ",";
        dt += "\"cv\":\"" + SystemDefine.ClientVersion + "\",";
        dt += "\"si\":" + Define.InitSlots + ",";
        dt += "\"rp\":" + Define.TankRestorePrice + ",";
        dt += "\"cn\":" + Define.ChangeNamePrice + ",";
        dt += "\"br\":" + Define.BuildingRemovePrice + ",";
        dt += "\"gmc\":" + Define.GMCourse + ",";
        dt += "\"bz\":" + Define.BuildingQueue + ",";
        dt += "\"bq\":" + JsonConvert.SerializeObject(Define.BuildingsLimit) + ",";
        dt += "\"lf\":\"" + SystemDefine.LocaleFolder + "\",";
        dt += "\"def\":" + Define.ToJson();
        dt += ",\"um\":" + JsonConvert.SerializeObject(Define.UpgradeMultiplier);
        dt += ",\"ut\":" + JsonConvert.SerializeObject(Define.UserTierLevels);
        dt += ",\"vp\":" + JsonConvert.SerializeObject(Define.CrewEvolvePrices);
        dt += ",\"ctxg\":" + JsonConvert.SerializeObject(Define.CrewTransferExpGoldPrices);
        dt += ",\"ctxm\":" + JsonConvert.SerializeObject(Define.CrewTransferExpMoneyPrices);
        dt += ",\"cas\":" + JsonConvert.SerializeObject(Define.CrewAdditionalSkills);
        dt += ",\"hw\":" + JsonConvert.SerializeObject(Define.HealWoundPrices);
        dt += ",\"cd\":" + JsonConvert.SerializeObject(Define.CampaignGraphData);
        dt += ",\"bi\":" + JsonConvert.SerializeObject(Define.BeginnerItems);
        dt += ",\"ecee\":" + JsonConvert.SerializeObject(Define.EvolveChangeEliteToElite);
        dt += ",\"emdm\":" + JsonConvert.SerializeObject(Define.EventMissionDifficultyMult);
        dt += ",\"cldgp\":" + JsonConvert.SerializeObject(Define.ClanDonateGoldPacks);
        dt += ",\"cldgpm\":" + JsonConvert.SerializeObject(Define.ClanDonateGoldPacksMult);
        dt += ",\"vmx\":" + JsonConvert.SerializeObject(Define.VIPs);
        dt += ",\"bb\":" + new BlindBuyService().BlindBuySettingsToJson();
        dt += ",\"ii\":" + new ItemService().ItemsSettingsToJson();
        dt += ",\"dr\":" + new FightService().BattleSettingsToJson();
        dt += ",\"ec\":" + new EvolveService().EvolveSettingsToJson();
        dt += ",\"me\":" + new EventService().EventMissionSettingsToJson();
        dt += ",\"tos\":" + new TodoService().TodoObjectiveSettingsToJson();
        dt += ",\"tohr\":" + new TodoService().TodoSettingsToJson();
        dt += ",\"sst\":" + new CrewService().SkillSettingsToToJson();
        dt += ",\"ts\":" + new TournamentService().TournamentSettingsToJson();
        dt += ",\"cls\":" + new ClanService().ClanSettingsToJson();
        dt += ",\"drs\":" + new ItemService().DailyRewardSettingsToJson();
        dt += ",\"ebrm\":" + JsonConvert.SerializeObject(Define.EventBuildingRepM);
        dt += ",\"ttl\":" + (Define.TechTreeLinks).Replace("'","\"");
        dt += ",\"un\":" + UpgradeNew.GetStatic();
        dt += ",\"dmr\":" + (Define.DMRewards).Replace("'","\"");
        dt += ",\"csu\":" + "\"" + (Define.ChatServerUrl) + "\"";
        dt += "}";
        String sig = "?" + gethash(dt);
        dt += sig;
        return dt;
    }

    private void DropCaches()
    {
        Building.DropCache();
        Zone.DropCache();
        UpgradeNew.DropCache();
        DefaultUnit.DropCache();
    }


    private String gethash(String data)
    {
        return Crypt.md5hash(data + "_" + SystemDefine.RSign);
    }

    private String getDefines(bool Maintenance, bool ShutDown = false)
    {
        String s = "";
        TanksDBDataContext db = new TanksDBDataContext();
        using (StreamReader reader = new StreamReader(SystemDefine.LocaleFolderL.Replace("Static", "App_Code") + "DSource.csrc"))
        {
            s += reader.ReadToEnd();
        }

        IQueryable<Zones> custsz = from c in db.Zones
                                   where c.zone > 0
                                   orderby c.zone ascending
                                   select c;
        List<Zones> zones = custsz.ToList();
        string zz = "";
        for (int i = 0; i < zones.Count(); i++)
        {
            zz += (zz == "") ? "" : ",";
            string bds = zones[i].buildings;
            bds = bds.TrimStart('[');
            bds = bds.TrimEnd(']');
            zz += " new int[] {" + bds + "}";
        }
        s = s.Replace("{Zones}", zz.ToString(CultureInfo.InvariantCulture));
        s = s.Replace("{CampaignCount}", Campaign.CampaignCount().ToString(CultureInfo.InvariantCulture));
        s = s.Replace("{Maintenance}", Maintenance.ToString().ToLower());
        s = s.Replace("{ShutDown}", ShutDown.ToString().ToLower());

        IQueryable<Defines> custs = from c in db.Defines
                                    select c;
        foreach (Defines c in custs)
        {
            if (c.n == "StaticVersion")
            {
                if (ShutDown) c.s = (SystemDefine.StaticVersion + 1).ToString(CultureInfo.InvariantCulture);
                else c.s = (SystemDefine.StaticVersion).ToString(CultureInfo.InvariantCulture);
            }
            s = s.Replace("{" + c.n + "}", c.s);
        }
        db.SubmitChanges();

        return s;
    }

    private String getSystemDefines(bool Maintenance, bool ShutDown = false)
    {
        String s = "";
        TanksDBDataContext db = new TanksDBDataContext();
        using (StreamReader reader = new StreamReader(SystemDefine.LocaleFolderL.Replace("Static", "App_Code") + "SDSource.csrc"))
        {
            s += reader.ReadToEnd();
        }

        IQueryable<Zones> custsz = from c in db.Zones
                                   where c.zone > 0
                                   orderby c.zone ascending
                                   select c;
        List<Zones> zones = custsz.ToList();
        string zz = "";
        for (int i = 0; i < zones.Count(); i++)
        {
            zz += (zz == "") ? "" : ",";
            string bds = zones[i].buildings;
            bds = bds.TrimStart('[');
            bds = bds.TrimEnd(']');
            zz += " new int[] {" + bds + "}";
        }
        s = s.Replace("{Zones}", zz.ToString(CultureInfo.InvariantCulture));
        s = s.Replace("{CampaignCount}", Campaign.CampaignCount().ToString(CultureInfo.InvariantCulture));
        s = s.Replace("{Maintenance}", Maintenance.ToString().ToLower());
        s = s.Replace("{ShutDown}", ShutDown.ToString().ToLower());

        IQueryable<SystemDefines> custs = from c in db.SystemDefines
                                          select c;
        foreach (SystemDefines c in custs)
        {
            if (c.n == "StaticVersion")
            {
                if (ShutDown) c.s = (SystemDefine.StaticVersion + 1).ToString(CultureInfo.InvariantCulture);
                else c.s = (SystemDefine.StaticVersion).ToString(CultureInfo.InvariantCulture);
            }
            s = s.Replace("{" + c.n + "}", c.s);
        }
        db.SubmitChanges();

        return s;
    }

    private String getClient()
    {
        String s = "";
        TanksDBDataContext db = new TanksDBDataContext();
        IQueryable<SystemDefines> custs = from c in db.SystemDefines
                                          where c.n == "ClientVersion"
                                          select c;
        foreach (SystemDefines c in custs)
        {
            s = c.s;
        }
        return s;
    }

}