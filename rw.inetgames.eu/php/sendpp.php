<?php
//Отправщик ver 3.0
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=windows-1251" />
		<link href="../css/main.css" rel="stylesheet" type="text/css" />
		<link href="../css/ui-darkness/jquery-ui-1.9.1.custom.css" rel="stylesheet">
		<script src="../js/jquery-1.8.2.js"></script>
		<script src="../js/jquery-ui-1.9.1.custom.js"></script>
</head>		
<?php
require_once("config.php");						
include "header.php";
require_once("../auto/db_query.php");
require_once("../auto/TDApi.php");
$uid = $_SESSION['soc_id'];
$uphoto = $_SESSION['uphoto'];
$hash = $_SESSION['hash'];
$_SESSION['hash']    = $hash;
$calchash = md5(CLIENT_ID.''.$_SESSION['r_log'].''.SECRET); 
if ($hash !=$calchash) die('Давай до свидания!');

$db=new db_query(0,"vk".$uid,$uid);
$query = "SELECT * FROM acl WHERE u_id='".$_SESSION['r_uid']."'";
$data = mysql_query($query);
$row = mysql_fetch_array($data);
$trade = $row['trader'];
$units[ 1] = 'Пехотинец';
$units[ 2] = 'Киберпёс'; 
$units[ 3] = 'Гладиатор'; 
$units[ 4] = 'Валькирия'; 
$units[ 5] = 'Боевая машина'; 
$units[ 6] = 'Ударный танк'; 
$units[ 7] = 'Бронетранспортёр'; 
$units[ 8] = 'Осадный танк'; 
$units[ 9] = 'Пушка Гаусса'; 
$units[ 10] = 'Термомодуль'; 
$units[ 11] = 'Мортира'; 
$units[ 12] = 'Расщепитель'; 
$units[ 13] = 'Разведчик'; 
$units[ 14] = 'Перехватчик'; 
$units[ 15] = 'Штурмовик'; 
$units[ 16] = 'Крейсер'; 
$units[ 17] = 'Элитный пехотинец'; 
$units[ 18] = 'Элитный киберпёс'; 
$units[ 19] = 'Элитный гладиатор'; 
$units[ 20] = 'Элитная валькирия'; 
$units[ 21] = 'Элитная боевая машина'; 
$units[ 22] = 'Элитный ударный танк'; 
$units[ 23] = 'Элитный бронетранспортёр'; 
$units[ 24] = 'Элитный осадный танк'; 
$units[ 25] = 'Элитная пушка Гаусса'; 
$units[ 26] = 'Элитный термомодуль'; 
$units[ 27] = 'Элитная мортира'; 
$units[ 28] = 'Элитный расщепитель'; 
$units[ 29] = 'Элитный разведчик'; 
$units[ 30] = 'Элитный перехватчик'; 
$units[ 31] = 'Элитный штурмовик'; 
$units[ 32] = 'Элитный крейсер'; 
?>
<body>
							<p>
							
							</p>
