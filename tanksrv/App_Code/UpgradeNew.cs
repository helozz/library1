using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TW
{
    public class UpgradeNew
    {
        public List<int> upgrades = new List<int>();
        public List<double> values = new List<double>();
        public UpgradesNew upgrade;

        public UpgradeNew(UpgradesNew c)
        {
            this.upgrade = c;

            this.upgrades.Add(c.upgrade1);
            this.upgrades.Add(c.upgrade2);
            this.upgrades.Add(c.upgrade3);
            this.upgrades.Add(c.upgrade4);
            this.upgrades.Add(c.upgrade5);
            this.upgrades.Add(c.upgrade6);
            this.upgrades.Add(c.upgrade7);
            this.upgrades.Add(c.upgrade8);
            this.upgrades.Add(c.upgrade9);
            this.upgrades.Add(c.upgrade10);
            this.upgrades.Add(c.upgrade11);
            this.upgrades.Add(c.upgrade12);

            this.values.Add(c.value1);
            this.values.Add(c.value2);
            this.values.Add(c.value3);
            this.values.Add(c.value4);
            this.values.Add(c.value5);
            this.values.Add(c.value6);
            this.values.Add(c.value7);
            this.values.Add(c.value8);
            this.values.Add(c.value9);
            this.values.Add(c.value10);
            this.values.Add(c.value11);
            this.values.Add(c.value12);
        }

        public static UpgradesNew GetUpgrade(int tankType, int tankTier)
        {
            List<UpgradesNew> custs = GetUpgradesNewFromCache();
            foreach (UpgradesNew c in custs)
            {
                if (c.tankType == tankType && c.tankTier == tankTier)
                {
                    return c;
                }
            }
            return null;
        }

        public static string GetStatic()
        {
            String gs = "[";
            List<UpgradesNew> custs = GetUpgradesNewFromCache();
            Int32 cn = 0;
            foreach (UpgradesNew c in custs)
            {
                gs += "{";
                gs += "\"i\":" + c.id + ",";
                gs += "\"t\":" + c.tankType + ",";
                gs += "\"r\":" + c.tankTier + ",";
                gs += "\"c\":" + c.components + ",";
                gs += "\"m\":" + c.money + ",";
                gs += "\"p\":" + c.parts + ",";
                gs += "\"gpm\":" + c.goldPerMinute + ",";
                gs += "\"u1\":" + c.upgrade1 + ",";
                gs += "\"v1\":" + c.value1 + ",";
                gs += "\"u2\":" + c.upgrade2 + ",";
                gs += "\"v2\":" + c.value2 + ",";
                gs += "\"u3\":" + c.upgrade3 + ",";
                gs += "\"v3\":" + c.value3 + ",";
                gs += "\"u4\":" + c.upgrade4 + ",";
                gs += "\"v4\":" + c.value4 + ",";
                gs += "\"u5\":" + c.upgrade5 + ",";
                gs += "\"v5\":" + c.value5 + ",";
                gs += "\"u6\":" + c.upgrade6 + ",";
                gs += "\"v6\":" + c.value6 + ",";
                gs += "\"u7\":" + c.upgrade7 + ",";
                gs += "\"v7\":" + c.value7 + ",";
                gs += "\"u8\":" + c.upgrade8 + ",";
                gs += "\"v8\":" + c.value8 + ",";
                gs += "\"u9\":" + c.upgrade9 + ",";
                gs += "\"v9\":" + c.value9 + ",";
                gs += "\"u10\":" + c.upgrade10 + ",";
                gs += "\"v10\":" + c.value10 + ",";
                gs += "\"u11\":" + c.upgrade11 + ",";
                gs += "\"v11\":" + c.value11 + ",";
                gs += "\"u12\":" + c.upgrade12 + ",";
                gs += "\"v12\":" + c.value12;
                gs += "}";
                gs += (cn != custs.Count() - 1) ? "," : "";
                cn++;
            }
            gs += "]";
            return gs;
        }

        public static List<UpgradesNew> GetUpgradesNewFromCache()
        {
            List<UpgradesNew> list = Caching.Get<List<UpgradesNew>>("UpgradesNew");
            if (list == null)
            {
                var db = new TanksDBDataContext();
                list = Query.ListUpgradesNew.Invoke(db).ToList();
                Caching.Add("UpgradesNew", list, 6000);
            }
            return list;
        }

        public static void DropCache()
        {
            Caching.Remove("UpgradesNew");
        }


        public static Dictionary<UpgradeClass, List<UpgradeType>> UpgradeListByClass = new Dictionary<UpgradeClass, List<UpgradeType>>() {            
{ UpgradeClass.Attack, new List<UpgradeType>() { UpgradeType.damage, UpgradeType.aimingTime, UpgradeType.reloadDuration, UpgradeType.piercing }},
{ UpgradeClass.Defence, new List<UpgradeType>() { UpgradeType.backArmor, UpgradeType.frontArmor, UpgradeType.sideArmor, UpgradeType.maxHP }},
{ UpgradeClass.Electroparts, new List<UpgradeType>() { UpgradeType.maxAccuracy, UpgradeType.minAccuracy, UpgradeType.visibilityRadius, UpgradeType.range }},
{ UpgradeClass.Movement, new List<UpgradeType>() { UpgradeType.speed, UpgradeType.turnSpeed }},
{ UpgradeClass.All, new List<UpgradeType>() {}}         
};

    }
}