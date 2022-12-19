namespace TW
{
    public enum MissionType
    {
        none,//0
        PvPDeathMatch,//1
        PvPDomination,//2
        PvPBaseVsBase,//3
        PvEmission1,//4
        PvEmission2,//5
        PvEmission3,//6
        AsynchronousPvP,//7
        PvPDeathmatch2x2,//8
        PvPDomination2x2,//9
        PvPBaseVsBase2x2,//10
        PvEEventMission,//11
        PvEEventTargetMission,//12
    };

    public enum MissionDifficulty { none, VeryEasy, Easy, Normal, Hard, VeryHard };

    public enum LogType { Defence, Attack };
}