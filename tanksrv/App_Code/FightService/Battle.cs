using System.Collections.Generic;
using Newtonsoft.Json;
using TW;

public class Battle
{
    public int id;
    public int league;
    public int fromPlace;
    public int toPlace;
    public int percentage;  
    public List<Bonus> dailyRewards;

    public Battle(Battles battles)
    {
        id = battles.id;
        league = battles.league;
        fromPlace = battles.fromPlace;
        toPlace = battles.toPlace;
        percentage = battles.percentage;
        dailyRewards = JsonConvert.DeserializeObject<List<Bonus>>(battles.dailyRewards);
    }
}