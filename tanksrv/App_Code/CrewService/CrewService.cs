using System;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;

namespace TW
{
    public class CrewService : AbstractService
    {
        private const float CrewTransferExperienceDiff = 60.0f;
        private const string CrewExperiencesConfigCache = "CrewExperiencesConfig";
        private const string SkillRequirementsConfigCache = "SkillRequirementsConfig";
        private const int EXP_COMMON = 90;
        private const int EXP_AMOUNT = 2000;

        public bool IsSkillMaxUpgraded(int skillIndex, int skillLevel)
        {
            var settings = GetSkillRequirementConfig();
            if (!settings.ContainsKey(skillIndex))
                return true;

            var data = settings[skillIndex];
            return skillLevel >= data.Count - 1; //because index 0 is requrement for change skill
        }

        public bool IsSkillOpened(int skillIndex, int crewLevel)
        {
            var settings = GetSkillRequirementConfig();
            if (!settings.ContainsKey(skillIndex))
                return false;

            var data = settings[skillIndex];
            return crewLevel >= data[1].crewLevel;
        }

        public bool CanUpgradeSkill(int skillIndex, int skillLevel, int crewLevel)
        {
            var settings = GetSkillRequirementConfig();
            if (!settings.ContainsKey(skillIndex))
                return false;

            var data = settings[skillIndex];
            if (!data.ContainsKey(skillLevel))
                return false;

            return crewLevel >= data[skillLevel].crewLevel;
        }

        public SkillRequirement GetSkillRequirement(int skillIndex, int level)
        {
            var settings = GetSkillRequirementConfig();

            Dictionary<int, SkillRequirement> data;
            if (!settings.TryGetValue(skillIndex, out data))
                return null;

            if (!data.ContainsKey(level))
                return null;

            return data[level];
        }

        public Dictionary<int, SkillRequirement> GetSkillRequirements(int skillIndex)
        {
            var settings = GetSkillRequirementConfig();

            Dictionary<int, SkillRequirement> data;
            if (!settings.TryGetValue(skillIndex, out data))
                return null;

            return data;
        }

        public Dictionary<int, Dictionary<int, SkillRequirement>> GetSkillRequirementConfig()
        {
            var result = Caching.Get<Dictionary<int, Dictionary<int, SkillRequirement>>>(SkillRequirementsConfigCache);
            if (result != null)
                return result;

            var db = new TanksDBDataContext();
            var custs = Query.GetSkillRequirementsConfig(db);

            result = new Dictionary<int, Dictionary<int, SkillRequirement>>();
            foreach (var entry in custs)
            {
                var skillRequirement = new SkillRequirement(entry);

                Dictionary<int, SkillRequirement> data;
                if (!result.TryGetValue(skillRequirement.index, out data))
                {
                    data = new Dictionary<int, SkillRequirement>();
                    result.Add(skillRequirement.index, data);
                }

                data.Add(skillRequirement.level, skillRequirement);
            }

            Caching.Add(SkillRequirementsConfigCache, result);

            return result;
        }

        public Dictionary<int, int> GetCrewExperiecenConfig()
        {
            var result = Caching.Get<Dictionary<int, int>>(CrewExperiencesConfigCache);
            if (result != null)
                return result;

            var db = new TanksDBDataContext();
            var custs = Query.GetCrewExperiences(db);

            result = new Dictionary<int, int>();
            foreach (var entry in custs)
            {
                result.Add(entry.l, entry.e);
            }

            Caching.Add(CrewExperiencesConfigCache, result);

            return result;
        }

        public Error ConvertUserCrews()
        {            
            return Error.OK;
        }

        public UserCrew CreateRandomCrew(User user)
        {
            var crew = new Crew();
            return new UserCrew(crew.id, user.id);
        }

        public UserCrew CreateRandomCrew(User user, int tier)
        {
            var crew = new Crew();
            return new UserCrew(crew.id, user.id);
        }

        public UserCrew CreateCrewById(User user, int crewid, bool isNewPlayer = false)
        {
            var crew = new Crew(crewid);
            return new UserCrew(crew.id, user.id, isNewPlayer);
        }

