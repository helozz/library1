<?php
//==============================================================================================
//  TDApi
//==============================================================================================
class TDApi
{
var $userid;
var $authKey;
var $v;
var $referer;
var $friends;
var $id;
var $server;
var $proxy;
var $proxypwd;
var $origin;

//=============================================================================================
//  Constructor
//=============================================================================================
function TDApi($userid,$authKey,$friends,$v,$referer,$proxy,$proxypwd,$origin,$sgm=0)
{
if(!empty($userid)) $this->userid=$userid;
if(!empty($authKey)) $this->authKey=$authKey;
$this->proxy=$proxy;
$this->v=$v;
$this->referer=$referer;
$this->friends=$friends;
$this->proxypwd=$proxypwd;
$this->origin=$origin;

if($sgm==0) $this->server="http://173.244.186.114/GeoVk/Segment00/segment.ashx";// ;"http://htest.galaxywars.ru/st_addr.php";
if($sgm==1) $this->server="http://173.244.186.146/GeoVk/Segment01/segment.ashx";
if($sgm==2) $this->server="http://173.244.186.162/GeoVk/Segment02/segment.ashx";
return $this;
}
//====================================================================================================
//
//====================================================================================================
function sign_request($json,$method='GetMap')
{
$s="The Matrix has you...".$json.$method.$this->userid.$this->authKey;
return md5($s);
}

function sign_request2($json,$method='GetMap')
{
$s="The Matrix has you...".$json.$method;
return md5($s);
}

function getHeaders2($method,$json)
{
$headers=array(
"Referer: ".$this->referer,
"Content-type: text/html",
//"Origin: ".$this->origin,
"sign-code: ".$this->sign_request2($json,$method),
"locale-name: ru-RU",
"server-method: $method",
"client-ver: ".$this->v);
return $headers;
}

function getHeaders($method,$json)
{
$headers=array(
"Referer: ".$this->referer,
"Content-type: text/html",
"sign-code: ".$this->sign_request($json,$method),
"locale-name: ru-RU",
//"Origin: ".$this->origin,
"signin-authKey: ".$this->authKey,
"signin-userId: ".$this->userid,
"server-method: $method",
"client-ver: ".$this->v);
return $headers;
}

function getPage($url,$post='',$headers=array())
{
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
if($this->proxy!='0.0.0.0:0') curl_setopt($ch, CURLOPT_PROXY, $this->proxy);
if($this->proxy!='0.0.0.0:0') curl_setopt($ch, CURLOPT_PROXYUSERPWD, $this->proxypwd);
//CURLOPT_PROXYUSERPWD: Стока с именем пользователя и паролем к HTTP прокси-серверу в виде [username]:[password].
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers); 
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)");
curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
curl_setopt($ch,CURLOPT_ENCODING, 1);
if(!empty($post)) curl_setopt ($ch, CURLOPT_POST, 1);
    else curl_setopt ($ch, CURLOPT_POST, 0);
curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, 20);
$output = curl_exec($ch);
if (curl_errno($ch)) {return "{\"cerror\":\"".$this->userid." CURLERROR#".curl_errno($ch).$this->proxy."\"}";exit();}
$output=str_replace(chr(5),"",$output);
//$output=str_replace(chr(27),"",$output);
/*		
$s=$output;
//echo $s;///////////////////////////

$s=preg_replace("|^[^{]+{|","{",$s);
$s=preg_replace("|}[^}]+$|","}",$s);
	//$s=preg_replace("|^[^\[]+\[|","[",$s);
	//$s=preg_replace("|][^\]]+$|","]",$s);
$tmp=json_decode($s,true);
if($tmp==NULL) 
{
return "{\"cerror\":\"".$this->userid." CURLERROR#JSON\"}";
//echo $this->proxy.' '.$output;
exit();
}
*/

//list($headers,$out)=preg_split("/\r*\n\r*\n/",$output,2);
//$aheaders=preg_split("/\r*\n/",$headers,-1,PREG_SPLIT_NO_EMPTY);  ///???????????????????????????????????????????????
curl_close($ch);
return $output;
}

