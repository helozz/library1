using System.Linq;

public class State
{
    public int id;
    public double eventStartTime;
    public int eventMapIndex;

    public State(States states)
    {
        id = states.id;
        eventStartTime = states.eventStartTime;
        eventMapIndex = states.eventMapIndex;
    }

    public void Update()
    {
        var db = new TanksDBDataContext();
        var custs = from c in db.States where c.id == id select c;

        foreach (var ubs in custs)
        {
            ubs.eventStartTime = eventStartTime;
            ubs.eventMapIndex = eventMapIndex;
        }
        db.SubmitChanges();
    }
}