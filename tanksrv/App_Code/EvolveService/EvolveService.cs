using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;
using TW;

public class EvolveService : AbstractService
{
    public enum Category
    {
        HigherClass,
        RecommendedClass,
        EliteClass
    }

    private const int MaxModification = 1;
    private const int EliteModification = 2;

    private const int DisassembleTankParts50ItemId = 7;
    private const int DisassembleTankParts500ItemId = 10;
    private const int DisassembleTankParts50 = 50;
    private const int DisassembleTankParts500 = 500;

    private const string EvolveConfigCache = "EvolveConfig";
    private readonly List<int> classConfig = new List<int> { 0, 1, 2, 5, 3, 6, 4 }; //hack, correct class mapping
    private readonly ItemService itemService = new ItemService();
    private readonly TournamentService tournamentService = new TournamentService();

   
    public Error DisassembleTank(User user, int unitId)
    {
        if (user == null)
            return Error.USER_NOT_FOUND;

        var userUnit = new UserUnit(unitId);
        if (userUnit.Id == 0)
            return Error.NO_SUCH_TANK;

        ParticipantState participantState;
        if (tournamentService.GetParticipantState(user.clan_id, user.id, out participantState) && participantState.Squad.Contains(unitId))
            return Error.ERROR_TANKS_IN_DEFENSE;

        var defaultUnitsConfig = GetDefaultUnitsConfig();

        DefaultUnit defaultUnit;
        if (!defaultUnitsConfig.TryGetValue(userUnit.DefaultUnitId, out defaultUnit))
            return Error.NO_SUCH_TANK;

        int itemAmount500 = 0, itemAmount50 = 0;
        int parts = defaultUnit.parts;

        while (parts > 0)
        {
            if (parts - DisassembleTankParts500 < 0)
                break;

            parts -= DisassembleTankParts500;
            itemAmount500++;
        }

        while (parts > 0)
        {
            if (parts - DisassembleTankParts50 < 0)
                break;

            parts -= DisassembleTankParts50;
            itemAmount50++;
        }

        //remove unit
        userUnit.Disappear();

        //add item with parts
        int userItem500Id1 = ItemService.AddItem(user.id, DisassembleTankParts500ItemId, itemAmount500);
        int userItem50Id2 = ItemService.AddItem(user.id, DisassembleTankParts50ItemId, itemAmount50);

        //add remaining balance to storage
        user.AddDetails(parts);
        user.Saving();

        return Error.OK.SetData(Util.ClearJson(Util.ToJson(new List<int> { userItem500Id1, itemAmount500, userItem50Id2, itemAmount50, parts })));
    }

    public string ChangeModification(User user, int unitId, double timeNow)
    {
        if (user == null)
            return Util.ToJson(Error.USER_NOT_FOUND);

        var userUnit = new UserUnit(unitId);
        if (userUnit.Id == 0)
            return Util.ToJson(Error.NO_SUCH_TANK);

        //get config
        var currentConfig = GetConfigByDefaultUnitId(userUnit.DefaultUnitId);
        if (currentConfig == null)
            return Util.ToJson(Error.NO_SUCH_TANK);

        //validate
        if (!IsUnitMaxUpgraded(userUnit))
            return Util.ToJson(Error.EVOLVE_INSUFFICIENT_UPGRADES);

        var userBuilding = new UserBuilding(user.id, BuildingType.HeadQuarters);
        if (userBuilding.id == 0)
            return Util.ToJson(Error.HQ_BUILDING_REQUIRED);

        var nextModification = GetConfigByModification(currentConfig, currentConfig.Modification + 1);
        if (nextModification == null)
            return Util.ToJson(Error.EVOLVE_MAX_MODIFICATION_REACHED);

        var hqLevelRequired = nextModification.Tier * 2 - 1 + (IsMaxModification(nextModification) ? 1 : 0);
        if (userBuilding.GetLevel(timeNow) < hqLevelRequired)
            return Util.ToJson(Error.HQ_BUILDING_LEVEL_REQUIRED);

        var requirements = SubtractRequirements(GetRequirements(currentConfig), GetRequirements(nextModification));
        var requirementsResult = HasRequirements(user, requirements);
        if (requirementsResult != Error.OK)
            return Util.ToJson(requirementsResult);

        //update
        ReplaceUserUnitWith(userUnit, nextModification);
        userUnit.Saving();

        //consume any requirement (money, items, etc...)
        ConsumeRequirements(user, requirements, timeNow);
        user.Saving();

        //
   
        return Util.ToJson(new ChangeRequestResult { unit = userUnit });
    }