function getCommonData($name,$img)
{
if ($img=='') $img='http://vk.com/images/camera_a.gif';
if ($name=='') return '{"m":"errdbn"}';
if ($this->friends=='') return '{"m":"errdbf"}';
if ($this->authKey=='') return '{"m":"errdba"}';

$c=0;
while(!empty($this->server))
	{
	$c++;
	$o='{"s":{"x":"NaN","n":"'.$name.'","a":true,"l":"ru-RU","t":0,"u":"'.$img.'","p":null,"i":"'.$this->userid.'","d":"'.str_replace(' ',';',$name).';NaN;ru_RU;0;;"},"f":['.$this->friends.'],"i":"'.$this->userid.'","l":"menu","mr":""}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("SignIn",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
	$obj=json_decode($s,true);
	if(!$obj) echo json_last_error();
	$this->server='';
	if(!empty($obj["r"])) 	$this->server="http://".$obj["r"]."/segment.ashx";
	
	if($c>5) return false;
	}
return $s;	
}


function GetMap($x1,$y1)
{
$x=floor($x1/20);
$y=floor($y1/20);
$o="{\"b\":[{\"x\":$x,\"y\":$y}]}";
$s=$this->getPage($this->server,$o,$this->getHeaders("GetMap",$o));
$s=preg_replace("|}[^}]+$|","}",$s);
$s=preg_replace("|^[^{]*{|","{",$s);////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////BOM
$obj=json_decode($s,true);
return $obj;
}

function GetUData($id)
{
if($id==0) return('{"err":"They do not wanna visit general"}');
$s=$this->getPage($this->server,$o,$this->getHeaders("VisitUser2",$id));
$s=preg_replace("|}[^}]+$|","}",$s);
return $s;
}

function GetId($x,$y,$z=0)
{
$tid;
$name;
$map=$this->GetMap($x,$y);
for($ind=0;$ind<count($map[n]);$ind++)
{
if ($map[n][$ind][m][x]==$x && $map[n][$ind][m][y]==$y)
{
 $tid=$map[n][$ind][i];
 $name=$map[n][$ind][n];
 $name.=';'.$map[n][$ind][p];
 $name.=';'.$map[n][$ind][s];
 $name.=';'.$map[n][$ind][m][x].';'.$map[n][$ind][m][y];
}
}
for($ind=0;$ind<count($map[l]);$ind++)
{
if ($map[l][$ind][m][x]==$x && $map[l][$ind][m][y]==$y)
{
 $tid='-'.$map[l][$ind][i];
$name=$map[l][$ind][a];
}
}
$res=$tid;
$res.=($z==0)?'':';'.$name;
return $res;
}

/*
function GetSD()
{
$req=$this->server.'?method=SignIn.GetStaticData&data="h3pU76hP9hMG1VzOAnqyhQ=="&locale=ru-RU&sign=29b78701044e42f8f1ed3ac4dffab34e';
$tobj=file_get_contents($req);
$exp=preg_replace("|}[^}]+$|","}",$tobj);
$obj=json_decode($exp,true);
return $obj[sot];
}
*/

