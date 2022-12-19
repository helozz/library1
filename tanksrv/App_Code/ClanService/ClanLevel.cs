public class ClanLevel
{
    public int id;
    public int level;
    public int experience;
    public int place;

    public ClanLevel(ClanLevels clanLevels)
    {
        id = clanLevels.id;
        level = clanLevels.level;
        experience = clanLevels.experience;
        place = clanLevels.place;
    }
}