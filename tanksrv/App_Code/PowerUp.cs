using System;
using System.Linq;

namespace TW
{
    /// <summary>
    /// Сводное описание для PowerUp
    /// </summary>
    public class PowerUp
    {
        public Int32 id;
        public String name;
        public Int32 type;
        public Int32 lvl;
        public Int32 clas;
        public Int32 activation;
        public Int32 start;
        public Int32 cooldown;
        public Int32 workingTime;
        public Int32 bombNum;
        public Int32 bombIdShell;
        public double frontArmor;
        public double backArmor;
        public double rightArmor;
        public double maxHP;
        public double speed;
        public double reloadDuration;
        public double piercing;
        public double minAccuracy;
        public double maxAccuracy;
        public double visibilityRadius;
        public double range;
        public double minDamageShell;
        public double maxDamageShell;
        public double money;
        public double gold;
        public bool forSale;
        public string bonusJSON;

        public PowerUp()
        {
        }

        public PowerUp(Int32 id)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<PowerUps> custs = from c in db.PowerUps
                                         where c.id == id
                                         select c;

            foreach (PowerUps c in custs)
            {
                this.id = c.id;
                this.name = c.name;
                this.type = c.type;
                this.lvl = c.lvl;
                this.activation = c.activation;
                this.start = c.start;
                this.cooldown = c.cooldown;
                this.workingTime = c.workingTime;
                this.bombNum = c.bombNum;
                this.bombIdShell = c.bombIdShell;
                this.frontArmor = c.frontArmor;
                this.backArmor = c.backArmor;
                this.rightArmor = c.rightArmor;
                this.maxHP = c.maxHP;
                this.speed = c.speed;
                this.reloadDuration = c.reloadDuration;
                this.piercing = c.piercing;
                this.minAccuracy = c.minAccuracy;
                this.maxAccuracy = c.maxAccuracy;
                this.visibilityRadius = c.visibilityRadius;
                this.range = c.range;
                this.minDamageShell = c.minDamageShell;
                this.maxDamageShell = c.maxDamageShell;
                this.money = c.money;
                this.gold = c.gold;
                this.clas = c.clas;
                this.forSale = c.forSale;
                this.bonusJSON = c.bonusJSON;
            }
        }

        public static string GetStatic()
        {
            String gs = "[";
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<PowerUps> custs = from c in db.PowerUps
                                            select c;
            Int32 cn = 0;
            foreach (PowerUps c in custs)
            {
                gs += PowerUp.JSONString(c);
                gs += (cn != custs.Count() - 1) ? "," : "";
                cn++;
            }
            gs += "]";
            return gs;
        }

        private static string JSONString(PowerUps c)
        {
            String gs = "{";
            gs += "\"i\":" + c.id + "";
            gs += ",\"n\":\"" + c.name + "\"";
            gs += ",\"b\":\"" + c.bonusJSON.Replace("\"","'") + "\"";
            gs += ",\"t\":" + c.type + "";
            gs += ",\"l\":" + c.lvl + "";
            gs += ",\"cl\":" + c.clas + "";
            gs += ",\"fs\":" + c.forSale + "";
            gs += ",\"a\":" + c.activation + "";
            gs += (c.start != 0) ? ",\"s\":" + c.start : "";
            gs += (c.cooldown != 0) ? ",\"c\":" + c.cooldown : "";
            gs += (c.workingTime != 0) ? ",\"w\":" + c.workingTime : "";
            gs += (c.frontArmor != 0) ? ",\"fa\":" + c.frontArmor : "";
            gs += (c.backArmor != 0) ? ",\"ba\":" + c.backArmor : "";
            gs += (c.rightArmor != 0) ? ",\"ra\":" + c.rightArmor : "";
            gs += (c.maxHP != 0) ? ",\"hx\":" + c.maxHP : "";
            gs += (c.speed != 0) ? ",\"sp\":" + c.speed : "";
            gs += (c.bombNum != 0) ? ",\"bn\":" + c.bombNum : "";
            gs += (c.bombIdShell != 0) ? ",\"bi\":" + c.bombIdShell : "";
            gs += (c.reloadDuration != 0) ? ",\"rd\":" + c.reloadDuration : "";
            gs += (c.piercing != 0) ? ",\"pr\":" + c.piercing : "";
            gs += (c.minAccuracy != 0) ? ",\"am\":" + c.minAccuracy : "";
            gs += (c.maxAccuracy != 0) ? ",\"ax\":" + c.maxAccuracy : "";
            gs += (c.visibilityRadius != 0) ? ",\"vr\":" + c.visibilityRadius : "";
            gs += (c.range != 0) ? ",\"rg\":" + c.range : "";
            gs += (c.minDamageShell != 0) ? ",\"dm\":" + c.minDamageShell : "";
            gs += (c.maxDamageShell != 0) ? ",\"dx\":" + c.maxDamageShell : "";
            gs += (c.gold != 0) ? ",\"g\":" + c.gold : "";
            gs += (c.money != 0) ? ",\"m\":" + c.money : "";
            gs += "}";
            return gs;
        }
    }
}