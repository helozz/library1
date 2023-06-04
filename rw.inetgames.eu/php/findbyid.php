<?php
// ver 1.0

if (isset($_GET['uid']))
{	
	session_start();
	require_once("../auto/db_query.php");
	
	if($_SESSION['r_log'])
	{
		$db1 = new db_query(0,"vk".$_SESSION['soc_id'],$_SESSION['soc_id']);
		echo $db1->get_accinfo($_GET['uid']);
		$db1->close_connection();
	}
	else echo 0;
}
	else echo 0;
?>