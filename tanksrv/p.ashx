<%@ WebHandler Language="C#" Class="p" %>

using System;
using System.Web;
using TW;
using System.IO;
using System.Text.RegularExpressions;

public class p : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/html";
        if (context.Request.QueryString["m"] != null && context.Request.QueryString["c"] != null)
        {
        
        }
        else
        {
            context.Response.Write("<html><head><title></title></head><body><img src = \"http://91.237.98.115/loginm.png\"  height=\"120\"/></body></html>");
        }
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

    private bool IsEmail(string email)
    {
        Regex ptt = new Regex("^((?>[a-zA-Z\\d!#$%&'*+\\-/=?^_`{|}~]+\\x20*|\"((?=[\\x01-\\x7f])[^\"\\\\]|\\\\[\\x01-\\x7f])*\"\\x20*)*(?<angle><))?((?!\\.)(?>\\.?[a-zA-Z\\d!#$%&'*+\\-/=?^_`{|}~]+)+|\"((?=[\\x01-\\x7f])[^\"\\\\]|\\\\[\\x01-\\x7f])*\")@(((?!-)[a-zA-Z\\d\\-]+(?<!-)\\.)+[a-zA-Z]{2,}|\\[(((?(?<!\\[)\\.)(25[0-5]|2[0-4]\\d|[01]?\\d?\\d)){4}|[a-zA-Z\\d\\-]*[a-zA-Z\\d]:((?=[\\x01-\\x7f])[^\\\\\\[\\]]|\\\\[\\x01-\\x7f])+)\\])(?(angle)>)$");
        return ptt.IsMatch(email);
    }

}