using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Newtonsoft.Json;
using TW;

public class EventService : AbstractService
{
    public const int EventId = 1;

    private const string MapsConfigPath = "/Configs/Maps/";
    private const string EncounterConfigPath = "/Configs/Encounter/";

    private const string CacheEventMapUserState = "EventMapUserState";
    private const double EventMapUserStateCacheKeepMinutes = 5;

    private const string CacheEventSettings = "EventSettings";
    private const string CacheEventSettingsJson = "EventSettingsJson";

    private const double CacheKeepMinutes = 60;
    private const int TanksCountForMissionEventTier = 5;

    private static int eventMapsCount;
    public static EventSettings eventSettings;
    private static EventMapSettings eventMapSettings;
    private static EncounterSettings encounterSettings;
    private static EventMapTileData[] visualMapData;

    private delegate Error BonusProcessorDelegate(EventParameters eventParameters, HashSet<UserEventMapState> result);
    private static readonly Dictionary<Cell.BonusType, BonusProcessorDelegate> bonusProcessors = new Dictionary<Cell.BonusType, BonusProcessorDelegate>();    

    static EventService()
    {
        eventMapsCount = Directory.GetFiles(SystemDefine.LocaleFolderL + MapsConfigPath).Length;        
    }

    public EventService()
    {
        Initialize(false);
    }

    private void Initialize(bool reInit, State state = null)
    {
        if (eventMapSettings != null && !reInit)
            return;

        state = state ?? StateService.GetOrCreate();

        InitSettings(state.eventMapIndex);
        InitMap();
        InitBonusProcessors();
    }

    private void InitSettings(int mapConfigIndex)
    {
        eventMapSettings = ReadSettings<EventMapSettings>(mapConfigIndex, MapsConfigPath);
        encounterSettings = ReadSettings<EncounterSettings>(0, EncounterConfigPath);

        eventSettings = new EventSettings();
        eventSettings.resourceRewards = Define.EventMapResourceRewards;
        eventSettings.fightBonusReputation = Define.EventMapCompleteFightBonusReputation;
        eventSettings.resetAfterDays = Define.EventMapResetAfterDays;
        eventSettings.mapIndex = mapConfigIndex;
        eventSettings.rewards = JsonConvert.DeserializeObject<List<EventReward>>(Define.EventRewards); //deserialize for validation
    }

    private void InitMap()
    {
        visualMapData = new EventMapTileData[eventMapSettings.cellsPerX * eventMapSettings.cellsPerY];
        for (int y = 0; y < eventMapSettings.cellsPerY; y++)
        {
            for (int x = 0; x < eventMapSettings.cellsPerX; x++)
            {
                int index = y * eventMapSettings.cellsPerX + x;
                var eventMapTile = new EventMapTileData { index = index };

                //collect indices
                int crossIndex = 0;
                for (int j = y - 1; j <= y + 1; j++)
                {
                    for (int i = x - 1; i <= x + 1; i++)
                    {
                        crossIndex++;
                        var nextIndex = j * eventMapSettings.cellsPerX + i;
                        if (index == nextIndex || !IsValidCell(i, j))
                            continue;

                        //cross indices
                        if (crossIndex % 2 == 0)
                            eventMapTile.crossIndices.Add(nextIndex);

                        //around indices
                        eventMapTile.aroundIndices.Add(nextIndex);
                    }
                }

                visualMapData[index] = eventMapTile;
            }
        }
    }

    private void InitBonusProcessors()
    {
        bonusProcessors.Clear();

        bonusProcessors.Add(Cell.BonusType.ScoutingBonus, (bonusParameters, result) => ProcessScoutBonus(Cell.BonusType.ScoutingBonus, bonusParameters, new List<Cell.Type> { Cell.Type.Resources, Cell.Type.Bonus, Cell.Type.Encounter, Cell.Type.EncounterBlocking }, result));
        bonusProcessors.Add(Cell.BonusType.ScoutingEnemy, (bonusParameters, result) => ProcessScoutBonus(Cell.BonusType.ScoutingEnemy, bonusParameters, new List<Cell.Type> { Cell.Type.Fight, Cell.Type.Target }, result));
        //bonusProcessors.Add(Cell.BonusType.AllyPower, (cellIndex, map, bonusType, result) => ProcessTODOBonus(cellIndex, map, bonusType, result)); //not require on server
        bonusProcessors.Add(Cell.BonusType.Artillery, ProcessArtilleryBonus);
        bonusProcessors.Add(Cell.BonusType.RepairAll, ProcessRepairAllBonus);
        //bonusProcessors.Add(Cell.BonusType.Restore, (cellIndex, map, bonusType, result) => ProcessTODOBonus(cellIndex, map, bonusType, result)); //processed by ResurrectEventTank
    }

    private T ReadSettings<T>(int fileIndex, string path)
    {
        var result = new Dictionary<int, string>();
        foreach (var entry in Directory.GetFiles(SystemDefine.LocaleFolderL + path))
        {
            result.Add(int.Parse(Path.GetFileNameWithoutExtension(entry)), entry);
        }

        return JsonConvert.DeserializeObject<T>(File.ReadAllText(result[fileIndex]));
    }

    public List<MissionEvent> Load()
    {
        var missionEventSettings = Caching.Get<List<MissionEvent>>(CacheEventSettings);
        if (missionEventSettings != null)
            return missionEventSettings;

        var db = new TanksDBDataContext();
        var custs = Query.ListMissionEvents(db);

        missionEventSettings = new List<MissionEvent>();
        missionEventSettings.AddRange(custs.Select(missionEvent => new MissionEvent(missionEvent)));

        Caching.Add(CacheEventSettings, missionEventSettings, CacheKeepMinutes);
        Caching.Add(CacheEventSettingsJson, JsonConvert.SerializeObject(missionEventSettings), CacheKeepMinutes);

        return missionEventSettings;
    }

    private int[] GenerateEventBonusForUser()
    {
        return new int[Enum.GetValues(typeof(Cell.BonusType)).Length];
    }

    private void GenerateEventMapForUser(int userId, int userEventId)
    {
        var db = new TanksDBDataContext();

        var generatedMap = new int[eventMapSettings.cellsPerX * eventMapSettings.cellsPerY];
        for (int i = 0; i < generatedMap.Length; i++)
        {
            int calculatedState = (int)Cell.StateType.Closed;

            Cell cell;
            if (eventMapSettings.GetCellSettings(i, out cell) && (cell.state == Cell.StateType.Open || cell.state == Cell.StateType.AvailableForOpen))
                calculatedState = (int)cell.state;

            generatedMap[i] = calculatedState;

            var userMissionEvents = new UserEventMapStates { userId = userId, eventId = userEventId, state = calculatedState, bonus = 0, index = i };
            db.UserEventMapStates.InsertOnSubmit(userMissionEvents);
        }

        db.SubmitChanges();
    }

