namespace TW
{
    using System;

    /// <summary>
    /// Сводное описание для Error
    /// Ответы сервера
    /// </summary>
    /// 

    public class Error
    {
        public static readonly Error UNKNOWN = new Error { e = 0, d = "ERRS" };
        public static readonly Error OK = new Error { e = 99, d = "OK", r = true };
        public static readonly Error SIGN_FAILED = new Error { e = 100, d = "ERRPWD" };
        public static readonly Error AUTH_FAILED = new Error { e = 101, d = "ERRPWD" };
        public static readonly Error LACK_MONEY = new Error { e = 102, d = "ERRMONEY" };
        public static readonly Error LACK_GOLD = new Error { e = 109, d = "ERRGOLD" };
        //
        public static readonly Error NO_USER_TANK = new Error { e = 111, d = "ERRNOUSERTANK" };
        public static readonly Error NO_SUCH_TANK = new Error { e = 135, d = "ERRNOSHOPTANK" };
        //
        public static readonly Error HANGAR_NO_SLOT = new Error { e = 154, d = "ERRSLOTEXIST" };
        //
        public static readonly Error LEVEL_TOO_LOW = new Error { e = 156, d = "ERRLEVEL" };
        //
        public static readonly Error CONNECT_ERROR = new Error { e = 161, d = "ERRCONNECT" };
        //
        public static readonly Error LINK_FAILED = new Error { e = 172, d = "ERRLINKED" };
        //
        public static readonly Error INCORRECT_DEVICE = new Error { e = 174, d = "ERRDEVICE" };

        public static readonly Error LACK_DETAILS = new Error { e = 187, d = "ERRPRODUCTION" };
        public static readonly Error UPGRADE_LIMIT = new Error { e = 188, d = "ERRMAXUPGRADE" };
        public static readonly Error NO_SUCH_UPGRADE = new Error { e = 189, d = "ERRUPGRADE" };
        //
        public static readonly Error CLAN_MEMBERS_MAX_LIMIT = new Error { e = 299, d = "ERRCLANPLACELIMIT" };
        public static readonly Error CLAN_NOT_FOUND = new Error { e = 300, d = "ERRNOSUCHCLAN" };
        public static readonly Error USER_NOT_FOUND = new Error { e = 301, d = "ERRNOSUCHUSER" };
        public static readonly Error ALREADY_IN_CLAN = new Error { e = 302, d = "ERRALREADYINCLAN" };
        public static readonly Error CLAN_NAME_LENGTH = new Error { e = 303, d = "ERRCLANNAMELENGTH" };
        public static readonly Error CLAN_NAME_NOT_UNIQUE = new Error { e = 304, d = "ERRCLANSAMENAME" };
        public static readonly Error CLAN_POSITION_TOO_LOW = new Error { e = 305, d = "ERRCLANPOSITIONTOOLOW" };
        public static readonly Error CLAN_LOW_LEVEL = new Error { e = 306, d = "ERRCLANLOWLEVEL" };
        public static readonly Error INCORRECT_VALUE = new Error { e = 307, d = "ERRINCORRECTVALUE" };
        public static readonly Error NO_CLAN_SPACE = new Error { e = 308, d = "ERRNOCLANSPACE" };
        public static readonly Error CLAN_RESTRICTS_ENTER = new Error { e = 309, d = "ERRCLANRESTRICTENTER" };
        public static readonly Error CLAN_OWNER_CANT_LEAVE_FULL_CLAN = new Error { e = 310, d = "ERRCLANOWNERCANTLEAVEFULLCLAN" };
        public static readonly Error USER_NOT_CLAN_MEMBER = new Error { e = 311, d = "ERRUSERNOTCLANMEMBER" };
        public static readonly Error NOT_SUCH_A_BUILDING = new Error { e = 194, d = "ERRUSERHASNOBUILDING" };
        public static readonly Error INVALID_CHAT = new Error { e = 320, d = "ERRINVCHAT" };
        public static readonly Error BAN_IN_CHAT = new Error { e = 321, d = "ERRBANCHAT" };
        public static readonly Error ZONE_UNDEFENDABLE = new Error { e = 322, d = "ERRZONEUNDEFENDABLE" };