<div class="frame" style=" width:800px; margin:10px;">
<div class="header">
<div class="hleft"></div>
<div class="hright"></div>
<div class="hmainfull"><div>Отправка</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 20px 5px 20px; padding-top:5px;">	
							<div class="normal_text">	
							<?php
							$a_uid = $_SESSION['u_id'];
							$query = "SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'M' AND `accounts`.`a_u_id` =".$a_uid."  
							UNION SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'O' AND `accounts`.`a_u_id` =".$a_uid." 
							UNION SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'D' AND `accounts`.`a_u_id` =".$a_uid." 
							UNION SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'I' AND `accounts`.`a_u_id` =".$a_uid."
							UNION SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'M' AND `accounts`.`a_soc` IN (SELECT DISTINCT `accounts`.`a_soc` FROM `acl`,`users`,`accounts` WHERE `acl`.`vkid`='".$_SESSION['r_log']."' AND (`acl`.`access` LIKE CONCAT(`users`.`u_id`,\",%\") OR `acl`.`access` LIKE CONCAT(\"%,\",`users`.`u_id`) OR `acl`.`access` LIKE CONCAT(\"%,\",`users`.`u_id`,\",%\") OR `acl`.`access` = `users`.`u_id`) AND `accounts`.`a_u_id`=`users`.`u_id`)  AND `accounts`.`a_u_id` !=".$a_uid;
							$data = mysql_query($query);
							if ($data)
							{
								$row = mysql_fetch_array($data);
								
								do
								{
									$nm =  iconv('utf-8','cp1251',$row['a_n']);
									if (isset($_POST['submit']) && $_POST['recepient']==$row['a_soc']) $pretext = '<option value="'.$row['a_soc'].'">'.$nm.'</option>';
									
									if(isset($_POST['submit']) && $_POST['recepient']!=$row['a_soc'])
									{
									$outtext[] = '<option value="'.$row['a_soc'].'">'.$nm.'</option>';
									}
									if(!isset($_POST['submit']))
									{
										/*if ($row['a_soc']=='vk'.$_SESSION['soc_id'])
										{
											$outtext[] = '<option value="'.$row['a_soc'].'" selected>'.$nm.'</option>';
										}
										else*/	$outtext[] = '<option value="'.$row['a_soc'].'">'.$nm.'</option>';									
									}
								}
								while ($row = mysql_fetch_array($data));
								//echo var_dump($outtext);
							}
							?>
							<div><fieldset><legend>Расчет стоимости</legend>
							<select size="1" name="units" id="units">
							<?
								$i = 0;
								foreach ($units AS $un)
								{
									$i = 1;
									echo '<option value="'.$un.'">'.$un.'</option>';
								}
							?>
							</select> <input type="text" name="unitscount" id="uncount" SIZE="3"/>
							<button name="send_units" id="send_un">Посчитать</button>
							</fieldset>
							</div>
							<fieldset><legend>Параметры отправки</legend>
							<div id="outinfo"></div>
									<? 
									if ($trade > 0)
									{									
										echo '<table><tr><td>X:<input name="X" type="text" id="coorx" SIZE=4/> </td>';
										echo '<td>Y:<input name="Y" type="text" id="coory" SIZE=4/> </td>';
										echo '<td><button id="but_get" >Кто это?</button></td>';
										echo '</tr></table>';
										if (isset($_POST['hid_text']))
										{
										$dest = explode(';', $_POST['hid_text']);										
										if (count($dest)>1) echo 'Получатель: '.$dest[1].' <img src="'.$dest[2].'" height="30" width="30" />';
										}
									}
									?>
									<form action="sendpp.php" method="POST">
									<input type="hidden" name="hid_text" id="hd_text"/>
									<table>
									<tr>									
									<td>Получатель:</td>
									<td><select size="1" name="recepient" id="recp">
									<?
									echo $pretext;
									foreach($outtext AS $outt)
									{
										echo $outt;
									}
									?>
									</select></td>									
									<td>Уран:<input name="gold" type="text" id="uran" SIZE=5/> </td>
									<td>Титанит:<input name="steel" type="text" id="titan" SIZE=5/> </td>
									<td>Кредиты:<input name="meat" type="text" id="money" SIZE=5/> </td>
									<td> Сортировка:<select name="sort" id="typesort">
									<option value="time" selected>Время</option>
									<option value="volume">Объем</option>
									</select></td></tr></table>
									<table><tr><td></td><td>Задержка между посылками:<input name="delay" id="delay" type="text"  SIZE=1 value="<? if (isset($_POST['submit'])) echo (int)$_POST['delay']; else echo 2;  ?>"/> </td>
									<td><input type="checkbox" name="chacc" id="chacc" checked="checked">Только ресовые акки</input></td>
									<td><input type="checkbox" name="chuse" id="chuse" checked="checked">Показывать только используемые акки</input></td>
									<td><input name="submit" type="submit" value="Продолжить"/></td> 
									</form></tr></table></fieldset>
							
<?php
//=========================================
function dist($x1,$y1,$x2,$y2)
{
	return floor(sqrt(pow(($x1-$x2),2)+pow(($y1-$y2),2)));
}
//=========================================
if (isset($_POST['submit']) )
{
	//init	
	$send_data["nick"] = "";
	$send_data["x"] = 0;
	$send_data["y"] = 0;
	$send_data["vkid"] = "";
	$send_data["sid"]  = "";
	$send_data["dist"] = 0;
	$send_data["auth"] = "";
	$send_data["m"] = 0;
	$send_data["lc"] = 0;
	$send_data["tr_p"] = 0;
	$send_data["car_av"] = 0;
	echo '<table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1">';	
	$dest_info = "";
	if (isset($_POST['hid_text'])) $dest_info = $_POST['hid_text'];
	if ($trade>0 && ($dest_info!=""))
	{		
		if ($_POST['hid_text']!="")
		{
			//$coord["x"]=(int)$_POST['X'];
			//$coord["y"]=(int)$_POST['Y'];			
			$dest = explode(';', $dest_info);
			$send_data["nick"] = $dest[1];
			$send_data["x"] = $dest[4];
			$send_data["y"] = $dest[5];
			$send_data["vkid"] = $dest[3];
			$send_data["sid"]  = $dest[0];
			$send_data["dist"] = 0;
			$send_data["auth"] = "";
			//echo var_dump($send_data);
		}
	}
	else 
	{
		$recepient = $_POST['recepient'];
		echo $recepient;
		$query = "SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `accounts`.`a_soc` = '".$recepient."'"; 								
		$data = mysql_query($query);
		$row = mysql_fetch_array($data);
		if ($row)
		{
							$r=$db->get_all_info($row['a_soc']);	
							$acc_info = explode(';',$r);
							$send_data["nick"] = iconv('utf-8','cp1251',$row['a_n']);
							$send_data["u"] = (float)$acc_info[1];
							$send_data["t"] = (float)$acc_info[2];
							$send_data["m"] = (float)$acc_info[3];
							$send_data["g"] = (float)$acc_info[4];
							$send_data["tr_h"] = (int)$acc_info[5];
							$send_data["tr_p"] = (int)$acc_info[6];
							$send_data["tr_s"] = (float)$acc_info[7];
							$send_data["lc"] = (int)$acc_info[8];
							$send_data["lim"] = $acc_info[10];
							$send_data["x"] = (int)$row['a_x'];
							$send_data["y"] = (int)$row['a_y'];
							$send_data["vkid"] = $row['a_soc'];
							$send_data["auth"] = $row['a_auth'];
							$send_data["alert_u"] = $acc_info[13];
							$send_data["alert_r"] = (int)$acc_info[14];
							$send_data["alert_q"] = $acc_info[15];
							$send_data["alert_s"] = (int)$acc_info[19];
							$send_data["alert_f"] = $acc_info[18];
							$send_data["type"] = $row['type'];
							$send_data["sid"] = (int)$row['a_sid'];
							$alerts_arr = explode(':',$send_data["alert_f"]);
							$send_data["car_av"] = (int)$alerts_arr[3];
							$send_data["dist"] = 0;									
		}	
	}		
	$query = "SELECT * FROM `accounts`, `options` WHERE (`accounts`.`a_soc` = `options`.`o_soc`) AND (a_u_id=".$_SESSION['u_id'].") ORDER BY a_ismn DESC";
	$data = mysql_query($query);
	$row = mysql_fetch_array($data);	
	$ch_use = 0;
	//if (isset($_POST['chuse'])) if ($_POST['chuse'] != NULL) $ch_use = 1;
	$gold = $gold0 = (int)$_POST['gold'];
	$steel = $steel0 = (int)$_POST['steel'];
	$meat = $meat0 = (int)$_POST['meat']; 
	$delay = (int)$_POST['delay'];
	$sort = $_POST['sort'];
	$gsm = ($gold + $steel + $meat);
	$onlyres = 0;
	if ($_POST['chacc'] != NULL) $onlyres = 1;
	$cnt = 0;
	if ($gsm>0)
	{
		do
			{
				if ($row['a_soc']!=$send_data["vkid"])
				{
					if ((($onlyres==1)&&($row['type']=="R"))||($onlyres==0))
					{
						$r=$db->get_all_info($row['a_soc']);	
						$acc_info = explode(';',$r);
						$out_data[$cnt]["nick"] = mb_convert_encoding($row['a_n'],'cp1251','utf-8');
						$out_data[$cnt]["nick_utf"] = $row['a_n'];
						$out_data[$cnt]["u"] = (float)$acc_info[1];
						$out_data[$cnt]["t"] = (float)$acc_info[2];
						$out_data[$cnt]["volume"] = $out_data[$cnt]["u"] + $out_data[$cnt]["t"];
						$out_data[$cnt]["m"] = (float)$acc_info[3];
						$out_data[$cnt]["g"] = (float)$acc_info[4];
						$out_data[$cnt]["tr_h"] = (int)$acc_info[5];
						$out_data[$cnt]["tr_p"] = (int)$acc_info[6];
						$out_data[$cnt]["tr_s"] = (float)$acc_info[7];
						$out_data[$cnt]["lc"] = (int)$acc_info[8];
						$out_data[$cnt]["lim"] = $acc_info[10];
						$out_data[$cnt]["x"] = (int)$row['a_x'];
						$out_data[$cnt]["y"] = (int)$row['a_y'];
						$out_data[$cnt]["vkid"] = $row['a_soc'];
						$out_data[$cnt]["auth"] = $row['a_auth'];
						$out_data[$cnt]["alert_u"] = $acc_info[13];
						$out_data[$cnt]["alert_r"] = (int)$acc_info[14];
						$out_data[$cnt]["alert_q"] = $acc_info[15];
						$out_data[$cnt]["alert_s"] = (int)$acc_info[19];
						$out_data[$cnt]["alert_f"] = $acc_info[18];
						$out_data[$cnt]["type"] = $row['type'];
						$out_data[$cnt]["sid"] = (int)$row['a_sid'];
						$out_data[$cnt]["dist"] = 0;
						$out_data[$cnt]["time"] = 0;
						$out_data[$cnt]["reverse"] = 0;
						$out_data[$cnt]["revlim"] = 50000;
						$out_data[$cnt]["daylim"] = 2;
						$out_data[$cnt]["revdaylim"] = 2;
						$out_data[$cnt]["cargo"] = 0;
						$out_data[$cnt]["res_type"]='';
						$out_data[$cnt]["delay"]= $delay;
						$out_data[$cnt]["checked"] = true;
						$alerts_arr = explode(':',$out_data[$cnt]["alert_f"]);
						$out_data[$cnt]["car_av"] = (int)$alerts_arr[3];
						$cnt++;
					}			
				}				
				
			}
			while ($row = mysql_fetch_array($data)) ;
			
			if (isset($send_data["lim"])) $dest_limits_arr = explode(':', $send_data["lim"]); // NB
			
			$i = 0;
			foreach ($out_data AS $oud)
			{		
				$out_data[$i]["dist"] = dist($send_data["x"], $send_data["y"], $out_data[$i]["x"], $out_data[$i]["y"]);
				$out_data[$i]["time"] = ($out_data[$i]["tr_s"]>8)? min(3600,max(60,60*$out_data[$i]["dist"]/($out_data[$i]["tr_s"]*24))): min(3600,max(60,60*$out_data[$i]["dist"]/(192)));		
				$limits_arr = explode(':', $out_data[$i]["lim"]);
				$out_data[$i]["lim"] = (int)(50000);
				foreach ($limits_arr AS $lm_arr)
				{
					$lm = explode('+', $lm_arr);
					if ($lm[0]==$send_data["sid"])
					{
						$out_data[$i]["lim"] += $lm[2];
						$out_data[$i]["daylim"] -= $lm[1]; // Ограничение по количеству отправок в сутки в один замок
					}
				}
				if (isset($dest_limits_arr))
				{
					foreach ($dest_limits_arr AS $lm_arr) // лимиты для реверсивной отправки
					{
						$lm = explode('+', $lm_arr);
						if ($lm[0]==$out_data[$i]["sid"])
						{
							$out_data[$i]["revlim"] += $lm[2];
							$out_data[$i]["revdaylim"] -= $lm[1]; // Ограничение по количеству отправок в сутки в один замок
						}
					}
				}	
				$i++;
			}
			if ($sort=="time")
			{
				// сортировка по времени //
				foreach ($out_data as $key => $item) 
				{
					$dst[$key] = $item["time"];
				}
				array_multisort($dst, SORT_ASC, $out_data);
			}
			if ($sort=="volume")
			{
				// сортировка по объему//
				foreach ($out_data as $key => $item) 
				{
					$dst[$key] = $item["volume"];
				}
				array_multisort($dst, SORT_DESC, $out_data);
			}
			
			$i=0;
			echo '<tr><td>#  Отправитель</td><td>[X:Y]</td><td><img src="../img/gold.png"></img></td><td><img src="../img/steel.png"></img></td><td><img src="../img/meat.png"></img></td><td>Караваны</td><td>Лимит</td>
					<td>кол</td><td>Ресы</td><td>Тип</td><td>Время</td><td>?</td></tr>';
			//пропорциональная отправка
			/*храним в памяти:
			массив с начальными u0 t0 m0
			массив с оставшимися для отправки u t m
			массив с начальными u0/(u0+t0+m0), t0/(u0+t0+m0), m0/(u0+t0+m0)
			начинаем например с тита отправлять
			после чего из массива с оставшимися для отправки отнимаем тит, и считаем новый коэфф:
			это массив u/(u+t+m), (t-t_отправленное)/(u+t+m), m/(u+t+m)
			далее определяем, что слать следующим:
			min(u0/(u0+t0+m0)-u/(u+t+m),t0/(u0+t0+m0)-(t-t_отправленное)/(u+t+m),m0/(u0+t0+m0)-m/(u+t+m))
			гипотетически отправляем и считаем так дальше до конца списка */
				
			$prop["u"] = $gold / $gsm;
			$prop["t"] = $steel / $gsm;
			$prop["m"] = $meat / $gsm;
			$g0 = $gold;
			$s0 = $steel;
			$m0 = $meat;
			$cargo["m"] = $prop["m"];
			$cargo["t"] = $prop["t"];
			$cargo["u"] = $prop["u"];
			$i = 0;
			$endi = $cnt;
			do
			{					
				if($out_data[$i]["daylim"]>0 && $out_data[$i]["lc"]>0)
				{
					//$out_data[$i]["cargo"] = $out_data[$i]["tr_p"]*$out_data[$i]["car_av"];
					$out_data[$i]["cargo"] = min($out_data[$i]["tr_p"]*$out_data[$i]["car_av"],$out_data[$i]["lim"]);
					$gsm = ($gold + $steel + $meat);
					$cargo["u"] = $gold / $gsm;
					$cargo["t"] = $steel / $gsm;
					$cargo["m"] = $meat / $gsm;
					
					$minimal =  min($prop["u"] - $cargo["u"],$prop["t"] - $cargo["t"],$prop["m"] - $cargo["m"]);
					//echo ($prop["u"] - $cargo["u"]).'|'.($prop["t"] - $cargo["t"]).'|'.($prop["m"] - $cargo["m"]).'<br>';			
					if ((($prop["t"] - $cargo["t"])==$minimal)&&($steel > 0))
						if ($out_data[$i]["cargo"]<$out_data[$i]["t"])
						{
							$out_data[$i]["res_type"] = "t";
							//$out_data[$i]["checked"] = true;							
							$out_data[$i]["cargo"] = min($steel,floor($out_data[$i]["t"]));
							$minimal = 1;
						}
						else 
						{
							if (($prop["u"] - $cargo["u"]) <= 0) $minimal = ($prop["u"] - $cargo["u"]);
							else 
								if (($prop["m"] - $cargo["m"]) <= 0) $minimal = ($prop["m"] - $cargo["m"]);
						}	
					if ((($prop["u"] - $cargo["u"])==$minimal)&&($gold > 0))
						if (($out_data[$i]["cargo"]<$out_data[$i]["u"])) 
						{
							$out_data[$i]["res_type"] = "u";
							//$out_data[$i]["checked"] = true;
							$out_data[$i]["cargo"] = min($gold,floor($out_data[$i]["u"]));
							$minimal = 1;
						}
						else 
							if (($prop["m"] - $cargo["m"]) <= 0) $minimal = ($prop["m"] - $cargo["m"]);
					if ((($prop["m"] - $cargo["m"])==$minimal)&&($meat>0)&&($out_data[$i]["cargo"]<$out_data[$i]["m"]))
					{
						$out_data[$i]["res_type"] = "m";
						//$out_data[$i]["checked"] = true;
						$out_data[$i]["cargo"] = min($meat,floor($out_data[$i]["m"]));
						$minimal = 1;
					}	
					$revquota = min($out_data[$i]["revlim"], $send_data["tr_p"]*$send_data["car_av"], floor($send_data["m"]));
					if($out_data[$i]["revdaylim"]>0 && $send_data["lc"]>0 && $revquota>=1000)
					{
						$out_data[$i]["cargo"] = min($out_data[$i]["cargo"], $out_data[$i]["tr_p"]*$out_data[$i]["car_av"], $out_data[$i]["lim"]+$revquota);			
						if ($send_data["auth"] =="") $out_data[$i]["reverse"] = 0;
						else $out_data[$i]["reverse"] = max(0,$out_data[$i]["cargo"]-$out_data[$i]["lim"]);
						if ($out_data[$i]["reverse"]>0) 
							{
								$send_data["alert_r"]+=2;
								$out_data[$i]["delay"] = 0;
							}	
						//else $out_data[$i]["delay"] = 	
					}
					else
					{
						$out_data[$i]["cargo"] = min($out_data[$i]["cargo"], floor($out_data[$i]["tr_p"]*$out_data[$i]["car_av"]), $out_data[$i]["lim"]);
					}
					
					if($out_data[$i]["cargo"] == 0) $out_data[$i]["res_type"]="";
					if($out_data[$i]["res_type"] == "m") $meat-=$out_data[$i]["cargo"];
					if($out_data[$i]["res_type"] == "u") $gold-=$out_data[$i]["cargo"];
					if($out_data[$i]["res_type"] == "t") $steel-=$out_data[$i]["cargo"];			
				}		
				$i++;
			} while ((($gold+$steel+$meat) > 0)&&($i<$endi));
			
			$i = 0;
			$send_data["lim"]=0;
			$jsonarr[] =  $send_data;
			//вывод в таблицу
			$uall=0;
			$tall=0;
			$mall=0;	
			foreach ($out_data AS $oud)
			{	
				$i++;
				$res = $oud["cargo"];		
				$time = new DateTime();         
				$time->setTime(0, 0, $oud["time"]);
				$selec = '<select size="1" name="res'.$i.'" id="s_'.$oud["vkid"].'" >';
				if ($oud["res_type"]=="u")
				{
					$uall+=$oud["cargo"];
					$selec.= '<option value="u" selected>уран</option><option value="t">титанит</option><option value="m">кредиты</option>';					
				}
				if ($oud["res_type"]=="t")
				{
					$tall+=$oud["cargo"];					
					$selec.= '<option value="t" selected>титанит</option><option value="u">уран</option><option value="m">кредиты</option>';
				}
				if ($oud["res_type"]=="m")
				{
					$mall+=$oud["cargo"];					
					$selec.= '<option value="m" selected>кредиты</option><option value="t">титанит</option><option value="u">уран</option>';
				}
				if ($oud["res_type"]=="")
				{
					$selec.= '<option value="m">кредиты</option><option value="t">титанит</option><option value="u">уран</option>';
					//$check = '';								
					//$disabled = 'disabled="disabled"';
				}
				else 
				{
					//$check = 'checked="checked"';					
					//$disabled = 'disabled="disabled"';
				}	
				$selec.= '</select>';
				$jsonarr[] = $oud;
				if ((($ch_use)&&($oud["res_type"]<>""))||(!$ch_use))
				echo '<tr><td>'.$i.') '.$oud["nick"].'</td><td>['.$oud["x"].':'.$oud["y"].']</td><td><div id="u'.$oud["vkid"].'">'.floor($oud["u"]).'</div></td><td><div id="t'.$oud["vkid"].'">'.floor($oud["t"]).'</div></td><td><div id="m'.$oud["vkid"].'">'.floor($oud["m"]).
				'</div></td><td><div id="c'.$oud["vkid"].'">'.$oud["car_av"].'('.$oud["tr_h"].')</div></td><td><div id="l'.$oud["vkid"].'">'.$oud["lim"].'</div></td><td><div id="lc'.$oud["vkid"].'">'.min($oud["lc"],$oud["daylim"]).'</div></td><td><input name="res" type="text" SIZE=5 value="'.$res.'" id="r_'.$oud["vkid"].'"/></td>
				<td>'.$selec.'</td><td>'.$time->format('H:i:s').'</td><td><div id="ch'.$oud["vkid"].'" text="'.$oud["vkid"].'"><input type="checkbox" name="ch'.$i.'" class="sendcheck" id="check_'.$oud["vkid"].'" checked="checked" text="'.$oud["vkid"].'" ></div></td></tr>';			
			}
			echo '</table>';
			echo 'Уран:<input name="u_all" type="text"  SIZE=7 value="'.$uall.'" id="u_all"/> <input name="u_all0" type="hidden" value="'.$gold0.'" id="u_all0"/>  <input name="t_all0" type="hidden" value="'.$steel0.'" id="t_all0"/> <input name="m_all0" type="hidden" value="'.$meat0.'" id="m_all0"/>  Титанит:<input name="t_all" type="text"  SIZE=7 value="'.$tall.'" id="t_all"/>   Кредиты:<input name="m_all" type="text"  SIZE=7 value="'.$mall.'" id="m_all"/><button id="but_send" text="1">Отправить</button>';
			echo '<input type="hidden" id="realsender" value="'.$_SESSION['r_log'].'" />';
			
			// выводим JSON в скрытое поле
			$jsoncode = json_encode($jsonarr);
			echo '<br><textarea hidden id="jsoncode">'.$jsoncode.'</textarea>';
	}
}
?>				
<div id="outtext"> </div>		
						   </div>
	</div>
</div>
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>
</div>
<script>

$('#but_get').on({
		   'click': function(){  
				var x = $('#coorx').val();
				var y = $('#coory').val();
				var url = 'find.php?x='+x+'&y='+y+'&n=1';
				$.get(url, function(data)
				{							
					if ((data==";")||(data=="0"))
					{	
						alert("Неверный получатель!!!");
					}
					else
					{
						var info = data.split(";",6);
						$('#outinfo').html("<img src=\""+info[2]+"\" name=\"accinfo\" width=\"50\" height=\"50\"></img>");
						$('#hd_text').val(data);
						$('#recp').val(info[1]);
					}
				});				
			}
});	

$('.sendcheck').change(function()
						{
							var self =  $(this);
							var check = self.is(':checked');
							var vkid = self.attr('text');		
							var Data = $('#jsoncode').val();	
							var arrayOfObjects = eval(Data);	
							var j = 0;
							var x = 0;										
							for (var i = 1; i < arrayOfObjects.length; i++) 
							{
								if (vkid==arrayOfObjects[i].vkid)
								{
									j = i;
									if (check==false)
									{
										var cargo = arrayOfObjects[i].cargo;
										var restype = arrayOfObjects[i].res_type;
										$('#r_'+vkid).val(cargo);		
										$('#s_'+vkid).val(restype);	
									}	
									else 
									{
										var cargo = parseInt($('#r_'+vkid).val());
										var restype = $('#s_'+vkid).val();										
										arrayOfObjects[i].cargo=cargo;
										arrayOfObjects[i].res_type = restype;
									}
									arrayOfObjects[i].checked = check;
								}															
							}
							var out = JSON.stringify(arrayOfObjects);
							document.getElementById("jsoncode").innerHTML = out;
							/*
							if (restype=="u")
							{
								var xx = parseInt($('#u_all').val());
								xx = (check==true)? (xx+cargo):(xx-cargo);								
								$('#u_all').val(xx);
							}
							if (restype=="t")
							{
								var xx = parseInt($('#t_all').val());
								xx = (check==true)? (xx+cargo):(xx-cargo);								
								$('#t_all').val(xx);
							}
							if (restype=="m")
							{
								var xx = parseInt($('#m_all').val());
								xx = (check==true)? (xx+cargo):(xx-cargo);								
								$('#m_all').val(xx);
							}
							*/
						});

$('#but_send').on({
		   'click': function(){        
		   var self = $(this);		   
		   var Data = $('#jsoncode').val();	
		   var arrayOfObjects = eval(Data);
		   self.attr('disabled', 'disabled');
		   var sendobject = arrayOfObjects[0];
		   
		   var $t_u0=parseInt($('#u_all0').val());
		   var $t_t0=parseInt($('#t_all0').val());
		   var $t_m0=parseInt($('#m_all0').val());
		   
		   var $t_u1=parseInt($('#u_all0').val());
		   var $t_t1=parseInt($('#t_all0').val());
		   var $t_m1=parseInt($('#m_all0').val());
		   
		   var $totalr0=$t_u0+$t_t0+$t_m0;
		   
		   var $index_u=$t_u0/$totalr0;
		    var $index_t=$t_t0/$totalr0;
			 var $index_m=$t_m0/$totalr0;
		  
		   var $index_u0=$index_u;
		  var $index_t0=$index_t;
		  var $index_m0=$index_m;

		   var $totalr=$t_u0+$t_t0+$t_m0;
		   
		   $('#u_all').val(0);
					 $('#t_all').val(0);
					$('#m_all').val(0);

    		for (var i = 1; i < arrayOfObjects.length; i++) 
			{	

			$totalr=$t_u1+$t_t1+$t_m1;
			
						   
				if (arrayOfObjects[i].checked==true && arrayOfObjects[i].daylim>0 && arrayOfObjects[i].lc>0 && $totalr>0 &&(arrayOfObjects[i].vkid!="")&&(arrayOfObjects[i].auth!=""))
				{		
				arrayOfObjects[i].res_type="t";
				
					arrayOfObjects[i].cargo = Math.min(arrayOfObjects[i].tr_p*arrayOfObjects[i].car_av,arrayOfObjects[i].lim);
						
					$index_u=$t_u1/$totalr;
					  $index_t=$t_t1/$totalr;
					   $index_m=$t_m1/$totalr;
					
					var $minimal =  Math.min($index_u0 - $index_u,$index_t0 - $index_t,$index_m0 - $index_m);
					

					if ((($index_m0 - $index_m)==$minimal)&&($t_m1>0))
					{
						arrayOfObjects[i].res_type = "m";					
							arrayOfObjects[i].cargo = Math.min($t_m1,Math.floor(arrayOfObjects[i].m));
					}	
						if ((($index_u0 - $index_u)==$minimal)&&($t_u1 > 0))
						{
							arrayOfObjects[i].res_type = "u";					
							arrayOfObjects[i].cargo = Math.min($t_u1,Math.floor(arrayOfObjects[i].u));
						}
						if ((($index_t0 - $index_t)==$minimal)&&($t_t1 > 0))
						{
							arrayOfObjects[i].res_type = "t";					
							arrayOfObjects[i].cargo = Math.min($t_t1,Math.floor(arrayOfObjects[i].t));
						}
										
					var $revquota = Math.min(arrayOfObjects[i].revlim, sendobject.tr_p*sendobject.car_av, Math.floor(sendobject.m));
					if(sendobject.auth=="") $revquota=0;
					
					if(arrayOfObjects[i].revdaylim>0 && sendobject.lc>0 && $revquota>=1000)
					{
						arrayOfObjects[i].cargo = Math.min(arrayOfObjects[i].cargo, arrayOfObjects[i].tr_p*arrayOfObjects[i].car_av, arrayOfObjects[i].lim+$revquota);			
						if (sendobject.auth =="") arrayOfObjects[i].reverse = 0;
						else arrayOfObjects[i].reverse = Math.max(0,arrayOfObjects[i].cargo-arrayOfObjects[i].lim);
						if (arrayOfObjects[i].reverse>0) 
							{
								if (i>1) sendobject.alert_r=sendobject.alert_r+2;
								arrayOfObjects[i].delay = 0;
							}		
					}
					else
					{
						arrayOfObjects[i].cargo = Math.min(arrayOfObjects[i].cargo, Math.floor(arrayOfObjects[i].tr_p*arrayOfObjects[i].car_av), arrayOfObjects[i].lim);
					}

				if(arrayOfObjects[i].cargo>0)
					{
				
					var sendcargo = new Object();				
					sendcargo.destination = Object();
					sendcargo.destination.vkid = sendobject.vkid;
					sendcargo.destination.auth = sendobject.auth;
					sendcargo.destination.alert_u = sendobject.alert_u;
					sendcargo.destination.alert_r = sendobject.alert_r;
					sendcargo.destination.alert_q = sendobject.alert_q;
					sendcargo.destination.alert_s = sendobject.alert_s;
					sendcargo.destination.sid = sendobject.sid;
					sendcargo.sender = Object();
					sendcargo.sender.vkid = arrayOfObjects[i].vkid;
					sendcargo.sender.auth = arrayOfObjects[i].auth;
					sendcargo.sender.alert_u = arrayOfObjects[i].alert_u;
					sendcargo.sender.alert_r = arrayOfObjects[i].alert_r;
					sendcargo.sender.alert_q = arrayOfObjects[i].alert_q;
					sendcargo.sender.alert_s = arrayOfObjects[i].alert_s;
					sendcargo.sender.sid = arrayOfObjects[i].sid;
					sendcargo.cargo = Object();
					sendcargo.cargo.weight=arrayOfObjects[i].cargo;
					sendcargo.cargo.type=arrayOfObjects[i].res_type;
					sendcargo.cargo.reverse=arrayOfObjects[i].reverse;
					sendcargo.cargo.delay = arrayOfObjects[i].delay;
									
					var ca = arrayOfObjects[i].car_av;
					var l = arrayOfObjects[i].lim;
					var lc = arrayOfObjects[i].lc;
					var ld = arrayOfObjects[i].daylim;
					var c = arrayOfObjects[i].tr_h;
					var p = arrayOfObjects[i].tr_p;
					var u = arrayOfObjects[i].u;
					var t = arrayOfObjects[i].t;
					var m = arrayOfObjects[i].m;
					var nick = arrayOfObjects[i].nick_utf; 
					var out = JSON.stringify(sendcargo);	
					
					
					
					$.ajax({
									  async: false
									, url:'unlimres.php'
									, type:'POST'
									, data:'jsonData=' + out
									, success: function(res) 
										{	
										//alert(res);
										//res=1;
										
										//test//document.getElementById("outtext").innerHTML = document.getElementById("outtext").innerHTML +nick +" - " +res+"<br>";
									
										if(res=='5')
										{
											document.getElementById("ch"+sendcargo.sender.vkid).innerHTML = '<img src="../img/alertm/b1.png" height="20" Width="20"/>';
											i=arrayOfObjects.length-1;
											alert("У вас 0 друзей");								
											// Команды для форс-мажора несанкционированного укатывания караванов
										}
									
										if(res=='4')
										{

												
											document.getElementById("ch"+sendcargo.sender.vkid).innerHTML = '<img src="../img/alertm/r0.png" height="20" Width="20"/>';
										}
										if(res=='3')
										{

												
											document.getElementById("ch"+sendcargo.sender.vkid).innerHTML = '<img src="../img/alertm/o1.png" height="20" Width="20"/>';
										}
										if(res=='2')
										{
									
											document.getElementById("ch"+sendcargo.sender.vkid).innerHTML = '<img src="../img/alertm/y1.png" height="20" Width="20"/>';
					
					if(arrayOfObjects[i].res_type == "m") 
					{
					$t_m1=$t_m1-arrayOfObjects[i].cargo;
					m=m-sendcargo.cargo.weight;
					}
					if(arrayOfObjects[i].res_type == "u") 
					{
					$t_u1=$t_u1-arrayOfObjects[i].cargo;
					u=u-sendcargo.cargo.weight;
					}
					if(arrayOfObjects[i].res_type == "t")
					{
					$t_t1=$t_t1-arrayOfObjects[i].cargo;
					t=t-sendcargo.cargo.weight;
					}						
					
											if(sendcargo.cargo.type=='u') $('#u_all').val(parseInt($('#u_all').val())+sendcargo.cargo.weight);
											if(sendcargo.cargo.type=='t') $('#t_all').val(parseInt($('#t_all').val())+sendcargo.cargo.weight);
											if(sendcargo.cargo.type=='m') $('#m_all').val(parseInt($('#m_all').val())+sendcargo.cargo.weight);	
											
											document.getElementById("u"+sendcargo.sender.vkid).innerHTML = Math.floor(u);
											document.getElementById("t"+sendcargo.sender.vkid).innerHTML = Math.floor(t);
											document.getElementById("m"+sendcargo.sender.vkid).innerHTML = Math.floor(m);
											document.getElementById("l"+sendcargo.sender.vkid).innerHTML = Math.max(l-sendcargo.cargo.weight,-50000);
											document.getElementById("c"+sendcargo.sender.vkid).innerHTML = ca-Math.ceil(sendcargo.cargo.weight/p)+'('+c+')';
											document.getElementById("lc"+sendcargo.sender.vkid).innerHTML = Math.min(lc,ld)-1;
											
																		
											// Команды для форс-мажора несанкционированного укатывания караванов
											
										}
										if(res=='0')
										{

												
											document.getElementById("ch"+sendcargo.sender.vkid).innerHTML = '<img src="../img/alertm/r1.png" height="20" Width="20"/>';
										}
										if(res=='1')
										{
											document.getElementById("ch"+sendcargo.sender.vkid).innerHTML = '<img src="../img/alertm/g1.png" height="20" Width="20"/>';
					
					if(arrayOfObjects[i].res_type == "m") 
					{
					$t_m1=$t_m1-arrayOfObjects[i].cargo;
					m=m-sendcargo.cargo.weight;
					}
					if(arrayOfObjects[i].res_type == "u") 
					{
					$t_u1=$t_u1-arrayOfObjects[i].cargo;
					u=u-sendcargo.cargo.weight;
					}
					if(arrayOfObjects[i].res_type == "t")
					{
					$t_t1=$t_t1-arrayOfObjects[i].cargo;
					t=t-sendcargo.cargo.weight;
					}						
											if(sendcargo.cargo.type=='u') $('#u_all').val(parseInt($('#u_all').val())+sendcargo.cargo.weight);
											if(sendcargo.cargo.type=='t') $('#t_all').val(parseInt($('#t_all').val())+sendcargo.cargo.weight);
											if(sendcargo.cargo.type=='m') $('#m_all').val(parseInt($('#m_all').val())+sendcargo.cargo.weight);
											
											document.getElementById("u"+sendcargo.sender.vkid).innerHTML = Math.floor(u);
											document.getElementById("t"+sendcargo.sender.vkid).innerHTML = Math.floor(t);
											document.getElementById("m"+sendcargo.sender.vkid).innerHTML = Math.floor(m);
											document.getElementById("l"+sendcargo.sender.vkid).innerHTML = Math.max(l-sendcargo.cargo.weight,-50000);
											document.getElementById("c"+sendcargo.sender.vkid).innerHTML = ca-Math.ceil(sendcargo.cargo.weight/p)+'('+c+')';
											document.getElementById("lc"+sendcargo.sender.vkid).innerHTML = Math.min(lc,ld)-1;
												
										}
										
										}
									, error: function() 
										{
											document.getElementById("ch"+sendcargo.sender.vkid).innerHTML = '<img src="../img/alertm/r2.png" height="20" Width="20"/>';
											
										}
									, complete: function() 
										{
											
										}			
									});	
						}
				}
				
							
						if (i==arrayOfObjects.length-1)
				{
					$.ajax({
						async: false
						, url:'trades.php?u='+$('#u_all').val()+'&t='+$('#t_all').val()+'&m='+$('#m_all').val()+'&n='+sendobject.vkid+'&x='+sendobject.x+'&y='+sendobject.y+'&i='+$('#realsender').val()
						, type:'GET'
		
						, success: function(res)
						{
											
						}
					});
				alert("Отгрузка завершена");	
				}
				
			}		   
		   		   
        }
});	

$('#send_un').on({
		   'click': function()
			{  
				var unit = $('#units').attr('value');
				var count = $('#uncount').val();
				var sendinfo = new Object();
				sendinfo.unitname = unit;
				sendinfo.unitcount = count;
				var out = JSON.stringify(sendinfo);
				$.ajax({
						async: false
						, url:'units.php'
						, type:'POST'
						, data:'GetCost=' + out
						, success: function(res)
						{
							var data=$.parseJSON(res);
							$('#uran').val(data.u);
							$('#titan').val(data.t); 	
							$('#money').val(data.m); 							
						}
					});
			}
});
</script>
</body>
<? $db->close_connection(); ?>	
</html>