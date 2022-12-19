public class TodoObjective
{
    public int id;
    public int todoId;
    public int points;
    public int count;

    public TodoObjective(TodoObjectives todoObjectives)
    {
        id = todoObjectives.id;
        todoId = todoObjectives.todoId;
        points = todoObjectives.points;
        count = todoObjectives.count;
    }
}