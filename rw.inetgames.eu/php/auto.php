<?php
session_start();
//autobuilds ver 0.3
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=windows-1251" />
		<link href="../css/main.css" rel="stylesheet" type="text/css" />
		<script src="../js/jquery-1.8.2.js"></script>
		<script src="../js/jquery-ui-1.9.1.custom.js"></script>		
	</head>
	<body>
<?php

include "header.php";
require_once("config.php");
require_once("../auto/db_query.php");
require_once("../auto/TDApi.php");
require_once("../auto/TDdata.php");
require_once("unitslist.php");
?>
<div class="frame" style=" width:800px; margin:10px;">
<div class="header">
<div class="hleft"></div>
<div class="hright"></div>
<div class="hmainfull"><div>Автостройка</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 20px 5px 40px;">	
<?php
$uid = $_GET['uid'];
$hash = $_SESSION['hash'];
$calchash = md5(CLIENT_ID.''.$_SESSION['soc_id'].''.SECRET);

if ($hash == $calchash)
{
	$db=new db_query(1,"vk".$uid,$_SESSION['soc_id']);
//========================================================	
	if (isset($_POST['submit']))
	{// сохранение списка задач в базу
	//add_task('vk14255544','0','BuyUnit','2,102')
		$tsk = $_POST['un_q'];
		$tsk_list = explode(';',$tsk);
		foreach ($tsk_list AS $tsk_el)
		{
			$tsk_p = explode(':',$tsk_el);
			$conv = $tsk_p[1];
			if ($tsk_p[3] > 0)
			{
				$par =(int)$tsk_p[2].",".(int)$tsk_p[3];
				$r=$db->add_task("vk".$uid,$conv,"BuyUnit",$par);	
				if ($r) echo $tsk_p[3].' '.$tsk_p[0].' добавлен в очередь </br>';
			}	
		}					
	}
//=======================================доступен ли юнит?	
	function GetAvail2Build($unb, $build_list, $dr_learn ) // uid, unit, build list, tech list
	{
		$flag = 0;
		$kk=0;
		$dt1= new TDdata();
		$r = $dt1->GetItemB($unb);
		$ra = explode(':', $r);
		foreach ($ra AS $rba)
			{
				$rb = explode('-', $rba);	
				//case 1: return '112-1:1058-1'; break;
				$learned = 0;
				$buildexist =0;		
				if ($rb[0] < 1000) // если данные не технология
				{						
					// проверка по зданию	
					foreach ($build_list AS $ble)
					{			
						
						if (($ble[1]==$rb[0])&&($ble[5]>= $rb[1]))
						{
							$buildexist = 1;	
						}
					}
				}				
				else
				{	
					// проверка по техам
					foreach ($dr_learn AS $dle)
					{
						$d_lea = explode('+', $dle);
						if ($d_lea[0] == $rb[0] && $d_lea[1]>=1) $learned = 1;	// уровень должен проверяться на первый - Helga
					}	
				}	
				if (($learned==0)&&($buildexist==0)) $flag = 1;
			}
		if (!$flag) return 1;
		else return 0;		
	}
//===============================================
	if (isset($_POST['submit_clear']))
	{// очистка списка задач
		//echo '<script> document.getElementById("unq").innerHTML = ""; </script>';
		for ($i=0;$i<8;$i++)
		{
			$r=$db->remove_tasks("vk".$uid,"0");
			$r=$db->remove_tasks("vk".$uid,"1");
			$r=$db->remove_tasks("vk".$uid,"2");
			$r=$db->remove_tasks("vk".$uid,"3");
			$r=$db->remove_tasks("vk".$uid,"4");
			$r=$db->remove_tasks("vk".$uid,"5");
			$r=$db->remove_tasks("vk".$uid,"6");
			$r=$db->remove_tasks("vk".$uid,"7");
		}
		if ($r==1)  echo 'Список автопостройки очищен.</br>';
			
	}
	$uinfo = $db->get_acc($_SESSION['soc_id'],'','vk'.$uid);
	$accname = mb_convert_encoding($uinfo,'cp1251','utf-8');		
	echo $accname;
	//===============очередь зданий	
	for ($conv=0;$conv<9;$conv++)
	{
		$bque = $db->get_user_tasks('vk'.$uid,$conv); // читаем задачи 
		$bq = explode(':',$bque);	
		$tasks=Array();	
		foreach ($bq AS $elem)
		{
			if ($elem !='')
			{
			$bqarr = explode(';',$elem);
			$tmpb= explode(',',$bqarr[2]);
			$tasks[] = $tmpb;		
			}
		}
		//echo var_dump($tasks);
		if (count($tasks)>0)
		{
			echo '<fieldset style=" width:600px;"><legend>Очередь задач</legend>';
			foreach ($tasks AS $tsk)
			{							
				echo '<img src="'.$units[$tsk[0]]["src"].'" title="'.$units[$tsk[0]]["name"].'" style="border:1px solid #c0ec00;"/>';
				echo $tsk[1];
				//echo 'document.getElementById("unq").innerHTML= document.getElementById("unq").innerHTML + $par +":"+$conv+":"+$id+":"+$cnt+";\n"';
			}
			echo '</fieldset>';
		}	
	}
	//=====игровая очередь	
	// signin(u.g.td.f.o[])
	//	o {"i":29,"k":7,"t":25,"p":25,"f":0}
	$query  = "SELECT * FROM `accounts` WHERE `a_soc` = 'vk".$uid."'";	
	$data = mysql_query($query);	
	$row = mysql_fetch_array($data);
	$AuthKey = $row['a_auth'];
	$me=new TDApi("vk".$uid,$AuthKey,$db->friends,$db->v,$db->referer,$db->proxy,$db->proxypwd,$db->origin);		
	$signin= $me->getCommonData($db->uname,$db->uimg);		
	//echo var_dump($signin);		
	$jsonobj = json_decode($signin);
	//echo var_dump($jsonobj->u->g->td->f->o);
	echo '<fieldset style=" width:600px;"><legend>Очередь в игре</legend>';	
	foreach ($jsonobj->u->g->td->f->o AS $unitqueue)
	{		
		$units[$unitqueue->k]["qnt"] += $unitqueue->p;						
	}
	foreach ($units AS $unt)
	{
		if ($unt["qnt"]>0)
		{
			$dt1= new TDdata();
			$name = $dt1->GetItemName();
			echo '<img src="'.$unt["src"].'" title="'.$unt["name"].'" style="border:1px solid #c0ec00;"/>';
			echo '('.$unt["qnt"].')';
		}
	}
	echo '</fieldset>';
	//===========проверка можно ли строить юнита====================
	$res=$db->get_all_info("vk".$uid);	
	$res_info = explode(';',$res);
	$dr_learn1 = explode(':', $res_info[12]);	
	//echo var_dump($dr_learn1);
	do 
	{
		$kk++;		
		$me=new TDApi("vk".$uid,$AuthKey,$db->friends,$db->v,$db->referer,$db->proxy,$db->proxypwd,$db->origin);		
		$buildings=explode(';',$me->GetUserBuildings($db->uname,$db->uimg));
		sleep(3);		
	}
	while ((count($buildings)<2)&&($kk<3));			
	if (count($buildings)>1)
	{
		$build_list1=Array();	
		for ($i=1;$i< count($buildings);$i++)
		{
			$build_info = explode(',',$buildings[$i]);
			$build_list1[$build_info[0]] = $build_info;	
		}
		for ($j=1;$j<41;$j++)
		{
			if (GetAvail2Build($j, $build_list1, $dr_learn1))
			{
				$units[$j]["class"] = "unimg";				
			}
			else 
			{
				//if ($j>9) $units[$j]["src"] = "../img/units/".$j."_gr.jpg";
				//else $units[$j]["src"] = "../img/units/0".$j."_gr.jpg";
			}
		}	
	}
	else echo "у нас проблемы c ip ";
	
	//======================
	$query  = "SELECT * FROM `options` WHERE `o_soc` = 'vk".$uid."'";	
	$res = mysql_query($query);
	if ($res and mysql_num_rows($res) > 0)
	{
		$row = mysql_fetch_array($res);		
		echo '<form name="units" style=" width:470px;">';
		echo '<fieldset style=" width:460px;"><legend>Пехота</legend>';			
		for ($i=1;$i<5;$i++)
		{
			echo '<img src="'.$units[$i]["src"].'" class="'.$units[$i]["class"].'" id="un'.$i.'" nmb="'.$i.'" title="'.$units[$i]["name"].'" style="border:1px solid #c0ec00;"/>';
		}
		for ($i=17;$i<21;$i++)
		{
			echo '<img src="'.$units[$i]["src"].'" class="'.$units[$i]["class"].'" id="un'.$i.'" nmb="'.$i.'"  title="'.$units[$i]["name"].'" style="border:1px solid #c0ec00;"/>';
		}
		echo ' <input name="un1" type="title" id="un_inf" SIZE=2 value="0">';
		echo '</fieldset>';
		echo '<fieldset style=" width:460px;"><legend>Бронетехника</legend>';
		for ($i=5;$i<9;$i++)
		{
			echo '<img src="'.$units[$i]["src"].'" class="'.$units[$i]["class"].'" id="un'.$i.'" nmb="'.$i.'"  title="'.$units[$i]["name"].'" style="border:1px solid #c0ec00;"/>';
		}
		for ($i=21;$i<25;$i++)
		{
			echo '<img src="'.$units[$i]["src"].'" class="'.$units[$i]["class"].'" id="un'.$i.'" nmb="'.$i.'"  title="'.$units[$i]["name"].'" style="border:1px solid #c0ec00;"/>';
		}
		echo ' <input name="un2" type="title" id="un_cav" SIZE=2 value="0">';
		echo '</fieldset>';
		echo '<fieldset style=" width:460px;"><legend>Артилерия</legend>';
		for ($i=9;$i<13;$i++)
		{
			echo '<img src="'.$units[$i]["src"].'" class="'.$units[$i]["class"].'" id="un'.$i.'" nmb="'.$i.'"  title="'.$units[$i]["name"].'" style="border:1px solid #c0ec00;"/>';
		}
		for ($i=25;$i<29;$i++)
		{
			echo '<img src="'.$units[$i]["src"].'" class="'.$units[$i]["class"].'" id="un'.$i.'" nmb="'.$i.'"  title="'.$units[$i]["name"].'" style="border:1px solid #c0ec00;"/>';
		}
		echo ' <input name="un3" type="text" SIZE=2 id="un_mag" value="0">';
		echo '</fieldset>';
		echo '<fieldset style=" width:460px;"><legend>Авиация</legend>';
		for ($i=13;$i<17;$i++)
		{
			echo '<img src="'.$units[$i]["src"].'" class="'.$units[$i]["class"].'" id="un'.$i.'" nmb="'.$i.'"  title="'.$units[$i]["name"].'" style="border:1px solid #c0ec00;"/>';
		}			
		for ($i=29;$i<33;$i++)
		{
			echo '<img src="'.$units[$i]["src"].'" class="'.$units[$i]["class"].'" id="un'.$i.'" nmb="'.$i.'"  title="'.$units[$i]["name"].'" style="border:1px solid #c0ec00;"/>';
		}		
		echo ' <input name="un4" type="text" SIZE=2 id="un_best" value="0">';			
		echo '</fieldset>';
        echo '<fieldset style=" width:460px;"><legend>Полигон</legend>';
        for ($i=33;$i<37;$i++)
        {
            echo '<img src="'.$units[$i]["src"].'" class="'.$units[$i]["class"].'" id="un'.$i.'" nmb="'.$i.'"  title="'.$units[$i]["name"].'" style="border:1px solid #c0ec00;"/>';
        }
        for ($i=37;$i<41;$i++)
        {
            echo '<img src="'.$units[$i]["src"].'" class="'.$units[$i]["class"].'" id="un'.$i.'" nmb="'.$i.'"  title="'.$units[$i]["name"].'" style="border:1px solid #c0ec00;"/>';
        }
        echo ' <input name="un5" type="text" SIZE=2 id="un_hild" value="0">';
        echo '</fieldset>';
		echo '<fieldset style=" width:460px;"><legend>Спецкорпус</legend>';
        for ($i=41;$i<45;$i++)
        {
            echo '<img src="'.$units[$i]["src"].'" class="'.$units[$i]["class"].'" id="un'.$i.'" nmb="'.$i.'"  title="'.$units[$i]["name"].'" style="border:1px solid #c0ec00;"/>';
        }
        for ($i=45;$i<49;$i++)
        {
            echo '<img src="'.$units[$i]["src"].'" class="'.$units[$i]["class"].'" id="un'.$i.'" nmb="'.$i.'"  title="'.$units[$i]["name"].'" style="border:1px solid #c0ec00;"/>';
        }
        echo ' <input name="un6" type="text" SIZE=2 id="un_spec" value="0">';
        echo '</fieldset>';
		echo '<fieldset style=" width:460px;"><legend>Инкубатор</legend>';
        for ($i=49;$i<54;$i++)
        {
            echo '<img src="'.$units[$i]["src"].'" class="'.$units[$i]["class"].'" id="un'.$i.'" nmb="'.$i.'"  title="'.$units[$i]["name"].'" style="border:1px solid #c0ec00;"/>';
        }
        for ($i=54;$i<59;$i++)
        {
            echo '<img src="'.$units[$i]["src"].'" class="'.$units[$i]["class"].'" id="un'.$i.'" nmb="'.$i.'"  title="'.$units[$i]["name"].'" style="border:1px solid #c0ec00;"/>';
        }
        echo ' <input name="un7" type="text" SIZE=2 id="un_ink" value="0">';
        echo '</fieldset>';
		echo '</form>';
		echo '<table style=" width:350px;"><form action="auto.php?uid='.$uid.'" method="POST">';
		echo '<tr><td>Очередь постройки юнитов: (Название:конвеер:тип:кол-во)</td></tr><tr><td><textarea rows="20" cols="40" id="unq" name="un_q"></textarea></td>';			
		echo '<tr><td><input name="submit" type="submit" value="Сохранить"><input name="submit_clear" type="submit" value="Очистить"></td></tr></form></table>';
	}
		
}
else die('Давай до свидания!');
?>
</div>
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>
</div>
</div>
<script>
$('.unimg').on({
		   'click': function()
			{  	
				var self = $(this);
				var id = self.attr('nmb');																
				var par = self.attr('title');				
				if ((id>0)&&(id<5))
				{
					var cnt = $('#un_inf').val();
					var conv = 0;
				}
				if ((id>16)&&(id<21))
				{
					var cnt = $('#un_inf').val();
					var conv = 1;
				}
				if ((id>4)&&(id<9))
				{
					var cnt = $('#un_cav').val();
					var conv = 2;
				}
				if ((id>20)&&(id<25))
				{
					var cnt = $('#un_cav').val();
					var conv = 3;
				}
				if ((id>8)&&(id<13))
				{
					var cnt = $('#un_mag').val();
					var conv = 4;
				}
				if ((id>24)&&(id<29))
				{
					var cnt = $('#un_mag').val();
					var conv = 5;
				}
				if ((id>12)&&(id<17))
				{
					var cnt = $('#un_best').val();
					var conv = 6;
				}if ((id>28)&&(id<33))
				{
					var cnt = $('#un_best').val();
					var conv = 7;
				}
				if (cnt>0)
				{ 
					document.getElementById("unq").innerHTML= document.getElementById("unq").innerHTML + par +":"+conv+":"+id+":"+cnt+";\n";				
				}	
			}
});			
</script>
</body>
<? 	$db->close_connection(); ?>
</html>