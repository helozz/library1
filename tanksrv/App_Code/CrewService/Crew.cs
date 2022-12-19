using System;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;

namespace TW
{
    public enum SkillType
    {
        Passive,    //0
        Active,     //1
        Auto,       //2
        Vehicle     //3
    }

    public enum ParamType
    {
        None,                               //0
        time,                               //1
        cooldown,                           //2

        frontArmor,                         //3
        backArmor,                          //4
        sideArmor,                          //5
        maxHP,                              //6

        speed,                              //7
        turnSpeed,                          //8

        minAccuracy,                        //9
        maxAccuracy,                        //10
        visibilityRadius,                   //11
        range,                              //12

        aimingTime,                         //13
        reloadDuration,                     //14
        piercing,                           //15
        damage,                             //16
        allArmor,                           //17

        frontArmorPr,                       //18
        backArmorPr,                        //19
        sideArmorPr,                        //20
        maxHPPr,                            //21

        speedPr,                            //22
        turnSpeedPr,                        //23

        minAccuracyPr,                      //24
        maxAccuracyPr,                      //25
        visibilityRadiusPr,                 //26
        rangePr,                            //27

        aimingTimePr,                       //28
        reloadDurationPr,                   //29
        piercingPr,                         //30
        damagePr,                           //31
        allArmorPr,                         //32

        HPRestore,                          //33
        HidingRangePr,                      //34
        AOEDamage,                          //35
        ChanceToStopPr,                     //36
        NumberOfTargets,                    //37
        AdditionalArmor,                    //38
        HPRestorePr,                        //39
        shellID,                            //40
        shellCount,                         //41
        shellCooldown,                      //42
        DamageMultiplier,                   //43
        Sniper,                             //44
        ShellVisualType,                    //45      //:0,1,2 (вид снаряда)
        buffChance,                         //46
        isDebuff,                           //47
        ReplaceBuffByID,                    //48

        HPRestoreFrequency,                 //49
        AntiTankMine,                       //50
        binocular,                          //51
        PassiveStatsMultiplierPr,           //52
        chanceToBlockNegativeEffectsPr,     //53
        damageIgnoreArmorPr,                //54
        turretTurnSpeed,                    //55
        turretTurnSpeedPr,                  //56
        minMaxAccuracy,                     //57
        minMaxAccuracyPr,                   //58
        InverseStatsAfterBuff,              //59
        RemoveAllDebuffs,                   //60
        MineTime,                           //61
        HPCondition,                        //62
        OneShot,                            //63
        VehicleType                         //64
    }

    public class Crew : IToJson
    {
        public Int32 id;
        public string name;
        public Int32 side;
        public Int32 money;
        public Int32 gold;
        public Int32 skillId1;
        public Int32 skillId2;
        public Int32 skillId3;
        public Int32 skillId4;
        public Int32 skillId5;
        public int idsidebonus; //this is skillId6
        public int skillId1b;
        public int skillId1c;
        public int skillId2b;
        public int skillId2c;
        public int skillId4b;
        public int skillId4c;
        public int skillId5b;
        public int skillId5c;
        public int idsidebonus2; //this is skillId6b
        public int idsidebonus3; //this id skillId6c
        public bool forSale;

        private Dictionary<int, List<int>> skillsData = new Dictionary<int, List<int>>();

        public Crew()
        {
            var db = new TanksDBDataContext();
            List<Crews> custs = Query.ListShopCrews(db).ToList();
            var RND = new Random();
            Crews cr = custs[RND.Next(0, custs.Count())];
            if (cr != null)
            {
                Set(cr);
            }
        }

        public Crew(Crews crews)
        {
            Set(crews);
        }

        public Crew(Int32 id)
        {
            var db = new TanksDBDataContext();
            IQueryable<Crews> custs = Query.GetCrewById(db, id);

            Crews cr = Enumerable.FirstOrDefault<Crews>(custs);
            if (cr != null)
            {
                Set(cr);
            }
        }

        public bool IsValidSkill(int skillIndex, int newSkillId)
        {
            List<int> data;
            return skillsData.TryGetValue(skillIndex, out data) && data.Contains(newSkillId);
        }

