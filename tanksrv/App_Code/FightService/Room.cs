using Newtonsoft.Json;
using System.Collections.Generic;
using System.Threading;
using TW;

public class Room : IToJson
{
    private static int nextId;
    public int id;
    public bool open;
    public int power;
    public string mapName;
    public int maxPlayers;
    public MissionType type;
    public int missionId;
    public List<UserBattleInfo> players;
    public double timeStamp;
    public int tier; // room tier 1-3 = 1, 4-6 = 2, 7-9 = 3

    public Room(MissionType t, int pow = 0)
    {
        id = Interlocked.Increment(ref nextId);
        open = true;
        type = t;
        power = pow;
        players = new List<UserBattleInfo>();
        timeStamp = Util.GetMs();
    }

    public int GetPlayersCountBySide(UserBattleInfo.BattleSide side)
    {
        return GetPlayersBySide(side).Count;
    }

    public List<UserBattleInfo> GetPlayersBySide(UserBattleInfo.BattleSide side)
    {
        return players.FindAll(info => info.side == side);
    }

    public UserBattleInfo.BattleSide GetPlayerSide(int userId)
    {
        var userBattleInfo = players.Find(info => info.userProfile.id == userId);
        return userBattleInfo == null ? UserBattleInfo.BattleSide.Neutral : userBattleInfo.side;
    }

    public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
    {
        json.BeginObject();
        json.Name("id").Value(id);
        json.Name("p").Value(power);
        json.Name("o").Value(open);
        json.Name("n").Value(mapName);
        json.Name("mp").Value(maxPlayers);
        json.Name("mt").Value((int)type);
        json.Name("mi").Value(missionId);
        json.Name("t").Value(tier);
        json.Name("pl").BeginArray();
        foreach (UserBattleInfo ub in players)
        {
            json.BeginObject();
            json.Name("s").Value((int)ub.side);
            json.Name("sp").Value(ub.squadPower);
            json.Name("uu").BeginArray();
            foreach (UserUnit uu in ub.squadUnits)
            {
                json.BeginObject();
                json.Name("i").Value(uu.i);
                json.Name("u").Value(uu.u);
                json.Name("t").Value(uu.t);
                json.Name("h").Value(uu.h);
                json.Name("td").Value(uu.td);
                json.Name("sn").Value(uu.sn);
                json.Name("st").Value(uu.st);
                json.Name("en").Value(uu.en);
                json.Name("et").Value(uu.et);
                json.Name("rd").Value(uu.rd);
                json.Name("rr").Value(uu.rr);
                json.Name("up").Value(uu.upgrades);
                json.Name("fa").Value(uu.upgradesSet[(int)UpgradeType.frontArmor]);
                json.Name("ba").Value(uu.upgradesSet[(int)UpgradeType.backArmor]);
                json.Name("ra").Value(uu.upgradesSet[(int)UpgradeType.sideArmor]);
                json.Name("hx").Value(uu.upgradesSet[(int)UpgradeType.maxHP]);
                json.Name("s").Value(uu.upgradesSet[(int)UpgradeType.speed]);
                json.Name("ts").Value(uu.upgradesSet[(int)UpgradeType.turnSpeed]);
                json.Name("am").Value(uu.upgradesSet[(int)UpgradeType.minAccuracy]);
                json.Name("ax").Value(uu.upgradesSet[(int)UpgradeType.maxAccuracy]);
                json.Name("v").Value(uu.upgradesSet[(int)UpgradeType.visibilityRadius]);
                json.Name("g").Value(uu.upgradesSet[(int)UpgradeType.range]);
                json.Name("a").Value(uu.upgradesSet[(int)UpgradeType.aimingTime]);
                json.Name("rn").Value(uu.upgradesSet[(int)UpgradeType.reloadDuration]);
                json.Name("pc").Value(uu.upgradesSet[(int)UpgradeType.piercing]);
                json.Name("d").Value(uu.upgradesSet[(int)UpgradeType.damage]);
                json.Name("name").Value(uu.name);
                json.Name("mask").Value(uu.mask);
                json.Name("z").Value(uu.inZone);
                json.Name("p").Value(uu.power);
                json.Name("xc").Value(uu.sharingClanUnit);
                json.Name("xd").Value(uu.sharingData);
                json.Name("xt").Value(uu.sharingTime);
                json.Name("xu").Value(uu.sharingUser);
                json.EndObject();
            }
            json.EndArray();
            json.Name("uc").BeginArray();
            foreach (UserCrew uu in ub.squadCrews)
            {
                json.BeginObject();
                json.Name("i").Value(uu.id);
                json.Name("ui").Value(uu.userid);
                json.Name("ci").Value(uu.crewid);
                json.Name("s").Value(uu.side);
                json.Name("is").Value(uu.idSideBonus);
                json.Name("t").Value(uu.tier);
                json.Name("n").Value(uu.name);
                json.Name("l").Value(uu.lvl);
                json.Name("e").Value(uu.exp);
                json.Name("s1").Value(uu.skillid1);
                json.Name("s2").Value(uu.skillid2);
                json.Name("s3").Value(uu.skillid3);
                json.Name("s4").Value(uu.skillid4);
                json.Name("s5").Value(uu.skillid5);
                json.Name("sl1").Value(uu.skilllvl1);
                json.Name("sl2").Value(uu.skilllvl2);
                json.Name("sl3").Value(uu.skilllvl3);
                json.Name("sl4").Value(uu.skilllvl4);
                json.Name("sl5").Value(uu.skilllvl5);
                json.Name("sl6").Value(uu.skilllvl6);
                json.EndObject();
            }
            json.EndArray();
            json.Name("hab").Value(ub.hasAttackBonus);
            json.Name("hdb").Value(ub.hasDefenceBonus);
            json.Name("r").Value(ub.rating);
            json.Name("up").BeginObject();
            json.Name("i").Value(ub.userProfile.id);
            json.Name("n").Value(ub.userProfile.name);
            json.Name("l").Value(ub.userProfile.level);
            json.Name("r").Value(ub.userProfile.rating);
            if (ub.userProfile.clan != null)
            {
                json.Name("cp").Value(ub.userProfile.clan_position);
                json.Name("cl").Value(ub.userProfile.clan);
            }
            json.Name("s").Value(ub.userProfile.stats);
            json.EndObject();
            json.EndObject();
        }
        json.EndArray();
        json.EndObject();
    }
}