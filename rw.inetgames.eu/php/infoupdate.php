<?php
// ver 1.0

if (isset($_POST['InfoUpdate']))
{	
	session_start();
	require_once("../auto/db_query.php");
	//require_once("../auto/TDApi.php");
	//require_once("../auto/TDdata.php");
	$json = str_replace('\"','"',$_POST['InfoUpdate']);
	$data = json_decode($json,true);
	//echo $json;
	$db=new db_query();
	for($i=0;$i<count($data['accs']);$i++)
	{
	$db->options_force_set($data['accs'][$i]['uid'],max(1,$db->options_force_get($data['accs'][$i]['uid'])));
	}
	
	$db->close_connection();
	echo 'Данные будут обновлены. Ожидайте';
	
}
?>