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
require_once("func.php");
require_once("../auto/db_query.php");
$db=new db_query(0,"vk".$_SESSION['soc_id'],$_SESSION['soc_id']);

$query = "SELECT * FROM acl WHERE u_id='".$_SESSION['u_id']."'";
$data = mysql_query($query);
$row = mysql_fetch_array($data);
$trade = $row['trader'];
//echo var_dump($data);

$hash = $_SESSION['hash'];
$calchash = md5(CLIENT_ID.''.$_SESSION['r_log'].''.SECRET);
if ($hash != $calchash) die('Давай до свидания!');

if(isset($_POST['submit']) )
{
    $err = array();
    if ($trade==9)
    {

        $nickn = mysql_real_escape_string(iconv('cp1251','utf8',$_POST['name']));
        $uname =explode(" ", mysql_real_escape_string(iconv('cp1251','utf8',$_POST['fio'])));
        $ava = mysql_real_escape_string($_POST['ava']);
        $x = $_POST['X'];
        $y = $_POST['Y'];
        $sid = $_POST['sec_id'];
		$res=$db->add_account2($_SESSION['soc_id'],'',$uname[0],$uname[1],$nickn,$_POST['soc_id'],$_POST['auth_key']);
		if ($res=="Ok") 
        {
            $err[] = "Account added OK";
            $rs1 = $db->options_init($_POST['soc_id'],0);
            if ($rs1=="Ok")
            {
                $err[] = "Options added OK ";
                $query = "UPDATE `options` SET `type`='R',`build`=0,`techs`=0,`quests`=0,`save_off`=0,`save_def`=0,`alert`=0 WHERE `o_soc`='".$_POST['soc_id']."'";
                $res = mysql_query($query);
                /** смена на мейн */
                $r = $db->options_type_change($_POST['soc_id'],"M");
				$query = "UPDATE  `accounts`  SET `a_ava`='".$ava."',  `a_x`=".$x.", `a_y`=".$y.", `a_sid`=".$sid." WHERE `a_soc`='".$_POST['soc_id']."'";
				//echo $query;
				$res = mysql_query($query);
				//echo $res;
            }
            else $err[] = "Options insert error ";
        }
        else $err[] = "Error adding";
    }
    else
    {
        $uinfo = GetVKInfo($_POST['soc_id']);
        $uname = $uinfo["first_name"];
        $ulname = $uinfo["last_name"];
	    if ((count($err) == 0)&&($_POST['soc_id']!=""))
	    {    
			$castle = mysql_real_escape_string($_POST['sectorname']);
			$proxy = $_POST['proxy'];
			$nickn = mysql_real_escape_string(iconv('cp1251','utf8',$_POST['name']));
			if ($_POST['ch1'] != NULL) $autob = 1;
			else $autob = 0;
			//			insert to acc
			$res=$db->add_account2($_SESSION['soc_id'],'',$uname,$ulname,$nickn,"vk".$_POST['soc_id'],$_POST['auth_key']);
			if ($res=="Ok") 
			{
				$err[] = "Account added OK";
				$rs1 = $db->options_init("vk".$_POST['soc_id'],$autob);
				if ($rs1=="Ok") 
					{
						$err[] = "Options added OK ";
						$rs2 = $db->set_user_proxies($_SESSION['soc_id'],$proxy, "vk".$_POST['soc_id']);
						if ($rs2=="Ok") $err[] = "Proxy added OK ";
						else $err[] = "Proxy insert error ";
						$par = iconv('cp1251','utf8', $_POST['sectorname']);
						if ($par!="") $db->add_task("vk".$_POST['soc_id'],"C","SectorName",$par);
						//$cls='C'
						//: $type=SectorName
						//$par=имя
					}
				else 
				{
					$err[] = "Options insert error ";
					$res = $db->del_account($_SESSION['soc_id'],'',"vk".$_POST['soc_id']);
				}			
			}
			else $err[] = "Error adding";
			
	    }
    }
}

