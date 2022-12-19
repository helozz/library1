using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace TW
{
    public class Zone
    {
        public int id;
        public int zone;
        public int[] buildings;
        public int forLevel;
        public int forGold;

        public Zone(Int32 zone)
        {
            List<Zones> custs = GetZonesFromCache();
            foreach (Zones c in custs)
            {
                if (c.zone == zone)
                {
                    this.Set(c);
                }
            }
        }

        public Zone(Zones c)
        {
            this.Set(c);
        }

        private void Set(Zones c)
        {
            this.id = c.id;
            this.zone = c.zone;
            this.buildings = JsonConvert.DeserializeObject<int[]>(c.buildings);
            this.forLevel = c.forLevel;
            this.forGold = c.forGold;
        }

        public static string GetStatic()
        {
            String gs = "[";
            List<Zones> custs = GetZonesFromCache();
            Int32 cn = 0;
            foreach (Zones c in custs)
            {
                gs += "{";
                gs += "\"z\":" + c.zone + ",";
                gs += "\"l\":" + c.forLevel + ",";
                gs += "\"g\":" + c.forGold + ",";
                gs += "\"b\":" + c.buildings+"}";
                gs += (cn != custs.Count() - 1) ? "," : "";
                cn++;
            }
            gs += "]";
            return gs;
        }

        public static Zone GetZoneByLevel(int level)
        {
            List<Zones> list = GetZonesFromCache();
            foreach (Zones z in list)
            {
                if (z.forLevel == level) return new Zone(z);
            }
            return null;
        }

        public static List<Zones> GetZonesFromCache()
        {
            List<Zones> list = Caching.Get<List<Zones>>("Zones");
            if (list == null)
            {
                var db = new TanksDBDataContext();
                list = Query.GetZones.Invoke(db).ToList();
                Caching.Add("Zones", list, 6000);
            }
            return list;
        }

        public static void DropCache()
        {
            Caching.Remove("Zones");
        }

    }

}