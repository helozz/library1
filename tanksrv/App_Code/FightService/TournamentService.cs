using System;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;

namespace TW
{
    public class TournamentService : AbstractService
    {
        private const int ParticipantUnitTop = 3;
        private const int TimeOutInBattleMs = 300000;
        private const int TimeOutForOfferMs = 60000;
        public readonly Dictionary<int, int> tierRanges = new Dictionary<int, int>()
        {
            {1, 0},
            {2, 0},
            {3, 0},
            {4, 0},
            {5, 0},
            {6, 0},
            {7, 0},
            {8, 0},
            {9, 0},
            {10, 0},
        };

        private static readonly Dictionary<DayOfWeek, List<DataHolder<int, int, int>>> timeTable = new Dictionary<DayOfWeek, List<DataHolder<int, int, int>>>
    {                
        {DayOfWeek.Sunday, new List<DataHolder<int, int, int>> { new DataHolder<int, int, int>(14, 0, 60) }}, //start hours, tier, end minutes
    };

        private static readonly Dictionary<int, Dictionary<int, ParticipantState>> participantsData = new Dictionary<int, Dictionary<int, ParticipantState>>(); //clani id, user id
        private static readonly Dictionary<int, Dictionary<int, bool>> offersData = new Dictionary<int, Dictionary<int, bool>>(); //clan id, user id
        private static readonly Dictionary<int, PreBattleState> preBattleStateData = new Dictionary<int, PreBattleState>(); //user id
        private static readonly Dictionary<int, BattleState> battleStateData = new Dictionary<int, BattleState>(); //clan id    
        private static readonly Dictionary<int, TournamentInvite> invitesData = new Dictionary<int, TournamentInvite>(); //user id

        private static readonly object lockTournament = new object();
        private static readonly object lockOffers = new object();
        private static readonly object lockInvites = new object();

        private static readonly object lockPreBattleState = new object();
        private static readonly object lockBattleState = new object();
        private static readonly object lockParticipants = new object();


        private static Tournament tournament;
        public static readonly TournamentSettings tournamentSettings = new TournamentSettings();

        private UserService userService = new UserService();
        private FightService fightService = new FightService();
        private ClanService clanService = new ClanService();
        private TopService topService = new TopService();

        static TournamentService()
        {
            tournamentSettings = new TournamentSettings
            {
                timeTable = timeTable,
                rewards = JsonConvert.DeserializeObject<List<DataHolder<int, int, List<Bonus>>>>(Define.ClanTournamentReward)
            };
        }

        public Error GetTournamentTop(User user, out List<TournamentDivisionTop> result)
        {
            result = null;

            if (user == null)
                return Error.USER_NOT_FOUND;

            if (user.clan_id <= 0)
                return Error.USER_NOT_CLAN_MEMBER;

            result = topService.GetTournamentTop();

            return Error.OK;
        }

        public Error SendInvite(User user, int toUserId)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (user.clan_id <= 0)
                return Error.USER_NOT_CLAN_MEMBER;

            if (tournament == null || !tournament.IsAvailable())
                return Error.ERROR_TOURNAMENT_NOT_AVAILABLE;

            //do not allow send invite if not in offer or in battle
            if (IsUserInOffer(user.clan_id, user.id) || IsUserInBattle(user.clan_id, user.id))
                return Error.INCORRECT_VALUE;

            User toUser;
            if (!userService.GetUserByUserId(toUserId, out toUser))
                return Error.USER_NOT_FOUND;

            if (IsUserInOffer(toUser.clan_id, toUser.id) || IsUserInBattle(toUser.clan_id, toUser.id))
                return Error.INCORRECT_VALUE;

            if (user.clan_id != toUser.clan_id)
                return Error.USER_NOT_CLAN_MEMBER;

            PreBattleState data;
            if (GetPreBattleState(toUserId, out data) && data.isConfirmed)
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            if (!UserService.IsUserOnline(toUserId))
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            TryAddInvite(user, toUserId);

            return Error.OK;
        }

        public Error RespondInvite(User user, bool accept)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            TournamentInvite invite;
            if (!GetInvite(user.id, out invite))
                return Error.INCORRECT_VALUE;

            if (IsInviteAccepted(invite.fromUserId, invite.toUserId) || IsInviteAccepted(invite.toUserId, invite.fromUserId))
                return Error.INCORRECT_VALUE;