$data = $db->get_user_proxies($_SESSION['soc_id']);
if ($data==-1) echo '<br>нет списка прокси у текущего пользователя<br>';
$proxy_ip = explode(';',$data);
$castl = $db->castle_name(rand(1,1130));
$castle = iconv('utf8','cp1251',$castl);


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
<div class="hmainfull"><div>Добавить аккаунт</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 20px 5px 20px; padding-top:5px;">	
							<div class="normal_text">
                            <div class="ui-widget">
                                    <div class="ui-state-error ui-corner-all" style="padding: 0 .7em;">
                                        <p><span class="ui-icon ui-icon-alert" style="float: left; margin-right: .3em;"></span>
                                            <strong>!!!</strong><? if ($trade!=9) echo 'А ты проверил галочку автозастройки???';
                                            else echo 'Добавление клиента, внимательно проверьте все поля id должно быть с vk'; ?></p>
                                    </div>
                             </div>
                             <p><font color="#CCEE00" size="2"> Заполните все поля, помеченные *</font></p>

                            <? if ($trade==9)
                            {

                                echo '<table><tr><td>X:<input name="X" type="text" id="coorx" SIZE=4/> </td>';
                                echo '<td>Y:<input name="Y" type="text" id="coory" SIZE=4/> </td>';
                                echo '<td><button id="but_get" >Кто это?</button></td>';
                                echo '</tr></table>';
                                echo '<form action="register.php" method="POST">';
                                echo '<p>Ник: *<br> <input name="name" type="text"  SIZE=20> </p>';
                                echo '<p>id: *<br> <input name="soc_id" id="soc_id"  type="text"  SIZE=20> </p>';
								echo '<p>auth_key: *<br> <input name="auth_key" type="text"  SIZE=40></p>'; 
                                echo '<p>ФИО: *<br> <input name="fio" id="fio" type="text"  SIZE=20> </p>';
                                echo '<p>№ сектора: *<br> <input name="sec_id" id="sid" type="text"  SIZE=5> </p>';
                                echo '<p>Ава: *<br> <input name="ava" id="ava" type="text"  SIZE=20> </p>';
                                echo '<input name="X" type="hidden" id="c_x" SIZE=4/>';
                                echo '<input name="Y" type="hidden" id="c_y" SIZE=4/>';
                            }

                            else
                            {
                                echo '<form action="register.php" method="POST">';
                                echo '<p>Ник: *<br> <input name="name" type="text"  SIZE=20> </p>
							<p>id: *<br> <input name="soc_id" type="text"  SIZE=20> </p> 						  							
													
							<p>Имя замка: <br> <input name="sectorname" type="text" value ="'.$castle.'" SIZE=40></p>
							<p>Если имя замка будет пустым, то в игре оно останется стандартным</p>
							<p>auth_key: *<br> <input name="auth_key" type="text"  SIZE=40></p> 						
							<p>Выберите IP: <br>
							<select size="1" name="proxy">';
							for($i=0; $i<count($proxy_ip); $i++)
								{	
									$pr=explode('-',$proxy_ip[$i]);
									echo '<option value="'.$pr[0].'">'.$pr[0].'  использовано '.$pr[1].' раз </option>';
								}
							echo '</select></p>
							<p>Автозастройка:  <input type="checkbox" name="ch1" checked="checked"></p>';
                            }
                            ?>
						    <p><div align="left"><input name="submit" type="submit" value=" Регистрация "></div></p>
						   </form>
						   </div>
	</div>
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>
</div>
</div>
<script type="text/javascript">
        $('#but_get').on({
            'click': function(){
                var x = $('#coorx').val();
                var y = $('#coory').val();
                var url = 'find.php?x='+x+'&y='+y+'&n=1';
                $.get(url, function(data)
                {
                    if ((data==";")||(data=="0"))
                    {
                        alert("Неверный получатель!!!");
                    }
                    else
                    {
                        var info = data.split(";",6);
                        $('#fio').val(info[1]);
                        $('#ava').val(info[2]);
                        $('#sid').val(info[0]);
                        $('#soc_id').val(info[3]);
                        $('#c_x').val(info[4]);
                        $('#c_y').val(info[5]);
                    }
                });
            }
        });
 </script>
 </body>
<? 	$db->close_connection(); ?>	
</html>