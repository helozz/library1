<?php

//=====================================================================================================================================
//	public class TDdata for PHP
//	=== "Rules of War" edition ===
//	created by Helga V. Oz on Nov.24 2012
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
case 100: return 'Сенат'; break;
case 127: return 'Исследовательский центр'; break;
case 124: return 'Торговый шлюз'; break;
case 101: return 'Консульство'; break;
case 144: return 'Центр улучшений'; break;
case 138: return 'Радар'; break;
case 139: return 'Арсенал'; break;
case 140: return 'Лаборатория чертежей'; break;
case 137: return 'Промышленный синдикат'; break;
case 125: return 'Торговая палата'; break;
case 126: return 'Транспортная служба'; break;
case 198: return 'Месторождение урана'; break;
case 199: return 'Месторождение титанита'; break;
case 106: return 'Жилой комплекс'; break;
case 104: return 'Титанитовый рудник'; break;
case 102: return 'Урановая шахта'; break;
case 109: return 'Банк'; break;
case 108: return 'Склад'; break;
case 107: return 'Финансовая корпорация'; break;
case 105: return 'Металлургический комбинат'; break;
case 103: return 'Лаборатория обогащения урана'; break;
case 110: return 'Командный центр'; break;
case 111: return 'Плац'; break;
case 112: return 'Бараки'; break;
case 600: return 'Лаборатория киборгов'; break;
case 118: return 'Авиабаза'; break;
case 113: return 'Казармы'; break;
case 114: return 'Завод мотопехоты'; break;
case 115: return 'Завод бронетехники'; break;
case 141: return 'Полигон'; break;
case 142: return 'Спецкорпус'; break;
case 148: return 'Инкубатор'; break;
case 149: return 'Биореактор'; break;
case 150: return 'Бункер'; break;
case 116: return 'Завод артиллерии'; break;
case 117: return 'Центр артиллерийских систем'; break;
case 119: return 'Аэрокосмический комплекс'; break;
case 120: return 'Черный рынок'; break;
case 200: return 'Стена 1 ур.'; break;
case 201: return 'Башня 1 ур.'; break;
case 202: return 'Ворота 1 ур.'; break;
case 122: return 'Пушка 1 ур.'; break;
case 123: return 'Система ПВО 1 ур.'; break;
case 121: return 'Детектор 1 ур.'; break;
case 203: return 'Стена 2 ур.'; break;
case 204: return 'Башня 2 ур.'; break;
case 205: return 'Ворота 2 ур.'; break;
case 131: return 'Пушка 2 ур.'; break;
case 134: return 'Система ПВО 2 ур.'; break;
case 128: return 'Детектор 2 ур.'; break;
case 206: return 'Стена 3 ур.'; break;
case 207: return 'Башня 3 ур.'; break;
case 208: return 'Ворота 3 ур.'; break;
case 132: return 'Пушка 3 ур.'; break;
case 135: return 'Система ПВО 3 ур.'; break;
case 129: return 'Детектор 3 ур.'; break;
case 209: return 'Стена 4 ур.'; break;
case 210: return 'Башня 4 ур.'; break;
case 211: return 'Ворота 4 ур.'; break;
case 212: return 'Стена 4 ур.'; break;
case 213: return 'Башня 4 ур.'; break;
case 214: return 'Ворота 4 ур.'; break;
case 133: return 'Пушка 4 ур.'; break;
case 136: return 'Система ПВО 4 ур.'; break;
case 130: return 'Детектор 4 ур.'; break;
case 215: return 'Стена 5 ур.'; break;
case 216: return 'Башня 5 ур.'; break;
case 217: return 'Ворота 5 ур.'; break;
case 146: return 'Пушка 5 ур.'; break;
case 145: return 'Детектор 5 ур.'; break;
case 741: return 'Т-340 "Трансформер"'; break;
case 742: return 'АЗК-13 "Вихрь"'; break;
case 739: return 'Китайский сюрприз'; break;
case 740: return 'Защитник Пустоши'; break;
case 743: return 'Памятник войне кланов'; break;
case 732: return 'Реактивные санки'; break;
case 733: return 'АБК "Арктика"'; break;
case 734: return 'АБК "Одиссей"'; break;
case 730: return 'Снеговик'; break;
case 731: return 'Агент Рудольф'; break;
case 720: return 'Ядерная елка'; break;
case 721: return 'Генерал Мороз'; break;
case 719: return 'Новогодняя елка'; break;
case 722: return 'Рождественская фея'; break;
case 724: return 'Йети'; break;
case 725: return 'Снежная королева'; break;
case 726: return 'Подарок'; break;
case 727: return 'Северное сияние'; break;
case 728: return 'Фейерверк "Праздничный"'; break;
case 729: return 'Фейерверк "Почетный"'; break;
case 510: return 'Хелиджет "Гиперион"'; break;
case 511: return 'Самоходная пушка "Эрида"'; break;
case 512: return 'Тяжелый танк "Хронос"'; break;
case 709: return 'Сталкер'; break;
case 710: return 'Киберпес'; break;
case 711: return 'Кибербудка'; break;
case 712: return 'Зверобой'; break;
case 713: return 'Торнадо'; break;
case 714: return 'Шакал'; break;
case 715: return 'Дредноут'; break;
case 716: return 'Стена песчаников'; break;
case 717: return 'Плита песчаников'; break;
case 718: return 'Башня песчаников'; break;
case 708: return 'Т-5000'; break;
case 706: return 'Железный капут'; break;
case 707: return 'Призрак в доспехах'; break;
case 704: return 'Биодесантник'; break;
case 705: return 'Полковник'; break;
case 700: return 'Ночная Ведьма'; break;
case 701: return 'Покоритель'; break;
case 703: return 'Щит Императора'; break;
case 506: return 'PD-13 "Кукарача"'; break;
case 508: return 'PD-8 "Стройбот"'; break;
case 507: return 'PD-72 "Атлант"'; break;
case 509: return 'Бочка Мутагена'; break;
case 603: return 'Флаг России'; break;
case 601: return 'Флаг Украины'; break;
case 602: return 'Флаг Беларуси'; break;
case 604: return 'Флаг Великобритании'; break;
case 605: return 'Флаг США'; break;
case 606: return 'Флаг Канады'; break;
case 607: return 'Флаг Китая'; break;
case 608: return 'Знамя Конфедерации'; break;
case 609: return 'Флаг Германии'; break;
case 610: return 'Флаг Мутантов'; break;
case 611: return 'Флаг Италии'; break;
case 612: return 'Флаг Южной Кореи'; break;
case 613: return 'Флаг Франции'; break;
case 614: return 'Веселый Роджер'; break;
case 615: return 'Флаг Пустошей'; break;
case 616: return 'Флаг Испании'; break;
case 617: return 'Флаг Турции'; break;
case 421: return 'Монумент Славы'; break;
case 418: return 'Знамя Победы'; break;
case 419: return 'Памятник Победителю'; break;
case 420: return 'Памятник Победителю'; break;
case 417: return 'Вечный Огонь'; break;
case 500: return 'Асфальтовая дорога'; break;
case 501: return 'Грунтовая дорога'; break;
case 306: return 'Электрическая проволока'; break;
case 307: return 'Колючая проволока'; break;
case 308: return 'Лазерная проволока'; break;
case 309: return 'Плазменная проволока'; break;
case 312: return 'Термобарьер'; break;
case 310: return 'Электробарьер'; break;
case 311: return 'Энергобарьер'; break;
case 405: return 'Бочка'; break;
case 406: return 'Бочка'; break;
case 415: return 'У-цистерна'; break;
case 416: return 'Т-цистерна'; break;
case 412: return 'Чёрный ящик'; break;
case 413: return 'Ящик'; break;
case 414: return 'Контейнер'; break;
case 407: return 'Заграждение'; break;
case 408: return 'Фонарь'; break;
case 409: return 'Рефлектор'; break;
case 410: return 'Прожектор'; break;
case 411: return 'Шлагбаум'; break;
case 301: return 'Ограждение'; break;
case 302: return 'Электрическое ограждение'; break;
case 303: return 'Плазменное ограждение'; break;
case 304: return 'Лазерное ограждение'; break;
case 735: return 'АБК "Ангел"'; break;
case 736: return 'Генератор романтики'; break;
case 737: return 'Сердце Амура'; break;
case 738: return 'Валентинка'; break;
case 1: return 'Пехотинец'; break;
case 2: return 'Киберпёс'; break;
case 3: return 'Гладиатор'; break;
case 4: return 'Валькирия'; break;
case 5: return 'Боевая машина'; break;
case 6: return 'Ударный танк'; break;
case 7: return 'Бронетранспортёр'; break;
case 8: return 'Осадный танк'; break;
case 9: return 'Пушка Гаусса'; break;
case 10: return 'Термомодуль'; break;
case 11: return 'Мортира'; break;
case 12: return 'Расщепитель'; break;
case 13: return 'Разведчик'; break;
case 14: return 'Перехватчик'; break;
case 15: return 'Штурмовик'; break;
case 16: return 'Крейсер'; break;
case 59: return 'Разведчик «Фантом»'; break;
case 62: return 'Орбитальная пушка'; break;
case 9000: return 'Разведчик «Кошмар»'; break;
case 9003: return 'Песчаный червь'; break;
case 17: return 'Элитный пехотинец'; break;
case 18: return 'Элитный киберпёс'; break;
case 19: return 'Элитный гладиатор'; break;
case 20: return 'Элитная валькирия'; break;
case 21: return 'Элитная боевая машина'; break;
case 22: return 'Элитный ударный танк'; break;
case 23: return 'Элитный бронетранспортёр'; break;
case 24: return 'Элитный осадный танк'; break;
case 25: return 'Элитная пушка Гаусса'; break;
case 26: return 'Элитный термомодуль'; break;
case 27: return 'Элитная мортира'; break;
case 28: return 'Элитный расщепитель'; break;
case 29: return 'Элитный разведчик'; break;
case 30: return 'Элитный перехватчик'; break;
case 31: return 'Элитный штурмовик'; break;
case 32: return 'Элитный крейсер'; break;
case 60: return 'Элитный разведчик «Фантом»'; break;
case 63: return 'Элитная орбитальная пушка'; break;
case 9001: return 'Элитный разведчик «Кошмар»'; break;
case 9004: return 'Элитный песчаный червь'; break;
case 33: return 'Киборг'; break;
case 53: return 'Пожиратель'; break;
case 54: return 'Потрошитель'; break;
case 55: return 'Живоглот'; break;
case 56: return 'Тварь'; break;
case 57: return 'Сталкер'; break;
case 58: return 'Мозгоед'; break;
case 34: return 'PD-13 "Кукарача"'; break;
case 36: return 'PD-8 "Стройбот"'; break;
case 35: return 'PD-72 "Атлант"'; break;
case 88: return 'Десантный хелиджет "Гиперион"'; break;
case 89: return 'Самоходная пушка "Эрида"'; break;
case 90: return 'Тяжёлый танк "Хронос"'; break;
case 37: return 'Снайпер'; break;
case 38: return 'Пулемётчик'; break;
case 39: return 'Пиротехник'; break;
case 40: return 'Ракетчик'; break;
case 41: return 'Элитный снайпер'; break;
case 42: return 'Элитный пулемётчик'; break;
case 43: return 'Элитный пиротехник'; break;
case 44: return 'Элитный ракетчик'; break;
case 45: return 'Ликвидатор'; break;
case 46: return 'Протектор'; break;
case 47: return 'Каратель'; break;
case 48: return 'Истребитель'; break;
case 49: return 'Элитный Ликвидатор'; break;
case 50: return 'Элитный Протектор'; break;
case 51: return 'Элитный каратель'; break;
case 52: return 'Элитный истребитель'; break;
case 64: return 'Пехотинец (мутант)'; break;
case 65: return 'Киберпёс (мутант)'; break;
case 66: return 'Гладиатор (мутант)'; break;
case 67: return 'Валькирия (мутант)'; break;
case 68: return 'Боевая машина (мутант)'; break;
case 69: return 'Ударный танк (мутант)'; break;
case 70: return 'Бронетранспортёр (мутант)'; break;
case 71: return 'Осадный танк (мутант)'; break;
case 72: return 'Пушка Гаусса (мутант)'; break;
case 73: return 'Термомодуль (мутант)'; break;
case 74: return 'Мортира (мутант)'; break;
case 75: return 'Расщепитель (мутант)'; break;
case 76: return 'Разведчик (мутант)'; break;
case 77: return 'Перехватчик (мутант)'; break;
case 78: return 'Штурмовик (мутант)'; break;
case 79: return 'Крейсер (мутант)'; break;
case 61: return 'Разведчик «Фантом» (мутант)'; break;
case 99: return 'Орбитальная пушка (мутант)'; break;
case 9002: return 'Разведчик «Кошмар» (мутант)'; break;
case 80: return 'Снайпер (мутант)'; break;
case 81: return 'Пулемётчик (мутант)'; break;
case 82: return 'Пиротехник (мутант)'; break;
case 83: return 'Ракетчик (мутант)'; break;
case 84: return 'Ликвидатор (мутант)'; break;
case 85: return 'Протектор (мутант)'; break;
case 86: return 'Каратель (мутант)'; break;
case 87: return 'Истребитель (мутант)'; break;
case 91: return 'Хищник'; break;
case 92: return 'Чистильщик'; break;
case 94: return 'Генератор поля'; break;
case 93: return 'Флагман'; break;
case 95: return 'Центурион'; break;
case 96: return 'Мастодонт'; break;
case 97: return 'Голиаф'; break;
case 98: return 'Авианосец'; break;
case 1050: return 'Искусственный Интеллект'; break;
case 1051: return 'Боевые построения'; break;
case 1052: return 'Грузоперевозки'; break;
case 1154: return 'Чертеж для Энергосбережение'; break;
case 1054: return 'Энергосбережение'; break;
case 1153: return 'Чертеж для Информационная логистика'; break;
case 1053: return 'Информационная логистика'; break;
case 1155: return 'Чертеж для Экономическая логистика'; break;
case 1055: return 'Экономическая логистика'; break;
case 1156: return 'Чертеж для Автоматический цикл'; break;
case 1056: return 'Автоматический цикл'; break;
case 1157: return 'Чертеж для Разделение изотопов'; break;
case 1057: return 'Разделение изотопов'; break;
case 1058: return 'Имплантаты'; break;
case 1059: return 'Нейрокибернетика'; break;
case 1160: return 'Чертеж для Теория поля'; break;
case 1060: return 'Теория поля'; break;
case 1161: return 'Чертеж для  Бионика'; break;
case 1061: return 'Бионика'; break;
case 1162: return 'Чертеж для Ядерные батареи'; break;
case 1062: return 'Ядерные батареи'; break;
case 1178: return 'Чертеж для  Сервоприводы'; break;
case 1078: return 'Сервоприводы'; break;
case 1163: return 'Чертеж для Дейтериевый генератор'; break;
case 1063: return 'Дейтериевый генератор'; break;
case 1179: return 'Чертеж для Артиллерийские системы'; break;
case 1079: return 'Артиллерийские системы'; break;
case 1165: return 'Чертеж для Сверхпроводники'; break;
case 1065: return 'Сверхпроводники'; break;
case 1168: return 'Чертеж для  Бозе-газ'; break;
case 1068: return 'Бозе-газ'; break;
case 1166: return 'Чертеж для Квантовая механика'; break;
case 1066: return 'Квантовая механика'; break;
case 1169: return 'Чертеж для  Излучение Хокинга'; break;
case 1069: return 'Излучение Хокинга'; break;
case 1072: return 'Периметр 1 уровня'; break;
case 1173: return 'Чертеж для  Периметр 2 уровня'; break;
case 1073: return 'Периметр 2 уровня'; break;
case 1174: return 'Чертеж для Периметр 3 уровня'; break;
case 1074: return 'Периметр 3 уровня'; break;
case 1175: return 'Чертеж для  Периметр 4 уровня'; break;
case 1075: return 'Периметр 4 уровня'; break;
case 1189: return 'Чертеж для Периметр 5 уровня'; break;
case 1089: return 'Периметр 5 уровня'; break;
case 1176: return 'Чертеж для Антигравитация'; break;
case 1076: return 'Антигравитация'; break;
case 1170: return 'Чертеж для Оптический камуфляж'; break;
case 1070: return 'Оптический камуфляж'; break;
case 1171: return 'Чертеж для Ионный двигатель'; break;
case 1071: return 'Ионный двигатель'; break;
case 1180: return 'Чертеж для Фотонный двигатель'; break;
case 1080: return 'Фотонный двигатель'; break;
case 1181: return 'Чертеж для  Маскировка'; break;
case 1081: return 'Маскировка'; break;
case 1182: return 'Чертеж для Кумулятивный снаряд'; break;
case 1082: return 'Кумулятивный снаряд'; break;
case 1183: return 'Чертеж для Протонная мина'; break;
case 1083: return 'Протонная мина'; break;
case 1184: return 'Чертеж для Плазменная Ракета'; break;
case 1084: return 'Плазменная Ракета'; break;
case 1185: return 'Чертеж для Автономная броня'; break;
case 1085: return 'Автономная броня'; break;
case 1186: return 'Чертеж для Боевой экзоскелет'; break;
case 1086: return 'Боевой экзоскелет'; break;
case 1187: return 'Чертеж для  Биомеханоид'; break;
case 1087: return 'Биомеханоид'; break;
case 1188: return 'Чертеж для Сингулярный реактор'; break;
case 1088: return 'Сингулярный реактор'; break;
case 1190: return 'Чертеж для  Репликация'; break;
case 1090: return 'Репликация'; break;
case 1191: return 'Чертеж для Варп-двигатель'; break;
case 1091: return 'Варп-двигатель'; break;
case 1192: return 'Чертеж для  Ксенобиология'; break;
case 1092: return 'Ксенобиология'; break;
case 1193: return 'Чертеж для  Биомеханика'; break;
case 1093: return 'Биомеханика'; break;
case 1605: return 'Собачий корм'; break;
case 1508: return 'Акселератор'; break;
case 1700: return 'MD-01 "Молотобот"'; break;
case 1702: return 'MD-02 "Бурозавр"'; break;
case 1704: return 'Бритва Оккама'; break;
case 1600: return 'Автодок'; break;
case 1609: return 'БПС "Гарпун"'; break;
case 1500: return 'Озверин'; break;
case 1502: return 'H-вирус'; break;
case 1504: return 'D-вирус'; break;
case 1507: return 'Граната Антиоха'; break;
case 1511: return 'Энергоячейка'; break;
case 1606: return 'Собачьи жетоны'; break;
case 1509: return 'Йорик 2.0'; break;
case 1607: return 'Регенератор'; break;
case 1705: return 'АСВ "Плюк"'; break;
case 1711: return 'Кристализатор'; break;
case 1601: return 'Автомат Хауса'; break;
case 1608: return 'Чёртова кожа'; break;
case 1611: return 'Энергоблок'; break;
case 1623: return 'Нанобот-шпион'; break;
case 1630: return 'Чётки'; break;
case 1501: return 'Веселый Роджер'; break;
case 1505: return 'ПА-51 "Мариарти"'; break;
case 1506: return 'Потрошитель'; break;
case 1510: return 'Наноботы'; break;
case 1513: return 'Кассетная бомба'; break;
case 1602: return 'МЗС "Шарманка"'; break;
case 1603: return 'Наноингибитор'; break;
case 1706: return 'АСВ "Дюна"'; break;
case 1503: return 'Ракетница'; break;
case 1518: return 'Сердце Мамонта'; break;
case 1520: return 'Хатхи'; break;
case 1526: return 'ББС "Мор"'; break;
case 1528: return 'ББС "Огр"'; break;
case 1530: return 'Лапа кролега'; break;
case 1604: return 'УБК "Хамелеон"'; break;
case 1610: return 'Экзоскелет "Атлант"'; break;
case 1612: return 'Cиловой щит, тип II'; break;
case 1628: return 'ТАБ "Панцершрек"'; break;
case 1632: return 'МЗП-01 "Паутина"'; break;
case 1636: return 'Защитный биогель "Медея"'; break;
case 1615: return 'Камуфляжный модуль'; break;
case 1533: return 'Симбионт "Птицелов"'; break;
case 1534: return 'Инициатор "Крылья Одина"'; break;
case 1537: return 'Грузовой модуль "Гефест"'; break;
case 1616: return 'Живая броня'; break;
case 1701: return 'Тинаниты'; break;
case 1703: return 'Ураниты'; break;
case 1712: return 'Надмозг'; break;
case 1512: return 'BESSON 5000'; break;
case 1514: return 'Ускоритель'; break;
case 1515: return 'Концентратор, тип I'; break;
case 1517: return 'Хребет Дьявола'; break;
case 1519: return 'Резервуар нейтрино'; break;
case 1521: return 'Джамбо'; break;
case 1529: return 'ОС "Берсерк"'; break;
case 1536: return 'Огнесмесь "Нерон"'; break;
case 1613: return 'Туман войны'; break;
case 1614: return 'Распределитель'; break;
case 1618: return 'Блокираторы'; break;
case 1627: return 'БДм-01 "Химера"'; break;
case 1631: return 'Шоколадный концентрат'; break;
case 1633: return 'Силовой щит, тип III "Арахнид"'; break;
case 1634: return 'Топливный элемент'; break;
case 1531: return 'Экзожилет "Шерп"'; break;
case 1535: return 'Световое копье "Радгрид"'; break;
case 1617: return 'Клетка'; break;
case 1619: return 'ГД "Годзилла"'; break;
case 1626: return 'CI-09 "Василиск"'; break;
case 1516: return 'Концентратор, тип II'; break;
case 1522: return 'Огнезаборник'; break;
case 1539: return 'Грузовой модуль "Сатурн"'; break;
case 1635: return 'Биоружьё "Локи"'; break;
case 1713: return 'Попрыгунчик'; break;
case 1532: return 'MS-02 "Жало"'; break;
case 1538: return 'ID-99 "Провокатор"'; break;
case 1523: return 'Кубик Шрубека'; break;
case 1638: return 'Мотиватор'; break;
case 1640: return 'Чертёж Томпсона'; break;
case 1620: return 'PD-02 "Баттерфляй"'; break;
case 1524: return 'Коллайдер Фримена'; break;
case 1621: return 'Шлемофон гвардейца'; break;
case 1541: return 'ID-67 "Шершень"'; break;
case 1527: return 'Симбионт "Змей"'; break;
case 1637: return 'Симбионт "Прометей"'; break;
case 1624: return 'Навигационный модуль'; break;
case 1641: return 'Тяжёлая автопушка "Азраил"'; break;
case 1629: return 'Симбионт "Зверь"'; break;
case 1540: return 'Темпоральные бомбы'; break;
case 1622: return 'ИП-00 "Гипноз"'; break;
case 1714: return 'Живоглот'; break;
case 1625: return 'ГКП-03 "Морфей"'; break;
case 1639: return 'Блок аварийного питания'; break;
case 1525: return 'Двигатель Антиллеса'; break;
case 1708: return 'ID-10 "Броненосец"'; break;
case 1709: return 'ID-19 "Канонир"'; break;
case 1710: return 'ID-25 "Летёха"'; break;
case 1707: return 'Ядерный чемоданчик'; break;
case 1901: return 'Колонизатор'; break;
default: return 'Название не установлено';
}
}