    public Error ResurrectEventTank(User user, int userEventId, int userUnitId, double timeNow)
    {
        if (user == null)
            return Error.USER_NOT_FOUND;

        var db = new TanksDBDataContext();
        var userMissionEvent = GetUserEventByEventId(user.id, userEventId, db);
        if (userMissionEvent == null)
            return Error.INCORRECT_VALUE;

        var bonus = userMissionEvent.GetBonus(Cell.BonusType.Restore);
        if (bonus <= 0)
            return Error.INCORRECT_VALUE;

        var userUnit = new UserUnit(userUnitId);
        if (userUnit.Id == 0)
            return Error.NO_SUCH_TANK;

        DefaultUnit defaultUnit;
        var defaultUnitsConfig = GetDefaultUnitsConfig();
        if (!defaultUnitsConfig.TryGetValue(userUnit.DefaultUnitId, out defaultUnit))
            return Error.NO_SUCH_TANK;

        var squadData = JsonConvert.DeserializeObject<List<UnitState>>(userMissionEvent.squadData);
        var unitState = squadData.Find(us => us.unitId == userUnitId);
        if (unitState == null)
            return Error.INCORRECT_VALUE;

        //set hp
        unitState.hp = defaultUnit.MaxHp;

        //update
        userMissionEvent.squadData = Util.ClearJson(Util.ToJson(squadData));

        userMissionEvent.UseBonus(Cell.BonusType.Restore);
        userMissionEvent.Update();

        return Error.OK;
    }

    public Error CompleteEventMission(User user, int userPower, bool isWin, int userEventId, int eventCellIndex, string squadData, string rewardsByBattle, double timeNow)
    {
        if (isWin)
        {
            var unblockCellResult = UnblockAndOpenCell(user, userEventId, eventCellIndex, timeNow, null);
            if (unblockCellResult != Error.OK)
                return unblockCellResult;
        }

        var db = new TanksDBDataContext();

        var userMissionEvent = GetUserEventByEventId(user.id, userEventId, db);
        var battleResultSquadData = JsonConvert.DeserializeObject<List<UnitState>>(squadData ?? string.Empty);
        if (battleResultSquadData == null)
            return Error.INCORRECT_CONFIG;

        var currentSquadData = JsonConvert.DeserializeObject<List<UnitState>>(userMissionEvent.squadData ?? string.Empty) ?? new List<UnitState>();
        foreach (var unitState in battleResultSquadData)
        {
            if (!unitState.isBot && new UserUnit(unitState.unitId).Id == 0)
                return Error.INCORRECT_CONFIG;

            var findResult = unitState.isBot ? currentSquadData.Find(us => us.unitId == unitState.unitId && unitState.cellIndex == eventCellIndex) : currentSquadData.Find(us => us.unitId == unitState.unitId);
            if (findResult != null)
                findResult.hp = unitState.hp;
            else
                currentSquadData.Add(unitState);
        }

        //calculate reward  
        var responseData = string.Empty;
        var rewardsByMission = new List<Bonus>();
        int extraMoney = 0, extraParts = 0, moneyReward = 0, experienceReward = 0, partsReward = 0, VIPmoneyReward = 0, VIPexperienceReward = 0, VIPpartsReward = 0;

        if (isWin)
        {
            var missionEventCusts = Query.ListMissionEventByTierAndEventId(db, userMissionEvent.eventId, CalculateDifficultyTier(eventCellIndex, userMissionEvent.userTier, 1, DefaultUnit.MaxTier));
            var missionEvent = Enumerable.FirstOrDefault(missionEventCusts.Select(me => new MissionEvent(me)));
            if (missionEvent != null)
            {
                //fixed reward
                var percentage = userPower / 100f;
                moneyReward = (int)Math.Round(missionEvent.money * percentage);
                experienceReward = (int)Math.Round(missionEvent.experience * percentage);
                partsReward = (int)Math.Round(missionEvent.parts * percentage);

                VIPmoneyReward = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, (double)moneyReward, timeNow);
                VIPpartsReward = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, (double)partsReward, timeNow);
                VIPexperienceReward = (int)user.GetVIPSubscribtionBonus(VIPdata.SubscriptionBonus, (double)experienceReward, timeNow);

                //additional rewards   
                foreach (var reward in missionEvent.rewards ?? new List<Bonus>())
                {
                    rewardsByMission.Add(user.AddBonus(reward, string.Format("event_bonus_e{0}_c{1}", userMissionEvent.id, eventCellIndex)));
                }
            }

            //update win state
            currentSquadData.RemoveAll(state => state.isBot && state.cellIndex == eventCellIndex);

