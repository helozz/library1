using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
﻿using Newtonsoft.Json;

namespace TW
{
    public enum MailType
    {
        AdminBroadcast,
        AdminSingle,
        UserMessage,
        ClanInvite,
        ReadMarker,
        DeletedMarker,
        ClanMessage,
        ClaimMarker
    }

    public class MailboxItem : IToJson
    {
        public int id;
        public int userId;
        public MailType type;
        public double timeCreated;
        public double timeDeleted;
        public int details;
        public string message;
        public string rewards;
        public string topic;
        public bool isRead;
        public int sender;

        public MailboxItem(Mailboxes c)
        {
            this.id = c.id;
            this.userId = c.userId;
            this.type = (MailType)c.type;
            this.timeCreated = c.timeCreated;
            this.timeDeleted = c.timeDeleted;
            this.details = c.details;
            this.message = c.message;
            this.rewards = c.rewards;
            this.topic = c.topic;
            this.isRead = c.isRead;
            this.sender = c.sender;
        }

        public Mailboxes ToMailboxes()
        {
            Mailboxes c = new Mailboxes();
            c.id = this.id;
            c.userId = (int)this.userId;
            c.type = (int)this.type;
            c.timeCreated = this.timeCreated;
            c.timeDeleted = this.timeDeleted;
            c.details = this.details;
            c.message = this.message;
            c.rewards = this.rewards;
            c.topic = this.topic;
            c.isRead = this.isRead;
            c.sender = this.sender;
            return c;
        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            json.BeginObject();
            json.Name("i").Value(id);
            json.Name("u").Value(userId);
            json.Name("t").Value((int)type);
            json.Name("b").Value(timeCreated);
            json.Name("e").Value(timeDeleted);
            json.Name("d").Value(details);
            json.Name("m").Value(message);
            if (message != "")
            {
                json.Name("r").Value(rewards);
            }
            json.Name("p").Value(topic);
            json.Name("x").Value(isRead);
            json.Name("s").Value(sender);
            json.EndObject();
        }
    }

    public class MailService : AbstractService
    {
        public string GetMail(int userId, double timeNow)
        {
            var db = new TanksDBDataContext();
            var list = new List<MailboxItem>();
            var deletemarkers = new List<MailboxItem>();
            var readmarkers = new List<MailboxItem>();
            var claimmarkers = new List<MailboxItem>();
            var custs = Query.DeleteOldMail(db, userId, timeNow);

            foreach (Mailboxes c in custs)
            {
                db.Mailboxes.DeleteOnSubmit(c);
            }
            db.SubmitChanges();

            var cuts = Query.GetUserMail(db, userId).ToList();
            foreach (Mailboxes c in cuts)
            {
                if (c.type == (int)MailType.DeletedMarker) deletemarkers.Add(new MailboxItem(c));
                else if (c.type == (int)MailType.ReadMarker) readmarkers.Add(new MailboxItem(c));
                else if (c.type == (int)MailType.ClaimMarker) claimmarkers.Add(new MailboxItem(c));
                else list.Add(new MailboxItem(c));
            }
            foreach (MailboxItem m in deletemarkers)
            {
                foreach (MailboxItem c in list)
                {
                    if (c.id == m.sender) c.id = 0;
                }
            }
            foreach (MailboxItem m in readmarkers)
            {
                foreach (MailboxItem c in list)
                {
                    if (c.id == m.sender) c.isRead = true;
                }
            }
            foreach (MailboxItem m in claimmarkers)
            {
                foreach (MailboxItem c in list)
                {
                    if (c.id == m.sender) c.rewards = "";
                }
            }
            string s = "[";
            int cnt = 0;
            var clans = new List<int>();
            var users = new List<int>();
            foreach (MailboxItem c in list)
            {
                if (c.userId == 0) continue;
                if (c.id > 0)
                {
                    s += (cnt > 0) ? "," : "";
                    if (c.sender > 0) users.Add(c.sender);
                    if (c.details > 0) clans.Add(c.details);
                    c.message = c.message.Replace("\"", "");
                    s += Util.ToJson(c);
                    cnt++;
                }
            }
            s += "]";
            s += ",\"mcc\":[";
            cnt = 0;
            if (clans.Count > 0)
            {
                List<Clans> cuts2 = Query.GetClansByIds(db, clans).ToList();
                foreach (Clans c in cuts2)
                {
                    s += (cnt > 0) ? "," : "";
                    s += Util.ToJson(c);
                    cnt++;
                }
            }
            s += "]";
            s += ",\"mcm\":[";
            cnt = 0;
            if (users.Count > 0)
            {
                List<Users> cuts2 = Query.GetUsersByIds(db, users).ToList();
                foreach (Users c in cuts2)
                {
                    s += (cnt > 0) ? "," : "";
                    ClanMember cm = new ClanMember(c);
                    s += Util.ToJson(cm);
                    cnt++;
                }
            }
            s += "]";
            return s.Replace("\\", "").Replace("\"[","[").Replace("]\"","]");
        }

