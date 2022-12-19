<%@ WebHandler Language="C#" Class="n" %>

using System;
using System.Web;
using System.Text;
using System.Linq;
using System.Collections.Generic;
using System.IO;
using TW;


public class n : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        if (context.Request.QueryString["u"] == "fgkjhghntyjhgfjkh5676767gh67dcgDFghjhghjkJHGhjj")
        {
            context.Response.ContentType = "text/csv";
            FileStream s = File.Open(SystemDefine.LocaleFolderL + "TournamentBattles.csv", FileMode.OpenOrCreate);
            s.Close();
            File.WriteAllText(SystemDefine.LocaleFolderL + "TournamentBattles.csv", GetTournamentBattlesCSVAndClear(), System.Text.Encoding.UTF8);
            context.Response.Redirect(SystemDefine.LocaleFolder + "TournamentBattles.csv", true);
        }
    }

    string GetTournamentBattlesCSVAndClear()
    {
        string res = "id;roomId;userId;clanId;win;points;time;HumanDate;HumanTime\n";
        double timeNow = Util.GetTime();
        TanksDBDataContext db = new TanksDBDataContext();
        IQueryable<UserTournamentBattles> custs = from c in db.UserTournamentBattles
                                                  orderby c.id descending
                                                  select c;
        foreach (UserTournamentBattles c in custs)
        {
            if (c.time + 1296000000 < timeNow) db.UserTournamentBattles.DeleteOnSubmit(c);
            else
            {
                DateTime dt = Util.GetHumanDateTime(c.time);
                res += c.id + ";" + c.roomId + ";" + c.userId + ";" + c.clanId + ";" + c.win + ";" + c.points + ";" + c.time + ";" + dt.ToShortDateString() + ";" + dt.ToLongTimeString() + "." + dt.Millisecond + "\n";
            }
        }
        db.SubmitChanges();

        return res;
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

   

}