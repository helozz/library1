<?php
session_start();
//drafts ver 1,00
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=windows-1251" />
		<link href="../css/main.css" rel="stylesheet" type="text/css" />
		<link href="../css/ui-darkness/jquery-ui-1.9.1.custom.css" rel="stylesheet">
		<script src="../js/jquery-1.8.2.js"></script>
		<script src="../js/jquery-ui-1.9.1.custom.js"></script>
		<style>
		#feedback { font-size: 1.4em; }
		.selectable .ui-selecting { background: #FECA40; }
		.selectable .ui-selected { background: #F39814; color: white; }
		.selectable { list-style-type: none; margin: 0; padding: 0; width: 450px; }
		.selectable li { margin: 2px; padding: 1px; float: left; width: 14px; height: 12px; font-size:0.6em; text-align: center; }
		
		.hor-state-default { border: 1px solid #FF4400; background: #FF3300 url(../img/hoimages/hor-bg_glass_20_555555_1x400.png) 50% 50% repeat-x; font-weight: bold; color: #eeeeee; }
		.hor-state-default a, .hor-state-default a:link, .hor-state-default a:visited { color: #eeeeee; text-decoration: none; }
		.hob-state-default { border: 1px solid #0077FF; background: #0066FF url(../img/hoimages/hob-bg_glass_20_555555_1x400.png) 50% 50% repeat-x; font-weight: bold; color: #eeeeee; }
		.hob-state-default a, .hob-state-default a:link, .hob-state-default a:visited { color: #eeeeee; text-decoration: none; }
		.hog-state-default { border: 1px solid #00AA00; background: #009900 url(../img/hoimages/hog-bg_glass_20_555555_1x400.png) 50% 50% repeat-x; font-weight: bold; color: #eeeeee; }
		.hog-state-default a, .hog-state-default a:link, .hog-state-default a:visited { color: #eeeeee; text-decoration: none; }
		
		</style>
		<script>
		$(function() {
			$( ".selectable" ).selectable({
			stop: function(){                
				var result = $("#addq").empty();
                $(".ui-selected", this).each(function(){                    
					var sval = $(this).attr("text");										                    
					result.append(sval);
                });}
			});						
		});
		</script>	
	</head>
	<body>
<?php
require_once("config.php");	
include "header.php";
require_once("../auto/db_query.php");
require_once("../auto/TDApi.php");
require_once("../auto/TDdata.php");
?>
<div class="frame" style=" width:1000px; margin:10px;">
<div class="header">
<div class="hleft"></div>
<div class="hright"></div>
<div class="hmainfull"><div>Чертежи</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 40px 5px 40px;">	

<?php
//технологии
$tech[0] = 1176;	//case 1076: return 'Плащ теней'; break;
$tech[1] = 1154;  	//case 1054: return 'Контрабанда'; break;
$tech[2] = 1160;  	//case 1060: return 'Альянс гномов'; break;
$tech[3] = 1161;  	//case 1061: return 'Клинки Асгарда'; break;
$tech[4] = 1153;	//case 1053: return 'Путешествия'; break;
$tech[5] = 1155;	//case 1055: return 'Живая вода'; break;
$tech[6] = 1156;	//case 1056: return 'Наследие Брана'; break;
$tech[7] = 1157;	//case 1057: return 'Огонь Эльдура'; break;
$tech[8] = 1162;	//case 1062: return 'Кавалерия'; break;
$tech[9] = 1178;	//case 1078: return 'Кодекс Чести'; break;
$tech[10] = 1163;	//case 1063: return 'Союз племен'; break;
$tech[11] = 1179;	//case 1079: return 'Доспехи Хаоса'; break;
$tech[12] = 1165;	//case 1065: return 'Оккультизм'; break;
$tech[13] = 1168;	//case 1068: return 'Лезвие тьмы'; break;
$tech[14] = 1166;	//case 1066: return 'Сердце демона'; break;
$tech[15] = 1169;	//case 1069: return 'Некромантия'; break;
$tech[16] = 1173;	//case 1073: return 'Фортификация 2 ур.'; break;
$tech[17] = 1174;	//case 1074: return 'Фортификация 3 ур.'; break;
$tech[18] = 1175;	//case 1075: return 'Фортификация 4 ур.'; break;
$tech[19] = 1189; 	//return 'Периметр 5 уровня'; break;
$tech[20] = 1170;	//case 1070: return 'Амулет грифона'; break;
$tech[21] = 1171;	//case 1071: return 'Кровь виверны'; break;
$tech[22] = 1180;	//case 1080: return 'Яйцо дракона'; break;
$tech[23] = 1181; 	//case 1181: return 'Чертеж для Маскировка'; break;
$tech[24] = 1182; 	//return 'Чертеж для Кумулятивный снаряд'; break;
$tech[25] = 1183; //return 'Чертеж для Протонная мина'; break;
$tech[26] = 1184; //return 'Чертеж для Плазменная Ракета'; break;
$tech[27] = 1185; //return 'Чертеж для Автономная броня'; break;
$tech[28] = 1186; //return 'Чертеж для Боевой экзоскелет'; break;
$tech[29] = 1187; //return 'Чертеж для Биомеханоид'; break;
$tech[30] = 1188; //return 'Чертеж для Сингулярный реактор'; break;
$tech[31] = 1190; //return 'Чертеж для Репликация'; break;
$tech[32] = 1191; //return 'Чертеж для Варп-двигатель'; break;
$tech[33] = 1192; // return 'Чертеж для  Ксенобиология'; break;
$tech[34] = 1193; // return 'Чертеж для  Биомеханика'; break;


//========================
$uid = $_SESSION['soc_id'];
$hash = $_SESSION['hash'];
$calchash = md5(CLIENT_ID.''.$_SESSION['r_log'].''.SECRET);
if ($hash == $calchash)
{
	if (isset($_GET['id']))
	{
		$db=new db_query(1,"vk".$_SESSION['soc_id'],$_SESSION['soc_id']);
		$uinfo = $db->get_acc($_SESSION['soc_id'],'','vk'.$_SESSION['soc_id']);
		$accname = mb_convert_encoding($uinfo,'cp1251','utf-8');
		echo '<table width = "950">';	
		$a_uid = $_SESSION['u_id'];
$query = "SELECT * FROM (SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'M' AND `accounts`.`a_u_id` =".$a_uid." ORDER BY `accounts`.`a_id` ASC) a
		UNION SELECT * FROM (SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'O' AND `accounts`.`a_u_id` =".$a_uid."  ORDER BY `accounts`.`a_id` ASC) b
		UNION SELECT * FROM (SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'D' AND `accounts`.`a_u_id` =".$a_uid."  ORDER BY `accounts`.`a_id` ASC) c
		UNION SELECT * FROM (SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'I' AND `accounts`.`a_u_id` =".$a_uid."  ORDER BY `accounts`.`a_id` ASC) d
		UNION SELECT * FROM (SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'P' AND `accounts`.`a_u_id` =".$a_uid."  ORDER BY `accounts`.`a_id` ASC) e
		UNION SELECT * FROM (SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'R' AND `accounts`.`a_u_id` =".$a_uid." ORDER BY `accounts`.`a_id` ASC) f;";
		$data = mysql_query($query);	
		$row = mysql_fetch_array($data);	
		$dt= new TDdata();
		$id = $_GET['id'];
		$ct = count($tech);
		if (($id)>0) $posl = $id - 1;
		else $posl = 0;
		if (($id)<$ct) $posr = $id + 1;
		else $posr = $ct-1;
		for ($th=0;$th<$ct; $th++)
		{
			$dname = mb_convert_encoding($dt->GetItemName($tech[$th]-100),'cp1251','utf-8');
			echo '<a href="draft.php?id='.$th.'"><img src="../img/techs/'.$tech[$th].'.jpg" width="42" height="42" title="'.$dname.'"></img></a>';
		}	
		$dname = $dt->GetItemName($tech[$id]-100);
		$dname = mb_convert_encoding($dname,'cp1251','utf-8');
		echo '<tr><td><a href="draft.php?id='.$posl.'"><<<</a></td><td>'.$dname.'</td><td><img src="../img/techs/'.$tech[$id].'.jpg"></img></td><td><a href="draft.php?id='.$posr.'">>>></a></td></tr></table>';
		
		echo '<fieldset><legend>Балансировка</legend>Брать с мейна/оффа/дефа/разведа элементы? &nbsp;&nbsp;<input type="checkbox" id="chmain" name="ch1">  &nbsp;&nbsp;&nbsp;&nbsp;<button id="but_change" text="1">Балансировка</button></fieldset>';
		echo '<table width = "950">';
		do
		{
			$AuthKey = $row['a_auth'];
			$soc = $row['a_soc'];
			$aka = mb_convert_encoding($row['a_aka'],'cp1251','utf-8');
			$res=$db->get_all_info($soc);
			$soc = str_replace('vk','',$soc);
			$res_info = explode(';',$res);
			$draft_limit = $res_info[9];
			$draft = explode(':', $res_info[11]);
			$dr_learn = explode(':', $res_info[12]);
			$dt_up = $res_info[17];
			//============формируем JSON для отправки на balans.php
			$temp = array("uid"=>"vk".$soc, "limit"=>(int)$draft_limit, "tech"=>$tech[$id]);			
			//======
			//iconv('utf-8','cp1251',$row['a_n'])
			echo '<tr><td><a href="../tw_page.php?uid='.$soc.'&hash='.$hash.'" target="_blank" title="'.$aka.'">'. mb_convert_encoding($row['a_n'],'cp1251','utf-8').'</a>- '.$draft_limit.' </td><td>'.$dt_up.'</td>';
						
			$fl = 0;					
			$learned = 0;				
			$temp["learn"] = 0;
			foreach ($dr_learn AS $dle)
			{
					$d_lea = explode('+', $dle);
					if ($d_lea[0] == $tech[$id]-100) 
					{ 
						$learned = 1;
						if (($d_lea[2] ==1)||($d_lea[1]>0))
						{
							$temp["learn"] = 1;				//массив выученных чертежей
						}						
					}
			}	
			for ($dj=0;$dj< count($draft);$dj++)
			{
				$di = explode('+', $draft[$dj]);
				
				if ($di[0]==$tech[$id])
				{				
					$ix = $di[0];					
					$fl = 1;
					echo '<td><ol id="selectable'.$ix.'" class="selectable" name="sel'.$di[0].'" style="display: inline;">';		
					//echo '<li class="hog-state-default" id="">'.(int)$build_info[5].'</li>';		//green			
					for ($dl=1;$dl<count($di);$dl++)
					{
						$dr_el = explode('*',$di[$dl]);
						$temp["drafts"][]=(int)$dr_el[1];								
						if ($dr_el[1] >0)
						{
							//echo $dl.'='.$dr_el[1].'шт. ';
							if ($learned) echo '<li class="hog-state-default" id="'.$ix.'_'.$dl.'" text="'.$ix.';'.$dl.';'.$dr_el[1].':" title="'.$dl.'">'.$dr_el[1].'</li>'; //green
							else echo '<li class="hob-state-default" id="'.$ix.'_'.$dl.'" text="'.$ix.';'.$dl.';'.$dr_el[1].':" title="'.$dl.'">'.$dr_el[1].'</li>';		//blue
						}						
						else 
						{
							if ($learned) echo '<li class="hog-state-default" id="" title="'.$dl.'"></li>'; //green
							else echo '<li class="ui-state-default" id="" title="'.$dl.'"></li>'; //grey
						}
					}					
										
				}			
			}
			if ($fl ==0)	
			{
					echo '<td><ol id="selectable'.$tech[$id].'" class="selectable" name="sel" style="display: inline;">';		
					$r = $dt->GetItemP($tech[$id]);
					for ($dl=0;$dl<$r;$dl++)
					{
						echo '<li class="ui-state-default" id="" title="'.$dl.'"></li>'; //grey
						$temp["drafts"][]=0;								
					}	
					echo '</ol></td>';
			}			
			echo '</tr>';
			$jsonarr[]=	$temp;		
		}
		while ($row = mysql_fetch_array($data));
		echo '</table>';
		// выводим JSON в скрытое поле
		$jsoncode = json_encode($jsonarr);
		echo '<textarea hidden  id="jsoncode">'.$jsoncode.'</textarea>';
		echo '<fieldset><legend>Обновление</legend>Информация устарела?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button name="infoupdate.php" id="infoupd">Обновить</button></fieldset>';
		$db->close_connection();
	}
	//echo var_dump($dr_learn);		
	
			
}
else die('Давай до свидания!');
?>

</div>

<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>
</div>
</div>
<script>
$('#infoupd').on({
		   'click': function()
			{  
				var UData = $('#jsoncode').val();		  
				var Uout = '{"accs":' + UData + '}';
				$.ajax({
						async: false
						, url:'infoupdate.php'
						, type:'POST'
						, data:'InfoUpdate=' + Uout
						, success: function(resiu)
						{
							alert(resiu);						
						}
					});
			}
});

$('#but_change').on({
		   'click': function(){        
		   var self = $(this);
		   var ch1 = $('#chmain').is(':checked');
		   var Data = $('#jsoncode').val();		  
		   var out = '{"main":'+ch1+', "accs":' + Data + '}';
		   self.attr('disabled', 'disabled');
		   $.ajax({
            url:'balans.php'
            , type:'POST'
            , data:'jsonData=' + out
            , success: function(res) {
                alert(res);
            }
        });
	}	
});	
</script>
</body>
</html>