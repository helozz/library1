<?php
// ver 2.3
session_start();
require_once("config.php");
include("../auto/db_query.php");
$uid = $_SESSION['soc_id'];
$uname = $_SESSION['uname'];
$usname = $_SESSION['usname'];
$uphoto = $_SESSION['uphoto'];
$hash = $_SESSION['hash'];
$_SESSION['hash']    = $hash;
$calchash = md5(CLIENT_ID.''.$_SESSION['r_log'].''.SECRET);
if ($hash !=$calchash) die('Давай до свидания!');
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<link href="../css/ui-darkness/jquery-ui-1.9.1.custom.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery-1.8.2.js"></script>
<script src="../js/jquery-ui-1.9.1.custom.js"></script>
<script>
	$(function() {
			
					
		$( "#button" ).button();		
				
		$( "#tabs" ).tabs();
				
		$( "#dialog" ).dialog({
			autoOpen: false,
			width: 400,
			buttons: [
				{
					text: "Ok",
					click: function() {
						$( this ).dialog( "close" );
					}
				},
				{
					text: "Cancel",
					click: function() {
						$( this ).dialog( "close" );
					}
				}
			]
		});

		// Link to open the dialog
		$( "#dialog-link" ).click(function( event ) {
			$( "#dialog" ).dialog( "open" );
			event.preventDefault();
		});
		

	});

