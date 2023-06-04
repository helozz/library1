<?php
//session_set_cookie_params(10800);
ini_set('session.gc_maxlifetime', 43200);
ini_set('session.cookie_lifetime', 43200);
//ini_set('session.save_path', $_SERVER['DOCUMENT_ROOT'] .'/sessions/');
session_start();
require_once("config.php");
require_once("../auto/db_query.php");
$uid = $_GET['uid'];
$_SESSION['soc_id']  = $uid;
//setcookie("TestCookie", $value, time()+3600);
$_SESSION['uname']   = $_GET['first_name'];
$_SESSION['usname']  = $_GET['last_name'];
$_SESSION['uphoto']  = $_GET['photo'];
$_SESSION['hash']    = $_GET['hash'];
$hash = $_GET['hash'];
$calchash = md5(CLIENT_ID.''.$_SESSION['soc_id'].''.SECRET);
if ($hash == $calchash)
{
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<link href="../css/ui-darkness/jquery-ui-1.9.1.custom.css" rel="stylesheet">
<script src="../js/jquery-1.8.2.js"></script>
<script src="../js/jquery-ui-1.9.1.custom.js"></script>
<script>
	$(function() {
		$( "#radio" ).buttonset();
		$( "input[type=submit], a, button" )
			.button()
			.click(function( event ) {
				//event.preventDefault();
			});
	});

var myRadioValue;
function radioValue(jqRadioButton){
	if (jqRadioButton.length) {
		myRadioValue = jqRadioButton.val();
	}
	else {
		myRadioValue = 0;
	}
}

$(document).ready(function () {
  $('input[name=radio]:radio').click(function () {   //Hook the click event for selected elements
    radioValue($('input[name=radio]:radio:checked'));
	$('#hid').val(myRadioValue);
  });
  radioValue($('input[name=radio]:radio:checked')); //check for value on page load
});
</script>
<?php

$db=new db_query(0,"vk".$uid,$uid);
$res = $db->get_user_id($uid);

if ($res > 0)
{
	$_SESSION['u_id'] = $res; 
	$query = "SELECT * FROM acl WHERE u_id='".$_SESSION['u_id']."'";
	$data = mysql_query($query);
	$row = mysql_fetch_array($data);
	$acl_list = $row['access'];
	$acl_id = explode(",",$acl_list);
	$counter = 0;	
	foreach($acl_id AS $a_uid)
	{	
	  $counter++;
	  $query = "SELECT * FROM acl WHERE u_id='".$a_uid."'";
	  $data = mysql_query($query);
	  $row = mysql_fetch_array($data);
	  $user[] = iconv('utf8','cp1251',$row['name']);
	  $useruid[] = $row['u_id'];
	  //echo $FIO;
	}
		
}
else 
	{
	die('Аккаунта нет в системе.');
	}
}
else die('Давай до свидания!');
$db->close_connection();
?>

<script type="text/javascript">
	
</script>
</head>
<body>

	<div id="radio">
<? 

	$i=0;
	foreach ($user AS $usert)
	{	
		$i++;
		echo '<input type="radio" id="radio'.$i.'" name="radio" value="'.$useruid[$i-1].'"/><label for="radio'.$i.'">'.$usert.'</label>';
	}
?> 
	</div>
<form action="switch.php" method="POST">
    <input type="hidden" id="hid" name="u" value=""/>
	<input type="submit" name="go" value="Выбрать"/>
</form>
</body>
</html>