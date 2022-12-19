using System;
using System.Linq;
using TW;

public class StateService : AbstractService
{
    public delegate bool Func(State state);

    private static readonly object lockGetOrCreate = new object();
    private static readonly object lockUpdate = new object();

    public static State GetOrCreate()
    {
        lock (lockGetOrCreate)
        {
            var db = new TanksDBDataContext();
            var custs = Query.GetState(db);

            var state = Enumerable.FirstOrDefault(custs.Select(states => new State(states)));
            if (state != null)
                return state;

            var entity = new States();

            db.States.InsertOnSubmit(entity);
            db.SubmitChanges();

            return new State(entity);
        }
    }

    public static void UpdateData(Func validate, Action<State> setData)
    {
        lock (lockUpdate)
        {
            var state = GetOrCreate();
            if (!validate(state))
                return;

            setData(state);
            state.Update();
        }
    }
}