        private void Set(Crews z)
        {
            id = z.id;
            name = z.name;
            side = z.side;
            idsidebonus = z.idsidebonus;
            idsidebonus2 = z.idsidebonus2;
            idsidebonus3 = z.idsidebonus3;
            money = z.money;
            gold = z.gold;
            skillId1 = z.skillId1;
            skillId2 = z.skillId2;
            skillId3 = z.skillId3;
            skillId4 = z.skillId4;
            skillId5 = z.skillId5;
            skillId1b = z.skillId1b;
            skillId1c = z.skillId1c;
            skillId2b = z.skillId2b;
            skillId2c = z.skillId2c;
            skillId4b = z.skillId4b;
            skillId4c = z.skillId4c;
            skillId5b = z.skillId5b;
            skillId5c = z.skillId5c;
            forSale = z.forSale;

            skillsData.Add(1, new List<int> { skillId1, skillId1b, skillId1c });
            skillsData.Add(2, new List<int> { skillId2, skillId2b, skillId2c });
            skillsData.Add(3, new List<int>(Define.CrewAdditionalSkills));
            skillsData.Add(4, new List<int> { skillId4, skillId4b, skillId4c });
            skillsData.Add(5, new List<int> { skillId5, skillId5b, skillId5c });
            skillsData.Add(6, new List<int> { idsidebonus, idsidebonus2, idsidebonus3 });
        }

        public static string GetStatic()
        {
            var db = new TanksDBDataContext();
            var custs = Query.ListCrews(db);
            return JsonConvert.SerializeObject(custs.ToArray<Crews>(), Formatting.None, new CrewsArrayConverter());
        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            json.BeginObject();
            json.Name("i").Value(id);
            json.Name("n").Value(name);
            json.Name("s").Value(side);
            json.Name("is").Value(idsidebonus);
            json.Name("is2").Value(idsidebonus2);
            json.Name("is3").Value(idsidebonus3);
            json.Name("m").Value(money);
            json.Name("g").Value(gold);
            json.Name("s1").Value(skillId1);
            json.Name("s2").Value(skillId2);
            json.Name("s3").Value(skillId3);
            json.Name("s4").Value(skillId4);
            json.Name("s5").Value(skillId5);
            json.Name("s1b").Value(skillId1b);
            json.Name("s1c").Value(skillId1c);
            json.Name("s2b").Value(skillId2b);
            json.Name("s2c").Value(skillId2c);
            json.Name("s4b").Value(skillId4b);
            json.Name("s4c").Value(skillId4c);
            json.Name("s5b").Value(skillId5b);
            json.Name("s5c").Value(skillId5c);
            json.Name("fs").Value(forSale);
            json.EndObject();
        }
    }

    public class UserCrew : IToJson
    {
        public const int LvlCap = 65;
        private const int RandomSkill = -1;

        public Int32 id;
        public Int32 userid;
        public Int32 crewid;
        public Int32 lvl;
        public Int32 exp;
        public Int32 tier;
        public string name;
        public Int32 side;
        public Int32 idSideBonus;
        public Int32 skillid1;
        public Int32 skillid2;
        public Int32 skillid3;
        public Int32 skillid4;
        public Int32 skillid5;
        public Int32 skilllvl1;
        public Int32 skilllvl2;
        public Int32 skilllvl3;
        public Int32 skilllvl4;
        public Int32 skilllvl5;
        public Int32 skilllvl6;
        public bool isShared;

        private Random random = new Random();

        public UserCrew()
        {

        }

        public UserCrew(int id)
        {
            var db = new TanksDBDataContext();
            IQueryable<UserCrews> custs = Query.GetUserCrewById(db, id);
            var ucs = Enumerable.FirstOrDefault(custs);
            if (ucs != null)
                Set(ucs);
        }

        public UserCrew(UserCrews userCrews)
        {
            Set(userCrews);
        }

