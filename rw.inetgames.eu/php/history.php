<?php
session_start();
//header('Content-type: text/html; charset=windows1251');
//attacks ver 0.4
include_once("../auto/defines.php");
require_once("func.php");	
require_once("../auto/db_query.php");
require_once("../auto/TDApi.php");
require_once("../auto/TDdata.php");
$authuid = $_SESSION['soc_id'];
$hash = $_SESSION['hash'];

error_reporting( E_ERROR );

function alname($ai,$alarr)
{
for($i=0;$i<count($alarr);$i++)
{
if($alarr[$i]['i']==$ai) return $alarr[$i]['a'];
}
return $ai;
}


$calchash = md5(CLIENT_ID.''.$_SESSION['soc_id'].''.SECRET);
if ($hash == $calchash)
{
	
	$sector="";
	$history="";
	
	if($_POST['x']!=0 || $_POST['y']!=0 || $_POST['vk']!='')
	{
	
	$db=new db_query();
	$user=explode(';',$db->get_user('14569359',''));//($_SESSION['r_log'],'');
	$acc=explode(',',$user[0]);
	$db->close_connection();
	$db=new db_query(0,$acc[2],'14569359');
	
	$me=new TDApi($acc[2],$acc[4],$db->friends,$db->v,$db->referer,$db->proxy,$db->proxypwd,$db->origin);
	
	
	if($_POST['x']==0 && $_POST['y']==0 && $_POST['vk']!='')
{
	$res=simplexml_load_string(str_replace('soap:','',$db->DJDee(0,0,$_POST['vk'],"")));
	$sector.='<table><tr><td><img src="'.$res->Body->GetSectorBySocialIDResponse->GetSectorBySocialIDResult->Photo.'" width=120 height=120 /></td><td>&nbsp;</td>';
	$sector.='<td>Аккаунт: <font color="red">'.$res->Body->GetSectorBySocialIDResponse->GetSectorBySocialIDResult->UserName.'</font><br />';
	$sector.='ВКонтакте: <font color="green">'.$res->Body->GetSectorBySocialIDResponse->GetSectorBySocialIDResult->SocialID.'</font><br />';
	$sector.='<font> Регистрация:</font> <font color="green">'.str_replace('T',' ',$res->Body->GetSectorBySocialIDResponse->GetSectorBySocialIDResult->RegistrationTime).'</font><br />';
	$sector.='<font> X:</font> <font color="yellow">'.str_replace('T',' ',$res->Body->GetSectorBySocialIDResponse->GetSectorBySocialIDResult->X).'</font>&nbsp;&nbsp;&nbsp;';
	$sector.='<font> Y:</font> <font color="yellow">'.str_replace('T',' ',$res->Body->GetSectorBySocialIDResponse->GetSectorBySocialIDResult->Y).'</font><br />';
	$sector.='<font> Сектор:</font> <font color="orange">'.str_replace('T',' ',$res->Body->GetSectorBySocialIDResponse->GetSectorBySocialIDResult->SectorName).'</font><br />';
	$sector.='<font> Уровень:</font> <font color="orange">'.str_replace('T',' ',$res->Body->GetSectorBySocialIDResponse->GetSectorBySocialIDResult->Level).'</font><br />';
	$sector.='<font> ID:</font> <font color="lightblue">'.str_replace('T',' ',$res->Body->GetSectorBySocialIDResponse->GetSectorBySocialIDResult->ID).'</font><br />';
	$sector.=($res->Body->GetSectorBySocialIDResponse->GetSectorBySocialIDResult->AllianceName!='')? '<font> Альянс:</font> <font color="red">'.str_replace('T',' ',$res->Body->GetSectorBySocialIDResponse->GetSectorBySocialIDResult->AllianceName).'</font><br />':'';
	$sector.=($res->Body->GetSectorBySocialIDResponse->GetSectorBySocialIDResult->AllianceName!='')? '<font> Ранг:</font> <font color="orange">'.str_replace('T',' ',$res->Body->GetSectorBySocialIDResponse->GetSectorBySocialIDResult->AllianceRankId).'</font>':'';
	$sector.='</td></tr></table>';
	$sector.='<font size=0.9> Обновление:</font> <font size=0.9>'.str_replace('T',' ',$res->Body->GetSectorBySocialIDResponse->GetSectorBySocialIDResult->LastUpdate).'</font><br />';		
	$resh=simplexml_load_string(str_replace('soap:','',$db->DJDee(0,0,$_POST['vk'],"1")));

	
	$arr=Array();
	foreach ($resh->Body->GetSectorHistoryBySocialIDResponse->GetSectorHistoryBySocialIDResult->SectorHistoryInfo as $info) {
     if($info->ChangeType=='CHANGE_ALLIANCE') 
	 {
	 if($info->Before!=0) array_push($arr,$info->Before);
	 else $info->Before='Нет альянса';
	 if($info->After!=0) array_push($arr,$info->After);
	 else $info->After='Нет альянса';
	}
	}
	array_unique($arr);
	if(count($arr)>0) 
	{
	$als=json_decode($me->GetAlliances($arr),true); 
	}

	foreach ($resh->Body->GetSectorHistoryBySocialIDResponse->GetSectorHistoryBySocialIDResult->SectorHistoryInfo as $info) {
    $history.='<br />';
	if($info->ChangeType=='CHANGE_ALLIANCE') $history.='<font color="red">Смена альянса:<br /></font>';
	if($info->ChangeType=='CHANGE_SECTORNAME') $history.='<font color="yellow">Изменение имени сектора:<br /></font>';
	if($info->ChangeType=='CHANGE_USERNAME') $history.='<font color="#ff33ff">Изменение имени аккаунта:<br /></font>';
	 $history.='Дата:'.str_replace('T',' ',$info->LastUpdate).'<br />';
	 $history.='<font color="green">'.alname($info->Before,$als).'</font> => <font color="green">'.alname($info->After,$als).'</font><br />';
	}

}

	if(($_POST['x']!=0 || $_POST['y']!=0) && $_POST['vk']=='')
{	
	$res=simplexml_load_string(str_replace('soap:','',$db->DJDee($_POST['x'],$_POST['y'],'',"")));
	$sector.='<table><tr><td><img src="'.$res->Body->GetSectorByCoordinateResponse->GetSectorByCoordinateResult->Photo.'" width=120 height=120 /></td><td>&nbsp;</td>';
	$sector.='<td>Аккаунт: <font color="red">'.$res->Body->GetSectorByCoordinateResponse->GetSectorByCoordinateResult->UserName.'</font><br />';
	$sector.='ВКонтакте: <font color="green">'.$res->Body->GetSectorByCoordinateResponse->GetSectorByCoordinateResult->SocialID.'</font><br />';
	$sector.='<font> Регистрация:</font> <font color="green">'.str_replace('T',' ',$res->Body->GetSectorByCoordinateResponse->GetSectorByCoordinateResult->RegistrationTime).'</font><br />';
	$sector.='<font> X:</font> <font color="yellow">'.str_replace('T',' ',$res->Body->GetSectorByCoordinateResponse->GetSectorByCoordinateResult->X).'</font>&nbsp;&nbsp;&nbsp;';
	$sector.='<font> Y:</font> <font color="yellow">'.str_replace('T',' ',$res->Body->GetSectorByCoordinateResponse->GetSectorByCoordinateResult->Y).'</font><br />';
	$sector.='<font> Сектор:</font> <font color="orange">'.str_replace('T',' ',$res->Body->GetSectorByCoordinateResponse->GetSectorByCoordinateResult->SectorName).'</font><br />';
	$sector.='<font> Уровень:</font> <font color="orange">'.str_replace('T',' ',$res->Body->GetSectorByCoordinateResponse->GetSectorByCoordinateResult->Level).'</font><br />';
	$sector.='<font> ID:</font> <font color="lightblue">'.str_replace('T',' ',$res->Body->GetSectorByCoordinateResponse->GetSectorByCoordinateResult->ID).'</font><br />';
	$sector.= ($res->Body->GetSectorByCoordinateResponse->GetSectorByCoordinateResult->AllianceName!='')? '<font> Альянс:</font> <font color="red">'.str_replace('T',' ',$res->Body->GetSectorByCoordinateResponse->GetSectorByCoordinateResult->AllianceName).'</font><br />':'';
	$sector.=($res->Body->GetSectorByCoordinateResponse->GetSectorByCoordinateResult->AllianceName!='')? '<font> Ранг:</font> <font color="orange">'.str_replace('T',' ',$res->Body->GetSectorByCoordinateResponse->GetSectorByCoordinateResult->AllianceRankId).'</font>':'';	
	$sector.='</td></tr></table>';
	$sector.='<font size=0.9> Обновление:</font> <font size=0.9>'.str_replace('T',' ',$res->Body->GetSectorByCoordinateResponse->GetSectorByCoordinateResult->LastUpdate).'</font><br />';		
	
	
	$resh=simplexml_load_string(str_replace('soap:','',$db->DJDee($_POST['x'],$_POST['y'],'',"1")));

	
	$arr=Array();
	foreach ($resh->Body->GetSectorHistoryByCoordinateResponse->GetSectorHistoryByCoordinateResult->SectorHistoryInfo as $info) {
      if($info->ChangeType=='CHANGE_ALLIANCE') 
	 {
	 if($info->Before!=0) array_push($arr,$info->Before);
	 else $info->Before='Нет альянса';
	 if($info->After!=0) array_push($arr,$info->After);
	 else $info->After='Нет альянса';
	}
	}
	array_unique($arr);
	if(count($arr)>0) 
	{
	$als=json_decode($me->GetAlliances($arr),true); 
	}

	foreach ($resh->Body->GetSectorHistoryByCoordinateResponse->GetSectorHistoryByCoordinateResult->SectorHistoryInfo as $info) {
    $history.='<br />';
	if($info->ChangeType=='CHANGE_ALLIANCE') $history.='<font color="red">Смена альянса:<br /></font>';
	if($info->ChangeType=='CHANGE_SECTORNAME') $history.='<font color="yellow">Изменение имени сектора:<br /></font>';
	if($info->ChangeType=='CHANGE_USERNAME') $history.='<font color="#ff33ff">Изменение имени аккаунта:<br /></font>';
	 $history.='Дата:'.str_replace('T',' ',$info->LastUpdate).'<br />';
	 $history.='<font color="green">'.alname($info->Before,$als).'</font> => <font color="green">'.alname($info->After,$als).'</font><br />';
	}
}
	$db->close_connection();	
	}

	


	

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
	<body>
<? include "header.php"; ?>
<div class="frame" style=" width:1050px; margin:10px;">


<div class="header">
<div class="hleft"></div>
<div class="hright"></div>
<div class="hmainfull"><div><?php echo mb_convert_encoding('История','cp1251','utf-8'); ?></div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 40px 5px 40px;">	

<?php
$_POST['x']=($_POST['x']=='')? 0:$_POST['x'];
$_POST['y']=($_POST['y']=='')? 0:$_POST['y'];

	echo '<fieldset><legend>Проверить историю сектора</legend><div id="check">';
	echo '<form action="history.php" method="POST">';
	echo 'x:<input type="text" id="x" name="x"  value="0" SIZE=5 />&nbsp;&nbsp;&nbsp;';
	echo 'y:<input type="text" id="y" name="y"  value="0" SIZE=5 />&nbsp;&nbsp;или&nbsp;&nbsp;';
	echo 'vk:<input type="text" id="vk" name="vk"  value="" SIZE=15 />&nbsp&nbsp&nbsp&nbsp';
	
	echo '<input name="submit" type="submit" value="Проверить"/></form></div></fieldset><br />';
if($sector!='')	echo '<fieldset><legend>Сектор</legend><div id="sector">'.mb_convert_encoding($sector,'cp1251','utf-8').'</div></fieldset><br />';
if($history!='') echo '<fieldset><legend>История</legend><div id="history">'.mb_convert_encoding($history,'cp1251','utf-8').'</div></fieldset><br />';

}
else die('Давай до свидания!');
?>
</div>
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>

 
</body>
</html>