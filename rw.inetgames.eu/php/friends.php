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
include "header.php";
require_once("../auto/db_query.php");
require_once("func.php");
$db=new db_query(3,"vk".$_SESSION['soc_id'],$_SESSION['soc_id']);
$friendlist = $db->friends;
$friendlist=str_replace('"','',$friendlist);
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
<div class="hmainfull"><div>�������� �����</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 20px 5px 20px; padding-top:5px;">	
							
                            <? 
							if (isset($_POST['submit_add']))
							{
								$r = $db->add_friend($_SESSION['soc_id'],'','vk'.$_POST['soc_id1']);
								if ($r=="Ok") 
								{
									$ph = getAvatar($_POST['soc_id1']);
									echo '���������<br><img src="'.$ph.'" width="50" height="50"></img><br>';
								}
								else echo '������ ����������<br>';
							}
							if (isset($_POST['submit_del']))
							{
								$r = $db->remove_friend($_SESSION['soc_id'],'','vk'.$_POST['fr_list']);
								if ($r=="Ok") echo '�������<br>';
								else echo '������ ��������<br>';
							}
                                $friends=explode(',',$friendlist);
								
                                echo '<form action="friends.php" method="POST">';
                                echo '<p>soc_id �����: *<br> <input name="soc_id1" id="soc_id1"  type="text"  SIZE=20> </p>';
								echo '<input name="submit_add" type="submit" value=" �������� ����� ">';
                                echo '</form>';                                                                           
                                
                                
								echo '<p>������ ������:</p><p><button id="but_change" text="1">��� ���?</button></p>';
								echo '<p><div id="out_text"></div></p>';
								echo '<form action="friends.php" method="POST">';
								echo '<select id="sel" size="20" name="fr_list[]"></p>';
								foreach ($friends AS $nc)
								{
									echo '<option value="'.$nc.'" >'.$nc.'</option>';
								}
								echo '</select>';
                            ?>
						    <p><div align="left"><input name="submit_del" type="submit" value=" ������� ����� "></div></p>
						   </form>
						   </div>
	</div>
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>
</div>
</div>
<script language='JavaScript'> 
$('#but_change').on({
		   'click': function(){ 
					var friend = $('#sel').val();
					var url = 'findbyid.php?uid='+friend;
					$.get(url, function(data)
					{							
						if ((data==";")||(data=="0"))
						{	
							alert("�������� id!!!");
						}
						else
						{
							var info = data.split(";",2);
							$('#out_text').html("<img src=\""+info[1]+"\" name=\"accinfo\" width=\"50\" height=\"50\"></img><br>"+info[0]);
						}
					});		
					}
});

</script>
 </body>
<? 	$db->close_connection(); ?>	
</html>