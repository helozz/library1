using System;

namespace TW
{
    public enum BonusType
    {
        Money,      //0
        Gold,       //1
        Crew,       //2
        [Obsolete("Not in use anymore")]
        PowerUp,    //3
        Experience, //4
        Details,    //5        
        Time,      //6
        Item,       //7
        Tank,       //8
        EventFuel,  //9
        EventReputation //10
    }
}