namespace TW
{
    using System;
    using System.Linq;

    /// <summary>
    /// Сводное описание для ShellShop
    /// </summary>
    public class ShellShop
    {
        public Int32 i;     //icon
        public string n;    //name
        public double k;    //min armor piercing
        public Int32 b;     //armor piercing
        public double m;    //money
        public double g;    //gold
        public double dm;   //min damage
        public double dx;   //max damage
        public double ao;   //aoe radius
        public double r;    //range
        public Int32 t;     //ammo type
        public Int32 ut;    //unit type
        public Int32 z;     //caliber
        public Int32 s;     //tier
        public string ic;

        //============ Constructors

        public ShellShop(Int32 id)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<ShellShops> custs = from c in db.ShellShops
                                           where c.i == id
                                           select c;

            foreach (ShellShops c in custs)
            {
                this.i = c.i;
                this.n = c.n;
                this.k = c.k;
                this.b = c.b;
                this.g = c.g;
                this.m = c.m;
                this.dm = c.dm;
                this.dx = c.dx;
                this.ao = c.ao;
                this.r = c.r;
                this.t = c.t;
                this.ut = c.ut;
                this.z = c.z;
                this.s = c.s;
                this.ic = c.ic;
            }
        }

        public ShellShop()
        {

        }

        //============ Methods

        public static string GetStatic()
        {
            String gs = "[";
            var db = new TanksDBDataContext();
            var custs = from c in db.ShellShops select c;
            var cn = 0;
            foreach (ShellShops c in custs)
            {
                gs += "{";
                gs += "\"i\":" + c.i + ",";
                gs += "\"n\":\"" + c.n + "\",";
                gs += "\"k\":" + c.k + ",";
                gs += "\"b\":" + c.b + ",";
                gs += "\"dm\":" + c.dm + ",";
                gs += "\"dx\":" + c.dx + ",";
                gs += "\"ao\":" + c.ao + ",";
                gs += "\"r\":" + c.r + ",";
                gs += "\"t\":" + c.t + ",";
                gs += "\"ut\":" + c.ut + ",";
                gs += "\"z\":" + c.z + ",";
                gs += "\"s\":" + c.s + ",";
                gs += "\"ic\":\"" + c.ic + "\",";
                gs += "\"g\":" + c.g + ",";
                gs += "\"m\":" + c.m + "}";
                gs += (cn != custs.Count() - 1) ? "," : "";
                cn++;
            }

            gs += "]";
            return gs;
        }

        public static int GetFirstShell(int caliber, int tier, int unittype)
        {
            var db = new TanksDBDataContext();
            var custs = Query.GetShellByUnit(db, unittype, tier).ToList();
            return !custs.Any() ? 0 : custs[0].i;
        }
    }
}