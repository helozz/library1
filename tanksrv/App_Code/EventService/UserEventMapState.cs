using System.Linq;

public class UserEventMapState
{
    public int id;
    public int userId;
    public int eventId;
    public int state;
    public int bonus;
    public int index;

    public UserEventMapState(UserEventMapStates userEvents)
    {
        id = userEvents.id;
        userId = userEvents.userId;
        eventId = userEvents.eventId;
        state = userEvents.state;
        bonus = userEvents.bonus;
        index = userEvents.index;
    }

    public void Update()
    {
        var db = new TanksDBDataContext();
        var custs = from c in db.UserEventMapStates where c.id == id select c;

        foreach (var ubs in custs)
        {
            ubs.state = state;
            ubs.bonus = bonus;
        }
        db.SubmitChanges();
    }

    protected bool Equals(UserEventMapState other)
    {
        return id == other.id;
    }

    public override bool Equals(object obj)
    {
        if (ReferenceEquals(null, obj)) return false;
        if (ReferenceEquals(this, obj)) return true;
        if (obj.GetType() != this.GetType()) return false;
        return Equals((UserEventMapState)obj);
    }

    public override int GetHashCode()
    {
        return id;
    }
}