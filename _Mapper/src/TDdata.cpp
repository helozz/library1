
//=====================================================================================================================================
//	public class TDdata for C++
//	=== "War of Thrones" edition ===
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


#include "/home/helga/Рабочий стол/projects/_Mapper/include/TDdata.h"
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
case 100: return "Ратуша"; break;
case 127: return "Тайный Совет"; break;
case 124: return "Рынок"; break;
case 101: return "Посольство"; break;
case 150: return "Подземелье"; break;
case 144: return "Обелиск"; break;
case 137: return "Палата лордов"; break;
case 138: return "Орлиное гнездо"; break;
case 125: return "Гильдия воров"; break;
case 126: return "Стоянка караванов"; break;
case 198: return "Лагерь"; break;
case 199: return "Залежи руды"; break;
case 106: return "Ферма"; break;
case 104: return "Рудник"; break;
case 102: return "Жилище"; break;
case 109: return "Амбар"; break;
case 108: return "Склад"; break;
case 103: return "Инквизиция"; break;
case 105: return "Кузница"; break;
case 107: return "Источник"; break;
case 110: return "Цитадель"; break;
case 112: return "Сторожевой пост"; break;
case 600: return "Cклеп"; break;
case 113: return "Казарма"; break;
case 118: return "Дворец теней"; break;
case 114: return "Рыцарский орден"; break;
case 115: return "Лига всадников"; break;
case 116: return "Магистрат"; break;
case 117: return "Темная башня"; break;
case 119: return "Логово дракона"; break;
case 120: return "Теневой рынок"; break;
case 141: return "Оружейная"; break;
case 200: return "Стена ур. 1"; break;
case 201: return "Башня ур. 1"; break;
case 202: return "Ворота ур. 1"; break;
case 122: return "Баллиста ур. 1"; break;
case 123: return "Катапульта ур. 1"; break;
case 121: return "Хранитель ур. 1"; break;
case 203: return "Стена ур. 2"; break;
case 204: return "Башня ур. 2"; break;
case 205: return "Ворота ур. 2"; break;
case 131: return "Баллиста ур. 2"; break;
case 134: return "Катапульта ур. 2"; break;
case 128: return "Хранитель ур. 2"; break;
case 206: return "Стена ур. 3"; break;
case 207: return "Башня ур. 3"; break;
case 208: return "Ворота ур. 3"; break;
case 132: return "Баллиста ур. 3"; break;
case 135: return "Катапульта ур. 3"; break;
case 129: return "Хранитель ур. 3"; break;
case 209: return "Стена ур. 4"; break;
case 210: return "Башня ур. 4"; break;
case 211: return "Ворота ур. 4"; break;
case 133: return "Баллиста ур. 4"; break;
case 136: return "Катапульта ур. 4"; break;
case 130: return "Хранитель ур. 4"; break;
case 500: return "Дорога"; break;
case 280: return "Алтарь Кошмаров"; break;
case 281: return "Драконий фонтан"; break;
case 282: return "Саркофаг наездника"; break;
case 283: return "Памятник Эйр"; break;
case 284: return "Обелиск Фарвола"; break;
case 285: return "Каменная стена"; break;
case 286: return "Каменная опора"; break;
case 287: return "Частокол"; break;
case 288: return "Дозорный пункт"; break;
case 289: return "Деревянная опора"; break;
case 290: return "Городская стража"; break;
case 291: return "Стражник"; break;
case 292: return "Имперский легион"; break;
case 293: return "Легионер"; break;
case 294: return "Имперские лучники"; break;
case 301: return "Центурион"; break;
case 302: return "Знак Веора"; break;
case 295: return "Благородное дерево"; break;
case 296: return "Благородный куст"; break;
case 297: return "Пингвокин"; break;
case 298: return "Боливар"; break;
case 299: return "Телега торговца"; break;
case 300: return "Ящики"; break;
case 303: return "Светоч"; break;
case 304: return "Факел"; break;
case 305: return "Тюремный факел"; break;
case 306: return "Орочий факел"; break;
case 307: return "Шатёр шэйда"; break;
case 308: return "Грабитель караванов"; break;
case 309: return "Алтарь Света"; break;
case 509: return "Саркофаг"; break;
case 744: return "Сундук Валентина"; break;
case 745: return "Фонтан желаний"; break;
case 746: return "Любовное зелье"; break;
case 747: return "Флаг Афродиты"; break;
case 748: return "Риф Амура"; break;
case 749: return "Корзина цветов"; break;
case 750: return "Огонь страсти"; break;
case 751: return "Фонтан сердец"; break;
case 752: return "Хранитель гармонии"; break;
case 753: return "Стражи любви"; break;
case 754: return "Книга заклинаний"; break;
case 506: return "Бессмертные"; break;
case 507: return "Крестоносцы"; break;
case 508: return "Тёмный рыцарь"; break;
case 510: return "Красный дракон"; break;
case 511: return "Гидра"; break;
case 512: return "Великан"; break;
case 1: return "Копейщик"; break;
case 2: return "Лучница"; break;
case 3: return "Гном"; break;
case 4: return "Паладин"; break;
case 5: return "Кочевница"; break;
case 6: return "Рыцарь"; break;
case 7: return "Варвар"; break;
case 8: return "Грандлорд"; break;
case 9: return "Голем"; break;
case 10: return "Чернокнижник"; break;
case 11: return "Демон"; break;
case 12: return "Некромант"; break;
case 13: return "Шпион"; break;
case 14: return "Грифон"; break;
case 15: return "Виверна"; break;
case 16: return "Дракон"; break;
case 17: return "Имперский Копейщик"; break;
case 18: return "Имперская Лучница"; break;
case 19: return "Имперский Гном"; break;
case 20: return "Имперский Паладин"; break;
case 21: return "Имперская Кочевница"; break;
case 22: return "Имперский Рыцарь"; break;
case 23: return "Имперский Варвар"; break;
case 24: return "Имперский Грандлорд"; break;
case 25: return "Имперский Голем"; break;
case 26: return "Имперский Чернокнижник"; break;
case 27: return "Имперский Демон"; break;
case 28: return "Имперский Некромант"; break;
case 29: return "Имперский Шпион"; break;
case 30: return "Имперский Грифон"; break;
case 31: return "Имперская Виверна"; break;
case 32: return "Имперский Дракон"; break;
case 33: return "Нежить"; break;
case 37: return "Арбалетчик"; break;
case 38: return "Всадник"; break;
case 39: return "Патриарх"; break;
case 40: return "Баллиста"; break;
case 41: return "Имперский Арбалетчик"; break;
case 42: return "Имперский Всадник"; break;
case 43: return "Имперский Патриарх"; break;
case 44: return "Имперская Баллиста"; break;
case 53: return "Орк"; break;
case 54: return "Рейдер"; break;
case 55: return "Людоед"; break;
case 56: return "Кошмар"; break;
case 34: return "Бессмертные"; break;
case 35: return "Крестоносцы"; break;
case 36: return "Тёмный рыцарь"; break;
case 88: return "Красный дракон"; break;
case 89: return "Гидра"; break;
case 90: return "Великан"; break;
case 64: return "Темный Копейщик"; break;
case 65: return "Темная Лучница"; break;
case 66: return "Темный Гном"; break;
case 67: return "Темный Паладин"; break;
case 68: return "Темная Кочевница"; break;
case 69: return "Темный Рыцарь"; break;
case 70: return "Темный Варвар"; break;
case 71: return "Темный Грандлорд"; break;
case 72: return "Темный Голем"; break;
case 73: return "Темный Чернокнижник"; break;
case 74: return "Темный Демон"; break;
case 75: return "Темный Некромант"; break;
case 76: return "Темный Шпион"; break;
case 77: return "Темный Грифон"; break;
case 78: return "Темная Виверна"; break;
case 79: return "Темный Дракон"; break;
case 80: return "Темный Арбалетчик"; break;
case 81: return "Темный Всадник"; break;
case 82: return "Темный Патриарх"; break;
case 83: return "Темная Баллиста"; break;
case 1050: return "Военное дело"; break;
case 1052: return "Торговля"; break;
case 1154: return "Элемент для Контрабанда"; break;
case 1054: return "Контрабанда"; break;
case 1153: return "Элемент для Путешествия"; break;
case 1053: return "Путешествия"; break;
case 1155: return "Элемент для Живая вода"; break;
case 1055: return "Живая вода"; break;
case 1156: return "Элемент для Наследие Брана"; break;
case 1056: return "Наследие Брана"; break;
case 1157: return "Элемент для Огонь Эльдура"; break;
case 1057: return "Огонь Эльдура"; break;
case 1058: return "Имперская сталь"; break;
case 1059: return "Составной лук"; break;
case 1160: return "Элемент для Альянс гномов"; break;
case 1060: return "Альянс гномов"; break;
case 1161: return "Элемент для Клинки Асгарда"; break;
case 1061: return "Клинки Асгарда"; break;
case 1162: return "Элемент для  Кавалерия"; break;
case 1062: return "Кавалерия"; break;
case 1178: return "Элемент для Кодекс Чести"; break;
case 1078: return "Кодекс Чести"; break;
case 1163: return "Элемент для Союз племен"; break;
case 1063: return "Союз племен"; break;
case 1179: return "Элемент для Доспехи Хаоса"; break;
case 1079: return "Доспехи Хаоса"; break;
case 1165: return "Элемент для Оккультизм"; break;
case 1065: return "Оккультизм"; break;
case 1168: return "Элемент для Лезвие тьмы"; break;
case 1068: return "Лезвие тьмы"; break;
case 1166: return "Элемент для Сердце демона"; break;
case 1066: return "Сердце демона"; break;
case 1169: return "Элемент для Некромантия"; break;
case 1069: return "Некромантия"; break;
case 1072: return "Фортификация 1 ур."; break;
case 1173: return "Элемент для Фортификация 2 ур."; break;
case 1073: return "Фортификация 2 ур."; break;
case 1174: return "Элемент для Фортификация 3 ур."; break;
case 1074: return "Фортификация 3 ур."; break;
case 1175: return "Элемент для Фортификация 4 ур."; break;
case 1075: return "Фортификация 4 ур."; break;
case 1176: return "Элемент для Плащ теней"; break;
case 1076: return "Плащ теней"; break;
case 1170: return "Элемент для Амулет грифона"; break;
case 1070: return "Амулет грифона"; break;
case 1171: return "Элемент для Кровь виверны"; break;
case 1071: return "Кровь виверны"; break;
case 1180: return "Элемент для Яйцо дракона"; break;
case 1080: return "Яйцо дракона"; break;
case 1181: return "Элемент для Стальное солнце"; break;
case 1081: return "Стальное солнце"; break;
case 1182: return "Элемент для Сбруя Веора"; break;
case 1082: return "Сбруя Веора"; break;
case 1183: return "Элемент для Посох патриарха"; break;
case 1083: return "Посох патриарха"; break;
case 1184: return "Элемент для Чертежи Дарина"; break;
case 1084: return "Чертежи Дарина"; break;
case 1500: return "Капли гнева"; break;
case 1501: return "Знак ярости"; break;
case 1502: return "Напиток силы"; break;
case 1503: return "Шлем варвара"; break;
case 1504: return "Посох Стимула"; break;
case 1505: return "Маска Берсерка"; break;
case 1506: return "Эльфийское копье"; break;
case 1507: return "Живодер"; break;
case 1508: return "Слезы Эйр"; break;
case 1509: return "Походная кузница"; break;
case 1510: return "Горн капитана"; break;
case 1511: return "Муравьиный бог"; break;
case 1512: return "Железный венец"; break;
case 1513: return "Знамя Вейона"; break;
case 1514: return "Золотая аквила"; break;
case 1515: return "Штандарт Рана"; break;
case 1516: return "Пламя Эльдура"; break;
case 1517: return "Тяжелая Сбруя"; break;
case 1518: return "Зелье Берна"; break;
case 1519: return "Сапоги мертвеца"; break;
case 1520: return "Эль Чернотопья"; break;
case 1521: return "Маска ужаса"; break;
case 1522: return "Крыло Нефилима"; break;
case 1523: return "Шип Левайна"; break;
case 1524: return "Лезвие Хроноса"; break;
case 1525: return "Пожинатель Бури"; break;
case 1526: return "Стрелы Вейона"; break;
case 1527: return "Шлем Брана"; break;
case 1528: return "Медовое зелье"; break;
case 1529: return "Меч Ульриха"; break;
case 1530: return "Знак стойкости"; break;
case 1531: return "Око Ловара"; break;
case 1532: return "Длань Брана"; break;
case 1533: return "Крылья Брана"; break;
case 1534: return "Кровь ночи"; break;
case 1535: return "Морте"; break;
case 1536: return "Стрелы Даны"; break;
case 1537: return "Бездонная сумка"; break;
case 1538: return "План мобилизации"; break;
case 1539: return "Крылья мщения"; break;
case 1540: return "Черное солнце"; break;
case 1541: return "Стальной клюв"; break;
case 1600: return "Подвеска осторожности"; break;
case 1601: return "Наплечник чести"; break;
case 1602: return "Кованый сапог"; break;
case 1603: return "Глаз виверны"; break;
case 1604: return "Чертополох"; break;
case 1605: return "Рунический страж"; break;
case 1606: return "Эльфийская кольчуга"; break;
case 1607: return "Штандарт снайпера"; break;
case 1608: return "Мифриловые наручи"; break;
case 1609: return "Стальная борода"; break;
case 1610: return "Щит конунга"; break;
case 1611: return "Походная пивоварня"; break;
case 1612: return "Рог Балина"; break;
case 1613: return "Шпоры Оберона"; break;
case 1614: return "Кавалерийский щит"; break;
case 1615: return "Оберег Даны"; break;
case 1616: return "Шкура медвежутя"; break;
case 1617: return "Броня Хана"; break;
case 1618: return "Кость Рана"; break;
case 1619: return "След Аскара"; break;
case 1620: return "Печать Мары"; break;
case 1621: return "Кольцо Владыки"; break;
case 1622: return "Дух Огня"; break;
case 1623: return "Маска Безликих"; break;
case 1624: return "Око Хаоса"; break;
case 1625: return "Стальное перо"; break;
case 1626: return "Игла"; break;
case 1627: return "Панцирь дракона"; break;
case 1628: return "Плеть Хаоса"; break;
case 1629: return "Броня Шред-Дара"; break;
case 1630: return "Подкова Ловара"; break;
case 1631: return "Мел Судьбы"; break;
case 1632: return "Роллштайн"; break;
case 1633: return "Сапоги Первопроходца"; break;
case 1634: return "Светоч Гор"; break;
case 1635: return "Коготь Ловара"; break;
case 1636: return "Безмолвие"; break;
case 1637: return "Жидкий огонь"; break;
case 1638: return "Череп тролля"; break;
case 1639: return "Настойка Саламандры"; break;
case 1640: return "Оберег Хельд"; break;
case 1641: return "Кристалл мощи"; break;
case 1642: return "Плащ Доминатора"; break;
case 1643: return "Шатер Хана"; break;
case 1644: return "Свет Даны"; break;
case 1645: return "Крыло Смерти"; break;
case 1646: return "Владыка неба"; break;
case 1647: return "Реторта Аль-Хазреда"; break;
case 1648: return "Ядовитый коготь"; break;
case 1700: return "Клещи Сталевара"; break;
case 1701: return "Плавильня Брана"; break;
case 1702: return "Шляпа Лепрекона"; break;
case 1703: return "Кирка Стэханов"; break;
case 1704: return "Топор Мясника"; break;
case 1705: return "Пряности Ловара"; break;
case 1706: return "Дух Сои"; break;
case 1707: return "Горшок Ловара"; break;
case 1708: return "Сабля Че-Пая"; break;
case 1709: return "Рог Изобилия"; break;
case 1710: return "Журнал Магистра"; break;
case 1711: return "Конспекты Мерлина"; break;
case 1712: return "Железная Дева"; break;
case 1713: return "Идол Веора"; break;
case 1714: return "Сеть Хельд"; break;
default: return "Название не установлено";
}
}