        public Error ResetAbilities(int usc, int[] set, User user)
        {
            int counter = 0;
            var userCrew = new UserCrew(usc);
            if (set[0] == 0)
            {
                userCrew.skillid1 = userCrew.GetRandomSkill(SkillType.Active, userCrew.ToUserCrews()).skillId;
                if (userCrew.skillid1 == null) return Error.CREWSKILLGENERATIONERR;
            }
            else counter++;
            if (set[1] == 0)
            {
                userCrew.skillid2 = userCrew.GetRandomSkill(SkillType.Passive, userCrew.ToUserCrews()).skillId;
                if (userCrew.skillid2 == null) return Error.CREWSKILLGENERATIONERR;
            }
            else counter++;
            if (set[2] == 0)
            {
                userCrew.skillid3 = userCrew.GetRandomSkill(SkillType.Passive, userCrew.ToUserCrews()).skillId;
                if (userCrew.skillid3 == null) return Error.CREWSKILLGENERATIONERR;
            }
            else counter++;
            if (set[3] == 0)
            {
                userCrew.skillid4 = userCrew.GetRandomSkill(SkillType.Passive, userCrew.ToUserCrews()).skillId;
                if (userCrew.skillid4 == null) return Error.CREWSKILLGENERATIONERR;
            }
            else counter++;
            if (set[4] == 0)
            {
                userCrew.skillid5 = userCrew.GetRandomSkill(SkillType.Passive, userCrew.ToUserCrews()).skillId;
                if (userCrew.skillid5 == null) return Error.CREWSKILLGENERATIONERR;
            }
            else counter++;
            if (set[5] == 0)
            {
                userCrew.idSideBonus = userCrew.GetRandomSkill(SkillType.Passive, userCrew.ToUserCrews()).skillId;
                if (userCrew.idSideBonus == null) return Error.CREWSKILLGENERATIONERR;
            }
            else counter++;
            int money = (int)(Define.ResetPriceMult[counter] * Define.ResetPriceTiers[userCrew.tier]);
            if (user.GetMoney() < money) return Error.LACK_MONEY;
            user.SpendMoney(money);
            user.Saving();
            userCrew.Saving();

            return Error.OK;
        }

        public Error UpgradeCrewSkill(User user, int userCrewId, int skillIndex, double timeNow)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            var userCrew = new UserCrew(userCrewId);
            if (userCrew.id == 0)
                return Error.INCORRECT_CONFIG;

            var skillLevel = userCrew.GetSkillLevelByIndex(skillIndex);
            var skillId = userCrew.GetSkillIdByIndex(skillIndex);
            if (skillId <= 0 || skillLevel <= -1)
                return Error.INCORRECT_CONFIG;

            if (!CanUpgradeSkill(skillIndex, skillLevel + 1, userCrew.lvl))
                return Error.ERROR_CREW_LEVEL;

            if (!IsSkillOpened(skillIndex, userCrew.lvl) || IsSkillMaxUpgraded(skillIndex, skillLevel))
                return Error.INCORRECT_CONFIG;

            var evolveService = new EvolveService();

            var requirement = GetSkillRequirement(skillIndex, skillLevel + 1);
            var hasRequirementsResult = evolveService.HasRequirements(user, requirement.requirements);
            if (hasRequirementsResult != Error.OK)
                return hasRequirementsResult;

            //
            userCrew.UpgradeSkillByIndex(skillIndex);
            userCrew.Saving();

            evolveService.ConsumeRequirements(user, requirement.requirements, timeNow);
            user.Saving();

            return Error.OK;
        }

        public Error ChangeCrewSkill(User user, int userCrewId, int skillIndex, int newSkillId, double timeNow)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            var userCrew = new UserCrew(userCrewId);
            if (userCrew.id == 0)
                return Error.INCORRECT_CONFIG;

            var crew = new Crew(userCrew.crewid);
            if (crew.id == 0)
                return Error.INCORRECT_CONFIG;

            var skillLevel = userCrew.GetSkillLevelByIndex(skillIndex);
            var skillId = userCrew.GetSkillIdByIndex(skillIndex);
            if (skillId <= 0)
                return Error.INCORRECT_CONFIG;

            if (skillId == newSkillId || !crew.IsValidSkill(skillIndex, newSkillId))
                return Error.INCORRECT_CONFIG;

            var evolveService = new EvolveService();

            var skillRequirement = GetSkillRequirement(skillIndex, 0);
            var hasRequirementsResult = evolveService.HasRequirements(user, skillRequirement.requirements);
            if (hasRequirementsResult != Error.OK)
                return hasRequirementsResult;

            //
            userCrew.UpdateSkillIdByIndex(skillIndex, newSkillId);
            userCrew.UpdateSkillLevelByIndex(skillIndex, Math.Max(skillLevel - 1, 0));
            userCrew.Saving();

            evolveService.ConsumeRequirements(user, skillRequirement.requirements, timeNow);
            user.Saving();