    public string ChangeTier(User user, int unitId, int exchangeDefaultUnitId, double timeNow)
    {
        if (user == null)
            return Util.ToJson(Error.USER_NOT_FOUND);

        var userUnit = new UserUnit(unitId);
        if (userUnit.Id == 0)
            return Util.ToJson(Error.NO_SUCH_TANK);

        //get config
        var currentConfig = GetConfigByDefaultUnitId(userUnit.DefaultUnitId);
        if (currentConfig == null)
            return Util.ToJson(Error.NO_SUCH_TANK);

        var exchangeConfig = GetConfigByDefaultUnitId(exchangeDefaultUnitId);
        if (exchangeConfig == null)
            return Util.ToJson(Error.INCORRECT_VALUE);

        //validate
        if (!IsUnitMaxUpgraded(userUnit))
            return Util.ToJson(Error.EVOLVE_INSUFFICIENT_UPGRADES);

        if (!IsMaxModification(currentConfig))
            return Util.ToJson(Error.EVOLVE_INSUFFICIENT_MODIFICATION);

        var userBuilding = new UserBuilding(user.id, BuildingType.HeadQuarters);
        if (userBuilding.id == 0)
            return Util.ToJson(Error.HQ_BUILDING_REQUIRED);

        var hqLevelRequired = exchangeConfig.Tier * 2 - 1 + (IsMaxModification(exchangeConfig) ? 1 : 0);
        if (userBuilding.GetLevel(timeNow) < hqLevelRequired)
            return Util.ToJson(Error.HQ_BUILDING_LEVEL_REQUIRED);

        var isEliteModification = IsEliteModification(currentConfig);
        var requirements = SubtractRequirements(GetRequirements(currentConfig), GetRequirements(exchangeConfig));

        var offersData = ListNewTierOffers(currentConfig.Class, currentConfig.Tier, hqLevelRequired, isEliteModification);
        if (!HasUnit(offersData, exchangeDefaultUnitId))
            return Util.ToJson(Error.INCORRECT_VALUE);
        

        var requirementsResult = HasRequirements(user, requirements);
        if (requirementsResult != Error.OK)
            return Util.ToJson(requirementsResult);

        var goldRequired = IsGoldRequiredByClass(exchangeConfig, offersData) ? GetGoldPriceByRequirements(requirements) : 0;
        goldRequired += IsGoldRequiredByChangeTier(currentConfig, exchangeConfig) ? GetGoldPriceByTier(exchangeConfig) : 0;

        if (user.Gold < goldRequired)
            return Util.ToJson(Error.LACK_GOLD);

        //update
        ReplaceUserUnitWith(userUnit, exchangeConfig);
        userUnit.Saving();

        //consume any requirement (gold, items, etc...)
        ConsumeRequirements(user, requirements, timeNow);
        if (goldRequired > 0)
        {
            new Gold(user, "evolve_change_tier", 0, -goldRequired);
            user.Gold -= goldRequired;
        }

        user.Saving();       

        return Util.ToJson(new ChangeRequestResult { unit = userUnit });
    }

    private bool HasUnit(Dictionary<Category, List<DefaultUnit>> newOffers, int exchangeDefaultUnitId)
    {
        foreach (var newOffer in newOffers)
        {
            var defaultUnit = newOffer.Value.Find(unit => unit.Id == exchangeDefaultUnitId);
            if (defaultUnit != null)
                return true;

        }
        return false;
    }

    private void ReplaceUserUnitWith(UserUnit userUnit, DefaultUnit newDefaultUnit)
    {
        //unload extra shell
        userUnit.RemShell(userUnit.ExtraShellType, userUnit.ExtraShellNum, 1);

        //update modification
        userUnit.DefaultUnitId = newDefaultUnit.Id;
        //userUnit.Hp //save old state
        //userUnit.CrewId //save old state
        userUnit.ShellNum = newDefaultUnit.AmmoSize;
        userUnit.ShellType = ShellShop.GetFirstShell(newDefaultUnit.Calibre, newDefaultUnit.Tier, newDefaultUnit.Class);
        //userUnit.Reload //save old state
        //userUnit.Repair //save old state
        userUnit.power = newDefaultUnit.Power;
        //userUnit.mask ///save old state
        //userUnit.name //save old state
        userUnit.upgrades = 0;
        Array.Clear(userUnit.upgradesSet, 0, userUnit.upgradesSet.Length);
    }