public function GetItemId($i)
{
switch($i)
{
case 'Сенат': return 100; break;
case 'Исследовательский центр': return 127; break;
case 'Торговый шлюз': return 124; break;
case 'Консульство': return 101; break;
case 'Центр улучшений': return 144; break;
case 'Радар': return 138; break;
case 'Арсенал': return 139; break;
case 'Лаборатория чертежей': return 140; break;
case 'Промышленный синдикат': return 137; break;
case 'Торговая палата': return 125; break;
case 'Транспортная служба': return 126; break;
case 'Месторождение урана': return 198; break;
case 'Месторождение титанита': return 199; break;
case 'Жилой комплекс': return 106; break;
case 'Титанитовый рудник': return 104; break;
case 'Урановая шахта': return 102; break;
case 'Банк': return 109; break;
case 'Склад': return 108; break;
case 'Финансовая корпорация': return 107; break;
case 'Металлургический комбинат': return 105; break;
case 'Лаборатория обогащения урана': return 103; break;
case 'Командный центр': return 110; break;
case 'Плац': return 111; break;
case 'Бараки': return 112; break;
case 'Лаборатория киборгов': return 600; break;
case 'Авиабаза': return 118; break;
case 'Казармы': return 113; break;
case 'Завод мотопехоты': return 114; break;
case 'Завод бронетехники': return 115; break;
case 'Полигон': return 141; break;
case 'Спецкорпус': return 142; break;
case 'Инкубатор': return 148; break;
case 'Биореактор': return 149; break;
case 'Бункер': return 150; break;
case 'Завод артиллерии': return 116; break;
case 'Центр артиллерийских систем': return 117; break;
case 'Аэрокосмический комплекс': return 119; break;
case 'Черный рынок': return 120; break;
case 'Стена 1 ур.': return 200; break;
case 'Башня 1 ур.': return 201; break;
case 'Ворота 1 ур.': return 202; break;
case 'Пушка 1 ур.': return 122; break;
case 'Система ПВО 1 ур.': return 123; break;
case 'Детектор 1 ур.': return 121; break;
case 'Стена 2 ур.': return 203; break;
case 'Башня 2 ур.': return 204; break;
case 'Ворота 2 ур.': return 205; break;
case 'Пушка 2 ур.': return 131; break;
case 'Система ПВО 2 ур.': return 134; break;
case 'Детектор 2 ур.': return 128; break;
case 'Стена 3 ур.': return 206; break;
case 'Башня 3 ур.': return 207; break;
case 'Ворота 3 ур.': return 208; break;
case 'Пушка 3 ур.': return 132; break;
case 'Система ПВО 3 ур.': return 135; break;
case 'Детектор 3 ур.': return 129; break;
case 'Стена 4 ур.': return 209; break;
case 'Башня 4 ур.': return 210; break;
case 'Ворота 4 ур.': return 211; break;
case 'Стена 4 ур.': return 212; break;
case 'Башня 4 ур.': return 213; break;
case 'Ворота 4 ур.': return 214; break;
case 'Пушка 4 ур.': return 133; break;
case 'Система ПВО 4 ур.': return 136; break;
case 'Детектор 4 ур.': return 130; break;
case 'Стена 5 ур.': return 215; break;
case 'Башня 5 ур.': return 216; break;
case 'Ворота 5 ур.': return 217; break;
case 'Пушка 5 ур.': return 146; break;
case 'Детектор 5 ур.': return 145; break;
case 'Т-340 "Трансформер"': return 741; break;
case 'АЗК-13 "Вихрь"': return 742; break;
case 'Китайский сюрприз': return 739; break;
case 'Защитник Пустоши': return 740; break;
case 'Памятник войне кланов': return 743; break;
case 'Реактивные санки': return 732; break;
case 'АБК "Арктика"': return 733; break;
case 'АБК "Одиссей"': return 734; break;
case 'Снеговик': return 730; break;
case 'Агент Рудольф': return 731; break;
case 'Ядерная елка': return 720; break;
case 'Генерал Мороз': return 721; break;
case 'Новогодняя елка': return 719; break;
case 'Рождественская фея': return 722; break;
case 'Йети': return 724; break;
case 'Снежная королева': return 725; break;
case 'Подарок': return 726; break;
case 'Северное сияние': return 727; break;
case 'Фейерверк "Праздничный"': return 728; break;
case 'Фейерверк "Почетный"': return 729; break;
case 'Хелиджет "Гиперион"': return 510; break;
case 'Самоходная пушка "Эрида"': return 511; break;
case 'Тяжелый танк "Хронос"': return 512; break;
case 'Сталкер': return 709; break;
case 'Киберпес': return 710; break;
case 'Кибербудка': return 711; break;
case 'Зверобой': return 712; break;
case 'Торнадо': return 713; break;
case 'Шакал': return 714; break;
case 'Дредноут': return 715; break;
case 'Стена песчаников': return 716; break;
case 'Плита песчаников': return 717; break;
case 'Башня песчаников': return 718; break;
case 'Т-5000': return 708; break;
case 'Железный капут': return 706; break;
case 'Призрак в доспехах': return 707; break;
case 'Биодесантник': return 704; break;
case 'Полковник': return 705; break;
case 'Ночная Ведьма': return 700; break;
case 'Покоритель': return 701; break;
case 'Щит Императора': return 703; break;
case 'PD-13 "Кукарача"': return 506; break;
case 'PD-8 "Стройбот"': return 508; break;
case 'PD-72 "Атлант"': return 507; break;
case 'Бочка Мутагена': return 509; break;
case 'Флаг России': return 603; break;
case 'Флаг Украины': return 601; break;
case 'Флаг Беларуси': return 602; break;
case 'Флаг Великобритании': return 604; break;
case 'Флаг США': return 605; break;
case 'Флаг Канады': return 606; break;
case 'Флаг Китая': return 607; break;
case 'Знамя Конфедерации': return 608; break;
case 'Флаг Германии': return 609; break;
case 'Флаг Мутантов': return 610; break;
case 'Флаг Италии': return 611; break;
case 'Флаг Южной Кореи': return 612; break;
case 'Флаг Франции': return 613; break;
case 'Веселый Роджер': return 614; break;
case 'Флаг Пустошей': return 615; break;
case 'Флаг Испании': return 616; break;
case 'Флаг Турции': return 617; break;
case 'Монумент Славы': return 421; break;
case 'Знамя Победы': return 418; break;
case 'Памятник Победителю': return 419; break;
case 'Памятник Победителю': return 420; break;
case 'Вечный Огонь': return 417; break;
case 'Асфальтовая дорога': return 500; break;
case 'Грунтовая дорога': return 501; break;
case 'Электрическая проволока': return 306; break;
case 'Колючая проволока': return 307; break;
case 'Лазерная проволока': return 308; break;
case 'Плазменная проволока': return 309; break;
case 'Термобарьер': return 312; break;
case 'Электробарьер': return 310; break;
case 'Энергобарьер': return 311; break;
case 'Бочка': return 405; break;
case 'Бочка': return 406; break;
case 'У-цистерна': return 415; break;
case 'Т-цистерна': return 416; break;
case 'Чёрный ящик': return 412; break;
case 'Ящик': return 413; break;
case 'Контейнер': return 414; break;
case 'Заграждение': return 407; break;
case 'Фонарь': return 408; break;
case 'Рефлектор': return 409; break;
case 'Прожектор': return 410; break;
case 'Шлагбаум': return 411; break;
case 'Ограждение': return 301; break;
case 'Электрическое ограждение': return 302; break;
case 'Плазменное ограждение': return 303; break;
case 'Лазерное ограждение': return 304; break;
case 'АБК "Ангел"': return 735; break;
case 'Генератор романтики': return 736; break;
case 'Сердце Амура': return 737; break;
case 'Валентинка': return 738; break;
case 'Пехотинец': return 1; break;
case 'Киберпёс': return 2; break;
case 'Гладиатор': return 3; break;
case 'Валькирия': return 4; break;
case 'Боевая машина': return 5; break;
case 'Ударный танк': return 6; break;
case 'Бронетранспортёр': return 7; break;
case 'Осадный танк': return 8; break;
case 'Пушка Гаусса': return 9; break;
case 'Термомодуль': return 10; break;
case 'Мортира': return 11; break;
case 'Расщепитель': return 12; break;
case 'Разведчик': return 13; break;
case 'Перехватчик': return 14; break;
case 'Штурмовик': return 15; break;
case 'Крейсер': return 16; break;
case 'Разведчик «Фантом»': return 59; break;
case 'Орбитальная пушка': return 62; break;
case 'Разведчик «Кошмар»': return 9000; break;
case 'Песчаный червь': return 9003; break;
case 'Элитный пехотинец': return 17; break;
case 'Элитный киберпёс': return 18; break;
case 'Элитный гладиатор': return 19; break;
case 'Элитная валькирия': return 20; break;
case 'Элитная боевая машина': return 21; break;
case 'Элитный ударный танк': return 22; break;
case 'Элитный бронетранспортёр': return 23; break;
case 'Элитный осадный танк': return 24; break;
case 'Элитная пушка Гаусса': return 25; break;
case 'Элитный термомодуль': return 26; break;
case 'Элитная мортира': return 27; break;
case 'Элитный расщепитель': return 28; break;
case 'Элитный разведчик': return 29; break;
case 'Элитный перехватчик': return 30; break;
case 'Элитный штурмовик': return 31; break;
case 'Элитный крейсер': return 32; break;
case 'Элитный разведчик «Фантом»': return 60; break;
case 'Элитная орбитальная пушка': return 63; break;
case 'Элитный разведчик «Кошмар»': return 9001; break;
case 'Элитный песчаный червь': return 9004; break;
case 'Киборг': return 33; break;
case 'Пожиратель': return 53; break;
case 'Потрошитель': return 54; break;
case 'Живоглот': return 55; break;
case 'Тварь': return 56; break;
case 'Сталкер': return 57; break;
case 'Мозгоед': return 58; break;
case 'PD-13 "Кукарача"': return 34; break;
case 'PD-8 "Стройбот"': return 36; break;
case 'PD-72 "Атлант"': return 35; break;
case 'Десантный хелиджет "Гиперион"': return 88; break;
case 'Самоходная пушка "Эрида"': return 89; break;
case 'Тяжёлый танк "Хронос"': return 90; break;
case 'Снайпер': return 37; break;
case 'Пулемётчик': return 38; break;
case 'Пиротехник': return 39; break;
case 'Ракетчик': return 40; break;
case 'Элитный снайпер': return 41; break;
case 'Элитный пулемётчик': return 42; break;
case 'Элитный пиротехник': return 43; break;
case 'Элитный ракетчик': return 44; break;
case 'Ликвидатор': return 45; break;
case 'Протектор': return 46; break;
case 'Каратель': return 47; break;
case 'Истребитель': return 48; break;
case 'Элитный Ликвидатор': return 49; break;
case 'Элитный Протектор': return 50; break;
case 'Элитный каратель': return 51; break;
case 'Элитный истребитель': return 52; break;
case 'Пехотинец (мутант)': return 64; break;
case 'Киберпёс (мутант)': return 65; break;
case 'Гладиатор (мутант)': return 66; break;
case 'Валькирия (мутант)': return 67; break;
case 'Боевая машина (мутант)': return 68; break;
case 'Ударный танк (мутант)': return 69; break;
case 'Бронетранспортёр (мутант)': return 70; break;
case 'Осадный танк (мутант)': return 71; break;
case 'Пушка Гаусса (мутант)': return 72; break;
case 'Термомодуль (мутант)': return 73; break;
case 'Мортира (мутант)': return 74; break;
case 'Расщепитель (мутант)': return 75; break;
case 'Разведчик (мутант)': return 76; break;
case 'Перехватчик (мутант)': return 77; break;
case 'Штурмовик (мутант)': return 78; break;
case 'Крейсер (мутант)': return 79; break;
case 'Разведчик «Фантом» (мутант)': return 61; break;
case 'Орбитальная пушка (мутант)': return 99; break;
case 'Разведчик «Кошмар» (мутант)': return 9002; break;
case 'Снайпер (мутант)': return 80; break;
case 'Пулемётчик (мутант)': return 81; break;
case 'Пиротехник (мутант)': return 82; break;
case 'Ракетчик (мутант)': return 83; break;
case 'Ликвидатор (мутант)': return 84; break;
case 'Протектор (мутант)': return 85; break;
case 'Каратель (мутант)': return 86; break;
case 'Истребитель (мутант)': return 87; break;
case 'Хищник': return 91; break;
case 'Чистильщик': return 92; break;
case 'Генератор поля': return 94; break;
case 'Флагман': return 93; break;
case 'Центурион': return 95; break;
case 'Мастодонт': return 96; break;
case 'Голиаф': return 97; break;
case 'Авианосец': return 98; break;
case 'Искусственный Интеллект': return 1050; break;
case 'Боевые построения': return 1051; break;
case 'Грузоперевозки': return 1052; break;
case 'Чертеж для Энергосбережение': return 1154; break;
case 'Энергосбережение': return 1054; break;
case 'Чертеж для Информационная логистика': return 1153; break;
case 'Информационная логистика': return 1053; break;
case 'Чертеж для Экономическая логистика': return 1155; break;
case 'Экономическая логистика': return 1055; break;
case 'Чертеж для Автоматический цикл': return 1156; break;
case 'Автоматический цикл': return 1056; break;
case 'Чертеж для Разделение изотопов': return 1157; break;
case 'Разделение изотопов': return 1057; break;
case 'Имплантаты': return 1058; break;
case 'Нейрокибернетика': return 1059; break;
case 'Чертеж для Теория поля': return 1160; break;
case 'Теория поля': return 1060; break;
case 'Чертеж для  Бионика': return 1161; break;
case 'Бионика': return 1061; break;
case 'Чертеж для Ядерные батареи': return 1162; break;
case 'Ядерные батареи': return 1062; break;
case 'Чертеж для  Сервоприводы': return 1178; break;
case 'Сервоприводы': return 1078; break;
case 'Чертеж для Дейтериевый генератор': return 1163; break;
case 'Дейтериевый генератор': return 1063; break;
case 'Чертеж для Артиллерийские системы': return 1179; break;
case 'Артиллерийские системы': return 1079; break;
case 'Чертеж для Сверхпроводники': return 1165; break;
case 'Сверхпроводники': return 1065; break;
case 'Чертеж для  Бозе-газ': return 1168; break;
case 'Бозе-газ': return 1068; break;
case 'Чертеж для Квантовая механика': return 1166; break;
case 'Квантовая механика': return 1066; break;
case 'Чертеж для  Излучение Хокинга': return 1169; break;
case 'Излучение Хокинга': return 1069; break;
case 'Периметр 1 уровня': return 1072; break;
case 'Чертеж для  Периметр 2 уровня': return 1173; break;
case 'Периметр 2 уровня': return 1073; break;
case 'Чертеж для Периметр 3 уровня': return 1174; break;
case 'Периметр 3 уровня': return 1074; break;
case 'Чертеж для  Периметр 4 уровня': return 1175; break;
case 'Периметр 4 уровня': return 1075; break;
case 'Чертеж для Периметр 5 уровня': return 1189; break;
case 'Периметр 5 уровня': return 1089; break;
case 'Чертеж для Антигравитация': return 1176; break;
case 'Антигравитация': return 1076; break;
case 'Чертеж для Оптический камуфляж': return 1170; break;
case 'Оптический камуфляж': return 1070; break;
case 'Чертеж для Ионный двигатель': return 1171; break;
case 'Ионный двигатель': return 1071; break;
case 'Чертеж для Фотонный двигатель': return 1180; break;
case 'Фотонный двигатель': return 1080; break;
case 'Чертеж для  Маскировка': return 1181; break;
case 'Маскировка': return 1081; break;
case 'Чертеж для Кумулятивный снаряд': return 1182; break;
case 'Кумулятивный снаряд': return 1082; break;
case 'Чертеж для Протонная мина': return 1183; break;
case 'Протонная мина': return 1083; break;
case 'Чертеж для Плазменная Ракета': return 1184; break;
case 'Плазменная Ракета': return 1084; break;
case 'Чертеж для Автономная броня': return 1185; break;
case 'Автономная броня': return 1085; break;
case 'Чертеж для Боевой экзоскелет': return 1186; break;
case 'Боевой экзоскелет': return 1086; break;
case 'Чертеж для  Биомеханоид': return 1187; break;
case 'Биомеханоид': return 1087; break;
case 'Чертеж для Сингулярный реактор': return 1188; break;
case 'Сингулярный реактор': return 1088; break;
case 'Чертеж для  Репликация': return 1190; break;
case 'Репликация': return 1090; break;
case 'Чертеж для Варп-двигатель': return 1191; break;
case 'Варп-двигатель': return 1091; break;
case 'Чертеж для  Ксенобиология': return 1192; break;
case 'Ксенобиология': return 1092; break;
case 'Чертеж для  Биомеханика': return 1193; break;
case 'Биомеханика': return 1093; break;
case 'Собачий корм': return 1605; break;
case 'Акселератор': return 1508; break;
case 'MD-01 "Молотобот"': return 1700; break;
case 'MD-02 "Бурозавр"': return 1702; break;
case 'Бритва Оккама': return 1704; break;
case 'Автодок': return 1600; break;
case 'БПС "Гарпун"': return 1609; break;
case 'Озверин': return 1500; break;
case 'H-вирус': return 1502; break;
case 'D-вирус': return 1504; break;
case 'Граната Антиоха': return 1507; break;
case 'Энергоячейка': return 1511; break;
case 'Собачьи жетоны': return 1606; break;
case 'Йорик 2.0': return 1509; break;
case 'Регенератор': return 1607; break;
case 'АСВ "Плюк"': return 1705; break;
case 'Кристализатор': return 1711; break;
case 'Автомат Хауса': return 1601; break;
case 'Чёртова кожа': return 1608; break;
case 'Энергоблок': return 1611; break;
case 'Нанобот-шпион': return 1623; break;
case 'Чётки': return 1630; break;
case 'Веселый Роджер': return 1501; break;
case 'ПА-51 "Мариарти"': return 1505; break;
case 'Потрошитель': return 1506; break;
case 'Наноботы': return 1510; break;
case 'Кассетная бомба': return 1513; break;
case 'МЗС "Шарманка"': return 1602; break;
case 'Наноингибитор': return 1603; break;
case 'АСВ "Дюна"': return 1706; break;
case 'Ракетница': return 1503; break;
case 'Сердце Мамонта': return 1518; break;
case 'Хатхи': return 1520; break;
case 'ББС "Мор"': return 1526; break;
case 'ББС "Огр"': return 1528; break;
case 'Лапа кролега': return 1530; break;
case 'УБК "Хамелеон"': return 1604; break;
case 'Экзоскелет "Атлант"': return 1610; break;
case 'Cиловой щит, тип II': return 1612; break;
case 'ТАБ "Панцершрек"': return 1628; break;
case 'МЗП-01 "Паутина"': return 1632; break;
case 'Защитный биогель "Медея"': return 1636; break;
case 'Камуфляжный модуль': return 1615; break;
case 'Симбионт "Птицелов"': return 1533; break;
case 'Инициатор "Крылья Одина"': return 1534; break;
case 'Грузовой модуль "Гефест"': return 1537; break;
case 'Живая броня': return 1616; break;
case 'Тинаниты': return 1701; break;
case 'Ураниты': return 1703; break;
case 'Надмозг': return 1712; break;
case 'BESSON 5000': return 1512; break;
case 'Ускоритель': return 1514; break;
case 'Концентратор, тип I': return 1515; break;
case 'Хребет Дьявола': return 1517; break;
case 'Резервуар нейтрино': return 1519; break;
case 'Джамбо': return 1521; break;
case 'ОС "Берсерк"': return 1529; break;
case 'Огнесмесь "Нерон"': return 1536; break;
case 'Туман войны': return 1613; break;
case 'Распределитель': return 1614; break;
case 'Блокираторы': return 1618; break;
case 'БДм-01 "Химера"': return 1627; break;
case 'Шоколадный концентрат': return 1631; break;
case 'Силовой щит, тип III "Арахнид"': return 1633; break;
case 'Топливный элемент': return 1634; break;
case 'Экзожилет "Шерп"': return 1531; break;
case 'Световое копье "Радгрид"': return 1535; break;
case 'Клетка': return 1617; break;
case 'ГД "Годзилла"': return 1619; break;
case 'CI-09 "Василиск"': return 1626; break;
case 'Концентратор, тип II': return 1516; break;
case 'Огнезаборник': return 1522; break;
case 'Грузовой модуль "Сатурн"': return 1539; break;
case 'Биоружьё "Локи"': return 1635; break;
case 'Попрыгунчик': return 1713; break;
case 'MS-02 "Жало"': return 1532; break;
case 'ID-99 "Провокатор"': return 1538; break;
case 'Кубик Шрубека': return 1523; break;
case 'Мотиватор': return 1638; break;
case 'Чертёж Томпсона': return 1640; break;
case 'PD-02 "Баттерфляй"': return 1620; break;
case 'Коллайдер Фримена': return 1524; break;
case 'Шлемофон гвардейца': return 1621; break;
case 'ID-67 "Шершень"': return 1541; break;
case 'Симбионт "Змей"': return 1527; break;
case 'Симбионт "Прометей"': return 1637; break;
case 'Навигационный модуль': return 1624; break;
case 'Тяжёлая автопушка "Азраил"': return 1641; break;
case 'Симбионт "Зверь"': return 1629; break;
case 'Темпоральные бомбы': return 1540; break;
case 'ИП-00 "Гипноз"': return 1622; break;
case 'Живоглот': return 1714; break;
case 'ГКП-03 "Морфей"': return 1625; break;
case 'Блок аварийного питания': return 1639; break;
case 'Двигатель Антиллеса': return 1525; break;
case 'ID-10 "Броненосец"': return 1708; break;
case 'ID-19 "Канонир"': return 1709; break;
case 'ID-25 "Летёха"': return 1710; break;
case 'Ядерный чемоданчик': return 1707; break;
case 'Колонизатор': return 1901; break;
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
case 59: return 1125; break;
case 62: return 7400; break;
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
case 60: return 337.5; break;
case 63: return 2220; break;
case 33: return 0; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 57: return 0; break;
case 58: return 0; break;
case 34: return 0; break;
case 36: return 0; break;
case 35: return 0; break;
case 88: return 0; break;
case 89: return 0; break;
case 90: return 0; break;
case 37: return 140; break;
case 38: return 140; break;
case 39: return 140; break;
case 40: return 140; break;
case 41: return 48; break;
case 42: return 48; break;
case 43: return 48; break;
case 44: return 48; break;
case 45: return 300; break;
case 46: return 200; break;
case 47: return 1200; break;
case 48: return 4200; break;
case 49: return 100; break;
case 50: return 70; break;
case 51: return 400; break;
case 52: return 1400; break;
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
case 61: return 0; break;
case 99: return 0; break;
case 80: return 0; break;
case 81: return 0; break;
case 82: return 0; break;
case 83: return 0; break;
case 84: return 0; break;
case 85: return 0; break;
case 86: return 0; break;
case 87: return 0; break;
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
case 59: return 1125; break;
case 62: return 3750; break;
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
case 60: return 337.5; break;
case 63: return 1125; break;
case 33: return 0; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 57: return 0; break;
case 58: return 0; break;
case 34: return 0; break;
case 36: return 0; break;
case 35: return 0; break;
case 88: return 0; break;
case 89: return 0; break;
case 90: return 0; break;
case 37: return 90; break;
case 38: return 90; break;
case 39: return 90; break;
case 40: return 90; break;
case 41: return 30; break;
case 42: return 30; break;
case 43: return 30; break;
case 44: return 30; break;
case 45: return 500; break;
case 46: return 120; break;
case 47: return 2100; break;
case 48: return 7000; break;
case 49: return 170; break;
case 50: return 40; break;
case 51: return 700; break;
case 52: return 2300; break;
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
case 61: return 0; break;
case 99: return 0; break;
case 80: return 0; break;
case 81: return 0; break;
case 82: return 0; break;
case 83: return 0; break;
case 84: return 0; break;
case 85: return 0; break;
case 86: return 0; break;
case 87: return 0; break;
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
case 59: return 1500; break;
case 62: return 7400; break;
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
case 60: return 450; break;
case 63: return 2220; break;
case 33: return 0; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 57: return 0; break;
case 58: return 0; break;
case 34: return 0; break;
case 36: return 0; break;
case 35: return 0; break;
case 88: return 0; break;
case 89: return 0; break;
case 90: return 0; break;
case 37: return 200; break;
case 38: return 200; break;
case 39: return 200; break;
case 40: return 200; break;
case 41: return 70; break;
case 42: return 70; break;
case 43: return 70; break;
case 44: return 70; break;
case 45: return 500; break;
case 46: return 200; break;
case 47: return 2100; break;
case 48: return 7000; break;
case 49: return 170; break;
case 50: return 70; break;
case 51: return 700; break;
case 52: return 2300; break;
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
case 61: return 0; break;
case 99: return 0; break;
case 80: return 0; break;
case 81: return 0; break;
case 82: return 0; break;
case 83: return 0; break;
case 84: return 0; break;
case 85: return 0; break;
case 86: return 0; break;
case 87: return 0; break;
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
case 20: return 4; break;
case 21: return 8; break;
case 22: return 8; break;
case 23: return 8; break;
case 24: return 8; break;
case 25: return 12; break;
case 26: return 12; break;
case 27: return 12; break;
case 28: return 12; break;
case 29: return 16; break;
case 30: return 16; break;
case 31: return 24; break;
case 32: return 24; break;
case 60: return 18; break;
case 63: return 26; break;
case 33: return 0; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 57: return 0; break;
case 58: return 0; break;
case 34: return 0; break;
case 36: return 0; break;
case 35: return 0; break;
case 88: return 0; break;
case 89: return 0; break;
case 90: return 0; break;
case 37: return 0; break;
case 38: return 0; break;
case 39: return 0; break;
case 40: return 0; break;
case 41: return 5; break;
case 42: return 5; break;
case 43: return 5; break;
case 44: return 5; break;
case 45: return 0; break;
case 46: return 0; break;
case 47: return 0; break;
case 48: return 0; break;
case 49: return 5; break;
case 50: return 5; break;
case 51: return 10; break;
case 52: return 20; break;
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
case 61: return 0; break;
case 99: return 0; break;
case 80: return 0; break;
case 81: return 0; break;
case 82: return 0; break;
case 83: return 0; break;
case 84: return 0; break;
case 85: return 0; break;
case 86: return 0; break;
case 87: return 0; break;
case 91: return 570; break;
case 92: return 1100; break;
case 94: return 1200; break;
case 93: return 4000; break;
case 95: return 490; break;
case 96: return 550; break;
case 97: return 2270; break;
case 98: return 1600; break;
default: return -1;
}
}

