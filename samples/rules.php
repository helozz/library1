<?php
// ver 1.0
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=windows-1251" />
		<link href="../css/main.css" rel="stylesheet" type="text/css" /><script src="../js/jquery-1.8.2.js"></script><script src="../js/jquery-ui-1.9.1.custom.js"></script>
	</head>	
	<body>
<?php
	
require_once("../auto/defines.php");					
include "header.php";
require_once("../auto/db_query.php");
$uid = $_SESSION['soc_id'];
$db=new db_query(0,_PREF."".$uid,$uid);
$hash = $_SESSION['hash'];
$_SESSION['hash'] = $hash;
$calchash = md5(CLIENT_ID.''.$uid.''.SECRET); 
if ($hash !=$calchash) die('Давай до свидания!');
$query = "SELECT * FROM "._ACL." WHERE u_id='".$_SESSION['r_uid']."'";
$data = mysql_query($query);
$row = mysql_fetch_array($data);
$trade = $row['trader'];

if(isset($_GET['del']))
{
$db->del_order($_GET['del']);
}

if(isset($_GET['vkid']))
{
$_GET['act']=($_GET['act']=="true")?1:0;
$_GET['Mn']=($_GET['Mn']=="true")?1:0;
$_GET['Tu']=($_GET['Tu']=="true")?1:0;
$_GET['Wd']=($_GET['Wd']=="true")?1:0;
$_GET['Th']=($_GET['Th']=="true")?1:0;
$_GET['Fr']=($_GET['Fr']=="true")?1:0;
$_GET['Sa']=($_GET['Sa']=="true")?1:0;
$_GET['Su']=($_GET['Su']=="true")?1:0;
if($_GET['oid']==0) $db->set_order($_GET['vkid'],$_GET['sid'],$_GET['p'],$_GET['x'],$_GET['y'],$_GET['n'],$_GET['u'],$_GET['t'],$_GET['m'],$_GET['act'],$_GET['ord'],$_GET['d0'],$_GET['m0'],$_GET['y0'],$_GET['d1'],$_GET['m1'],$_GET['y1'],$_GET['htime'],$_GET['Mn'],$_GET['Tu'],$_GET['Wd'],$_GET['Th'],$_GET['Fr'],$_GET['Sa'],$_GET['Su'],$_SESSION['u_id'],$_SESSION['r_uid']);
else $db->update_order($_GET['vkid'],$_GET['sid'],$_GET['p'],$_GET['x'],$_GET['y'],$_GET['n'],$_GET['u'],$_GET['t'],$_GET['m'],$_GET['act'],$_GET['ord'],$_GET['d0'],$_GET['m0'],$_GET['y0'],$_GET['d1'],$_GET['m1'],$_GET['y1'],$_GET['htime'],$_GET['Mn'],$_GET['Tu'],$_GET['Wd'],$_GET['Th'],$_GET['Fr'],$_GET['Sa'],$_GET['Su'],$_SESSION['u_id'],$_SESSION['r_uid'],$_GET['oid']);
}
$o_arr=json_decode($db->get_orders($_SESSION['u_id']),true);
$o_obj=json_decode($db->get_orders($_SESSION['u_id']),false);

