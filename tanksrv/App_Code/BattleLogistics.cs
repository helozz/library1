using System.Collections.Generic;

namespace TW
{
    public class BattleLogistics
    {
        public List<UserWound> userWounds = new List<UserWound>();
        public int rating;
        public int clanTax = -1;
        public int money;
        public int parts;
        public int exp;
        public int itemId;
        public int itemConfig;
        public int count;
        public int repair;

        public int VIPmoney;
        public int VIPparts;
        public int VIPexp;
        public int VIPitem;

        public List<Bonus> rewards;

        public BattleLogistics()
        {

        }

        public BattleLogistics(int money, int parts, int exp, int VIPmoney, int VIPparts, int VIPexp, int VIPitem, int itemId, int count, int itemConfig, int repair, int rating, List<Bonus> rewards = null)
        {
            this.money = money;
            this.parts = parts;
            this.exp = exp;
            this.itemId = itemId;
            this.itemConfig = itemConfig;
            this.count = count;
            this.rewards = rewards;
            this.money = VIPmoney;
            this.parts = VIPparts;
            this.exp = VIPexp;
            this.VIPitem = VIPitem;
            this.repair = repair;
            this.rating = rating;
        }
    }
}