            Cell cellSettings;
            if (eventMapSettings.GetCellSettings(eventCellIndex, out cellSettings) && (cellSettings.type == Cell.Type.Target || (cellSettings.type == Cell.Type.Fight)))
            {
                var rep = cellSettings.type == Cell.Type.Target ? (int)Define.Get(Def.EventMapDestroyTargetBonusReputation) : eventSettings.fightBonusReputation[(int)cellSettings.GetDifficulty()];
                user.eventReputation += (int)(rep * userMissionEvent.GetMultiplyer());
                var todoService = new TodoService();
                if (cellSettings.type == Cell.Type.Target)
                    todoService.ProcessTodoStep(user, TodoService.TodoStepType.CompleteEvent);
            }
        }

        userMissionEvent.squadData = Util.ClearJson(Util.ToJson(currentSquadData));
        userMissionEvent.Update();

        //
        var fightService = new FightService();        
        var rUser = JsonConvert.DeserializeObject<ResUser[]>(rewardsByBattle)[0];
        var resp = fightService.CompleteBattleResult(user, moneyReward + VIPmoneyReward, fightService.ConvertFromResUser(rUser), isWin ? 1 : 0, timeNow, true);

        //set reward        

        resp.parts = partsReward;
        resp.exp = experienceReward;
        resp.itemId = 0;
        resp.itemConfig = 0;
        resp.count = 0;
        resp.money = moneyReward;
        resp.VIPmoney = VIPmoneyReward;
        resp.VIPparts = VIPpartsReward;
        resp.VIPexp = VIPexperienceReward;

        user.Experience += resp.exp + VIPexperienceReward;
        extraMoney = user.AddMoney(VIPmoneyReward + moneyReward - resp.repair - resp.clanTax);
        extraParts = user.AddDetails(partsReward + VIPpartsReward);        

        user.SetLevel(timeNow);

        var js = JsonConvert.SerializeObject(resp, Formatting.None, new BattleLogisticsConverter());
        responseData = Util.ClearJson(js);

        return Error.OK.SetData(responseData);
    }

    public bool GenerateEventForUser(User user)
    {
        var userEventsByUserId = GetUserEventsByUserId(user.id);
        if (userEventsByUserId.Count > 0)
            return false;

        //remove cache
        Caching.Remove(CacheEventMapUserState + user.id);

        var db = new TanksDBDataContext();

        int userTier;
        var totalPower = CalculateUserPowerAndTier(user, out userTier, db);
        var fightMissions = GenerateFightAndTargetMissionsForUser(Cell.Type.Fight, MissionType.PvEEventMission, totalPower, db);
        var targetMissions = GenerateFightAndTargetMissionsForUser(Cell.Type.Target, MissionType.PvEEventTargetMission, totalPower, db);
        var generatedBonus = GenerateEventBonusForUser();

        var userMissionEvents = new UserMissionEvents { userId = user.id, eventId = EventId, startTime = Util.GetMs(), userTier = userTier, userPower = totalPower, squadData = string.Empty, fightMissions = string.Join(",", fightMissions), targetMissions = string.Join(",", targetMissions), bonus = string.Join(",", generatedBonus) };
        db.UserMissionEvents.InsertOnSubmit(userMissionEvents);
        db.SubmitChanges();

        //generate new
        GenerateEventMapForUser(user.id, userMissionEvents.id);

        return true;
    }

    public Error GenerateOrResetEventForUser(User user)
    {
        var resetAfterDays = eventSettings.resetAfterDays * Util.DayMs;
        var timeNowMs = Util.GetMs();        

        StateService.UpdateData(delegate (State state)
        {
            var totalDays = (int)TimeSpan.FromMilliseconds(timeNowMs - resetAfterDays).TotalDays - (int)TimeSpan.FromMilliseconds(state.eventStartTime).TotalDays;
            return totalDays >= 0;
        }, delegate (State state)
        {
            var random = new Random();

            state.eventStartTime = timeNowMs;
            state.eventMapIndex = random.Next(0, eventMapsCount);

            Initialize(true, state);
        });

        var db = new TanksDBDataContext();
        var userMissionEvents = GetUserEventsByUserId(user.id, db);
        if (userMissionEvents.Count == 0)
        {
            GenerateEventForUser(user);
            return Error.OK;
        }

        //reset state
        foreach (var missionEvent in userMissionEvents)
        {
            var state = StateService.GetOrCreate();
            if (IsEventActive(state, missionEvent))
                continue;
            //
            var userMap = Query.ListUserEventMapState(db, missionEvent.userId, missionEvent.id);
            foreach (var entry in userMap)
            {
                db.UserEventMapStates.DeleteOnSubmit(entry);
            }
            db.SubmitChanges();

            //remove cache
            Caching.Remove(CacheEventMapUserState + user.id);

            //
            int userTier;
            var totalPower = CalculateUserPowerAndTier(user, out userTier, db);

            var fightMissions = GenerateFightAndTargetMissionsForUser(Cell.Type.Fight, MissionType.PvEEventMission, totalPower, db);
            var targetMissions = GenerateFightAndTargetMissionsForUser(Cell.Type.Target, MissionType.PvEEventTargetMission, totalPower, db);
            var generatedBonus = GenerateEventBonusForUser();

            missionEvent.startTime = state.eventStartTime;
            missionEvent.userTier = userTier;
            missionEvent.userPower = totalPower;
            missionEvent.squadData = string.Empty;
            missionEvent.fightMissions = string.Join(",", fightMissions);
            missionEvent.targetMissions = string.Join(",", targetMissions);
            missionEvent.bonus = string.Join(",", generatedBonus);
            missionEvent.Update(true);

            //generate new
            GenerateEventMapForUser(user.id, missionEvent.id);
            user.eventReputation = 0;
            user.eventReward = "";
        }
        return Error.OK;
    }

    public UserMissionEvent GetUserEventByEventId(int userId, int userEventId, TanksDBDataContext dbContext = null)
    {
        var db = dbContext ?? new TanksDBDataContext();
        var custs = Query.ListUserMissionEventByEventId(db, userId, userEventId);

        var result = Enumerable.FirstOrDefault(custs.Select(userMissionEvent => new UserMissionEvent(userMissionEvent)));
        return result;
    }

    public List<UserMissionEvent> GetUserEventsByUserId(int userId, TanksDBDataContext dbContext = null)
    {
        var db = dbContext ?? new TanksDBDataContext();
        var missionCusts = Query.ListUserMissionEvents(db, userId);

        var result = new List<UserMissionEvent>();
        result.AddRange(missionCusts.Select(userMissionEvent => new UserMissionEvent(userMissionEvent)));
        return result;
    }

    private List<UserMissionEvent> GetUserState(int userId)
    {
        var db = new TanksDBDataContext();

        UserProfile lastUserProfile = null;
        var userMissionEvents = GetUserEventsByUserId(userId, db);

        //
        var userService = new UserService();
        var lastUserCusts = Query.GetLastUserInUserMissionEvents(db, userId);
        var lastUserMissionEvent = Enumerable.FirstOrDefault(lastUserCusts.Select(userMissionEvent => new UserMissionEvent(userMissionEvent)));
        if (lastUserMissionEvent != null)
        {
            lastUserProfile = userService.GetUserProfile(lastUserMissionEvent.userId);
        }

        //        
        foreach (var userMissionEvent in userMissionEvents)
        {
            userMissionEvent.fightMissionsData = new List<NewMission>();
            foreach (int id in userMissionEvent.GetFightMissionsIds())
            {
                var eventMission = GetEventMission(id, db);
                userMissionEvent.fightMissionsData.Add(eventMission);
            }

            userMissionEvent.targetMissionsData = new List<NewMission>();
            foreach (int id in userMissionEvent.GetTargettMissionsIds())
            {
                var eventMission = GetEventMission(id, db);
                userMissionEvent.targetMissionsData.Add(eventMission);
            }

            userMissionEvent.encounterMissionsData = new List<NewMission>();
            foreach (var encounterMission in encounterSettings.encounterMissions)
            {
                var eventMission = GetEventMission(encounterMission, db);
                userMissionEvent.encounterMissionsData.Add(eventMission);
            }

            userMissionEvent.lastUserProfile = lastUserProfile;
            userMissionEvent.mapData = GetUserMap(userMissionEvent);
        }

        return userMissionEvents;
    }

    private NewMission GetEventMission(int missionId, TanksDBDataContext dbContext = null)
    {
        var db = dbContext ?? new TanksDBDataContext();
        var custs = Query.GetNewMissionsById(db, missionId);
        return Enumerable.FirstOrDefault(custs.Select(newMission => new NewMission(newMission)));
    }

    private List<int> GenerateFightAndTargetMissionsForUser(Cell.Type cellType, MissionType missionType, int power, TanksDBDataContext dbContext = null)
    {
        var random = new Random();

        var missionsCount = eventMapSettings.cells.Count(cellSettings => cellSettings.type == cellType);
        var result = new List<int>(missionsCount);

        var db = dbContext ?? new TanksDBDataContext();
        var missionCusts = Query.ListNewMissionsByTypeAndPower(db, missionType, power);

        //1 - get missions ids
        result.AddRange(missionCusts.Select(newMission => newMission.id));
        result.Shuffle(random);

        result = new List<int>(result.Take(missionsCount));
        if (result.Count >= missionsCount)
            return result;

        //2 - fill with missing ids
        var missingMissions = new List<int>(missionsCount);
        var missingMissionCusts = Query.ListNewMissionsByType(db, (int)missionType);
        missingMissions.AddRange(missingMissionCusts.Select(newMission => newMission.id));

        //exclude missions by power
        foreach (var data in result)
        {
            missingMissions.Remove(data);
        }

        //add back missions if no missions
        if (missingMissions.Count == 0)
            missingMissions.AddRange(result);

        var requiredMissingMissionCount = Math.Max(missionsCount - result.Count, 0);
        for (var i = 0; i < requiredMissingMissionCount; i++)
        {
            result.Add(missingMissions[random.Next(0, missingMissions.Count)]);
        }

        return result;
    }

    private int CalculateUserPowerAndTier(User user, out int userTier, TanksDBDataContext dbContext = null)
    {
        var db = dbContext ?? new TanksDBDataContext();

        var userUnits = new List<UserUnit>();
        var custs = Query.ListUserUnitsById(db, user.id);
        userUnits.AddRange(custs.Select(uu => new UserUnit(uu)));
        userUnits.Sort((u1, u2) => u2.power.CompareTo(u1.power));

        var data = userUnits.Take(TanksCountForMissionEventTier).ToList();

        var userPower = data.Sum(units => units.power);
        userTier = (int)Math.Round((double)data.Sum(units => units.Tier) / data.Count);

        return userPower;
    }

    public Error OpenCell(User user, int userEventId, int cellIndex, double timeNow, out OpenCellRequestResult openCellRequestResult)
    {
        openCellRequestResult = null;

        if (user == null)
            return Error.USER_NOT_FOUND;

        if (!IsValidCell(cellIndex))
            return Error.INCORRECT_VALUE;

        var db = new TanksDBDataContext();

        //get user event map
        var userMissionEvent = GetUserEventByEventId(user.id, userEventId, db);
        if (userMissionEvent == null)
            return Error.INCORRECT_VALUE;

        if (!IsEventActive(userMissionEvent))
            return Error.ERROR_EVENT_FINISHED;

        var map = GetUserMap(userMissionEvent);
        if (GetCellState(cellIndex, map) != Cell.StateType.AvailableForOpen)
            return Error.INCORRECT_VALUE;

        //consume fuel        
        var spendFuelResult = new UserService().SpendFuel(user, BuildingType.EventTower, eventMapSettings.fuelCost, timeNow);
        if (spendFuelResult != Error.OK)
            return spendFuelResult;

        //
        Cell cellSettings;
        eventMapSettings.GetCellSettings(cellIndex, out cellSettings);
        userMissionEvent.lastCellIndex = cellIndex;
        //
        var processedCells = new HashSet<UserEventMapState>();
        ProcessOpenCell(cellIndex, map, ref processedCells);

        //
        ItemUseRequestResult itemUseRequestResult;
        TryCollectResources(user, cellIndex, map, userMissionEvent.userTier, timeNow, cellSettings, out itemUseRequestResult);
        TryCollectBonus(cellIndex, map, cellSettings, userMissionEvent);
        userMissionEvent.Update();

        //save map state
        foreach (var userEventMapState in processedCells)
        {
            userEventMapState.Update();
        }

        //save user satate
        user.eventReputation += (int)Define.Get(Def.EventMapOpencCellBonusReputation);
        user.Saving();

        openCellRequestResult = new OpenCellRequestResult { itemUseRequestResult = itemUseRequestResult };

        return Error.OK;
    }

    public Error UnblockAndOpenCell(User user, int userEventId, int cellIndex, double timeNow, List<UserEventMapState> map)
    {
        Cell cellSettings;
        if (!eventMapSettings.GetCellSettings(cellIndex, out cellSettings) || (cellSettings.type != Cell.Type.Fight && cellSettings.type != Cell.Type.Encounter && cellSettings.type != Cell.Type.EncounterBlocking && cellSettings.type != Cell.Type.Target))
            return Error.INCORRECT_VALUE;

        if (!IsValidCell(cellIndex))
            return Error.INCORRECT_VALUE;

        var db = new TanksDBDataContext();

        //get user event map
        var userMissionEvent = GetUserEventByEventId(user.id, userEventId, db);
        if (userMissionEvent == null)
            return Error.INCORRECT_VALUE;

        if (!IsEventActive(userMissionEvent))
            return Error.ERROR_EVENT_FINISHED;

        //consume fuel        
        var spendFuelResult = new UserService().SpendFuel(user, BuildingType.EventTower, eventMapSettings.fuelCost, timeNow);
        if (spendFuelResult != Error.OK)
            return spendFuelResult;

        map = map ?? GetUserMap(userMissionEvent);
        if (GetCellState(cellIndex, map) != Cell.StateType.AvailableForOpen)
            return Error.INCORRECT_VALUE;

        var processedCells = new HashSet<UserEventMapState>();

        //try to unblock cells
        ProcessUnblockCells(cellIndex, map, ref processedCells);

        //try to open cells
        ProcessOpenCell(cellIndex, map, ref processedCells);

        //save map state
        foreach (var userEventMapState in processedCells)
        {
            userEventMapState.Update();
        }

        //save user state
        user.eventReputation += (int)Define.Get(Def.EventMapOpencCellBonusReputation);
        user.Saving();

        return Error.OK;
    }

    public Error UnblockCell(User user, int userEventId, int cellIndex, double timeNow, List<UserEventMapState> map)
    {
        Cell cellSettings;
        if (!eventMapSettings.GetCellSettings(cellIndex, out cellSettings) || (cellSettings.type != Cell.Type.Fight && cellSettings.type != Cell.Type.Target))
            return Error.INCORRECT_VALUE;

        if (!IsValidCell(cellIndex))
            return Error.INCORRECT_VALUE;

        var db = new TanksDBDataContext();

        //get user event map
        var userMissionEvent = GetUserEventByEventId(user.id, userEventId, db);
        if (userMissionEvent == null)
            return Error.INCORRECT_VALUE;

        if (!IsEventActive(userMissionEvent))
            return Error.ERROR_EVENT_FINISHED;

        map = map ?? GetUserMap(userMissionEvent);
        var processedCells = new HashSet<UserEventMapState>();

        //try to unblock cells
        ProcessUnblockCells(cellIndex, map, ref processedCells);

        //save map state
        foreach (var userEventMapState in processedCells)
        {
            userEventMapState.Update();
        }

        return Error.OK;
    }

    public Error BuyBonus(User user, int userEventId, int bonusType, bool isByGold)
    {
        if (user == null)
            return Error.USER_NOT_FOUND;

        if (!Enum.IsDefined(typeof(Cell.BonusType), bonusType))
            return Error.INCORRECT_VALUE;

        var bonusPrice = Define.Get(Def.EventMapBonusPriceGold);
        if (isByGold && user.Gold < bonusPrice)
            return Error.LACK_GOLD;

        var db = new TanksDBDataContext();

        //get user event map
        var userMissionEvent = GetUserEventByEventId(user.id, userEventId, db);
        if (userMissionEvent == null)
            return Error.INCORRECT_VALUE;

        if (!userMissionEvent.AddBonus((Cell.BonusType)bonusType))
            return Error.INCORRECT_CONFIG;

        userMissionEvent.Update();

        if (isByGold)
        {
            new Gold(user, "event_buy_bonus", 0, -bonusPrice);
            user.Gold -= bonusPrice;            
        }
        else
        {
            user.EventFuelRestoreAttempt += (int)Math.Pow(10, bonusType);  //saving bonus use
        }
        user.Saving();
        return Error.OK;
    }

    public Error UseBonus(User user, int userEventId, int cellIndex, int bonusType, double timeNow)
    {
        if (user == null)
            return Error.USER_NOT_FOUND;

        if (!IsValidCell(cellIndex))
            return Error.INCORRECT_VALUE;

        if (!Enum.IsDefined(typeof(Cell.BonusType), bonusType))
            return Error.INCORRECT_VALUE;

        var db = new TanksDBDataContext();

        //get user event map
        var userMissionEvent = GetUserEventByEventId(user.id, userEventId, db);
        if (userMissionEvent == null)
            return Error.INCORRECT_VALUE;

        if (!IsEventActive(userMissionEvent))
            return Error.ERROR_EVENT_FINISHED;

        var bonus = userMissionEvent.GetBonus((Cell.BonusType)bonusType);
        if (bonus <= 0)
            return Error.INCORRECT_VALUE;

        var userMap = GetUserMap(userMissionEvent);

        //apply bonus
        var processedCells = new HashSet<UserEventMapState>();
        BonusProcessorDelegate bonusProcessor;
        if (bonusProcessors.TryGetValue((Cell.BonusType)bonusType, out bonusProcessor))
        {
            var processorResult = bonusProcessor(new EventParameters { user = user, cellIndex = cellIndex, map = userMap, userMissionEvent = userMissionEvent, timeNow = timeNow }, processedCells);
            if (processorResult != Error.OK)
                return processorResult;
        }

        //update cell state        
        foreach (var entry in processedCells)
        {
            entry.Update();
        }

        //use bonus
        userMissionEvent.UseBonus((Cell.BonusType)bonusType);
        userMissionEvent.Update();

        return Error.OK;
    }

    public Error BuyFuel(User user, bool isByGold, double timeNow, bool adWatch)
    {
        if (user == null)
            return Error.USER_NOT_FOUND;

        var userBuilding = new UserBuilding(user.id, BuildingType.EventTower);
        if (userBuilding.id == 0)
            return Error.NOT_SUCH_A_BUILDING;

        if (isByGold)
        {
            if (user.Gold < Define.Get(Def.EventFuelPrice))
                return Error.LACK_GOLD;

            new Gold(user, "event_buy_fuel", 0, -Define.Get(Def.EventFuelPrice));
            user.Gold -= Define.Get(Def.EventFuelPrice);
        }
        else
        {
            var result = user.EventFuelRestoreAttempt % 10;
            if (result >= user.GetVIPData()[(int)VIPdata.EventFuelBonus] + 2 && adWatch
                || result >= user.GetVIPData()[(int)VIPdata.EventFuelBonus] && !adWatch)
                return Error.VIP_LEVEL_LIMIT;
            user.EventFuelRestoreAttempt++;
        }
        user.Saving();
        if (adWatch) userBuilding.SetThirdFuel(timeNow, user, 500);
        else userBuilding.SetFullFuel(timeNow, user);

        return Error.OK;
    }

    public Error EncounterAction(User user, int userEventId, int cellIndex, int encounterId, int actionIndex, double timeNow, out EncounterActionRequestResult encounterActionRequestResult)
    {
        encounterActionRequestResult = null;

        //validate
        if (user == null)
            return Error.USER_NOT_FOUND;

        if (!IsValidCell(cellIndex))
            return Error.INCORRECT_VALUE;

        Encounter encounter;
        if (!encounterSettings.GetEncounterSettings(encounterId, out encounter))
            return Error.INCORRECT_VALUE;

        if (actionIndex < 0 || actionIndex >= encounter.actions.Count)
            return Error.INCORRECT_VALUE;

        var db = new TanksDBDataContext();

        var userMissionEvent = GetUserEventByEventId(user.id, userEventId, db);
        if (userMissionEvent == null)
            return Error.INCORRECT_VALUE;

        if (!IsEventActive(userMissionEvent))
            return Error.ERROR_EVENT_FINISHED;

        var userMap = GetUserMap(userMissionEvent);
        if (GetCellState(cellIndex, userMap) != Cell.StateType.AvailableForOpen)
            return Error.INCORRECT_VALUE;

        //process actions
        var eventParameters = new EventParameters { user = user, cellIndex = cellIndex, userMissionEvent = userMissionEvent, map = userMap, timeNow = timeNow };
        foreach (var encounterHandler in encounter.actions[actionIndex].ListActionHandlers())
        {
            var canUseResult = encounterHandler.CanUse(user, timeNow);
            if (canUseResult != Error.OK)
                return canUseResult;
        }

        var resultResponseBuffer = new Dictionary<int, string>();
        var handlersResult = new Dictionary<Type, object>();
        foreach (var encounterHandler in encounter.actions[actionIndex].ListActionHandlers())
        {
            encounterHandler.Do(user, eventParameters, resultResponseBuffer, handlersResult);
        }

        //post process actions
        object handlerData;
        if (handlersResult.TryGetValue(typeof(ScoutEnemyBonusEncounterHandler), out handlerData)) //if necessary, create ProcessHandlersResult and map actions
        {
            foreach (var userEventMapState in (HashSet<UserEventMapState>)handlerData)
            {
                userEventMapState.Update();
            }
        }

        //save
        userMissionEvent.Update();
        user.Saving();

        //
        if (encounter.actions[actionIndex].ListActionHandlers().All(handler => handler.IsUnblockable()))
        {
            var unblockCellResult = UnblockAndOpenCell(user, userEventId, cellIndex, timeNow, userMap);
            if (unblockCellResult != Error.OK)
                return unblockCellResult;
        }

        encounterActionRequestResult = new EncounterActionRequestResult { data = resultResponseBuffer };

        return Error.OK;
    }

    private List<UserEventMapState> GetUserMap(UserMissionEvent userMissionEvent)
    {
        var result = Caching.Get<List<UserEventMapState>>(CacheEventMapUserState + userMissionEvent.userId);
        if (result != null)
            return result;

        var db = new TanksDBDataContext();

        var custs = Query.ListUserEventMapState(db, userMissionEvent.userId, userMissionEvent.id);

        result = new List<UserEventMapState>();
        result.AddRange(custs.Select(states => new UserEventMapState(states)));

        Caching.Add(CacheEventMapUserState + userMissionEvent.userId, result, EventMapUserStateCacheKeepMinutes);

        return result;
    }

    public Error ProcessScoutBonus(Cell.BonusType bonusType, EventParameters eventParameters, List<Cell.Type> data, HashSet<UserEventMapState> result)
    {
        Cell cellSettings;
        if (eventMapSettings.GetCellSettings(eventParameters.cellIndex, out cellSettings) && data.Contains(cellSettings.type) && eventParameters.map[eventParameters.cellIndex].bonus == 0)
        {
            ApllyCellBonus(eventParameters.cellIndex, eventParameters.map, bonusType);
            result.Add(eventParameters.map[eventParameters.cellIndex]);
        }

        foreach (var aroundIndex in visualMapData[eventParameters.cellIndex].aroundIndices)
        {
            if (GetCellState(aroundIndex, eventParameters.map) == Cell.StateType.Open)
                continue;

            if (eventMapSettings.GetCellSettings(aroundIndex, out cellSettings) && data.Contains(cellSettings.type) && eventParameters.map[aroundIndex].bonus == 0)
            {
                ApllyCellBonus(aroundIndex, eventParameters.map, bonusType);
                result.Add(eventParameters.map[aroundIndex]);
            }
        }

        return Error.OK;
    }

    private Error ProcessArtilleryBonus(EventParameters eventParameters, HashSet<UserEventMapState> result)
    {
        Cell cellSettings;
        if (!eventMapSettings.GetCellSettings(eventParameters.cellIndex, out cellSettings) || cellSettings.type != Cell.Type.Fight)
            return Error.INCORRECT_VALUE;

        var cellBonus = GetCellBonus(eventParameters.cellIndex, eventParameters.map);
        if (cellBonus == Cell.BonusType.Artillery)
            return Error.INCORRECT_VALUE;

        if (IsCellAvailableForOpenByCrossCells(eventParameters.cellIndex, eventParameters.map) || cellBonus == Cell.BonusType.ScoutingEnemy)
        {
            ApllyCellBonus(eventParameters.cellIndex, eventParameters.map, Cell.BonusType.Artillery);
            result.Add(eventParameters.map[eventParameters.cellIndex]);
            eventParameters.user.eventReputation += (int)(eventSettings.fightBonusReputation[(int)cellSettings.GetDifficulty()] * eventParameters.userMissionEvent.GetMultiplyer());
            eventParameters.user.Saving();
            return UnblockCell(eventParameters.user, eventParameters.userMissionEvent.id, eventParameters.cellIndex, eventParameters.timeNow, eventParameters.map);
        }                                

        return Error.INCORRECT_VALUE;
    }

    private Error ProcessRepairAllBonus(EventParameters eventParameters, HashSet<UserEventMapState> result)
    {
        if (string.IsNullOrEmpty(eventParameters.userMissionEvent.squadData))
            return Error.OK;

        var squadData = JsonConvert.DeserializeObject<List<UnitState>>(eventParameters.userMissionEvent.squadData);
        var unitStates = squadData.FindAll(us => !us.isBot);
        if (unitStates.Count == 0)
            return Error.INCORRECT_VALUE;

        var defaultUnitsConfig = GetDefaultUnitsConfig();

        //update hp
        foreach (var unitState in squadData)
        {
            DefaultUnit defaultUnit;
            if (!defaultUnitsConfig.TryGetValue(unitState.defaultUnitId, out defaultUnit) || unitState.hp <= 0 || unitState.hp >= defaultUnit.MaxHp)
                continue;

            var repairHp = (defaultUnit.MaxHp / 100f) * Define.Get(Def.EventMapBonusRepairAll);
            unitState.hp = (int)Math.Min(unitState.hp + repairHp, defaultUnit.MaxHp);
        }

        eventParameters.userMissionEvent.squadData = Util.ClearJson(Util.ToJson(squadData));

        return Error.OK;
    }

    private void ProcessOpenCell(int cellIndex, List<UserEventMapState> map, ref HashSet<UserEventMapState> result)
    {
        //change state for current cell
        ChangeCellStatus(cellIndex, map, Cell.StateType.Open);
        result.Add(map[cellIndex]);

        //change state for cross cells
        foreach (var crossIndex in visualMapData[cellIndex].crossIndices)
        {
            if (GetCellState(crossIndex, map) == Cell.StateType.Closed)
            {
                ChangeCellStatus(crossIndex, map, Cell.StateType.AvailableForOpen);
                result.Add(map[crossIndex]);
            }
        }

        //try block around cells (take cross index and check around)
        foreach (var crossIndex in visualMapData[cellIndex].crossIndices)
        {
            if (GetCellState(crossIndex, map) != Cell.StateType.Open)
                TryBlockCells(crossIndex, map, ref result);
        }
    }

    private void ProcessUnblockCells(int cellIndex, List<UserEventMapState> map, ref HashSet<UserEventMapState> result)
    {
        //try to unblock cells
        int x = cellIndex % eventMapSettings.cellsPerX;
        int y = cellIndex / eventMapSettings.cellsPerX;

        var eventMapTileRenderer = visualMapData[cellIndex];
        var indicesToUnblock = new List<int>(eventMapTileRenderer.aroundIndices);

        //remove overlapping cells
        for (int j = y - 2; j <= y + 2; j++)
        {
            for (int i = x - 2; i <= x + 2; i++)
            {
                var nextIndex = j * eventMapSettings.cellsPerX + i;
                if (cellIndex == nextIndex || !IsValidCell(i, j))
                    continue;

                Cell blockingCellSettings;
                if (!eventMapSettings.GetCellSettings(nextIndex, out blockingCellSettings) || (blockingCellSettings.type != Cell.Type.Fight && blockingCellSettings.type != Cell.Type.EncounterBlocking))
                    continue;

                if (!IsCellAvailableForOpenByCrossCells(nextIndex, map) || GetCellState(nextIndex, map) == Cell.StateType.Open || GetCellBonus(nextIndex, map) == Cell.BonusType.Artillery)
                    continue;

                indicesToUnblock.RemoveAll(aroundIndex => visualMapData[nextIndex].aroundIndices.Contains(aroundIndex));

                if (!IsBattleCell(nextIndex))
                    indicesToUnblock.Remove(nextIndex);
            }
        }

        indicesToUnblock.Add(cellIndex);

        indicesToUnblock.RemoveAll(nextIndex => GetCellState(nextIndex, map) != Cell.StateType.Blocked);
        foreach (var indexToUnblock in indicesToUnblock)
        {
            if (IsCellAvailableForOpenByCrossCells(indexToUnblock, map))
                ChangeCellStatus(indexToUnblock, map, Cell.StateType.AvailableForOpen);
            else
                ChangeCellStatus(indexToUnblock, map, Cell.StateType.Closed);

            result.Add(map[indexToUnblock]);
        }
    }

    public int CalculateDifficultyTier(int cellIndex, int userTier, int min, int max)
    {
        Cell cellSettings;
        if (!eventMapSettings.GetCellSettings(cellIndex, out cellSettings))
            return min;

        var calculatedTier = userTier + cellSettings.tierRange;
        calculatedTier = calculatedTier > max ? max : calculatedTier;
        calculatedTier = calculatedTier <= 0 ? min : calculatedTier;

        return calculatedTier;
    }

    public Cell.BonusType GetCellBonus(int cellIndex, List<UserEventMapState> map)
    {
        if (cellIndex < 0)
            return Cell.BonusType.None;

        return (Cell.BonusType)map[cellIndex].bonus;
    }

    public Cell.StateType GetCellState(int cellIndex, List<UserEventMapState> map)
    {
        if (cellIndex < 0)
            return Cell.StateType.None;

        return (Cell.StateType)map[cellIndex].state;
    }

    private void ApllyCellBonus(int index, List<UserEventMapState> map, Cell.BonusType bonusType)
    {
        map[index].bonus = (int)bonusType;
    }

    private void ChangeCellStatus(int index, List<UserEventMapState> map, Cell.StateType cellState)
    {
        map[index].state = (int)cellState;
        
    }

    private void TryCollectResources(User user, int cellIndex, List<UserEventMapState> map, int userTier, double timeNow, Cell cellSettings, out ItemUseRequestResult itemUseRequestResult)
    {
        itemUseRequestResult = null;

        if (cellSettings == null || cellSettings.type != Cell.Type.Resources || !IsCellAvailableForOpenByCrossCells(cellIndex, map))
            return;

        var calculatedTier = userTier + cellSettings.tierRange;
        calculatedTier = calculatedTier > Define.EventMapResourceRewards.Length - 1 ? Define.EventMapResourceRewards.Length - 1 : calculatedTier;
        calculatedTier = calculatedTier < 0 ? 1 : calculatedTier;

        new ItemService().UnpackItem(user, Define.EventMapResourceRewards[calculatedTier], timeNow, out itemUseRequestResult);
    }

    private void TryCollectBonus(int cellIndex, List<UserEventMapState> map, Cell cellSettings, UserMissionEvent userMissionEvent)
    {
        if (cellSettings == null || cellSettings.type != Cell.Type.Bonus || !IsCellAvailableForOpenByCrossCells(cellIndex, map))
            return;

        userMissionEvent.AddBonus(cellSettings.bonusType);
    }

    private void TryBlockCells(int cellIndex, List<UserEventMapState> map, ref HashSet<UserEventMapState> result)
    {
        Cell cellSettings;
        if (!eventMapSettings.GetCellSettings(cellIndex, out cellSettings) || (cellSettings.type != Cell.Type.Fight && cellSettings.type != Cell.Type.EncounterBlocking) || map[cellIndex].bonus == (int)Cell.BonusType.Artillery)
            return;

        foreach (var aroundIndex in visualMapData[cellIndex].aroundIndices)
        {
            Cell.StateType cellState = GetCellState(aroundIndex, map);
            var isCellAvailableForOpen = cellState == Cell.StateType.AvailableForOpen || IsCellAvailableForOpenByCrossCells(aroundIndex, map);
            if (cellState == Cell.StateType.Open || cellState == Cell.StateType.Blocked || (isCellAvailableForOpen && IsBattleCell(aroundIndex)))
                continue;

            ChangeCellStatus(aroundIndex, map, Cell.StateType.Blocked);
            result.Add(map[aroundIndex]);
        }
    }

    public bool IsEventActive(State state, UserMissionEvent userMissionEvent)
    {
        return userMissionEvent.startTime >= state.eventStartTime;
    }

    public bool IsEventActive(UserMissionEvent userMissionEvent)
    {
        var state = StateService.GetOrCreate();
        return IsEventActive(state, userMissionEvent);
    }

    public bool IsValidCell(int cellIndex)
    {
        int x = cellIndex % eventMapSettings.cellsPerX;
        int y = cellIndex / eventMapSettings.cellsPerX;

        return IsValidCell(x, y);
    }

    public bool IsValidCell(int x, int y)
    {
        return y >= 0 && x >= 0 && y < eventMapSettings.cellsPerY && x < eventMapSettings.cellsPerX;
    }

    public bool IsCellAvailableForOpenByCrossCells(int cellIndex, List<UserEventMapState> map)
    {
        foreach (var nextIndex in visualMapData[cellIndex].crossIndices)
        {
            var cellState = GetCellState(nextIndex, map);
            if (cellState == Cell.StateType.Open)
                return true;
        }

        return false;
    }

    public bool IsBattleCell(int cellIndex)
    {
        Cell cellSettings;
        return eventMapSettings.GetCellSettings(cellIndex, out cellSettings) && (cellSettings.type == Cell.Type.Fight || cellSettings.type == Cell.Type.Target || cellSettings.type == Cell.Type.EncounterBlocking);
    }

    public void DropCache()
    {
        Caching.Remove(CacheEventSettings);
        Caching.Remove(CacheEventSettingsJson);
    }

    public string EventMissionSettingsToJson()
    {
        Load();
        return Caching.Get<string>(CacheEventSettingsJson);
    }

    public string EventSettingsToJson()
    {
        return JsonConvert.SerializeObject(eventSettings);
    }

    public string UserEventsToJson(int userId)
    {
        var result = GetUserState(userId);
        return JsonConvert.SerializeObject(result);
    }

    public Error SetPartialEventFuel(User user, double timeNow)
    {
        int percent = 33; // TODO VIP 
        var userBuilding = new UserBuilding(user, BuildingType.EventTower);
        userBuilding.SetThirdFuel(timeNow, user, percent);

        return Error.OK;
    }

    public Error ClaimEventReward(User user, int bonusIndex)
    {
        if (user == null)
            return Error.USER_NOT_FOUND;

        var userEventRewards = user.GetEventRewards();            
        if (bonusIndex < 0 || bonusIndex > eventSettings.rewards.Count - 1)
            return Error.INCORRECT_VALUE;

        if (userEventRewards.Contains(bonusIndex))
            return Error.NOREWARD;

        var eventReward = eventSettings.rewards[bonusIndex];
        if (user.eventReputation < eventReward.points)
            return Error.INCORRECT_VALUE;

        //add bonus
        var responseResult = new List<Bonus>();
        foreach (var bonus in eventReward.rewards)
        {
            responseResult.Add(user.AddBonus(bonus, "event_bonus"));
        }

        //save
        userEventRewards.Add(bonusIndex);
        user.eventReward = string.Join(",", userEventRewards);
        user.Saving();

        return Error.OK.SetData(Util.ClearJson(Util.ToJson(responseResult)));
    }

}