        public UserCrew(UserCrew shareCrew, int newUserId)
        {
            var db = new TanksDBDataContext();
            var uc = new UserCrews();
            uc.isShared = true;

            uc.name = shareCrew.name;
            uc.side = shareCrew.side;
            uc.lvl = shareCrew.lvl;
            uc.tier = shareCrew.tier;
            uc.crewid = shareCrew.crewid;
            uc.userid = newUserId;
            uc.exp = shareCrew.exp;
            uc.skillid1 = shareCrew.skillid1;
            uc.skillid2 = shareCrew.skillid2;
            uc.skillid3 = shareCrew.skillid3;
            uc.skillid4 = shareCrew.skillid4;
            uc.skillid5 = shareCrew.skillid5;
            uc.idsidebonus = shareCrew.idSideBonus;
            uc.skill1lvl = shareCrew.skilllvl1;
            uc.skill2lvl = shareCrew.skilllvl2;
            uc.skill3lvl = shareCrew.skilllvl3;
            uc.skill4lvl = shareCrew.skilllvl4;
            uc.skill5lvl = shareCrew.skilllvl5;
            uc.skill6lvl = shareCrew.skilllvl6;
            db.UserCrews.InsertOnSubmit(uc);
            db.SubmitChanges();
            Set(uc);
        }

        public UserCrew(Int32 templateId, Int32 userId, bool isStartCrew = false) // creating constructor
        {
            var db = new TanksDBDataContext();
            IQueryable<Crews> custs = Query.GetCrewById(db, templateId);
            Crews cr = Enumerable.FirstOrDefault(custs);
            if (cr == null)
                return;

            var uc = new UserCrews();
            uc.isShared = false;
            uc.name = cr.name;
            uc.side = cr.side;
            if (isStartCrew) uc.lvl = 11;
            else uc.lvl = 1;
            uc.tier = 1;
            uc.crewid = templateId;
            uc.userid = userId;
            uc.exp = 0;


            if (cr.skillId1 == RandomSkill)
            {
                cr.skillId1 = GetRandomSkill(SkillType.Passive, uc).skillId;
            }
            uc.skillid1 = cr.skillId1;
            if (cr.skillId2 == RandomSkill)
            {
                cr.skillId2 = GetRandomSkill(SkillType.Active, uc).skillId;
            }
            uc.skillid2 = cr.skillId2;
            if (cr.skillId3 == RandomSkill)
            {
                cr.skillId3 = GetRandomSkill(SkillType.Passive, uc).skillId;
            }
            uc.skillid3 = cr.skillId3;
            if (cr.skillId4 == RandomSkill)
            {
                cr.skillId4 = GetRandomSkill(SkillType.Passive, uc).skillId;
            }
            uc.skillid4 = cr.skillId4;
            if (cr.skillId5 == RandomSkill)
            {
                cr.skillId5 = GetRandomSkill(SkillType.Passive, uc).skillId;
            }
            uc.skillid5 = cr.skillId5;

            uc.idsidebonus = cr.idsidebonus;

            uc.skill1lvl = isStartCrew ? 6 : 1;
            uc.skill2lvl = 1;
            uc.skill3lvl = 0;
            uc.skill4lvl = 0;
            uc.skill5lvl = 0;
            uc.skill6lvl = 0;
            db.UserCrews.InsertOnSubmit(uc);
            db.SubmitChanges();
            Set(uc);
        }


        public bool IsMaxLevel
        {
            get { return lvl >= LvlCap; }
        }

        public Skill GetRandomSkill(SkillType skt, UserCrews cr)
        {
            var db = new TanksDBDataContext();
            IQueryable<Skills> custs;
            if (skt == SkillType.Active)
            {
                custs = Query.ListActiveSkills1lvl(db);
            }
            else if (skt == SkillType.Passive)
            {
                custs = Query.ListPassiveSkills1lvl(db);
            }
            else custs = null;
            if (custs == null) return null;
            List<Skills> arr = custs.ToList();
            arr.Remove(arr.Find(c => c.skillId == cr.skillid2));
            arr.Remove(arr.Find(c => c.skillId == cr.skillid3));
            arr.Remove(arr.Find(c => c.skillId == cr.skillid4));
            arr.Remove(arr.Find(c => c.skillId == cr.skillid5));
            arr.Remove(arr.Find(c => c.skillId == cr.idsidebonus));
            if (arr.Count == 0) return null;
            int r = random.Next(arr.Count);
            return new Skill(arr[r]);
        }

