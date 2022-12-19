using System;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;

namespace TW
{
    public class Bonus
    {
        public Int32 id = 0;
        public int lvl = 0;
        public Int32 num;
        public Int32 type; // type = BonusType
        public Int32 item;
        public bool special;

        //additional fields
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public UserUnit userUnit;

        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public UserCrew userCrew;

        public Bonus()
        {
        }

        

        public Bonus Clone()
        {
            return new Bonus { id = this.id, lvl = this.lvl, item = this.item, num = this.num, special = this.special, type = this.type };
        }

        
    }
}