public class UnitState
{
    public int cellIndex;
    public bool isBot;
    public int unitId;
    public int defaultUnitId;
    public int hp;

    public UnitState()
    {
    }
}

public class EncounterSettings
{
    public List<int> encounterMissions;
    public List<Encounter> encounters;

    //calculated in runtime
    private Dictionary<int, Encounter> encountersMap;

    public EncounterSettings()
    {
    }

    public bool GetEncounterSettings(int index, out Encounter result)
    {
        if (encountersMap == null)
        {
            encountersMap = new Dictionary<int, Encounter>();
            foreach (var encounter in encounters)
            {
                encountersMap.Add(encounter.id, encounter);
            }
        }

        return encountersMap.TryGetValue(index, out result);
    }
}

public class EventSettings
{
    public int[] resourceRewards;
    public int[] fightBonusReputation;
    public int resetAfterDays;
    public int mapIndex;
    public List<EventReward> rewards = new List<EventReward>();

    public EventSettings()
    {
    }
}

public class EventMapSettings
{
    public int mapParts;
    public int mapPartsPerX;
    public int cellsPerX;
    public int cellsPerY;
    public int fuelCost;
    public int dangerZoneY;

    public List<Cell> cells;

    //calculated in runtime
    private Dictionary<int, Cell> cellsMap;

