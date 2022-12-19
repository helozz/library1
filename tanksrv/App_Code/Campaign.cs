using System;
using System.Linq;
namespace TW
{
    /// <summary>
    /// Сводное описание для Campaign
    /// </summary>
    public class Campaign
    {
        public int id;
        public int campaign;
        public int episode;
        public string episodeName;
        public int difficulty;
        public int requiredLevel;
        public int maxUnits;
        public int reward1;
        public int reward1Num;
        public int reward1Item;
        public int reward2;
        public int reward2Num;
        public int reward2Item;
        public int reward3;
        public int reward3Num;
        public int reward3Item;
        public int UnitPower;
        public string storage;
        public int openZone;
        public int fuelCost;

        public Campaign()
        {
        }

        public Campaign(int camp, int epi, int diff)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Campaigns> custs = from c in db.Campaigns
                                          where c.campaign == camp && c.episode == epi && c.difficulty == diff
                                           select c;

            foreach (Campaigns c in custs)
            {
                id = c.id;
                campaign = c.campaign;
                episode = c.episode;
                episodeName = c.episodeName;
                difficulty = c.difficulty;
                requiredLevel = c.requiredLevel;
                maxUnits = c.maxUnits;
                reward1 = c.reward1;
                reward1Num = c.reward1Num;
                reward1Item = c.reward1Item;
                reward2 = c.reward2;
                reward2Num = c.reward2Num;
                reward2Item = c.reward2Item;
                reward3 = c.reward3;
                reward3Num = c.reward3Num;
                reward3Item = c.reward3Item;
                UnitPower = c.UnitPower;
                storage = c.storage;
                openZone = c.openZone;
                fuelCost = c.fuelCost;
            }
        }

        public static int CampaignEpisodes(int campaign)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Campaigns> custs = from c in db.Campaigns
                                          where c.campaign == campaign
                                          select c;
            return custs.Count()-1;
        }

        public static int CampaignCount()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<int> custs = (from c in db.Campaigns select c.campaign).Distinct();
            return custs.Count();
        }

        public static string GetStatic()
        {
            String gs = "[";
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Campaigns> custs = from c in db.Campaigns
                                           select c;
            Int32 cn = 0;
            foreach (Campaigns c in custs)
            {
                gs += JSONString(c);
                gs += (cn != custs.Count() - 1) ? "," : "";
                cn++;
            }
            gs += "]";
            return gs;
        }

        private static string JSONString(Campaigns w)
        {
            String gs = "{";
            gs += "\"i\":" + w.id + ",";
            gs += "\"c\":" + w.campaign + ",";
            gs += "\"e\":" + w.episode + ",";
            gs += "\"n\":\"" + w.episodeName + "\",";
            gs += "\"d\":" + w.difficulty + ",";
            gs += "\"l\":" + w.requiredLevel + ",";
            gs += "\"u\":" + w.maxUnits + ",";
            gs += "\"p\":" + w.UnitPower + ",";
            gs += "\"r1\":" + w.reward1 + ",";
            gs += "\"n1\":" + w.reward1Num + ",";
            gs += "\"i1\":" + w.reward1Item + ",";
            gs += "\"r2\":" + w.reward2 + ",";
            gs += "\"n2\":" + w.reward2Num + ",";
            gs += "\"i2\":" + w.reward2Item + ",";
            gs += "\"r3\":" + w.reward3 + ",";
            gs += "\"i3\":" + w.reward3Item + ",";
            gs += "\"n3\":" + w.reward3Num + ",";
            gs += "\"z\":" + w.openZone + ",";
            gs += "\"f\":" + w.fuelCost + ",";
            gs += "\"st\":\"" + w.storage + "\"";
            gs += "}";
            return gs;
        }


    }
}