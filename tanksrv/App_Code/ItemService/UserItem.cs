
public class UserItem
{
    public enum Type
    {
        Resources,
        Construction,
        EvolvePart,
        ShopItem,
        ResurrectTank,
        Chest,
		OrderItem,
        Book,
        PowerUp,
        Exp
    }

    public int id;
    public int userId;
    public int itemId;
    public int amount;

    public UserItem(UserItems userItems)
    {
        id = userItems.id;
        userId = userItems.userId;
        itemId = userItems.itemId;
        amount = userItems.amount;
    }
}
