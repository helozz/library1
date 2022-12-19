using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Сводное описание для Shop
/// </summary>
namespace TW
{
    public class Shop
    {
        public int id;
        public ShopType type;
        public string icon;
        public string name;
        public int percentage;
        public double price;
        public double specialPrice;
        public bool useSpecial;

        public Shop(int id)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Shops> custs =
                from c in db.Shops
                where c.id == id
                select c;
            foreach (Shops c in custs)
            {
                this.Set(c);
            }
        }

        public Shop(ShopType type)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Shops> custs =
                from c in db.Shops
                where c.type == (int)type
                orderby c.percentage ascending
                select c;
            foreach (Shops c in custs)
            {
                this.Set(c);
                break;
            }
        }

        private void Set(Shops c)
        {
            this.id = c.id;
            this.type = (ShopType)c.type;
            this.percentage = c.percentage;
            this.price = c.price;
            this.specialPrice = c.specialPrice;
            this.useSpecial = c.useSpecial;
            this.icon = c.icon;
            this.name = c.name;
        }

        public static string GetStatic()
        {
            String gs = "[";
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Shops> custs = from c in db.Shops
                                      select c;
            Int32 cn = 0;
            foreach (Shops c in custs)
            {
                gs += "{";
                gs += "\"i\":" + c.id + ",";
                gs += "\"l\":\"" + c.name + "\",";
                gs += "\"c\":\"" + c.icon + "\",";
                gs += "\"t\":" + c.type + ",";
                gs += "\"m\":" + c.price + ",";
                gs += "\"n\":" + c.percentage + ",";
                gs += "\"g\":" + c.specialPrice + ",";
                gs += "\"p\":" + c.mostPopular + ",";
                gs += "\"k\":" + c.useSpecial + ",";
                gs += "\"s\":" + c.specialOffer + "}";
                gs += (cn != custs.Count() - 1) ? "," : "";
                cn++;
            }
            gs += "]";
            return gs;
        }
    }
}