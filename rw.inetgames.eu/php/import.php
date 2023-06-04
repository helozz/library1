<?php
// ver 1.1
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=windows-1251" />
		<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE"/>
		<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE"/>
		<link href="../css/main.css" rel="stylesheet" type="text/css" />
		<link href="../css/ui-darkness/jquery-ui-1.9.1.custom.css" rel="stylesheet">
		<script src="../js/jquery-1.8.2.js"></script>
		<script src="../js/jquery-ui-1.9.1.custom.js"></script>
	</head>	
	<body>
<?php
require_once("config.php");						
include "header.php";
require_once("../auto/db_query.php");
if (isset($_GET['uid']) )
{
	$auid = $_GET['uid'];
}
else $auid = $_SESSION['soc_id'];
$db=new db_query(0,"vk".$auid,$auid);
$uinfo = $db->get_acc($auid,'','vk'.$auid);
$accname = iconv('utf8','cp1251',$uinfo);

//echo 'f uid:'.$_SESSION['u_id'];
//echo 'f log:'.$_SESSION['soc_id'];

if(isset($_POST['submit']) )
{		
		//$file_array = file("List_accs.txt"); // Считывание файла в массив $file_array
		$file_array = explode("\n", $_POST['impdata']); 
		$err = array();	
		if ($file_array != NULL)
		{
			
			foreach ($file_array AS $elem)
			{
				$castl = $db->castle_name(rand(1,1130));
				$castle = iconv('utf8','cp1251',$castl);
				$data = $db->get_user_proxies($auid);
				if ($data==-1) echo '<br>нет списка прокси у текущего пользователя<br>';
				$proxy_ip = explode(';',$data);
				$proxy =explode('-', $proxy_ip[0]); 
				$acc = explode(' ', $elem);
				$nickn = $acc[1];
				$soc = $acc[2];
				$auth = $acc[3];
				$photo = $acc[4];
				$login = $acc[5];
				$pass = $acc[6];
				if ($_POST['ch1'] != NULL) $autob = 1;
				else $autob = 0;
				$r = $db->get_sid("vk".$soc);
				if ($r==0)
				{
						//			insert to acc
						$res=$db->add_account2($auid,"",iconv('cp1251','utf8',$acc[0]),iconv('cp1251','utf8',$acc[1]),iconv('cp1251','utf8',$nickn),"vk".$soc,$auth);
						//echo $acc[0].','.$acc[1].','.$nickn.','.'vk'.$soc.','.$auth.' - '.$proxy[0].'<br>';
						if ($res=="Ok") 
						{
						$err[] = "Account added OK";
						// add e-mail
						if (($login!="")&&($pass!=""))
						{
							$res=$db->add_account3($login,$soc,$pass);
							if ($res="Ok") $err[] = "mail-pass added OK ";
							else  $err[] = "mail-pass insert error ";
						}
						$rs1 = $db->options_init("vk".$soc,$autob);
						if ($rs1=="Ok") 
							{
								$err[] = "Options added OK ";
								$rs2 = $db->set_user_proxies($auid, $proxy[0], "vk".$soc);
								if ($rs2=="Ok") $err[] = "Proxy added OK ";
								else $err[] = "Proxy insert error ";
								$par = iconv('cp1251','utf8', $castle);
								if ($par!="") $db->add_task("vk".$soc,"C","SectorName",$par);
								//$cls='C'
								//: $type=SectorName
								//$par=имя
							}
						else 
						{
							$err[] = "Options insert error ";
							$res = $db->del_account($auid,'',"vk".$soc);
						}			
						}
						else $err[] = "Error adding";
				}
				else   // чисто обновляем ключ и ящик
				{
					$res = $db->set_auth("vk".$soc, $auth);
					if ($res) 
					{
						$err[] = "Account updated OK";
					}
					else $err[] = "Account update error";					
					// add e-mail
					if (($login!="")&&($pass!=""))
					{
						$res=$db->add_account3($login,$soc,$pass);
						if ($res="Ok") $err[] = "mail-pass added OK ";
						else  $err[] = "mail-pass insert error ";
					}
				}
			}
	    }
    
}

$data = $db->get_user_proxies($auid);
if ($data==-1) echo '<br>нет списка прокси у текущего пользователя<br>';
echo $accname.'<br>'; 

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
<div class="hmainfull"><div>Импорт аккаунтов</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 20px 5px 20px; padding-top:5px;">	
							<div class="normal_text">					
							Правила оформления: <br />Имя Фамилия ВКАйди Ключ Ссылка_на_фото(опционально) логин(опционально) пароль(опционально)<br /><br />
							Пример: <br />Иван Иванов 11112222 aaaabbbbcccc111122223333ddddeeee http://cs00000.userapi.com/u11112222/a_3abe4dd.jpg<br />
							petya@mail.ru password<br /><br />
							<form action="import.php?uid=<?echo $auid?>" method="POST">
							<tr><td>Данные из файла:</td></tr><tr><td><textarea rows="15" cols="85" name="impdata"></textarea></td></tr>
							<p>Автозастройка:  <input type="checkbox" name="ch1" checked></p>							
						    <p><div align="left"><input name="submit" type="submit" value=" Импорт "></div></p>
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