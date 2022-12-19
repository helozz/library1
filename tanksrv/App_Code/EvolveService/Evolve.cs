using System.Collections.Generic;
using Newtonsoft.Json;
using TW;

public class Evolve
{   
    public int id;
    public int defaultUnitId;
    public List<Bonus> requirements;

    public Evolve(Evolves evolves)
    {
        id = evolves.id;
        defaultUnitId = evolves.defaultUnitId;
        requirements = JsonConvert.DeserializeObject<List<Bonus>>(evolves.requirements);
    }
}