<?php
session_start();
if (isset($_POST['go']))
{
	$_SESSION['r_uid']  = $_SESSION['u_id'];
    $_SESSION['u_id'] = $_POST['u'];
    $_SESSION['r_log']  = $_SESSION['soc_id'];
    require_once("config.php");
	require_once("../auto/_dbsettings.php");
	$connection = mysql_connect(DBHOST,DBUSER,DBPASS);
	mysql_query("SET NAMES 'utf8'");
	mysql_select_db(DBNAME);
	mysql_set_charset('utf8');
	if($connection == FALSE) die('no db');
	$query = "SELECT * FROM users WHERE u_id='".$_SESSION['u_id']."'";
	$data = mysql_query($query);
	if ((mysql_num_rows($data) > 0))
	{	
		$row = mysql_fetch_array($data);
		if ($row) $_SESSION['soc_id'] = $row['u_log'];
	}
	else die("no data");
	mysql_close($connection);
    $_SESSION['hash'] = md5(CLIENT_ID.''.$_SESSION['r_log'].''.SECRET);
	header('Location: manager.php?uid='.$_SESSION['soc_id']);
}
else die("Давай до свидания!");
?>