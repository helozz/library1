<?php
// ver 1.1
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
require_once("func.php");

$uid = $_GET['uid'];
$db=new db_query(0,"vk".$uid,$_SESSION['soc_id']);
$hash = $_SESSION['hash'];
$calchash = md5(CLIENT_ID.''.$_SESSION['r_log'].''.SECRET);
if ($hash != $calchash) die('Давай до свидания!');

if(isset($_POST['submit']) )
{		
		$err = array();
		$login = $db->get_login("vk".$_POST['soc_id']);
		if ($login == $_SESSION['soc_id'])
		{
			$query = "SELECT * FROM accounts WHERE a_soc='vk".$_POST['soc_id']."'";
			//echo $query;
			$data = mysql_query($query);
			if ($data and mysql_num_rows($data) > 0)
			{
				$photo = ($_POST['photolink']);
				if ($photo=="") $photo = getAvatar($_POST['soc_id']);
				$uinfo = GetVKInfo($_POST['soc_id']);	
				$FIO = $uinfo["first_name"].' '.$uinfo["last_name"];	
				$sectorname = $_POST['sectorname'];
				$nickn = (iconv('cp1251','utf8',	$_POST['name']));		
				//$query = "UPDATE `accounts` SET  a_aka='".$_POST['name']."', a_n='".$nickname."', 
				//			a_ava='".$photo."', a_auth='".$_POST['auth_key']."'
				//			WHERE `a_soc`='vk".$_POST['soc_id']."'";
				//$res = mysql_query($query);		

				$res= $db->update_account2($_SESSION['soc_id'],'',$nickn,"vk".$_POST['soc_id'],$_POST['auth_key'],$photo); 
				echo $res;				
				if ($res=="Ok") 
				{
					$err[] = "Account updated OK (".iconv('utf8','cp1251',$FIO).")";

					$db->options_type_change('vk'.$_POST['soc_id'],$_POST['acctype']);
					$res = mysql_query($query);
					$r = $db->change_user_proxies($_SESSION['soc_id'],$_POST['proxy'],"vk".$_POST['soc_id']);
					if ($r =="Ok") $err[] ="Proxy changed";
					$par = iconv('cp1251','utf8', $sectorname);
					if ($par!="") $db->add_task("vk".$_POST['soc_id'],"C","SectorName",$par);
				}
				else $err[] = "Error updating";			
			}  
		}
		else $err[] = "Нельзя редактировать чужие аккаунты!";
}

$r = $db->options_get("vk".$uid);
if ($r!='')
{
	$opt = explode(':',$r);
	$acc_type = $opt[0];
}
$data = $db->get_user_proxies($_SESSION['soc_id']);
if ($data==-1) echo '<br>нет списка прокси у текущего пользователя<br>';
$proxy_ip = explode(';',$data);

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
<div class="hmainfull"><div>Обновить аккаунт</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 20px 5px 20px; padding-top:5px;">	
							<div class="normal_text">						
							<p><font color="#CCEE00" size="2"> Заполните все поля, помеченные *</font></p>							
							<?php
							$query  = "SELECT * FROM `accounts` WHERE `a_soc` = 'vk".$uid."'";	
							$data = mysql_query($query);
							if ($data and mysql_num_rows($data) > 0)
							{	
								$row = mysql_fetch_array($data);										
								$ch1 = ($row['a_ismn']==1)?'checked':'';
								$nickn = $row['a_aka'];
								$photolink = $row['a_ava'];
								$auth_key = $row['a_auth'];
								$coor_X = $row['a_x'];
								$coor_Y = $row['a_y'];
							}
							?>
							<form action="upacc.php?uid=<? echo $uid;?>" method="POST">	
							<p>id: <br> <input name="soc_id" readonly type="text"  SIZE=20 value="<? echo $uid; ?>"> </p> 							
							<p>Ник: *<br> <input name="name" type="text" SIZE=20 value="<? echo iconv('utf8','cp1251',$nickn); ?>"> </p> 					  							
							<select id="at" size="1" name="acctype">
							<option value="M" <?php if($acc_type=="M") echo ' selected'; ?>>Мейн</option>
							<option value="O" <?php if($acc_type=="O") echo ' selected'; ?>>Офф</option>
							<option value="D" <?php if($acc_type=="D") echo ' selected'; ?>>Деф</option>
							<option value="R" <?php if($acc_type=="R") echo ' selected'; ?>>Ресовый</option>
							<option value="I" <?php if($acc_type=="I") echo ' selected'; ?>>Развед</option>
							<option value="P" <?php if($acc_type=="P") echo ' selected'; ?>>Пушинг</option>
							</select>						
							<p>Ссылка на фото: <br> <input name="photolink" type="text" SIZE=40 value="<? echo $photolink; ?>"></p>
							<p>auth_key: *<br> <input name="auth_key" type="text" SIZE=40 value="<? echo $auth_key; ?>"></p> 
							<p>Название сектора: <br> <input name="sectorname" type="text" SIZE=40 ></p>						
							<p>Выберите IP: <br>
							<select size="1" name="proxy">
							<? for($i=0; $i<count($proxy_ip); $i++)
								{	
									$pr=explode('-',$proxy_ip[$i]);
									$r = $db->get_proxy($row['a_soc']);
									$ip = explode(';',$r);
									echo '<option value="'.$pr[0].'"';
									if ($pr[0] == $ip[0]) echo ' selected';
									echo '>'.$pr[0].'  использовано '.$pr[1].' раз </option>';
								}
							?>
							</select></p>	  							
						    <div align="left"><input name="submit" type="submit" value=" Обновить "></div>
						   </form>
						   </div>
	</div>
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>
</div>
</div>  
	</body>
	<? 	$db->close_connection(); ?>
</html>