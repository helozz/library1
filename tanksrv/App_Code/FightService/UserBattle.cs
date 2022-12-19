using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using TW;

public class UserBattle
{
    [JsonProperty(PropertyName = "i")]
    public int id;
    [JsonProperty(PropertyName = "ui")]
    public int userId;
    [JsonProperty(PropertyName = "ib")]
    public bool isBot;
    [JsonProperty(PropertyName = "p")]
    public int place;
    [JsonProperty(PropertyName = "pbp")]
    public int battles;
    [JsonProperty(PropertyName = "bp")]
    public int bestPlace;
    [JsonProperty(PropertyName = "sp")]
    public int squadPower;
    [JsonProperty(PropertyName = "r")]
    public int rating;
    [JsonProperty(PropertyName = "p0")]
    public int place0;
    [JsonProperty(PropertyName = "ab")]
    public double attackBonus;
    [JsonProperty(PropertyName = "db")]
    public double defenseBonus;
    [JsonProperty(PropertyName = "up")]
    public UserProfile userProfile;
    [JsonProperty(PropertyName = "su")]
    public List<UserUnit> squadUnits;
    [JsonProperty(PropertyName = "sc")]
    public List<UserCrew> squadCrews;

    public UserBattle()
    {
    }

    public UserBattle(UserBattles userBattles, UserProfile userProfile = null, List<UserUnit> squadUnits = null, List<UserCrew> squadCrews = null)
    {
        id = userBattles.id;
        userId = userBattles.userId;
        isBot = userBattles.isBot;
        place = userBattles.place;
        battles = userBattles.prevBestPlace;
        bestPlace = userBattles.bestPlace;
        squadPower = userBattles.squadPower;
        this.userProfile = userProfile;
        this.squadUnits = squadUnits;
        this.squadCrews = squadCrews;
        this.attackBonus = userBattles.attackBonus;
        this.defenseBonus = userBattles.defenseBonus;
        this.place0 = userBattles.place0;
        this.rating = userBattles.rating;
    }

    public void Update()
    {
        var db = new TanksDBDataContext();
        var custs = from c in db.UserBattles where c.id == id select c;

        foreach (var ubs in custs)
        {
            ubs.userId = userId;
            ubs.isBot = isBot;
            ubs.place = place;
            ubs.prevBestPlace = battles;
            ubs.bestPlace = bestPlace;
            ubs.squadPower = squadPower;
            ubs.rating = rating;
            ubs.place0 = place0;
            ubs.attackBonus = attackBonus;
            ubs.defenseBonus = defenseBonus;
        }
        db.SubmitChanges();
    }
}