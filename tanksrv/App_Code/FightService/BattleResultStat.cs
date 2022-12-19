using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
using TW;

/// <summary>
/// Сводное описание для BattleResultStat
/// </summary>
public class BattleResultStat : IToJson
{
    [JsonProperty(PropertyName = "i")]
    public int userId;
    [JsonProperty(PropertyName = "n")]
    public string name;
    [JsonProperty(PropertyName = "l")]
    public int lvl;
    [JsonProperty(PropertyName = "cn")]
    public string clanName;
    [JsonProperty(PropertyName = "sp")]
    public int squadPower;
    [JsonProperty(PropertyName = "tp")]
    public MissionType missionType;
    [JsonProperty(PropertyName = "gs")]
    public int _gameStatus = 0;
    [JsonProperty(PropertyName = "us")]
    public List<UnitBattleResult> _units = new List<UnitBattleResult>();
    [JsonProperty(PropertyName = "cp")]
    public int _controlPointsCount = 0;
    [JsonProperty(PropertyName = "du")]
    public List<DestroyedUnit> _enemyDamageTaken = new List<DestroyedUnit>();
    [JsonProperty(PropertyName = "sr")]
    public string _singleResultStr = "";
    [JsonProperty(PropertyName = "t")]
    public double timestamp;

    public BattleResultStat()
    {
        //
        // TODO: добавьте логику конструктора
        //
    }

