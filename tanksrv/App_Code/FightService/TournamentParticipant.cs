using TW;
using System.Collections.Generic;

namespace TW
{
    public class TournamentParticipant
    {
        public int id;
        public int clanId;
        public string name;
        public int level;
        public int position;

        public bool isOffer;
        public bool isBusy;
        public bool isOnline;
        public bool isInBattle;
        public bool isRejected; //is invite accepted
        public bool isAccepted; //is invite accepted
        public bool isReady; //is ready to battle by invite
        public int power;
        public List<UserUnit> squad;

        public TournamentParticipant(Users user)
        {
            id = user.id;
            clanId = user.clan_id;
            name = user.Name;
            level = user.UserLevel;
            position = user.clan_position;
        }
    }
}