function UserRefresh($q,$r,$t,$u,$ci,$cs,$a,$cr)
{
$al='';
if($a>0) $al=',"a.'.$a.'"';

$o='{"y":null,"q":['.$q.'],"r":'.$r.',"chat":{"i":'.$ci.',"r":["m.'.$cr.'"'.$al.'],"s":'.$cs.'},"n":{"n":1},"t":'.$t.',"g":'.($t-$u).',"u":'.$u.'}';

	$s=$this->getPage($this->server,$o,$this->getHeaders("AutoRefresh",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

//============================================
/*
function BackAllUnits($img,$name)
{

$data=$this->getCommonData($name,$img);
$dataarr=json_decode($data,true);
if($sgm==0) $this->server="http://173.244.186.114/GeoVk/Segment00/segment.ashx";// ;"http://htest.galaxywars.ru/st_addr.php";
if($sgm==1) $this->server="http://173.244.186.146/GeoVk/Segment01/segment.ashx";
if($sgm==2) $this->server="http://173.244.186.162/GeoVk/Segment02/segment.ashx";

for($i=0;$i<count($dataarr[u][g][wd][u]);$i++)
{
if($dataarr[u][g][wd][u][$i][o]==$dataarr[u][i] && !$dataarr[u][g][wd][u][$i][sp] && !$dataarr[u][g][wd][u][$i][sr] && !$dataarr[u][g][wd][u][$i][sb] && !$dataarr[u][g][wd][u][$i][sf] && $dataarr[u][g][wd][u][$i][t]!=0) 
{
$tmpun= json_encode($dataarr[u][g][wd][u][$i][pt][t][t]);
$tmpun=str_replace('{','',$tmpun);
$tmpun=str_replace('}','',$tmpun);
$this->SendUnit($dataarr[u][g][r]+$i,time()*1000+25152,$dataarr[t],$dataarr[u][g][wd][u][$i][o],$dataarr[u][g][wd][u][$i][t],$tmpun,9);

}
}

return 'End Script';
}
*/
//==============================================

function BackDef($q,$r,$t,$u,$myid,$ox,$oy,$todo,$mode)
{
$tmparr=explode('!',$todo);
if($mode==1) $sarr = $this->GetSaveId($ox,$oy,1);
$res;

for($i=0;$i<count($tmparr);$i++)
{
$tmparr1=explode(';',$tmparr[$i]);

if($mode==0)
{
$res=$this->SendUnit($q,$r,$t,$u,$myid,$tmparr1[0],$tmparr1[1],9);
}
if($mode==1)
{
if(in_array ( $tmparr1[0],$sarr )) $res=$this->SendUnit($q,$r,$t,$u,$myid,$tmparr1[0],$tmparr1[1],9);
else $res="{}";
}
$r+=1;
$t+=979;
}
return $res;
}

function GiftDraft($q,$r,$t,$u,$myid,$toid,$ordr)
{

$tmparr=explode(';',$ordr);

$res;

for($i=0;$i<count($tmparr);$i++)
{
$tmparr1=explode(':',$tmparr[$i]);
$res=$this->SendDraft($q,$r,$t,$u,$myid,$toid,$tmparr1[1],$tmparr1[0]);
$r+=1;
$t+=937;
}
return $res;
}

function SendUnit($q,$r,$t,$u,$myid,$toid,$tr,$tp,$ul=0)
{
if($toid==0) return('{"err":"They do not wanna visit general"}');
//if($toid==$myid) return('{"err":"Nowhere to move"}');
//if($toid<0 && $tp=='2') return('{"err":"The object is not for attack"}');
$tr=str_replace('\\','',$tr);
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"ti":{"r":null,"t":{"t":{'.$tr.'}},"o":'.$tp.'},"t":'.$toid.',"o":'.$myid.',"di":null,"u":'.$ul.'}}';

	$s=$this->getPage($this->server,$o,$this->getHeaders("SendUnit",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
			
return $s;	
}

function SendUnit24($q,$r,$t,$u,$myid,$toid,$tr,$tp,$ul=0)
{
$s=$this->SendUnit($q,$r,$t,$u,$myid,$toid,$tr,$tp,$ul);
$sarr=json_decode($s,true);
if($sarr['o'] || $sarr['g'])
{
$tmp=($sarr['o'])? $sarr['o']:array_pop($sarr['g']['u']['wd']);
if($tmp['sf']['a']-$tmp['sf']['d']>3600000) 
{
$s2=$this->CancelUnit($q,++$r,$t,$u,$tmp['i']);
$sarr2=json_decode($s,true);
if($sarr2['cerror']) return $s;
else return $s2;
}
}
return $s;	
}

function SendRes24($q,$r,$t,$u,$myid,$toid,$res,$rt)
{
$s=$this->SendRes($q,$r,$t,$u,$myid,$toid,$res,$rt);
$sarr=json_decode($s,true);
if($sarr['o'] || $sarr['g'])
{
$tmp=($sarr['o'])? $sarr['o']:array_pop($sarr['g']['wd']['u']);
if($tmp['sf']['a']-$tmp['sf']['d']>3600000) 
{
$s2=$this->CancelUnit($q,++$r,$t,$u,$tmp['i']);
$sarr2=json_decode($s,true);
if($sarr2['cerror']) return $s;
else return $s2;
}
}
return $s;
}

function SendDraft24($q,$r,$t,$u,$myid,$toid,$dpt,$dt)
{
$s=$this->SendDraft($q,$r,$t,$u,$myid,$toid,$dpt,$dt);
$sarr=json_decode($s,true);
if($sarr['o'] || $sarr['g'])
{
$tmp=($sarr['o'])? $sarr['o']:array_pop($sarr['g']['u']['wd']);
if($tmp['sf']['a']-$tmp['sf']['d']>3600000) 
{
$s2=$this->CancelUnit($q,++$r,$t,$u,$tmp['i']);
$sarr2=json_decode($s,true);
if($sarr2['cerror']) return $s;
else return $s2;
}
}
return $s;
}

function CancelUnit($q,$r,$t,$u,$cu)
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"n":{"n":1},"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"i":'.$cu.'}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("CancelUnit",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);

return $s;	
}

function SendRes($q,$r,$t,$u,$myid,$toid,$res,$rt)
{
if($toid==0) return('{"err":"The general doesn\'t need for resourses"}');
if($toid==$myid) return('{"err":"Nowhere to move"}');
$o1='"m":';
$o1.=($rt=='m')?$res:'0';
$o1.=',"t":';
$o1.=($rt=='t')?$res:'0';
$o1.=',"g":0,"c":0,"u":';
$o1.=($rt=='u')?$res:'0';
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"ti":null,"t":'.$toid.',"o":'.$myid.',"u":0,"di":{"r":{'.$o1.'},"s":0,"c":0,"d":null}}}';

	$s=$this->getPage($this->server,$o,$this->getHeaders("SendUnit",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
			
return $s;	
}

function SendDraft($q,$r,$t,$u,$myid,$toid,$dpt,$dt)
{
if($toid==0) return('{"err":"The general doesn\'t need for any drafts"}');
if($toid==$myid) return('{"err":"Nowhere to move"}');
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"ti":null,"t":'.$toid.',"o":'.$myid.',"u":0,"di":{"r":null,"s":0,"c":0,"d":{"p":'.$dpt.',"t":'.$dt.'}}}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("SendUnit",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
		
return $s;	
}

function AddOffer($q,$r,$t,$u,$myid,$fr,$to,$k,$nt)
{
if($myid==0) return('{"err":"The general doesn\'t need for anything"}');
if($fr==$to) return('{"err":"ERR AddOffer"}');
if($k>2 || $k<0.5) return "ERR AddOffer";
$of='"m":';
$of.=($fr=='m')?$nt:'0';
$of.=',"t":';
$of.=($fr=='t')?$nt:'0';
$of.=',"g":0,"c":0,"u":';
$of.=($fr=='u')?$nt:'0';
if($k>=1)$nt2=floor($nt*$k);
if($k<1)$nt2=ceil($nt*$k);
$ot='"m":';
$ot.=($to=='m')?$nt2:'0';
$ot.=',"t":';
$ot.=($to=='t')?$nt2:'0';
$ot.=',"g":0,"c":0,"u":';
$ot.=($to=='u')?$nt2:'0';
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"s":{"r":{'.$ot.'},"s":0,"c":0,"d":null},"t":null,"o":{"r":{'.$of.'},"s":0,"c":0,"d":null},"u":'.$myid.',"i":-1}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("TradingOffers.AddOffer",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function AcceptOffer($q,$r,$t,$u,$frid,$fr,$to,$k,$nt,$t0,$on,$vfr)
{
if($frid==0) return('{"err":"The general doesn\'t need for anything"}');
if($fr==$to) return('{"err":"ERR AcceptOffer"}');
if($k>2 || $k<0.5) return('{"err":"ERR AcceptOffer"}');
$of='"m":';
$of.=($fr=='m')?$nt:'0';
$of.=',"t":';
$of.=($fr=='t')?$nt:'0';
$of.=',"g":0,"c":0,"u":';
$of.=($fr=='u')?$nt:'0';
if($k>=1)$nt2=floor($nt*$k);
if($k<1)$nt2=ceil($nt*$k);
$ot='"m":';
$ot.=($to=='m')?$nt2:'0';
$ot.=',"t":';
$ot.=($to=='t')?$nt2:'0';
$ot.=',"g":0,"c":0,"u":';
$ot.=($to=='u')?$nt2:'0';
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"o":{"s":{"r":{'.$ot.'},"s":0,"c":0,"d":null},"t":'.$t0.',"o":{"r":{'.$of.'},"s":'.$vfr.',"c":1,"d":null},"u":'.$frid.',"i":'.$on.'}}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("TradingOffers.AcceptOffer",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function AcceptOffer2($q,$r,$t,$u,$frid,$fr,$to,$k,$nt,$t0,$on,$vfr,$c)
{
if($frid==0) return('{"err":"The general doesn\'t need for anything"}');
if($fr==$to) return('{"err":"ERR AcceptOffer"}');

$of='"m":';
$of.=($fr=='m')?$nt:'0';
$of.=',"t":';
$of.=($fr=='t')?$nt:'0';
$of.=',"g":0,"c":0,"u":';
$of.=($fr=='u')?$nt:'0';
$nt2=$k;
$ot='"m":';
$ot.=($to=='m')?$nt2:'0';
$ot.=',"t":';
$ot.=($to=='t')?$nt2:'0';
$ot.=',"g":0,"c":0,"u":';
$ot.=($to=='u')?$nt2:'0';
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"o":{"s":{"r":{'.$ot.'},"s":0,"c":0,"d":null},"t":'.$t0.',"o":{"r":{'.$of.'},"s":'.$vfr.',"c":'.$c.',"d":null},"u":'.$frid.',"i":'.$on.'}}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("TradingOffers.AcceptOffer",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function RemoveOffer($q,$r,$t,$u,$on)
{
if($on==0) return('{"err":"Err zero"}');
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":'.$on.'}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("TradingOffers.RemoveOffer",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;		
}

function GetOffer($x,$n,$i,$f)
{
$o='{"x":'.$x.',"s":0,"n":'.$n.',"i":'.($i*6).',"o":0,"c":6,"f":'.$f.',"d":null,"g":null}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("TradingOffers.GetOffers",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;		
}

function AllOffers($x,$n,$f)
{
$arrnames=array();
$arroffers=array();
for($i=0;$i<10;$i++)
{
	$s0=$this->GetOffer($x,$n,$i,$f);
	$tmp=json_decode($s0,true);
	$arrnames=array_merge($arrnames,$tmp[n]);
	$arroffers=array_merge($arroffers,$tmp[o]);

}
$s=array();
array_push($s,$arroffers);
array_push($s,$arrnames);

return json_encode($s);		
}

function BuyUnit($q,$r,$t,$u,$un,$n)
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"g":false,"o":{"t":'.$un.',"tci":null,"c":{"s":null,"f":null,"l":0},"d":null,"gi":{"m":false,"x":0,"y":0},"bi":null,"ti":{"c":'.$n.'},"i":-1}}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("Buy",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function GetSaveId($x,$y,$z=0)
{
$marr=array();
$marr1=array();
$map=$this->GetMap($x,$y);

for($ind=0;$ind<count($map[n]);$ind++)
{
if ((($map[n][$ind][m][x]==$x && $map[n][$ind][m][y]==$y) XOR 1) && $map[n][$ind][l]>=1 && $map[n][$ind][l]<5)
{
array_push($marr,$map[n][$ind][i]);
}
if($z==2 && $map[n][$ind][l]>=15 && $map[n][$ind][l]<=25)
{
array_push($marr1,$map[n][$ind][i]);
}
}

if(count($marr)<2)
{
for($ind=0;$ind<count($map[n]);$ind++)
{
if ((($map[n][$ind][m][x]==$x && $map[n][$ind][m][y]==$y) XOR 1) && $map[n][$ind][l]>=1 && $map[n][$ind][l]<7)
{
array_push($marr,$map[n][$ind][i]);
}
}
}
/*
if(count($marr)<2)
{
for($ind=0;$ind<count($map[n]);$ind++)
{
if ((($map[n][$ind][m][x]==$x && $map[n][$ind][m][y]==$y) XOR 1) && $map[n][$ind][l]>=1 && $map[n][$ind][l]<7)
{
array_push($marr,$map[n][$ind][i]);
}
}
}
*/
if($z==0) return $marr[rand(0,count($marr)-1)];
if($z==1) return $marr;
if($z==2) return json_encode($marr1);
}

function SendMessage($q,$r,$t,$u,$txt,$from,$to)
{
if($to==0 || $txt=='') return('{"err":"Err zero"}');
$o='{"y":null,"t":'.$t.',"o":{"b":{"x":"'.$txt.'","n":0,"d":null,"o":null,"e":"","f":'.$from.',"r":0,"h":0,"s":null,"i":-1,"t":10,"b":null,"u":'.$to.',"c":null,"a":'.(rand($t+21000,$t+21500)).',"l":0}},"u":'.$u.',"q":['.$q.'],"g":'.($t-$u).',"r":'.$r.'}';

	$s=$this->getPage($this->server,$o,$this->getHeaders("Messages.Send",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;		
}

//======================================================================
//	wt@inetgames
//======================================================================

function StartQuest($q,$r,$t,$u,$i)
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"i":'.$i.'}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("StartQuest",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function TryQuest($q,$r,$t,$u,$p,$c)
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"p":'.$p.',"c":'.$c.'}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("TryCompleteQuest",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function CloseQuest($q,$r,$t,$u,$i)
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"i":'.$i.'}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("CloseQuest",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function BuyBuild($q,$r,$t,$u,$i,$x,$y,$n,$l,$m='false')
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"g":false,"o":{"i":'.$i.',"t":'.$n.',"gi":{"m":'.$m.',"x":'.$x.',"y":'.$y.'},"bi":{},"c":{"s":null,"f":null,"l":'.($l-1).'},"ti":null,"d":null,"tci":null}}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("Buy",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function BuyTech($q,$r,$t,$u,$i,$l)
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"g":false,"o":{"i":-1,"t":'.$i.',"gi":{"m":false,"x":0,"y":0},"bi":null,"c":{"s":null,"f":null,"l":'.($l-1).'},"ti":null,"d":null,"tci":{}}}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("Buy",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function CybForUser($q,$r,$t,$u,$id)
{
$o='{"y":null,"n":{"n":1},"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"u":'.$id.'}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("CreateCyborgForUser",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function CybMake($q,$r,$t,$u,$id)
{
$o='{"y":null,"n":{"n":1},"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"u":'.$id.'}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("CreateCyborg",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function SectorName($q,$r,$t,$u,$n)
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":"'.$n.'"}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("SetSectorName",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function SetSegment($sgm)
{
if($sgm==0) $this->server="http://173.244.186.114/GeoVk/Segment00/segment.ashx";// ;"http://htest.galaxywars.ru/st_addr.php";
if($sgm==1) $this->server="http://173.244.186.146/GeoVk/Segment01/segment.ashx";
if($sgm==2) $this->server="http://173.244.186.162/GeoVk/Segment02/segment.ashx";
return;	
}

function SaveScene($q,$r,$t,$u,$a) //$a[0]:  [i][t][rev][x][y][l]
{
$o='{"y":null,"n":{"n":1},"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"s":{"x":94,"y":94,"o":[';

for($i=0;$i<count($a);$i++)
{
$o.='{"gi":{"m":'.$a[$i][2].',"x":'.$a[$i][3].',"y":'.$a[$i][4].'},"i":'.$a[$i][0].',"bi":{},"t":'.$a[$i][1].',"ti":null,"c":{"s":null,"f":null,"l":'.($a[$i][5]-1).'},"tci":null,"d":null}';
$o.=($i<count($a)-1)?',':'';
}
$o.=']},"d":null,"w":false}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("SaveScene",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;
}

function GetUserBuildings($name,$img)
{
$me=$this->getCommonData($name,$img);
$mearr=@json_decode($me,true);
$resarr=Array();
array_push($resarr,$mearr[u][g][rtc]);
for($b=0;$b<count($mearr[u][g][sd][s][o]);$b++)
{
if(($mearr[u][g][sd][s][o][$b][t]>=100 && $mearr[u][g][sd][s][o][$b][t]<=200) || $mearr[u][g][sd][s][o][$b][t]==600)
{
$bool=($mearr[u][g][sd][s][o][$b][gi][m]==0)?'false':'true';
$res= $mearr[u][g][sd][s][o][$b][i].','.$mearr[u][g][sd][s][o][$b][t].','.$bool.','.$mearr[u][g][sd][s][o][$b][gi][x].','.$mearr[u][g][sd][s][o][$b][gi][y].','.$mearr[u][g][sd][s][o][$b][c][l];
$res.= ($mearr[u][g][sd][s][o][$b][c][f])?',1':',0';
array_push($resarr,$res);
}
}
return implode(';',$resarr);
}

function BuildShuffle($name,$img,$bx,$by,$bm) // 
{
$me=$this->getCommonData($name,$img);
$mearr=@json_decode($me,true);
$resarr=Array();
array_push($resarr,$mearr[u][g][rtc]);
for($b=0;$b<count($mearr[u][g][sd][s][o]);$b++)
{
if(($mearr[u][g][sd][s][o][$b][t]>=100 && $mearr[u][g][sd][s][o][$b][t]<=200) || $mearr[u][g][sd][s][o][$b][t]==600)
{
$bool=($mearr[u][g][sd][s][o][$b][gi][m]==0)?'false':'true';
$res= $mearr[u][g][sd][s][o][$b][i].','.$mearr[u][g][sd][s][o][$b][t].','.$bool.','.$mearr[u][g][sd][s][o][$b][gi][x].','.$mearr[u][g][sd][s][o][$b][gi][y].','.$mearr[u][g][sd][s][o][$b][c][l];
$res.= ($mearr[u][g][sd][s][o][$b][c][f])?',1':',0';
array_push($resarr,$res);
}
}
$q="";
for($i=0;$i<count($mearr[u][g][qd][q]);$i++) //Установка q
{
$q.=$mearr[u][g][qd][q][$i][i];
$q.=($i<count($mearr[u][g][qd][q])-1)?',':'';
}

$sector=$resarr;
$a=Array();
for($i=0;$i<count($sector);$i++)
{
$b=explode(',',$sector[$i]);
$c=Array();
if($b[3]==74 && $b[4]==74) 
{
array_push($c,$b[0]);
array_push($c,$b[1]);
array_push($c,$bm);
array_push($c,$bx);
array_push($c,$by);
}
else
{
array_push($c,$b[0]);
array_push($c,$b[1]);
array_push($c,$b[2]);
array_push($c,$b[3]);
array_push($c,$b[4]);
}
array_push($a,$c);
}
$s=$this->SaveScene($q,$mearr[u][g][r],microtime(true)*1000,$mearr[t],$a);
return $s;	
}

function WTExt72($q,$r,$t,$u) // 98
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"p":{"u":50,"m":50,"t":50,"g":0},"x":72,"f":10}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("BuyExtension",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function WTExt76($q,$r,$t,$u) // 102
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"p":{"u":50,"m":50,"t":50,"g":0},"x":76,"f":30}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("BuyExtension",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function RWExt64($q,$r,$t,$u) // 86
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"p":{"u":50,"m":50,"t":50,"g":0},"x":64,"f":10}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("BuyExtension",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function RWExt68($q,$r,$t,$u) // 90
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"p":{"u":50,"m":50,"t":50,"g":0},"x":68,"f":20}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("BuyExtension",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function RWExt72($q,$r,$t,$u) // 94
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"p":{"u":50,"m":50,"t":50,"g":0},"x":72,"f":30}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("BuyExtension",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function GetRate($user)
{
$o=$user;
	$s=$this->getPage($this->server,$o,$this->getHeaders("Rating.GetUserRatings",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function GetSector($user)
{
$o=$user;
	$s=$this->getPage($this->server,$o,$this->getHeaders("VisitUser2",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}
function GetProfile($user) // own user segment only, I guess
{
$o=$user;
	$s=$this->getPage($this->server,$o,$this->getHeaders("VisitUserProfile",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;	
}

function GetAlliances($als) 
{
$o='['.implode(',',$als).']';
	$s=$this->getPage($this->server,$o,$this->getHeaders("GetAllianceNotes",$o));
	$s=preg_replace("|^[^\[]+\[|","[",$s);
	$s=preg_replace("|][^\]]+$|","]",$s);
return $s;	
}


function GetUser($user) 
{
$o='{"u":['.implode(',',$user).']}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("GetUserNotes",$o));
	$s=preg_replace("|^[^\[]+\[|","[",$s);
	$s=preg_replace("|][^\]]+$|","]",$s);
return $s;	
}

function GetLocation($location) 
{
$o='{"i":['.implode(',',$location).']}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("GetLocationNotes",$o));
	$s=preg_replace("|^[^\[]+\[|","[",$s);
	$s=preg_replace("|][^\]]+$|","]",$s);
return $s;	
}

function GetRadarLocations($q,$r,$t,$u)
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.'}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("GetRadarLocations",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;
}

function BioPlazma500($q,$r,$t,$u)
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"i":3,"f":1}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("StartConversionJob",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;
}

function ImproveSkill($q,$r,$t,$u,$s)
{
$o='{"y":null,"q":['.$q.'],"r":'.$r.',"t":'.$t.',"g":'.($t-$u).',"u":'.$u.',"o":{"i":'.$s.'}}';
	$s=$this->getPage($this->server,$o,$this->getHeaders("ImproveSkill",$o));
	$s=preg_replace("|^[^{]+{|","{",$s);
	$s=preg_replace("|}[^}]+$|","}",$s);
return $s;
}



}

?>