int TDdata::GetItemId(const char* i)
{
if (strcmp(i,"Ратуша")==0) return 100;
if (strcmp(i,"Тайный Совет")==0) return 127;
if (strcmp(i,"Рынок")==0) return 124;
if (strcmp(i,"Посольство")==0) return 101;
if (strcmp(i,"Подземелье")==0) return 150;
if (strcmp(i,"Обелиск")==0) return 144;
if (strcmp(i,"Палата лордов")==0) return 137;
if (strcmp(i,"Орлиное гнездо")==0) return 138;
if (strcmp(i,"Гильдия воров")==0) return 125;
if (strcmp(i,"Стоянка караванов")==0) return 126;
if (strcmp(i,"Лагерь")==0) return 198;
if (strcmp(i,"Залежи руды")==0) return 199;
if (strcmp(i,"Ферма")==0) return 106;
if (strcmp(i,"Рудник")==0) return 104;
if (strcmp(i,"Жилище")==0) return 102;
if (strcmp(i,"Амбар")==0) return 109;
if (strcmp(i,"Склад")==0) return 108;
if (strcmp(i,"Инквизиция")==0) return 103;
if (strcmp(i,"Кузница")==0) return 105;
if (strcmp(i,"Источник")==0) return 107;
if (strcmp(i,"Цитадель")==0) return 110;
if (strcmp(i,"Сторожевой пост")==0) return 112;
if (strcmp(i,"Cклеп")==0) return 600;
if (strcmp(i,"Казарма")==0) return 113;
if (strcmp(i,"Дворец теней")==0) return 118;
if (strcmp(i,"Рыцарский орден")==0) return 114;
if (strcmp(i,"Лига всадников")==0) return 115;
if (strcmp(i,"Магистрат")==0) return 116;
if (strcmp(i,"Темная башня")==0) return 117;
if (strcmp(i,"Логово дракона")==0) return 119;
if (strcmp(i,"Теневой рынок")==0) return 120;
if (strcmp(i,"Оружейная")==0) return 141;
if (strcmp(i,"Стена ур. 1")==0) return 200;
if (strcmp(i,"Башня ур. 1")==0) return 201;
if (strcmp(i,"Ворота ур. 1")==0) return 202;
if (strcmp(i,"Баллиста ур. 1")==0) return 122;
if (strcmp(i,"Катапульта ур. 1")==0) return 123;
if (strcmp(i,"Хранитель ур. 1")==0) return 121;
if (strcmp(i,"Стена ур. 2")==0) return 203;
if (strcmp(i,"Башня ур. 2")==0) return 204;
if (strcmp(i,"Ворота ур. 2")==0) return 205;
if (strcmp(i,"Баллиста ур. 2")==0) return 131;
if (strcmp(i,"Катапульта ур. 2")==0) return 134;
if (strcmp(i,"Хранитель ур. 2")==0) return 128;
if (strcmp(i,"Стена ур. 3")==0) return 206;
if (strcmp(i,"Башня ур. 3")==0) return 207;
if (strcmp(i,"Ворота ур. 3")==0) return 208;
if (strcmp(i,"Баллиста ур. 3")==0) return 132;
if (strcmp(i,"Катапульта ур. 3")==0) return 135;
if (strcmp(i,"Хранитель ур. 3")==0) return 129;
if (strcmp(i,"Стена ур. 4")==0) return 209;
if (strcmp(i,"Башня ур. 4")==0) return 210;
if (strcmp(i,"Ворота ур. 4")==0) return 211;
if (strcmp(i,"Баллиста ур. 4")==0) return 133;
if (strcmp(i,"Катапульта ур. 4")==0) return 136;
if (strcmp(i,"Хранитель ур. 4")==0) return 130;
if (strcmp(i,"Дорога")==0) return 500;
if (strcmp(i,"Алтарь Кошмаров")==0) return 280;
if (strcmp(i,"Драконий фонтан")==0) return 281;
if (strcmp(i,"Саркофаг наездника")==0) return 282;
if (strcmp(i,"Памятник Эйр")==0) return 283;
if (strcmp(i,"Обелиск Фарвола")==0) return 284;
if (strcmp(i,"Каменная стена")==0) return 285;
if (strcmp(i,"Каменная опора")==0) return 286;
if (strcmp(i,"Частокол")==0) return 287;
if (strcmp(i,"Дозорный пункт")==0) return 288;
if (strcmp(i,"Деревянная опора")==0) return 289;
if (strcmp(i,"Городская стража")==0) return 290;
if (strcmp(i,"Стражник")==0) return 291;
if (strcmp(i,"Имперский легион")==0) return 292;
if (strcmp(i,"Легионер")==0) return 293;
if (strcmp(i,"Имперские лучники")==0) return 294;
if (strcmp(i,"Центурион")==0) return 301;
if (strcmp(i,"Знак Веора")==0) return 302;
if (strcmp(i,"Благородное дерево")==0) return 295;
if (strcmp(i,"Благородный куст")==0) return 296;
if (strcmp(i,"Пингвокин")==0) return 297;
if (strcmp(i,"Боливар")==0) return 298;
if (strcmp(i,"Телега торговца")==0) return 299;
if (strcmp(i,"Ящики")==0) return 300;
if (strcmp(i,"Светоч")==0) return 303;
if (strcmp(i,"Факел")==0) return 304;
if (strcmp(i,"Тюремный факел")==0) return 305;
if (strcmp(i,"Орочий факел")==0) return 306;
if (strcmp(i,"Шатёр шэйда")==0) return 307;
if (strcmp(i,"Грабитель караванов")==0) return 308;
if (strcmp(i,"Алтарь Света")==0) return 309;
if (strcmp(i,"Саркофаг")==0) return 509;
if (strcmp(i,"Сундук Валентина")==0) return 744;
if (strcmp(i,"Фонтан желаний")==0) return 745;
if (strcmp(i,"Любовное зелье")==0) return 746;
if (strcmp(i,"Флаг Афродиты")==0) return 747;
if (strcmp(i,"Риф Амура")==0) return 748;
if (strcmp(i,"Корзина цветов")==0) return 749;
if (strcmp(i,"Огонь страсти")==0) return 750;
if (strcmp(i,"Фонтан сердец")==0) return 751;
if (strcmp(i,"Хранитель гармонии")==0) return 752;
if (strcmp(i,"Стражи любви")==0) return 753;
if (strcmp(i,"Книга заклинаний")==0) return 754;
if (strcmp(i,"Бессмертные")==0) return 506;
if (strcmp(i,"Крестоносцы")==0) return 507;
if (strcmp(i,"Тёмный рыцарь")==0) return 508;
if (strcmp(i,"Красный дракон")==0) return 510;
if (strcmp(i,"Гидра")==0) return 511;
if (strcmp(i,"Великан")==0) return 512;
if (strcmp(i,"Копейщик")==0) return 1;
if (strcmp(i,"Лучница")==0) return 2;
if (strcmp(i,"Гном")==0) return 3;
if (strcmp(i,"Паладин")==0) return 4;
if (strcmp(i,"Кочевница")==0) return 5;
if (strcmp(i,"Рыцарь")==0) return 6;
if (strcmp(i,"Варвар")==0) return 7;
if (strcmp(i,"Грандлорд")==0) return 8;
if (strcmp(i,"Голем")==0) return 9;
if (strcmp(i,"Чернокнижник")==0) return 10;
if (strcmp(i,"Демон")==0) return 11;
if (strcmp(i,"Некромант")==0) return 12;
if (strcmp(i,"Шпион")==0) return 13;
if (strcmp(i,"Грифон")==0) return 14;
if (strcmp(i,"Виверна")==0) return 15;
if (strcmp(i,"Дракон")==0) return 16;
if (strcmp(i,"Имперский Копейщик")==0) return 17;
if (strcmp(i,"Имперская Лучница")==0) return 18;
if (strcmp(i,"Имперский Гном")==0) return 19;
if (strcmp(i,"Имперский Паладин")==0) return 20;
if (strcmp(i,"Имперская Кочевница")==0) return 21;
if (strcmp(i,"Имперский Рыцарь")==0) return 22;
if (strcmp(i,"Имперский Варвар")==0) return 23;
if (strcmp(i,"Имперский Грандлорд")==0) return 24;
if (strcmp(i,"Имперский Голем")==0) return 25;
if (strcmp(i,"Имперский Чернокнижник")==0) return 26;
if (strcmp(i,"Имперский Демон")==0) return 27;
if (strcmp(i,"Имперский Некромант")==0) return 28;
if (strcmp(i,"Имперский Шпион")==0) return 29;
if (strcmp(i,"Имперский Грифон")==0) return 30;
if (strcmp(i,"Имперская Виверна")==0) return 31;
if (strcmp(i,"Имперский Дракон")==0) return 32;
if (strcmp(i,"Нежить")==0) return 33;
if (strcmp(i,"Арбалетчик")==0) return 37;
if (strcmp(i,"Всадник")==0) return 38;
if (strcmp(i,"Патриарх")==0) return 39;
if (strcmp(i,"Баллиста")==0) return 40;
if (strcmp(i,"Имперский Арбалетчик")==0) return 41;
if (strcmp(i,"Имперский Всадник")==0) return 42;
if (strcmp(i,"Имперский Патриарх")==0) return 43;
if (strcmp(i,"Имперская Баллиста")==0) return 44;
if (strcmp(i,"Орк")==0) return 53;
if (strcmp(i,"Рейдер")==0) return 54;
if (strcmp(i,"Людоед")==0) return 55;
if (strcmp(i,"Кошмар")==0) return 56;
if (strcmp(i,"Бессмертные")==0) return 34;
if (strcmp(i,"Крестоносцы")==0) return 35;
if (strcmp(i,"Тёмный рыцарь")==0) return 36;
if (strcmp(i,"Красный дракон")==0) return 88;
if (strcmp(i,"Гидра")==0) return 89;
if (strcmp(i,"Великан")==0) return 90;
if (strcmp(i,"Темный Копейщик")==0) return 64;
if (strcmp(i,"Темная Лучница")==0) return 65;
if (strcmp(i,"Темный Гном")==0) return 66;
if (strcmp(i,"Темный Паладин")==0) return 67;
if (strcmp(i,"Темная Кочевница")==0) return 68;
if (strcmp(i,"Темный Рыцарь")==0) return 69;
if (strcmp(i,"Темный Варвар")==0) return 70;
if (strcmp(i,"Темный Грандлорд")==0) return 71;
if (strcmp(i,"Темный Голем")==0) return 72;
if (strcmp(i,"Темный Чернокнижник")==0) return 73;
if (strcmp(i,"Темный Демон")==0) return 74;
if (strcmp(i,"Темный Некромант")==0) return 75;
if (strcmp(i,"Темный Шпион")==0) return 76;
if (strcmp(i,"Темный Грифон")==0) return 77;
if (strcmp(i,"Темная Виверна")==0) return 78;
if (strcmp(i,"Темный Дракон")==0) return 79;
if (strcmp(i,"Темный Арбалетчик")==0) return 80;
if (strcmp(i,"Темный Всадник")==0) return 81;
if (strcmp(i,"Темный Патриарх")==0) return 82;
if (strcmp(i,"Темная Баллиста")==0) return 83;
if (strcmp(i,"Военное дело")==0) return 1050;
if (strcmp(i,"Торговля")==0) return 1052;
if (strcmp(i,"Элемент для Контрабанда")==0) return 1154;
if (strcmp(i,"Контрабанда")==0) return 1054;
if (strcmp(i,"Элемент для Путешествия")==0) return 1153;
if (strcmp(i,"Путешествия")==0) return 1053;
if (strcmp(i,"Элемент для Живая вода")==0) return 1155;
if (strcmp(i,"Живая вода")==0) return 1055;
if (strcmp(i,"Элемент для Наследие Брана")==0) return 1156;
if (strcmp(i,"Наследие Брана")==0) return 1056;
if (strcmp(i,"Элемент для Огонь Эльдура")==0) return 1157;
if (strcmp(i,"Огонь Эльдура")==0) return 1057;
if (strcmp(i,"Имперская сталь")==0) return 1058;
if (strcmp(i,"Составной лук")==0) return 1059;
if (strcmp(i,"Элемент для Альянс гномов")==0) return 1160;
if (strcmp(i,"Альянс гномов")==0) return 1060;
if (strcmp(i,"Элемент для Клинки Асгарда")==0) return 1161;
if (strcmp(i,"Клинки Асгарда")==0) return 1061;
if (strcmp(i,"Элемент для  Кавалерия")==0) return 1162;
if (strcmp(i,"Кавалерия")==0) return 1062;
if (strcmp(i,"Элемент для Кодекс Чести")==0) return 1178;
if (strcmp(i,"Кодекс Чести")==0) return 1078;
if (strcmp(i,"Элемент для Союз племен")==0) return 1163;
if (strcmp(i,"Союз племен")==0) return 1063;
if (strcmp(i,"Элемент для Доспехи Хаоса")==0) return 1179;
if (strcmp(i,"Доспехи Хаоса")==0) return 1079;
if (strcmp(i,"Элемент для Оккультизм")==0) return 1165;
if (strcmp(i,"Оккультизм")==0) return 1065;
if (strcmp(i,"Элемент для Лезвие тьмы")==0) return 1168;
if (strcmp(i,"Лезвие тьмы")==0) return 1068;
if (strcmp(i,"Элемент для Сердце демона")==0) return 1166;
if (strcmp(i,"Сердце демона")==0) return 1066;
if (strcmp(i,"Элемент для Некромантия")==0) return 1169;
if (strcmp(i,"Некромантия")==0) return 1069;
if (strcmp(i,"Фортификация 1 ур.")==0) return 1072;
if (strcmp(i,"Элемент для Фортификация 2 ур.")==0) return 1173;
if (strcmp(i,"Фортификация 2 ур.")==0) return 1073;
if (strcmp(i,"Элемент для Фортификация 3 ур.")==0) return 1174;
if (strcmp(i,"Фортификация 3 ур.")==0) return 1074;
if (strcmp(i,"Элемент для Фортификация 4 ур.")==0) return 1175;
if (strcmp(i,"Фортификация 4 ур.")==0) return 1075;
if (strcmp(i,"Элемент для Плащ теней")==0) return 1176;
if (strcmp(i,"Плащ теней")==0) return 1076;
if (strcmp(i,"Элемент для Амулет грифона")==0) return 1170;
if (strcmp(i,"Амулет грифона")==0) return 1070;
if (strcmp(i,"Элемент для Кровь виверны")==0) return 1171;
if (strcmp(i,"Кровь виверны")==0) return 1071;
if (strcmp(i,"Элемент для Яйцо дракона")==0) return 1180;
if (strcmp(i,"Яйцо дракона")==0) return 1080;
if (strcmp(i,"Элемент для Стальное солнце")==0) return 1181;
if (strcmp(i,"Стальное солнце")==0) return 1081;
if (strcmp(i,"Элемент для Сбруя Веора")==0) return 1182;
if (strcmp(i,"Сбруя Веора")==0) return 1082;
if (strcmp(i,"Элемент для Посох патриарха")==0) return 1183;
if (strcmp(i,"Посох патриарха")==0) return 1083;
if (strcmp(i,"Элемент для Чертежи Дарина")==0) return 1184;
if (strcmp(i,"Чертежи Дарина")==0) return 1084;
if (strcmp(i,"Капли гнева")==0) return 1500;
if (strcmp(i,"Знак ярости")==0) return 1501;
if (strcmp(i,"Напиток силы")==0) return 1502;
if (strcmp(i,"Шлем варвара")==0) return 1503;
if (strcmp(i,"Посох Стимула")==0) return 1504;
if (strcmp(i,"Маска Берсерка")==0) return 1505;
if (strcmp(i,"Эльфийское копье")==0) return 1506;
if (strcmp(i,"Живодер")==0) return 1507;
if (strcmp(i,"Слезы Эйр")==0) return 1508;
if (strcmp(i,"Походная кузница")==0) return 1509;
if (strcmp(i,"Горн капитана")==0) return 1510;
if (strcmp(i,"Муравьиный бог")==0) return 1511;
if (strcmp(i,"Железный венец")==0) return 1512;
if (strcmp(i,"Знамя Вейона")==0) return 1513;
if (strcmp(i,"Золотая аквила")==0) return 1514;
if (strcmp(i,"Штандарт Рана")==0) return 1515;
if (strcmp(i,"Пламя Эльдура")==0) return 1516;
if (strcmp(i,"Тяжелая Сбруя")==0) return 1517;
if (strcmp(i,"Зелье Берна")==0) return 1518;
if (strcmp(i,"Сапоги мертвеца")==0) return 1519;
if (strcmp(i,"Эль Чернотопья")==0) return 1520;
if (strcmp(i,"Маска ужаса")==0) return 1521;
if (strcmp(i,"Крыло Нефилима")==0) return 1522;
if (strcmp(i,"Шип Левайна")==0) return 1523;
if (strcmp(i,"Лезвие Хроноса")==0) return 1524;
if (strcmp(i,"Пожинатель Бури")==0) return 1525;
if (strcmp(i,"Стрелы Вейона")==0) return 1526;
if (strcmp(i,"Шлем Брана")==0) return 1527;
if (strcmp(i,"Медовое зелье")==0) return 1528;
if (strcmp(i,"Меч Ульриха")==0) return 1529;
if (strcmp(i,"Знак стойкости")==0) return 1530;
if (strcmp(i,"Око Ловара")==0) return 1531;
if (strcmp(i,"Длань Брана")==0) return 1532;
if (strcmp(i,"Крылья Брана")==0) return 1533;
if (strcmp(i,"Кровь ночи")==0) return 1534;
if (strcmp(i,"Морте")==0) return 1535;
if (strcmp(i,"Стрелы Даны")==0) return 1536;
if (strcmp(i,"Бездонная сумка")==0) return 1537;
if (strcmp(i,"План мобилизации")==0) return 1538;
if (strcmp(i,"Крылья мщения")==0) return 1539;
if (strcmp(i,"Черное солнце")==0) return 1540;
if (strcmp(i,"Стальной клюв")==0) return 1541;
if (strcmp(i,"Подвеска осторожности")==0) return 1600;
if (strcmp(i,"Наплечник чести")==0) return 1601;
if (strcmp(i,"Кованый сапог")==0) return 1602;
if (strcmp(i,"Глаз виверны")==0) return 1603;
if (strcmp(i,"Чертополох")==0) return 1604;
if (strcmp(i,"Рунический страж")==0) return 1605;
if (strcmp(i,"Эльфийская кольчуга")==0) return 1606;
if (strcmp(i,"Штандарт снайпера")==0) return 1607;
if (strcmp(i,"Мифриловые наручи")==0) return 1608;
if (strcmp(i,"Стальная борода")==0) return 1609;
if (strcmp(i,"Щит конунга")==0) return 1610;
if (strcmp(i,"Походная пивоварня")==0) return 1611;
if (strcmp(i,"Рог Балина")==0) return 1612;
if (strcmp(i,"Шпоры Оберона")==0) return 1613;
if (strcmp(i,"Кавалерийский щит")==0) return 1614;
if (strcmp(i,"Оберег Даны")==0) return 1615;
if (strcmp(i,"Шкура медвежутя")==0) return 1616;
if (strcmp(i,"Броня Хана")==0) return 1617;
if (strcmp(i,"Кость Рана")==0) return 1618;
if (strcmp(i,"След Аскара")==0) return 1619;
if (strcmp(i,"Печать Мары")==0) return 1620;
if (strcmp(i,"Кольцо Владыки")==0) return 1621;
if (strcmp(i,"Дух Огня")==0) return 1622;
if (strcmp(i,"Маска Безликих")==0) return 1623;
if (strcmp(i,"Око Хаоса")==0) return 1624;
if (strcmp(i,"Стальное перо")==0) return 1625;
if (strcmp(i,"Игла")==0) return 1626;
if (strcmp(i,"Панцирь дракона")==0) return 1627;
if (strcmp(i,"Плеть Хаоса")==0) return 1628;
if (strcmp(i,"Броня Шред-Дара")==0) return 1629;
if (strcmp(i,"Подкова Ловара")==0) return 1630;
if (strcmp(i,"Мел Судьбы")==0) return 1631;
if (strcmp(i,"Роллштайн")==0) return 1632;
if (strcmp(i,"Сапоги Первопроходца")==0) return 1633;
if (strcmp(i,"Светоч Гор")==0) return 1634;
if (strcmp(i,"Коготь Ловара")==0) return 1635;
if (strcmp(i,"Безмолвие")==0) return 1636;
if (strcmp(i,"Жидкий огонь")==0) return 1637;
if (strcmp(i,"Череп тролля")==0) return 1638;
if (strcmp(i,"Настойка Саламандры")==0) return 1639;
if (strcmp(i,"Оберег Хельд")==0) return 1640;
if (strcmp(i,"Кристалл мощи")==0) return 1641;
if (strcmp(i,"Плащ Доминатора")==0) return 1642;
if (strcmp(i,"Шатер Хана")==0) return 1643;
if (strcmp(i,"Свет Даны")==0) return 1644;
if (strcmp(i,"Крыло Смерти")==0) return 1645;
if (strcmp(i,"Владыка неба")==0) return 1646;
if (strcmp(i,"Реторта Аль-Хазреда")==0) return 1647;
if (strcmp(i,"Ядовитый коготь")==0) return 1648;
if (strcmp(i,"Клещи Сталевара")==0) return 1700;
if (strcmp(i,"Плавильня Брана")==0) return 1701;
if (strcmp(i,"Шляпа Лепрекона")==0) return 1702;
if (strcmp(i,"Кирка Стэханов")==0) return 1703;
if (strcmp(i,"Топор Мясника")==0) return 1704;
if (strcmp(i,"Пряности Ловара")==0) return 1705;
if (strcmp(i,"Дух Сои")==0) return 1706;
if (strcmp(i,"Горшок Ловара")==0) return 1707;
if (strcmp(i,"Сабля Че-Пая")==0) return 1708;
if (strcmp(i,"Рог Изобилия")==0) return 1709;
if (strcmp(i,"Журнал Магистра")==0) return 1710;
if (strcmp(i,"Конспекты Мерлина")==0) return 1711;
if (strcmp(i,"Железная Дева")==0) return 1712;
if (strcmp(i,"Идол Веора")==0) return 1713;
if (strcmp(i,"Сеть Хельд")==0) return 1714;
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
case 17: return 27; break;
case 18: return 22.5; break;
case 19: return 27; break;
case 20: return 30; break;
case 21: return 264; break;
case 22: return 195; break;
case 23: return 285; break;
case 24: return 216; break;
case 25: return 750; break;
case 26: return 711; break;
case 27: return 810; break;
case 28: return 652.5; break;
case 29: return 135; break;
case 30: return 1110; break;
case 31: return 1710; break;
case 32: return 1500; break;
case 33: return 0; break;
case 37: return 140; break;
case 38: return 140; break;
case 39: return 280; break;
case 40: return 280; break;
case 41: return 48; break;
case 42: return 48; break;
case 43: return 96; break;
case 44: return 96; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 34: return 0; break;
case 35: return 0; break;
case 36: return 0; break;
case 88: return 0; break;
case 89: return 0; break;
case 90: return 0; break;
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
case 4: return 270; break;
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
case 17: return 45; break;
case 18: return 9; break;
case 19: return 18; break;
case 20: return 75; break;
case 21: return 105; break;
case 22: return 324; break;
case 23: return 171; break;
case 24: return 540; break;
case 25: return 300; break;
case 26: return 1185.9; break;
case 27: return 480; break;
case 28: return 1630.5; break;
case 29: return 135; break;
case 30: return 450; break;
case 31: return 2850; break;
case 32: return 3683.1; break;
case 33: return 0; break;
case 37: return 90; break;
case 38: return 90; break;
case 39: return 180; break;
case 40: return 180; break;
case 41: return 30; break;
case 42: return 30; break;
case 43: return 60; break;
case 44: return 60; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 34: return 0; break;
case 35: return 0; break;
case 36: return 0; break;
case 88: return 0; break;
case 89: return 0; break;
case 90: return 0; break;
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
case 17: return 60; break;
case 18: return 15; break;
case 19: return 12.6; break;
case 20: return 45; break;
case 21: return 159; break;
case 22: return 130.8; break;
case 23: return 114; break;
case 24: return 300; break;
case 25: return 450; break;
case 26: return 450; break;
case 27: return 300; break;
case 28: return 900; break;
case 29: return 180; break;
case 30: return 690; break;
case 31: return 1140; break;
case 32: return 2100; break;
case 33: return 0; break;
case 37: return 200; break;
case 38: return 200; break;
case 39: return 400; break;
case 40: return 400; break;
case 41: return 70; break;
case 42: return 70; break;
case 43: return 140; break;
case 44: return 140; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 34: return 0; break;
case 35: return 0; break;
case 36: return 0; break;
case 88: return 0; break;
case 89: return 0; break;
case 90: return 0; break;
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
case 17: return 4; break;
case 18: return 4; break;
case 19: return 4; break;
case 20: return 4; break;
case 21: return 10; break;
case 22: return 14; break;
case 23: return 10; break;
case 24: return 22; break;
case 25: return 27; break;
case 26: return 43; break;
case 27: return 28; break;
case 28: return 54; break;
case 29: return 16; break;
case 30: return 39; break;
case 31: return 86; break;
case 32: return 101; break;
case 33: return 0; break;
case 37: return 0; break;
case 38: return 0; break;
case 39: return 0; break;
case 40: return 0; break;
case 41: return 5; break;
case 42: return 5; break;
case 43: return 10; break;
case 44: return 10; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 34: return 0; break;
case 35: return 0; break;
case 36: return 0; break;
case 88: return 0; break;
case 89: return 0; break;
case 90: return 0; break;
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
default: return -1;
}
}