$table="<font size=\"2\"><table width=100%>";
for($i=0;$i<count($o_arr);$i++)
{
$table.="<tr><td align=\"right\">";
$table.=$i+1;
$table.="</td><td>";
$table.="<img src=\"".$o_arr[$i]["p"]."\" width=18 height=18>";
$table.="</td><td>";
$table.="<font color=\"#ffff66\">".mb_convert_encoding($o_arr[$i]["n"],'cp1251','utf-8')."</font>";
$table.="</td><td align=\"right\">";
$table.=$o_arr[$i]["x"];
$table.="</td><td align=\"right\">";
$table.=$o_arr[$i]["y"];
$table.="</td><td align=\"center\">";
if($o_arr[$i]["ord"]=="drinking") $table.="<font color=\"#0066ff\">Корм</font>";
if($o_arr[$i]["ord"]=="send") $table.="<font color=\"red\">Дар</font>";
if($o_arr[$i]["ord"]=="exchange") $table.="<font color=\"#ffff66\">Обмен</font>";
$table.="</td><td align=\"center\">";
if($o_arr[$i]["Mn"]) $table.="Пн";
if($o_arr[$i]["Tu"]) $table.="Вт";
if($o_arr[$i]["Wd"]) $table.="Ср";
if($o_arr[$i]["Th"]) $table.="Чт";
if($o_arr[$i]["Fr"]) $table.="Пт";
if($o_arr[$i]["Sa"]) $table.="Сб";
if($o_arr[$i]["Su"]) $table.="Вс";
$table.="</td><td align=\"right\">";
$table.=$o_arr[$i]["htime"];
$table.="</td><td align=\"right\">";
$table.="<font color=\"#009933\">".($o_arr[$i]["u"]/1000)."</font>";
$table.="</td><td align=\"right\">";
$table.="<font color=\"orange\">".($o_arr[$i]["t"]/1000)."</font>";
$table.="</td><td align=\"right\">";
$table.="<font color=\"#0066ff\">".($o_arr[$i]["m"]/1000)."</font>";
$table.="</td><td>";
$table.="".$o_arr[$i]["d0"].".".$o_arr[$i]["m0"].".".str_replace("20","",$o_arr[$i]["y0"])."-".$o_arr[$i]["d1"].".".$o_arr[$i]["m1"].".".str_replace("20","",$o_arr[$i]["y1"]);
$table.="</td><td>";
if($o_arr[$i]["act"]==1) $table.="<img src=\"../img/autoon.png\" width=\"15\" height=\"15\">";
if($o_arr[$i]["act"]==0) $table.="<img src=\"../img/autooff.png\" width=\"15\" height=\"15\">";
$table.="</td><td>";
$asd= json_encode($o_obj[$i]);
//$asd= str_replace("\"","-",$asd);
$table.="<button id=\"chng".$o_arr[$i]["oid"]."\" ord='".$asd."' onclick=\"chord(".$o_arr[$i]["oid"].");\" title=\"Изменить\">E</button>";
$table.="</td><td>";
$table.="<button id=\"del\" onclick=\"delord(".$o_arr[$i]["oid"].");\" title=\"Удалить\">X</button>";
$table.="</td></tr>";
}
$table.="</table></font>";


?>

	
							<p>
							<?
echo mb_convert_encoding($db->get_user_name($_SESSION['soc_id']),'cp1251','utf-8');
							?>
							</p>
<div class="frame" style=" width:800px; margin:10px;">
<div><font color="red">Не забываем добавлять в друзья кого нет в списке аккаунтов!</font></div>
<div class="header">
<div class="hleft"></div>
<div class="hright"></div>
<div class="hmainfull"><div>Правила</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 20px 5px 20px; padding-top:5px;">	
									
													
							<?php
						
							$cnt = 0;
							$rules='<fieldset><legend>Правила пользователя</legend><div>'.$table.'</div></fieldset>';
							echo $rules;
							echo '<br /><div id="addrule"><button name="doaddd" id="doadd" onclick="doadd();">Добавить правило</button></div>';


							?>
</div>
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div><input type="hidden" name="hid_text" id="hd_text" value="<? echo $trade;?>"/>	<? $db->close_connection(); ?>
<script>
                                                
                                                
                                            
function doadd()
			{  
			var text='<fieldset><legend>Новое правило</legend><br />';
			text+='Процесс: <select name="action" id="action" onChange="javascript: act(this);"><option value="none" selected>Выберите действие</option><option value="drinking">Кормить войска</option>';
			if($('#hd_text').val()>2) text+='<option value="exchange">Менять ресурсы</option><option value="send">Дарить ресурсы</option>';
			text+='</select><br />';
			text+= '<br /><button name="dontcconfirm" id="dontconf" onclick="dontconf();">Отмена</button></fieldset>';
		
			document.getElementById("addrule").innerHTML =text;
			}
function dontconf()
			{  
			document.getElementById("addrule").innerHTML = '<button name="doaddd" id="doadd" onclick="doadd();">Добавить правило</button>';

			}
