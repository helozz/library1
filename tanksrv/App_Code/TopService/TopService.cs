using System;
using System.Collections.Generic;
using System.Linq;
using TW;
namespace TW
{
    public class TopService : AbstractService
    {
        private const int ClansTop = 100;
        private const int BattlesTop = 100;

        private const double ClansTopCacheKeepMinutes = 60;
        private const double BattlesTopCacheKeepMinutes = 15;
        private const double TournamentTopCacheKeepMinutes = 5;
        private const double DeathMatchTopCacheKeepMinutes = 15;

        private const string TournamentTopCache = "TournamentTop";
        private const string ClansTopCache = "ClansTopCache";
        private const string BattlesTopCache = "BattlesTopCache";
        private const string DeathMatchTopCache = "DeathMatchTopCache";

        private static readonly object TopsLock = new object();

        private ClanService clanService = new ClanService();
        private UserService userService = new UserService();
        private FightService fightService = new FightService();

        public Error GetBattleTops(User user, out TopRequestResult requestResult)
        {
            requestResult = null;

            if (user == null)
                return Error.USER_NOT_FOUND;

            lock (TopsLock)
            {
                var db = new TanksDBDataContext();
                //global top
                var clansTop = GetClansTop(db);
                var battlesTop = GetBattlesTop(db);
                var tournamentTops = GetTournamentTop(dbContext: db);
                var deatchMatchTops = GetDeathMatchTop(dbContext: db);

                //current user top
                var clanTop = GetClanTop(user.clan_id, db);
                var battleTop = GetBattleTop(user.id, db);

                requestResult = new TopRequestResult { clans = clansTop, battles = battlesTop, tournaments = tournamentTops, clan = clanTop, battle = battleTop, deathmatches = deatchMatchTops };
            }

            return Error.OK;
        }

        public List<DeathMatchTop> GetDeathMatchTop(int top = 100, bool reset = false, TanksDBDataContext dbContext = null)
        {
            var result = Caching.Get<List<DeathMatchTop>>(DeathMatchTopCache);
            if (!reset && result != null)
                return result.GetRange(0, Math.Min(top, result.Count));

            var db = dbContext ?? new TanksDBDataContext();

            var custs = Query.GetUserDeathMatches(db, top);

            var data = new List<UserDeathMatch>();
            foreach (var ud in custs)
            {
                if (ud.userId < 0) continue;
                var userProfile = userService.GetUserProfile(ud.userId);
                if (userProfile != null)
                    data.Add(new UserDeathMatch(ud, userProfile));
            }                        

            result = new List<DeathMatchTop>();
            for (var i = 0; i < data.Count; i++)
            {                            
                var place = i + 1; //+1 because i == 0
                var topDM = new DeathMatchTop
                {
                    userId = data[i].userId,
                    battles = data[i].battles,
                    place = place,
                    playerName = data[i].playerName,
                    lvl = data[i].lvl,
                    clanLogo = data[i].clanLogo,
                    clanName = data[i].clanName,                                    
                };
                result.Add(topDM);
            }

            Caching.Add(DeathMatchTopCache, result, DeathMatchTopCacheKeepMinutes);
            if (reset)
            {
                var custsNew = Query.GetUserDeathMatches(db, top);
                
                foreach (var ud in custsNew)
                {
                    if (ud.userId < 0) continue;
                    ud.prevBestPlace = 0;
                }
                db.SubmitChanges();
            }
            return result.GetRange(0, Math.Min(top, data.Count));            
        }

        public List<TournamentDivisionTop> GetTournamentTop(int top = 100, bool reset = false, TanksDBDataContext dbContext = null)
        {
            var result = Caching.Get<List<TournamentDivisionTop>>(TournamentTopCache);
            if (!reset && result != null)
                return result.GetRange(0, Math.Min(top, result.Count));

            var db = dbContext ?? new TanksDBDataContext();

            var custs = Query.GetUserTournaments(db);

            var data = new List<UserTournament>();
            data.AddRange(custs.Select(ut => new UserTournament(ut)));
            data.Sort((o1, o2) => o2.points.CompareTo(o1.points));

            result = new List<TournamentDivisionTop>();
            for (var i = 0; i < data.Count; i++)
            {
                Clan clan;
                if (!clanService.GetClan(data[i].clanId, out clan))
                    continue;

                var membersData = clanService.GetPlayers(clan.id);

                var clanLeader = membersData.Find(member => member.position == Clan.RankOwner);
                var clanLeaderName = clanLeader == null ? string.Empty : clanLeader.name;

                var place = i + 1; //+1 because i == 0
                var divisionTop = new TournamentDivisionTop
                {
                    clanId = data[i].clanId,
                    clanLeaderName = clanLeaderName,
                    clanLogo = clan.logo,
                    clanName = clan.name,
                    place = place,
                    points = data[i].points
                };

                result.Add(divisionTop);
            }

            Caching.Add(TournamentTopCache, result, TournamentTopCacheKeepMinutes);

            return result.GetRange(0, Math.Min(top, data.Count));
        }

