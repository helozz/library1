using System;
using System.Linq;

public class UserDeathMatch
{
    public int userId;
    public int battles;
    public string playerName;
    public int lvl;
    public string clanName = "";
    public string clanLogo = "";

    public UserDeathMatch(UserBattles userDM, TW.UserProfile userProfile)
    {        
        userId = userDM.userId;
        battles = userDM.prevBestPlace;
        playerName = userProfile.name;
        lvl = userProfile.level;
        if (userProfile.clan != null)
        {
            clanName = userProfile.clan.name;
            clanLogo = userProfile.clan.logo;
        }        
    }

}