function act(process)
			{  
			var x = parseInt(prompt("Введите координату аккаунта X:")); 
			var y = parseInt(prompt("Введите координату аккаунта Y:")); 
			//alert(x);
				if((x!=0 || y!=0) && (!isNaN(x) && !isNaN(y)))
				{ var url = 'find.php?x='+x+'&y='+y+'&n=1';
				$.get(url, function(data)
				{							
					if ((data==";")||(data=="0"))
					{	
						alert("Неверный получатель");
						document.getElementById("addrule").innerHTML = '<button name="doaddd" id="doadd" onclick="doadd();">Добавить правило</button>';
					}
					else
					{ //alert(data);
						var info = data.split(";",6);
						//$('#outinfo').html("<img src=\""+info[2]+"\" name=\"accinfo\" width=\"50\" height=\"50\"></img>");
						//$('#hd_text').val(data);
						//$('#recp').val(info[1]);
					texxt ='<fieldset><legend>Добавить правило</legend><br /><table style="width: 90%;"><tr><td>Аккаунт:<br /><br /><img src="'+info[2]+'" width=100 height=100 />'+' <br /><font color="#009900"> '+info[1]+' </font><br /><font color="#ff9900">'+info[3]+'</font><br />id: '+info[0]+'<br />X:<font color="red"> '+info[4]+' </font>Y: <font color="red">'+info[5]+'</font></td>';
					texxt +='<td>';	
						if(process.value=="drinking") texxt +='<font color="#0066ff">Кормить армию:</font> ';
						if(process.value=="exchange") texxt +='<font color="#ffff66">Менять ресурсы:</font> ';	
						if(process.value=="send") texxt +='<font color="red">Дарить ресурсы:</font> ';
						texxt +='<input type="checkbox" name="Mn" id="Mn" checked="checked">Пн</input> ';
						texxt +='<input type="checkbox" name="Tu" id="Tu" checked="checked">Вт</input> ';
						texxt +='<input type="checkbox" name="Wd" id="Wd" checked="checked">Ср</input> ';
						texxt +='<input type="checkbox" name="Th" id="Th" checked="checked">Чт</input> ';
						texxt +='<input type="checkbox" name="Fr" id="Fr" checked="checked">Пт</input> ';
						texxt +='<input type="checkbox" name="Sa" id="Sa" checked="checked">Сб</input> ';
						texxt +='<input type="checkbox" name="Su" id="Su" checked="checked">Вс</input><br /><br /> Количество: ';
						if(process.value=="drinking") texxt +='<input type="hidden" name="u" id="u" size=6 value="0"></input><input type="hidden" name="t" id="t" size=6 value="0"></input>  &nbsp;<img src="../img/meat.png" width="20" height="20" /> <input type="text" name="m" id="m" size=6 value="0"></input><br /><br />';
						if(process.value=="exchange") texxt +='&nbsp;<img src="../img/gold.png" width="20" height="20" /> <input type="text" name="u" id="u" size=6 value="0"></input>  &nbsp;<img src="../img/steel.png" width="20" height="20" /> <input type="text" name="t" id="t" size=6 value="0"></input><input type="hidden" name="m" id="m" size=6 value="0"></input><br /><br />';
						if(process.value=="send") texxt +='&nbsp;<img src="../img/gold.png" width="20" height="20" /> <input type="text" name="u" id="u" size=6 value="0"></input>  &nbsp;<img src="../img/steel.png" width="20" height="20" /> <input type="text" name="t" id="t" size=6 value="0"></input>  &nbsp;<img src="../img/meat.png" width="20" height="20" /> <input type="text" name="m" id="m" size=6 value="0"></input><br /><br />';
						if(process.value=="drinking") texxt +='Раз в <select size="1" name="htime" id="htime"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="6">6</option><option value="12">12</option><option value="24">24</option></select> часа<br /><br />';	
						else texxt +='Время действия: <select size="1" name="htime" id="htime"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option></select> часов мск<br /><br />';	
						texxt +='Правило действительно с: <select name="d0" id="d0"><option value="1">01</option><option value="2">02</option><option value="3">03</option><option value="4">04</option><option value="5">05</option><option value="6">06</option><option value="7">07</option><option value="8">08</option><option value="9">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option><option>19</option><option>20</option><option>21</option><option>22</option><option>23</option><option>24</option><option>25</option><option>26</option><option>27</option><option>28</option><option>29</option><option>30</option><option>31</option></select>&nbsp;<select name="m0" id="m0"><option>01</option><option>02</option> <option>03</option><option>04</option><option>05</option><option>06</option><option>07</option><option>08</option><option>09</option><option>10</option><option>11</option><option>12</option></select>&nbsp;<select name="y0" id="y0"> <option>2013</option><option>2014</option><option>2015</option></select>';
						texxt +='<br /><br />';
						texxt +='Правило действительно до: <select name="d1" id="d1"><option value="1">01</option><option value="2">02</option><option value="3">03</option><option value="4">04</option><option value="5">05</option><option value="6">06</option><option value="7">07</option><option value="8">08</option><option value="9">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option><option>19</option><option>20</option><option>21</option><option>22</option><option>23</option><option>24</option><option>25</option><option>26</option><option>27</option><option>28</option><option>29</option><option>30</option><option>31</option></select>&nbsp;<select name="m1" id="m1"><option>01</option><option>02</option> <option>03</option><option>04</option><option>05</option><option>06</option><option>07</option><option>08</option><option>09</option><option>10</option><option>11</option><option>12</option></select>&nbsp;<select name="y1" id="y1"> <option>2013</option><option selected>2014</option><option>2015</option></select>';
						texxt +='<br /><br />';
						texxt +='Правило активно: <input type="checkbox" name="act" id="act" checked="checked"></input><br /><br />';
						
						
					texxt +=	'<br /><br /><button name="nowadding" id="nowaddf" onclick="nowadd(\''+ process.value+'\',\''+ info[0] +'\',\''+info[1]+'\',\''+info[2]+'\',\''+info[3]+'\',\''+info[4]+'\',\''+info[5]+'\');">Готово</button>&nbsp;&nbsp;<button name="dontcconfirm" id="dontconf" onclick="dontconf();">Отмена</button></td></tr></table></fieldset>';
					document.getElementById("addrule").innerHTML=texxt;
					}
				});
				}
					else 
					{
					alert("Неверно указаны координаты");
					document.getElementById("addrule").innerHTML = '<button name="doaddd" id="doadd" onclick="doadd();">Добавить правило</button>';
					}
				
			}