            User fromUser;
            if (!userService.GetUserByUserId(invite.fromUserId, out fromUser))
                return Error.USER_NOT_FOUND;

            //remove invite
            if (!accept)
            {
                //RemoveInvite(user.id);
                UpdateInvite(fromUser.id, user.id, false, true, false);
                return Error.OK;
            }

            if (tournament == null || !tournament.IsAvailable())
                return Error.ERROR_TOURNAMENT_NOT_AVAILABLE;

            if (IsUserInOffer(user.clan_id, user.id) || IsUserInBattle(user.clan_id, user.id))
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            if (IsUserInOffer(fromUser.clan_id, fromUser.id) || IsUserInBattle(fromUser.clan_id, fromUser.id))
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            if (user.clan_id <= 0 || user.clan_id != fromUser.clan_id)
                return Error.USER_NOT_CLAN_MEMBER;

            PreBattleState data;
            if (GetPreBattleState(fromUser.id, out data) && data.isConfirmed)
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            UpdateInvite(fromUser.id, user.id, true, false, false);

            return Error.OK;
        }

        public Error CancelInvite(User user, int toUserId)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (tournament == null || !tournament.IsAvailable())
                return Error.ERROR_TOURNAMENT_NOT_AVAILABLE;

            if (IsUserInvitedBy(user.id, toUserId))
            {
                //RemoveInvite(toUserId);
                UpdateInvite(user.id, toUserId, false, true, false);
            }

            return Error.OK;
        }

        public Error SaveUnitsState(User user, int[] squadParameters)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (user.clan_id <= 0)
                return Error.USER_NOT_CLAN_MEMBER;

            if (tournament == null || !tournament.IsAvailable())
                return Error.ERROR_TOURNAMENT_NOT_AVAILABLE;

            if (squadParameters == null || squadParameters.Length == 0)
                return Error.INCORRECT_VALUE;

            foreach (var unitId in squadParameters)
            {
                var userUnit = new UserUnit(unitId);
                if (userUnit.Id == 0)
                    return Error.INCORRECT_VALUE;
            }

            UpdateSquad(user.clan_id, user.id, new List<int>(squadParameters));

            return Error.OK;
        }

        public Error GetConfirmBattle(User user, out ConfirmedBattleRequestResult requestResult)
        {
            requestResult = null;

            if (user == null)
                return Error.USER_NOT_FOUND;

            if (user.clan_id <= 0)
                return Error.USER_NOT_CLAN_MEMBER;

            if (tournament == null || !tournament.IsAvailable())
                return Error.ERROR_TOURNAMENT_NOT_AVAILABLE;

            PreBattleState userPreBattleState;
            if (!GetPreBattleState(user.id, out userPreBattleState) || !userPreBattleState.isConfirmed)
                return Error.INCORRECT_VALUE;

            PreBattleState offerPreBattleState;
            if (UserService.IsUserOnline(userPreBattleState.toUserId) && (!GetPreBattleState(userPreBattleState.toUserId, out offerPreBattleState) || !offerPreBattleState.isConfirmed))
                return Error.INCORRECT_VALUE;

            ParticipantState useParticipantState;
            if (GetParticipantState(user.clan_id, user.id, out useParticipantState) && (useParticipantState.Squad == null || useParticipantState.Squad.Count == 0))
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            ParticipantState offerParticipantState;
            if (GetParticipantState(user.clan_id, userPreBattleState.toUserId, out offerParticipantState) && (offerParticipantState.Squad == null || offerParticipantState.Squad.Count == 0))
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            requestResult = new ConfirmedBattleRequestResult { toUserId = userPreBattleState.toUserId };

            return Error.OK;
        }

        public Error OfferSelf(User user, bool offer)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (tournament == null || !tournament.IsAvailable())
                return Error.ERROR_TOURNAMENT_NOT_AVAILABLE;

            if (user.clan_id <= 0)
            {
                RemoveOffer(user);
                return Error.USER_NOT_CLAN_MEMBER;
            }

            ParticipantState participantState;
            if (GetParticipantState(user.clan_id, user.id, out participantState) && (participantState.Squad == null || participantState.Squad.Count == 0))
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            if (offer)
            {
                AddOffer(user);
                RemoveInvite(user.id);
            }
            else
            {
                RemoveOffer(user);
            }

            return Error.OK;
        }

        public Error ConfirmBattle(User user, int offerUserId)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (tournament == null || !tournament.IsAvailable())
                return Error.ERROR_TOURNAMENT_NOT_AVAILABLE;

            User offerUser;
            if (!userService.GetUserByUserId(offerUserId, out offerUser))
                return Error.USER_NOT_FOUND;

            if (IsUserInOffer(user.clan_id, user.id) || IsUserInBattle(user.clan_id, user.id))
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            if (IsUserInOffer(offerUser.clan_id, offerUser.id) || IsUserInBattle(offerUser.clan_id, offerUser.id))
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            if (user.clan_id <= 0 || user.clan_id != offerUser.clan_id)
                return Error.USER_NOT_CLAN_MEMBER;

            PreBattleState data;
            if (GetPreBattleState(offerUser.id, out data) && data.isConfirmed)
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            UpdateInvite(offerUserId, user.id, true, false, true);

            return Error.OK;
        }

        public Error CancelConfirmBattle(User user, int offerUserId)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (tournament == null || !tournament.IsAvailable())
                return Error.ERROR_TOURNAMENT_NOT_AVAILABLE;

            User offerUser;
            if (!userService.GetUserByUserId(offerUserId, out offerUser))
                return Error.USER_NOT_FOUND;

            //RemoveInvite(user.id);
            UpdateInvite(user.id, offerUserId, false, true, false);

            return Error.OK;
        }

        public Error AcceptConfirmedInvite(User user, int invitedUserId)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (tournament == null || !tournament.IsAvailable())
                return Error.ERROR_TOURNAMENT_NOT_AVAILABLE;

            if (!IsUserReadyToBattleByInvite(user.id, invitedUserId))
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            User invitedUser;
            if (!userService.GetUserByUserId(invitedUserId, out invitedUser))
                return Error.USER_NOT_FOUND;

            PreBattleState userPreBattleState;
            if (GetPreBattleState(user.id, out userPreBattleState) && userPreBattleState.isConfirmed)
                return Error.INCORRECT_VALUE;

            PreBattleState offerUserPreBattleState;
            if (GetPreBattleState(invitedUser.id, out offerUserPreBattleState) && offerUserPreBattleState.isConfirmed)
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            if (IsUserInBattle(user.clan_id, user.id))
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            if (IsUserInBattle(invitedUser.clan_id, invitedUser.id) || IsUserInOffer(invitedUser.clan_id, invitedUser.id))
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            if (user.clan_id <= 0 || user.clan_id != invitedUser.clan_id)
                return Error.USER_NOT_CLAN_MEMBER;

            AddOrUpdatePreBattleState(user, invitedUser.id, true);
            AddOrUpdatePreBattleState(invitedUser, user.id, true);

            return Error.OK;
        }

        public Error AcceptOffer(User user, int offerUserId)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (tournament == null || !tournament.IsAvailable())
                return Error.ERROR_TOURNAMENT_NOT_AVAILABLE;

            User offerUser;
            if (!userService.GetUserByUserId(offerUserId, out offerUser))
                return Error.USER_NOT_FOUND;

            TournamentInvite tournamentInvite;
            if (GetInvite(offerUserId, out tournamentInvite) && (tournamentInvite.accepted || tournamentInvite.ready))
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            PreBattleState userPreBattleState;
            if (GetPreBattleState(user.id, out userPreBattleState) && userPreBattleState.isConfirmed)
                return Error.INCORRECT_VALUE;

            PreBattleState offerUserPreBattleState;
            if (GetPreBattleState(offerUser.id, out offerUserPreBattleState) && offerUserPreBattleState.isConfirmed)
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            if (IsUserInBattle(user.clan_id, user.id))
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            if ((UserService.IsUserOnline(offerUser.id) && !IsUserInOffer(offerUser.clan_id, offerUser.id)) || IsUserInBattle(offerUser.clan_id, offerUser.id))
                return Error.ERROR_TOURNAMENT_USER_NOT_AVAILABLE;

            if (user.clan_id <= 0 || user.clan_id != offerUser.clan_id)
                return Error.USER_NOT_CLAN_MEMBER;

            AddOrUpdatePreBattleState(user, offerUser.id, true);

            if (UserService.IsUserOnline(offerUser.id))
            {
                AddOrUpdatePreBattleState(offerUser, user.id, true);
            }

            return Error.OK;
        }

        public Error GetOffers(User user, out List<TournamentParticipant> requestResult)
        {
            requestResult = null;

            if (user == null)
                return Error.USER_NOT_FOUND;

            if (user.clan_id <= 0)
                return Error.USER_NOT_CLAN_MEMBER;

            if (tournament == null || !tournament.IsAvailable())
                return Error.ERROR_TOURNAMENT_NOT_AVAILABLE;

            requestResult = GetParticipants(user, exludeCurrentUser: true);

            return Error.OK;
        }

        public Error GetTournament(User user, double timeNow, out  TournamentRequestResult result)
        {
            result = null;

            if (user == null)
                return Error.USER_NOT_FOUND;

            if (user.clan_id <= 0)
                return Error.USER_NOT_CLAN_MEMBER;

            lock (lockTournament)
            {
                if (tournament != null && !tournament.IsAvailable())
                {
                    SendRewards(timeNow);
                    tournament = null;
                    return Error.ERROR_TOURNAMENT_NOT_AVAILABLE;
                }

                DataHolder<int, int, int> tournamentTime = null;
                if (tournament == null && !GetTournamentStartTime(tierRanges[user.Tier], out tournamentTime))
                {
                    SaveUnitsState(user, new int[0]);
                    return Error.ERROR_TOURNAMENT_NOT_AVAILABLE;
                }                    

                if (tournament == null)
                {
                    //new tournament
                    ResetTournament(tournamentTime);
                    tournament = new Tournament { startTime = tournamentTime };
                }

                //add clan members as participants for tournament
                TryToAddClanParticipants(user);
            }

            var battleState = GetBattleState(user.clan_id) ?? new BattleState();

            result = new TournamentRequestResult();
            result.points = battleState.points;
            result.place = GetTournamentPlace(user);
            result.participant = GetParticipant(user);
            result.participants = GetParticipants(user, exludeCurrentUser: true);
            var top = topService.GetTournamentTop();
            result.top = top.Take(3).ToList();
            var div = top.Find(a => a.clanId == user.clan_id);
            if (div != null) result.top.Add(div);
            return Error.OK;
        }

        public Error StartBattle(User user, double timeNow)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (user.clan_id <= 0)
                return Error.USER_NOT_CLAN_MEMBER;

            if (tournament == null || !tournament.IsAvailable())
                return Error.ERROR_TOURNAMENT_NOT_AVAILABLE;

            ParticipantState participantState;
            if (!GetParticipantState(user.clan_id, user.id, out participantState))
                return Error.INCORRECT_VALUE;

            if (participantState.Squad == null || participantState.Squad.Count == 0)
                return Error.INCORRECT_VALUE;

            participantState.battleStartTime = Util.GetMs();
            RemovePreBattleState(user.id);
            RemoveInvite(user.id);
            RemoveOffer(user);

            return Error.OK;
        }

        public Error EndBattle(User user, int points, double timeNow)
        {
            if (user == null)
                return Error.USER_NOT_FOUND;

            if (user.clan_id <= 0)
                return Error.USER_NOT_CLAN_MEMBER;

            if (tournament == null)
                return Error.INCORRECT_CONFIG;

            ParticipantState participantState;
            if (GetParticipantState(user.clan_id, user.id, out participantState))
            {
                participantState.battleStartTime = 0;
            }

            lock (lockBattleState)
            {
                BattleState result;
                if (!battleStateData.TryGetValue(user.clan_id, out result))
                {
                    result = new BattleState();
                    battleStateData.Add(user.clan_id, result);
                }

                result.points += Math.Abs(points);

                var userTournament = GetOrCreateUserTournament(user);
                userTournament.points += Math.Abs(points);
                userTournament.updateTime = (double)DateTime.UtcNow.Ticks / TimeSpan.TicksPerMillisecond;
                userTournament.Update();
            }

            return Error.OK;
        }

        public void LogTournamentBattle(User user, int room, int win, int points, double time)
        {
            UserTournamentBattles battle = new UserTournamentBattles { userId = user.id, clanId = user.clan_id, roomId = room, win = win, points = points, time = time };
            var db = new TanksDBDataContext();
            db.UserTournamentBattles.InsertOnSubmit(battle);
            db.SubmitChanges();
        }

        private void RemoveOldUserTournament(DataHolder<int, int, int> tournamentTime, TanksDBDataContext dbContext = null)
        {
            var timeNow = DateTime.UtcNow;
            var sunday = (double)timeNow.AddDays(-(int)timeNow.DayOfWeek + 1).Date.Ticks / TimeSpan.TicksPerMillisecond;            
            var startDateTime = (double)(timeNow.Date.AddHours(tournamentTime.Value1).Ticks / TimeSpan.TicksPerMillisecond);

            var db = dbContext ?? new TanksDBDataContext();
            db.UserTournaments.DeleteAllOnSubmit(from c in db.UserTournaments select c);
            db.SubmitChanges();
        }

        private UserTournament GetOrCreateUserTournament(User user, TanksDBDataContext dbContext = null)
        {
            var db = dbContext ?? new TanksDBDataContext();
            var custs = Query.GetUserTournamentByClanId(db, user.clan_id);

            var userTournament = Enumerable.FirstOrDefault(custs.Select(ut => new UserTournament(ut)));
            if (userTournament != null)
                return userTournament;

            var userTournaments = new UserTournaments { clanId = user.clan_id, points = 0, updateTime = 0 };
            db.UserTournaments.InsertOnSubmit(userTournaments);
            db.SubmitChanges();

            return new UserTournament(userTournaments);
        }

        private TournamentParticipant GetParticipant(User user, TanksDBDataContext dbContext = null)
        {
            var db = dbContext ?? new TanksDBDataContext();

            var custs = Query.GetUserByUserId(db, user.id);

            var result = Enumerable.FirstOrDefault(custs.Select(us => new TournamentParticipant(us)));
            if (result == null)
                return null;

            PreBattleState preBattleState;
            result.isOnline = UserService.IsUserOnline(user.id);
            result.isBusy = GetPreBattleState(user.id, out preBattleState) && preBattleState.isConfirmed;
            result.power = CalculateUserPower(user.clan_id, user.id, ParticipantUnitTop);
            result.isInBattle = IsUserInBattle(user.clan_id, user.id);
            result.isOffer = IsUserInOffer(user.clan_id, user.id);

            ParticipantState participantState;
            if (GetParticipantState(user.clan_id, user.id, out participantState))
            {
                result.squad = fightService.GetUserUnits(participantState.Squad.ToArray());
            }

            return result;
        }

        private List<TournamentParticipant> GetParticipants(User user, TanksDBDataContext dbContext = null, bool exludeCurrentUser = false)
        {
            var db = dbContext ?? new TanksDBDataContext();

            var result = new List<TournamentParticipant>();
            var data = new List<TournamentParticipant>();
            data.AddRange(Query.GetUsersByClan(db, user.clan_id).Select(us => new TournamentParticipant(us)));

            foreach (var tournamentMember in data)
            {
                if (exludeCurrentUser && user.id == tournamentMember.id)
                    continue;

                var isUserOnline = UserService.IsUserOnline(tournamentMember.id);
                if (!isUserOnline && IsUserInOffer(tournamentMember.clanId, tournamentMember.id))
                    RemoveOffer(tournamentMember.clanId, tournamentMember.id);

                if (!isUserOnline)
                    RemoveInvite(tournamentMember.id);

                PreBattleState preBattleState;
                tournamentMember.isOnline = isUserOnline;
                tournamentMember.isBusy = isUserOnline && (GetPreBattleState(tournamentMember.id, out preBattleState) && preBattleState.isConfirmed);
                tournamentMember.power = CalculateUserPower(tournamentMember.clanId, tournamentMember.id, ParticipantUnitTop);
                tournamentMember.isInBattle = isUserOnline && IsUserInBattle(tournamentMember.clanId, tournamentMember.id);
                tournamentMember.isOffer = isUserOnline && IsUserInOffer(tournamentMember.clanId, tournamentMember.id);
                tournamentMember.isRejected = isUserOnline && (IsInviteRejected(user.id, tournamentMember.id) || IsInviteRejected(tournamentMember.id, user.id));
                tournamentMember.isAccepted = isUserOnline && IsInviteAccepted(user.id, tournamentMember.id);
                tournamentMember.isReady = isUserOnline && IsUserReadyToBattleByInvite(user.id, tournamentMember.id);

                ParticipantState participantState;
                if (GetParticipantState(tournamentMember.clanId, tournamentMember.id, out participantState))
                    tournamentMember.squad = fightService.GetUserUnits(participantState.Squad.ToArray());

                result.Add(tournamentMember);
            }

            return result;
        }

        public int GetTournamentPlace(User user)
        {
            lock (lockBattleState)
            {
                int place = 0;
                bool found = false;
                var data = battleStateData.OrderByDescending(pair => pair.Value.points);
                foreach (var entry in data)
                {
                    place++;
                    if (entry.Key == user.clan_id)
                    {
                        found = true;
                        break;
                    }
                }

                return found ? place : place == 0 ? 0 : place + 1;
            }
        }

        public TournamentInvite GetOpenInvite(int userId)
        {
            if (tournament == null || !tournament.IsAvailable())
                return null;

            TournamentInvite invite;
            return GetInvite(userId, out invite) && !invite.accepted && !invite.rejected && !invite.ready ? invite : null;
        }

        private void ResetTournament(DataHolder<int, int, int> tournamentTime)
        {
            tournament = null;

            participantsData.Clear();
            offersData.Clear();
            preBattleStateData.Clear();
            battleStateData.Clear();
            invitesData.Clear();

            RemoveOldUserTournament(tournamentTime);
        }

        public void SendRewards(double timeNow)
        {
            var time = DateTime.UtcNow;
            if (time.DayOfWeek != DayOfWeek.Sunday) return;
            var mailService = new MailService();            
            var minPoints = Define.Get(Def.ClanTournamentRewardMinPoints);
            var tournamentDivisionTops = topService.GetTournamentTop(reset: true);
            participantsData.Clear();
            battleStateData.Clear();
            foreach (var topEntry in tournamentDivisionTops)
            {
                if (topEntry.points < minPoints)
                    continue;

                var rewardData = tournamentSettings.rewards.Find(rewardHolder => topEntry.place >= rewardHolder.Value1 && topEntry.place <= rewardHolder.Value2);
                if (rewardData == null)
                    continue;

                var clanMembers = GetClanMemberWhoPlay(topEntry.clanId, timeNow);
                foreach (var clanMember in clanMembers)
                {
                    mailService.RewardNotification(clanMember, timeNow, "clanBattle.mailTopic", "clanBattle.mailMsg", Util.ToJson(rewardData.Value3));
                }
            }

        }

        private List<int> GetClanMemberWhoPlay(int clanId, double time)
        {           
            var db = new TanksDBDataContext();
            var list = Query.ListUsersWhoParticipate(db, clanId, time).ToList();
            return list;
        }

        private int CalculateUserPower(int clanId, int userId, int top)
        {
            ParticipantState participantState;
            if (!GetParticipantState(clanId, userId, out participantState) || participantState.Squad == null)
                return 0;

            var userUnits = new List<UserUnit>();
            foreach (var userUnitId in participantState.Squad)
            {
                var userUnit = new UserUnit(userUnitId);
                if (userUnit.Id == 0)
                    continue;

                userUnits.Add(userUnit);
            }

            userUnits.Sort((u1, u2) => u2.power.CompareTo(u1.power));

            var power = 0;
            for (int i = 0; i < Math.Min(top, userUnits.Count); i++)
            {
                power += userUnits[i].power;
            }

            return power;
        }

        private bool GetTournamentStartTime(int group, out DataHolder<int, int, int> result)
        {
            result = null;

            var timeNow = DateTime.UtcNow;

            List<DataHolder<int, int, int>> data;
            if (!timeTable.TryGetValue(timeNow.DayOfWeek, out data))
                return false;

            foreach (var entry in data)
            {
                if (group != entry.Value2) return false;
                var startDateTime = timeNow.Date.AddHours(entry.Value1);
                var endDateTime = startDateTime.AddMinutes(entry.Value3);                
                if (timeNow >= startDateTime && timeNow <= endDateTime)
                {
                    result = entry;
                    return true;
                }
            }

            return false;
        }

        private void TryToAddClanParticipants(User user)
        {
            var tournamentParticipants = GetParticipants(user);
            foreach (var tournamentParticipant in tournamentParticipants)
            {
                ParticipantState participantState;
                if (GetParticipantState(tournamentParticipant.clanId, tournamentParticipant.id, out participantState))
                    continue;

                AddParticipant(tournamentParticipant.clanId, tournamentParticipant.id);
                var userUnitsTop = fightService.GetUserUnitsTop(tournamentParticipant.id, ParticipantUnitTop);
                if (userUnitsTop != null)
                {
                    UpdateSquad(tournamentParticipant.clanId, tournamentParticipant.id, userUnitsTop.Select(userUnit => userUnit.Id).ToList());
                }
            }
        }

        private void AddOrUpdatePreBattleState(User fromUser, int toUserId, bool confirm)
        {
            lock (lockPreBattleState)
            {
                PreBattleState data;
                if (!preBattleStateData.TryGetValue(fromUser.id, out data))
                {
                    data = new PreBattleState();
                    preBattleStateData.Add(fromUser.id, data);
                }

                data.fromUserId = fromUser.id;
                data.toUserId = toUserId;
                data.isConfirmed = confirm;
                data.timeOut = Util.GetMs();
            }
        }

        private void RemovePreBattleState(int userId)
        {
            lock (lockPreBattleState)
            {
                preBattleStateData.Remove(userId);
            }
        }

        private bool GetPreBattleState(int userId, out PreBattleState result)
        {
            lock (lockPreBattleState)
            {
                if (!preBattleStateData.TryGetValue(userId, out result))
                    return false;

                if (Util.GetMs() >= result.timeOut + TimeOutForOfferMs)
                {
                    RemovePreBattleState(userId);
                    return false;
                }

                return true;
            }
        }

        private BattleState GetBattleState(int clanId)
        {
            lock (lockBattleState)
            {
                BattleState result;
                return battleStateData.TryGetValue(clanId, out result) ? result : null;
            }
        }

        private void AddParticipant(int clanId, int userId)
        {
            lock (lockParticipants)
            {
                Dictionary<int, ParticipantState> data;
                if (!participantsData.TryGetValue(clanId, out data))
                {
                    data = new Dictionary<int, ParticipantState>();
                    participantsData.Add(clanId, data);
                }

                ParticipantState result;
                if (!data.TryGetValue(userId, out result))
                {
                    result = new ParticipantState();
                    data.Add(userId, result);
                }
            }
        }

        public bool RemoveParticipant(int clanId, int userId)
        {
            lock (lockParticipants)
            {
                Dictionary<int, ParticipantState> data;
                if (!participantsData.TryGetValue(clanId, out data))
                    return false;

                return data.Remove(userId);
            }
        }

        private void UpdateSquad(int clanId, int userId, List<int> squad)
        {
            lock (lockParticipants)
            {
                Dictionary<int, ParticipantState> data;
                if (!participantsData.TryGetValue(clanId, out data))
                {
                    data = new Dictionary<int, ParticipantState>();
                    participantsData.Add(clanId, data);
                }

                ParticipantState result;
                if (!data.TryGetValue(userId, out result))
                {
                    result = new ParticipantState();
                    data.Add(userId, result);
                }

                result.Squad = squad;
            }
        }

        public bool GetParticipantState(int clanId, int userId, out ParticipantState result)
        {
            lock (lockParticipants)
            {
                result = null;
                Dictionary<int, ParticipantState> data;
                return participantsData.TryGetValue(clanId, out data) && data.TryGetValue(userId, out result);
            }
        }

        private bool IsUserInBattle(int clanId, int userId)
        {
            lock (lockParticipants)
            {
                Dictionary<int, ParticipantState> data;
                ParticipantState result;
                return participantsData.TryGetValue(clanId, out data) && data.TryGetValue(userId, out result) && Util.GetMs() <= (result.battleStartTime + TimeOutInBattleMs);
            }
        }

        private bool IsUserInOffer(int clanId, int userId)
        {
            lock (lockOffers)
            {
                Dictionary<int, bool> data;
                return offersData.TryGetValue(clanId, out data) && data.ContainsKey(userId);
            }
        }

        private void AddOffer(User user)
        {
            lock (lockOffers)
            {
                Dictionary<int, bool> data;
                if (!offersData.TryGetValue(user.clan_id, out data))
                {
                    data = new Dictionary<int, bool>();
                    offersData.Add(user.clan_id, data);
                }

                bool result;
                if (!data.TryGetValue(user.id, out result))
                    data.Add(user.id, true);
            }
        }

        private void RemoveOffer(User user)
        {
            RemoveOffer(user.clan_id, user.id);
        }

        private void RemoveOffer(int clanId, int userId)
        {
            lock (lockOffers)
            {
                Dictionary<int, bool> data;
                if (offersData.TryGetValue(clanId, out data))
                {
                    data.Remove(userId);
                }
            }
        }

        private bool IsUserInvitedBy(int fromUserId, int toUserId)
        {
            TournamentInvite tournamentInvite;
            return GetInvite(toUserId, out tournamentInvite) && tournamentInvite.fromUserId == fromUserId;
        }

        private bool IsInviteAccepted(int fromUserId, int toUserId)
        {
            TournamentInvite tournamentInvite;
            return GetInvite(toUserId, out tournamentInvite) && tournamentInvite.fromUserId == fromUserId && tournamentInvite.accepted;
        }

        private bool IsInviteRejected(int fromUserId, int toUserId)
        {
            TournamentInvite tournamentInvite;
            return GetInvite(toUserId, out tournamentInvite) && tournamentInvite.fromUserId == fromUserId && tournamentInvite.rejected;
        }

        private bool IsUserReadyToBattleByInvite(int fromUserId, int toUserId)
        {
            TournamentInvite tournamentInvite;
            return GetInvite(toUserId, out tournamentInvite) && tournamentInvite.fromUserId == fromUserId && tournamentInvite.accepted && tournamentInvite.ready;
        }

        private bool GetInvite(int userId, out  TournamentInvite result)
        {
            lock (lockInvites)
            {
                return invitesData.TryGetValue(userId, out result);
            }
        }

        private void TryAddInvite(User fromUser, int toUserId)
        {
            TournamentInvite tournamentInvite;
            if (GetInvite(toUserId, out tournamentInvite) && tournamentInvite.accepted)
                return;

            lock (lockInvites)
            {
                invitesData[toUserId] = new TournamentInvite { name = fromUser.Name, fromUserId = fromUser.id, toUserId = toUserId, accepted = false, rejected = false };
            }
        }

        private void UpdateInvite(int fromUserId, int toUserId, bool accepted, bool rejected, bool readyToBattle)
        {
            TournamentInvite tournamentInvite;
            if (!GetInvite(toUserId, out tournamentInvite))
                return;

            lock (lockInvites)
            {
                tournamentInvite.fromUserId = fromUserId;
                tournamentInvite.accepted = accepted;
                tournamentInvite.rejected = rejected;
                tournamentInvite.ready = readyToBattle;
            }
        }

        private void RemoveInvite(int userId)
        {
            lock (lockInvites)
            {
                invitesData.Remove(userId);
            }
        }

        public string TournamentSettingsToJson()
        {
            return Util.ToJson(tournamentSettings);
        }
    }

    public class TournamentSettings
    {
        public Dictionary<DayOfWeek, List<DataHolder<int, int, int>>> timeTable;
        public List<DataHolder<int, int, List<Bonus>>> rewards;
    }

    public class Tournament
    {
        public DataHolder<int, int, int> startTime;

        public bool IsAvailable()
        {
            if (startTime == null)
                return false;

            var timeNow = DateTime.UtcNow;

            var startDateTime = timeNow.Date.AddHours(startTime.Value1);
            var endDateTime = startDateTime.AddMinutes(startTime.Value3);

            return timeNow >= startDateTime && timeNow <= endDateTime;
        }
    }

    public class BattleState
    {
        public int points;
        public int win;
        public int lose;
    }

    public class ParticipantState
    {
        public double battleStartTime;
        private List<int> squad;

        public List<int> Squad
        {
            get { return squad ?? (squad = new List<int>()); }
            set { squad = value; }
        }
    }

    public class PreBattleState
    {
        public bool isConfirmed;
        public int fromUserId;
        public int toUserId;
        public double timeOut;
    }

    public class TournamentInvite
    {
        public string name;
        public int fromUserId;
        public int toUserId;
        public bool accepted;
        public bool rejected;
        public bool ready;
    }

    public class TournamentDivisionTop
    {
        public int clanId;
        public string clanLeaderName;
        public string clanLogo;
        public string clanName;

        public int place;
        public int points;
    }

    public class DeathMatchTop
    {
        public int userId;                
        public string playerName;
        public int place;
        public int battles;
        public int lvl;
        public string clanLogo;
        public string clanName;
    }

    public class DeathMatchEvent
    {
        public int battles;
        public int place;
        public List<DeathMatchTop> top;
        public double endTime;
    }
    public class TournamentRequestResult
    {
        public int points;
        public int place;
        public TournamentParticipant participant;
        public List<TournamentParticipant> participants;
        public List<TournamentDivisionTop> top;
    }

    public class ConfirmedBattleRequestResult
    {
        public int toUserId;
    }
}