            return Error.OK;
        }

        public Error TrainCrew(User user, int id, int itemId, int amount, double time)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            var userCrew = new UserCrew(id);
            if (userCrew.id == 0)
                return Error.INCORRECT_CONFIG;

            var itemService = new ItemService();
            var item = itemService.GetItemParameters(itemId);

            if (item == null)
                return Error.INCORRECT_CONFIG;

            var experienceForTransfer = item.itemConfig.param * amount;

            userCrew.exp += experienceForTransfer;
            userCrew.SetLevel();
            itemService.UseItemByItemId(user, itemId, time, amount);
            return Error.OK;
        }

        public Error SellCrew(int userId, int id, bool forGold = false)
        {
            var userCrew = new UserCrew(id);
            var experienceForTransfer = GetTotalCrewExperienceByLevel(userCrew) + userCrew.exp;
            var count = experienceForTransfer / EXP_AMOUNT;
            var itemId = 0;
            if (forGold) count *=2;
            if (count > 0)
            {
                itemId = ItemService.AddItem(userId, EXP_COMMON, count);
            }                        
            userCrew.Disappear();      
            return Error.OK.SetData(itemId.ToString() + "," + count.ToString());
        }

        public Error RenameCrew(User user, int id, string name)
        {
            var userCrew = new UserCrew(id);
            if (userCrew.id == 0 || userCrew.userid != user.id) return Error.INCORRECT_VALUE;
            if (string.IsNullOrEmpty(name)) return Error.INCORRECT_VALUE;
            var crew = new Crew(userCrew.crewid);
            if (!userCrew.name.Equals(crew.name))
            {
                //2nd+ rename is payed
                var cost = Define.Get(Def.TankRenameCost);
                if (user.Gold < cost) return Error.LACK_MONEY;
                new Gold(user, "crew_rename", 0, -cost);
                user.Gold -= cost;
                user.Saving();
            }                                 
            userCrew.name = name;
            userCrew.Saving();
            return Error.OK;
        }

        public Error TransferCrewExperience(User user, bool fullTransfer, int userCrew1Id, int[] userCrew2Id)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            var userCrew1 = new UserCrew(userCrew1Id);
            if (userCrew1.id == 0)
                return Error.INCORRECT_CONFIG;

            var userCrews2 = new List<UserCrew>();
            foreach (var id in userCrew2Id)
            {
                var userCrew2 = new UserCrew(id);
                if (userCrew2.id == 0 || userCrew2.id == userCrew1Id)
                    return Error.INCORRECT_CONFIG;

                userCrews2.Add(userCrew2);
            }

            if (userCrews2.Count == 0)
                return Error.INCORRECT_CONFIG;

            if (userCrew1.IsMaxLevel)
                return Error.USER_HAS_WRONG_LEVEL_FOR_EVOLVING;

            int experienceForTransfer = 0;
            int price = 0;
            foreach (var userCrew2 in userCrews2)
            {
                experienceForTransfer += GetTotalCrewExperienceByLevel(userCrew2) + userCrew2.exp;

                int priceIndex = (userCrew2.lvl / 10) + 1;
                price += fullTransfer
                    ? Define.CrewTransferExpGoldPrices[0] + Define.CrewTransferExpGoldPrices[priceIndex]
                    : Define.CrewTransferExpMoneyPrices[0] + Define.CrewTransferExpMoneyPrices[priceIndex];
            }

            if (fullTransfer && user.Gold < price)
                return Error.LACK_GOLD;

            if (!fullTransfer && user.GetMoney() < price)
                return Error.LACK_MONEY;

            if (!fullTransfer)
                experienceForTransfer = (int)((experienceForTransfer / 100.0f) * CrewTransferExperienceDiff);

            userCrew1.exp += experienceForTransfer;
            userCrew1.SetLevel();

            if (fullTransfer)
            {
                new Gold(user, "crew_exp_transfer", 0, -price);
                user.Gold -= price;
            }
            else
            {
                user.SpendMoney(price);
            }

            user.Saving();

            for (int i = 0; i < userCrews2.Count; i++)
            {
                var userCrew = userCrews2[i];

                var userUnit = new UserUnit(userCrew.id);
                userUnit.RemFriend(userCrew.id); //unassingn crew from user unit
                userCrew.Disappear();
            }

            return Error.OK;
        }

        private int GetTotalCrewExperienceByLevel(UserCrew userCrew)
        {
            var crewExperiecenConfig = GetCrewExperiecenConfig();

            int result = 0;
            foreach (var entry in crewExperiecenConfig)
            {
                if (entry.Key <= userCrew.lvl)
                {
                    result += entry.Value;
                }
            }

            return result;
        }

        public string SkillSettingsToToJson()
        {
            var db = new TanksDBDataContext();
            var custs = Query.GetSkillRequirementsConfig(db);
            var result = custs.Select(requirements => new SkillRequirement(requirements)).ToList();

            return JsonConvert.SerializeObject(result);
        }
    }
}