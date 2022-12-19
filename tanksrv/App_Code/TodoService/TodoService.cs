using System;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;
using TW;

public class TodoService : AbstractService
{
    public enum TodoStepType
    {
        //play
        PlayBattleArena = 1,
        PlayCampaignMission = 2,
        PlayCampaign = 3,
        PlayRadarMissions = 4,
        PlayPvP = 5,

        //win
        WinBattleArena = 51,
        WinPvP = 52,
        WinRadarMissionHard = 53,
        CompleteEvent = 54,
        CompletePvPQuest = 55,

        //upgrade
        UpgradeBuilding = 101,
        UpgradeTank = 102,

        //others    
        Collect400MoneyMarket = 151,
        LevelUp = 152,
        BuyTank = 153,
        EvolveTier = 154
    }

    public const int Collect400MoneyMarket = 400;

    private const string TodoObjectiveConfigCache = "TodoObjectiveConfig";
    private static readonly TodoSettings todoSettings = new TodoSettings();

    static TodoService()
    {
        todoSettings.rewards = JsonConvert.DeserializeObject<List<TodoReward>>(Define.TodoRewards); //deserialize for validateion
        todoSettings.rewardHints = JsonConvert.DeserializeObject<List<TodoRewardHint>>(Define.TodoRewardHints); //deserialize for validateion
    }

    private Dictionary<int, TodoObjective> GetTodoObjectiveSettings(TanksDBDataContext dbContext = null)
    {
        var result = Caching.Get<Dictionary<int, TodoObjective>>(TodoObjectiveConfigCache);
        if (result != null)
            return result;

        var db = dbContext ?? new TanksDBDataContext();
        var custs = Query.ListTodoObjectives(db);

        result = custs.Select(to => new TodoObjective(to)).ToDictionary(to => to.todoId);
        Caching.Add(TodoObjectiveConfigCache, result);

        return result;
    }

    public TodoObjective GetTodoObjectiveSettingsByTodoId(int todoId)
    {
        var todoObjectiveSettings = GetTodoObjectiveSettings();

        TodoObjective result;
        todoObjectiveSettings.TryGetValue(todoId, out result);
        return result;
    }

    public Error ClaimTodoReward(User user, int bonusIndex)
    {
        if (user == null)
            return Error.USER_NOT_FOUND;

        var userTodoRewards = user.GetTodoRewards();
        if (userTodoRewards.Contains(bonusIndex) || bonusIndex < 0 || bonusIndex > todoSettings.rewards.Count - 1)
            return Error.INCORRECT_VALUE;

        var todoReward = todoSettings.rewards[bonusIndex];
        if (CalculateUserTodoObjectivePoints(user) < todoReward.points)
            return Error.INCORRECT_VALUE;

        //add bonus
        var responseResult = new List<Bonus>();
        foreach (var bonus in todoReward.rewards)
        {
            responseResult.Add(user.AddBonus(bonus, "todo_bonus"));
        }

        //save
        userTodoRewards.Add(bonusIndex);
        user.todoReward = string.Join(",", userTodoRewards);
        user.Saving();

        return Error.OK.SetData(Util.ClearJson(Util.ToJson(responseResult)));
    }

    public void ResetTodoList(User user, bool checkTime = true)
    {
        if (checkTime && !Util.IsNewDay(user.gameTime))
            return;

        user.todoState = string.Empty;
        user.todoReward = string.Empty;
        user.Saving();
    }

    public void ProcessTodoStep(User user, TodoStepType todoType)
    {
        UpdateTodoStep(user, (int)todoType);
    }

    public Error UpdateTodoStep(User user, int todoId)
    {
        if (!Enum.IsDefined(typeof(TodoStepType), todoId))
            return Error.INCORRECT_CONFIG;

        var db = new TanksDBDataContext();

        TodoObjective todoObjective;
        var todoObjectiveConfig = GetTodoObjectiveSettings(db);
        if (!todoObjectiveConfig.TryGetValue(todoId, out todoObjective))
            return Error.INCORRECT_CONFIG;

        var userTodoState = GetUserTodoState(user);
        if (!userTodoState.ContainsKey(todoId))
        {
            userTodoState.Add(todoId, 0);
        }

        if (userTodoState[todoId] >= todoObjective.count)
            return Error.INCORRECT_CONFIG;

        userTodoState[todoId]++;

        user.todoState = Util.ClearJson(Util.ToJson(userTodoState));
        user.Saving();

        return Error.OK;
    }

    private int CalculateUserTodoObjectivePoints(User user)
    {
        var result = 0;

        var userTodoState = GetUserTodoState(user);
        foreach (var entry in userTodoState)
        {
            var todoObjective = GetTodoObjectiveSettingsByTodoId(entry.Key);
            if (todoObjective == null)
                continue;

            result += entry.Value * todoObjective.points;
        }

        return result;
    }

    private static Dictionary<int, int> GetUserTodoState(User user)
    {
        return JsonConvert.DeserializeObject<Dictionary<int, int>>(user.todoState) ?? new Dictionary<int, int>();
    }

    public string TodoObjectiveSettingsToJson()
    {
        var todoObjectiveConfig = GetTodoObjectiveSettings();
        return Util.ToJson(todoObjectiveConfig.Values.ToList());
    }

    public string TodoSettingsToJson()
    {
        return Util.ToJson(todoSettings);
    }
}

internal class TodoSettings
{
    public List<TodoReward> rewards;
    public List<TodoRewardHint> rewardHints;

    public TodoSettings()
    {
    }
}

internal class TodoReward
{
    public int points;
    public List<Bonus> rewards;

    public TodoReward()
    {
    }
}

internal class TodoRewardHint
{
    public string name;
    public List<Bonus> rewards;

    public TodoRewardHint()
    {
    }
}