        private List<Clan> GetClansTop(TanksDBDataContext dbContext = null)
        {
            var result = Caching.Get<List<Clan>>(ClansTopCache);
            if (result != null && result.Count > 0)
                return result.Take(ClansTop).ToList();

            result = new List<Clan>();
            var db = dbContext ?? new TanksDBDataContext();
            var custs = Query.GetClans(db);

            int clanPlace = 0;
            foreach (var entry in custs)
            {
                int membersCountResult, clanPowerResult;
                string leaderNameResult;

                if (!CalculateClanStatistic(entry.id, out membersCountResult, out clanPowerResult, out leaderNameResult, db))
                    continue;

                clanPlace++;
                var resultClan = new Clan(entry) { players = membersCountResult, power = clanPowerResult, leaderName = leaderNameResult, place = clanPlace };
                result.Add(resultClan);
            }

            result.Sort((c1, c2) => c2.power.CompareTo(c1.power));
            Caching.Add(ClansTopCache, result, ClansTopCacheKeepMinutes);

            return result.Take(ClansTop).ToList();
        }

        public Clan GetClanTop(int clanId, TanksDBDataContext dbContext = null)
        {
            var db = dbContext ?? new TanksDBDataContext();

            var clan = clanService.GetClan(clanId, db);
            if (clan == null)
                return null;

            int membersCountResult, clanPowerResult;
            string leaderNameResult;

            if (!CalculateClanStatistic(clanId, out membersCountResult, out clanPowerResult, out leaderNameResult, db))
                return null;

            clan.players = membersCountResult;
            clan.power = clanPowerResult;
            clan.leaderName = leaderNameResult;

            var clansTopCache = Caching.Get<List<Clan>>(ClansTopCache);
            if (clansTopCache != null)
            {
                clan.place = clansTopCache.FindIndex(cl => cl.id == clanId) + 1;
            }

            return clan;
        }

        private UserBattle GetBattleTop(int userId, TanksDBDataContext dbContext = null)
        {
            var db = dbContext ?? new TanksDBDataContext();

            var result = fightService.GetUserBattleByUserId(userId);
            if (result == null)
                return null;

            var userProfile = userService.GetUserProfile(userId);
            if (userProfile == null)
                return null;

            userProfile.rating = fightService.CalculateUserPower(userId, db);
            result.userProfile = userProfile;

            return result;
        }

        private bool CalculateClanStatistic(int clanId, out int membersCountResult, out int clanPowerResult, out string leaderNameResult, TanksDBDataContext db = null)
        {
            var membersData = clanService.GetPlayers(clanId);
            membersCountResult = membersData.Count;

            clanPowerResult = 0;
            leaderNameResult = string.Empty;

            if (membersData.Count == 0)
                return false;

            var clanLeader = membersData.Find(member => member.position == Clan.RankOwner);
            leaderNameResult = clanLeader == null ? string.Empty : clanLeader.name;
            clanPowerResult = membersData.Sum(clanMember => clanMember.wins);

            return true;
        }

        private List<UserBattle> GetBattlesTop(TanksDBDataContext dbContext = null)
        {
            var result = Caching.Get<List<UserBattle>>(BattlesTopCache);
            if (result != null && result.Count > 0)
                return result;

            result = new List<UserBattle>();
            var db = dbContext ?? new TanksDBDataContext();
            var custs = Query.GetBattleUsersTop(db, BattlesTop);

            foreach (var entry in custs)
            {
                var userProfile = userService.GetUserProfile(entry.userId);
                if (userProfile == null)
                    continue;

                userProfile.rating = fightService.CalculateUserPower(entry.userId, db);
                result.Add(new UserBattle(entry, userProfile));
            }

            Caching.Add(BattlesTopCache, result, BattlesTopCacheKeepMinutes);

            return result;
        }
    }
}