        public int GetSkillIdByIndex(int skillIndex)
        {
            switch (skillIndex)
            {
                case 1:
                    return skillid1;
                case 2:
                    return skillid2;
                case 3:
                    return skillid3;
                case 4:
                    return skillid4;
                case 5:
                    return skillid5;
                case 6:
                    return idSideBonus;
                default:
                    return -1;
            }
        }

        public int GetSkillLevelByIndex(int skillIndex)
        {
            switch (skillIndex)
            {
                case 1:
                    return skilllvl1;
                case 2:
                    return skilllvl2;
                case 3:
                    return skilllvl3;
                case 4:
                    return skilllvl4;
                case 5:
                    return skilllvl5;
                case 6:
                    return skilllvl6;
                default:
                    return 0;
            }
        }

        public void UpdateSkillIdByIndex(int skillIndex, int newSkillId)
        {
            switch (skillIndex)
            {
                case 1:
                    skillid1 = newSkillId;
                    break;
                case 2:
                    skillid2 = newSkillId;
                    break;
                case 3:
                    skillid3 = newSkillId;
                    break;
                case 4:
                    skillid4 = newSkillId;
                    break;
                case 5:
                    skillid5 = newSkillId;
                    break;
                case 6:
                    idSideBonus = newSkillId;
                    break;
            }
        }

        public void UpgradeSkillByIndex(int skillIndex)
        {
            switch (skillIndex)
            {
                case 1:
                    skilllvl1++;
                    break;
                case 2:
                    skilllvl2++;
                    break;
                case 3:
                    skilllvl3++;
                    break;
                case 4:
                    skilllvl4++;
                    break;
                case 5:
                    skilllvl5++;
                    break;
                case 6:
                    skilllvl6++;
                    break;
            }
        }

        public void UpdateSkillLevelByIndex(int skillIndex, int newLevel)
        {
            switch (skillIndex)
            {
                case 1:
                    skilllvl1 = newLevel;
                    break;
                case 2:
                    skilllvl2 = newLevel;
                    break;
                case 3:
                    skilllvl3 = newLevel;
                    break;
                case 4:
                    skilllvl4 = newLevel;
                    break;
                case 5:
                    skilllvl5 = newLevel;
                    break;
                case 6:
                    skilllvl6 = newLevel;
                    break;
            }
        }

        public static int GetUserCrewsCount(User user)
        {
            var db = new TanksDBDataContext();
            var custs = Query.ListUserCrewsByUserId(db, user.id);
            return custs.Count();
        }

        public static List<UserCrew> GetUserCrewList(User user)
        {
            var db = new TanksDBDataContext();
            var custs = Query.ListUserCrewsByUserId(db, user.id).ToList();
            var crews = new List<UserCrew>();
            foreach (UserCrews c in custs) crews.Add(new UserCrew(c));
            return crews;
        }

        public static string GetStatic(Int32 userid)  // Добываем статик
        {
            var db = new TanksDBDataContext();
            IQueryable<UserCrews> custs = Query.ListUserCrewsByUserId(db, userid);
            return JsonConvert.SerializeObject(custs.ToArray<UserCrews>(), Formatting.None, new UserCrewsArrayConverter());
        }

        public void Saving() //Update
        {
            var db = new TanksDBDataContext();
            IQueryable<UserCrews> custs = Query.GetUserCrewById(db, id);
            UserCrews uc = Enumerable.FirstOrDefault(custs);
            if (uc != null)
            {
                uc.side = this.side;
                uc.idsidebonus = this.idSideBonus;
                uc.exp = this.exp;
                uc.lvl = this.lvl;
                uc.name = this.name;
                uc.tier = this.tier;
                uc.userid = this.userid;
                uc.crewid = this.crewid;
                uc.skillid1 = this.skillid1;
                uc.skillid2 = this.skillid2;
                uc.skillid3 = this.skillid3;
                uc.skillid4 = this.skillid4;
                uc.skillid5 = this.skillid5;
                uc.skill1lvl = this.skilllvl1;
                uc.skill2lvl = this.skilllvl2;
                uc.skill3lvl = this.skilllvl3;
                uc.skill4lvl = this.skilllvl4;
                uc.skill5lvl = this.skilllvl5;
                uc.skill6lvl = this.skilllvl6;
                uc.isShared = this.isShared;
                db.SubmitChanges();
            }
        }

