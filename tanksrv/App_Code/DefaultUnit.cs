//#define USEFLOAT
namespace TW
{
    using System;
    using System.Collections.Generic;
    using System.Linq;

    /// <summary>
    /// Сводное описание для DefaultUnit
    /// </summary>
    public class DefaultUnit
    {
        public const int MaxTier = 10;
        public const string DefaultUnitsCache = "DefaultUnitsCache";

        public Int32 i;     //id
        public string n;    //name
        public Int32 s;     //side
        public Int32 rm;    //repair
        public Int32 az;    //ammo size
        public double ts;   //turn speed
        public double tt;   //turet turn speed
        public double at;   //aiming time
        public double cd;   //cooldown
        public double rd;   //reload duration
        public Int32 cs;    //clip size
        public double vr;   //visability radius
        public Int32 c;     //coast
        public Int32 hx;    //max hp
        public double sp;   //speed
        public double ms;   //mass
        public Int32 fa;    //front armor
        public Int32 ba;    //back armor
        public Int32 ra;    //side armor
        public Int32 am;    //min accuracy
        public Int32 ax;    //max accuracy
        public Int32 t;     //class
        public Int32 z;     //calibre
        public double m;    //money
        public double g;    //gold
        public double kr;   //koef reflect armor
        public Int32 lm;    //min level
        public Int32 rg;    //range
        public Int32 p;     //modification
        public Int32 sz;    //tier
        public double pc;   //piercing
        public double dg;   //damage
        public Int32 lx;    //upgrade default
        public int parts;   //return parts

        //============ Constructors

        public DefaultUnit()
        {

        }

        public DefaultUnit(Int32 id)
        {
            var custs = DefaultUnit.GetAllDefaultUnitsFromCache();

            foreach (DefaultUnits c in custs)
            {
                if(c.i == id) Set(c);
            }
        }

        //============ Methods

        public DefaultUnit(DefaultUnits c)
        {
            Set(c);
        }

        private void Set(DefaultUnits c)
        {
            this.i = c.i;
            this.n = c.n;
            this.s = c.s;
            this.rm = c.rm;
            this.cs = c.cs;
            this.ts = c.ts;
            this.tt = c.tt;
            this.at = c.at;
            this.cd = c.cd;
            this.rd = c.rd;
            this.az = c.az;
            this.vr = c.vr;
            this.c = c.c;
            this.hx = c.hx;
            this.sp = c.sp;
            this.ms = c.ms;
            this.fa = c.fa;
            this.ba = c.ba;
            this.ra = c.ra;
            this.am = c.am;
            this.ax = c.ax;
            this.t = c.t;
            this.z = c.z;
            this.g = c.g;
            this.m = c.m;
            this.kr = c.kr;
            this.lm = c.lm;
            this.rg = c.rg;
            this.p = c.p;
            this.sz = c.sz;
            this.pc = c.pc;
            this.dg = c.dg;
            this.lx = c.lx;
            this.parts = c.parts;
        }

        public int Id
        {
            get { return i; }
        }

        public string Name
        {
            get { return n; }
        }

        public int Side
        {
            get { return s; }
        }

        public int Repair
        {
            get { return rm; }
        }

        public int AmmoSize
        {
            get { return az; }
        }

        public double TurnSpeed
        {
            get { return ts; }
        }

        public double TuretTurnSpeed
        {
            get { return tt; }
        }

        public double AimingTIme
        {
            get { return at; }
        }

        public double Cooldown
        {
            get { return cd; }
        }

        public double ReloadDuration
        {
            get { return rd; }
        }

        public int ClipSize
        {
            get { return cs; }
        }

        public double VisabilityRadius
        {
            get { return vr; }
        }

        public int Power
        {
            get { return c; }
        }

        public int MaxHp
        {
            get { return hx; }
        }

        public double Speed
        {
            get { return sp; }
        }

        public double Mass
        {
            get { return ms; }
        }