        public static readonly Error NOMISSIONS_AVAILABLE = new Error { e = 323, d = "ERRNOMISSIONS" };
        public static readonly Error NOUSERMISSIONS_AVAILABLE = new Error { e = 324, d = "ERRNOUSERMISSIONS" };
        public static readonly Error MISSIONS_ALREADY_COMPLETED = new Error { e = 325, d = "ERRALREADYCOMPLETED" };
        public static readonly Error LACK_FUEL = new Error { e = 326, d = "ERRLACKFUEL" };
        public static readonly Error NORADAR = new Error { e = 327, d = "ERRNORADAR" };
        public static readonly Error TANKALREADYINZONE = new Error { e = 328, d = "ERRTANKALREADYINZONE" };

        public static readonly Error NOBATTLELOGS = new Error { e = 329, d = "ERRNOBATTLELOGS" };

        public static readonly Error USER_NOT_HAVE_CREW = new Error { e = 330, d = "ERRUSERNOTHAVECREW" };
        public static readonly Error USER_HAS_WRONG_LEVEL_FOR_EVOLVING = new Error { e = 331, d = "ERRLEVELEVOLVE" };
        public static readonly Error NOT_ENOUGH_RESEARCH_POINTS = new Error { e = 332, d = "ERRRESEARCH" };
        public static readonly Error NOT_ENOUGH_OFFICER_SCHOOL_CAPACITY = new Error { e = 333, d = "ERRCREWLIMIT" };

        public static readonly Error CREWSKILLGENERATIONERR = new Error { e = 334, d = "ERRCREWSKILLGEN" };

        public static readonly Error NO_USERZONE_ERR = new Error { e = 335, d = "ERRNOUSERZONE" };

        //items
        public static readonly Error ITEM_NOT_FOUND = new Error { e = 336, d = "ERRITEMNOTFOUND" };
        public static readonly Error LACK_ITEM = new Error { e = 337, d = "ERRLACKITEM" };

        //battle arena
        public static readonly Error MAX_BATTLE_ATTEMPTS_REACHED = new Error { e = 338, d = "ERRMAXBATTLEATTEMPTSRICHED" };
        public static readonly Error MAX_BATTLE_ATTEMPTS_TODAY_PURCHASED = new Error { e = 339, d = "ERRMAXBATTLEATTEMPTSTODAYPURCHASED" };
        public static readonly Error USER_IN_BATTLE = new Error { e = 400, d = "ERRUSERINBATTLE" };
        public static readonly Error BATTLE_COOLDOWN = new Error { e = 401, d = "ERRBATTLECOOLDOWN" };
        public static readonly Error BATTLE_DEFENSE_NOT_SET = new Error { e = 402, d = "ERRBATTLEDEFENSENOTSET" };
        public static readonly Error BATTLE_DAILY_REWARD_ALREADY_TAKEN = new Error { e = 403, d = "ERRBATTLEDAILYREWARDTAKEN" };
        public static readonly Error BATTLE_NO_ROOM = new Error { e = 409, d = "ERRBATTLENOROOM" };
        public static readonly Error BATTLE_ROOM_CLOSED = new Error { e = 410, d = "ERRBATTLEROOMCLOSED" };
        //evolve
        public static readonly Error EVOLVE_MAX_MODIFICATION_REACHED = new Error { e = 404, d = "ERREVOLVEMAXMODIFICATIONREACHED" };
        public static readonly Error EVOLVE_INSUFFICIENT_MODIFICATION = new Error { e = 405, d = "ERREVOLVEINSUFFICIENTMODIFICATION" };
        public static readonly Error EVOLVE_INSUFFICIENT_UPGRADES = new Error { e = 406, d = "ERREOVLEINSUFFICIENTUPGRADES" };
        public static readonly Error HQ_BUILDING_REQUIRED = new Error { e = 407, d = "ERREVOLVEBUILDINGREQUIRED" };
        public static readonly Error HQ_BUILDING_LEVEL_REQUIRED = new Error { e = 408, d = "ERREVOLVEHQBUILDINGLVLREQUIRED" };
        public static readonly Error ERROR_CREW_LEVEL = new Error { e = 409, d = "ERRCREWLVL" };