        public void SetLevel(FriendLevel fll = null)
        {
            if (lvl == LvlCap)
                return;

            if (fll == null) fll = new FriendLevel(lvl + 1);
            while (exp >= fll.experience)
            {
                lvl++;
                exp -= fll.experience;

                fll = new FriendLevel(lvl + 1);
                if (fll.experience == -1) break;
            }
            Saving();
        }

        private void Set(UserCrews z)
        {
            if (z == null) return;
            id = z.id;
            userid = z.userid;
            crewid = z.crewid;
            lvl = z.lvl;
            exp = z.exp;
            tier = z.tier;
            name = z.name;
            side = z.side;
            idSideBonus = z.idsidebonus;
            skillid1 = z.skillid1;
            skillid2 = z.skillid2;
            skillid3 = z.skillid3;
            skillid4 = z.skillid4;
            skillid5 = z.skillid5;
            skilllvl1 = z.skill1lvl;
            skilllvl2 = z.skill2lvl;
            skilllvl3 = z.skill3lvl;
            skilllvl4 = z.skill4lvl;
            skilllvl5 = z.skill5lvl;
            skilllvl6 = z.skill6lvl;
            isShared = z.isShared;
        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            json.BeginObject();
            json.Name("i").Value(id);
            json.Name("ui").Value(userid);
            json.Name("ci").Value(crewid);
            json.Name("s").Value(side);
            json.Name("is").Value(idSideBonus);
            json.Name("t").Value(tier);
            json.Name("n").Value(name);
            json.Name("l").Value(lvl);
            json.Name("e").Value(exp);
            json.Name("s1").Value(skillid1);
            json.Name("s2").Value(skillid2);
            json.Name("s3").Value(skillid3);
            json.Name("s4").Value(skillid4);
            json.Name("s5").Value(skillid5);
            json.Name("sl1").Value(skilllvl1);
            json.Name("sl2").Value(skilllvl2);
            json.Name("sl3").Value(skilllvl3);
            json.Name("sl4").Value(skilllvl4);
            json.Name("sl5").Value(skilllvl5);
            json.Name("sl6").Value(skilllvl6);
            json.Name("xs").Value(isShared);
            json.EndObject();
        }

        public Skill GetFactionBonus()
        {
            var db = new TanksDBDataContext();
            IQueryable<Skills> custs = Query.GetSkillById(db, idSideBonus, 1);
            var sk = Enumerable.FirstOrDefault(custs.Select(c => new Skill(c)));
            return sk;
        }

        public List<Skill> GetSkills()
        {
            var skills = new List<Skill>();
            var db = new TanksDBDataContext();
            var custs = Query.GetSkillById(db, skillid1, skilllvl1);
            var sk = Enumerable.FirstOrDefault(custs.Select(c => new Skill(c)));
            if (sk != null)
            {
                skills.Add(sk);
            }
            custs = Query.GetSkillById(db, skillid2, skilllvl2);
            sk = Enumerable.FirstOrDefault(custs.Select(c => new Skill(c)));
            if (sk != null)
            {
                skills.Add(sk);
            }
            custs = Query.GetSkillById(db, skillid3, skilllvl3);
            sk = Enumerable.FirstOrDefault(custs.Select(c => new Skill(c)));
            if (sk != null)
            {
                skills.Add(sk);
            }
            custs = Query.GetSkillById(db, skillid4, skilllvl4);
            sk = Enumerable.FirstOrDefault(custs.Select(c => new Skill(c)));
            if (sk != null)
            {
                skills.Add(sk);
            }
            custs = Query.GetSkillById(db, skillid5, skilllvl5);
            sk = Enumerable.FirstOrDefault(custs.Select(c => new Skill(c)));
            if (sk != null)
            {
                skills.Add(sk);
            }

            custs = Query.GetSkillById(db, idSideBonus, skilllvl6);
            sk = Enumerable.FirstOrDefault(custs.Select(c => new Skill(c)));
            if (sk != null)
            {
                skills.Add(sk);
            }
            return skills;
        }

