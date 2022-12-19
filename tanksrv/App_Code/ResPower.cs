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
    public class ResPower
    {
        public Int32 i; //powerUpId
        public Int32 n; //num

        public ResPower()
        {
        }

        public ResPower(string line)
        {
            string[] nums = line.Split(':');
            this.i = Convert.ToInt32(nums[0]);
            this.n = Convert.ToInt32(nums[1]);
        }
    }
}