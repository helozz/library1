<?
class db_query 
{
var $v;
var $referer;
var $friends;
var $proxy;
var $origin;
var $uimg;
var $uname;
var $connection;

public function db_query ($fr=0,$vk='',$log='')
{
include('_dbsettings.php');
$this->connection = @mysql_connect(DBHOST,DBUSER,DBPASS);
if($this->connection == FALSE)die('no db');
@mysql_query("SET NAMES 'utf8'");
@mysql_select_db(DBNAME);
@mysql_set_charset('utf8');
$query12 = "SELECT * FROM `accounts` WHERE `accounts`.`a_soc`='".$vk."';";
$ex12 = @mysql_query($query12);
$this->uimg = @mysql_result($ex12,0,'a_ava');
$this->uname = @mysql_result($ex12,0,'a_n');
$query = "SELECT * FROM `vars`";
$ex = @mysql_query($query);
$exs = @mysql_num_rows($ex);
if($exs==0) return -1;
$this->v=@mysql_result($ex,0,'v');
$ert=$this->get_proxy($vk);
$arrert=explode(';',$ert);
$this->proxy=$arrert[0];
$this->proxypwd=$arrert[1];
$this->referer=@mysql_result($ex,0,'referer');
$this->origin=@mysql_result($ex,0,'origin');
$this->friends="";

if($fr==3) // список юзера
{
$query8= "SELECT `users`.`u_f_list` FROM `users` WHERE `users`.`u_log`='".$log."'";
$ex8 = @mysql_query($query8);
$exs8 = @mysql_num_rows($ex8);
if($exs8!=0) 
{
//for($i=0;$i<$exs8;$i++)
//{
$this->friends.=(@mysql_result($ex8,0,'u_f_list')!='' && $this->friends!='')? ','.@mysql_result($ex8,0,'u_f_list'):@mysql_result($ex8,0,'u_f_list');
//}
$this->friends=str_replace(',"'.$vk.'",',',',$this->friends);
$this->friends=str_replace('"'.$vk.'",','',$this->friends);
$this->friends=str_replace(',"'.$vk.'"','',$this->friends);
//$farr=explode(',',$this->friends);
//$this->friends=implode(',',array_unique($farr));
}
}

if($fr==1) // список юзера + список мейнов + до 35
{
$this->friends.=(@mysql_result($ex,0,'friends')!='')? @mysql_result($ex,0,'friends'):'';
$this->friends.=(@mysql_result($ex,0,'friends')!='' && @mysql_result($ex,0,'friends0')!='')? ',':'';
$this->friends.=(@mysql_result($ex,0,'friends0')!='')? @mysql_result($ex,0,'friends0'):'';

$query8= "SELECT `users`.`u_f_list` FROM `users` WHERE `users`.`u_log`='".$log."'";
$ex8 = @mysql_query($query8);
$exs8 = @mysql_num_rows($ex8);
if($exs8!=0) 
{
//for($i=0;$i<$exs8;$i++)
//{
$this->friends.=(@mysql_result($ex8,0,'u_f_list')!='' && $this->friends!='')? ','.@mysql_result($ex8,0,'u_f_list'):@mysql_result($ex8,0,'u_f_list');
//}
$this->friends=str_replace(',"'.$vk.'",',',',$this->friends);
$this->friends=str_replace('"'.$vk.'",','',$this->friends);
$this->friends=str_replace(',"'.$vk.'"','',$this->friends);
$frarr=explode(',',$this->friends);
$cn=count($frarr);
//$this->friends=implode(',',array_unique($farr));

$query81= "SELECT DISTINCT `accounts`.`a_soc` FROM `accounts` WHERE `accounts`.`a_u_id`<99900 AND `accounts`.`a_soc`>'".$vk."' ORDER BY `accounts`.`a_soc` ASC LIMIT 0,35 ;";
$ex81 = @mysql_query($query81);
$exs81 = @mysql_num_rows($ex81);
for($i=0;$i<$exs81;$i++)
{
array_push($frarr,'"'.@mysql_result($ex81,$i,'a_soc').'"');
}
$query82= "SELECT DISTINCT `accounts`.`a_soc` FROM `accounts` WHERE `accounts`.`a_u_id`<99900 AND `accounts`.`a_soc`<'".$vk."' ORDER BY `accounts`.`a_soc` ASC LIMIT 0,35 ;";
$ex82 = @mysql_query($query82);
$exs82 = @mysql_num_rows($ex82);
for($i=0;$i<$exs82;$i++)
{
array_push($frarr,'"'.@mysql_result($ex82,$i,'a_soc').'"');
}

$frnds=array_unique($frarr);
$output = array_slice($frnds, 0, max(35,$cn));
$this->friends=implode(',',$output);
}
}
return $this;
}

public function close_connection()
{
@mysql_close($this->connection);
}

public function login($ul,$up)
{
$ul=str_replace(' ','',$ul);
$up=str_replace(' ','',$up);
$query = "SELECT * FROM `users` WHERE `u_log`='".$ul."' AND `u_pwd`='".$up."';";
$ex = @mysql_query($query);
$exs = @mysql_num_rows($ex);
if($exs==0) return -1;
if(@mysql_result($ex,0,'u_act')==1) return  mysql_result($ex,0,'u_ol');
return -1;
}

public function get_acc($ul,$up,$vkid)
{
$query="SELECT * FROM `accounts` WHERE `accounts`.`a_soc`='".$vkid."'";
$ex = @mysql_query($query);
$exs = @mysql_num_rows($ex);
if ($exs==0) return "";
else return @mysql_result($ex,0,'a_n');
}

public function get_accinfo($vkid)
{
	$query="SELECT * FROM `accounts` WHERE `a_soc`='".$vkid."' LIMIT 1;";
	$data = @mysql_query($query);
	$exs = @mysql_num_rows($data);
	if ($exs==0) return "";
	else 
	{
		$row = @mysql_fetch_array($data);	
		$acc['name'] = $row['a_n'];
		$acc['ava'] = $row['a_ava'];
		$res=$acc['name'].';'.$acc['ava'];
		return $res;
	}	
}

public function get_user($ul,$up,$gr='0',$del='0')
{
$ul=str_replace(' ','',$ul);
$up=str_replace(' ','',$up);
$gr=str_replace(' ','',$gr);
if($this->login($ul,$up)<0) return -1;
$append="";
$append2="";
$grname=Array();
$grname2=Array();
if($gr!='0')
{
$grname=explode('-',$gr);
if(count($grname)==2)
{
$query00="SELECT * FROM `accounts`,`users` WHERE `users`.`u_log`='".$ul."' AND `users`.`u_pwd`='".$up."' AND `accounts`.`a_aka`='".$grname[0]."'";
$ex00 = mysql_query($query00);
$x=(mysql_result($ex00,0,'a_x'))?mysql_result($ex00,0,'a_x'):0;
$y=(mysql_result($ex00,0,'a_y'))?mysql_result($ex00,0,'a_y'):0;
$append=" ORDER BY ((".$x." - `a_x`)*(".$x." - `a_x`) + (".$y." - `a_y`)* (".$y." - `a_y`)) ASC";
}
}

if($del!='0')
{
$grname2=explode('&',$del);
if(count($grname2)==2)
{
$append2=" AND REPLACE(`accounts`.`a_soc`,'vk','')%".$grname2[1]."=".$grname2[0];
}
}

$query = "SELECT * FROM `accounts`,`users`";
$query.=($gr=='0')?"":",`groups`";
$query.=" WHERE `users`.`u_log`='".$ul."' AND `users`.`u_pwd`='".$up."' AND `accounts`.`a_u_id`=`users`.`u_id`";
$query.=($gr=='0')?"":" AND `groups`.`gr_u_id`=`users`.`u_id` AND `groups`.`gr_name`='".$gr."' AND `groups`.`gr_accs` LIKE CONCAT('%,',`accounts`.`a_aka`,',%')";
$query.=(count($grname2)==2)? $append2:"";
$query.=(count($grname)==2)? $append:" ORDER BY `accounts`.`a_id` ASC;";
if($ul=='Squad') $query="SELECT * FROM `accounts` WHERE `accounts`.`a_ismn`='1' ORDER BY `accounts`.`a_id` ASC;";

$ex = mysql_query($query);
$exs = mysql_num_rows($ex);
$res='';
for($i=0;$i<$exs;$i++)
{
$res.=mysql_result($ex,$i,'a_aka').','.mysql_result($ex,$i,'a_n').','.mysql_result($ex,$i,'a_soc').','.mysql_result($ex,$i,'a_ismn').','.mysql_result($ex,$i,'a_auth').','.mysql_result($ex,$i,'a_ava').','.mysql_result($ex,$i,'a_x').','.mysql_result($ex,$i,'a_y');
$res.=($i==$exs-1)?'':';';
}
$res.=($res=='')?'0':'';
return $res;
}

public function getAvatar($userid)
{
$uid=str_replace('vk','',$userid);
$a=@file_get_contents("http://vk.com/id".$uid);
$pt="/ src=\"(http:\/\/[^\"]+)\"/s";
preg_match($pt,$a,$av);
$query = "UPDATE `accounts`  SET `a_ava`='".$av[1]."'  WHERE `accounts`.`a_soc` ='".$userid."'";
$ex = @mysql_query($query);
return $av[1];
}

public function getImage($userid)
{
$query = "SELECT `a_ava`  FROM `accounts`  WHERE `accounts`.`a_soc` ='".$userid."'";
$ex = @mysql_query($query);
$exs = mysql_num_rows($ex);
if ($exs==0) return "";
else return mysql_result($ex,0,'a_ava');
}

public function add_account($ul,$up,$x,$y,$nick,$vkid,$auth)
{
$ul=str_replace(' ','',$ul);
$up=str_replace(' ','',$up);
$x=str_replace(' ','',$x);
$y=str_replace(' ','',$y);
$vkid=str_replace(' ','',$vkid);
$auth=str_replace(' ','',$auth);
$nick=str_replace('`','',$nick);
if($this->login($ul,$up)<0 || $ul=='' || $x=='' || $y=='' || $nick=='' || $vkid=='' || $auth=='') return -1;
$this->del_account($ul,$up,$vkid);
$this->init_info($vkid);
$metmp=new WHApi($vkid,$auth,$this->friends,$this->v,$this->referer,$this->proxy,$this->proxypwd,$this->origin,0);
$mid=explode(';',$metmp->GetId($x,$y,1));
if(!$mid[0])
{
$metmp=new WHApi($vkid,$auth,$this->friends,$this->v,$this->referer,$this->proxy,$this->proxypwd,$this->origin,1);
$mid=explode(';',$metmp->GetId($x,$y,1));
}
if(!$mid[0])
{
$metmp=new WHApi($vkid,$auth,$this->friends,$this->v,$this->referer,$this->proxy,$this->proxypwd,$this->origin,2);
$mid=explode(';',$metmp->GetId($x,$y,1));
}
$query = "SELECT * FROM `users` WHERE `users`.`u_log`='".$ul."' AND `users`.`u_pwd`='".$up."';";
$ex = mysql_query($query);
$uid=mysql_result($ex,0,'u_id');
$query = "SELECT * FROM `users`,`accounts`  WHERE `users`.`u_id`=`accounts`.`a_u_id` AND `accounts`.`a_ismn`='1' AND `users`.`u_log`='".$ul."'";
$ex = mysql_query($query);
$exs = mysql_num_rows($ex);
$mn=($exs==0)?1:0;
$img=$this->getAvatar($vkid);
if($img=='' || $img=='http://vk.com/images/deactivated_b.gif') $img="http://vk.com/images/camera_a.gif";
$query = "INSERT INTO `accounts`(`a_id`,`a_u_id`,`a_aka`,`a_n`,`a_soc`,`a_ava`,`a_ismn`,`a_auth`,`a_x`,`a_y`,`a_sid`) VALUES('','".$uid."','".$nick."','".$mid[1]."','".$vkid."','".$img."','".$mn."','".$auth."','".$x."','".$y."','".$mid[0]."');";
$ex = mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}

public function del_account($ul,$up,$vkid)
{
//$ul=str_replace(' ','',$ul);
//$up=str_replace(' ','',$up);
//$vkid=str_replace(' ','',$vkid);
//if($this->login($ul,$up)<0) return $ul.$up.$vkid;
$query = "SELECT * FROM `users` WHERE `users`.`u_log`='".$ul."' AND `users`.`u_pwd`='".$up."';";
$ex = mysql_query($query);
$uid=mysql_result($ex,0,'u_id');
if($vkid)
{
$query01 = "SELECT * FROM `accounts` WHERE `a_soc`='".$vkid."' AND `a_u_id`='".$uid."';";
$ex01 = mysql_query($query01);
$query02 = "INSERT INTO `accounts_del`(`a_id`,`a_u_id`,`a_aka`,`a_n`,`a_soc`,`a_ava`,`a_ismn`,`a_auth`,`a_x`,`a_y`,`a_sid`) VALUES('','".@mysql_result($ex01,0,'a_u_id')."','".@mysql_result($ex01,0,'a_aka')."','".@mysql_result($ex01,0,'a_n')."','".@mysql_result($ex01,0,'a_soc')."','".@mysql_result($ex01,0,'a_ava')."','".@mysql_result($ex01,0,'a_ismn')."','".@mysql_result($ex01,0,'a_auth')."','".@mysql_result($ex01,0,'a_x')."','".@mysql_result($ex01,0,'a_y')."','".@mysql_result($ex01,0,'a_sid')."');";
$ex02 = mysql_query($query02);
$query = "DELETE FROM `accounts` WHERE `a_soc`='".$vkid."' AND `a_u_id`='".$uid."';";
//$query = "UPDATE `accounts` SET `a_u_id`='"."9990".$uid."'  WHERE `a_soc`='".$vkid."' AND `a_u_id`='".$uid."';";
$ex = mysql_query($query);
}
$this->remove_big_friend($ul,$up,$vkid);
$this->remove_friend($ul,$up,$vkid);
$this->change_user_proxies($ul,'0',$vkid);
$this->options_remove($vkid);
$this->remove_info($vkid);
if($ex) return 'Ok';
return 'Err';
}

public function add_group($ul,$up,$gname,$gaccs)
{
$ul=str_replace(' ','',$ul);
$up=str_replace(' ','',$up);
$gname=str_replace(' ','',$gname);
$gaccs=str_replace(' ','',$gaccs);
if($this->login($ul,$up)<0) return -1;
$query = "SELECT * FROM `users` WHERE `users`.`u_log`='".$ul."' AND `users`.`u_pwd`='".$up."';";
$ex = mysql_query($query);
$uid=mysql_result($ex,0,'u_id');

$arrgname=explode(';',$gname);
if(count($arrgname)==3)
{
$ltime=explode('-',$arrgname[2]);
$query23="SELECT `a_aka` FROM `accounts` WHERE `a_u_id`='".$uid."' AND ((".$arrgname[0]." - `a_x`)*(".$arrgname[0]." - `a_x`) + (".$arrgname[1]." - `a_y`)* (".$arrgname[1]." - `a_y`)) < ((".$ltime[1]."*8*24)*(".$ltime[1]."*8*24)) AND ((".$arrgname[0]." - `a_x`)*(".$arrgname[0]." - `a_x`) + (".$arrgname[1]." - `a_y`)* (".$arrgname[1]." - `a_y`)) >= ((".$ltime[0]."*8*24)*(".$ltime[0]."*8*24))";
$ex23 = mysql_query($query23);
$gaccs=",";
for($r=0;$r<mysql_num_rows($ex23);$r++)
{
$gaccs.=mysql_result($ex23,$r,'a_aka');
$gaccs.=",";
}
}

if(count($arrgname)==2)
{
$query22="SELECT `a_aka` FROM `accounts` WHERE `a_u_id`='".$uid."' AND ($arrgname[0]=`a_x` AND $arrgname[1]=`a_y` )";
$ex22 = mysql_query($query22);
$query23="SELECT `a_aka` FROM `accounts` WHERE `a_u_id`='".$uid."' AND ($arrgname[0]!=`a_x` AND $arrgname[1]!=`a_y` ) ORDER BY ((".$arrgname[0]." - `a_x`)*(".$arrgname[0]." - `a_x`) + (".$arrgname[1]." - `a_y`)* (".$arrgname[1]." - `a_y`)) ASC";
$ex23 = mysql_query($query23);
$gaccs=','.mysql_result($ex22,0,'a_aka').',';
$cntr=0;
for($r=0;$r<mysql_num_rows($ex23);$r++)
{
if($cntr>=5 || $r==mysql_num_rows($ex23)-1)
{
$query = "INSERT INTO `groups`(`gr_id`,`gr_name`,`gr_accs`,`gr_u_id`) VALUES ('','".mysql_result($ex22,0,'a_aka').'-'.$r."','".$gaccs."','".$uid."');";
$ex = mysql_query($query);
$gaccs=','.mysql_result($ex22,0,'a_aka').',';
$cntr=0;

}
$gaccs.=mysql_result($ex23,$r,'a_aka');
$gaccs.=",";
$cntr++;
}
}


$query = "INSERT INTO `groups`(`gr_id`,`gr_name`,`gr_accs`,`gr_u_id`) VALUES ('','".$gname."','".$gaccs."','".$uid."');";
$ex = mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}

public function remove_group($ul,$up,$gn)
{
$ul=str_replace(' ','',$ul);
$up=str_replace(' ','',$up);
$gn=str_replace(' ','',$gn);
if($this->login($ul,$up)<0) return -1;
$query = "SELECT * FROM `users` WHERE `users`.`u_log`='".$ul."' AND `users`.`u_pwd`='".$up."';";
$ex = mysql_query($query);
$uid=mysql_result($ex,0,'u_id');
$query = "DELETE FROM `groups` WHERE `gr_u_id`='".$uid."' AND `gr_name`='".$gn."';";
$ex = mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}

public function get_groups($ul,$up)
{
$ul=str_replace(' ','',$ul);
$up=str_replace(' ','',$up);
if($this->login($ul,$up)<0) return -1;
$query = "SELECT * FROM `users` WHERE `users`.`u_log`='".$ul."' AND `users`.`u_pwd`='".$up."';";
$ex = mysql_query($query);
$uid=mysql_result($ex,0,'u_id');
$query = "SELECT * FROM `groups` WHERE `gr_u_id`='".$uid."'";
$ex = mysql_query($query);
$exs = mysql_num_rows($ex);
$grs=($exs==0)?0:1;
if($grs) 
{
$glist='';
for($i=0;$i<$exs;$i++)
{
$glist.=mysql_result($ex,$i,'gr_name');
$glist.=($i==$exs-1)?'':',';
}
return $glist;
}
return 0;
}

public function add_friend($ul,$up,$vkid)
{
$ul=str_replace(' ','',$ul);
$up=str_replace(' ','',$up);
$gname=str_replace(' ','',$vkid);
if($this->login($ul,$up)<0) return -1;
$query = "SELECT * FROM `users` WHERE `users`.`u_log`='".$ul."' AND `users`.`u_pwd`='".$up."';";
$ex = mysql_query($query);
$frarr=explode(',',mysql_result($ex,0,'u_f_list'));
if($frarr[0]=="") array_shift($frarr);
array_push($frarr,'"'.$vkid.'"');
$frarr2=array_unique($frarr);
$fr2=implode(',',$frarr2);
$query2="UPDATE `users` SET `users`.`u_f_list`='".$fr2."' WHERE `users`.`u_log`='".$ul."' AND `users`.`u_pwd`='".$up."';";
$ex2= mysql_query($query2);
if($ex2) return 'Ok';
return 'Err';
}

public function add_big_friend($ul,$up,$vkid)
{
//$ul=str_replace(' ','',$ul);
//$up=str_replace(' ','',$up);
//$vkid=str_replace(' ','',$vkid);
//if($this->login($ul,$up)<0) return -1;
$query = "SELECT `friends0` FROM `vars`;";
$ex = mysql_query($query);
$frarr=explode(',',mysql_result($ex,0,'friends0'));
if($frarr[0]=="") array_shift($frarr);
array_push($frarr,'"'.$vkid.'"');
$frarr2=array_unique($frarr);
$fr2=implode(',',$frarr2);
$query2="UPDATE `vars` SET `vars`.`friends0`='".$fr2."';";
$ex2= mysql_query($query2);
if($ex2) return 'Ok';
return 'Err';
}

public function remove_friend($ul,$up,$vkid)
{
$ul=str_replace(' ','',$ul);
$up=str_replace(' ','',$up);
$vkid=str_replace(' ','',$vkid);
if($this->login($ul,$up)<0) return -1;
$query = "SELECT * FROM `users` WHERE `users`.`u_log`='".$ul."' AND `users`.`u_pwd`='".$up."';";
$ex = mysql_query($query);
$list=mysql_result($ex,0,'u_f_list');
$delfr = str_replace(',"'.$vkid.'",',',',$list);
$delfr = str_replace('"'.$vkid.'",','',$delfr);
$delfr = str_replace(',"'.$vkid.'"','',$delfr);
$delfr = str_replace('"'.$vkid.'"','',$delfr);
$query2="UPDATE `users` SET `users`.`u_f_list`='".$delfr."' WHERE `users`.`u_log`='".$ul."' AND `users`.`u_pwd`='".$up."';";
$ex2= mysql_query($query2);
if($ex2) return 'Ok';
return 'Err';
}

public function remove_big_friend($ul,$up,$vkid)
{
//$ul=str_replace(' ','',$ul);
//$up=str_replace(' ','',$up);
//$vkid=str_replace(' ','',$vkid);
//if($this->login($ul,$up)<0) return -1;
$query = "SELECT `friends0` FROM `vars`;";
$ex = mysql_query($query);
$list=mysql_result($ex,0,'friends0');
$delfr = str_replace(',"'.$vkid.'",',',',$list);
$delfr = str_replace('"'.$vkid.'",','',$delfr);
$delfr = str_replace(',"'.$vkid.'"','',$delfr);
$delfr = str_replace('"'.$vkid.'"','',$delfr);
$query2="UPDATE `vars` SET `vars`.`friends0`='".$delfr."';";
$ex2= mysql_query($query2);
if($ex2) return 'Ok';
return 'Err';
}

//================================================================
/*
public function setFriends()
{
$a=file_get_contents("http://sim.galabase.ru/oz.php");
if($a=="") return 'Err';
$f_arr=explode(';',$a);
array_shift($f_arr);
array_shift($f_arr);
$frnd='"'.implode($f_arr,'","').'"';
$query="UPDATE `vars` SET `friends`='".$frnd."'";
$ex = mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}
*/

public function setReferer($referer)
{
if($referer=='')return 'Err';
$query="UPDATE `vars` SET `referer`='".$referer."'";
$ex = mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}

public function setVersion($v)
{
if($v=='')return 'Err';
$query="UPDATE `vars` SET `v`='".$v."'";
$ex = mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}
//======================================================
public function add_user($ul,$up)
{
$ul=str_replace(' ','',$ul);
$up=str_replace(' ','',$up);
$query = "INSERT INTO `users` (`u_id`,`u_log`,`u_pwd`,`u_ol`,`u_act`,`u_f_list`) VALUES('','".$ul."','".$up."','1:1:1:1:1:1','1','');";
$ex = @mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}

public function get_all_users()
{
$query = "SELECT * FROM `users`;";
$ex = @mysql_query($query);
$exs=@mysql_num_rows($ex);
$users='';
for($i=0;$i<$exs;$i++)
{
if(@mysql_result($ex,$i,'u_act')==1) 
{
$users.=@mysql_result($ex,$i,'u_log').','.@mysql_result($ex,$i,'u_pwd').','.@mysql_result($ex,$i,'u_ol');
if($i<$exs-1)$users.=';';
}

}
return $users;
}

//======================================================
public function get_proxy($vk)
{
$query = "SELECT * FROM `rwproxies` WHERE `rwproxies`.`p_a_soc`='".$vk."'";
$ex = @mysql_query($query);
$exs = @mysql_num_rows($ex);

if(!$exs) 
{
return "8.8.8.8:80;:";
}

if($exs) return @mysql_result($ex,0,'p_address').";".@mysql_result($ex,0,'p_pwd');

}

/*
public function ProxyError($vk)
{
if($vk=="") return "No arg";

$query = "SELECT * FROM `rwproxies` WHERE `rwproxies`.`p_a_soc`='".$vk."'";
$ex = @mysql_query($query);

$query3="UPDATE `rwproxies` SET `rwproxies`.`time3`='".(@mysql_result($ex,0,'time3')+1)."',`rwproxies`.`time`='".(@mysql_result($ex,0,'time')+1)."'  WHERE `rwproxies`.`p_a_soc`='".$vk."'";
$ex3 = @mysql_query($query3);
if($ex3) return "Ok";
else return "Err";
}
*/
//=================================================================

public function add_record($ul,$clx,$cly,$name,$u,$t,$m,$lt)
{
$query = "SELECT `u_id` FROM `users` WHERE `users`.`u_log`='".$ul."' ";
$ex = @mysql_query($query);
$user=@mysql_result($ex,0,'u_id');
$dt=date("Y-d-m H:i");
$query2 = "INSERT INTO `trades` (`t_id`,`t_u`,`t_t`,`t_m`,`t_x`,`t_y`,`t_name`,`t_ldate`,`t_sdate`,`t_u_id`) VALUES('','".$u."','".$t."','".$m."','".$clx."','".$cly."','".$name."','".$lt."','".$dt."','".$user."');";
$ex2 = @mysql_query($query2);
return '{}';
}

public function get_user_mstat($user,$m,$y,$r,$s)
{
$query = "SELECT `u_id` FROM `users` WHERE `users`.`u_log`='".$user."' ";
$ex = @mysql_query($query);
$user=@mysql_result($ex,0,'u_id');

$query2 =($s==0)? "SELECT sum(`t_u`)/1000000 as u, sum(`t_t`)/1000000 as t, sum(`t_m`)/1000000 as m FROM `trades` WHERE `t_u_id`=".$user." AND `t_sdate` LIKE '".$y."-%-".$m." %'":"SELECT `t_u`/1000000 as u, `t_t`/1000000 as t, `t_m`/1000000 as m, `t_name` as name FROM `trades` WHERE `t_u`+`t_t`+`t_m`>0 AND  `t_u_id`=".$user." AND `t_sdate` LIKE '".$y."-%-".$m." %'";
$query2 .= ($r=="Все")?"":" AND `t_name`='".$r."'";
$ex2 = @mysql_query($query2);
return $ex2;
}

public function get_user_wstat($user,$ds,$de,$m,$y,$r,$s)
{
$query = "SELECT `u_id` FROM `users` WHERE `users`.`u_log`='".$user."' ";
$ex = @mysql_query($query);
$user=@mysql_result($ex,0,'u_id');
$query2 =($s==0)? "SELECT sum(`t_u`)/1000000 as u, sum(`t_t`)/1000000 as t, sum(`t_m`)/1000000 as m FROM `trades` WHERE `t_u_id`=".$user." AND `t_sdate` LIKE '".$y."-".$ds."-".$m." %'":"SELECT `t_u`/1000000 as u, `t_t`/1000000 as t, `t_m`/1000000 as m, `t_name` as name FROM `trades` WHERE `t_u`+`t_t`+`t_m`>0 AND  `t_u_id`=".$user." AND `t_sdate` LIKE '".$y."-".$ds."-".$m." %'";
$query2 .= ($r=="Все")?"":" AND `t_name`='".$r."'";
$de2=intval($de);
$ds2=intval($ds);
$m2=intval($m);

if($de2>=$ds2)
{
for($i=$ds2+1;$i<=$de2;$i++)
{
$ik=($i<10)?'0'.$i:$i;
$query2.=($s==0)?" UNION ALL SELECT sum(`t_u`)/1000000 as u, sum(`t_t`)/1000000 as t, sum(`t_m`)/1000000 as m FROM `trades` WHERE `t_u_id`=".$user." AND `t_sdate` LIKE '".$y."-".$ik."-".$m." %' ":" UNION ALL SELECT `t_u`/1000000 as u, `t_t`/1000000 as t, `t_m`/1000000 as m, `t_name` as name FROM `trades` WHERE `t_u`+`t_t`+`t_m`>0 AND  `t_u_id`=".$user." AND `t_sdate` LIKE '".$y."-".$ik."-".$m." %' ";
}
}
else
{
for($i=$ds2+1;$i<=31;$i++)
{
$ik=($i<10)?'0'.$i:$i;
$query2.=($s==0)?" UNION ALL SELECT sum(`t_u`)/1000000 as u, sum(`t_t`)/1000000 as t, sum(`t_m`)/1000000 as m FROM `trades` WHERE `t_u_id`=".$user." AND `t_sdate` LIKE '".$y."-".$ik."-".$m." %' ":" UNION ALL SELECT `t_u`/1000000 as u, `t_t`/1000000 as t, `t_m`/1000000 as m, `t_name` as name FROM `trades` WHERE `t_u`+`t_t`+`t_m`>0 AND  `t_u_id`=".$user." AND `t_sdate` LIKE '".$y."-".$ik."-".$m." %' ";
}
for($i=1;$i<=$de2;$i++)
{
$ik=($i<10)?'0'.$i:$i;
$mk=($m2+1<10)?'0'.($m2+1):$m2+1;
if($m2+1>12)
{
$mk='01';
$y++;
}
$query2.=($s==0)?" UNION ALL SELECT sum(`t_u`)/1000000 as u, sum(`t_t`)/1000000 as t, sum(`t_m`)/1000000 as m FROM `trades` WHERE `t_u_id`=".$user." AND `t_sdate` LIKE '".$y."-".$ik."-".$mk." %' ":" UNION ALL SELECT `t_u`/1000000 as u, `t_t`/1000000 as t, `t_m`/1000000 as m, `t_name` as name FROM `trades` WHERE `t_u`+`t_t`+`t_m`>0 AND  `t_u_id`=".$user." AND `t_sdate` LIKE '".$y."-".$ik."-".$mk." %' ";
}
}
$ex2 = @mysql_query($query2);
return $ex2;
}

public function get_mstat($m,$y,$r,$s)
{
$query2 =($s==0)? "SELECT sum(`t_u`)/1000000 as 'u', sum(`t_t`)/1000000 as 't', sum(`t_m`)/1000000 as 'm' FROM `trades` WHERE  `t_sdate` LIKE '".$y."-%-".$m." %'": "SELECT `u_log` as op, `t_u`/1000000 as 'u', `t_t`/1000000 as 't', `t_m`/1000000 as 'm', `t_name` as name FROM `trades`,`users` WHERE `t_u`+`t_t`+`t_m`>0 AND  `users`.`u_id`=`trades`.`t_u_id` AND `t_sdate` LIKE '".$y."-%-".$m." %'";
$query2 .= ($r=="Все")?"":" AND `t_name`='".$r."'";
$ex2 = @mysql_query($query2);
//echo $query2;
return $ex2;
}

public function get_clients()
{
$query2 = "SELECT DISTINCT `t_name` FROM `trades` ";
$ex2 = @mysql_query($query2);
return $ex2;
}

public function get_traders()
{

$query2 = "SELECT DISTINCT `u_log` FROM `trades`,`users` WHERE `trades`.`t_u_id`=`users`.`u_id`";
$ex2 = @mysql_query($query2);
return $ex2;
}

public function get_wstat($ds,$de,$m,$y,$r,$s)
{
$de2=intval($de);
$ds2=intval($ds);
$m2=intval($m);
$query2 = ($s==0)?"SELECT sum(`t_u`)/1000000 as u, sum(`t_t`)/1000000 as t, sum(`t_m`)/1000000 as m FROM `trades` WHERE `t_sdate` LIKE '".$y."-%-".$ds."-".$m." %'":"SELECT `u_log` as op, `t_u`/1000000 as u, `t_t`/1000000 as t, `t_m`/1000000 as m, `t_name` as name FROM  `trades`,`users` WHERE `t_u`+`t_t`+`t_m`>0 AND  `users`.`u_id`=`trades`.`t_u_id` AND  `t_sdate` LIKE '".$y."-%-".$ds."-".$m." %'";
$query2 .= ($r=="Все")?"":" AND `t_name`='".$r."'";
if($de2>=$ds2)
{
for($i=$ds2+1;$i<=$de2;$i++)
{
$ik=($i<10)?'0'.$i:$i;
$query2.=($s==0)?" UNION ALL SELECT sum(`t_u`)/1000000 as u, sum(`t_t`)/1000000 as t, sum(`t_m`)/1000000 as m FROM `trades` WHERE `t_sdate` LIKE '".$y."-".$ik."-".$m." %' ":" UNION ALL SELECT  `u_log` as op, `t_u`/1000000 as u, `t_t`/1000000 as t, `t_m`/1000000 as m, `t_name` as name FROM  `trades`,`users` WHERE `t_u`+`t_t`+`t_m`>0 AND  `users`.`u_id`=`trades`.`t_u_id` AND  `t_sdate` LIKE '".$y."-".$ik."-".$m." %' ";;
$query2 .= ($r=="Все")?"":" AND `t_name`='".$r."'";
}
}
else
{

for($i=$ds2+1;$i<=31;$i++)
{
$ik=($i<10)?'0'.$i:$i;

$query2.=($s==0)?" UNION ALL SELECT sum(`t_u`)/1000000 as u, sum(`t_t`)/1000000 as t, sum(`t_m`)/1000000 as m FROM `trades` WHERE `t_sdate` LIKE '".$y."-".$ik."-".$m." %' ":" UNION ALL SELECT `u_log` as op,  `t_u`/1000000 as u, `t_t`/1000000 as t, `t_m`/1000000 as m, `t_name` as name FROM  `trades`,`users` WHERE `t_u`+`t_t`+`t_m`>0 AND  `users`.`u_id`=`trades`.`t_u_id` AND  `t_sdate` LIKE '".$y."-".$ik."-".$m." %' ";
$query2 .= ($r=="Все")?"":" AND `t_name`='".$r."'";
}
$mk=($m2+1<10)?'0'.($m2+1):$m2+1;
if($m2+1>12)
{
$mk='01';
$y++;
}
for($i=1;$i<=$de2;$i++)
{
$ik=($i<10)?'0'.$i:$i;
$query2.=($s==0)?" UNION ALL SELECT sum(`t_u`)/1000000 as u, sum(`t_t`)/1000000 as t, sum(`t_m`)/1000000 as m FROM `trades` WHERE `t_sdate` LIKE '".$y."-".$ik."-".$mk." %' ":" UNION ALL SELECT  `u_log` as op, `t_u`/1000000 as u, `t_t`/1000000 as t, `t_m`/1000000 as m, `t_name` as name FROM  `trades`,`users` WHERE `t_u`+`t_t`+`t_m`>0 AND  `users`.`u_id`=`trades`.`t_u_id` AND  `t_sdate` LIKE '".$y."-".$ik."-".$mk." %' ";
$query2 .= ($r=="Все")?"":" AND `t_name`='".$r."'";
}
}
//echo $query2;
$ex2 = @mysql_query($query2);
return $ex2;
}

//====================================================================================================
//	wt.inetgames
//====================================================================================================

public function add_account2($ul,$up,$x,$y,$nick,$vkid,$auth,$mx=0,$my=0,$sid=0,$photo="")
{
$ul=str_replace(' ','',$ul);
$up=str_replace(' ','',$up);
$x=str_replace(' ','',$x);
$y=str_replace(' ','',$y);
$vkid=str_replace(' ','',$vkid);
$auth=str_replace(' ','',$auth);
$nick=str_replace('`','',$nick);
if($this->login($ul,$up)<0 || $ul=='' || $x=='' || $y=='' || $nick=='' || $vkid=='') return -1;
$this->del_account($ul,$up,$vkid);
$this->init_info($vkid);
$query = "SELECT * FROM `users` WHERE `users`.`u_log`='".$ul."' AND `users`.`u_pwd`='".$up."';";
$ex = @mysql_query($query);
$exs = @mysql_num_rows($ex);
if(!$exs) return 'Err';
$uid=@mysql_result($ex,0,'u_id');
$query = "SELECT * FROM `users`,`accounts`  WHERE `users`.`u_id`=`accounts`.`a_u_id` AND `accounts`.`a_ismn`='1' AND `users`.`u_log`='".$ul."'";
$ex = mysql_query($query);
$exs = mysql_num_rows($ex);
$mn=($exs==0)?1:0;
//if($mn==1)
//{
//if($this->add_big_friend($ul,$up,$vkid)=='Err') return 'Err';
//}
//if($mn==0)
//{
if($this->add_friend($ul,$up,$vkid)=='Err') return 'Err';
//}
if ($photo=="") $img=$this->getAvatar($vkid);
else $img = $photo;
if($img=='' || $img=='http://vk.com/images/deactivated_b.gif') $img="http://vk.com/images/camera_a.gif";
$query = "INSERT INTO `accounts`(`a_id`,`a_u_id`,`a_aka`,`a_n`,`a_soc`,`a_ava`,`a_ismn`,`a_auth`,`a_x`,`a_y`,`a_sid`) VALUES('','".$uid."','".$nick."','".$x.' '.$y."','".$vkid."','".$img."','".$mn."','".$auth."','".$mx."','".$my."','".$sid."');";
$ex = mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}

public function update_account2($ul,$up,$nick,$vkid,$auth,$img)
{
$ul=str_replace(' ','',$ul);
$up=str_replace(' ','',$up);
$vkid=str_replace(' ','',$vkid);
$auth=str_replace(' ','',$auth);
$nick=str_replace('`','',$nick);
$img=str_replace('`','',$img);
if($this->login($ul,$up)<0 || $ul=='' || $img=='' || $nick=='' || $vkid=='' || $auth=='') return -1;
$query = "UPDATE `accounts` SET `a_aka`='".$nick."',`a_ava`='".$img."',`a_auth`='".$auth."' WHERE `a_soc`='".$vkid."';";
$ex = mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}

public function add_leftacc($uid, $fname, $sname, $ava)
{
	$name = $fname.' '.$sname;
	$nick = $sname;
	$query = "SELECT * FROM  `accounts` WHERE `a_soc` = 'vk".$uid."'";
	$ex = mysql_query($query);
	if ($name==" ") $name = @mysql_result($ex,0,'a_n');
	$exs = @mysql_num_rows($ex);
	if(!$exs) 	// добавляем если нету акка 
	{
		$query = "INSERT INTO `accounts`(`a_id`,`a_u_id`,`a_aka`,`a_n`,`a_soc`,`a_ava`,`a_ismn`,`a_auth`,`a_x`,`a_y`,`a_sid`) VALUES('', 99 ,'".$nick."','".$name."','vk".$uid."','".$ava."', 0 ,'', 0 , 0 , 0);";
	}
	else 
	{
		$query = "UPDATE `accounts` SET `a_n`='".$name."',`a_ava`='".$ava."' WHERE `a_soc`='vk".$uid."';";
	}
	$ex = mysql_query($query);
	if($ex) return 'Ok';
	return 'Err';
}
public function set_coord($vkid,$x,$y)
{
$query = "UPDATE `accounts` SET `accounts`.`a_x`='".$x."' , `accounts`.`a_y`='".$y."' WHERE `accounts`.`a_soc`='".$vkid."'";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function set_sid($vkid,$sid)
{
$query = "UPDATE `accounts` SET `accounts`.`a_sid`='".$sid."' WHERE `accounts`.`a_soc`='".$vkid."'";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function get_sid($vkid)
{
$query = "SELECT `a_sid` FROM `accounts` WHERE `accounts`.`a_soc`='".$vkid."'";
$ex = @mysql_query($query);
if($ex) return @mysql_result($ex,0,'a_sid');
return 0;
}

public function get_auth($vkid)
{
$query = "SELECT `a_auth` FROM `accounts` WHERE `accounts`.`a_soc`='".$vkid."'";
$ex = @mysql_query($query);
if($ex) return @mysql_result($ex,0,'a_auth');
return 0;
}

public function set_auth($vkid, $auth)
{
	$query = "UPDATE `accounts` SET `accounts`.`a_auth`='".$auth."' WHERE `accounts`.`a_soc`='".$vkid."'";
	$ex = @mysql_query($query);
	if($ex) return 1;
	return 0;	
}

public function add_task($vkid,$cls,$type,$par)
{
$vkid=str_replace(' ','',$vkid);
$cls=str_replace(' ','',$cls);
$type=str_replace(' ','',$type);
$vkid=str_replace(';','',$vkid);
$cls=str_replace(';','',$cls);
$type=str_replace(';','',$type);
$par=str_replace(';','',$par);
if($par=='') return 0;
$query = "INSERT INTO `tasks` (`tsk_id`,`tsk_soc`,`tsk_class`,`tsk_type`,`tsk_params`) VALUES('','".$vkid."','".$cls."','".$type."','".$par."');";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function remove_task($id)
{
$id=str_replace(' ','',$id);
$query = "DELETE FROM `tasks` WHERE `tsk_id`='".$id."';";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function update_task($id,$par)
{
$id=str_replace(' ','',$id);
$query = "UPDATE `tasks` SET `tsk_params`='".$par."' WHERE `tsk_id`='".$id."';";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function remove_tasks($vkid,$cls='')
{
$vkid=str_replace(' ','',$vkid);
$query = "DELETE FROM `tasks` WHERE `tsk_soc`='".$vkid."'";
$query.= ($cls=='')?"":" AND `tasks`.`tsk_class`='".$cls."'";
$query.= ";";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function get_task($vkid,$cls='')
{
$vkid=str_replace(' ','',$vkid);
$cls=str_replace(' ','',$cls);
$query = "SELECT * FROM `tasks` WHERE `tasks`.`tsk_soc`='".$vkid."'";
$query.= ($cls=='')?"":" AND `tasks`.`tsk_class`='".$cls."'";
$query.= " ORDER BY `tasks`.`tsk_id` ASC LIMIT 0,1";
$ex = @mysql_query($query);
$exs = @mysql_num_rows($ex);
if($exs) return @mysql_result($ex,0,'tsk_id').';'.@mysql_result($ex,0,'tsk_type').';'.@mysql_result($ex,0,'tsk_params');
return 0;
}


public function get_user_tasks($vkid,$cls='')
{
$vkid=str_replace(' ','',$vkid);
$cls=str_replace(' ','',$cls);
$query = "SELECT * FROM `tasks` WHERE `tasks`.`tsk_soc`='".$vkid."'";
$query.= ($cls=='')?"":" AND `tasks`.`tsk_class`='".$cls."'";
$query.= " ORDER BY `tasks`.`tsk_id` ASC";
$ex = @mysql_query($query);
$exs = @mysql_num_rows($ex);
$res="";
for($i=0;$i<$exs;$i++)
{
$res.=@mysql_result($ex,$i,'tsk_id').';'.@mysql_result($ex,$i,'tsk_type').';'.@mysql_result($ex,$i,'tsk_params');
$res.=($i<$exs-1)?':':'';
}
return $res;
}


public function get_user_id($ul)
{
$ul=str_replace(' ','',$ul);
$query = "SELECT * FROM `users` WHERE `u_log`='".$ul."'";
$ex = @mysql_query($query);
$exs = @mysql_num_rows($ex);
if($exs==0) return -1;
if(@mysql_result($ex,0,'u_act')==1) return  mysql_result($ex,0,'u_id');
return -1;
}

public function get_user_proxies($ulog)
{
$ul=str_replace(' ','',$ul);
$query = "SELECT DISTINCT `p_address`,`p_counter` FROM `rwproxies`,`users` WHERE `rwproxies`.`p_u_id`=`users`.`u_id` AND `users`.`u_log`='".$ulog."' ORDER BY `p_counter` ASC";
$ex = @mysql_query($query);
$exs = @mysql_num_rows($ex);
if($exs==0) return -1;
$parr=array();
for($i=0;$i<$exs;$i++)
{
array_push($parr,@mysql_result($ex,$i,'p_address').'-'.@mysql_result($ex,$i,'p_counter'));
}
return implode(';',$parr);
}

public function set_user_proxies($ulog,$proxie,$vkid)
{
$ulog=str_replace(' ','',$ulog);
$proxie=str_replace(' ','',$proxie);
$vkid=str_replace(' ','',$vkid);
$query0 = "SELECT * FROM `rwproxies`,`users` WHERE `rwproxies`.`p_a_soc`='".$vkid."' AND `rwproxies`.`p_u_id`=`users`.`u_id` AND `users`.`u_log`='".$ulog."';";
$ex0 = @mysql_query($query0);
$exs0 = @mysql_num_rows($ex0);
if($exs0>0) return 'Err';
$query = "SELECT * FROM `rwproxies`,`users` WHERE `rwproxies`.`p_address`='".$proxie."' AND `rwproxies`.`p_u_id`=`users`.`u_id` AND `users`.`u_log`='".$ulog."';";
$ex = @mysql_query($query);
$exs = @mysql_num_rows($ex);
if($exs==0) return 'Err';
if($exs==1 && @mysql_result($ex,0,'p_a_soc')=='')
{
$query5 = "UPDATE `rwproxies` SET `p_a_soc`='".$vkid."',`p_counter`='1' WHERE `rwproxies`.`p_id`='".@mysql_result($ex,0,'p_id')."';";
$ex5= @mysql_query($query5);
return 'Ok';
}
else
{
$query4 = "INSERT INTO `rwproxies` (`p_id`,`p_a_soc`,`p_address`,`p_counter`,`p_u_id`,`p_pwd`) VALUES ('','".$vkid."','".$proxie."','".($exs+1)."','".@mysql_result($ex,0,'p_u_id')."','".@mysql_result($ex,0,'p_pwd')."');";
$ex4= @mysql_query($query4);
$exs4 = @mysql_num_rows($ex4);
for($i=0;$i<$exs;$i++)
{
$query3 = "UPDATE `rwproxies` SET `p_counter`='".($exs+1)."' WHERE `p_id`= ".@mysql_result($ex,$i,'p_id').";";
$ex3= @mysql_query($query3);
$exs3 = @mysql_num_rows($ex3);
}
return 'Ok';
}
return 'Err';
}

public function options_init($vkid,$fst)
{
$query="INSERT INTO `options` (`opt_id`,`o_soc`,`type`,`save_x`,`save_y`,`save_id`,`units`,`build`,`techs`,`bio`, `upgrade`, `ltechs`, `upgrade_refresh`, `ltechs_refresh`,`build_refresh`,`save_refresh`,`techs_refresh`,`units_refresh`,`quests_refresh`,`quests`,`first`,`save_off`,`save_def`,`force`,`alert`,`afarm`,`comment`) VALUES ('','".$vkid."','R', '0', '0', '0', '0', '1', '1', '0', 1, 1, '2', '4', '2', '8', '16', '16', '80', '1', '".$fst."', '1', '1', '1','1','0', '');";
$ex=@mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}

public function options_type_change($vkid,$type)
{
$tmp=explode(':',$this->options_get($vkid));
if($tmp[0]!=$type && $type!='R' && $type!='P' && ($tmp[0]=='R' || $tmp[0]=='P'))
{
$this->add_big_friend('','',$vkid);
$query="UPDATE `options` SET `force`=1 WHERE `force`=0;";
$ex=@mysql_query($query);
}
if($tmp[0]!=$type && ($type=='R' || $type=='P') && $tmp[0]!='R' && $tmp[0]!='P')
{
$this->remove_big_friend('','',$vkid);
}
$query="UPDATE `options` SET `type`='".$type."' WHERE `o_soc`='".$vkid."';";
$ex=@mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}

public function options_change($vkid,$type,$x,$y,$id,$u,$b,$t,$br,$sr,$tr,$ur,$qr,$q,$f,$so,$sd,$comm,$alt=1,$bio=0,$up=1,$lt=1,$upr=2,$ltr=4,$afarm=0)
{
$tmp=explode(':',$this->options_get($vkid));
if($tmp[0]!=$type && $type!='R' && $type!='P' && ($tmp[0]=='R' || $tmp[0]=='P'))
{
$this->add_big_friend('','',$vkid);
}
if($tmp[0]!=$type && ($type=='R' || $type=='P') && $tmp[0]!='R' && $tmp[0]!='P')
{
$this->remove_big_friend('','',$vkid);
}
$query="UPDATE `options` SET `type`='".$type."',`save_x`='".$x."',`save_y`='".$y."',`save_id`='".$id."',`units`='".$u."',`build`='".$b."',`techs`='".$t."',`bio`='".$bio."',`upgrade`='".$up."',`ltechs`='".$lt."',`upgrade_refresh`='".$upr."',`ltechs_refresh`='".$ltr."', `build_refresh`='".$br."',`save_refresh`='".$sr."',`techs_refresh`='".$tr."',`units_refresh`='".$ur."',`quests_refresh`='".$qr."',`quests`='".$q."',`first`='".$f."',`save_off`='".$so."',`save_def`='".$sd."',`comment`='".$comm."',`alert`='".$alt."',`afarm`='".$afarm."' WHERE `o_soc`='".$vkid."';";
$ex=@mysql_query($query);
if($tmp[0]!=$type && $type!='R' && $type!='P' && ($tmp[0]=='R' || $tmp[0]=='P'))
{
$query1="UPDATE `options` SET `force`=1 WHERE `force`=0;";
$ex1=@mysql_query($query1);
}
if($ex) return 'Ok';
return 'Err';
}

public function options_ssid_change($vkid,$x,$y,$id)
{
$query="UPDATE `options` SET `save_x`='".$x."',`save_y`='".$y."',`save_id`='".$id."' WHERE `o_soc`='".$vkid."';";
$ex=@mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}

public function options_first_change($vkid,$first)
{
$query="UPDATE `options` SET `first`='".$first."' WHERE `o_soc`='".$vkid."';";
$ex=@mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}

public function options_get($vkid)
{
$query="SELECT * FROM `options` WHERE  `o_soc`='".$vkid."';";
$ex=@mysql_query($query);
$exs = @mysql_num_rows($ex);
if($exs>0) return @mysql_result($ex,0,'type').':'.@mysql_result($ex,0,'save_x').':'.@mysql_result($ex,0,'save_y').':'.@mysql_result($ex,0,'save_id').':'.@mysql_result($ex,0,'units').':'.@mysql_result($ex,0,'build').':'.@mysql_result($ex,0,'techs').':'.@mysql_result($ex,0,'build_refresh').':'.@mysql_result($ex,0,'save_refresh').':'.@mysql_result($ex,0,'techs_refresh').':'.@mysql_result($ex,0,'units_refresh').':'.@mysql_result($ex,0,'quests_refresh').':'.@mysql_result($ex,0,'quests').':'.@mysql_result($ex,0,'first').':'.@mysql_result($ex,0,'save_off').':'.@mysql_result($ex,0,'save_def').':'.@mysql_result($ex,0,'comment').':'.@mysql_result($ex,0,'force').':'.@mysql_result($ex,0,'alert').':'.@mysql_result($ex,0,'bio').':'.@mysql_result($ex,0,'upgrade').':'.@mysql_result($ex,0,'upgrade_refresh').':'.@mysql_result($ex,0,'ltechs').':'.@mysql_result($ex,0,'ltechs_refresh').':'.@mysql_result($ex,0,'afarm');
return -1;
}

public function options_alert_get($vkid)
{
$query0="SELECT `alert` FROM `options` WHERE  `o_soc`='".$vkid."';";
$ex0=@mysql_query($query0);
if($ex0) return @mysql_result($ex,0,'type').':'.@mysql_result($ex0,0,'alert');
return 0;
}

public function options_force_set($vkid,$force)
{
$query="UPDATE `options` SET `force`='".$force."' WHERE `o_soc`='".$vkid."';";
$ex=@mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}

public function options_force($vkid)
{
$query0="SELECT * FROM `options` WHERE  `o_soc`='".$vkid."';";
$ex0=@mysql_query($query0);
$exs0 = @mysql_num_rows($ex0);
if($exs0==0) return -2;
if(@mysql_result($ex0,0,'force')==0) return 0;
else
{
$query="UPDATE `options` SET `force`='".(@mysql_result($ex0,0,'force')-1)."' WHERE `o_soc`='".$vkid."';";
$ex=@mysql_query($query);
if($ex) return 1;
return -1;
}
return -3;
}

public function options_force_get($vkid)
{
$query0="SELECT `force` FROM `options` WHERE  `o_soc`='".$vkid."';";
$ex0=@mysql_query($query0);
if($ex0) return @mysql_result($ex0,0,'force');
return 0;
}

public function options_remove($vkid)
{
$query="DELETE FROM `options` WHERE `o_soc`='".$vkid."';";
$ex=@mysql_query($query);
if($ex) return 'Ok';
return 'Err';
}

public function change_user_proxies($ulog,$proxie,$vkid)
{
$query0 = "SELECT * FROM `rwproxies` WHERE `rwproxies`.`p_a_soc`='".$vkid."';";
$ex0 = @mysql_query($query0);
$exs0 = @mysql_num_rows($ex0);
if(@mysql_result($ex0,0,'p_address')==$proxie) return -1;
if($exs0==1)
{
$query2 = "SELECT * FROM `rwproxies` WHERE `rwproxies`.`p_address`='".@mysql_result($ex0,0,'p_address')."';";
$ex2 = @mysql_query($query2);
$exs2 = @mysql_num_rows($ex2);
if($exs2==0)
{
}
if($exs2==1)
{
$query1 = "UPDATE `rwproxies` SET  `rwproxies`.`p_a_soc`='',  `rwproxies`.`p_counter`=0 WHERE `rwproxies`.`p_address`='".@mysql_result($ex0,0,'p_address')."';";
$ex1 = @mysql_query($query1);
if(!$ex1) return -1;
}
if($exs2>1)
{
$query3 = "UPDATE `rwproxies` SET `rwproxies`.`p_counter`='".(@mysql_result($ex0,0,'p_counter')-1)."' WHERE `rwproxies`.`p_address`='".@mysql_result($ex0,0,'p_address')."';";
$ex3 = @mysql_query($query3);
if(!$ex3) return -1; 
$query4 = "DELETE FROM `rwproxies` WHERE `rwproxies`.`p_a_soc`='".$vkid."';";
$ex4 = @mysql_query($query4);
if(!$ex4) return -1;
}
}
return $this->set_user_proxies($ulog,$proxie,$vkid);
}

	public function set_counter($cntr,$time)
{
	$query = "UPDATE `timerlog` SET `operation` = ".$cntr.", timestamp = '".$time."' WHERE `t_id`=1";
	$ex = mysql_query($query);
	if($ex) return 1;
	return -1;
}
	
	public function get_counter()
{
	$date_today = date("m.d.y H:i:s"); 
	$query = "SELECT `operation` FROM `timerlog` LIMIT 0 , 1";
	$ex = mysql_query($query);	
	$cntr=mysql_result($ex,0,'operation');
	if($ex) return $cntr;
	return 0;
}
	
	public function castle_name($i=0)
{
	$query = "SELECT `name` FROM `castle_names` LIMIT ".(rand(0,1135))." , 1";
	$ex = mysql_query($query);	
	$cntr=mysql_result($ex,0,'name');
	if($ex) return $cntr;
	return 'Замок';
}
	
	public function get_sectorU()
{
	$query = "SELECT `build` FROM `sector` WHERE `type`='U'  LIMIT ".(rand(0,7717))." , 1";
	$ex = mysql_query($query);	
	$cntr=mysql_result($ex,0,'build');
	if($ex) return $cntr;
	return -1;
}

	public function get_sectorT()
{
	$query = "SELECT `build` FROM `sector` WHERE `type`='T'  LIMIT ".(rand(0,6947))." , 1";
	$ex = mysql_query($query);	
	$cntr=mysql_result($ex,0,'build');
	if($ex) return $cntr;
	return -1;
}

	public function get_sectorUII()
{
	$query = "SELECT `build` FROM `sectorII` WHERE `type`='U'  LIMIT ".(rand(0,9891))." , 1";
	$ex = mysql_query($query);	
	$cntr=mysql_result($ex,0,'build');
	if($ex) return $cntr;
	return -1;
}

	public function get_sectorTII()
{
	$query = "SELECT `build` FROM `sectorII` WHERE `type`='T'  LIMIT ".(rand(0,3383))." , 1";
	$ex = mysql_query($query);	
	$cntr=mysql_result($ex,0,'build');
	if($ex) return $cntr;
	return -1;
}

	public function add_scheme($vkid,$scheme)
{
	$sch=$this->get_scheme($vkid);
	if($sch==-1) return -1;
	if($sch==0) $query = "INSERT INTO `schemes` (`id`,`soc`,`scheme`) VALUES ('','".$vkid."','".$scheme."')";
	else $query = "UPDATE `schemes` SET `scheme`='".$scheme."' WHERE `soc`='".$vkid."'";
	$ex = @mysql_query($query);	
	if($ex) return 1;
	return -1;
}

	public function get_scheme($vkid)
{
	$query = "SELECT `scheme` FROM `schemes`  WHERE `schemes`.`soc`='".$vkid."'";
	$ex = @mysql_query($query);	
	$exs=@mysql_num_rows($ex);
	if($exs==0) return 0;
	return @mysql_result($ex,0,'scheme');
	return -1;
}

	public function get_login($vkid)
{
	$query = "SELECT `users`.`u_log` FROM `accounts`,`users` WHERE `users`.`u_id`=`accounts`.`a_u_id` AND `accounts`.`a_soc`='".$vkid."';";
	$ex = @mysql_query($query);	
	$cntr=@mysql_result($ex,0,'u_log');
	if($ex) return $cntr;
	return 'no name';
}
	
	public function add_message($uid,$vkid,$message)
{
	$query = "INSERT INTO `messages` (`id`,`u_id`,`soc`,`mess`) VALUES ('','".$uid."','".$vkid."','".$message."')";
	$ex = @mysql_query($query);	
	if($ex) return 1;
	return -1;
}
	
	public function get_messages($uid)
{
	$query = "SELECT * FROM `messages` WHERE `u_id`='".$uid."';";
	$ex = @mysql_query($query);	
	$res="";
	for($i=@mysql_num_rows($ex)-1;$i>=0;$i--)
	{
	$res.=@mysql_result($ex,$i,'id').'+'.@mysql_result($ex,$i,'soc').'+'.@mysql_result($ex,$i,'mess');
	$res.=($i>0)?';':'';
	}
	if($ex) return $res;
	return -1;
}

	public function remove_message($id)
{
$id=str_replace(' ','',$id);
$query = "DELETE FROM `messages` WHERE `id`='".$id."';";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function init_info($vkid)
{
$query = "INSERT INTO `res` (`r_id` ,`soc_id` ,`l` ,`u` ,`t` ,`m` ,`g` ,`gI` ,`tr_h` ,`tr_p` ,`tr_s` ,`lc` ,`ld` ,`lim` ,`dd` ,`tt` ,`alert_u` ,`alert_r` ,`alert_q` ,`alert_s` ,`alert_f` ,`updated`,`dtlupdated`) VALUES ('' , '".$vkid."', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0:0:0', '".date("d.m.y H:i:s")."', '".date("d.m.y H:i:s")."');";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function add_info($vkid,$l,$u,$t,$m,$g,$trh,$trp,$trs,$lc,$ld,$au,$ar,$aq,$as,$gI=0)
{
$query = "UPDATE `res` SET `l`='".$l."' ,`u`='".$u."' ,`t`='".$t."' ,`m`='".$m."' ,`g`='".$g."' ,`gI`='".$gI."' ,`tr_h`='".$trh."' ,`tr_p`='".$trp."' ,`tr_s`='".$trs."' ,`lc`='".$lc."' ,`ld`='".$ld."' ,`alert_u`='".$au."' ,`alert_r`='".$ar."' ,`alert_q`='".$aq."' ,`alert_s`='".$as."' ,`updated`='".date("d.m.y H:i:s")."' WHERE `soc_id`='".$vkid."';";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function add_lists($vkid,$lim,$dd,$tt)
{
$query = "UPDATE `res` SET `lim`='".$lim."' ,`dd`='".$dd."' ,`tt`='".$tt."' , `dtlupdated`='".date("d.m.y H:i:s")."' WHERE `soc_id`='".$vkid."';";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function get_info($vkid)
{
$query = "SELECT * FROM `res` WHERE `soc_id`='".$vkid."';";
$ex = @mysql_query($query);
if($ex) return @mysql_result($ex,0,'l').';'.@mysql_result($ex,0,'u').';'.@mysql_result($ex,0,'t').';'.@mysql_result($ex,0,'m').';'.@mysql_result($ex,0,'g').';'.@mysql_result($ex,0,'updated').';'.@mysql_result($ex,0,'alert_f').';'.@mysql_result($ex,0,'gI');
return 0;
}

public function get_all_info($vkid)
{
$query = "SELECT * FROM `res` WHERE `soc_id`='".$vkid."';";
$ex = @mysql_query($query);
if($ex) return @mysql_result($ex,0,'l').';'.@mysql_result($ex,0,'u').';'.@mysql_result($ex,0,'t').';'.@mysql_result($ex,0,'m').';'.@mysql_result($ex,0,'g').';'.@mysql_result($ex,0,'tr_h').';'.@mysql_result($ex,0,'tr_p').';'.@mysql_result($ex,0,'tr_s').';'.@mysql_result($ex,0,'lc').';'.@mysql_result($ex,0,'ld').';'.@mysql_result($ex,0,'lim').';'.@mysql_result($ex,0,'dd').';'.@mysql_result($ex,0,'tt').';'.@mysql_result($ex,0,'alert_u').';'.@mysql_result($ex,0,'alert_r').';'.@mysql_result($ex,0,'alert_q').';'.@mysql_result($ex,0,'updated').';'.@mysql_result($ex,0,'dtlupdated').';'.@mysql_result($ex,0,'alert_f').';'.@mysql_result($ex,0,'alert_s').';'.@mysql_result($ex,0,'gI');
return 0;
}

public function get_alert_info($vkid)
{
$query = "SELECT * FROM `res` WHERE `soc_id`='".$vkid."';";
$ex = @mysql_query($query);
if($ex) return @mysql_result($ex,0,'alert_u').';'.@mysql_result($ex,0,'alert_r').';'.@mysql_result($ex,0,'alert_q').';'.@mysql_result($ex,0,'alert_f').';'.@mysql_result($ex,0,'alert_s');
return 0;
}

public function set_alert_info($vkid,$af,$au,$ar,$aq)
{
$query = "UPDATE `res` SET `alert_f`='".$af."' ,`alert_u`='".$au."' ,`alert_r`='".$ar."' , `alert_q`='".$aq."' WHERE `soc_id`='".$vkid."';";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function update_alert_info($vkid,$type,$quan=1)
{
$query0 = "SELECT `alert_f` FROM `res` WHERE `soc_id`='".$vkid."';";
$ex0 = @mysql_query($query0);
if(!$ex0) return 0; 
$arr=explode(':',@mysql_result($ex0,0,'alert_f'));
if($arr[$type]==2) $arr[$type]-=$quan;
$query = "UPDATE `res` SET `alert_f`='".implode(':',$arr)."' WHERE `soc_id`='".$vkid."';";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function remove_info($vkid)
{
$query = "DELETE FROM `res` WHERE `soc_id`='".$vkid."';";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function add_alert($vkid,$alert,$enemy,$type,$dep,$arr)
{
$query = "INSERT INTO `alerts` (`id` ,`soc`,`alert` ,`enemy` ,`type` ,`noted`,`dep`,`arr`) VALUES ('', '".$vkid."' , '".$alert."', '".$enemy."', '".$type."', '0','".$dep."','".$arr."');";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function isnt_alerted($alert,$enemy,$type)
{
$query = "SELECT * FROM `alerts` WHERE `alert`='".$alert."' AND `enemy`='".$enemy."' AND `type`='".$type."' AND `noted`=1;";
$ex = @mysql_query($query);
$exs = @mysql_num_rows($ex);
if($exs > 0) return 0;
return 1;
}

public function is_alert($alert,$enemy,$type)
{
$query = "SELECT * FROM `alerts` WHERE `alert`='".$alert."' AND `enemy`='".$enemy."' AND `type`='".$type."';";
$ex = @mysql_query($query);
$exs = @mysql_num_rows($ex);
if($exs > 0) return 0;
return 1;
}

public function set_alerted($vkid,$type)
{
$this->update_alert_info($vkid,$type);
$query = "UPDATE `alerts` SET `noted`=1 WHERE `soc`='".$vkid."' AND `type`='".($type+2)."';";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}



public function get_alerts()
{
$query = "SELECT `u_log`,`soc_id`,`alert_f` FROM `res`,`users`,`accounts` WHERE `res`.`soc_id`=`accounts`.`a_soc` AND `accounts`.`a_u_id`=`users`.`u_id`";
$ex = @mysql_query($query);
$exs = @mysql_num_rows($ex);
$alerts=Array();
for($i=0;$i<$exs;$i++)
{
array_push($alerts,@mysql_result($ex,$i,'u_log').':'.@mysql_result($ex,$i,'soc_id').':'.@mysql_result($ex,$i,'alert_f'));
}
if($exs > 0) return implode(';',$alerts);
return -1;
}

public function get_level($vkid)
{
$query = "SELECT `l` FROM `res` WHERE `soc_id`='".$vkid."';";
$ex = @mysql_query($query);
if($ex) return @mysql_result($ex,0,'l');
return -1;
}

public function show_attacks($log)
{
$query="SELECT * FROM `alerts` WHERE `arr`>UNIX_TIMESTAMP()*1000 AND `soc` IN (SELECT DISTINCT `accounts`.`a_soc` FROM `acl`,`users`,`accounts` WHERE `acl`.`vkid`='".$log."' AND (`acl`.`access` LIKE CONCAT(`users`.`u_id`,\",%\") OR `acl`.`access` LIKE CONCAT(\"%,\",`users`.`u_id`) OR `acl`.`access` LIKE CONCAT(\"%,\",`users`.`u_id`,\",%\") OR `acl`.`access` = `users`.`u_id`) AND `accounts`.`a_u_id`=`users`.`u_id`) ORDER BY `arr` ASC;";
$ex = @mysql_query($query);
$exs = @mysql_num_rows($ex);
$alerts=Array();
for($i=0;$i<$exs;$i++)
{
array_push($alerts,@mysql_result($ex,$i,'soc').':'.@mysql_result($ex,$i,'alert').':'.@mysql_result($ex,$i,'enemy').':'.@mysql_result($ex,$i,'type').':'.@mysql_result($ex,$i,'dep').':'.@mysql_result($ex,$i,'arr').':'.@mysql_result($ex,$i,'noted'));
}
if($exs > 0) return implode(';',$alerts);
return -1;
}

public function apo()
{
$query = "UPDATE `users` SET `u_act`=0 WHERE 1";
$ex = @mysql_query($query);
if($ex) return 1;
return -1;
}

// insert mailboxes
public function add_account3($nick,$vkid,$pass)
{
        $query = "INSERT INTO `mailboxes`(`soc_id`,`mail`,`pass`) VALUES('".$vkid."','".$nick."','".$pass."');";
        $ex = mysql_query($query);
        if($ex) return 'Ok';
        return 'Err';
}

//insert warelimit 
public function add_build($soc, $ware_lim, $bank_lim, $builds)
{
    $query = "SELECT * FROM `buildings` WHERE `b_soc` = '".$soc."'";
    $ex = @mysql_query($query);
    if (@mysql_num_rows($ex) ==0)
    {
        $query = "INSERT INTO `buildings` (`id` ,`b_soc`,`ware_limit` ,`bank_limit` ,`buildings`)
                VALUES ('', '".$soc."' , '".$ware_lim."', '".$bank_lim."', '".$builds."');";
        $ex = @mysql_query($query);
        if($ex) return 1;
        return 0;
    }
    else
    {
        $query = "UPDATE `buildings` SET `ware_limit`='".$ware_lim."', `bank_limit`='".$bank_lim."', `buildings`='".$builds."'
                WHERE `b_soc`='".$soc."' ";
        $ex = @mysql_query($query);
        if($ex) return 1;
        return 0;
    }

}
// get ware_limit
public function get_build($soc)
{
    $query = "SELECT * FROM `buildings` WHERE `b_soc` = '".$soc."'";
    $ex = @mysql_query($query);
    $exs = @mysql_num_rows($ex);
    $builds=Array();
    if ($exs)
    {
        array_push($builds,@mysql_result($ex,0,'ware_limit').':'.@mysql_result($ex,0,'bank_limit').':'.@mysql_result($ex,0,'buildings'));
    }
    if($exs > 0) return implode(';',$builds);
    return -1;
}

//========== mapping
/* RW
	public function set_mapcounter($cntr)
{
	$query = "UPDATE `_rwmap_counter` SET `counter` = ".$cntr." WHERE `id`=1";
	$ex = mysql_query($query);
	if($ex) return 1;
	return -1;
}
	
	public function get_mapcounter()
{
	$query = "SELECT `counter` FROM `_rwmap_counter` LIMIT 0 , 1";
	$ex = mysql_query($query);	
	$cntr=mysql_result($ex,0,'counter');
	if($ex) return $cntr;
	return 0;
}

public function add_mapname($sname)
{
$query = "INSERT INTO `_rwmap_sector_names` (`id`,`sname`) VALUES('','".$sname."');";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}

public function add_mapsector($uid,$vkid,$name,$img,$lvl,$exp,$x,$y,$sx,$sy,$sname,$allid,$alname,$scheme,$medals,$r_a,$r_d,$r_r,$r_o,$r_b)
{
$this->add_mapname($sname);
$query = "INSERT INTO `_rwmap_sectors` (`id` ,`user` ,`vkid` ,`n` ,`img` ,`level` ,`exp` ,`x` ,`y` ,`sx` ,`sy` ,`sname` ,`alliance` ,`alname` ,`scheme` , `medals`,`r_a` ,`r_d` ,`r_r` ,`r_o` ,`r_b`,`updated`) VALUES ('', '".$uid."', '".$vkid."', '".$name."', '".$img."', '".$lvl."', '".$exp."','".$x."','".$y."', '".$sx."', '".$sy."', '".$sname."', '".$allid."', '".$alname."', '".$scheme."', '".$medals."', '".$r_a."', '".$r_d."', '".$r_r."', '".$r_o."', '".$r_b."','".date("m.d.y H:i:s")."');";
$ex = @mysql_query($query);
if($ex) return 1;
return 0;
}


*/

public function DJDee($x,$y,$vkid,$history="")
{
if($vkid!="")
{
$headers=($history=="")? array("Content-Type: text/xml; charset=utf-8","SOAPAction: \"http://tempuri.org/GetSectorBySocialID\""):array("Content-Type: text/xml; charset=utf-8","SOAPAction: \"http://tempuri.org/GetSectorHistoryBySocialID\"");
$data='<?xml version="1.0" encoding="utf-8"?><soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body>';
$data.=($history=="")? '<GetSectorBySocialID xmlns="http://tempuri.org/"><socialId>vk'.$vkid.'</socialId></GetSectorBySocialID>':'<GetSectorHistoryBySocialID xmlns="http://tempuri.org/"><socialId>vk'.$vkid.'</socialId></GetSectorHistoryBySocialID>';
$data.='</soap:Body></soap:Envelope>';
}
else
{
$headers=($history=="")? array("Content-Type: text/xml; charset=utf-8","SOAPAction: \"http://tempuri.org/GetSectorByCoordinate\""):array("Content-Type: text/xml; charset=utf-8","SOAPAction: \"http://tempuri.org/GetSectorHistoryByCoordinate\""); 
$data='<?xml version="1.0" encoding="utf-8"?><soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body>';
$data.=($history=="")? '<GetSectorByCoordinate xmlns="http://tempuri.org/"><x>'.$x.'</x><y>'.$y.'</y></GetSectorByCoordinate>':'<GetSectorHistoryByCoordinate xmlns="http://tempuri.org/"><x>'.$x.'</x><y>'.$y.'</y></GetSectorHistoryByCoordinate>';
$data.='</soap:Body></soap:Envelope>';
}


$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, "http://46.182.26.73/YaderkaAPI/Api.asmx");
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers); 
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)");
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
curl_setopt ($ch, CURLOPT_POST, 1);
curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, 20);
$output = curl_exec($ch);
curl_close($ch);
return $output;
}



	
}



?>