        public int FrontArmor
        {
            get { return fa; }
        }

        public int BackArmor
        {
            get { return ba; }
        }

        public int SideArmor
        {
            get { return ra; }
        }

        public int MinAccuracy
        {
            get { return am; }
        }

        public int MaxAccuracy
        {
            get { return ax; }
        }

        public int Class
        {
            get { return t; }
        }

        public int Calibre
        {
            get { return z; }
        }

        public double Money
        {
            get { return m; }
        }

        public double Gold
        {
            get { return g; }
        }

        public double KoefReflectArmor
        {
            get { return kr; }
        }

        public int MinLevel
        {
            get { return lm; }
        }

        public int Range
        {
            get { return rg; }
        }

        public int Modification
        {
            get { return p; }
        }

        public int Tier
        {
            get { return sz; }
        }

        public double Piercing
        {
            get { return pc; }
        }

        public double Damage
        {
            get { return dg; }
        }

        public double UpgradeDefault
        {
            get { return lx; }
        }

        public int GetPriceInMoney()
        {
            return Convert.ToInt32(Math.Ceiling(Define.GMCourse * this.g + this.m));
        }

        public static string GetStatic()
        {
            string gs = "[";
            var custs = DefaultUnit.GetAllDefaultUnitsFromCache();
            Int32 cn = 0;
            foreach (DefaultUnits c in custs)
            {
                gs += "{";
                gs += "\"i\":" + c.i + ",";
                gs += "\"n\":\"" + c.n + "\",";
                gs += "\"s\":" + c.s + ",";
                gs += "\"rm\":" + c.rm + ",";
                gs += "\"cs\":" + c.cs + ",";
                gs += "\"ts\":" + c.ts + ",";
                gs += "\"tt\":" + c.tt + ",";
                gs += "\"at\":" + c.at + ",";
                gs += "\"cd\":" + c.cd + ",";
                gs += "\"rd\":" + c.rd + ",";
                gs += "\"az\":" + c.az + ",";
                gs += "\"vr\":" + c.vr + ",";
                gs += "\"c\":" + c.c + ",";
                gs += "\"hx\":" + c.hx + ",";
                gs += "\"sp\":" + c.sp + ",";
                gs += "\"ms\":" + c.ms + ",";
                gs += "\"fa\":" + c.fa + ",";
                gs += "\"ba\":" + c.ba + ",";
                gs += "\"ra\":" + c.ra + ",";
                gs += "\"am\":" + c.am + ",";
                gs += "\"ax\":" + c.ax + ",";
                gs += "\"t\":" + c.t + ",";
                gs += "\"z\":" + c.z + ",";
                gs += "\"kr\":" + c.kr + ",";
                gs += "\"lm\":" + c.lm + ",";
                gs += "\"rg\":" + c.rg + ",";
                gs += "\"p\":" + c.p + ",";
                gs += "\"sz\":" + c.sz + ",";
                gs += "\"pc\":" + c.pc + ",";
                gs += "\"dg\":" + c.dg + ",";
                gs += "\"lx\":" + c.lx + ",";
                gs += "\"prs\":" + c.parts + ",";
                gs += "\"g\":" + c.g + ",";
                gs += "\"m\":" + c.m + "}";
                gs += (cn != custs.Count() - 1) ? "," : "";
                cn++;
            }

            gs += "]";
            return gs;
        }

        public static List<DefaultUnits> GetAllDefaultUnitsFromCache()
        {
            List<DefaultUnits> list = Caching.Get<List<DefaultUnits>>("DefaultUnits");
            if (list == null)
            {
                var db = new TanksDBDataContext();
                list = Query.GetDefaultUnits.Invoke(db).ToList();
                Caching.Add("DefaultUnits", list, 600);
            }
            return list;
        }

        public static void DropCache()
        {
            Caching.Remove("DefaultUnits");
            Caching.Remove("DefaultUnitsCache");
        }

    }
}