public class ClanSkillLevel
{
    public int id;
    public int index;
    public int level;
    public int clanLevel;
    public int money;

    public ClanSkillLevel(ClanSkillLevels clanSkillLevels)
    {
        id = clanSkillLevels.id;
        index = clanSkillLevels.index;
        level = clanSkillLevels.level;
        clanLevel = clanSkillLevels.clanLevel;
        money = clanSkillLevels.money;
    }
}