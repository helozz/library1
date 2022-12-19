using System.Collections.Generic;
using Newtonsoft.Json;
using TW;

public class SkillRequirement
{
    public int id;
    public int index;
    public int level;
    public int crewLevel;
    public List<Bonus> requirements;

    public SkillRequirement(SkillRequirements skillRequirements)
    {
        id = skillRequirements.id;
        index = skillRequirements.index;
        level = skillRequirements.level;
        crewLevel = skillRequirements.crewLevel;
        requirements = JsonConvert.DeserializeObject<List<Bonus>>(skillRequirements.requirements);
    }
}