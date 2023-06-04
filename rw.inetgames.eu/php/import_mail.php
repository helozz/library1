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
				$acc = explode(':', $elem);
				$nickn = $acc[1];
				$soc = $acc[0];
				$pass = $acc[2];

				//			insert to acc
				$res=$db->add_account3($nickn,$soc,$pass);

				if ($res=="Ok") 
				{
					$err[] = "Account added OK";
				}
			else $err[] = "Error adding";
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
							Правила оформления: <br />ВКАйди:логин:пасс<br /><br />

							<form action="import_mail.php?uid=<?echo $auid?>" method="POST">
							<tr><td>Данные из файла:</td></tr><tr><td><textarea rows="15" cols="85" name="impdata"></textarea></td></tr>
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