    public void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json)
    {
        json.BeginObject();
        json.Value(userId);
        json.Value(name);
        json.Value(lvl);
        json.Value(clanName);
        json.Value(squadPower);
        json.Value((int)missionType);
        json.Value(_gameStatus);
        json.Value(_controlPointsCount);
        json.Value(_singleResultStr);
        json.Value(timestamp);
        json.Name("du").BeginArray();
        foreach (var unit in _enemyDamageTaken)
        {
            json.Value(unit.du);
            json.Value(unit.count);
            json.Value(unit.damage);
        }
        json.EndArray();
        json.Name("us").BeginArray();
        foreach (var unit in _units)
        {
            json.Value(unit.name);
            json.Value(unit.hangarId);
            json.Value(unit.HP);
            json.Value(unit.maxHP);
            json.Value(unit.shell_num);
            json.Value(unit.shell_num_onStart);
            json.Value(unit.hitCount);
            json.Value(unit.missCount);
            json.Value(unit.destroyedUnits);
            json.Value(unit.inflictedDamage);
            json.Value(unit.crewDamageType);
            json.Value(unit.exp);
            json.Value(unit.rating);
            json.Value(unit.money);
            json.Value(unit.vehicleClass);
            json.Value(unit.battleWounds);
            json.Value(unit.defaultUnitID);
            json.Value(unit.respawnCount);
            json.Value(unit.exchangedResult);
            json.Value(unit.noPiercingTaken);
            json.Value(unit.totalDistance);
            json.Value(unit.rearHitsGiven);
            json.Value(unit.damagedTanksIDs);
            json.Value(unit.damagedTanksStr);
            json.Value(unit.maxHitDistance);
            json.Value(unit.hitsWhileMoving);
            json.Value(unit.otherJSONStats);
            json.Value(unit.damageMade);
            json.Value(unit.damageTaken);
            json.Value(unit.piercingMade);
            json.Value(unit.piercingTaken);
            json.Value(unit.noPiercingMadeS);
            json.Value(unit.noPiercingTakenS);
            json.Value(unit.power);
        }
        json.EndObject();
    }

    public class DestroyedUnit
    {
        [JsonProperty(PropertyName = "du")]
        public int du;
        [JsonProperty(PropertyName = "cn")]
        public int count;
        [JsonProperty(PropertyName = "dm")]
        public int damage;

        public DestroyedUnit()
        {

        }
    }

    public class UnitBattleResult
    {

        public enum MedalGroup
        {
            none,
            DestroyedUnits,
            RelativeInflictedDamage,
            NoPiercingTaken,
            TotalDistance,
            Accuracy,
            AmmunitionSpent,
            RearHitsGiven,
            ReceivedDamage,
            DamagedTanksCount,
            MaxHitDistance,
            HitsWhileMoving
        }

        [JsonProperty(PropertyName = "nm")]
        public string name;
        [JsonProperty(PropertyName = "hi")]
        public Int32 hangarId;
        [JsonProperty(PropertyName = "hp")]
        public Int32 HP; //оставшийся уровень HP
        [JsonProperty(PropertyName = "mh")]
        public Int32 maxHP; //максимальный уровень HP
        [JsonProperty(PropertyName = "sn")]
        public Int32 shell_num; //оставшееся число снарядов        
        [JsonProperty(PropertyName = "sns")]
        public Int32 shell_num_onStart;

        [JsonProperty(PropertyName = "hc")]
        public Int32 hitCount;
        //кол-во попаданий		(	по отдельности. можно дополнительно сверять	)

        [JsonProperty(PropertyName = "mc")]
        public Int32 missCount; //кол-во промахов		(	кол-во патронов	)
        [JsonProperty(PropertyName = "dun")]
        public Int32 destroyedUnits; //уничтожено юнитов противника
        [JsonProperty(PropertyName = "id")]
        public Int32 inflictedDamage; //нанесенный урон
        [JsonProperty(PropertyName = "cdt")]
        public Int32 crewDamageType; //повреждения экипажа
        //получаем после обработки сервером
        [JsonProperty(PropertyName = "exp")]
        public Int32 exp; // опыт
        [JsonProperty(PropertyName = "r")]
        public Int32 rating; // рейтинг
        [JsonProperty(PropertyName = "m")]
        public double money; // деньга
        [JsonProperty(PropertyName = "tt")]
        public int vehicleClass;
        [JsonProperty(PropertyName = "bw")]
        public string battleWounds;
        [JsonProperty(PropertyName = "dui")]
        public Int32 defaultUnitID;
        [JsonProperty(PropertyName = "rc")]
        public int respawnCount;
        [JsonProperty(PropertyName = "er")]
        public bool exchangedResult;
        [JsonProperty(PropertyName = "npt")]
        public int noPiercingTaken;
        [JsonProperty(PropertyName = "td")]
        public float totalDistance;
        [JsonProperty(PropertyName = "rhg")]
        public int rearHitsGiven;
        [JsonProperty(PropertyName = "dti")]
        public List<int> damagedTanksIDs = new List<int>();
        [JsonProperty(PropertyName = "dts")]
        public string damagedTanksStr;
        [JsonProperty(PropertyName = "mhd")]
        public float maxHitDistance;
        [JsonProperty(PropertyName = "hwm")]
        public int hitsWhileMoving;
        [JsonProperty(PropertyName = "ojs")]
        public string otherJSONStats;
        [JsonProperty(PropertyName = "dm")]
        public int[] damageMade = new int[3];
        [JsonProperty(PropertyName = "dt")]
        public int[] damageTaken = new int[3];
        [JsonProperty(PropertyName = "pm")]
        public int[] piercingMade = new int[3];
        [JsonProperty(PropertyName = "pt")]
        public int[] piercingTaken = new int[3];
        [JsonProperty(PropertyName = "npm")]
        public int[] noPiercingMadeS = new int[3];
        [JsonProperty(PropertyName = "npts")]
        public int[] noPiercingTakenS = new int[3];
        [JsonProperty(PropertyName = "pw")]
        public int power;

        //calculated onShow battle statistics    
        [JsonProperty(PropertyName = "ms")]
        public float[] medalStats;
        [JsonProperty(PropertyName = "bmr")]
        public int battleMedalResult;
        [JsonProperty(PropertyName = "uc")]
        public int upgradesCount;

        public UnitBattleResult()
        {
            this.battleWounds = "";
            this.damagedTanksStr = "";
            this.otherJSONStats = "";
        }
    }
}