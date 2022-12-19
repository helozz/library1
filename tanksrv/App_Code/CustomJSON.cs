namespace TW
{
    using System;
    using Newtonsoft.Json;

    public class BattleLogisticsConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType)
        {
            { return objectType == typeof(BattleLogistics); }
        }

        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            BattleLogistics cr = (BattleLogistics)value;
            writer.WriteStartObject();
            writer.WritePropertyName("t");
            serializer.Serialize(writer, cr.clanTax);
            writer.WritePropertyName("m");
            serializer.Serialize(writer, cr.money);
            writer.WritePropertyName("p");
            serializer.Serialize(writer, cr.parts);
            writer.WritePropertyName("e");
            serializer.Serialize(writer, cr.exp);
            writer.WritePropertyName("vm");
            serializer.Serialize(writer, cr.VIPmoney);
            writer.WritePropertyName("vp");
            serializer.Serialize(writer, cr.VIPparts);
            writer.WritePropertyName("ve");
            serializer.Serialize(writer, cr.VIPexp);
            writer.WritePropertyName("vi");
            serializer.Serialize(writer, cr.VIPitem);
            writer.WritePropertyName("i");
            serializer.Serialize(writer, cr.itemConfig);
            writer.WritePropertyName("c");
            serializer.Serialize(writer, cr.count);
            writer.WritePropertyName("id");
            serializer.Serialize(writer, cr.itemId);
            writer.WritePropertyName("rw");
            serializer.Serialize(writer, cr.rewards);
            writer.WritePropertyName("r");
            serializer.Serialize(writer, cr.repair);
            writer.WritePropertyName("rt");
            serializer.Serialize(writer, cr.rating);
            writer.WritePropertyName("w");                        
            writer.WriteStartArray();
            for (int i = 0; i < cr.userWounds.Count; i++)
            {
                writer.WriteStartObject();
                writer.WritePropertyName("i");
                serializer.Serialize(writer, cr.userWounds[i].id);
                writer.WritePropertyName("u");
                serializer.Serialize(writer, cr.userWounds[i].userId);
                writer.WritePropertyName("f");
                serializer.Serialize(writer, cr.userWounds[i].crew);
                writer.WritePropertyName("w");
                serializer.Serialize(writer, cr.userWounds[i].wound);
                writer.WritePropertyName("s");
                serializer.Serialize(writer, cr.userWounds[i].timeStart);
                writer.WritePropertyName("e");
                serializer.Serialize(writer, cr.userWounds[i].timeEnd);
                writer.WritePropertyName("d");
                serializer.Serialize(writer, cr.userWounds[i].skillsDisabled);
                writer.WriteEndObject();
            }
            writer.WriteEndArray();
            writer.WriteEndObject();
        }

        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }

    public class CrewsArrayConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType)
        {
            { return objectType == typeof(Crews[]); }
        }

        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            writer.WriteStartArray();
            Crews[] cr = (Crews[])value;
            for (int i = 0; i < cr.Length; i++)
            {
                writer.WriteStartObject();
                writer.WritePropertyName("i");
                serializer.Serialize(writer, cr[i].id);
                writer.WritePropertyName("n");
                serializer.Serialize(writer, cr[i].name);
                writer.WritePropertyName("s");
                serializer.Serialize(writer, cr[i].side);
                writer.WritePropertyName("is");
                serializer.Serialize(writer, cr[i].idsidebonus);
                writer.WritePropertyName("is2");
                serializer.Serialize(writer, cr[i].idsidebonus2);
                writer.WritePropertyName("is3");
                serializer.Serialize(writer, cr[i].idsidebonus3);
                writer.WritePropertyName("m");
                serializer.Serialize(writer, cr[i].money);
                writer.WritePropertyName("g");
                serializer.Serialize(writer, cr[i].gold);
                writer.WritePropertyName("s1");
                serializer.Serialize(writer, cr[i].skillId1);
                writer.WritePropertyName("s2");
                serializer.Serialize(writer, cr[i].skillId2);
                writer.WritePropertyName("s3");
                serializer.Serialize(writer, cr[i].skillId3);
                writer.WritePropertyName("s4");
                serializer.Serialize(writer, cr[i].skillId4);
                writer.WritePropertyName("s5");
                serializer.Serialize(writer, cr[i].skillId5);
                writer.WritePropertyName("s1b");
                serializer.Serialize(writer, cr[i].skillId1b);
                writer.WritePropertyName("s1c");
                serializer.Serialize(writer, cr[i].skillId1c);
                writer.WritePropertyName("s2b");
                serializer.Serialize(writer, cr[i].skillId2b);
                writer.WritePropertyName("s2c");
                serializer.Serialize(writer, cr[i].skillId2c);
                writer.WritePropertyName("s4b");
                serializer.Serialize(writer, cr[i].skillId4b);
                writer.WritePropertyName("s4c");
                serializer.Serialize(writer, cr[i].skillId4c);
                writer.WritePropertyName("s5b");
                serializer.Serialize(writer, cr[i].skillId5b);
                writer.WritePropertyName("s5c");
                serializer.Serialize(writer, cr[i].skillId5c);
                writer.WriteEndObject();
            }
            writer.WriteEndArray();
        }

        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }

    public class SkillsArrayConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType)
        {
            { return objectType == typeof(Skills[]); }
        }

        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            writer.WriteStartArray();
            Skills[] sk = (Skills[])value;
            for (int i = 0; i < sk.Length; i++)
            {
                writer.WriteStartObject();
                writer.WritePropertyName("i");
                serializer.Serialize(writer, sk[i].id);
                writer.WritePropertyName("si");
                serializer.Serialize(writer, sk[i].skillId);
                writer.WritePropertyName("n");
                serializer.Serialize(writer, sk[i].name);
                writer.WritePropertyName("t");
                serializer.Serialize(writer, sk[i].type);
                writer.WritePropertyName("l");
                serializer.Serialize(writer, sk[i].lvl);
                writer.WritePropertyName("p1");
                serializer.Serialize(writer, sk[i].param1);
                writer.WritePropertyName("v1");
                serializer.Serialize(writer, sk[i].value1);
                writer.WritePropertyName("p2");
                serializer.Serialize(writer, sk[i].param2);
                writer.WritePropertyName("v2");
                serializer.Serialize(writer, sk[i].value2);
                writer.WritePropertyName("p3");
                serializer.Serialize(writer, sk[i].param3);
                writer.WritePropertyName("v3");
                serializer.Serialize(writer, sk[i].value3);
                writer.WritePropertyName("p4");
                serializer.Serialize(writer, sk[i].param4);
                writer.WritePropertyName("v4");
                serializer.Serialize(writer, sk[i].value4);
                writer.WritePropertyName("p5");
                serializer.Serialize(writer, sk[i].param5);
                writer.WritePropertyName("v5");
                serializer.Serialize(writer, sk[i].value5);
                writer.WritePropertyName("p6");
                serializer.Serialize(writer, sk[i].param6);
                writer.WritePropertyName("v6");
                serializer.Serialize(writer, sk[i].value6);
                writer.WriteEndObject();
            }
            writer.WriteEndArray();
        }

        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }

    public class UserCrewsArrayConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType)
        {
            { return objectType == typeof(UserCrews[]); }
        }

        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            writer.WriteStartArray();
            UserCrews[] ucr = (UserCrews[])value;
            for (int i = 0; i < ucr.Length; i++)
            {
                writer.WriteStartObject();
                writer.WritePropertyName("i");
                serializer.Serialize(writer, ucr[i].id);
                writer.WritePropertyName("ui");
                serializer.Serialize(writer, ucr[i].userid);
                writer.WritePropertyName("ci");
                serializer.Serialize(writer, ucr[i].crewid);
                writer.WritePropertyName("n");
                serializer.Serialize(writer, ucr[i].name);
                writer.WritePropertyName("s");
                serializer.Serialize(writer, ucr[i].side);
                writer.WritePropertyName("is");
                serializer.Serialize(writer, ucr[i].idsidebonus);
                writer.WritePropertyName("e");
                serializer.Serialize(writer, ucr[i].exp);
                writer.WritePropertyName("l");
                serializer.Serialize(writer, ucr[i].lvl);
                writer.WritePropertyName("t");
                serializer.Serialize(writer, ucr[i].tier);
                writer.WritePropertyName("s1");
                serializer.Serialize(writer, ucr[i].skillid1);
                writer.WritePropertyName("s2");
                serializer.Serialize(writer, ucr[i].skillid2);
                writer.WritePropertyName("s3");
                serializer.Serialize(writer, ucr[i].skillid3);
                writer.WritePropertyName("s4");
                serializer.Serialize(writer, ucr[i].skillid4);
                writer.WritePropertyName("s5");
                serializer.Serialize(writer, ucr[i].skillid5);
                writer.WritePropertyName("sl1");
                serializer.Serialize(writer, ucr[i].skill1lvl);
                writer.WritePropertyName("sl2");
                serializer.Serialize(writer, ucr[i].skill2lvl);
                writer.WritePropertyName("sl3");
                serializer.Serialize(writer, ucr[i].skill3lvl);
                writer.WritePropertyName("sl4");
                serializer.Serialize(writer, ucr[i].skill4lvl);
                writer.WritePropertyName("sl5");
                serializer.Serialize(writer, ucr[i].skill5lvl);
                writer.WritePropertyName("sl6");
                serializer.Serialize(writer, ucr[i].skill6lvl);
                writer.WriteEndObject();
            }
            writer.WriteEndArray();
        }

        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }


    public class UserUnitsConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType) { return objectType == typeof(UserUnits); }
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            UserUnits dd = (UserUnits)value;
            writer.WriteStartObject();
            writer.WritePropertyName("i");
            serializer.Serialize(writer, dd.i);
            writer.WritePropertyName("u");
            serializer.Serialize(writer, dd.u);
            writer.WritePropertyName("t");
            serializer.Serialize(writer, dd.t);
            writer.WritePropertyName("h");
            serializer.Serialize(writer, dd.h);
            writer.WritePropertyName("td");
            serializer.Serialize(writer, dd.td);
            writer.WritePropertyName("sn");
            serializer.Serialize(writer, dd.sn);
            writer.WritePropertyName("st");
            serializer.Serialize(writer, dd.st);
            writer.WritePropertyName("en");
            serializer.Serialize(writer, dd.en);
            writer.WritePropertyName("et");
            serializer.Serialize(writer, dd.et);
            writer.WritePropertyName("rd");
            serializer.Serialize(writer, dd.rd);
            writer.WritePropertyName("rr");
            serializer.Serialize(writer, dd.rr);
            writer.WritePropertyName("fa");
            serializer.Serialize(writer, dd.frontArmor);
            writer.WritePropertyName("ba");
            serializer.Serialize(writer, dd.backArmor);
            writer.WritePropertyName("ra");
            serializer.Serialize(writer, dd.sideArmor);
            writer.WritePropertyName("hx");
            serializer.Serialize(writer, dd.maxHP);
            writer.WritePropertyName("s");
            serializer.Serialize(writer, dd.speed);
            writer.WritePropertyName("ts");
            serializer.Serialize(writer, dd.turnSpeed);
            writer.WritePropertyName("am");
            serializer.Serialize(writer, dd.minAccuracy);
            writer.WritePropertyName("ax");
            serializer.Serialize(writer, dd.maxAccuracy);
            writer.WritePropertyName("v");
            serializer.Serialize(writer, dd.visibilityRadius);
            writer.WritePropertyName("g");
            serializer.Serialize(writer, dd.range);
            writer.WritePropertyName("a");
            serializer.Serialize(writer, dd.aimingTime);
            writer.WritePropertyName("rn");
            serializer.Serialize(writer, dd.reloadDuration);
            writer.WritePropertyName("pc");
            serializer.Serialize(writer, dd.piercing);
            writer.WritePropertyName("d");
            serializer.Serialize(writer, dd.damage);
            writer.WritePropertyName("up");
            serializer.Serialize(writer, dd.upgrades);
            if (!string.IsNullOrEmpty(dd.name))
            {
                writer.WritePropertyName("name");
                serializer.Serialize(writer, dd.name);
            }
            writer.WritePropertyName("mask");
            serializer.Serialize(writer, dd.mask);
            writer.WritePropertyName("z");
            serializer.Serialize(writer, dd.inZone);
            writer.WritePropertyName("p");
            serializer.Serialize(writer, dd.power);
            writer.WritePropertyName("xc");
            serializer.Serialize(writer, dd.sharingClanUnit);
            writer.WritePropertyName("xd");
            serializer.Serialize(writer, dd.sharingData);
            writer.WritePropertyName("xt");
            serializer.Serialize(writer, dd.sharingTime);
            writer.WritePropertyName("xu");
            serializer.Serialize(writer, dd.sharingUser);
            writer.WritePropertyName("su");
            serializer.Serialize(writer, dd.setUpgrades);
            writer.WriteEndObject();
        }
        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }

    public class UserUnitConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType) { return objectType == typeof(UserUnit); }
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            UserUnit dd = (UserUnit)value;
            writer.WriteStartObject();
            writer.WritePropertyName("i");
            serializer.Serialize(writer, dd.i);
            writer.WritePropertyName("u");
            serializer.Serialize(writer, dd.u);
            writer.WritePropertyName("t");
            serializer.Serialize(writer, dd.t);
            writer.WritePropertyName("h");
            serializer.Serialize(writer, dd.h);
            writer.WritePropertyName("td");
            serializer.Serialize(writer, dd.td);
            writer.WritePropertyName("sn");
            serializer.Serialize(writer, dd.sn);
            writer.WritePropertyName("st");
            serializer.Serialize(writer, dd.st);
            writer.WritePropertyName("en");
            serializer.Serialize(writer, dd.en);
            writer.WritePropertyName("et");
            serializer.Serialize(writer, dd.et);
            writer.WritePropertyName("rd");
            serializer.Serialize(writer, dd.rd);
            writer.WritePropertyName("rr");
            serializer.Serialize(writer, dd.rr);
            writer.WritePropertyName("fa");
            serializer.Serialize(writer, dd.upgradesSet[(int)UpgradeType.frontArmor]);
            writer.WritePropertyName("ba");
            serializer.Serialize(writer, dd.upgradesSet[(int)UpgradeType.backArmor]);
            writer.WritePropertyName("ra");
            serializer.Serialize(writer, dd.upgradesSet[(int)UpgradeType.sideArmor]);
            writer.WritePropertyName("hx");
            serializer.Serialize(writer, dd.upgradesSet[(int)UpgradeType.maxHP]);
            writer.WritePropertyName("s");
            serializer.Serialize(writer, dd.upgradesSet[(int)UpgradeType.speed]);
            writer.WritePropertyName("ts");
            serializer.Serialize(writer, dd.upgradesSet[(int)UpgradeType.turnSpeed]);
            writer.WritePropertyName("am");
            serializer.Serialize(writer, dd.upgradesSet[(int)UpgradeType.minAccuracy]);
            writer.WritePropertyName("ax");
            serializer.Serialize(writer, dd.upgradesSet[(int)UpgradeType.maxAccuracy]);
            writer.WritePropertyName("v");
            serializer.Serialize(writer, dd.upgradesSet[(int)UpgradeType.visibilityRadius]);
            writer.WritePropertyName("g");
            serializer.Serialize(writer, dd.upgradesSet[(int)UpgradeType.range]);
            writer.WritePropertyName("a");
            serializer.Serialize(writer, dd.upgradesSet[(int)UpgradeType.aimingTime]);
            writer.WritePropertyName("rn");
            serializer.Serialize(writer, dd.upgradesSet[(int)UpgradeType.reloadDuration]);
            writer.WritePropertyName("pc");
            serializer.Serialize(writer, dd.upgradesSet[(int)UpgradeType.piercing]);
            writer.WritePropertyName("d");
            serializer.Serialize(writer, dd.upgradesSet[(int)UpgradeType.damage]);
            writer.WritePropertyName("up");
            serializer.Serialize(writer, dd.upgrades);
            if (!string.IsNullOrEmpty(dd.name))
            {
                writer.WritePropertyName("name");
                serializer.Serialize(writer, dd.name);
            }
            writer.WritePropertyName("mask");
            serializer.Serialize(writer, dd.mask);
            writer.WritePropertyName("z");
            serializer.Serialize(writer, dd.inZone);
            writer.WritePropertyName("p");
            serializer.Serialize(writer, dd.power);
            writer.WritePropertyName("xc");
            serializer.Serialize(writer, dd.sharingClanUnit);
            writer.WritePropertyName("xd");
            serializer.Serialize(writer, dd.sharingData);
            writer.WritePropertyName("xt");
            serializer.Serialize(writer, dd.sharingTime);
            writer.WritePropertyName("xu");
            serializer.Serialize(writer, dd.sharingUser);
            writer.WritePropertyName("su");
            serializer.Serialize(writer, dd.setUpgrades);
            writer.WriteEndObject();
        }
        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }


    public class UserWoundsArrayConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType) { return objectType == typeof(UserWounds[]); }
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            writer.WriteStartArray();
            UserWounds[] dd = (UserWounds[])value;
            for (int i = 0; i < dd.Length; i++)
            {
                writer.WriteStartObject();
                writer.WritePropertyName("i");
                serializer.Serialize(writer, dd[i].id);
                writer.WritePropertyName("u");
                serializer.Serialize(writer, dd[i].userId);
                writer.WritePropertyName("f");
                serializer.Serialize(writer, dd[i].crew);
                writer.WritePropertyName("w");
                serializer.Serialize(writer, dd[i].wound);
                writer.WritePropertyName("s");
                serializer.Serialize(writer, dd[i].timeStart);
                writer.WritePropertyName("e");
                serializer.Serialize(writer, dd[i].timeEnd);
                writer.WritePropertyName("d");
                serializer.Serialize(writer, dd[i].skillsDisabled);
                writer.WriteEndObject();
            }
            writer.WriteEndArray();
        }
        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }

    public class UserWoundArrayConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType) { return objectType == typeof(UserWound[]); }
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            writer.WriteStartArray();
            UserWound[] dd = (UserWound[])value;
            for (int i = 0; i < dd.Length; i++)
            {
                writer.WriteStartObject();
                writer.WritePropertyName("i");
                serializer.Serialize(writer, dd[i].id);
                writer.WritePropertyName("u");
                serializer.Serialize(writer, dd[i].userId);
                writer.WritePropertyName("f");
                serializer.Serialize(writer, dd[i].crew);
                writer.WritePropertyName("w");
                serializer.Serialize(writer, dd[i].wound);
                writer.WritePropertyName("s");
                serializer.Serialize(writer, dd[i].timeStart);
                writer.WritePropertyName("e");
                serializer.Serialize(writer, dd[i].timeEnd);
                writer.WritePropertyName("d");
                serializer.Serialize(writer, dd[i].skillsDisabled);
                writer.WriteEndObject();
            }
            writer.WriteEndArray();
        }
        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }

    public class UserShellsArrayConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType) { return objectType == typeof(UserShells[]); }
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            writer.WriteStartArray();
            UserShells[] dd = (UserShells[])value;
            for (int i = 0; i < dd.Length; i++)
            {
                writer.WriteStartObject();
                writer.WritePropertyName("i");
                serializer.Serialize(writer, dd[i].i);
                writer.WritePropertyName("u");
                serializer.Serialize(writer, dd[i].u);
                writer.WritePropertyName("s");
                serializer.Serialize(writer, dd[i].s);
                writer.WritePropertyName("n");
                serializer.Serialize(writer, dd[i].n);
                writer.WriteEndObject();
            }
            writer.WriteEndArray();
        }
        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }

    public class UserMissionsArrayConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType) { return objectType == typeof(UserMissions[]); }
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            writer.WriteStartArray();
            UserMissions[] dd = (UserMissions[])value;
            for (int i = 0; i < dd.Length; i++)
            {
                writer.WriteStartObject();
                writer.WritePropertyName("i");
                serializer.Serialize(writer, dd[i].id);
                writer.WritePropertyName("u");
                serializer.Serialize(writer, dd[i].userId);
                writer.WritePropertyName("q");
                serializer.Serialize(writer, dd[i].mission);
                writer.WritePropertyName("n");
                serializer.Serialize(writer, dd[i].name);
                writer.WritePropertyName("mp");
                serializer.Serialize(writer, dd[i].map);
                writer.WritePropertyName("m");
                serializer.Serialize(writer, dd[i].money);
                writer.WritePropertyName("p1");
                serializer.Serialize(writer, dd[i].power1);
                writer.WritePropertyName("n1");
                serializer.Serialize(writer, dd[i].power1num);
                writer.WritePropertyName("p2");
                serializer.Serialize(writer, dd[i].power2);
                writer.WritePropertyName("n2");
                serializer.Serialize(writer, dd[i].power2num);
                writer.WritePropertyName("p3");
                serializer.Serialize(writer, dd[i].power3);
                writer.WritePropertyName("n3");
                serializer.Serialize(writer, dd[i].power3num);
                writer.WritePropertyName("g");
                serializer.Serialize(writer, dd[i].gold);
                writer.WritePropertyName("a");
                serializer.Serialize(writer, dd[i].goal);
                writer.WritePropertyName("d");
                serializer.Serialize(writer, dd[i].difficulty);
                writer.WritePropertyName("c");
                serializer.Serialize(writer, dd[i].complete);
                writer.WritePropertyName("l");
                serializer.Serialize(writer, dd[i].userLevel);
                writer.WritePropertyName("p");
                serializer.Serialize(writer, dd[i].UnitPower);
                writer.WriteEndObject();
            }
            writer.WriteEndArray();
        }
        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }

    public class UserConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType) { return objectType == typeof(User); }
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            User dd = (User)value;
            writer.WriteStartObject();
            writer.WritePropertyName("i");
            serializer.Serialize(writer, dd.id);
            writer.WritePropertyName("n");
            serializer.Serialize(writer, dd.Name);
            writer.WritePropertyName("sn");
            serializer.Serialize(writer, dd.BundleId);
            writer.WritePropertyName("p");
            serializer.Serialize(writer, dd.Photo);
            writer.WritePropertyName("s");
            serializer.Serialize(writer, dd.SocialID);
            writer.WritePropertyName("a");
            serializer.Serialize(writer, dd.AuthKey);
            writer.WritePropertyName("r");
            serializer.Serialize(writer, dd.Rating);
            writer.WritePropertyName("l");
            serializer.Serialize(writer, dd.UserLevel);
            writer.WritePropertyName("g");
            serializer.Serialize(writer, dd.Gold);
            writer.WritePropertyName("m");
            serializer.Serialize(writer, dd.GetMoney());
            writer.WritePropertyName("lc");
            serializer.Serialize(writer, dd.Locale);
            writer.WritePropertyName("t");
            serializer.Serialize(writer, dd.t);
            writer.WritePropertyName("d");
            serializer.Serialize(writer, dd.d);
            writer.WritePropertyName("r1");
            serializer.Serialize(writer, dd.Experience);
            writer.WritePropertyName("r2");
            serializer.Serialize(writer, dd.Victories);
            writer.WritePropertyName("r3");
            serializer.Serialize(writer, dd.Defeats);
            writer.WritePropertyName("r4");
            serializer.Serialize(writer, dd.Draws);
            writer.WritePropertyName("al");
            serializer.Serialize(writer, dd.al);
            writer.WritePropertyName("sl");
            serializer.Serialize(writer, dd.Slots);
            writer.WritePropertyName("b");
            serializer.Serialize(writer, dd.Flags);
            writer.WritePropertyName("q");
            serializer.Serialize(writer, dd.MissionID);
            writer.WritePropertyName("tg");
            serializer.Serialize(writer, dd.TestGroup);
            writer.WritePropertyName("rg");
            serializer.Serialize(writer, dd.rg);
            writer.WritePropertyName("v");
            serializer.Serialize(writer, dd.FBLink);
            writer.WritePropertyName("w");
            serializer.Serialize(writer, dd.TWLink);
            writer.WritePropertyName("ps");
            serializer.Serialize(writer, dd.PowerSlots);
            writer.WritePropertyName("rp");
            serializer.Serialize(writer, 0);
            writer.WritePropertyName("pp");
            serializer.Serialize(writer, dd.GetDetails());
            writer.WritePropertyName("z1");
            serializer.Serialize(writer, dd.zones1);
            writer.WritePropertyName("z2");
            serializer.Serialize(writer, dd.hiredTanks);
            writer.WritePropertyName("tr");
            serializer.Serialize(writer, dd.Tier);
            writer.WritePropertyName("sa");
            serializer.Serialize(writer, dd.ScanAttempt);
            writer.WritePropertyName("sy");
            serializer.Serialize(writer, dd.synPVP);
            writer.WritePropertyName("rt");
            serializer.Serialize(writer, dd.RegisterTime);
            writer.WritePropertyName("rn");
            serializer.Serialize(writer, dd.RNDTank);
            writer.WritePropertyName("rs");
            serializer.Serialize(writer, dd.scanTime);
            writer.WritePropertyName("vg");
            serializer.Serialize(writer, dd.VIPgold);
            writer.WritePropertyName("vs");
            serializer.Serialize(writer, dd.VIPsubscription);
            writer.WritePropertyName("ea");
            serializer.Serialize(writer, dd.EventFuelRestoreAttempt);
            writer.WritePropertyName("bu");
            serializer.Serialize(writer, dd.battleSquad);
            writer.WritePropertyName("bs");
            serializer.Serialize(writer, dd.battlesScan);
            writer.WritePropertyName("bls");
            serializer.Serialize(writer, dd.battlesLastScan);
            writer.WritePropertyName("bc");
            serializer.Serialize(writer, dd.battlesCount);
            writer.WritePropertyName("bt");
            serializer.Serialize(writer, dd.battleTime);
            writer.WritePropertyName("blt");
            serializer.Serialize(writer, dd.battlesLastTime);
            writer.WritePropertyName("bdrt");
            serializer.Serialize(writer, dd.battleDailyRewardTime);
            writer.WritePropertyName("bbrw");
            serializer.Serialize(writer, dd.battleBestReward);
            writer.WritePropertyName("ts");
            serializer.Serialize(writer, dd.tutorialState);
            writer.WritePropertyName("tos");
            serializer.Serialize(writer, dd.todoState);
            writer.WritePropertyName("tor");
            serializer.Serialize(writer, dd.todoReward);
            writer.WritePropertyName("gt");
            serializer.Serialize(writer, dd.gameTime);
            writer.WritePropertyName("bet");
            serializer.Serialize(writer, dd.BanEndTime);
            writer.WritePropertyName("drt");
            serializer.Serialize(writer, dd.dailyRewardTime);
            writer.WritePropertyName("dri");
            serializer.Serialize(writer, dd.dailyRewardIndex);
            writer.WritePropertyName("er");
            serializer.Serialize(writer, dd.eventReputation);
            writer.WritePropertyName("ma");
            serializer.Serialize(writer, dd.marketBuyAttempts);
            writer.WritePropertyName("evr");
            serializer.Serialize(writer, dd.eventReward);

            var blindByAttempts = JsonConvert.DeserializeObject<BlindBuyAttempts>(dd.blindBuyAttempts);
            if (blindByAttempts != null)
            {
                writer.WritePropertyName("bba");
                writer.WriteStartObject();
                writer.WritePropertyName("c1");
                serializer.Serialize(writer, blindByAttempts.totalAttemptsByMoneyForCrew);
                writer.WritePropertyName("ct1");
                serializer.Serialize(writer, blindByAttempts.todayAttemptsByMoneyForCrew);
                writer.WritePropertyName("cp1");
                serializer.Serialize(writer, blindByAttempts.crewBuyByMoneyStamp);
                writer.WriteEndObject();
            }

            if (dd.clan_id > 0)
            {
                writer.WritePropertyName("clan_id");
                serializer.Serialize(writer, dd.clan_id);
                writer.WritePropertyName("clan_position");
                serializer.Serialize(writer, dd.clan_position);
            }

            writer.WritePropertyName("skills");
            serializer.Serialize(writer, dd.GetClanSkills());

            writer.WriteEndObject();
        }
        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }

    /*public class UserActionsArrayConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType) { return objectType == typeof(UserActions[]); }
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            writer.WriteStartArray();
            UserActions[] dd = (UserActions[])value;
            for (int i = 0; i < dd.Length; i++)
            {
                writer.WriteStartObject();
                writer.WritePropertyName("i");
                serializer.Serialize(writer, dd[i].id);
                writer.WritePropertyName("u");
                serializer.Serialize(writer, dd[i].userId);
                writer.WritePropertyName("q");
                serializer.Serialize(writer, dd[i].actionUnique);
                writer.WritePropertyName("n");
                serializer.Serialize(writer, dd[i].name);
                writer.WritePropertyName("s");
                serializer.Serialize(writer, dd[i].startTime);
                writer.WritePropertyName("e");
                serializer.Serialize(writer, dd[i].endTime);
                writer.WritePropertyName("t");
                serializer.Serialize(writer, dd[i].itemType);
                writer.WritePropertyName("g");
                serializer.Serialize(writer, dd[i].itemId);
                writer.WritePropertyName("d");
                serializer.Serialize(writer, dd[i].discount);
                writer.WritePropertyName("p");
                serializer.Serialize(writer, dd[i].priority);
                writer.WritePropertyName("a");
                serializer.Serialize(writer, dd[i].amount);
                writer.WritePropertyName("o");
                serializer.Serialize(writer, dd[i].isPurchase);
                writer.WritePropertyName("c");
                serializer.Serialize(writer, dd[i].counter);
                writer.WritePropertyName("h");
                serializer.Serialize(writer, dd[i].HQLevel);
                writer.WritePropertyName("ii");
                serializer.Serialize(writer, dd[i].item);
                writer.WritePropertyName("ot");
                serializer.Serialize(writer, dd[i].offerType);               
                writer.WriteEndObject();
            }
            writer.WriteEndArray();
        }
        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }*/

    public class UserCampaignArrayConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType) { return objectType == typeof(UserCampaign[]); }
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            writer.WriteStartArray();
            UserCampaign[] dd = (UserCampaign[])value;
            for (int i = 0; i < dd.Length; i++)
            {
                writer.WriteStartObject();
                writer.WritePropertyName("i");
                serializer.Serialize(writer, dd[i].id);
                writer.WritePropertyName("u");
                serializer.Serialize(writer, dd[i].userID);
                writer.WritePropertyName("c");
                serializer.Serialize(writer, dd[i].campaign);
                writer.WritePropertyName("h");
                serializer.Serialize(writer, dd[i].completedHard);
                writer.WritePropertyName("m");
                serializer.Serialize(writer, dd[i].completedMedium);
                writer.WritePropertyName("e");
                serializer.Serialize(writer, dd[i].completedEasy);
                writer.WriteEndObject();
            }
            writer.WriteEndArray();
        }
        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }

    public class BonusArrayConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType) { return objectType == typeof(Bonus[]); }
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            writer.WriteStartArray();
            Bonus[] dd = (Bonus[])value;
            for (int i = 0; i < dd.Length; i++)
            {
                writer.WriteStartObject();
                writer.WritePropertyName("i");
                serializer.Serialize(writer, dd[i].id);
                writer.WritePropertyName("n");
                serializer.Serialize(writer, dd[i].num);
                writer.WritePropertyName("t");
                serializer.Serialize(writer, dd[i].type);
                writer.WritePropertyName("o");
                serializer.Serialize(writer, dd[i].item);
                writer.WritePropertyName("s");
                serializer.Serialize(writer, dd[i].special);
                writer.WriteEndObject();
            }
            writer.WriteEndArray();
        }
        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }


    public class UserBuildingsConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType) { return objectType == typeof(UserBuildings); }
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            UserBuildings dd = (UserBuildings)value;
            writer.WriteStartObject();
            writer.WritePropertyName("i");
            serializer.Serialize(writer, dd.id);
            writer.WritePropertyName("u");
            serializer.Serialize(writer, dd.userId);
            writer.WritePropertyName("z");
            serializer.Serialize(writer, dd.zone);
            writer.WritePropertyName("l");
            serializer.Serialize(writer, dd.blevel);
            writer.WritePropertyName("e");
            serializer.Serialize(writer, dd.type);
            writer.WritePropertyName("t");
            serializer.Serialize(writer, dd.time);
            writer.WritePropertyName("c");
            serializer.Serialize(writer, dd.collectTime);
            writer.WritePropertyName("r");
            serializer.Serialize(writer, dd.removable);
            writer.WriteEndObject();
        }
        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }

    public class UserZonesConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType) { return objectType == typeof(UserZones); }
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            UserZones dd = (UserZones)value;
            writer.WriteStartObject();
            writer.WritePropertyName("i");
            serializer.Serialize(writer, dd.id);
            writer.WritePropertyName("u");
            serializer.Serialize(writer, dd.userId);
            writer.WritePropertyName("z");
            serializer.Serialize(writer, dd.zoneId);
            writer.WritePropertyName("p");
            serializer.Serialize(writer, dd.power);
            writer.WritePropertyName("b");
            serializer.Serialize(writer, dd.blockedBefore);
            writer.WriteEndObject();
        }
        public override bool CanWrite { get { return true; } }
        public override bool CanRead { get { return false; } }
        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer) { throw new NotImplementedException(); }
    }



    public interface IToJson
    {
        void ToJson(JsonWriter w, JsonSerializer ser, JsonOut json);
    }

    public class JsonOut
    {
        internal JsonWriter w;
        internal JsonSerializer ser;

        public JsonOut Name(string name)
        {
            w.WritePropertyName(name);
            return this;
        }

        public JsonOut Value(object value)
        {
            ser.Serialize(w, value);
            return this;
        }

        public JsonOut WriteJson(string value)
        {
            w.WriteRawValue(value);
            return this;
        }

        public JsonOut BeginObject()
        {
            w.WriteStartObject();
            return this;
        }

        public JsonOut EndObject()
        {
            w.WriteEndObject();
            return this;
        }

        public JsonOut BeginArray()
        {
            w.WriteStartArray();
            return this;
        }

        public JsonOut EndArray()
        {
            w.WriteEndArray();
            return this;
        }
    }

    public class GenericWriteConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType)
        {
            return typeof(IToJson).IsAssignableFrom(objectType);
        }

        public override void WriteJson(JsonWriter w, object value, JsonSerializer ser)
        {
            var json = new JsonOut { w = w, ser = ser };
            ((IToJson)value).ToJson(w, ser, json);
        }

        public override bool CanWrite
        {
            get { return true; }
        }

        public override bool CanRead
        {
            get { return false; }
        }

        public override object ReadJson(JsonReader reader, Type objectType, object existingValue,
            JsonSerializer serializer)
        {
            throw new NotImplementedException();
        }
    }
}