    private Dictionary<Category, List<DefaultUnit>> ListNewTierOffers(int unitClass, int unitTier, int maxTier, bool isEliteModification)
    {
        var findIndex = classConfig.FindIndex(clas => clas == unitClass);

        var defaultUnits = GetDefaultUnitsConfig().Values.ToList();
        var currentUnitClass = classConfig[findIndex];
        var nextUnitTier = unitTier + 1;

        var prevClass = classConfig[findIndex - 1];
        var nextClass = findIndex + 1 >= classConfig.Count ? classConfig[findIndex] : classConfig[findIndex + 1];

        var cuts = isEliteModification ? defaultUnits.FindAll(unit => (unit.Modification == 0 || unit.Modification == 2) && unit.Tier <= maxTier && unit.Tier == nextUnitTier) :
                                         defaultUnits.FindAll(unit => unit.Modification == 0 && unit.Tier <= maxTier && unit.Tier == nextUnitTier);

        //filter
        var unitsInRange = cuts.FindAll(unit => unit.Class == prevClass || unit.Class == nextClass || unit.Class == currentUnitClass);

        cuts.RemoveAll(unit => unit.Class == prevClass || unit.Class == nextClass || unit.Class == currentUnitClass);
        var unitsNotInRange = cuts;

        var result = new Dictionary<Category, List<DefaultUnit>>
        {
            {Category.EliteClass, new List<DefaultUnit>()},
            {Category.RecommendedClass, new List<DefaultUnit>()},
            {Category.HigherClass, new List<DefaultUnit>()}
        };

        foreach (var defaultUnit in unitsInRange)
        {
            if (IsEliteModification(defaultUnit))
                result[Category.EliteClass].Add(defaultUnit);
            else
                result[Category.RecommendedClass].Add(defaultUnit);
        }

        foreach (var defaultUnit in unitsNotInRange)
        {
            if (IsEliteModification(defaultUnit))
                result[Category.EliteClass].Add(defaultUnit);
            else
                result[Category.HigherClass].Add(defaultUnit);
        }

        return result;
    }

    private bool IsUnitMaxUpgraded(UserUnit userUnit)
    {
        var defaultUnit = GetConfigByDefaultUnitId(userUnit.DefaultUnitId);
        var availableUpgrades = userUnit.upgrades + defaultUnit.UpgradeDefault;
        return userUnit.GetUpgradesSet() >= availableUpgrades;
    }

    private List<Bonus> GetRequirements(DefaultUnit defaultUnit)
    {
        var evolveConfig = GetEvolveConfig();
        var configByDefaultUnitId = GetConfigByDefaultUnitId(defaultUnit.Id);

        Evolve result;
        return configByDefaultUnitId != null && evolveConfig.TryGetValue(configByDefaultUnitId.Id, out result) ? result.requirements : null;
    }

    private void ApplyDiscountForRequirements(ref List<Bonus> requirements, int discountPercentage)
    {
        foreach (var requirement in requirements)
        {
            var step = requirement.num / 100f;
            var diff = step * discountPercentage;
            requirement.num = requirement.num - (int)diff;
        }
    }

    private bool IsGoldRequiredByClass(DefaultUnit nextUnit, Dictionary<Category, List<DefaultUnit>> offersData)
    {
        List<DefaultUnit> higherClass;
        offersData.TryGetValue(Category.HigherClass, out higherClass);

        return IsEliteModification(nextUnit) || (higherClass != null && higherClass.Contains(nextUnit));
    }

    private bool IsGoldRequiredByChangeTier(DefaultUnit currentUnit, DefaultUnit nextUnit)
    {
        return IsEliteModification(currentUnit) && IsEliteModification(nextUnit);
    }

    private bool IsDiscountAvailable(DefaultUnit currentUnit)
    {
        return IsEliteModification(currentUnit);
    }

    private int GetGoldPriceByRequirements(List<Bonus> requirements)
    {
        var result = 0;
        foreach (var requirement in requirements)
        {
            if ((BonusType)requirement.type != BonusType.Item)
                continue;

            var itemParameters = itemService.GetItemParameters(requirement.item);
            if (itemParameters == null)
                continue;

            result += requirement.num * itemParameters.itemConfig.param;
        }

        return result;
    }

    private int GetGoldPriceByTier(DefaultUnit nextUnit)
    {
        return nextUnit.Tier >= Define.EvolveChangeEliteToElite.Length ? Define.EvolveChangeEliteToElite[Define.EvolveChangeEliteToElite.Length - 1] : Define.EvolveChangeEliteToElite[nextUnit.Tier];
    }

