using System;
using System.Collections.Generic;
using System.Linq;
using TW;

public class UserMissionEvent
{
    public int id;
    public int userId;
    public int eventId;
    public double startTime;
    public int userTier;
    public int userPower;
    public string squadData;
    public string fightMissions;
    public string targetMissions;
    public int lastCellIndex;
    public string bonus;
    public double repMultiply;

    public List<UserEventMapState> mapData;
    public List<NewMission> fightMissionsData;
    public List<NewMission> targetMissionsData;
    public List<NewMission> encounterMissionsData;

    public UserProfile lastUserProfile;

    public UserMissionEvent(UserMissionEvents userEvents)
    {
        id = userEvents.id;
        userId = userEvents.userId;
        eventId = userEvents.eventId;
        startTime = userEvents.startTime;
        userTier = userEvents.userTier;
        userPower = userEvents.userPower;
        squadData = userEvents.squadData;
        fightMissions = userEvents.fightMissions;
        targetMissions = userEvents.targetMissions;
        lastCellIndex = userEvents.lastCellIndex;
        bonus = userEvents.bonus;
        var building = new UserBuilding(userId, BuildingType.EventTower);
        repMultiply = Define.EventBuildingRepM[building.blevel];
    }

    public List<int> GetFightMissionsIds()
    {
        return string.IsNullOrEmpty(fightMissions) ? new List<int>() : fightMissions.Split(',').Select(int.Parse).ToList();
    }

    public List<int> GetTargettMissionsIds()
    {
        return string.IsNullOrEmpty(targetMissions) ? new List<int>() : targetMissions.Split(',').Select(int.Parse).ToList();
    }

    public bool AddBonus(Cell.BonusType bonusType, int amount = 1)
    {
        var maxLimit = (int)Define.Get(Def.EventMapBonusMaxLimit);
        if (GetBonus(bonusType) >= maxLimit)
            return false;

        var data = bonus.Split(',').Select(int.Parse).ToList();
        data[(int)bonusType] = Math.Min(data[(int)bonusType] + amount, maxLimit);
        bonus = string.Join(",", data);

        return true;
    }

    public void UseBonus(Cell.BonusType bonusType)
    {
        var data = bonus.Split(',').Select(int.Parse).ToList();
        data[(int)bonusType] = Math.Max(--data[(int)bonusType], 0);
        bonus = string.Join(",", data);
    }

    public int GetBonus(Cell.BonusType bonusType)
    {
        var data = bonus.Split(',').Select(int.Parse).ToList();
        return data[(int)bonusType];
    }

    public void Update(bool updatePower = false)
    {
        var db = new TanksDBDataContext();
        var custs = from c in db.UserMissionEvents where c.id == id select c;

        foreach (var ubs in custs)
        {
            ubs.startTime = startTime;
            ubs.squadData = squadData;
            ubs.fightMissions = fightMissions;
            ubs.targetMissions = targetMissions;

            if (updatePower)
            {
                ubs.userTier = userTier;
                ubs.userPower = userPower;
            }

            ubs.lastCellIndex = lastCellIndex;
            ubs.bonus = bonus;
        }
        db.SubmitChanges();
    }

    public double GetMultiplyer()
    {
        if (this.repMultiply == 0)
        {
            var building = new UserBuilding(this.userId, BuildingType.EventTower);
            this.repMultiply = Define.EventBuildingRepM[building.blevel - 1];
        }
        return repMultiply;
    }
}