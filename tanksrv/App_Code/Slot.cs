namespace TW
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;

    /// <summary>
    /// Сводное описание для Locale
    /// </summary>
    public class Slot
    {
        public Int32 n;
        public double m;
        public double g;

        //============ Constructors

        public Slot()
        {
        }

		public Slot(Int32 n)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Slots> custs = from c in db.Slots
										where c.n == n
                                            select c;

            foreach (Slots c in custs)
            {
                this.n = c.n;
                this.g = c.g;
                this.m = c.m;
            }
        }
        //============ Methods



        public static string GetStatic()
        {
            String gs = "[";
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Slots> custs = from c in db.Slots
                                            select c;
            Int32 cn = 0;
            foreach (Slots c in custs)
            {
                gs += "{";
                gs += "\"n\":" + c.n + ",";
                gs += "\"m\":" + c.m + ",";
                gs += "\"g\":" + c.g + "}";
                gs += (cn != custs.Count() - 1) ? "," : "";
                cn++;
            }

            gs += "]";
            return gs;
        }


    }

}