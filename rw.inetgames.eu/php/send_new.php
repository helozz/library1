<?php
//Отправщик ver 2.8 для ПВ
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
require_once("unitslist.php");	//get units stats

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
							$a_uid = $_SESSION['u_id'];  //fake uid taken
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
							echo $_SESSION['u_id'];	
							?>
							<div><fieldset><legend>Расчет стоимости</legend>
							<select size="1" name="units" id="units">
							<?
								$i = 0;
								foreach ($units AS $un)
								{
									$i = 1;
									echo '<option value="'.$un["name"].'">'.$un["name"].'</option>';
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
									}
									?>
									<form action="send_new.php" method="POST">
									<input type="hidden" name="hid_text" id="hd_text"/>
								
									<table>
									<tr>									
									<td>Получатель:</td>
									<? 
									if ($trade > 0)
									{									
										
										if (isset($_POST['hid_text']))
										{
											$dest = explode(';', $_POST['hid_text']);	
											$name =  iconv('utf-8','cp1251', $dest[1]);											
											if (count($dest)>1) echo $name.'  <img src="'.$dest[2].'" height="30" width="30" />';
										}
									}
									?>
									<td><select size="1" name="recepient" id="recp" <? if (isset($dest)) echo 'hidden'; ?> >
									<?
									echo $pretext;
									foreach($outtext AS $outt)
									{
										echo $outt;
									}
									?>
									</select></td>									
									<td>Уран:<input name="gold" type="text" id="uran" SIZE=5/> </td>
									<td>Титан:<input name="steel" type="text" id="titan" SIZE=5/> </td>
									<td>Кредиты:<input name="meat" type="text" id="money" SIZE=5/> </td>
									<td> Сортировка:<select name="sort" id="typesort">
									<option value="time" selected>Время</option>
									<option value="volume">Объем</option>
									</select></td></tr></table>
									<table><tr><td></td><td>Задержка между посылками:<input name="delay" id="delay" type="text"  SIZE=1 value="<? if (isset($_POST['submit'])) echo (int)$_POST['delay']; else echo 2;  ?>"/> </td>
									<td><input type="checkbox" name="chacc" id="chacc" checked="checked">Только ресовые акки</input></td>
									<td><input type="checkbox" name="chuse" id="chuse" checked="checked">Показывать только используемые акки</input></td>
									<td><input type="checkbox" name="chlim" id="chlim" checked="checked">учитывать лимиты</input></td>
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
		$uinfo = $db->get_acc($_SESSION['soc_id'],'',$recepient);
		$accname = mb_convert_encoding($uinfo,'cp1251','utf-8');
		echo $accname;
		$query = "SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `accounts`.`a_soc` = '".$recepient."'"; 								
		$data = mysql_query($query);
		$row = mysql_fetch_array($data);
		if ($row)
		{
                            echo '<p><img src="'.$row["a_ava"].'" width="60" /></p>';
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
	$query = "SELECT * FROM `accounts`, `options` WHERE (`accounts`.`a_soc` = `options`.`o_soc`) AND (`a_u_id`=".$_SESSION['u_id'].") ORDER BY a_ismn DESC";
	$data = mysql_query($query);
	$row = mysql_fetch_array($data);	
	$ch_use = 0;
	if (isset($_POST['chuse'])) if ($_POST['chuse'] != NULL) $ch_use = 1;
	$ch_lim = 0;
	if (isset($_POST['chlim'])) if ($_POST['chlim'] != NULL) $ch_lim = 1;
	$gold = (int)$_POST['gold'];
	$steel = (int)$_POST['steel'];
	$meat = (int)$_POST['meat']; 
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
					if ($row['a_auth']!="")
					{
						$r=$db->get_all_info($row['a_soc']);	
						$acc_info = explode(';',$r);
						$out_data[$cnt]["nick"] = mb_convert_encoding($row['a_n'],'cp1251','utf-8');
						//$out_data[$cnt]["nick_utf"] = $row['a_n'];
						$out_data[$cnt]["u"] = (float)$acc_info[1];
						$out_data[$cnt]["t"] = (float)$acc_info[2];
						$out_data[$cnt]["volume"] = $out_data[$cnt]["u"] + $out_data[$cnt]["t"];
						$out_data[$cnt]["m"] = (float)$acc_info[3];
						$out_data[$cnt]["g"] = (float)$acc_info[4];
						$out_data[$cnt]["tr_h"] = (int)$acc_info[5]; 	//corovans
						$out_data[$cnt]["tr_p"] = (int)$acc_info[6];	// cargo weigth
						$out_data[$cnt]["tr_s"] = (float)$acc_info[7];  // speed of corovan
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
						$out_data[$cnt]["checked"] = false;
						$alerts_arr = explode(':',$out_data[$cnt]["alert_f"]);
						$out_data[$cnt]["car_av"] = (int)$alerts_arr[3];
						$cnt++;
					}
					}			
				}				
				
			}
			while ($row = mysql_fetch_array($data)) ;
			
			if (isset($send_data["lim"])) $dest_limits_arr = explode(':', $send_data["lim"]); // NB
			
			$i = 0;
			foreach ($out_data AS $oud)
			{		
				$out_data[$i]["dist"] = dist($send_data["x"], $send_data["y"], $out_data[$i]["x"], $out_data[$i]["y"]);
				$out_data[$i]["time"] = ($out_data[$i]["tr_s"]>0)? min(3600,max(60,60*$out_data[$i]["dist"]/($out_data[$i]["tr_s"]*24))): min(3600,max(60,60*$out_data[$i]["dist"]/(192)));		
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
			$old_time = 0;
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
							$out_data[$i]["checked"] = true;							
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
							$out_data[$i]["checked"] = true;
							$out_data[$i]["cargo"] = min($gold,floor($out_data[$i]["u"]));
							$minimal = 1;
						}
						else 
							if (($prop["m"] - $cargo["m"]) <= 0) $minimal = ($prop["m"] - $cargo["m"]);
					if ((($prop["m"] - $cargo["m"])==$minimal)&&($meat>0)&&($out_data[$i]["cargo"]<$out_data[$i]["m"]))
					{
						$out_data[$i]["res_type"] = "m";
						$out_data[$i]["checked"] = true;
						$out_data[$i]["cargo"] = min($meat,floor($out_data[$i]["m"]));
						$minimal = 1;
					}	
					$revquota = min($out_data[$i]["revlim"], $send_data["tr_p"]*$send_data["car_av"], floor($send_data["m"]));
					if($out_data[$i]["revdaylim"]>0 && $send_data["lc"]>0 && $revquota>=1000)
					{
						$out_data[$i]["cargo"] = min($out_data[$i]["cargo"], $out_data[$i]["tr_p"]*$out_data[$i]["car_av"], $out_data[$i]["lim"]+$revquota, 50000);			
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
					if (($out_data[$i]["cargo"] == 0)||($out_data[$i]["volume"]<50000)) 
					{
						$out_data[$i]["res_type"]="";										
						$out_data[$i]["checked"] = false;
					}
					if (($out_data[$i]["cargo"] > 0)&&($ch_lim)&&(($out_data[$i]["lim"] - $out_data[$i]["cargo"]) < 0)) 
					{	
						$out_data[$i]["res_type"]="";
						$out_data[$i]["checked"] = false;
					}
					if($out_data[$i]["res_type"] == "m") $meat-=$out_data[$i]["cargo"];
					if($out_data[$i]["res_type"] == "u") $gold-=$out_data[$i]["cargo"];
					if($out_data[$i]["res_type"] == "t") $steel-=$out_data[$i]["cargo"];			
					// корректировка задержки между караванами
					if (($out_data[$i]["time"] - $old_time) > $delay) $out_data[$i]["delay"] = 0;
					$old_time=$out_data[$i]["time"];		
				}		
				$i++;
			} while ((($gold+$steel+$meat) > 0)&&($i<$endi));
			
			$i = 0;
			$send_data["lim"]=0;
			$jsonarr[0] =  $send_data;
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
					$selec.= '<option value="u" selected>уран</option><option value="t">титан</option><option value="m">кредиты</option>';					
				}
				if ($oud["res_type"]=="t")
				{
					$tall+=$oud["cargo"];					
					$selec.= '<option value="t" selected>титан</option><option value="u">уран</option><option value="m">кредиты</option>';
				}
				if ($oud["res_type"]=="m")
				{
					$mall+=$oud["cargo"];					
					$selec.= '<option value="m" selected>кредиты</option><option value="t">титан</option><option value="u">уран</option>';
				}
				if ($oud["res_type"]=="")
				{
					$selec.= '<option value="m">кредиты</option><option value="t">титан</option><option value="u">уран</option>';
					$check = '';								
					$disabled = 'disabled="disabled"';
				}
				else 
				{
					$check = 'checked="checked"';					
					$disabled = 'disabled="disabled"';
				}	
				$selec.= '</select>';
				$jsonarr[] = $oud;
				if ((($ch_use)&&($oud["res_type"]<>""))||(!$ch_use))
				echo '<tr><td>'.$i.') '.$oud["nick"].'</td><td>['.$oud["x"].':'.$oud["y"].']</td><td><div id="u'.$oud["vkid"].'">'.floor($oud["u"]).'</div></td><td><div id="t'.$oud["vkid"].'">'.floor($oud["t"]).'</div></td><td><div id="m'.$oud["vkid"].'">'.floor($oud["m"]).
				'</div></td><td><div id="c'.$oud["vkid"].'">'.$oud["car_av"].'('.$oud["tr_h"].')</div></td><td><div id="l'.$oud["vkid"].'">'.$oud["lim"].'</div></td><td><div id="lc'.$oud["vkid"].'">'.min($oud["lc"],$oud["daylim"]).'</div></td><td><input name="res" type="text" SIZE=5 value="'.$res.'" id="r_'.$oud["vkid"].'"/></td>
				<td>'.$selec.'</td><td>'.$time->format('H:i:s').'</td><td><div id="ch'.$oud["vkid"].'" text="'.$oud["vkid"].'"><input type="checkbox" name="ch'.$i.'" class="sendcheck" id="check_'.$oud["vkid"].'" '.$check.' text="'.$oud["vkid"].'" ></div></td></tr>';			
			}
			echo '</table>';
			echo '<form action="send_new.php" method="POST">';
			echo 'уран:<input name="u_all" type="text"  SIZE=5 value="'.$uall.'" id="u_all"/>   титан:<input name="t_all" type="text"  SIZE=5 value="'.$tall.'" id="t_all"/>   кредиты:<input name="m_all" type="text"  SIZE=5 value="'.$mall.'" id="m_all"/><input type="submit" name="but_send" text="1" value="Отправить"/>';
			
			// выводим JSON в скрытое поле
			$jsoncode = json_encode($jsonarr);
			echo '<br><textarea hidden id="jsoncode" name="jsonc">'.$jsoncode.'</textarea>';
			echo '</form>';
	}
}
// function sendres
function send_res($data)
{
	//$data = json_decode($jsondata,true);
	
	//@sleep($data['cargo']['delay']);
	//echo var_dump($data);	
	if($_SESSION['soc_id'] && $data['cargo']['type']!='' && $data['destination']['sid']>0 && $data['cargo']['weight']>0 && $data['sender']['vkid'] && $data['sender']['auth'] && (($data['cargo']['reverse']>0) && $data['destination']['vkid'] && $data['destination']['auth'] || $data['cargo']['reverse']==0))
	{
		$revid=0;
		$fl=0;
		if($data['cargo']['reverse']>0)
		{
			$db1=new db_query(0,$data['destination']['vkid'],$_SESSION['soc_id']);
			$me=new TDApi($data['destination']['vkid'],$data['destination']['auth'],$db11->friends,$db11->v,$db11->referer,$db1->proxy,$db1->proxypwd,$db1->origin,$data['destination']['alert_s']);
			$tres=$me->SendRes($data['destination']['alert_q'],$data['destination']['alert_r'],microtime(true)*1000,$data['destination']['alert_u'],$data['destination']['sid'],$data['sender']['sid'],$data['cargo']['reverse'],'m');
			$res=json_decode($tres,true);
			if($res['o'])
			{
				$revid=$res['o']['i'];	
				$data['destination']['alert_r']=$res['v'];
				@sleep(9);
			}
			if($res['g'])
			{
				$obj=array_pop($res['g']['wd']['u']);
				$revid=$obj['i'];	
				$data['destination']['alert_r']=$res['g']['r'];
				@sleep(9);
			}
			if($res['m'] || $res['cerror'])
			{
				return 0;
			}
			$db1->close_connection();
		}
		// обычная отправка
		if(!($data['cargo']['reverse']>0 && $revid==0))
		{
			$db1=new db_query(0,$data['sender']['vkid'],$_SESSION['soc_id']);
			$me=new TDApi($data['sender']['vkid'],$data['sender']['auth'],$db1->friends,$db1->v,$db1->referer,$db1->proxy,$db1->proxypwd,$db1->origin,$data['sender']['alert_s']);
			$cnt=0;
			while($cnt<3)
			{
				$tres=$me->SendRes($data['sender']['alert_q'],$data['sender']['alert_r'],microtime(true)*1000,$data['sender']['alert_u'],$data['sender']['sid'],$data['destination']['sid'],$data['cargo']['weight'],$data['cargo']['type']);
				$res=json_decode($tres,true);
				//echo $tres;
				if(!$res['m'] && !$res['cerror'])
				{
					$db1->options_force_set($data['sender']['vkid'],max(1,$db1->options_force_get($data['sender']['vkid'])));
					$db1->options_force_set($data['destination']['vkid'],max(2,$db1->options_force_get($data['destination']['vkid'])));
					if ($data['cargo']['delay']>0) @sleep($data['cargo']['delay']);	// Задержка между караванами
					if($revid==0) return 1;
					$fl=1;
				}
				if($res['cerror'])
				{
					$cnt++;
				}
				if($res['m'])
				{
					$cnt+=5;
				}
			}
			if($revid==0) return 0;
		
			$db1->close_connection();
		}
		
		
		
		if($data['cargo']['reverse']>0 && $revid>0)
		{
		$db1=new db_query(0,$data['destination']['vkid'],$_SESSION['soc_id']);
		$me=new TDApi($data['destination']['vkid'],$data['destination']['auth'],$db1->friends,$db1->v,$db1->referer,$db1->proxy,$db1->proxypwd,$db1->origin,$data['destination']['alert_s']);
		$cnt=0;
		while($cnt<3)
		{
		$tres=$me->CancelUnit($data['destination']['alert_q'],$data['destination']['alert_r'],microtime(true)*1000,$data['destination']['alert_u'],$revid);
		$res=json_decode($tres,true);
		if(!$res['m'] && !$res['cerror'])
		{
		@sleep(11);
		if($fl) return 1;
		if(!$fl) return 0;
		}
		if($res['cerror'])
		{
		$cnt++;
		}
		if($res['m'])
		{
		$cnt+=5;
		}
		}
		if($fl) return 2;
		if(!$fl) return 3;
			
		$db1->close_connection();
		}
	}
	else return 4;	
}
if (isset($_POST['but_send']))
{	
	$json = str_replace('\"','"',$_POST['jsonc']);
	$arrayOfObjects = json_decode($json, true);
	//echo var_dump($arrayOfObjects);
	$sendobject = $arrayOfObjects[0];
	$uname= $db->get_accinfo($sendobject["vkid"]);
	//$accn = explode(';', mb_convert_encoding($uname,'cp1251','utf-8'));
	$un1 = explode(";", $uname);	
	//echo var_dump($json);
	$totalu = 0;
	$totalt = 0;
	$totalm = 0;
	$changeres = "n";
	for ($i=1; $i<count($arrayOfObjects); $i++)
	{		
		if ($arrayOfObjects[$i]["checked"])
		{			
			$sendcargo["destination"]["vkid"] = $sendobject["vkid"];
			$sendcargo["destination"]["auth"] = $sendobject["auth"];
			$sendcargo["destination"]["alert_u"] = $sendobject["alert_u"];
			$sendcargo["destination"]["alert_r"] = $sendobject["alert_r"];
			$sendcargo["destination"]["alert_q"] = $sendobject["alert_q"];
			$sendcargo["destination"]["alert_s"] = $sendobject["alert_s"];
			$sendcargo["destination"]["sid"] = $sendobject["sid"];		
			$sendcargo["sender"]["vkid"] = $arrayOfObjects[$i]["vkid"];
			$sendcargo["sender"]["auth"] = $arrayOfObjects[$i]["auth"];
			$sendcargo["sender"]["alert_u"] = $arrayOfObjects[$i]["alert_u"];
			$sendcargo["sender"]["alert_r"] = $arrayOfObjects[$i]["alert_r"];
			$sendcargo["sender"]["alert_q"] = $arrayOfObjects[$i]["alert_q"];
			$sendcargo["sender"]["alert_s"] = $arrayOfObjects[$i]["alert_s"];
			$sendcargo["sender"]["sid"] = $arrayOfObjects[$i]["sid"];
			$sendcargo["cargo"]["weight"] = $arrayOfObjects[$i]["cargo"];
			$sendcargo["cargo"]["type"] = $arrayOfObjects[$i]["res_type"];
			$sendcargo["cargo"]["reverse"] = $arrayOfObjects[$i]["reverse"];
			$sendcargo["cargo"]["delay"] = 	$arrayOfObjects[$i]["delay"];
			if ($changeres =="n") $res = send_res($sendcargo);  // вызов функции отправки ресов	
			else 
			{
				if (isset($changeres)) $sendcargo["cargo"]["type"] = $changeres;
				$res = send_res($sendcargo);
			}			
			$changeres = "n";
			$uinfo = $db->get_accinfo($sendcargo["sender"]["vkid"]);
			$accname = explode(';', mb_convert_encoding($uinfo,'cp1251','utf-8'));
			if ($res==1) 
			{
				if ($sendcargo["cargo"]["type"]=="u")  $totalu+=$sendcargo["cargo"]["weight"];
				if ($sendcargo["cargo"]["type"]=="t")  $totalt+=$sendcargo["cargo"]["weight"];
				if ($sendcargo["cargo"]["type"]=="m")  $totalm+=$sendcargo["cargo"]["weight"];
				echo '<p>'.$sendcargo["cargo"]["weight"].' '.$sendcargo["cargo"]["type"].' отправлено с аккаунта '.$accname[0].'('.$totalu.'/'.$totalt.'/'.$totalm.') ('.$sendcargo["cargo"]["delay"].')
				<img src="../img/alertm/g1.png" height="20" Width="20"/></p>';
			}	
			if ($res==0) 
			{
				echo '<p>ресурсы не отправлены с аккаунта '.$accname.'('.$res.')<img src="../img/alertm/r1.png" height="20" Width="20"/></p>';
				//$changeres=$sendcargo["cargo"]["type"];
			}	
			if ($res==2) 
			{
				if ($sendcargo["cargo"]["type"]=="u")  $totalu+=$sendcargo["cargo"]["weight"];
				if ($sendcargo["cargo"]["type"]=="t")  $totalt+=$sendcargo["cargo"]["weight"];
				if ($sendcargo["cargo"]["type"]=="m")  $totalm+=$sendcargo["cargo"]["weight"];
				echo '<p>'.$sendcargo["cargo"]["weight"].' '.$sendcargo["cargo"]["type"].' отправлено с аккаунта '.$accname[0].'('.$totalu.'/'.$totalt.'/'.$totalm.'), но обратный караван не отменился('.$res.')
				<img src="../img/alertm/y1.png" height="20" Width="20"/></p>';				
			}	
			if ($res==3) 
			{
				echo '<p>ресурсы не отправлены с аккаунта '.$accname[0].'('.$res.')<img src="../img/alertm/o1.png" height="20" Width="20"/></p>';
				//$changeres=$sendcargo["cargo"]["type"];
			}	
			if ($res==4) 
			{
				echo '<p>ошибка отправки '.$accname[0].'('.$res.')<img src="../img/alertm/r0.png" height="20" Width="20"/></p>';
				//$changeres=$sendcargo["cargo"]["type"];
			}
			if (($res<1)||($res>2))	// доп. отправка
			{
			   $j = $i;
			   $endarr = false;
			   do
			   {					
					do
					{
						$j++;								
					}
					while ($arrayOfObjects[$j]["checked"]);				
					echo ($i."|".$j."<br>");
					echo $sendcargo["cargo"]["weight"];
					if ($sendcargo["cargo"]["type"]=="u") $maxres= $arrayOfObjects[$j]["u"];
					if ($sendcargo["cargo"]["type"]=="t") $maxres= $arrayOfObjects[$j]["t"];
					if ($sendcargo["cargo"]["type"]=="m") $maxres= $arrayOfObjects[$j]["m"];
					if ($sendcargo["cargo"]["weight"]<$maxres)
					{
							$tovar = min($sendcargo["cargo"]["weight"], $arrayOfObjects[$j]["tr_p"]*$arrayOfObjects[$j]["car_av"], $arrayOfObjects[$j]["lim"]);
							echo $tovar;
							if ($tovar > 0)
							{
								$arrayOfObjects[$j]["res_type"] = $sendcargo["cargo"]["type"];
								$arrayOfObjects[$j]["checked"] = true;						
								$arrayOfObjects[$j]["cargo"] = $tovar;							
							}
							$sendcargo["cargo"]["weight"] = $sendcargo["cargo"]["weight"] - $tovar;
					}	
					if ($j >= count($arrayOfObjects)) $endarr = true;	
				}
				while (($sendcargo["cargo"]["weight"] > 0)&&(!$endarr));
			}
			if (($res==1)||($res==2))
			{
				//$db->add_lists(vkid,@mysql_result($ex,0,'lim'),@mysql_result($ex,0,'dd'),@mysql_result($ex,0,'tt'));
				//0:0:0:0:20:0
				$alerts_f = '0:0:0:0:'.$arrayOfObjects[$i]["car_av"].':0';
				$lc = $arrayOfObjects[$i]["lc"]-1;
				$query = 'UPDATE `res`  SET  `lc`='.$lc.', `alert_f` = "'.$alerts_f.'" WHERE `soc_id` = "'.$sendcargo["sender"]["vkid"].'"'; 								
				$r = mysql_query($query);	
				
				if ($sendcargo["cargo"]["type"]=="u")  $r=$db->add_record($_SESSION['r_log'],$sendobject['x'],$sendobject['y'],$un1[0],$sendcargo["cargo"]["weight"],0,0,microtime(true)*1000);
				if ($sendcargo["cargo"]["type"]=="t")  $r=$db->add_record($_SESSION['r_log'],$sendobject['x'],$sendobject['y'],$un1[0],0,$sendcargo["cargo"]["weight"],0,microtime(true)*1000);
				if ($sendcargo["cargo"]["type"]=="m")  $r=$db->add_record($_SESSION['r_log'],$sendobject['x'],$sendobject['y'],$un1[0],0,0,$sendcargo["cargo"]["weight"],microtime(true)*1000);
				
			}
		}
		flush();	
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
						});

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
						$('#recp').attr('hidden', 'hidden');
					}
				});				
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