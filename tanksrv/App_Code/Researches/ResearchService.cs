using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace TW
{
    public enum ResearchState
    {
        None,
        Available,
        Researching,
        Researched,
    }

    public class TechTreeNode
    {
        [JsonProperty(PropertyName = "s")]
        public int source;
        [JsonProperty(PropertyName = "d")]
        public int dest;
    }

    public class UserResearch : IToJson
    {
        public int id;
        public int userId;
        public int unitId;
        public int upgradeId;
        public double time;

        public UserResearch(UserResearches c)
        {
            this.id = c.id;
            this.userId = c.userId;
            this.unitId = c.unitId;
            this.upgradeId = c.upgradeId;
            this.time = c.time;
        }

        private UserResearch(int id)
        {
            var db = new TanksDBDataContext();
            var custs = Query.GetUserResearchesById(db, id);
            foreach (UserResearches c in custs)
            {
                new UserResearch(c);
            }
            db.SubmitChanges();
        }

        public void Saving()
        {             
            var db = new TanksDBDataContext();
            var custs = Query.GetUserResearchesById(db, this.id);
            foreach (UserResearches c in custs)
            {
                c.id = this.id;
                c.userId = this.userId;
                c.unitId = this.unitId;
                c.upgradeId = this.upgradeId;
                c.time = this.time;
            }
            db.SubmitChanges();
        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            json.BeginObject();
            json.Name("i").Value(id);
            json.Name("u").Value(userId);
            json.Name("p").Value(unitId);
            json.Name("t").Value(time);
            json.Name("ui").Value(upgradeId);
            json.EndObject();
        }

    }


    public class ResearchService : AbstractService
    {
        private const int DisassembleTankParts50ItemId = 7;
        private const int DisassembleTankParts500ItemId = 10;
        private const int DisassembleTankParts50 = 50;
        private const int DisassembleTankParts500 = 500;

        private List<UserResearch> _userResearches = null;
        private readonly static List<TechTreeNode> TechTreeLinks = JsonConvert.DeserializeObject<List<TechTreeNode>>(Define.TechTreeLinks);

        public List<UserResearch> GetUserResearches(int userId)
        {
            if (_userResearches == null)
            {
                var db = new TanksDBDataContext();
                var custs = Query.GetUserResearches(db, userId);
                var result = new List<UserResearch>();
                foreach (var utt in custs)
                {
                    result.Add(new UserResearch(utt));
                }
                _userResearches = result;
            }
            return _userResearches;
        }

        public string GetUserResearchesToJSON(int userId)
        {
            _userResearches = null;
            return Util.ToJson(GetUserResearches(userId));
        }

        private bool ResearchAvailable(UserResearch r, double timeNow)
        {
            if (r.time != 0) return false;

            if (r.upgradeId > 0) // upgrade
            {
                List<int> alwaysAvailable = new List<int>() { 1, 5, 6, 7, 8, 9 };
                UserResearch tank = GetResearchFromList(r.userId, r.unitId, 0);
                bool isRes = false;
                if (alwaysAvailable.Contains(r.upgradeId))
                {
                    int previd = GetLinkSourceFromDestination(r.unitId);
                    isRes = IsResearched(tank, timeNow) | previd == 0;
                }
                else
                {
                    UserResearch prevur = GetResearchFromList(r.userId, r.unitId, r.upgradeId - 1);
                    isRes = IsResearched(prevur, timeNow);
                }
                return isRes;
            }
            if (r.upgradeId == 0)  // tank
            {
                int previd = GetLinkSourceFromDestination(r.unitId);
                if (previd == 0) return true;
                DefaultUnit du = new DefaultUnit(previd);
                UpgradesNew un = UpgradeNew.GetUpgrade(du.Class, du.Tier);
                UpgradeNew unn = new UpgradeNew(un);
                List<int> nodes = GetLinkDestinationsFromSource(previd);

                if (r.unitId == nodes[0])
                {
                    for (int i = 4; i >= 1; i--)
                    {
                        if (unn.upgrades[i - 1] > 0)
                        {
                            return IsResearched(GetResearchFromList(r.userId, previd, i), timeNow);
                        }
                    }
                }
                else if (nodes.Count > 1)
                {
                    if (r.unitId == nodes[1])
                    {
                        for (int i = 12; i >= 9; i--)
                        {
                            if (unn.upgrades[i - 1] > 0)
                            {
                                return IsResearched(GetResearchFromList(r.userId, previd, i), timeNow);
                            }
                        }
                    }
                }
            }
            return false;
        }

        public int GetLinkSourceFromDestination(int dest)
        {
            foreach (TechTreeNode n in TechTreeLinks)
            {
                if (n.dest == dest) return n.source;
            }
            return 0;
        }

        public List<int> GetLinkDestinationsFromSource(int src)
        {
            List<int> r = new List<int>();
            foreach (TechTreeNode n in TechTreeLinks)
            {
                if (n.source == src) r.Add(n.dest);
            }
            List<int> SortedList = r.OrderBy(o => o).ToList();
            return SortedList;
        }

        public bool IsResearched(UserResearch r, double timeNow)
        {
            if (r == null) return false;
            if (r.time >= 0 && r.time <= timeNow) return true;
            return false;
        }

        public ResearchState GetState(UserResearch r, double timeNow)
        {
            // add conditions here if needed
            if (r.time > 0 && r.time > timeNow) return ResearchState.Researching;
            if (r.time > 0 && r.time <= timeNow) return ResearchState.Researched;
            if (r.time == 0 && ResearchAvailable(r, timeNow)) return ResearchState.Available;
            return ResearchState.None;
        }

        public UserResearch GetResearchFromList(int userId, int unitId, int upgradeId)
        {
            var custs = GetUserResearches(userId);
            foreach (UserResearch c in custs)
            {
                if (c.unitId == unitId && c.upgradeId == upgradeId) return c;
            }
            return CreateResearch(userId, unitId, upgradeId);
        }

        public UserResearch GetResearch(int userId, int unitId, int upgradeId)
        // Метод, создающий новые записи, если не находит их в базе
        {
            var db = new TanksDBDataContext();
            var custs = Query.GetUserResearchesByUserId(db, userId, unitId, upgradeId);
            foreach (UserResearches c in custs)
            {
                return new UserResearch(c);
            }
            return CreateResearch(userId, unitId, upgradeId);
        }

        public UserResearch CreateResearch(int userId, int unitId, int upgradeId, double timeNow = 0, bool researched = false)
        {
            var db = new TanksDBDataContext();
            double time = (researched)? timeNow : 0;
            if (upgradeId == 0)
            {
                if (GetLinkSourceFromDestination(unitId) == 0) time = 1001;
            }
            UserResearches ord = new UserResearches { userId = userId, unitId = unitId, upgradeId = upgradeId, time = time };
            db.UserResearches.InsertOnSubmit(ord);
            db.SubmitChanges();
            UserResearch result = new UserResearch(ord);
            if (_userResearches != null) _userResearches.Add(result);
            return result;
        }

        public Error ResearchUnitAllUpgradesForFree(int userId, int unitId, double timeNow)
        {
            _userResearches = null;
            DefaultUnit du = new DefaultUnit(unitId);
            if (du.i == 0) return Error.NO_SUCH_TANK;            
            UpgradeNew un = new UpgradeNew(UpgradeNew.GetUpgrade(du.Class, du.Tier));

            for (int i = 0; i < un.upgrades.Count; i++)
            {
                if ((UpgradeType)un.upgrades[i] != UpgradeType.none)
                {
                    CreateResearch(userId, unitId, i + 1, timeNow, true);
                }
            }
            return Error.OK;
        }

        public Error ResearchUnitForFree(int userId, int unitId, double timeNow)
        {
            DefaultUnit du = new DefaultUnit(unitId);
            if (du.i == 0) return Error.NO_SUCH_TANK;
            if (du.p == 2) return Error.OK;
            CreateResearch(userId, unitId, 0, timeNow, true);
            return Error.OK;
        }

        public Error ResearchUnit(EvolveService evolve, User user, int unitId, int upgradeId, double timeNow)
        {
            _userResearches = null;
            UserResearch element = GetResearch(user.id, unitId, upgradeId);
            if (element != null)
            {
                if (GetState(element, timeNow) != ResearchState.Available) return Error.RESEARCH_NOT_AVAILABLE;  // TO DO new error NOT AVAILABLE TO RESEARCH

                List<Bonus> reqqs = new List<Bonus>();
                if (upgradeId == 0)
                {
                    reqqs = evolve.GetEvolveConfig()[unitId].requirements;
                }
                if (upgradeId > 0)
                {
                    DefaultUnit du = new DefaultUnit(unitId);
                    UpgradeNew un = new UpgradeNew(UpgradeNew.GetUpgrade(du.Class, du.Tier));
                    reqqs.Add(new Bonus() { item = 0, type = (int)BonusType.Time, num = 0 });
                    reqqs.Add(new Bonus() { item = 0, type = (int)BonusType.Money, num = un.upgrade.money });
                    reqqs.Add(new Bonus() { item = GetReqComponentId((UpgradeType)un.upgrades[upgradeId - 1]), type = (int)BonusType.Item, num = un.upgrade.components });
                }
                var req = evolve.HasRequirements(user, reqqs);
                if (req != Error.OK) return req;        // if not enough resources
                evolve.ConsumeRequirements(user, reqqs, timeNow);
                element.time = reqqs.Find(a => a.type == (int)BonusType.Time).num * 60000 + timeNow;  //time in minutes
                element.Saving();                
                var todoService = new TodoService();
                todoService.ProcessTodoStep(user, TodoService.TodoStepType.EvolveTier);
                return Error.OK.SetData(element.time.ToString());
            }
            return Error.RESEARCH_NOT_AVAILABLE;
        }

        public Error AccelerateResearch(User user, int unitId, double timeNow)
        {
            _userResearches = null;
            UserResearch element = GetResearch(user.id, unitId, 0);
            if (element != null)
            {
                if (GetState(element, timeNow) != ResearchState.Researching) return Error.RESEARCH_NOT_AVAILABLE;
                DefaultUnit du = new DefaultUnit(unitId);
                UpgradeNew un = new UpgradeNew(UpgradeNew.GetUpgrade(du.Class, du.Tier));
                int price = (int)Math.Ceiling(un.upgrade.goldPerMinute * (element.time - timeNow) / 60000);
                if (price > user.Gold) return Error.LACK_GOLD;
                user.Gold -= price;
                element.time = timeNow;
                element.Saving();
                user.Saving();
                return Error.OK.SetData(price.ToString());
            }
            return Error.RESEARCH_NOT_AVAILABLE;
        }

        public Error BuyTank(User user, int unitId, double timeNow)
        {
            _userResearches = null;
            UserResearch element = GetResearch(user.id, unitId, 0);
            if (element != null)
            {
                if (GetState(element, timeNow) != ResearchState.Researched) return Error.NO_USER_TANK;
                DefaultUnit unt = new DefaultUnit(unitId);
                if (unt.i == 0) return Error.NO_SUCH_TANK;
                if (user.GetUserUnitNum() >= user.Slots) return Error.HANGAR_NO_SLOT;

                double discountG = 0;
                double discountM = 0;
                List<UserAction> action = UserAction.GetByItemId(user.id, ItemType.Tank, unt.i, timeNow);
                if (action.Count > 0)
                {
                    discountG = Math.Ceiling(unt.g * action[0].discount / 100);
                    discountM = Math.Ceiling(unt.m * action[0].discount / 100);
                }

                if (user.Gold < unt.g - discountG) return Error.LACK_GOLD;
                if (user.GetMoney() < unt.m - discountM) return Error.LACK_MONEY;
                if (user.GetDetails() < unt.parts) return Error.LACK_PARTS;

                var uunit = new UserUnit(user.id, unitId, unt.hx, unt.az, ShellShop.GetFirstShell(unt.z, unt.sz, unt.t), 0, unt.c);
                if (uunit.i == 0) return Error.NO_USER_TANK;

                if (unt.g > 0) new Gold(user, "Tank", unt.i, -(unt.g - discountG));
                user.SpendMoney((int)unt.m - (int)discountM);
                user.Gold -= unt.g - discountG;
                user.SpendDetails(unt.parts);
                user.Saving();
                var todoService = new TodoService();
                todoService.ProcessTodoStep(user, TodoService.TodoStepType.BuyTank);
                return Error.OK.SetData(Util.ToJson(uunit).Replace("\"", "'"));
            }
            return Error.RESEARCH_NOT_AVAILABLE;
        }

        public Error SellTank(User user, int unitId, double timeNow, ItemService itemService, TournamentService tournamentService)
        {
            _userResearches = null;
            ParticipantState participantState;
            if (tournamentService.GetParticipantState(user.clan_id, user.id, out participantState) && participantState.Squad.Contains(unitId))
                return Error.ERROR_TANKS_IN_DEFENSE;

            UserUnit uu = new UserUnit(unitId);
            if (uu.i == 0) return Error.NO_USER_TANK;
            DefaultUnit du = new DefaultUnit(uu.t);
            if (du.i == 0) return Error.NO_SUCH_TANK;
            int pdetails = (int)Math.Ceiling(du.parts * Define.Get(Def.SellTankPrice));
            int pmoney = (int)Math.Ceiling(du.m * Define.Get(Def.SellTankPrice));
            int pgold = (int)Math.Ceiling(du.g * Define.Get(Def.SellTankPrice));
            user.Gold += pgold;
            int moneyRem = user.AddMoneyWithoutLimits(pmoney);

            int detailsRem = user.AddDetailsWithoutLimits(pdetails);
            uu.Disappear();
            user.Saving();
            return Error.OK.SetData(Util.ClearJson(Util.ToJson(new List<int> { pmoney, moneyRem, pdetails, pdetails, 0, 0, 0, 0, pgold })));
        }

        public Error BuyUpgrade(User user, int unitId, int upgradeId, int index, bool buyDetailsIfLack, TodoService todoService, double timeNow)
        {
            _userResearches = null;
            var unit = new UserUnit(unitId);
            //if (unit.upgradesSet[upgradeId] >= Define.UpgradeMultiplier.Length) return Error.UPGRADE_LIMIT;
            if (!unit.SetUpgradeFlag(index)) return Error.UPGRADE_ALREADY_SET;

            var du = new DefaultUnit(unit.t);
            UserResearch element = GetResearch(user.id, du.i, index);
            if (element != null)
            {
                if (GetState(element, timeNow) != ResearchState.Researched) return Error.RESEARCH_NOT_AVAILABLE;
            }
            var up = UpgradeNew.GetUpgrade(du.t, du.sz);

            if (up.id == 0)
                return Error.NO_SUCH_UPGRADE;

            int price = up.parts;

            if (user.GetDetails() < price && !buyDetailsIfLack) return Error.LACK_DETAILS;
            if (user.GetDetails() < price && buyDetailsIfLack)
            {
                var shop = new Shop(ShopType.ProductionPoints);
                double gold = Math.Ceiling((price - user.GetDetails()) * shop.price);
                if (user.Gold < gold) return Error.LACK_GOLD;
                user.SetDetails(price);
                new Gold(user, "Upgrade", upgradeId, -gold, 1);
                user.Gold -= gold;
            }
            user.SpendDetails(price);
            unit.upgradesSet[upgradeId]++;
            int incPower = Upgrade.CalculateUpgradePower((UpgradeType)upgradeId, du.c, 1);
            unit.power += incPower;
            unit.Saving();
            user.Saving();
            //
            todoService.ProcessTodoStep(user, TodoService.TodoStepType.UpgradeTank);

            return Error.OK.SetData(incPower.ToString());
        }

        public Error DropUpgrade(User user, int upgradeId, int unitId, int index)
        {
            if (user.Gold >= Define.UpgradeDropPrice)
            {
                var unit = new UserUnit(unitId);
                var du = new DefaultUnit(unit.t);
                unit.upgradesSet[upgradeId]--;
                var power = Upgrade.CalculateUpgradePower((UpgradeType)upgradeId, du.c, 1);
                unit.power -= power;                
                new Gold(user, "DropUpgrade", 0, -(double)Define.UpgradeDropPrice, 1);
                user.Gold -= Define.UpgradeDropPrice;
                unit.RemoveUpgradeFlag(index);
                unit.Saving();
                user.Saving();
                return Error.OK;
            }
            return Error.LACK_GOLD;
        }

        public UpgradeClass GetUpgradeClassByType(UpgradeType type)
        {
            foreach (KeyValuePair<UpgradeClass, List<UpgradeType>> kvp in UpgradeNew.UpgradeListByClass)
            {
                foreach (UpgradeType ut in kvp.Value)
                {
                    if (ut == type)
                        return kvp.Key;
                }
            }
            return UpgradeClass.All;
        }

        public int GetReqComponentId(UpgradeType type)
        {
            int result = 0;

            upgradesReqs.TryGetValue(GetUpgradeClassByType(type), out result);

            return result;
        }

        private static readonly Dictionary<UpgradeClass, int> upgradesReqs = new Dictionary<UpgradeClass, int>()
        {
            { UpgradeClass.Attack, 22 },
            { UpgradeClass.Defence, 23 },
            { UpgradeClass.Electroparts, 24 },
            { UpgradeClass.Movement, 21 },
        };

    }
}