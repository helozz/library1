
//=====================================================================================================================================
//	public class TDdata for C++
//	=== "Pirate Code" edition ===
//	created by Helga V. Oz on 26.04.13
//=====================================================================================================================================
//	Class manual
//=====================================================================================================================================
//	public function TDdata() - конструктор
//	public function GetQueue(i) - получить номер фабричной очереди для юнита, i - id юнита
//	public function GetItemName(i) - получить название объекта или юнита, i - id объекта
//	public function GetItemId(i) - получить id объекта или юнита, i - название объекта
//	public function GetItemU(i) - получить стоимость юнита в уране, i - id юнита
//	public function GetItemT(i) - получить стоимость юнита в титаните, i - id юнита
//	public function GetItemM(i) - получить стоимость юнита в кредитах, i - id юнита
//	public function GetItemG(i) - получить стоимость юнита в кристаллах, i - id юнита
//	public function GetItemC(i) - получить время строительства юнита в секундах, i - id юнита
//	public function GetItemS(i) - получить скорость юнита в км/ч, i - id юнита
//	public function GetItemP(i) - получить количество чертежей в комплекте, i - id чертежа
//	public function GetTrN(i) - получить количество караванов, i - уровень торгового шлюза (0-20)
//	public function GetTrP(i) - получить грузоподъемность караванов, i - уровень торговой палаты (0-20)
//	public function GetTrS(i) - получить скорость караванов, i - уровень транспортной службы (0-20)
//	public function GetWareCapacity(i) - получить вместимость складов, i - уровень склада (1-20)
//	public function GetItemB(i) - получить список для допуска к постройке юнита или объекта, i - id объекта
//	public function GetObjL(i) - получить количество уровней объекта, i - id объекта
//	public function GetObjLU(i,l) - получить стоимость в уране юнита или следующего уровня объекта, i - id объекта, l - требуемый уровень
//	public function GetObjLT(i,l) - получить стоимость в титаните  юнита или  следующего уровня объекта, i - id объекта, l - требуемый уровень
//	public function GetObjLM(i,l) - получить стоимость в кредитах  юнита или следующего уровня объекта, i - id объекта, l - требуемый уровень
//	public function GetObjLG(i,l) - получить стоимость в кристаллах  юнита или следующего уровня объекта, i - id объекта, l - требуемый уровень
//	public function GetObjLC(i,l) - получить время строительства в секундах юнита или  следующего уровня объекта, i - id объекта, l - требуемый уровень
//=====================================================================================================================================


#include "/home/helga/Рабочий стол/projects/_WTUpdater/include/TDdata.h"
#include <string.h>
using namespace std;

TDdata::TDdata()
{
return;
}

int TDdata::GetQueue(int i)
{
switch(i)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 2; break;
case 6: return 2; break;
case 7: return 2; break;
case 8: return 2; break;
case 9: return 4; break;
case 10: return 4; break;
case 11: return 4; break;
case 12: return 4; break;
case 13: return 6; break;
case 14: return 6; break;
case 15: return 6; break;
case 16: return 6; break;
case 17: return 1; break;
case 18: return 1; break;
case 19: return 1; break;
case 20: return 1; break;
case 21: return 3; break;
case 22: return 3; break;
case 23: return 3; break;
case 24: return 3; break;
case 25: return 5; break;
case 26: return 5; break;
case 27: return 5; break;
case 28: return 5; break;
case 29: return 7; break;
case 30: return 7; break;
case 31: return 7; break;
case 32: return 7; break;
case 37: return 0; break;
case 38: return 0; break;
case 39: return 0; break;
case 40: return 0; break;
case 41: return 1; break;
case 42: return 1; break;
case 43: return 1; break;
case 44: return 1; break;
case 45: return 0; break;
case 46: return 0; break;
case 47: return 2; break;
case 48: return 6;break;
case 49: return 1; break;
case 50: return 1; break;
case 51: return 3; break;
case 52: return 7; break;
case 59: return 6; break;
case 60: return 7; break;
case 62: return 6; break;
case 63: return 7; break;
case 9000: return 6; break;
case 9003: return 4; break;
case 9001: return 7; break;
case 9004: return 5; break;
default: return -1; 
}
}

const char* TDdata::GetItemName(int i)
{
switch(i)
{
case 100: return "Дом Капитана"; break;
case 127: return "Обсерватория"; break;
case 124: return "Рынок"; break;
case 101: return "Береговое братство"; break;
case 138: return "Маяк"; break;
case 150: return "Гавань"; break;
case 144: return "Алтарь вуду"; break;
case 139: return "Сокровищница"; break;
case 137: return "Торговая компания"; break;
case 125: return "Лавка картографа"; break;
case 126: return "Гильдия купцов"; break;
case 198: return "Залежи золота"; break;
case 199: return "Залежи дерева"; break;
case 106: return "Фабрика рома"; break;
case 104: return "Лесоповал"; break;
case 102: return "Золотой прииск"; break;
case 109: return "Погреб"; break;
case 108: return "Склад"; break;
case 103: return "Ломбард"; break;
case 105: return "Лесопилка"; break;
case 107: return "Мельница"; break;
case 110: return "Комендатура"; break;
case 112: return "Таверна"; break;
case 600: return "Кладбище"; break;
case 118: return "Эллинг"; break;
case 113: return "Трактир"; break;
case 114: return "Оружейная"; break;
case 115: return "Пушечный двор"; break;
case 116: return "Верфь"; break;
case 117: return "Сухой док"; break;
case 119: return "Адмиралтейство"; break;
case 120: return "Черный рынок"; break;
case 148: return "Машинариум"; break;
case 149: return "Цех"; break;
case 141: return "Храм Дракона"; break;
case 142: return "Форт каперов"; break;
case 200: return "Стена 1 ур."; break;
case 201: return "Башня 1 ур."; break;
case 202: return "Ворота 1 ур."; break;
case 122: return "Пушка 1 ур."; break;
case 123: return "Гарпун 1 ур."; break;
case 121: return "Дозорный 1 ур."; break;
case 203: return "Стена 2 ур."; break;
case 204: return "Башня 2 ур."; break;
case 205: return "Ворота 2 ур."; break;
case 131: return "Пушка 2 ур."; break;
case 134: return "Гарпун 2 ур."; break;
case 128: return "Дозорный 2 ур."; break;
case 206: return "Стена 3 ур."; break;
case 207: return "Башня 3 ур."; break;
case 208: return "Ворота 3 ур."; break;
case 132: return "Пушка 3 ур."; break;
case 135: return "Гарпун 3 ур."; break;
case 129: return "Дозорный 3 ур."; break;
case 209: return "Стена 4 ур."; break;
case 210: return "Башня 4 ур."; break;
case 211: return "Ворота 4 ур."; break;
case 133: return "Пушка 4 ур."; break;
case 136: return "Гарпун 4 ур."; break;
case 130: return "Дозорный 4 ур."; break;
case 744: return "Пушка Амура"; break;
case 745: return "Настоящее сокровище"; break;
case 746: return "Любовное послание"; break;
case 747: return "Королева жемчужин"; break;
case 748: return "Влюбленный Ктулху"; break;
case 749: return "Хранитель сердец"; break;
case 500: return "Могила корсара"; break;
case 299: return "Соколиное Гнездо"; break;
case 303: return "Пиратский схрон"; break;
case 304: return "Могила Кидда"; break;
case 313: return "Веселое пекло"; break;
case 317: return "Бунгало туземца"; break;
case 324: return "Котелок Кука"; break;
case 328: return "Плот Робинзона"; break;
case 339: return "Большая Берта"; break;
case 306: return "Бочка рома"; break;
case 307: return "Бочки пороха"; break;
case 301: return "Адские барабаны"; break;
case 310: return "Частокол"; break;
case 381: return "Весы судьбы"; break;
case 361: return "Кубок молодости"; break;
case 297: return "П-Виселица"; break;
case 331: return "Мешки"; break;
case 291: return "Стол картографа"; break;
case 341: return "Деревянный щит"; break;
case 288: return "Подъемный кран"; break;
case 337: return "Памятник пирату"; break;
case 315: return "Фонтан"; break;
case 342: return "Клетка"; break;
case 359: return "Сундук"; break;
case 380: return "Такелаж"; break;
case 298: return "Яма"; break;
case 316: return "Хижина мертвеца"; break;
case 290: return "Бортовая пушка"; break;
case 353: return "Ядра"; break;
case 360: return "Старая лодка"; break;
case 338: return "Пьяный пират"; break;
case 372: return "Акулий скелет"; break;
case 293: return "Телега"; break;
case 289: return "Убежище Ктулху"; break;
case 294: return "Т-Виселица"; break;
case 314: return "Масляный фонарь"; break;
case 368: return "Странный памятник"; break;
case 287: return "Книга заклинаний"; break;
case 356: return "Загадочный ящик"; break;
case 283: return "Королевский флаг"; break;
case 278: return "Сирена"; break;
case 279: return "Нимфа"; break;
case 282: return "Сердце моряка"; break;
case 285: return "Надувное счастье"; break;
case 286: return "Джентельмен удачи"; break;
case 295: return "Памятник верности"; break;
case 296: return "Благородное сердце"; break;
case 280: return "Якорная цепь"; break;
case 281: return "Штабель досок"; break;
case 284: return "Веселый Роджер"; break;
case 292: return "Сигнальная вышка"; break;
case 311: return "Дерево скелетов"; break;
case 333: return "Памятник киту"; break;
case 344: return "Каменная ограда"; break;
case 355: return "Якорь Фрэнсиса"; break;
case 318: return "Рунные камни"; break;
case 319: return "Моток веревки"; break;
case 382: return "Штурвал"; break;
case 302: return "Баррикада"; break;
case 320: return "Клад"; break;
case 323: return "Тайный колодец"; break;
case 329: return "Грот-мачта"; break;
case 336: return "Памятник Святой Деве"; break;
case 343: return "Кипящая смола"; break;
case 374: return "Солнечные ворота"; break;
case 352: return "Заводная виселица"; break;
case 334: return "Памятник кораблю"; break;
case 383: return "Оружейная стойка"; break;
case 384: return "Фонарь"; break;
case 385: return "Амфоры"; break;
case 386: return "Канатный моток"; break;
case 506: return "Пороховые обезьяны"; break;
case 508: return "Красные мундиры"; break;
case 507: return "Морские волки"; break;
case 1: return "Мародер"; break;
case 2: return "Бестия"; break;
case 3: return "Головорез"; break;
case 4: return "Флибустьер"; break;
case 5: return "Гренадер"; break;
case 6: return "Бомбардир"; break;
case 7: return "Кирасир"; break;
case 8: return "Канонир"; break;
case 9: return "Шлюпка"; break;
case 10: return "Бригантина"; break;
case 11: return "Галеон"; break;
case 12: return "Фрегат"; break;
case 13: return "Аэростат"; break;
case 14: return "Подлодка"; break;
case 15: return "Линкор"; break;
case 16: return "Джаггернаут"; break;
case 59: return "Разведчик \"Цеппелин\""; break;
case 62: return "Подлодка \"Наутилус\""; break;
case 9000: return "Разведчик \"Винтокрыл\""; break;
case 9003: return "\"Шторм\""; break;
case 17: return "Отборный мародер"; break;
case 18: return "Отборная бестия"; break;
case 19: return "Отборный головорез"; break;
case 20: return "Отборный флибустьер"; break;
case 21: return "Отборный гренадер"; break;
case 22: return "Отборный бомбардир"; break;
case 23: return "Отборный кирасир"; break;
case 24: return "Отборный канонир"; break;
case 25: return "Отборная шлюпка"; break;
case 26: return "Отборная бригантина"; break;
case 27: return "Отборный галеон"; break;
case 28: return "Отборный фрегат"; break;
case 29: return "Отборный аэростат"; break;
case 30: return "Отборная подлодка"; break;
case 31: return "Отборный линкор"; break;
case 32: return "Отборный джаггернаут"; break;
case 60: return "Отборный \"Цеппелин\""; break;
case 63: return "Отборный \"Наутилус\""; break;
case 9001: return "Отборный \"Винтокрыл\""; break;
case 9004: return "Отборный \"Шторм\""; break;
case 33: return "Призрачный корсар"; break;
case 37: return "Дикая кошка"; break;
case 38: return "Сорвиголова"; break;
case 39: return "Кобуксон"; break;
case 40: return "Джонка"; break;
case 41: return "Отборная дикая кошка"; break;
case 42: return "Отборный сорвиголова"; break;
case 43: return "Отборный кобуксон"; break;
case 44: return "Отборная джонка"; break;
case 45: return "Морпех"; break;
case 46: return "Подрывница"; break;
case 47: return "Люгер"; break;
case 48: return "Шхуна"; break;
case 49: return "Отборный морпех"; break;
case 50: return "Отборная подрывница"; break;
case 51: return "Отборный люгер"; break;
case 52: return "Отборная шхуна"; break;
case 53: return "Десперадо"; break;
case 54: return "Конкистадор"; break;
case 55: return "Инферно"; break;
case 56: return "Эль Дьябло"; break;
case 57: return "Одержимый"; break;
case 58: return "Фантом"; break;
case 34: return "Пороховые обезьяны"; break;
case 36: return "Красные мундиры"; break;
case 35: return "Морские волки"; break;
case 64: return "Королевский мародер"; break;
case 65: return "Королевская бестия"; break;
case 66: return "Королевский головорез"; break;
case 67: return "Королевский флибустьер"; break;
case 68: return "Королевский гренадер"; break;
case 69: return "Королевский бомбардир"; break;
case 70: return "Королевский кирасир"; break;
case 71: return "Королевский канонир"; break;
case 72: return "Королевская шлюпка"; break;
case 73: return "Королевская бригантина"; break;
case 74: return "Королевский галеон"; break;
case 75: return "Королевский фрегат"; break;
case 76: return "Королевский аэростат"; break;
case 77: return "Королевская подлодка"; break;
case 78: return "Королевский линкор"; break;
case 79: return "Королевский джаггернаут"; break;
case 80: return "Королевская дикая кошка"; break;
case 81: return "Королевский сорвиголова"; break;
case 82: return "Королевский кобуксон"; break;
case 83: return "Королевская джонка"; break;
case 84: return "Королевский морпех"; break;
case 85: return "Королевская подрывница"; break;
case 86: return "Королевский люгер"; break;
case 87: return "Королевская шхуна"; break;
case 61: return "Королевский Цеппелин"; break;
case 99: return "Королевский Наутилус"; break;
case 9002: return "Королевский Винтокрыл"; break;
case 91: return "Дирижабль"; break;
case 92: return "Громобой"; break;
case 94: return "Бастион"; break;
case 93: return "Летучий Голландец"; break;
case 95: return "Пиратский барон"; break;
case 96: return "Боевой слон"; break;
case 97: return "Мановар"; break;
case 98: return "Кракен"; break;
case 1050: return "Мореходство"; break;
case 1052: return "Торговля"; break;
case 1154: return "Чертеж для Математика"; break;
case 1054: return "Математика"; break;
case 1153: return "Чертеж для Контрабанда"; break;
case 1053: return "Контрабанда"; break;
case 1155: return "Чертеж для Экономика"; break;
case 1055: return "Экономика"; break;
case 1156: return "Чертеж для Мануфактура"; break;
case 1056: return "Мануфактура"; break;
case 1157: return "Чертеж для Капитализм"; break;
case 1057: return "Капитализм"; break;
case 1058: return "Фехтование"; break;
case 1059: return "Стрельба"; break;
case 1160: return "Чертеж для Дозор"; break;
case 1060: return "Дозор"; break;
case 1161: return "Чертеж для Абордаж"; break;
case 1061: return "Абордаж"; break;
case 1162: return "Чертеж для Саперное дело"; break;
case 1062: return "Саперное дело"; break;
case 1178: return "Чертеж для Металлургия"; break;
case 1078: return "Металлургия"; break;
case 1163: return "Чертеж для Оружейное дело"; break;
case 1063: return "Оружейное дело"; break;
case 1179: return "Чертеж для Артиллерия"; break;
case 1079: return "Артиллерия"; break;
case 1165: return "Чертеж для Кораблестроение"; break;
case 1065: return "Кораблестроение"; break;
case 1168: return "Чертеж для Навигация"; break;
case 1068: return "Навигация"; break;
case 1166: return "Чертеж для Бронирование"; break;
case 1066: return "Бронирование"; break;
case 1169: return "Чертеж для Инженерия"; break;
case 1069: return "Инженерия"; break;
case 1072: return "Крепость 1 ур."; break;
case 1173: return "Чертеж для Крепость 2 ур."; break;
case 1073: return "Крепость 2 ур."; break;
case 1174: return "Чертеж для Крепость 3 ур."; break;
case 1074: return "Крепость 3 ур."; break;
case 1175: return "Чертеж для Крепость 4 ур."; break;
case 1075: return "Крепость 4 ур."; break;
case 1176: return "Чертеж для Аэронавтика"; break;
case 1076: return "Аэронавтика"; break;
case 1170: return "Чертеж для Гидродинамика"; break;
case 1070: return "Гидродинамика"; break;
case 1171: return "Чертеж для Физика"; break;
case 1071: return "Физика"; break;
case 1180: return "Чертеж для Конвейер"; break;
case 1080: return "Конвейер"; break;
case 1181: return "Чертеж для Клык дракона"; break;
case 1081: return "Клык дракона"; break;
case 1182: return "Чертеж для Глаз дракона"; break;
case 1082: return "Глаз дракона"; break;
case 1183: return "Чертеж для Чешуя дракона"; break;
case 1083: return "Чешуя дракона"; break;
case 1184: return "Чертеж для Крыло дракона"; break;
case 1084: return "Крыло дракона"; break;
case 1185: return "Чертеж для Тактика"; break;
case 1085: return "Тактика"; break;
case 1186: return "Чертеж для Стратегия"; break;
case 1086: return "Стратегия"; break;
case 1187: return "Чертеж для Мобильные войска"; break;
case 1087: return "Мобильные войска"; break;
case 1188: return "Чертеж для Колонизация"; break;
case 1088: return "Колонизация"; break;
case 1190: return "Чертеж для Паровой двигатель"; break;
case 1090: return "Паровой двигатель"; break;
case 1191: return "Чертеж для Генератор Вальтера"; break;
case 1091: return "Генератор Вальтера"; break;
case 1192: return "Чертеж для Воздушный винт"; break;
case 1092: return "Воздушный винт"; break;
case 1193: return "Чертеж для Динамо-машина"; break;
case 1093: return "Динамо-машина"; break;
case 1500: return "Чертов корень"; break;
case 1501: return "Веселый Роджер"; break;
case 1502: return "Ручная граната"; break;
case 1503: return "Гензель"; break;
case 1504: return "Боевой попугай"; break;
case 1505: return "Кодекс Пирата"; break;
case 1506: return "Фламберг"; break;
case 1507: return "Коготь Кракена"; break;
case 1508: return "Адское пойло"; break;
case 1509: return "Наковальня Левши"; break;
case 1510: return "Абордажный крюк"; break;
case 1511: return "Пилюли для жадности"; break;
case 1512: return "Троица"; break;
case 1513: return "Арсенал"; break;
case 1514: return "Сапоги-мореходы"; break;
case 1515: return "Жало"; break;
case 1516: return "Янтарное пламя"; break;
case 1517: return "Шкатулка Мадам Цин"; break;
case 1518: return "Реактивное топливо"; break;
case 1519: return "Амброзия"; break;
case 1520: return "Книппель"; break;
case 1521: return "Брандскугели"; break;
case 1522: return "Стимул"; break;
case 1523: return "Гроздья гнева"; break;
case 1524: return "Костяной рупор"; break;
case 1525: return "Мешок Борея"; break;
case 1526: return "Звезда смерти"; break;
case 1527: return "Пламя дракона"; break;
case 1528: return "Пулемет"; break;
case 1529: return "Штык-палаш"; break;
case 1530: return "Бумеранг"; break;
case 1531: return "Пороховая обезьяна"; break;
case 1532: return "Волшебная палочка"; break;
case 1533: return "Сундук мертвеца"; break;
case 1534: return "Часы Да Винчи"; break;
case 1535: return "Инструменты Блада"; break;
case 1600: return "Докторская сумка"; break;
case 1601: return "Рукав Сильвера"; break;
case 1602: return "Спасательный круг"; break;
case 1603: return "Походные аптечки"; break;
case 1604: return "Кираса Кортеса"; break;
case 1605: return "Боевая раскраска"; break;
case 1606: return "Маска Горгоны"; break;
case 1607: return "Щит Калипсо"; break;
case 1608: return "Рыбья чешуя"; break;
case 1609: return "Волшебный порошок"; break;
case 1610: return "Кукла Вуду"; break;
case 1611: return "Гримуар"; break;
case 1612: return "Боевой барабан"; break;
case 1613: return "Знамя наемников"; break;
case 1614: return "Фартук Гефеста"; break;
case 1615: return "Шайтан-коробка"; break;
case 1616: return "Заслон"; break;
case 1617: return "Огнемет"; break;
case 1618: return "Платок Изабеллы"; break;
case 1619: return "Инквизитор"; break;
case 1620: return "Бастер"; break;
case 1621: return "Штурвал Синдбада"; break;
case 1622: return "Архангел"; break;
case 1623: return "Маскировочная сеть"; break;
case 1624: return "Ослепительный прибор"; break;
case 1625: return "Подводная мина"; break;
case 1626: return "Коготь тигра"; break;
case 1627: return "Кошачий глаз"; break;
case 1628: return "Кошачья колыбель"; break;
case 1629: return "Бамбуковая броня"; break;
case 1630: return "Алтарь дракона"; break;
case 1631: return "Заклятье"; break;
case 1632: return "Навигатор"; break;
case 1633: return "Астролябия"; break;
case 1634: return "Волшебная лампа"; break;
case 1635: return "Дух дракона"; break;
case 1636: return "Стальное крыло"; break;
case 1637: return "Защитник Тэнгу"; break;
case 1638: return "Знамя драконов"; break;
case 1639: return "Табак боцмана"; break;
case 1640: return "Каша из топора"; break;
case 1641: return "Саламандра"; break;
case 1642: return "Черная вдова"; break;
case 1643: return "Приказ министерства"; break;
case 1644: return "Золотой ключик"; break;
case 1645: return "Подзорная труба Нельсона"; break;
case 1646: return "Перстень короля"; break;
case 1647: return "Чертежи адмиралтейства"; break;
case 1648: return "Ultima ratio"; break;
case 1649: return "Слуховая трубка"; break;
case 1650: return "Подзорная труба Фогга"; break;
case 1651: return "Винты да Винчи"; break;
case 1700: return "Правдоруб"; break;
case 1701: return "Автоматон"; break;
case 1702: return "Карта сокровищ"; break;
case 1703: return "Крюк Мидаса"; break;
case 1704: return "Замок квартирмейстера"; break;
case 1705: return "Фляга Джека"; break;
case 1706: return "Бурдюк Бахуса"; break;
case 1707: return "Сундук Дэйви Джонса"; break;
case 1708: return "Проклятый дублон"; break;
case 1709: return "Дневник Ньютона"; break;
case 1710: return "Паровой станок"; break;
case 1711: return "Калькулятор"; break;
case 1712: return "Испанский сапог"; break;
case 1713: return "Тотем"; break;
case 1714: return "Золотое руно"; break;
case 1901: return "Идол Ацтеков"; break;
default: return "Название не установлено";
}
}