        public Error DeleteMail(int userId, int mailId, TanksDBDataContext dbContext = null)
        {
            var db = dbContext ?? new TanksDBDataContext();
            var cuts = Query.GetSingleUserMail(db, userId, mailId);
            foreach (Mailboxes c in cuts)
            {
                db.Mailboxes.DeleteOnSubmit(c);
            }
            db.SubmitChanges();

            cuts = Query.GetSingleBroadcastMail(db, mailId);
            foreach (Mailboxes c in cuts)
            {
                this.CreateMail(userId, c.id, 0, MailType.DeletedMarker, c.timeCreated, c.timeDeleted);
            }
            return Error.OK;
        }

        public Error ReadMail(int userId, int mailId)
        {
            var db = new TanksDBDataContext();
            IQueryable<Mailboxes> cuts = Query.GetSingleUserMail(db, userId, mailId);
            foreach (Mailboxes c in cuts)
            {
                c.isRead = true;
            }
            db.SubmitChanges();

            cuts = Query.GetSingleBroadcastMail(db, mailId);
            foreach (Mailboxes c in cuts)
            {
                this.CreateMail(userId, c.id, 0, MailType.ReadMarker, c.timeCreated, c.timeDeleted);
            }
            return Error.OK;
        }

        public Error AddClaimMarker(int userId, MailboxItem mail)
        {
            this.CreateMail(userId, mail.id, 0, MailType.ClaimMarker, mail.timeCreated, mail.timeDeleted);
            return Error.OK;
        }

        private void CreateMail(int userId, int sender, int details, MailType type, double timeCreated,
            double timeDeleted, string topic = "", string message = "", string rewards = "")
        {
            var db = new TanksDBDataContext();
            Mailboxes c = new Mailboxes
            {
                userId = userId,
                sender = sender,
                details = details,
                type = (int)type,
                timeCreated = timeCreated,
                timeDeleted = timeDeleted,
                topic = topic,
                message = message,
                rewards = rewards,
                isRead = false
            };
            db.Mailboxes.InsertOnSubmit(c);
            db.SubmitChanges();
        }

        public void SendClanMail(User user, double timeNow, List<ClanMember> members, string message)
        {
            foreach (ClanMember clanMember in members)
            {
                CreateMail(clanMember.id, user.id, user.clan_id, MailType.ClanMessage, timeNow, 0, "clanMessage.mailTopic", message);
            }
        }

        public Error ClaimReward(User user, int mailId)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            var db = new TanksDBDataContext();
            var cuts = Query.GetSingleUserMail(db, user.id, mailId);

            var userMail = Enumerable.FirstOrDefault(cuts.Select(um => new MailboxItem(um)));

            bool IsBroadcast = false;

            if (userMail == null)
            {
                List<Mailboxes> list0 = Query.GetBroadcastMailClaim(db, mailId).ToList();
                if (list0.Count() > 1 || list0.Count() == 0) return Error.INCORRECT_VALUE;
                IsBroadcast = true;
                userMail = new MailboxItem(list0[0]);
            }

            //add bonus           
            var rewards = JsonConvert.DeserializeObject<List<Bonus>>(userMail.rewards);
            if (rewards == null)
                return Error.INCORRECT_VALUE;

            var responseResult = new List<Bonus>();
            rewards.ForEach(bonus => responseResult.Add(user.AddBonus(bonus, "mail_bonus")));
            user.Saving();