        //Social
        public static readonly Error NO_FRIENDS = new Error { e = 420, d = "ERRNOFRIENDS" };
        public static readonly Error NO_FRIEND = new Error { e = 421, d = "ERRNOFRIEND" };
        public static readonly Error FRIEND_EXIST = new Error { e = 422, d = "ERRFRIENDEX" };
        public static readonly Error NOREWARD = new Error { e = 423, d = "ERRNOREWARD" };

        //market
        public static readonly Error NOCONFIG = new Error { e = 430, d = "ERRNOCONFIG" };
        public static readonly Error INCORRECT_CONFIG = new Error { e = 431, d = "ERRINCORRECTCONFIG" };

        //tournament
        public static readonly Error ERROR_TOURNAMENT_NOT_AVAILABLE = new Error { e = 432, d = "ERRTOURNAMENTNOTAVAILABLE" };
        public static readonly Error ERROR_TOURNAMENT_USER_NOT_AVAILABLE = new Error { e = 433, d = "ERRTOURNAMENTUSERNOTAVAILABLE" };
        public static readonly Error ERROR_NO_TANKS = new Error { e = 434, d = "ERRNOTANKS" };
        public static readonly Error ERROR_TANKS_IN_DEFENSE = new Error { e = 435, d = "ERRTANKSINDEFENSE" };

        //tank sharing
        public static readonly Error TANK_SHARE_CANCEL_TIME_ERROR = new Error { e = 436, d = "ERRTANKSHARECANCELTIME" };
        public static readonly Error TANK_SHARE_ALREADY = new Error { e = 437, d = "ERRTANKSHAREALREADY" };
        public static readonly Error TANK_SHARE_NOT = new Error { e = 438, d = "ERRTANKSHARENOT" };
        public static readonly Error TANK_SHARE_IN_USE = new Error { e = 439, d = "ERRTANKSHAREINUSE" };
        public static readonly Error TANK_HAS_NOT_CREW = new Error { e = 440, d = "ERRTANKHASNOTCREW" };

        public static readonly Error ERROR_NO_OFFER = new Error { e = 441, d = "ERRNOOFFER" };
        public static readonly Error ERROR_MAIL_EXPIRED = new Error { e = 442, d = "ERRMAILEXPIRED" };
        public static readonly Error ERR_FULL_ROOM = new Error{e = 443, d = "ERRFULLROOM"};

        //payment service
        public static readonly Error ERROR_NO_RECORD_INSERTED = new Error { e = 450, d = "ERRNORECORDINSERTED"};
        public static readonly Error ERROR_PURCHASE = new Error { e = 451, d = "ERRPURCHASE" };
        public static readonly Error ERROR_OFFERENDED = new Error { e = 452, d = "ERROFFERENDED" };

        //event service
        public static readonly Error ERROR_EVENT_FINISHED = new Error { e = 460, d = "ERREVENTFINISHED" };
        public static readonly Error LACK_EVENT_REPUTATION = new Error { e = 461, d = "ERRLACKEVENTREPUTATION" };
        public static readonly Error VIP_LEVEL_LIMIT = new Error { e = 462, d = "ERRVIPLEVELLIMIT" };