int TDdata::GetItemId(const char* i)
{
if (strcmp(i,"Дом Капитана")==0) return 100;
if (strcmp(i,"Обсерватория")==0) return 127;
if (strcmp(i,"Рынок")==0) return 124;
if (strcmp(i,"Береговое братство")==0) return 101;
if (strcmp(i,"Маяк")==0) return 138;
if (strcmp(i,"Гавань")==0) return 150;
if (strcmp(i,"Алтарь вуду")==0) return 144;
if (strcmp(i,"Сокровищница")==0) return 139;
if (strcmp(i,"Торговая компания")==0) return 137;
if (strcmp(i,"Лавка картографа")==0) return 125;
if (strcmp(i,"Гильдия купцов")==0) return 126;
if (strcmp(i,"Залежи золота")==0) return 198;
if (strcmp(i,"Залежи дерева")==0) return 199;
if (strcmp(i,"Фабрика рома")==0) return 106;
if (strcmp(i,"Лесоповал")==0) return 104;
if (strcmp(i,"Золотой прииск")==0) return 102;
if (strcmp(i,"Погреб")==0) return 109;
if (strcmp(i,"Склад")==0) return 108;
if (strcmp(i,"Ломбард")==0) return 103;
if (strcmp(i,"Лесопилка")==0) return 105;
if (strcmp(i,"Мельница")==0) return 107;
if (strcmp(i,"Комендатура")==0) return 110;
if (strcmp(i,"Таверна")==0) return 112;
if (strcmp(i,"Кладбище")==0) return 600;
if (strcmp(i,"Эллинг")==0) return 118;
if (strcmp(i,"Трактир")==0) return 113;
if (strcmp(i,"Оружейная")==0) return 114;
if (strcmp(i,"Пушечный двор")==0) return 115;
if (strcmp(i,"Верфь")==0) return 116;
if (strcmp(i,"Сухой док")==0) return 117;
if (strcmp(i,"Адмиралтейство")==0) return 119;
if (strcmp(i,"Черный рынок")==0) return 120;
if (strcmp(i,"Машинариум")==0) return 148;
if (strcmp(i,"Цех")==0) return 149;
if (strcmp(i,"Храм Дракона")==0) return 141;
if (strcmp(i,"Форт каперов")==0) return 142;
if (strcmp(i,"Стена 1 ур.")==0) return 200;
if (strcmp(i,"Башня 1 ур.")==0) return 201;
if (strcmp(i,"Ворота 1 ур.")==0) return 202;
if (strcmp(i,"Пушка 1 ур.")==0) return 122;
if (strcmp(i,"Гарпун 1 ур.")==0) return 123;
if (strcmp(i,"Дозорный 1 ур.")==0) return 121;
if (strcmp(i,"Стена 2 ур.")==0) return 203;
if (strcmp(i,"Башня 2 ур.")==0) return 204;
if (strcmp(i,"Ворота 2 ур.")==0) return 205;
if (strcmp(i,"Пушка 2 ур.")==0) return 131;
if (strcmp(i,"Гарпун 2 ур.")==0) return 134;
if (strcmp(i,"Дозорный 2 ур.")==0) return 128;
if (strcmp(i,"Стена 3 ур.")==0) return 206;
if (strcmp(i,"Башня 3 ур.")==0) return 207;
if (strcmp(i,"Ворота 3 ур.")==0) return 208;
if (strcmp(i,"Пушка 3 ур.")==0) return 132;
if (strcmp(i,"Гарпун 3 ур.")==0) return 135;
if (strcmp(i,"Дозорный 3 ур.")==0) return 129;
if (strcmp(i,"Стена 4 ур.")==0) return 209;
if (strcmp(i,"Башня 4 ур.")==0) return 210;
if (strcmp(i,"Ворота 4 ур.")==0) return 211;
if (strcmp(i,"Пушка 4 ур.")==0) return 133;
if (strcmp(i,"Гарпун 4 ур.")==0) return 136;
if (strcmp(i,"Дозорный 4 ур.")==0) return 130;
if (strcmp(i,"Пушка Амура")==0) return 744;
if (strcmp(i,"Настоящее сокровище")==0) return 745;
if (strcmp(i,"Любовное послание")==0) return 746;
if (strcmp(i,"Королева жемчужин")==0) return 747;
if (strcmp(i,"Влюбленный Ктулху")==0) return 748;
if (strcmp(i,"Хранитель сердец")==0) return 749;
if (strcmp(i,"Могила корсара")==0) return 500;
if (strcmp(i,"Соколиное Гнездо")==0) return 299;
if (strcmp(i,"Пиратский схрон")==0) return 303;
if (strcmp(i,"Могила Кидда")==0) return 304;
if (strcmp(i,"Веселое пекло")==0) return 313;
if (strcmp(i,"Бунгало туземца")==0) return 317;
if (strcmp(i,"Котелок Кука")==0) return 324;
if (strcmp(i,"Плот Робинзона")==0) return 328;
if (strcmp(i,"Большая Берта")==0) return 339;
if (strcmp(i,"Бочка рома")==0) return 306;
if (strcmp(i,"Бочки пороха")==0) return 307;
if (strcmp(i,"Адские барабаны")==0) return 301;
if (strcmp(i,"Частокол")==0) return 310;
if (strcmp(i,"Весы судьбы")==0) return 381;
if (strcmp(i,"Кубок молодости")==0) return 361;
if (strcmp(i,"П-Виселица")==0) return 297;
if (strcmp(i,"Мешки")==0) return 331;
if (strcmp(i,"Стол картографа")==0) return 291;
if (strcmp(i,"Деревянный щит")==0) return 341;
if (strcmp(i,"Подъемный кран")==0) return 288;
if (strcmp(i,"Памятник пирату")==0) return 337;
if (strcmp(i,"Фонтан")==0) return 315;
if (strcmp(i,"Клетка")==0) return 342;
if (strcmp(i,"Сундук")==0) return 359;
if (strcmp(i,"Такелаж")==0) return 380;
if (strcmp(i,"Яма")==0) return 298;
if (strcmp(i,"Хижина мертвеца")==0) return 316;
if (strcmp(i,"Бортовая пушка")==0) return 290;
if (strcmp(i,"Ядра")==0) return 353;
if (strcmp(i,"Старая лодка")==0) return 360;
if (strcmp(i,"Пьяный пират")==0) return 338;
if (strcmp(i,"Акулий скелет")==0) return 372;
if (strcmp(i,"Телега")==0) return 293;
if (strcmp(i,"Убежище Ктулху")==0) return 289;
if (strcmp(i,"Т-Виселица")==0) return 294;
if (strcmp(i,"Масляный фонарь")==0) return 314;
if (strcmp(i,"Странный памятник")==0) return 368;
if (strcmp(i,"Книга заклинаний")==0) return 287;
if (strcmp(i,"Загадочный ящик")==0) return 356;
if (strcmp(i,"Королевский флаг")==0) return 283;
if (strcmp(i,"Сирена")==0) return 278;
if (strcmp(i,"Нимфа")==0) return 279;
if (strcmp(i,"Сердце моряка")==0) return 282;
if (strcmp(i,"Надувное счастье")==0) return 285;
if (strcmp(i,"Джентельмен удачи")==0) return 286;
if (strcmp(i,"Памятник верности")==0) return 295;
if (strcmp(i,"Благородное сердце")==0) return 296;
if (strcmp(i,"Якорная цепь")==0) return 280;
if (strcmp(i,"Штабель досок")==0) return 281;
if (strcmp(i,"Веселый Роджер")==0) return 284;
if (strcmp(i,"Сигнальная вышка")==0) return 292;
if (strcmp(i,"Дерево скелетов")==0) return 311;
if (strcmp(i,"Памятник киту")==0) return 333;
if (strcmp(i,"Каменная ограда")==0) return 344;
if (strcmp(i,"Якорь Фрэнсиса")==0) return 355;
if (strcmp(i,"Рунные камни")==0) return 318;
if (strcmp(i,"Моток веревки")==0) return 319;
if (strcmp(i,"Штурвал")==0) return 382;
if (strcmp(i,"Баррикада")==0) return 302;
if (strcmp(i,"Клад")==0) return 320;
if (strcmp(i,"Тайный колодец")==0) return 323;
if (strcmp(i,"Грот-мачта")==0) return 329;
if (strcmp(i,"Памятник Святой Деве")==0) return 336;
if (strcmp(i,"Кипящая смола")==0) return 343;
if (strcmp(i,"Солнечные ворота")==0) return 374;
if (strcmp(i,"Заводная виселица")==0) return 352;
if (strcmp(i,"Памятник кораблю")==0) return 334;
if (strcmp(i,"Оружейная стойка")==0) return 383;
if (strcmp(i,"Фонарь")==0) return 384;
if (strcmp(i,"Амфоры")==0) return 385;
if (strcmp(i,"Канатный моток")==0) return 386;
if (strcmp(i,"Пороховые обезьяны")==0) return 506;
if (strcmp(i,"Красные мундиры")==0) return 508;
if (strcmp(i,"Морские волки")==0) return 507;
if (strcmp(i,"Мародер")==0) return 1;
if (strcmp(i,"Бестия")==0) return 2;
if (strcmp(i,"Головорез")==0) return 3;
if (strcmp(i,"Флибустьер")==0) return 4;
if (strcmp(i,"Гренадер")==0) return 5;
if (strcmp(i,"Бомбардир")==0) return 6;
if (strcmp(i,"Кирасир")==0) return 7;
if (strcmp(i,"Канонир")==0) return 8;
if (strcmp(i,"Шлюпка")==0) return 9;
if (strcmp(i,"Бригантина")==0) return 10;
if (strcmp(i,"Галеон")==0) return 11;
if (strcmp(i,"Фрегат")==0) return 12;
if (strcmp(i,"Аэростат")==0) return 13;
if (strcmp(i,"Подлодка")==0) return 14;
if (strcmp(i,"Линкор")==0) return 15;
if (strcmp(i,"Джаггернаут")==0) return 16;
if (strcmp(i,"Разведчик \"Цеппелин\"")==0) return 59;
if (strcmp(i,"Подлодка \"Наутилус\"")==0) return 62;
if (strcmp(i,"Разведчик \"Винтокрыл\"")==0) return 9000;
if (strcmp(i,"\"Шторм\"")==0) return 9003;
if (strcmp(i,"Отборный мародер")==0) return 17;
if (strcmp(i,"Отборная бестия")==0) return 18;
if (strcmp(i,"Отборный головорез")==0) return 19;
if (strcmp(i,"Отборный флибустьер")==0) return 20;
if (strcmp(i,"Отборный гренадер")==0) return 21;
if (strcmp(i,"Отборный бомбардир")==0) return 22;
if (strcmp(i,"Отборный кирасир")==0) return 23;
if (strcmp(i,"Отборный канонир")==0) return 24;
if (strcmp(i,"Отборная шлюпка")==0) return 25;
if (strcmp(i,"Отборная бригантина")==0) return 26;
if (strcmp(i,"Отборный галеон")==0) return 27;
if (strcmp(i,"Отборный фрегат")==0) return 28;
if (strcmp(i,"Отборный аэростат")==0) return 29;
if (strcmp(i,"Отборная подлодка")==0) return 30;
if (strcmp(i,"Отборный линкор")==0) return 31;
if (strcmp(i,"Отборный джаггернаут")==0) return 32;
if (strcmp(i,"Отборный \"Цеппелин\"")==0) return 60;
if (strcmp(i,"Отборный \"Наутилус\"")==0) return 63;
if (strcmp(i,"Отборный \"Винтокрыл\"")==0) return 9001;
if (strcmp(i,"Отборный \"Шторм\"")==0) return 9004;
if (strcmp(i,"Призрачный корсар")==0) return 33;
if (strcmp(i,"Дикая кошка")==0) return 37;
if (strcmp(i,"Сорвиголова")==0) return 38;
if (strcmp(i,"Кобуксон")==0) return 39;
if (strcmp(i,"Джонка")==0) return 40;
if (strcmp(i,"Отборная дикая кошка")==0) return 41;
if (strcmp(i,"Отборный сорвиголова")==0) return 42;
if (strcmp(i,"Отборный кобуксон")==0) return 43;
if (strcmp(i,"Отборная джонка")==0) return 44;
if (strcmp(i,"Морпех")==0) return 45;
if (strcmp(i,"Подрывница")==0) return 46;
if (strcmp(i,"Люгер")==0) return 47;
if (strcmp(i,"Шхуна")==0) return 48;
if (strcmp(i,"Отборный морпех")==0) return 49;
if (strcmp(i,"Отборная подрывница")==0) return 50;
if (strcmp(i,"Отборный люгер")==0) return 51;
if (strcmp(i,"Отборная шхуна")==0) return 52;
if (strcmp(i,"Десперадо")==0) return 53;
if (strcmp(i,"Конкистадор")==0) return 54;
if (strcmp(i,"Инферно")==0) return 55;
if (strcmp(i,"Эль Дьябло")==0) return 56;
if (strcmp(i,"Одержимый")==0) return 57;
if (strcmp(i,"Фантом")==0) return 58;
if (strcmp(i,"Пороховые обезьяны")==0) return 34;
if (strcmp(i,"Красные мундиры")==0) return 36;
if (strcmp(i,"Морские волки")==0) return 35;
if (strcmp(i,"Королевский мародер")==0) return 64;
if (strcmp(i,"Королевская бестия")==0) return 65;
if (strcmp(i,"Королевский головорез")==0) return 66;
if (strcmp(i,"Королевский флибустьер")==0) return 67;
if (strcmp(i,"Королевский гренадер")==0) return 68;
if (strcmp(i,"Королевский бомбардир")==0) return 69;
if (strcmp(i,"Королевский кирасир")==0) return 70;
if (strcmp(i,"Королевский канонир")==0) return 71;
if (strcmp(i,"Королевская шлюпка")==0) return 72;
if (strcmp(i,"Королевская бригантина")==0) return 73;
if (strcmp(i,"Королевский галеон")==0) return 74;
if (strcmp(i,"Королевский фрегат")==0) return 75;
if (strcmp(i,"Королевский аэростат")==0) return 76;
if (strcmp(i,"Королевская подлодка")==0) return 77;
if (strcmp(i,"Королевский линкор")==0) return 78;
if (strcmp(i,"Королевский джаггернаут")==0) return 79;
if (strcmp(i,"Королевская дикая кошка")==0) return 80;
if (strcmp(i,"Королевский сорвиголова")==0) return 81;
if (strcmp(i,"Королевский кобуксон")==0) return 82;
if (strcmp(i,"Королевская джонка")==0) return 83;
if (strcmp(i,"Королевский морпех")==0) return 84;
if (strcmp(i,"Королевская подрывница")==0) return 85;
if (strcmp(i,"Королевский люгер")==0) return 86;
if (strcmp(i,"Королевская шхуна")==0) return 87;
if (strcmp(i,"Королевский Цеппелин")==0) return 61;
if (strcmp(i,"Королевский Наутилус")==0) return 99;
if (strcmp(i,"Королевский Винтокрыл")==0) return 9002;
if (strcmp(i,"Дирижабль")==0) return 91;
if (strcmp(i,"Громобой")==0) return 92;
if (strcmp(i,"Бастион")==0) return 94;
if (strcmp(i,"Летучий Голландец")==0) return 93;
if (strcmp(i,"Пиратский барон")==0) return 95;
if (strcmp(i,"Боевой слон")==0) return 96;
if (strcmp(i,"Мановар")==0) return 97;
if (strcmp(i,"Кракен")==0) return 98;
if (strcmp(i,"Мореходство")==0) return 1050;
if (strcmp(i,"Торговля")==0) return 1052;
if (strcmp(i,"Чертеж для Математика")==0) return 1154;
if (strcmp(i,"Математика")==0) return 1054;
if (strcmp(i,"Чертеж для Контрабанда")==0) return 1153;
if (strcmp(i,"Контрабанда")==0) return 1053;
if (strcmp(i,"Чертеж для Экономика")==0) return 1155;
if (strcmp(i,"Экономика")==0) return 1055;
if (strcmp(i,"Чертеж для Мануфактура")==0) return 1156;
if (strcmp(i,"Мануфактура")==0) return 1056;
if (strcmp(i,"Чертеж для Капитализм")==0) return 1157;
if (strcmp(i,"Капитализм")==0) return 1057;
if (strcmp(i,"Фехтование")==0) return 1058;
if (strcmp(i,"Стрельба")==0) return 1059;
if (strcmp(i,"Чертеж для Дозор")==0) return 1160;
if (strcmp(i,"Дозор")==0) return 1060;
if (strcmp(i,"Чертеж для Абордаж")==0) return 1161;
if (strcmp(i,"Абордаж")==0) return 1061;
if (strcmp(i,"Чертеж для Саперное дело")==0) return 1162;
if (strcmp(i,"Саперное дело")==0) return 1062;
if (strcmp(i,"Чертеж для Металлургия")==0) return 1178;
if (strcmp(i,"Металлургия")==0) return 1078;
if (strcmp(i,"Чертеж для Оружейное дело")==0) return 1163;
if (strcmp(i,"Оружейное дело")==0) return 1063;
if (strcmp(i,"Чертеж для Артиллерия")==0) return 1179;
if (strcmp(i,"Артиллерия")==0) return 1079;
if (strcmp(i,"Чертеж для Кораблестроение")==0) return 1165;
if (strcmp(i,"Кораблестроение")==0) return 1065;
if (strcmp(i,"Чертеж для Навигация")==0) return 1168;
if (strcmp(i,"Навигация")==0) return 1068;
if (strcmp(i,"Чертеж для Бронирование")==0) return 1166;
if (strcmp(i,"Бронирование")==0) return 1066;
if (strcmp(i,"Чертеж для Инженерия")==0) return 1169;
if (strcmp(i,"Инженерия")==0) return 1069;
if (strcmp(i,"Крепость 1 ур.")==0) return 1072;
if (strcmp(i,"Чертеж для Крепость 2 ур.")==0) return 1173;
if (strcmp(i,"Крепость 2 ур.")==0) return 1073;
if (strcmp(i,"Чертеж для Крепость 3 ур.")==0) return 1174;
if (strcmp(i,"Крепость 3 ур.")==0) return 1074;
if (strcmp(i,"Чертеж для Крепость 4 ур.")==0) return 1175;
if (strcmp(i,"Крепость 4 ур.")==0) return 1075;
if (strcmp(i,"Чертеж для Аэронавтика")==0) return 1176;
if (strcmp(i,"Аэронавтика")==0) return 1076;
if (strcmp(i,"Чертеж для Гидродинамика")==0) return 1170;
if (strcmp(i,"Гидродинамика")==0) return 1070;
if (strcmp(i,"Чертеж для Физика")==0) return 1171;
if (strcmp(i,"Физика")==0) return 1071;
if (strcmp(i,"Чертеж для Конвейер")==0) return 1180;
if (strcmp(i,"Конвейер")==0) return 1080;
if (strcmp(i,"Чертеж для Клык дракона")==0) return 1181;
if (strcmp(i,"Клык дракона")==0) return 1081;
if (strcmp(i,"Чертеж для Глаз дракона")==0) return 1182;
if (strcmp(i,"Глаз дракона")==0) return 1082;
if (strcmp(i,"Чертеж для Чешуя дракона")==0) return 1183;
if (strcmp(i,"Чешуя дракона")==0) return 1083;
if (strcmp(i,"Чертеж для Крыло дракона")==0) return 1184;
if (strcmp(i,"Крыло дракона")==0) return 1084;
if (strcmp(i,"Чертеж для Тактика")==0) return 1185;
if (strcmp(i,"Тактика")==0) return 1085;
if (strcmp(i,"Чертеж для Стратегия")==0) return 1186;
if (strcmp(i,"Стратегия")==0) return 1086;
if (strcmp(i,"Чертеж для Мобильные войска")==0) return 1187;
if (strcmp(i,"Мобильные войска")==0) return 1087;
if (strcmp(i,"Чертеж для Колонизация")==0) return 1188;
if (strcmp(i,"Колонизация")==0) return 1088;
if (strcmp(i,"Чертеж для Паровой двигатель")==0) return 1190;
if (strcmp(i,"Паровой двигатель")==0) return 1090;
if (strcmp(i,"Чертеж для Генератор Вальтера")==0) return 1191;
if (strcmp(i,"Генератор Вальтера")==0) return 1091;
if (strcmp(i,"Чертеж для Воздушный винт")==0) return 1192;
if (strcmp(i,"Воздушный винт")==0) return 1092;
if (strcmp(i,"Чертеж для Динамо-машина")==0) return 1193;
if (strcmp(i,"Динамо-машина")==0) return 1093;
if (strcmp(i,"Чертов корень")==0) return 1500;
if (strcmp(i,"Веселый Роджер")==0) return 1501;
if (strcmp(i,"Ручная граната")==0) return 1502;
if (strcmp(i,"Гензель")==0) return 1503;
if (strcmp(i,"Боевой попугай")==0) return 1504;
if (strcmp(i,"Кодекс Пирата")==0) return 1505;
if (strcmp(i,"Фламберг")==0) return 1506;
if (strcmp(i,"Коготь Кракена")==0) return 1507;
if (strcmp(i,"Адское пойло")==0) return 1508;
if (strcmp(i,"Наковальня Левши")==0) return 1509;
if (strcmp(i,"Абордажный крюк")==0) return 1510;
if (strcmp(i,"Пилюли для жадности")==0) return 1511;
if (strcmp(i,"Троица")==0) return 1512;
if (strcmp(i,"Арсенал")==0) return 1513;
if (strcmp(i,"Сапоги-мореходы")==0) return 1514;
if (strcmp(i,"Жало")==0) return 1515;
if (strcmp(i,"Янтарное пламя")==0) return 1516;
if (strcmp(i,"Шкатулка Мадам Цин")==0) return 1517;
if (strcmp(i,"Реактивное топливо")==0) return 1518;
if (strcmp(i,"Амброзия")==0) return 1519;
if (strcmp(i,"Книппель")==0) return 1520;
if (strcmp(i,"Брандскугели")==0) return 1521;
if (strcmp(i,"Стимул")==0) return 1522;
if (strcmp(i,"Гроздья гнева")==0) return 1523;
if (strcmp(i,"Костяной рупор")==0) return 1524;
if (strcmp(i,"Мешок Борея")==0) return 1525;
if (strcmp(i,"Звезда смерти")==0) return 1526;
if (strcmp(i,"Пламя дракона")==0) return 1527;
if (strcmp(i,"Пулемет")==0) return 1528;
if (strcmp(i,"Штык-палаш")==0) return 1529;
if (strcmp(i,"Бумеранг")==0) return 1530;
if (strcmp(i,"Пороховая обезьяна")==0) return 1531;
if (strcmp(i,"Волшебная палочка")==0) return 1532;
if (strcmp(i,"Сундук мертвеца")==0) return 1533;
if (strcmp(i,"Часы Да Винчи")==0) return 1534;
if (strcmp(i,"Инструменты Блада")==0) return 1535;
if (strcmp(i,"Докторская сумка")==0) return 1600;
if (strcmp(i,"Рукав Сильвера")==0) return 1601;
if (strcmp(i,"Спасательный круг")==0) return 1602;
if (strcmp(i,"Походные аптечки")==0) return 1603;
if (strcmp(i,"Кираса Кортеса")==0) return 1604;
if (strcmp(i,"Боевая раскраска")==0) return 1605;
if (strcmp(i,"Маска Горгоны")==0) return 1606;
if (strcmp(i,"Щит Калипсо")==0) return 1607;
if (strcmp(i,"Рыбья чешуя")==0) return 1608;
if (strcmp(i,"Волшебный порошок")==0) return 1609;
if (strcmp(i,"Кукла Вуду")==0) return 1610;
if (strcmp(i,"Гримуар")==0) return 1611;
if (strcmp(i,"Боевой барабан")==0) return 1612;
if (strcmp(i,"Знамя наемников")==0) return 1613;
if (strcmp(i,"Фартук Гефеста")==0) return 1614;
if (strcmp(i,"Шайтан-коробка")==0) return 1615;
if (strcmp(i,"Заслон")==0) return 1616;
if (strcmp(i,"Огнемет")==0) return 1617;
if (strcmp(i,"Платок Изабеллы")==0) return 1618;
if (strcmp(i,"Инквизитор")==0) return 1619;
if (strcmp(i,"Бастер")==0) return 1620;
if (strcmp(i,"Штурвал Синдбада")==0) return 1621;
if (strcmp(i,"Архангел")==0) return 1622;
if (strcmp(i,"Маскировочная сеть")==0) return 1623;
if (strcmp(i,"Ослепительный прибор")==0) return 1624;
if (strcmp(i,"Подводная мина")==0) return 1625;
if (strcmp(i,"Коготь тигра")==0) return 1626;
if (strcmp(i,"Кошачий глаз")==0) return 1627;
if (strcmp(i,"Кошачья колыбель")==0) return 1628;
if (strcmp(i,"Бамбуковая броня")==0) return 1629;
if (strcmp(i,"Алтарь дракона")==0) return 1630;
if (strcmp(i,"Заклятье")==0) return 1631;
if (strcmp(i,"Навигатор")==0) return 1632;
if (strcmp(i,"Астролябия")==0) return 1633;
if (strcmp(i,"Волшебная лампа")==0) return 1634;
if (strcmp(i,"Дух дракона")==0) return 1635;
if (strcmp(i,"Стальное крыло")==0) return 1636;
if (strcmp(i,"Защитник Тэнгу")==0) return 1637;
if (strcmp(i,"Знамя драконов")==0) return 1638;
if (strcmp(i,"Табак боцмана")==0) return 1639;
if (strcmp(i,"Каша из топора")==0) return 1640;
if (strcmp(i,"Саламандра")==0) return 1641;
if (strcmp(i,"Черная вдова")==0) return 1642;
if (strcmp(i,"Приказ министерства")==0) return 1643;
if (strcmp(i,"Золотой ключик")==0) return 1644;
if (strcmp(i,"Подзорная труба Нельсона")==0) return 1645;
if (strcmp(i,"Перстень короля")==0) return 1646;
if (strcmp(i,"Чертежи адмиралтейства")==0) return 1647;
if (strcmp(i,"Ultima ratio")==0) return 1648;
if (strcmp(i,"Слуховая трубка")==0) return 1649;
if (strcmp(i,"Подзорная труба Фогга")==0) return 1650;
if (strcmp(i,"Винты да Винчи")==0) return 1651;
if (strcmp(i,"Правдоруб")==0) return 1700;
if (strcmp(i,"Автоматон")==0) return 1701;
if (strcmp(i,"Карта сокровищ")==0) return 1702;
if (strcmp(i,"Крюк Мидаса")==0) return 1703;
if (strcmp(i,"Замок квартирмейстера")==0) return 1704;
if (strcmp(i,"Фляга Джека")==0) return 1705;
if (strcmp(i,"Бурдюк Бахуса")==0) return 1706;
if (strcmp(i,"Сундук Дэйви Джонса")==0) return 1707;
if (strcmp(i,"Проклятый дублон")==0) return 1708;
if (strcmp(i,"Дневник Ньютона")==0) return 1709;
if (strcmp(i,"Паровой станок")==0) return 1710;
if (strcmp(i,"Калькулятор")==0) return 1711;
if (strcmp(i,"Испанский сапог")==0) return 1712;
if (strcmp(i,"Тотем")==0) return 1713;
if (strcmp(i,"Золотое руно")==0) return 1714;
if (strcmp(i,"Идол Ацтеков")==0) return 1901;
return -1;
}
double TDdata::GetItemU(int i)
{
switch(i)
{
case 1: return 90; break;
case 2: return 75; break;
case 3: return 90; break;
case 4: return 100; break;
case 5: return 880; break;
case 6: return 650; break;
case 7: return 950; break;
case 8: return 720; break;
case 9: return 2500; break;
case 10: return 2370; break;
case 11: return 2700; break;
case 12: return 2175; break;
case 13: return 450; break;
case 14: return 3700; break;
case 15: return 5700; break;
case 16: return 5000; break;
case 59: return 0; break;
case 62: return 0; break;
case 17: return 27; break;
case 18: return 22.5; break;
case 19: return 27; break;
case 20: return 30; break;
case 21: return 264; break;
case 22: return 195; break;
case 23: return 285; break;
case 24: return 216; break;
case 25: return 750; break;
case 26: return 592.5; break;
case 27: return 810; break;
case 28: return 543.75; break;
case 29: return 135; break;
case 30: return 1110; break;
case 31: return 1425; break;
case 32: return 1250; break;
case 60: return 0; break;
case 63: return 0; break;
case 33: return 0; break;
case 37: return 140; break;
case 38: return 140; break;
case 39: return 280; break;
case 40: return 280; break;
case 41: return 48; break;
case 42: return 48; break;
case 43: return 96; break;
case 44: return 96; break;
case 45: return 300; break;
case 46: return 200; break;
case 47: return 1200; break;
case 48: return 4200; break;
case 49: return 100; break;
case 50: return 70; break;
case 51: return 400; break;
case 52: return 1400; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 57: return 0; break;
case 58: return 0; break;
case 34: return 0; break;
case 36: return 0; break;
case 35: return 0; break;
case 64: return 0; break;
case 65: return 0; break;
case 66: return 0; break;
case 67: return 0; break;
case 68: return 0; break;
case 69: return 0; break;
case 70: return 0; break;
case 71: return 0; break;
case 72: return 0; break;
case 73: return 0; break;
case 74: return 0; break;
case 75: return 0; break;
case 76: return 0; break;
case 77: return 0; break;
case 78: return 0; break;
case 79: return 0; break;
case 80: return 0; break;
case 81: return 0; break;
case 82: return 0; break;
case 83: return 0; break;
case 84: return 0; break;
case 85: return 0; break;
case 86: return 0; break;
case 87: return 0; break;
case 61: return 0; break;
case 99: return 0; break;
case 91: return 135; break;
case 92: return 216; break;
case 94: return 810; break;
case 93: return 1500; break;
case 95: return 90; break;
case 96: return 285; break;
case 97: return 652.5; break;
case 98: return 1110; break;
default: return -1;
}
}

double TDdata::GetItemT(int i)
{
switch(i)
{
case 1: return 150; break;
case 2: return 30; break;
case 3: return 60; break;
case 4: return 250; break;
case 5: return 350; break;
case 6: return 1080; break;
case 7: return 570; break;
case 8: return 1800; break;
case 9: return 1000; break;
case 10: return 3953; break;
case 11: return 1600; break;
case 12: return 5435; break;
case 13: return 450; break;
case 14: return 1500; break;
case 15: return 9500; break;
case 16: return 12277; break;
case 59: return 0; break;
case 62: return 0; break;
case 17: return 45; break;
case 18: return 9; break;
case 19: return 18; break;
case 20: return 75; break;
case 21: return 105; break;
case 22: return 324; break;
case 23: return 171; break;
case 24: return 540; break;
case 25: return 300; break;
case 26: return 988.25; break;
case 27: return 480; break;
case 28: return 1358.75; break;
case 29: return 135; break;
case 30: return 450; break;
case 31: return 2375; break;
case 32: return 3069.25; break;
case 60: return 0; break;
case 63: return 0; break;
case 33: return 0; break;
case 37: return 90; break;
case 38: return 90; break;
case 39: return 180; break;
case 40: return 180; break;
case 41: return 30; break;
case 42: return 30; break;
case 43: return 60; break;
case 44: return 60; break;
case 45: return 500; break;
case 46: return 120; break;
case 47: return 2100; break;
case 48: return 7000; break;
case 49: return 170; break;
case 50: return 40; break;
case 51: return 700; break;
case 52: return 2300; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 57: return 0; break;
case 58: return 0; break;
case 34: return 0; break;
case 36: return 0; break;
case 35: return 0; break;
case 64: return 0; break;
case 65: return 0; break;
case 66: return 0; break;
case 67: return 0; break;
case 68: return 0; break;
case 69: return 0; break;
case 70: return 0; break;
case 71: return 0; break;
case 72: return 0; break;
case 73: return 0; break;
case 74: return 0; break;
case 75: return 0; break;
case 76: return 0; break;
case 77: return 0; break;
case 78: return 0; break;
case 79: return 0; break;
case 80: return 0; break;
case 81: return 0; break;
case 82: return 0; break;
case 83: return 0; break;
case 84: return 0; break;
case 85: return 0; break;
case 86: return 0; break;
case 87: return 0; break;
case 61: return 0; break;
case 99: return 0; break;
case 91: return 135; break;
case 92: return 540; break;
case 94: return 480; break;
case 93: return 3683.1; break;
case 95: return 150; break;
case 96: return 171; break;
case 97: return 1630.5; break;
case 98: return 450; break;
default: return -1;
}
}

double TDdata::GetItemM(int i)
{
switch(i)
{
case 1: return 60; break;
case 2: return 15; break;
case 3: return 42; break;
case 4: return 150; break;
case 5: return 530; break;
case 6: return 436; break;
case 7: return 380; break;
case 8: return 1000; break;
case 9: return 1500; break;
case 10: return 1500; break;
case 11: return 1000; break;
case 12: return 3000; break;
case 13: return 600; break;
case 14: return 2300; break;
case 15: return 3800; break;
case 16: return 7000; break;
case 59: return 0; break;
case 62: return 0; break;
case 17: return 60; break;
case 18: return 15; break;
case 19: return 12.6; break;
case 20: return 45; break;
case 21: return 159; break;
case 22: return 130.8; break;
case 23: return 114; break;
case 24: return 300; break;
case 25: return 450; break;
case 26: return 375; break;
case 27: return 300; break;
case 28: return 750; break;
case 29: return 180; break;
case 30: return 690; break;
case 31: return 950; break;
case 32: return 1750; break;
case 60: return 0; break;
case 63: return 0; break;
case 33: return 0; break;
case 37: return 200; break;
case 38: return 200; break;
case 39: return 400; break;
case 40: return 400; break;
case 41: return 70; break;
case 42: return 70; break;
case 43: return 140; break;
case 44: return 140; break;
case 45: return 500; break;
case 46: return 200; break;
case 47: return 2100; break;
case 48: return 7000; break;
case 49: return 170; break;
case 50: return 70; break;
case 51: return 700; break;
case 52: return 2300; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 57: return 0; break;
case 58: return 0; break;
case 34: return 0; break;
case 36: return 0; break;
case 35: return 0; break;
case 64: return 0; break;
case 65: return 0; break;
case 66: return 0; break;
case 67: return 0; break;
case 68: return 0; break;
case 69: return 0; break;
case 70: return 0; break;
case 71: return 0; break;
case 72: return 0; break;
case 73: return 0; break;
case 74: return 0; break;
case 75: return 0; break;
case 76: return 0; break;
case 77: return 0; break;
case 78: return 0; break;
case 79: return 0; break;
case 80: return 0; break;
case 81: return 0; break;
case 82: return 0; break;
case 83: return 0; break;
case 84: return 0; break;
case 85: return 0; break;
case 86: return 0; break;
case 87: return 0; break;
case 61: return 0; break;
case 99: return 0; break;
case 91: return 180; break;
case 92: return 300; break;
case 94: return 300; break;
case 93: return 2100; break;
case 95: return 150; break;
case 96: return 114; break;
case 97: return 900; break;
case 98: return 690; break;
default: return -1;
}
}

double TDdata::GetItemG(int i)
{
switch(i)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 59: return 0; break;
case 62: return 0; break;
case 17: return 4; break;
case 18: return 4; break;
case 19: return 4; break;
case 20: return 5; break;
case 21: return 8; break;
case 22: return 10; break;
case 23: return 8; break;
case 24: return 10; break;
case 25: return 15; break;
case 26: return 20; break;
case 27: return 15; break;
case 28: return 20; break;
case 29: return 16; break;
case 30: return 20; break;
case 31: return 40; break;
case 32: return 50; break;
case 60: return 18; break;
case 63: return 30; break;
case 33: return 0; break;
case 37: return 0; break;
case 38: return 0; break;
case 39: return 0; break;
case 40: return 0; break;
case 41: return 5; break;
case 42: return 5; break;
case 43: return 10; break;
case 44: return 10; break;
case 45: return 0; break;
case 46: return 0; break;
case 47: return 0; break;
case 48: return 0; break;
case 49: return 5; break;
case 50: return 5; break;
case 51: return 10; break;
case 52: return 30; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 57: return 0; break;
case 58: return 0; break;
case 34: return 0; break;
case 36: return 0; break;
case 35: return 0; break;
case 64: return 0; break;
case 65: return 0; break;
case 66: return 0; break;
case 67: return 0; break;
case 68: return 0; break;
case 69: return 0; break;
case 70: return 0; break;
case 71: return 0; break;
case 72: return 0; break;
case 73: return 0; break;
case 74: return 0; break;
case 75: return 0; break;
case 76: return 0; break;
case 77: return 0; break;
case 78: return 0; break;
case 79: return 0; break;
case 80: return 0; break;
case 81: return 0; break;
case 82: return 0; break;
case 83: return 0; break;
case 84: return 0; break;
case 85: return 0; break;
case 86: return 0; break;
case 87: return 0; break;
case 61: return 0; break;
case 99: return 0; break;
case 91: return 570; break;
case 92: return 1600; break;
case 94: return 1730; break;
case 93: return 5800; break;
case 95: return 700; break;
case 96: return 800; break;
case 97: return 3300; break;
case 98: return 2300; break;
default: return -1;
}
}

double TDdata::GetItemC(int i)
{
switch(i)
{
case 1: return 180; break;
case 2: return 180; break;
case 3: return 294; break;
case 4: return 595; break;
case 5: return 2000; break;
case 6: return 2400; break;
case 7: return 2100; break;
case 8: return 3700; break;
case 9: return 5000; break;
case 10: return 8200; break;
case 11: return 6000; break;
case 12: return 11000; break;
case 13: return 1800; break;
case 14: return 8000; break;
case 15: return 20000; break;
case 16: return 25000; break;
case 59: return 1800; break;
case 62: return 8000; break;
case 17: return 180; break;
case 18: return 180; break;
case 19: return 294; break;
case 20: return 595; break;
case 21: return 2000; break;
case 22: return 2400; break;
case 23: return 2100; break;
case 24: return 3700; break;
case 25: return 5000; break;
case 26: return 8200; break;
case 27: return 6000; break;
case 28: return 11000; break;
case 29: return 1800; break;
case 30: return 8000; break;
case 31: return 20000; break;
case 32: return 25000; break;
case 60: return 1800; break;
case 63: return 8000; break;
case 33: return 0; break;
case 37: return 600; break;
case 38: return 600; break;
case 39: return 1200; break;
case 40: return 1200; break;
case 41: return 600; break;
case 42: return 600; break;
case 43: return 1200; break;
case 44: return 1200; break;
case 45: return 900; break;
case 46: return 300; break;
case 47: return 3700; break;
case 48: return 14000; break;
case 49: return 900; break;
case 50: return 300; break;
case 51: return 3700; break;
case 52: return 14000; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 57: return 0; break;
case 58: return 0; break;
case 34: return 0; break;
case 36: return 0; break;
case 35: return 0; break;
case 64: return 0; break;
case 65: return 0; break;
case 66: return 0; break;
case 67: return 0; break;
case 68: return 0; break;
case 69: return 0; break;
case 70: return 0; break;
case 71: return 0; break;
case 72: return 0; break;
case 73: return 0; break;
case 74: return 0; break;
case 75: return 0; break;
case 76: return 0; break;
case 77: return 0; break;
case 78: return 0; break;
case 79: return 0; break;
case 80: return 0; break;
case 81: return 0; break;
case 82: return 0; break;
case 83: return 0; break;
case 84: return 0; break;
case 85: return 0; break;
case 86: return 0; break;
case 87: return 0; break;
case 61: return 0; break;
case 99: return 0; break;
case 91: return 100000; break;
case 92: return 100000; break;
case 94: return 100000; break;
case 93: return 100000; break;
case 95: return 100000; break;
case 96: return 100000; break;
case 97: return 100000; break;
case 98: return 100000; break;
default: return -1;
}
}

double TDdata::GetItemS(const char* i)
{
if(strcmp(i,"1")==0) return 60;
if(strcmp(i,"2")==0) return 180;
if(strcmp(i,"3")==0) return 60;
if(strcmp(i,"4")==0) return 180;
if(strcmp(i,"5")==0) return 180;
if(strcmp(i,"6")==0) return 180;
if(strcmp(i,"7")==0) return 120;
if(strcmp(i,"8")==0) return 60;
if(strcmp(i,"9")==0) return 120;
if(strcmp(i,"10")==0) return 120;
if(strcmp(i,"11")==0) return 120;
if(strcmp(i,"12")==0) return 120;
if(strcmp(i,"13")==0) return 240;
if(strcmp(i,"14")==0) return 120;
if(strcmp(i,"15")==0) return 240;
if(strcmp(i,"16")==0) return 180;
if(strcmp(i,"59")==0) return 480;
if(strcmp(i,"62")==0) return 240;
if(strcmp(i,"17")==0) return 60;
if(strcmp(i,"18")==0) return 180;
if(strcmp(i,"19")==0) return 60;
if(strcmp(i,"20")==0) return 180;
if(strcmp(i,"21")==0) return 180;
if(strcmp(i,"22")==0) return 180;
if(strcmp(i,"23")==0) return 120;
if(strcmp(i,"24")==0) return 60;
if(strcmp(i,"25")==0) return 120;
if(strcmp(i,"26")==0) return 120;
if(strcmp(i,"27")==0) return 120;
if(strcmp(i,"28")==0) return 120;
if(strcmp(i,"29")==0) return 240;
if(strcmp(i,"30")==0) return 120;
if(strcmp(i,"31")==0) return 240;
if(strcmp(i,"32")==0) return 180;
if(strcmp(i,"60")==0) return 480;
if(strcmp(i,"63")==0) return 240;
if(strcmp(i,"33")==0) return 120;
if(strcmp(i,"37")==0) return 120;
if(strcmp(i,"38")==0) return 120;
if(strcmp(i,"39")==0) return 120;
if(strcmp(i,"40")==0) return 120;
if(strcmp(i,"41")==0) return 120;
if(strcmp(i,"42")==0) return 120;
if(strcmp(i,"43")==0) return 120;
if(strcmp(i,"44")==0) return 120;
if(strcmp(i,"45")==0) return 240;
if(strcmp(i,"46")==0) return 180;
if(strcmp(i,"47")==0) return 180;
if(strcmp(i,"48")==0) return 300;
if(strcmp(i,"49")==0) return 240;
if(strcmp(i,"50")==0) return 180;
if(strcmp(i,"51")==0) return 180;
if(strcmp(i,"52")==0) return 300;
if(strcmp(i,"53")==0) return 120;
if(strcmp(i,"54")==0) return 120;
if(strcmp(i,"55")==0) return 120;
if(strcmp(i,"56")==0) return 120;
if(strcmp(i,"57")==0) return 120;
if(strcmp(i,"58")==0) return 240;
if(strcmp(i,"34")==0) return 60;
if(strcmp(i,"36")==0) return 60;
if(strcmp(i,"35")==0) return 60;
if(strcmp(i,"64")==0) return 60;
if(strcmp(i,"65")==0) return 180;
if(strcmp(i,"66")==0) return 60;
if(strcmp(i,"67")==0) return 180;
if(strcmp(i,"68")==0) return 180;
if(strcmp(i,"69")==0) return 180;
if(strcmp(i,"70")==0) return 120;
if(strcmp(i,"71")==0) return 60;
if(strcmp(i,"72")==0) return 120;
if(strcmp(i,"73")==0) return 120;
if(strcmp(i,"74")==0) return 120;
if(strcmp(i,"75")==0) return 120;
if(strcmp(i,"76")==0) return 240;
if(strcmp(i,"77")==0) return 120;
if(strcmp(i,"78")==0) return 240;
if(strcmp(i,"79")==0) return 180;
if(strcmp(i,"80")==0) return 120;
if(strcmp(i,"81")==0) return 120;
if(strcmp(i,"82")==0) return 120;
if(strcmp(i,"83")==0) return 120;
if(strcmp(i,"84")==0) return 240;
if(strcmp(i,"85")==0) return 180;
if(strcmp(i,"86")==0) return 180;
if(strcmp(i,"87")==0) return 300;
if(strcmp(i,"61")==0) return 480;
if(strcmp(i,"99")==0) return 240;
if(strcmp(i,"91")==0) return 240;
if(strcmp(i,"92")==0) return 240;
if(strcmp(i,"94")==0) return 180;
if(strcmp(i,"93")==0) return 360;
if(strcmp(i,"95")==0) return 300;
if(strcmp(i,"96")==0) return 240;
if(strcmp(i,"97")==0) return 240;
if(strcmp(i,"98")==0) return 300;
return -1;
}

int TDdata::GetItemP(int i)
{
switch(i)
{
case 1154: return 6; break;
case 1153: return 6; break;
case 1155: return 8; break;
case 1156: return 8; break;
case 1157: return 8; break;
case 1160: return 2; break;
case 1161: return 2; break;
case 1162: return 4; break;
case 1178: return 4; break;
case 1163: return 4; break;
case 1179: return 4; break;
case 1165: return 6; break;
case 1168: return 6; break;
case 1166: return 8; break;
case 1169: return 8; break;
case 1173: return 4; break;
case 1174: return 4; break;
case 1175: return 4; break;
case 1176: return 2; break;
case 1170: return 12; break;
case 1171: return 12; break;
case 1180: return 12; break;
case 1181: return 6; break;
case 1182: return 6; break;
case 1183: return 6; break;
case 1184: return 6; break;
case 1185: return 10; break;
case 1186: return 10; break;
case 1187: return 10; break;
case 1188: return 12; break;
case 1190: return 12; break;
case 1191: return 24; break;
case 1192: return 24; break;
case 1193: return 24; break;
default: return -1;
}
}

int TDdata::GetTrN(int i)
{
switch(i)
{
case 0: return 0; break;
case 1: return 2; break;
case 2: return 3; break;
case 3: return 4; break;
case 4: return 5; break;
case 5: return 6; break;
case 6: return 7; break;
case 7: return 8; break;
case 8: return 9; break;
case 9: return 10; break;
case 10: return 10; break;
case 11: return 11; break;
case 12: return 12; break;
case 13: return 13; break;
case 14: return 14; break;
case 15: return 15; break;
case 16: return 16; break;
case 17: return 17; break;
case 18: return 18; break;
case 19: return 19; break;
case 20: return 20; break;
default: return -1;
}
}

double TDdata::GetTrP(int i)
{
switch(i)
{
case 0: return 400; break;
case 1: return 440; break;
case 2: return 480; break;
case 3: return 520; break;
case 4: return 560; break;
case 5: return 600; break;
case 6: return 640; break;
case 7: return 680; break;
case 8: return 720; break;
case 9: return 760; break;
case 10: return 800; break;
case 11: return 840; break;
case 12: return 880; break;
case 13: return 920; break;
case 14: return 960; break;
case 15: return 1000; break;
case 16: return 1040; break;
case 17: return 1080; break;
case 18: return 1120; break;
case 19: return 1160; break;
case 20: return 1200; break;
default: return -1;
}
}

double TDdata::GetTrS(int i)
{
switch(i)
{
case 0: return 8; break;
case 1: return 8.16; break;
case 2: return 8.32; break;
case 3: return 8.48; break;
case 4: return 8.64; break;
case 5: return 8.8; break;
case 6: return 8.96; break;
case 7: return 9.12; break;
case 8: return 9.28; break;
case 9: return 9.44; break;
case 10: return 9.6; break;
case 11: return 9.76; break;
case 12: return 9.92; break;
case 13: return 10.08; break;
case 14: return 10.24; break;
case 15: return 10.4; break;
case 16: return 10.56; break;
case 17: return 10.72; break;
case 18: return 10.88; break;
case 19: return 11.04; break;
case 20: return 11.2; break;
default: return -1;
}
}

double TDdata::GetWareCapacity(int i)
{
switch(i)
{
case 1: return 1100; break;
case 2: return 1551; break;
case 3: return 2101; break;
case 4: return 2838; break;
case 5: return 3663; break;
case 6: return 4576; break;
case 7: return 5775; break;
case 8: return 7150; break;
case 9: return 8800; break;
case 10: return 10813; break;
case 11: return 13200; break;
case 12: return 16126; break;
case 13: return 19613; break;
case 14: return 23738; break;
case 15: return 28691.3; break;
case 16: return 34738; break;
case 17: return 41888; break;
case 18: return 50501; break;
case 19: return 60863; break;
case 20: return 73326; break;
default: return -1;
}
}

