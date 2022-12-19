namespace TW
{
    using System;
    using System.Collections.Generic;
    using System.Linq;

    /// <summary>

    /// </summary>
    public class UserFeedback
    {
        public int id;
        public int userId;
        public string userName;
        public int stars;
        public string title;
        public string text;
        public DateTime postDate;
        public string ver;        

        public UserFeedback(User user, int stars, double timeNow, string title, string text) //constructor
        {                        
            this.userId = user.id;
            this.userName = user.Name + " id=" + user.id;
            this.stars = stars;
            this.title = title;
            this.text = text;
            this.ver = SystemDefine.ClientVersion;
            this.postDate = DateTime.Now;
            Saving();  
        }

        public UserFeedback()
        {
            
        }

            
        public void Saving()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            UserFeedbacks ufb = new UserFeedbacks();            
            ufb.userid = this.userId;
            ufb.userName = this.userName;
            ufb.version = this.ver;
            ufb.stars = this.stars;
            ufb.text = this.text;
            ufb.title = this.title;
            ufb.postDate = this.postDate;
            db.UserFeedbacks.InsertOnSubmit(ufb);
            db.SubmitChanges();
        }

        public void Disappear()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserFeedbacks> units = from u in db.UserFeedbacks
                                          where u.id == this.id
                                          select u;
            foreach (UserFeedbacks u in units)
            {
                db.UserFeedbacks.DeleteOnSubmit(u);
            }
            db.SubmitChanges();
        }
       
        public Error SendReward(User user)
        {
            var reward = new List<Bonus>();
            if (Util.IsValidType(user.Flags, (int)Flag.RatingRewardClaimed)) 
                return Error.OK.SetData(Util.ToJson(reward));
            switch (this.stars)
            {
                case 0:
                case 1:
                case 2:
                    reward = EventService.eventSettings.rewards[2].rewards;
                    break;
                case 3: reward = EventService.eventSettings.rewards[3].rewards;
                    break;
                case 4: reward = EventService.eventSettings.rewards[6].rewards;
                    break;
                case 5: reward = EventService.eventSettings.rewards[9].rewards;
                    break;
            }
            foreach (var item in reward)
            {
                item.id = user.AddBonus(item, "").id;
            }
            user.Flags = Util.AddType(user.Flags, (int)Flag.RatingRewardClaimed);
            user.Saving();
            return Error.OK.SetData(Util.ToJson(reward));
        } 
    }
}