function nowadd(process,data1,data2,data3,data4,data5,data6,oid=0)
			{  
			//alert(document.getElementById("act").checked);
			//alert(data2);
			window.location='rules.php?Su='+document.getElementById("Su").checked+'&Sa='+document.getElementById("Sa").checked+
			'&Fr='+document.getElementById("Fr").checked+'&Th='+document.getElementById("Th").checked+'&Wd='+document.getElementById("Wd").checked+
			'&Tu='+document.getElementById("Tu").checked+'&Mn='+document.getElementById("Mn").checked+'&d0='+document.getElementById("d0").value+
			'&m0='+document.getElementById("m0").value+'&y0='+document.getElementById("y0").value+'&d1='+document.getElementById("d1").value+'&m1='+document.getElementById("m1").value+
			'&y1='+document.getElementById("y1").value+'&act='+document.getElementById("act").checked+'&htime='+document.getElementById("htime").value+
			'&u='+document.getElementById("u").value+'&t='+document.getElementById("t").value+'&m='+document.getElementById("m").value+'&vkid='+data4+
			'&sid='+data1+'&x='+data5+'&y='+data6+'&p='+encodeURIComponent(data3)+'&n='+data2+'&ord='+process+'&oid='+oid;
			}
function delord(oid)
			{  
			window.location='rules.php?del='+oid;
			}
