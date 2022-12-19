namespace TW
{
    using System;
    using System.Linq;
    using Newtonsoft.Json;
    using System.Collections.Generic;

    /// <summary>
    /// Сводное описание для UserShell
    /// </summary>
    public class UserShell
    {
        public Int32 i;
        public Int32 u;
        public Int32 s;
        public Int32 n;

        //============ Constructors

        public UserShell(Int32 id)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserShells> custs = from c in db.UserShells
                                           where c.i == id
                                           select c;

            foreach (UserShells c in custs)
            {
                this.i = c.i;
                this.u = c.u;
                this.s = c.s;
                this.n = c.n;
            }
        }

        public UserShell(Int32 uid, Int32 sid, bool create=true)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            var custs = GetUserShellsFromCache(uid);
            var list = custs.FindAll(u => u.s == sid);
            foreach (UserShells c in list)
            {
                this.i = c.i;
                this.u = c.u;
                this.s = c.s;
                this.n = c.n;
                create = false;
            }
            if (create)
            {
                UserShells ord = new UserShells { n = 0, s = sid, u = uid };
                db.UserShells.InsertOnSubmit(ord);
                db.SubmitChanges();
                this.i = ord.i;
                this.u = uid;
                this.s = sid;
                this.n = 0;
            }
        }

        public UserShell()
        {

        }


        //============ Methods

        public void Disappear()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserShells> custs = from c in db.UserShells
                                          where c.i == this.i
                                          select c;
            foreach (UserShells c in custs)
            {
                db.UserShells.DeleteOnSubmit(c);
            }
            db.SubmitChanges();
        }

        public static string GetUserShell(Int32 id)  // Добываем статик
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserShells> custs = from c in db.UserShells
                                          where c.u == id
                                          select c;
            return JsonConvert.SerializeObject(custs.ToArray(), Formatting.None, new UserShellsArrayConverter());
        }

       //============ Updaters

        public void Saving()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserShells> custs = from c in db.UserShells
                                          where c.i == this.i
                                          select c;

            foreach (UserShells c in custs)
            {
                c.u = this.u;
                c.s = this.s;
                c.n = this.n;
            }
            db.SubmitChanges();
        }

        public static List<UserShells> GetUserShellsFromCache(int userId)
        {
            var list = Caching.Get<List<UserShells>>("UserShells#" + userId);
            if (list == null)
            {
                var db = new TanksDBDataContext();
                list = Query.GetUserShells(db, userId).ToList();
                Caching.Add("UserShells#" + userId, list, 10);
            }
            return list;
        }

    }
}