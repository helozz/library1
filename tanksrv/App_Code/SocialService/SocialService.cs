using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;
using TW;

/// <summary>
/// Summary description for SocialService
/// </summary>
public class SocialService : AbstractService
{
    public class FriendList : IToJson
    {
        public int userId;
        public int level;
        public string socialId;
        public string name;
        public int rating;
        public int tier;
        public int clan_id;
        public string clan_name;
        public string clan_icon;
        public int days;
        public int activity;

        public FriendList()
        {

        }

        public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
        {
            json.BeginObject();
            json.Name("id").Value(userId);
            json.Name("n").Value(name);
            json.Name("l").Value(level);
            json.Name("s").Value(socialId);
            json.Name("r").Value(rating);
            json.Name("t").Value(tier);
            json.Name("ci").Value(clan_id);
            json.Name("cn").Value(clan_name);
            json.Name("cl").Value(clan_icon);
            json.Name("d").Value(days);
            json.Name("a").Value(activity);  
            json.EndObject();
        }
    }

	public SocialService()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void SetLastExp(User user)
    {
        //Everyday check user exp and mark activity
        var db = new TanksDBDataContext();
        var userCusts = Query.GetUserFriend(db, user.id);
        var u = Enumerable.FirstOrDefault(userCusts);
        if (u == null) return;
        if (u.lastExp != user.Experience)
        {            
            u.activity = 1;
            u.lastExp = user.Experience;                                     
        }
        else u.activity = 0;   
        db.SubmitChanges();
    }

    public int CheckFriendsActivity(User user)
    {
        // Check and count users which were online one day before
        var db = new TanksDBDataContext();
        var custs = Query.GetUsersByRef(db, user.id);
        var refUsers = Enumerable.ToList(custs);                
        if (Util.IsValidType(user.Flags, (int)Flag.RewardClaimed) || refUsers.Count == 0) return 0;        
        return refUsers.Count;
    }

    public Error ClaimReward(User user)
    {
        var cnt = CheckFriendsActivity(user);
        if (cnt == 0) return Error.NOREWARD;
        //Apply gold
        user.AddGoldWithoutLimits(cnt * (int)Define.Get(Def.UserFriendReward));        
        user.Flags = Util.AddType(user.Flags, (int)Flag.RewardClaimed);
        user.Saving();
        return Error.OK;
    }

    public Error AddFriend(User user, string[] friendId)
    {
        // When friend login in game first time - adding him
        var db = new TanksDBDataContext();
        bool error = false;
        foreach (var f in friendId)
        {
            var userRew = new UserFriendsReward();
            userRew.userId = 0;
            userRew.socialId = f;
            userRew.refId = user.id; // master 
            userRew.activity = -1;
            var custs = Query.GetUserFriendBySocId(db, f);
            var result = Enumerable.FirstOrDefault(custs);
            if (result != null)
            {
                error = true;
                continue;
            }
            else userRew.Save();

            var friendRew = new UserFriendsReward();
            friendRew.userId = user.id;
            friendRew.socialId = user.SocialID;
            friendRew.refId = 0;
            friendRew.activity = -1;
            friendRew.Save();
        }
        if (error) return Error.FRIEND_EXIST;  //ERRFRIENDEXISTS
        else return Error.OK;
    }

    public void ActivateFriend(int userId, string socId)
    {
        //Activate friend whom log in game
        var db = new TanksDBDataContext();
        var custs = Query.GetUserFriendBySocId(db, socId);
        var result = Enumerable.FirstOrDefault(custs);
        if (result == null) return;
        result.activity = 1;
        result.userId = userId;

        var custs2 = Query.GetUserFriend(db, result.refId);
        var master = Enumerable.FirstOrDefault(custs2);
        if (master == null) return;
        master.activity = 1;
        master.refId = userId;
        db.SubmitChanges();        
    }

    public Error DeleteFriend(string friendId)
    {
        var db = new TanksDBDataContext();
        var custs = Query.GetUserFriendBySocId(db, friendId);
        var result = Enumerable.FirstOrDefault(custs);
        if (result == null) return Error.NO_FRIEND; //ERRFRIEND
        db.UserFriendsRewards.DeleteOnSubmit(result);
        var custsFriend = Query.GetUserFriend(db, result.refId);
        var friend = Enumerable.FirstOrDefault(custsFriend);
        if (friend == null) return Error.NO_FRIEND; //ERRFRIEND
        db.UserFriendsRewards.DeleteOnSubmit(friend);
        db.SubmitChanges();
        return Error.OK;
    }

    public string GetFriendList(int userId, double timeNow)
    {
        var fightService = new FightService();
        var db = new TanksDBDataContext();
        var custs = Query.ListFriendUsers(db, userId);
        var listUsers = Enumerable.ToList(custs);
        var result = new List<FriendList>();
        if (listUsers.Count == 0) return Util.ToJson(result);        
        foreach (var f in listUsers)
        {
            var friendInfo = new FriendList();
            if (f.userId > 0)
            {
                var userBattle = fightService.GetUserBattleByUserId(f.userId);
                var userCusts = Query.GetUserByUserId(db, f.userId);
                var userInfo = Enumerable.FirstOrDefault(userCusts);
                friendInfo.userId = f.userId;
                friendInfo.name = userInfo.Name;
                friendInfo.level = userInfo.UserLevel;
                friendInfo.socialId = userInfo.SocialID;
                friendInfo.tier = userInfo.Tier;
                friendInfo.clan_id = userInfo.clan_id;
                friendInfo.rating = (userBattle != null) ? userBattle.place : 0;
                var lastLogin = timeNow - userInfo.lastLogin;
                friendInfo.days = (int)(lastLogin / 60000);
                if (friendInfo.days > 2160 && f.activity == 1)
                {
                    f.activity = 0;                    
                }
                friendInfo.activity = f.activity;
                var clanCusts = Query.GetClanById(db, userInfo.clan_id);
                var clanName = Enumerable.FirstOrDefault(clanCusts);
                if (clanName != null)
                {
                    friendInfo.clan_name = clanName.name;
                    friendInfo.clan_icon = clanName.logo;
                }
                else
                {
                    friendInfo.clan_name = "";
                    friendInfo.clan_icon = "";
                }            
            }
            else
            {
                friendInfo.userId = 0;
                friendInfo.name = "";
                friendInfo.level = 0;
                friendInfo.socialId = f.socialId;
                friendInfo.tier = 0;
                friendInfo.clan_id = 0;
                friendInfo.rating = 0;
                friendInfo.activity = f.activity;
                friendInfo.days = 0;
                friendInfo.clan_name = "";
            }
            result.Add(friendInfo);
        }
        db.SubmitChanges();
        return Util.ToJson(result);
    }
}