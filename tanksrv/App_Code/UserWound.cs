using System;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;

namespace TW
{
    public class UserWound
    {
        public Int32 id;
        public Int32 userId;
        public Int32 crew;
        public Int32 wound;
        public double timeStart;
        public double timeEnd;
        public Int32 skillsDisabled;

        public UserWound()
        {
        }

        public UserWound(UserWounds c)
        {
            Set(c);
        }

        public UserWound(Int32 id)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserWounds> custs = from c in db.UserWounds
                                           where c.id == id
                                           select c;
            foreach (UserWounds c in custs)
            {
                Set(c);
            }
        }

        public UserWound(Int32 crewId, bool crew = true)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserWounds> custs = from c in db.UserWounds
                                           where c.crew == crewId
                                           select c;
            foreach (UserWounds c in custs)
            {
                Set(c);
            }
        }

        private void Set(UserWounds c)
        {
            this.id = c.id;
            this.userId = c.userId;
            this.crew = c.crew;
            this.wound = c.wound;
            this.timeStart = c.timeStart;
            this.timeEnd = c.timeEnd;
            this.skillsDisabled = c.skillsDisabled;
        }

        public UserWound(Int32 userId, UserCrew crew, Int32 woundType, int skillsDisabled, double timeNow)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            UserWounds ord = new UserWounds { userId = userId, crew = crew.id, wound = woundType, timeStart = timeNow, timeEnd = timeNow + GetWoundTime(crew), skillsDisabled = skillsDisabled };
            db.UserWounds.InsertOnSubmit(ord);
            db.SubmitChanges();
            Set(ord);
        }

        public double GetWoundTime(UserCrew crew)
        {
            Random rnd = new Random();
            double wtime = 600;
            switch (crew.tier)
            {
                case 1: wtime = (double)rnd.Next((10 * 60), (60 * 60) + 1); break;
                case 2: wtime = (double)rnd.Next((10 * 60), (120 * 60) + 1); break;
                case 3: wtime = (double)rnd.Next((60 * 60), (360 * 60) + 1); break;
                case 4: wtime = (double)rnd.Next((60 * 60), (600 * 60) + 1); break;
            }
            return wtime * 1000;
        }

        public int GetHealCost(double serverTime)
        {
            return Convert.ToInt32(Math.Ceiling((timeEnd - serverTime) * Define.HealWoundPrices[wound] / 1000));
        }

        public static string GetUserWound(Int32 id, double timeNow)
        {
            return JsonConvert.SerializeObject(UserWound.GetRawUserWounds(id, timeNow).ToArray(), Formatting.None, new UserWoundsArrayConverter());
        }

        private static List<UserWounds> GetRawUserWounds(int userId, double timeNow)
        {
            var db = new TanksDBDataContext();
            var custs = Query.ListUserWoundsById(db, userId);
            var wounds = new List<UserWounds>();
            var deleteOne = false;
            foreach (var c in custs)
            {
                if (c.timeEnd <= timeNow)
                {
                    db.UserWounds.DeleteOnSubmit(c);
                    deleteOne = true;
                }
                else
                {
                    wounds.Add(c);
                }
            }
            if (deleteOne)
            {
                db.SubmitChanges();
            }
            return wounds;
        }

        public static List<UserWound> GetAllUserWounds(User user, double timeNow)
        {
            List<UserWounds> list = UserWound.GetRawUserWounds(user.id, timeNow);
            List<UserWound> newlist = new List<UserWound>();
            foreach (UserWounds w in list) newlist.Add(new UserWound(w));
            return newlist;
        }

        public void Saving()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserWounds> custs = from c in db.UserWounds
                                           where c.id == this.id
                                           select c;

            foreach (UserWounds c in custs)
            {
                c.userId = this.userId;
                c.crew = this.crew;
                c.wound = this.wound;
                c.timeStart = this.timeStart;
                c.timeEnd = this.timeEnd;
                c.skillsDisabled = this.skillsDisabled;
            }
            db.SubmitChanges();
        }

        public void Disappear()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserWounds> custs = from c in db.UserWounds
                                           where c.id == this.id
                                           select c;
            foreach (UserWounds c in custs)
            {
                db.UserWounds.DeleteOnSubmit(c);
            }
            db.SubmitChanges();
        }

    }
}