            if (!IsBroadcast) DeleteMail(user.id, mailId, db);
            else AddClaimMarker(user.id, userMail);

            return Error.OK.SetData(Util.ClearJson(Util.ToJson(responseResult)));
        }

        public Error ClanInvitation(int fromUserId, int toUserId, int clanId, double timeNow, string topic, string message)
        {
            CreateMail(toUserId, fromUserId, clanId, MailType.ClanInvite, timeNow, timeNow + ClanService.InviteMailExpirationMs, topic, message);
            return Error.OK;
        }

        public Error RewardNotification(int userId, double timeNow, string topic, string message, string rewards)
        {
            this.CreateMail(userId, 0, 0, MailType.AdminSingle, timeNow, 0, topic, message, rewards);
            return Error.OK;
        }

        public Error SendGiftToClanmate(int senderId, int clanId, int userId, double timeNow, string rewards)
        {
            this.CreateMail(userId, senderId, clanId, MailType.AdminSingle, timeNow, 0, "clanMessage.mailTopic", "clanMessage.mailGiftMessage", rewards);
            return Error.OK;
        }

        public Error BroadcastMessage(double timeNow, double timeDeleted, string topic, string message, string rewards)
        {
            this.CreateMail(0, 0, 0, MailType.AdminBroadcast, timeNow, timeDeleted, topic, message, rewards);
            return Error.OK;
        }

        public Error UserMessage(int userId, int toUser, double timeNow, string topic, string message)
        {
            this.CreateMail(toUser, userId, 0, MailType.UserMessage, timeNow, 0, topic, message);
            return Error.OK;
        }

        public void SendEmail(string whom, string name, string link, string template, string title, string content = "", int stars = 5)
        {
            string body = PopulateBody(name, stars + " stars. " + content, link, template);
            SendHtmlFormattedEmail(whom, body, title);
        }

        private string PopulateBody(string userName, string content, string Link, string template)
        {
            string body = string.Empty;
            using (var reader = new StreamReader(SystemDefine.LocaleFolderL + template))
            {
                body = reader.ReadToEnd();
            }
            body = body.Replace("{UserName}", userName);
            body = body.Replace("{Content}", content);
            body = body.Replace("{Link}", Link);
            return body;
        }

        private void SendHtmlFormattedEmail(string recepientEmail, string body, string title)
        {
            string SMTP_SERVER = "http://schemas.microsoft.com/cdo/configuration/smtpserver";
            string SMTP_SERVER_PORT = "http://schemas.microsoft.com/cdo/configuration/smtpserverport";
            string SEND_USING = "http://schemas.microsoft.com/cdo/configuration/sendusing";
            string SMTP_USE_SSL = "http://schemas.microsoft.com/cdo/configuration/smtpusessl";
            string SMTP_AUTHENTICATE = "http://schemas.microsoft.com/cdo/configuration/smtpauthenticate";
            string SEND_USERNAME = "http://schemas.microsoft.com/cdo/configuration/sendusername";
            string SEND_PASSWORD = "http://schemas.microsoft.com/cdo/configuration/sendpassword";
            System.Web.Mail.MailMessage mailMessage = new System.Web.Mail.MailMessage();
            mailMessage.Fields[SMTP_SERVER] = SystemDefine.EMailHost;
            mailMessage.Fields[SMTP_SERVER_PORT] = 465;
            mailMessage.Fields[SEND_USING] = 2;
            mailMessage.Fields[SMTP_USE_SSL] = true;
            mailMessage.Fields[SMTP_AUTHENTICATE] = 1;
            mailMessage.Fields[SEND_USERNAME] = SystemDefine.EMail;
            mailMessage.Fields[SEND_PASSWORD] = SystemDefine.EMailPwd;
            mailMessage.From = (SystemDefine.EMailSender + " <" + SystemDefine.EMail + ">");
            mailMessage.Subject = title;
            mailMessage.Body = body;
            mailMessage.To = recepientEmail;
            mailMessage.BodyFormat = System.Web.Mail.MailFormat.Html;
            mailMessage.BodyEncoding = Encoding.UTF8;
            try
            {
                System.Web.Mail.SmtpMail.Send(mailMessage);
            }
            catch
            {

            }
            
        }       


    }
}
