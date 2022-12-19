using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Сводное описание для ResEnemyTank
/// </summary>
namespace TW
{
    public class ResEnemyTank
    {
        public Int32 type; //defaultType
        public Int32 tier; //defaultTier
        public Int32 side; //defaultSide
        public Int32 frag; //defaultSide
        public Int32 damage; //damage
        public ResEnemyTank()
        {
        }
        public ResEnemyTank(string line)
        {
            string[] nums=line.Split(':');
            this.type = Convert.ToInt32(nums[0]);
            this.tier = Convert.ToInt32(nums[1]);
            this.side = Convert.ToInt32(nums[2]);
            this.frag = Convert.ToInt32(nums[3]);
            this.damage = Convert.ToInt32(nums[4]);
        }
    }
}