function chord($oid)
			{ 
			var $order = $('#chng'+$oid).attr("ord");
			var itemOf = $.parseJSON($order);
			
			texxt ='<fieldset><legend>Изменить правило</legend><br /><table style="width: 90%;"><tr><td>Аккаунт:<br /><br /><img src="'+itemOf.p+'" width=100 height=100 />'+' <br /><font color="#009900"> '+itemOf.vkid+' </font><br /><font color="#ff9900">'+itemOf.n+'</font><br />id: '+itemOf.sid+'<br />X:<font color="red"> '+itemOf.x+' </font>Y: <font color="red">'+itemOf.y+'</font></td>';
					texxt +='<td>';	
						if(itemOf.ord=="drinking") texxt +='<font color="#0066ff">Кормить армию:</font> ';
						if(itemOf.ord=="exchange") texxt +='<font color="#ffff66">Менять ресурсы:</font> ';	
						if(itemOf.ord=="send") texxt +='<font color="red">Дарить ресурсы:</font> ';
						if(itemOf.Mn==1) texxt +='<input type="checkbox" name="Mn" id="Mn" checked="checked">Пн</input> ';
						else texxt +='<input type="checkbox" name="Mn" id="Mn" >Пнд</input> ';
						if(itemOf.Tu==1) texxt +='<input type="checkbox"  name="Tu" id="Tu" checked="checked">Вт</input> ';
						else texxt +='<input type="checkbox" name="Tu" id="Tu" >Вт</input> ';
						if(itemOf.Wd==1) texxt +='<input type="checkbox" name="Wd" id="Wd" checked="checked">Ср</input> ';
						else texxt +='<input type="checkbox" name="Wd" id="Wd" >Ср</input> ';
						if(itemOf.Th==1) texxt +='<input type="checkbox" name="Th" id="Th" checked="checked">Чт</input> ';
						else texxt +='<input type="checkbox" name="Th" id="Th" >Чтв</input> ';
						if(itemOf.Fr==1) texxt +='<input type="checkbox" name="Fr" id="Fr" checked="checked">Пт</input> ';
						else texxt +='<input type="checkbox" name="Fr" id="Fr" >Птн</input> ';
						if(itemOf.Sa==1) texxt +='<input type="checkbox" name="Sa" id="Sa" checked="checked">Сб</input> ';
						else texxt +='<input type="checkbox" name="Sa" id="Sa" >Сб</input> ';
						if(itemOf.Su==1) texxt +='<input type="checkbox" name="Su" id="Su" checked="checked">Вс</input> ';
						else texxt +='<input type="checkbox" name="Su" id="Su" >Вс</input> ';
						texxt +='<br /><br /> Количество: ';
						if(itemOf.ord=="drinking") texxt +='<input type="hidden" name="u" id="u" size=6 value="'+itemOf.u+'"></input><input type="hidden" name="t" id="t" size=6 value="'+itemOf.t+'"></input>  &nbsp;<img src="../img/meat.png" width="20" height="20" /> <input type="text" name="m" id="m" size=6 value="'+itemOf.m+'"></input><br /><br />';
						if(itemOf.ord=="exchange") texxt +='&nbsp;<img src="../img/gold.png" width="20" height="20" /> <input type="text" name="u" id="u" size=6 value="'+itemOf.u+'"></input>  &nbsp;<img src="../img/steel.png" width="20" height="20" /> <input type="text" name="t" id="t" size=6 value="'+itemOf.t+'"></input><input type="hidden" name="m" id="m" size=6 value="'+itemOf.m+'"></input><br /><br />';
						if(itemOf.ord=="send") texxt +='&nbsp;<img src="../img/gold.png" width="20" height="20" /> <input type="text" name="u" id="u" size=6 value="'+itemOf.u+'"></input>  &nbsp;<img src="../img/steel.png" width="20" height="20" /> <input type="text" name="t" id="t" size=6 value="'+itemOf.t+'"></input> &nbsp;<img src="../img/meat.png" width="20" height="20" /> <input type="text" name="m" id="m" size=6 value="'+itemOf.m+'"></input><br /><br />';
						
						if(itemOf.ord=="drinking") var arrayht = new Array('','','','','','','');
						else  var arrayht = new Array('','','','','','','','','','','','','','','','','','','','','','','','');
						
						if(itemOf.ord=="drinking") 
						{
						if(itemOf.htime<5)  arrayht[itemOf.htime-1]=' selected';
						if(itemOf.htime==6)  arrayht[4]=' selected';
						if(itemOf.htime==12)  arrayht[5]=' selected';
						if(itemOf.htime==24)  arrayht[6]=' selected';
						}
						else  arrayht[itemOf.htime-1]=' selected';
						
						if(itemOf.ord=="drinking") texxt +='Раз в <select size="1" name="htime" id="htime"><option value="1" '+arrayht[0]+'>1</option><option value="2"'+arrayht[1]+'>2</option><option value="3"'+arrayht[2]+'>3</option><option value="4"'+arrayht[3]+'>4</option><option value="6"'+arrayht[4]+'>6</option><option value="12"'+arrayht[5]+'>12</option><option value="24"'+arrayht[6]+'>24</option></select> часа<br /><br />';	
						else texxt +='Время действия: <select size="1" name="htime" id="htime"><option value="1" '+arrayht[0]+'>1</option><option value="2"'+arrayht[1]+'>2</option><option value="3"'+arrayht[2]+'>3</option><option value="4"'+arrayht[3]+'>4</option><option value="5"'+arrayht[4]+'>5</option><option value="6"'+arrayht[5]+'>6</option><option value="7"'+arrayht[6]+'>7</option><option value="8"'+arrayht[7]+'>8</option><option value="9"'+arrayht[8]+'>9</option><option value="10"'+arrayht[9]+'>10</option><option value="11"'+arrayht[10]+'>11</option><option value="12"'+arrayht[11]+'>12</option><option value="13"'+arrayht[12]+'>13</option><option value="14"'+arrayht[13]+'>14</option><option value="15"'+arrayht[14]+'>15</option><option value="16"'+arrayht[15]+'>16</option><option value="17"'+arrayht[16]+'>17</option><option value="18"'+arrayht[17]+'>18</option><option value="19"'+arrayht[18]+'>19</option><option value="20"'+arrayht[19]+'>20</option><option value="21"'+arrayht[20]+'>21</option><option value="22"'+arrayht[21]+'>22</option><option value="23"'+arrayht[22]+'>23</option><option value="24"'+arrayht[23]+'>24</option></select> часов мск<br /><br />';	
						
						var arrayd0 = new Array('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
						var arrayd1 = new Array('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
						var arraym0 = new Array('','','','','','','','','','','','');
						var arraym1 = new Array('','','','','','','','','','','','');
						var arrayy0 = new Array('','','');
						var arrayy1 = new Array('','','');
						
						
						arrayd0[itemOf.d0-1]=' selected';
						arrayd1[itemOf.d1-1]=' selected';
						arraym0[itemOf.m0-1]=' selected';
						arraym1[itemOf.m1-1]=' selected';
						if(itemOf.y0==2013) arrayy0[0]=' selected';
						if(itemOf.y0==2014) arrayy0[1]=' selected';
						if(itemOf.y0==2015) arrayy0[2]=' selected';
						if(itemOf.y1==2013) arrayy1[0]=' selected';
						if(itemOf.y1==2014) arrayy1[1]=' selected';
						if(itemOf.y1==2015) arrayy1[2]=' selected';
						
						
						
						
						texxt +='Правило действительно с: <select name="d0" id="d0"><option value="1"'+arrayd0[0]+'>01</option><option value="2"'+arrayd0[1]+'>02</option><option value="3"'+arrayd0[2]+'>03</option><option value="4"'+arrayd0[3]+'>04</option><option value="5"'+arrayd0[4]+'>05</option><option value="6"'+arrayd0[5]+'>06</option><option value="7"'+arrayd0[6]+'>07</option><option value="8"'+arrayd0[7]+'>08</option><option value="9"'+arrayd0[8]+'>09</option><option value="10"'+arrayd0[9]+'>10</option><option value="11"'+arrayd0[10]+'>11</option><option value="12"'+arrayd0[11]+'>12</option><option value="13"'+arrayd0[12]+'>13</option><option'+arrayd0[13]+'>14</option><option'+arrayd0[14]+'>15</option><option'+arrayd0[15]+'>16</option><option'+arrayd0[16]+'>17</option><option'+arrayd0[17]+'>18</option><option'+arrayd0[18]+'>19</option><option'+arrayd0[19]+'>20</option><option'+arrayd0[20]+'>21</option><option'+arrayd0[21]+'>22</option><option'+arrayd0[22]+'>23</option><option'+arrayd0[23]+'>24</option><option'+arrayd0[24]+'>25</option><option'+arrayd0[25]+'>26</option><option'+arrayd0[26]+'>27</option><option'+arrayd0[27]+'>28</option><option'+arrayd0[28]+'>29</option><option'+arrayd0[29]+'>30</option><option'+arrayd0[30]+'>31</option></select>&nbsp;<select name="m0" id="m0"><option'+arraym0[0]+'>01</option><option'+arraym0[1]+'>02</option> <option'+arraym0[2]+'>03</option><option'+arraym0[3]+'>04</option><option'+arraym0[4]+'>05</option><option'+arraym0[5]+'>06</option><option'+arraym0[6]+'>07</option><option'+arraym0[7]+'>08</option><option'+arraym0[8]+'>09</option><option'+arraym0[9]+'>10</option><option'+arraym0[10]+'>11</option><option'+arraym0[11]+'>12</option></select>&nbsp;<select name="y0" id="y0"> <option'+arrayy0[0]+'>2013</option><option'+arrayy0[1]+'>2014</option><option'+arrayy0[2]+'>2015</option></select>';
						texxt +='<br /><br />';
						texxt +='Правило действительно до: <select name="d1" id="d1"><option value="1"'+arrayd1[0]+'>01</option><option value="2"'+arrayd1[1]+'>02</option><option value="3"'+arrayd1[2]+'>03</option><option value="4"'+arrayd1[3]+'>04</option><option value="5"'+arrayd1[4]+'>05</option><option value="6"'+arrayd1[5]+'>06</option><option value="7"'+arrayd1[6]+'>07</option><option value="8"'+arrayd1[7]+'>08</option><option value="9"'+arrayd1[8]+'>09</option><option value="10"'+arrayd1[9]+'>10</option><option value="11"'+arrayd1[10]+'>11</option><option value="12"'+arrayd1[11]+'>12</option><option value="13"'+arrayd1[12]+'>13</option><option'+arrayd1[13]+'>14</option><option'+arrayd1[14]+'>15</option><option'+arrayd1[15]+'>16</option><option'+arrayd1[16]+'>17</option><option'+arrayd1[17]+'>18</option><option'+arrayd1[18]+'>19</option><option'+arrayd1[19]+'>20</option><option'+arrayd1[20]+'>21</option><option'+arrayd1[21]+'>22</option><option'+arrayd1[22]+'>23</option><option'+arrayd1[23]+'>24</option><option'+arrayd1[24]+'>25</option><option'+arrayd1[25]+'>26</option><option'+arrayd1[26]+'>27</option><option'+arrayd1[27]+'>28</option><option'+arrayd1[28]+'>29</option><option'+arrayd1[29]+'>30</option><option'+arrayd1[30]+'>31</option></select>&nbsp;<select name="m1" id="m1"><option'+arraym1[0]+'>01</option><option'+arraym1[1]+'>02</option> <option'+arraym1[2]+'>03</option><option'+arraym1[3]+'>04</option><option'+arraym1[4]+'>05</option><option'+arraym1[5]+'>06</option><option'+arraym1[6]+'>07</option><option'+arraym1[7]+'>08</option><option'+arraym1[8]+'>09</option><option'+arraym1[9]+'>10</option><option'+arraym1[10]+'>11</option><option'+arraym1[11]+'>12</option></select>&nbsp;<select name="y1" id="y1"> <option'+arrayy1[0]+'>2013</option><option'+arrayy1[1]+'>2014</option><option'+arrayy1[2]+'>2015</option></select>';
						texxt +='<br /><br />';
						if(itemOf.act==1) texxt +='Правило активно: <input type="checkbox" name="act" id="act" checked="checked"></input><br /><br />';
						else texxt +='Правило активно: <input type="checkbox" name="act" id="act" ></input><br /><br />';
						
					texxt +='<br /><br /><button name="nowadding" id="nowaddf" onclick="nowadd(\''+ itemOf.ord+'\',\''+ itemOf.sid +'\',\''+itemOf.n+'\',\''+itemOf.p+'\',\''+itemOf.vkid+'\',\''+itemOf.x+'\',\''+itemOf.y+'\','+itemOf.oid+');">Готово</button>&nbsp;&nbsp;<button name="dontcconfirm" id="dontconf" onclick="dontconf();">Отмена</button></td></tr></table></fieldset>';
					document.getElementById("addrule").innerHTML=texxt;
			
			
			
			
			
			
			}
			
</script>
	</body>

</html>