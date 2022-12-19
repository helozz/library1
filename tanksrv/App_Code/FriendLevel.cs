using System;
using System.Linq;

namespace TW
{
    public class FriendLevel
    {
        public Int32 level;
        public Int32 experience;

        public FriendLevel()
        {
        }

        public FriendLevel(Int32 level)
        {
            var db = new TanksDBDataContext();
            var custs = from c in db.CrewLevels
                        where c.l == level
                        select c;

            if (!custs.Any())
            {
                this.level = level;
                this.experience = -1;
            }

            foreach (CrewLevels c in custs)
            {
                this.level = c.l;
                this.experience = c.e;
            }
        }

        public static string GetStatic()
        {
            String result = "[";
            var db = new TanksDBDataContext();
            var custs = from c in db.CrewLevels
                        select c;
            int cn = 0;
            foreach (CrewLevels c in custs)
            {
                result += "{";
                result += "\"l\":" + c.l + ",";
                result += "\"e\":" + c.e + "}";
                result += (cn != custs.Count() - 1) ? "," : "";
                cn++;
            }
            result += "]";
            return result;
        }
    }
}