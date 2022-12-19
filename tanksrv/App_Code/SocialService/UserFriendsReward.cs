using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TW;

/// <summary>
/// Summary description for UserFriendsReward
/// </summary>
public class UserFriendsReward
{
    public int id;
    public int userId;
    public string socialId;
    public int refId;
    public int activity;

	public UserFriendsReward()
	{
		
	}

    public UserFriendsReward(UserFriendsRewards ufr)
    {
        this.id = ufr.id;
        this.userId = ufr.userId;
        this.socialId = ufr.socialId;
        this.refId = ufr.refId;
        this.activity = ufr.activity;
    }

    public void Save()
    {
        // insert
        var db = new TanksDBDataContext();
        UserFriendsRewards ent = new UserFriendsRewards();
        ent.userId = this.userId;
        ent.socialId = this.socialId;
        ent.refId = this.refId;
        ent.activity = this.activity;
        db.UserFriendsRewards.InsertOnSubmit(ent);
        db.SubmitChanges();        
    }
    
}