using System;
using System.Collections.Generic;
using System.Linq;

namespace TW
{
    public class SharingService : AbstractService
    {
        public Error ShareUnit(User user, UserUnit userUnit, double timeNow)
        {
            if (userUnit.Id == 0 || userUnit.UserId != user.id)
                return Error.NO_USER_TANK;

            if (user.clan_id == 0)
                return Error.CLAN_NOT_FOUND;

            if (userUnit.sharingClanUnit != 0)
                return Error.TANK_SHARE_ALREADY;

            if (userUnit.CrewId == 0)
                return Error.TANK_HAS_NOT_CREW;

            if (!CanShareUnit(user))
                return Error.TANK_SHARE_ALREADY;

            userUnit.sharingClanUnit = user.clan_id;
            userUnit.sharingTime = timeNow + Define.Get(Def.UnitSharingTimeH) * 3600000;
            userUnit.Saving();

            return Error.OK;
        }


        public Error UnShareUnit(User user, UserUnit userUnit, double timeNow)
        {
            if (userUnit.sharingClanUnit == 0)
                return Error.TANK_SHARE_NOT;

            bool hasUserLeftClan = user.clan_id != userUnit.sharingClanUnit;

            if (userUnit.sharingTime - Define.Get(Def.UnitSharingTimeH) * 3600000 + Define.Get(Def.UnitSharingCancelTimeH) * 3600000 > timeNow && !hasUserLeftClan) return Error.TANK_SHARE_CANCEL_TIME_ERROR;

            int money = userUnit.sharingData;
            user.AddMoney(money);
            user.Saving();

            userUnit.sharingClanUnit = 0;
            userUnit.sharingTime = 0;
            userUnit.sharingData = 0;
            userUnit.sharingUser = 0;
            userUnit.Saving();

            return Error.OK.SetData(money.ToString());
        }

        public Error HireAgain(User user)
        {
            int gold = 0;
            if (Util.IsValidType(user.Flags, (int)Flag.HireUnit))
            {
                gold = (int)Define.Get(Def.UnitHirePriceG);
            }

            if (user.Gold < gold)
                return Error.LACK_GOLD;

            if (Util.IsValidType(user.Flags, (int)Flag.HireUnit))
            {
                user.Gold -= gold;
                user.Flags = Util.RemType(user.Flags, (int)Flag.HireUnit);
                user.hiredTanks = 0;
                user.Saving();
            }

            return Error.OK;
        }

        public Error HireUnit(User user, UserUnit sharedUnit, double timeNow)
        {
            if (sharedUnit.sharingClanUnit <= 0)
                return Error.NO_USER_TANK;

            int money = GetHirePriceMoney(sharedUnit);

            if (user.GetMoney() < money)
                return Error.LACK_MONEY;

            var sharedCrew = new UserCrew(sharedUnit.CrewId);
            var sharedCrewClone = new UserCrew(sharedCrew, user.id);
            var sharedUnitClone = new UserUnit(sharedUnit, user.id, timeNow + Define.Get(Def.UnitHireTimeH) * 3600000, sharedCrewClone.id);

            user.SpendMoney(money);
            user.hiredTanks++;
            if (user.hiredTanks >= 5)
                user.Flags = Util.AddType(user.Flags, (int)Flag.HireUnit);
            user.Saving();

            sharedUnit.sharingData += money;
            sharedUnit.sharingUser = user.id;
            sharedUnit.Saving();

            var result = new List<int> { money, sharedUnitClone.Id, sharedCrewClone.id };

            return Error.OK.SetData(Util.ToJson(result));
        }

        public Error ReturnUnitOrSaving(User user, UserUnit unit, double timeNow)
        {
            if (unit.sharingClanUnit < 0 && (unit.sharingData >= Define.Get(Def.UnitHireBattles) || (unit.sharingTime <= timeNow && unit.sharingTime != 0)))
            {
                var crew = new UserCrew(unit.td);
                crew.Disappear();
                unit.Disappear();
            }
            else
                unit.Saving();

            return Error.OK;
        }

        public int GetHirePriceMoney(UserUnit userUnit)
        {
            var defaultUnit = GetConfigByDefaultUnitId(userUnit.DefaultUnitId);
            return Convert.ToInt32(Math.Ceiling(defaultUnit.GetPriceInMoney() * Define.Get(Def.UnitHirePriceMPercent) / 100));
        }

        public Error ListClanUnits(User user, double timeNow)
        {
            if (user.clan_id == 0)
                return Error.CLAN_NOT_FOUND;

            var db = new TanksDBDataContext();
            List<UserUnits> uunits = Query.ListUserClanUnits(db, user.clan_id, timeNow).ToList();
            var users = new List<int>();
            var crews = new List<int>();
            
            foreach (UserUnits uu in uunits)
            {
                if (!users.Contains(uu.u)) users.Add(uu.u);
                if (!crews.Contains(uu.td)) crews.Add(uu.td);
            }

            List<UserCrews> ucrews = Query.GetUserCrewsByIds(db, crews).ToList();
            string result = "{\"uu\":" + Util.ToJson(uunits.ToArray());
            result += ",\"ur\":" + Util.ToJson(ucrews.ToArray());
            result += ",\"mcm\":[";
            int count = 0;
            if (users.Count > 0)
            {
                List<Users> cuts2 = Query.GetUsersByIds(db, users).ToList();
                foreach (Users c in cuts2)
                {
                    result += (count > 0) ? "," : "";
                    var cm = new ClanMember(c);
                    result += Util.ToJson(cm);
                    count++;
                }
            }
            result += "]}";
            return Error.OK.SetData(Util.ClearJson(result));
        }

        public bool CanShareUnit(User user)
        {
            if (user.GetUserVIP() >= 5)
                return true;

            var db = new TanksDBDataContext();
            List<UserUnits> uunits = Query.ListUserOwnClanUnits(db, user.clan_id, user.id).ToList();
            return uunits.Count == 0;
        }
    }
}