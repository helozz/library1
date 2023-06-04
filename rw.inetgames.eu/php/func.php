<?
	include "Shttp.class.php";
	function GetVKInfo($vkid)
	{
		$vkid=str_replace('vk','',$vkid);
		$db=new db_query(0,"vk14569359","14569359");
		$r = $db->get_acc("14569359","", "vk".$vkid);
		if ($r!="")
		{
			$nn = explode(' ', $r);
			$ud['first_name']=$nn[0];
			$ud['last_name']=$nn[1];
			return $r;
		}
		else 
		{
		$userid = '116571329';
		$ud="";$ud['sex']=0;		
		$req='https://api.vk.com/method/getProfiles?uids='.$vkid;
		$shttp = new Shttp();
		$shttp->init();
		$res = $db->get_proxy("vk".$userid);
		if ($res)
		{
			$ip = explode(';',$res);			
			$proxy = $ip[0];
			$proxypwd = $ip[1];		
			$shttp->set_opt(CURLOPT_HTTPPROXYTUNNEL, TRUE);
			$shttp->set_opt(CURLOPT_PROXY, $proxy);
			$shttp->set_opt(CURLOPT_PROXYUSERPWD, $proxypwd);
		}	
		$shttp->get($req);
		$s = $shttp->data;
		//$s=file_get_contents($req);
		 $s=preg_replace("|^[^{]+{|","{",$s);
		 $s=preg_replace("|}[^}]+$|","}",$s);
		 $obj=json_decode($s,true);
		 $ud['first_name']=$obj['response']['0']['first_name'];
		 $ud['last_name']=$obj['response']['0']['last_name'];
		 $ud['sex']=$obj['response']['0']['sex'];
		 $ud['bdate']=$obj['response']['0']['bdate'];
		 //$ud['nname']=$obj['response']['0']['nickname'];
		 $ud['ico']=$obj['response']['0']['photo'];
		 $ud['img']=$obj['response']['0']['photo_big'];
		 //$ud['online']=$obj['response']['0']['online'];
		 $ud['name'] = $obj['response']['0']['first_name']." ".$obj['response']['0']['last_name'];
		 $ud['vkid'] = $vkid;
		 //echo "$ud[name]<br><img src=\"$ud[img]\"/><br><img src=\"$ud[img_m]\"/><br><img src=\"$ud[img_b]\"/><br>";
		 $r = $db->add_leftacc($vkid, $ud['first_name'], $ud['last_name'], $ud['img']);
		 return $ud;
		}		 
	}
	function getAvatar($uid)
	{	
		$uid=str_replace('vk','',$uid);
		$db=new db_query(0,"vk14569359","14569359");
		$r = $db->getImage('vk'.$uid);	
		//echo $r;
		if ($r=="")
		{
			$userid = '116571329';
			$ud="";$ud['sex']=0;		
			$req="http://vk.com/id".$uid;
			$query="SELECT * FROM mailboxes WHERE `soc_id`='".$userid."'";
			$data = mysql_query($query);
			$row = mysql_fetch_array($data);
		
			$pass=$row["pass"];   // пасс для контакта
			$mail=$row["mail"];   // мэйл для контакта		

			$url_login='http://login.vk.com/';
			$post_data='?act=login&email='.urlencode($mail).'&pass='.$pass;
			$shttp = new Shttp();
			$shttp->init();
			$res = $db->get_proxy("vk".$userid);
			if ($res)
			{
				$ip = explode(';',$res);			
				$proxy = $ip[0];
				$proxypwd = $ip[1];		
				$shttp->set_opt(CURLOPT_HTTPPROXYTUNNEL, TRUE);
				$shttp->set_opt(CURLOPT_PROXY, $proxy);
				$shttp->set_opt(CURLOPT_PROXYUSERPWD, $proxypwd);
			}
			$shttp->post($url_login,$post_data);
			$shttp->get($url_login.$post_data);		
			$shttp->get($req);
			$s = $shttp->data;
			//echo iconv('cp1251','utf8',$s);
			$pt="/<a[^>]+><img [^>]* src=\"(http:\/\/[^\"]+)\"/s";
			preg_match($pt,$s,$av);	
			//echo var_dump($av);
			$pt="|<title>([^<]*)</title>|s";
			preg_match($pt,$s,$nm);	
			$nx = explode(' ', $nm[1]); 
			$fname = iconv('cp1251','utf-8', $nx[0]);
			$sname = iconv('cp1251','utf-8', $nx[1]);
			$r = $db->add_leftacc($uid, $fname, $sname, $av[1]);
			return $av[1];
		}
		else 
		{
			return $r;
		}
	}
	
	
function mewrite($somecontent)
{
$somecontent='
'.date("d.m.y H:i:s").' '.$somecontent;
$filename = '/var/www/nick/data/www/rw.inetgames.eu/hlogs/'.str_replace('/','_',getenv("SCRIPT_NAME")).'.txt';
//$filename = '/var/www/nick/data/www/rw.inetgames.eu/hlogs'.stripslashes(getenv("SCRIPT_NAME")).'.log';

    if (!$handle = fopen($filename, a)) {
         return;
    }
    if (fwrite($handle, $somecontent) === FALSE) {
        return;
    }
    fclose($handle);
}


function set_army($array,$inf,$tec,$def,$off,$cyb,$in)
{
$offarr=Array('1','4','6','8','10','12','15','16','17','20','22','24','26','28','31','32','45','47','48','49','51','52','64','67','69','71','73','75','78','79','84','86','87','93','95','9003','9004');
$infarr=Array('1','2','3','4','13','17','18','19','20','29','37','38','39','40','41','42','43','44','45','46','49','50','64','65','66','67','76','80','81','82','83','84','85');
$inarray=Array('13','29','59','60','9000','9001','76','9002','31');
$ansarr=Array();

$resarr=Array();
$resarr2=Array();

if($inf==1){foreach ($infarr as $key) {
if($array[$key]>0) $resarr2[$key]=$array[$key];}
}
if($tec==1)
{foreach ($array as $key => $value) {
if(!in_array($key,$infarr) && $value>0 && $key!='33') $resarr2[$key]=$value;
}}
if($off==1){foreach ($offarr as $key) {
if($array[$key]>0) $resarr[$key]=$array[$key];
}}
if($def==1){foreach ($array as $key => $value) {
if(!in_array($key,$offarr) && !in_array($key,$inarray) && $value>0 && $key!='33') $resarr[$key]=$value;
}}

if($in==1){foreach ($inarray as $key) {
if($array[$key]>0) $resarr[$key]=$array[$key];
}
}
if($cyb==1 && $array["33"]>0) 
{
$resarr["33"]=$array["33"];
$resarr2["33"]=$array["33"];
}
return array_intersect_key($resarr,$resarr2);
}

function get_army($array,$inf,$tec,$def,$off,$cyb,$in)
{
$ansarr=Array();
$resarr1=set_army($array,$inf,$tec,$def,$off,$cyb,$in);
foreach($resarr1 as $key=>$value) 
{
array_push($ansarr,'"'.$key.'":'.$value);
}
return implode(',',$ansarr);
}

function rem_army($array,$inf,$tec,$def,$off,$cyb,$in)
{
return array_diff_key($array,set_army($array,$inf,$tec,$def,$off,$cyb,$in));
}
	
	
?>	