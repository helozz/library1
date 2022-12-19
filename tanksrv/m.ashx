<%@ WebHandler Language="C#" Class="m" %>
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Web;
using System.IO;
using System.Linq;
using Newtonsoft.Json;
using TW;
using System.Text;
using System.Web.SessionState;

public class Admin
{
    public const string pwd = "567WERsda!mko";
    public string pass;
    public bool Set(string p)
    {
        pass = p;
        return pass == pwd;
    }
    public bool IsValid()
    {
        return pass == pwd;
    }
}

public class m : IHttpHandler, IRequiresSessionState
{
    public void ProcessRequest(HttpContext context)
    {

        string response = "";

        string Stage = (string)context.Request["Stage"];

        switch (Stage)
        {
            case "Login":
                {
                    Admin admin = (Admin)context.Session["SessionAdmin"];
                    if (admin == null)
                    {
                        admin = new Admin();
                        admin.Set((string)context.Request["pwd"]);
                    }
                    if (admin.IsValid())
                    {
                        context.Session["SessionAdmin"] = admin;
                        response = MainFormShow(context);
                    }
                    else
                    {
                        response = LoginFormShow(context, "Неправильный логин/пароль");
                    }
                };
                break;

            case "Main":
                {
                    Admin admin = (Admin)context.Session["SessionAdmin"];
                    if (admin != null && admin.IsValid())
                    {
                        int days = Convert.ToInt32((string)context.Request["days"]);
                        string subject = (string)context.Request["subject"];
                        string message = (string)context.Request["message"];
                        string rewards = "";//(string)context.Request["rewards"]; NOT WORKING
                        if (subject == "")
                        {
                            response = MainFormShow(context, "red", "Error: Subject is empty");
                            break;
                        }
                        if (message == "")
                        {
                            response = MainFormShow(context, "red", "Error: Message is empty");
                            break;
                        }
                        if (days <= 0)
                        {
                            response = MainFormShow(context, "red", "Error: Time is not correct");
                            break;
                        }
                        MailService mailService = new MailService();
                        double timeNow = Util.GetTime();
                        double timeX = timeNow + days * 86400000;
                        mailService.BroadcastMessage(timeNow, timeX, subject, message, rewards);
                        response = MainFormShow(context, "green", "Message is sent");
                    }
                    else response = LoginFormShow(context, "Неправильный логин/пароль");
                };
                break;

            default:
                {
                    response = LoginFormShow(context);
                };
                break;
        }


        context.Response.Write(response);
    }


    string LoginFormShow(HttpContext context, string errortext = "")
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(SystemDefine.LocaleFolderL + "LoginFormTemplate.html"))
        {
            body = reader.ReadToEnd();
        }
        body = body.Replace("{actionURL}", "m.ashx");
        body = body.Replace("<!---->", errortext);
        return body;
    }

    string MainFormShow(HttpContext context, string color = "red", string errortext = "")
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(SystemDefine.LocaleFolderL + "MainFormTemplate.html"))
        {
            body = reader.ReadToEnd();
        }
        body = body.Replace("{actionURL}", "m.ashx");
        body = body.Replace("{color}", color);
        body = body.Replace("<!---->", errortext);
        return body;
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}