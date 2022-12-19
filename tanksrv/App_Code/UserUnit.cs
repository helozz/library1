namespace TW
{
    using System;
    using System.Linq;
    using System.Collections.Generic;

    public class UserUnit
    {
        public const int MASK_RENAMED = 0x01;

        public Int32 i;     //id
        public Int32 u;     //user id
        public Int32 t;     //unit id
        public Int32 h;     //hp
        public Int32 td;    //crew
        public Int32 sn;    //shell num
        public Int32 st;    //shell type
        public Int32 en;    //extra shell num
        public Int32 et;    //extra shell type
        public bool rd;     //reload
        public bool rr;     //repair
        public int upgrades;
        public int[] upgradesSet;
        public string name;
        public int mask;
        public int inZone;
        public int power;
        public int setUpgrades;

        public int sharingClanUnit;
        public double sharingTime;
        public int sharingUser;
        public int sharingData;

        //
        public int Id
        {
            get { return i; }
        }

        public int DefaultUnitId
        {
            get { return t; }
            set { t = value; }
        }

        public int UserId
        {
            get { return u; }
        }

        public int Hp
        {
            get { return h; }
            set { h = value; }
        }

        public int CrewId
        {
            get { return td; }
        }

        public int ShellNum
        {
            get { return sn; }
            set { sn = value; }
        }

        public int ShellType
        {
            get { return st; }
            set { st = value; }
        }

        public int ExtraShellNum
        {
            get { return en; }
            set { en = value; }
        }

        public int ExtraShellType
        {
            get { return et; }
            set { et = value; }
        }

        public bool Reload
        {
            get { return rd; }
            set { rd = value; }
        }
        public bool Repair
        {
            get { return rr; }
            set { rr = value; }
        }

        public int Tier
        {
            get
            {
                var d = new DefaultUnit(DefaultUnitId);
                return d.Tier;
            }
        }

        //============ Constructors

        public UserUnit(Int32 id)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserUnits> custs = from c in db.UserUnits
                                          where c.i == id
                                          select c;
            foreach (UserUnits c in custs)
            {
                From(c);
            }
        }

        public UserUnit(UserUnits c)
        {
            From(c);
        }

        private void From(UserUnits c)
        {
            this.i = c.i;
            this.u = c.u;
            this.t = c.t;
            this.h = c.h;
            this.td = c.td;
            this.sn = c.sn;
            this.st = c.st;
            this.en = c.en;
            this.et = c.et;
            this.rd = c.rd;
            this.rr = c.rr;
            this.upgrades = c.upgrades;
            this.upgradesSet = new int[Enum.GetNames(typeof(UpgradeType)).Length];
            this.upgradesSet[(int)UpgradeType.frontArmor] = c.frontArmor;
            this.upgradesSet[(int)UpgradeType.backArmor] = c.backArmor;
            this.upgradesSet[(int)UpgradeType.sideArmor] = c.sideArmor;
            this.upgradesSet[(int)UpgradeType.maxHP] = c.maxHP;
            this.upgradesSet[(int)UpgradeType.speed] = c.speed;
            this.upgradesSet[(int)UpgradeType.turnSpeed] = c.turnSpeed;
            this.upgradesSet[(int)UpgradeType.minAccuracy] = c.minAccuracy;
            this.upgradesSet[(int)UpgradeType.maxAccuracy] = c.maxAccuracy;
            this.upgradesSet[(int)UpgradeType.visibilityRadius] = c.visibilityRadius;
            this.upgradesSet[(int)UpgradeType.range] = c.range;
            this.upgradesSet[(int)UpgradeType.aimingTime] = c.aimingTime;
            this.upgradesSet[(int)UpgradeType.reloadDuration] = c.reloadDuration;
            this.upgradesSet[(int)UpgradeType.piercing] = c.piercing;
            this.upgradesSet[(int)UpgradeType.damage] = c.damage;
            this.name = c.name;
            this.mask = c.mask;
            this.inZone = c.inZone;
            this.power = c.power;
            this.sharingClanUnit = c.sharingClanUnit;
            this.sharingUser = c.sharingUser;
            this.sharingTime = c.sharingTime;
            this.sharingData = c.sharingData;
            this.setUpgrades = c.setUpgrades;
        }
       

        public UserUnit(Int32 uid, Int32 tid)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserUnits> custs = from c in db.UserUnits
                                          where (c.u == uid && c.t == tid)
                                          select c;
            foreach (UserUnits c in custs)
            {
                From(c);
            }
        }

        public UserUnit(Int32 crewid, bool create = false)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserUnits> custs = from c in db.UserUnits
                                          where (c.td == crewid)
                                          select c;
            foreach (UserUnits c in custs)
            {
                From(c);
            }
        }

        public UserUnit(Int32 uid, Int32 tid, Int32 hx, Int32 az, Int32 stp, Int32 team, Int32 pow)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            UserUnits ord = new UserUnits
            {
                t = tid,
                u = uid,
                h = 0,
                td = team,
                sn = az,
                st = stp,
                en = 0,
                et = 0,
                rd = true,
                rr = false,
                upgrades = 0,
                frontArmor = 0,
                backArmor = 0,
                sideArmor = 0,
                maxHP = 0,
                speed = 0,
                turnSpeed = 0,
                minAccuracy = 0,
                maxAccuracy = 0,
                visibilityRadius = 0,
                range = 0,
                aimingTime = 0,
                reloadDuration = 0,
                piercing = 0,
                damage = 0,
                name = "",
                mask = 0,
                inZone = 1,
                power = pow,
                sharingClanUnit = 0,
                sharingTime = 0,
                sharingData = 0,
                sharingUser = 0,
                setUpgrades = 0
            };
            db.UserUnits.InsertOnSubmit(ord);
            db.SubmitChanges();
            From(ord);
        }

        public UserUnit(UserUnit unit, int newUserId, double shareTime, int ghostDriver)
        {
            TanksDBDataContext db = new TanksDBDataContext();
            UserUnits ord = new UserUnits
            {
                t = unit.t,
                u = newUserId,
                h = unit.h,
                td = ghostDriver,
                sn = unit.sn,
                st = unit.st,
                en = unit.en,
                et = unit.et,
                rd = unit.rd,
                rr = unit.rr,
                upgrades = unit.upgrades,
                frontArmor = unit.upgradesSet[(int)UpgradeType.frontArmor],
                backArmor = unit.upgradesSet[(int)UpgradeType.backArmor],
                sideArmor = unit.upgradesSet[(int)UpgradeType.sideArmor],
                maxHP = unit.upgradesSet[(int)UpgradeType.maxHP],
                speed = unit.upgradesSet[(int)UpgradeType.speed],
                turnSpeed = unit.upgradesSet[(int)UpgradeType.turnSpeed],
                minAccuracy = unit.upgradesSet[(int)UpgradeType.minAccuracy],
                maxAccuracy = unit.upgradesSet[(int)UpgradeType.maxAccuracy],
                visibilityRadius = unit.upgradesSet[(int)UpgradeType.visibilityRadius],
                range = unit.upgradesSet[(int)UpgradeType.range],
                aimingTime = unit.upgradesSet[(int)UpgradeType.aimingTime],
                reloadDuration = unit.upgradesSet[(int)UpgradeType.reloadDuration],
                piercing = unit.upgradesSet[(int)UpgradeType.piercing],
                damage = unit.upgradesSet[(int)UpgradeType.damage],
                name = unit.name,
                mask = unit.mask,
                inZone = 0,
                power = unit.power,
                sharingClanUnit = -unit.i,
                sharingTime = shareTime,
                sharingData = 0,
                sharingUser = unit.u,
                setUpgrades = unit.setUpgrades
            };
            db.UserUnits.InsertOnSubmit(ord);
            db.SubmitChanges();
            From(ord);
        }

        public UserUnit()
        {

        }

        //============ Updaters

        public void Saving()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserUnits> custs = from c in db.UserUnits
                                          where c.i == this.i
                                          select c;

            foreach (UserUnits c in custs)
            {
                c.u = this.u;
                c.t = this.t;
                c.h = this.h;
                c.td = this.td;
                c.sn = this.sn;
                c.st = this.st;
                c.en = this.en;
                c.et = this.et;
                c.rd = this.rd;
                c.rr = this.rr;
                c.upgrades = this.upgrades;
                c.frontArmor = this.upgradesSet[(int)UpgradeType.frontArmor];
                c.backArmor = this.upgradesSet[(int)UpgradeType.backArmor];
                c.sideArmor = this.upgradesSet[(int)UpgradeType.sideArmor];
                c.maxHP = this.upgradesSet[(int)UpgradeType.maxHP];
                c.speed = this.upgradesSet[(int)UpgradeType.speed];
                c.turnSpeed = this.upgradesSet[(int)UpgradeType.turnSpeed];
                c.minAccuracy = this.upgradesSet[(int)UpgradeType.minAccuracy];
                c.maxAccuracy = this.upgradesSet[(int)UpgradeType.maxAccuracy];
                c.visibilityRadius = this.upgradesSet[(int)UpgradeType.visibilityRadius];
                c.range = this.upgradesSet[(int)UpgradeType.range];
                c.aimingTime = this.upgradesSet[(int)UpgradeType.aimingTime];
                c.reloadDuration = this.upgradesSet[(int)UpgradeType.reloadDuration];
                c.piercing = this.upgradesSet[(int)UpgradeType.piercing];
                c.damage = this.upgradesSet[(int)UpgradeType.damage];
                c.name = this.name;
                c.mask = this.mask;
                c.inZone = this.inZone;
                c.power = this.power;
                c.sharingClanUnit = this.sharingClanUnit;
                c.sharingUser = this.sharingUser;
                c.sharingTime = this.sharingTime;
                c.sharingData = this.sharingData;
                c.setUpgrades = this.setUpgrades;
            }
            db.SubmitChanges();
        }

        public void Disappear()
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserUnits> units = from u in db.UserUnits
                                          where u.i == this.i
                                          select u;
            foreach (UserUnits u in units)
            {
                db.UserUnits.DeleteOnSubmit(u);
            }
            db.SubmitChanges();
        }

        //============ Methods

        public int GetUpgradesSet()
        {
            int n = 0;
            foreach (int i in this.upgradesSet) n += i;
            return n;
        }

        public static string GetUserUnit(Int32 id)  // Добываем статик
        {
            var db = new TanksDBDataContext();            
            var custs = Query.ListUserUnitsById.Invoke(db, id);            
            return Util.ToJson(custs.ToArray());
        }

        public static void CleanSharingUnits(int userId, double timenow)
        {
            var db = new TanksDBDataContext();            
            var custs = Query.ListUserUnitsById(db, userId);
            foreach (var uu in custs)
            {
                if (uu.sharingClanUnit < 0 && uu.sharingTime <= timenow)
                {
                    var uc = new UserCrew(uu.td);
                    uc.Disappear();
                    db.UserUnits.DeleteOnSubmit(uu);
                }                
            }
            db.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
        }

        public static List<int> CreateUserUnit(int defaultid, bool withCrew, User user, int crewTier, int crewid, int readycrewid)
        {
            List<int> list = new List<int>();
            var unt = new DefaultUnit(defaultid);
            var cs = new CrewService();
            var ucrewid = (withCrew) ? cs.CreateCrewById(user, crewid, true).id : readycrewid;
            var uunt = new UserUnit(user.id, unt.i, unt.hx, unt.az, ShellShop.GetFirstShell(unt.z, unt.sz, unt.t), ucrewid, unt.c);
            list.Add(uunt.i);
            list.Add(ucrewid);
            return list;
        }

        public static PurchaseResult CreateUserUnit(PurchaseResult res, int defaultid, bool withCrew, User user, int crewTier, int crewid)
        {
            var unt = new DefaultUnit(defaultid);
            var cs = new CrewService();
            UserCrew crr = null;
            if (withCrew)
            {
                crr = cs.CreateCrewById(user, crewid);
                res.crew.Add(crr);
            }
            var ucrewid = (withCrew) ? crr.id : 0;
            var uunt = new UserUnit(user.id, unt.i, unt.hx, unt.az, ShellShop.GetFirstShell(unt.z, unt.sz, unt.t), ucrewid, unt.c);
            res.tank = uunt;            
            return res;
        }

        public Int32 AddFriend(Int32 id, String spc)  // Добавляем друга
        {
            if (this.sharingClanUnit < 0) return 111;
            //DefaultUnit du = new DefaultUnit(this.t);
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<UserUnits> custs2 = from c in db.UserUnits     // Проверяем, не стоит ли друг где
                                           where (c.td == id)
                                           select c;
            foreach (UserUnits c in custs2)
            {
                c.td = 0;
            }
            db.SubmitChanges();
            this.td = id;
            this.Saving();
            return 116;
        }

        public Int32 RemFriend(Int32 id) // Высаживаем друга
        {
            if (this.td == id) this.td = 0;
            else return 117;
            this.Saving();
            return 118;
        }

        public Int32 AddShell(Int32 sh, Int32 num, Int32 slot)  // Добавляем снаряд
        {
            DefaultUnit du = new DefaultUnit(this.t);
            ShellShop ss = new ShellShop(sh);

            if (slot == 0)
            {
                Int32 tmp = (this.st == sh) ? this.sn : 0;
                if (du.az < this.sn + num + tmp) return 155;
                if (this.et > 0)
                {
                    if (sh == this.et) return 120;
                }
                if (this.st != sh && this.st != 0) this.RemShell(sh, sn, slot);
                UserShell shll = new UserShell(this.u, sh);
                if (shll.n == 0)
                {
                    shll.Disappear();
                    return 119;
                }
                this.st = shll.s;
                Int32 nmb = Math.Min(Math.Min(num, shll.n), du.az - this.sn - this.en);
                this.sn += nmb;
                shll.n -= nmb;
                if (shll.n == 0) shll.Disappear();
                else shll.Saving();
            }
            else
            {
                Int32 tmp = (this.et == sh) ? this.en : 0;
                if (du.az < this.sn + num + tmp) return 155;
                if (this.st > 0)
                {
                    if (sh == this.st) return 120;
                }
                if (this.et != sh && this.et != 0) this.RemShell(sh, en, slot);
                UserShell shll = new UserShell(this.u, sh);
                if (shll.n == 0)
                {
                    shll.Disappear();
                    return 119;
                }
                this.et = shll.s;

                Int32 nmb = Math.Min(Math.Min(num, shll.n), du.az - this.sn - this.en);

                this.en += nmb;
                shll.n -= nmb;
                if (shll.n == 0) shll.Disappear();
                else shll.Saving();
            }
            this.Saving();
            return 121;
        }

        public double[] GetShellPriceOnAutoReload(Int32 remShell, Int32 remExtraShell, Int32 clipsize)  // 
        {
            double[] result = new double[2];
            result[0] = 0;
            result[1] = 0;
            Int32 rsn = this.sn - remShell;
            Int32 ren = this.en - remExtraShell;
            UserShell us = new UserShell(this.u, this.st, false);
            if (us.i > 0) rsn -= us.n;
            if (rsn <= 0) rsn = 0;
            us = new UserShell(this.u, this.et, false);
            if (us.i > 0) ren -= us.n;
            if (ren <= 0) ren = 0;
            ShellShop ss = new ShellShop(this.st);
            rsn += (rsn % clipsize > 0) ? clipsize - rsn % clipsize : 0;
            ren += (ren % clipsize > 0) ? clipsize - ren % clipsize : 0;
            result[0] += ss.m * rsn;
            result[1] += ss.g * rsn;
            ss = new ShellShop(this.et);
            result[0] += ss.m * ren;
            result[1] += ss.g * ren;
            return result;
        }

        public Int32 AddBuyShell(Int32 sh, Int32 num, Int32 slot, User user, bool save = true, DefaultUnit du = null)  // Добавляем снаряд
        {
            if (du == null) du = new DefaultUnit(this.t);
            ShellShop ss = new ShellShop(sh);
            //if (du.z != ss.z) return 157;
            if (du.sz != ss.s) return 158; // change check by tier
            if (du.t != ss.ut) return 166;

            if (slot == 0)
            {
                if (this.et > 0)
                {
                    if (sh == this.et) return 120;
                }
                Int32 tmp = (this.st == sh) ? this.sn : 0;
                if (du.az < num + tmp) return 155;

                if (this.st != sh && this.st != 0) this.RemShell(st, sn, slot);
                if (num + tmp + this.en > du.az) this.RemShell(et, this.en - du.az + num + tmp, 1);
                UserShell shll = new UserShell(this.u, sh);
                Int32 nmb = Math.Min(Math.Min(num, shll.n), du.az - this.sn - this.en);
                Int32 adds = 0;
                Int32 adds2 = 0;
                if ((num > nmb) && (num - nmb <= du.az - this.sn - this.en))
                {
                    adds = Math.Min(num - nmb, du.az - this.sn - this.en);
                    adds2 = (adds % du.cs > 0) ? du.cs - adds % du.cs : 0;
                    if (user.GetMoney() >= (adds + adds2) * ss.m || (adds + adds2) * ss.m == 0)
                    {
                        if (user.Gold >= (adds + adds2) * ss.g || (adds + adds2) * ss.g == 0)
                        {
                            if (ss.g > 0) new Gold(user, "Shell", ss.i, -ss.g, adds + adds2);
                            user.Gold -= ss.g * (adds + adds2);
                            //user.SpendMoney((int)ss.m * (adds + adds2));
                            if (save) user.Saving();
                        }
                        else return 109;
                    }
                    else return 102;
                }

                this.st = shll.s;
                this.sn += nmb + adds;
                shll.n -= nmb - adds2;
                if (shll.n == 0) shll.Disappear();
                else shll.Saving();
            }
            else
            {
                if (this.st > 0)
                {
                    if (sh == this.st) return 120;
                }
                Int32 tmp = (this.et == sh) ? this.en : 0;
                if (du.az < num + tmp) return 155;

                if (this.et != sh && this.et != 0) this.RemShell(et, en, slot);
                if (num + tmp + this.sn > du.az) this.RemShell(st, this.sn - du.az + num + tmp, 0);
                UserShell shll = new UserShell(this.u, sh);
                Int32 nmb = Math.Min(Math.Min(num, shll.n), du.az - this.en - this.sn);
                Int32 adds = 0;
                Int32 adds2 = 0;
                if ((num > nmb) && (num - nmb <= du.az - this.sn - this.en))
                {
                    adds = Math.Min(num - nmb, du.az - this.sn - this.en);
                    adds2 = (adds % du.cs > 0) ? du.cs - adds % du.cs : 0;
                    if (user.GetMoney() >= (adds + adds2) * ss.m || (adds + adds2) * ss.m == 0)
                    {
                        if (user.Gold >= (adds + adds2) * ss.g || (adds + adds2) * ss.g == 0)
                        {
                            if (ss.g > 0) new Gold(user, "Shell", ss.i, -ss.g, adds + adds2);
                            user.Gold -= ss.g * (adds + adds2);
                            //user.SpendMoney((int)ss.m * (adds + adds2));
                            if (save) user.Saving();
                        }
                        else return 109;
                    }
                    else return 102;
                }

                this.et = shll.s;
                this.en += nmb + adds;
                shll.n -= nmb - adds2;
                if (shll.n == 0) shll.Disappear();
                else shll.Saving();
            }
            this.Saving();
            return 121;
        }

        public Int32 RemShell(Int32 shellType, Int32 num, Int32 slot) // Разряжаем танк
        {
            var shll = new UserShell(this.u, shellType);
            if (slot == 0)
            {
                if (this.st == 0) return 122;
                if (this.st != shellType) return 123;
                shll.n += Math.Min(num, this.sn);
                shll.Saving();
                this.sn -= Math.Min(num, this.sn);
                if (this.sn == 0) this.st = 0;
            }
            else
            {
                if (this.et == 0) return 122;
                if (this.et != shellType) return 123;
                shll.n += Math.Min(num, this.en);
                shll.Saving();
                this.en -= Math.Min(num, this.en);
                if (this.en == 0) this.et = 0;
            }
            this.Saving();
            return 124;
        }

        public Int32 SetRepair(bool flag)
        {
            this.Repair = flag;
            this.Saving();
            return 99;
        }

        public Int32 SetReload(bool flag)
        {
            this.Reload = flag;
            this.Saving();
            return 99;
        }

        
        public Int32 MoveZone(int z)
        {
            this.inZone = z;
            this.Saving();
            return 99;
        }

        public static List<UserUnits> GetAllUserUnits(User user)
        {
            var db = new TanksDBDataContext();
            return Query.ListUserUnitsById(db, user.id).ToList();
        }

        public int GetRepairPrice(DefaultUnit defaultUnit)
        {
            return Convert.ToInt32(Math.Ceiling((double)(-Hp) * defaultUnit.Repair / defaultUnit.MaxHp));
        }

        public bool SetUpgradeFlag(int researchIndex, bool saving = false)
        {
            if (Util.IsValidType(this.setUpgrades, researchIndex)) return false;
            this.setUpgrades = Util.AddType(this.setUpgrades, researchIndex);
            if (saving) this.Saving();
            return true;
        }

        public bool RemoveUpgradeFlag(int researchIndex, bool saving = false)
        {
            if (Util.IsValidType(this.setUpgrades, researchIndex))
            {
                this.setUpgrades = Util.RemType(this.setUpgrades, researchIndex);                
            }
            else return false;
            if (saving) this.Saving();
            return true;
        }
    }
}