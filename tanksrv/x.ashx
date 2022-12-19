<%@ WebHandler Language="C#" Class="x" %>

using System;
using System.Web;
using System.Text;
using System.Linq;
using System.Collections.Generic;
using System.IO;
using Newtonsoft.Json;
using TW;


public class x : IHttpHandler
{
    static int[] comp = { 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100 };

    public void ProcessRequest(HttpContext context)
    {
        if (context.Request.QueryString["u"] == "fgkjhghntyjhgfjkh5676767gh67dcgDFghjhghjkJHGhjj6uyg85658055485")
        {
            context.Response.ContentType = "text/html";
            context.Response.Write(GetUsers());
        }
        if (context.Request.QueryString["u"] == "fgkjhghntyj4rgfdbdfhgfjkh5676767gh67dcgDFghjhghjkJHGhjj6uyg85658055485")
        {
            context.Response.ContentType = "text/html";
            context.Response.Write(TankResearch(Convert.ToInt32(context.Request.QueryString["i"])));
        }
        if (context.Request.QueryString["u"] == "fg5kjhghnty3j4rgfdbdfhgf333jkh5676764hghjkJHG67hjj6uyhbg85658055485")
        {
            context.Response.ContentType = "text/html";
            context.Response.Write(TankResearch298());
        }
        if (context.Request.QueryString["u"] == "compensate")
        {
            context.Response.ContentType = "text/html";
            context.Response.Write(CompensateParts());
        }
        if (context.Request.QueryString["u"] == "recalculate")
        {
            context.Response.ContentType = "text/html";
            context.Response.Write(RecalculateArena());
        }
    }

    string GetUsers()
    {
        List<string> users = new List<string>();
        double timeNow = Util.GetTime();
        TanksDBDataContext db = new TanksDBDataContext();
        IQueryable<int> custs = from c in db.Users
                                orderby c.id ascending
                                select c.id;
        string res = JsonConvert.SerializeObject(custs);
        return res;
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

    private string CompensateParts()
    {
        string result = "";
        int[] mapParts = { 1000, 1000, 1000, 1000, 1300, 1750, 4000, 6000, 8000, 12000, 15000};
        var db = new TanksDBDataContext();

        var userList = from c in db.Users
                       where c.lastLogin > 1472749200000
                       select c;
        var duList = Query.GetDefaultUnits(db).ToList();
        foreach (var u in userList)
        {
            int parts = 0;
            var unitList = Query.ListUserUnitsById.Invoke(db, u.id).ToList();
            foreach (var unit in unitList)
            {
                if (unit.t < 200) continue;
                parts += mapParts[duList.FirstOrDefault(du => du.i == unit.t).sz];
            }
            u.ProductionPoints += parts;
            result += "user #" + u.id + " got " + parts + " |";
        }
        db.SubmitChanges();
        return result;
    }
    private string TankResearch298()
    {
        string res = "";
        ResearchService researchService = new ResearchService();
        double timeNow = Util.GetTime();

        TanksDBDataContext db = new TanksDBDataContext();
        IQueryable<UserUnits> custs = from c in db.UserUnits
                                      where c.t == 298
                                      select c;

        foreach (UserUnits c in custs)
        {
            int t = c.t;
            researchService.CreateResearch(c.u, t, 0, timeNow, true);
            researchService.ResearchUnitAllUpgradesForFree(c.u, t, timeNow);
            while (researchService.GetLinkSourceFromDestination(t) > 0)
            {
                t = researchService.GetLinkSourceFromDestination(t);
                researchService.CreateResearch(c.u, t, 0, timeNow, true);
                researchService.ResearchUnitAllUpgradesForFree(c.u, t, timeNow);
            }
            res += "user#" + c.u + " ok ";
        }
        return res;
    }

    private string TankResearch(int userId)
    {
        string res = "";
        List<int> researched = new List<int>();

        TanksDBDataContext db = new TanksDBDataContext();
        List<UserUnits> uu = Query.ListUserUnitsById.Invoke(db, userId).ToList();
        ResearchService researchService = new ResearchService();
        double timeNow = Util.GetTime();

        foreach (UserUnits u in uu)
        {
            if (u.t >= 200)
            {
                UserUnit unit = new UserUnit(u);

                if (!researched.Contains(unit.t))
                {
                    int t = unit.t;
                    researchService.CreateResearch(userId, t, 0, timeNow, true);
                    while (researchService.GetLinkSourceFromDestination(t) > 0)
                    {
                        t = researchService.GetLinkSourceFromDestination(t);
                        researchService.CreateResearch(userId, t, 0, timeNow, true);
                        researchService.ResearchUnitAllUpgradesForFree(userId, t, timeNow);
                    }
                    researched.Add(unit.t);
                }
            }
        }
        res = "user#" + userId + " ok";
        return res;
    }

    private string UserMigrate(int userId)
    {
        User user = new User(userId);
        int totalGold = 0;
        string res = "";
        List<int> researched = new List<int>();

        TanksDBDataContext db = new TanksDBDataContext();
        List<UserUnits> uu = Query.ListUserUnitsById.Invoke(db, userId).ToList();
        List<UserUnit> uu0 = new List<UserUnit>();
        ResearchService researchService = new ResearchService();
        double timeNow = Util.GetTime();

        foreach (UserUnits u in uu)
        {
            if (u.t < 200)
            {
                UserUnit unit = new UserUnit(u);
                DefaultUnit dunit = new DefaultUnit(unit.t);
                int gold = (int)dunit.g;
                if (gold == 0)
                {
                    List<DefaultUnits> dus = DefaultUnit.GetAllDefaultUnitsFromCache();
                    List<DefaultUnit> duf = new List<DefaultUnit>();
                    foreach (DefaultUnits du in dus)
                    {
                        DefaultUnit ddu = new DefaultUnit(du);
                        if (ddu.Class == dunit.Class && ddu.Tier == dunit.Tier && ddu.i >= 200)
                        {
                            if (ddu.Side == dunit.Side) duf.Insert(0, ddu);
                            else duf.Add(ddu);
                        }
                    }
                    if (duf.Count() == 0) continue;

                    var newUnit = new UserUnit(userId, duf[0].i, duf[0].MaxHp, duf[0].AmmoSize, ShellShop.GetFirstShell(duf[0].Calibre, duf[0].Tier, duf[0].Class), unit.td, duf[0].Power);
                    uu0.Add(newUnit);
                    if (!researched.Contains(duf[0].i))
                    {
                        researchService.ResearchUnitAllUpgradesForFree(user.id, duf[0].i, timeNow);
                        researched.Add(duf[0].i);
                    }
                }
                gold += comp[dunit.Tier];
                unit.Disappear();
                totalGold += gold;
            }
            uu0.Add(new UserUnit(u));

        }
        List<int> uus = new List<int>();
        List<UserUnit> tmp2 = new List<UserUnit>(uu0).OrderByDescending(o => o.power).ToList();
        int cnt = 0;
        foreach (UserUnit u in tmp2)
        {
            if (cnt < 5)
            {
                uus.Add(u.i);
                cnt++;
            }
        }
        user.battleSquad = string.Join(",", uus.Select(x => x.ToString()).ToArray());
        user.Gold += totalGold;
        user.Saving();
        new Gold(user, "Tank Migration", 0, (double)totalGold);
        res = "gold +" + totalGold;
        return res;
    }

    private string  RecalculateArena()
    {
        var fs = new FightService();
        fs.RecalculateSquadPower();
        return "Done";
    }

}