using System;
using System.Data.Linq;
using System.Linq;
using System.Collections.Generic;

namespace TW
{
    public class Counter
    {
        public int Count;

        public Counter(int count)
        {
            Count = count;
        }
    }

    public class Query
    {
        public static readonly Func<TanksDBDataContext, int, IQueryable<UserUnits>> ListUserUnitsById =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userId) =>
                from c in db.UserUnits
                where c.u == userId
                select c
                );

        public static readonly Func<TanksDBDataContext, int, double, IQueryable<UserUnits>> ListUserClanUnits =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 clanId, double timenow) =>
                from c in db.UserUnits
                where c.sharingClanUnit == clanId /*&& c.sharingTime > timenow*/
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<UserUnits>> ListUserOwnClanUnits =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 clanId, Int32 userId) =>
                from c in db.UserUnits
                where c.sharingClanUnit == clanId && c.u == userId
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserWounds>> ListUserWoundsById =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userId) =>
                from c in db.UserWounds
                where c.userId == userId
                select c
                );

        public static readonly Func<TanksDBDataContext, string, IQueryable<Users>> GetUserBySoc =
            CompiledQuery.Compile((TanksDBDataContext db, string soc) =>
                from c in db.Users
                where c.SocialID == soc
                select c
                );

        public static readonly Func<TanksDBDataContext, string, string, IQueryable<Users>> GetUserBySocAndAuth =
            CompiledQuery.Compile((TanksDBDataContext db, string soc, string auth) =>
                from c in db.Users
                where c.SocialID == soc && c.AuthKey == auth
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<Users>> GetUserByUserId =
            CompiledQuery.Compile((TanksDBDataContext db, int userId) =>
                from c in db.Users
                where c.id == userId
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<Users>> GetUsersByClan =
            CompiledQuery.Compile((TanksDBDataContext db, int id) =>
                from c in db.Users
                where c.clan_id == id
                select c
                );

        #region Clans

        public static readonly Func<TanksDBDataContext, int, IQueryable<Clans>> GetClanById =
            CompiledQuery.Compile((TanksDBDataContext db, int id) =>
                from c in db.Clans
                where c.id == id
                select c
                );

        public static readonly Func<TanksDBDataContext, string, IQueryable<Clans>> GetClansByName =
            CompiledQuery.Compile((TanksDBDataContext db, string name) =>
                from c in db.Clans
                where c.name.ToLower() == name.ToLower()
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<Clans>> GetClans =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.Clans
                select c
                );

        #endregion

        public static readonly Func<TanksDBDataContext, string, IQueryable<Users>> GetUsersByName =
            CompiledQuery.Compile((TanksDBDataContext db, string name) =>
                from c in db.Users
                where c.Name == name
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<Counter>> CountClanMembersByClan =
            CompiledQuery.Compile((TanksDBDataContext db, int id) =>
                from c in db.Users
                where c.clan_id == id
                group c by c.clan_id
                    into g
                select new Counter(g.Count())
                );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<Users>> ListUsersLoggedBetween =
            CompiledQuery.Compile((TanksDBDataContext db, int tFrom, int tTo) =>
                from c in db.Users
                where c.t >= tFrom && c.t <= tTo
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<BlindBuys>> ListBlindBuys =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.BlindBuys
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<UserUnits>> ListTanksByUserByTankId =
            CompiledQuery.Compile((TanksDBDataContext db, int userId, int tankId) =>
                from c in db.UserUnits
                where c.u == userId && c.t == tankId
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<NewMissions>> ListNewMissionsByType =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 type) =>
                from c in db.NewMissions
                where c.type == type
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<NewMissions>> ListNewMissionsByPower =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 minPower, Int32 maxPower) =>
                from c in db.NewMissions
                where c.minPower < minPower && c.maxPower >= maxPower
                select c
                );

        public static readonly Func<TanksDBDataContext, MissionType, int, IQueryable<NewMissions>>
            ListNewMissionsByTypeAndPower =
                CompiledQuery.Compile((TanksDBDataContext db, MissionType missionType, int power) =>
                    from c in db.NewMissions
                    where c.type == (int)missionType && power >= c.minPower && power <= c.maxPower
                    select c
                    );

        public static readonly Func<TanksDBDataContext, IQueryable<NewMissions>> ListNewMissions =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.NewMissions
                select c
                );


        public static readonly Func<TanksDBDataContext, int, IQueryable<RadarConfigs>> ListRadarConfig =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 power) =>
                from c in db.RadarConfigs
                where c.minPower <= power && c.maxPower >= power
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<PvPConfigs>> ListPvPConfig =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 power) =>
                from c in db.PvPConfigs
                where c.minPower < power && c.maxPower >= power
                select c
                );

        public static readonly Func<TanksDBDataContext, int, MissionType, IQueryable<PvPConfigs>> ListPvPConfigByType =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 power, MissionType missionType) =>
                from c in db.PvPConfigs
                where c.minPower < power && c.maxPower >= power && c.type == (int)missionType
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserBuildings>> ListUserBuildings =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userId) =>
                from c in db.UserBuildings
                where c.userId == userId
                select c
                );


        public static readonly Func<TanksDBDataContext, int, IQueryable<UserNewMissions>> GetNewUserMissionByUserId =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userId) =>
                from c in db.UserNewMissions
                where c.userId == userId
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserNewMissions>> GetNewUserMissionById =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 id) =>
                from c in db.UserNewMissions
                where c.id == id
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<NewMissions>> GetNewMissionsById =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 id) =>
                from c in db.NewMissions
                where c.id == id
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserZones>> GetUserZones =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userid) =>
                from c in db.UserZones
                where c.userId == userid
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<UserZones>> GetUserZoneByZoneId =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userid, Int32 zoneId) =>
                from c in db.UserZones
                where c.userId == userid
                select c
                );


        public static readonly Func<TanksDBDataContext, int, int, IQueryable<UserUnits>> ListUserUnitsInZone =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userId, int zone) =>
                from c in db.UserUnits
                where c.u == userId && c.inZone == zone
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int, int, IQueryable<UserBuildings>>
            ListUserBuildingsInZoneByType =
                CompiledQuery.Compile((TanksDBDataContext db, Int32 userId, int zone, int typeEnum) =>
                    from c in db.UserBuildings
                    where c.userId == userId && c.zone == zone && c.type == typeEnum
                    select c
                    );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<UserBuildings>> ListUserBuildingsInZone =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userId, int zone) =>
                from c in db.UserBuildings
                where c.userId == userId && c.zone == zone
                select c
                );

        public static readonly Func<TanksDBDataContext, int, BuildingType, IQueryable<UserBuildings>> GetUserBuilding =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userId, BuildingType type) =>
                from c in db.UserBuildings
                where c.userId == userId && c.type == (int)type
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<Buildings>> ListBuildings =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.Buildings
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<DefaultUnits>> ListDefaultUnits =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.DefaultUnits
                select c
                );


        /*SELECT *

    FROM [tankwars].[dbo].[UserUnits] a,
    (SELECT c.t, max(c.i) as id FROM 
    [tankwars].[dbo].[UserUnits] c,
    (SELECT t, power  FROM [tankwars].[dbo].[UserUnits] GROUP BY t, power) b
    WHERE c.power = b.power and b.t=c.t
    GROUP BY c.t, b.power
    ) bc
    WHERE a.i = bc.id*/

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<Users>> GetRandomName =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 id, Int32 userid) =>
                (from c in db.Users
                 where c.id > id && c.Name != "Guest" && c.id != userid
                 select c
                    ).Take(1)
                );

        public static readonly Func<TanksDBDataContext, IQueryable<int>> GetLastUserId =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                (from c in db.Users.OrderByDescending(i => i.id)
                 select c.id).Take(1)
                );

        public static readonly Func<TanksDBDataContext, double, IQueryable<UserZones>> ListUserZones =
            CompiledQuery.Compile((TanksDBDataContext db, double timeNow) =>
                from c in db.UserZones
                where c.power != 0 && c.blockedBefore <= timeNow && c.zoneId > 1
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<UserZones>> ListAllUserZones =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.UserZones
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<ShellShops>> GetShellByUnit =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 unittype, Int32 tier) =>
                from c in db.ShellShops
                where (c.ut == unittype && c.s == tier && (c.t == 1 || c.t == 3))
                // pickup AP or HE shell
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserShells>> GetUserShells =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 uid) =>
               from c in db.UserShells
               where (c.u == uid)
               select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<DefaultUnits>> GetDefaultUnits =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.DefaultUnits
                where c.i >= 200
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int> GetMinUnitPowerInTier =
            CompiledQuery.Compile((TanksDBDataContext db, int tier) =>
                (from c in db.DefaultUnits.OrderBy(i => i.c)
                 where c.sz == tier
                 select c.c).First()
                );

        public static readonly Func<TanksDBDataContext, int, int> GetMaxUnitPowerInTier =
            CompiledQuery.Compile((TanksDBDataContext db, int tier) =>
                (from c in db.DefaultUnits.OrderByDescending(i => i.c)
                 where c.sz == tier
                 select c.c).First()
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserBattleLogs>> GetBattleLogById =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 id) =>
                from c in db.UserBattleLogs.OrderByDescending(i => i.timestamp)
                where (c.id == id)
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserBattleLogs>> GetBattleLogByUserId =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userId) =>
                from c in db.UserBattleLogs.OrderByDescending(i => i.timestamp)
                where (c.userid == userId)
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<int>> GetTopTierTanks =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userId) =>
                (from tank in db.DefaultUnits
                 join unit in db.UserUnits on tank.i equals unit.t
                 where unit.u == userId
                 orderby tank.sz descending
                 select tank.sz).Take(5));

        public static readonly Func<TanksDBDataContext, int, IQueryable<Crews>> GetCrewById =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 id) =>
                from c in db.Crews
                where c.id == id
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserCrews>> GetUserCrewById =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 id) =>
                from c in db.UserCrews
                where c.id == id
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserCrews>> ListUserCrewsByUserId =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 id) =>
                from c in db.UserCrews
                where c.userid == id
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<UserCrews>> ListUserCrews =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.UserCrews
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<Crews>> ListCrews =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.Crews
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<Crews>> ListShopCrews =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.Crews
                where c.forSale == true
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<CrewLevels>> GetCrewExperiences =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.CrewLevels
                select c
                );

        #region Crew Skill

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<Skills>> GetSkillById =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 id, Int32 lvl) =>
                from c in db.Skills
                where c.skillId == id && c.lvl == lvl
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<Skills>> ListSkills =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.Skills
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<Skills>> ListActiveSkills1lvl =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.Skills
                where (c.lvl == 1 && c.type == (int)SkillType.Active)
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<Skills>> ListPassiveSkills1lvl =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.Skills
                where (c.lvl == 1 && c.type == (int)SkillType.Passive)
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<SkillRequirements>> GetSkillRequirementsConfig =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.SkillRequirements
                select c);

        #endregion

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserUnits>> GetUnitByCrew =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 id) =>
                from c in db.UserUnits
                where c.td == id
                select c
                );
       

        public static readonly Func<TanksDBDataContext, string, IQueryable<Crews>> GetCrewByName =
            CompiledQuery.Compile((TanksDBDataContext db, string name) =>
                from c in db.Crews
                where c.name == name
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserZones>> GetWeakUserZones =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 p) =>
                from c in db.UserZones
                where c.power < p
                select c
                );

        public static readonly Func<TanksDBDataContext, double, int, IQueryable<UserZones>> GetPVPUserZonesVeryEasy =
            CompiledQuery.Compile((TanksDBDataContext db, double timeNow, int user) =>
                from c in db.UserZones
                where (c.powerUnit <= 0.6f ||
                       (c.powerUnit > 0.6f && c.powerUnit <= 0.75f && timeNow - c.lastLogin > 86400000 * 2) ||
                       (c.powerUnit > 0.75f && c.powerUnit <= 1.0f && timeNow - c.lastLogin > 86400000 * 5) ||
                       (c.powerUnit > 1.0f && c.powerUnit <= 1.1f && timeNow - c.lastLogin > 86400000 * 7) ||
                       (c.powerUnit > 1.1f && timeNow - c.lastLogin > 86400000 * 9))
                      && c.userId != user && c.zoneId > 1 && c.blockedBefore <= timeNow
                select c
                );

        public static readonly Func<TanksDBDataContext, double, int, IQueryable<UserZones>> GetPVPUserZonesEasy =
            CompiledQuery.Compile((TanksDBDataContext db, double timeNow, int user) =>
                from c in db.UserZones
                where (
                    (c.powerUnit > 0.6f && c.powerUnit <= 0.75f && timeNow - c.lastLogin < 86400000 * 2) ||
                    (c.powerUnit > 0.75f && c.powerUnit <= 1.0f && timeNow - c.lastLogin >= 86400000 * 2 &&
                     timeNow - c.lastLogin < 86400000 * 5) ||
                    (c.powerUnit > 1.0f && c.powerUnit <= 1.1f && timeNow - c.lastLogin >= 86400000 * 4 &&
                     timeNow - c.lastLogin < 86400000 * 7) ||
                    (c.powerUnit > 1.1f && timeNow - c.lastLogin >= 86400000 * 7 && timeNow - c.lastLogin < 86400000 * 9))
                      && c.userId != user && c.zoneId > 1 && c.blockedBefore <= timeNow
                select c
                );

        public static readonly Func<TanksDBDataContext, double, int, IQueryable<UserZones>> GetPVPUserZonesNormal =
            CompiledQuery.Compile((TanksDBDataContext db, double timeNow, int user) =>
                from c in db.UserZones
                where (
                    (c.powerUnit > 0.75f && c.powerUnit <= 1.0f && timeNow - c.lastLogin < 86400000 * 2) ||
                    (c.powerUnit > 1.0f && c.powerUnit <= 1.1f && timeNow - c.lastLogin >= 86400000 * 2 &&
                     timeNow - c.lastLogin < 86400000 * 4) ||
                    (c.powerUnit > 1.1f && timeNow - c.lastLogin >= 86400000 * 4 && timeNow - c.lastLogin < 86400000 * 7))
                      && c.userId != user && c.zoneId > 1 && c.blockedBefore <= timeNow
                select c
                );

        public static readonly Func<TanksDBDataContext, double, int, IQueryable<UserZones>> GetPVPUserZonesHard =
            CompiledQuery.Compile((TanksDBDataContext db, double timeNow, int user) =>
                from c in db.UserZones
                where (
                    (c.powerUnit > 1.0f && c.powerUnit <= 1.1f && timeNow - c.lastLogin < 86400000 * 2) ||
                    (c.powerUnit > 1.1f && timeNow - c.lastLogin >= 86400000 * 2 && timeNow - c.lastLogin < 86400000 * 4))
                      && c.userId != user && c.zoneId > 1 && c.blockedBefore <= timeNow
                select c
                );

        public static readonly Func<TanksDBDataContext, double, int, IQueryable<UserZones>> GetPVPUserZonesVeryHard =
            CompiledQuery.Compile((TanksDBDataContext db, double timeNow, int user) =>
                from c in db.UserZones
                where (
                    c.powerUnit > 1.1f && timeNow - c.lastLogin < 86400000 * 2)
                      && c.userId != user && c.zoneId > 1 && c.blockedBefore <= timeNow
                select c
                );

        public static readonly Func<TanksDBDataContext, double, int, IQueryable<UserZones>> GetUserZonesUnderAttack =
            CompiledQuery.Compile((TanksDBDataContext db, double timeNow, int user) =>
                from c in db.UserZones
                where c.blockedBefore > timeNow && c.userId == user
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserUnits>> GetTop5UserTanks =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userId) =>
                (from tank in db.UserUnits
                 where tank.u == userId
                 orderby tank.power descending
                 select tank).Take(5));


        public static readonly Func<TanksDBDataContext, int, double, IQueryable<UserBattleLogs>>
            GetBattleLogByIdByTimestamp =
                CompiledQuery.Compile((TanksDBDataContext db, Int32 userId, double timestamp) =>
                    from c in db.UserBattleLogs.OrderByDescending(i => i.timestamp)
                    where (c.userid == userId && c.timestamp > timestamp)
                    select c
                    );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserBattleLogs>> GetBattleLogByIdByViewed =
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userId) =>
                from c in db.UserBattleLogs.OrderByDescending(i => i.timestamp)
                where (c.userid == userId && c.viewed == false)
                select c
                );

        public static readonly Func<TanksDBDataContext, int, double, IQueryable<UserBattleLogs>>
            GetBattleLogByIdByViewedAndStamp =
                CompiledQuery.Compile((TanksDBDataContext db, int userId, double timeStamp) =>
                    from c in db.UserBattleLogs.OrderByDescending(i => i.timestamp)
                    where
                        (c.userid == userId && c.viewed == false &&
                         (c.logtype == (int)LogType.Attack || c.timestamp <= timeStamp))
                    select c
                    );

        public static readonly Func<TanksDBDataContext, int, double, IQueryable<UserBattleLogs>> GetBattleLogByIdByStamp
            =
            CompiledQuery.Compile((TanksDBDataContext db, int userId, double timeStamp) =>
                from c in db.UserBattleLogs.OrderByDescending(i => i.timestamp)
                where (c.userid == userId && (c.logtype == (int)LogType.Attack || c.timestamp <= timeStamp))
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<Zones>> GetZones =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.Zones
                select c
                );


        public static readonly Func<TanksDBDataContext, IQueryable<Users>> ListAllUsers =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.Users
                select c
                );

        //items
        public static readonly Func<TanksDBDataContext, IQueryable<Items>> ListItems =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.Items
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserItems>> ListUserItems =
            CompiledQuery.Compile((TanksDBDataContext db, int userId) =>
                from c in db.UserItems
                where c.userId == userId
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<UserItems>> ListUserItemsById =
            CompiledQuery.Compile((TanksDBDataContext db, int userId, int id) =>
                from c in db.UserItems
                where c.userId == userId && c.id == id
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<UserItems>> ListUserItemsByItemId =
            CompiledQuery.Compile((TanksDBDataContext db, int userId, int itemId) =>
                from c in db.UserItems
                where c.userId == userId && c.itemId == itemId
                select c
                );

        //battles
        public static readonly Func<TanksDBDataContext, IQueryable<Battles>> GetBattlesConfig =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.Battles
                select c
                );

        public static readonly Func<TanksDBDataContext, int> CountBattleUsers =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                (from c in db.UserBattles select c).Count()
                );

        public static readonly Func<TanksDBDataContext, IQueryable<UserBattles>> GetBattleUsersLastPlace =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                (from c in db.UserBattles orderby c.place descending select c).Take(1));

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserBattles>> GetUserBattleByUserId =
            CompiledQuery.Compile((TanksDBDataContext db, int userId) =>
                from c in db.UserBattles
                where c.userId == userId
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int, int, IQueryable<UserBattles>> GetBattleOpponentsForUser =
            CompiledQuery.Compile((TanksDBDataContext db, int fr, int to, int excludePlace) =>
                from c in db.UserBattles
                where (c.place >= fr) && (c.place <= to && c.place != excludePlace)
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int, int, IQueryable<UserBattles>>
            GetBattleOpponentsByPower =
                CompiledQuery.Compile((TanksDBDataContext db, int fr, int to, int excludePlace) =>
                                      (from c in db.UserBattles
                                       where (c.squadPower >= fr) && (c.squadPower <= to && c.place != excludePlace)
                                       select c).Take(100)
                );

        public static readonly Func<TanksDBDataContext, int, int, int, IQueryable<UserBattles>>
            GetBattleOpponentsByRating =
                CompiledQuery.Compile((TanksDBDataContext db, int fr, int to, int excludePlace) =>
                                      (from c in db.UserBattles
                                       where (c.rating >= fr) && (c.rating <= to && c.place != excludePlace)
                                       select c).Take(100)
                );

        public static readonly Func<TanksDBDataContext, int, int, int, int, int, IQueryable<UserBattles>>
            GetBattleOpponentsByRatingAndPower =
                CompiledQuery.Compile((TanksDBDataContext db, int fr, int to, int frPower, int toPower, int excludePlace) =>
                                      (from c in db.UserBattles
                                       where (c.rating >= fr) && (c.rating <= to && c.place != excludePlace) && c.squadPower >= frPower && c.squadPower <= toPower
                                       select c).Take(100)
                );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<UserBattles>> GetBattleOpponentsForUserByRating =
            CompiledQuery.Compile((TanksDBDataContext db, int min, int max) =>
                from c in db.UserBattles
                where c.rating >= min && c.rating < max
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserBattles>> GetBattleUsersTop =
            CompiledQuery.Compile((TanksDBDataContext db, int topCount) =>
                (from c in db.UserBattles where c.isBot == false orderby c.rating descending select c).Take(topCount));

        public static readonly Func<TanksDBDataContext, IQueryable<UserBattles>> GetBattleUsers =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.UserBattles
                where c.isBot == false
                orderby c.place ascending
                select c);

        //evolve
        public static readonly Func<TanksDBDataContext, IQueryable<Evolves>> GetEvolveConfig =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.Evolves
                select c
                );


        public static readonly Func<TanksDBDataContext, int, IQueryable<UserFriendsRewards>> GetUsersByRef =
            CompiledQuery.Compile((TanksDBDataContext db, int refId) =>
                from c in db.UserFriendsRewards
                where c.refId == refId && c.activity > 0
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserFriendsRewards>> ListFriendUsers =
            CompiledQuery.Compile((TanksDBDataContext db, int refId) =>
                from c in db.UserFriendsRewards
                where c.refId == refId
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<Users>> ListUsersByRef =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c1 in db.UserFriendsRewards
                join c2 in db.Users on c1.refId equals c2.id
                select c2
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserFriendsRewards>> GetUserFriend =
            CompiledQuery.Compile((TanksDBDataContext db, int userid) =>
                from c in db.UserFriendsRewards
                where c.userId == userid
                select c
                );

        public static readonly Func<TanksDBDataContext, string, IQueryable<UserFriendsRewards>> GetUserFriendBySocId =
            CompiledQuery.Compile((TanksDBDataContext db, string id) =>
                from c in db.UserFriendsRewards
                where c.socialId == id
                select c
                );

        public static readonly Func<TanksDBDataContext, int, double, IQueryable<UserActions>> GetUserActions =
            CompiledQuery.Compile((TanksDBDataContext db, int uid, double timeNow) =>
                from c in db.UserActions
                where c.userId == uid && c.endTime > timeNow
                orderby c.priority ascending
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int, int, double, IQueryable<UserActions>>
            GetUserActionsItemId =
                CompiledQuery.Compile((TanksDBDataContext db, int uid, int type, int itemId, double timeNow) =>
                    from c in db.UserActions
                    where
                        c.userId == uid && c.shopType == type && c.item == itemId && c.endTime > timeNow &&
                        c.startTime <= timeNow && c.isPurchase == false
                    orderby c.priority ascending
                    select c
                    );

        public static readonly Func<TanksDBDataContext, int, string, string, double, IQueryable<UserActions>>
            GetUserActionsIdent =
                CompiledQuery.Compile((TanksDBDataContext db, int uid, string type, string ident, double timeNow) =>
                    from c in db.UserActions
                    where
                        c.userId == uid && c.itemType == type && c.itemId == ident && c.endTime > timeNow &&
                        c.startTime <= timeNow && c.isPurchase == false
                    orderby c.priority ascending
                    select c
                    );

        public static readonly Func<TanksDBDataContext, int, string, double, bool, IQueryable<UserActions>>
            GetUserActionsName =
                CompiledQuery.Compile((TanksDBDataContext db, int uid, string name, double timeNow, bool notPurchase) =>
                    from c in db.UserActions
                    where
                        c.userId == uid && c.name == name && c.endTime > timeNow && c.startTime <= timeNow &&
                        c.isPurchase != notPurchase
                    orderby c.priority ascending
                    select c
                    );

        public static readonly Func<TanksDBDataContext, int, string, double, IQueryable<UserActions>>
            GetUserActionsName4Changing =
                CompiledQuery.Compile((TanksDBDataContext db, int uid, string name, double timeNow) =>
                    from c in db.UserActions
                    where c.userId == uid && c.name == name
                    orderby c.priority ascending
                    select c
                    );

        public static readonly Func<TanksDBDataContext, int, int, double, IQueryable<UserActions>>
            GetUserActionsHQLevel4Changing =
                CompiledQuery.Compile((TanksDBDataContext db, int uid, int HQlevel, double timeNow) =>
                    from c in db.UserActions
                    where c.userId == uid && c.HQLevel == HQlevel
                    orderby c.priority ascending
                    select c
                    );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserActions>> GetUserActionsById =
            CompiledQuery.Compile((TanksDBDataContext db, int id) =>
                from c in db.UserActions
                where c.id == id
                select c
                );

        public static readonly Func<TanksDBDataContext, int, double, IQueryable<UserActions>> GetUserActionsOutOfDate =
            CompiledQuery.Compile((TanksDBDataContext db, int id, double timeNow) =>
                from c in db.UserActions
                where c.endTime <= timeNow
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int, string, int, int, double, IQueryable<UserActions>> GetUserActionsByOfferType =
            CompiledQuery.Compile((TanksDBDataContext db, int userId, int itemId, string itemType, int goldPrice, int moneyPrice, double timeNow) =>
                from c in db.UserActions
                where c.userId == userId && c.endTime > timeNow &&
                ((c.shopType == (int)Action.ShopOfferType.Single && c.item == itemId) ||
                (c.shopType == (int)Action.ShopOfferType.GroupGold && c.itemType == itemType && goldPrice > 0) ||
                (c.shopType == (int)Action.ShopOfferType.GroupMoney && c.itemType == itemType && moneyPrice > 0))
                orderby c.priority ascending
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<MarketItems>> ListRandomItems =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.MarketItems
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserMarkets>> GetUserMarket =
            CompiledQuery.Compile((TanksDBDataContext db, int userId) =>
                from c in db.UserMarkets
                where c.userId == userId
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<RandomItems>> GetRandomItemById =
            CompiledQuery.Compile((TanksDBDataContext db, int bId) =>
                from c in db.RandomItems
                where c.id == bId
                select c
                );
       

        #region Events
        public static readonly Func<TanksDBDataContext, IQueryable<States>> GetState =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.States
                select c);

        public static readonly Func<TanksDBDataContext, IQueryable<MissionEvents>> ListMissionEvents =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.MissionEvents
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<MissionEvents>> ListMissionEventByPowerAndEventId =
                CompiledQuery.Compile((TanksDBDataContext db, int eventId, int power) =>
                    from c in db.MissionEvents
                    where c.eventId == eventId && power >= c.minPower && power <= c.maxPower
                    select c
                    );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<MissionEvents>> ListMissionEventByTierAndEventId =
                CompiledQuery.Compile((TanksDBDataContext db, int eventId, int tier) =>
                    from c in db.MissionEvents
                    where c.eventId == eventId && c.tier == tier
                    select c
                    );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<UserMissionEvents>> ListUserMissionEventByEventId =
                CompiledQuery.Compile((TanksDBDataContext db, int userId, int userEventId) =>
                    from c in db.UserMissionEvents
                    where c.userId == userId && c.id == userEventId
                    select c
                    );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<UserEventMapStates>> ListUserEventMapState =
                      CompiledQuery.Compile((TanksDBDataContext db, int userId, int userEventId) =>
                          from c in db.UserEventMapStates
                          where c.userId == userId && c.eventId == userEventId
                          orderby c.index ascending
                          select c
                          );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserMissionEvents>> ListUserMissionEvents =
            CompiledQuery.Compile((TanksDBDataContext db, int userId) =>
                from c in db.UserMissionEvents
                where c.userId == userId
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserMissionEvents>>
            GetLastUserInUserMissionEvents =
                CompiledQuery.Compile((TanksDBDataContext db, int userId) =>
                    (from c in db.UserMissionEvents
                     where c.userId != userId
                     orderby c.id descending
                     select c).Take(1)
                    );

        #endregion

        #region Todo

        public static readonly Func<TanksDBDataContext, IQueryable<TodoObjectives>> ListTodoObjectives =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.TodoObjectives
                select c
                );

        #endregion

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserBattles>> GetUserDeathMatches =
            CompiledQuery.Compile((TanksDBDataContext db, int top) =>
                (from c in db.UserBattles
                 orderby c.prevBestPlace descending
                 select c).Take(top)
            );        

        #region Tournaments
        public static readonly Func<TanksDBDataContext, IQueryable<UserTournaments>> GetUserTournaments =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.UserTournaments
                select c
            );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserTournaments>> GetUserTournamentByClanId =
            CompiledQuery.Compile((TanksDBDataContext db, int clanId) =>
                from c in db.UserTournaments
                where c.clanId == clanId
                select c
            );

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserTournamentBattles>> GetUserTournamentBattlesByUser =
            CompiledQuery.Compile((TanksDBDataContext db, int userId) =>
                from c in db.UserTournamentBattles
                where c.userId == userId
                select c
            );

        public static readonly Func<TanksDBDataContext, int, double, IQueryable<UserTournamentBattles>> GetUserTournamentBattlesByRoomTime =
            CompiledQuery.Compile((TanksDBDataContext db, int roomId, double time) =>
                from c in db.UserTournamentBattles
                where c.roomId == roomId && c.time - 100000 < time && c.time + 100000 > time
                select c
            );

        /*
               SELECT DISTINCT
               [userId]
               ,[clanId]
               FROM[dbo].[UserTournamentBattles]
               where clanId = 314 */
        public static readonly Func<TanksDBDataContext, int, double, IQueryable<int>> ListUsersWhoParticipate =
            CompiledQuery.Compile((TanksDBDataContext db, int clanId, double time) =>
                (from c in db.UserTournamentBattles
                 where c.clanId == clanId && c.time > time - 7200000
                 select c.userId).Distinct()
            );

        #endregion

        #region Mailbox

        public static readonly Func<TanksDBDataContext, int, double, IQueryable<Mailboxes>> DeleteOldMail =
            CompiledQuery.Compile((TanksDBDataContext db, int userId, double timeNow) =>
                from c in db.Mailboxes
                where (c.userId == userId || c.userId == 0)
                      && c.timeDeleted <= timeNow && c.timeDeleted > 0
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<Mailboxes>> GetUserMail =
            CompiledQuery.Compile((TanksDBDataContext db, int userId) =>
                from c in db.Mailboxes
                where c.userId == userId || c.userId == 0
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<Mailboxes>> GetSingleBroadcastMail =
            CompiledQuery.Compile((TanksDBDataContext db, int mailId) =>
                from c in db.Mailboxes
                where c.id == mailId && c.userId == 0
                select c
                );

        public static readonly Func<TanksDBDataContext, int, IQueryable<Mailboxes>> GetBroadcastMailClaim =
            CompiledQuery.Compile((TanksDBDataContext db, int mailId) =>
                from c in db.Mailboxes
                where (c.id == mailId && c.userId == 0) || (c.type == (int)MailType.ClaimMarker && c.sender == mailId)
                select c
                );

        public static readonly Func<TanksDBDataContext, int, int, IQueryable<Mailboxes>> GetSingleUserMail =
            CompiledQuery.Compile((TanksDBDataContext db, int userId, int mailId) =>
                from c in db.Mailboxes
                where c.id == mailId && c.userId == userId
                select c
                );

        public static IQueryable<Clans> GetClansByIds(TanksDBDataContext db, List<int> ids)
        {

            IQueryable<Clans> cuts = from c in db.Clans
                                     where ids.Contains(c.id)
                                     select c;
            return cuts;
        }

        #endregion

        #region Clans
        public static readonly Func<TanksDBDataContext, IQueryable<ClanLevels>> GetClanLevelConfig =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.ClanLevels
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<ClanSkillLevels>> GetClanSkillLevelConfig =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.ClanSkillLevels
                select c
                );


        #endregion


        public static IQueryable<Users> GetUsersByIds(TanksDBDataContext db, List<int> ids)
        {

            IQueryable<Users> cuts = from c in db.Users
                                     where ids.Contains(c.id)
                                     select c;
            return cuts;
        }

        public static IQueryable<UserCrews> GetUserCrewsByIds(TanksDBDataContext db, List<int> ids)
        {

            IQueryable<UserCrews> cuts = from c in db.UserCrews
                                         where ids.Contains(c.id)
                                         select c;
            return cuts;
        }

        public static readonly Func<TanksDBDataContext, int, IQueryable<DefaultUnits>> GetUserTanks =  //Get All user tank
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userId) =>
                (from tank in db.DefaultUnits
                 join unit in db.UserUnits on tank.i equals unit.t
                 where unit.u == userId
                 select tank
        ));

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserResearches>> GetUserResearches =  //Get User tech tree states
            CompiledQuery.Compile((TanksDBDataContext db, Int32 userId) =>
                (from c in db.UserResearches
                 where c.userId == userId
                 select c
        ));

        public static readonly Func<TanksDBDataContext, int, IQueryable<UserResearches>> GetUserResearchesById =  //Get User tech tree state
            CompiledQuery.Compile((TanksDBDataContext db, Int32 id) =>
                (from c in db.UserResearches
                 where c.id == id
                 select c
        ));

        public static readonly Func<TanksDBDataContext, int, int, int, IQueryable<UserResearches>> GetUserResearchesByUserId =  //Get User tech tree state
           CompiledQuery.Compile((TanksDBDataContext db, Int32 userId, Int32 unitId, Int32 upgradeId) =>
               (from c in db.UserResearches
                where c.userId == userId && c.unitId == unitId && c.upgradeId == upgradeId
                select c
       ));

        public static readonly Func<TanksDBDataContext, IQueryable<UpgradesNew>> ListUpgradesNew =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.UpgradesNew
                select c
                );

        public static readonly Func<TanksDBDataContext, IQueryable<Actions>> ListActions =
            CompiledQuery.Compile((TanksDBDataContext db) =>
                from c in db.Actions
                orderby c.priority ascending
                select c
                );

    }
}
