using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;
using TW;

public class UserService : AbstractService
{
    public static readonly List<string> Locale = new List<string> { "EN", "RU", "LV", "DE" };

    private const string OnlineUserKeyPrefix = "userId#";
    private const string UserProfileKeyPrefix = "upid#";
    private const int OnlineUserCacheKeepMinutes = 2;
    private const int UserProfileCacheKeepMinutes = 5;

    public static bool IsUserOnline(int userId)
    {
        return Caching.Get<int>(OnlineUserKeyPrefix + userId) > 0;
    }

    public void AddOrUpdateOnlineUser(int userId)
    {
        Caching.AddOrUpdate(OnlineUserKeyPrefix + userId, 1, OnlineUserCacheKeepMinutes);
    }

    public Error ChangeLocale(User user, string locale)
    {
        if (user == null)
            return Error.USER_NOT_FOUND;

        if (string.IsNullOrEmpty(locale) || !Locale.Contains(locale.ToUpper()))
            return Error.INCORRECT_CONFIG;

        user.Locale = locale.ToUpper();
        user.Saving();

        return Error.OK;
    }

    public Error SetPushSettings(User user, int[] settings)
    {
        if (user == null)
            return Error.USER_NOT_FOUND;

        if (settings == null)
            return Error.INCORRECT_VALUE;

        for (var i = 0; i < settings.Length; i++)
        {
            var settingType = PushService.PushSettingStart + i;
            if (!Enum.IsDefined(typeof(Flag), settingType))
                continue;

            user.Flags = settings[i] == 1 ? Util.AddType(user.Flags, settingType) : Util.RemType(user.Flags, settingType);
        }
        user.Saving();

        return Error.OK;
    }

    public UserProfile GetUserProfile(int id)
    {        
        var userProfile = Caching.Get<UserProfile>(UserProfileKeyPrefix + id);
        if (userProfile == null)
        {
            var user = new User(id);
            userProfile = user.id > 0 ? new UserProfile(user) : null;
        }
        if (userProfile == null) return null;
        Caching.AddOrUpdate(UserProfileKeyPrefix + id, userProfile, UserProfileCacheKeepMinutes);
        return userProfile;
    }

    public static void DropUserProfileFromCache(int id)
    {
        Caching.Remove(UserProfileKeyPrefix + id);
    }

    public Error ChangeName(User user, string name)
    {
        if (string.IsNullOrEmpty(name)) return Error.INCORRECT_VALUE;
        if (user == null)
            return Error.USER_NOT_FOUND;

        if (Util.IsValidType(user.Flags, (int)Flag.ChangeName) && user.Gold < Define.ChangeNamePrice)
            return Error.LACK_GOLD;

        if (Util.IsValidType(user.Flags, (int)Flag.ChangeName))
        {
            new Gold(user, "Name", 0, -Define.ChangeNamePrice, 1);
            user.Gold -= Define.ChangeNamePrice;
        }
        else
        {
            user.Flags = Util.AddType(user.Flags, (int)Flag.ChangeName);
        }

        user.Name = name;
        user.Saving();

        return Error.OK;
    }

    public Error SpendFuel(User user, BuildingType buildingType, int fuel, double timeNow)
    {
        var userBuilding = new UserBuilding(user.id, buildingType);
        var building = new Building(userBuilding.GetLevel(timeNow), buildingType);
        int barrelsLeft = userBuilding.UseFuel(user, fuel, timeNow, building);
        if (barrelsLeft < 0)
            return Error.LACK_FUEL;

        return Error.OK;
    }

    public List<UserProfile> FindUserProfiles(String search)
    {
        var db = new TanksDBDataContext();
        var result = new List<UserProfile>();
        result.AddRange(Query.GetUsersByName(db, search).Select(c => new UserProfile(c)));

        return result;
    }

    public int GetUserIdBySocialId(string socialId)
    {
        var key = "user_id2soc_" + socialId;
        var id = Caching.Get<int>(key);
        if (id < 1)
        {
            var user = new User(socialId);
            id = user.id;
            Caching.Add(key, id, 60);
        }
        return id;
    }

    public User GetUserByBattleTag(string tag)
    {
        if (!tag.StartsWith("#"))
            tag = "#" + tag;

        var id = Util.DecompileBattleTag(tag);
        if (id < 1) return null;
        var user = new User(id);
        return user.id > 0 ? user : null;
    }

    public bool GetUserByUserId(int userId, out User result)
    {
        var db = new TanksDBDataContext();
        var custs = Query.GetUserByUserId(db, userId);

        result = Enumerable.FirstOrDefault(custs.Select(c => new User(c)));
        return result != null;
    }

    public bool CheckNewDayStartAndUpdate(User user)
    {
        if (!Util.IsNewDay(user.gameTime))
            return false;

        user.gameTime = Util.GetMs();
        user.Saving();

        return true;
    }

