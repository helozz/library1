<?php
//ver 0.95
session_start();
//autobuilds
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
				var result = $("#addq");
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
require_once("func.php");	
include "header.php";
require_once("../auto/db_query.php");
require_once("../auto/TDApi.php");
require_once("../auto/TDdata.php");
?>
<div class="frame" style=" width:990px; margin:10px;">
<div class="header">
<div class="hleft"></div>
<div class="hright"></div>
<div class="hmainfull"><div>Автостройка</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 20px 5px 40px;">	

<?php
$uid = $_GET['uid'];
$dt= new TDdata();
$db=new db_query(1,"vk".$uid,$_SESSION['soc_id']);
function GetAvail2Build($ud, $cb, $build_lst, $dr_learn) // uid, build, build list, tech list
{
	$flag = 0;
	$dt1= new TDdata();
	$r = $dt1->GetItemB($cb);
	$ra = explode(':', $r);
	foreach ($ra AS $rba)
	{
		$rb = explode('-', $rba);	
		//==1055-1:106-10
		$learned = 0;
		$buildexist =0;
		$count =0;			
		if (($cb==108)||($cb==109))		//склады
		{
			$rb[0] = $cb;
			$rb[1] = 20;
		}
		if ($rb[0]=="") // если нет - то ставить true
		{
			$buildexist = 1;	
		}
		if ($rb[0] < 1000) // если данные по зданию
		{						
			// проверка по зданию	
			foreach ($build_lst AS $ble)
			{			
				
				if (($ble[1]==$rb[0])&&($ble[5]+$ble[6]>= $rb[1]))
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

$hash = $_SESSION['hash'];
$calchash = md5(CLIENT_ID.''.$_SESSION['r_log'].''.SECRET);
if ($hash == $calchash)
{
	$excludes[] = 112; //сторожевой пост
	$excludes[] = 113; //казарма
	$excludes[] = 118; //Дворец теней
	$excludes[] = 114; //
	$excludes[] = 115; //
	$excludes[] = 116;
	$excludes[] = 117;
	$excludes[] = 119;// логово дракона
	$c=Array(142,141,111,139,140,150,149,148,137,102,104,100,127,124,101,144,138,125,126,106,109,108,103,105,107,110,112,600,113,114,115,116,117,118,119,120);
	
	$query  = "SELECT * FROM `accounts` WHERE `a_soc` = 'vk".$uid."'";	
	$data = mysql_query($query);	
	$row = mysql_fetch_array($data);
	$AuthKey = $row['a_auth'];
	//$me=new TDApi("vk".$uid,$AuthKey,$db->friends,$db->v,$db->referer,$db->proxy,$db->proxypwd,$db->origin);
	//$buildings=explode(';',$me->GetUserBuildings($db->uname,$db->uimg));
	$kk=0;
	do 
	{
		$kk++;		
		$me=new TDApi("vk".$uid,$AuthKey,$db->friends,$db->v,$db->referer,$db->proxy,$db->proxypwd,$db->origin);
        $build_string = $me->GetUserBuildings($db->uname,$db->uimg);
        $buildings=explode(';',$build_string);
		sleep(3);
	}
	while ((count($buildings)<2)&&($kk<3));
	//if ($kk>2) echo 'Ваш прокси-IP сдох :(';	
	$uinfo = $db->get_acc($_SESSION['soc_id'],'','vk'.$uid);
	$accname = mb_convert_encoding($uinfo,'cp1251','utf-8');
	echo '<p>'.$accname.'-'.$kk.'</p>';		
	echo '<table><tr><td><table width="690"><form name="buildlist" style="margin-top: 1em;">';
	$cnt = 0;
	$titan = $buildings[0];
	$build_list=Array();
    $warelim = 0;
    $banklim = 0;
	$build_string ="";
	for ($i=1;$i< count($buildings);$i++)
	{
		$build_info = explode(',',$buildings[$i]);
		$build_list[$build_info[0]] = $build_info;
		$build_string.=$build_info[0].";".$build_info[1].";".($build_info[5]+$build_info[6]).":";
        //echo var_dump($build_info);
        if ($build_info[1]==108)
        {
            $warelim += $dt->GetWareCapacity($build_info[5]);
        }
        if ($build_info[1]==109)
        {
            $banklim += $dt->GetWareCapacity($build_info[5]);
        }

	}
    echo $warelim.'|'.$banklim.'<br>';
    //echo var_dump($build_string);
    $r = $db->add_build('vk'.$uid, $warelim, $banklim, $build_string);
   // echo $r;
	//echo var_dump($build_list);	
	//[1]=> array(7) { [0]=> string(1) "1" [1]=> string(3) "100" [2]=> string(4) "true" [3]=> string(2) "46" [4]=> string(2) "50" [5]=> string(2) "15" [6]=> string(1) "0" 
	$tsk_list[]='';

	//echo var_dump($tasks);
	//=========================удаление====================
	if (isset($_POST['delsubmit']))   // удалить нахрен весь план застроек
	{ 
		$r=$db->remove_tasks("vk".$uid,"B");
		if ($r==1)  
		{
			echo 'Список автопостройки очищен.</br>';
			echo '<script> document.getElementById("bnq").innerHTML = ""; </script>';
		}
	}
	//=========================прокачка====================
	if (isset($_POST['autosubmit']))
	{
		$r=$db->remove_tasks("vk".$uid,"B");
					
			if ($titan == 5) $file_array = file("build_script_steel.txt"); // Считывание файла в массив $file_array
			if ($titan == 4) $file_array = file("build_script_gold.txt"); // Считывание файла в массив $file_array
			$build_list2 = $build_list;
			if ($file_array != NULL)
			{
				foreach ($file_array AS $elem)
				{
					$bqel = explode(';',$elem);			
					foreach ($build_list2 AS $bl)			
					{								
						$lvl1 = (int)$bqel[2]-1;
						$lvl2 = (int)$bl[5]+(int)$bl[6];												
						if (($bqel[0]==$bl[1])&&($lvl1==$lvl2))
						{
							
							$par = (int)$bl[0].",".(int)$bl[3].",".(int)$bl[4].",".(int)$bl[1].",".(int)$bqel[2].",\'".$bl[2]."\'";							
							$r=$db->add_task("vk".$uid,"B","BuyBuild",$par);
							if ($r==1) 
							{
								(int)$build_list2[$bl[0]][5]++;						
							}
							//echo var_dump($build_list[$i]);
							//echo '-'.$par;
							//echo '<br>';
						}	
					}				
				}
				echo '<script type="text/javascript">';	
				echo 'Alert("Замок будет прокачан.");';
				echo '</script>';
			}
	}
	//===============очередь новодобавленных
	$bque = $db->get_user_tasks('vk'.$uid,'P');
	$bq = explode(':',$bque);
	$tasks=Array();	
	foreach ($bq AS $elem)
	{
		if ($elem !='')
		{
		$bqarr = explode(';',$elem);
		$tmpb= explode(',',$bqarr[2]);
		array_pop($tmpb);
		array_push($tasks,implode(',',$tmpb));
		}
	}
	//=========================добавление новых построек====================
	if (isset($_POST['addnewsubmit']))
	{
        if (count($_POST['new_build'])>0)
        {
            foreach ($_POST['new_build'] as $cbb)
            {
                if ($cbb > 0)
                {
                    $par = "-1,55,55,".(int)$cbb.",1";
                    $intasks=0;
                    foreach ($tasks AS $ts)
                    {
                        $tss = explode(',',$ts);
                        if ($tss[3]==$cbb) $intasks=1;
                    }
                    if ($intasks==0)
                    {
                        $r=$db->add_task("vk".$uid,"P","BuyBuild",$par);
                        if ($r==1) echo 'добавлено</br>';
                        $tasks[] = $par;
                    }
                    //$db->add_task($vkid,'P','BuyBuild','-1,68,68,137,1')
                }
            }
        }
	}
	//=========================================
	$db=new db_query(1,"vk".$_SESSION['soc_id'],$_SESSION['soc_id']);	
	$res=$db->get_all_info("vk".$uid);	
	$res_info = explode(';',$res);
	$dr_learn1 = explode(':', $res_info[12]);
	
	foreach ($c AS $bc) // проверяем все ли постройки 
	{
		$builded = 0;
		$count=0;
		if (count($build_list)>0)
		{
			foreach ($build_list AS $bl)
			{						
				if ($bc ==$bl[1]) 
				{
					$count++;
					if (($bc == 109)||($bc == 108)) 
					{
					if (($bl[5]+$bl[6])<20 || $count==3) $builded = 1; //склады	
					}
					else $builded = 1;
				}
			}
			if (($bc==106)&&($count<6)) //Фермы
			{
				$builded = 0;
			}
			if (!$builded)
			{			
				$r = GetAvail2Build($uid, $bc, $build_list, $dr_learn1);
				//if (($bc == 109)||($bc == 108)) echo $r.$bc;
				$intasks=0;
				if ($tasks!=NULL)
				{
					foreach ($tasks AS $ts)
					{
						$tss = explode(',',$ts);
						if ($tss[3]==$bc) $intasks=1;
					}
				}
				//if (($bc == 109)||($bc == 108)) echo  $intasks;
				if ($intasks==0) 
				{
				  $bname = mb_convert_encoding($dt->GetItemName($bc),'cp1251','utf-8');
				  //echo $bname.'-'.$r.'</br>';
				  if ($r) $newc[] = $bc;		//то что не построено
				}
			}
		}	
	}

	//===============очередь зданий
	$bque = $db->get_user_tasks('vk'.$uid,'B'); // читаем задачи 
	$bq = explode(':',$bque);	
	foreach ($bq AS $elem)
	{
		if ($elem !='')
		{
		$bqarr = explode(';',$elem);
		$tmpb= explode(',',$bqarr[2]);
		array_pop($tmpb);
		array_push($tasks,implode(',',$tmpb));
		}
	}
	//================================
	for ($i=1;$i< count($buildings);$i++)
	{
		$building = $buildings[$i];
		$cnt++;
		$build_info = explode(',',$building);
		$lvl = $dt->GetObjL($build_info[1]);
		//if (in_array($build_info[3], $c))
		if (($lvl>1)&&(!in_array($build_info[1],$excludes)))
		{
			$bname =  mb_convert_encoding($dt->GetItemName($build_info[1]),'cp1251','utf-8');
			echo '<tr><td>'.$build_info[0].' - ';
			if ($build_info[6] == 1) echo '<font color="red">';
			echo $bname;
			if ($build_info[6] == 1) echo '</font>';
			echo '<font color="white"></font>';
			echo '</td>';
			echo '<td align="right">';			
			echo '<ol id="selectable'.$i.'" class="selectable" name="sel'.$i.'">';			
			echo '<li class="hog-state-default" id="">'.(int)$build_info[5].'</li>';		//green
			for ($j=$build_info[5]+1;$j<$lvl+1;$j++)
			{				
				if(($build_info[6] == 1)&&($j==$build_info[5]+1)) echo '<li class="hor-state-default" id="">'.$j.'</li>';	//red build
				else
				{
					//blue
					if (in_array($build_info[0].','.$build_info[3].','.$build_info[4].','.$build_info[1].','.$j,$tasks)) echo '<li class="hob-state-default" id="">'.$j.'</li>'; //blue
					else echo '<li class="ui-state-default" id="'.$build_info[0].'_'.$j.'" text="'.$build_info[0].';'.$build_info[1].';'.$bname.';'.$j.':">'.$j.'</li>'; //grey
				}	
			}	
			echo '</ol></td></tr>';
			//$build_list[$build_info[0]] = $build_info;			
			//echo var_dump($build_info);
		}
	}
	echo '<tr><td></form><button id="clear" name="clear">Очистить</button><form action="autob.php?uid='.$uid.'" method="POST"><input name="submit" type="submit" value="Добавить"></td><td><textarea rows="5" cols="50" id="addq" name="addq"></textarea></td></tr></form>';
    echo '</table></td><td><table width="250"><form action="autob.php?uid='.$uid.'" method="POST">';
	echo '<tr><td>Очередь постройки зданий:</td></tr><tr><td><textarea rows="30" cols="25" id="bnq" name="b_nq" wrap="off">'.$bqlist.'</textarea></td></tr>';
	echo '<tr><td><input name="autosubmit" type="submit" value="Прокачать замок">  <input name="delsubmit" type="submit" value="Очистить"></td></tr></form>';
	echo '<tr><td><form action="autob.php?uid='.$uid.'" method="POST"><select multiple size="4" name="new_build[]">';
	foreach ($newc AS $nc)
	{
		$bname = mb_convert_encoding($dt->GetItemName($nc),'cp1251','utf-8');
		echo '<option value="'.$nc.'" >'.$bname.'</option>';
	}
	echo '</select><input name="addnewsubmit" type="submit" value="Добавить"></form></td></tr></table></td>';
	echo '<script type="text/javascript">';	
	

	foreach ($bq AS $bq_elem)
	{
		if ($bq_elem !='')
		{
			$bq_info = explode(',',$bq_elem);
			//echo var_dump($bq_info);
			$bq1 = explode(';',$bq_info[0]);
			$bname = mb_convert_encoding($dt->GetItemName($bq_info[3]),'cp1251','utf-8');
			$temp = $bq1[2].';'.$bq_info[3].';'.$bname.';'.(int)$bq_info[4];
			echo 'document.getElementById("bnq").innerHTML= document.getElementById("bnq").innerHTML +"'.$temp.'"+":\n";';
			$tsk_list[]=$temp;
			$bq_array[$bq1[2]] = $bq_info;	
		}
	}
	echo '</script></tr></table>';
	//echo var_dump($build_list).'<br/>';
    //=========================добавление построек======================
	if(isset($_POST['submit']) )
	{
		$tskx = explode(':', $_POST['addq']);
        if (count($tskx)>0)
        {
            foreach ($tskx AS $tsk_el)
            {
                if ($tsk_el != '')
                {
                    //$tsk_el = explode(':', $tsk);
                    echo '<script type="text/javascript">';
                    //$i=count($tsk_el)-2;	// предпоследний элемент массива
                    {
                        $tsk_it = $tsk_el;
                        if (!in_array($tsk_it, $tsk_list))
                        {
                            $tsk_info = explode(';', $tsk_it);
                            $num = (int)$tsk_info[0];
                            $bl = $build_list[$num];
                            $start_lvl = $bl[5]+1+(int)$bl[6];
                            $lvl=(int)$tsk_info[3];
                            if ($dt->GetObjL($bl[1]) > $lvl-1)
                            {
                                for ($i=$start_lvl;$i<$lvl+1;$i++)
                                {
                                    $temp = $tsk_info[0].';'.$tsk_info[1].';'.$tsk_info[2].';'.$i;
                                    if (!in_array($temp, $tsk_list))
                                    {
                                        $par = (int)$bl[0].",".(int)$bl[3].",".(int)$bl[4].",".(int)$bl[1].",".(int)$i.",\'".$bl[2]."\'";
                                        $r=$db->add_task("vk".$uid,"B","BuyBuild",$par);
                                        echo 'document.getElementById("bnq").innerHTML= document.getElementById("bnq").innerHTML +"'.$temp.'"+":\n";';
                                        $id1 = $tsk_info[0].'_'.$i;
                                        if ($id1!='_') echo "$(\"#".$id1."\").addClass('hob-state-default');";
                                        $tsk_list[]=$temp;
                                    }
                                }
                            }
                        }
                    }
                    echo '</script>';
                }
            }
        }
        //echo var_dump($tskx);

		//$db->add_task(VKID,'B','BuyBuild','1,22,25,100,2,false');
		//Helga Oz: 1-айди здания, 100-тип, false-реверсировано ли,22-х,25-у, 2- требуемый уровень
	}
	
}
else die('Давай до свидания!');
?>
</div>
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>
</div>
</div>
<script type="text/javascript">
    $('#clear').on({
        'click': function()
        {
            $("#addq").empty();
        }
    });
</script>
</body>
<? 	$db->close_connection(); ?>
</html>