<?php
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
$db=new db_query(0,"vk".$_SESSION['soc_id'],$_SESSION['soc_id']);

if(isset($_POST['submit']) )
{
    $err = array();
    $theme = $_POST["theme"];
    $view = $_POST["view"];
	$sort = $_POST["sort"];
    $query = "UPDATE `settings` SET  `view_scheme` = '".$view."', `theme` ='".$theme."', `sort` ='".$sort."' WHERE `u_id`=".$_SESSION['u_id'];
    $res = mysql_query($query);
    if ($res)
    {
        $err[] = "Account updated OK";
    }
    else $err[] = "Account updated error";
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
<div class="hmainfull"><div>Настройки</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 20px 5px 20px; padding-top:5px;">	
							<div class="normal_text">
                            <div class="ui-widget">

                             </div>
                            <?
                                $query = "SELECT * FROM settings WHERE u_id = ".$_SESSION['u_id'];
                                $data = mysql_query($query);
                                $row = mysql_fetch_array($data);
                                if ($row)
                                {
                                    $view = $row["view_scheme"];
                                    $theme = $row["theme"];
									$sort = $row["sort"];
                                }

                            echo '<form action="settings.php" method="POST">';
                            echo '<p>Выберите тему: ';
							echo '<select size="1" name="theme">';
                            echo '<option value="WT"';
                            if ($theme=="WT") echo ' selected ';
                            echo '>ui-dark-war-throne</option>';
                            echo '<option value="PV"';
                            if ($theme=="PV") echo ' selected ';
                            echo '>ui-dark-war-rules</option>';
                            echo '</select></p>';
                            echo '<p>Выберите вид отображения аккаунтов: ';
                            echo '<select size="1" name="view">';
                            echo '<option value="old-style"';
                            if ($view=="old-style") echo ' selected ';
                            echo '>ФИО, ники в подсказку</option>';
                            echo '<option value="helga-style"';
                            if ($view=="helga-style") echo ' selected ';
                            echo '>Ники, ФИО в подсказку</option>';
                            echo '</select></p>';
							echo '<p>Сортировка: </p>';
							echo '<select size="1" name="sort">';
                            echo '<option value="0"';
                            if ($sort==0) echo ' selected ';
                            echo '>Мейны,Атак,Деф,Ресовые</option>';
                            echo '<option value="1"';
                            if ($sort==1) echo ' selected ';
                            echo '>По уровню(убывание)</option>';
                            echo '</select></p>';
                            ?>
						    <p><div align="left"><input name="submit" type="submit" value=" Сохранить "></div></p>
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