using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

/// <summary>
/// Сводное описание для ResTank
/// </summary>
/// 
namespace TW
{
    public class ResTank
    {
        public Int32 i; //unit.hangarId
        public Int32 h; //unit.HP
        public Int32 s; //unit.shell_num
        public Int32 e; //unit.extra_shell_num
        public Int32 a; //unit.hitCount
        public Int32 c; //unit.missCount
        public Int32 u; //unit.destroyedUnits
        public Int32 d; //unit.inflictedDamage
        public Int32 p; // crew.experience
        public Int32[] w; //wounds

        public ResTank()
        {

        }

        public ResTank(string line)
        {
            string[] nums = line.Split(':');
            this.i = Convert.ToInt32(nums[0]);
            this.h = Convert.ToInt32(nums[1]);
            this.s = Convert.ToInt32(nums[2]);
            this.e = Convert.ToInt32(nums[3]);
            this.a = 0;
            this.c = 0;
            this.u = Convert.ToInt32(nums[6]);
            this.d = Convert.ToInt32(nums[5]);
            this.p = Convert.ToInt32(nums[4]);
            this.w = JsonConvert.DeserializeObject<int[]>(nums[7]);
        }

        public ResTank(BattleResultStat.UnitBattleResult unit)
        {
            this.i = unit.hangarId;
            this.h = unit.HP;
            this.s = unit.shell_num;
            this.a = unit.hitCount;
            this.e = 0;
            this.c = unit.missCount;
            this.u = unit.destroyedUnits;
            this.d = unit.inflictedDamage;
            this.p = unit.exp;
            if (!unit.battleWounds.StartsWith("[")) unit.battleWounds = "[" + unit.battleWounds + "]";
            this.w = JsonConvert.DeserializeObject<int[]>(unit.battleWounds);
        }

        public BattleResultStat.UnitBattleResult ToUnitBattleResult()
        {
            var unit = new BattleResultStat.UnitBattleResult();            
            unit.hangarId = this.i;
            unit.HP = this.h;
            unit.shell_num = this.s;
            unit.hitCount = this.a;
            unit.missCount = this.c;
            unit.destroyedUnits = this.u;
            unit.inflictedDamage = this.d;
            unit.exp = this.p;
            unit.battleWounds = JsonConvert.SerializeObject(this.w);             
            return unit;
        }
    }
}