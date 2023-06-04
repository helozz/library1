<?php
session_start();
//settings
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=windows-1251" />
		<link href="../css/main.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
<?
include "header.php";
?>	
<div class="frame" style=" width:800px; margin:10px;">
<div class="header">
<div class="hleft"></div>
<div class="hright"></div>
<div class="hmainfull"><div>Параметры</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 20px 5px 20px; padding-top:5px;">	
<?php
require_once("config.php");	
require_once("../auto/db_query.php");
//echo var_dump($_POST);
$uid = $_GET['uid'];
$hash = $_SESSION['hash'];
$calchash = md5(CLIENT_ID.''.$_SESSION['r_log'].''.SECRET);
if ($hash == $calchash)
{
	$db=new db_query(0,"vk".$uid,$_SESSION['soc_id']);
	$query  = "SELECT * FROM `accounts` WHERE `a_soc` = 'vk".$uid."'";	
	$data = mysql_query($query);	
	while ($row = mysql_fetch_array($data)) 
	{
		$accname = iconv('utf-8','cp1251', $row['a_n']);
		$accphoto = $row['a_ava'];
	}
	
	$data = $db->options_get("vk".$uid);	
	$opt = explode(':',$data);
	echo '<br><table>';
	echo '<img src="'.$accphoto.'" />';
	echo '<h3>'.$accname.'</h3>';	
	if(isset($_POST['submit']) )
	{
		$up1 = $opt[0];					//acc type no need to modify		
		$up2 = $opt[3];					//useless parameter
		$up3 = $opt[13];				//useless parameter
		if($opt[1]!=$_POST['auto_x'] || $opt[2]!=$_POST['auto_y']) $up2=0; // no need to call if coords are the same
		$save_x = $_POST['auto_x'];
		$save_y = $_POST['auto_y'];
		$ch1 = ($_POST['chavto1'])?1:0;
		$ch2 = ($_POST['chavto2'])?1:0;
		$cha1 = ($_POST['chavto3'])?1:0;		//builds
		$cha2 = ($_POST['chavto4'])?1:0;		//units
		$cha3 = ($_POST['chavto5'])?1:0;		//tech
        $cha4 = ($_POST['chavto6'])?1:0;        //plasma
        $cha5 = ($_POST['chavto7'])?1:0;        //alert
		$cha4 = 1;		//quest
		$comment = iconv('cp1251','utf8',$_POST['comments']);
        //options_change($vkid,$type,$x,$y,$id,$u,$b,$t,$br,$sr,$tr,$ur,$qr,$q,$f,$so,$sd,$comm,$alt=1,$bio=0)
		//options_change($vkid,$type,$x,$y,$id,$u,$b,$t,$br,$sr,$tr,$ur,$qr,$q,$f,$so,$sd,$comm,$alt=1,$bio=0,$up=1,$lt=1,$upr=2,$ltr=4,$afarm=0)
		$up= ($_POST['nano'])?1:0; // апгрейд нанов
		$lt= ($_POST['tech'])?1:0;  // апгрейд техов
		$upr=2; // период нанов
		$ltr=4; // период техов
		$afarm=0; // автограб
		$res = $db->options_change("vk".$uid,$up1,$save_x,$save_y,$up2,$cha2,$cha1,$cha3,$_POST['timerefresh1'],$_POST['timerefresh2'], $_POST['timerefresh3'],$_POST['timerefresh4'],
									$opt[11],$cha4,$up3,$ch1,$ch2,$comment, $cha5, $cha4, $up, $lt, $upr, $ltr, $afarm);
		if ($res=="Ok") echo 'Обновлено.';
		
	}
    //($ex,0,'type').':'. ($ex,0,'save_x').':'. ($ex,0,'save_y').':'. ($ex,0,'save_id').':'. ($ex,0,'units').':'. ($ex,0,'build').':'. ($ex,0,'techs').':'. ($ex,0,'build_refresh').':'. ($ex,0,'save_refresh').':'. ($ex,0,'techs_refresh').':'. ($ex,0,'units_refresh').':'. ($ex,0,'quests_refresh').':'. ($ex,0,'quests').':'. ($ex,0,'first').':'. ($ex,0,'save_off').':'. ($ex,0,'save_def').':'. ($ex,0,'comment').':'. ($ex,0,'force').':'. ($ex,0,'alert').':'. ($ex,0,'bio');
	$data = $db->options_get("vk".$uid);	
	$opt = explode(':',$data);
	if ($data !="")
		{				
			$soc_uid=$uid;						
			$save_x =$opt[1]; 
			$save_y =$opt[2];
			$cha2 = ($opt[4]==1)?'checked':'';
			$cha1 = ($opt[5]==1)?'checked':'';
			$cha3 = ($opt[6]==1)?'checked':'';
            $cha4 = ($opt[19]==1)?'checked':'';
            $cha5 = ($opt[18]==1)?'checked':'';
            $ch1 = ($opt[14]==1)?'checked':'';
			$ch2 = ($opt[15]==1)?'checked':'';
			$up= ($opt[20]==1)?'checked':''; // апгрейд нанов
			$lt= ($opt[22]==1)?'checked':''; // апгрейд техов
			$rb = $opt[7];
			$rs = $opt[8];
			$rt = $opt[9];
			$ru = $opt[10];
			$rq = $opt[11];
			$comment = $opt[16];
			echo '<tr><form action="options.php?uid='.$soc_uid.'" method="POST">';
			echo '<tr><td>Координаты автосейва</td></tr>';					
			echo '<tr><td>';
			echo 'X: <input name="auto_x" type="text"  SIZE=5 value="'.$save_x.'">';
			echo 'Y: <input name="auto_y" type="text"  SIZE=5 value="'.$save_y.'"></td></tr>';												
			echo '<tr><td>Время автостройки:</td><td><select size="1" name="timerefresh1">';
			echo '<option value="2" ';if($rb=="2") echo ' selected'; echo '>30м</option>';
			echo '<option value="4" ';if($rb=="4") echo ' selected'; echo '>60м</option>';
			echo '<option value="8" ';if($rb=="8") echo ' selected'; echo '>2ч</option>';
			echo '<option value="16" ';if($rb=="16") echo ' selected'; echo '>4ч</option>';
			echo '<option value="48" ';if($rb=="48") echo ' selected'; echo '>12ч</option>';
			echo '<option value="96" ';if($rb=="96") echo ' selected'; echo '>24ч</option>';
			echo '</select></td></tr>';
			echo '<tr><td>Время автосейва:</td><td><select size="1" name="timerefresh2">';
			echo '<option value="2" ';if($rs=="2") echo ' selected'; echo '>30м</option>';
			echo '<option value="4" ';if($rs=="4") echo ' selected'; echo '>60м</option>';
			echo '<option value="8" ';if($rs=="8") echo ' selected'; echo '>2ч</option>';
			echo '<option value="16" ';if($rs=="16") echo ' selected'; echo '>4ч</option>';
			echo '<option value="48" ';if($rs=="48") echo ' selected'; echo '>12ч</option>';
			echo '<option value="96" ';if($rs=="96") echo ' selected'; echo '>24ч</option>';
			echo '</select></td></tr>';
			echo '<tr><td>Время автотехов:</td><td><select size="1" name="timerefresh3">';
			echo '<option value="2" ';if($rt=="2") echo ' selected'; echo '>30м</option>';
			echo '<option value="4" ';if($rt=="4") echo ' selected'; echo '>60м</option>';
			echo '<option value="8" ';if($rt=="8") echo ' selected'; echo '>2ч</option>';
			echo '<option value="16" ';if($rt=="16") echo ' selected'; echo '>4ч</option>';
			echo '<option value="48" ';if($rt=="48") echo ' selected'; echo '>12ч</option>';
			echo '<option value="96" ';if($rt=="96") echo ' selected'; echo '>24ч</option>';
			echo '</select></td></tr>';
			echo '<tr><td>Постройка юнитов:</td><td><select size="1" name="timerefresh4">';
			echo '<option value="2" ';if($ru=="2") echo ' selected'; echo '>30м</option>';
			echo '<option value="4" ';if($ru=="4") echo ' selected'; echo '>60м</option>';
			echo '<option value="8" ';if($ru=="8") echo ' selected'; echo '>2ч</option>';
			echo '<option value="16" ';if($ru=="16") echo ' selected'; echo '>4ч</option>';
			echo '<option value="48" ';if($ru=="48") echo ' selected'; echo '>12ч</option>';
			echo '<option value="96" ';if($ru=="96") echo ' selected'; echo '>24ч</option>';
			echo '</select></td></tr>';			
			echo '<tr><td>Автосейв оффа: </td><td><input type="checkbox" name="chavto1" '.$ch1.' /></td></tr>';
			echo '<tr><td>Автосейв дефа: </td><td><input type="checkbox" name="chavto2" '.$ch2.' /></td></tr>';
			echo '<tr><td>Автобилд: </td><td><input type="checkbox" name="chavto3" '.$cha1.' /></td></tr>';
			echo '<tr><td>Автострой юнитов: </td><td><input type="checkbox" name="chavto4" '.$cha2.' /></td></tr>';
			echo '<tr><td>Автотех: </td><td><input type="checkbox" name="chavto5" '.$cha3.' /></td></tr>';
            echo '<tr><td>Автоплазма: </td><td><input type="checkbox" name="chavto6" '.$cha4.' /></td></tr>';
            echo '<tr><td>Алерт: </td><td><input type="checkbox" name="chavto7" '.$cha5.' /></td></tr>';
			echo '<tr><td>Наноподы: </td><td><input type="checkbox" name="nano" '.$up.' /></td></tr>';
			echo '<tr><td>Прокачка техов: </td><td><input type="checkbox" name="tech" '.$lt.' /></td></tr>';
			echo '<tr><td>Комментарий:</td></tr><tr><td><textarea rows="6" cols="30" name="comments">'.iconv('utf-8','cp1251',$comment).'</textarea></td></tr>';
			echo '<tr><input name="submit" type="submit" value="Обновить"></tr></form>'; 			
	    }		
		echo '</table>';
}
else die('Давай до свидания!');
?>
</div>
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>
</div>
</div>
</body>
<? 	$db->close_connection(); ?>
</html>