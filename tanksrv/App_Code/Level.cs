using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Сводное описание для Level
/// </summary>

namespace TW
{
    public class Level
    {
        public Int32 l;
        public Int32 e;
        public double g;
        public double m;

        public Level()
        {
        }

        public Level(Int32 l)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Levels> custs = from c in db.Levels
                                       where c.l == l
                                       select c;
            if (custs.Count() == 0)
            {
                this.l = l;
                this.e = -1;
                this.g = 0;
                this.m = 0;
            }
            foreach (Levels c in custs)
            {
                this.l = c.l;
                this.e = c.e;
                this.g = c.g;
                this.m = c.m;
            }
        }

        public static string GetStatic()
        {
            String gs = "[";
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Levels> custs = from c in db.Levels
                                       select c;
            Int32 cn = 0;
            foreach (Levels c in custs)
            {
                gs += "{";
                gs += "\"l\":" + c.l + ",";
                gs += "\"g\":" + c.g + ",";
                gs += "\"m\":" + c.m + ",";
                gs += "\"e\":" + c.e + "}";
                gs += (cn != custs.Count() - 1) ? "," : "";
                cn++;
            }
            gs += "]";
            return gs;
        }

    }
}