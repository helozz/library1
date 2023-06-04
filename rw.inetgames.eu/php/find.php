<?php
// ver 1.0

if (isset($_GET['x']) && isset($_GET['x']))
{	
	session_start();
	require_once("../auto/db_query.php");
	require_once("../auto/TDApi.php");
	//require_once("../auto/TDdata.php");
	
	if($_SESSION['r_log'])
	{
	$db=new db_query();
	$query="SELECT * FROM `accounts` WHERE `a_auth`<>'' and `a_u_id`<99 LIMIT 1;";
	$data = mysql_query($query);
	$row = mysql_fetch_array($data);
	$db->close_connection();
	$db=new db_query(0,$row['a_soc'],$_SESSION['soc_id']);
	$alert=explode(';',$db->get_alert_info($row['a_soc']));
	$me=new TDApi($row['a_soc'],$row['a_auth'],$db->friends,$db->v,$db->referer,$db->proxy,$db->proxypwd,$db->origin,$alert[4]);
	$tres=$me->GetId($_GET['x'],$_GET['y'],$_GET['n']);
	echo $tres;
	}
	else echo 0;
}
	else echo 0;
?>