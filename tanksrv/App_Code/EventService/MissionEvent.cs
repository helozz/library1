using System.Collections.Generic;
using Newtonsoft.Json;
using TW;

public class MissionEvent
{
    public int id;
    public int eventId;
    public int minPower;
    public int maxPower;
    public int money;
    public double experience;
    public int parts;
    public List<Bonus> rewards;
    public int tier;

    public MissionEvent(MissionEvents events)
    {
        id = events.id;
        eventId = events.eventId;
        minPower = events.minPower;
        maxPower = events.maxPower;
        money = events.money;
        experience = events.experience;
        parts = events.parts;
        rewards = JsonConvert.DeserializeObject<List<Bonus>>(events.rewards);
        tier = events.tier;
    }
}