double TDdata::GetItemC(int i)
{
switch(i)
{
case 1: return 300; break;
case 2: return 180; break;
case 3: return 270; break;
case 4: return 480; break;
case 5: return 1140; break;
case 6: return 1800; break;
case 7: return 1140; break;
case 8: return 2700; break;
case 9: return 3000; break;
case 10: return 5400; break;
case 11: return 3120; break;
case 12: return 6780; break;
case 13: return 1500; break;
case 14: return 4440; break;
case 15: return 10800; break;
case 16: return 12600; break;
case 17: return 300; break;
case 18: return 180; break;
case 19: return 270; break;
case 20: return 480; break;
case 21: return 1140; break;
case 22: return 1800; break;
case 23: return 1140; break;
case 24: return 2700; break;
case 25: return 3000; break;
case 26: return 5400; break;
case 27: return 3120; break;
case 28: return 6780; break;
case 29: return 1500; break;
case 30: return 4440; break;
case 31: return 10800; break;
case 32: return 12600; break;
case 33: return 0; break;
case 37: return 600; break;
case 38: return 600; break;
case 39: return 1200; break;
case 40: return 1200; break;
case 41: return 600; break;
case 42: return 600; break;
case 43: return 1200; break;
case 44: return 1200; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 34: return 0; break;
case 35: return 0; break;
case 36: return 0; break;
case 88: return 0; break;
case 89: return 0; break;
case 90: return 0; break;
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
default: return -1;
}
}

