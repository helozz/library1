<?php

//=====================================================================================================================================
//	public class TDdata for PHP
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

class TDdata
{

public function TDdata()
{
return;
}

public function GetQueue($i)
{
switch($i)
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

public function GetItemName($i)
{
switch($i)
{
case 100: return 'Дом Капитана'; break;
case 127: return 'Обсерватория'; break;
case 124: return 'Рынок'; break;
case 101: return 'Береговое братство'; break;
case 138: return 'Маяк'; break;
case 150: return 'Гавань'; break;
case 144: return 'Алтарь вуду'; break;
case 139: return 'Сокровищница'; break;
case 137: return 'Торговая компания'; break;
case 125: return 'Лавка картографа'; break;
case 126: return 'Гильдия купцов'; break;
case 198: return 'Залежи золота'; break;
case 199: return 'Залежи дерева'; break;
case 106: return 'Фабрика рома'; break;
case 104: return 'Лесоповал'; break;
case 102: return 'Золотой прииск'; break;
case 109: return 'Погреб'; break;
case 108: return 'Склад'; break;
case 103: return 'Ломбард'; break;
case 105: return 'Лесопилка'; break;
case 107: return 'Мельница'; break;
case 110: return 'Комендатура'; break;
case 112: return 'Таверна'; break;
case 600: return 'Кладбище'; break;
case 118: return 'Эллинг'; break;
case 113: return 'Трактир'; break;
case 114: return 'Оружейная'; break;
case 115: return 'Пушечный двор'; break;
case 116: return 'Верфь'; break;
case 117: return 'Сухой док'; break;
case 119: return 'Адмиралтейство'; break;
case 120: return 'Черный рынок'; break;
case 148: return 'Машинариум'; break;
case 149: return 'Цех'; break;
case 141: return 'Храм Дракона'; break;
case 142: return 'Форт каперов'; break;
case 200: return 'Стена 1 ур.'; break;
case 201: return 'Башня 1 ур.'; break;
case 202: return 'Ворота 1 ур.'; break;
case 122: return 'Пушка 1 ур.'; break;
case 123: return 'Гарпун 1 ур.'; break;
case 121: return 'Дозорный 1 ур.'; break;
case 203: return 'Стена 2 ур.'; break;
case 204: return 'Башня 2 ур.'; break;
case 205: return 'Ворота 2 ур.'; break;
case 131: return 'Пушка 2 ур.'; break;
case 134: return 'Гарпун 2 ур.'; break;
case 128: return 'Дозорный 2 ур.'; break;
case 206: return 'Стена 3 ур.'; break;
case 207: return 'Башня 3 ур.'; break;
case 208: return 'Ворота 3 ур.'; break;
case 132: return 'Пушка 3 ур.'; break;
case 135: return 'Гарпун 3 ур.'; break;
case 129: return 'Дозорный 3 ур.'; break;
case 209: return 'Стена 4 ур.'; break;
case 210: return 'Башня 4 ур.'; break;
case 211: return 'Ворота 4 ур.'; break;
case 133: return 'Пушка 4 ур.'; break;
case 136: return 'Гарпун 4 ур.'; break;
case 130: return 'Дозорный 4 ур.'; break;
case 744: return 'Пушка Амура'; break;
case 745: return 'Настоящее сокровище'; break;
case 746: return 'Любовное послание'; break;
case 747: return 'Королева жемчужин'; break;
case 748: return 'Влюбленный Ктулху'; break;
case 749: return 'Хранитель сердец'; break;
case 500: return 'Могила корсара'; break;
case 299: return 'Соколиное Гнездо'; break;
case 303: return 'Пиратский схрон'; break;
case 304: return 'Могила Кидда'; break;
case 313: return 'Веселое пекло'; break;
case 317: return 'Бунгало туземца'; break;
case 324: return 'Котелок Кука'; break;
case 328: return 'Плот Робинзона'; break;
case 339: return 'Большая Берта'; break;
case 306: return 'Бочка рома'; break;
case 307: return 'Бочки пороха'; break;
case 301: return 'Адские барабаны'; break;
case 310: return 'Частокол'; break;
case 381: return 'Весы судьбы'; break;
case 361: return 'Кубок молодости'; break;
case 297: return 'П-Виселица'; break;
case 331: return 'Мешки'; break;
case 291: return 'Стол картографа'; break;
case 341: return 'Деревянный щит'; break;
case 288: return 'Подъемный кран'; break;
case 337: return 'Памятник пирату'; break;
case 315: return 'Фонтан'; break;
case 342: return 'Клетка'; break;
case 359: return 'Сундук'; break;
case 380: return 'Такелаж'; break;
case 298: return 'Яма'; break;
case 316: return 'Хижина мертвеца'; break;
case 290: return 'Бортовая пушка'; break;
case 353: return 'Ядра'; break;
case 360: return 'Старая лодка'; break;
case 338: return 'Пьяный пират'; break;
case 372: return 'Акулий скелет'; break;
case 293: return 'Телега'; break;
case 289: return 'Убежище Ктулху'; break;
case 294: return 'Т-Виселица'; break;
case 314: return 'Масляный фонарь'; break;
case 368: return 'Странный памятник'; break;
case 287: return 'Книга заклинаний'; break;
case 356: return 'Загадочный ящик'; break;
case 283: return 'Королевский флаг'; break;
case 278: return 'Сирена'; break;
case 279: return 'Нимфа'; break;
case 282: return 'Сердце моряка'; break;
case 285: return 'Надувное счастье'; break;
case 286: return 'Джентельмен удачи'; break;
case 295: return 'Памятник верности'; break;
case 296: return 'Благородное сердце'; break;
case 280: return 'Якорная цепь'; break;
case 281: return 'Штабель досок'; break;
case 284: return 'Веселый Роджер'; break;
case 292: return 'Сигнальная вышка'; break;
case 311: return 'Дерево скелетов'; break;
case 333: return 'Памятник киту'; break;
case 344: return 'Каменная ограда'; break;
case 355: return 'Якорь Фрэнсиса'; break;
case 318: return 'Рунные камни'; break;
case 319: return 'Моток веревки'; break;
case 382: return 'Штурвал'; break;
case 302: return 'Баррикада'; break;
case 320: return 'Клад'; break;
case 323: return 'Тайный колодец'; break;
case 329: return 'Грот-мачта'; break;
case 336: return 'Памятник Святой Деве'; break;
case 343: return 'Кипящая смола'; break;
case 374: return 'Солнечные ворота'; break;
case 352: return 'Заводная виселица'; break;
case 334: return 'Памятник кораблю'; break;
case 383: return 'Оружейная стойка'; break;
case 384: return 'Фонарь'; break;
case 385: return 'Амфоры'; break;
case 386: return 'Канатный моток'; break;
case 506: return 'Пороховые обезьяны'; break;
case 508: return 'Красные мундиры'; break;
case 507: return 'Морские волки'; break;
case 1: return 'Мародер'; break;
case 2: return 'Бестия'; break;
case 3: return 'Головорез'; break;
case 4: return 'Флибустьер'; break;
case 5: return 'Гренадер'; break;
case 6: return 'Бомбардир'; break;
case 7: return 'Кирасир'; break;
case 8: return 'Канонир'; break;
case 9: return 'Шлюпка'; break;
case 10: return 'Бригантина'; break;
case 11: return 'Галеон'; break;
case 12: return 'Фрегат'; break;
case 13: return 'Аэростат'; break;
case 14: return 'Подлодка'; break;
case 15: return 'Линкор'; break;
case 16: return 'Джаггернаут'; break;
case 59: return 'Разведчик "Цеппелин"'; break;
case 62: return 'Подлодка "Наутилус"'; break;
case 9000: return 'Разведчик "Винтокрыл"'; break;
case 9003: return '"Шторм"'; break;
case 17: return 'Отборный мародер'; break;
case 18: return 'Отборная бестия'; break;
case 19: return 'Отборный головорез'; break;
case 20: return 'Отборный флибустьер'; break;
case 21: return 'Отборный гренадер'; break;
case 22: return 'Отборный бомбардир'; break;
case 23: return 'Отборный кирасир'; break;
case 24: return 'Отборный канонир'; break;
case 25: return 'Отборная шлюпка'; break;
case 26: return 'Отборная бригантина'; break;
case 27: return 'Отборный галеон'; break;
case 28: return 'Отборный фрегат'; break;
case 29: return 'Отборный аэростат'; break;
case 30: return 'Отборная подлодка'; break;
case 31: return 'Отборный линкор'; break;
case 32: return 'Отборный джаггернаут'; break;
case 60: return 'Отборный "Цеппелин"'; break;
case 63: return 'Отборный "Наутилус"'; break;
case 9001: return 'Отборный "Винтокрыл"'; break;
case 9004: return 'Отборный "Шторм"'; break;
case 33: return 'Призрачный корсар'; break;
case 37: return 'Дикая кошка'; break;
case 38: return 'Сорвиголова'; break;
case 39: return 'Кобуксон'; break;
case 40: return 'Джонка'; break;
case 41: return 'Отборная дикая кошка'; break;
case 42: return 'Отборный сорвиголова'; break;
case 43: return 'Отборный кобуксон'; break;
case 44: return 'Отборная джонка'; break;
case 45: return 'Морпех'; break;
case 46: return 'Подрывница'; break;
case 47: return 'Люгер'; break;
case 48: return 'Шхуна'; break;
case 49: return 'Отборный морпех'; break;
case 50: return 'Отборная подрывница'; break;
case 51: return 'Отборный люгер'; break;
case 52: return 'Отборная шхуна'; break;
case 53: return 'Десперадо'; break;
case 54: return 'Конкистадор'; break;
case 55: return 'Инферно'; break;
case 56: return 'Эль Дьябло'; break;
case 57: return 'Одержимый'; break;
case 58: return 'Фантом'; break;
case 34: return 'Пороховые обезьяны'; break;
case 36: return 'Красные мундиры'; break;
case 35: return 'Морские волки'; break;
case 64: return 'Королевский мародер'; break;
case 65: return 'Королевская бестия'; break;
case 66: return 'Королевский головорез'; break;
case 67: return 'Королевский флибустьер'; break;
case 68: return 'Королевский гренадер'; break;
case 69: return 'Королевский бомбардир'; break;
case 70: return 'Королевский кирасир'; break;
case 71: return 'Королевский канонир'; break;
case 72: return 'Королевская шлюпка'; break;
case 73: return 'Королевская бригантина'; break;
case 74: return 'Королевский галеон'; break;
case 75: return 'Королевский фрегат'; break;
case 76: return 'Королевский аэростат'; break;
case 77: return 'Королевская подлодка'; break;
case 78: return 'Королевский линкор'; break;
case 79: return 'Королевский джаггернаут'; break;
case 80: return 'Королевская дикая кошка'; break;
case 81: return 'Королевский сорвиголова'; break;
case 82: return 'Королевский кобуксон'; break;
case 83: return 'Королевская джонка'; break;
case 84: return 'Королевский морпех'; break;
case 85: return 'Королевская подрывница'; break;
case 86: return 'Королевский люгер'; break;
case 87: return 'Королевская шхуна'; break;
case 61: return 'Королевский Цеппелин'; break;
case 99: return 'Королевский Наутилус'; break;
case 9002: return 'Королевский Винтокрыл'; break;
case 91: return 'Дирижабль'; break;
case 92: return 'Громобой'; break;
case 94: return 'Бастион'; break;
case 93: return 'Летучий Голландец'; break;
case 95: return 'Пиратский барон'; break;
case 96: return 'Боевой слон'; break;
case 97: return 'Мановар'; break;
case 98: return 'Кракен'; break;
case 1050: return 'Мореходство'; break;
case 1052: return 'Торговля'; break;
case 1154: return 'Чертеж для Математика'; break;
case 1054: return 'Математика'; break;
case 1153: return 'Чертеж для Контрабанда'; break;
case 1053: return 'Контрабанда'; break;
case 1155: return 'Чертеж для Экономика'; break;
case 1055: return 'Экономика'; break;
case 1156: return 'Чертеж для Мануфактура'; break;
case 1056: return 'Мануфактура'; break;
case 1157: return 'Чертеж для Капитализм'; break;
case 1057: return 'Капитализм'; break;
case 1058: return 'Фехтование'; break;
case 1059: return 'Стрельба'; break;
case 1160: return 'Чертеж для Дозор'; break;
case 1060: return 'Дозор'; break;
case 1161: return 'Чертеж для Абордаж'; break;
case 1061: return 'Абордаж'; break;
case 1162: return 'Чертеж для Саперное дело'; break;
case 1062: return 'Саперное дело'; break;
case 1178: return 'Чертеж для Металлургия'; break;
case 1078: return 'Металлургия'; break;
case 1163: return 'Чертеж для Оружейное дело'; break;
case 1063: return 'Оружейное дело'; break;
case 1179: return 'Чертеж для Артиллерия'; break;
case 1079: return 'Артиллерия'; break;
case 1165: return 'Чертеж для Кораблестроение'; break;
case 1065: return 'Кораблестроение'; break;
case 1168: return 'Чертеж для Навигация'; break;
case 1068: return 'Навигация'; break;
case 1166: return 'Чертеж для Бронирование'; break;
case 1066: return 'Бронирование'; break;
case 1169: return 'Чертеж для Инженерия'; break;
case 1069: return 'Инженерия'; break;
case 1072: return 'Крепость 1 ур.'; break;
case 1173: return 'Чертеж для Крепость 2 ур.'; break;
case 1073: return 'Крепость 2 ур.'; break;
case 1174: return 'Чертеж для Крепость 3 ур.'; break;
case 1074: return 'Крепость 3 ур.'; break;
case 1175: return 'Чертеж для Крепость 4 ур.'; break;
case 1075: return 'Крепость 4 ур.'; break;
case 1176: return 'Чертеж для Аэронавтика'; break;
case 1076: return 'Аэронавтика'; break;
case 1170: return 'Чертеж для Гидродинамика'; break;
case 1070: return 'Гидродинамика'; break;
case 1171: return 'Чертеж для Физика'; break;
case 1071: return 'Физика'; break;
case 1180: return 'Чертеж для Конвейер'; break;
case 1080: return 'Конвейер'; break;
case 1181: return 'Чертеж для Клык дракона'; break;
case 1081: return 'Клык дракона'; break;
case 1182: return 'Чертеж для Глаз дракона'; break;
case 1082: return 'Глаз дракона'; break;
case 1183: return 'Чертеж для Чешуя дракона'; break;
case 1083: return 'Чешуя дракона'; break;
case 1184: return 'Чертеж для Крыло дракона'; break;
case 1084: return 'Крыло дракона'; break;
case 1185: return 'Чертеж для Тактика'; break;
case 1085: return 'Тактика'; break;
case 1186: return 'Чертеж для Стратегия'; break;
case 1086: return 'Стратегия'; break;
case 1187: return 'Чертеж для Мобильные войска'; break;
case 1087: return 'Мобильные войска'; break;
case 1188: return 'Чертеж для Колонизация'; break;
case 1088: return 'Колонизация'; break;
case 1190: return 'Чертеж для Паровой двигатель'; break;
case 1090: return 'Паровой двигатель'; break;
case 1191: return 'Чертеж для Генератор Вальтера'; break;
case 1091: return 'Генератор Вальтера'; break;
case 1192: return 'Чертеж для Воздушный винт'; break;
case 1092: return 'Воздушный винт'; break;
case 1193: return 'Чертеж для Динамо-машина'; break;
case 1093: return 'Динамо-машина'; break;
case 1500: return 'Чертов корень'; break;
case 1501: return 'Веселый Роджер'; break;
case 1502: return 'Ручная граната'; break;
case 1503: return 'Гензель'; break;
case 1504: return 'Боевой попугай'; break;
case 1505: return 'Кодекс Пирата'; break;
case 1506: return 'Фламберг'; break;
case 1507: return 'Коготь Кракена'; break;
case 1508: return 'Адское пойло'; break;
case 1509: return 'Наковальня Левши'; break;
case 1510: return 'Абордажный крюк'; break;
case 1511: return 'Пилюли для жадности'; break;
case 1512: return 'Троица'; break;
case 1513: return 'Арсенал'; break;
case 1514: return 'Сапоги-мореходы'; break;
case 1515: return 'Жало'; break;
case 1516: return 'Янтарное пламя'; break;
case 1517: return 'Шкатулка Мадам Цин'; break;
case 1518: return 'Реактивное топливо'; break;
case 1519: return 'Амброзия'; break;
case 1520: return 'Книппель'; break;
case 1521: return 'Брандскугели'; break;
case 1522: return 'Стимул'; break;
case 1523: return 'Гроздья гнева'; break;
case 1524: return 'Костяной рупор'; break;
case 1525: return 'Мешок Борея'; break;
case 1526: return 'Звезда смерти'; break;
case 1527: return 'Пламя дракона'; break;
case 1528: return 'Пулемет'; break;
case 1529: return 'Штык-палаш'; break;
case 1530: return 'Бумеранг'; break;
case 1531: return 'Пороховая обезьяна'; break;
case 1532: return 'Волшебная палочка'; break;
case 1533: return 'Сундук мертвеца'; break;
case 1534: return 'Часы Да Винчи'; break;
case 1535: return 'Инструменты Блада'; break;
case 1600: return 'Докторская сумка'; break;
case 1601: return 'Рукав Сильвера'; break;
case 1602: return 'Спасательный круг'; break;
case 1603: return 'Походные аптечки'; break;
case 1604: return 'Кираса Кортеса'; break;
case 1605: return 'Боевая раскраска'; break;
case 1606: return 'Маска Горгоны'; break;
case 1607: return 'Щит Калипсо'; break;
case 1608: return 'Рыбья чешуя'; break;
case 1609: return 'Волшебный порошок'; break;
case 1610: return 'Кукла Вуду'; break;
case 1611: return 'Гримуар'; break;
case 1612: return 'Боевой барабан'; break;
case 1613: return 'Знамя наемников'; break;
case 1614: return 'Фартук Гефеста'; break;
case 1615: return 'Шайтан-коробка'; break;
case 1616: return 'Заслон'; break;
case 1617: return 'Огнемет'; break;
case 1618: return 'Платок Изабеллы'; break;
case 1619: return 'Инквизитор'; break;
case 1620: return 'Бастер'; break;
case 1621: return 'Штурвал Синдбада'; break;
case 1622: return 'Архангел'; break;
case 1623: return 'Маскировочная сеть'; break;
case 1624: return 'Ослепительный прибор'; break;
case 1625: return 'Подводная мина'; break;
case 1626: return 'Коготь тигра'; break;
case 1627: return 'Кошачий глаз'; break;
case 1628: return 'Кошачья колыбель'; break;
case 1629: return 'Бамбуковая броня'; break;
case 1630: return 'Алтарь дракона'; break;
case 1631: return 'Заклятье'; break;
case 1632: return 'Навигатор'; break;
case 1633: return 'Астролябия'; break;
case 1634: return 'Волшебная лампа'; break;
case 1635: return 'Дух дракона'; break;
case 1636: return 'Стальное крыло'; break;
case 1637: return 'Защитник Тэнгу'; break;
case 1638: return 'Знамя драконов'; break;
case 1639: return 'Табак боцмана'; break;
case 1640: return 'Каша из топора'; break;
case 1641: return 'Саламандра'; break;
case 1642: return 'Черная вдова'; break;
case 1643: return 'Приказ министерства'; break;
case 1644: return 'Золотой ключик'; break;
case 1645: return 'Подзорная труба Нельсона'; break;
case 1646: return 'Перстень короля'; break;
case 1647: return 'Чертежи адмиралтейства'; break;
case 1648: return 'Ultima ratio'; break;
case 1649: return 'Слуховая трубка'; break;
case 1650: return 'Подзорная труба Фогга'; break;
case 1651: return 'Винты да Винчи'; break;
case 1700: return 'Правдоруб'; break;
case 1701: return 'Автоматон'; break;
case 1702: return 'Карта сокровищ'; break;
case 1703: return 'Крюк Мидаса'; break;
case 1704: return 'Замок квартирмейстера'; break;
case 1705: return 'Фляга Джека'; break;
case 1706: return 'Бурдюк Бахуса'; break;
case 1707: return 'Сундук Дэйви Джонса'; break;
case 1708: return 'Проклятый дублон'; break;
case 1709: return 'Дневник Ньютона'; break;
case 1710: return 'Паровой станок'; break;
case 1711: return 'Калькулятор'; break;
case 1712: return 'Испанский сапог'; break;
case 1713: return 'Тотем'; break;
case 1714: return 'Золотое руно'; break;
case 1901: return 'Идол Ацтеков'; break;
default: return 'Название не установлено';
}
}

public function GetItemId($i)
{
switch($i)
{
case 'Дом Капитана': return 100; break;
case 'Обсерватория': return 127; break;
case 'Рынок': return 124; break;
case 'Береговое братство': return 101; break;
case 'Маяк': return 138; break;
case 'Гавань': return 150; break;
case 'Алтарь вуду': return 144; break;
case 'Сокровищница': return 139; break;
case 'Торговая компания': return 137; break;
case 'Лавка картографа': return 125; break;
case 'Гильдия купцов': return 126; break;
case 'Залежи золота': return 198; break;
case 'Залежи дерева': return 199; break;
case 'Фабрика рома': return 106; break;
case 'Лесоповал': return 104; break;
case 'Золотой прииск': return 102; break;
case 'Погреб': return 109; break;
case 'Склад': return 108; break;
case 'Ломбард': return 103; break;
case 'Лесопилка': return 105; break;
case 'Мельница': return 107; break;
case 'Комендатура': return 110; break;
case 'Таверна': return 112; break;
case 'Кладбище': return 600; break;
case 'Эллинг': return 118; break;
case 'Трактир': return 113; break;
case 'Оружейная': return 114; break;
case 'Пушечный двор': return 115; break;
case 'Верфь': return 116; break;
case 'Сухой док': return 117; break;
case 'Адмиралтейство': return 119; break;
case 'Черный рынок': return 120; break;
case 'Машинариум': return 148; break;
case 'Цех': return 149; break;
case 'Храм Дракона': return 141; break;
case 'Форт каперов': return 142; break;
case 'Стена 1 ур.': return 200; break;
case 'Башня 1 ур.': return 201; break;
case 'Ворота 1 ур.': return 202; break;
case 'Пушка 1 ур.': return 122; break;
case 'Гарпун 1 ур.': return 123; break;
case 'Дозорный 1 ур.': return 121; break;
case 'Стена 2 ур.': return 203; break;
case 'Башня 2 ур.': return 204; break;
case 'Ворота 2 ур.': return 205; break;
case 'Пушка 2 ур.': return 131; break;
case 'Гарпун 2 ур.': return 134; break;
case 'Дозорный 2 ур.': return 128; break;
case 'Стена 3 ур.': return 206; break;
case 'Башня 3 ур.': return 207; break;
case 'Ворота 3 ур.': return 208; break;
case 'Пушка 3 ур.': return 132; break;
case 'Гарпун 3 ур.': return 135; break;
case 'Дозорный 3 ур.': return 129; break;
case 'Стена 4 ур.': return 209; break;
case 'Башня 4 ур.': return 210; break;
case 'Ворота 4 ур.': return 211; break;
case 'Пушка 4 ур.': return 133; break;
case 'Гарпун 4 ур.': return 136; break;
case 'Дозорный 4 ур.': return 130; break;
case 'Пушка Амура': return 744; break;
case 'Настоящее сокровище': return 745; break;
case 'Любовное послание': return 746; break;
case 'Королева жемчужин': return 747; break;
case 'Влюбленный Ктулху': return 748; break;
case 'Хранитель сердец': return 749; break;
case 'Могила корсара': return 500; break;
case 'Соколиное Гнездо': return 299; break;
case 'Пиратский схрон': return 303; break;
case 'Могила Кидда': return 304; break;
case 'Веселое пекло': return 313; break;
case 'Бунгало туземца': return 317; break;
case 'Котелок Кука': return 324; break;
case 'Плот Робинзона': return 328; break;
case 'Большая Берта': return 339; break;
case 'Бочка рома': return 306; break;
case 'Бочки пороха': return 307; break;
case 'Адские барабаны': return 301; break;
case 'Частокол': return 310; break;
case 'Весы судьбы': return 381; break;
case 'Кубок молодости': return 361; break;
case 'П-Виселица': return 297; break;
case 'Мешки': return 331; break;
case 'Стол картографа': return 291; break;
case 'Деревянный щит': return 341; break;
case 'Подъемный кран': return 288; break;
case 'Памятник пирату': return 337; break;
case 'Фонтан': return 315; break;
case 'Клетка': return 342; break;
case 'Сундук': return 359; break;
case 'Такелаж': return 380; break;
case 'Яма': return 298; break;
case 'Хижина мертвеца': return 316; break;
case 'Бортовая пушка': return 290; break;
case 'Ядра': return 353; break;
case 'Старая лодка': return 360; break;
case 'Пьяный пират': return 338; break;
case 'Акулий скелет': return 372; break;
case 'Телега': return 293; break;
case 'Убежище Ктулху': return 289; break;
case 'Т-Виселица': return 294; break;
case 'Масляный фонарь': return 314; break;
case 'Странный памятник': return 368; break;
case 'Книга заклинаний': return 287; break;
case 'Загадочный ящик': return 356; break;
case 'Королевский флаг': return 283; break;
case 'Сирена': return 278; break;
case 'Нимфа': return 279; break;
case 'Сердце моряка': return 282; break;
case 'Надувное счастье': return 285; break;
case 'Джентельмен удачи': return 286; break;
case 'Памятник верности': return 295; break;
case 'Благородное сердце': return 296; break;
case 'Якорная цепь': return 280; break;
case 'Штабель досок': return 281; break;
case 'Веселый Роджер': return 284; break;
case 'Сигнальная вышка': return 292; break;
case 'Дерево скелетов': return 311; break;
case 'Памятник киту': return 333; break;
case 'Каменная ограда': return 344; break;
case 'Якорь Фрэнсиса': return 355; break;
case 'Рунные камни': return 318; break;
case 'Моток веревки': return 319; break;
case 'Штурвал': return 382; break;
case 'Баррикада': return 302; break;
case 'Клад': return 320; break;
case 'Тайный колодец': return 323; break;
case 'Грот-мачта': return 329; break;
case 'Памятник Святой Деве': return 336; break;
case 'Кипящая смола': return 343; break;
case 'Солнечные ворота': return 374; break;
case 'Заводная виселица': return 352; break;
case 'Памятник кораблю': return 334; break;
case 'Оружейная стойка': return 383; break;
case 'Фонарь': return 384; break;
case 'Амфоры': return 385; break;
case 'Канатный моток': return 386; break;
case 'Пороховые обезьяны': return 506; break;
case 'Красные мундиры': return 508; break;
case 'Морские волки': return 507; break;
case 'Мародер': return 1; break;
case 'Бестия': return 2; break;
case 'Головорез': return 3; break;
case 'Флибустьер': return 4; break;
case 'Гренадер': return 5; break;
case 'Бомбардир': return 6; break;
case 'Кирасир': return 7; break;
case 'Канонир': return 8; break;
case 'Шлюпка': return 9; break;
case 'Бригантина': return 10; break;
case 'Галеон': return 11; break;
case 'Фрегат': return 12; break;
case 'Аэростат': return 13; break;
case 'Подлодка': return 14; break;
case 'Линкор': return 15; break;
case 'Джаггернаут': return 16; break;
case 'Разведчик "Цеппелин"': return 59; break;
case 'Подлодка "Наутилус"': return 62; break;
case 'Разведчик "Винтокрыл"': return 9000; break;
case '"Шторм"': return 9003; break;
case 'Отборный мародер': return 17; break;
case 'Отборная бестия': return 18; break;
case 'Отборный головорез': return 19; break;
case 'Отборный флибустьер': return 20; break;
case 'Отборный гренадер': return 21; break;
case 'Отборный бомбардир': return 22; break;
case 'Отборный кирасир': return 23; break;
case 'Отборный канонир': return 24; break;
case 'Отборная шлюпка': return 25; break;
case 'Отборная бригантина': return 26; break;
case 'Отборный галеон': return 27; break;
case 'Отборный фрегат': return 28; break;
case 'Отборный аэростат': return 29; break;
case 'Отборная подлодка': return 30; break;
case 'Отборный линкор': return 31; break;
case 'Отборный джаггернаут': return 32; break;
case 'Отборный "Цеппелин"': return 60; break;
case 'Отборный "Наутилус"': return 63; break;
case 'Отборный "Винтокрыл"': return 9001; break;
case 'Отборный "Шторм"': return 9004; break;
case 'Призрачный корсар': return 33; break;
case 'Дикая кошка': return 37; break;
case 'Сорвиголова': return 38; break;
case 'Кобуксон': return 39; break;
case 'Джонка': return 40; break;
case 'Отборная дикая кошка': return 41; break;
case 'Отборный сорвиголова': return 42; break;
case 'Отборный кобуксон': return 43; break;
case 'Отборная джонка': return 44; break;
case 'Морпех': return 45; break;
case 'Подрывница': return 46; break;
case 'Люгер': return 47; break;
case 'Шхуна': return 48; break;
case 'Отборный морпех': return 49; break;
case 'Отборная подрывница': return 50; break;
case 'Отборный люгер': return 51; break;
case 'Отборная шхуна': return 52; break;
case 'Десперадо': return 53; break;
case 'Конкистадор': return 54; break;
case 'Инферно': return 55; break;
case 'Эль Дьябло': return 56; break;
case 'Одержимый': return 57; break;
case 'Фантом': return 58; break;
case 'Пороховые обезьяны': return 34; break;
case 'Красные мундиры': return 36; break;
case 'Морские волки': return 35; break;
case 'Королевский мародер': return 64; break;
case 'Королевская бестия': return 65; break;
case 'Королевский головорез': return 66; break;
case 'Королевский флибустьер': return 67; break;
case 'Королевский гренадер': return 68; break;
case 'Королевский бомбардир': return 69; break;
case 'Королевский кирасир': return 70; break;
case 'Королевский канонир': return 71; break;
case 'Королевская шлюпка': return 72; break;
case 'Королевская бригантина': return 73; break;
case 'Королевский галеон': return 74; break;
case 'Королевский фрегат': return 75; break;
case 'Королевский аэростат': return 76; break;
case 'Королевская подлодка': return 77; break;
case 'Королевский линкор': return 78; break;
case 'Королевский джаггернаут': return 79; break;
case 'Королевская дикая кошка': return 80; break;
case 'Королевский сорвиголова': return 81; break;
case 'Королевский кобуксон': return 82; break;
case 'Королевская джонка': return 83; break;
case 'Королевский морпех': return 84; break;
case 'Королевская подрывница': return 85; break;
case 'Королевский люгер': return 86; break;
case 'Королевская шхуна': return 87; break;
case 'Королевский Цеппелин': return 61; break;
case 'Королевский Наутилус': return 99; break;
case 'Королевский Винтокрыл': return 9002; break;
case 'Дирижабль': return 91; break;
case 'Громобой': return 92; break;
case 'Бастион': return 94; break;
case 'Летучий Голландец': return 93; break;
case 'Пиратский барон': return 95; break;
case 'Боевой слон': return 96; break;
case 'Мановар': return 97; break;
case 'Кракен': return 98; break;
case 'Мореходство': return 1050; break;
case 'Торговля': return 1052; break;
case 'Чертеж для Математика': return 1154; break;
case 'Математика': return 1054; break;
case 'Чертеж для Контрабанда': return 1153; break;
case 'Контрабанда': return 1053; break;
case 'Чертеж для Экономика': return 1155; break;
case 'Экономика': return 1055; break;
case 'Чертеж для Мануфактура': return 1156; break;
case 'Мануфактура': return 1056; break;
case 'Чертеж для Капитализм': return 1157; break;
case 'Капитализм': return 1057; break;
case 'Фехтование': return 1058; break;
case 'Стрельба': return 1059; break;
case 'Чертеж для Дозор': return 1160; break;
case 'Дозор': return 1060; break;
case 'Чертеж для Абордаж': return 1161; break;
case 'Абордаж': return 1061; break;
case 'Чертеж для Саперное дело': return 1162; break;
case 'Саперное дело': return 1062; break;
case 'Чертеж для Металлургия': return 1178; break;
case 'Металлургия': return 1078; break;
case 'Чертеж для Оружейное дело': return 1163; break;
case 'Оружейное дело': return 1063; break;
case 'Чертеж для Артиллерия': return 1179; break;
case 'Артиллерия': return 1079; break;
case 'Чертеж для Кораблестроение': return 1165; break;
case 'Кораблестроение': return 1065; break;
case 'Чертеж для Навигация': return 1168; break;
case 'Навигация': return 1068; break;
case 'Чертеж для Бронирование': return 1166; break;
case 'Бронирование': return 1066; break;
case 'Чертеж для Инженерия': return 1169; break;
case 'Инженерия': return 1069; break;
case 'Крепость 1 ур.': return 1072; break;
case 'Чертеж для Крепость 2 ур.': return 1173; break;
case 'Крепость 2 ур.': return 1073; break;
case 'Чертеж для Крепость 3 ур.': return 1174; break;
case 'Крепость 3 ур.': return 1074; break;
case 'Чертеж для Крепость 4 ур.': return 1175; break;
case 'Крепость 4 ур.': return 1075; break;
case 'Чертеж для Аэронавтика': return 1176; break;
case 'Аэронавтика': return 1076; break;
case 'Чертеж для Гидродинамика': return 1170; break;
case 'Гидродинамика': return 1070; break;
case 'Чертеж для Физика': return 1171; break;
case 'Физика': return 1071; break;
case 'Чертеж для Конвейер': return 1180; break;
case 'Конвейер': return 1080; break;
case 'Чертеж для Клык дракона': return 1181; break;
case 'Клык дракона': return 1081; break;
case 'Чертеж для Глаз дракона': return 1182; break;
case 'Глаз дракона': return 1082; break;
case 'Чертеж для Чешуя дракона': return 1183; break;
case 'Чешуя дракона': return 1083; break;
case 'Чертеж для Крыло дракона': return 1184; break;
case 'Крыло дракона': return 1084; break;
case 'Чертеж для Тактика': return 1185; break;
case 'Тактика': return 1085; break;
case 'Чертеж для Стратегия': return 1186; break;
case 'Стратегия': return 1086; break;
case 'Чертеж для Мобильные войска': return 1187; break;
case 'Мобильные войска': return 1087; break;
case 'Чертеж для Колонизация': return 1188; break;
case 'Колонизация': return 1088; break;
case 'Чертеж для Паровой двигатель': return 1190; break;
case 'Паровой двигатель': return 1090; break;
case 'Чертеж для Генератор Вальтера': return 1191; break;
case 'Генератор Вальтера': return 1091; break;
case 'Чертеж для Воздушный винт': return 1192; break;
case 'Воздушный винт': return 1092; break;
case 'Чертеж для Динамо-машина': return 1193; break;
case 'Динамо-машина': return 1093; break;
case 'Чертов корень': return 1500; break;
case 'Веселый Роджер': return 1501; break;
case 'Ручная граната': return 1502; break;
case 'Гензель': return 1503; break;
case 'Боевой попугай': return 1504; break;
case 'Кодекс Пирата': return 1505; break;
case 'Фламберг': return 1506; break;
case 'Коготь Кракена': return 1507; break;
case 'Адское пойло': return 1508; break;
case 'Наковальня Левши': return 1509; break;
case 'Абордажный крюк': return 1510; break;
case 'Пилюли для жадности': return 1511; break;
case 'Троица': return 1512; break;
case 'Арсенал': return 1513; break;
case 'Сапоги-мореходы': return 1514; break;
case 'Жало': return 1515; break;
case 'Янтарное пламя': return 1516; break;
case 'Шкатулка Мадам Цин': return 1517; break;
case 'Реактивное топливо': return 1518; break;
case 'Амброзия': return 1519; break;
case 'Книппель': return 1520; break;
case 'Брандскугели': return 1521; break;
case 'Стимул': return 1522; break;
case 'Гроздья гнева': return 1523; break;
case 'Костяной рупор': return 1524; break;
case 'Мешок Борея': return 1525; break;
case 'Звезда смерти': return 1526; break;
case 'Пламя дракона': return 1527; break;
case 'Пулемет': return 1528; break;
case 'Штык-палаш': return 1529; break;
case 'Бумеранг': return 1530; break;
case 'Пороховая обезьяна': return 1531; break;
case 'Волшебная палочка': return 1532; break;
case 'Сундук мертвеца': return 1533; break;
case 'Часы Да Винчи': return 1534; break;
case 'Инструменты Блада': return 1535; break;
case 'Докторская сумка': return 1600; break;
case 'Рукав Сильвера': return 1601; break;
case 'Спасательный круг': return 1602; break;
case 'Походные аптечки': return 1603; break;
case 'Кираса Кортеса': return 1604; break;
case 'Боевая раскраска': return 1605; break;
case 'Маска Горгоны': return 1606; break;
case 'Щит Калипсо': return 1607; break;
case 'Рыбья чешуя': return 1608; break;
case 'Волшебный порошок': return 1609; break;
case 'Кукла Вуду': return 1610; break;
case 'Гримуар': return 1611; break;
case 'Боевой барабан': return 1612; break;
case 'Знамя наемников': return 1613; break;
case 'Фартук Гефеста': return 1614; break;
case 'Шайтан-коробка': return 1615; break;
case 'Заслон': return 1616; break;
case 'Огнемет': return 1617; break;
case 'Платок Изабеллы': return 1618; break;
case 'Инквизитор': return 1619; break;
case 'Бастер': return 1620; break;
case 'Штурвал Синдбада': return 1621; break;
case 'Архангел': return 1622; break;
case 'Маскировочная сеть': return 1623; break;
case 'Ослепительный прибор': return 1624; break;
case 'Подводная мина': return 1625; break;
case 'Коготь тигра': return 1626; break;
case 'Кошачий глаз': return 1627; break;
case 'Кошачья колыбель': return 1628; break;
case 'Бамбуковая броня': return 1629; break;
case 'Алтарь дракона': return 1630; break;
case 'Заклятье': return 1631; break;
case 'Навигатор': return 1632; break;
case 'Астролябия': return 1633; break;
case 'Волшебная лампа': return 1634; break;
case 'Дух дракона': return 1635; break;
case 'Стальное крыло': return 1636; break;
case 'Защитник Тэнгу': return 1637; break;
case 'Знамя драконов': return 1638; break;
case 'Табак боцмана': return 1639; break;
case 'Каша из топора': return 1640; break;
case 'Саламандра': return 1641; break;
case 'Черная вдова': return 1642; break;
case 'Приказ министерства': return 1643; break;
case 'Золотой ключик': return 1644; break;
case 'Подзорная труба Нельсона': return 1645; break;
case 'Перстень короля': return 1646; break;
case 'Чертежи адмиралтейства': return 1647; break;
case 'Ultima ratio': return 1648; break;
case 'Слуховая трубка': return 1649; break;
case 'Подзорная труба Фогга': return 1650; break;
case 'Винты да Винчи': return 1651; break;
case 'Правдоруб': return 1700; break;
case 'Автоматон': return 1701; break;
case 'Карта сокровищ': return 1702; break;
case 'Крюк Мидаса': return 1703; break;
case 'Замок квартирмейстера': return 1704; break;
case 'Фляга Джека': return 1705; break;
case 'Бурдюк Бахуса': return 1706; break;
case 'Сундук Дэйви Джонса': return 1707; break;
case 'Проклятый дублон': return 1708; break;
case 'Дневник Ньютона': return 1709; break;
case 'Паровой станок': return 1710; break;
case 'Калькулятор': return 1711; break;
case 'Испанский сапог': return 1712; break;
case 'Тотем': return 1713; break;
case 'Золотое руно': return 1714; break;
case 'Идол Ацтеков': return 1901; break;
default: return -1;
}
}

public function GetItemU($i)
{
switch($i)
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

public function GetItemT($i)
{
switch($i)
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

public function GetItemM($i)
{
switch($i)
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

public function GetItemG($i)
{
switch($i)
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

public function GetItemC($i)
{
switch($i)
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

public function GetItemS($i)
{
switch($i)
{
case '"1"': return 60; break;
case '"2"': return 180; break;
case '"3"': return 60; break;
case '"4"': return 180; break;
case '"5"': return 180; break;
case '"6"': return 180; break;
case '"7"': return 120; break;
case '"8"': return 60; break;
case '"9"': return 120; break;
case '"10"': return 120; break;
case '"11"': return 120; break;
case '"12"': return 120; break;
case '"13"': return 240; break;
case '"14"': return 120; break;
case '"15"': return 240; break;
case '"16"': return 180; break;
case '"59"': return 480; break;
case '"62"': return 240; break;
case '"17"': return 60; break;
case '"18"': return 180; break;
case '"19"': return 60; break;
case '"20"': return 180; break;
case '"21"': return 180; break;
case '"22"': return 180; break;
case '"23"': return 120; break;
case '"24"': return 60; break;
case '"25"': return 120; break;
case '"26"': return 120; break;
case '"27"': return 120; break;
case '"28"': return 120; break;
case '"29"': return 240; break;
case '"30"': return 120; break;
case '"31"': return 240; break;
case '"32"': return 180; break;
case '"60"': return 480; break;
case '"63"': return 240; break;
case '"33"': return 120; break;
case '"37"': return 120; break;
case '"38"': return 120; break;
case '"39"': return 120; break;
case '"40"': return 120; break;
case '"41"': return 120; break;
case '"42"': return 120; break;
case '"43"': return 120; break;
case '"44"': return 120; break;
case '"45"': return 240; break;
case '"46"': return 180; break;
case '"47"': return 180; break;
case '"48"': return 300; break;
case '"49"': return 240; break;
case '"50"': return 180; break;
case '"51"': return 180; break;
case '"52"': return 300; break;
case '"53"': return 120; break;
case '"54"': return 120; break;
case '"55"': return 120; break;
case '"56"': return 120; break;
case '"57"': return 120; break;
case '"58"': return 240; break;
case '"34"': return 60; break;
case '"36"': return 60; break;
case '"35"': return 60; break;
case '"64"': return 60; break;
case '"65"': return 180; break;
case '"66"': return 60; break;
case '"67"': return 180; break;
case '"68"': return 180; break;
case '"69"': return 180; break;
case '"70"': return 120; break;
case '"71"': return 60; break;
case '"72"': return 120; break;
case '"73"': return 120; break;
case '"74"': return 120; break;
case '"75"': return 120; break;
case '"76"': return 240; break;
case '"77"': return 120; break;
case '"78"': return 240; break;
case '"79"': return 180; break;
case '"80"': return 120; break;
case '"81"': return 120; break;
case '"82"': return 120; break;
case '"83"': return 120; break;
case '"84"': return 240; break;
case '"85"': return 180; break;
case '"86"': return 180; break;
case '"87"': return 300; break;
case '"61"': return 480; break;
case '"99"': return 240; break;
case '"91"': return 480; break;
case '"92"': return 240; break;
case '"94"': return 180; break;
case '"93"': return 360; break;
case '"95"': return 300; break;
case '"96"': return 240; break;
case '"97"': return 240; break;
case '"98"': return 300; break;
default: return -1;
}
}

public function GetItemP($i)
{
switch($i)
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

public function GetTrN($i)
{
switch($i)
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

public function GetTrP($i)
{
switch($i)
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

public function GetTrS($i)
{
switch($i)
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

public function GetWareCapacity($i)
{
switch($i)
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

public function GetItemB($i)
{
switch($i)
{
case 124: return '1052-1'; break;
case 101: return '127-1'; break;
case 138: return '112-1:118-1:124-1:101-1'; break;
case 144: return '112-1'; break;
case 139: return '112-1:118-1:124-1:101-1'; break;
case 137: return '110-1'; break;
case 125: return '1054-1:124-1'; break;
case 126: return '1053-1:125-1'; break;
case 103: return '1057-1:102-10'; break;
case 105: return '1056-1:104-10'; break;
case 107: return '1055-1:106-10'; break;
case 110: return '1050-1:100-1:127-1'; break;
case 112: return '1058-1'; break;
case 600: return '112-1'; break;
case 118: return '1076-1'; break;
case 113: return '1060-1:112-1'; break;
case 114: return '1062-1:113-1'; break;
case 115: return '1063-1:114-1'; break;
case 116: return '1065-1:115-1'; break;
case 117: return '1066-1:116-1'; break;
case 119: return '1070-1:118-1'; break;
case 120: return '124-1'; break;
case 148: return '1090-1'; break;
case 149: return '148-1'; break;
case 141: return '1081-1:114-1'; break;
case 142: return '1085-1'; break;
case 200: return '100-1:1072-1'; break;
case 201: return '100-1:1072-1'; break;
case 202: return '100-1:1072-1'; break;
case 122: return '100-1:1072-1'; break;
case 123: return '100-1:1072-1'; break;
case 121: return '100-1:1072-1'; break;
case 203: return '100-1:1073-1'; break;
case 204: return '100-1:1073-1'; break;
case 205: return '100-1:1073-1'; break;
case 131: return '100-1:1073-1'; break;
case 134: return '100-1:1073-1'; break;
case 128: return '100-1:1073-1'; break;
case 206: return '100-1:1074-1'; break;
case 207: return '100-1:1074-1'; break;
case 208: return '100-1:1074-1'; break;
case 132: return '100-1:1074-1'; break;
case 135: return '100-1:1074-1'; break;
case 129: return '100-1:1074-1'; break;
case 209: return '100-1:1075-1'; break;
case 210: return '100-1:1075-1'; break;
case 211: return '100-1:1075-1'; break;
case 133: return '100-1:1075-1'; break;
case 136: return '100-1:1075-1'; break;
case 130: return '100-1:1075-1'; break;
case 744: return '100-1:1050-1'; break;
case 745: return '100-1:1050-1'; break;
case 746: return '100-1:1050-1'; break;
case 747: return '100-1:1050-1'; break;
case 748: return '100-1:1050-1'; break;
case 749: return '100-1:1050-1'; break;
case 500: return '100-1:600-1'; break;
case 299: return '100-1:1050-1'; break;
case 303: return '100-1:1050-1'; break;
case 304: return '100-1:1050-1'; break;
case 313: return '100-1:1050-1'; break;
case 317: return '100-1:1050-1'; break;
case 324: return '100-1:1050-1'; break;
case 328: return '100-1:1050-1'; break;
case 339: return '100-1:1050-1'; break;
case 306: return '100-1:1050-1'; break;
case 307: return '100-1:1050-1'; break;
case 301: return '100-1:1050-1'; break;
case 310: return '100-1:1050-1'; break;
case 381: return '100-1:1050-1'; break;
case 361: return '100-1:1050-1'; break;
case 297: return '100-1:1050-1'; break;
case 331: return '100-1:1050-1'; break;
case 291: return '100-1:1050-1'; break;
case 341: return '100-1:1050-1'; break;
case 288: return '100-1:1050-1'; break;
case 337: return '100-1:1050-1'; break;
case 315: return '100-1:1050-1'; break;
case 342: return '100-1:1050-1'; break;
case 359: return '100-1:1050-1'; break;
case 380: return '100-1:1050-1'; break;
case 298: return '100-1:1050-1'; break;
case 316: return '100-1:1050-1'; break;
case 290: return '100-1:1050-1'; break;
case 353: return '100-1:1050-1'; break;
case 360: return '100-1:1050-1'; break;
case 338: return '100-1:1050-1'; break;
case 372: return '100-1:1050-1'; break;
case 293: return '100-1:1050-1'; break;
case 289: return '100-1:1050-1'; break;
case 294: return '100-1:1050-1'; break;
case 314: return '100-1:1050-1'; break;
case 368: return '100-1:1050-1'; break;
case 287: return '100-1:1050-1'; break;
case 356: return '100-1:1050-1'; break;
case 283: return '100-1:1050-1'; break;
case 278: return '100-1:1050-1'; break;
case 279: return '100-1:1050-1'; break;
case 282: return '100-1:1050-1'; break;
case 285: return '100-1:1050-1'; break;
case 286: return '100-1:1050-1'; break;
case 295: return '100-1:1050-1'; break;
case 296: return '100-1:1050-1'; break;
case 280: return '100-1:1050-1'; break;
case 281: return '100-1:1050-1'; break;
case 284: return '100-1:1050-1'; break;
case 292: return '100-1:1050-1'; break;
case 311: return '100-1:1050-1'; break;
case 333: return '100-1:1050-1'; break;
case 344: return '100-1:1050-1'; break;
case 355: return '100-1:1050-1'; break;
case 318: return '100-1:1050-1'; break;
case 319: return '100-1:1050-1'; break;
case 382: return '100-1:1050-1'; break;
case 302: return '100-1:1050-1'; break;
case 320: return '100-1:1050-1'; break;
case 323: return '100-1:1050-1'; break;
case 329: return '100-1:1050-1'; break;
case 336: return '100-1:1050-1'; break;
case 343: return '100-1:1050-1'; break;
case 374: return '100-1:1050-1'; break;
case 352: return '100-1:1050-1'; break;
case 334: return '100-1:1050-1'; break;
case 383: return '100-1:1050-1'; break;
case 384: return '100-1:1050-1'; break;
case 385: return '100-1:1050-1'; break;
case 386: return '100-1:1050-1'; break;
case 506: return '100-1:1050-1'; break;
case 508: return '100-1:1050-1'; break;
case 507: return '100-1:1050-1'; break;
case 1: return '112-1:1058-1'; break;
case 2: return '112-1:1059-1'; break;
case 3: return '113-1:1060-1'; break;
case 4: return '113-1:1061-1'; break;
case 5: return '114-1:1062-1'; break;
case 6: return '114-1:1078-1'; break;
case 7: return '115-1:1063-1'; break;
case 8: return '115-1:1079-1'; break;
case 9: return '116-1:1065-1'; break;
case 10: return '116-1:1068-1'; break;
case 11: return '117-1:1066-1'; break;
case 12: return '117-1:1069-1'; break;
case 13: return '118-1:1076-1'; break;
case 14: return '119-1:1070-1'; break;
case 15: return '119-1:1071-1'; break;
case 16: return '119-1:1080-1'; break;
case 59: return '148-1:1090-1'; break;
case 62: return '148-1:1091-1'; break;
case 9000: return '148-1:1092-1'; break;
case 9003: return '148-1:1093-1'; break;
case 17: return '112-1:1058-1'; break;
case 18: return '112-1:1059-1'; break;
case 19: return '113-1:1060-1'; break;
case 20: return '113-1:1061-1'; break;
case 21: return '114-1:1062-1'; break;
case 22: return '114-1:1078-1'; break;
case 23: return '115-1:1063-1'; break;
case 24: return '115-1:1079-1'; break;
case 25: return '116-1:1065-1'; break;
case 26: return '116-1:1068-1'; break;
case 27: return '117-1:1066-1'; break;
case 28: return '117-1:1069-1'; break;
case 29: return '118-1:1076-1'; break;
case 30: return '119-1:1070-1'; break;
case 31: return '119-1:1071-1'; break;
case 32: return '119-1:1080-1'; break;
case 60: return '148-1:1090-1'; break;
case 63: return '148-1:1091-1'; break;
case 9001: return '148-1:1092-1'; break;
case 9004: return '148-1:1093-1'; break;
case 37: return '141-1:1081-1'; break;
case 38: return '141-1:1082-1'; break;
case 39: return '141-1:1083-1'; break;
case 40: return '141-1:1084-1'; break;
case 41: return '141-1:1081-1'; break;
case 42: return '141-1:1082-1'; break;
case 43: return '141-1:1083-1'; break;
case 44: return '141-1:1084-1'; break;
case 45: return '142-1:1085-1'; break;
case 46: return '142-1:1086-1'; break;
case 47: return '142-1:1087-1'; break;
case 48: return '142-1:1088-1'; break;
case 49: return '142-1:1085-1'; break;
case 50: return '142-1:1086-1'; break;
case 51: return '142-1:1087-1'; break;
case 52: return '142-1:1088-1'; break;
case 1050: return '127-1'; break;
case 1052: return '1050-1'; break;
case 1054: return '1052-1:124-1:1154-1'; break;
case 1053: return '1054-1:124-1:1153-1'; break;
case 1055: return '1053-1:106-10:1155-1'; break;
case 1056: return '1055-1:104-10:1156-1'; break;
case 1057: return '1056-1:102-10:1157-1'; break;
case 1058: return '1050-1:110-1'; break;
case 1059: return '1058-1:112-1'; break;
case 1060: return '1059-1:1160-1'; break;
case 1061: return '1060-1:113-1:1161-1'; break;
case 1062: return '1061-1:1162-1'; break;
case 1078: return '1062-1:114-1:1178-1'; break;
case 1063: return '1078-1:1163-1'; break;
case 1079: return '1063-1:115-1:1179-1'; break;
case 1065: return '1079-1:1165-1'; break;
case 1068: return '1065-1:116-1:1168-1'; break;
case 1066: return '1068-1:1166-1'; break;
case 1069: return '1066-1:117-1:1169-1'; break;
case 1072: return '1050-1'; break;
case 1073: return '1072-1:1062-1:1173-1'; break;
case 1074: return '1065-1:1073-1:1174-1'; break;
case 1075: return '1074-1:1070-1:1175-1'; break;
case 1076: return '1058-1:1176-1'; break;
case 1070: return '1069-1:1076-1:118-1:117-1:1170-1'; break;
case 1071: return '1070-1:119-1:1171-1'; break;
case 1080: return '1071-1:1180-1'; break;
case 1081: return '1063-1:1181-1'; break;
case 1082: return '141-1:1081-1:1182-1'; break;
case 1083: return '1082-1:1183-1'; break;
case 1084: return '1083-1:1184-1'; break;
case 1085: return '1074-1:1185-1'; break;
case 1086: return '142-1:1085-1:1186-1'; break;
case 1087: return '1086-1:1187-1'; break;
case 1088: return '142-1:1080-1:1188-1'; break;
case 1090: return '1087-1:1190-1'; break;
case 1091: return '1080-1:1075-1:1090-1:148-1:1191-1'; break;
case 1092: return '1075-1:1090-1:148-1:1192-1'; break;
case 1093: return '1080-1:1092-1:148-1:1193-1'; break;
default: return '-1';
}
}

public function GetObjL($i)
{
switch($i)
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

public function GetObjLU($i,$l)
{
switch($i)
{
case 100: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 139: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 137: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 0; break;
case 2: return 55; break;
default: return -1;
}
};break;

case 199: 
{
switch($l)
{
case 1: return 0; break;
case 2: return 75; break;
default: return -1;
}
};break;

case 106: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 112: 
{
switch($l)
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
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 118: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 148: 
{
switch($l)
{
case 1: return 10000; break;
default: return -1;
}
};break;

case 149: 
{
switch($l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 141: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 142: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 200: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 201: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 202: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 122: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 123: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 121: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 203: 
{
switch($l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 204: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 205: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 131: 
{
switch($l)
{
case 1: return 350; break;
default: return -1;
}
};break;

case 134: 
{
switch($l)
{
case 1: return 350; break;
default: return -1;
}
};break;

case 128: 
{
switch($l)
{
case 1: return 2400; break;
default: return -1;
}
};break;

case 206: 
{
switch($l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 207: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 208: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 132: 
{
switch($l)
{
case 1: return 1400; break;
default: return -1;
}
};break;

case 135: 
{
switch($l)
{
case 1: return 1400; break;
default: return -1;
}
};break;

case 129: 
{
switch($l)
{
case 1: return 7200; break;
default: return -1;
}
};break;

case 209: 
{
switch($l)
{
case 1: return 2700; break;
default: return -1;
}
};break;

case 210: 
{
switch($l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 211: 
{
switch($l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 133: 
{
switch($l)
{
case 1: return 2600; break;
default: return -1;
}
};break;

case 136: 
{
switch($l)
{
case 1: return 2600; break;
default: return -1;
}
};break;

case 130: 
{
switch($l)
{
case 1: return 9000; break;
default: return -1;
}
};break;

case 744: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 745: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 746: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 747: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 748: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 749: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 500: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 299: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 303: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 304: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 313: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 317: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 324: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 328: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 339: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 306: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 307: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 301: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 310: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 381: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 361: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 297: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 331: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 291: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 341: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 288: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 337: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 315: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 342: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 359: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 380: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 298: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 316: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 290: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 353: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 360: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 338: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 372: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 293: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 289: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 294: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 314: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 368: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 287: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 356: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 283: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 278: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 279: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 282: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 285: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 286: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 295: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 296: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 280: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 281: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 284: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 292: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 311: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 333: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 344: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 355: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 318: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 319: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 382: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 302: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 320: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 323: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 329: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 336: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 343: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 374: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 352: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 334: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 383: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 384: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 385: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 386: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 506: 
{
switch($l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 508: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 507: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 1: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 2: 
{
switch($l)
{
case 1: return 75; break;
default: return -1;
}
};break;

case 3: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 4: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 5: 
{
switch($l)
{
case 1: return 880; break;
default: return -1;
}
};break;

case 6: 
{
switch($l)
{
case 1: return 650; break;
default: return -1;
}
};break;

case 7: 
{
switch($l)
{
case 1: return 950; break;
default: return -1;
}
};break;

case 8: 
{
switch($l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 9: 
{
switch($l)
{
case 1: return 2500; break;
default: return -1;
}
};break;

case 10: 
{
switch($l)
{
case 1: return 2370; break;
default: return -1;
}
};break;

case 11: 
{
switch($l)
{
case 1: return 2700; break;
default: return -1;
}
};break;

case 12: 
{
switch($l)
{
case 1: return 2175; break;
default: return -1;
}
};break;

case 13: 
{
switch($l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 14: 
{
switch($l)
{
case 1: return 3700; break;
default: return -1;
}
};break;

case 15: 
{
switch($l)
{
case 1: return 5700; break;
default: return -1;
}
};break;

case 16: 
{
switch($l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 59: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 62: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9000: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9003: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 17: 
{
switch($l)
{
case 1: return 27; break;
default: return -1;
}
};break;

case 18: 
{
switch($l)
{
case 1: return 22.5; break;
default: return -1;
}
};break;

case 19: 
{
switch($l)
{
case 1: return 27; break;
default: return -1;
}
};break;

case 20: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 21: 
{
switch($l)
{
case 1: return 264; break;
default: return -1;
}
};break;

case 22: 
{
switch($l)
{
case 1: return 195; break;
default: return -1;
}
};break;

case 23: 
{
switch($l)
{
case 1: return 285; break;
default: return -1;
}
};break;

case 24: 
{
switch($l)
{
case 1: return 216; break;
default: return -1;
}
};break;

case 25: 
{
switch($l)
{
case 1: return 750; break;
default: return -1;
}
};break;

case 26: 
{
switch($l)
{
case 1: return 592.5; break;
default: return -1;
}
};break;

case 27: 
{
switch($l)
{
case 1: return 810; break;
default: return -1;
}
};break;

case 28: 
{
switch($l)
{
case 1: return 543.75; break;
default: return -1;
}
};break;

case 29: 
{
switch($l)
{
case 1: return 135; break;
default: return -1;
}
};break;

case 30: 
{
switch($l)
{
case 1: return 1110; break;
default: return -1;
}
};break;

case 31: 
{
switch($l)
{
case 1: return 1425; break;
default: return -1;
}
};break;

case 32: 
{
switch($l)
{
case 1: return 1250; break;
default: return -1;
}
};break;

case 60: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 63: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9001: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9004: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 37: 
{
switch($l)
{
case 1: return 140; break;
default: return -1;
}
};break;

case 38: 
{
switch($l)
{
case 1: return 140; break;
default: return -1;
}
};break;

case 39: 
{
switch($l)
{
case 1: return 280; break;
default: return -1;
}
};break;

case 40: 
{
switch($l)
{
case 1: return 280; break;
default: return -1;
}
};break;

case 41: 
{
switch($l)
{
case 1: return 48; break;
default: return -1;
}
};break;

case 42: 
{
switch($l)
{
case 1: return 48; break;
default: return -1;
}
};break;

case 43: 
{
switch($l)
{
case 1: return 96; break;
default: return -1;
}
};break;

case 44: 
{
switch($l)
{
case 1: return 96; break;
default: return -1;
}
};break;

case 45: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 46: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 47: 
{
switch($l)
{
case 1: return 1200; break;
default: return -1;
}
};break;

case 48: 
{
switch($l)
{
case 1: return 4200; break;
default: return -1;
}
};break;

case 49: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 50: 
{
switch($l)
{
case 1: return 70; break;
default: return -1;
}
};break;

case 51: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 52: 
{
switch($l)
{
case 1: return 1400; break;
default: return -1;
}
};break;

case 91: 
{
switch($l)
{
case 1: return 135; break;
default: return -1;
}
};break;

case 92: 
{
switch($l)
{
case 1: return 216; break;
default: return -1;
}
};break;

case 94: 
{
switch($l)
{
case 1: return 810; break;
default: return -1;
}
};break;

case 93: 
{
switch($l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 95: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 96: 
{
switch($l)
{
case 1: return 285; break;
default: return -1;
}
};break;

case 97: 
{
switch($l)
{
case 1: return 652.5; break;
default: return -1;
}
};break;

case 98: 
{
switch($l)
{
case 1: return 1110; break;
default: return -1;
}
};break;

case 1050: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 1052: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 1054: 
{
switch($l)
{
case 1: return 3000; break;
default: return -1;
}
};break;

case 1053: 
{
switch($l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 1055: 
{
switch($l)
{
case 1: return 10000; break;
default: return -1;
}
};break;

case 1056: 
{
switch($l)
{
case 1: return 15000; break;
default: return -1;
}
};break;

case 1057: 
{
switch($l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 1058: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 1073: 
{
switch($l)
{
case 1: return 2000; break;
default: return -1;
}
};break;

case 1074: 
{
switch($l)
{
case 1: return 10000; break;
default: return -1;
}
};break;

case 1075: 
{
switch($l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 1076: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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

public function GetObjLT($i,$l)
{
switch($i)
{
case 100: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 139: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 137: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 0; break;
case 2: return 75; break;
default: return -1;
}
};break;

case 199: 
{
switch($l)
{
case 1: return 0; break;
case 2: return 55; break;
default: return -1;
}
};break;

case 106: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 112: 
{
switch($l)
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
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 118: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 148: 
{
switch($l)
{
case 1: return 10000; break;
default: return -1;
}
};break;

case 149: 
{
switch($l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 141: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 142: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 200: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 201: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 202: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 122: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 123: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 121: 
{
switch($l)
{
case 1: return 800; break;
default: return -1;
}
};break;

case 203: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 204: 
{
switch($l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 205: 
{
switch($l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 131: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 134: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 128: 
{
switch($l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 206: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 207: 
{
switch($l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 208: 
{
switch($l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 132: 
{
switch($l)
{
case 1: return 1400; break;
default: return -1;
}
};break;

case 135: 
{
switch($l)
{
case 1: return 1400; break;
default: return -1;
}
};break;

case 129: 
{
switch($l)
{
case 1: return 6000; break;
default: return -1;
}
};break;

case 209: 
{
switch($l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 210: 
{
switch($l)
{
case 1: return 2700; break;
default: return -1;
}
};break;

case 211: 
{
switch($l)
{
case 1: return 2700; break;
default: return -1;
}
};break;

case 133: 
{
switch($l)
{
case 1: return 2600; break;
default: return -1;
}
};break;

case 136: 
{
switch($l)
{
case 1: return 2600; break;
default: return -1;
}
};break;

case 130: 
{
switch($l)
{
case 1: return 8000; break;
default: return -1;
}
};break;

case 744: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 745: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 746: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 747: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 748: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 749: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 500: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 299: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 303: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 304: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 313: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 317: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 324: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 328: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 339: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 306: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 307: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 301: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 310: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 381: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 361: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 297: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 331: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 291: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 341: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 288: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 337: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 315: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 342: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 359: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 380: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 298: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 316: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 290: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 353: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 360: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 338: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 372: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 293: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 289: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 294: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 314: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 368: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 287: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 356: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 283: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 278: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 279: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 282: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 285: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 286: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 295: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 296: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 280: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 281: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 284: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 292: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 311: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 333: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 344: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 355: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 318: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 319: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 382: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 302: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 320: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 323: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 329: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 336: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 343: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 374: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 352: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 334: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 383: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 384: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 385: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 386: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 506: 
{
switch($l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 508: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 507: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 1: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 2: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 3: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 4: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 5: 
{
switch($l)
{
case 1: return 350; break;
default: return -1;
}
};break;

case 6: 
{
switch($l)
{
case 1: return 1080; break;
default: return -1;
}
};break;

case 7: 
{
switch($l)
{
case 1: return 570; break;
default: return -1;
}
};break;

case 8: 
{
switch($l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 9: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 10: 
{
switch($l)
{
case 1: return 3953; break;
default: return -1;
}
};break;

case 11: 
{
switch($l)
{
case 1: return 1600; break;
default: return -1;
}
};break;

case 12: 
{
switch($l)
{
case 1: return 5435; break;
default: return -1;
}
};break;

case 13: 
{
switch($l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 14: 
{
switch($l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 15: 
{
switch($l)
{
case 1: return 9500; break;
default: return -1;
}
};break;

case 16: 
{
switch($l)
{
case 1: return 12277; break;
default: return -1;
}
};break;

case 59: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 62: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9000: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9003: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 17: 
{
switch($l)
{
case 1: return 45; break;
default: return -1;
}
};break;

case 18: 
{
switch($l)
{
case 1: return 9; break;
default: return -1;
}
};break;

case 19: 
{
switch($l)
{
case 1: return 18; break;
default: return -1;
}
};break;

case 20: 
{
switch($l)
{
case 1: return 75; break;
default: return -1;
}
};break;

case 21: 
{
switch($l)
{
case 1: return 105; break;
default: return -1;
}
};break;

case 22: 
{
switch($l)
{
case 1: return 324; break;
default: return -1;
}
};break;

case 23: 
{
switch($l)
{
case 1: return 171; break;
default: return -1;
}
};break;

case 24: 
{
switch($l)
{
case 1: return 540; break;
default: return -1;
}
};break;

case 25: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 26: 
{
switch($l)
{
case 1: return 988.25; break;
default: return -1;
}
};break;

case 27: 
{
switch($l)
{
case 1: return 480; break;
default: return -1;
}
};break;

case 28: 
{
switch($l)
{
case 1: return 1358.75; break;
default: return -1;
}
};break;

case 29: 
{
switch($l)
{
case 1: return 135; break;
default: return -1;
}
};break;

case 30: 
{
switch($l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 31: 
{
switch($l)
{
case 1: return 2375; break;
default: return -1;
}
};break;

case 32: 
{
switch($l)
{
case 1: return 3069.25; break;
default: return -1;
}
};break;

case 60: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 63: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9001: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9004: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 37: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 38: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 39: 
{
switch($l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 40: 
{
switch($l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 41: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 42: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 43: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 44: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 45: 
{
switch($l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 46: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 47: 
{
switch($l)
{
case 1: return 2100; break;
default: return -1;
}
};break;

case 48: 
{
switch($l)
{
case 1: return 7000; break;
default: return -1;
}
};break;

case 49: 
{
switch($l)
{
case 1: return 170; break;
default: return -1;
}
};break;

case 50: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 51: 
{
switch($l)
{
case 1: return 700; break;
default: return -1;
}
};break;

case 52: 
{
switch($l)
{
case 1: return 2300; break;
default: return -1;
}
};break;

case 91: 
{
switch($l)
{
case 1: return 135; break;
default: return -1;
}
};break;

case 92: 
{
switch($l)
{
case 1: return 540; break;
default: return -1;
}
};break;

case 94: 
{
switch($l)
{
case 1: return 480; break;
default: return -1;
}
};break;

case 93: 
{
switch($l)
{
case 1: return 3683.1; break;
default: return -1;
}
};break;

case 95: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 96: 
{
switch($l)
{
case 1: return 171; break;
default: return -1;
}
};break;

case 97: 
{
switch($l)
{
case 1: return 1630.5; break;
default: return -1;
}
};break;

case 98: 
{
switch($l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 1050: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 1052: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 1054: 
{
switch($l)
{
case 1: return 3000; break;
default: return -1;
}
};break;

case 1053: 
{
switch($l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 1055: 
{
switch($l)
{
case 1: return 10000; break;
default: return -1;
}
};break;

case 1056: 
{
switch($l)
{
case 1: return 15000; break;
default: return -1;
}
};break;

case 1057: 
{
switch($l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 1058: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 1073: 
{
switch($l)
{
case 1: return 2000; break;
default: return -1;
}
};break;

case 1074: 
{
switch($l)
{
case 1: return 10000; break;
default: return -1;
}
};break;

case 1075: 
{
switch($l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 1076: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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

public function GetObjLM($i,$l)
{
switch($i)
{
case 100: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 139: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 137: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 0; break;
case 2: return 75; break;
default: return -1;
}
};break;

case 199: 
{
switch($l)
{
case 1: return 0; break;
case 2: return 75; break;
default: return -1;
}
};break;

case 106: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 110; break;
default: return -1;
}
};break;

case 112: 
{
switch($l)
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
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 118: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 148: 
{
switch($l)
{
case 1: return 15000; break;
default: return -1;
}
};break;

case 149: 
{
switch($l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 141: 
{
switch($l)
{
case 1: return 2500; break;
default: return -1;
}
};break;

case 142: 
{
switch($l)
{
case 1: return 2500; break;
default: return -1;
}
};break;

case 200: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 201: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 202: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 122: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 123: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 121: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 203: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 204: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 205: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 131: 
{
switch($l)
{
case 1: return 75; break;
default: return -1;
}
};break;

case 134: 
{
switch($l)
{
case 1: return 75; break;
default: return -1;
}
};break;

case 128: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 206: 
{
switch($l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 207: 
{
switch($l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 208: 
{
switch($l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 132: 
{
switch($l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 135: 
{
switch($l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 129: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 209: 
{
switch($l)
{
case 1: return 900; break;
default: return -1;
}
};break;

case 210: 
{
switch($l)
{
case 1: return 900; break;
default: return -1;
}
};break;

case 211: 
{
switch($l)
{
case 1: return 900; break;
default: return -1;
}
};break;

case 133: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 136: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 130: 
{
switch($l)
{
case 1: return 800; break;
default: return -1;
}
};break;

case 744: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 745: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 746: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 747: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 748: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 749: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 500: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 299: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 303: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 304: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 313: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 317: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 324: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 328: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 339: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 306: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 307: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 301: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 310: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 381: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 361: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 297: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 331: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 291: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 341: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 288: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 337: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 315: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 342: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 359: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 380: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 298: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 316: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 290: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 353: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 360: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 338: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 372: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 293: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 289: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 294: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 314: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 368: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 287: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 356: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 283: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 278: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 279: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 282: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 285: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 286: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 295: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 296: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 280: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 281: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 284: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 292: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 311: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 333: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 344: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 355: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 318: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 319: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 382: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 302: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 320: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 323: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 329: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 336: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 343: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 374: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 352: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 334: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 383: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 384: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 385: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 386: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 506: 
{
switch($l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 508: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 507: 
{
switch($l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 1: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 2: 
{
switch($l)
{
case 1: return 15; break;
default: return -1;
}
};break;

case 3: 
{
switch($l)
{
case 1: return 42; break;
default: return -1;
}
};break;

case 4: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 5: 
{
switch($l)
{
case 1: return 530; break;
default: return -1;
}
};break;

case 6: 
{
switch($l)
{
case 1: return 436; break;
default: return -1;
}
};break;

case 7: 
{
switch($l)
{
case 1: return 380; break;
default: return -1;
}
};break;

case 8: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 9: 
{
switch($l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 10: 
{
switch($l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 11: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 12: 
{
switch($l)
{
case 1: return 3000; break;
default: return -1;
}
};break;

case 13: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 14: 
{
switch($l)
{
case 1: return 2300; break;
default: return -1;
}
};break;

case 15: 
{
switch($l)
{
case 1: return 3800; break;
default: return -1;
}
};break;

case 16: 
{
switch($l)
{
case 1: return 7000; break;
default: return -1;
}
};break;

case 59: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 62: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9000: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9003: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 17: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 18: 
{
switch($l)
{
case 1: return 15; break;
default: return -1;
}
};break;

case 19: 
{
switch($l)
{
case 1: return 12.6; break;
default: return -1;
}
};break;

case 20: 
{
switch($l)
{
case 1: return 45; break;
default: return -1;
}
};break;

case 21: 
{
switch($l)
{
case 1: return 159; break;
default: return -1;
}
};break;

case 22: 
{
switch($l)
{
case 1: return 130.8; break;
default: return -1;
}
};break;

case 23: 
{
switch($l)
{
case 1: return 114; break;
default: return -1;
}
};break;

case 24: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 25: 
{
switch($l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 26: 
{
switch($l)
{
case 1: return 375; break;
default: return -1;
}
};break;

case 27: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 28: 
{
switch($l)
{
case 1: return 750; break;
default: return -1;
}
};break;

case 29: 
{
switch($l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 30: 
{
switch($l)
{
case 1: return 690; break;
default: return -1;
}
};break;

case 31: 
{
switch($l)
{
case 1: return 950; break;
default: return -1;
}
};break;

case 32: 
{
switch($l)
{
case 1: return 1750; break;
default: return -1;
}
};break;

case 60: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 63: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9001: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9004: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 37: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 38: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 39: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 40: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 41: 
{
switch($l)
{
case 1: return 70; break;
default: return -1;
}
};break;

case 42: 
{
switch($l)
{
case 1: return 70; break;
default: return -1;
}
};break;

case 43: 
{
switch($l)
{
case 1: return 140; break;
default: return -1;
}
};break;

case 44: 
{
switch($l)
{
case 1: return 140; break;
default: return -1;
}
};break;

case 45: 
{
switch($l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 46: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 47: 
{
switch($l)
{
case 1: return 2100; break;
default: return -1;
}
};break;

case 48: 
{
switch($l)
{
case 1: return 7000; break;
default: return -1;
}
};break;

case 49: 
{
switch($l)
{
case 1: return 170; break;
default: return -1;
}
};break;

case 50: 
{
switch($l)
{
case 1: return 70; break;
default: return -1;
}
};break;

case 51: 
{
switch($l)
{
case 1: return 700; break;
default: return -1;
}
};break;

case 52: 
{
switch($l)
{
case 1: return 2300; break;
default: return -1;
}
};break;

case 91: 
{
switch($l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 92: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 94: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 93: 
{
switch($l)
{
case 1: return 2100; break;
default: return -1;
}
};break;

case 95: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 96: 
{
switch($l)
{
case 1: return 114; break;
default: return -1;
}
};break;

case 97: 
{
switch($l)
{
case 1: return 900; break;
default: return -1;
}
};break;

case 98: 
{
switch($l)
{
case 1: return 690; break;
default: return -1;
}
};break;

case 1050: 
{
switch($l)
{
case 1: return 350; break;
default: return -1;
}
};break;

case 1052: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 1054: 
{
switch($l)
{
case 1: return 6000; break;
default: return -1;
}
};break;

case 1053: 
{
switch($l)
{
case 1: return 10000; break;
default: return -1;
}
};break;

case 1055: 
{
switch($l)
{
case 1: return 12000; break;
default: return -1;
}
};break;

case 1056: 
{
switch($l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 1057: 
{
switch($l)
{
case 1: return 30000; break;
default: return -1;
}
};break;

case 1058: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 1073: 
{
switch($l)
{
case 1: return 4000; break;
default: return -1;
}
};break;

case 1074: 
{
switch($l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 1075: 
{
switch($l)
{
case 1: return 30000; break;
default: return -1;
}
};break;

case 1076: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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

public function GetObjLG($i,$l)
{
switch($i)
{
case 100: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 139: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 137: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 0; break;
case 2: return 0; break;
default: return -1;
}
};break;

case 199: 
{
switch($l)
{
case 1: return 0; break;
case 2: return 0; break;
default: return -1;
}
};break;

case 106: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 112: 
{
switch($l)
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
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 118: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 148: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 149: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 141: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 142: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 200: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 201: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 202: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 122: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 123: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 121: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 203: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 204: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 205: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 131: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 134: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 128: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 206: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 207: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 208: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 132: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 135: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 129: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 209: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 210: 
{
switch($l)
{
case 1: return 350; break;
default: return -1;
}
};break;

case 211: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 133: 
{
switch($l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 136: 
{
switch($l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 130: 
{
switch($l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 744: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 745: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 746: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 747: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 748: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 749: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 500: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 299: 
{
switch($l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 303: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 304: 
{
switch($l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 313: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 317: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 324: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 328: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 339: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 306: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 307: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 301: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 310: 
{
switch($l)
{
case 1: return 80; break;
default: return -1;
}
};break;

case 381: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 361: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 297: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 331: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 291: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 341: 
{
switch($l)
{
case 1: return 80; break;
default: return -1;
}
};break;

case 288: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 337: 
{
switch($l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 315: 
{
switch($l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 342: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 359: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 380: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 298: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 316: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 290: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 353: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 360: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 338: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 372: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 293: 
{
switch($l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 289: 
{
switch($l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 294: 
{
switch($l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 314: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 368: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 287: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 356: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 283: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 278: 
{
switch($l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 279: 
{
switch($l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 282: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 285: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 286: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 295: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 296: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 280: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 281: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 284: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 292: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 311: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 333: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 344: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 355: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 318: 
{
switch($l)
{
case 1: return 80; break;
default: return -1;
}
};break;

case 319: 
{
switch($l)
{
case 1: return 90; break;
default: return -1;
}
};break;

case 382: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 302: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 320: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 323: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 329: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 336: 
{
switch($l)
{
case 1: return 80; break;
default: return -1;
}
};break;

case 343: 
{
switch($l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 374: 
{
switch($l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 352: 
{
switch($l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 334: 
{
switch($l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 383: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 384: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 385: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 386: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 506: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 508: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 507: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 1: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 2: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 3: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 4: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 5: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 6: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 7: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 8: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 10: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 11: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 12: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 13: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 14: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 15: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 16: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 59: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 62: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9000: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9003: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 17: 
{
switch($l)
{
case 1: return 4; break;
default: return -1;
}
};break;

case 18: 
{
switch($l)
{
case 1: return 4; break;
default: return -1;
}
};break;

case 19: 
{
switch($l)
{
case 1: return 4; break;
default: return -1;
}
};break;

case 20: 
{
switch($l)
{
case 1: return 5; break;
default: return -1;
}
};break;

case 21: 
{
switch($l)
{
case 1: return 8; break;
default: return -1;
}
};break;

case 22: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 23: 
{
switch($l)
{
case 1: return 8; break;
default: return -1;
}
};break;

case 24: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 25: 
{
switch($l)
{
case 1: return 15; break;
default: return -1;
}
};break;

case 26: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 27: 
{
switch($l)
{
case 1: return 15; break;
default: return -1;
}
};break;

case 28: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 29: 
{
switch($l)
{
case 1: return 16; break;
default: return -1;
}
};break;

case 30: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 31: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 32: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 60: 
{
switch($l)
{
case 1: return 18; break;
default: return -1;
}
};break;

case 63: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 9001: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 9004: 
{
switch($l)
{
case 1: return 25; break;
default: return -1;
}
};break;

case 37: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 38: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 39: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 40: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 41: 
{
switch($l)
{
case 1: return 5; break;
default: return -1;
}
};break;

case 42: 
{
switch($l)
{
case 1: return 5; break;
default: return -1;
}
};break;

case 43: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 44: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 45: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 46: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 47: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 48: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 49: 
{
switch($l)
{
case 1: return 5; break;
default: return -1;
}
};break;

case 50: 
{
switch($l)
{
case 1: return 5; break;
default: return -1;
}
};break;

case 51: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 52: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 91: 
{
switch($l)
{
case 1: return 570; break;
default: return -1;
}
};break;

case 92: 
{
switch($l)
{
case 1: return 1600; break;
default: return -1;
}
};break;

case 94: 
{
switch($l)
{
case 1: return 1730; break;
default: return -1;
}
};break;

case 93: 
{
switch($l)
{
case 1: return 5800; break;
default: return -1;
}
};break;

case 95: 
{
switch($l)
{
case 1: return 700; break;
default: return -1;
}
};break;

case 96: 
{
switch($l)
{
case 1: return 800; break;
default: return -1;
}
};break;

case 97: 
{
switch($l)
{
case 1: return 3300; break;
default: return -1;
}
};break;

case 98: 
{
switch($l)
{
case 1: return 2300; break;
default: return -1;
}
};break;

case 1050: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1052: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1054: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1053: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1055: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1056: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1057: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1058: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1073: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1074: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1075: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1076: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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

public function GetObjLGI($i,$l)
{
switch($i)
{
case 100: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 139: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 137: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 0; break;
case 2: return 0; break;
default: return -1;
}
};break;

case 199: 
{
switch($l)
{
case 1: return 0; break;
case 2: return 0; break;
default: return -1;
}
};break;

case 106: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 112: 
{
switch($l)
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
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 118: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 148: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 149: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 141: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 142: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 200: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 201: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 202: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 122: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 123: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 121: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 203: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 204: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 205: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 131: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 134: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 128: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 206: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 207: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 208: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 132: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 135: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 129: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 209: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 210: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 211: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 133: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 136: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 130: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 744: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 745: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 746: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 747: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 748: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 749: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 500: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 299: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 303: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 304: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 313: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 317: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 324: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 328: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 339: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 306: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 307: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 301: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 310: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 381: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 361: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 297: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 331: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 291: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 341: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 288: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 337: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 315: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 342: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 359: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 380: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 298: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 316: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 290: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 353: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 360: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 338: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 372: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 293: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 289: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 294: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 314: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 368: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 287: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 356: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 283: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 278: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 279: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 282: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 285: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 286: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 295: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 296: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 280: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 281: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 284: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 292: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 311: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 333: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 344: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 355: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 318: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 319: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 382: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 302: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 320: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 323: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 329: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 336: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 343: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 374: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 352: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 334: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 383: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 384: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 385: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 386: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 506: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 508: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 507: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 2: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 3: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 4: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 5: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 6: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 7: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 8: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 9: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 10: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 11: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 12: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 13: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 14: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 15: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 16: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 59: 
{
switch($l)
{
case 1: return 888; break;
default: return -1;
}
};break;

case 62: 
{
switch($l)
{
case 1: return 1950; break;
default: return -1;
}
};break;

case 9000: 
{
switch($l)
{
case 1: return 1364; break;
default: return -1;
}
};break;

case 9003: 
{
switch($l)
{
case 1: return 2537; break;
default: return -1;
}
};break;

case 17: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 18: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 19: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 20: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 21: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 22: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 23: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 24: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 25: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 26: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 27: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 28: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 29: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 30: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 31: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 32: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 60: 
{
switch($l)
{
case 1: return 293; break;
default: return -1;
}
};break;

case 63: 
{
switch($l)
{
case 1: return 644; break;
default: return -1;
}
};break;

case 9001: 
{
switch($l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 9004: 
{
switch($l)
{
case 1: return 837; break;
default: return -1;
}
};break;

case 37: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 38: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 39: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 40: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 41: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 42: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 43: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 44: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 45: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 46: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 47: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 48: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 49: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 50: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 51: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 52: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 91: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 92: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 94: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 93: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 95: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 96: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 97: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 98: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1050: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1052: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1054: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1053: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1055: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1056: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1057: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1058: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1073: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1074: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1075: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1076: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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

public function GetObjLC($i,$l)
{
switch($i)
{
case 100: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 139: 
{
switch($l)
{
case 1: return 240; break;
default: return -1;
}
};break;

case 137: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 10; break;
case 2: return 10; break;
default: return -1;
}
};break;

case 199: 
{
switch($l)
{
case 1: return 10; break;
case 2: return 10; break;
default: return -1;
}
};break;

case 106: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 112: 
{
switch($l)
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
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 118: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 148: 
{
switch($l)
{
case 1: return 72000; break;
default: return -1;
}
};break;

case 149: 
{
switch($l)
{
case 1: return 86400; break;
default: return -1;
}
};break;

case 141: 
{
switch($l)
{
case 1: return 3600; break;
default: return -1;
}
};break;

case 142: 
{
switch($l)
{
case 1: return 3600; break;
default: return -1;
}
};break;

case 200: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 201: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 202: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 122: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 123: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 121: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 203: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 204: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 205: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 131: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 134: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 128: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 206: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 207: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 208: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 132: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 135: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 129: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 209: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 210: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 211: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 133: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 136: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 130: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 744: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 745: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 746: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 747: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 748: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 749: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 500: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 299: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 303: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 304: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 313: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 317: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 324: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 328: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 339: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 306: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 307: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 301: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 310: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 381: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 361: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 297: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 331: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 291: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 341: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 288: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 337: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 315: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 342: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 359: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 380: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 298: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 316: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 290: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 353: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 360: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 338: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 372: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 293: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 289: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 294: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 314: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 368: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 287: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 356: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 283: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 278: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 279: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 282: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 285: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 286: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 295: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 296: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 280: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 281: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 284: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 292: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 311: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 333: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 344: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 355: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 318: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 319: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 382: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 302: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 320: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 323: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 329: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 336: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 343: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 374: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 352: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 334: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 383: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 384: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 385: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 386: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 506: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 508: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 507: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 1: 
{
switch($l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 2: 
{
switch($l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 3: 
{
switch($l)
{
case 1: return 294; break;
default: return -1;
}
};break;

case 4: 
{
switch($l)
{
case 1: return 595; break;
default: return -1;
}
};break;

case 5: 
{
switch($l)
{
case 1: return 2000; break;
default: return -1;
}
};break;

case 6: 
{
switch($l)
{
case 1: return 2400; break;
default: return -1;
}
};break;

case 7: 
{
switch($l)
{
case 1: return 2100; break;
default: return -1;
}
};break;

case 8: 
{
switch($l)
{
case 1: return 3700; break;
default: return -1;
}
};break;

case 9: 
{
switch($l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 10: 
{
switch($l)
{
case 1: return 8200; break;
default: return -1;
}
};break;

case 11: 
{
switch($l)
{
case 1: return 6000; break;
default: return -1;
}
};break;

case 12: 
{
switch($l)
{
case 1: return 11000; break;
default: return -1;
}
};break;

case 13: 
{
switch($l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 14: 
{
switch($l)
{
case 1: return 8000; break;
default: return -1;
}
};break;

case 15: 
{
switch($l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 16: 
{
switch($l)
{
case 1: return 25000; break;
default: return -1;
}
};break;

case 59: 
{
switch($l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 62: 
{
switch($l)
{
case 1: return 8000; break;
default: return -1;
}
};break;

case 9000: 
{
switch($l)
{
case 1: return 3600; break;
default: return -1;
}
};break;

case 9003: 
{
switch($l)
{
case 1: return 10336; break;
default: return -1;
}
};break;

case 17: 
{
switch($l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 18: 
{
switch($l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 19: 
{
switch($l)
{
case 1: return 294; break;
default: return -1;
}
};break;

case 20: 
{
switch($l)
{
case 1: return 595; break;
default: return -1;
}
};break;

case 21: 
{
switch($l)
{
case 1: return 2000; break;
default: return -1;
}
};break;

case 22: 
{
switch($l)
{
case 1: return 2400; break;
default: return -1;
}
};break;

case 23: 
{
switch($l)
{
case 1: return 2100; break;
default: return -1;
}
};break;

case 24: 
{
switch($l)
{
case 1: return 3700; break;
default: return -1;
}
};break;

case 25: 
{
switch($l)
{
case 1: return 5000; break;
default: return -1;
}
};break;

case 26: 
{
switch($l)
{
case 1: return 8200; break;
default: return -1;
}
};break;

case 27: 
{
switch($l)
{
case 1: return 6000; break;
default: return -1;
}
};break;

case 28: 
{
switch($l)
{
case 1: return 11000; break;
default: return -1;
}
};break;

case 29: 
{
switch($l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 30: 
{
switch($l)
{
case 1: return 8000; break;
default: return -1;
}
};break;

case 31: 
{
switch($l)
{
case 1: return 20000; break;
default: return -1;
}
};break;

case 32: 
{
switch($l)
{
case 1: return 25000; break;
default: return -1;
}
};break;

case 60: 
{
switch($l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 63: 
{
switch($l)
{
case 1: return 8000; break;
default: return -1;
}
};break;

case 9001: 
{
switch($l)
{
case 1: return 3600; break;
default: return -1;
}
};break;

case 9004: 
{
switch($l)
{
case 1: return 10336; break;
default: return -1;
}
};break;

case 37: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 38: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 39: 
{
switch($l)
{
case 1: return 1200; break;
default: return -1;
}
};break;

case 40: 
{
switch($l)
{
case 1: return 1200; break;
default: return -1;
}
};break;

case 41: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 42: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 43: 
{
switch($l)
{
case 1: return 1200; break;
default: return -1;
}
};break;

case 44: 
{
switch($l)
{
case 1: return 1200; break;
default: return -1;
}
};break;

case 45: 
{
switch($l)
{
case 1: return 900; break;
default: return -1;
}
};break;

case 46: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 47: 
{
switch($l)
{
case 1: return 3700; break;
default: return -1;
}
};break;

case 48: 
{
switch($l)
{
case 1: return 14000; break;
default: return -1;
}
};break;

case 49: 
{
switch($l)
{
case 1: return 900; break;
default: return -1;
}
};break;

case 50: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 51: 
{
switch($l)
{
case 1: return 3700; break;
default: return -1;
}
};break;

case 52: 
{
switch($l)
{
case 1: return 14000; break;
default: return -1;
}
};break;

case 91: 
{
switch($l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 92: 
{
switch($l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 94: 
{
switch($l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 93: 
{
switch($l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 95: 
{
switch($l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 96: 
{
switch($l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 97: 
{
switch($l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 98: 
{
switch($l)
{
case 1: return 100000; break;
default: return -1;
}
};break;

case 1050: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 1052: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 1054: 
{
switch($l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 1053: 
{
switch($l)
{
case 1: return 1800; break;
default: return -1;
}
};break;

case 1055: 
{
switch($l)
{
case 1: return 14400; break;
default: return -1;
}
};break;

case 1056: 
{
switch($l)
{
case 1: return 14400; break;
default: return -1;
}
};break;

case 1057: 
{
switch($l)
{
case 1: return 14400; break;
default: return -1;
}
};break;

case 1058: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 1073: 
{
switch($l)
{
case 1: return 7200; break;
default: return -1;
}
};break;

case 1074: 
{
switch($l)
{
case 1: return 10800; break;
default: return -1;
}
};break;

case 1075: 
{
switch($l)
{
case 1: return 14400; break;
default: return -1;
}
};break;

case 1076: 
{
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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
switch($l)
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

public function GetObjSX($i)
{
switch($i)
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

public function GetObjSY($i)
{
switch($i)
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

public function GetSkillCount()
{
return 69;
}

public function GetSkillId($i)
{
switch($i)
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

public function GetSkillLevels($i)
{
switch($i)
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

public function GetSkillNum($i)
{
switch($i)
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

public function GetSkillName($i)
{
switch($i)
{
case 0: return ''; break;
case 1: return 'Бестия. Скорость движения.'; break;
case 2: return 'Мародер. Скорость движения.'; break;
case 3: return 'Головорез. Скорость движения.'; break;
case 4: return 'Аэростат. Скорость движения.'; break;
case 5: return 'Флибустьер. Скорость движения.'; break;
case 6: return 'Бестия. Время строительства.'; break;
case 7: return 'Мародер. Время строительства.'; break;
case 8: return 'Головорез. Время строительства.'; break;
case 9: return 'Аэростат. Время строительства.'; break;
case 10: return 'Флибустьер. Время строительства.'; break;
case 11: return ''; break;
case 12: return ''; break;
case 13: return 'Гренадер. Скорость движения.'; break;
case 14: return 'Кирасир. Скорость движения.'; break;
case 15: return 'Бомбардир. Скорость движения.'; break;
case 16: return 'Канонир. Скорость движения.'; break;
case 17: return 'Гренадер. Время строительства.'; break;
case 18: return 'Кирасир. Время строительства.'; break;
case 19: return 'Бомбардир. Время строительства.'; break;
case 20: return 'Канонир. Время строительства.'; break;
case 21: return ''; break;
case 22: return ''; break;
case 23: return 'Дикая кошка. Скорость движения.'; break;
case 24: return 'Сорвиголова. Скорость движения.'; break;
case 25: return 'Кобуксон. Скорость движения.'; break;
case 26: return 'Джонка. Скорость движения.'; break;
case 27: return 'Дикая кошка. Время строительства.'; break;
case 28: return 'Сорвиголова. Время строительства.'; break;
case 29: return 'Кобуксон. Время строительства.'; break;
case 30: return 'Джонка. Время строительства.'; break;
case 31: return ''; break;
case 32: return ''; break;
case 33: return ''; break;
case 34: return ''; break;
case 35: return 'Шлюпка. Скорость движения.'; break;
case 36: return 'Бригантина. Скорость движения.'; break;
case 37: return 'Галеон. Скорость движения.'; break;
case 38: return 'Фрегат. Скорость движения.'; break;
case 39: return 'Шлюпка. Время строительства.'; break;
case 40: return 'Бригантина. Время строительства.'; break;
case 41: return 'Галеон. Время строительства.'; break;
case 42: return 'Фрегат. Время строительства.'; break;
case 43: return ''; break;
case 44: return ''; break;
case 45: return ''; break;
case 46: return ''; break;
case 47: return 'Подлодка. Скорость движения.'; break;
case 48: return 'Линкор. Скорость движения.'; break;
case 49: return 'Джаггернаут. Скорость движения.'; break;
case 50: return ''; break;
case 51: return 'Подлодка. Время строительства.'; break;
case 52: return 'Линкор. Время строительства.'; break;
case 53: return 'Джаггернаут. Время строительства.'; break;
case 54: return 'Подрывница. Скорость движения.'; break;
case 55: return 'Морпех. Скорость движения.'; break;
case 56: return 'Люгер. Скорость движения.'; break;
case 57: return 'Шхуна. Скорость движения.'; break;
case 58: return 'Подрывница. Время строительства.'; break;
case 59: return 'Морпех. Время строительства.'; break;
case 60: return 'Люгер. Время строительства.'; break;
case 61: return 'Шхуна. Время строительства.'; break;
case 62: return 'Подлодка "Наутилус". Скорость движения.'; break;
case 63: return 'Разведчик "Винтокрыл". Скорость движения.'; break;
case 64: return '"Шторм". Скорость движения.'; break;
case 65: return 'Разведчик "Цеппелин". Время строительства.'; break;
case 66: return 'Подлодка "Наутилус". Время строительства.'; break;
case 67: return 'Разведчик "Винтокрыл". Время строительства.'; break;
case 68: return '"Шторм". Время строительства.'; break;
default: return 'Название не установлено';
}
}

public function GetSkillDem($i)
{
switch($i)
{
case 0: return ''; break;
case 1: return '1-2'; break;
case 2: return '1002-8'; break;
case 3: return '1001-8'; break;
case 4: return '1003-8'; break;
case 5: return '1013-8'; break;
case 6: return '1004-8'; break;
case 7: return '2002-10'; break;
case 8: return '2001-10'; break;
case 9: return '2003-10'; break;
case 10: return '2013-10'; break;
case 11: return '1004-8'; break;
case 12: return '2-2'; break;
case 13: return '2-2'; break;
case 14: return '1005-8'; break;
case 15: return '1007-8'; break;
case 16: return '1006-8'; break;
case 17: return '1008-8'; break;
case 18: return '2005-10'; break;
case 19: return '2007-10'; break;
case 20: return '2006-10'; break;
case 21: return '1008-8'; break;
case 22: return '1008-8'; break;
case 23: return '5-2'; break;
case 24: return '1017-2'; break;
case 25: return '1018-2'; break;
case 26: return '1019-2'; break;
case 27: return '5-2'; break;
case 28: return '2017-2'; break;
case 29: return '2018-2'; break;
case 30: return '2019-2'; break;
case 31: return '5-2'; break;
case 32: return '6-6'; break;
case 33: return '6-6'; break;
case 34: return '3-10'; break;
case 35: return '3-10'; break;
case 36: return '1009-10'; break;
case 37: return '1010-10'; break;
case 38: return '1011-10'; break;
case 39: return '1012-10'; break;
case 40: return '2009-10'; break;
case 41: return '2010-10'; break;
case 42: return '2011-10'; break;
case 43: return '1012-10'; break;
case 44: return '1012-10'; break;
case 45: return '1012-10'; break;
case 46: return '1012-10'; break;
case 47: return '4-10'; break;
case 48: return '1014-10'; break;
case 49: return '1015-10'; break;
case 50: return '1012-10'; break;
case 51: return '4-10'; break;
case 52: return '2014-10'; break;
case 53: return '2015-10'; break;
case 54: return '6-6'; break;
case 55: return '1022-8'; break;
case 56: return '1021-8'; break;
case 57: return '1023-8:4-10'; break;
case 58: return '6-6'; break;
case 59: return '2022-8'; break;
case 60: return '2021-8'; break;
case 61: return '2023-8:4-10'; break;
case 62: return '1014-10'; break;
case 63: return '2025-10'; break;
case 64: return '1014-10'; break;
case 65: return '6-6'; break;
case 66: return '2014-10'; break;
case 67: return '1027-10'; break;
case 68: return '2014-10'; break;
default: return '';
}
}

public function GetSkillImage($i)
{
switch($i)
{
case 0: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/1.png'; break;
case 1: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/2_s.png'; break;
case 2: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/1_s.png'; break;
case 3: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/3_s.png'; break;
case 4: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/13_s.png'; break;
case 5: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/4_s.png'; break;
case 6: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/2_c.png'; break;
case 7: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/1_c.png'; break;
case 8: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/3_c.png'; break;
case 9: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/13_c.png'; break;
case 10: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/4_c.png'; break;
case 11: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/2.png'; break;
case 12: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/robots.png'; break;
case 13: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/5_s.png'; break;
case 14: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/7_s.png'; break;
case 15: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/6_s.png'; break;
case 16: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/8_s.png'; break;
case 17: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/5_c.png'; break;
case 18: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/7_c.png'; break;
case 19: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/6_c.png'; break;
case 20: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/8_c.png'; break;
case 21: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/technology.png'; break;
case 22: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/5.png'; break;
case 23: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/17_s.png'; break;
case 24: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/18_s.png'; break;
case 25: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/19_s.png'; break;
case 26: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/20_s.png'; break;
case 27: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/17_c.png'; break;
case 28: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/18_c.png'; break;
case 29: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/19_c.png'; break;
case 30: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/20_c.png'; break;
case 31: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/6.png'; break;
case 32: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/ciborg.png'; break;
case 33: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/3.png'; break;
case 34: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/technology.png'; break;
case 35: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/9_s.png'; break;
case 36: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/10_s.png'; break;
case 37: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/11_s.png'; break;
case 38: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/12_s.png'; break;
case 39: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/9_c.png'; break;
case 40: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/10_c.png'; break;
case 41: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/11_c.png'; break;
case 42: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/12_c.png'; break;
case 43: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/location.png'; break;
case 44: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/mutation.png'; break;
case 45: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/1_r.png'; break;
case 46: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/4.png'; break;
case 47: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/14_s.png'; break;
case 48: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/15_s.png'; break;
case 49: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/16_s.png'; break;
case 50: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/points.png'; break;
case 51: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/14_c.png'; break;
case 52: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/15_c.png'; break;
case 53: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/16_c.png'; break;
case 54: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/22_s.png'; break;
case 55: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/21_s.png'; break;
case 56: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/23_s.png'; break;
case 57: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/24_s.png'; break;
case 58: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/22_c.png'; break;
case 59: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/21_c.png'; break;
case 60: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/23_c.png'; break;
case 61: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/24_c.png'; break;
case 62: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/26_s.png'; break;
case 63: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/27_s.png'; break;
case 64: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/28_s.png'; break;
case 65: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/25_c.png'; break;
case 66: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/26_c.png'; break;
case 67: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/27_c.png'; break;
case 68: return 'http://cluster-5.skillclub.com/stormfall/content/ui/skillTree/icons/28_c.png'; break;
default: return '';
}
}



}
?>