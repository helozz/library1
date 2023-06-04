<?php
// ver 0.1

if (isset($_GET['t']))
{	
	session_start();
	require_once("../auto/db_query.php");
	require_once("config.php");						
	$db=new db_query();
	
	$uname= $db->get_acc($_SESSION['r_log'],'',$_GET['n']);
	
	$db->add_record($_GET['i'],$_GET['x'],$_GET['y'],$uname,$_GET['u'],$_GET['t'],$_GET['m'],microtime(true)*1000);
	$db->close_connection();
	
}
?>