double TDdata::GetItemS(const char* i)
{
if(strcmp(i,"1")==0) return 60;
if(strcmp(i,"2")==0) return 180;
if(strcmp(i,"3")==0) return 60;
if(strcmp(i,"4")==0) return 120;
if(strcmp(i,"5")==0) return 180;
if(strcmp(i,"6")==0) return 180;
if(strcmp(i,"7")==0) return 120;
if(strcmp(i,"8")==0) return 120;
if(strcmp(i,"9")==0) return 120;
if(strcmp(i,"10")==0) return 120;
if(strcmp(i,"11")==0) return 120;
if(strcmp(i,"12")==0) return 120;
if(strcmp(i,"13")==0) return 240;
if(strcmp(i,"14")==0) return 120;
if(strcmp(i,"15")==0) return 240;
if(strcmp(i,"16")==0) return 180;
if(strcmp(i,"17")==0) return 60;
if(strcmp(i,"18")==0) return 180;
if(strcmp(i,"19")==0) return 60;
if(strcmp(i,"20")==0) return 120;
if(strcmp(i,"21")==0) return 180;
if(strcmp(i,"22")==0) return 180;
if(strcmp(i,"23")==0) return 120;
if(strcmp(i,"24")==0) return 120;
if(strcmp(i,"25")==0) return 120;
if(strcmp(i,"26")==0) return 120;
if(strcmp(i,"27")==0) return 120;
if(strcmp(i,"28")==0) return 120;
if(strcmp(i,"29")==0) return 240;
if(strcmp(i,"30")==0) return 120;
if(strcmp(i,"31")==0) return 240;
if(strcmp(i,"32")==0) return 180;
if(strcmp(i,"33")==0) return 120;
if(strcmp(i,"37")==0) return 120;
if(strcmp(i,"38")==0) return 120;
if(strcmp(i,"39")==0) return 120;
if(strcmp(i,"40")==0) return 120;
if(strcmp(i,"41")==0) return 120;
if(strcmp(i,"42")==0) return 120;
if(strcmp(i,"43")==0) return 120;
if(strcmp(i,"44")==0) return 120;
if(strcmp(i,"53")==0) return 120;
if(strcmp(i,"54")==0) return 120;
if(strcmp(i,"55")==0) return 120;
if(strcmp(i,"56")==0) return 120;
if(strcmp(i,"34")==0) return 60;
if(strcmp(i,"35")==0) return 60;
if(strcmp(i,"36")==0) return 60;
if(strcmp(i,"88")==0) return 60;
if(strcmp(i,"89")==0) return 60;
if(strcmp(i,"90")==0) return 60;
if(strcmp(i,"64")==0) return 60;
if(strcmp(i,"65")==0) return 180;
if(strcmp(i,"66")==0) return 60;
if(strcmp(i,"67")==0) return 120;
if(strcmp(i,"68")==0) return 180;
if(strcmp(i,"69")==0) return 180;
if(strcmp(i,"70")==0) return 120;
if(strcmp(i,"71")==0) return 120;
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
return -1;
}