const char* TDdata::GetItemB(int i)
{
switch(i)
{
case 124: return "[{\"id\":1052,\"level\":1}]"; break;
case 101: return "[{\"id\":127,\"level\":1}]"; break;
case 138: return "[{\"id\":112,\"level\":1},{\"id\":118,\"level\":1},{\"id\":124,\"level\":1},{\"id\":101,\"level\":1}]"; break;
case 144: return "[{\"id\":112,\"level\":1}]"; break;
case 139: return "[{\"id\":112,\"level\":1},{\"id\":118,\"level\":1},{\"id\":124,\"level\":1},{\"id\":101,\"level\":1}]"; break;
case 137: return "[{\"id\":110,\"level\":1}]"; break;
case 125: return "[{\"id\":1054,\"level\":1},{\"id\":124,\"level\":1}]"; break;
case 126: return "[{\"id\":1053,\"level\":1},{\"id\":125,\"level\":1}]"; break;
case 103: return "[{\"id\":1057,\"level\":1},{\"id\":102,\"level\":10}]"; break;
case 105: return "[{\"id\":1056,\"level\":1},{\"id\":104,\"level\":10}]"; break;
case 107: return "[{\"id\":1055,\"level\":1},{\"id\":106,\"level\":10}]"; break;
case 110: return "[{\"id\":1050,\"level\":1},{\"id\":100,\"level\":1},{\"id\":127,\"level\":1}]"; break;
case 112: return "[{\"id\":1058,\"level\":1}]"; break;
case 600: return "[{\"id\":112,\"level\":1}]"; break;
case 118: return "[{\"id\":1076,\"level\":1}]"; break;
case 113: return "[{\"id\":1060,\"level\":1},{\"id\":112,\"level\":1}]"; break;
case 114: return "[{\"id\":1062,\"level\":1},{\"id\":113,\"level\":1}]"; break;
case 115: return "[{\"id\":1063,\"level\":1},{\"id\":114,\"level\":1}]"; break;
case 116: return "[{\"id\":1065,\"level\":1},{\"id\":115,\"level\":1}]"; break;
case 117: return "[{\"id\":1066,\"level\":1},{\"id\":116,\"level\":1}]"; break;
case 119: return "[{\"id\":1070,\"level\":1},{\"id\":118,\"level\":1}]"; break;
case 120: return "[{\"id\":124,\"level\":1}]"; break;
case 148: return "[{\"id\":1090,\"level\":1}]"; break;
case 149: return "[{\"id\":148,\"level\":1}]"; break;
case 141: return "[{\"id\":1081,\"level\":1},{\"id\":114,\"level\":1}]"; break;
case 142: return "[{\"id\":1085,\"level\":1}]"; break;
case 200: return "[{\"id\":100,\"level\":1},{\"id\":1072,\"level\":1}]"; break;
case 201: return "[{\"id\":100,\"level\":1},{\"id\":1072,\"level\":1}]"; break;
case 202: return "[{\"id\":100,\"level\":1},{\"id\":1072,\"level\":1}]"; break;
case 122: return "[{\"id\":100,\"level\":1},{\"id\":1072,\"level\":1}]"; break;
case 123: return "[{\"id\":100,\"level\":1},{\"id\":1072,\"level\":1}]"; break;
case 121: return "[{\"id\":100,\"level\":1},{\"id\":1072,\"level\":1}]"; break;
case 203: return "[{\"id\":100,\"level\":1},{\"id\":1073,\"level\":1}]"; break;
case 204: return "[{\"id\":100,\"level\":1},{\"id\":1073,\"level\":1}]"; break;
case 205: return "[{\"id\":100,\"level\":1},{\"id\":1073,\"level\":1}]"; break;
case 131: return "[{\"id\":100,\"level\":1},{\"id\":1073,\"level\":1}]"; break;
case 134: return "[{\"id\":100,\"level\":1},{\"id\":1073,\"level\":1}]"; break;
case 128: return "[{\"id\":100,\"level\":1},{\"id\":1073,\"level\":1}]"; break;
case 206: return "[{\"id\":100,\"level\":1},{\"id\":1074,\"level\":1}]"; break;
case 207: return "[{\"id\":100,\"level\":1},{\"id\":1074,\"level\":1}]"; break;
case 208: return "[{\"id\":100,\"level\":1},{\"id\":1074,\"level\":1}]"; break;
case 132: return "[{\"id\":100,\"level\":1},{\"id\":1074,\"level\":1}]"; break;
case 135: return "[{\"id\":100,\"level\":1},{\"id\":1074,\"level\":1}]"; break;
case 129: return "[{\"id\":100,\"level\":1},{\"id\":1074,\"level\":1}]"; break;
case 209: return "[{\"id\":100,\"level\":1},{\"id\":1075,\"level\":1}]"; break;
case 210: return "[{\"id\":100,\"level\":1},{\"id\":1075,\"level\":1}]"; break;
case 211: return "[{\"id\":100,\"level\":1},{\"id\":1075,\"level\":1}]"; break;
case 133: return "[{\"id\":100,\"level\":1},{\"id\":1075,\"level\":1}]"; break;
case 136: return "[{\"id\":100,\"level\":1},{\"id\":1075,\"level\":1}]"; break;
case 130: return "[{\"id\":100,\"level\":1},{\"id\":1075,\"level\":1}]"; break;
case 744: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 745: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 746: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 747: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 748: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 749: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 500: return "[{\"id\":100,\"level\":1},{\"id\":600,\"level\":1}]"; break;
case 299: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 303: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 304: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 313: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 317: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 324: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 328: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 339: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 306: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 307: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 301: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 310: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 381: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 361: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 297: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 331: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 291: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 341: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 288: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 337: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 315: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 342: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 359: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 380: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 298: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 316: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 290: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 353: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 360: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 338: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 372: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 293: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 289: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 294: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 314: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 368: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 287: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 356: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 283: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 278: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 279: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 282: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 285: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 286: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 295: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 296: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 280: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 281: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 284: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 292: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 311: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 333: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 344: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 355: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 318: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 319: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 382: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 302: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 320: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 323: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 329: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 336: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 343: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 374: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 352: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 334: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 383: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 384: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 385: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 386: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 506: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 508: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 507: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 1: return "[{\"id\":112,\"level\":1},{\"id\":1058,\"level\":1}]"; break;
case 2: return "[{\"id\":112,\"level\":1},{\"id\":1059,\"level\":1}]"; break;
case 3: return "[{\"id\":113,\"level\":1},{\"id\":1060,\"level\":1}]"; break;
case 4: return "[{\"id\":113,\"level\":1},{\"id\":1061,\"level\":1}]"; break;
case 5: return "[{\"id\":114,\"level\":1},{\"id\":1062,\"level\":1}]"; break;
case 6: return "[{\"id\":114,\"level\":1},{\"id\":1078,\"level\":1}]"; break;
case 7: return "[{\"id\":115,\"level\":1},{\"id\":1063,\"level\":1}]"; break;
case 8: return "[{\"id\":115,\"level\":1},{\"id\":1079,\"level\":1}]"; break;
case 9: return "[{\"id\":116,\"level\":1},{\"id\":1065,\"level\":1}]"; break;
case 10: return "[{\"id\":116,\"level\":1},{\"id\":1068,\"level\":1}]"; break;
case 11: return "[{\"id\":117,\"level\":1},{\"id\":1066,\"level\":1}]"; break;
case 12: return "[{\"id\":117,\"level\":1},{\"id\":1069,\"level\":1}]"; break;
case 13: return "[{\"id\":118,\"level\":1},{\"id\":1076,\"level\":1}]"; break;
case 14: return "[{\"id\":119,\"level\":1},{\"id\":1070,\"level\":1}]"; break;
case 15: return "[{\"id\":119,\"level\":1},{\"id\":1071,\"level\":1}]"; break;
case 16: return "[{\"id\":119,\"level\":1},{\"id\":1080,\"level\":1}]"; break;
case 59: return "[{\"id\":148,\"level\":1},{\"id\":1090,\"level\":1}]"; break;
case 62: return "[{\"id\":148,\"level\":1},{\"id\":1091,\"level\":1}]"; break;
case 9000: return "[{\"id\":148,\"level\":1},{\"id\":1092,\"level\":1}]"; break;
case 9003: return "[{\"id\":148,\"level\":1},{\"id\":1093,\"level\":1}]"; break;
case 17: return "[{\"id\":112,\"level\":1},{\"id\":1058,\"level\":1}]"; break;
case 18: return "[{\"id\":112,\"level\":1},{\"id\":1059,\"level\":1}]"; break;
case 19: return "[{\"id\":113,\"level\":1},{\"id\":1060,\"level\":1}]"; break;
case 20: return "[{\"id\":113,\"level\":1},{\"id\":1061,\"level\":1}]"; break;
case 21: return "[{\"id\":114,\"level\":1},{\"id\":1062,\"level\":1}]"; break;
case 22: return "[{\"id\":114,\"level\":1},{\"id\":1078,\"level\":1}]"; break;
case 23: return "[{\"id\":115,\"level\":1},{\"id\":1063,\"level\":1}]"; break;
case 24: return "[{\"id\":115,\"level\":1},{\"id\":1079,\"level\":1}]"; break;
case 25: return "[{\"id\":116,\"level\":1},{\"id\":1065,\"level\":1}]"; break;
case 26: return "[{\"id\":116,\"level\":1},{\"id\":1068,\"level\":1}]"; break;
case 27: return "[{\"id\":117,\"level\":1},{\"id\":1066,\"level\":1}]"; break;
case 28: return "[{\"id\":117,\"level\":1},{\"id\":1069,\"level\":1}]"; break;
case 29: return "[{\"id\":118,\"level\":1},{\"id\":1076,\"level\":1}]"; break;
case 30: return "[{\"id\":119,\"level\":1},{\"id\":1070,\"level\":1}]"; break;
case 31: return "[{\"id\":119,\"level\":1},{\"id\":1071,\"level\":1}]"; break;
case 32: return "[{\"id\":119,\"level\":1},{\"id\":1080,\"level\":1}]"; break;
case 60: return "[{\"id\":148,\"level\":1},{\"id\":1090,\"level\":1}]"; break;
case 63: return "[{\"id\":148,\"level\":1},{\"id\":1091,\"level\":1}]"; break;
case 9001: return "[{\"id\":148,\"level\":1},{\"id\":1092,\"level\":1}]"; break;
case 9004: return "[{\"id\":148,\"level\":1},{\"id\":1093,\"level\":1}]"; break;
case 37: return "[{\"id\":141,\"level\":1},{\"id\":1081,\"level\":1}]"; break;
case 38: return "[{\"id\":141,\"level\":1},{\"id\":1082,\"level\":1}]"; break;
case 39: return "[{\"id\":141,\"level\":1},{\"id\":1083,\"level\":1}]"; break;
case 40: return "[{\"id\":141,\"level\":1},{\"id\":1084,\"level\":1}]"; break;
case 41: return "[{\"id\":141,\"level\":1},{\"id\":1081,\"level\":1}]"; break;
case 42: return "[{\"id\":141,\"level\":1},{\"id\":1082,\"level\":1}]"; break;
case 43: return "[{\"id\":141,\"level\":1},{\"id\":1083,\"level\":1}]"; break;
case 44: return "[{\"id\":141,\"level\":1},{\"id\":1084,\"level\":1}]"; break;
case 45: return "[{\"id\":142,\"level\":1},{\"id\":1085,\"level\":1}]"; break;
case 46: return "[{\"id\":142,\"level\":1},{\"id\":1086,\"level\":1}]"; break;
case 47: return "[{\"id\":142,\"level\":1},{\"id\":1087,\"level\":1}]"; break;
case 48: return "[{\"id\":142,\"level\":1},{\"id\":1088,\"level\":1}]"; break;
case 49: return "[{\"id\":142,\"level\":1},{\"id\":1085,\"level\":1}]"; break;
case 50: return "[{\"id\":142,\"level\":1},{\"id\":1086,\"level\":1}]"; break;
case 51: return "[{\"id\":142,\"level\":1},{\"id\":1087,\"level\":1}]"; break;
case 52: return "[{\"id\":142,\"level\":1},{\"id\":1088,\"level\":1}]"; break;
case 1050: return "[{\"id\":127,\"level\":1}]"; break;
case 1052: return "[{\"id\":1050,\"level\":1}]"; break;
case 1054: return "[{\"id\":1052,\"level\":1},{\"id\":124,\"level\":1},{\"id\":1154,\"level\":1}]"; break;
case 1053: return "[{\"id\":1054,\"level\":1},{\"id\":124,\"level\":1},{\"id\":1153,\"level\":1}]"; break;
case 1055: return "[{\"id\":1053,\"level\":1},{\"id\":106,\"level\":10},{\"id\":1155,\"level\":1}]"; break;
case 1056: return "[{\"id\":1055,\"level\":1},{\"id\":104,\"level\":10},{\"id\":1156,\"level\":1}]"; break;
case 1057: return "[{\"id\":1056,\"level\":1},{\"id\":102,\"level\":10},{\"id\":1157,\"level\":1}]"; break;
case 1058: return "[{\"id\":1050,\"level\":1},{\"id\":110,\"level\":1}]"; break;
case 1059: return "[{\"id\":1058,\"level\":1},{\"id\":112,\"level\":1}]"; break;
case 1060: return "[{\"id\":1059,\"level\":1},{\"id\":1160,\"level\":1}]"; break;
case 1061: return "[{\"id\":1060,\"level\":1},{\"id\":113,\"level\":1},{\"id\":1161,\"level\":1}]"; break;
case 1062: return "[{\"id\":1061,\"level\":1},{\"id\":1162,\"level\":1}]"; break;
case 1078: return "[{\"id\":1062,\"level\":1},{\"id\":114,\"level\":1},{\"id\":1178,\"level\":1}]"; break;
case 1063: return "[{\"id\":1078,\"level\":1},{\"id\":1163,\"level\":1}]"; break;
case 1079: return "[{\"id\":1063,\"level\":1},{\"id\":115,\"level\":1},{\"id\":1179,\"level\":1}]"; break;
case 1065: return "[{\"id\":1079,\"level\":1},{\"id\":1165,\"level\":1}]"; break;
case 1068: return "[{\"id\":1065,\"level\":1},{\"id\":116,\"level\":1},{\"id\":1168,\"level\":1}]"; break;
case 1066: return "[{\"id\":1068,\"level\":1},{\"id\":1166,\"level\":1}]"; break;
case 1069: return "[{\"id\":1066,\"level\":1},{\"id\":117,\"level\":1},{\"id\":1169,\"level\":1}]"; break;
case 1072: return "[{\"id\":1050,\"level\":1}]"; break;
case 1073: return "[{\"id\":1072,\"level\":1},{\"id\":1062,\"level\":1},{\"id\":1173,\"level\":1}]"; break;
case 1074: return "[{\"id\":1065,\"level\":1},{\"id\":1073,\"level\":1},{\"id\":1174,\"level\":1}]"; break;
case 1075: return "[{\"id\":1074,\"level\":1},{\"id\":1070,\"level\":1},{\"id\":1175,\"level\":1}]"; break;
case 1076: return "[{\"id\":1058,\"level\":1},{\"id\":1176,\"level\":1}]"; break;
case 1070: return "[{\"id\":1069,\"level\":1},{\"id\":1076,\"level\":1},{\"id\":118,\"level\":1},{\"id\":117,\"level\":1},{\"id\":1170,\"level\":1}]"; break;
case 1071: return "[{\"id\":1070,\"level\":1},{\"id\":119,\"level\":1},{\"id\":1171,\"level\":1}]"; break;
case 1080: return "[{\"id\":1071,\"level\":1},{\"id\":1180,\"level\":1}]"; break;
case 1081: return "[{\"id\":1063,\"level\":1},{\"id\":1181,\"level\":1}]"; break;
case 1082: return "[{\"id\":141,\"level\":1},{\"id\":1081,\"level\":1},{\"id\":1182,\"level\":1}]"; break;
case 1083: return "[{\"id\":1082,\"level\":1},{\"id\":1183,\"level\":1}]"; break;
case 1084: return "[{\"id\":1083,\"level\":1},{\"id\":1184,\"level\":1}]"; break;
case 1085: return "[{\"id\":1074,\"level\":1},{\"id\":1185,\"level\":1}]"; break;
case 1086: return "[{\"id\":142,\"level\":1},{\"id\":1085,\"level\":1},{\"id\":1186,\"level\":1}]"; break;
case 1087: return "[{\"id\":1086,\"level\":1},{\"id\":1187,\"level\":1}]"; break;
case 1088: return "[{\"id\":142,\"level\":1},{\"id\":1080,\"level\":1},{\"id\":1188,\"level\":1}]"; break;
case 1090: return "[{\"id\":1087,\"level\":1},{\"id\":1190,\"level\":1}]"; break;
case 1091: return "[{\"id\":1080,\"level\":1},{\"id\":1075,\"level\":1},{\"id\":1090,\"level\":1},{\"id\":148,\"level\":1},{\"id\":1191,\"level\":1}]"; break;
case 1092: return "[{\"id\":1075,\"level\":1},{\"id\":1090,\"level\":1},{\"id\":148,\"level\":1},{\"id\":1192,\"level\":1}]"; break;
case 1093: return "[{\"id\":1080,\"level\":1},{\"id\":1092,\"level\":1},{\"id\":148,\"level\":1},{\"id\":1193,\"level\":1}]"; break;
default: return "[]";
}
}

int TDdata::GetObjL(int i)
{
switch(i)
{
case 100: return 20; break;
case 127: return 20; break;
case 124: return 20; break;
case 101: return 5; break;
case 138: return 20; break;
case 150: return 20; break;
case 144: return 1; break;
case 139: return 1; break;
case 137: return 6; break;
case 125: return 20; break;
case 126: return 20; break;
case 198: return 2; break;
case 199: return 2; break;
case 106: return 20; break;
case 104: return 20; break;
case 102: return 20; break;
case 109: return 20; break;
case 108: return 20; break;
case 103: return 5; break;
case 105: return 5; break;
case 107: return 5; break;
case 110: return 1; break;
case 112: return 20; break;
case 600: return 1; break;
case 118: return 20; break;
case 113: return 20; break;
case 114: return 20; break;
case 115: return 20; break;
case 116: return 20; break;
case 117: return 20; break;
case 119: return 20; break;
case 120: return 1; break;
case 148: return 1; break;
case 149: return 1; break;
case 141: return 1; break;
case 142: return 1; break;
case 200: return 1; break;
case 201: return 1; break;
case 202: return 1; break;
case 122: return 1; break;
case 123: return 1; break;
case 121: return 1; break;
case 203: return 1; break;
case 204: return 1; break;
case 205: return 1; break;
case 131: return 1; break;
case 134: return 1; break;
case 128: return 1; break;
case 206: return 1; break;
case 207: return 1; break;
case 208: return 1; break;
case 132: return 1; break;
case 135: return 1; break;
case 129: return 1; break;
case 209: return 1; break;
case 210: return 1; break;
case 211: return 1; break;
case 133: return 1; break;
case 136: return 1; break;
case 130: return 1; break;
case 744: return 1; break;
case 745: return 1; break;
case 746: return 1; break;
case 747: return 1; break;
case 748: return 1; break;
case 749: return 1; break;
case 500: return 1; break;
case 299: return 1; break;
case 303: return 1; break;
case 304: return 1; break;
case 313: return 1; break;
case 317: return 1; break;
case 324: return 1; break;
case 328: return 1; break;
case 339: return 1; break;
case 306: return 1; break;
case 307: return 1; break;
case 301: return 1; break;
case 310: return 1; break;
case 381: return 1; break;
case 361: return 1; break;
case 297: return 1; break;
case 331: return 1; break;
case 291: return 1; break;
case 341: return 1; break;
case 288: return 1; break;
case 337: return 1; break;
case 315: return 1; break;
case 342: return 1; break;
case 359: return 1; break;
case 380: return 1; break;
case 298: return 1; break;
case 316: return 1; break;
case 290: return 1; break;
case 353: return 1; break;
case 360: return 1; break;
case 338: return 1; break;
case 372: return 1; break;
case 293: return 1; break;
case 289: return 1; break;
case 294: return 1; break;
case 314: return 1; break;
case 368: return 1; break;
case 287: return 1; break;
case 356: return 1; break;
case 283: return 1; break;
case 278: return 1; break;
case 279: return 1; break;
case 282: return 1; break;
case 285: return 1; break;
case 286: return 1; break;
case 295: return 1; break;
case 296: return 1; break;
case 280: return 1; break;
case 281: return 1; break;
case 284: return 1; break;
case 292: return 1; break;
case 311: return 1; break;
case 333: return 1; break;
case 344: return 1; break;
case 355: return 1; break;
case 318: return 1; break;
case 319: return 1; break;
case 382: return 1; break;
case 302: return 1; break;
case 320: return 1; break;
case 323: return 1; break;
case 329: return 1; break;
case 336: return 1; break;
case 343: return 1; break;
case 374: return 1; break;
case 352: return 1; break;
case 334: return 1; break;
case 383: return 1; break;
case 384: return 1; break;
case 385: return 1; break;
case 386: return 1; break;
case 506: return 1; break;
case 508: return 1; break;
case 507: return 1; break;
case 1: return 1; break;
case 2: return 1; break;
case 3: return 1; break;
case 4: return 1; break;
case 5: return 1; break;
case 6: return 1; break;
case 7: return 1; break;
case 8: return 1; break;
case 9: return 1; break;
case 10: return 1; break;
case 11: return 1; break;
case 12: return 1; break;
case 13: return 1; break;
case 14: return 1; break;
case 15: return 1; break;
case 16: return 1; break;
case 59: return 1; break;
case 62: return 1; break;
case 9000: return 1; break;
case 9003: return 1; break;
case 17: return 1; break;
case 18: return 1; break;
case 19: return 1; break;
case 20: return 1; break;
case 21: return 1; break;
case 22: return 1; break;
case 23: return 1; break;
case 24: return 1; break;
case 25: return 1; break;
case 26: return 1; break;
case 27: return 1; break;
case 28: return 1; break;
case 29: return 1; break;
case 30: return 1; break;
case 31: return 1; break;
case 32: return 1; break;
case 60: return 1; break;
case 63: return 1; break;
case 9001: return 1; break;
case 9004: return 1; break;
case 37: return 1; break;
case 38: return 1; break;
case 39: return 1; break;
case 40: return 1; break;
case 41: return 1; break;
case 42: return 1; break;
case 43: return 1; break;
case 44: return 1; break;
case 45: return 1; break;
case 46: return 1; break;
case 47: return 1; break;
case 48: return 1; break;
case 49: return 1; break;
case 50: return 1; break;
case 51: return 1; break;
case 52: return 1; break;
case 91: return 1; break;
case 92: return 1; break;
case 94: return 1; break;
case 93: return 1; break;
case 95: return 1; break;
case 96: return 1; break;
case 97: return 1; break;
case 98: return 1; break;
case 1050: return 1; break;
case 1052: return 1; break;
case 1054: return 1; break;
case 1053: return 1; break;
case 1055: return 1; break;
case 1056: return 1; break;
case 1057: return 1; break;
case 1058: return 20; break;
case 1059: return 20; break;
case 1060: return 20; break;
case 1061: return 20; break;
case 1062: return 20; break;
case 1078: return 20; break;
case 1063: return 20; break;
case 1079: return 20; break;
case 1065: return 20; break;
case 1068: return 20; break;
case 1066: return 20; break;
case 1069: return 20; break;
case 1072: return 1; break;
case 1073: return 1; break;
case 1074: return 1; break;
case 1075: return 1; break;
case 1076: return 20; break;
case 1070: return 20; break;
case 1071: return 20; break;
case 1080: return 20; break;
case 1081: return 20; break;
case 1082: return 20; break;
case 1083: return 20; break;
case 1084: return 20; break;
case 1085: return 20; break;
case 1086: return 20; break;
case 1087: return 20; break;
case 1088: return 20; break;
case 1090: return 20; break;
case 1091: return 20; break;
case 1092: return 20; break;
case 1093: return 20; break;
default: return -1;
}
}

double TDdata::GetObjLU(int i,int l)
{
switch(i)
{
case 100: 
{
switch(l)
{
case 1: return 55; break;
case 2: return 70; break;
case 3: return 91; break;
case 4: return 117; break;
case 5: return 148; break;
case 6: return 188; break;
case 7: return 241; break;
case 8: return 309; break;
case 9: return 395; break;
case 10: return 508; break;
case 11: return 650; break;
case 12: return 832; break;
case 13: return 1064; break;
case 14: return 1362; break;
case 15: return 1743; break;
case 16: return 2224; break;
case 17: return 2856; break;
case 18: return 3655; break;
case 19: return 4679; break;
case 20: return 5988; break;
default: return -1;
}
};break;

case 127: 
{
switch(l)
{
case 1: return 250; break;
case 2: return 318; break;
case 3: return 412; break;
case 4: return 530; break;
case 5: return 672; break;
case 6: return 855; break;
case 7: return 1095; break;
case 8: return 1405; break;
case 9: return 1798; break;
case 10: return 2308; break;
case 11: return 2952; break;
case 12: return 3780; break;
case 13: return 4838; break;
case 14: return 6192; break;
case 15: return 7922; break;
case 16: return 10110; break;
case 17: return 12980; break;
case 18: return 16615; break;
case 19: return 21270; break;
case 20: return 27220; break;
default: return -1;
}
};break;

case 124: 
{
switch(l)
{
case 1: return 95; break;
case 2: return 121; break;
case 3: return 157; break;
case 4: return 201; break;
case 5: return 256; break;
case 6: return 325; break;
case 7: return 416; break;
case 8: return 534; break;
case 9: return 683; break;
case 10: return 877; break;
case 11: return 1122; break;
case 12: return 1436; break;
case 13: return 1838; break;
case 14: return 2353; break;
case 15: return 3011; break;
case 16: return 3842; break;
case 17: return 4932; break;
case 18: return 6314; break;
case 19: return 8083; break;
case 20: return 10344; break;
default: return -1;
}
};break;

case 101: 
{
switch(l)
{
case 1: return 140; break;
case 2: return 178; break;
case 3: return 231; break;
case 4: return 297; break;
case 5: return 377; break;
default: return -1;
}
};break;

case 138: 
{
switch(l)
{
case 1: return 2000; break;
case 2: return 5080; break;
case 3: return 6600; break;
case 4: return 8480; break;
case 5: return 10760; break;
case 6: return 13680; break;
case 7: return 17520; break;
case 8: return 22480; break;
case 9: return 28760; break;
case 10: return 36920; break;
case 11: return 47240; break;
case 12: return 60480; break;
case 13: return 77400; break;
case 14: return 99080; break;
case 15: return 126760; break;
case 16: return 161760; break;
case 17: return 181760; break;
case 18: return 181760; break;
case 19: return 181760; break;
case 20: return 181760; break;
default: return -1;
}
};break;

case 150: 
{
switch(l)
{
case 1: return 50; break;
case 2: return 362; break;
case 3: return 470; break;
case 4: return 604; break;
case 5: return 767; break;
case 6: return 975; break;
case 7: return 1248; break;
case 8: return 1602; break;
case 9: return 2049; break;
case 10: return 2631; break;
case 11: return 3366; break;
case 12: return 4309; break;
case 13: return 5515; break;
case 14: return 7059; break;
case 15: return 9032; break;
case 16: return 11525; break;
case 17: return 14797; break;
case 18: return 18941; break;
case 19: return 24248; break;
case 20: return 31031; break;
default: return -1;
}
};break;

case 144: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 139: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 137: 
{
switch(l)
{
case 1: return 1000; break;
case 2: return 1270; break;
case 3: return 1650; break;
case 4: return 2120; break;
case 5: return 2690; break;
case 6: return 3420; break;
default: return -1;
}
};break;

case 125: 
{
switch(l)
{
case 1: return 600; break;
case 2: return 762; break;
case 3: return 990; break;
case 4: return 1272; break;
case 5: return 1614; break;
case 6: return 2052; break;
case 7: return 2628; break;
case 8: return 3372; break;
case 9: return 4314; break;
case 10: return 5538; break;
case 11: return 7086; break;
case 12: return 9072; break;
case 13: return 11610; break;
case 14: return 14862; break;
case 15: return 19014; break;
case 16: return 24264; break;
case 17: return 31152; break;
case 18: return 39876; break;
case 19: return 51048; break;
case 20: return 65328; break;
default: return -1;
}
};break;

case 126: 
{
switch(l)
{
case 1: return 1600; break;
case 2: return 2032; break;
case 3: return 2640; break;
case 4: return 3392; break;
case 5: return 4304; break;
case 6: return 5472; break;
case 7: return 7008; break;
case 8: return 8992; break;
case 9: return 11504; break;
case 10: return 14768; break;
case 11: return 18896; break;
case 12: return 24192; break;
case 13: return 30960; break;
case 14: return 39632; break;
case 15: return 50704; break;
case 16: return 64704; break;
case 17: return 83072; break;
case 18: return 106336; break;
case 19: return 136128; break;
case 20: return 174208; break;
default: return -1;
}
};break;

case 198: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 55; break;
default: return -1;
}
};break;

case 199: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 75; break;
default: return -1;
}
};break;

case 106: 
{
switch(l)
{
case 1: return 55; break;
case 2: return 91; break;
case 3: return 154; break;
case 4: return 256; break;
case 5: return 429; break;
case 6: return 715; break;
case 7: return 1194; break;
case 8: return 1994; break;
case 9: return 3328; break;
case 10: return 5558; break;
case 11: return 9278; break;
case 12: return 15496; break;
case 13: return 25880; break;
case 14: return 43219; break;
case 15: return 72176; break;
case 16: return 120535; break;
case 17: return 201292; break;
case 18: return 213854; break;
case 19: return 213854; break;
case 20: return 213854; break;
default: return -1;
}
};break;

case 104: 
{
switch(l)
{
case 1: return 75; break;
case 2: return 124; break;
case 3: return 210; break;
case 4: return 349; break;
case 5: return 585; break;
case 6: return 975; break;
case 7: return 1628; break;
case 8: return 2719; break;
case 9: return 4538; break;
case 10: return 7579; break;
case 11: return 12652; break;
case 12: return 21131; break;
case 13: return 35291; break;
case 14: return 58935; break;
case 15: return 98422; break;
case 16: return 164366; break;
case 17: return 216664; break;
case 18: return 216664; break;
case 19: return 216664; break;
case 20: return 216664; break;
default: return -1;
}
};break;

case 102: 
{
switch(l)
{
case 1: return 55; break;
case 2: return 91; break;
case 3: return 154; break;
case 4: return 256; break;
case 5: return 429; break;
case 6: return 715; break;
case 7: return 1194; break;
case 8: return 1994; break;
case 9: return 3328; break;
case 10: return 5558; break;
case 11: return 9278; break;
case 12: return 15496; break;
case 13: return 25880; break;
case 14: return 43219; break;
case 15: return 72176; break;
case 16: return 120535; break;
case 17: return 158887; break;
case 18: return 158887; break;
case 19: return 158887; break;
case 20: return 158887; break;
default: return -1;
}
};break;

case 109: 
{
switch(l)
{
case 1: return 95; break;
case 2: return 121; break;
case 3: return 157; break;
case 4: return 201; break;
case 5: return 256; break;
case 6: return 325; break;
case 7: return 416; break;
case 8: return 534; break;
case 9: return 683; break;
case 10: return 877; break;
case 11: return 1122; break;
case 12: return 1436; break;
case 13: return 1838; break;
case 14: return 2353; break;
case 15: return 3011; break;
case 16: return 3842; break;
case 17: return 4932; break;
case 18: return 6314; break;
case 19: return 8083; break;
case 20: return 10344; break;
default: return -1;
}
};break;

case 108: 
{
switch(l)
{
case 1: return 190; break;
case 2: return 241; break;
case 3: return 314; break;
case 4: return 403; break;
case 5: return 511; break;
case 6: return 650; break;
case 7: return 832; break;
case 8: return 1068; break;
case 9: return 1366; break;
case 10: return 1754; break;
case 11: return 2244; break;
case 12: return 2873; break;
case 13: return 3677; break;
case 14: return 4706; break;
case 15: return 6021; break;
case 16: return 7684; break;
case 17: return 9865; break;
case 18: return 12627; break;
case 19: return 16165; break;
case 20: return 20687; break;
default: return -1;
}
};break;

case 103: 
{
switch(l)
{
case 1: return 4750; break;
case 2: return 9500; break;
case 3: return 19000; break;
case 4: return 28500; break;
case 5: return 47500; break;
default: return -1;
}
};break;

case 105: 
{
switch(l)
{
case 1: return 3800; break;
case 2: return 7600; break;
case 3: return 15200; break;
case 4: return 22800; break;
case 5: return 38000; break;
default: return -1;
}
};break;

case 107: 
{
switch(l)
{
case 1: return 4250; break;
case 2: return 8500; break;
case 3: return 17000; break;
case 4: return 25500; break;
case 5: return 42500; break;
default: return -1;
}
};break;

case 110: 
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 112: 
{
switch(l)
{
case 1: return 80; break;
case 2: return 318; break;
case 3: return 412; break;
case 4: return 530; break;
case 5: return 672; break;
case 6: return 855; break;
case 7: return 1095; break;
case 8: return 1405; break;
case 9: return 1798; break;
case 10: return 2308; break;
case 11: return 2952; break;
case 12: return 3780; break;
case 13: return 4838; break;
case 14: return 6192; break;
case 15: return 7922; break;
case 16: return 10110; break;
case 17: return 12980; break;
case 18: return 16615; break;
case 19: return 21270; break;
case 20: return 27220; break;
default: return -1;
}
};break;

case 600: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 118: 
{
switch(l)
{
case 1: return 350; break;
case 2: return 444; break;
case 3: return 578; break;
case 4: return 742; break;
case 5: return 942; break;
case 6: return 1197; break;
case 7: return 1533; break;
case 8: return 1967; break;
case 9: return 2516; break;
case 10: return 3230; break;
case 11: return 4134; break;
case 12: return 5292; break;
case 13: return 6773; break;
case 14: return 8670; break;
case 15: return 11092; break;
case 16: return 14154; break;
case 17: return 18172; break;
case 18: return 23261; break;
case 19: return 29778; break;
case 20: return 38108; break;
default: return -1;
}
};break;

case 113: 
{
switch(l)
{
case 1: return 600; break;
case 2: return 762; break;
case 3: return 990; break;
case 4: return 1272; break;
case 5: return 1614; break;
case 6: return 2052; break;
case 7: return 2628; break;
case 8: return 3372; break;
case 9: return 4314; break;
case 10: return 5538; break;
case 11: return 7086; break;
case 12: return 9072; break;
case 13: return 11610; break;
case 14: return 14862; break;
case 15: return 19014; break;
case 16: return 24264; break;
case 17: return 31152; break;
case 18: return 39876; break;
case 19: return 51048; break;
case 20: return 65328; break;
default: return -1;
}
};break;

case 114: 
{
switch(l)
{
case 1: return 760; break;
case 2: return 965; break;
case 3: return 1254; break;
case 4: return 1611; break;
case 5: return 2044; break;
case 6: return 2599; break;
case 7: return 3329; break;
case 8: return 4271; break;
case 9: return 5464; break;
case 10: return 7015; break;
case 11: return 8976; break;
case 12: return 11491; break;
case 13: return 14706; break;
case 14: return 18825; break;
case 15: return 24084; break;
case 16: return 30734; break;
case 17: return 39459; break;
case 18: return 50510; break;
case 19: return 64661; break;
case 20: return 82749; break;
default: return -1;
}
};break;

case 115: 
{
switch(l)
{
case 1: return 760; break;
case 2: return 965; break;
case 3: return 1254; break;
case 4: return 1611; break;
case 5: return 2044; break;
case 6: return 2599; break;
case 7: return 3329; break;
case 8: return 4271; break;
case 9: return 5464; break;
case 10: return 7015; break;
case 11: return 8976; break;
case 12: return 11491; break;
case 13: return 14706; break;
case 14: return 18825; break;
case 15: return 24084; break;
case 16: return 30734; break;
case 17: return 39459; break;
case 18: return 50510; break;
case 19: return 64661; break;
case 20: return 82749; break;
default: return -1;
}
};break;

case 116: 
{
switch(l)
{
case 1: return 1150; break;
case 2: return 1460; break;
case 3: return 1898; break;
case 4: return 2438; break;
case 5: return 3094; break;
case 6: return 3933; break;
case 7: return 5037; break;
case 8: return 6463; break;
case 9: return 8268; break;
case 10: return 10614; break;
case 11: return 13582; break;
case 12: return 17388; break;
case 13: return 22252; break;
case 14: return 28486; break;
case 15: return 36444; break;
case 16: return 46506; break;
case 17: return 59708; break;
case 18: return 76429; break;
case 19: return 97842; break;
case 20: return 125212; break;
default: return -1;
}
};break;

case 117: 
{
switch(l)
{
case 1: return 1600; break;
case 2: return 2032; break;
case 3: return 2640; break;
case 4: return 3392; break;
case 5: return 4304; break;
case 6: return 5472; break;
case 7: return 7008; break;
case 8: return 8992; break;
case 9: return 11504; break;
case 10: return 14768; break;
case 11: return 18896; break;
case 12: return 24192; break;
case 13: return 30960; break;
case 14: return 39632; break;
case 15: return 50704; break;
case 16: return 64704; break;
case 17: return 83072; break;
case 18: return 106336; break;
case 19: return 136128; break;
case 20: return 174208; break;
default: return -1;
}
};break;

case 119: 
{
switch(l)
{
case 1: return 2000; break;
case 2: return 2540; break;
case 3: return 3300; break;
case 4: return 4240; break;
case 5: return 5380; break;
case 6: return 6840; break;
case 7: return 8760; break;
case 8: return 11240; break;
case 9: return 14380; break;
case 10: return 18460; break;
case 11: return 23620; break;
case 12: return 30240; break;
case 13: return 38700; break;
case 14: return 49540; break;
case 15: return 63380; break;
case 16: return 80880; break;
case 17: return 103840; break;
case 18: return 132920; break;
case 19: return 170160; break;
case 20: return 217760; break;
default: return -1;
}
};break;

case 120: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 148: 
{
switch(l)
{
case 1: return 10000; break;
default: return -1;
}
};break;