        public UserCrews ToUserCrews()
        {
            var uc = new UserCrews();
            uc.id = this.id;
            uc.idsidebonus = this.idSideBonus;
            uc.exp = this.exp;
            uc.lvl = this.lvl;
            uc.name = this.name;
            uc.side = this.side;
            uc.tier = this.tier;
            uc.userid = this.userid;
            uc.side = this.side;
            uc.crewid = this.crewid;
            uc.skillid1 = this.skillid1;
            uc.skillid2 = this.skillid2;
            uc.skillid3 = this.skillid3;
            uc.skillid4 = this.skillid4;
            uc.skillid5 = this.skillid5;
            uc.skill1lvl = this.skilllvl1;
            uc.skill2lvl = this.skilllvl2;
            uc.skill3lvl = this.skilllvl3;
            uc.skill4lvl = this.skilllvl4;
            uc.skill5lvl = this.skilllvl5;
            uc.skill6lvl = this.skilllvl6;
            uc.isShared = this.isShared;
            return uc;
        }

        public void Disappear()
        {
            var db = new TanksDBDataContext();
            var custs = Query.GetUnitByCrew(db, this.id);
            var uu = Enumerable.FirstOrDefault(custs);
            if (uu != null)
            {
                uu.td = 0;
            }
            var userCrews = from f in db.UserCrews
                            where f.id == this.id
                            select f;
            foreach (UserCrews u in userCrews)
            {
                db.UserCrews.DeleteOnSubmit(u);
            }
            db.SubmitChanges();
        }
    }

    public class Skill : IToJson
    {
        public Int32 id;
        public Int32 skillId;
        public string name;
        public SkillType type;
        public Int32 lvl;
        public ParamType param1;
        public double value1;
        public ParamType param2;
        public double value2;
        public ParamType param3;
        public double value3;
        public ParamType param4;
        public double value4;
        public ParamType param5;
        public double value5;
        public ParamType param6;
        public double value6;

        public Skill()
        {

        }

        public Skill(Skills s)
        {
            this.id = s.id;
            this.skillId = s.skillId;
            this.lvl = s.lvl;
            this.name = s.name;
            this.type = (SkillType)s.type;
            this.param1 = (ParamType)s.param1;
            this.param2 = (ParamType)s.param2;
            this.param3 = (ParamType)s.param3;
            this.param4 = (ParamType)s.param4;
            this.param5 = (ParamType)s.param5;
            this.param6 = (ParamType)s.param6;
            this.value1 = s.value1;
            this.value2 = s.value2;
            this.value3 = s.value3;
            this.value4 = s.value4;
            this.value5 = s.value5;
            this.value6 = s.value6;
        }

        private void Set(Skills z)
        {
            id = z.id;
            skillId = z.skillId;
            name = z.name;
            type = (SkillType)z.type;
            lvl = z.lvl;
            param1 = (ParamType)z.param1;
            value1 = z.value1;
            param2 = (ParamType)z.param2;
            value2 = z.value2;
            param3 = (ParamType)z.param3;
            value3 = z.value3;
            param4 = (ParamType)z.param4;
            value4 = z.value4;
            param5 = (ParamType)z.param5;
            value5 = z.value5;
            param6 = (ParamType)z.param6;
            value6 = z.value6;
        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            json.BeginObject();
            json.Name("i").Value(id);
            json.Name("si").Value(skillId);
            json.Name("n").Value(name);
            json.Name("t").Value(type);
            json.Name("l").Value(lvl);
            json.Name("p1").Value(param1);
            json.Name("v1").Value(value1);
            json.Name("p2").Value(param2);
            json.Name("v2").Value(value2);
            json.Name("p3").Value(param3);
            json.Name("v3").Value(value3);
            json.Name("p4").Value(param4);
            json.Name("v4").Value(value4);
            json.Name("p5").Value(param5);
            json.Name("v5").Value(value5);
            json.Name("p6").Value(param5);
            json.Name("v6").Value(value5);
            json.EndObject();
        }

        public static string GetStatic()  // Добываем статик
        {
            TanksDBDataContext db = new TanksDBDataContext();
            IQueryable<Skills> custs = Query.ListSkills(db);
            return JsonConvert.SerializeObject(custs.ToArray<Skills>(), Formatting.None, new SkillsArrayConverter());
        }
    }
}