public function GetItemC($i)
{
switch($i)
{
case 1: return 180; break;
case 2: return 180; break;
case 3: return 300; break;
case 4: return 540; break;
case 5: return 1380; break;
case 6: return 2160; break;
case 7: return 1380; break;
case 8: return 3240; break;
case 9: return 3600; break;
case 10: return 6480; break;
case 11: return 3720; break;
case 12: return 8160; break;
case 13: return 1800; break;
case 14: return 5340; break;
case 15: return 12960; break;
case 16: return 15120; break;
case 59: return 1980; break;
case 62: return 8000; break;
case 17: return 180; break;
case 18: return 180; break;
case 19: return 300; break;
case 20: return 540; break;
case 21: return 1380; break;
case 22: return 2160; break;
case 23: return 1380; break;
case 24: return 3240; break;
case 25: return 3600; break;
case 26: return 6480; break;
case 27: return 3720; break;
case 28: return 8160; break;
case 29: return 1800; break;
case 30: return 5340; break;
case 31: return 12960; break;
case 32: return 15120; break;
case 60: return 1980; break;
case 63: return 8000; break;
case 33: return 0; break;
case 53: return 0; break;
case 54: return 0; break;
case 55: return 0; break;
case 56: return 0; break;
case 57: return 0; break;
case 58: return 0; break;
case 34: return 0; break;
case 36: return 0; break;
case 35: return 0; break;
case 88: return 0; break;
case 89: return 0; break;
case 90: return 0; break;
case 37: return 540; break;
case 38: return 540; break;
case 39: return 540; break;
case 40: return 540; break;
case 41: return 540; break;
case 42: return 540; break;
case 43: return 540; break;
case 44: return 540; break;
case 45: return 720; break;
case 46: return 480; break;
case 47: return 3240; break;
case 48: return 8160; break;
case 49: return 720; break;
case 50: return 480; break;
case 51: return 3240; break;
case 52: return 8160; break;
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
case 61: return 0; break;
case 99: return 0; break;
case 80: return 0; break;
case 81: return 0; break;
case 82: return 0; break;
case 83: return 0; break;
case 84: return 0; break;
case 85: return 0; break;
case 86: return 0; break;
case 87: return 0; break;
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
case '"53"': return 120; break;
case '"54"': return 120; break;
case '"55"': return 120; break;
case '"56"': return 120; break;
case '"57"': return 120; break;
case '"58"': return 240; break;
case '"34"': return 60; break;
case '"36"': return 60; break;
case '"35"': return 60; break;
case '"88"': return 60; break;
case '"89"': return 60; break;
case '"90"': return 60; break;
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
case '"61"': return 480; break;
case '"99"': return 240; break;
case '"80"': return 120; break;
case '"81"': return 120; break;
case '"82"': return 120; break;
case '"83"': return 120; break;
case '"84"': return 240; break;
case '"85"': return 180; break;
case '"86"': return 180; break;
case '"87"': return 300; break;
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
case 1189: return 4; break;
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
case 0: return 1000; break;
case 1: return 1100; break;
case 2: return 1200; break;
case 3: return 1300; break;
case 4: return 1400; break;
case 5: return 1500; break;
case 6: return 1600; break;
case 7: return 1700; break;
case 8: return 1800; break;
case 9: return 1900; break;
case 10: return 2000; break;
case 11: return 2100; break;
case 12: return 2200; break;
case 13: return 2300; break;
case 14: return 2400; break;
case 15: return 2500; break;
case 16: return 2600; break;
case 17: return 2700; break;
case 18: return 2800; break;
case 19: return 2900; break;
case 20: return 3000; break;
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
case 144: return '112-1'; break;
case 138: return '112-1:118-1:124-1:101-1'; break;
case 139: return '112-1:118-1:124-1:101-1'; break;
case 140: return '127-1'; break;
case 137: return '110-1'; break;
case 125: return '1054-1:124-1'; break;
case 126: return '1053-1:125-1'; break;
case 107: return '1055-1:106-10'; break;
case 105: return '1056-1:104-10'; break;
case 103: return '1057-1:102-10'; break;
case 110: return '1050-1:100-1:127-1'; break;
case 111: return '1051-1:110-1'; break;
case 112: return '1058-1:111-1'; break;
case 600: return '112-1'; break;
case 118: return '1076-1:111-1'; break;
case 113: return '1060-1:112-1'; break;
case 114: return '1062-1:113-1'; break;
case 115: return '1063-1:114-1'; break;
case 141: return '1081-1:114-1'; break;
case 142: return '1085-1'; break;
case 148: return '1090-1'; break;
case 149: return '148-1'; break;
case 116: return '1065-1:115-1'; break;
case 117: return '1066-1:116-1'; break;
case 119: return '1070-1:118-1'; break;
case 120: return '124-1'; break;
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
case 212: return '100-1:1075-1'; break;
case 213: return '100-1:1075-1'; break;
case 214: return '100-1:1075-1'; break;
case 133: return '100-1:1075-1'; break;
case 136: return '100-1:1075-1'; break;
case 130: return '100-1:1075-1'; break;
case 215: return '100-1:1089-1'; break;
case 216: return '100-1:1089-1'; break;
case 217: return '100-1:1089-1'; break;
case 146: return '100-1:1089-1'; break;
case 145: return '100-1:1089-1'; break;
case 741: return '100-1:1050-1'; break;
case 742: return '100-1:1050-1'; break;
case 739: return '100-1:1050-1'; break;
case 740: return '100-1:1050-1'; break;
case 743: return '100-1:1050-1'; break;
case 732: return '100-1:1050-1'; break;
case 733: return '100-1:1050-1'; break;
case 734: return '100-1:1050-1'; break;
case 730: return '100-1:1050-1'; break;
case 731: return '100-1:1050-1'; break;
case 720: return '100-1:1050-1'; break;
case 721: return '100-1:1050-1'; break;
case 719: return '100-1:1050-1'; break;
case 722: return '100-1:1050-1'; break;
case 724: return '100-1:1050-1'; break;
case 725: return '100-1:1050-1'; break;
case 726: return '100-1:1050-1'; break;
case 727: return '100-1:1050-1'; break;
case 728: return '100-1:1050-1'; break;
case 729: return '100-1:1050-1'; break;
case 510: return '100-1:1050-1'; break;
case 511: return '100-1:1050-1'; break;
case 512: return '100-1:1050-1'; break;
case 709: return '100-1:1050-1'; break;
case 710: return '100-1:1050-1'; break;
case 711: return '100-1:1050-1'; break;
case 712: return '100-1:1050-1'; break;
case 713: return '100-1:1050-1'; break;
case 714: return '100-1:1050-1'; break;
case 715: return '100-1:1050-1'; break;
case 716: return '100-1:1050-1'; break;
case 717: return '100-1:1050-1'; break;
case 718: return '100-1:1050-1'; break;
case 708: return '100-1:1050-1'; break;
case 706: return '100-1:1050-1'; break;
case 707: return '100-1:1050-1'; break;
case 704: return '100-1:1050-1'; break;
case 705: return '100-1:1050-1'; break;
case 700: return '100-1:1050-1'; break;
case 701: return '100-1:1050-1'; break;
case 703: return '100-1:1050-1'; break;
case 506: return '100-1:1050-1'; break;
case 508: return '100-1:1050-1'; break;
case 507: return '100-1:1050-1'; break;
case 509: return '100-1:1050-1'; break;
case 603: return '100-1:1050-1'; break;
case 601: return '100-1:1050-1'; break;
case 602: return '100-1:1050-1'; break;
case 604: return '100-1:1050-1'; break;
case 605: return '100-1:1050-1'; break;
case 606: return '100-1:1050-1'; break;
case 607: return '100-1:1050-1'; break;
case 608: return '100-1:1050-1'; break;
case 609: return '100-1:1050-1'; break;
case 610: return '100-1:1050-1'; break;
case 611: return '100-1:1050-1'; break;
case 612: return '100-1:1050-1'; break;
case 613: return '100-1:1050-1'; break;
case 614: return '100-1:1050-1'; break;
case 615: return '100-1:1050-1'; break;
case 616: return '100-1:1050-1'; break;
case 617: return '100-1:1050-1'; break;
case 421: return '100-1:1050-1'; break;
case 418: return '100-1:1050-1'; break;
case 419: return '100-1:1050-1'; break;
case 420: return '100-1:1050-1'; break;
case 417: return '100-1:1050-1'; break;
case 500: return '100-1:1050-1'; break;
case 501: return '100-1'; break;
case 306: return '100-1:1050-1'; break;
case 307: return '100-1:1050-1'; break;
case 308: return '100-1:1050-1'; break;
case 309: return '100-1:1050-1'; break;
case 312: return '100-1:1050-1'; break;
case 310: return '100-1:1050-1'; break;
case 311: return '100-1:1050-1'; break;
case 405: return '100-1:1050-1'; break;
case 406: return '100-1:1050-1'; break;
case 415: return '100-1:1050-1'; break;
case 416: return '100-1:1050-1'; break;
case 412: return '100-1:1050-1'; break;
case 413: return '100-1:1050-1'; break;
case 414: return '100-1:1050-1'; break;
case 407: return '100-1:1050-1'; break;
case 408: return '100-1:1050-1'; break;
case 409: return '100-1:1050-1'; break;
case 410: return '100-1:1050-1'; break;
case 411: return '100-1:1050-1'; break;
case 301: return '100-1:1050-1'; break;
case 302: return '100-1:1050-1'; break;
case 303: return '100-1:1050-1'; break;
case 304: return '100-1:1050-1'; break;
case 735: return '100-1:1050-1'; break;
case 736: return '100-1:1050-1'; break;
case 737: return '100-1:1050-1'; break;
case 738: return '100-1:1050-1'; break;
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
case 1051: return '1050-1:110-1'; break;
case 1052: return '1051-1'; break;
case 1054: return '1052-1:124-1:1154-1'; break;
case 1053: return '1054-1:124-1:1153-1'; break;
case 1055: return '1053-1:106-10:1155-1'; break;
case 1056: return '1055-1:104-10:1156-1'; break;
case 1057: return '1056-1:102-10:1157-1'; break;
case 1058: return '1051-1:111-1'; break;
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
case 1072: return '1051-1:111-1'; break;
case 1073: return '1072-1:1062-1:111-1:1173-1'; break;
case 1074: return '1065-1:1073-1:111-1:1174-1'; break;
case 1075: return '1074-1:1070-1:111-1:1175-1'; break;
case 1089: return '1080-1:1075-1:1189-1'; break;
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
default: return '';
}
}

