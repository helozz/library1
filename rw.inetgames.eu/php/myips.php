<?php
// ver 1.0
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=windows-1251" />
		<link href="../css/main.css" rel="stylesheet" type="text/css" />
	</head>	
	<body>
<?php
require_once("config.php");						
include "header.php";
require_once("../auto/db_query.php");
$db=new db_query(0,"vk".$_SESSION['soc_id'],$_SESSION['soc_id']);
$data = $db->get_user_proxies($_SESSION['soc_id']);
if ($data==-1) echo '<br>нет списка прокси у текущего пользователя<br>';
$proxy_ip = explode(';',$data);
//get_proxy($vk);  - это один по привязанному акку
$uid = $_GET['uid'];
if(isset($_POST['submit']) )
{		
	$uid = $_GET['uid'];
	
    
}

?>

	
							<p>
							<?
							   if (!empty($err))
								{
									foreach($err AS $error)
						         {print " - ".$error."<br>";}
						      }
							?>
							</p>
<div class="frame" style=" width:800px; margin:10px;">
<div class="header">
<div class="hleft"></div>
<div class="hright"></div>
<div class="hmainfull"><div>Мои IP</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 20px 5px 20px; padding-top:5px;">	
							<div class="normal_text">						
													
							<?php
							$query  = "SELECT * FROM accounts WHERE a_u_id='".$_SESSION['u_id']."'";
							$data = mysql_query($query);
							$row = mysql_fetch_array($data);
							$cnt = 0;
							echo '<table align="center" style="width: 80%;">';
							do
							{
								$cnt=$cnt+1;
								$cc = 0;
								$soc_uid=str_replace('vk','',$row['a_soc']);
								$res = $db->get_proxy($row['a_soc']);
								$ip = explode(';',$res);
								$pr = explode('-',$proxy_ip[0]);
								$info = explode(';',$db->get_info($row['a_soc']));
								if ($ip[0] == '8.8.8.8:80') $ip[0] = ''; 
								if ($ip[0] == $pr[0]) $cc = $pr[1];
								echo '<tr><td>'.$cnt.'. <a href="upacc.php?uid='.$soc_uid.'" title="редактировать">'.iconv('utf8','cp1251',$row['a_n']).' </a></td>';
								echo '<td><input name="proxy'.$cnt.'" type="text" value="'.$ip[0].'" ></td><td>'.$info[5].'</td></tr>';
								
							}
							while ($row = mysql_fetch_array($data)) ;
							echo '</table>';
							?>
						   </div>
	</div>
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>
</div>
</div>
	</body>
	
</html>