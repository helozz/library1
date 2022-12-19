using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
namespace TW
{
    /// <summary>
    /// Сводное описание для Purchase
    /// </summary>
    public class Purchase
    {
        public Int32 id;
        public Int32 userId;
        public string name;
        public double costIOS;
        public double costAndroid;
        public bool validated;
        public double goodsNum;
        public double goodsBonus;
        public bool mostPopular;
        public bool specialOffer;
        public string IP;
        public Int32 day;
        public Int32 month;
        public Int32 year;
        public double time;
        public PurchaseInfo purInfo;

        public Purchase()
        {
        }

        public Purchase(User user, Offer good, bool android, string IP, PurchaseInfo purInfo)
        {
            DateTime dt = DateTime.UtcNow;
            this.userId = user.id;
            this.name = good.name;
            this.costIOS = (android) ? 0 : good.costIOS;
            this.costAndroid = (android) ? good.costAndroid : 0;
            this.validated = good.typeGold;
            this.goodsBonus = good.goodsBonus;
            this.goodsNum = good.goodsNum;
            this.mostPopular = good.mostPopular;
            this.specialOffer = good.specialOffer;
            this.IP = IP;
            this.day = dt.Day;
            this.month = dt.Month;
            this.year = dt.Year;
            this.time = Math.Round((dt - new DateTime(1970, 1, 1, 0, 0, 0)).TotalMilliseconds, 0);
            this.purInfo = purInfo;
            this.Adding();
        }

        public void Adding()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            bool android = this.costAndroid > 0;
            string transId = android ? "" : this.purInfo.purchaseData.transaction_id;
            if (android)
            {
                var purchaseData = JsonConvert.DeserializeObject<AndroidPurchaseData>(this.purInfo.purchase);
                if (purchaseData != null && !string.IsNullOrEmpty(purchaseData.orderId))
                    transId = purchaseData.orderId;
                else transId = "gift" + purchaseData.purchaseTime;
            }

            IQueryable<Purchases> custs = null;            
            custs = from c in db.Purchases
                        where c.transactionId == transId
                        select c;

            if (custs == null || !custs.Any())
            {
                var dataJson = android ? this.purInfo.purchase : JsonConvert.SerializeObject(this.purInfo.purchaseData);
                var receipt = this.purInfo.receipt;
                Purchases ord = new Purchases
                {
                    userId = this.userId,
                    name = this.name,
                    costIOS = this.costIOS,
                    costAndroid = this.costAndroid,
                    typeGold = this.validated,
                    goodsNum = this.goodsNum,
                    goodsBonus = this.goodsBonus,
                    mostPopular = this.mostPopular,
                    specialOffer = this.specialOffer,
                    IP = this.IP,
                    transactionId = transId,
                    day = this.day,
                    month = this.month,
                    year = this.year,
                    time = this.time,
                    data = dataJson,
                    receipt = receipt
                };
                db.Purchases.InsertOnSubmit(ord);
                db.SubmitChanges();
                this.id = ord.id;
                this.validated = false;
                Util.PurchaseLog("new " + this.id.ToString());
            }
            else
            {
                custs.FirstOrDefault().IP = this.IP;
                this.id = custs.FirstOrDefault().id;
                this.validated = true;
                db.SubmitChanges();
                Util.PurchaseLog("old " + this.id.ToString());
            }            
        }

        public static double[] GoldFlowPurchase(User user)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Purchases> custs = from c in db.Purchases
                                          where (c.userId == user.id)
                                          select c;
            double[] total = { 0, 0 };
            foreach (Purchases c in custs)
            {
                if (c.typeGold) total[0] += c.goodsNum + c.goodsBonus;
                else total[1] += c.goodsNum + c.goodsBonus;
            }
            return total;
        }

    }
}