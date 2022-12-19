using System.Collections.Generic;
using System.Linq;
using TW;

public class UserBattleInfo
{
    public enum BattleSide  {Neutral, SideA, SideB};
    public int squadPower;
    public BattleSide side;
    public UserProfile userProfile;
    public List<UserUnit> squadUnits;
    public List<UserCrew> squadCrews;
    public bool hasAttackBonus;
    public bool hasDefenceBonus;
    public int rating;

    public UserBattleInfo()
    {

    }

    public UserBattleInfo(BattleSide side, int power, UserProfile userProfile, List<UserUnit> squadUnits, List<UserCrew> squadCrews, bool attackBonus=false, bool defenseBonus=false)
    {
        this.side = side;
        squadPower = power;
        this.userProfile = userProfile;
        this.squadUnits = squadUnits;
        this.squadCrews = squadCrews;
        this.hasAttackBonus = attackBonus;
        this.hasDefenceBonus = defenseBonus;
    }

    public UserBattleInfo(BattleSide side, UserBattle userBattle)
    {
        this.side = side;
        squadPower = userBattle.squadPower;
        this.squadUnits = userBattle.squadUnits;
        this.squadCrews = userBattle.squadCrews;
        this.rating = userBattle.rating;
        if (userBattle.userProfile == null)
        {     
            var userSevice = new UserService();
            this.userProfile = userSevice.GetUserProfile(userBattle.userId);                      
        }
        else this.userProfile = userBattle.userProfile;
        this.userProfile.rating = userBattle.rating;  // temporary hardcode
        this.hasAttackBonus = userBattle.attackBonus > Util.GetMs();
        this.hasDefenceBonus = userBattle.defenseBonus > Util.GetMs();
    }
    
}