    public EventMapSettings()
    {
    }

    public bool GetCellSettings(int index, out Cell result)
    {
        if (cellsMap == null)
        {
            cellsMap = new Dictionary<int, Cell>();
            foreach (var cell in cells)
            {
                cellsMap.Add(cell.y * cellsPerX + cell.x, cell);
            }
        }

        return cellsMap.TryGetValue(index, out result);
    }
}

public class EventParameters
{
    public User user;
    public int cellIndex;
    public List<UserEventMapState> map;
    public UserMissionEvent userMissionEvent;
    public double timeNow;
}

public class Cell
{
    public enum Type
    {
        None,
        Fight,
        Target,
        Encounter,
        EncounterBlocking,
        Resources,
        Bonus
    }

    public enum StateType
    {
        None,
        Closed,
        AvailableForOpen,
        Open,
        Blocked
    }

    public enum BonusType
    {
        None,
        ScoutingBonus, //Resources, Bonus, Encounters
        ScoutingEnemy, //Fight, Target
        AllyPower,
        Artillery,
        RepairAll,
        Restore
    }

    public int x;
    public int y;
    public Type type;
    public StateType state;
    public BonusType bonusType;
    public int tierRange;
    public bool isObjectVisible;
    public int encounterId;

    public Cell()
    {
    }

