using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TW
{
    public class Building
    {
        public int id;
        public BuildingType typeEnum;
        public int bLevel;
        public int HQLevelReq;
        public int buildingPrice;
        public double buildingTime; // in minutes
        public int accelerationPrice;
        public int storageSize;
        public double productionInSeconds;

        public Building(int level, BuildingType type)
        {
            List<Buildings> custs = GetBuildingsFromCache();
            foreach (Buildings c in custs)
            {
                if (c.typeEnum == (int)type && c.bLevel == level)
                {
                    Set(c);
                }
            }
        }

        public Building(Buildings c)
        {
            Set(c);
        }

        private void Set(Buildings c)
        {
            id = c.id;
            typeEnum = (BuildingType)c.typeEnum;
            bLevel = c.bLevel;
            HQLevelReq = c.HQLevelReq;
            buildingPrice = c.buildingPrice;
            buildingTime = (double)c.buildingTime;
            accelerationPrice = c.accelerationPrice;
            storageSize = c.storageSize;
            productionInSeconds = (double)c.productionInSeconds;
        }

        public static string GetStatic()
        {
            String gs = "[";
            List<Buildings> custs = GetBuildingsFromCache();
            Int32 cn = 0;
            foreach (Buildings c in custs)
            {
                gs += "{";
                gs += "\"i\":" + c.id + ",";
                gs += "\"e\":" + c.typeEnum + ",";
                gs += "\"l\":" + c.bLevel + ",";
                gs += "\"h\":" + c.HQLevelReq + ",";
                gs += "\"m\":" + c.buildingPrice + ",";
                gs += "\"t\":" + c.buildingTime + ",";
                gs += "\"g\":" + c.accelerationPrice + ",";
                gs += "\"z\":" + c.storageSize + ",";
                gs += "\"p\":" + c.productionInSeconds + "}";
                gs += (cn != custs.Count() - 1) ? "," : "";
                cn++;
            }
            gs += "]";
            return gs;
        }

        public static List<Buildings> GetBuildingsFromCache()
        {
            List<Buildings> list = Caching.Get<List<Buildings>>("Buildings");
            if (list == null)
            {
                var db = new TanksDBDataContext();
                list = Query.ListBuildings.Invoke(db).ToList();
                Caching.Add("Buildings", list, 6000);
            }
            return list;
        }

        public static void DropCache()
        {
            Caching.Remove("Buildings");
        }

    }
}