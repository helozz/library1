namespace TW
{
    using System.Collections.Generic;
    using System.Linq;

    /// <summary>
    /// Summary description for UserZone
    /// </summary>
    public class UserZone
    {
        public int id;
        public int userId;
        public int zoneId;
        public int power;
        public double lastLogin;
        public int tanks;
        public double powerUnit;
        public double blockedBefore;

        public UserZone(User user, int zon, double timeNow, bool create = false)
        {
            Zone z = new Zone(zon);
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserZones> custs = from c in db.UserZones
                                          where c.id == this.id
                                          select c;
            foreach (UserZones c in custs)
            {
                SetZone(c);
            }
            if (custs.Count() == 0 && create)
            {
                UserZones ord = new UserZones
                {
                    userId = user.id,
                    zoneId = zon,
                    power = 0,
                    tanks = 0,
                    lastLogin = timeNow,
                    powerUnit = 0,
                    blockedBefore = 0
                };
                db.UserZones.InsertOnSubmit(ord);
                db.SubmitChanges();
                this.SetZone(ord);
            }
        }

        public UserZone(UserZones c)
        {
            SetZone(c);
        }

        public void Attack(double timeNow)
        {
            
        }

        private void SetZone(UserZones c)
        {
            this.id = c.id;
            this.userId = c.userId;
            this.zoneId = c.zoneId;
            this.power = c.power;
            this.lastLogin = c.lastLogin;
            this.tanks = c.tanks;
            this.powerUnit = c.powerUnit;
            this.blockedBefore = c.blockedBefore;
        }


        public void Saving()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserZones> custs = from c in db.UserZones
                                          where c.id == this.id
                                          select c;

            foreach (UserZones c in custs)
            {
                c.userId = this.userId;
                c.zoneId = this.zoneId;
                c.power = this.power;
                c.tanks = this.tanks;
                c.lastLogin = this.lastLogin;
                c.powerUnit = this.powerUnit;
                c.blockedBefore = this.blockedBefore;
            }
            db.SubmitChanges();
        }

        public void Disappear()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserZones> units = from u in db.UserZones
                                          where u.id == this.id
                                          select u;
            foreach (UserZones u in units)
            {
                db.UserZones.DeleteOnSubmit(u);
            }
            db.SubmitChanges();
        }

        public static List<UserZones> GetUserZones(User user, double timeNow)  // Добываем статик
        {
            var db = new TanksDBDataContext();
            IQueryable<UserZones> zones = Query.GetUserZones.Invoke(db, user.id);
            int cnt = 0;
            List<UserZones> list = new List<UserZones>();
            foreach (UserZones uu in zones)
            {
                cnt++;
                uu.lastLogin = timeNow;
                list.Add(new UserZones
                {
                    id = uu.id,
                    userId = uu.userId,
                    zoneId = uu.zoneId,
                    power = uu.power,
                    lastLogin = timeNow,
                    tanks = uu.tanks,
                    powerUnit = uu.powerUnit,
                    blockedBefore = uu.blockedBefore
                });
            }
            db.SubmitChanges();
            if (cnt == 0)
            {
                UserZone uz = new UserZone(user, 1, timeNow, true);
                list.Add(new UserZones
                {
                    id = uz.id,
                    userId = uz.userId,
                    zoneId = uz.zoneId,
                    power = uz.power,
                    lastLogin = uz.lastLogin,
                    tanks = uz.tanks,
                    powerUnit = uz.powerUnit,
                    blockedBefore = uz.blockedBefore
                });
            }
            return list;
        }
        /*
        public void DoCollect(User user, double timeNow)
        {
            int colMoney = (int)Math.Min(this.moneyLimit, Math.Floor(this.moneyPerHour*((timeNow - this.timeCollected)/1000)/3600));
            int colDetails = (int)Math.Min(this.detailsLimit, Math.Floor(this.detailsPerHour * ((timeNow - this.timeCollected) / 1000) / 3600));
            int colResearch = (int)Math.Min(this.researchLimit, Math.Floor(this.researchPerHour * ((timeNow - this.timeCollected) / 1000) / 3600));
            user.Money = Math.Min(colMoney + user.Money, user.LimitMoney);
            user.ProductionPoints = Math.Min(colDetails + user.ProductionPoints, user.LimitDetails);
            user.ResearchPoints = Math.Min(colResearch + user.ResearchPoints, user.LimitResearch);
            this.timeCollected = timeNow;
            user.Saving();
            this.Saving();
            return;
        }
        */

    }
}