case 149: 
{
switch(l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 141: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 142: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 200: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 201: 
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 202: 
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 122: 
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 123: 
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 121: 
{
switch(l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 203: 
{
switch(l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 204: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 205: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 131: 
{
switch(l)
{
case 1: return 350; break;
default: return -1;
}
};break;

case 134: 
{
switch(l)
{
case 1: return 350; break;
default: return -1;
}
};break;

case 128: 
{
switch(l)
{
case 1: return 2400; break;
default: return -1;
}
};break;

case 206: 
{
switch(l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 207: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 208: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 132: 
{
switch(l)
{
case 1: return 1400; break;
default: return -1;
}
};break;

case 135: 
{
switch(l)
{
case 1: return 1400; break;
default: return -1;
}
};break;

case 129: 
{
switch(l)
{
case 1: return 7200; break;
default: return -1;
}
};break;

case 209: 
{
switch(l)
{
case 1: return 2700; break;
default: return -1;
}
};break;

case 210: 
{
switch(l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 211: 
{
switch(l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 133: 
{
switch(l)
{
case 1: return 2600; break;
default: return -1;
}
};break;

case 136: 
{
switch(l)
{
case 1: return 2600; break;
default: return -1;
}
};break;

case 130: 
{
switch(l)
{
case 1: return 9000; break;
default: return -1;
}
};break;

case 744: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 745: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 746: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 747: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 748: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 749: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 500: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 299: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 303: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 304: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 313: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 317: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 324: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 328: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 339: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 306: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 307: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 301: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 310: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 381: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 361: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 297: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 331: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 291: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 341: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 288: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 337: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 315: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 342: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 359: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 380: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 298: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 316: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 290: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 353: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 360: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 338: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 372: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 293: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 289: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 294: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 314: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 368: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 287: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 356: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 283: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 278: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 279: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 282: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 285: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 286: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 295: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 296: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 280: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 281: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 284: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 292: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 311: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 333: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 344: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 355: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 318: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 319: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 382: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 302: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 320: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 323: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 329: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 336: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 343: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 374: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 352: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 334: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 383: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 384: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 385: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 386: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 506: 
{
switch(l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 508: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 507: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 1: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 2: 
{
switch(l)
{
case 1: return 75; break;
default: return -1;
}
};break;

case 3: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 4: 
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 5: 
{
switch(l)
{
case 1: return 880; break;
default: return -1;
}
};break;

case 6: 
{
switch(l)
{
case 1: return 650; break;
default: return -1;
}
};break;

case 7: 
{
switch(l)
{
case 1: return 950; break;
default: return -1;
}
};break;

case 8: 
{
switch(l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 9: 
{
switch(l)
{
case 1: return 2500; break;
default: return -1;
}
};break;

case 10: 
{
switch(l)
{
case 1: return 2370; break;
default: return -1;
}
};break;

case 11: 
{
switch(l)
{
case 1: return 2700; break;
default: return -1;
}
};break;

case 12: 
{
switch(l)
{
case 1: return 2175; break;
default: return -1;
}
};break;

case 13: 
{
switch(l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 14: 
{
switch(l)
{
case 1: return 3700; break;
default: return -1;
}
};break;

case 15: 
{
switch(l)
{
case 1: return 5700; break;
default: return -1;
}
};break;

case 16: 
{
switch(l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 59: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 62: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9000: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9003: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 17: 
{
switch(l)
{
case 1: return 27; break;
default: return -1;
}
};break;

case 18: 
{
switch(l)
{
case 1: return 22.5; break;
default: return -1;
}
};break;

case 19: 
{
switch(l)
{
case 1: return 27; break;
default: return -1;
}
};break;

case 20: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 21: 
{
switch(l)
{
case 1: return 264; break;
default: return -1;
}
};break;

case 22: 
{
switch(l)
{
case 1: return 195; break;
default: return -1;
}
};break;

case 23: 
{
switch(l)
{
case 1: return 285; break;
default: return -1;
}
};break;

case 24: 
{
switch(l)
{
case 1: return 216; break;
default: return -1;
}
};break;

case 25: 
{
switch(l)
{
case 1: return 750; break;
default: return -1;
}
};break;

case 26: 
{
switch(l)
{
case 1: return 592.5; break;
default: return -1;
}
};break;

case 27: 
{
switch(l)
{
case 1: return 810; break;
default: return -1;
}
};break;

case 28: 
{
switch(l)
{
case 1: return 543.75; break;
default: return -1;
}
};break;

case 29: 
{
switch(l)
{
case 1: return 135; break;
default: return -1;
}
};break;

case 30: 
{
switch(l)
{
case 1: return 1110; break;
default: return -1;
}
};break;

case 31: 
{
switch(l)
{
case 1: return 1425; break;
default: return -1;
}
};break;

case 32: 
{
switch(l)
{
case 1: return 1250; break;
default: return -1;
}
};break;

case 60: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 63: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9001: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9004: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 37: 
{
switch(l)
{
case 1: return 140; break;
default: return -1;
}
};break;

case 38: 
{
switch(l)
{
case 1: return 140; break;
default: return -1;
}
};break;

case 39: 
{
switch(l)
{
case 1: return 280; break;
default: return -1;
}
};break;

case 40: 
{
switch(l)
{
case 1: return 280; break;
default: return -1;
}
};break;

case 41: 
{
switch(l)
{
case 1: return 48; break;
default: return -1;
}
};break;

case 42: 
{
switch(l)
{
case 1: return 48; break;
default: return -1;
}
};break;

case 43: 
{
switch(l)
{
case 1: return 96; break;
default: return -1;
}
};break;

case 44: 
{
switch(l)
{
case 1: return 96; break;
default: return -1;
}
};break;

case 45: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 46: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 47: 
{
switch(l)
{
case 1: return 1200; break;
default: return -1;
}
};break;

case 48: 
{
switch(l)
{
case 1: return 4200; break;
default: return -1;
}
};break;

case 49: 
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 50: 
{
switch(l)
{
case 1: return 70; break;
default: return -1;
}
};break;

case 51: 
{
switch(l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 52: 
{
switch(l)
{
case 1: return 1400; break;
default: return -1;
}
};break;

case 91: 
{
switch(l)
{
case 1: return 135; break;
default: return -1;
}
};break;

case 92: 
{
switch(l)
{
case 1: return 216; break;
default: return -1;
}
};break;

case 94: 
{
switch(l)
{
case 1: return 810; break;
default: return -1;
}
};break;

case 93: 
{
switch(l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 95: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 96: 
{
switch(l)
{
case 1: return 285; break;
default: return -1;
}
};break;

case 97: 
{
switch(l)
{
case 1: return 652.5; break;
default: return -1;
}
};break;

case 98: 
{
switch(l)
{
case 1: return 1110; break;
default: return -1;
}
};break;

case 1050: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 1052: 
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 1054: 
{
switch(l)
{
case 1: return 3000; break;
default: return -1;
}
};break;

case 1053: 
{
switch(l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 1055: 
{
switch(l)
{
case 1: return 10000; break;
default: return -1;
}
};break;

case 1056: 
{
switch(l)
{
case 1: return 15000; break;
default: return -1;
}
};break;

case 1057: 
{
switch(l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 1058: 
{
switch(l)
{
case 1: return 120; break;
case 2: return 150; break;
case 3: return 300; break;
case 4: return 871; break;
case 5: return 1006; break;
case 6: return 1138; break;
case 7: return 1267; break;
case 8: return 1392; break;
case 9: return 1514; break;
case 10: return 1634; break;
case 11: return 1752; break;
case 12: return 1867; break;
case 13: return 1982; break;
case 14: return 2095; break;
case 15: return 2206; break;
case 16: return 2314; break;
case 17: return 2424; break;
case 18: return 2530; break;
case 19: return 2638; break;
case 20: return 2880; break;
default: return -1;
}
};break;

case 1059: 
{
switch(l)
{
case 1: return 261; break;
case 2: return 150; break;
case 3: return 300; break;
case 4: return 544; break;
case 5: return 629; break;
case 6: return 711; break;
case 7: return 792; break;
case 8: return 870; break;
case 9: return 946; break;
case 10: return 1021; break;
case 11: return 1095; break;
case 12: return 1167; break;
case 13: return 1239; break;
case 14: return 1310; break;
case 15: return 1378; break;
case 16: return 1446; break;
case 17: return 1515; break;
case 18: return 1581; break;
case 19: return 1648; break;
case 20: return 1800; break;
default: return -1;
}
};break;

case 1060: 
{
switch(l)
{
case 1: return 313; break;
case 2: return 434; break;
case 3: return 545; break;
case 4: return 653; break;
case 5: return 754; break;
case 6: return 853; break;
case 7: return 950; break;
case 8: return 1044; break;
case 9: return 1136; break;
case 10: return 1226; break;
case 11: return 1314; break;
case 12: return 1400; break;
case 13: return 1487; break;
case 14: return 1571; break;
case 15: return 1654; break;
case 16: return 1735; break;
case 17: return 1818; break;
case 18: return 1897; break;
case 19: return 1978; break;
case 20: return 2160; break;
default: return -1;
}
};break;

case 1061: 
{
switch(l)
{
case 1: return 861; break;
case 2: return 1193; break;
case 3: return 1500; break;
case 4: return 1797; break;
case 5: return 2074; break;
case 6: return 2346; break;
case 7: return 2614; break;
case 8: return 2871; break;
case 9: return 3123; break;
case 10: return 3371; break;
case 11: return 3614; break;
case 12: return 3851; break;
case 13: return 4089; break;
case 14: return 4321; break;
case 15: return 4549; break;
case 16: return 4772; break;
case 17: return 5000; break;
case 18: return 5217; break;
case 19: return 5440; break;
case 20: return 5940; break;
default: return -1;
}
};break;

case 1062: 
{
switch(l)
{
case 1: return 1305; break;
case 2: return 1808; break;
case 3: return 2272; break;
case 4: return 2722; break;
case 5: return 3143; break;
case 6: return 3555; break;
case 7: return 3960; break;
case 8: return 4350; break;
case 9: return 4732; break;
case 10: return 5108; break;
case 11: return 5475; break;
case 12: return 5835; break;
case 13: return 6195; break;
case 14: return 6548; break;
case 15: return 6892; break;
case 16: return 7230; break;
case 17: return 7575; break;
case 18: return 7905; break;
case 19: return 8242; break;
case 20: return 9000; break;
default: return -1;
}
};break;

case 1078: 
{
switch(l)
{
case 1: return 2088; break;
case 2: return 2892; break;
case 3: return 3636; break;
case 4: return 4356; break;
case 5: return 5028; break;
case 6: return 5688; break;
case 7: return 6336; break;
case 8: return 6960; break;
case 9: return 7572; break;
case 10: return 8172; break;
case 11: return 8760; break;
case 12: return 9336; break;
case 13: return 9912; break;
case 14: return 10476; break;
case 15: return 11028; break;
case 16: return 11568; break;
case 17: return 12120; break;
case 18: return 12648; break;
case 19: return 13188; break;
case 20: return 14400; break;
default: return -1;
}
};break;

case 1063: 
{
switch(l)
{
case 1: return 1566; break;
case 2: return 2169; break;
case 3: return 2727; break;
case 4: return 3267; break;
case 5: return 3771; break;
case 6: return 4266; break;
case 7: return 4752; break;
case 8: return 5220; break;
case 9: return 5679; break;
case 10: return 6129; break;
case 11: return 6570; break;
case 12: return 7002; break;
case 13: return 7434; break;
case 14: return 7857; break;
case 15: return 8271; break;
case 16: return 8676; break;
case 17: return 9090; break;
case 18: return 9486; break;
case 19: return 9891; break;
case 20: return 10800; break;
default: return -1;
}
};break;

case 1079: 
{
switch(l)
{
case 1: return 2871; break;
case 2: return 3977; break;
case 3: return 5000; break;
case 4: return 5990; break;
case 5: return 6914; break;
case 6: return 7821; break;
case 7: return 8712; break;
case 8: return 9570; break;
case 9: return 10412; break;
case 10: return 11236; break;
case 11: return 12045; break;
case 12: return 12837; break;
case 13: return 13629; break;
case 14: return 14404; break;
case 15: return 15164; break;
case 16: return 15906; break;
case 17: return 16665; break;
case 18: return 17391; break;
case 19: return 18134; break;
case 20: return 19800; break;
default: return -1;
}
};break;

case 1065: 
{
switch(l)
{
case 1: return 2349; break;
case 2: return 3254; break;
case 3: return 4090; break;
case 4: return 4900; break;
case 5: return 5657; break;
case 6: return 6399; break;
case 7: return 7128; break;
case 8: return 7830; break;
case 9: return 8518; break;
case 10: return 9194; break;
case 11: return 9855; break;
case 12: return 10503; break;
case 13: return 11151; break;
case 14: return 11786; break;
case 15: return 12406; break;
case 16: return 13014; break;
case 17: return 13635; break;
case 18: return 14229; break;
case 19: return 14836; break;
case 20: return 16200; break;
default: return -1;
}
};break;

case 1068: 
{
switch(l)
{
case 1: return 6525; break;
case 2: return 9038; break;
case 3: return 11362; break;
case 4: return 13612; break;
case 5: return 15713; break;
case 6: return 17775; break;
case 7: return 19800; break;
case 8: return 21750; break;
case 9: return 23662; break;
case 10: return 25538; break;
case 11: return 27375; break;
case 12: return 29175; break;
case 13: return 30975; break;
case 14: return 32738; break;
case 15: return 34462; break;
case 16: return 36150; break;
case 17: return 37875; break;
case 18: return 39525; break;
case 19: return 41212; break;
case 20: return 45000; break;
default: return -1;
}
};break;

case 1066: 
{
switch(l)
{
case 1: return 2610; break;
case 2: return 3615; break;
case 3: return 4545; break;
case 4: return 5445; break;
case 5: return 6285; break;
case 6: return 7110; break;
case 7: return 7920; break;
case 8: return 8700; break;
case 9: return 9465; break;
case 10: return 10215; break;
case 11: return 10950; break;
case 12: return 11670; break;
case 13: return 12390; break;
case 14: return 13095; break;
case 15: return 13785; break;
case 16: return 14460; break;
case 17: return 15150; break;
case 18: return 15810; break;
case 19: return 16485; break;
case 20: return 18000; break;
default: return -1;
}
};break;

case 1069: 
{
switch(l)
{
case 1: return 9135; break;
case 2: return 12652; break;
case 3: return 15907; break;
case 4: return 19058; break;
case 5: return 21998; break;
case 6: return 24885; break;
case 7: return 27720; break;
case 8: return 30450; break;
case 9: return 33128; break;
case 10: return 35752; break;
case 11: return 38325; break;
case 12: return 40845; break;
case 13: return 43365; break;
case 14: return 45832; break;
case 15: return 48248; break;
case 16: return 50610; break;
case 17: return 53025; break;
case 18: return 55335; break;
case 19: return 57698; break;
case 20: return 63000; break;
default: return -1;
}
};break;

case 1072: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 1073: 
{
switch(l)
{
case 1: return 2000; break;
default: return -1;
}
};break;

case 1074: 
{
switch(l)
{
case 1: return 10000; break;
default: return -1;
}
};break;

case 1075: 
{
switch(l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 1076: 
{
switch(l)
{
case 1: return 250; break;
case 2: return 250; break;
case 3: return 300; break;
case 4: return 2178; break;
case 5: return 2514; break;
case 6: return 2844; break;
case 7: return 3168; break;
case 8: return 3480; break;
case 9: return 3786; break;
case 10: return 4086; break;
case 11: return 4380; break;
case 12: return 4668; break;
case 13: return 4956; break;
case 14: return 5238; break;
case 15: return 5514; break;
case 16: return 5784; break;
case 17: return 6060; break;
case 18: return 6324; break;
case 19: return 6594; break;
case 20: return 7200; break;
default: return -1;
}
};break;

case 1070: 
{
switch(l)
{
case 1: return 3393; break;
case 2: return 4700; break;
case 3: return 5908; break;
case 4: return 7078; break;
case 5: return 8171; break;
case 6: return 9243; break;
case 7: return 10296; break;
case 8: return 11310; break;
case 9: return 12304; break;
case 10: return 13280; break;
case 11: return 14235; break;
case 12: return 15171; break;
case 13: return 16107; break;
case 14: return 17024; break;
case 15: return 17920; break;
case 16: return 18798; break;
case 17: return 19695; break;
case 18: return 20553; break;
case 19: return 21430; break;
case 20: return 23400; break;
default: return -1;
}
};break;

case 1071: 
{
switch(l)
{
case 1: return 15660; break;
case 2: return 21690; break;
case 3: return 27270; break;
case 4: return 32670; break;
case 5: return 37710; break;
case 6: return 42660; break;
case 7: return 47520; break;
case 8: return 52200; break;
case 9: return 56790; break;
case 10: return 61290; break;
case 11: return 65700; break;
case 12: return 70020; break;
case 13: return 74340; break;
case 14: return 78570; break;
case 15: return 82710; break;
case 16: return 86760; break;
case 17: return 90900; break;
case 18: return 94860; break;
case 19: return 98910; break;
case 20: return 108000; break;
default: return -1;
}
};break;

case 1080: 
{
switch(l)
{
case 1: return 19575; break;
case 2: return 27112; break;
case 3: return 34088; break;
case 4: return 40838; break;
case 5: return 47138; break;
case 6: return 53325; break;
case 7: return 59400; break;
case 8: return 65250; break;
case 9: return 70988; break;
case 10: return 76612; break;
case 11: return 82125; break;
case 12: return 87525; break;
case 13: return 92925; break;
case 14: return 98212; break;
case 15: return 103388; break;
case 16: return 108450; break;
case 17: return 113625; break;
case 18: return 118575; break;
case 19: return 123638; break;
case 20: return 123638; break;
default: return -1;
}
};break;

case 1081: 
{
switch(l)
{
case 1: return 1305; break;
case 2: return 1808; break;
case 3: return 2272; break;
case 4: return 2722; break;
case 5: return 3143; break;
case 6: return 3555; break;
case 7: return 3960; break;
case 8: return 4350; break;
case 9: return 4732; break;
case 10: return 5108; break;
case 11: return 5475; break;
case 12: return 5835; break;
case 13: return 6195; break;
case 14: return 6548; break;
case 15: return 6892; break;
case 16: return 7230; break;
case 17: return 7575; break;
case 18: return 7905; break;
case 19: return 8242; break;
case 20: return 9000; break;
default: return -1;
}
};break;

case 1082: 
{
switch(l)
{
case 1: return 1305; break;
case 2: return 1808; break;
case 3: return 2272; break;
case 4: return 2722; break;
case 5: return 3143; break;
case 6: return 3555; break;
case 7: return 3960; break;
case 8: return 4350; break;
case 9: return 4732; break;
case 10: return 5108; break;
case 11: return 5475; break;
case 12: return 5835; break;
case 13: return 6195; break;
case 14: return 6548; break;
case 15: return 6892; break;
case 16: return 7230; break;
case 17: return 7575; break;
case 18: return 7905; break;
case 19: return 8242; break;
case 20: return 9000; break;
default: return -1;
}
};break;

case 1083: 
{
switch(l)
{
case 1: return 1566; break;
case 2: return 2169; break;
case 3: return 2727; break;
case 4: return 3267; break;
case 5: return 3771; break;
case 6: return 4266; break;
case 7: return 4752; break;
case 8: return 5220; break;
case 9: return 5679; break;
case 10: return 6129; break;
case 11: return 6570; break;
case 12: return 7002; break;
case 13: return 7434; break;
case 14: return 7857; break;
case 15: return 8271; break;
case 16: return 8676; break;
case 17: return 9090; break;
case 18: return 9486; break;
case 19: return 9891; break;
case 20: return 10800; break;
default: return -1;
}
};break;

case 1084: 
{
switch(l)
{
case 1: return 1827; break;
case 2: return 2530; break;
case 3: return 3182; break;
case 4: return 3812; break;
case 5: return 4400; break;
case 6: return 4977; break;
case 7: return 5544; break;
case 8: return 6090; break;
case 9: return 6626; break;
case 10: return 7150; break;
case 11: return 7665; break;
case 12: return 8169; break;
case 13: return 8673; break;
case 14: return 9166; break;
case 15: return 9650; break;
case 16: return 10122; break;
case 17: return 10605; break;
case 18: return 11067; break;
case 19: return 11540; break;
case 20: return 12600; break;
default: return -1;
}
};break;

case 1085: 
{
switch(l)
{
case 1: return 1305; break;
case 2: return 1808; break;
case 3: return 2272; break;
case 4: return 2722; break;
case 5: return 3143; break;
case 6: return 3555; break;
case 7: return 3960; break;
case 8: return 4350; break;
case 9: return 4732; break;
case 10: return 5108; break;
case 11: return 5475; break;
case 12: return 5835; break;
case 13: return 6195; break;
case 14: return 6548; break;
case 15: return 6892; break;
case 16: return 7230; break;
case 17: return 7575; break;
case 18: return 7905; break;
case 19: return 8242; break;
case 20: return 9000; break;
default: return -1;
}
};break;

case 1086: 
{
switch(l)
{
case 1: return 1305; break;
case 2: return 1808; break;
case 3: return 2272; break;
case 4: return 2722; break;
case 5: return 3143; break;
case 6: return 3555; break;
case 7: return 3960; break;
case 8: return 4350; break;
case 9: return 4732; break;
case 10: return 5108; break;
case 11: return 5475; break;
case 12: return 5835; break;
case 13: return 6195; break;
case 14: return 6548; break;
case 15: return 6892; break;
case 16: return 7230; break;
case 17: return 7575; break;
case 18: return 7905; break;
case 19: return 8242; break;
case 20: return 9000; break;
default: return -1;
}
};break;

case 1087: 
{
switch(l)
{
case 1: return 1566; break;
case 2: return 2169; break;
case 3: return 2727; break;
case 4: return 3267; break;
case 5: return 3771; break;
case 6: return 4266; break;
case 7: return 4752; break;
case 8: return 5220; break;
case 9: return 5679; break;
case 10: return 6129; break;
case 11: return 6570; break;
case 12: return 7002; break;
case 13: return 7434; break;
case 14: return 7857; break;
case 15: return 8271; break;
case 16: return 8676; break;
case 17: return 9090; break;
case 18: return 9486; break;
case 19: return 9891; break;
case 20: return 10800; break;
default: return -1;
}
};break;

case 1088: 
{
switch(l)
{
case 1: return 1827; break;
case 2: return 2530; break;
case 3: return 3182; break;
case 4: return 3812; break;
case 5: return 4400; break;
case 6: return 4977; break;
case 7: return 5544; break;
case 8: return 6090; break;
case 9: return 6626; break;
case 10: return 7150; break;
case 11: return 7665; break;
case 12: return 8169; break;
case 13: return 8673; break;
case 14: return 9166; break;
case 15: return 9650; break;
case 16: return 10122; break;
case 17: return 10605; break;
case 18: return 11067; break;
case 19: return 11540; break;
case 20: return 12600; break;
default: return -1;
}
};break;

case 1090: 
{
switch(l)
{
case 1: return 1566; break;
case 2: return 2169; break;
case 3: return 2727; break;
case 4: return 3267; break;
case 5: return 3771; break;
case 6: return 4266; break;
case 7: return 4752; break;
case 8: return 5220; break;
case 9: return 5679; break;
case 10: return 6129; break;
case 11: return 6570; break;
case 12: return 7002; break;
case 13: return 7434; break;
case 14: return 7857; break;
case 15: return 8271; break;
case 16: return 8676; break;
case 17: return 9090; break;
case 18: return 9486; break;
case 19: return 9891; break;
case 20: return 10800; break;
default: return -1;
}
};break;

case 1091: 
{
switch(l)
{
case 1: return 19575; break;
case 2: return 27112; break;
case 3: return 34088; break;
case 4: return 40838; break;
case 5: return 47138; break;
case 6: return 53325; break;
case 7: return 59400; break;
case 8: return 65250; break;
case 9: return 70988; break;
case 10: return 76612; break;
case 11: return 82125; break;
case 12: return 87525; break;
case 13: return 92925; break;
case 14: return 98212; break;
case 15: return 103388; break;
case 16: return 108450; break;
case 17: return 113625; break;
case 18: return 118575; break;
case 19: return 123638; break;
case 20: return 123638; break;
default: return -1;
}
};break;

case 1092: 
{
switch(l)
{
case 1: return 1566; break;
case 2: return 2169; break;
case 3: return 2727; break;
case 4: return 3267; break;
case 5: return 3771; break;
case 6: return 4266; break;
case 7: return 4752; break;
case 8: return 5220; break;
case 9: return 5679; break;
case 10: return 6129; break;
case 11: return 6570; break;
case 12: return 7002; break;
case 13: return 7434; break;
case 14: return 7857; break;
case 15: return 8271; break;
case 16: return 8676; break;
case 17: return 9090; break;
case 18: return 9486; break;
case 19: return 9891; break;
case 20: return 10800; break;
default: return -1;
}
};break;

case 1093: 
{
switch(l)
{
case 1: return 13702; break;
case 2: return 18979; break;
case 3: return 23861; break;
case 4: return 28586; break;
case 5: return 32996; break;
case 6: return 37328; break;
case 7: return 41580; break;
case 8: return 45675; break;
case 9: return 49691; break;
case 10: return 53629; break;
case 11: return 57488; break;
case 12: return 61268; break;
case 13: return 65048; break;
case 14: return 68749; break;
case 15: return 72371; break;
case 16: return 75915; break;
case 17: return 79538; break;
case 18: return 83002; break;
case 19: return 86546; break;
case 20: return 94500; break;
default: return -1;
}
};break;

default: return -1;
}
}

double TDdata::GetObjLT(int i,int l)
{
switch(i)
{
case 100: 
{
switch(l)
{
case 1: return 75; break;
case 2: return 95; break;
case 3: return 124; break;
case 4: return 159; break;
case 5: return 202; break;
case 6: return 256; break;
case 7: return 328; break;
case 8: return 422; break;
case 9: return 539; break;
case 10: return 692; break;
case 11: return 886; break;
case 12: return 1134; break;
case 13: return 1451; break;
case 14: return 1858; break;
case 15: return 2377; break;
case 16: return 3033; break;
case 17: return 3894; break;
case 18: return 4984; break;
case 19: return 6381; break;
case 20: return 8166; break;
default: return -1;
}
};break;

case 127: 
{
switch(l)
{
case 1: return 180; break;
case 2: return 229; break;
case 3: return 297; break;
case 4: return 382; break;
case 5: return 484; break;
case 6: return 616; break;
case 7: return 788; break;
case 8: return 1012; break;
case 9: return 1294; break;
case 10: return 1661; break;
case 11: return 2126; break;
case 12: return 2722; break;
case 13: return 3483; break;
case 14: return 4459; break;
case 15: return 5704; break;
case 16: return 7279; break;
case 17: return 9346; break;
case 18: return 11963; break;
case 19: return 15314; break;
case 20: return 19598; break;
default: return -1;
}
};break;

case 124: 
{
switch(l)
{
case 1: return 160; break;
case 2: return 203; break;
case 3: return 264; break;
case 4: return 339; break;
case 5: return 430; break;
case 6: return 547; break;
case 7: return 701; break;
case 8: return 899; break;
case 9: return 1150; break;
case 10: return 1477; break;
case 11: return 1890; break;
case 12: return 2419; break;
case 13: return 3096; break;
case 14: return 3963; break;
case 15: return 5070; break;
case 16: return 6470; break;
case 17: return 8307; break;
case 18: return 10634; break;
case 19: return 13613; break;
case 20: return 17421; break;
default: return -1;
}
};break;

case 101: 
{
switch(l)
{
case 1: return 160; break;
case 2: return 203; break;
case 3: return 264; break;
case 4: return 339; break;
case 5: return 430; break;
default: return -1;
}
};break;

case 138: 
{
switch(l)
{
case 1: return 2000; break;
case 2: return 5080; break;
case 3: return 6600; break;
case 4: return 8480; break;
case 5: return 10760; break;
case 6: return 13680; break;
case 7: return 17520; break;
case 8: return 22480; break;
case 9: return 28760; break;
case 10: return 36920; break;
case 11: return 47240; break;
case 12: return 60480; break;
case 13: return 77400; break;
case 14: return 99080; break;
case 15: return 126760; break;
case 16: return 161760; break;
case 17: return 181760; break;
case 18: return 181760; break;
case 19: return 181760; break;
case 20: return 181760; break;
default: return -1;
}
};break;

case 150: 
{
switch(l)
{
case 1: return 50; break;
case 2: return 248; break;
case 3: return 322; break;
case 4: return 413; break;
case 5: return 525; break;
case 6: return 667; break;
case 7: return 854; break;
case 8: return 1096; break;
case 9: return 1402; break;
case 10: return 1800; break;
case 11: return 2303; break;
case 12: return 2948; break;
case 13: return 3773; break;
case 14: return 4830; break;
case 15: return 6180; break;
case 16: return 7886; break;
case 17: return 10124; break;
case 18: return 12960; break;
case 19: return 16591; break;
case 20: return 21232; break;
default: return -1;
}
};break;

case 144: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 139: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 137: 
{
switch(l)
{
case 1: return 1000; break;
case 2: return 1270; break;
case 3: return 1650; break;
case 4: return 2120; break;
case 5: return 2690; break;
case 6: return 3420; break;
default: return -1;
}
};break;

case 125: 
{
switch(l)
{
case 1: return 800; break;
case 2: return 1016; break;
case 3: return 1320; break;
case 4: return 1696; break;
case 5: return 2152; break;
case 6: return 2736; break;
case 7: return 3504; break;
case 8: return 4496; break;
case 9: return 5752; break;
case 10: return 7384; break;
case 11: return 9448; break;
case 12: return 12096; break;
case 13: return 15480; break;
case 14: return 19816; break;
case 15: return 25352; break;
case 16: return 32352; break;
case 17: return 41536; break;
case 18: return 53168; break;
case 19: return 68064; break;
case 20: return 87104; break;
default: return -1;
}
};break;

case 126: 
{
switch(l)
{
case 1: return 1500; break;
case 2: return 1905; break;
case 3: return 2475; break;
case 4: return 3180; break;
case 5: return 4035; break;
case 6: return 5130; break;
case 7: return 6570; break;
case 8: return 8430; break;
case 9: return 10785; break;
case 10: return 13845; break;
case 11: return 17715; break;
case 12: return 22680; break;
case 13: return 29025; break;
case 14: return 37155; break;
case 15: return 47535; break;
case 16: return 60660; break;
case 17: return 77880; break;
case 18: return 99690; break;
case 19: return 127620; break;
case 20: return 163320; break;
default: return -1;
}
};break;

case 198: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 75; break;
default: return -1;
}
};break;

case 199: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 55; break;
default: return -1;
}
};break;

case 106: 
{
switch(l)
{
case 1: return 55; break;
case 2: return 91; break;
case 3: return 154; break;
case 4: return 256; break;
case 5: return 429; break;
case 6: return 715; break;
case 7: return 1194; break;
case 8: return 1994; break;
case 9: return 3328; break;
case 10: return 5558; break;
case 11: return 9278; break;
case 12: return 15496; break;
case 13: return 25880; break;
case 14: return 43219; break;
case 15: return 72176; break;
case 16: return 120535; break;
case 17: return 201292; break;
case 18: return 213854; break;
case 19: return 213854; break;
case 20: return 213854; break;
default: return -1;
}
};break;

case 104: 
{
switch(l)
{
case 1: return 55; break;
case 2: return 91; break;
case 3: return 154; break;
case 4: return 256; break;
case 5: return 429; break;
case 6: return 715; break;
case 7: return 1194; break;
case 8: return 1994; break;
case 9: return 3328; break;
case 10: return 5558; break;
case 11: return 9278; break;
case 12: return 15496; break;
case 13: return 25880; break;
case 14: return 43219; break;
case 15: return 72176; break;
case 16: return 120535; break;
case 17: return 158887; break;
case 18: return 158887; break;
case 19: return 158887; break;
case 20: return 158887; break;
default: return -1;
}
};break;

case 102: 
{
switch(l)
{
case 1: return 75; break;
case 2: return 124; break;
case 3: return 210; break;
case 4: return 349; break;
case 5: return 585; break;
case 6: return 975; break;
case 7: return 1628; break;
case 8: return 2719; break;
case 9: return 4538; break;
case 10: return 7579; break;
case 11: return 12652; break;
case 12: return 21131; break;
case 13: return 35291; break;
case 14: return 58935; break;
case 15: return 98422; break;
case 16: return 164366; break;
case 17: return 216664; break;
case 18: return 216664; break;
case 19: return 216664; break;
case 20: return 216664; break;
default: return -1;
}
};break;

case 109: 
{
switch(l)
{
case 1: return 130; break;
case 2: return 165; break;
case 3: return 214; break;
case 4: return 276; break;
case 5: return 350; break;
case 6: return 445; break;
case 7: return 569; break;
case 8: return 731; break;
case 9: return 935; break;
case 10: return 1200; break;
case 11: return 1535; break;
case 12: return 1966; break;
case 13: return 2516; break;
case 14: return 3220; break;
case 15: return 4120; break;
case 16: return 5257; break;
case 17: return 6750; break;
case 18: return 8640; break;
case 19: return 11060; break;
case 20: return 14154; break;
default: return -1;
}
};break;

case 108: 
{
switch(l)
{
case 1: return 130; break;
case 2: return 165; break;
case 3: return 214; break;
case 4: return 276; break;
case 5: return 350; break;
case 6: return 445; break;
case 7: return 569; break;
case 8: return 731; break;
case 9: return 935; break;
case 10: return 1200; break;
case 11: return 1535; break;
case 12: return 1966; break;
case 13: return 2516; break;
case 14: return 3220; break;
case 15: return 4120; break;
case 16: return 5257; break;
case 17: return 6750; break;
case 18: return 8640; break;
case 19: return 11060; break;
case 20: return 14154; break;
default: return -1;
}
};break;

case 103: 
{
switch(l)
{
case 1: return 3800; break;
case 2: return 7600; break;
case 3: return 15200; break;
case 4: return 22800; break;
case 5: return 38000; break;
default: return -1;
}
};break;

case 105: 
{
switch(l)
{
case 1: return 4750; break;
case 2: return 9500; break;
case 3: return 19000; break;
case 4: return 28500; break;
case 5: return 47500; break;
default: return -1;
}
};break;

case 107: 
{
switch(l)
{
case 1: return 5700; break;
case 2: return 11400; break;
case 3: return 22800; break;
case 4: return 34200; break;
case 5: return 57000; break;
default: return -1;
}
};break;

case 110: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 112: 
{
switch(l)
{
case 1: return 80; break;
case 2: return 419; break;
case 3: return 544; break;
case 4: return 700; break;
case 5: return 888; break;
case 6: return 1129; break;
case 7: return 1445; break;
case 8: return 1855; break;
case 9: return 2373; break;
case 10: return 3046; break;
case 11: return 3897; break;
case 12: return 4990; break;
case 13: return 6386; break;
case 14: return 8174; break;
case 15: return 10458; break;
case 16: return 13345; break;
case 17: return 17134; break;
case 18: return 21932; break;
case 19: return 28076; break;
case 20: return 35930; break;
default: return -1;
}
};break;

case 600: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 118: 
{
switch(l)
{
case 1: return 530; break;
case 2: return 673; break;
case 3: return 874; break;
case 4: return 1124; break;
case 5: return 1426; break;
case 6: return 1813; break;
case 7: return 2321; break;
case 8: return 2979; break;
case 9: return 3811; break;
case 10: return 4892; break;
case 11: return 6259; break;
case 12: return 8014; break;
case 13: return 10256; break;
case 14: return 13128; break;
case 15: return 16796; break;
case 16: return 21433; break;
case 17: return 27518; break;
case 18: return 35224; break;
case 19: return 45092; break;
case 20: return 57706; break;
default: return -1;
}
};break;

case 113: 
{
switch(l)
{
case 1: return 550; break;
case 2: return 698; break;
case 3: return 908; break;
case 4: return 1166; break;
case 5: return 1480; break;
case 6: return 1881; break;
case 7: return 2409; break;
case 8: return 3091; break;
case 9: return 3954; break;
case 10: return 5076; break;
case 11: return 6496; break;
case 12: return 8316; break;
case 13: return 10642; break;
case 14: return 13624; break;
case 15: return 17430; break;
case 16: return 22242; break;
case 17: return 28556; break;
case 18: return 36553; break;
case 19: return 46794; break;
case 20: return 59884; break;
default: return -1;
}
};break;

case 114: 
{
switch(l)
{
case 1: return 560; break;
case 2: return 711; break;
case 3: return 924; break;
case 4: return 1187; break;
case 5: return 1506; break;
case 6: return 1915; break;
case 7: return 2453; break;
case 8: return 3147; break;
case 9: return 4026; break;
case 10: return 5169; break;
case 11: return 6614; break;
case 12: return 8467; break;
case 13: return 10836; break;
case 14: return 13871; break;
case 15: return 17746; break;
case 16: return 22646; break;
case 17: return 29075; break;
case 18: return 37218; break;
case 19: return 47645; break;
case 20: return 60973; break;
default: return -1;
}
};break;

case 115: 
{
switch(l)
{
case 1: return 1000; break;
case 2: return 1270; break;
case 3: return 1650; break;
case 4: return 2120; break;
case 5: return 2690; break;
case 6: return 3420; break;
case 7: return 4380; break;
case 8: return 5620; break;
case 9: return 7190; break;
case 10: return 9230; break;
case 11: return 11810; break;
case 12: return 15120; break;
case 13: return 19350; break;
case 14: return 24770; break;
case 15: return 31690; break;
case 16: return 40440; break;
case 17: return 51920; break;
case 18: return 66460; break;
case 19: return 85080; break;
case 20: return 108880; break;
default: return -1;
}
};break;

case 116: 
{
switch(l)
{
case 1: return 850; break;
case 2: return 1080; break;
case 3: return 1402; break;
case 4: return 1802; break;
case 5: return 2286; break;
case 6: return 2907; break;
case 7: return 3723; break;
case 8: return 4777; break;
case 9: return 6112; break;
case 10: return 7846; break;
case 11: return 10038; break;
case 12: return 12852; break;
case 13: return 16448; break;
case 14: return 21054; break;
case 15: return 26936; break;
case 16: return 34374; break;
case 17: return 44132; break;
case 18: return 56491; break;
case 19: return 72318; break;
case 20: return 92548; break;
default: return -1;
}
};break;

case 117: 
{
switch(l)
{
case 1: return 1300; break;
case 2: return 1651; break;
case 3: return 2145; break;
case 4: return 2756; break;
case 5: return 3497; break;
case 6: return 4446; break;
case 7: return 5694; break;
case 8: return 7306; break;
case 9: return 9347; break;
case 10: return 11999; break;
case 11: return 15353; break;
case 12: return 19656; break;
case 13: return 25155; break;
case 14: return 32201; break;
case 15: return 41197; break;
case 16: return 52572; break;
case 17: return 67496; break;
case 18: return 86398; break;
case 19: return 110604; break;
case 20: return 141544; break;
default: return -1;
}
};break;

case 119: 
{
switch(l)
{
case 1: return 1700; break;
case 2: return 2159; break;
case 3: return 2805; break;
case 4: return 3604; break;
case 5: return 4573; break;
case 6: return 5814; break;
case 7: return 7446; break;
case 8: return 9554; break;
case 9: return 12223; break;
case 10: return 15691; break;
case 11: return 20077; break;
case 12: return 25704; break;
case 13: return 32895; break;
case 14: return 42109; break;
case 15: return 53873; break;
case 16: return 68748; break;
case 17: return 88264; break;
case 18: return 112982; break;
case 19: return 144636; break;
case 20: return 185096; break;
default: return -1;
}
};break;

case 120: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 148: 
{
switch(l)
{
case 1: return 10000; break;
default: return -1;
}
};break;

case 149: 
{
switch(l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 141: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 142: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 200: 
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 201: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 202: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 122: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 123: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 121: 
{
switch(l)
{
case 1: return 800; break;
default: return -1;
}
};break;

case 203: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 204: 
{
switch(l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 205: 
{
switch(l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 131: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 134: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 128: 
{
switch(l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 206: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 207: 
{
switch(l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 208: 
{
switch(l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 132: 
{
switch(l)
{
case 1: return 1400; break;
default: return -1;
}
};break;

case 135: 
{
switch(l)
{
case 1: return 1400; break;
default: return -1;
}
};break;

case 129: 
{
switch(l)
{
case 1: return 6000; break;
default: return -1;
}
};break;

case 209: 
{
switch(l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 210: 
{
switch(l)
{
case 1: return 2700; break;
default: return -1;
}
};break;

case 211: 
{
switch(l)
{
case 1: return 2700; break;
default: return -1;
}
};break;

case 133: 
{
switch(l)
{
case 1: return 2600; break;
default: return -1;
}
};break;

case 136: 
{
switch(l)
{
case 1: return 2600; break;
default: return -1;
}
};break;

case 130: 
{
switch(l)
{
case 1: return 8000; break;
default: return -1;
}
};break;

case 744: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 745: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 746: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 747: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 748: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 749: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 500: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 299: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 303: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 304: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 313: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 317: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 324: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 328: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 339: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 306: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 307: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 301: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 310: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 381: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 361: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 297: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 331: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 291: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 341: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 288: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 337: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 315: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 342: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 359: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 380: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 298: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 316: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 290: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 353: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 360: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 338: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 372: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 293: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 289: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 294: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 314: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 368: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 287: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 356: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 283: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 278: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 279: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 282: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 285: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 286: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 295: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 296: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 280: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 281: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 284: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 292: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 311: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 333: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 344: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 355: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 318: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 319: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 382: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 302: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 320: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 323: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 329: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 336: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 343: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 374: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 352: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 334: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 383: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 384: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 385: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 386: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 506: 
{
switch(l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 508: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 507: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 1: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 2: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 3: 
{
switch(l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 4: 
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 5: 
{
switch(l)
{
case 1: return 350; break;
default: return -1;
}
};break;

case 6: 
{
switch(l)
{
case 1: return 1080; break;
default: return -1;
}
};break;

case 7: 
{
switch(l)
{
case 1: return 570; break;
default: return -1;
}
};break;

case 8: 
{
switch(l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 9: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 10: 
{
switch(l)
{
case 1: return 3953; break;
default: return -1;
}
};break;

case 11: 
{
switch(l)
{
case 1: return 1600; break;
default: return -1;
}
};break;

case 12: 
{
switch(l)
{
case 1: return 5435; break;
default: return -1;
}
};break;

case 13: 
{
switch(l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 14: 
{
switch(l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 15: 
{
switch(l)
{
case 1: return 9500; break;
default: return -1;
}
};break;

case 16: 
{
switch(l)
{
case 1: return 12277; break;
default: return -1;
}
};break;

case 59: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 62: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9000: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9003: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 17: 
{
switch(l)
{
case 1: return 45; break;
default: return -1;
}
};break;

case 18: 
{
switch(l)
{
case 1: return 9; break;
default: return -1;
}
};break;

case 19: 
{
switch(l)
{
case 1: return 18; break;
default: return -1;
}
};break;

case 20: 
{
switch(l)
{
case 1: return 75; break;
default: return -1;
}
};break;

case 21: 
{
switch(l)
{
case 1: return 105; break;
default: return -1;
}
};break;

case 22: 
{
switch(l)
{
case 1: return 324; break;
default: return -1;
}
};break;

case 23: 
{
switch(l)
{
case 1: return 171; break;
default: return -1;
}
};break;

case 24: 
{
switch(l)
{
case 1: return 540; break;
default: return -1;
}
};break;

case 25: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 26: 
{
switch(l)
{
case 1: return 988.25; break;
default: return -1;
}
};break;

case 27: 
{
switch(l)
{
case 1: return 480; break;
default: return -1;
}
};break;

case 28: 
{
switch(l)
{
case 1: return 1358.75; break;
default: return -1;
}
};break;

case 29: 
{
switch(l)
{
case 1: return 135; break;
default: return -1;
}
};break;

case 30: 
{
switch(l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 31: 
{
switch(l)
{
case 1: return 2375; break;
default: return -1;
}
};break;

case 32: 
{
switch(l)
{
case 1: return 3069.25; break;
default: return -1;
}
};break;

case 60: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 63: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9001: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9004: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 37: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 38: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 39: 
{
switch(l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 40: 
{
switch(l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 41: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 42: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 43: 
{
switch(l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 44: 
{
switch(l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 45: 
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 46: 
{
switch(l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 47: 
{
switch(l)
{
case 1: return 2100; break;
default: return -1;
}
};break;

case 48: 
{
switch(l)
{
case 1: return 7000; break;
default: return -1;
}
};break;

case 49: 
{
switch(l)
{
case 1: return 170; break;
default: return -1;
}
};break;

case 50: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 51: 
{
switch(l)
{
case 1: return 700; break;
default: return -1;
}
};break;

case 52: 
{
switch(l)
{
case 1: return 2300; break;
default: return -1;
}
};break;

case 91: 
{
switch(l)
{
case 1: return 135; break;
default: return -1;
}
};break;

case 92: 
{
switch(l)
{
case 1: return 540; break;
default: return -1;
}
};break;

case 94: 
{
switch(l)
{
case 1: return 480; break;
default: return -1;
}
};break;

case 93: 
{
switch(l)
{
case 1: return 3683.1; break;
default: return -1;
}
};break;

case 95: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 96: 
{
switch(l)
{
case 1: return 171; break;
default: return -1;
}
};break;

case 97: 
{
switch(l)
{
case 1: return 1630.5; break;
default: return -1;
}
};break;

case 98: 
{
switch(l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 1050: 
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 1052: 
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 1054: 
{
switch(l)
{
case 1: return 3000; break;
default: return -1;
}
};break;

case 1053: 
{
switch(l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 1055: 
{
switch(l)
{
case 1: return 10000; break;
default: return -1;
}
};break;

case 1056: 
{
switch(l)
{
case 1: return 15000; break;
default: return -1;
}
};break;

case 1057: 
{
switch(l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 1058: 
{
switch(l)
{
case 1: return 100; break;
case 2: return 150; break;
case 3: return 300; break;
case 4: return 726; break;
case 5: return 838; break;
case 6: return 948; break;
case 7: return 1056; break;
case 8: return 1160; break;
case 9: return 1262; break;
case 10: return 1362; break;
case 11: return 1460; break;
case 12: return 1556; break;
case 13: return 1652; break;
case 14: return 1746; break;
case 15: return 1838; break;
case 16: return 1928; break;
case 17: return 2020; break;
case 18: return 2108; break;
case 19: return 2198; break;
case 20: return 2400; break;
default: return -1;
}
};break;

case 1059: 
{
switch(l)
{
case 1: return 261; break;
case 2: return 150; break;
case 3: return 300; break;
case 4: return 544; break;
case 5: return 629; break;
case 6: return 711; break;
case 7: return 792; break;
case 8: return 870; break;
case 9: return 946; break;
case 10: return 1021; break;
case 11: return 1095; break;
case 12: return 1167; break;
case 13: return 1239; break;
case 14: return 1310; break;
case 15: return 1378; break;
case 16: return 1446; break;
case 17: return 1515; break;
case 18: return 1581; break;
case 19: return 1648; break;
case 20: return 1800; break;
default: return -1;
}
};break;

case 1060: 
{
switch(l)
{
case 1: return 313; break;
case 2: return 434; break;
case 3: return 545; break;
case 4: return 653; break;
case 5: return 754; break;
case 6: return 853; break;
case 7: return 950; break;
case 8: return 1044; break;
case 9: return 1136; break;
case 10: return 1226; break;
case 11: return 1314; break;
case 12: return 1400; break;
case 13: return 1487; break;
case 14: return 1571; break;
case 15: return 1654; break;
case 16: return 1735; break;
case 17: return 1818; break;
case 18: return 1897; break;
case 19: return 1978; break;
case 20: return 2160; break;
default: return -1;
}
};break;

case 1061: 
{
switch(l)
{
case 1: return 861; break;
case 2: return 1193; break;
case 3: return 1500; break;
case 4: return 1797; break;
case 5: return 2074; break;
case 6: return 2346; break;
case 7: return 2614; break;
case 8: return 2871; break;
case 9: return 3123; break;
case 10: return 3371; break;
case 11: return 3614; break;
case 12: return 3851; break;
case 13: return 4089; break;
case 14: return 4321; break;
case 15: return 4549; break;
case 16: return 4772; break;
case 17: return 5000; break;
case 18: return 5217; break;
case 19: return 5440; break;
case 20: return 5940; break;
default: return -1;
}
};break;

case 1062: 
{
switch(l)
{
case 1: return 1305; break;
case 2: return 1808; break;
case 3: return 2272; break;
case 4: return 2722; break;
case 5: return 3143; break;
case 6: return 3555; break;
case 7: return 3960; break;
case 8: return 4350; break;
case 9: return 4732; break;
case 10: return 5108; break;
case 11: return 5475; break;
case 12: return 5835; break;
case 13: return 6195; break;
case 14: return 6548; break;
case 15: return 6892; break;
case 16: return 7230; break;
case 17: return 7575; break;
case 18: return 7905; break;
case 19: return 8242; break;
case 20: return 9000; break;
default: return -1;
}
};break;

case 1078: 
{
switch(l)
{
case 1: return 2088; break;
case 2: return 2892; break;
case 3: return 3636; break;
case 4: return 4356; break;
case 5: return 5028; break;
case 6: return 5688; break;
case 7: return 6336; break;
case 8: return 6960; break;
case 9: return 7572; break;
case 10: return 8172; break;
case 11: return 8760; break;
case 12: return 9336; break;
case 13: return 9912; break;
case 14: return 10476; break;
case 15: return 11028; break;
case 16: return 11568; break;
case 17: return 12120; break;
case 18: return 12648; break;
case 19: return 13188; break;
case 20: return 14400; break;
default: return -1;
}
};break;

case 1063: 
{
switch(l)
{
case 1: return 1566; break;
case 2: return 2169; break;
case 3: return 2727; break;
case 4: return 3267; break;
case 5: return 3771; break;
case 6: return 4266; break;
case 7: return 4752; break;
case 8: return 5220; break;
case 9: return 5679; break;
case 10: return 6129; break;
case 11: return 6570; break;
case 12: return 7002; break;
case 13: return 7434; break;
case 14: return 7857; break;
case 15: return 8271; break;
case 16: return 8676; break;
case 17: return 9090; break;
case 18: return 9486; break;
case 19: return 9891; break;
case 20: return 10800; break;
default: return -1;
}
};break;

case 1079: 
{
switch(l)
{
case 1: return 2871; break;
case 2: return 3977; break;
case 3: return 5000; break;
case 4: return 5990; break;
case 5: return 6914; break;
case 6: return 7821; break;
case 7: return 8712; break;
case 8: return 9570; break;
case 9: return 10412; break;
case 10: return 11236; break;
case 11: return 12045; break;
case 12: return 12837; break;
case 13: return 13629; break;
case 14: return 14404; break;
case 15: return 15164; break;
case 16: return 15906; break;
case 17: return 16665; break;
case 18: return 17391; break;
case 19: return 18134; break;
case 20: return 19800; break;
default: return -1;
}
};break;

case 1065: 
{
switch(l)
{
case 1: return 2349; break;
case 2: return 3254; break;
case 3: return 4090; break;
case 4: return 4900; break;
case 5: return 5657; break;
case 6: return 6399; break;
case 7: return 7128; break;
case 8: return 7830; break;
case 9: return 8518; break;
case 10: return 9194; break;
case 11: return 9855; break;
case 12: return 10503; break;
case 13: return 11151; break;
case 14: return 11786; break;
case 15: return 12406; break;
case 16: return 13014; break;
case 17: return 13635; break;
case 18: return 14229; break;
case 19: return 14836; break;
case 20: return 16200; break;
default: return -1;
}
};break;

case 1068: 
{
switch(l)
{
case 1: return 6525; break;
case 2: return 9038; break;
case 3: return 11362; break;
case 4: return 13612; break;
case 5: return 15713; break;
case 6: return 17775; break;
case 7: return 19800; break;
case 8: return 21750; break;
case 9: return 23662; break;
case 10: return 25538; break;
case 11: return 27375; break;
case 12: return 29175; break;
case 13: return 30975; break;
case 14: return 32738; break;
case 15: return 34462; break;
case 16: return 36150; break;
case 17: return 37875; break;
case 18: return 39525; break;
case 19: return 41212; break;
case 20: return 45000; break;
default: return -1;
}
};break;

case 1066: 
{
switch(l)
{
case 1: return 2610; break;
case 2: return 3615; break;
case 3: return 4545; break;
case 4: return 5445; break;
case 5: return 6285; break;
case 6: return 7110; break;
case 7: return 7920; break;
case 8: return 8700; break;
case 9: return 9465; break;
case 10: return 10215; break;
case 11: return 10950; break;
case 12: return 11670; break;
case 13: return 12390; break;
case 14: return 13095; break;
case 15: return 13785; break;
case 16: return 14460; break;
case 17: return 15150; break;
case 18: return 15810; break;
case 19: return 16485; break;
case 20: return 18000; break;
default: return -1;
}
};break;

case 1069: 
{
switch(l)
{
case 1: return 9135; break;
case 2: return 12652; break;
case 3: return 15907; break;
case 4: return 19058; break;
case 5: return 21998; break;
case 6: return 24885; break;
case 7: return 27720; break;
case 8: return 30450; break;
case 9: return 33128; break;
case 10: return 35752; break;
case 11: return 38325; break;
case 12: return 40845; break;
case 13: return 43365; break;
case 14: return 45832; break;
case 15: return 48248; break;
case 16: return 50610; break;
case 17: return 53025; break;
case 18: return 55335; break;
case 19: return 57698; break;
case 20: return 63000; break;
default: return -1;
}
};break;

case 1072: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 1073: 
{
switch(l)
{
case 1: return 2000; break;
default: return -1;
}
};break;

case 1074: 
{
switch(l)
{
case 1: return 10000; break;
default: return -1;
}
};break;

case 1075: 
{
switch(l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 1076: 
{
switch(l)
{
case 1: return 200; break;
case 2: return 200; break;
case 3: return 300; break;
case 4: return 2178; break;
case 5: return 2514; break;
case 6: return 2844; break;
case 7: return 3168; break;
case 8: return 3480; break;
case 9: return 3786; break;
case 10: return 4086; break;
case 11: return 4380; break;
case 12: return 4668; break;
case 13: return 4956; break;
case 14: return 5238; break;
case 15: return 5514; break;
case 16: return 5784; break;
case 17: return 6060; break;
case 18: return 6324; break;
case 19: return 6594; break;
case 20: return 7200; break;
default: return -1;
}
};break;

case 1070: 
{
switch(l)
{
case 1: return 3393; break;
case 2: return 4700; break;
case 3: return 5908; break;
case 4: return 7078; break;
case 5: return 8171; break;
case 6: return 9243; break;
case 7: return 10296; break;
case 8: return 11310; break;
case 9: return 12304; break;
case 10: return 13280; break;
case 11: return 14235; break;
case 12: return 15171; break;
case 13: return 16107; break;
case 14: return 17024; break;
case 15: return 17920; break;
case 16: return 18798; break;
case 17: return 19695; break;
case 18: return 20553; break;
case 19: return 21430; break;
case 20: return 23400; break;
default: return -1;
}
};break;

case 1071: 
{
switch(l)
{
case 1: return 15660; break;
case 2: return 21690; break;
case 3: return 27270; break;
case 4: return 32670; break;
case 5: return 37710; break;
case 6: return 42660; break;
case 7: return 47520; break;
case 8: return 52200; break;
case 9: return 56790; break;
case 10: return 61290; break;
case 11: return 65700; break;
case 12: return 70020; break;
case 13: return 74340; break;
case 14: return 78570; break;
case 15: return 82710; break;
case 16: return 86760; break;
case 17: return 90900; break;
case 18: return 94860; break;
case 19: return 98910; break;
case 20: return 108000; break;
default: return -1;
}
};break;

case 1080: 
{
switch(l)
{
case 1: return 19575; break;
case 2: return 27112; break;
case 3: return 34088; break;
case 4: return 40838; break;
case 5: return 47138; break;
case 6: return 53325; break;
case 7: return 59400; break;
case 8: return 65250; break;
case 9: return 70988; break;
case 10: return 76612; break;
case 11: return 82125; break;
case 12: return 87525; break;
case 13: return 92925; break;
case 14: return 98212; break;
case 15: return 103388; break;
case 16: return 108450; break;
case 17: return 113625; break;
case 18: return 118575; break;
case 19: return 123638; break;
case 20: return 123638; break;
default: return -1;
}
};break;

case 1081: 
{
switch(l)
{
case 1: return 1305; break;
case 2: return 1808; break;
case 3: return 2272; break;
case 4: return 2722; break;
case 5: return 3143; break;
case 6: return 3555; break;
case 7: return 3960; break;
case 8: return 4350; break;
case 9: return 4732; break;
case 10: return 5108; break;
case 11: return 5475; break;
case 12: return 5835; break;
case 13: return 6195; break;
case 14: return 6548; break;
case 15: return 6892; break;
case 16: return 7230; break;
case 17: return 7575; break;
case 18: return 7905; break;
case 19: return 8242; break;
case 20: return 9000; break;
default: return -1;
}
};break;

case 1082: 
{
switch(l)
{
case 1: return 1305; break;
case 2: return 1808; break;
case 3: return 2272; break;
case 4: return 2722; break;
case 5: return 3143; break;
case 6: return 3555; break;
case 7: return 3960; break;
case 8: return 4350; break;
case 9: return 4732; break;
case 10: return 5108; break;
case 11: return 5475; break;
case 12: return 5835; break;
case 13: return 6195; break;
case 14: return 6548; break;
case 15: return 6892; break;
case 16: return 7230; break;
case 17: return 7575; break;
case 18: return 7905; break;
case 19: return 8242; break;
case 20: return 9000; break;
default: return -1;
}
};break;

case 1083: 
{
switch(l)
{
case 1: return 1566; break;
case 2: return 2169; break;
case 3: return 2727; break;
case 4: return 3267; break;
case 5: return 3771; break;
case 6: return 4266; break;
case 7: return 4752; break;
case 8: return 5220; break;
case 9: return 5679; break;
case 10: return 6129; break;
case 11: return 6570; break;
case 12: return 7002; break;
case 13: return 7434; break;
case 14: return 7857; break;
case 15: return 8271; break;
case 16: return 8676; break;
case 17: return 9090; break;
case 18: return 9486; break;
case 19: return 9891; break;
case 20: return 10800; break;
default: return -1;
}
};break;

case 1084: 
{
switch(l)
{
case 1: return 1827; break;
case 2: return 2530; break;
case 3: return 3182; break;
case 4: return 3812; break;
case 5: return 4400; break;
case 6: return 4977; break;
case 7: return 5544; break;
case 8: return 6090; break;
case 9: return 6626; break;
case 10: return 7150; break;
case 11: return 7665; break;
case 12: return 8169; break;
case 13: return 8673; break;
case 14: return 9166; break;
case 15: return 9650; break;
case 16: return 10122; break;
case 17: return 10605; break;
case 18: return 11067; break;
case 19: return 11540; break;
case 20: return 12600; break;
default: return -1;
}
};break;

case 1085: 
{
switch(l)
{
case 1: return 1305; break;
case 2: return 1808; break;
case 3: return 2272; break;
case 4: return 2722; break;
case 5: return 3143; break;
case 6: return 3555; break;
case 7: return 3960; break;
case 8: return 4350; break;
case 9: return 4732; break;
case 10: return 5108; break;
case 11: return 5475; break;
case 12: return 5835; break;
case 13: return 6195; break;
case 14: return 6548; break;
case 15: return 6892; break;
case 16: return 7230; break;
case 17: return 7575; break;
case 18: return 7905; break;
case 19: return 8242; break;
case 20: return 9000; break;
default: return -1;
}
};break;

case 1086: 
{
switch(l)
{
case 1: return 1305; break;
case 2: return 1808; break;
case 3: return 2272; break;
case 4: return 2722; break;
case 5: return 3143; break;
case 6: return 3555; break;
case 7: return 3960; break;
case 8: return 4350; break;
case 9: return 4732; break;
case 10: return 5108; break;
case 11: return 5475; break;
case 12: return 5835; break;
case 13: return 6195; break;
case 14: return 6548; break;
case 15: return 6892; break;
case 16: return 7230; break;
case 17: return 7575; break;
case 18: return 7905; break;
case 19: return 8242; break;
case 20: return 9000; break;
default: return -1;
}
};break;

case 1087: 
{
switch(l)
{
case 1: return 1566; break;
case 2: return 2169; break;
case 3: return 2727; break;
case 4: return 3267; break;
case 5: return 3771; break;
case 6: return 4266; break;
case 7: return 4752; break;
case 8: return 5220; break;
case 9: return 5679; break;
case 10: return 6129; break;
case 11: return 6570; break;
case 12: return 7002; break;
case 13: return 7434; break;
case 14: return 7857; break;
case 15: return 8271; break;
case 16: return 8676; break;
case 17: return 9090; break;
case 18: return 9486; break;
case 19: return 9891; break;
case 20: return 10800; break;
default: return -1;
}
};break;

case 1088: 
{
switch(l)
{
case 1: return 1827; break;
case 2: return 2530; break;
case 3: return 3182; break;
case 4: return 3812; break;
case 5: return 4400; break;
case 6: return 4977; break;
case 7: return 5544; break;
case 8: return 6090; break;
case 9: return 6626; break;
case 10: return 7150; break;
case 11: return 7665; break;
case 12: return 8169; break;
case 13: return 8673; break;
case 14: return 9166; break;
case 15: return 9650; break;
case 16: return 10122; break;
case 17: return 10605; break;
case 18: return 11067; break;
case 19: return 11540; break;
case 20: return 12600; break;
default: return -1;
}
};break;

case 1090: 
{
switch(l)
{
case 1: return 1566; break;
case 2: return 2169; break;
case 3: return 2727; break;
case 4: return 3267; break;
case 5: return 3771; break;
case 6: return 4266; break;
case 7: return 4752; break;
case 8: return 5220; break;
case 9: return 5679; break;
case 10: return 6129; break;
case 11: return 6570; break;
case 12: return 7002; break;
case 13: return 7434; break;
case 14: return 7857; break;
case 15: return 8271; break;
case 16: return 8676; break;
case 17: return 9090; break;
case 18: return 9486; break;
case 19: return 9891; break;
case 20: return 10800; break;
default: return -1;
}
};break;

case 1091: 
{
switch(l)
{
case 1: return 19575; break;
case 2: return 27112; break;
case 3: return 34088; break;
case 4: return 40838; break;
case 5: return 47138; break;
case 6: return 53325; break;
case 7: return 59400; break;
case 8: return 65250; break;
case 9: return 70988; break;
case 10: return 76612; break;
case 11: return 82125; break;
case 12: return 87525; break;
case 13: return 92925; break;
case 14: return 98212; break;
case 15: return 103388; break;
case 16: return 108450; break;
case 17: return 113625; break;
case 18: return 118575; break;
case 19: return 123638; break;
case 20: return 123638; break;
default: return -1;
}
};break;

case 1092: 
{
switch(l)
{
case 1: return 1566; break;
case 2: return 2169; break;
case 3: return 2727; break;
case 4: return 3267; break;
case 5: return 3771; break;
case 6: return 4266; break;
case 7: return 4752; break;
case 8: return 5220; break;
case 9: return 5679; break;
case 10: return 6129; break;
case 11: return 6570; break;
case 12: return 7002; break;
case 13: return 7434; break;
case 14: return 7857; break;
case 15: return 8271; break;
case 16: return 8676; break;
case 17: return 9090; break;
case 18: return 9486; break;
case 19: return 9891; break;
case 20: return 10800; break;
default: return -1;
}
};break;

case 1093: 
{
switch(l)
{
case 1: return 13702; break;
case 2: return 18979; break;
case 3: return 23861; break;
case 4: return 28586; break;
case 5: return 32996; break;
case 6: return 37328; break;
case 7: return 41580; break;
case 8: return 45675; break;
case 9: return 49691; break;
case 10: return 53629; break;
case 11: return 57488; break;
case 12: return 61268; break;
case 13: return 65048; break;
case 14: return 68749; break;
case 15: return 72371; break;
case 16: return 75915; break;
case 17: return 79538; break;
case 18: return 83002; break;
case 19: return 86546; break;
case 20: return 94500; break;
default: return -1;
}
};break;

default: return -1;
}
}

double TDdata::GetObjLM(int i,int l)
{
switch(i)
{
case 100: 
{
switch(l)
{
case 1: return 18; break;
case 2: return 23; break;
case 3: return 30; break;
case 4: return 38; break;
case 5: return 48; break;
case 6: return 62; break;
case 7: return 79; break;
case 8: return 101; break;
case 9: return 129; break;
case 10: return 166; break;
case 11: return 213; break;
case 12: return 272; break;
case 13: return 348; break;
case 14: return 446; break;
case 15: return 570; break;
case 16: return 728; break;
case 17: return 935; break;
case 18: return 1196; break;
case 19: return 1531; break;
case 20: return 1960; break;
default: return -1;
}
};break;

case 127: 
{
switch(l)
{
case 1: return 40; break;
case 2: return 51; break;
case 3: return 66; break;
case 4: return 85; break;
case 5: return 108; break;
case 6: return 137; break;
case 7: return 175; break;
case 8: return 225; break;
case 9: return 288; break;
case 10: return 369; break;
case 11: return 472; break;
case 12: return 605; break;
case 13: return 774; break;
case 14: return 991; break;
case 15: return 1268; break;
case 16: return 1618; break;
case 17: return 2077; break;
case 18: return 2658; break;
case 19: return 3403; break;
case 20: return 4355; break;
default: return -1;
}
};break;

case 124: 
{
switch(l)
{
case 1: return 40; break;
case 2: return 51; break;
case 3: return 66; break;
case 4: return 85; break;
case 5: return 108; break;
case 6: return 137; break;
case 7: return 175; break;
case 8: return 225; break;
case 9: return 288; break;
case 10: return 369; break;
case 11: return 472; break;
case 12: return 605; break;
case 13: return 774; break;
case 14: return 991; break;
case 15: return 1268; break;
case 16: return 1618; break;
case 17: return 2077; break;
case 18: return 2658; break;
case 19: return 3403; break;
case 20: return 4355; break;
default: return -1;
}
};break;

case 101: 
{
switch(l)
{
case 1: return 75; break;
case 2: return 95; break;
case 3: return 124; break;
case 4: return 159; break;
case 5: return 202; break;
default: return -1;
}
};break;

case 138: 
{
switch(l)
{
case 1: return 2000; break;
case 2: return 5080; break;
case 3: return 6600; break;
case 4: return 8480; break;
case 5: return 10760; break;
case 6: return 13680; break;
case 7: return 17520; break;
case 8: return 22480; break;
case 9: return 28760; break;
case 10: return 36920; break;
case 11: return 47240; break;
case 12: return 60480; break;
case 13: return 77400; break;
case 14: return 99080; break;
case 15: return 126760; break;
case 16: return 161760; break;
case 17: return 181760; break;
case 18: return 181760; break;
case 19: return 181760; break;
case 20: return 181760; break;
default: return -1;
}
};break;

case 150: 
{
switch(l)
{
case 1: return 50; break;
case 2: return 76; break;
case 3: return 99; break;
case 4: return 127; break;
case 5: return 161; break;
case 6: return 205; break;
case 7: return 263; break;
case 8: return 337; break;
case 9: return 431; break;
case 10: return 554; break;
case 11: return 709; break;
case 12: return 907; break;
case 13: return 1161; break;
case 14: return 1486; break;
case 15: return 1901; break;
case 16: return 2426; break;
case 17: return 3115; break;
case 18: return 3988; break;
case 19: return 5105; break;
case 20: return 6533; break;
default: return -1;
}
};break;

case 144: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 139: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 137: 
{
switch(l)
{
case 1: return 1500; break;
case 2: return 1905; break;
case 3: return 2475; break;
case 4: return 3180; break;
case 5: return 4035; break;
case 6: return 5130; break;
default: return -1;
}
};break;

case 125: 
{
switch(l)
{
case 1: return 500; break;
case 2: return 635; break;
case 3: return 825; break;
case 4: return 1060; break;
case 5: return 1345; break;
case 6: return 1710; break;
case 7: return 2190; break;
case 8: return 2810; break;
case 9: return 3595; break;
case 10: return 4615; break;
case 11: return 5905; break;
case 12: return 7560; break;
case 13: return 9675; break;
case 14: return 12385; break;
case 15: return 15845; break;
case 16: return 20220; break;
case 17: return 25960; break;
case 18: return 33230; break;
case 19: return 42540; break;
case 20: return 54440; break;
default: return -1;
}
};break;

case 126: 
{
switch(l)
{
case 1: return 375; break;
case 2: return 476; break;
case 3: return 619; break;
case 4: return 795; break;
case 5: return 1009; break;
case 6: return 1282; break;
case 7: return 1642; break;
case 8: return 2108; break;
case 9: return 2696; break;
case 10: return 3461; break;
case 11: return 4429; break;
case 12: return 5670; break;
case 13: return 7256; break;
case 14: return 9289; break;
case 15: return 11884; break;
case 16: return 15165; break;
case 17: return 19470; break;
case 18: return 24922; break;
case 19: return 31905; break;
case 20: return 40830; break;
default: return -1;
}
};break;

case 198: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 75; break;
default: return -1;
}
};break;

case 199: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 75; break;
default: return -1;
}
};break;

case 106: 
{
switch(l)
{
case 1: return 50; break;
case 2: return 82; break;
case 3: return 140; break;
case 4: return 233; break;
case 5: return 390; break;
case 6: return 650; break;
case 7: return 1085; break;
case 8: return 1812; break;
case 9: return 3025; break;
case 10: return 5052; break;
case 11: return 8435; break;
case 12: return 14088; break;
case 13: return 23528; break;
case 14: return 39290; break;
case 15: return 65615; break;
case 16: return 109578; break;
case 17: return 182992; break;
case 18: return 194412; break;
case 19: return 194412; break;
case 20: return 194412; break;
default: return -1;
}
};break;

case 104: 
{
switch(l)
{
case 1: return 75; break;
case 2: return 124; break;
case 3: return 210; break;
case 4: return 349; break;
case 5: return 585; break;
case 6: return 975; break;
case 7: return 1628; break;
case 8: return 2719; break;
case 9: return 4538; break;
case 10: return 7579; break;
case 11: return 12652; break;
case 12: return 21131; break;
case 13: return 35291; break;
case 14: return 58935; break;
case 15: return 98422; break;
case 16: return 164366; break;
case 17: return 216664; break;
case 18: return 216664; break;
case 19: return 216664; break;
case 20: return 216664; break;
default: return -1;
}
};break;

case 102: 
{
switch(l)
{
case 1: return 75; break;
case 2: return 124; break;
case 3: return 210; break;
case 4: return 349; break;
case 5: return 585; break;
case 6: return 975; break;
case 7: return 1628; break;
case 8: return 2719; break;
case 9: return 4538; break;
case 10: return 7579; break;
case 11: return 12652; break;
case 12: return 21131; break;
case 13: return 35291; break;
case 14: return 58935; break;
case 15: return 98422; break;
case 16: return 164366; break;
case 17: return 216664; break;
case 18: return 216664; break;
case 19: return 216664; break;
case 20: return 216664; break;
default: return -1;
}
};break;

case 109: 
{
switch(l)
{
case 1: return 30; break;
case 2: return 38; break;
case 3: return 50; break;
case 4: return 64; break;
case 5: return 81; break;
case 6: return 103; break;
case 7: return 131; break;
case 8: return 169; break;
case 9: return 216; break;
case 10: return 277; break;
case 11: return 354; break;
case 12: return 454; break;
case 13: return 580; break;
case 14: return 743; break;
case 15: return 951; break;
case 16: return 1213; break;
case 17: return 1558; break;
case 18: return 1994; break;
case 19: return 2552; break;
case 20: return 3266; break;
default: return -1;
}
};break;

case 108: 
{
switch(l)
{
case 1: return 40; break;
case 2: return 51; break;
case 3: return 66; break;
case 4: return 85; break;
case 5: return 108; break;
case 6: return 137; break;
case 7: return 175; break;
case 8: return 225; break;
case 9: return 288; break;
case 10: return 369; break;
case 11: return 472; break;
case 12: return 605; break;
case 13: return 774; break;
case 14: return 991; break;
case 15: return 1268; break;
case 16: return 1618; break;
case 17: return 2077; break;
case 18: return 2658; break;
case 19: return 3403; break;
case 20: return 4355; break;
default: return -1;
}
};break;

case 103: 
{
switch(l)
{
case 1: return 1900; break;
case 2: return 3800; break;
case 3: return 7600; break;
case 4: return 11400; break;
case 5: return 19000; break;
default: return -1;
}
};break;

case 105: 
{
switch(l)
{
case 1: return 1900; break;
case 2: return 3800; break;
case 3: return 7600; break;
case 4: return 11400; break;
case 5: return 19000; break;
default: return -1;
}
};break;

case 107: 
{
switch(l)
{
case 1: return 12300; break;
case 2: return 24600; break;
case 3: return 49200; break;
case 4: return 73800; break;
case 5: return 123000; break;
default: return -1;
}
};break;

case 110: 
{
switch(l)
{
case 1: return 110; break;
default: return -1;
}
};break;

case 112: 
{
switch(l)
{
case 1: return 120; break;
case 2: return 140; break;
case 3: return 182; break;
case 4: return 233; break;
case 5: return 296; break;
case 6: return 376; break;
case 7: return 482; break;
case 8: return 618; break;
case 9: return 791; break;
case 10: return 1015; break;
case 11: return 1299; break;
case 12: return 1663; break;
case 13: return 2128; break;
case 14: return 2725; break;
case 15: return 3486; break;
case 16: return 4448; break;
case 17: return 5711; break;
case 18: return 7311; break;
case 19: return 9359; break;
case 20: return 11977; break;
default: return -1;
}
};break;

case 600: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 118: 
{
switch(l)
{
case 1: return 170; break;
case 2: return 216; break;
case 3: return 280; break;
case 4: return 360; break;
case 5: return 457; break;
case 6: return 581; break;
case 7: return 745; break;
case 8: return 955; break;
case 9: return 1222; break;
case 10: return 1569; break;
case 11: return 2008; break;
case 12: return 2570; break;
case 13: return 3290; break;
case 14: return 4211; break;
case 15: return 5387; break;
case 16: return 6875; break;
case 17: return 8826; break;
case 18: return 11298; break;
case 19: return 14464; break;
case 20: return 18510; break;
default: return -1;
}
};break;

case 113: 
{
switch(l)
{
case 1: return 265; break;
case 2: return 337; break;
case 3: return 437; break;
case 4: return 562; break;
case 5: return 713; break;
case 6: return 906; break;
case 7: return 1161; break;
case 8: return 1489; break;
case 9: return 1905; break;
case 10: return 2446; break;
case 11: return 3130; break;
case 12: return 4007; break;
case 13: return 5128; break;
case 14: return 6564; break;
case 15: return 8398; break;
case 16: return 10717; break;
case 17: return 13759; break;
case 18: return 17612; break;
case 19: return 22546; break;
case 20: return 28853; break;
default: return -1;
}
};break;

case 114: 
{
switch(l)
{
case 1: return 285; break;
case 2: return 362; break;
case 3: return 470; break;
case 4: return 604; break;
case 5: return 767; break;
case 6: return 975; break;
case 7: return 1248; break;
case 8: return 1602; break;
case 9: return 2049; break;
case 10: return 2631; break;
case 11: return 3366; break;
case 12: return 4309; break;
case 13: return 5515; break;
case 14: return 7059; break;
case 15: return 9032; break;
case 16: return 11525; break;
case 17: return 14797; break;
case 18: return 18941; break;
case 19: return 24248; break;
case 20: return 31031; break;
default: return -1;
}
};break;

case 115: 
{
switch(l)
{
case 1: return 380; break;
case 2: return 483; break;
case 3: return 627; break;
case 4: return 806; break;
case 5: return 1022; break;
case 6: return 1300; break;
case 7: return 1664; break;
case 8: return 2136; break;
case 9: return 2732; break;
case 10: return 3507; break;
case 11: return 4488; break;
case 12: return 5746; break;
case 13: return 7353; break;
case 14: return 9413; break;
case 15: return 12042; break;
case 16: return 15367; break;
case 17: return 19730; break;
case 18: return 25255; break;
case 19: return 32330; break;
case 20: return 41374; break;
default: return -1;
}
};break;

case 116: 
{
switch(l)
{
case 1: return 470; break;
case 2: return 597; break;
case 3: return 776; break;
case 4: return 996; break;
case 5: return 1264; break;
case 6: return 1607; break;
case 7: return 2059; break;
case 8: return 2641; break;
case 9: return 3379; break;
case 10: return 4338; break;
case 11: return 5551; break;
case 12: return 7106; break;
case 13: return 9094; break;
case 14: return 11642; break;
case 15: return 14894; break;
case 16: return 19007; break;
case 17: return 24402; break;
case 18: return 31236; break;
case 19: return 39988; break;
case 20: return 51174; break;
default: return -1;
}
};break;

case 117: 
{
switch(l)
{
case 1: return 600; break;
case 2: return 762; break;
case 3: return 990; break;
case 4: return 1272; break;
case 5: return 1614; break;
case 6: return 2052; break;
case 7: return 2628; break;
case 8: return 3372; break;
case 9: return 4314; break;
case 10: return 5538; break;
case 11: return 7086; break;
case 12: return 9072; break;
case 13: return 11610; break;
case 14: return 14862; break;
case 15: return 19014; break;
case 16: return 24264; break;
case 17: return 31152; break;
case 18: return 39876; break;
case 19: return 51048; break;
case 20: return 65328; break;
default: return -1;
}
};break;

case 119: 
{
switch(l)
{
case 1: return 600; break;
case 2: return 762; break;
case 3: return 990; break;
case 4: return 1272; break;
case 5: return 1614; break;
case 6: return 2052; break;
case 7: return 2628; break;
case 8: return 3372; break;
case 9: return 4314; break;
case 10: return 5538; break;
case 11: return 7086; break;
case 12: return 9072; break;
case 13: return 11610; break;
case 14: return 14862; break;
case 15: return 19014; break;
case 16: return 24264; break;
case 17: return 31152; break;
case 18: return 39876; break;
case 19: return 51048; break;
case 20: return 65328; break;
default: return -1;
}
};break;

case 120: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 148: 
{
switch(l)
{
case 1: return 15000; break;
default: return -1;
}
};break;

case 149: 
{
switch(l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 141: 
{
switch(l)
{
case 1: return 2500; break;
default: return -1;
}
};break;

case 142: 
{
switch(l)
{
case 1: return 2500; break;
default: return -1;
}
};break;

case 200: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 201: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 202: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 122: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 123: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 121: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 203: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 204: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 205: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 131: 
{
switch(l)
{
case 1: return 75; break;
default: return -1;
}
};break;

case 134: 
{
switch(l)
{
case 1: return 75; break;
default: return -1;
}
};break;

case 128: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 206: 
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 207: 
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 208: 
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 132: 
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 135: 
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 129: 
{
switch(l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 209: 
{
switch(l)
{
case 1: return 900; break;
default: return -1;
}
};break;

case 210: 
{
switch(l)
{
case 1: return 900; break;
default: return -1;
}
};break;

case 211: 
{
switch(l)
{
case 1: return 900; break;
default: return -1;
}
};break;

case 133: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 136: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 130: 
{
switch(l)
{
case 1: return 800; break;
default: return -1;
}
};break;

case 744: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 745: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 746: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 747: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 748: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 749: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 500: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 299: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 303: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 304: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 313: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 317: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 324: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 328: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 339: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 306: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 307: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 301: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 310: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 381: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 361: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 297: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 331: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 291: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 341: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 288: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 337: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 315: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 342: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 359: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 380: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 298: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 316: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 290: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 353: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 360: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 338: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 372: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 293: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 289: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 294: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 314: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 368: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 287: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 356: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 283: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 278: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 279: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 282: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 285: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 286: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 295: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 296: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 280: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 281: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 284: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 292: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 311: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 333: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 344: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 355: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 318: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 319: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 382: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 302: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 320: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 323: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 329: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 336: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 343: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 374: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 352: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 334: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 383: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 384: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 385: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 386: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 506: 
{
switch(l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 508: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 507: 
{
switch(l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 1: 
{
switch(l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 2: 
{
switch(l)
{
case 1: return 15; break;
default: return -1;
}
};break;

case 3: 
{
switch(l)
{
case 1: return 42; break;
default: return -1;
}
};break;

case 4: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 5: 
{
switch(l)
{
case 1: return 530; break;
default: return -1;
}
};break;

case 6: 
{
switch(l)
{
case 1: return 436; break;
default: return -1;
}
};break;

case 7: 
{
switch(l)
{
case 1: return 380; break;
default: return -1;
}
};break;

case 8: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 9: 
{
switch(l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 10: 
{
switch(l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 11: 
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 12: 
{
switch(l)
{
case 1: return 3000; break;
default: return -1;
}
};break;

case 13: 
{
switch(l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 14: 
{
switch(l)
{
case 1: return 2300; break;
default: return -1;
}
};break;

case 15: 
{
switch(l)
{
case 1: return 3800; break;
default: return -1;
}
};break;

case 16: 
{
switch(l)
{
case 1: return 7000; break;
default: return -1;
}
};break;

case 59: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 62: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9000: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9003: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 17: 
{
switch(l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 18: 
{
switch(l)
{
case 1: return 15; break;
default: return -1;
}
};break;

case 19: 
{
switch(l)
{
case 1: return 12.6; break;
default: return -1;
}
};break;

case 20: 
{
switch(l)
{
case 1: return 45; break;
default: return -1;
}
};break;

case 21: 
{
switch(l)
{
case 1: return 159; break;
default: return -1;
}
};break;

case 22: 
{
switch(l)
{
case 1: return 130.8; break;
default: return -1;
}
};break;

case 23: 
{
switch(l)
{
case 1: return 114; break;
default: return -1;
}
};break;

case 24: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 25: 
{
switch(l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 26: 
{
switch(l)
{
case 1: return 375; break;
default: return -1;
}
};break;

case 27: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 28: 
{
switch(l)
{
case 1: return 750; break;
default: return -1;
}
};break;

case 29: 
{
switch(l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 30: 
{
switch(l)
{
case 1: return 690; break;
default: return -1;
}
};break;

case 31: 
{
switch(l)
{
case 1: return 950; break;
default: return -1;
}
};break;

case 32: 
{
switch(l)
{
case 1: return 1750; break;
default: return -1;
}
};break;

case 60: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 63: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9001: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9004: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 37: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 38: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 39: 
{
switch(l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 40: 
{
switch(l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 41: 
{
switch(l)
{
case 1: return 70; break;
default: return -1;
}
};break;

case 42: 
{
switch(l)
{
case 1: return 70; break;
default: return -1;
}
};break;

case 43: 
{
switch(l)
{
case 1: return 140; break;
default: return -1;
}
};break;

case 44: 
{
switch(l)
{
case 1: return 140; break;
default: return -1;
}
};break;

case 45: 
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 46: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 47: 
{
switch(l)
{
case 1: return 2100; break;
default: return -1;
}
};break;

case 48: 
{
switch(l)
{
case 1: return 7000; break;
default: return -1;
}
};break;

case 49: 
{
switch(l)
{
case 1: return 170; break;
default: return -1;
}
};break;

case 50: 
{
switch(l)
{
case 1: return 70; break;
default: return -1;
}
};break;

case 51: 
{
switch(l)
{
case 1: return 700; break;
default: return -1;
}
};break;

case 52: 
{
switch(l)
{
case 1: return 2300; break;
default: return -1;
}
};break;

case 91: 
{
switch(l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 92: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 94: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 93: 
{
switch(l)
{
case 1: return 2100; break;
default: return -1;
}
};break;

case 95: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 96: 
{
switch(l)
{
case 1: return 114; break;
default: return -1;
}
};break;

case 97: 
{
switch(l)
{
case 1: return 900; break;
default: return -1;
}
};break;

case 98: 
{
switch(l)
{
case 1: return 690; break;
default: return -1;
}
};break;

case 1050: 
{
switch(l)
{
case 1: return 350; break;
default: return -1;
}
};break;

case 1052: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 1054: 
{
switch(l)
{
case 1: return 6000; break;
default: return -1;
}
};break;

case 1053: 
{
switch(l)
{
case 1: return 10000; break;
default: return -1;
}
};break;

case 1055: 
{
switch(l)
{
case 1: return 12000; break;
default: return -1;
}
};break;

case 1056: 
{
switch(l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 1057: 
{
switch(l)
{
case 1: return 30000; break;
default: return -1;
}
};break;

case 1058: 
{
switch(l)
{
case 1: return 300; break;
case 2: return 300; break;
case 3: return 300; break;
case 4: return 1089; break;
case 5: return 1257; break;
case 6: return 1422; break;
case 7: return 1584; break;
case 8: return 1740; break;
case 9: return 1893; break;
case 10: return 2043; break;
case 11: return 2190; break;
case 12: return 2334; break;
case 13: return 2478; break;
case 14: return 2619; break;
case 15: return 2757; break;
case 16: return 2892; break;
case 17: return 3030; break;
case 18: return 3162; break;
case 19: return 3297; break;
case 20: return 3600; break;
default: return -1;
}
};break;

case 1059: 
{
switch(l)
{
case 1: return 435; break;
case 2: return 250; break;
case 3: return 250; break;
case 4: return 908; break;
case 5: return 1048; break;
case 6: return 1185; break;
case 7: return 1320; break;
case 8: return 1450; break;
case 9: return 1578; break;
case 10: return 1702; break;
case 11: return 1825; break;
case 12: return 1945; break;
case 13: return 2065; break;
case 14: return 2182; break;
case 15: return 2298; break;
case 16: return 2410; break;
case 17: return 2525; break;
case 18: return 2635; break;
case 19: return 2748; break;
case 20: return 3000; break;
default: return -1;
}
};break;

case 1060: 
{
switch(l)
{
case 1: return 522; break;
case 2: return 723; break;
case 3: return 909; break;
case 4: return 1089; break;
case 5: return 1257; break;
case 6: return 1422; break;
case 7: return 1584; break;
case 8: return 1740; break;
case 9: return 1893; break;
case 10: return 2043; break;
case 11: return 2190; break;
case 12: return 2334; break;
case 13: return 2478; break;
case 14: return 2619; break;
case 15: return 2757; break;
case 16: return 2892; break;
case 17: return 3030; break;
case 18: return 3162; break;
case 19: return 3297; break;
case 20: return 3600; break;
default: return -1;
}
};break;

case 1061: 
{
switch(l)
{
case 1: return 1436; break;
case 2: return 1988; break;
case 3: return 2500; break;
case 4: return 2995; break;
case 5: return 3457; break;
case 6: return 3910; break;
case 7: return 4356; break;
case 8: return 4785; break;
case 9: return 5206; break;
case 10: return 5618; break;
case 11: return 6022; break;
case 12: return 6418; break;
case 13: return 6814; break;
case 14: return 7202; break;
case 15: return 7582; break;
case 16: return 7953; break;
case 17: return 8332; break;
case 18: return 8696; break;
case 19: return 9067; break;
case 20: return 9900; break;
default: return -1;
}
};break;

case 1062: 
{
switch(l)
{
case 1: return 2175; break;
case 2: return 3012; break;
case 3: return 3787; break;
case 4: return 4538; break;
case 5: return 5238; break;
case 6: return 5925; break;
case 7: return 6600; break;
case 8: return 7250; break;
case 9: return 7887; break;
case 10: return 8512; break;
case 11: return 9125; break;
case 12: return 9725; break;
case 13: return 10325; break;
case 14: return 10912; break;
case 15: return 11488; break;
case 16: return 12050; break;
case 17: return 12625; break;
case 18: return 13175; break;
case 19: return 13738; break;
case 20: return 15000; break;
default: return -1;
}
};break;

case 1078: 
{
switch(l)
{
case 1: return 3480; break;
case 2: return 4820; break;
case 3: return 6060; break;
case 4: return 7260; break;
case 5: return 8380; break;
case 6: return 9480; break;
case 7: return 10560; break;
case 8: return 11600; break;
case 9: return 12620; break;
case 10: return 13620; break;
case 11: return 14600; break;
case 12: return 15560; break;
case 13: return 16520; break;
case 14: return 17460; break;
case 15: return 18380; break;
case 16: return 19280; break;
case 17: return 20200; break;
case 18: return 21080; break;
case 19: return 21980; break;
case 20: return 24000; break;
default: return -1;
}
};break;

case 1063: 
{
switch(l)
{
case 1: return 2610; break;
case 2: return 3615; break;
case 3: return 4545; break;
case 4: return 5445; break;
case 5: return 6285; break;
case 6: return 7110; break;
case 7: return 7920; break;
case 8: return 8700; break;
case 9: return 9465; break;
case 10: return 10215; break;
case 11: return 10950; break;
case 12: return 11670; break;
case 13: return 12390; break;
case 14: return 13095; break;
case 15: return 13785; break;
case 16: return 14460; break;
case 17: return 15150; break;
case 18: return 15810; break;
case 19: return 16485; break;
case 20: return 18000; break;
default: return -1;
}
};break;

case 1079: 
{
switch(l)
{
case 1: return 4785; break;
case 2: return 6628; break;
case 3: return 8332; break;
case 4: return 9982; break;
case 5: return 11523; break;
case 6: return 13035; break;
case 7: return 14520; break;
case 8: return 15950; break;
case 9: return 17352; break;
case 10: return 18728; break;
case 11: return 20075; break;
case 12: return 21395; break;
case 13: return 22715; break;
case 14: return 24008; break;
case 15: return 25272; break;
case 16: return 26510; break;
case 17: return 27775; break;
case 18: return 28985; break;
case 19: return 30222; break;
case 20: return 33000; break;
default: return -1;
}
};break;

case 1065: 
{
switch(l)
{
case 1: return 3915; break;
case 2: return 5422; break;
case 3: return 6818; break;
case 4: return 8168; break;
case 5: return 9428; break;
case 6: return 10665; break;
case 7: return 11880; break;
case 8: return 13050; break;
case 9: return 14198; break;
case 10: return 15322; break;
case 11: return 16425; break;
case 12: return 17505; break;
case 13: return 18585; break;
case 14: return 19642; break;
case 15: return 20678; break;
case 16: return 21690; break;
case 17: return 22725; break;
case 18: return 23715; break;
case 19: return 24728; break;
case 20: return 27000; break;
default: return -1;
}
};break;

case 1068: 
{
switch(l)
{
case 1: return 10875; break;
case 2: return 15062; break;
case 3: return 18938; break;
case 4: return 22688; break;
case 5: return 26188; break;
case 6: return 29625; break;
case 7: return 33000; break;
case 8: return 36250; break;
case 9: return 39438; break;
case 10: return 42562; break;
case 11: return 45625; break;
case 12: return 48625; break;
case 13: return 51625; break;
case 14: return 54562; break;
case 15: return 57438; break;
case 16: return 60250; break;
case 17: return 63125; break;
case 18: return 65875; break;
case 19: return 68688; break;
case 20: return 75000; break;
default: return -1;
}
};break;

case 1066: 
{
switch(l)
{
case 1: return 4350; break;
case 2: return 6025; break;
case 3: return 7575; break;
case 4: return 9075; break;
case 5: return 10475; break;
case 6: return 11850; break;
case 7: return 13200; break;
case 8: return 14500; break;
case 9: return 15775; break;
case 10: return 17025; break;
case 11: return 18250; break;
case 12: return 19450; break;
case 13: return 20650; break;
case 14: return 21825; break;
case 15: return 22975; break;
case 16: return 24100; break;
case 17: return 25250; break;
case 18: return 26350; break;
case 19: return 27475; break;
case 20: return 30000; break;
default: return -1;
}
};break;

case 1069: 
{
switch(l)
{
case 1: return 15225; break;
case 2: return 21088; break;
case 3: return 26512; break;
case 4: return 31762; break;
case 5: return 36662; break;
case 6: return 41475; break;
case 7: return 46200; break;
case 8: return 50750; break;
case 9: return 55212; break;
case 10: return 59588; break;
case 11: return 63875; break;
case 12: return 68075; break;
case 13: return 72275; break;
case 14: return 76388; break;
case 15: return 80412; break;
case 16: return 84350; break;
case 17: return 88375; break;
case 18: return 92225; break;
case 19: return 96162; break;
case 20: return 105000; break;
default: return -1;
}
};break;

case 1072: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 1073: 
{
switch(l)
{
case 1: return 4000; break;
default: return -1;
}
};break;

case 1074: 
{
switch(l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 1075: 
{
switch(l)
{
case 1: return 30000; break;
default: return -1;
}
};break;

case 1076: 
{
switch(l)
{
case 1: return 300; break;
case 2: return 300; break;
case 3: return 300; break;
case 4: return 3630; break;
case 5: return 4190; break;
case 6: return 4740; break;
case 7: return 5280; break;
case 8: return 5800; break;
case 9: return 6310; break;
case 10: return 6810; break;
case 11: return 7300; break;
case 12: return 7780; break;
case 13: return 8260; break;
case 14: return 8730; break;
case 15: return 9190; break;
case 16: return 9640; break;
case 17: return 10100; break;
case 18: return 10540; break;
case 19: return 10990; break;
case 20: return 12000; break;
default: return -1;
}
};break;

case 1070: 
{
switch(l)
{
case 1: return 5655; break;
case 2: return 7833; break;
case 3: return 9848; break;
case 4: return 11798; break;
case 5: return 13618; break;
case 6: return 15405; break;
case 7: return 17160; break;
case 8: return 18850; break;
case 9: return 20508; break;
case 10: return 22132; break;
case 11: return 23725; break;
case 12: return 25285; break;
case 13: return 26845; break;
case 14: return 28372; break;
case 15: return 29868; break;
case 16: return 31330; break;
case 17: return 32825; break;
case 18: return 34255; break;
case 19: return 35718; break;
case 20: return 39000; break;
default: return -1;
}
};break;

case 1071: 
{
switch(l)
{
case 1: return 26100; break;
case 2: return 36150; break;
case 3: return 45450; break;
case 4: return 54450; break;
case 5: return 62850; break;
case 6: return 71100; break;
case 7: return 79200; break;
case 8: return 87000; break;
case 9: return 94650; break;
case 10: return 102150; break;
case 11: return 109500; break;
case 12: return 116700; break;
case 13: return 123900; break;
case 14: return 130950; break;
case 15: return 137850; break;
case 16: return 144600; break;
case 17: return 151500; break;
case 18: return 158100; break;
case 19: return 164850; break;
case 20: return 180000; break;
default: return -1;
}
};break;

case 1080: 
{
switch(l)
{
case 1: return 32625; break;
case 2: return 45188; break;
case 3: return 56812; break;
case 4: return 68062; break;
case 5: return 78563; break;
case 6: return 88875; break;
case 7: return 99000; break;
case 8: return 108750; break;
case 9: return 118312; break;
case 10: return 127687; break;
case 11: return 136875; break;
case 12: return 145875; break;
case 13: return 154875; break;
case 14: return 163688; break;
case 15: return 172312; break;
case 16: return 180750; break;
case 17: return 189375; break;
case 18: return 197625; break;
case 19: return 206062; break;
case 20: return 206062; break;
default: return -1;
}
};break;

case 1081: 
{
switch(l)
{
case 1: return 2175; break;
case 2: return 3012; break;
case 3: return 3787; break;
case 4: return 4538; break;
case 5: return 5238; break;
case 6: return 5925; break;
case 7: return 6600; break;
case 8: return 7250; break;
case 9: return 7887; break;
case 10: return 8512; break;
case 11: return 9125; break;
case 12: return 9725; break;
case 13: return 10325; break;
case 14: return 10912; break;
case 15: return 11488; break;
case 16: return 12050; break;
case 17: return 12625; break;
case 18: return 13175; break;
case 19: return 13738; break;
case 20: return 15000; break;
default: return -1;
}
};break;

case 1082: 
{
switch(l)
{
case 1: return 2175; break;
case 2: return 3012; break;
case 3: return 3787; break;
case 4: return 4538; break;
case 5: return 5238; break;
case 6: return 5925; break;
case 7: return 6600; break;
case 8: return 7250; break;
case 9: return 7887; break;
case 10: return 8512; break;
case 11: return 9125; break;
case 12: return 9725; break;
case 13: return 10325; break;
case 14: return 10912; break;
case 15: return 11488; break;
case 16: return 12050; break;
case 17: return 12625; break;
case 18: return 13175; break;
case 19: return 13738; break;
case 20: return 15000; break;
default: return -1;
}
};break;

case 1083: 
{
switch(l)
{
case 1: return 2610; break;
case 2: return 3615; break;
case 3: return 4545; break;
case 4: return 5445; break;
case 5: return 6285; break;
case 6: return 7110; break;
case 7: return 7920; break;
case 8: return 8700; break;
case 9: return 9465; break;
case 10: return 10215; break;
case 11: return 10950; break;
case 12: return 11670; break;
case 13: return 12390; break;
case 14: return 13095; break;
case 15: return 13785; break;
case 16: return 14460; break;
case 17: return 15150; break;
case 18: return 15810; break;
case 19: return 16485; break;
case 20: return 18000; break;
default: return -1;
}
};break;

case 1084: 
{
switch(l)
{
case 1: return 3045; break;
case 2: return 4218; break;
case 3: return 5302; break;
case 4: return 6352; break;
case 5: return 7333; break;
case 6: return 8295; break;
case 7: return 9240; break;
case 8: return 10150; break;
case 9: return 11042; break;
case 10: return 11918; break;
case 11: return 12775; break;
case 12: return 13615; break;
case 13: return 14455; break;
case 14: return 15278; break;
case 15: return 16082; break;
case 16: return 16870; break;
case 17: return 17675; break;
case 18: return 18445; break;
case 19: return 19232; break;
case 20: return 21000; break;
default: return -1;
}
};break;

case 1085: 
{
switch(l)
{
case 1: return 2175; break;
case 2: return 3012; break;
case 3: return 3787; break;
case 4: return 4538; break;
case 5: return 5238; break;
case 6: return 5925; break;
case 7: return 6600; break;
case 8: return 7250; break;
case 9: return 7887; break;
case 10: return 8512; break;
case 11: return 9125; break;
case 12: return 9725; break;
case 13: return 10325; break;
case 14: return 10912; break;
case 15: return 11488; break;
case 16: return 12050; break;
case 17: return 12625; break;
case 18: return 13175; break;
case 19: return 13738; break;
case 20: return 15000; break;
default: return -1;
}
};break;

case 1086: 
{
switch(l)
{
case 1: return 2175; break;
case 2: return 3012; break;
case 3: return 3787; break;
case 4: return 4538; break;
case 5: return 5238; break;
case 6: return 5925; break;
case 7: return 6600; break;
case 8: return 7250; break;
case 9: return 7887; break;
case 10: return 8512; break;
case 11: return 9125; break;
case 12: return 9725; break;
case 13: return 10325; break;
case 14: return 10912; break;
case 15: return 11488; break;
case 16: return 12050; break;
case 17: return 12625; break;
case 18: return 13175; break;
case 19: return 13738; break;
case 20: return 15000; break;
default: return -1;
}
};break;

case 1087: 
{
switch(l)
{
case 1: return 2610; break;
case 2: return 3615; break;
case 3: return 4545; break;
case 4: return 5445; break;
case 5: return 6285; break;
case 6: return 7110; break;
case 7: return 7920; break;
case 8: return 8700; break;
case 9: return 9465; break;
case 10: return 10215; break;
case 11: return 10950; break;
case 12: return 11670; break;
case 13: return 12390; break;
case 14: return 13095; break;
case 15: return 13785; break;
case 16: return 14460; break;
case 17: return 15150; break;
case 18: return 15810; break;
case 19: return 16485; break;
case 20: return 18000; break;
default: return -1;
}
};break;

case 1088: 
{
switch(l)
{
case 1: return 3045; break;
case 2: return 4218; break;
case 3: return 5302; break;
case 4: return 6352; break;
case 5: return 7333; break;
case 6: return 8295; break;
case 7: return 9240; break;
case 8: return 10150; break;
case 9: return 11042; break;
case 10: return 11918; break;
case 11: return 12775; break;
case 12: return 13615; break;
case 13: return 14455; break;
case 14: return 15278; break;
case 15: return 16082; break;
case 16: return 16870; break;
case 17: return 17675; break;
case 18: return 18445; break;
case 19: return 19232; break;
case 20: return 21000; break;
default: return -1;
}
};break;

case 1090: 
{
switch(l)
{
case 1: return 2610; break;
case 2: return 3615; break;
case 3: return 4545; break;
case 4: return 5445; break;
case 5: return 6285; break;
case 6: return 7110; break;
case 7: return 7920; break;
case 8: return 8700; break;
case 9: return 9465; break;
case 10: return 10215; break;
case 11: return 10950; break;
case 12: return 11670; break;
case 13: return 12390; break;
case 14: return 13095; break;
case 15: return 13785; break;
case 16: return 14460; break;
case 17: return 15150; break;
case 18: return 15810; break;
case 19: return 16485; break;
case 20: return 18000; break;
default: return -1;
}
};break;

case 1091: 
{
switch(l)
{
case 1: return 32625; break;
case 2: return 45188; break;
case 3: return 56812; break;
case 4: return 68062; break;
case 5: return 78563; break;
case 6: return 88875; break;
case 7: return 99000; break;
case 8: return 108750; break;
case 9: return 118312; break;
case 10: return 127687; break;
case 11: return 136875; break;
case 12: return 145875; break;
case 13: return 154875; break;
case 14: return 163688; break;
case 15: return 172312; break;
case 16: return 180750; break;
case 17: return 189375; break;
case 18: return 197625; break;
case 19: return 206062; break;
case 20: return 206062; break;
default: return -1;
}
};break;

case 1092: 
{
switch(l)
{
case 1: return 2610; break;
case 2: return 3615; break;
case 3: return 4545; break;
case 4: return 5445; break;
case 5: return 6285; break;
case 6: return 7110; break;
case 7: return 7920; break;
case 8: return 8700; break;
case 9: return 9465; break;
case 10: return 10215; break;
case 11: return 10950; break;
case 12: return 11670; break;
case 13: return 12390; break;
case 14: return 13095; break;
case 15: return 13785; break;
case 16: return 14460; break;
case 17: return 15150; break;
case 18: return 15810; break;
case 19: return 16485; break;
case 20: return 18000; break;
default: return -1;
}
};break;

case 1093: 
{
switch(l)
{
case 1: return 22838; break;
case 2: return 31631; break;
case 3: return 39769; break;
case 4: return 47644; break;
case 5: return 54994; break;
case 6: return 62212; break;
case 7: return 69300; break;
case 8: return 76125; break;
case 9: return 82819; break;
case 10: return 89381; break;
case 11: return 95812; break;
case 12: return 102112; break;
case 13: return 108412; break;
case 14: return 114581; break;
case 15: return 120619; break;
case 16: return 126525; break;
case 17: return 132562; break;
case 18: return 138338; break;
case 19: return 144244; break;
case 20: return 157500; break;
default: return -1;
}
};break;

default: return -1;
}
}

double TDdata::GetObjLG(int i,int l)
{
switch(i)
{
case 100: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 127: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 124: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 101: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
default: return -1;
}
};break;

case 138: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 150: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 144: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 139: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 137: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
default: return -1;
}
};break;

case 125: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 126: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 198: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
default: return -1;
}
};break;

case 199: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
default: return -1;
}
};break;

case 106: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 104: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 102: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 109: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 108: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 103: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
default: return -1;
}
};break;

case 105: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
default: return -1;
}
};break;

case 107: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
default: return -1;
}
};break;

case 110: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 112: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 600: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 118: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 113: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 114: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 115: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 116: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 117: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 119: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 120: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 148: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 149: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 141: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 142: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 200: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 201: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 202: 
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 122: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 123: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 121: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 203: 
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 204: 
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 205: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 131: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 134: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 128: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 206: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 207: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 208: 
{
switch(l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 132: 
{
switch(l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 135: 
{
switch(l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 129: 
{
switch(l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 209: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 210: 
{
switch(l)
{
case 1: return 350; break;
default: return -1;
}
};break;

case 211: 
{
switch(l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 133: 
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 136: 
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 130: 
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 744: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 745: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 746: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 747: 
{
switch(l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 748: 
{
switch(l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 749: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 500: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 299: 
{
switch(l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 303: 
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 304: 
{
switch(l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 313: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 317: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 324: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 328: 
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 339: 
{
switch(l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 306: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 307: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 301: 
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 310: 
{
switch(l)
{
case 1: return 80; break;
default: return -1;
}
};break;

case 381: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 361: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 297: 
{
switch(l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 331: 
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 291: 
{
switch(l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 341: 
{
switch(l)
{
case 1: return 80; break;
default: return -1;
}
};break;

case 288: 
{
switch(l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 337: 
{
switch(l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 315: 
{
switch(l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 342: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 359: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 380: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 298: 
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 316: 
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 290: 
{
switch(l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 353: 
{
switch(l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 360: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 338: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 372: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 293: 
{
switch(l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 289: 
{
switch(l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 294: 
{
switch(l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 314: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 368: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 287: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 356: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 283: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 278: 
{
switch(l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 279: 
{
switch(l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 282: 
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 285: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 286: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 295: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 296: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 280: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 281: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 284: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 292: 
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 311: 
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 333: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 344: 
{
switch(l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 355: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 318: 
{
switch(l)
{
case 1: return 80; break;
default: return -1;
}
};break;

case 319: 
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 382: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 302: 
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 320: 
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 323: 
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 329: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 336: 
{
switch(l)
{
case 1: return 80; break;
default: return -1;
}
};break;

case 343: 
{
switch(l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 374: 
{
switch(l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 352: 
{
switch(l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 334: 
{
switch(l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 383: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 384: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 385: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 386: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 506: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 508: 
{
switch(l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 507: 
{
switch(l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 1: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 2: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 3: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 4: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 5: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 6: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 7: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 8: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 10: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 11: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 12: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 13: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 14: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 15: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 16: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 59: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 62: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9000: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9003: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 17: 
{
switch(l)
{
case 1: return 4; break;
default: return -1;
}
};break;

case 18: 
{
switch(l)
{
case 1: return 4; break;
default: return -1;
}
};break;

case 19: 
{
switch(l)
{
case 1: return 4; break;
default: return -1;
}
};break;

case 20: 
{
switch(l)
{
case 1: return 5; break;
default: return -1;
}
};break;

case 21: 
{
switch(l)
{
case 1: return 8; break;
default: return -1;
}
};break;

case 22: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 23: 
{
switch(l)
{
case 1: return 8; break;
default: return -1;
}
};break;

case 24: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 25: 
{
switch(l)
{
case 1: return 15; break;
default: return -1;
}
};break;

case 26: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 27: 
{
switch(l)
{
case 1: return 15; break;
default: return -1;
}
};break;

case 28: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 29: 
{
switch(l)
{
case 1: return 16; break;
default: return -1;
}
};break;

case 30: 
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 31: 
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 32: 
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 60: 
{
switch(l)
{
case 1: return 18; break;
default: return -1;
}
};break;

case 63: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 9001: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 9004: 
{
switch(l)
{
case 1: return 25; break;
default: return -1;
}
};break;

case 37: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 38: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 39: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 40: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 41: 
{
switch(l)
{
case 1: return 5; break;
default: return -1;
}
};break;

case 42: 
{
switch(l)
{
case 1: return 5; break;
default: return -1;
}
};break;

case 43: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 44: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 45: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 46: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 47: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 48: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 49: 
{
switch(l)
{
case 1: return 5; break;
default: return -1;
}
};break;

case 50: 
{
switch(l)
{
case 1: return 5; break;
default: return -1;
}
};break;

case 51: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 52: 
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 91: 
{
switch(l)
{
case 1: return 570; break;
default: return -1;
}
};break;

case 92: 
{
switch(l)
{
case 1: return 1600; break;
default: return -1;
}
};break;

case 94: 
{
switch(l)
{
case 1: return 1730; break;
default: return -1;
}
};break;

case 93: 
{
switch(l)
{
case 1: return 5800; break;
default: return -1;
}
};break;

case 95: 
{
switch(l)
{
case 1: return 700; break;
default: return -1;
}
};break;

case 96: 
{
switch(l)
{
case 1: return 800; break;
default: return -1;
}
};break;

case 97: 
{
switch(l)
{
case 1: return 3300; break;
default: return -1;
}
};break;

case 98: 
{
switch(l)
{
case 1: return 2300; break;
default: return -1;
}
};break;

case 1050: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1052: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1054: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1053: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1055: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1056: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1057: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1058: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1059: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1060: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1061: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1062: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1078: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1063: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1079: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1065: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1068: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1066: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1069: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1072: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1073: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1074: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1075: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1076: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1070: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1071: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1080: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1081: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1082: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1083: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1084: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1085: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1086: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1087: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1088: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1090: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1091: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1092: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1093: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

default: return -1;
}
}

double TDdata::GetObjLGI(int i,int l)
{
switch(i)
{
case 100: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 127: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 124: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 101: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
default: return -1;
}
};break;

case 138: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 150: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 144: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 139: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 137: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
default: return -1;
}
};break;

case 125: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 126: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 198: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
default: return -1;
}
};break;

case 199: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
default: return -1;
}
};break;

case 106: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 104: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 102: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 109: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 108: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 103: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
default: return -1;
}
};break;

case 105: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
default: return -1;
}
};break;

case 107: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
default: return -1;
}
};break;

case 110: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 112: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 600: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 118: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 113: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 114: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 115: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 116: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 117: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 119: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 120: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 148: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 149: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 141: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 142: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 200: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 201: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 202: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 122: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 123: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 121: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 203: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 204: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 205: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 131: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 134: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 128: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 206: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 207: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 208: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 132: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 135: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 129: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 209: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 210: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 211: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 133: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 136: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 130: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 744: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 745: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 746: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 747: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 748: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 749: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 500: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 299: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 303: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 304: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 313: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 317: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 324: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 328: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 339: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 306: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 307: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 301: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 310: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 381: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 361: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 297: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 331: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 291: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 341: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 288: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 337: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 315: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 342: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 359: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 380: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 298: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 316: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 290: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 353: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 360: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 338: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 372: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 293: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 289: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 294: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 314: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 368: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 287: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 356: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 283: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 278: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 279: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 282: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 285: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 286: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 295: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 296: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 280: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 281: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 284: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 292: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 311: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 333: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 344: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 355: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 318: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 319: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 382: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 302: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 320: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 323: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 329: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 336: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 343: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 374: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 352: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 334: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 383: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 384: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 385: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 386: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 506: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 508: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 507: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 2: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 3: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 4: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 5: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 6: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 7: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 8: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 10: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 11: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 12: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 13: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 14: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 15: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 16: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 59: 
{
switch(l)
{
case 1: return 888; break;
default: return -1;
}
};break;

case 62: 
{
switch(l)
{
case 1: return 1950; break;
default: return -1;
}
};break;

case 9000: 
{
switch(l)
{
case 1: return 1364; break;
default: return -1;
}
};break;

case 9003: 
{
switch(l)
{
case 1: return 2537; break;
default: return -1;
}
};break;

case 17: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 18: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 19: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 20: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 21: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 22: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 23: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 24: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 25: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 26: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 27: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 28: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 29: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 30: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 31: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 32: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 60: 
{
switch(l)
{
case 1: return 293; break;
default: return -1;
}
};break;

case 63: 
{
switch(l)
{
case 1: return 644; break;
default: return -1;
}
};break;

case 9001: 
{
switch(l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 9004: 
{
switch(l)
{
case 1: return 837; break;
default: return -1;
}
};break;

case 37: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 38: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 39: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 40: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 41: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 42: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 43: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 44: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 45: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 46: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 47: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 48: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 49: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 50: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 51: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 52: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 91: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 92: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 94: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 93: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 95: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 96: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 97: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 98: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1050: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1052: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1054: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1053: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1055: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1056: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1057: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1058: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1059: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1060: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1061: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1062: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1078: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1063: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1079: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1065: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1068: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1066: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1069: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1072: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1073: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1074: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1075: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1076: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1070: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1071: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1080: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1081: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1082: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1083: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1084: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1085: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1086: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1087: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1088: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1090: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1091: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1092: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

case 1093: 
{
switch(l)
{
case 1: return 0; break;
case 2: return 0; break;
case 3: return 0; break;
case 4: return 0; break;
case 5: return 0; break;
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
case 15: return 0; break;
case 16: return 0; break;
case 17: return 0; break;
case 18: return 0; break;
case 19: return 0; break;
case 20: return 0; break;
default: return -1;
}
};break;

default: return -1;
}
}

double TDdata::GetObjLC(int i,int l)
{
switch(i)
{
case 100: 
{
switch(l)
{
case 1: return 900; break;
case 2: return 90; break;
case 3: return 1494; break;
case 4: return 1863; break;
case 5: return 2331; break;
case 6: return 2808; break;
case 7: return 3384; break;
case 8: return 4068; break;
case 9: return 4851; break;
case 10: return 5760; break;
case 11: return 6813; break;
case 12: return 8037; break;
case 13: return 9459; break;
case 14: return 11106; break;
case 15: return 13014; break;
case 16: return 15237; break;
case 17: return 17811; break;
case 18: return 20790; break;
case 19: return 24264; break;
case 20: return 28260; break;
default: return -1;
}
};break;

case 127: 
{
switch(l)
{
case 1: return 10; break;
case 2: return 90; break;
case 3: return 996; break;
case 4: return 1242; break;
case 5: return 1554; break;
case 6: return 1872; break;
case 7: return 2256; break;
case 8: return 2712; break;
case 9: return 3234; break;
case 10: return 3840; break;
case 11: return 4542; break;
case 12: return 5358; break;
case 13: return 6306; break;
case 14: return 7404; break;
case 15: return 8676; break;
case 16: return 10158; break;
case 17: return 11874; break;
case 18: return 13860; break;
case 19: return 16176; break;
case 20: return 18840; break;
default: return -1;
}
};break;

case 124: 
{
switch(l)
{
case 1: return 10; break;
case 2: return 90; break;
case 3: return 797; break;
case 4: return 994; break;
case 5: return 1244; break;
case 6: return 1498; break;
case 7: return 1805; break;
case 8: return 2170; break;
case 9: return 2588; break;
case 10: return 3072; break;
case 11: return 3634; break;
case 12: return 4287; break;
case 13: return 5045; break;
case 14: return 5924; break;
case 15: return 6941; break;
case 16: return 8127; break;
case 17: return 9500; break;
case 18: return 11088; break;
case 19: return 12941; break;
case 20: return 15072; break;
default: return -1;
}
};break;

case 101: 
{
switch(l)
{
case 1: return 10; break;
case 2: return 90; break;
case 3: return 100; break;
case 4: return 125; break;
case 5: return 156; break;
default: return -1;
}
};break;

case 138: 
{
switch(l)
{
case 1: return 3600; break;
case 2: return 4680; break;
case 3: return 5976; break;
case 4: return 7452; break;
case 5: return 9324; break;
case 6: return 11232; break;
case 7: return 13536; break;
case 8: return 16272; break;
case 9: return 19404; break;
case 10: return 23040; break;
case 11: return 27252; break;
case 12: return 32148; break;
case 13: return 37836; break;
case 14: return 44424; break;
case 15: return 52056; break;
case 16: return 60948; break;
case 17: return 71244; break;
case 18: return 83160; break;
case 19: return 97056; break;
case 20: return 113040; break;
default: return -1;
}
};break;

case 150: 
{
switch(l)
{
case 1: return 10; break;
case 2: return 90; break;
case 3: return 996; break;
case 4: return 1242; break;
case 5: return 1554; break;
case 6: return 1872; break;
case 7: return 2256; break;
case 8: return 2712; break;
case 9: return 3234; break;
case 10: return 3840; break;
case 11: return 4542; break;
case 12: return 5358; break;
case 13: return 6306; break;
case 14: return 7404; break;
case 15: return 8676; break;
case 16: return 10158; break;
case 17: return 11874; break;
case 18: return 13860; break;
case 19: return 16176; break;
case 20: return 18840; break;
default: return -1;
}
};break;

case 144: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 139: 
{
switch(l)
{
case 1: return 240; break;
default: return -1;
}
};break;

case 137: 
{
switch(l)
{
case 1: return 14400; break;
case 2: return 18720; break;
case 3: return 23904; break;
case 4: return 29808; break;
case 5: return 37296; break;
case 6: return 44928; break;
default: return -1;
}
};break;

case 125: 
{
switch(l)
{
case 1: return 1200; break;
case 2: return 1560; break;
case 3: return 1992; break;
case 4: return 2484; break;
case 5: return 3108; break;
case 6: return 3744; break;
case 7: return 4512; break;
case 8: return 5424; break;
case 9: return 6468; break;
case 10: return 7680; break;
case 11: return 9084; break;
case 12: return 10716; break;
case 13: return 12612; break;
case 14: return 14808; break;
case 15: return 17352; break;
case 16: return 20316; break;
case 17: return 23748; break;
case 18: return 27720; break;
case 19: return 32352; break;
case 20: return 37680; break;
default: return -1;
}
};break;

case 126: 
{
switch(l)
{
case 1: return 1200; break;
case 2: return 1560; break;
case 3: return 1992; break;
case 4: return 2484; break;
case 5: return 3108; break;
case 6: return 3744; break;
case 7: return 4512; break;
case 8: return 5424; break;
case 9: return 6468; break;
case 10: return 7680; break;
case 11: return 9084; break;
case 12: return 10716; break;
case 13: return 12612; break;
case 14: return 14808; break;
case 15: return 17352; break;
case 16: return 20316; break;
case 17: return 23748; break;
case 18: return 27720; break;
case 19: return 32352; break;
case 20: return 37680; break;
default: return -1;
}
};break;

case 198: 
{
switch(l)
{
case 1: return 10; break;
case 2: return 10; break;
default: return -1;
}
};break;

case 199: 
{
switch(l)
{
case 1: return 10; break;
case 2: return 10; break;
default: return -1;
}
};break;

case 106: 
{
switch(l)
{
case 1: return 10; break;
case 2: return 90; break;
case 3: return 267; break;
case 4: return 467; break;
case 5: return 794; break;
case 6: return 1307; break;
case 7: return 2141; break;
case 8: return 3467; break;
case 9: return 5587; break;
case 10: return 8987; break;
case 11: return 14420; break;
case 12: return 23120; break;
case 13: return 37040; break;
case 14: return 59307; break;
case 15: return 94934; break;
case 16: return 151940; break;
case 17: return 243147; break;
case 18: return 389087; break;
case 19: return 622580; break;
case 20: return 996174; break;
default: return -1;
}
};break;

case 104: 
{
switch(l)
{
case 1: return 10; break;
case 2: return 90; break;
case 3: return 463; break;
case 4: return 823; break;
case 5: return 1414; break;
case 6: return 2340; break;
case 7: return 3832; break;
case 8: return 6223; break;
case 9: return 10042; break;
case 10: return 16200; break;
case 11: return 25920; break;
case 12: return 41580; break;
case 13: return 66613; break;
case 14: return 106663; break;
case 15: return 170743; break;
case 16: return 273267; break;
case 17: return 437310; break;
case 18: return 699777; break;
case 19: return 1119729; break;
case 20: return 1791657; break;
default: return -1;
}
};break;

case 102: 
{
switch(l)
{
case 1: return 10; break;
case 2: return 90; break;
case 3: return 514; break;
case 4: return 914; break;
case 5: return 1571; break;
case 6: return 2600; break;
case 7: return 4257; break;
case 8: return 6914; break;
case 9: return 11157; break;
case 10: return 18000; break;
case 11: return 28800; break;
case 12: return 46200; break;
case 13: return 74014; break;
case 14: return 118515; break;
case 15: return 189714; break;
case 16: return 303629; break;
case 17: return 485900; break;
case 18: return 777529; break;
case 19: return 1244143; break;
case 20: return 1990729; break;
default: return -1;
}
};break;

case 109: 
{
switch(l)
{
case 1: return 10; break;
case 2: return 90; break;
case 3: return 996; break;
case 4: return 1242; break;
case 5: return 1554; break;
case 6: return 1872; break;
case 7: return 2256; break;
case 8: return 2712; break;
case 9: return 3234; break;
case 10: return 3840; break;
case 11: return 4542; break;
case 12: return 5358; break;
case 13: return 6306; break;
case 14: return 7404; break;
case 15: return 8676; break;
case 16: return 10158; break;
case 17: return 11874; break;
case 18: return 13860; break;
case 19: return 16176; break;
case 20: return 18840; break;
default: return -1;
}
};break;

case 108: 
{
switch(l)
{
case 1: return 10; break;
case 2: return 90; break;
case 3: return 996; break;
case 4: return 1242; break;
case 5: return 1554; break;
case 6: return 1872; break;
case 7: return 2256; break;
case 8: return 2712; break;
case 9: return 3234; break;
case 10: return 3840; break;
case 11: return 4542; break;
case 12: return 5358; break;
case 13: return 6306; break;
case 14: return 7404; break;
case 15: return 8676; break;
case 16: return 10158; break;
case 17: return 11874; break;
case 18: return 13860; break;
case 19: return 16176; break;
case 20: return 18840; break;
default: return -1;
}
};break;

case 103: 
{
switch(l)
{
case 1: return 28800; break;
case 2: return 43200; break;
case 3: return 50400; break;
case 4: return 64800; break;
case 5: return 86400; break;
default: return -1;
}
};break;

case 105: 
{
switch(l)
{
case 1: return 28800; break;
case 2: return 43200; break;
case 3: return 50400; break;
case 4: return 64800; break;
case 5: return 86400; break;
default: return -1;
}
};break;

case 107: 
{
switch(l)
{
case 1: return 4816; break;
case 2: return 7224; break;
case 3: return 8428; break;
case 4: return 10836; break;
case 5: return 14448; break;
default: return -1;
}
};break;

case 110: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 112: 
{
switch(l)
{
case 1: return 10; break;
case 2: return 390; break;
case 3: return 498; break;
case 4: return 621; break;
case 5: return 777; break;
case 6: return 936; break;
case 7: return 1128; break;
case 8: return 1356; break;
case 9: return 1617; break;
case 10: return 1920; break;
case 11: return 2271; break;
case 12: return 2679; break;
case 13: return 3153; break;
case 14: return 3702; break;
case 15: return 4338; break;
case 16: return 5079; break;
case 17: return 5937; break;
case 18: return 6930; break;
case 19: return 8088; break;
case 20: return 9420; break;
default: return -1;
}
};break;

case 600: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 118: 
{
switch(l)
{
case 1: return 300; break;
case 2: return 390; break;
case 3: return 498; break;
case 4: return 621; break;
case 5: return 777; break;
case 6: return 936; break;
case 7: return 1128; break;
case 8: return 1356; break;
case 9: return 1617; break;
case 10: return 1920; break;
case 11: return 2271; break;
case 12: return 2679; break;
case 13: return 3153; break;
case 14: return 3702; break;
case 15: return 4338; break;
case 16: return 5079; break;
case 17: return 5937; break;
case 18: return 6930; break;
case 19: return 8088; break;
case 20: return 9420; break;
default: return -1;
}
};break;

case 113: 
{
switch(l)
{
case 1: return 900; break;
case 2: return 1170; break;
case 3: return 1494; break;
case 4: return 1863; break;
case 5: return 2331; break;
case 6: return 2808; break;
case 7: return 3384; break;
case 8: return 4068; break;
case 9: return 4851; break;
case 10: return 5760; break;
case 11: return 6813; break;
case 12: return 8037; break;
case 13: return 9459; break;
case 14: return 11106; break;
case 15: return 13014; break;
case 16: return 15237; break;
case 17: return 17811; break;
case 18: return 20790; break;
case 19: return 24264; break;
case 20: return 28260; break;
default: return -1;
}
};break;

case 114: 
{
switch(l)
{
case 1: return 1800; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 115: 
{
switch(l)
{
case 1: return 3600; break;
case 2: return 4680; break;
case 3: return 5976; break;
case 4: return 7452; break;
case 5: return 9324; break;
case 6: return 11232; break;
case 7: return 13536; break;
case 8: return 16272; break;
case 9: return 19404; break;
case 10: return 23040; break;
case 11: return 27252; break;
case 12: return 32148; break;
case 13: return 37836; break;
case 14: return 44424; break;
case 15: return 52056; break;
case 16: return 60948; break;
case 17: return 71244; break;
case 18: return 83160; break;
case 19: return 97056; break;
case 20: return 113040; break;
default: return -1;
}
};break;

case 116: 
{
switch(l)
{
case 1: return 3600; break;
case 2: return 4680; break;
case 3: return 5976; break;
case 4: return 7452; break;
case 5: return 9324; break;
case 6: return 11232; break;
case 7: return 13536; break;
case 8: return 16272; break;
case 9: return 19404; break;
case 10: return 23040; break;
case 11: return 27252; break;
case 12: return 32148; break;
case 13: return 37836; break;
case 14: return 44424; break;
case 15: return 52056; break;
case 16: return 60948; break;
case 17: return 71244; break;
case 18: return 83160; break;
case 19: return 97056; break;
case 20: return 113040; break;
default: return -1;
}
};break;

case 117: 
{
switch(l)
{
case 1: return 5400; break;
case 2: return 7020; break;
case 3: return 8964; break;
case 4: return 11178; break;
case 5: return 13986; break;
case 6: return 16848; break;
case 7: return 20304; break;
case 8: return 24408; break;
case 9: return 29106; break;
case 10: return 34560; break;
case 11: return 40878; break;
case 12: return 48222; break;
case 13: return 56754; break;
case 14: return 66636; break;
case 15: return 78084; break;
case 16: return 91422; break;
case 17: return 106866; break;
case 18: return 124741; break;
case 19: return 145584; break;
case 20: return 169560; break;
default: return -1;
}
};break;

case 119: 
{
switch(l)
{
case 1: return 7200; break;
case 2: return 9360; break;
case 3: return 11952; break;
case 4: return 14904; break;
case 5: return 18648; break;
case 6: return 22464; break;
case 7: return 27072; break;
case 8: return 32544; break;
case 9: return 38808; break;
case 10: return 46080; break;
case 11: return 54504; break;
case 12: return 64296; break;
case 13: return 75672; break;
case 14: return 88848; break;
case 15: return 104112; break;
case 16: return 121896; break;
case 17: return 142488; break;
case 18: return 166320; break;
case 19: return 194112; break;
case 20: return 226080; break;
default: return -1;
}
};break;

case 120: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 148: 
{
switch(l)
{
case 1: return 72000; break;
default: return -1;
}
};break;

case 149: 
{
switch(l)
{
case 1: return 86400; break;
default: return -1;
}
};break;

case 141: 
{
switch(l)
{
case 1: return 3600; break;
default: return -1;
}
};break;

case 142: 
{
switch(l)
{
case 1: return 3600; break;
default: return -1;
}
};break;

case 200: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 201: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 202: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 122: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 123: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 121: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 203: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 204: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 205: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 131: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 134: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 128: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 206: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 207: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 208: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 132: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 135: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 129: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 209: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 210: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 211: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 133: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 136: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 130: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 744: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 745: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 746: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 747: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 748: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 749: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 500: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 299: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 303: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 304: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 313: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 317: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 324: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 328: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 339: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 306: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 307: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 301: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 310: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 381: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 361: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 297: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 331: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 291: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 341: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 288: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 337: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 315: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 342: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 359: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 380: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 298: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 316: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 290: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 353: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 360: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 338: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 372: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 293: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 289: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 294: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 314: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 368: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 287: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 356: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 283: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 278: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 279: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 282: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 285: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 286: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 295: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 296: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 280: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 281: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 284: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 292: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 311: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 333: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 344: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 355: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 318: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 319: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 382: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 302: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 320: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 323: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 329: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 336: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 343: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 374: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 352: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 334: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 383: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 384: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 385: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 386: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 506: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 508: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 507: 
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1: 
{
switch(l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 2: 
{
switch(l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 3: 
{
switch(l)
{
case 1: return 294; break;
default: return -1;
}
};break;

case 4: 
{
switch(l)
{
case 1: return 595; break;
default: return -1;
}
};break;

case 5: 
{
switch(l)
{
case 1: return 2000; break;
default: return -1;
}
};break;

case 6: 
{
switch(l)
{
case 1: return 2400; break;
default: return -1;
}
};break;

case 7: 
{
switch(l)
{
case 1: return 2100; break;
default: return -1;
}
};break;

case 8: 
{
switch(l)
{
case 1: return 3700; break;
default: return -1;
}
};break;

case 9: 
{
switch(l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 10: 
{
switch(l)
{
case 1: return 8200; break;
default: return -1;
}
};break;

case 11: 
{
switch(l)
{
case 1: return 6000; break;
default: return -1;
}
};break;

case 12: 
{
switch(l)
{
case 1: return 11000; break;
default: return -1;
}
};break;

case 13: 
{
switch(l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 14: 
{
switch(l)
{
case 1: return 8000; break;
default: return -1;
}
};break;

case 15: 
{
switch(l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 16: 
{
switch(l)
{
case 1: return 25000; break;
default: return -1;
}
};break;

case 59: 
{
switch(l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 62: 
{
switch(l)
{
case 1: return 8000; break;
default: return -1;
}
};break;

case 9000: 
{
switch(l)
{
case 1: return 3600; break;
default: return -1;
}
};break;

case 9003: 
{
switch(l)
{
case 1: return 10336; break;
default: return -1;
}
};break;

case 17: 
{
switch(l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 18: 
{
switch(l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 19: 
{
switch(l)
{
case 1: return 294; break;
default: return -1;
}
};break;

case 20: 
{
switch(l)
{
case 1: return 595; break;
default: return -1;
}
};break;

case 21: 
{
switch(l)
{
case 1: return 2000; break;
default: return -1;
}
};break;

case 22: 
{
switch(l)
{
case 1: return 2400; break;
default: return -1;
}
};break;

case 23: 
{
switch(l)
{
case 1: return 2100; break;
default: return -1;
}
};break;

case 24: 
{
switch(l)
{
case 1: return 3700; break;
default: return -1;
}
};break;

case 25: 
{
switch(l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 26: 
{
switch(l)
{
case 1: return 8200; break;
default: return -1;
}
};break;

case 27: 
{
switch(l)
{
case 1: return 6000; break;
default: return -1;
}
};break;

case 28: 
{
switch(l)
{
case 1: return 11000; break;
default: return -1;
}
};break;

case 29: 
{
switch(l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 30: 
{
switch(l)
{
case 1: return 8000; break;
default: return -1;
}
};break;

case 31: 
{
switch(l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 32: 
{
switch(l)
{
case 1: return 25000; break;
default: return -1;
}
};break;

case 60: 
{
switch(l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 63: 
{
switch(l)
{
case 1: return 8000; break;
default: return -1;
}
};break;

case 9001: 
{
switch(l)
{
case 1: return 3600; break;
default: return -1;
}
};break;

case 9004: 
{
switch(l)
{
case 1: return 10336; break;
default: return -1;
}
};break;

case 37: 
{
switch(l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 38: 
{
switch(l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 39: 
{
switch(l)
{
case 1: return 1200; break;
default: return -1;
}
};break;

case 40: 
{
switch(l)
{
case 1: return 1200; break;
default: return -1;
}
};break;

case 41: 
{
switch(l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 42: 
{
switch(l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 43: 
{
switch(l)
{
case 1: return 1200; break;
default: return -1;
}
};break;

case 44: 
{
switch(l)
{
case 1: return 1200; break;
default: return -1;
}
};break;

case 45: 
{
switch(l)
{
case 1: return 900; break;
default: return -1;
}
};break;

case 46: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 47: 
{
switch(l)
{
case 1: return 3700; break;
default: return -1;
}
};break;

case 48: 
{
switch(l)
{
case 1: return 14000; break;
default: return -1;
}
};break;

case 49: 
{
switch(l)
{
case 1: return 900; break;
default: return -1;
}
};break;

case 50: 
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 51: 
{
switch(l)
{
case 1: return 3700; break;
default: return -1;
}
};break;

case 52: 
{
switch(l)
{
case 1: return 14000; break;
default: return -1;
}
};break;

case 91: 
{
switch(l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 92: 
{
switch(l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 94: 
{
switch(l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 93: 
{
switch(l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 95: 
{
switch(l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 96: 
{
switch(l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 97: 
{
switch(l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 98: 
{
switch(l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 1050: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 1052: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 1054: 
{
switch(l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 1053: 
{
switch(l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 1055: 
{
switch(l)
{
case 1: return 14400; break;
default: return -1;
}
};break;

case 1056: 
{
switch(l)
{
case 1: return 14400; break;
default: return -1;
}
};break;

case 1057: 
{
switch(l)
{
case 1: return 14400; break;
default: return -1;
}
};break;

case 1058: 
{
switch(l)
{
case 1: return 10; break;
case 2: return 240; break;
case 3: return 600; break;
case 4: return 2484; break;
case 5: return 3108; break;
case 6: return 3744; break;
case 7: return 4512; break;
case 8: return 5424; break;
case 9: return 6468; break;
case 10: return 7680; break;
case 11: return 9084; break;
case 12: return 10716; break;
case 13: return 12612; break;
case 14: return 14808; break;
case 15: return 17352; break;
case 16: return 20316; break;
case 17: return 23748; break;
case 18: return 27720; break;
case 19: return 32352; break;
case 20: return 37680; break;
default: return -1;
}
};break;

case 1059: 
{
switch(l)
{
case 1: return 10; break;
case 2: return 220; break;
case 3: return 600; break;
case 4: return 1242; break;
case 5: return 1554; break;
case 6: return 1872; break;
case 7: return 2256; break;
case 8: return 2712; break;
case 9: return 3234; break;
case 10: return 3840; break;
case 11: return 4542; break;
case 12: return 5358; break;
case 13: return 6306; break;
case 14: return 7404; break;
case 15: return 8676; break;
case 16: return 10158; break;
case 17: return 11874; break;
case 18: return 13860; break;
case 19: return 16176; break;
case 20: return 18840; break;
default: return -1;
}
};break;

case 1060: 
{
switch(l)
{
case 1: return 300; break;
case 2: return 780; break;
case 3: return 996; break;
case 4: return 1242; break;
case 5: return 1554; break;
case 6: return 1872; break;
case 7: return 2256; break;
case 8: return 2712; break;
case 9: return 3234; break;
case 10: return 3840; break;
case 11: return 4542; break;
case 12: return 5358; break;
case 13: return 6306; break;
case 14: return 7404; break;
case 15: return 8676; break;
case 16: return 10158; break;
case 17: return 11874; break;
case 18: return 13860; break;
case 19: return 16176; break;
case 20: return 18840; break;
default: return -1;
}
};break;

case 1061: 
{
switch(l)
{
case 1: return 1200; break;
case 2: return 1560; break;
case 3: return 1992; break;
case 4: return 2484; break;
case 5: return 3108; break;
case 6: return 3744; break;
case 7: return 4512; break;
case 8: return 5424; break;
case 9: return 6468; break;
case 10: return 7680; break;
case 11: return 9084; break;
case 12: return 10716; break;
case 13: return 12612; break;
case 14: return 14808; break;
case 15: return 17352; break;
case 16: return 20316; break;
case 17: return 23748; break;
case 18: return 27720; break;
case 19: return 32352; break;
case 20: return 37680; break;
default: return -1;
}
};break;

case 1062: 
{
switch(l)
{
case 1: return 3600; break;
case 2: return 780; break;
case 3: return 996; break;
case 4: return 1242; break;
case 5: return 1554; break;
case 6: return 1872; break;
case 7: return 2256; break;
case 8: return 2712; break;
case 9: return 3234; break;
case 10: return 3840; break;
case 11: return 4542; break;
case 12: return 5358; break;
case 13: return 6306; break;
case 14: return 7404; break;
case 15: return 8676; break;
case 16: return 10158; break;
case 17: return 11874; break;
case 18: return 13860; break;
case 19: return 16176; break;
case 20: return 18840; break;
default: return -1;
}
};break;

case 1078: 
{
switch(l)
{
case 1: return 14400; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 1063: 
{
switch(l)
{
case 1: return 7200; break;
case 2: return 780; break;
case 3: return 996; break;
case 4: return 1242; break;
case 5: return 1554; break;
case 6: return 1872; break;
case 7: return 2256; break;
case 8: return 2712; break;
case 9: return 3234; break;
case 10: return 3840; break;
case 11: return 4542; break;
case 12: return 5358; break;
case 13: return 6306; break;
case 14: return 7404; break;
case 15: return 8676; break;
case 16: return 10158; break;
case 17: return 11874; break;
case 18: return 13860; break;
case 19: return 16176; break;
case 20: return 18840; break;
default: return -1;
}
};break;

case 1079: 
{
switch(l)
{
case 1: return 14400; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 1065: 
{
switch(l)
{
case 1: return 28800; break;
case 2: return 780; break;
case 3: return 996; break;
case 4: return 1242; break;
case 5: return 1554; break;
case 6: return 1872; break;
case 7: return 2256; break;
case 8: return 2712; break;
case 9: return 3234; break;
case 10: return 3840; break;
case 11: return 4542; break;
case 12: return 5358; break;
case 13: return 6306; break;
case 14: return 7404; break;
case 15: return 8676; break;
case 16: return 10158; break;
case 17: return 11874; break;
case 18: return 13860; break;
case 19: return 16176; break;
case 20: return 18840; break;
default: return -1;
}
};break;

case 1068: 
{
switch(l)
{
case 1: return 28800; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 1066: 
{
switch(l)
{
case 1: return 28800; break;
case 2: return 780; break;
case 3: return 996; break;
case 4: return 1242; break;
case 5: return 1554; break;
case 6: return 1872; break;
case 7: return 2256; break;
case 8: return 2712; break;
case 9: return 3234; break;
case 10: return 3840; break;
case 11: return 4542; break;
case 12: return 5358; break;
case 13: return 6306; break;
case 14: return 7404; break;
case 15: return 8676; break;
case 16: return 10158; break;
case 17: return 11874; break;
case 18: return 13860; break;
case 19: return 16176; break;
case 20: return 18840; break;
default: return -1;
}
};break;

case 1069: 
{
switch(l)
{
case 1: return 28800; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 1072: 
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 1073: 
{
switch(l)
{
case 1: return 7200; break;
default: return -1;
}
};break;

case 1074: 
{
switch(l)
{
case 1: return 10800; break;
default: return -1;
}
};break;

case 1075: 
{
switch(l)
{
case 1: return 14400; break;
default: return -1;
}
};break;

case 1076: 
{
switch(l)
{
case 1: return 600; break;
case 2: return 720; break;
case 3: return 900; break;
case 4: return 1242; break;
case 5: return 1554; break;
case 6: return 1872; break;
case 7: return 2256; break;
case 8: return 2712; break;
case 9: return 3234; break;
case 10: return 3840; break;
case 11: return 4542; break;
case 12: return 5358; break;
case 13: return 6306; break;
case 14: return 7404; break;
case 15: return 8676; break;
case 16: return 10158; break;
case 17: return 11874; break;
case 18: return 13860; break;
case 19: return 16176; break;
case 20: return 18840; break;
default: return -1;
}
};break;

case 1070: 
{
switch(l)
{
case 1: return 14400; break;
case 2: return 780; break;
case 3: return 996; break;
case 4: return 1242; break;
case 5: return 1554; break;
case 6: return 1872; break;
case 7: return 2256; break;
case 8: return 2712; break;
case 9: return 3234; break;
case 10: return 3840; break;
case 11: return 4542; break;
case 12: return 5358; break;
case 13: return 6306; break;
case 14: return 7404; break;
case 15: return 8676; break;
case 16: return 10158; break;
case 17: return 11874; break;
case 18: return 13860; break;
case 19: return 16176; break;
case 20: return 18840; break;
default: return -1;
}
};break;

case 1071: 
{
switch(l)
{
case 1: return 14400; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 1080: 
{
switch(l)
{
case 1: return 14400; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 1081: 
{
switch(l)
{
case 1: return 14400; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 1082: 
{
switch(l)
{
case 1: return 14400; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 1083: 
{
switch(l)
{
case 1: return 14400; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 1084: 
{
switch(l)
{
case 1: return 14400; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 1085: 
{
switch(l)
{
case 1: return 1800; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 1086: 
{
switch(l)
{
case 1: return 1800; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 1087: 
{
switch(l)
{
case 1: return 1800; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 1088: 
{
switch(l)
{
case 1: return 1800; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

case 1090: 
{
switch(l)
{
case 1: return 1200; break;
case 2: return 1560; break;
case 3: return 1992; break;
case 4: return 2484; break;
case 5: return 3108; break;
case 6: return 3744; break;
case 7: return 4512; break;
case 8: return 5424; break;
case 9: return 6468; break;
case 10: return 7680; break;
case 11: return 9084; break;
case 12: return 10716; break;
case 13: return 12612; break;
case 14: return 14808; break;
case 15: return 17352; break;
case 16: return 20316; break;
case 17: return 23748; break;
case 18: return 27720; break;
case 19: return 32352; break;
case 20: return 37680; break;
default: return -1;
}
};break;

case 1091: 
{
switch(l)
{
case 1: return 14400; break;
case 2: return 3120; break;
case 3: return 3984; break;
case 4: return 4968; break;
case 5: return 6216; break;
case 6: return 7488; break;
case 7: return 9024; break;
case 8: return 10848; break;
case 9: return 12936; break;
case 10: return 15360; break;
case 11: return 18168; break;
case 12: return 21432; break;
case 13: return 25224; break;
case 14: return 29616; break;
case 15: return 34704; break;
case 16: return 40632; break;
case 17: return 47496; break;
case 18: return 55440; break;
case 19: return 64704; break;
case 20: return 75360; break;
default: return -1;
}
};break;

case 1092: 
{
switch(l)
{
case 1: return 1200; break;
case 2: return 1560; break;
case 3: return 1992; break;
case 4: return 2484; break;
case 5: return 3108; break;
case 6: return 3744; break;
case 7: return 4512; break;
case 8: return 5424; break;
case 9: return 6468; break;
case 10: return 7680; break;
case 11: return 9084; break;
case 12: return 10716; break;
case 13: return 12612; break;
case 14: return 14808; break;
case 15: return 17352; break;
case 16: return 20316; break;
case 17: return 23748; break;
case 18: return 27720; break;
case 19: return 32352; break;
case 20: return 37680; break;
default: return -1;
}
};break;

case 1093: 
{
switch(l)
{
case 1: return 1800; break;
case 2: return 2340; break;
case 3: return 2988; break;
case 4: return 3726; break;
case 5: return 4662; break;
case 6: return 5616; break;
case 7: return 6768; break;
case 8: return 8136; break;
case 9: return 9702; break;
case 10: return 11520; break;
case 11: return 13626; break;
case 12: return 16074; break;
case 13: return 18918; break;
case 14: return 22212; break;
case 15: return 26028; break;
case 16: return 30474; break;
case 17: return 35622; break;
case 18: return 41580; break;
case 19: return 48528; break;
case 20: return 56520; break;
default: return -1;
}
};break;

default: return -1;
}
}

int TDdata::GetObjSX(int i)
{
switch(i)
{
case 100: return 5; break;
case 127: return 7; break;
case 124: return 8; break;
case 101: return 8; break;
case 138: return 7; break;
case 150: return 0; break;
case 144: return 7; break;
case 139: return 6; break;
case 137: return 6; break;
case 125: return 8; break;
case 126: return 9; break;
case 198: return 8; break;
case 199: return 8; break;
case 106: return 8; break;
case 104: return 8; break;
case 102: return 8; break;
case 109: return 7; break;
case 108: return 7; break;
case 103: return 10; break;
case 105: return 10; break;
case 107: return 7; break;
case 110: return 15; break;
case 112: return 8; break;
case 600: return 9; break;
case 118: return 10; break;
case 113: return 9; break;
case 114: return 11; break;
case 115: return 10; break;
case 116: return 9; break;
case 117: return 10; break;
case 119: return 10; break;
case 120: return 8; break;
case 148: return 12; break;
case 149: return 9; break;
case 141: return 9; break;
case 142: return 9; break;
case 200: return 4; break;
case 201: return 4; break;
case 202: return 8; break;
case 122: return 4; break;
case 123: return 4; break;
case 121: return 4; break;
case 203: return 4; break;
case 204: return 4; break;
case 205: return 8; break;
case 131: return 4; break;
case 134: return 4; break;
case 128: return 4; break;
case 206: return 4; break;
case 207: return 4; break;
case 208: return 8; break;
case 132: return 4; break;
case 135: return 4; break;
case 129: return 4; break;
case 209: return 4; break;
case 210: return 4; break;
case 211: return 8; break;
case 133: return 4; break;
case 136: return 4; break;
case 130: return 4; break;
case 744: return 3; break;
case 745: return 3; break;
case 746: return 2; break;
case 747: return 2; break;
case 748: return 3; break;
case 749: return 1; break;
case 500: return 3; break;
case 299: return 4; break;
case 303: return 5; break;
case 304: return 4; break;
case 313: return 3; break;
case 317: return 3; break;
case 324: return 2; break;
case 328: return 3; break;
case 339: return 4; break;
case 306: return 1; break;
case 307: return 2; break;
case 301: return 5; break;
case 310: return 2; break;
case 381: return 3; break;
case 361: return 1; break;
case 297: return 3; break;
case 331: return 5; break;
case 291: return 2; break;
case 341: return 2; break;
case 288: return 5; break;
case 337: return 4; break;
case 315: return 4; break;
case 342: return 2; break;
case 359: return 2; break;
case 380: return 3; break;
case 298: return 5; break;
case 316: return 5; break;
case 290: return 3; break;
case 353: return 2; break;
case 360: return 5; break;
case 338: return 2; break;
case 372: return 2; break;
case 293: return 4; break;
case 289: return 4; break;
case 294: return 4; break;
case 314: return 2; break;
case 368: return 3; break;
case 287: return 1; break;
case 356: return 2; break;
case 283: return 2; break;
case 278: return 3; break;
case 279: return 2; break;
case 282: return 2; break;
case 285: return 1; break;
case 286: return 2; break;
case 295: return 2; break;
case 296: return 1; break;
case 280: return 2; break;
case 281: return 3; break;
case 284: return 3; break;
case 292: return 5; break;
case 311: return 5; break;
case 333: return 5; break;
case 344: return 3; break;
case 355: return 2; break;
case 318: return 4; break;
case 319: return 4; break;
case 382: return 1; break;
case 302: return 4; break;
case 320: return 5; break;
case 323: return 3; break;
case 329: return 3; break;
case 336: return 4; break;
case 343: return 4; break;
case 374: return 4; break;
case 352: return 4; break;
case 334: return 4; break;
case 383: return 2; break;
case 384: return 1; break;
case 385: return 2; break;
case 386: return 2; break;
case 506: return 4; break;
case 508: return 5; break;
case 507: return 5; break;
case 1: return 3; break;
case 2: return 3; break;
case 3: return 3; break;
case 4: return 3; break;
case 5: return 5; break;
case 6: return 6; break;
case 7: return 3; break;
case 8: return 8; break;
case 9: return 4; break;
case 10: return 4; break;
case 11: return 5; break;
case 12: return 7; break;
case 13: return 4; break;
case 14: return 6; break;
case 15: return 5; break;
case 16: return 10; break;
case 59: return 4; break;
case 62: return 7; break;
case 9000: return 16; break;
case 9003: return 7; break;
case 17: return 3; break;
case 18: return 3; break;
case 19: return 3; break;
case 20: return 3; break;
case 21: return 5; break;
case 22: return 6; break;
case 23: return 3; break;
case 24: return 8; break;
case 25: return 4; break;
case 26: return 4; break;
case 27: return 5; break;
case 28: return 7; break;
case 29: return 4; break;
case 30: return 6; break;
case 31: return 5; break;
case 32: return 10; break;
case 60: return 4; break;
case 63: return 7; break;
case 9001: return 16; break;
case 9004: return 7; break;
case 33: return 3; break;
case 37: return 4; break;
case 38: return 4; break;
case 39: return 6; break;
case 40: return 3; break;
case 41: return 4; break;
case 42: return 4; break;
case 43: return 6; break;
case 44: return 3; break;
case 45: return 4; break;
case 46: return 4; break;
case 47: return 9; break;
case 48: return 11; break;
case 49: return 4; break;
case 50: return 4; break;
case 51: return 9; break;
case 52: return 11; break;
case 53: return 2; break;
case 54: return 4; break;
case 55: return 3; break;
case 56: return 3; break;
case 57: return 3; break;
case 58: return 5; break;
case 34: return 5; break;
case 36: return 4; break;
case 35: return 5; break;
case 64: return 3; break;
case 65: return 3; break;
case 66: return 3; break;
case 67: return 3; break;
case 68: return 5; break;
case 69: return 6; break;
case 70: return 3; break;
case 71: return 8; break;
case 72: return 4; break;
case 73: return 4; break;
case 74: return 5; break;
case 75: return 7; break;
case 76: return 4; break;
case 77: return 6; break;
case 78: return 5; break;
case 79: return 10; break;
case 80: return 4; break;
case 81: return 4; break;
case 82: return 6; break;
case 83: return 3; break;
case 84: return 4; break;
case 85: return 4; break;
case 86: return 9; break;
case 87: return 11; break;
case 61: return 4; break;
case 99: return 7; break;
case 9002: return 16; break;
case 91: return 5; break;
case 92: return 11; break;
case 94: return 13; break;
case 93: return 19; break;
case 95: return 4; break;
case 96: return 7; break;
case 97: return 7; break;
case 98: return 17; break;
case 1050: return 0; break;
case 1052: return 0; break;
case 1154: return 0; break;
case 1054: return 0; break;
case 1153: return 0; break;
case 1053: return 0; break;
case 1155: return 0; break;
case 1055: return 0; break;
case 1156: return 0; break;
case 1056: return 0; break;
case 1157: return 0; break;
case 1057: return 0; break;
case 1058: return 0; break;
case 1059: return 0; break;
case 1160: return 0; break;
case 1060: return 0; break;
case 1161: return 0; break;
case 1061: return 0; break;
case 1162: return 0; break;
case 1062: return 0; break;
case 1178: return 0; break;
case 1078: return 0; break;
case 1163: return 0; break;
case 1063: return 0; break;
case 1179: return 0; break;
case 1079: return 0; break;
case 1165: return 0; break;
case 1065: return 0; break;
case 1168: return 0; break;
case 1068: return 0; break;
case 1166: return 0; break;
case 1066: return 0; break;
case 1169: return 0; break;
case 1069: return 0; break;
case 1072: return 0; break;
case 1173: return 0; break;
case 1073: return 0; break;
case 1174: return 0; break;
case 1074: return 0; break;
case 1175: return 0; break;
case 1075: return 0; break;
case 1176: return 0; break;
case 1076: return 0; break;
case 1170: return 0; break;
case 1070: return 0; break;
case 1171: return 0; break;
case 1071: return 0; break;
case 1180: return 0; break;
case 1080: return 0; break;
case 1181: return 0; break;
case 1081: return 0; break;
case 1182: return 0; break;
case 1082: return 0; break;
case 1183: return 0; break;
case 1083: return 0; break;
case 1184: return 0; break;
case 1084: return 0; break;
case 1185: return 0; break;
case 1085: return 0; break;
case 1186: return 0; break;
case 1086: return 0; break;
case 1187: return 0; break;
case 1087: return 0; break;
case 1188: return 0; break;
case 1088: return 0; break;
case 1190: return 0; break;
case 1090: return 0; break;
case 1191: return 0; break;
case 1091: return 0; break;
case 1192: return 0; break;
case 1092: return 0; break;
case 1193: return 0; break;
case 1093: return 0; break;
case 1500: return 0; break;
case 1501: return 0; break;
case 1502: return 0; break;
case 1503: return 0; break;
case 1504: return 0; break;
case 1505: return 0; break;
case 1506: return 0; break;
case 1507: return 0; break;
case 1508: return 0; break;
case 1509: return 0; break;
case 1510: return 0; break;
case 1511: return 0; break;
case 1512: return 0; break;
case 1513: return 0; break;
case 1514: return 0; break;
case 1515: return 0; break;
case 1516: return 0; break;
case 1517: return 0; break;
case 1518: return 0; break;
case 1519: return 0; break;
case 1520: return 0; break;
case 1521: return 0; break;
case 1522: return 0; break;
case 1523: return 0; break;
case 1524: return 0; break;
case 1525: return 0; break;
case 1526: return 0; break;
case 1527: return 0; break;
case 1528: return 0; break;
case 1529: return 0; break;
case 1530: return 0; break;
case 1531: return 0; break;
case 1532: return 0; break;
case 1533: return 0; break;
case 1534: return 0; break;
case 1535: return 0; break;
case 1600: return 0; break;
case 1601: return 0; break;
case 1602: return 0; break;
case 1603: return 0; break;
case 1604: return 0; break;
case 1605: return 0; break;
case 1606: return 0; break;
case 1607: return 0; break;
case 1608: return 0; break;
case 1609: return 0; break;
case 1610: return 0; break;
case 1611: return 0; break;
case 1612: return 0; break;
case 1613: return 0; break;
case 1614: return 0; break;
case 1615: return 0; break;
case 1616: return 0; break;
case 1617: return 0; break;
case 1618: return 0; break;
case 1619: return 0; break;
case 1620: return 0; break;
case 1621: return 0; break;
case 1622: return 0; break;
case 1623: return 0; break;
case 1624: return 0; break;
case 1625: return 0; break;
case 1626: return 0; break;
case 1627: return 0; break;
case 1628: return 0; break;
case 1629: return 0; break;
case 1630: return 0; break;
case 1631: return 0; break;
case 1632: return 0; break;
case 1633: return 0; break;
case 1634: return 0; break;
case 1635: return 0; break;
case 1636: return 0; break;
case 1637: return 0; break;
case 1638: return 0; break;
case 1639: return 0; break;
case 1640: return 0; break;
case 1641: return 0; break;
case 1642: return 0; break;
case 1643: return 0; break;
case 1644: return 0; break;
case 1645: return 0; break;
case 1646: return 0; break;
case 1647: return 0; break;
case 1648: return 0; break;
case 1649: return 0; break;
case 1650: return 0; break;
case 1651: return 0; break;
case 1700: return 0; break;
case 1701: return 0; break;
case 1702: return 0; break;
case 1703: return 0; break;
case 1704: return 0; break;
case 1705: return 0; break;
case 1706: return 0; break;
case 1707: return 0; break;
case 1708: return 0; break;
case 1709: return 0; break;
case 1710: return 0; break;
case 1711: return 0; break;
case 1712: return 0; break;
case 1713: return 0; break;
case 1714: return 0; break;
case 1901: return 0; break;
default: return -1;
}
}

int TDdata::GetObjSY(int i)
{
switch(i)
{
case 100: return 8; break;
case 127: return 6; break;
case 124: return 7; break;
case 101: return 10; break;
case 138: return 7; break;
case 150: return 0; break;
case 144: return 9; break;
case 139: return 8; break;
case 137: return 9; break;
case 125: return 8; break;
case 126: return 9; break;
case 198: return 8; break;
case 199: return 8; break;
case 106: return 8; break;
case 104: return 8; break;
case 102: return 8; break;
case 109: return 8; break;
case 108: return 11; break;
case 103: return 8; break;
case 105: return 8; break;
case 107: return 7; break;
case 110: return 15; break;
case 112: return 5; break;
case 600: return 11; break;
case 118: return 11; break;
case 113: return 12; break;
case 114: return 11; break;
case 115: return 11; break;
case 116: return 9; break;
case 117: return 11; break;
case 119: return 11; break;
case 120: return 17; break;
case 148: return 9; break;
case 149: return 11; break;
case 141: return 7; break;
case 142: return 9; break;
case 200: return 1; break;
case 201: return 4; break;
case 202: return 4; break;
case 122: return 4; break;
case 123: return 4; break;
case 121: return 4; break;
case 203: return 2; break;
case 204: return 4; break;
case 205: return 4; break;
case 131: return 4; break;
case 134: return 4; break;
case 128: return 4; break;
case 206: return 3; break;
case 207: return 4; break;
case 208: return 4; break;
case 132: return 4; break;
case 135: return 4; break;
case 129: return 4; break;
case 209: return 3; break;
case 210: return 4; break;
case 211: return 4; break;
case 133: return 4; break;
case 136: return 4; break;
case 130: return 4; break;
case 744: return 2; break;
case 745: return 2; break;
case 746: return 1; break;
case 747: return 2; break;
case 748: return 3; break;
case 749: return 1; break;
case 500: return 2; break;
case 299: return 4; break;
case 303: return 5; break;
case 304: return 4; break;
case 313: return 3; break;
case 317: return 4; break;
case 324: return 2; break;
case 328: return 4; break;
case 339: return 3; break;
case 306: return 1; break;
case 307: return 2; break;
case 301: return 5; break;
case 310: return 4; break;
case 381: return 3; break;
case 361: return 1; break;
case 297: return 2; break;
case 331: return 5; break;
case 291: return 3; break;
case 341: return 4; break;
case 288: return 8; break;
case 337: return 4; break;
case 315: return 4; break;
case 342: return 2; break;
case 359: return 2; break;
case 380: return 3; break;
case 298: return 5; break;
case 316: return 5; break;
case 290: return 2; break;
case 353: return 3; break;
case 360: return 4; break;
case 338: return 1; break;
case 372: return 2; break;
case 293: return 4; break;
case 289: return 4; break;
case 294: return 4; break;
case 314: return 2; break;
case 368: return 3; break;
case 287: return 1; break;
case 356: return 2; break;
case 283: return 2; break;
case 278: return 2; break;
case 279: return 2; break;
case 282: return 2; break;
case 285: return 1; break;
case 286: return 2; break;
case 295: return 2; break;
case 296: return 1; break;
case 280: return 2; break;
case 281: return 3; break;
case 284: return 1; break;
case 292: return 5; break;
case 311: return 3; break;
case 333: return 5; break;
case 344: return 4; break;
case 355: return 2; break;
case 318: return 3; break;
case 319: return 3; break;
case 382: return 1; break;
case 302: return 5; break;
case 320: return 5; break;
case 323: return 5; break;
case 329: return 1; break;
case 336: return 4; break;
case 343: return 4; break;
case 374: return 4; break;
case 352: return 4; break;
case 334: return 4; break;
case 383: return 2; break;
case 384: return 1; break;
case 385: return 2; break;
case 386: return 1; break;
case 506: return 5; break;
case 508: return 4; break;
case 507: return 5; break;
case 1: return 3; break;
case 2: return 4; break;
case 3: return 3; break;
case 4: return 3; break;
case 5: return 4; break;
case 6: return 6; break;
case 7: return 8; break;
case 8: return 10; break;
case 9: return 5; break;
case 10: return 8; break;
case 11: return 5; break;
case 12: return 6; break;
case 13: return 6; break;
case 14: return 7; break;
case 15: return 5; break;
case 16: return 5; break;
case 59: return 2; break;
case 62: return 8; break;
case 9000: return 4; break;
case 9003: return 8; break;
case 17: return 3; break;
case 18: return 4; break;
case 19: return 3; break;
case 20: return 3; break;
case 21: return 4; break;
case 22: return 6; break;
case 23: return 8; break;
case 24: return 10; break;
case 25: return 5; break;
case 26: return 8; break;
case 27: return 5; break;
case 28: return 6; break;
case 29: return 6; break;
case 30: return 7; break;
case 31: return 5; break;
case 32: return 5; break;
case 60: return 2; break;
case 63: return 8; break;
case 9001: return 4; break;
case 9004: return 8; break;
case 33: return 3; break;
case 37: return 4; break;
case 38: return 4; break;
case 39: return 6; break;
case 40: return 3; break;
case 41: return 4; break;
case 42: return 4; break;
case 43: return 6; break;
case 44: return 3; break;
case 45: return 4; break;
case 46: return 4; break;
case 47: return 9; break;
case 48: return 7; break;
case 49: return 4; break;
case 50: return 4; break;
case 51: return 9; break;
case 52: return 7; break;
case 53: return 4; break;
case 54: return 3; break;
case 55: return 4; break;
case 56: return 4; break;
case 57: return 4; break;
case 58: return 6; break;
case 34: return 4; break;
case 36: return 5; break;
case 35: return 5; break;
case 64: return 3; break;
case 65: return 4; break;
case 66: return 3; break;
case 67: return 3; break;
case 68: return 4; break;
case 69: return 6; break;
case 70: return 8; break;
case 71: return 10; break;
case 72: return 5; break;
case 73: return 8; break;
case 74: return 5; break;
case 75: return 6; break;
case 76: return 6; break;
case 77: return 7; break;
case 78: return 5; break;
case 79: return 5; break;
case 80: return 4; break;
case 81: return 4; break;
case 82: return 6; break;
case 83: return 3; break;
case 84: return 4; break;
case 85: return 4; break;
case 86: return 9; break;
case 87: return 7; break;
case 61: return 2; break;
case 99: return 8; break;
case 9002: return 4; break;
case 91: return 7; break;
case 92: return 10; break;
case 94: return 13; break;
case 93: return 5; break;
case 95: return 7; break;
case 96: return 4; break;
case 97: return 5; break;
case 98: return 5; break;
case 1050: return 0; break;
case 1052: return 0; break;
case 1154: return 0; break;
case 1054: return 0; break;
case 1153: return 0; break;
case 1053: return 0; break;
case 1155: return 0; break;
case 1055: return 0; break;
case 1156: return 0; break;
case 1056: return 0; break;
case 1157: return 0; break;
case 1057: return 0; break;
case 1058: return 0; break;
case 1059: return 0; break;
case 1160: return 0; break;
case 1060: return 0; break;
case 1161: return 0; break;
case 1061: return 0; break;
case 1162: return 0; break;
case 1062: return 0; break;
case 1178: return 0; break;
case 1078: return 0; break;
case 1163: return 0; break;
case 1063: return 0; break;
case 1179: return 0; break;
case 1079: return 0; break;
case 1165: return 0; break;
case 1065: return 0; break;
case 1168: return 0; break;
case 1068: return 0; break;
case 1166: return 0; break;
case 1066: return 0; break;
case 1169: return 0; break;
case 1069: return 0; break;
case 1072: return 0; break;
case 1173: return 0; break;
case 1073: return 0; break;
case 1174: return 0; break;
case 1074: return 0; break;
case 1175: return 0; break;
case 1075: return 0; break;
case 1176: return 0; break;
case 1076: return 0; break;
case 1170: return 0; break;
case 1070: return 0; break;
case 1171: return 0; break;
case 1071: return 0; break;
case 1180: return 0; break;
case 1080: return 0; break;
case 1181: return 0; break;
case 1081: return 0; break;
case 1182: return 0; break;
case 1082: return 0; break;
case 1183: return 0; break;
case 1083: return 0; break;
case 1184: return 0; break;
case 1084: return 0; break;
case 1185: return 0; break;
case 1085: return 0; break;
case 1186: return 0; break;
case 1086: return 0; break;
case 1187: return 0; break;
case 1087: return 0; break;
case 1188: return 0; break;
case 1088: return 0; break;
case 1190: return 0; break;
case 1090: return 0; break;
case 1191: return 0; break;
case 1091: return 0; break;
case 1192: return 0; break;
case 1092: return 0; break;
case 1193: return 0; break;
case 1093: return 0; break;
case 1500: return 0; break;
case 1501: return 0; break;
case 1502: return 0; break;
case 1503: return 0; break;
case 1504: return 0; break;
case 1505: return 0; break;
case 1506: return 0; break;
case 1507: return 0; break;
case 1508: return 0; break;
case 1509: return 0; break;
case 1510: return 0; break;
case 1511: return 0; break;
case 1512: return 0; break;
case 1513: return 0; break;
case 1514: return 0; break;
case 1515: return 0; break;
case 1516: return 0; break;
case 1517: return 0; break;
case 1518: return 0; break;
case 1519: return 0; break;
case 1520: return 0; break;
case 1521: return 0; break;
case 1522: return 0; break;
case 1523: return 0; break;
case 1524: return 0; break;
case 1525: return 0; break;
case 1526: return 0; break;
case 1527: return 0; break;
case 1528: return 0; break;
case 1529: return 0; break;
case 1530: return 0; break;
case 1531: return 0; break;
case 1532: return 0; break;
case 1533: return 0; break;
case 1534: return 0; break;
case 1535: return 0; break;
case 1600: return 0; break;
case 1601: return 0; break;
case 1602: return 0; break;
case 1603: return 0; break;
case 1604: return 0; break;
case 1605: return 0; break;
case 1606: return 0; break;
case 1607: return 0; break;
case 1608: return 0; break;
case 1609: return 0; break;
case 1610: return 0; break;
case 1611: return 0; break;
case 1612: return 0; break;
case 1613: return 0; break;
case 1614: return 0; break;
case 1615: return 0; break;
case 1616: return 0; break;
case 1617: return 0; break;
case 1618: return 0; break;
case 1619: return 0; break;
case 1620: return 0; break;
case 1621: return 0; break;
case 1622: return 0; break;
case 1623: return 0; break;
case 1624: return 0; break;
case 1625: return 0; break;
case 1626: return 0; break;
case 1627: return 0; break;
case 1628: return 0; break;
case 1629: return 0; break;
case 1630: return 0; break;
case 1631: return 0; break;
case 1632: return 0; break;
case 1633: return 0; break;
case 1634: return 0; break;
case 1635: return 0; break;
case 1636: return 0; break;
case 1637: return 0; break;
case 1638: return 0; break;
case 1639: return 0; break;
case 1640: return 0; break;
case 1641: return 0; break;
case 1642: return 0; break;
case 1643: return 0; break;
case 1644: return 0; break;
case 1645: return 0; break;
case 1646: return 0; break;
case 1647: return 0; break;
case 1648: return 0; break;
case 1649: return 0; break;
case 1650: return 0; break;
case 1651: return 0; break;
case 1700: return 0; break;
case 1701: return 0; break;
case 1702: return 0; break;
case 1703: return 0; break;
case 1704: return 0; break;
case 1705: return 0; break;
case 1706: return 0; break;
case 1707: return 0; break;
case 1708: return 0; break;
case 1709: return 0; break;
case 1710: return 0; break;
case 1711: return 0; break;
case 1712: return 0; break;
case 1713: return 0; break;
case 1714: return 0; break;
case 1901: return 0; break;
default: return -1;
}
}

int TDdata::GetSkillCount(void)
{
return 69;
}

int TDdata::GetSkillId(int i)
{
switch(i)
{
case 0: return 1; break;
case 1: return 1002; break;
case 2: return 1001; break;
case 3: return 1003; break;
case 4: return 1013; break;
case 5: return 1004; break;
case 6: return 2002; break;
case 7: return 2001; break;
case 8: return 2003; break;
case 9: return 2013; break;
case 10: return 2004; break;
case 11: return 2; break;
case 12: return 11; break;
case 13: return 1005; break;
case 14: return 1007; break;
case 15: return 1006; break;
case 16: return 1008; break;
case 17: return 2005; break;
case 18: return 2007; break;
case 19: return 2006; break;
case 20: return 2008; break;
case 21: return 8; break;
case 22: return 5; break;
case 23: return 1017; break;
case 24: return 1018; break;
case 25: return 1019; break;
case 26: return 1020; break;
case 27: return 2017; break;
case 28: return 2018; break;
case 29: return 2019; break;
case 30: return 2020; break;
case 31: return 6; break;
case 32: return 10; break;
case 33: return 3; break;
case 34: return 9; break;
case 35: return 1009; break;
case 36: return 1010; break;
case 37: return 1011; break;
case 38: return 1012; break;
case 39: return 2009; break;
case 40: return 2010; break;
case 41: return 2011; break;
case 42: return 2012; break;
case 43: return 12; break;
case 44: return 3002; break;
case 45: return 7; break;
case 46: return 4; break;
case 47: return 1014; break;
case 48: return 1015; break;
case 49: return 1016; break;
case 50: return 3001; break;
case 51: return 2014; break;
case 52: return 2015; break;
case 53: return 2016; break;
case 54: return 1022; break;
case 55: return 1021; break;
case 56: return 1023; break;
case 57: return 1024; break;
case 58: return 2022; break;
case 59: return 2021; break;
case 60: return 2023; break;
case 61: return 2024; break;
case 62: return 1026; break;
case 63: return 1027; break;
case 64: return 1028; break;
case 65: return 2025; break;
case 66: return 2026; break;
case 67: return 2027; break;
case 68: return 2028; break;
default: return -1;
}
}

int TDdata::GetSkillLevels(int i)
{
switch(i)
{
case 0: return 2; break;
case 1: return 40; break;
case 2: return 40; break;
case 3: return 40; break;
case 4: return 40; break;
case 5: return 40; break;
case 6: return 40; break;
case 7: return 40; break;
case 8: return 40; break;
case 9: return 40; break;
case 10: return 50; break;
case 11: return 2; break;
case 12: return 30; break;
case 13: return 40; break;
case 14: return 40; break;
case 15: return 40; break;
case 16: return 40; break;
case 17: return 40; break;
case 18: return 40; break;
case 19: return 50; break;
case 20: return 50; break;
case 21: return 20; break;
case 22: return 2; break;
case 23: return 40; break;
case 24: return 40; break;
case 25: return 40; break;
case 26: return 40; break;
case 27: return 40; break;
case 28: return 40; break;
case 29: return 40; break;
case 30: return 40; break;
case 31: return 6; break;
case 32: return 40; break;
case 33: return 10; break;
case 34: return 20; break;
case 35: return 40; break;
case 36: return 40; break;
case 37: return 40; break;
case 38: return 40; break;
case 39: return 40; break;
case 40: return 40; break;
case 41: return 40; break;
case 42: return 50; break;
case 43: return 30; break;
case 44: return 50; break;
case 45: return 80; break;
case 46: return 10; break;
case 47: return 40; break;
case 48: return 50; break;
case 49: return 50; break;
case 50: return 40; break;
case 51: return 40; break;
case 52: return 50; break;
case 53: return 50; break;
case 54: return 40; break;
case 55: return 40; break;
case 56: return 40; break;
case 57: return 40; break;
case 58: return 40; break;
case 59: return 40; break;
case 60: return 40; break;
case 61: return 40; break;
case 62: return 40; break;
case 63: return 40; break;
case 64: return 40; break;
case 65: return 40; break;
case 66: return 40; break;
case 67: return 40; break;
case 68: return 40; break;
default: return -1;
}
}

int TDdata::GetSkillNum(int i)
{
switch(i)
{
case 1: return 0; break;
case 1002: return 1; break;
case 1001: return 2; break;
case 1003: return 3; break;
case 1013: return 4; break;
case 1004: return 5; break;
case 2002: return 6; break;
case 2001: return 7; break;
case 2003: return 8; break;
case 2013: return 9; break;
case 2004: return 10; break;
case 2: return 11; break;
case 11: return 12; break;
case 1005: return 13; break;
case 1007: return 14; break;
case 1006: return 15; break;
case 1008: return 16; break;
case 2005: return 17; break;
case 2007: return 18; break;
case 2006: return 19; break;
case 2008: return 20; break;
case 8: return 21; break;
case 5: return 22; break;
case 1017: return 23; break;
case 1018: return 24; break;
case 1019: return 25; break;
case 1020: return 26; break;
case 2017: return 27; break;
case 2018: return 28; break;
case 2019: return 29; break;
case 2020: return 30; break;
case 6: return 31; break;
case 10: return 32; break;
case 3: return 33; break;
case 9: return 34; break;
case 1009: return 35; break;
case 1010: return 36; break;
case 1011: return 37; break;
case 1012: return 38; break;
case 2009: return 39; break;
case 2010: return 40; break;
case 2011: return 41; break;
case 2012: return 42; break;
case 12: return 43; break;
case 3002: return 44; break;
case 7: return 45; break;
case 4: return 46; break;
case 1014: return 47; break;
case 1015: return 48; break;
case 1016: return 49; break;
case 3001: return 50; break;
case 2014: return 51; break;
case 2015: return 52; break;
case 2016: return 53; break;
case 1022: return 54; break;
case 1021: return 55; break;
case 1023: return 56; break;
case 1024: return 57; break;
case 2022: return 58; break;
case 2021: return 59; break;
case 2023: return 60; break;
case 2024: return 61; break;
case 1026: return 62; break;
case 1027: return 63; break;
case 1028: return 64; break;
case 2025: return 65; break;
case 2026: return 66; break;
case 2027: return 67; break;
case 2028: return 68; break;
default: return -1;
}
}

const char* TDdata::GetSkillName(int i)
{
switch(i)
{
case 0: return ""; break;
case 1: return "Бестия. Скорость движения."; break;
case 2: return "Мародер. Скорость движения."; break;
case 3: return "Головорез. Скорость движения."; break;
case 4: return "Аэростат. Скорость движения."; break;
case 5: return "Флибустьер. Скорость движения."; break;
case 6: return "Бестия. Время строительства."; break;
case 7: return "Мародер. Время строительства."; break;
case 8: return "Головорез. Время строительства."; break;
case 9: return "Аэростат. Время строительства."; break;
case 10: return "Флибустьер. Время строительства."; break;
case 11: return ""; break;
case 12: return ""; break;
case 13: return "Гренадер. Скорость движения."; break;
case 14: return "Кирасир. Скорость движения."; break;
case 15: return "Бомбардир. Скорость движения."; break;
case 16: return "Канонир. Скорость движения."; break;
case 17: return "Гренадер. Время строительства."; break;
case 18: return "Кирасир. Время строительства."; break;
case 19: return "Бомбардир. Время строительства."; break;
case 20: return "Канонир. Время строительства."; break;
case 21: return ""; break;
case 22: return ""; break;
case 23: return "Дикая кошка. Скорость движения."; break;
case 24: return "Сорвиголова. Скорость движения."; break;
case 25: return "Кобуксон. Скорость движения."; break;
case 26: return "Джонка. Скорость движения."; break;
case 27: return "Дикая кошка. Время строительства."; break;
case 28: return "Сорвиголова. Время строительства."; break;
case 29: return "Кобуксон. Время строительства."; break;
case 30: return "Джонка. Время строительства."; break;
case 31: return ""; break;
case 32: return ""; break;
case 33: return ""; break;
case 34: return ""; break;
case 35: return "Шлюпка. Скорость движения."; break;
case 36: return "Бригантина. Скорость движения."; break;
case 37: return "Галеон. Скорость движения."; break;
case 38: return "Фрегат. Скорость движения."; break;
case 39: return "Шлюпка. Время строительства."; break;
case 40: return "Бригантина. Время строительства."; break;
case 41: return "Галеон. Время строительства."; break;
case 42: return "Фрегат. Время строительства."; break;
case 43: return ""; break;
case 44: return ""; break;
case 45: return ""; break;
case 46: return ""; break;
case 47: return "Подлодка. Скорость движения."; break;
case 48: return "Линкор. Скорость движения."; break;
case 49: return "Джаггернаут. Скорость движения."; break;
case 50: return ""; break;
case 51: return "Подлодка. Время строительства."; break;
case 52: return "Линкор. Время строительства."; break;
case 53: return "Джаггернаут. Время строительства."; break;
case 54: return "Подрывница. Скорость движения."; break;
case 55: return "Морпех. Скорость движения."; break;
case 56: return "Люгер. Скорость движения."; break;
case 57: return "Шхуна. Скорость движения."; break;
case 58: return "Подрывница. Время строительства."; break;
case 59: return "Морпех. Время строительства."; break;
case 60: return "Люгер. Время строительства."; break;
case 61: return "Шхуна. Время строительства."; break;
case 62: return "Подлодка \"Наутилус\". Скорость движения."; break;
case 63: return "Разведчик \"Винтокрыл\". Скорость движения."; break;
case 64: return "\"Шторм\". Скорость движения."; break;
case 65: return "Разведчик \"Цеппелин\". Время строительства."; break;
case 66: return "Подлодка \"Наутилус\". Время строительства."; break;
case 67: return "Разведчик \"Винтокрыл\". Время строительства."; break;
case 68: return "\"Шторм\". Время строительства."; break;
default: return "Название не установлено";
}
}

const char* TDdata::GetSkillDem(int i)
{
switch(i)
{
case 1: return "[{\"id\":1,\"level\":2}]"; break;
case 2: return "[{\"id\":1002,\"level\":8}]"; break;
case 3: return "[{\"id\":1001,\"level\":8}]"; break;
case 4: return "[{\"id\":1003,\"level\":8}]"; break;
case 5: return "[{\"id\":1013,\"level\":8}]"; break;
case 6: return "[{\"id\":1004,\"level\":8}]"; break;
case 7: return "[{\"id\":2002,\"level\":10}]"; break;
case 8: return "[{\"id\":2001,\"level\":10}]"; break;
case 9: return "[{\"id\":2003,\"level\":10}]"; break;
case 10: return "[{\"id\":2013,\"level\":10}]"; break;
case 11: return "[{\"id\":1004,\"level\":8}]"; break;
case 12: return "[{\"id\":2,\"level\":2}]"; break;
case 13: return "[{\"id\":2,\"level\":2}]"; break;
case 14: return "[{\"id\":1005,\"level\":8}]"; break;
case 15: return "[{\"id\":1007,\"level\":8}]"; break;
case 16: return "[{\"id\":1006,\"level\":8}]"; break;
case 17: return "[{\"id\":1008,\"level\":8}]"; break;
case 18: return "[{\"id\":2005,\"level\":10}]"; break;
case 19: return "[{\"id\":2007,\"level\":10}]"; break;
case 20: return "[{\"id\":2006,\"level\":10}]"; break;
case 21: return "[{\"id\":1008,\"level\":8}]"; break;
case 22: return "[{\"id\":1008,\"level\":8}]"; break;
case 23: return "[{\"id\":5,\"level\":2}]"; break;
case 24: return "[{\"id\":1017,\"level\":2}]"; break;
case 25: return "[{\"id\":1018,\"level\":2}]"; break;
case 26: return "[{\"id\":1019,\"level\":2}]"; break;
case 27: return "[{\"id\":5,\"level\":2}]"; break;
case 28: return "[{\"id\":2017,\"level\":2}]"; break;
case 29: return "[{\"id\":2018,\"level\":2}]"; break;
case 30: return "[{\"id\":2019,\"level\":2}]"; break;
case 31: return "[{\"id\":5,\"level\":2}]"; break;
case 32: return "[{\"id\":6,\"level\":6}]"; break;
case 33: return "[{\"id\":6,\"level\":6}]"; break;
case 34: return "[{\"id\":3,\"level\":10}]"; break;
case 35: return "[{\"id\":3,\"level\":10}]"; break;
case 36: return "[{\"id\":1009,\"level\":10}]"; break;
case 37: return "[{\"id\":1010,\"level\":10}]"; break;
case 38: return "[{\"id\":1011,\"level\":10}]"; break;
case 39: return "[{\"id\":1012,\"level\":10}]"; break;
case 40: return "[{\"id\":2009,\"level\":10}]"; break;
case 41: return "[{\"id\":2010,\"level\":10}]"; break;
case 42: return "[{\"id\":2011,\"level\":10}]"; break;
case 43: return "[{\"id\":1012,\"level\":10}]"; break;
case 44: return "[{\"id\":1012,\"level\":10}]"; break;
case 45: return "[{\"id\":1012,\"level\":10}]"; break;
case 46: return "[{\"id\":1012,\"level\":10}]"; break;
case 47: return "[{\"id\":4,\"level\":10}]"; break;
case 48: return "[{\"id\":1014,\"level\":10}]"; break;
case 49: return "[{\"id\":1015,\"level\":10}]"; break;
case 50: return "[{\"id\":1012,\"level\":10}]"; break;
case 51: return "[{\"id\":4,\"level\":10}]"; break;
case 52: return "[{\"id\":2014,\"level\":10}]"; break;
case 53: return "[{\"id\":2015,\"level\":10}]"; break;
case 54: return "[{\"id\":6,\"level\":6}]"; break;
case 55: return "[{\"id\":1022,\"level\":8}]"; break;
case 56: return "[{\"id\":1021,\"level\":8}]"; break;
case 57: return "[{\"id\":1023,\"level\":8},{\"id\":4,\"level\":10}]"; break;
case 58: return "[{\"id\":6,\"level\":6}]"; break;
case 59: return "[{\"id\":2022,\"level\":8}]"; break;
case 60: return "[{\"id\":2021,\"level\":8}]"; break;
case 61: return "[{\"id\":2023,\"level\":8},{\"id\":4,\"level\":10}]"; break;
case 62: return "[{\"id\":1014,\"level\":10}]"; break;
case 63: return "[{\"id\":2025,\"level\":10}]"; break;
case 64: return "[{\"id\":1014,\"level\":10}]"; break;
case 65: return "[{\"id\":6,\"level\":6}]"; break;
case 66: return "[{\"id\":2014,\"level\":10}]"; break;
case 67: return "[{\"id\":1027,\"level\":10}]"; break;
case 68: return "[{\"id\":2014,\"level\":10}]"; break;
default: return "[]";
}
}

const char* TDdata::GetSkillImage(int i)
{
switch(i)
{
case 0: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/1.png"; break;
case 1: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/2_s.png"; break;
case 2: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/1_s.png"; break;
case 3: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/3_s.png"; break;
case 4: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/13_s.png"; break;
case 5: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/4_s.png"; break;
case 6: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/2_c.png"; break;
case 7: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/1_c.png"; break;
case 8: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/3_c.png"; break;
case 9: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/13_c.png"; break;
case 10: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/4_c.png"; break;
case 11: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/2.png"; break;
case 12: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/robots.png"; break;
case 13: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/5_s.png"; break;
case 14: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/7_s.png"; break;
case 15: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/6_s.png"; break;
case 16: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/8_s.png"; break;
case 17: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/5_c.png"; break;
case 18: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/7_c.png"; break;
case 19: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/6_c.png"; break;
case 20: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/8_c.png"; break;
case 21: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/technology.png"; break;
case 22: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/5.png"; break;
case 23: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/17_s.png"; break;
case 24: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/18_s.png"; break;
case 25: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/19_s.png"; break;
case 26: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/20_s.png"; break;
case 27: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/17_c.png"; break;
case 28: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/18_c.png"; break;
case 29: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/19_c.png"; break;
case 30: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/20_c.png"; break;
case 31: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/6.png"; break;
case 32: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/ciborg.png"; break;
case 33: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/3.png"; break;
case 34: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/technology.png"; break;
case 35: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/9_s.png"; break;
case 36: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/10_s.png"; break;
case 37: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/11_s.png"; break;
case 38: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/12_s.png"; break;
case 39: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/9_c.png"; break;
case 40: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/10_c.png"; break;
case 41: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/11_c.png"; break;
case 42: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/12_c.png"; break;
case 43: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/location.png"; break;
case 44: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/mutation.png"; break;
case 45: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/1_r.png"; break;
case 46: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/4.png"; break;
case 47: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/14_s.png"; break;
case 48: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/15_s.png"; break;
case 49: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/16_s.png"; break;
case 50: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/points.png"; break;
case 51: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/14_c.png"; break;
case 52: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/15_c.png"; break;
case 53: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/16_c.png"; break;
case 54: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/22_s.png"; break;
case 55: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/21_s.png"; break;
case 56: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/23_s.png"; break;
case 57: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/24_s.png"; break;
case 58: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/22_c.png"; break;
case 59: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/21_c.png"; break;
case 60: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/23_c.png"; break;
case 61: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/24_c.png"; break;
case 62: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/26_s.png"; break;
case 63: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/27_s.png"; break;
case 64: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/28_s.png"; break;
case 65: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/25_c.png"; break;
case 66: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/26_c.png"; break;
case 67: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/27_c.png"; break;
case 68: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/28_c.png"; break;
default: return "";
}
}



