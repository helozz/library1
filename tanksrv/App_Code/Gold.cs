using System;
using System.Linq;
namespace TW
{
    /// <summary>
    /// Сводное описание для Purchase
    /// </summary>
    public class Gold
    {
        public const string CLAN_INVEST = "CLanInvest";

        public Int32 id;
        public Int32 userId;
        public Int32 userLevel;
        public string item;
        public Int32 itemId;
        public double price;
        public Int32 num;
        public double total;
        public double gold;
        public Int32 day;
        public Int32 month;
        public Int32 year;
        public double time;

        public Gold()
        {
        }

        public Gold(User user, string item, Int32 itemId, double price, Int32 num = 1)
        {
            var dt = DateTime.UtcNow;
            this.userId = user.id;
            this.userLevel = user.UserLevel;
            this.item = item;
            this.itemId = itemId;
            this.price = price;
            this.num = num;
            this.total = price * num;
            this.gold = user.Gold;
            this.day = dt.Day;
            this.month = dt.Month;
            this.year = dt.Year;
            this.time = Util.GetTime();
            this.Adding();
        }

        public void Adding()
        {
            var db = new TanksDBDataContext();
            var ord = new Golds
            {
                userId = this.userId,
                userLevel = this.userLevel,
                item = this.item,
                itemId = this.itemId,
                price = this.price,
                num = this.num,
                gold = this.gold,
                total = this.total,
                day=this.day,
                month=this.month,
                year=this.year,
                time=this.time
            };
            db.Golds.InsertOnSubmit(ord);
            db.SubmitChanges();
            this.id = ord.id;
        }

        public static double GoldTotal(User user, string item)
        {
            var db = new TanksDBDataContext();
            var custs = from c in db.Golds
                where (c.userId == user.id && c.item == item)
                select c;
            return Enumerable.Sum(custs, c => c.total);
        }

        public static void Consume(User user, string reason, double price, int itemId = 0, int qty = 1)
        {
            new Gold(user, reason, itemId, -price, qty);
        }

        public static void Grant(User user, string reason, double grant, int itemId = 0, int qty = 1)
        {
            new Gold(user, reason, itemId, grant, qty);
        }
    }
}