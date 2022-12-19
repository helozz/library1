using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;
namespace TW
{
    /// <summary>
    /// Сводное описание для UserCampaign
    /// </summary>
    public class UserCampaign
    {
        public int id;
        public int campaign;
        public int userID;
        public int completedHard;
        public int completedMedium;
        public int completedEasy;

        public UserCampaign()
        {
            //
            // TODO: добавьте логику конструктора
            //
        }

        public UserCampaign(int campain, User user)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserCampaigns> custs = from c in db.UserCampaigns
                                              where c.campaign == campain && c.userID == user.id
                                              select c;
            if (custs.Count() == 0)
            {
                UserCampaigns ord = new UserCampaigns { userID = user.id, campaign = campain, completedEasy = 0, completedHard = 0, completedMedium = 0 };
                db.UserCampaigns.InsertOnSubmit(ord);
                db.SubmitChanges();
                this.id = ord.id;
                this.campaign = ord.campaign;
                this.userID = ord.userID;
                this.completedHard = ord.completedHard;
                this.completedMedium = ord.completedMedium;
                this.completedEasy = ord.completedEasy;
            }
            else
            {
                foreach (UserCampaigns c in custs)
                {
                    this.id = c.id;
                    this.campaign = c.campaign;
                    this.userID = c.userID;
                    this.completedHard = c.completedHard;
                    this.completedMedium = c.completedMedium;
                    this.completedEasy = c.completedEasy;
                }
            }
        }

        public int EpisodeComplete(int episode, int difficulty)
        {
            bool IsValid = true;
            for (int i = episode - 1; i > 0; i--)
            {
                if (!Util.IsValidType(this.completedEasy, i)) IsValid = false;
            }
            if (difficulty == (int)Difficulty.Hard)
            {
                if (!Util.IsValidType(this.completedEasy, episode)) IsValid = false;
                if (!Util.IsValidType(this.completedMedium, episode)) IsValid = false;
                if (Util.IsValidType(this.completedHard, episode)) IsValid = false;
            }
            else if (difficulty == (int)Difficulty.Medium)
            {
                if (!Util.IsValidType(this.completedEasy, episode)) IsValid = false;
                if (Util.IsValidType(this.completedMedium, episode)) IsValid = false;
            }
            else if (difficulty == (int)Difficulty.Easy)
            {
                if (Util.IsValidType(this.completedEasy, episode)) IsValid = false;
            }
            if (!IsValid) return 175;
            if (difficulty == (int)Difficulty.Hard)
            {
                this.completedHard = Util.AddType(this.completedHard, episode);
            }
            else if (difficulty == (int)Difficulty.Medium)
            {
                this.completedMedium = Util.AddType(this.completedMedium, episode);
            }
            else if (difficulty == (int)Difficulty.Easy)
            {
                this.completedEasy = Util.AddType(this.completedEasy, episode);
            }
            this.Saving();
            return 99;
        }

        public bool CampaignComplete(int difficulty)
        {
            bool complete = true;
            int episodes = Campaign.CampaignEpisodes(this.campaign);
            if (difficulty == (int)Difficulty.Hard)
            {
                for (int i = episodes; i > 0; i--)
                {
                    if (!Util.IsValidType(this.completedHard, i)) complete = false;
                }
            }
            else if (difficulty == (int)Difficulty.Medium)
            {
                for (int i = episodes; i > 0; i--)
                {
                    if (!Util.IsValidType(this.completedMedium, i)) complete = false;
                }
            }
            else if (difficulty == (int)Difficulty.Easy)
            {
                for (int i = episodes; i > 0; i--)
                {
                    if (!Util.IsValidType(this.completedEasy, i)) complete = false;
                }
            }
            return complete;
        }

        public void Saving()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserCampaigns> custs = from c in db.UserCampaigns
                                              where c.id == this.id
                                              select c;
            foreach (UserCampaigns c in custs)
            {
                c.completedEasy = this.completedEasy;
                c.completedMedium = this.completedMedium;
                c.completedHard = this.completedHard;
            }
            db.SubmitChanges();
        }

        public static string GetData(User user)
        {
            List<UserCampaign> list = new List<UserCampaign>();
            for (int j = 1; j <= Define.CampaignCount; j++)
            {
                list.Add(new UserCampaign(j, user));
            }
            return JsonConvert.SerializeObject(list.ToArray(), Formatting.None, new UserCampaignArrayConverter());
        }
    }
}