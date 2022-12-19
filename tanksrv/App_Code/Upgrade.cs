using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace TW
{
    public class Upgrade
    {
        private static Dictionary<UpgradeType, float> koef = new Dictionary<UpgradeType, float> {
            {UpgradeType.aimingTime, 0.02f}, {UpgradeType.minAccuracy, 0.02f}, {UpgradeType.maxAccuracy, 0.02f},
            {UpgradeType.speed, 0.01f}, {UpgradeType.turnSpeed, 0.015f}, {UpgradeType.range, 0.02f},
            {UpgradeType.visibilityRadius, 0.01f}, {UpgradeType.reloadDuration, 0.02f}, {UpgradeType.damage, 0.03f},
            {UpgradeType.frontArmor, 0.02f}, {UpgradeType.sideArmor, 0.02f}, {UpgradeType.backArmor, 0.02f}, 
            {UpgradeType.piercing, 0.03f}, {UpgradeType.maxHP, 0.03f}
        };        

        public int id;
        public int type;
        public int tier;
        public double[] increments;
        public double[] prices;
        public double[] maxLvl;

        public Upgrade()
        {
           
        }

        public static int CalculateUpgradePower(UpgradeType ut,  int cost, int lvl = 1)
        {            
            float k = 0.03f;
            if (koef.TryGetValue(ut, out k))
            {
                double power = k * cost;
                power = Math.Round(power);
                if (power < 1) return 1;
                return (int)power;                
            }
            return 0;
        }

    }
}