    public void TryToCorrectBalance(User user, int money, int gold, out int moneyResult, out int goldResult)
    {
        moneyResult = goldResult = -1;

        if (user.GetMoney() != money)
            moneyResult = user.GetMoney();

        if ((int)user.Gold != gold)
            goldResult = (int)user.Gold;
    }

    [Obsolete]
    private void CreateUserTechTree(int userId) // Make default tier 1 researched
    {
        var db = new TanksDBDataContext();
        var startUnits = GetDefaultUnitsConfig();
        var filtered = from kvp in startUnits where kvp.Value.Tier == 1 select kvp;
        foreach (var item in filtered)
        {
            var element = new UserResearches { userId = userId, unitId = item.Value.i, upgradeId = 0, time = 1000 };
            db.UserResearches.InsertOnSubmit(element);
        }
        db.SubmitChanges();
    }

    public string SerializeUser(User user, int[] bonuses, double times)
    {
        var mailService = new MailService();
        var fightService = new FightService();
        var battleData = fightService.GetUserBattleByUserId(user.id);
        if (battleData != null)
            user.Rating = battleData.rating;
        // init user variables
        user.Tier = Math.Max(UserBuilding.GetHQLevel(user, times), 1);
        if (user.Tier > 10)
            user.Tier = 10;  //cut off
        if ((Util.GetMs() - user.scanTime) > Define.Get(Def.RadarScanDelay))
            user.ScanAttempt = 0;
        //if (user.rg == 1) CreateUserTechTree(user.id);
        var clan = new ClanService().GetClan(user.clan_id);
        if (clan == null)
        {
            if (user.clan_id != 0)
            {
                user.clan_id = 0;
                user.Saving();
            }
        }
        //UserUnit.CleanSharingUnits(user.id, times);    
        var result = new StringBuilder(8000);
        result.Append("{\"uu\":").Append(UserUnit.GetUserUnit(user.id));
        result.Append(",\"ud\":").Append(Util.ToJson(new List<int>()));
        //sb.Append(",\"f\":").Append(Friend.GetFriend(user.id));
        result.Append(",\"ur\":").Append(UserCrew.GetStatic(user.id));
        result.Append(",\"uw\":").Append(UserWound.GetUserWound(user.id, times));
        result.Append(",\"us\":").Append(UserShell.GetUserShell(user.id));        
        result.Append(",\"ua\":").Append(UserAction.GetUserActions(user.id, times));
        List<UserZones> uzones = new List<UserZones>();
        result.Append(",\"ub\":").Append(UserBuilding.GetUserBuildings(user, times));
        result.Append(",\"uz\":").Append(Util.ToJson(uzones.ToArray()));
        result.Append(",\"mm\":").Append(mailService.GetMail(user.id, times));        
        result.Append(",\"bc\":").Append(JsonConvert.SerializeObject(user.buildingsConstructed));
        result.Append(",\"uc\":").Append(UserCampaign.GetData(user));
        result.Append(",\"sv\":").Append(SystemDefine.StaticVersion);
        result.Append(",\"cv\":\"").Append(SystemDefine.ClientVersion);
        result.Append("\",\"lf\":\"").Append(SystemDefine.LocaleFolder + "\"");
        
        if (user.clan_id > 0)
            result.Append(",\"clan\":").Append(Util.ToJson(new ClanService().GetClan(user.clan_id)));

        result.Append(",\"ii\":").Append(new ItemService().UserItemsToJson(user.id));
        result.Append(",\"ume\":").Append(new EventService().UserEventsToJson(user.id));
        result.Append(",\"ems\":").Append(new EventService().EventSettingsToJson());
        result.Append(",\"rr\":").Append(new ResearchService().GetUserResearchesToJSON(user.id));
        result.Append(",\"u\":").Append(JsonConvert.SerializeObject(user, Formatting.None, new UserConverter()));
        result.Append(",\"dmet\":").Append(fightService.GetTimeWhenDMEnd());
        result.Append('}');
        //Util.Log("serializeUser:" + user.id + result);
        return result.ToString();
    }

    public Error SaveTutorial(User user, string tutorialState, double timeNow)
    {
        if (user == null)
            return Error.USER_NOT_FOUND;

        if (string.IsNullOrEmpty(tutorialState))
            return Error.INCORRECT_VALUE;

        user.tutorialState = tutorialState;
        user.Saving();

        return Error.OK;
    }

    public Error TransferToPremium(User user)
    {
        if (user.BundleId == SystemDefine.BundleId)
        {
            user.BundleId = SystemDefine.BundleId + ".premium";
            /*if (!Util.IsValidType(user.Flags, (int)Flag.T26claimed))
            {
                ItemService.AddItem(user.id, 45);
                user.Flags = Util.AddType(user.Flags, (int)Flag.T26claimed);
            }*/
            user.Saving();
            return Error.OK;
        }
        if (user.BundleId == SystemDefine.BundleId + ".premium")
        {
            user.BundleId = SystemDefine.BundleId;
            user.Saving();
            return Error.OK;
        }

        return Error.LINK_FAILED;
    }
}


