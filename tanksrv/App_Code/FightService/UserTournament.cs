using System.Linq;

public class UserTournament
{
    public int id;
    public int clanId;
    public int points;
    public double updateTime;

    public UserTournament(UserTournaments userTournaments)
    {
        id = userTournaments.id;
        clanId = userTournaments.clanId;
        points = userTournaments.points;
        updateTime = userTournaments.updateTime;
    }

    public void Update()
    {
        var db = new TanksDBDataContext();
        var custs = from c in db.UserTournaments where c.id == id select c;

        foreach (var entry in custs)
        {
            entry.clanId = clanId;
            entry.points = points;
            entry.updateTime = updateTime;
        }
        db.SubmitChanges();
    }
}