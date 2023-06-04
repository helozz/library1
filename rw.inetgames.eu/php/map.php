<?php
session_start();
//map
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
<?php
require_once("config.php");	
include "header.php";
$hash = $_SESSION['hash'];
$calchash = md5(CLIENT_ID.''.$_SESSION['r_log'].''.SECRET);
if ($hash == $calchash)
{
		
}
else die('Давай до свидания!');
include("../auto/db_query.php");
$db=new db_query(0,"vk".$uid,$_SESSION['soc_id']);
  $query = "SELECT * FROM acl WHERE u_id='".$_SESSION['u_id']."'";
  $data = mysql_query($query);
  $row = mysql_fetch_array($data);
  $acl_list = $row['access'];
  $acl_id = explode(",",$acl_list);
  $counter = 0;
  $res=Array();
  foreach($acl_id AS $a_uid)
 {
 $counter++;
		
		$query = "SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'P' AND `accounts`.`a_u_id` =".$a_uid." 
		UNION SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'R' AND `accounts`.`a_u_id` =".$a_uid.";";
		//"SELECT * FROM whaccounts WHERE a_u_id=".$a_uid." ORDER BY a_ismn DESC"; 
		//echo $query;
		$data = mysql_query($query);
		$row = mysql_fetch_array($data);
		$cnt = 0;
		do
		{
		$tmp="{&quot;m&quot;:{&quot;x&quot;:".$row['a_x'].",&quot;y&quot;:".$row['a_y']."},&quot;t&quot;:&quot;".$row['type']."&quot;,&quot;n&quot;:&quot;".$row['a_aka']."&quot;}";
		if(!empty($row['a_x']))array_push($res,$tmp);
		}
		while ($row = mysql_fetch_array($data));

}

$query = "SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND (`options`.`type` = 'M' OR `options`.`type` = 'O' OR `options`.`type` = 'D' OR `options`.`type` = 'I') "; 
	$data = mysql_query($query);	
$row = mysql_fetch_array($data);
$data = mysql_query($query);
		$row = mysql_fetch_array($data);
		$cnt = 0;
		do
		{
		$tmp="{&quot;m&quot;:{&quot;x&quot;:".$row['a_x'].",&quot;y&quot;:".$row['a_y']."},&quot;t&quot;:&quot;".$row['type']."&quot;,&quot;n&quot;:&quot;".$row['a_aka']."&quot;}";
		if(!empty($row['a_x']))array_push($res,$tmp);
		}
		while ($row = mysql_fetch_array($data));


$jsmap=json_encode($res);
$jsmap=str_replace('"{','{',$jsmap);
$jsmap=str_replace('}"','}',$jsmap);
$jsmap=str_replace('"','&quot;',$jsmap);
//$jsmap=str_replace('\\','',$jsmap);
$datamap="{&quot;map0&quot;:".$jsmap."}";

//echo $datamap;



?>
<div class="frame" style=" width:800px; margin:10px;">
<div class="header">
<div class="hleft"></div>
<div class="hright"></div>


<div class="hmainfull"><div>Карта</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 20px 5px 20px; padding-top:5px;">	

<div id="flashContent">
			<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="750" height="750" id="map" align="middle">
				<param name="movie" value="map.swf" />
				<param name="quality" value="high" />
				<param name="bgcolor" value="#0000000" />
				<param name="play" value="true" />
				<param name="loop" value="true" />
				<param name="wmode" value="window" />
				<param name="scale" value="showall" />
				<param name="menu" value="true" />
				<param name="devicefont" value="false" />
				<param name="salign" value="" />
				<param name="FlashVars" value="accs=<?echo $datamap;?>" />
				<param name="allowScriptAccess" value="sameDomain" />
				<!--[if !IE]>-->
				<object type="application/x-shockwave-flash" data="map.swf" width="750" height="750">
					<param name="movie" value="map.swf" />
					<param name="quality" value="high" />
					<param name="bgcolor" value="#0000000" />
					<param name="play" value="true" />
					<param name="loop" value="true" />
					<param name="wmode" value="window" />
					<param name="scale" value="showall" />
					<param name="menu" value="true" />
					<param name="devicefont" value="false" />
					<param name="salign" value="" />
					<param name="FlashVars" value="accs=<?echo $datamap;?>" />
					<param name="allowScriptAccess" value="sameDomain" />
				<!--<![endif]-->
					<a href="http://www.adobe.com/go/getflash">
						<img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Загрузить Adobe Flash Player" />
					</a>
				<!--[if !IE]>-->
				</object>
				<!--<![endif]-->
			</object>
		</div>

</div>
</br>
</br>
</br>
</br>
</div>
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>
</div>
</div>
</body>
</html>