    public Difficulty GetDifficulty()
    {
        return tierRange == 0 ? Difficulty.Medium : tierRange < 0 ? Difficulty.Easy : Difficulty.Hard;
    }
}

public class Encounter
{
    public int id;
    public string imageKey;
    public string objectiveKey;

    public List<EncounterAction> actions;

    public Encounter()
    {
    }
}

public class EncounterAction
{
    public class HandlerParameters
    {
        public string name;
        public string args;

        public HandlerParameters()
        {
        }
    }

    public string actionKey;
    public int nextEncounterId;
    public List<HandlerParameters> actionHandlers;

    //calculated int runtime
    private List<IEncounterHandler> actionHandlerCache;

    public EncounterAction()
    {
    }

    public List<IEncounterHandler> ListActionHandlers()
    {
        if (actionHandlerCache != null)
            return actionHandlerCache;

        actionHandlerCache = new List<IEncounterHandler>();
        foreach (var handlerParameterse in actionHandlers)
        {
            actionHandlerCache.Add((IEncounterHandler)Activator.CreateInstance(Type.GetType(handlerParameterse.name), handlerParameterse.args));
        }

        return actionHandlerCache;
    }
}

public class EventMapTileData
{
    public int index;
    public readonly List<int> crossIndices = new List<int>();
    public readonly List<int> aroundIndices = new List<int>();

    public EventMapTileData()
    {
    }
}

public class OpenCellRequestResult
{
    public ItemUseRequestResult itemUseRequestResult;
}

public class EncounterActionRequestResult
{
    public Dictionary<int, string> data;
}

public class EventReward
{
    public int points;
    public List<Bonus> rewards;

    public EventReward()
    {
    }
}