        //research service
        public static readonly Error RESEARCH_NOT_AVAILABLE = new Error { e = 470, d = "ERRRESEARCHNOTAVAILABLE" };
        public static readonly Error LACK_PARTS = new Error { e = 471, d = "ERRPARTS" };
        public static readonly Error ERROR_LIMITS = new Error { e = 472, d = "ERRLIMITS" };
        public static readonly Error UPGRADE_ALREADY_SET = new Error { e = 473, d = "ERRUPGRADESET" };

        public Int32 e; // error id
        public string d; // locale id
        public bool r; // success
        public string o; // json object
        public object b;    // object passed as parameter

        public Error(Int32 n = 0, String obj = "")
        {
            this.e = n;
            this.o = obj;
            switch (n)
            {
                case 99: this.d = "OK"; this.r = true; break; // запрос выполнен успешно
                case 100: this.d = "ERRPWD"; this.r = false; break; // Ошибка авторизации // неправильная подпись запроса
                case 101: this.d = "ERRPWD"; this.r = false; break; // Ошибка авторизации
                case 102: this.d = "ERRMONEY"; this.r = false; break; // Недостаточно денег для покупки
                case 103: this.d = "ERRNOUSERDEVICE"; this.r = false; break; // У пользователя нет такого устройства
                case 104: this.d = "ERRDEVICESET"; this.r = false; break; // Устройство уже установлено
                case 105: this.d = "OK"; this.r = true; break; // Устройство успешно установлено
                case 106: this.d = "ERRNODEVICESLOTS"; this.r = false; break; // Неверный слот для установки устройства
                case 107: this.d = "ERRNOTANK"; this.r = false; break; //нет такого танка
                case 108: this.d = "ERRPWD"; this.r = false; break; // Ошибка авторизации // не существует пользователя с таким soc id
                case 109: this.d = "ERRGOLD"; this.r = false; break; // Нужно больше золота
                case 110: this.d = "OK"; this.r = true; break; // Устройство успешно снято
                case 111: this.d = "ERRNOUSERTANK"; this.r = false; break; // У пользователя нет такого танка
                case 112: this.d = "ERRNOTANKDEVICE"; this.r = false; break; // Устройство не могло быть снято тк не обнаружено на танке
                case 113: this.d = "ERRFRIENDBUSY"; this.r = false; break;  // Друг уже занят
                case 114: this.d = "ERRFRIEND"; this.r = false; break; // У пользователя нет такого друга
                case 115: this.d = ""; this.r = false; break; // Данное место в танке уже занято Deprecated
                case 116: this.d = "OK"; this.r = true; break; // Друг успешно посажен в танк
                case 117: this.d = "ERRFRIENDTANK"; this.r = false; break; // Друг в танке не обнаружен
                case 118: this.d = "OK"; this.r = true; break; //  Друг вылез из танка
                case 119: this.d = ""; this.r = false; break; // У пользователя нет снарядов данного типа Deprecated
                case 120: this.d = "ERRSHELLTYPE"; this.r = false; break; // не получилось зарядить танк: В танке уже есть снаряды этого типа
                case 121: this.d = "OK"; this.r = true; break; // танк был успешно заряжен
                case 122: this.d = "ERRNOSHELL"; this.r = false; break; // не получилось разрядить танк: танк не заряжен
                case 123: this.d = "ERRSHELLTYPE"; this.r = false; break; // не получилось разрядить танк: в танке снаряды другого типа
                case 124: this.d = "OK"; this.r = true; break; // танк был успешно разряжен
                case 125: this.d = "ERRNOSHELLSHOP"; this.r = false; break; // в магазине нет такого снаряда
                case 126: this.d = "OK"; this.r = true; break; // снаряды закуплены
                case 127: this.d = "ERRNODEVICESHOP"; this.r = false; break; // в магазине нет такого устройства
                case 128: this.d = "OK"; this.r = true; break; // устройства успешно куплены
                case 129: this.d = "ERRSIDE"; this.r = false; break; // несоответствие фракций
                case 130: this.d = "ERRMAINTENANCE"; this.r = false; break; // игра не создана: скоро будет отключен сервер
                case 131: this.d = "ERRNOFRIENDSHOP"; this.r = false; break; // в магазине нет такого друга
                case 132: this.d = "ERRFRIENDEXISTS"; this.r = false; break; // у пользователя уже есть такой друг
                case 133: this.d = "OK"; this.r = true; break; // друг успешно куплен
                case 134: this.d = "OK"; this.r = true; break; // танк был успешно куплен
                case 135: this.d = "ERRNOSHOPTANK"; this.r = false; break; // в магазине нет такого танка
                case 136: this.d = "ERRMAXHP"; this.r = false; break; // танк в восстановлении не нуждается
                case 137: this.d = "ERRGAMESIDE"; this.r = false; break; // все места в игре за эту сторону заняты
                case 138: this.d = "OK"; this.r = true; break; // игрок успешно добавлен
                case 139: this.d = "ERRPLAYER"; this.r = false; break; // пользователя нет в списке игроков этой игры
                case 140: this.d = "OK"; this.r = true; break; // результат успешно добавлен
                case 141: this.d = "ERRNEWGAME"; this.r = false; break; // игра не была создана
                case 142: this.d = "OK"; this.r = true; break; // игра создана\удалена успешно
                case 143: this.d = "ERRPLAYEREXIST"; this.r = false; break; // пользователь уже в игре
                case 144: this.d = "ERRNOGAME"; this.r = false; break; // нет такой игры
                case 145: this.d = "OK"; this.r = true; break; // найдена игра с участием этого пользователя
                case 146: this.d = "OK"; this.r = true; break; // пользователь покинул игру
                case 147: this.d = "TANKREPAIRED"; this.r = true; break; // танк был успешно восстановлен
                case 148: this.d = "OK"; this.r = true; break; // слот был куплен успешно
                case 149: this.d = "ERRSLOT"; this.r = false; break; // слота нет в магазине
                case 150: this.d = "OK"; this.r = true; break; // ссылка для изменения пароля успешно выслана
                case 151: this.d = "ERRPWDLINK"; this.r = false; break; // ссылка для изменения пароля не отправлена
                case 153: this.d = "ERRTANKEXIST"; this.r = false; break; // у пользователя уже есть такой танк
                case 154: this.d = "ERRSLOTEXIST"; this.r = false; break; // у пользователя нет свободных слотов
                case 155: this.d = "ERRAMMOSIZE"; this.r = false; break; // в танке нет места для снарядов
                case 156: this.d = "ERRLEVEL"; this.r = false; break; // слишком маленький уровень для покупки
                case 157: this.d = "ERRCALIBER"; this.r = false; break; // не совпадают калибры
                case 158: this.d = "ERRSHELLSIDE"; this.r = false; break; // не совпадают производители
                case 159: this.d = "ERRNOPOINTS"; this.r = false; break; // недостаточно очков для прокачки экипажа
                case 160: this.d = ""; this.r = false; break; //  -Deprecated
                case 161: this.d = "ERRCONNECT"; this.r = false; break; // ошибка соединения, сервер выключен
                case 162: this.d = "ERRWOUND"; this.r = false; break; // нет такого ранения
                case 163: this.d = "ERRNOUSERWOUND"; this.r = false; break; // нет такого ранения у пользователя
                case 164: this.d = "ERRNODEFAULTWOUND"; this.r = false; break; // нет такого ранения в дефолтных
                case 165: this.d = "ERRSTATLIMIT"; this.r = false; break; // невозможно прокачать статы - превышен лимит максимального значения
                case 166: this.d = "ERRUNITTYPE"; this.r = false; break; // несоответствие типов танков
                case 167: this.d = "ERRDEVICEEXIST"; this.r = false; break; // у пользователя уже есть такое устройство
                case 168: this.d = "ERRMAXGRADE"; this.r = false; break; // устройство имеет максимальный уровень
                case 169: this.d = "ERRUSERMISSION"; this.r = false; break; // не найдена миссия пользователя
                case 170: this.d = "ERROFFERENDED"; this.r = false; break; // предложение закончилось (товары)
                case 171: this.d = "ERRPURCHASE"; this.r = false; break; // ошибка валидации покупки
                case 172: this.d = "ERRLINKED"; this.r = false; break; // 
                case 173: this.d = "ERRLOGOUTNEED"; this.r = false; break; //  
                case 174: this.d = "ERRDEVICE"; this.r = false; break; // устройство
                case 175: this.d = "ERRCAMPAIGNLEVEL"; this.r = false; break; // 
                case 176: this.d = "ERRHEALMONEY"; this.r = false; break; //  неверная стоимость лечения
                case 177: this.d = "ERRCLIENT"; this.r = false; break; //  
                case 178: this.d = "ERRTUTORIAL"; this.r = false; break; // tutorial уже был пройден 
                case 179: this.d = "ERRNOPOWERSHOP"; this.r = false; break; // в магазине нет такого PowerUp
                case 180: this.d = "OK"; this.r = true; break; // power ups закуплены
                case 181: this.d = "ERRNOPOWER"; this.r = false; break; //  нет такого PowerUp
                case 182: this.d = "ERRNOQUEST"; this.r = false; break; // 
                case 183: this.d = "ERRNOUSERQUEST"; this.r = false; break; // 
                case 184: this.d = "ERRQUESTEXIST"; this.r = false; break; // 
                case 185: this.d = "ERRQUESTNOTCOMPLETED"; this.r = false; break; // 
                case 186: this.d = "ERRGOOD"; this.r = false; break; // 
                case 187: this.d = "ERRPRODUCTION"; this.r = false; break; // Недостаточно для покупки
                case 188: this.d = "ERRMAXUPGRADE"; this.r = false; break; // 
                case 189: this.d = "ERRUPGRADE"; this.r = false; break; // 
                case 190: this.d = "ERRZONEUNDEFENDABLE"; this.r = false; break; //
                case 191: this.d = "ERRALLZONEDEFENDERSSET"; this.r = false; break; //
                case 192: this.d = "ERRUSERTANKNOTFOUNDINHQ"; this.r = false; break; //
                case 193: this.d = "ERRBUILDINGTYPE"; this.r = false; break; //
                case 194: this.d = "ERRUSERHASNOBUILDING"; this.r = false; break; //
                case 195: this.d = "ERRNOSUCHBUILDINGLEVEL"; this.r = false; break; //
                case 196: this.d = "ERRBUILDINGUNDERCONSTRUCTION"; this.r = false; break; //
                case 197: this.d = "ERRBUILDINGNOTCONSTRUCTING"; this.r = false; break; //
                case 198: this.d = "ERRBUILDINGQUOTA"; this.r = false; break; //
                case 199: this.d = "ERRHQLEVEL"; this.r = false; break; //
                case 200: this.d = "ERRNOTREMOVABLE"; this.r = false; break; //
                case 201: this.d = "ERRNOUSERZONE"; this.r = false; break; //
                case 202: this.d = "ERRBUILDERS"; this.r = false; break; // лимит очереди строительства
                case 203: this.d = "ERRZONEBLOCKED"; this.r = false; break; // сбор ресурсов в зоне заблокирован
                case 204: this.d = "ERRBUILDEREXISTS"; this.r = false; break; // очередь строительства уже открыта
                default: this.d = "ERRS"; this.r = false; break; // Неизвестная ошибка сервера
            }
        }

        public Error SetData(string data)
        {
            var clone = Clone();
            clone.o = data;

            return clone;
        }

        public Error Clone()
        {
            return new Error { e = this.e, d = this.d, r = this.r, o = this.o, b = this.b, };
        }
    }
}