    private List<Bonus> SubtractRequirements(List<Bonus> baseRequirements, List<Bonus> requirements)
    {
        var result = new List<Bonus>();

        foreach (var requirement in requirements)
        {
            var newRequirement = new Bonus { id = requirement.id, item = requirement.item, num = requirement.num, special = requirement.special, type = requirement.type };

            foreach (var baseRequirement in new List<Bonus>(baseRequirements))
            {
                if (newRequirement.type != baseRequirement.type) continue;

                switch ((BonusType)newRequirement.type)
                {
                    case BonusType.Item:
                        if (newRequirement.item == baseRequirement.item)
                            newRequirement.num = Math.Max(newRequirement.num - baseRequirement.num, 0);
                        break;
                    case BonusType.Details:
                    case BonusType.Gold:
                    case BonusType.Money:
                    case BonusType.Experience:                    
                        newRequirement.num = Math.Max(newRequirement.num - baseRequirement.num, 0);
                        break;
                }
            }

            if (newRequirement.num > 0)
                result.Add(newRequirement);
        }

        return result;
    }

    public Dictionary<int, Evolve> GetEvolveConfig()
    {
        var result = Caching.Get<Dictionary<int, Evolve>>(EvolveConfigCache);
        if (result != null)
            return result;

        var db = new TanksDBDataContext();
        var custs = Query.GetEvolveConfig(db);

        result = custs.Select(evolves => new Evolve(evolves)).ToDictionary(evolve => evolve.defaultUnitId);
        Caching.Add(EvolveConfigCache, result, 6000);

        return result;
    }

    private DefaultUnit GetConfigByModification(DefaultUnit currentDefaultUnit, int modification)
    {
        if (modification > MaxModification)
            return null;

        var defaultUnits = GetDefaultUnitsConfig();
        var result = defaultUnits.FirstOrDefault(pair => pair.Value.Class == currentDefaultUnit.Class && pair.Value.Tier == currentDefaultUnit.Tier && pair.Value.Modification == modification);
        
        return result.Value;
    }

    private bool IsBaseModification(DefaultUnit defaultUnit)
    {
        return defaultUnit.Modification == 0;
    }

    private bool IsMaxModification(DefaultUnit defaultUnit)
    {
        return defaultUnit.Modification >= MaxModification;
    }

    private bool IsEliteModification(DefaultUnit defaultUnit)
    {
        return defaultUnit.Modification >= EliteModification;
    }

    public void ConsumeRequirements(User user, List<Bonus> requirements, double timeNow)
    {
        foreach (var requirement in requirements)
        {
            switch ((BonusType)requirement.type)
            {
                case BonusType.Item:
                    itemService.UseItemByItemId(user, requirement.item, timeNow, requirement.num);
                    break;
                case BonusType.Gold:
                    new Gold(user, "evolve_consume_requirements", 0, -requirement.num);
                    user.Gold -= requirement.num;
                    break;
                case BonusType.Money:
                    user.SpendMoney(requirement.num);
                    break;
            }
        }
    }

    public Error HasRequirements(User user, List<Bonus> requirements)
    {
        foreach (var requirement in requirements)
        {
            switch ((BonusType)requirement.type)
            {
                case BonusType.Item:
                    var userItem = itemService.GetUserItemByItemId(user.id, requirement.item);
                    if (userItem == null || userItem.amount < requirement.num)
                        return Error.LACK_ITEM;
                    break;
                case BonusType.Gold:
                    if (user.Gold < requirement.num)
                        return Error.LACK_GOLD;
                    break;
                case BonusType.Money:
                    if (user.GetMoney() < requirement.num)
                        return Error.LACK_MONEY;
                    break;
            }
        }

        return Error.OK;
    }

    public string EvolveSettingsToJson()
    {
        var evolveConfig = GetEvolveConfig();
        return JsonConvert.SerializeObject(evolveConfig.Values.ToList());
    }

   
    [Obsolete]
    public string MigrateUserUnit() //TODO:only for migration
    {
        var result = new StringBuilder();

        //Джип Виллис на Т26 легкий танк (1 to 41)
        const int searchDefaultUnitId = 1;
        const int replaceDefaultUnitId = 41;

        var db = new TanksDBDataContext();

        var defaultUnitReplaceConfig = GetConfigByDefaultUnitId(replaceDefaultUnitId);
        var userUnits = from c in db.UserUnits where c.t == searchDefaultUnitId select c;
        foreach (var entry in userUnits)
        {
            var userUnit = new UserUnit(entry);

            ReplaceUserUnitWith(userUnit, defaultUnitReplaceConfig);
            userUnit.Saving();

            result.Append("UserId:").Append(userUnit.UserId).Append(", userUnitId:").Append(userUnit.DefaultUnitId).Append('\n');
        }

        return result.ToString();
    }
}

public class ChangeRequestResult
{
    public UserUnit unit;
}



//if max modification, select all tanks modification == 0 and tier +1,  
//class -1 +1, tier +1, no gold required
//all others, gold required

//if elite, 
//if max modification, select all tanks modification == 0 || 2 and tier +1,

// modificatio == 2, gold reuiqred
// class -1 +1, tier +1, //requirements 50%less
// all others, gold required, //requirements 50%less