public function GetObjL($i)
{
switch($i)
{
case 100: return 20; break;
case 127: return 20; break;
case 124: return 20; break;
case 101: return 20; break;
case 144: return 1; break;
case 138: return 20; break;
case 139: return 1; break;
case 140: return 1; break;
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
case 107: return 5; break;
case 105: return 5; break;
case 103: return 5; break;
case 110: return 1; break;
case 111: return 1; break;
case 112: return 20; break;
case 600: return 1; break;
case 118: return 20; break;
case 113: return 20; break;
case 114: return 20; break;
case 115: return 20; break;
case 141: return 1; break;
case 142: return 1; break;
case 148: return 1; break;
case 149: return 1; break;
case 150: return 20; break;
case 116: return 20; break;
case 117: return 20; break;
case 119: return 20; break;
case 120: return 1; break;
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
case 212: return 1; break;
case 213: return 1; break;
case 214: return 1; break;
case 133: return 1; break;
case 136: return 1; break;
case 130: return 1; break;
case 215: return 1; break;
case 216: return 1; break;
case 217: return 1; break;
case 146: return 1; break;
case 145: return 1; break;
case 741: return 1; break;
case 742: return 1; break;
case 739: return 1; break;
case 740: return 1; break;
case 743: return 1; break;
case 732: return 1; break;
case 733: return 1; break;
case 734: return 1; break;
case 730: return 1; break;
case 731: return 1; break;
case 720: return 1; break;
case 721: return 1; break;
case 719: return 1; break;
case 722: return 1; break;
case 724: return 1; break;
case 725: return 1; break;
case 726: return 1; break;
case 727: return 1; break;
case 728: return 1; break;
case 729: return 1; break;
case 510: return 1; break;
case 511: return 1; break;
case 512: return 1; break;
case 709: return 1; break;
case 710: return 1; break;
case 711: return 1; break;
case 712: return 1; break;
case 713: return 1; break;
case 714: return 1; break;
case 715: return 1; break;
case 716: return 1; break;
case 717: return 1; break;
case 718: return 1; break;
case 708: return 1; break;
case 706: return 1; break;
case 707: return 1; break;
case 704: return 1; break;
case 705: return 1; break;
case 700: return 1; break;
case 701: return 1; break;
case 703: return 1; break;
case 506: return 1; break;
case 508: return 1; break;
case 507: return 1; break;
case 509: return 1; break;
case 603: return 1; break;
case 601: return 1; break;
case 602: return 1; break;
case 604: return 1; break;
case 605: return 1; break;
case 606: return 1; break;
case 607: return 1; break;
case 608: return 1; break;
case 609: return 1; break;
case 610: return 1; break;
case 611: return 1; break;
case 612: return 1; break;
case 613: return 1; break;
case 614: return 1; break;
case 615: return 1; break;
case 616: return 1; break;
case 617: return 1; break;
case 421: return 1; break;
case 418: return 1; break;
case 419: return 1; break;
case 420: return 1; break;
case 417: return 1; break;
case 500: return 1; break;
case 501: return 1; break;
case 306: return 1; break;
case 307: return 1; break;
case 308: return 1; break;
case 309: return 1; break;
case 312: return 1; break;
case 310: return 1; break;
case 311: return 1; break;
case 405: return 1; break;
case 406: return 1; break;
case 415: return 1; break;
case 416: return 1; break;
case 412: return 1; break;
case 413: return 1; break;
case 414: return 1; break;
case 407: return 1; break;
case 408: return 1; break;
case 409: return 1; break;
case 410: return 1; break;
case 411: return 1; break;
case 301: return 1; break;
case 302: return 1; break;
case 303: return 1; break;
case 304: return 1; break;
case 735: return 1; break;
case 736: return 1; break;
case 737: return 1; break;
case 738: return 1; break;
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
case 1051: return 1; break;
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
case 1089: return 1; break;
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
case 6: return 479; break;
case 7: return 613; break;
case 8: return 787; break;
case 9: return 1007; break;
case 10: return 1292; break;
case 11: return 1653; break;
case 12: return 2117; break;
case 13: return 2709; break;
case 14: return 3468; break;
case 15: return 4437; break;
case 16: return 5662; break;
case 17: return 7269; break;
case 18: return 9304; break;
case 19: return 11911; break;
case 20: return 15243; break;
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

case 139: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 140: 
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
case 17: return 158887; break;
case 18: return 158887; break;
case 19: return 158887; break;
case 20: return 158887; break;
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

case 110: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 111: 
{
switch($l)
{
case 1: return 90; break;
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

case 150: 
{
switch($l)
{
case 1: return 50; break;
case 2: return 603; break;
case 3: return 784; break;
case 4: return 1007; break;
case 5: return 1278; break;
case 6: return 1624; break;
case 7: return 2080; break;
case 8: return 2670; break;
case 9: return 3415; break;
case 10: return 4384; break;
case 11: return 5610; break;
case 12: return 7182; break;
case 13: return 9191; break;
case 14: return 11766; break;
case 15: return 15053; break;
case 16: return 19209; break;
case 17: return 24662; break;
case 18: return 31568; break;
case 19: return 40413; break;
case 20: return 51718; break;
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

case 200: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 201: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 202: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 122: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 123: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 121: 
{
switch($l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 203: 
{
switch($l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 204: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 205: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 131: 
{
switch($l)
{
case 1: return 140; break;
default: return -1;
}
};break;

case 134: 
{
switch($l)
{
case 1: return 140; break;
default: return -1;
}
};break;

case 128: 
{
switch($l)
{
case 1: return 960; break;
default: return -1;
}
};break;

case 206: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 207: 
{
switch($l)
{
case 1: return 400; break;
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
case 1: return 560; break;
default: return -1;
}
};break;

case 135: 
{
switch($l)
{
case 1: return 560; break;
default: return -1;
}
};break;

case 129: 
{
switch($l)
{
case 1: return 2880; break;
default: return -1;
}
};break;

case 209: 
{
switch($l)
{
case 1: return 1080; break;
default: return -1;
}
};break;

case 210: 
{
switch($l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 211: 
{
switch($l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 212: 
{
switch($l)
{
case 1: return 1080; break;
default: return -1;
}
};break;

case 213: 
{
switch($l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 214: 
{
switch($l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 133: 
{
switch($l)
{
case 1: return 1040; break;
default: return -1;
}
};break;

case 136: 
{
switch($l)
{
case 1: return 1040; break;
default: return -1;
}
};break;

case 130: 
{
switch($l)
{
case 1: return 3600; break;
default: return -1;
}
};break;

case 215: 
{
switch($l)
{
case 1: return 1080; break;
default: return -1;
}
};break;

case 216: 
{
switch($l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 217: 
{
switch($l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 146: 
{
switch($l)
{
case 1: return 1040; break;
default: return -1;
}
};break;

case 145: 
{
switch($l)
{
case 1: return 3600; break;
default: return -1;
}
};break;

case 741: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 742: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 739: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 740: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 743: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 732: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 733: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 734: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 730: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 731: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 720: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 721: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 719: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 722: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 724: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 725: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 726: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 727: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 728: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 729: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 510: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 511: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 512: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 709: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 710: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 711: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 712: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 713: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 714: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 715: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 716: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 717: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 718: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 708: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 706: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 707: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 704: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 705: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 700: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 701: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 703: 
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

case 509: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 603: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 601: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 602: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 604: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 605: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 606: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 607: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 608: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 609: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 610: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 611: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 612: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 613: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 614: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 615: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 616: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 617: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 421: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 418: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 419: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 420: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 417: 
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
case 1: return 20; break;
default: return -1;
}
};break;

case 501: 
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

case 308: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 309: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 312: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 310: 
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
case 1: return 30; break;
default: return -1;
}
};break;

case 405: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 406: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 415: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 416: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 412: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 413: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 414: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 407: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 408: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 409: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 410: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 411: 
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
case 1: return 20; break;
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
case 1: return 40; break;
default: return -1;
}
};break;

case 735: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 736: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 737: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 738: 
{
switch($l)
{
case 1: return 20; break;
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
case 1: return 1125; break;
default: return -1;
}
};break;

case 62: 
{
switch($l)
{
case 1: return 7400; break;
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
case 1: return 711; break;
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
case 1: return 652.5; break;
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
case 1: return 1710; break;
default: return -1;
}
};break;

case 32: 
{
switch($l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 60: 
{
switch($l)
{
case 1: return 337.5; break;
default: return -1;
}
};break;

case 63: 
{
switch($l)
{
case 1: return 2220; break;
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
case 1: return 140; break;
default: return -1;
}
};break;

case 40: 
{
switch($l)
{
case 1: return 140; break;
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
case 1: return 48; break;
default: return -1;
}
};break;

case 44: 
{
switch($l)
{
case 1: return 48; break;
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

case 1051: 
{
switch($l)
{
case 1: return 100; break;
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

case 1089: 
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

case 144: 
{
switch($l)
{
case 1: return 50; break;
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

case 139: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 140: 
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

case 110: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 111: 
{
switch($l)
{
case 1: return 90; break;
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

case 150: 
{
switch($l)
{
case 1: return 50; break;
case 2: return 413; break;
case 3: return 536; break;
case 4: return 689; break;
case 5: return 874; break;
case 6: return 1112; break;
case 7: return 1424; break;
case 8: return 1826; break;
case 9: return 2337; break;
case 10: return 3000; break;
case 11: return 3838; break;
case 12: return 4914; break;
case 13: return 6289; break;
case 14: return 8050; break;
case 15: return 10299; break;
case 16: return 13143; break;
case 17: return 16874; break;
case 18: return 21599; break;
case 19: return 27651; break;
case 20: return 35386; break;
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

case 200: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 201: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 202: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 122: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 123: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 121: 
{
switch($l)
{
case 1: return 1080; break;
default: return -1;
}
};break;

case 203: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 204: 
{
switch($l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 205: 
{
switch($l)
{
case 1: return 180; break;
default: return -1;
}
};break;

case 131: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 134: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 128: 
{
switch($l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 206: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 207: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 208: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 132: 
{
switch($l)
{
case 1: return 560; break;
default: return -1;
}
};break;

case 135: 
{
switch($l)
{
case 1: return 560; break;
default: return -1;
}
};break;

case 129: 
{
switch($l)
{
case 1: return 2400; break;
default: return -1;
}
};break;

case 209: 
{
switch($l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 210: 
{
switch($l)
{
case 1: return 1080; break;
default: return -1;
}
};break;

case 211: 
{
switch($l)
{
case 1: return 1080; break;
default: return -1;
}
};break;

case 212: 
{
switch($l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 213: 
{
switch($l)
{
case 1: return 1080; break;
default: return -1;
}
};break;

case 214: 
{
switch($l)
{
case 1: return 1080; break;
default: return -1;
}
};break;

case 133: 
{
switch($l)
{
case 1: return 1040; break;
default: return -1;
}
};break;

case 136: 
{
switch($l)
{
case 1: return 1040; break;
default: return -1;
}
};break;

case 130: 
{
switch($l)
{
case 1: return 3200; break;
default: return -1;
}
};break;

case 215: 
{
switch($l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 216: 
{
switch($l)
{
case 1: return 1080; break;
default: return -1;
}
};break;

case 217: 
{
switch($l)
{
case 1: return 1080; break;
default: return -1;
}
};break;

case 146: 
{
switch($l)
{
case 1: return 1040; break;
default: return -1;
}
};break;

case 145: 
{
switch($l)
{
case 1: return 3200; break;
default: return -1;
}
};break;

case 741: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 742: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 739: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 740: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 743: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 732: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 733: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 734: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 730: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 731: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 720: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 721: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 719: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 722: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 724: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 725: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 726: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 727: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 728: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 729: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 510: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 511: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 512: 
{
switch($l)
{
case 1: return 1000; break;
default: return -1;
}
};break;

case 709: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 710: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 711: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 712: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 713: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 714: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 715: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 716: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 717: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 718: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 708: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 706: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 707: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 704: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 705: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 700: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 701: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 703: 
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

case 509: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 603: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 601: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 602: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 604: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 605: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 606: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 607: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 608: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 609: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 610: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 611: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 612: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 613: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 614: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 615: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 616: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 617: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 421: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 418: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 419: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 420: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 417: 
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
case 1: return 20; break;
default: return -1;
}
};break;

case 501: 
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

case 308: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 309: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 312: 
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

case 311: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 405: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 406: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 415: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 416: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 412: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 413: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 414: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 407: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 408: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 409: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 410: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 411: 
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
case 1: return 30; break;
default: return -1;
}
};break;

case 302: 
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
case 1: return 30; break;
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

case 735: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 736: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 737: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 738: 
{
switch($l)
{
case 1: return 20; break;
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
case 1: return 1125; break;
default: return -1;
}
};break;

case 62: 
{
switch($l)
{
case 1: return 3750; break;
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
case 1: return 1185.9; break;
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
case 1: return 1630.5; break;
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
case 1: return 2850; break;
default: return -1;
}
};break;

case 32: 
{
switch($l)
{
case 1: return 3683.1; break;
default: return -1;
}
};break;

case 60: 
{
switch($l)
{
case 1: return 337.5; break;
default: return -1;
}
};break;

case 63: 
{
switch($l)
{
case 1: return 1125; break;
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
case 1: return 90; break;
default: return -1;
}
};break;

case 40: 
{
switch($l)
{
case 1: return 90; break;
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
case 1: return 30; break;
default: return -1;
}
};break;

case 44: 
{
switch($l)
{
case 1: return 30; break;
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

case 1051: 
{
switch($l)
{
case 1: return 100; break;
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

case 1089: 
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

case 144: 
{
switch($l)
{
case 1: return 50; break;
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

case 139: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 140: 
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

case 110: 
{
switch($l)
{
case 1: return 110; break;
default: return -1;
}
};break;

case 111: 
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

case 150: 
{
switch($l)
{
case 1: return 50; break;
case 2: return 127; break;
case 3: return 165; break;
case 4: return 212; break;
case 5: return 269; break;
case 6: return 342; break;
case 7: return 438; break;
case 8: return 562; break;
case 9: return 719; break;
case 10: return 923; break;
case 11: return 1181; break;
case 12: return 1512; break;
case 13: return 1935; break;
case 14: return 2477; break;
case 15: return 3169; break;
case 16: return 4044; break;
case 17: return 5192; break;
case 18: return 6646; break;
case 19: return 8508; break;
case 20: return 10888; break;
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

case 200: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 201: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 202: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 122: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 123: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 121: 
{
switch($l)
{
case 1: return 360; break;
default: return -1;
}
};break;

case 203: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 204: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 205: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 131: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 134: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 128: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 206: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 207: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 208: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 132: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 135: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 129: 
{
switch($l)
{
case 1: return 240; break;
default: return -1;
}
};break;

case 209: 
{
switch($l)
{
case 1: return 360; break;
default: return -1;
}
};break;

case 210: 
{
switch($l)
{
case 1: return 360; break;
default: return -1;
}
};break;

case 211: 
{
switch($l)
{
case 1: return 360; break;
default: return -1;
}
};break;

case 212: 
{
switch($l)
{
case 1: return 360; break;
default: return -1;
}
};break;

case 213: 
{
switch($l)
{
case 1: return 360; break;
default: return -1;
}
};break;

case 214: 
{
switch($l)
{
case 1: return 360; break;
default: return -1;
}
};break;

case 133: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 136: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 130: 
{
switch($l)
{
case 1: return 320; break;
default: return -1;
}
};break;

case 215: 
{
switch($l)
{
case 1: return 360; break;
default: return -1;
}
};break;

case 216: 
{
switch($l)
{
case 1: return 360; break;
default: return -1;
}
};break;

case 217: 
{
switch($l)
{
case 1: return 360; break;
default: return -1;
}
};break;

case 146: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 145: 
{
switch($l)
{
case 1: return 320; break;
default: return -1;
}
};break;

case 741: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 742: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 739: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 740: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 743: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 732: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 733: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 734: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 730: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 731: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 720: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 721: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 719: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 722: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 724: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 725: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 726: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 727: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 728: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 729: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 510: 
{
switch($l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 511: 
{
switch($l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 512: 
{
switch($l)
{
case 1: return 1500; break;
default: return -1;
}
};break;

case 709: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 710: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 711: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 712: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 713: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 714: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 715: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 716: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 717: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 718: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 708: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 706: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 707: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 704: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 705: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 700: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 701: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 703: 
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
case 1: return 1500; break;
default: return -1;
}
};break;

case 509: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 603: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 601: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 602: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 604: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 605: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 606: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 607: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 608: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 609: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 610: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 611: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 612: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 613: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 614: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 615: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 616: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 617: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 421: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 418: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 419: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 420: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 417: 
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

case 501: 
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
case 1: return 30; break;
default: return -1;
}
};break;

case 307: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 308: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 309: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 312: 
{
switch($l)
{
case 1: return 20; break;
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

case 311: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 405: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 406: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 415: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 416: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 412: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 413: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 414: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 407: 
{
switch($l)
{
case 1: return 30; break;
default: return -1;
}
};break;

case 408: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 409: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 410: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 411: 
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

case 302: 
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
case 1: return 40; break;
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

case 735: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 736: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 737: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 738: 
{
switch($l)
{
case 1: return 20; break;
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
case 1: return 1500; break;
default: return -1;
}
};break;

case 62: 
{
switch($l)
{
case 1: return 7400; break;
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
case 1: return 450; break;
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
case 1: return 900; break;
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
case 1: return 1140; break;
default: return -1;
}
};break;

case 32: 
{
switch($l)
{
case 1: return 2100; break;
default: return -1;
}
};break;

case 60: 
{
switch($l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 63: 
{
switch($l)
{
case 1: return 2220; break;
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
case 1: return 200; break;
default: return -1;
}
};break;

case 40: 
{
switch($l)
{
case 1: return 200; break;
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
case 1: return 70; break;
default: return -1;
}
};break;

case 44: 
{
switch($l)
{
case 1: return 70; break;
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

case 1051: 
{
switch($l)
{
case 1: return 150; break;
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

case 1089: 
{
switch($l)
{
case 1: return 40000; break;
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
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
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

case 139: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 140: 
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

case 110: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 111: 
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

case 212: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 213: 
{
switch($l)
{
case 1: return 350; break;
default: return -1;
}
};break;

case 214: 
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

case 215: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 216: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 217: 
{
switch($l)
{
case 1: return 450; break;
default: return -1;
}
};break;

case 146: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 145: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 741: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 742: 
{
switch($l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 739: 
{
switch($l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 740: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 743: 
{
switch($l)
{
case 1: return 25; break;
default: return -1;
}
};break;

case 732: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 733: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 734: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 730: 
{
switch($l)
{
case 1: return 80; break;
default: return -1;
}
};break;

case 731: 
{
switch($l)
{
case 1: return 80; break;
default: return -1;
}
};break;

case 720: 
{
switch($l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 721: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 719: 
{
switch($l)
{
case 1: return 400; break;
default: return -1;
}
};break;

case 722: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 724: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 725: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 726: 
{
switch($l)
{
case 1: return 25; break;
default: return -1;
}
};break;

case 727: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 728: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 729: 
{
switch($l)
{
case 1: return 300; break;
default: return -1;
}
};break;

case 510: 
{
switch($l)
{
case 1: return 800; break;
default: return -1;
}
};break;

case 511: 
{
switch($l)
{
case 1: return 600; break;
default: return -1;
}
};break;

case 512: 
{
switch($l)
{
case 1: return 500; break;
default: return -1;
}
};break;

case 709: 
{
switch($l)
{
case 1: return 80; break;
default: return -1;
}
};break;

case 710: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 711: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 712: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 713: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 714: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 715: 
{
switch($l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 716: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 717: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 718: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 708: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 706: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 707: 
{
switch($l)
{
case 1: return 80; break;
default: return -1;
}
};break;

case 704: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 705: 
{
switch($l)
{
case 1: return 50; break;
default: return -1;
}
};break;

case 700: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 701: 
{
switch($l)
{
case 1: return 120; break;
default: return -1;
}
};break;

case 703: 
{
switch($l)
{
case 1: return 120; break;
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

case 509: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 603: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 601: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 602: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 604: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 605: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 606: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 607: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 608: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 609: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 610: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 611: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 612: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 613: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 614: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 615: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 616: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 617: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 421: 
{
switch($l)
{
case 1: return 150; break;
default: return -1;
}
};break;

case 418: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 419: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 420: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 417: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 500: 
{
switch($l)
{
case 1: return 20; break;
default: return -1;
}
};break;

case 501: 
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

case 308: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 309: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 312: 
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

case 311: 
{
switch($l)
{
case 1: return 80; break;
default: return -1;
}
};break;

case 405: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 406: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 415: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 416: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 412: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 413: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 414: 
{
switch($l)
{
case 1: return 60; break;
default: return -1;
}
};break;

case 407: 
{
switch($l)
{
case 1: return 40; break;
default: return -1;
}
};break;

case 408: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 409: 
{
switch($l)
{
case 1: return 160; break;
default: return -1;
}
};break;

case 410: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 411: 
{
switch($l)
{
case 1: return 160; break;
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

case 302: 
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

case 735: 
{
switch($l)
{
case 1: return 250; break;
default: return -1;
}
};break;

case 736: 
{
switch($l)
{
case 1: return 200; break;
default: return -1;
}
};break;

case 737: 
{
switch($l)
{
case 1: return 100; break;
default: return -1;
}
};break;

case 738: 
{
switch($l)
{
case 1: return 100; break;
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
case 1: return 4; break;
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
case 1: return 8; break;
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
case 1: return 8; break;
default: return -1;
}
};break;

case 25: 
{
switch($l)
{
case 1: return 12; break;
default: return -1;
}
};break;

case 26: 
{
switch($l)
{
case 1: return 12; break;
default: return -1;
}
};break;

case 27: 
{
switch($l)
{
case 1: return 12; break;
default: return -1;
}
};break;

case 28: 
{
switch($l)
{
case 1: return 12; break;
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
case 1: return 16; break;
default: return -1;
}
};break;

case 31: 
{
switch($l)
{
case 1: return 24; break;
default: return -1;
}
};break;

case 32: 
{
switch($l)
{
case 1: return 24; break;
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
case 1: return 26; break;
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
case 1: return 15; break;
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
case 1: return 5; break;
default: return -1;
}
};break;

case 44: 
{
switch($l)
{
case 1: return 5; break;
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
case 1: return 20; break;
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
case 1: return 1100; break;
default: return -1;
}
};break;

case 94: 
{
switch($l)
{
case 1: return 1200; break;
default: return -1;
}
};break;

case 93: 
{
switch($l)
{
case 1: return 4000; break;
default: return -1;
}
};break;

case 95: 
{
switch($l)
{
case 1: return 490; break;
default: return -1;
}
};break;

case 96: 
{
switch($l)
{
case 1: return 550; break;
default: return -1;
}
};break;

case 97: 
{
switch($l)
{
case 1: return 2270; break;
default: return -1;
}
};break;

case 98: 
{
switch($l)
{
case 1: return 1600; break;
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

case 1051: 
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

case 1089: 
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
case 6: return 0; break;
case 7: return 0; break;
case 8: return 0; break;
case 9: return 0; break;
case 10: return 0; break;
case 11: return 0; break;
case 12: return 0; break;
case 13: return 0; break;
case 14: return 0; break;
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

case 139: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 140: 
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

case 110: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 111: 
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

case 212: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 213: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 214: 
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

case 215: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 216: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 217: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 146: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 145: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 741: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 742: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 739: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 740: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 743: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 732: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 733: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 734: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 730: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 731: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 720: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 721: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 719: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 722: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 724: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 725: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 726: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 727: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 728: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 729: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 510: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 511: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 512: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 709: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 710: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 711: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 712: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 713: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 714: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 715: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 716: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 717: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 718: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 708: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 706: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 707: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 704: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 705: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 700: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 701: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 703: 
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

case 509: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 603: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 601: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 602: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 604: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 605: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 606: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 607: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 608: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 609: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 610: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 611: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 612: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 613: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 614: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 615: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 616: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 617: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 421: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 418: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 419: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 420: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 417: 
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

case 501: 
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

case 308: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 309: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 312: 
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

case 311: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 405: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 406: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 415: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 416: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 412: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 413: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 414: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 407: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 408: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 409: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 410: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 411: 
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

case 302: 
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

case 735: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 736: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 737: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 738: 
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

case 1051: 
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

case 1089: 
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
case 6: return 188; break;
case 7: return 226; break;
case 8: return 272; break;
case 9: return 324; break;
case 10: return 384; break;
case 11: return 455; break;
case 12: return 536; break;
case 13: return 631; break;
case 14: return 741; break;
case 15: return 868; break;
case 16: return 1016; break;
case 17: return 1188; break;
case 18: return 1386; break;
case 19: return 1618; break;
case 20: return 1884; break;
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

case 138: 
{
switch($l)
{
case 1: return 10; break;
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

case 139: 
{
switch($l)
{
case 1: return 240; break;
default: return -1;
}
};break;

case 140: 
{
switch($l)
{
case 1: return 3600; break;
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

case 110: 
{
switch($l)
{
case 1: return 10; break;
default: return -1;
}
};break;

case 111: 
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

case 212: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 213: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 214: 
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

case 215: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 216: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 217: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 146: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 145: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 741: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 742: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 739: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 740: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 743: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 732: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 733: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 734: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 730: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 731: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 720: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 721: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 719: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 722: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 724: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 725: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 726: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 727: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 728: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 729: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 510: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 511: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 512: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 709: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 710: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 711: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 712: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 713: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 714: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 715: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 716: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 717: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 718: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 708: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 706: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 707: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 704: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 705: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 700: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 701: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 703: 
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

case 509: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 603: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 601: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 602: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 604: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 605: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 606: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 607: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 608: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 609: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 610: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 611: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 612: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 613: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 614: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 615: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 616: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 617: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 421: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 418: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 419: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 420: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 417: 
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

case 501: 
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

case 308: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 309: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 312: 
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

case 311: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 405: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 406: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 415: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 416: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 412: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 413: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 414: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 407: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 408: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 409: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 410: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 411: 
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

case 302: 
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

case 735: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 736: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 737: 
{
switch($l)
{
case 1: return 0; break;
default: return -1;
}
};break;

case 738: 
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
case 1: return 300; break;
default: return -1;
}
};break;

case 4: 
{
switch($l)
{
case 1: return 540; break;
default: return -1;
}
};break;

case 5: 
{
switch($l)
{
case 1: return 1380; break;
default: return -1;
}
};break;

case 6: 
{
switch($l)
{
case 1: return 2160; break;
default: return -1;
}
};break;

case 7: 
{
switch($l)
{
case 1: return 1380; break;
default: return -1;
}
};break;

case 8: 
{
switch($l)
{
case 1: return 3240; break;
default: return -1;
}
};break;

case 9: 
{
switch($l)
{
case 1: return 3600; break;
default: return -1;
}
};break;

case 10: 
{
switch($l)
{
case 1: return 6480; break;
default: return -1;
}
};break;

case 11: 
{
switch($l)
{
case 1: return 3720; break;
default: return -1;
}
};break;

case 12: 
{
switch($l)
{
case 1: return 8160; break;
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
case 1: return 5340; break;
default: return -1;
}
};break;

case 15: 
{
switch($l)
{
case 1: return 12960; break;
default: return -1;
}
};break;

case 16: 
{
switch($l)
{
case 1: return 15120; break;
default: return -1;
}
};break;

case 59: 
{
switch($l)
{
case 1: return 1980; break;
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
case 1: return 300; break;
default: return -1;
}
};break;

case 20: 
{
switch($l)
{
case 1: return 540; break;
default: return -1;
}
};break;

case 21: 
{
switch($l)
{
case 1: return 1380; break;
default: return -1;
}
};break;

case 22: 
{
switch($l)
{
case 1: return 2160; break;
default: return -1;
}
};break;

case 23: 
{
switch($l)
{
case 1: return 1380; break;
default: return -1;
}
};break;

case 24: 
{
switch($l)
{
case 1: return 3240; break;
default: return -1;
}
};break;

case 25: 
{
switch($l)
{
case 1: return 3600; break;
default: return -1;
}
};break;

case 26: 
{
switch($l)
{
case 1: return 6480; break;
default: return -1;
}
};break;

case 27: 
{
switch($l)
{
case 1: return 3720; break;
default: return -1;
}
};break;

case 28: 
{
switch($l)
{
case 1: return 8160; break;
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
case 1: return 5340; break;
default: return -1;
}
};break;

case 31: 
{
switch($l)
{
case 1: return 12960; break;
default: return -1;
}
};break;

case 32: 
{
switch($l)
{
case 1: return 15120; break;
default: return -1;
}
};break;

case 60: 
{
switch($l)
{
case 1: return 1980; break;
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
case 1: return 540; break;
default: return -1;
}
};break;

case 38: 
{
switch($l)
{
case 1: return 540; break;
default: return -1;
}
};break;

case 39: 
{
switch($l)
{
case 1: return 540; break;
default: return -1;
}
};break;

case 40: 
{
switch($l)
{
case 1: return 540; break;
default: return -1;
}
};break;

case 41: 
{
switch($l)
{
case 1: return 540; break;
default: return -1;
}
};break;

case 42: 
{
switch($l)
{
case 1: return 540; break;
default: return -1;
}
};break;

case 43: 
{
switch($l)
{
case 1: return 540; break;
default: return -1;
}
};break;

case 44: 
{
switch($l)
{
case 1: return 540; break;
default: return -1;
}
};break;

case 45: 
{
switch($l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 46: 
{
switch($l)
{
case 1: return 480; break;
default: return -1;
}
};break;

case 47: 
{
switch($l)
{
case 1: return 3240; break;
default: return -1;
}
};break;

case 48: 
{
switch($l)
{
case 1: return 8160; break;
default: return -1;
}
};break;

case 49: 
{
switch($l)
{
case 1: return 720; break;
default: return -1;
}
};break;

case 50: 
{
switch($l)
{
case 1: return 480; break;
default: return -1;
}
};break;

case 51: 
{
switch($l)
{
case 1: return 3240; break;
default: return -1;
}
};break;

case 52: 
{
switch($l)
{
case 1: return 8160; break;
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

case 1051: 
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

case 1089: 
{
switch($l)
{
case 1: return 18000; break;
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

case 1086: 
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

case 1087: 
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

case 1088: 
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
case 100: return 12; break;
case 127: return 8; break;
case 124: return 10; break;
case 101: return 10; break;
case 144: return 8; break;
case 138: return 8; break;
case 139: return 8; break;
case 140: return 10; break;
case 137: return 8; break;
case 125: return 8; break;
case 126: return 8; break;
case 198: return 8; break;
case 199: return 10; break;
case 106: return 10; break;
case 104: return 10; break;
case 102: return 8; break;
case 109: return 8; break;
case 108: return 8; break;
case 107: return 10; break;
case 105: return 8; break;
case 103: return 6; break;
case 110: return 12; break;
case 111: return 15; break;
case 112: return 8; break;
case 600: return 8; break;
case 118: return 10; break;
case 113: return 8; break;
case 114: return 10; break;
case 115: return 12; break;
case 141: return 9; break;
case 142: return 15; break;
case 148: return 9; break;
case 149: return 7; break;
case 150: return 10; break;
case 116: return 13; break;
case 117: return 10; break;
case 119: return 10; break;
case 120: return 12; break;
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
case 212: return 4; break;
case 213: return 4; break;
case 214: return 8; break;
case 133: return 4; break;
case 136: return 4; break;
case 130: return 4; break;
case 215: return 4; break;
case 216: return 4; break;
case 217: return 8; break;
case 146: return 4; break;
case 145: return 4; break;
case 741: return 5; break;
case 742: return 5; break;
case 739: return 5; break;
case 740: return 2; break;
case 743: return 4; break;
case 732: return 4; break;
case 733: return 4; break;
case 734: return 4; break;
case 730: return 2; break;
case 731: return 3; break;
case 720: return 3; break;
case 721: return 1; break;
case 719: return 3; break;
case 722: return 1; break;
case 724: return 2; break;
case 725: return 1; break;
case 726: return 1; break;
case 727: return 1; break;
case 728: return 1; break;
case 729: return 2; break;
case 510: return 5; break;
case 511: return 4; break;
case 512: return 5; break;
case 709: return 2; break;
case 710: return 6; break;
case 711: return 3; break;
case 712: return 4; break;
case 713: return 4; break;
case 714: return 4; break;
case 715: return 4; break;
case 716: return 4; break;
case 717: return 4; break;
case 718: return 1; break;
case 708: return 5; break;
case 706: return 3; break;
case 707: return 3; break;
case 704: return 1; break;
case 705: return 1; break;
case 700: return 3; break;
case 701: return 3; break;
case 703: return 3; break;
case 506: return 5; break;
case 508: return 8; break;
case 507: return 6; break;
case 509: return 2; break;
case 603: return 1; break;
case 601: return 1; break;
case 602: return 1; break;
case 604: return 1; break;
case 605: return 1; break;
case 606: return 1; break;
case 607: return 1; break;
case 608: return 1; break;
case 609: return 1; break;
case 610: return 1; break;
case 611: return 1; break;
case 612: return 1; break;
case 613: return 1; break;
case 614: return 1; break;
case 615: return 1; break;
case 616: return 1; break;
case 617: return 1; break;
case 421: return 7; break;
case 418: return 1; break;
case 419: return 4; break;
case 420: return 4; break;
case 417: return 5; break;
case 500: return 4; break;
case 501: return 4; break;
case 306: return 4; break;
case 307: return 4; break;
case 308: return 4; break;
case 309: return 4; break;
case 312: return 4; break;
case 310: return 4; break;
case 311: return 4; break;
case 405: return 1; break;
case 406: return 1; break;
case 415: return 2; break;
case 416: return 2; break;
case 412: return 2; break;
case 413: return 2; break;
case 414: return 2; break;
case 407: return 2; break;
case 408: return 1; break;
case 409: return 4; break;
case 410: return 1; break;
case 411: return 8; break;
case 301: return 4; break;
case 302: return 4; break;
case 303: return 4; break;
case 304: return 4; break;
case 735: return 2; break;
case 736: return 3; break;
case 737: return 2; break;
case 738: return 2; break;
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
case 53: return 2; break;
case 54: return 4; break;
case 55: return 3; break;
case 56: return 3; break;
case 57: return 3; break;
case 58: return 5; break;
case 34: return 5; break;
case 36: return 5; break;
case 35: return 6; break;
case 88: return 5; break;
case 89: return 4; break;
case 90: return 5; break;
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
case 61: return 4; break;
case 99: return 7; break;
case 9002: return 16; break;
case 80: return 4; break;
case 81: return 4; break;
case 82: return 6; break;
case 83: return 3; break;
case 84: return 4; break;
case 85: return 4; break;
case 86: return 9; break;
case 87: return 11; break;
case 91: return 5; break;
case 92: return 11; break;
case 94: return 13; break;
case 93: return 19; break;
case 95: return 4; break;
case 96: return 7; break;
case 97: return 7; break;
case 98: return 17; break;
case 1050: return 0; break;
case 1051: return 0; break;
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
case 1189: return 0; break;
case 1089: return 0; break;
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
case 1605: return 0; break;
case 1508: return 0; break;
case 1700: return 0; break;
case 1702: return 0; break;
case 1704: return 0; break;
case 1600: return 0; break;
case 1609: return 0; break;
case 1500: return 0; break;
case 1502: return 0; break;
case 1504: return 0; break;
case 1507: return 0; break;
case 1511: return 0; break;
case 1606: return 0; break;
case 1509: return 0; break;
case 1607: return 0; break;
case 1705: return 0; break;
case 1711: return 0; break;
case 1601: return 0; break;
case 1608: return 0; break;
case 1611: return 0; break;
case 1623: return 0; break;
case 1630: return 0; break;
case 1501: return 0; break;
case 1505: return 0; break;
case 1506: return 0; break;
case 1510: return 0; break;
case 1513: return 0; break;
case 1602: return 0; break;
case 1603: return 0; break;
case 1706: return 0; break;
case 1503: return 0; break;
case 1518: return 0; break;
case 1520: return 0; break;
case 1526: return 0; break;
case 1528: return 0; break;
case 1530: return 0; break;
case 1604: return 0; break;
case 1610: return 0; break;
case 1612: return 0; break;
case 1628: return 0; break;
case 1632: return 0; break;
case 1636: return 0; break;
case 1615: return 0; break;
case 1533: return 0; break;
case 1534: return 0; break;
case 1537: return 0; break;
case 1616: return 0; break;
case 1701: return 0; break;
case 1703: return 0; break;
case 1712: return 0; break;
case 1512: return 0; break;
case 1514: return 0; break;
case 1515: return 0; break;
case 1517: return 0; break;
case 1519: return 0; break;
case 1521: return 0; break;
case 1529: return 0; break;
case 1536: return 0; break;
case 1613: return 0; break;
case 1614: return 0; break;
case 1618: return 0; break;
case 1627: return 0; break;
case 1631: return 0; break;
case 1633: return 0; break;
case 1634: return 0; break;
case 1531: return 0; break;
case 1535: return 0; break;
case 1617: return 0; break;
case 1619: return 0; break;
case 1626: return 0; break;
case 1516: return 0; break;
case 1522: return 0; break;
case 1539: return 0; break;
case 1635: return 0; break;
case 1713: return 0; break;
case 1532: return 0; break;
case 1538: return 0; break;
case 1523: return 0; break;
case 1638: return 0; break;
case 1640: return 0; break;
case 1620: return 0; break;
case 1524: return 0; break;
case 1621: return 0; break;
case 1541: return 0; break;
case 1527: return 0; break;
case 1637: return 0; break;
case 1624: return 0; break;
case 1641: return 0; break;
case 1629: return 0; break;
case 1540: return 0; break;
case 1622: return 0; break;
case 1714: return 0; break;
case 1625: return 0; break;
case 1639: return 0; break;
case 1525: return 0; break;
case 1708: return 0; break;
case 1709: return 0; break;
case 1710: return 0; break;
case 1707: return 0; break;
case 1901: return 0; break;
default: return -1;
}
}

public function GetObjSY($i)
{
switch($i)
{
case 100: return 10; break;
case 127: return 8; break;
case 124: return 8; break;
case 101: return 12; break;
case 144: return 8; break;
case 138: return 7; break;
case 139: return 13; break;
case 140: return 10; break;
case 137: return 9; break;
case 125: return 10; break;
case 126: return 12; break;
case 198: return 4; break;
case 199: return 10; break;
case 106: return 10; break;
case 104: return 10; break;
case 102: return 4; break;
case 109: return 6; break;
case 108: return 6; break;
case 107: return 10; break;
case 105: return 9; break;
case 103: return 6; break;
case 110: return 12; break;
case 111: return 15; break;
case 112: return 6; break;
case 600: return 8; break;
case 118: return 12; break;
case 113: return 8; break;
case 114: return 8; break;
case 115: return 12; break;
case 141: return 9; break;
case 142: return 8; break;
case 148: return 10; break;
case 149: return 7; break;
case 150: return 8; break;
case 116: return 8; break;
case 117: return 10; break;
case 119: return 12; break;
case 120: return 13; break;
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
case 212: return 3; break;
case 213: return 4; break;
case 214: return 4; break;
case 133: return 4; break;
case 136: return 4; break;
case 130: return 4; break;
case 215: return 3; break;
case 216: return 4; break;
case 217: return 4; break;
case 146: return 4; break;
case 145: return 4; break;
case 741: return 3; break;
case 742: return 5; break;
case 739: return 5; break;
case 740: return 3; break;
case 743: return 4; break;
case 732: return 2; break;
case 733: return 2; break;
case 734: return 2; break;
case 730: return 2; break;
case 731: return 2; break;
case 720: return 3; break;
case 721: return 3; break;
case 719: return 3; break;
case 722: return 1; break;
case 724: return 6; break;
case 725: return 1; break;
case 726: return 1; break;
case 727: return 4; break;
case 728: return 1; break;
case 729: return 2; break;
case 510: return 7; break;
case 511: return 5; break;
case 512: return 6; break;
case 709: return 1; break;
case 710: return 2; break;
case 711: return 4; break;
case 712: return 5; break;
case 713: return 5; break;
case 714: return 5; break;
case 715: return 6; break;
case 716: return 1; break;
case 717: return 1; break;
case 718: return 1; break;
case 708: return 3; break;
case 706: return 2; break;
case 707: return 2; break;
case 704: return 1; break;
case 705: return 1; break;
case 700: return 3; break;
case 701: return 3; break;
case 703: return 3; break;
case 506: return 5; break;
case 508: return 5; break;
case 507: return 6; break;
case 509: return 2; break;
case 603: return 1; break;
case 601: return 1; break;
case 602: return 1; break;
case 604: return 1; break;
case 605: return 1; break;
case 606: return 1; break;
case 607: return 1; break;
case 608: return 1; break;
case 609: return 1; break;
case 610: return 1; break;
case 611: return 1; break;
case 612: return 1; break;
case 613: return 1; break;
case 614: return 1; break;
case 615: return 1; break;
case 616: return 1; break;
case 617: return 1; break;
case 421: return 5; break;
case 418: return 1; break;
case 419: return 4; break;
case 420: return 4; break;
case 417: return 5; break;
case 500: return 4; break;
case 501: return 4; break;
case 306: return 1; break;
case 307: return 1; break;
case 308: return 1; break;
case 309: return 1; break;
case 312: return 1; break;
case 310: return 1; break;
case 311: return 2; break;
case 405: return 1; break;
case 406: return 1; break;
case 415: return 2; break;
case 416: return 2; break;
case 412: return 3; break;
case 413: return 3; break;
case 414: return 3; break;
case 407: return 2; break;
case 408: return 1; break;
case 409: return 4; break;
case 410: return 1; break;
case 411: return 2; break;
case 301: return 1; break;
case 302: return 1; break;
case 303: return 1; break;
case 304: return 1; break;
case 735: return 2; break;
case 736: return 3; break;
case 737: return 2; break;
case 738: return 3; break;
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
case 53: return 4; break;
case 54: return 3; break;
case 55: return 4; break;
case 56: return 4; break;
case 57: return 4; break;
case 58: return 6; break;
case 34: return 5; break;
case 36: return 8; break;
case 35: return 6; break;
case 88: return 7; break;
case 89: return 5; break;
case 90: return 6; break;
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
case 61: return 2; break;
case 99: return 8; break;
case 9002: return 4; break;
case 80: return 4; break;
case 81: return 4; break;
case 82: return 6; break;
case 83: return 3; break;
case 84: return 4; break;
case 85: return 4; break;
case 86: return 9; break;
case 87: return 7; break;
case 91: return 7; break;
case 92: return 10; break;
case 94: return 13; break;
case 93: return 5; break;
case 95: return 7; break;
case 96: return 4; break;
case 97: return 5; break;
case 98: return 5; break;
case 1050: return 0; break;
case 1051: return 0; break;
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
case 1189: return 0; break;
case 1089: return 0; break;
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
case 1605: return 0; break;
case 1508: return 0; break;
case 1700: return 0; break;
case 1702: return 0; break;
case 1704: return 0; break;
case 1600: return 0; break;
case 1609: return 0; break;
case 1500: return 0; break;
case 1502: return 0; break;
case 1504: return 0; break;
case 1507: return 0; break;
case 1511: return 0; break;
case 1606: return 0; break;
case 1509: return 0; break;
case 1607: return 0; break;
case 1705: return 0; break;
case 1711: return 0; break;
case 1601: return 0; break;
case 1608: return 0; break;
case 1611: return 0; break;
case 1623: return 0; break;
case 1630: return 0; break;
case 1501: return 0; break;
case 1505: return 0; break;
case 1506: return 0; break;
case 1510: return 0; break;
case 1513: return 0; break;
case 1602: return 0; break;
case 1603: return 0; break;
case 1706: return 0; break;
case 1503: return 0; break;
case 1518: return 0; break;
case 1520: return 0; break;
case 1526: return 0; break;
case 1528: return 0; break;
case 1530: return 0; break;
case 1604: return 0; break;
case 1610: return 0; break;
case 1612: return 0; break;
case 1628: return 0; break;
case 1632: return 0; break;
case 1636: return 0; break;
case 1615: return 0; break;
case 1533: return 0; break;
case 1534: return 0; break;
case 1537: return 0; break;
case 1616: return 0; break;
case 1701: return 0; break;
case 1703: return 0; break;
case 1712: return 0; break;
case 1512: return 0; break;
case 1514: return 0; break;
case 1515: return 0; break;
case 1517: return 0; break;
case 1519: return 0; break;
case 1521: return 0; break;
case 1529: return 0; break;
case 1536: return 0; break;
case 1613: return 0; break;
case 1614: return 0; break;
case 1618: return 0; break;
case 1627: return 0; break;
case 1631: return 0; break;
case 1633: return 0; break;
case 1634: return 0; break;
case 1531: return 0; break;
case 1535: return 0; break;
case 1617: return 0; break;
case 1619: return 0; break;
case 1626: return 0; break;
case 1516: return 0; break;
case 1522: return 0; break;
case 1539: return 0; break;
case 1635: return 0; break;
case 1713: return 0; break;
case 1532: return 0; break;
case 1538: return 0; break;
case 1523: return 0; break;
case 1638: return 0; break;
case 1640: return 0; break;
case 1620: return 0; break;
case 1524: return 0; break;
case 1621: return 0; break;
case 1541: return 0; break;
case 1527: return 0; break;
case 1637: return 0; break;
case 1624: return 0; break;
case 1641: return 0; break;
case 1629: return 0; break;
case 1540: return 0; break;
case 1622: return 0; break;
case 1714: return 0; break;
case 1625: return 0; break;
case 1639: return 0; break;
case 1525: return 0; break;
case 1708: return 0; break;
case 1709: return 0; break;
case 1710: return 0; break;
case 1707: return 0; break;
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
case 17: return 5; break;
case 18: return 2005; break;
case 19: return 2007; break;
case 20: return 2006; break;
case 21: return 2008; break;
case 22: return 8; break;
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
case 17: return 2; break;
case 18: return 40; break;
case 19: return 40; break;
case 20: return 50; break;
case 21: return 50; break;
case 22: return 20; break;
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
case 5: return 17; break;
case 2005: return 18; break;
case 2007: return 19; break;
case 2006: return 20; break;
case 2008: return 21; break;
case 8: return 22; break;
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
case 0: return 'Улучшение Эшелона I'; break;
case 1: return 'Киберпёс. Скорость движения.'; break;
case 2: return 'Пехотинец. Скорость движения.'; break;
case 3: return 'Гладиатор. Скорость движения.'; break;
case 4: return 'Разведчик. Скорость движения.'; break;
case 5: return 'Валькирия. Скорость движения.'; break;
case 6: return 'Киберпёс. Время строительства.'; break;
case 7: return 'Пехотинец. Время строительства.'; break;
case 8: return 'Гладиатор. Время строительства.'; break;
case 9: return 'Разведчик. Время строительства.'; break;
case 10: return 'Валькирия. Время строительства.'; break;
case 11: return 'Улучшение Эшелона II'; break;
case 12: return 'Скорость ремонта роботов'; break;
case 13: return 'Боевая машина. Скорость движения.'; break;
case 14: return 'Бронетранспортёр. Скорость движения.'; break;
case 15: return 'Ударный танк. Скорость движения.'; break;
case 16: return 'Осадный танк. Скорость движения.'; break;
case 17: return 'Улучшение Эшелона III'; break;
case 18: return 'Боевая машина. Время строительства.'; break;
case 19: return 'Бронетранспортёр. Время строительства.'; break;
case 20: return 'Ударный танк. Время строительства.'; break;
case 21: return 'Осадный танк. Время строительства.'; break;
case 22: return 'Скорость изучения технологий'; break;
case 23: return 'Снайпер. Скорость движения.'; break;
case 24: return 'Пулемётчик. Скорость движения.'; break;
case 25: return 'Пиротехник. Скорость движения.'; break;
case 26: return 'Ракетчик. Скорость движения.'; break;
case 27: return 'Снайпер. Время строительства.'; break;
case 28: return 'Пулемётчик. Время строительства.'; break;
case 29: return 'Пиротехник. Время строительства.'; break;
case 30: return 'Ракетчик. Время строительства.'; break;
case 31: return 'Улучшение Эшелона IV'; break;
case 32: return 'Количество киборгов'; break;
case 33: return 'Улучшение Эшелона V'; break;
case 34: return 'Скорость изучения технологий'; break;
case 35: return 'Пушка Гаусса. Скорость движения.'; break;
case 36: return 'Термомодуль. Скорость движения.'; break;
case 37: return 'Мортира. Скорость движения.'; break;
case 38: return 'Расщепитель. Скорость движения.'; break;
case 39: return 'Пушка Гаусса. Время строительства.'; break;
case 40: return 'Термомодуль. Время строительства.'; break;
case 41: return 'Мортира. Время строительства.'; break;
case 42: return 'Расщепитель. Время строительства.'; break;
case 43: return 'Количество рудников'; break;
case 44: return 'Стоимость мутации'; break;
case 45: return 'Рецикл. Потребление кредитов.'; break;
case 46: return 'Улучшение Эшелона VI'; break;
case 47: return 'Перехватчик. Скорость движения.'; break;
case 48: return 'Штурмовик. Скорость движения.'; break;
case 49: return 'Крейсер. Скорость движения.'; break;
case 50: return 'Опыт за уничтожение войск'; break;
case 51: return 'Перехватчик. Время строительства.'; break;
case 52: return 'Штурмовик. Время строительства.'; break;
case 53: return 'Крейсер. Время строительства.'; break;
case 54: return 'Протектор. Скорость движения.'; break;
case 55: return 'Ликвидатор. Скорость движения.'; break;
case 56: return 'Каратель. Скорость движения.'; break;
case 57: return 'Истребитель. Скорость движения.'; break;
case 58: return 'Протектор. Время строительства.'; break;
case 59: return 'Ликвидатор. Время строительства.'; break;
case 60: return 'Каратель. Время строительства.'; break;
case 61: return 'Истребитель. Время строительства.'; break;
case 62: return 'Орбитальная пушка. Скорость движения.'; break;
case 63: return 'Разведчик «Кошмар». Скорость движения.'; break;
case 64: return 'Песчаный червь. Скорость движения.'; break;
case 65: return 'Разведчик «Фантом». Время строительства.'; break;
case 66: return 'Орбитальная пушка. Время строительства.'; break;
case 67: return 'Разведчик «Кошмар». Время строительства.'; break;
case 68: return 'Песчаный червь. Время строительства.'; break;
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
case 18: return '1008-8'; break;
case 19: return '2005-10'; break;
case 20: return '2007-10'; break;
case 21: return '2006-10'; break;
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
case 0: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/1.png'; break;
case 1: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/2_s.png'; break;
case 2: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/1_s.png'; break;
case 3: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/3_s.png'; break;
case 4: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/13_s.png'; break;
case 5: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/4_s.png'; break;
case 6: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/2_c.png'; break;
case 7: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/1_c.png'; break;
case 8: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/3_c.png'; break;
case 9: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/13_c.png'; break;
case 10: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/4_c.png'; break;
case 11: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/2.png'; break;
case 12: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/robots.png'; break;
case 13: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/5_s.png'; break;
case 14: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/7_s.png'; break;
case 15: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/6_s.png'; break;
case 16: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/8_s.png'; break;
case 17: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/5.png'; break;
case 18: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/5_c.png'; break;
case 19: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/7_c.png'; break;
case 20: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/6_c.png'; break;
case 21: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/8_c.png'; break;
case 22: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/technology.png'; break;
case 23: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/17_s.png'; break;
case 24: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/18_s.png'; break;
case 25: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/19_s.png'; break;
case 26: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/20_s.png'; break;
case 27: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/17_c.png'; break;
case 28: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/18_c.png'; break;
case 29: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/19_c.png'; break;
case 30: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/20_c.png'; break;
case 31: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/6.png'; break;
case 32: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/ciborg.png'; break;
case 33: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/3.png'; break;
case 34: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/technology.png'; break;
case 35: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/9_s.png'; break;
case 36: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/10_s.png'; break;
case 37: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/11_s.png'; break;
case 38: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/12_s.png'; break;
case 39: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/9_c.png'; break;
case 40: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/10_c.png'; break;
case 41: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/11_c.png'; break;
case 42: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/12_c.png'; break;
case 43: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/location.png'; break;
case 44: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/mutation.png'; break;
case 45: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/1_r.png'; break;
case 46: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/4.png'; break;
case 47: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/14_s.png'; break;
case 48: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/15_s.png'; break;
case 49: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/16_s.png'; break;
case 50: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/points.png'; break;
case 51: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/14_c.png'; break;
case 52: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/15_c.png'; break;
case 53: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/16_c.png'; break;
case 54: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/22_s.png'; break;
case 55: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/21_s.png'; break;
case 56: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/23_s.png'; break;
case 57: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/24_s.png'; break;
case 58: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/22_c.png'; break;
case 59: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/21_c.png'; break;
case 60: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/23_c.png'; break;
case 61: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/24_c.png'; break;
case 62: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/26_s.png'; break;
case 63: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/27_s.png'; break;
case 64: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/28_s.png'; break;
case 65: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/25_c.png'; break;
case 66: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/26_c.png'; break;
case 67: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/27_c.png'; break;
case 68: return 'http://cluster-5.skillclub.com/geo/content2/ui/skillTree/icons/28_c.png'; break;
default: return '';
}
}



}
?>