int TDdata::GetItemP(int i)
{
switch(i)
{
case 1154: return 6; break;
case 1153: return 6; break;
case 1155: return 12; break;
case 1156: return 12; break;
case 1157: return 12; break;
case 1160: return 2; break;
case 1161: return 4; break;
case 1162: return 6; break;
case 1178: return 8; break;
case 1163: return 6; break;
case 1179: return 8; break;
case 1165: return 8; break;
case 1168: return 12; break;
case 1166: return 8; break;
case 1169: return 12; break;
case 1173: return 4; break;
case 1174: return 4; break;
case 1175: return 4; break;
case 1176: return 2; break;
case 1170: return 16; break;
case 1171: return 20; break;
case 1180: return 24; break;
case 1181: return 6; break;
case 1182: return 6; break;
case 1183: return 6; break;
case 1184: return 6; break;
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
case 144: return "[{\"id\":112,\"level\":1}]"; break;
case 137: return "[{\"id\":110,\"level\":1}]"; break;
case 138: return "[{\"id\":112,\"level\":1},{\"id\":118,\"level\":1},{\"id\":124,\"level\":1},{\"id\":101,\"level\":1}]"; break;
case 125: return "[{\"id\":1054,\"level\":1},{\"id\":124,\"level\":1}]"; break;
case 126: return "[{\"id\":1053,\"level\":1},{\"id\":125,\"level\":1}]"; break;
case 103: return "[{\"id\":1057,\"level\":1},{\"id\":102,\"level\":10}]"; break;
case 105: return "[{\"id\":1056,\"level\":1},{\"id\":104,\"level\":10}]"; break;
case 107: return "[{\"id\":1055,\"level\":1},{\"id\":106,\"level\":10}]"; break;
case 110: return "[{\"id\":1050,\"level\":1},{\"id\":100,\"level\":1},{\"id\":127,\"level\":1}]"; break;
case 112: return "[{\"id\":1058,\"level\":1}]"; break;
case 600: return "[{\"id\":112,\"level\":1}]"; break;
case 113: return "[{\"id\":1060,\"level\":1},{\"id\":112,\"level\":1}]"; break;
case 118: return "[{\"id\":1076,\"level\":1}]"; break;
case 114: return "[{\"id\":1062,\"level\":1},{\"id\":113,\"level\":1}]"; break;
case 115: return "[{\"id\":1063,\"level\":1},{\"id\":114,\"level\":1}]"; break;
case 116: return "[{\"id\":1065,\"level\":1},{\"id\":115,\"level\":1}]"; break;
case 117: return "[{\"id\":1066,\"level\":1},{\"id\":116,\"level\":1}]"; break;
case 119: return "[{\"id\":1070,\"level\":1},{\"id\":118,\"level\":1}]"; break;
case 120: return "[{\"id\":124,\"level\":1}]"; break;
case 141: return "[{\"id\":1081,\"level\":1},{\"id\":114,\"level\":1}]"; break;
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
case 500: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 280: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 281: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 282: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 283: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 284: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 285: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 286: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 287: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 288: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 289: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 290: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 291: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 292: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 293: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 294: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 301: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 302: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 295: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 296: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 297: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 298: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 299: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 300: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 303: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 304: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 305: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 306: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 307: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 308: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 309: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 509: return "[{\"id\":100,\"level\":1},{\"id\":600,\"level\":1}]"; break;
case 744: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 745: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 746: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 747: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 748: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 749: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 750: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 751: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 752: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 753: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 754: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 506: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 507: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 508: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 510: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 511: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
case 512: return "[{\"id\":100,\"level\":1},{\"id\":1050,\"level\":1}]"; break;
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
case 37: return "[{\"id\":141,\"level\":1},{\"id\":1081,\"level\":1}]"; break;
case 38: return "[{\"id\":141,\"level\":1},{\"id\":1082,\"level\":1}]"; break;
case 39: return "[{\"id\":141,\"level\":1},{\"id\":1083,\"level\":1}]"; break;
case 40: return "[{\"id\":141,\"level\":1},{\"id\":1084,\"level\":1}]"; break;
case 41: return "[{\"id\":141,\"level\":1},{\"id\":1081,\"level\":1}]"; break;
case 42: return "[{\"id\":141,\"level\":1},{\"id\":1082,\"level\":1}]"; break;
case 43: return "[{\"id\":141,\"level\":1},{\"id\":1083,\"level\":1}]"; break;
case 44: return "[{\"id\":141,\"level\":1},{\"id\":1084,\"level\":1}]"; break;
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
case 150: return 20; break;
case 144: return 1; break;
case 137: return 6; break;
case 138: return 20; break;
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
case 113: return 20; break;
case 118: return 20; break;
case 114: return 20; break;
case 115: return 20; break;
case 116: return 20; break;
case 117: return 20; break;
case 119: return 20; break;
case 120: return 1; break;
case 141: return 1; break;
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
case 500: return 1; break;
case 280: return 1; break;
case 281: return 1; break;
case 282: return 1; break;
case 283: return 1; break;
case 284: return 1; break;
case 285: return 1; break;
case 286: return 1; break;
case 287: return 1; break;
case 288: return 1; break;
case 289: return 1; break;
case 290: return 1; break;
case 291: return 1; break;
case 292: return 1; break;
case 293: return 1; break;
case 294: return 1; break;
case 301: return 1; break;
case 302: return 1; break;
case 295: return 1; break;
case 296: return 1; break;
case 297: return 1; break;
case 298: return 1; break;
case 299: return 1; break;
case 300: return 1; break;
case 303: return 1; break;
case 304: return 1; break;
case 305: return 1; break;
case 306: return 1; break;
case 307: return 1; break;
case 308: return 1; break;
case 309: return 1; break;
case 509: return 1; break;
case 744: return 1; break;
case 745: return 1; break;
case 746: return 1; break;
case 747: return 1; break;
case 748: return 1; break;
case 749: return 1; break;
case 750: return 1; break;
case 751: return 1; break;
case 752: return 1; break;
case 753: return 1; break;
case 754: return 1; break;
case 506: return 1; break;
case 507: return 1; break;
case 508: return 1; break;
case 510: return 1; break;
case 511: return 1; break;
case 512: return 1; break;
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
case 37: return 1; break;
case 38: return 1; break;
case 39: return 1; break;
case 40: return 1; break;
case 41: return 1; break;
case 42: return 1; break;
case 43: return 1; break;
case 44: return 1; break;
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

case 150:
{
switch(l)
{
case 1: return 50; break;
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

case 144:
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

case 138:
{
switch(l)
{
case 1: return 300; break;
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
case 12: return 20993; break;
case 13: return 21945; break;
case 14: return 22897; break;
case 15: return 23848; break;
case 16: return 24801; break;
case 17: return 26704; break;
case 18: return 28609; break;
case 19: return 30512; break;
case 20: return 32417; break;
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
case 12: return 15395; break;
case 13: return 16093; break;
case 14: return 16791; break;
case 15: return 17489; break;
case 16: return 18187; break;
case 17: return 19583; break;
case 18: return 20980; break;
case 19: return 22376; break;
case 20: return 23772; break;
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

case 141:
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

case 500:
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
case 1: return 40; break;
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

case 282:
{
switch(l)
{
case 1: return 30; break;
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

case 284:
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

case 287:
{
switch(l)
{
case 1: return 30; break;
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

case 289:
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

case 291:
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
case 1: return 20; break;
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

case 294:
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 301:
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
case 1: return 40; break;
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

case 298:
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

case 300:
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

case 305:
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
case 1: return 30; break;
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

case 308:
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 309:
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 509:
{
switch(l)
{
case 1: return 40; break;
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

case 750:
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 751:
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 752:
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 753:
{
switch(l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 754:
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

case 507:
{
switch(l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 508:
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 510:
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 511:
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 512:
{
switch(l)
{
case 1: return 500; break;
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
case 1: return 711; break;
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
case 1: return 652.5; break;
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
case 1: return 1710; break;
default: return -1;
}
};break;

case 32:
{
switch(l)
{
case 1: return 1500; break;
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

case 150:
{
switch(l)
{
case 1: return 50; break;
case 2: return 330; break;
case 3: return 429; break;
case 4: return 551; break;
case 5: return 699; break;
case 6: return 889; break;
case 7: return 1139; break;
case 8: return 1461; break;
case 9: return 1869; break;
case 10: return 2400; break;
case 11: return 3071; break;
case 12: return 3931; break;
case 13: return 5031; break;
case 14: return 6440; break;
case 15: return 8239; break;
case 16: return 10514; break;
case 17: return 13499; break;
case 18: return 17280; break;
case 19: return 22121; break;
case 20: return 28309; break;
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

case 138:
{
switch(l)
{
case 1: return 300; break;
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
case 12: return 15395; break;
case 13: return 16093; break;
case 14: return 16791; break;
case 15: return 17489; break;
case 16: return 18187; break;
case 17: return 19583; break;
case 18: return 20980; break;
case 19: return 22376; break;
case 20: return 23772; break;
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
case 12: return 20993; break;
case 13: return 21945; break;
case 14: return 22897; break;
case 15: return 23848; break;
case 16: return 24801; break;
case 17: return 26704; break;
case 18: return 28609; break;
case 19: return 30512; break;
case 20: return 32417; break;
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

case 141:
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

case 500:
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
case 1: return 20; break;
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

case 283:
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
case 1: return 20; break;
default: return -1;
}
};break;

case 285:
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 286:
{
switch(l)
{
case 1: return 30; break;
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

case 288:
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
case 1: return 20; break;
default: return -1;
}
};break;

case 290:
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 291:
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

case 294:
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
case 1: return 20; break;
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
case 1: return 20; break;
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

case 298:
{
switch(l)
{
case 1: return 30; break;
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

case 300:
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
case 1: return 30; break;
default: return -1;
}
};break;

case 305:
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
case 1: return 40; break;
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

case 308:
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 309:
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 509:
{
switch(l)
{
case 1: return 40; break;
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

case 750:
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 751:
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 752:
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 753:
{
switch(l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 754:
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

case 507:
{
switch(l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 508:
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 510:
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 511:
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 512:
{
switch(l)
{
case 1: return 500; break;
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
case 1: return 270; break;
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
case 1: return 1185.9; break;
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
case 1: return 1630.5; break;
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
case 1: return 2850; break;
default: return -1;
}
};break;

case 32:
{
switch(l)
{
case 1: return 3683.1; break;
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

case 150:
{
switch(l)
{
case 1: return 50; break;
case 2: return 102; break;
case 3: return 132; break;
case 4: return 170; break;
case 5: return 215; break;
case 6: return 274; break;
case 7: return 350; break;
case 8: return 450; break;
case 9: return 575; break;
case 10: return 738; break;
case 11: return 945; break;
case 12: return 1210; break;
case 13: return 1548; break;
case 14: return 1982; break;
case 15: return 2535; break;
case 16: return 3235; break;
case 17: return 4154; break;
case 18: return 5317; break;
case 19: return 6806; break;
case 20: return 8710; break;
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

case 138:
{
switch(l)
{
case 1: return 300; break;
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
case 13: return 32186; break;
case 14: return 45794; break;
case 15: return 47698; break;
case 16: return 49601; break;
case 17: return 53409; break;
case 18: return 57217; break;
case 19: return 61024; break;
case 20: return 64832; break;
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
case 13: return 32186; break;
case 14: return 45794; break;
case 15: return 47698; break;
case 16: return 49601; break;
case 17: return 53409; break;
case 18: return 57217; break;
case 19: return 61024; break;
case 20: return 64832; break;
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

case 141:
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

case 500:
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
case 1: return 20; break;
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

case 282:
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

case 284:
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

case 287:
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

case 290:
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

case 292:
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

case 294:
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
case 1: return 20; break;
default: return -1;
}
};break;

case 302:
{
switch(l)
{
case 1: return 30; break;
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
case 1: return 30; break;
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

case 298:
{
switch(l)
{
case 1: return 20; break;
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

case 300:
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
case 1: return 30; break;
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

case 305:
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
case 1: return 40; break;
default: return -1;
}
};break;

case 308:
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 309:
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 509:
{
switch(l)
{
case 1: return 40; break;
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

case 750:
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 751:
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 752:
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 753:
{
switch(l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 754:
{
switch(l)
{
case 1: return 30; break;
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

case 507:
{
switch(l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 508:
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 510:
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 511:
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 512:
{
switch(l)
{
case 1: return 500; break;
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
case 1: return 450; break;
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
case 1: return 900; break;
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
case 1: return 1140; break;
default: return -1;
}
};break;

case 32:
{
switch(l)
{
case 1: return 2100; break;
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

case 141:
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
case 1: return 150; break;
default: return -1;
}
};break;

case 202:
{
switch(l)
{
case 1: return 200; break;
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
case 1: return 130; break;
default: return -1;
}
};break;

case 204:
{
switch(l)
{
case 1: return 325; break;
default: return -1;
}
};break;

case 205:
{
switch(l)
{
case 1: return 390; break;
default: return -1;
}
};break;

case 131:
{
switch(l)
{
case 1: return 390; break;
default: return -1;
}
};break;

case 134:
{
switch(l)
{
case 1: return 390; break;
default: return -1;
}
};break;

case 128:
{
switch(l)
{
case 1: return 390; break;
default: return -1;
}
};break;

case 206:
{
switch(l)
{
case 1: return 210; break;
default: return -1;
}
};break;

case 207:
{
switch(l)
{
case 1: return 420; break;
default: return -1;
}
};break;

case 208:
{
switch(l)
{
case 1: return 560; break;
default: return -1;
}
};break;

case 132:
{
switch(l)
{
case 1: return 560; break;
default: return -1;
}
};break;

case 135:
{
switch(l)
{
case 1: return 560; break;
default: return -1;
}
};break;

case 129:
{
switch(l)
{
case 1: return 560; break;
default: return -1;
}
};break;

case 209:
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 210:
{
switch(l)
{
case 1: return 525; break;
default: return -1;
}
};break;

case 211:
{
switch(l)
{
case 1: return 750; break;
default: return -1;
}
};break;

case 133:
{
switch(l)
{
case 1: return 750; break;
default: return -1;
}
};break;

case 136:
{
switch(l)
{
case 1: return 750; break;
default: return -1;
}
};break;

case 130:
{
switch(l)
{
case 1: return 750; break;
default: return -1;
}
};break;

case 500:
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
case 1: return 480; break;
default: return -1;
}
};break;

case 281:
{
switch(l)
{
case 1: return 360; break;
default: return -1;
}
};break;

case 282:
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 283:
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 284:
{
switch(l)
{
case 1: return 200; break;
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
case 1: return 75; break;
default: return -1;
}
};break;

case 287:
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 288:
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 289:
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 290:
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 291:
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 292:
{
switch(l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 293:
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 294:
{
switch(l)
{
case 1: return 360; break;
default: return -1;
}
};break;

case 301:
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 302:
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 295:
{
switch(l)
{
case 1: return 50; break;
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

case 297:
{
switch(l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 298:
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 299:
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 300:
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 303:
{
switch(l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 304:
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 305:
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 306:
{
switch(l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 307:
{
switch(l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 308:
{
switch(l)
{
case 1: return 110; break;
default: return -1;
}
};break;

case 309:
{
switch(l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 509:
{
switch(l)
{
case 1: return 200; break;
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
case 1: return 100; break;
default: return -1;
}
};break;

case 746:
{
switch(l)
{
case 1: return 70; break;
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
case 1: return 60; break;
default: return -1;
}
};break;

case 749:
{
switch(l)
{
case 1: return 70; break;
default: return -1;
}
};break;

case 750:
{
switch(l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 751:
{
switch(l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 752:
{
switch(l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 753:
{
switch(l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 754:
{
switch(l)
{
case 1: return 60; break;
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

case 507:
{
switch(l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 508:
{
switch(l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 510:
{
switch(l)
{
case 1: return 1600; break;
default: return -1;
}
};break;

case 511:
{
switch(l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 512:
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
case 1: return 4; break;
default: return -1;
}
};break;

case 21:
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 22:
{
switch(l)
{
case 1: return 14; break;
default: return -1;
}
};break;

case 23:
{
switch(l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 24:
{
switch(l)
{
case 1: return 22; break;
default: return -1;
}
};break;

case 25:
{
switch(l)
{
case 1: return 27; break;
default: return -1;
}
};break;

case 26:
{
switch(l)
{
case 1: return 43; break;
default: return -1;
}
};break;

case 27:
{
switch(l)
{
case 1: return 28; break;
default: return -1;
}
};break;

case 28:
{
switch(l)
{
case 1: return 54; break;
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
case 1: return 39; break;
default: return -1;
}
};break;

case 31:
{
switch(l)
{
case 1: return 86; break;
default: return -1;
}
};break;

case 32:
{
switch(l)
{
case 1: return 101; break;
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

case 141:
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

case 500:
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

case 282:
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

case 284:
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

case 287:
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

case 289:
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

case 291:
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

case 293:
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

case 301:
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

case 297:
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

case 299:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 300:
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

case 305:
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

case 308:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 309:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 509:
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

case 750:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 751:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 752:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 753:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 754:
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

case 507:
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

case 510:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 511:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 512:
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
case 1: return 15; break;
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
case 1: return 15; break;
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
case 1: return 15; break;
case 2: return 90; break;
case 3: return 100; break;
case 4: return 125; break;
case 5: return 156; break;
default: return -1;
}
};break;

case 150:
{
switch(l)
{
case 1: return 15; break;
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

case 138:
{
switch(l)
{
case 1: return 300; break;
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
case 1: return 15; break;
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
case 1: return 15; break;
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
case 1: return 15; break;
default: return -1;
}
};break;

case 112:
{
switch(l)
{
case 1: return 15; break;
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
case 1: return 15; break;
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
case 1: return 15; break;
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

case 500:
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

case 282:
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

case 284:
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

case 287:
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

case 289:
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

case 291:
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

case 293:
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

case 301:
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

case 297:
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

case 299:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 300:
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

case 305:
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

case 308:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 309:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 509:
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

case 750:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 751:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 752:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 753:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 754:
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

case 507:
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

case 510:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 511:
{
switch(l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 512:
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
case 1: return 300; break;
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
case 1: return 270; break;
default: return -1;
}
};break;

case 4:
{
switch(l)
{
case 1: return 480; break;
default: return -1;
}
};break;

case 5:
{
switch(l)
{
case 1: return 1140; break;
default: return -1;
}
};break;

case 6:
{
switch(l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 7:
{
switch(l)
{
case 1: return 1140; break;
default: return -1;
}
};break;

case 8:
{
switch(l)
{
case 1: return 2700; break;
default: return -1;
}
};break;

case 9:
{
switch(l)
{
case 1: return 3000; break;
default: return -1;
}
};break;

case 10:
{
switch(l)
{
case 1: return 5400; break;
default: return -1;
}
};break;

case 11:
{
switch(l)
{
case 1: return 3120; break;
default: return -1;
}
};break;

case 12:
{
switch(l)
{
case 1: return 6780; break;
default: return -1;
}
};break;

case 13:
{
switch(l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 14:
{
switch(l)
{
case 1: return 4440; break;
default: return -1;
}
};break;

case 15:
{
switch(l)
{
case 1: return 10800; break;
default: return -1;
}
};break;

case 16:
{
switch(l)
{
case 1: return 12600; break;
default: return -1;
}
};break;

case 17:
{
switch(l)
{
case 1: return 300; break;
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
case 1: return 270; break;
default: return -1;
}
};break;

case 20:
{
switch(l)
{
case 1: return 480; break;
default: return -1;
}
};break;

case 21:
{
switch(l)
{
case 1: return 1140; break;
default: return -1;
}
};break;

case 22:
{
switch(l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 23:
{
switch(l)
{
case 1: return 1140; break;
default: return -1;
}
};break;

case 24:
{
switch(l)
{
case 1: return 2700; break;
default: return -1;
}
};break;

case 25:
{
switch(l)
{
case 1: return 3000; break;
default: return -1;
}
};break;

case 26:
{
switch(l)
{
case 1: return 5400; break;
default: return -1;
}
};break;

case 27:
{
switch(l)
{
case 1: return 3120; break;
default: return -1;
}
};break;

case 28:
{
switch(l)
{
case 1: return 6780; break;
default: return -1;
}
};break;

case 29:
{
switch(l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 30:
{
switch(l)
{
case 1: return 4440; break;
default: return -1;
}
};break;

case 31:
{
switch(l)
{
case 1: return 10800; break;
default: return -1;
}
};break;

case 32:
{
switch(l)
{
case 1: return 12600; break;
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

case 1050:
{
switch(l)
{
case 1: return 15; break;
default: return -1;
}
};break;

case 1052:
{
switch(l)
{
case 1: return 15; break;
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
case 1: return 15; break;
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
case 1: return 15; break;
case 2: return 240; break;
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
case 1: return 15; break;
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

case 1071:
{
switch(l)
{
case 1: return 43200; break;
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

case 1080:
{
switch(l)
{
case 1: return 57600; break;
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

case 1081:
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

case 1082:
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

case 1083:
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

case 1084:
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

default: return -1;
}
}

int TDdata::GetObjSX(int i)
{
switch(i)
{
case 100: return 11; break;
case 127: return 14; break;
case 124: return 12; break;
case 101: return 11; break;
case 150: return 7; break;
case 144: return 8; break;
case 137: return 7; break;
case 138: return 7; break;
case 125: return 12; break;
case 126: return 9; break;
case 198: return 8; break;
case 199: return 6; break;
case 106: return 8; break;
case 104: return 6; break;
case 102: return 8; break;
case 109: return 9; break;
case 108: return 7; break;
case 103: return 8; break;
case 105: return 10; break;
case 107: return 9; break;
case 110: return 12; break;
case 112: return 9; break;
case 600: return 10; break;
case 113: return 12; break;
case 118: return 12; break;
case 114: return 10; break;
case 115: return 9; break;
case 116: return 15; break;
case 117: return 12; break;
case 119: return 13; break;
case 120: return 12; break;
case 141: return 10; break;
case 200: return 2; break;
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
case 500: return 2; break;
case 280: return 6; break;
case 281: return 6; break;
case 282: return 3; break;
case 283: return 5; break;
case 284: return 4; break;
case 285: return 1; break;
case 286: return 1; break;
case 287: return 1; break;
case 288: return 1; break;
case 289: return 1; break;
case 290: return 5; break;
case 291: return 5; break;
case 292: return 5; break;
case 293: return 1; break;
case 294: return 6; break;
case 301: return 1; break;
case 302: return 1; break;
case 295: return 1; break;
case 296: return 1; break;
case 297: return 3; break;
case 298: return 1; break;
case 299: return 2; break;
case 300: return 2; break;
case 303: return 2; break;
case 304: return 1; break;
case 305: return 1; break;
case 306: return 1; break;
case 307: return 5; break;
case 308: return 2; break;
case 309: return 3; break;
case 509: return 2; break;
case 744: return 1; break;
case 745: return 2; break;
case 746: return 1; break;
case 747: return 1; break;
case 748: return 1; break;
case 749: return 1; break;
case 750: return 3; break;
case 751: return 2; break;
case 752: return 1; break;
case 753: return 1; break;
case 754: return 1; break;
case 506: return 4; break;
case 507: return 3; break;
case 508: return 3; break;
case 510: return 3; break;
case 511: return 6; break;
case 512: return 3; break;
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
case 33: return 3; break;
case 37: return 4; break;
case 38: return 4; break;
case 39: return 6; break;
case 40: return 3; break;
case 41: return 4; break;
case 42: return 4; break;
case 43: return 6; break;
case 44: return 3; break;
case 53: return 2; break;
case 54: return 4; break;
case 55: return 3; break;
case 56: return 3; break;
case 34: return 4; break;
case 35: return 3; break;
case 36: return 3; break;
case 88: return 2; break;
case 89: return 6; break;
case 90: return 3; break;
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
case 1536: return 0; break;
case 1537: return 0; break;
case 1538: return 0; break;
case 1539: return 0; break;
case 1540: return 0; break;
case 1541: return 0; break;
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
default: return -1;
}
}

int TDdata::GetObjSY(int i)
{
switch(i)
{
case 100: return 9; break;
case 127: return 11; break;
case 124: return 12; break;
case 101: return 12; break;
case 150: return 11; break;
case 144: return 8; break;
case 137: return 9; break;
case 138: return 11; break;
case 125: return 12; break;
case 126: return 10; break;
case 198: return 8; break;
case 199: return 6; break;
case 106: return 7; break;
case 104: return 6; break;
case 102: return 8; break;
case 109: return 6; break;
case 108: return 10; break;
case 103: return 8; break;
case 105: return 8; break;
case 107: return 8; break;
case 110: return 14; break;
case 112: return 9; break;
case 600: return 13; break;
case 113: return 11; break;
case 118: return 12; break;
case 114: return 10; break;
case 115: return 10; break;
case 116: return 10; break;
case 117: return 13; break;
case 119: return 17; break;
case 120: return 13; break;
case 141: return 11; break;
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
case 500: return 2; break;
case 280: return 8; break;
case 281: return 6; break;
case 282: return 5; break;
case 283: return 5; break;
case 284: return 5; break;
case 285: return 4; break;
case 286: return 1; break;
case 287: return 4; break;
case 288: return 1; break;
case 289: return 1; break;
case 290: return 4; break;
case 291: return 1; break;
case 292: return 4; break;
case 293: return 1; break;
case 294: return 4; break;
case 301: return 2; break;
case 302: return 1; break;
case 295: return 1; break;
case 296: return 1; break;
case 297: return 3; break;
case 298: return 3; break;
case 299: return 3; break;
case 300: return 2; break;
case 303: return 2; break;
case 304: return 1; break;
case 305: return 1; break;
case 306: return 1; break;
case 307: return 4; break;
case 308: return 4; break;
case 309: return 3; break;
case 509: return 4; break;
case 744: return 2; break;
case 745: return 2; break;
case 746: return 1; break;
case 747: return 1; break;
case 748: return 1; break;
case 749: return 1; break;
case 750: return 3; break;
case 751: return 2; break;
case 752: return 1; break;
case 753: return 2; break;
case 754: return 1; break;
case 506: return 4; break;
case 507: return 2; break;
case 508: return 3; break;
case 510: return 4; break;
case 511: return 3; break;
case 512: return 3; break;
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
case 33: return 3; break;
case 37: return 4; break;
case 38: return 4; break;
case 39: return 6; break;
case 40: return 3; break;
case 41: return 4; break;
case 42: return 4; break;
case 43: return 6; break;
case 44: return 3; break;
case 53: return 4; break;
case 54: return 3; break;
case 55: return 4; break;
case 56: return 4; break;
case 34: return 4; break;
case 35: return 2; break;
case 36: return 3; break;
case 88: return 2; break;
case 89: return 3; break;
case 90: return 3; break;
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
case 1536: return 0; break;
case 1537: return 0; break;
case 1538: return 0; break;
case 1539: return 0; break;
case 1540: return 0; break;
case 1541: return 0; break;
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
default: return -1;
}
}

int TDdata::GetSkillCount(void)
{
return 47;
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
case 12: return 1005; break;
case 13: return 1007; break;
case 14: return 1006; break;
case 15: return 1008; break;
case 16: return 2005; break;
case 17: return 2007; break;
case 18: return 2006; break;
case 19: return 2008; break;
case 20: return 5; break;
case 21: return 1017; break;
case 22: return 1018; break;
case 23: return 1019; break;
case 24: return 1020; break;
case 25: return 2017; break;
case 26: return 2018; break;
case 27: return 2019; break;
case 28: return 2020; break;
case 29: return 6; break;
case 30: return 3; break;
case 31: return 1009; break;
case 32: return 1010; break;
case 33: return 1011; break;
case 34: return 1012; break;
case 35: return 2009; break;
case 36: return 2010; break;
case 37: return 2011; break;
case 38: return 2012; break;
case 39: return 7; break;
case 40: return 4; break;
case 41: return 1014; break;
case 42: return 1015; break;
case 43: return 1016; break;
case 44: return 2014; break;
case 45: return 2015; break;
case 46: return 2016; break;
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
case 12: return 40; break;
case 13: return 40; break;
case 14: return 40; break;
case 15: return 40; break;
case 16: return 40; break;
case 17: return 40; break;
case 18: return 50; break;
case 19: return 50; break;
case 20: return 2; break;
case 21: return 40; break;
case 22: return 40; break;
case 23: return 40; break;
case 24: return 40; break;
case 25: return 40; break;
case 26: return 40; break;
case 27: return 40; break;
case 28: return 40; break;
case 29: return 6; break;
case 30: return 10; break;
case 31: return 40; break;
case 32: return 40; break;
case 33: return 40; break;
case 34: return 40; break;
case 35: return 40; break;
case 36: return 40; break;
case 37: return 40; break;
case 38: return 50; break;
case 39: return 80; break;
case 40: return 10; break;
case 41: return 40; break;
case 42: return 50; break;
case 43: return 50; break;
case 44: return 40; break;
case 45: return 50; break;
case 46: return 50; break;
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
case 1005: return 12; break;
case 1007: return 13; break;
case 1006: return 14; break;
case 1008: return 15; break;
case 2005: return 16; break;
case 2007: return 17; break;
case 2006: return 18; break;
case 2008: return 19; break;
case 5: return 20; break;
case 1017: return 21; break;
case 1018: return 22; break;
case 1019: return 23; break;
case 1020: return 24; break;
case 2017: return 25; break;
case 2018: return 26; break;
case 2019: return 27; break;
case 2020: return 28; break;
case 6: return 29; break;
case 3: return 30; break;
case 1009: return 31; break;
case 1010: return 32; break;
case 1011: return 33; break;
case 1012: return 34; break;
case 2009: return 35; break;
case 2010: return 36; break;
case 2011: return 37; break;
case 2012: return 38; break;
case 7: return 39; break;
case 4: return 40; break;
case 1014: return 41; break;
case 1015: return 42; break;
case 1016: return 43; break;
case 2014: return 44; break;
case 2015: return 45; break;
case 2016: return 46; break;
default: return -1;
}
}

const char* TDdata::GetSkillName(int i)
{
switch(i)
{
case 0: return ""; break;
case 1: return "Лучница. Скорость движения."; break;
case 2: return "Копейщик. Скорость движения."; break;
case 3: return "Гном. Скорость движения."; break;
case 4: return "Шпион. Скорость движения."; break;
case 5: return "Паладин. Скорость движения."; break;
case 6: return "Лучница. Время строительства."; break;
case 7: return "Копейщик. Время строительства."; break;
case 8: return "Гном. Время строительства."; break;
case 9: return "Шпион. Время строительства."; break;
case 10: return "Паладин. Время строительства."; break;
case 11: return ""; break;
case 12: return "Кочевница. Скорость движения."; break;
case 13: return "Варвар. Скорость движения."; break;
case 14: return "Рыцарь. Скорость движения."; break;
case 15: return "Грандлорд. Скорость движения."; break;
case 16: return "Кочевница. Время строительства."; break;
case 17: return "Варвар. Время строительства."; break;
case 18: return "Рыцарь. Время строительства."; break;
case 19: return "Грандлорд. Время строительства."; break;
case 20: return ""; break;
case 21: return "Арбалетчик. Скорость движения."; break;
case 22: return "Всадник. Скорость движения."; break;
case 23: return "Патриарх. Скорость движения."; break;
case 24: return "Баллиста. Скорость движения."; break;
case 25: return "Арбалетчик. Время строительства."; break;
case 26: return "Всадник. Время строительства."; break;
case 27: return "Патриарх. Время строительства."; break;
case 28: return "Баллиста. Время строительства."; break;
case 29: return ""; break;
case 30: return ""; break;
case 31: return "Голем. Скорость движения."; break;
case 32: return "Чернокнижник. Скорость движения."; break;
case 33: return "Демон. Скорость движения."; break;
case 34: return "Некромант. Скорость движения."; break;
case 35: return "Голем. Время строительства."; break;
case 36: return "Чернокнижник. Время строительства."; break;
case 37: return "Демон. Время строительства."; break;
case 38: return "Некромант. Время строительства."; break;
case 39: return ""; break;
case 40: return ""; break;
case 41: return "Грифон. Скорость движения."; break;
case 42: return "Виверна. Скорость движения."; break;
case 43: return "Дракон. Скорость движения."; break;
case 44: return "Грифон. Время строительства."; break;
case 45: return "Виверна. Время строительства."; break;
case 46: return "Дракон. Время строительства."; break;
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
case 13: return "[{\"id\":1005,\"level\":8}]"; break;
case 14: return "[{\"id\":1007,\"level\":8}]"; break;
case 15: return "[{\"id\":1006,\"level\":8}]"; break;
case 16: return "[{\"id\":1008,\"level\":8}]"; break;
case 17: return "[{\"id\":2005,\"level\":10}]"; break;
case 18: return "[{\"id\":2007,\"level\":10}]"; break;
case 19: return "[{\"id\":2006,\"level\":10}]"; break;
case 20: return "[{\"id\":1008,\"level\":8}]"; break;
case 21: return "[{\"id\":5,\"level\":2}]"; break;
case 22: return "[{\"id\":1017,\"level\":2}]"; break;
case 23: return "[{\"id\":1018,\"level\":2}]"; break;
case 24: return "[{\"id\":1019,\"level\":2}]"; break;
case 25: return "[{\"id\":5,\"level\":2}]"; break;
case 26: return "[{\"id\":2017,\"level\":2}]"; break;
case 27: return "[{\"id\":2018,\"level\":2}]"; break;
case 28: return "[{\"id\":2019,\"level\":2}]"; break;
case 29: return "[{\"id\":5,\"level\":2}]"; break;
case 30: return "[{\"id\":6,\"level\":6}]"; break;
case 31: return "[{\"id\":3,\"level\":10}]"; break;
case 32: return "[{\"id\":1009,\"level\":10}]"; break;
case 33: return "[{\"id\":1010,\"level\":10}]"; break;
case 34: return "[{\"id\":1011,\"level\":10}]"; break;
case 35: return "[{\"id\":1012,\"level\":10}]"; break;
case 36: return "[{\"id\":2009,\"level\":10}]"; break;
case 37: return "[{\"id\":2010,\"level\":10}]"; break;
case 38: return "[{\"id\":2011,\"level\":10}]"; break;
case 39: return "[{\"id\":1012,\"level\":10}]"; break;
case 40: return "[{\"id\":1012,\"level\":10}]"; break;
case 41: return "[{\"id\":4,\"level\":10}]"; break;
case 42: return "[{\"id\":1014,\"level\":10}]"; break;
case 43: return "[{\"id\":1015,\"level\":10}]"; break;
case 44: return "[{\"id\":4,\"level\":10}]"; break;
case 45: return "[{\"id\":2014,\"level\":10}]"; break;
case 46: return "[{\"id\":2015,\"level\":10}]"; break;
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
case 12: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/5_s.png"; break;
case 13: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/7_s.png"; break;
case 14: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/6_s.png"; break;
case 15: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/8_s.png"; break;
case 16: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/5_c.png"; break;
case 17: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/7_c.png"; break;
case 18: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/6_c.png"; break;
case 19: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/8_c.png"; break;
case 20: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/5.png"; break;
case 21: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/17_s.png"; break;
case 22: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/18_s.png"; break;
case 23: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/19_s.png"; break;
case 24: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/20_s.png"; break;
case 25: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/17_c.png"; break;
case 26: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/18_c.png"; break;
case 27: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/19_c.png"; break;
case 28: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/20_c.png"; break;
case 29: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/6.png"; break;
case 30: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/3.png"; break;
case 31: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/9_s.png"; break;
case 32: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/10_s.png"; break;
case 33: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/11_s.png"; break;
case 34: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/12_s.png"; break;
case 35: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/9_c.png"; break;
case 36: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/10_c.png"; break;
case 37: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/11_c.png"; break;
case 38: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/12_c.png"; break;
case 39: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/1_r.png"; break;
case 40: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/4.png"; break;
case 41: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/14_s.png"; break;
case 42: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/15_s.png"; break;
case 43: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/16_s.png"; break;
case 44: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/14_c.png"; break;
case 45: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/15_c.png"; break;
case 46: return "http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/16_c.png"; break;
default: return "";
}
}



