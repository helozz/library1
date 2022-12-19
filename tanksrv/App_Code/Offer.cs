using System;
using System.Linq;

namespace TW
{
    /// <summary>
    /// Сводное описание для Offer
    /// </summary>
    public class Offer
    {
        public const int MASK_SHOW_IN_SHOP = 1;
        //        public const int NEXT_TODO1 = 1 << 1;
        //        public const int NEXT_TODO2 = 1 << 2;

        public Int32 id;
        public string name;
        public string icon;
        public double costIOS;
        public double costAndroid;
        public bool typeGold;
        public double goodsNum;
        public double goodsBonus;
        public bool mostPopular;
        public bool specialOffer;
        public bool active;
        public int mask;

        public Offer()
        {
        }

        public Offer(Int32 id)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Offers> custs = from c in db.Offers
                                       where c.id == id
                                       select c;
            foreach (Offers c in custs)
            {
                this.id = c.id;
                this.name = c.name;
                this.icon = c.icon;
                this.costIOS = c.costIOS;
                this.costAndroid = c.costAndroid;
                this.typeGold = c.typeGold;
                this.goodsNum = c.goodsNum;
                this.goodsBonus = c.goodsBonus;
                this.mostPopular = c.mostPopular;
                this.specialOffer = c.specialOffer;
                this.active = c.active;
                this.mask = c.mask;
            }
        }

        public Offer(string name)
        {
            var db = new TanksDBDataContext();
            IQueryable<Offers> custs = from c in db.Offers
                                       where c.name == name
                                       select c;
            foreach (Offers c in custs)
            {
                this.id = c.id;
                this.name = c.name;
                this.icon = c.icon;
                this.costIOS = c.costIOS;
                this.costAndroid = c.costAndroid;
                this.typeGold = c.typeGold;
                this.goodsNum = c.goodsNum;
                this.goodsBonus = c.goodsBonus;
                this.mostPopular = c.mostPopular;
                this.specialOffer = c.specialOffer;
                this.active = c.active;
                this.mask = c.mask;
            }
        }

        public static string GetStatic()
        {
            String gs = "[";
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Offers> custs = from c in db.Offers
                                       select c;
            Int32 cn = 0;
            foreach (Offers c in custs)
            {
                gs += "{";
                gs += "\"i\":" + c.id + ",";
                gs += "\"n\":\"" + c.name + "\",";
                gs += "\"m\":\"" + c.icon + "\",";
                gs += "\"o\":" + c.costIOS + ",";
                gs += "\"a\":" + c.costAndroid + ",";
                gs += "\"t\":" + c.typeGold + ",";
                gs += "\"q\":" + c.goodsNum + ",";
                gs += "\"b\":" + c.goodsBonus + ",";
                gs += "\"p\":" + c.mostPopular + ",";
                gs += "\"f\":" + c.active + ",";
                gs += "\"h\":" + c.mask + ",";
                gs += "\"s\":" + c.specialOffer + "}";
                gs += (cn != custs.Count() - 1) ? "," : "";
                cn++;
            }

            gs += "]";
            return gs;
        }
    }
}