</script>
<style>	
	
	#dialog-link {
		padding: .4em 1em .4em 0px;
		text-decoration: none;
		position: relative;
	}
	#dialog-link span.ui-icon {
		margin: 0 5px 0 0;
		position: absolute;
		left: .2em;
		top: 50%;
		margin-top: -8px;
	}
	#icons {
		margin: 0;
		padding: 0;
	}
	#icons li {
		margin: 2px;
		position: relative;
		padding: 4px 0;
		cursor: pointer;
		float: left;
		list-style: none;
	}
	#icons span.ui-icon {
		float: left;
		margin: 0 4px;
	}
	.ui-state-hover, .ui-widget-content .ui-state-hover, .ui-widget-header .ui-state-hover, .ui-state-focus, .ui-widget-content .ui-state-focus, .ui-widget-header .ui-state-focus { border: 1px solid #59b4d4; font-weight: bold; color: #ffffff; }
	
	.ui-widget-content {
		border: 0px;
		color: #E7C335;
	}
	
		.selectable .ui-selecting { background: #FECA40; }
		.selectable .ui-selected { background: #F39814; color: white; }
		.selectable { list-style-type: none; margin: 0; padding: 0; width: 100px; }
		.selectable li { margin: 2px; padding: 1px; float: left; width: 25px; height: 25px; font-size:0.6em; text-align: center; }
	</style>

</head>
<body>
<?php
include "header.php";
$db=new db_query(0,"vk".$uid,$_SESSION['u_id']);


if(isset($_GET['del']))
{
	$uid = $_GET['del'];
	//$query  = "DELETE FROM `accounts` WHERE `a_soc` = 'vk".$uid."'";
	$res = $db->del_account($_SESSION['soc_id'],'',"vk".$uid);
	echo $res;
	/*$query = "SELECT * FROM `accounts` WHERE `a_u_id` = '4' AND `a_auth`=''";
	echo $query;
	$data = mysql_query($query);
	echo $data;
	$row = mysql_fetch_array($data);
	echo $row['a_soc'];
	do
	{
		$res = $db->del_account($_SESSION['soc_id'],'',$row['a_soc']);
		echo $res."<br>";
	}
	while ($row = mysql_fetch_array($data)) ; */
}
if(isset($_GET['delmsg']))
{
	$uid = $_GET['delmsg'];
	$mes=$db->get_messages($_SESSION['soc_id']);
	$mes = iconv('utf8','cp1251',$mes);
	$messages = explode(';',$mes);
	foreach ($messages AS $messg)
	{
		$mg = explode(':', $messg);
		$r = $db->remove_message($mg[0]);
	}
}

$mes=$db->get_messages($_SESSION['soc_id']);
$mes = iconv('utf8','cp1251',$mes);
$messages = explode(';',$mes);
$msg = "";
$cn =0;
foreach ($messages AS $messg)
{
	$cn++;
	$mg = explode('+', $messg);
	$msg = $msg.$cn.'.'.$mg[2]."<br>"; 
	if ($mg[2]=='') $cn=0;
}

if ($cn>0)
{
	echo '<a href="#" id="dialog-link" title="Прочесть сообщения"><img src="../img/mail2.png"></a>'	;
	echo '<a href="manager.php?delmsg='.$_SESSION['soc_id'].'"  title="Стереть все сообщения"><img src="../img/trash.png"></a>';
	echo '<div id="dialog" title="Почта">';
	echo '<p>'.$msg.'</p>';
	echo '</div>';
}

$query = "SELECT * FROM `accounts` WHERE `a_soc`='vk".$_SESSION['soc_id']."'";
$data = mysql_query($query);
if ((mysql_num_rows($data) > 0))
	{	
		$row = mysql_fetch_array($data);
		if ($row) $uphoto= $row['a_ava'];
	}	
?>
<div class="frame" style=" width:1050px; margin:10px;">
<div class="header">
<div class="hleft"></div>
<div class="hright"></div>
<div class="hmainfull"><div>Аккаунты</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:1px 20px 5px 20px;">
<div align="right" style="padding:1px 20px 5px 20px;"><?php echo '<img src="'.$uphoto.'" id="ava" align="left" ulog="'.$uid.'" width="50" height="50" style="border:2px solid #c0ec00;"/>'; ?>
	
<img src="../img/alertm/o0.png" height="50" Width="50" class="orange-idle" id="o_main"/>
<img src="../img/alertm/r0.png" height="50" Width="50" class="red-idle" id="r_main"/>
<img src="../img/alertm/b0.png" height="50" Width="50" class="blue-idle" id="b_main"/>
</div>
<!-- Tabs -->
<div id="tabs">

<?php

    $query = "SELECT * FROM settings WHERE u_id = ".$_SESSION['u_id'];
    $data = mysql_query($query);
    $row = mysql_fetch_array($data);
    if ($row) $view = $row["view_scheme"];
    else echo "Проверьте настройки";
    $query = "SELECT * FROM acl WHERE u_id='".$_SESSION['r_uid']."'";
 // echo 'a_uid:'.$_SESSION['a_uid'];
  $data = mysql_query($query);
  $row = mysql_fetch_array($data);
  $acl_list = $row['access'];
  $acl_id = explode(",",$acl_list);
  echo '<ul>';
  $counter = 0;
  foreach($acl_id AS $a_uid)
  {
		
	  $counter++;
	  $query = "SELECT * FROM acl WHERE u_id='".$a_uid."'";
	  $data = mysql_query($query);
	  $row = mysql_fetch_array($data);
	  $FIO = iconv('utf8','cp1251',$row['name']);
	  echo '<li><a href="#tabs-'.$counter.'">'.$FIO.'</a></li>';
  }
  echo '</ul>';
  $counter = 0;
  foreach($acl_id AS $a_uid)
 {
		$counter++;
		echo '<div id="tabs-'.$counter.'">';
		$query = "SELECT * FROM (SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'M' AND `accounts`.`a_u_id` =".$a_uid." ORDER BY `accounts`.`a_id` ASC) a
		UNION SELECT * FROM (SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'O' AND `accounts`.`a_u_id` =".$a_uid."  ORDER BY `accounts`.`a_id` ASC) b
		UNION SELECT * FROM (SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'D' AND `accounts`.`a_u_id` =".$a_uid."  ORDER BY `accounts`.`a_id` ASC) c
		UNION SELECT * FROM (SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'I' AND `accounts`.`a_u_id` =".$a_uid."  ORDER BY `accounts`.`a_id` ASC) d
		UNION SELECT * FROM (SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'P' AND `accounts`.`a_u_id` =".$a_uid."  ORDER BY `accounts`.`a_id` ASC) e
		UNION SELECT * FROM (SELECT * FROM `accounts` , `options` WHERE `accounts`.`a_soc` = `options`.`o_soc` AND `options`.`type` = 'R' AND `accounts`.`a_u_id` =".$a_uid." ORDER BY `accounts`.`a_id` ASC) f;";

		//echo $query;
		$data = mysql_query($query);
		$row = mysql_fetch_array($data);
		$cnt = 0;
		echo '<table align="center" style="width: 98%;">';
		echo '<tr><td>#. Аккаунт</td>
			  <td>ур</td>
			  <td>коорд.</td>
			  <td><img src="../img/attack.png" title="Грабеж"></img>
			  <img src="../img/occup.png" title="Оккупация"></img>
			  <img src="../img/spy.png" title="Разведка"></img></td>
			  <td>КР</td><td>AT</td><td>АС</td><td>АП</td>
			  <td>НС</td><td>РД</td><td>УД</td><td>ОК</td>
			  <td><img src="../img/gold.png"></img></td>
			  <td><img src="../img/steel.png"></img></td> 
			  <td><img src="../img/meat.png"></img></td>
			  <td><img src="../img/sap.png"></img></td>
			  <td><img src="../img/bio.png"></img></td>
			  <td>Время обн.</td></tr>';
		do
		{
			$cnt++;
			$soc_uid=str_replace('vk','',$row['a_soc']);
			$r=$db->get_info($row['a_soc']);
			$ava = $row['a_ava'];
			if ($ava == "http://vk.com/images/camera_a.gif") $ava = '<img src="http://vk.com/images/camera_a.gif" height="25" Width="25"/>';
			else $ava='';			
			$acc_info = explode(';',$r);
			//var_dump($acc_info);
			if ($acc_info[1]>9999) $ru = floor($acc_info[1]/1000).'k';
			else $ru = floor($acc_info[1]);
			if ($acc_info[2]>9999) $rt = floor($acc_info[2]/1000).'k';
			else $rt = floor($acc_info[2]);
			if ($acc_info[3]>9999) $rm = floor($acc_info[3]/1000).'k';
			else $rm = floor($acc_info[3]);		
			if ($acc_info[4]>9999) $rg = floor($acc_info[4]/1000).'k';
			else $rg = floor($acc_info[4]);
			if ($acc_info[7]>9999) $rgI = floor($acc_info[7]/1000).'k';
			else $rgI = floor($acc_info[7]);
			
			//$rg = floor($acc_info[4]);
			$ralerts = explode(':',$acc_info[6]);
			$rtim = explode(' ',$acc_info[5]);
			$rtime = $rtim[1];
			$rlvl = $acc_info[0];
            if (count($ralerts)<3)
            {
               $ralerts[0] = 0;
               $ralerts[1] = 0;
               $ralerts[2] = 0;
            }
			
			//$templamp='<span id="o1"><img src="../img/alertm/o'.$ralerts[0].'.png" height="25" Width="25" onclick="test() id="oo'.$cnt.'"/></span><span id="r1"><img src="../img/alertm/r'.$ralerts[1].'.png"  height="25" Width="25" /></span><span id="b1"><img src="../img/alertm/b'.$ralerts[2].'.png"  height="25" Width="25" /></span>';
			//$templamp = '<img src="../img/alertm/o'.$ralerts[0].'.png" height="25" Width="25" class= "orange-state" id="oo'.$cnt.'"/><img src="../img/alertm/r'.$ralerts[1].'.png"  height="25" Width="25" /><img src="../img/alertm/b'.$ralerts[2].'.png"  height="25" Width="25" />';
												
			if ($ralerts[0]==0) $templamp = '<img src="../img/alertm/o'.$ralerts[0].'.png" height="25" Width="25" class="orange-idle" id="0_'.$cnt.'" uid="'.$soc_uid.'"/>';
			if ($ralerts[0]==1) $templamp = '<img src="../img/alertm/o'.$ralerts[0].'.png" height="25" Width="25" class= "orange-clicked" id="0_'.$cnt.'" uid="'.$soc_uid.'"/>';
			if ($ralerts[0]==2) $templamp = '<img src="../img/alertm/o'.$ralerts[0].'.png" height="25" Width="25" class="orange-state" id="0_'.$cnt.'" uid="'.$soc_uid.'"/>';
			if ($ralerts[1]==0) $templamp.= '<img src="../img/alertm/r'.$ralerts[1].'.png" height="25" Width="25" class="red-idle" id="1_'.$cnt.'" uid="'.$soc_uid.'"/>';
			if ($ralerts[1]==1) $templamp.= '<img src="../img/alertm/r'.$ralerts[1].'.png" height="25" Width="25" class= "red-clicked" id="1_'.$cnt.'" uid="'.$soc_uid.'"/>';
			if ($ralerts[1]==2) $templamp.= '<img src="../img/alertm/r'.$ralerts[1].'.png" height="25" Width="25" class="red-state" id="1_'.$cnt.'" uid="'.$soc_uid.'"/>';
			if ($ralerts[2]==0) $templamp.= '<img src="../img/alertm/b'.$ralerts[2].'.png" height="25" Width="25" class="blue-idle" id="2_'.$cnt.'" uid="'.$soc_uid.'"/>';
			if ($ralerts[2]==1) $templamp.= '<img src="../img/alertm/b'.$ralerts[2].'.png" height="25" Width="25" class= "blue-clicked" id="2_'.$cnt.'" uid="'.$soc_uid.'"/>';
			if ($ralerts[2]==2) $templamp.= '<img src="../img/alertm/b'.$ralerts[2].'.png" height="25" Width="25" class="blue-state" id="2_'.$cnt.'" uid="'.$soc_uid.'"/>';
            if (($view=="old-style")||($view==""))
            {
                $accn = mb_convert_encoding($row['a_n'],'cp1251','utf-8');
                $titl = mb_convert_encoding($row['a_aka'],'cp1251','utf-8');
            }
            if ($view=="helga-style")
            {
                $accn = mb_convert_encoding($row['a_aka'],'cp1251','utf-8');
                $titl = mb_convert_encoding($row['a_n'],'cp1251','utf-8');
            }
			$accname="";
			if($row['type']=='M') $accname.="<font color=\"orange\">".$accn."</font>";
			if($row['type']=='O') $accname.="<font color=\"red\">".$accn."</font>";
			if($row['type']=='D') $accname.="<font color=\"#009900\">".$accn."</font>";
			if($row['type']=='I') $accname.="<font color=\"#0066ff\">".$accn."</font>";
			if($row['type']=='P') $accname.="<font color=\"#cc00ff\">".$accn."</font>";
			if($row['type']=='R') $accname.="<font color=\"white\">".$accn."</font>";
			//$accname = substr($accname, 0, 20);
			 
			printf("<tr>
					<td>%d. 
					<a href=\"../tw_page.php?uid=%s\" target=\"_blank\" title=\"%s\">%s</a>%s</td>
					<td><font color=\"orange\">[%d]</font></td>
					<td><font color=\"red\">(%s:%s)</font></td>
					<td><div id=\"%s\">%s</div></td>
					<td><a href=\"caravans.php?uid=%s\" title=\"Корованы\"><img src=\"../img/caravans.png\"></img></a></td>					
					<td><a href=\"attacks.php?uid=%s\" title=\"Атаки\"><img src=\"../img/Attack1.png\"></img></a></td>					
					<td><a href=\"auto.php?uid=%s\" title=\"Автопостройка армии\"><img src=\"../img/AutoArmy.png\"></img></a></td>
					<td><a href=\"autob.php?uid=%s\" title=\"Автопостройка зданий\"><img src=\"../img/AutoBuild.png\"></img></a></td>
					<td><a href=\"options.php?uid=%s\" title=\"Настройки\"><img src=\"../img/Settings.png\"></img></a></td>
					<td><a href=\"upacc.php?uid=%s\" title=\"Редактировать\"><img src=\"../img/Redactor.png\"></img></a></td>
					<td><a href=\"manager.php?del=%s\" title=\"Удалить\"><img src=\"../img/Del.png\"></img></a></td>
					<td><a href=\"grabber.php?id=%s\" title=\"Обновить ключ\"><img src=\"../img/Keys.png\"></img></a></td>				
					<td><font color=\"#009933\">%s</font></td>
					<td><font color=\"orange\">%s</font></td>
					<td><font color=\"#0066ff\">%s</font></td>
					<td><font color=\"#ff66ff\">%s</font></td>
					<td><font color=\"#ffff66\">%s</font></td>
					<td> %s</td>
					</tr>",
					$cnt, $soc_uid, $titl, $accname, $ava, $rlvl,
					$row['a_x'], $row['a_y'], $soc_uid, $templamp, $soc_uid, $soc_uid,  $soc_uid, $soc_uid, $soc_uid, $soc_uid, $soc_uid, $soc_uid,$ru,$rt,$rm,$rg,$rgI,$rtime);					
	    }
		while ($row = mysql_fetch_array($data)) ;
		echo '</table></div>';
  } 
?>
</div> 
</div>
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>
</div>
</div>
<div class = "test"></div>
<script>
$('.orange-state').on({
			'click': function(){        
		   var self = $(this);
			self.attr('src', '../img/alertm/o1.png');
			var uid = self.attr('uid');
			var lid = self.attr('id');
			$.post("call_alert.php",{"func":"refresh", "uid":uid, "p":lid}, function(data)
			{
				
			}		
	)}		
});
$('.red-state').on({
			'click': function(){        
		   var self = $(this);
			self.attr('src', '../img/alertm/r1.png');
			var uid = self.attr('uid');
			var lid = self.attr('id');
			$.post("call_alert.php",{"func":"refresh", "uid":uid, "p":lid}, function(data)
			{	
				
			}		
	)}		
});
$('.blue-state').on({
		   'click': function(){        
		   var self = $(this);
			self.attr('src', '../img/alertm/b1.png');
			var uid = self.attr('uid');
			var lid = self.attr('id');
			$.post("call_alert.php",{"func":"refresh", "uid":uid, "p":lid}, function(data)
			{	
				
			}	
	)}	
});	
$('.orange-clicked').on({
			'click': function(){        
		   var self = $(this);
		   var uid = self.attr('uid');
		   location.href = 'attacks.php?uid='+uid;
		}
});
$('.red-clicked').on({
			'click': function(){        
		   var self = $(this);
		   var uid = self.attr('uid');
		   location.href = 'attacks.php?uid='+uid;
		}
});
$('.blue-clicked').on({
			'click': function(){        
		   var self = $(this);
		   var uid = self.attr('uid');
		   location.href = 'attacks.php?uid='+uid;
		}
});
	
	function autorefresh()
	{	
		$('#o_main').attr('src', '../img/alertm/o0.png');
		$('#r_main').attr('src', '../img/alertm/r0.png');
		$('#b_main').attr('src', '../img/alertm/b0.png');
		var mainacc = $('#ava').attr('ulog');
		$.getJSON('call_alert.php?func=NY', function(data) {
			for (var i in data) {
            var row = data[i];			
			if (row.o==2) {
				if (mainacc==row.ulog) 
				{ 
					$('#o_main').attr('src', '../img/alertm/o2.png');
					if (mainacc==row.uid) 
					{
						var url = 'mailto.php?uid='+mainacc+'&mess=Your main is under attack!!1';
						$.get(url, function(data) 
						{							
							//alert(data);
						});
					}
				}
				$.each($('.orange-idle'),function() {
				if ($(this).attr('uid')==row.uid) {
					var self = $(this);
					self.attr('src', '../img/alertm/o2.png');
					self.removeClass('orange-idle');
					self.addClass('orange-state');
					//$('.test').append('<p>'+row.uid+ ' ' +row.o+' '+row.r+' '+row.b+'</p>');
				}
			})
			
			}
			if (row.r==2) {
				if (mainacc==row.ulog)  
				{
					$('#r_main').attr('src', '../img/alertm/r2.png');
					if (mainacc==row.uid) 
					{
						var url = 'mailto.php?uid='+mainacc+'&mess=Your main is under occupation!!1';
						$.get(url, function(data) 
						{							
							//alert(data);
						});
					}
				}
				$.each($('.red-idle'),function() {
				if ($(this).attr('uid')==row.uid) {
					var self = $(this);
					self.attr('src', '../img/alertm/r2.png');
					self.removeClass('red-idle');
					self.addClass('red-state');
					//$('.test').append('<p>'+row.uid+ ' ' +row.o+' '+row.r+' '+row.b+'</p>');
				}
			})
			
			}
			if (row.b==2) {
				if (mainacc==row.ulog)  {$('#b_main').attr('src', '../img/alertm/b2.png');}
				$.each($('.blue-idle'),function() {
				if ($(this).attr('uid')==row.uid) {
					var self = $(this);
					self.attr('src', '../img/alertm/b2.png');
					self.removeClass('blue-idle');
					self.addClass('blue-state');
					//$('.test').append('<p>'+row.uid+ ' ' +row.o+' '+row.r+' '+row.b+'</p>');
				}
			})
			
			}
			}})
	};
autorefresh();	
setInterval(function(){autorefresh()},120000);
</script>	
<br>
<input type="image" value="" src ="../img/foxyproxy.png" onclick="autorefresh()" title="Обновить лампочки"/>	
<div align="right">iNetGames.eu all rights reserved 2013 (c)</div>	  
</body>
<? 	$db->close_connection(); ?>
</html>