<?php
session_start();
//attacks ver 0.4
require_once("config.php");	
require_once("func.php");	
require_once("../auto/db_query.php");
require_once("../auto/TDApi.php");
require_once("../auto/TDdata.php");
$authuid = $_SESSION['soc_id'];
$hash = $_SESSION['hash'];
$calchash = md5(CLIENT_ID.''.$_SESSION['r_log'].''.SECRET);
if ($hash == $calchash)
{
	if ($_GET['uid']>0)
	{
	$db=new db_query(0,"vk".$_GET['uid'],$_SESSION['soc_id']);
	$uinfo = $db->get_acc($_SESSION['soc_id'],'',"vk".$_GET['uid']);
	$accname = mb_convert_encoding($uinfo,'cp1251','utf-8');
	$sid=$db->get_sid("vk".$_GET['uid']);
	$alert=explode(';',$db->get_alert_info("vk".$_GET['uid']));
	$me=new TDApi("vk".$_GET['uid'],$db->get_auth("vk".$_GET['uid']),$db->friends,$db->v,$db->referer,$db->proxy,$db->proxypwd,$db->origin,$alert[4]);
	//echo $me->GetUser(13077);
	$time1 =  microtime(true)*1000;
	$game=$me->TryQuest($alert[2],$alert[1]-1,microtime(true)*1000,$alert[0],0,0);
	$gamearr=json_decode($game,true);
	$alert[1]=$gamearr['g']['r'];
	if(!$gamearr['g']) header("Location:..".getenv("SCRIPT_NAME").'?'.getenv("QUERY_STRING"));
	$timePS = (int)($gamearr['t']-$time1); // теоретическая разница времени нашего сервера и сервера игры
	

		if($_GET['ord']>0 || $_GET['o'] || $_GET['o0'] || $_GET['o1'] || $_GET['r0'] || $_GET['r1'] || $_GET['d0'] || $_GET['d1'] || $_GET['b1'])
	{
	$flbl=0;
	$hide=0;
	$arre=Array();
		$str=getenv("QUERY_STRING");
		$strarr=explode('&',$str);
		$reqqq=Array();
	$options=explode(':',$db->options_get("vk".$_GET['uid']));
	
	if($_GET['ord']>0 && ($_GET['ch1']>0 || $_GET['ch2']>0))
	{
	switch ($_GET['ord'])
	{
	case 14:
	{
	$army=get_army($gamearr['g']['td']['r']['t'],$_GET['ch1'],$_GET['ch2'],1,1,0,1);
	if($options[3]>0 && $army!='')
	{
	$hide=1;
	$arre=rem_army($gamearr['g']['td']['r']['t'],$_GET['ch1'],$_GET['ch2'],1,1,0,1);
	$gamearr['g']['td']['r']['t']=$arre;
	if($options[3]!=$sid) $req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$options[3],$army,5);
	if($options[3]==$sid) $req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$options[3],$army,7);
	array_push($reqqq,$req);
	}
	
	}
	break;
	case 1:
	{
	$army=get_army($gamearr['g']['td']['r']['t'],$_GET['ch1'],$_GET['ch2'],0,1,0,0);
	if($options[3]>0 && $army!='')
	{
	$hide=1;
	$arre=rem_army($gamearr['g']['td']['r']['t'],$_GET['ch1'],$_GET['ch2'],0,1,0,0);
	$gamearr['g']['td']['r']['t']=$arre;
	if($options[3]!=$sid) $req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$options[3],$army,5);
	if($options[3]==$sid) $req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$options[3],$army,7);
	array_push($reqqq,$req);
	}
	
	}
	break;
	case 2:
	{
	$army=get_army($gamearr['g']['td']['r']['t'],$_GET['ch1'],$_GET['ch2'],1,0,0,0);
	if($options[3]>0 && $army!='')
	{
	$hide=1;
	$arre=rem_army($gamearr['g']['td']['r']['t'],$_GET['ch1'],$_GET['ch2'],1,0,0,0);
	$gamearr['g']['td']['r']['t']=$arre;
	if($options[3]!=$sid) $req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$options[3],$army,5);
	if($options[3]==$sid) $req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$options[3],$army,7);
	array_push($reqqq,$req);
	}
	
	}
	break;
	case 3:
	{
	$army=get_army($gamearr['g']['td']['r']['t'],$_GET['ch1'],$_GET['ch2'],0,0,0,1);
	if($options[3]>0 && $army!='')
	{
	$hide=1;
	$arre=rem_army($gamearr['g']['td']['r']['t'],$_GET['ch1'],$_GET['ch2'],0,0,0,1);
	$gamearr['g']['td']['r']['t']=$arre;
	if($options[3]!=$sid) $req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$options[3],$army,5);
	if($options[3]==$sid) $req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$options[3],$army,7);
	array_push($reqqq,$req);
	}
	
	}
	break;	
	case 4:
	{
	for($i=count($gamearr[g][wd][u])-1;$i>=0;$i--)
	{
	if($gamearr['g']['wd']['u'][$i]['t']>0 &&  $gamearr['g']['wd']['u'][$i]['o']==$sid && $gamearr['g']['wd']['u'][$i]['t']!=0  && !$gamearr['g']['wd']['u'][$i]['sf'] && !$gamearr['g']['wd']['u'][$i]['sb'] && !$gamearr['g']['wd']['u'][$i]['sr'] && $gamearr['g']['wd']['u'][$i]['pt']['t']['t'])
	{
	$army=get_army($gamearr['g']['wd']['u'][$i]['pt']['t']['t'],$_GET['ch1'],$_GET['ch2'],1,1,1,1);
	$arre=rem_army($gamearr['g']['wd']['u'][$i]['pt']['t']['t'],$_GET['ch1'],$_GET['ch2'],1,1,1,1);
	if($army!='')
	{
	$ultt=0;
	if($gamearr['g']['wd']['u'][$i]['t']<0)
	{
	$gamearr['g']['wd']['u'][$i]['t']=-$gamearr['g']['wd']['u'][$i]['t'];
	$ultt=1;
	}	
	$req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$gamearr['g']['wd']['u'][$i]['t'],$army,9,$ultt);
	if(count($arre)>0)$gamearr['g']['wd']['u'][$i]['pt']['t']['t']=$arre;
	else array_splice($gamearr['g']['wd']['u'],$i,1);
	$alert[1]++;
	$flbl=0;
	array_push($reqqq,$req);
	}
	}
	}
	}
	break;		
	case 5:
	{
	for($i=count($gamearr[g][wd][u])-1;$i>=0;$i--)
	{
	if($gamearr['g']['wd']['u'][$i]['t']>0 && $gamearr['g']['wd']['u'][$i]['t']!=0 && $gamearr['g']['wd']['u'][$i]['o']==$sid && !$gamearr['g']['wd']['u'][$i]['sf'] && !$gamearr['g']['wd']['u'][$i]['sb'] && !$gamearr['g']['wd']['u'][$i]['sr'] && $gamearr['g']['wd']['u'][$i]['pt']['t']['t'])
	{
	$army=get_army($gamearr['g']['wd']['u'][$i]['pt']['t']['t'],$_GET['ch1'],$_GET['ch2'],0,1,0,0);
	$arre=rem_army($gamearr['g']['wd']['u'][$i]['pt']['t']['t'],$_GET['ch1'],$_GET['ch2'],0,1,0,0);
	if($army!='')
	{
	$ultt=0;
	if($gamearr['g']['wd']['u'][$i]['t']<0)
	{
	$gamearr['g']['wd']['u'][$i]['t']=-$gamearr['g']['wd']['u'][$i]['t'];
	$ultt=1;
	}
	//echo $army;
	$req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$gamearr['g']['wd']['u'][$i]['t'],$army,9,$ultt);
	if(count($arre)>0)$gamearr['g']['wd']['u'][$i]['pt']['t']['t']=$arre;
	else array_splice($gamearr['g']['wd']['u'],$i,1);	
	$alert[1]++;
	$flbl=0;
	array_push($reqqq,$req);
	}
	}
	}
	}
	break;	
	case 6:
	{
	for($i=count($gamearr[g][wd][u])-1;$i>=0;$i--)
	{
	if($gamearr['g']['wd']['u'][$i]['t']>0 && $gamearr['g']['wd']['u'][$i]['t']!=0 && $gamearr['g']['wd']['u'][$i]['o']==$sid && !$gamearr['g']['wd']['u'][$i]['sf'] && !$gamearr['g']['wd']['u'][$i]['sb'] && !$gamearr['g']['wd']['u'][$i]['sr'] && $gamearr['g']['wd']['u'][$i]['pt']['t']['t'])
	{
	$army=get_army($gamearr['g']['wd']['u'][$i]['pt']['t']['t'],$_GET['ch1'],$_GET['ch2'],1,0,0,0);
	$arre=rem_army($gamearr['g']['wd']['u'][$i]['pt']['t']['t'],$_GET['ch1'],$_GET['ch2'],1,0,0,0);
	//echo $army;
	if($army!='')
	{
	$ultt=0;
	if($gamearr['g']['wd']['u'][$i]['t']<0)
	{
	$gamearr['g']['wd']['u'][$i]['t']=-$gamearr['g']['wd']['u'][$i]['t'];
	$ultt=1;
	}	
	$req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$gamearr['g']['wd']['u'][$i]['t'],$army,9,$ultt);
	//echo $req;
	if(count($arre)>0)$gamearr['g']['wd']['u'][$i]['pt']['t']['t']=$arre;
	else array_splice($gamearr['g']['wd']['u'],$i,1);
	$alert[1]++;
	$flbl=0;
	array_push($reqqq,$req);
	}
	}
	}
	}
	break;	
	case 7:
	{
	for($i=count($gamearr[g][wd][u])-1;$i>=0;$i--)
	{
	if($gamearr['g']['wd']['u'][$i]['t']>0 && $gamearr['g']['wd']['u'][$i]['t']!=0 && $gamearr['g']['wd']['u'][$i]['o']==$sid && !$gamearr['g']['wd']['u'][$i]['sf'] && !$gamearr['g']['wd']['u'][$i]['sb'] && !$gamearr['g']['wd']['u'][$i]['sr'] && $gamearr['g']['wd']['u'][$i]['pt']['t']['t'])
	{
	$army=get_army($gamearr['g']['wd']['u'][$i]['pt']['t']['t'],$_GET['ch1'],$_GET['ch2'],0,0,0,1);
	$arre=rem_army($gamearr['g']['wd']['u'][$i]['pt']['t']['t'],$_GET['ch1'],$_GET['ch2'],0,0,0,1);
	if($army!='')
	{
	$ultt=0;
	if($gamearr['g']['wd']['u'][$i]['t']<0)
	{
	$gamearr['g']['wd']['u'][$i]['t']=-$gamearr['g']['wd']['u'][$i]['t'];
	$ultt=1;
	}		
	if(count($arre)>0)$gamearr['g']['wd']['u'][$i]['pt']['t']['t']=$arre;
	else array_splice($gamearr['g']['wd']['u'],$i,1);
	$req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$gamearr['g']['wd']['u'][$i]['t'],$army,9,$ultt);
	$alert[1]++;
	$flbl=0;
	array_push($reqqq,$req);
	}
	}
	}
	}
	break;		
	case 13:
	{
	for($i=count($gamearr[g][wd][u])-1;$i>=0;$i--)
	{
	if($gamearr['g']['wd']['u'][$i]['o']>0 && $gamearr['g']['wd']['u'][$i]['o']!=0 && $gamearr['g']['wd']['u'][$i]['t']==$sid  && $gamearr['g']['wd']['u'][$i]['pt']['o']==5 && !$gamearr['g']['wd']['u'][$i]['sf'] && !$gamearr['g']['wd']['u'][$i]['sb'] && !$gamearr['g']['wd']['u'][$i]['sr'] && $gamearr['g']['wd']['u'][$i]['pt']['t']['t'])
	{
	$army=get_army($gamearr['g']['wd']['u'][$i]['pt']['t']['t'],$_GET['ch1'],$_GET['ch2'],1,1,$_GET['ch2'],1);
	$arre=rem_army($gamearr['g']['wd']['u'][$i]['pt']['t']['t'],$_GET['ch1'],$_GET['ch2'],1,1,$_GET['ch2'],1);
	if($army!='')
	{
	$flbl=0;
	$ultt=0;
	if($gamearr['g']['wd']['u'][$i]['o']<0)
	{
	$gamearr['g']['wd']['u'][$i]['o']=-$gamearr['g']['wd']['u'][$i]['o'];
	$ultt=1;
	}
	$req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$gamearr['g']['wd']['u'][$i]['o'],$sid,$army,9,$ultt);
	if(count($arre)>0)$gamearr['g']['wd']['u'][$i]['pt']['t']['t']=$arre;
	else array_splice($gamearr['g']['wd']['u'],$i,1);
	$alert[1]++;
	}
	}
	}
	}
	break;
	}
	
	
	for($r=0;$r<count($reqqq);$r++)
	{
	$reqarr=@json_decode($reqqq[$r],true);
	if($reqarr['cerror']) 
	{
	header("Location:..".getenv("SCRIPT_NAME").'?'.getenv("QUERY_STRING"));
	die();
	}
	else 
	{
	if($reqarr['m']) 
	{
	mewrite('
	ord
	'.$req.'
	
	');
	}
	if($reqarr['g']) 
	{
	$gamearr['g']=$reqarr['g'];
	$alert[1]=$gamearr['g']['r'];
	}
	if($reqarr['o']) 
	{
	if(!$reqarr['o']['sb'])
	{
	if(!$reqarr['o']['sr']['a']) $reqarr['o']['sr']['a']=$reqarr['o']['sr']['d']+150000;
	if($reqarr['o']['sr']) $reqarr['o']['sb']=$reqarr['o']['sr'];
	}
	array_push($gamearr[g][wd][u],$reqarr['o']);
	if($reqarr['v']) $alert[1]=$reqarr['v'];
	}
	}
	}
	$reqqq=Array();
	for($i=count($strarr)-1;$i>=0;$i--)
	{
	$strtmp=explode('=',$strarr[$i]);
	if($strtmp[0]=='ord' || $strtmp[0]=='ch1' || $strtmp[0]=='ch2') 
	{
	if($strtmp[0]=='ord') $_GET['ord']='';
	if($strtmp[0]=='ch1') $_GET['ch1']='';
	if($strtmp[0]=='ch2') $_GET['ch2']='';
	array_splice($strarr,$i,1);
	}
	}
	$str=implode('&',$strarr);
	//header("Location:..".getenv("SCRIPT_NAME").'?'.$str);
	//die();
	}
	
	
	if($_GET['o'])
	{
	$arr=explode('_',$_GET['o']);
	for($j=0;$j<count($arr);$j+=2)
	{
	for($i=0;$i<count($gamearr[g][wd][u]);$i++)
	{
	if($gamearr[g][wd][u][$i][t]==$arr[$j] && $gamearr[g][wd][u][$i][i]==$arr[$j+1] && !$gamearr['g']['wd']['u'][$i]['sf'] && !$gamearr['g']['wd']['u'][$i]['sb'] && !$gamearr['g']['wd']['u'][$i]['sr'] && $gamearr['g']['wd']['u'][$i]['pt']['t']['t'])
	{
	$army=get_army($gamearr['g']['wd']['u'][$i]['pt']['t']['t'],1,1,1,1,1,1);
	if($army!='')
	{
	$ultt=0;
	/*if($gamearr['g']['wd']['u'][$i]['t']<0)
	{
	$gamearr['g']['wd']['u'][$i]['t']=-$gamearr['g']['wd']['u'][$i]['t'];
	$ultt=1;
	}*/
	
	$req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$arr[$j],$army,9,$ultt);
	//echo $req;	
	//mewrite($req.'\n\n');
	$tmpo=$gamearr[g][wd][u][$i][t].'_'.$gamearr[g][wd][u][$i][i];
	$reqarr=json_decode($req,true);
	/*if($reqarr['cerror']) 
	{
	$req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$arr[$j],$army,9,$ultt);
	$reqarr=json_decode($req,true);
	}*/
	if(!$reqarr['cerror']) 
	{
	$alert[1]++;
	if($reqarr['g']) 
	{
	$gamearr['g']=$reqarr['g'];
	$alert[1]=$gamearr['g']['r'];
	}
	if($reqarr['o']) 
	{
	if(!$reqarr['o']['sr']['a']) $reqarr['o']['sr']['a']=$reqarr['o']['sr']['d']+150000;
	if($reqarr['o']['sr']) $reqarr['o']['sb']=$reqarr['o']['sr'];
	$gamearr[g][wd][u][$i]=$reqarr['o'];
	//echo json_encode($gamearr[g][wd][u]);
		if($reqarr['v']) $alert[1]=$reqarr['v'];
	}
	if($reqarr['m']) 
	{
	mewrite('
	o
	'.$req.'
	
	');
	}
	//$flbl=1;
	for($k=count($strarr)-1;$k>=0;$k--)
	{
	$strtmp=explode('=',$strarr[$k]);
	if($strtmp[0]=='o' && strpos($strtmp[1],$tmpo)!==false) 
	{
	if(count(explode('_',$_GET['o']))==2) 
	{
	array_splice($strarr,$k,1);
	$_GET['o']='';
	}
	else
	{
	$strtmp[1]=str_replace($tmpo,'',$strtmp[1]);
	$strtmp[1]=str_replace('__','_',$strtmp[1]);	
	$strtmp[1]=trim($strtmp[1],'_');
	$_GET['o']=$strtmp[1];
	$strarr[$k]=implode('=',$strtmp);
	}
	}	}	}
	}	
	}
	}
	}
	}
	
	if($_GET['o1'])
	{
	$arr=explode('_',$_GET['o1']);
	for($j=0;$j<count($arr);$j+=2)
	{
	for($i=0;$i<count($gamearr[g][wd][u]);$i++)
	{
	//echo 3;
	if($gamearr[g][wd][u][$i][o]==$arr[$j] && $gamearr[g][wd][u][$i][i]==$arr[$j+1] && !$gamearr['g']['wd']['u'][$i]['sf'] && !$gamearr['g']['wd']['u'][$i]['sb'] && !$gamearr['g']['wd']['u'][$i]['sr'] &&  count($gamearr['g']['td']['r']['t'])>0)
	{//echo 2;
	$army=get_army($gamearr['g']['td']['r']['t'],1,1,0,1,1,0);
	if($army!='')
	{//echo 1;
	$ultt=0;
	/*if($gamearr['g']['wd']['u'][$i]['t']<0)
	{
	$gamearr['g']['wd']['u'][$i]['t']=-$gamearr['g']['wd']['u'][$i]['t'];
	$ultt=1;
	}*/
	$req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$sid,$army,5,$ultt);
	//echo $req;
	mewrite($req.'\n\n');
	$alert[1]++;
	$tmpo=$gamearr[g][wd][u][$i][o].'_'.$gamearr[g][wd][u][$i][i];
	$reqarr=json_decode($req,true);
	/*if($reqarr['cerror']) 
	{echo 0;
	$req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$sid,$army,5,$ultt);
	$reqarr=json_decode($req,true);
	}*/
	if(!$reqarr['cerror']) 
	{
	$alert[1]++;
	if($reqarr['g']) 
	{
	$gamearr['g']=$reqarr['g'];
	$alert[1]=$gamearr['g']['r'];
	}
	if($reqarr['o']) 
	{
	if(!$reqarr['o']['sr']['a']) $reqarr['o']['sr']['a']=$reqarr['o']['sr']['d']+150000;
	if($reqarr['o']['sr']) $reqarr['o']['sb']=$reqarr['o']['sr'];	
	$gamearr[g][wd][u][$i]=$reqarr['o'];
		if($reqarr['v']) $alert[1]=$reqarr['v'];
	}
	if($reqarr['m']) 
	{
	mewrite('
	o1
	'.$req.'
	
	');
	}
	//$flbl=1;
	for($k=count($strarr)-1;$k>=0;$k--)
	{
	$strtmp=explode('=',$strarr[$k]);
	if($strtmp[0]=='o1' && strpos($strtmp[1],$tmpo)!==false) 
	{
	if(count(explode('_',$_GET['o1']))==2) 
	{
	array_splice($strarr,$k,1);
	$_GET['o1']='';
	}
	else
	{
	$strtmp[1]=str_replace($tmpo,'',$strtmp[1]);
	$strtmp[1]=str_replace('__','_',$strtmp[1]);	
	$strtmp[1]=trim($strtmp[1],'_');
	$_GET['o']=$strtmp[1];
	$strarr[$k]=implode('=',$strtmp);
	}
	}	}	}
	
	}	
	}
	}
	}
	}
	
	
	if($_GET['d1'])
	{
	$arr=explode('_',$_GET['d1']);
	for($j=0;$j<count($arr);$j+=2)
	{
	for($i=0;$i<count($gamearr[g][wd][u]);$i++)
	{
	if($gamearr[g][wd][u][$i][t]==$arr[$j] && $gamearr[g][wd][u][$i][i]==$arr[$j+1] && !$gamearr['g']['wd']['u'][$i]['sf'] && !$gamearr['g']['wd']['u'][$i]['sb'] && !$gamearr['g']['wd']['u'][$i]['sr'] && $gamearr['g']['wd']['u'][$i]['pt']['t']['t'])
	{
	$army=get_army($gamearr['g']['wd']['u'][$i]['pt']['t']['t'],1,1,1,1,1,1);
	if($army!='')
	{
	$ultt=0;
	/*if($gamearr['g']['wd']['u'][$i]['t']<0)
	{
	$gamearr['g']['wd']['u'][$i]['t']=-$gamearr['g']['wd']['u'][$i]['t'];
	$ultt=1;
	}*/
	
	$req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$arr[$j],$army,9,$ultt);
	
	
	//echo $req;	
	//mewrite($req.'\n\n');
	$tmpo=$gamearr[g][wd][u][$i][t].'_'.$gamearr[g][wd][u][$i][i];
	$reqarr=json_decode($req,true);
	/*if($reqarr['cerror']) 
	{
	$req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$arr[$j],$army,9,$ultt);
	$reqarr=json_decode($req,true);
	}*/
	if(!$reqarr['cerror']) 
	{
	$alert[1]++;
	if($reqarr['g']) 
	{
	$gamearr['g']=$reqarr['g'];
	$alert[1]=$gamearr['g']['r'];
	}
	if($reqarr['o']) 
	{
	if(!$reqarr['o']['sb'])
	{
	if(!$reqarr['o']['sr']['a']) $reqarr['o']['sr']['a']=$reqarr['o']['sr']['d']+150000;
	if($reqarr['o']['sr']) $reqarr['o']['sb']=$reqarr['o']['sr'];
	}
	$gamearr[g][wd][u][$i]=$reqarr['o'];
	//echo json_encode($gamearr[g][wd][u]);
		if($reqarr['v']) $alert[1]=$reqarr['v'];
	}
	if($reqarr['m']) 
	{
	mewrite('
	d1
	'.$req.'
	
	');
	}
	//$flbl=1;
	for($k=count($strarr)-1;$k>=0;$k--)
	{
	$strtmp=explode('=',$strarr[$k]);
	if($strtmp[0]=='d1' && strpos($strtmp[1],$tmpo)!==false) 
	{
	if(count(explode('_',$_GET['d1']))==2) 
	{
	array_splice($strarr,$k,1);
	$_GET['d1']='';
	}
	else
	{
	$strtmp[1]=str_replace($tmpo,'',$strtmp[1]);
	$strtmp[1]=str_replace('__','_',$strtmp[1]);	
	$strtmp[1]=trim($strtmp[1],'_');
	$_GET['d1']=$strtmp[1];
	$strarr[$k]=implode('=',$strtmp);
	}	
	}	}	}
	}	
	}
	}
	}
	}
	
	
	if($_GET['d0'])
	{
	$arr=explode('_',$_GET['d0']);
	for($j=0;$j<count($arr);$j+=2)
	{
	for($i=count($gamearr[g][wd][u])-1;$i>=0;$i--)
	{
	if($gamearr[g][wd][u][$i][o]==$arr[$j] && $gamearr[g][wd][u][$i][i]==$arr[$j+1] && !$gamearr['g']['wd']['u'][$i]['sf'] && !$gamearr['g']['wd']['u'][$i]['sb'] && !$gamearr['g']['wd']['u'][$i]['sr'] && $gamearr['g']['wd']['u'][$i]['pt']['t']['t'])
	{
	$army=get_army($gamearr['g']['wd']['u'][$i]['pt']['t']['t'],1,1,1,1,1,1);
	if($army!='')
	{
	$ultt=0;
	
	$req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$arr[$j],$sid,$army,9,$ultt);

	$tmpo=$gamearr[g][wd][u][$i][o].'_'.$gamearr[g][wd][u][$i][i];
	$reqarr=json_decode($req,true);
	if(!$reqarr['cerror']) 
	{
	$alert[1]++;
	if($reqarr['g']) 
	{
	$gamearr['g']=$reqarr['g'];
	$alert[1]=$gamearr['g']['r'];
	}
	if($reqarr['o']) 
	{
	array_splice($gamearr[g][wd][u],$i,1);
	if($reqarr['v']) $alert[1]=$reqarr['v'];
	}
	if($reqarr['m']) 
	{
	mewrite('
	d0
	'.$req.'
	
	');
	}
	//$flbl=1;
	for($k=count($strarr)-1;$k>=0;$k--)
	{
	$strtmp=explode('=',$strarr[$k]);
	if($strtmp[0]=='d0' && strpos($strtmp[1],$tmpo)!==false) 
	{
	if(count(explode('_',$_GET['d0']))==2) 
	{
	array_splice($strarr,$k,1);
	$_GET['d0']='';
	}
	else
	{
	$strtmp[1]=str_replace($tmpo,'',$strtmp[1]);
	$strtmp[1]=str_replace('__','_',$strtmp[1]);	
	$strtmp[1]=trim($strtmp[1],'_');
	$_GET['d0']=$strtmp[1];
	$strarr[$k]=implode('=',$strtmp);
	}	
	}	}	}
	}	
	}
	}
	}
	}
	
	
	if($_GET['b1'])
	{
	$arr=explode('_',$_GET['b1']);
	for($j=0;$j<count($arr);$j+=3)
	{
	$flll=1;
	for($i=0;$i<count($gamearr[g][wd][u]);$i++)
	{
	if($gamearr[g][wd][u][$i][t]==$arr[$j] && $gamearr[g][wd][u][$i][i]==$arr[$j+1] && $gamearr['g']['wd']['u'][$i]['sb'] && $gamearr['g']['wd']['u'][$i]['pt']['t']['t'])
	{
	$flll=0;
	}
	}
	if($flll==1)
	{
	$army=str_replace('-','"',$arr[$j+2]);
	$army=str_replace('{','',$army);
	$army=str_replace('}','',$army);
	if($options[3]>0 && $army!='')
	{
	$ultt=0;
	if($sid!=$options[3]) $req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$options[3],$army,5,$ultt);
	if($sid==$options[3]) $req=$me->SendUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$sid,$options[3],$army,7,$ultt);	
	
	$armyarr=explode(',',$army);
	foreach($gamearr['g']['td']['r']['t'] as $key=>$value) 
	{
	if(strpos($army,'"'.$key.'":')!==false)
	{
	for($ar=0;$ar<count($armyarr);$ar++)
	{
	if ($armyarr[$ar]=='"'.$key.'":'.$value)
	{
	$tma=explode(':',$armyarr[$ar]);
	$gamearr['g']['td']['r']['t'][$key]=$value-$tma[1];
	}
	}	
	}
	}
	
	$tmpo=$arr[$j].'_'.$arr[$j+1].'_'.$arr[$j+2];
	
	
	$reqarr=json_decode($req,true);

	if(!$reqarr['cerror']) 
	{
	$alert[1]++;
	if($reqarr['g']) 
	{
	$gamearr['g']=$reqarr['g'];
	$alert[1]=$gamearr['g']['r'];
	}
	if($reqarr['o']) 
	{
	array_push($gamearr[g][wd][u],$reqarr['o']);
	if($reqarr['v']) $alert[1]=$reqarr['v'];
	}
	if($reqarr['m']) 
	{
	mewrite('
	b1
	'.$req.'
	
	');
	}
	//$flbl=1;
	for($k=count($strarr)-1;$k>=0;$k--)
	{
	$strtmp=explode('=',$strarr[$k]);
	if($strtmp[0]=='b1' && strpos($strtmp[1],$tmpo)!==false) 
	{
	if(count(explode('_',$_GET['b1']))==3) 
	{
	array_splice($strarr,$k,1);
	$_GET['b1']='';
	}
	else
	{
	$strtmp[1]=str_replace($tmpo,'',$strtmp[1]);
	$strtmp[1]=str_replace('__','_',$strtmp[1]);	
	$strtmp[1]=trim($strtmp[1],'_');
	$_GET['b1']=$strtmp[1];
	$strarr[$k]=implode('=',$strtmp);
	}	
	}	}	}
	}	
	}	
	}
	}
	
	
	
	
	
	
	if($flbl==1)
	{
	$str=implode('&',$strarr);
	header("Location:..".getenv("SCRIPT_NAME").'?'.$str);
	die();
	}
	}
	
	
	
	
	if(count($gamearr['g']['wd']['u'])>1)
	{
	foreach ($gamearr['g']['wd']['u'] as $r) 
    $id[] = $r['sf']['a'];
	array_multisort($id, SORT_ASC, $gamearr['g']['wd']['u']);
	}
	
	$users=Array();
	$locats=Array();
	for($i=0;$i<count($gamearr['g']['wd']['u']);$i++)
	{
	if($gamearr['g']['wd']['u'][$i]['t']!=$sid && $gamearr['g']['wd']['u'][$i]['t']>=0) array_push($users,$gamearr['g']['wd']['u'][$i]['t']);
	else  array_push($locats,-$gamearr['g']['wd']['u'][$i]['t']);
	if($gamearr['g']['wd']['u'][$i]['o']!=$sid && $gamearr['g']['wd']['u'][$i]['t']>=0) array_push($users,$gamearr['g']['wd']['u'][$i]['o']);
	else  array_push($locats,-$gamearr['g']['wd']['u'][$i]['o']);
	}
	
	if(count($locats)>0)
	{
	$locs=$me->GetLocation($locats);
	$locsarr = json_decode($locs,true);
	if($locsarr['m'] || $locsarr['cerror'] || !$locsarr)
	{
	$locs=$me->GetLocation($locats);
	$locsarr = json_decode($locs,true);	
	}
	//echo $locs;
	$alert[1]++;
	}
	
	
	
	if(count($users)>0)
	{
	$user=$me->GetUser($users);	
	$userarr = json_decode($user,true);
	if($userarr['m'] || $userarr['cerror'] || !$userarr)
	{
	$user=$me->GetUser($users);	
	$userarr = json_decode($user,true);
	}
	//echo join(',',$users);
	$alert[1]++;
	}
	//echo $user;
		
	$enemies="";
	$armies="";
	$lands="";
	$castle="";
	$bunker="";
	
	$home=json_encode($gamearr['g']['td']['r']['t']);
	
	
	for($i=0;$i<count($gamearr['g']['wd']['u']);$i++)
	{
	$e=0;
	$l=0;
	$a=0;
	$c=0;

	if($gamearr['g']['wd']['u'][$i]['t']==$sid && $gamearr['g']['wd']['u'][$i]['pt'])
	{
	if($gamearr['g']['wd']['u'][$i]['sf'])
	{
	if($gamearr['g']['wd']['u'][$i]['pt']['o']!=5)
	{
	/// к нам идет граб, оккуп или разведка
	if($gamearr['g']['wd']['u'][$i]['pt']['o']==2)
	{
	// к нам идет граб
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['o'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
	$tocmp=$gamearr['g']['wd']['u'][$i]['o'].'_'.$gamearr['g']['wd']['u'][$i]['i'];
	$checked=(strpos($_GET[r0],$tocmp)===false && strpos($_GET[r1],$tocmp)===false)? '':'checked="checked"';
	
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$enemies.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td width="30"  height="30"align="center"><img src="'.$uimg.'" width="30" height="30" /></td><td width=23%>'.$uname.'</td><td align="center" width=13%><font color="orange">Грабеж</font></td><td width="30" align="center">'.$ul.'</td><td align="center" width=12%>'.$ux.':'.$uy.'</td><td align="center"><table><tr><td>Через <font color="orange"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="right" ti="o" sd="'.($gamearr['g']['wd']['u'][$i]['sf']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></td></tr></table></td><td width="25" align="center"><input type="checkbox" '.$checked.' title="Накрутить лимит" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['o'].',20);" /></td><td width="25" align="center"></td></tr></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
		
	}
	if($gamearr['g']['wd']['u'][$i]['pt']['o']==3)
	{
	// к нам идет оккуп
	
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['o'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
	$tocmp=$gamearr['g']['wd']['u'][$i]['o'].'_'.$gamearr['g']['wd']['u'][$i]['i'];
	$checked=(strpos($_GET[o0],$tocmp)===false)? '':'checked="checked"';
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$enemies.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td width="30"  height="30"align="center"><img src="'.$uimg.'" width="30" height="30" /></td><td width=23%>'.$uname.'</td><td align="center" width=13%><font color="red">Оккупация</font></td><td width="30" align="center">'.$ul.'</td><td align="center" width=12%>'.$ux.':'.$uy.'</td><td align="center"><table><tr><td>????? <font color="red"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="right" ti="r" sd="'.($gamearr['g']['wd']['u'][$i]['sf']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></td></tr></table></td><td width="25" align="center"><input type="checkbox" '.$checked.' title="Снять оккупацию" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['o'].',30);" /></td><td width="25" align="center"></td></tr></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
	
	}
	if($gamearr['g']['wd']['u'][$i]['pt']['o']==4)
	{
	// к нам идет разведка
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['o'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}

	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$enemies.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td width="30"  height="30"align="center"><img src="'.$uimg.'" width="30" height="30" /></td><td width=23%>'.$uname.'</td><td align="center" width=13%><font color="#00ccff">Разведка</font></td><td width="30" align="center">'.$ul.'</td><td align="center" width=12%>'.$ux.':'.$uy.'</td><td align="center"><table><tr><td>Через <font color="#00ccff"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="right" ti="s" sd="'.($gamearr['g']['wd']['u'][$i]['sf']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></td></tr></table></td><td width="25" align="center"><input type="checkbox" title="" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['o'].',40);" /></td><td width="25" align="center"></td></tr></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
		
	}
	
	}
	else
	{ 	
	// к нам идет подкреп?
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['o'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
	$tocmp=$gamearr['g']['wd']['u'][$i]['o'].'_'.$gamearr['g']['wd']['u'][$i]['i'];
	$checked=(strpos($_GET[d0],$tocmp)===false)? '':'checked="checked"';
	$troops=json_encode($gamearr['g']['wd']['u'][$i]['pt']['t']['t']);	
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$friends.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td width="30"  height="30"align="center"><img src="'.$uimg.'" width="30" height="30" /></td><td width=23%>'.$uname.'</td><td align="center" width=13%><font color="#009933">Защита</font></td><td width="30" align="center">'.$ul.'</td><td align="center" width=12%>'.$ux.':'.$uy.'</td><td align="center"><table><tr><td>Через <font color="#009933"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="right" ti="g" sd="'.($gamearr['g']['wd']['u'][$i]['sf']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></td></tr></table></td><td width="25" align="center"><input type="checkbox" '.$checked.' title="Вернуть" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['o'].',50);" /></td><td  width="25" align="center"><span id="b'.$gamearr['g']['wd']['u'][$i]['i'].'"><img src="../img/arrow.png" width="20" height="25" id="'.$gamearr['g']['wd']['u'][$i]['i'].'"  onclick="showarmy('.$gamearr['g']['wd']['u'][$i]['i'].');" title="Показать войска" tr=\''.$troops.'\' cl="#009933" /></span></td></tr></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
		
	
	}
	}	
	else
	{
	if($gamearr['g']['wd']['u'][$i]['pt']['o']==3)
	{
	// у нас стоит оккуп

	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['o'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
	$tocmp=$gamearr['g']['wd']['u'][$i]['o'].'_'.$gamearr['g']['wd']['u'][$i]['i'];
	$checked=(strpos($_GET[o1],$tocmp)===false)? '':'checked="checked"';
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$castle.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td width="30"  height="30"align="center"><img src="'.$uimg.'" width="30" height="30" /></td><td width=23%>'.$uname.'</td><td align="center" width=13%><font color="red">Оккупация</font></td><td width="30" align="center">'.$ul.'</td><td align="center" width=12%>'.$ux.':'.$uy.'</td><td align="center">&nbsp;</td><td width="25" align="center"><input type="checkbox" '.$checked.' title="Снять оккупацию" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['o'].',32);" /></td><td  width="25" align="center"></td></tr></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
	
	}
	else
	{ 
	if($gamearr['g']['wd']['u'][$i]['o']!=$gamearr['g']['wd']['u'][$i]['t'])
	{
	//у нас стоит подкреп
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['o'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
	$tocmp=$gamearr['g']['wd']['u'][$i]['o'].'_'.$gamearr['g']['wd']['u'][$i]['i'];
	$checked=(strpos($_GET[d0],$tocmp)===false)? '':'checked="checked"';
	$troops=json_encode($gamearr['g']['wd']['u'][$i]['pt']['t']['t']);	
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$castle.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td width="30"  height="30"align="center"><img src="'.$uimg.'" width="30" height="30" /></td><td width=23%>'.$uname.'</td><td align="center" width=13%><font color="#009933">Защита</font></td><td width="30" align="center">'.$ul.'</td><td align="center" width=12%>'.$ux.':'.$uy.'</td><td align="center">&nbsp;</td><td width="25" align="center"><input type="checkbox" '.$checked.' title="Вернуть" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['o'].',52);" /></td><td  width="25" align="center"><span id="b'.$gamearr['g']['wd']['u'][$i]['i'].'"><img src="../img/arrow.png" width="20" height="25" id="'.$gamearr['g']['wd']['u'][$i]['i'].'"  onclick="showarmy('.$gamearr['g']['wd']['u'][$i]['i'].');" title="???????? ??????" tr=\''.$troops.'\' cl="#009933"/></span></td></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
	
	}
	}
	}
	}
	
	if($gamearr['g']['wd']['u'][$i]['o']==$sid && $gamearr['g']['wd']['u'][$i]['pt'])
	{
	if($gamearr['g']['wd']['u'][$i]['sf'])
	{
	// мы идем
	if($gamearr['g']['wd']['u'][$i]['pt']['o']==2)
	{
	// мы идем грабить
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
	
		for($j=0;$j<count($locsarr);$j++)
	{
	if($locsarr[$j]['i']==-$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($locsarr[$j]['a'],'cp1251','utf-8');
	$ux=$locsarr[$j]['m']['x'];
	$uy=$locsarr[$j]['m']['y'];
	$ul=''; $uimg='';
	if(strpos($locsarr[$j]['a'],"кристаллов")>0) $uimg='../img/sap.png';
	if(strpos($locsarr[$j]['a'],"кредитов")>0) $uimg='../img/meat.png';
	if(strpos($locsarr[$j]['a'],"титана")>0) $uimg='../img/steel.png';
	if(strpos($locsarr[$j]['a'],"урана")>0) $uimg='../img/gold.png';
	
	
	}
	}
	
	$tocmp=$gamearr['g']['wd']['u'][$i]['t'].'_'.$gamearr['g']['wd']['u'][$i]['i'];
	$checked=(strpos($_GET[r0],$tocmp)===false && strpos($_GET[r1],$tocmp)===false)? '':'checked="checked"';
	$troops=json_encode($gamearr['g']['wd']['u'][$i]['pt']['t']['t']);	
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$armies.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td  width="25" align="center"><span id="b'.$gamearr['g']['wd']['u'][$i]['i'].'"><img src="../img/arrow.png" width="20" height="25" id="'.$gamearr['g']['wd']['u'][$i]['i'].'"  onclick="showarmy('.$gamearr['g']['wd']['u'][$i]['i'].');" title="Показать войска" tr=\''.$troops.'\' cl="orange"/></span></td><td width="25" align="center"><input type="checkbox" '.$checked.' title="Снять лимит" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['t'].',21);" /></td><td align="center"><table><tr><td>Через <font color="orange"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="left" ti="o" sd="'.($gamearr['g']['wd']['u'][$i]['sf']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></td></tr></table></td><td align="center" width=12%>'.$ux.':'.$uy.'</td><td width="30" align="center">'.$ul.'</td><td align="center" width=13%><font color="orange">Грабеж</font></td><td width=23%>'.$uname.'</td><td width="30" align="center"><img src="'.$uimg.'" width="30" height="30" /></td></tr></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
	}
	if($gamearr['g']['wd']['u'][$i]['pt']['o']==3)
	{
	// мы идем оккупировать
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
		for($j=0;$j<count($locsarr);$j++)
	{
	if($locsarr[$j]['i']==-$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($locsarr[$j]['a'],'cp1251','utf-8');
	$ux=$locsarr[$j]['m']['x'];
	$uy=$locsarr[$j]['m']['y'];
	$ul=''; $uimg='';
	if(strpos($locsarr[$j]['a'],"кристаллов")>0) $uimg='../img/sap.png';
	if(strpos($locsarr[$j]['a'],"кредитов")>0) $uimg='../img/meat.png';
	if(strpos($locsarr[$j]['a'],"титана")>0) $uimg='../img/steel.png';
	if(strpos($locsarr[$j]['a'],"урана")>0) $uimg='../img/gold.png';
	
	}
	}
	
	$tocmp=$gamearr['g']['wd']['u'][$i]['t'].'_'.$gamearr['g']['wd']['u'][$i]['i'];
	$checked=(strpos($_GET[o],$tocmp)===false)? '':'checked="checked"';
	$troops=json_encode($gamearr['g']['wd']['u'][$i]['pt']['t']['t']);	
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$armies.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td  width="25" align="center"><span id="b'.$gamearr['g']['wd']['u'][$i]['i'].'"><img src="../img/arrow.png" width="20" height="25" id="'.$gamearr['g']['wd']['u'][$i]['i'].'"  onclick="showarmy('.$gamearr['g']['wd']['u'][$i]['i'].');" title="Показать войска" tr=\''.$troops.'\' cl="red"/></span></td><td width="25" align="center"><input type="checkbox" '.$checked.' title="Вернуть" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['t'].',31);" /></td><td align="center"><table><tr><td>Через <font color="red"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="left" ti="r" sd="'.($gamearr['g']['wd']['u'][$i]['sf']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></td></tr></table></td><td align="center" width=12%>'.$ux.':'.$uy.'</td><td width="30" align="center">'.$ul.'</td><td align="center" width=13%><font color="red">Осада</font></td><td width=23%>'.$uname.'</td><td width="30" align="center"><img src="'.$uimg.'" width="30" height="30" /></td></tr></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
	
	}
	if($gamearr['g']['wd']['u'][$i]['pt']['o']==4)
	{
	// мы идем разведывать
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
		for($j=0;$j<count($locsarr);$j++)
	{
	if($locsarr[$j]['i']==-$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($locsarr[$j]['a'],'cp1251','utf-8');
	$ux=$locsarr[$j]['m']['x'];
	$uy=$locsarr[$j]['m']['y'];
		$ul=''; $uimg='';
	if(strpos($locsarr[$j]['a'],"кристаллов")>0) $uimg='../img/sap.png';
	if(strpos($locsarr[$j]['a'],"кредитов")>0) $uimg='../img/meat.png';
	if(strpos($locsarr[$j]['a'],"титана")>0) $uimg='../img/steel.png';
	if(strpos($locsarr[$j]['a'],"урана")>0) $uimg='../img/gold.png';
	
	}
	}
	$troops=json_encode($gamearr['g']['wd']['u'][$i]['pt']['t']['t']);	
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$armies.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td  width="25" align="center"><span id="b'.$gamearr['g']['wd']['u'][$i]['i'].'"><img src="../img/arrow.png" width="20" height="25" id="'.$gamearr['g']['wd']['u'][$i]['i'].'"  onclick="showarmy('.$gamearr['g']['wd']['u'][$i]['i'].');" title="Показать войска" tr=\''.$troops.'\' cl="#00ccff"/></span></td><td width="25" align="center"><input type="checkbox" title="" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['t'].',41);" /></td><td align="center"><table><tr><td>Через <font color="#00ccff"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="left" ti="s" sd="'.($gamearr['g']['wd']['u'][$i]['sf']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></td></tr></table></td><td align="center" width=12%>'.$ux.':'.$uy.'</td><td width="30" align="center">'.$ul.'</td><td align="center" width=13%><font color="#00ccff">Разведка</font></td><td width=23%>'.$uname.'</td><td width="30" align="center"><img src="'.$uimg.'" width="30" height="30" /></td></tr></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
	
	}
	if($gamearr['g']['wd']['u'][$i]['pt']['o']==5)
	{
	// мы идем в подкреп
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
		for($j=0;$j<count($locsarr);$j++)
	{
	if($locsarr[$j]['i']==-$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($locsarr[$j]['a'],'cp1251','utf-8');
	$ux=$locsarr[$j]['m']['x'];
	$uy=$locsarr[$j]['m']['y'];
	$ul=''; $uimg='';
	if(strpos($locsarr[$j]['a'],"кристаллов")>0) $uimg='../img/sap.png';
	if(strpos($locsarr[$j]['a'],"кредитов")>0) $uimg='../img/meat.png';
	if(strpos($locsarr[$j]['a'],"титана")>0) $uimg='../img/steel.png';
	if(strpos($locsarr[$j]['a'],"урана")>0) $uimg='../img/gold.png';
	
	}
	}
	
	$tocmp=$gamearr['g']['wd']['u'][$i]['t'].'_'.$gamearr['g']['wd']['u'][$i]['i'];
	$checked=(strpos($_GET[d1],$tocmp)===false)? '':'checked="checked"';
	$troops=json_encode($gamearr['g']['wd']['u'][$i]['pt']['t']['t']);	
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$armies.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td  width="25" align="center"><span id="b'.$gamearr['g']['wd']['u'][$i]['i'].'"><img src="../img/arrow.png" width="20" height="25" id="'.$gamearr['g']['wd']['u'][$i]['i'].'"  onclick="showarmy('.$gamearr['g']['wd']['u'][$i]['i'].');" title="Показать войска" tr=\''.$troops.'\' cl="#009933"/></span></td><td width="25" align="center"><input type="checkbox" '.$checked.' title="Вернуть" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['t'].',51);" /></td><td align="center"><table><tr><td>Через <font color="#009933"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="left" ti="g" sd="'.($gamearr['g']['wd']['u'][$i]['sf']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></td></tr></table></td><td align="center" width=12%>'.$ux.':'.$uy.'</td><td width="30" align="center">'.$ul.'</td><td align="center" width=13%><font color="#009933">Защита</font></td><td width=23%>'.$uname.'</td><td width="30" align="center"><img src="'.$uimg.'" width="30" height="30" /></td></tr></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
	
	}
	
	if($gamearr['g']['wd']['u'][$i]['pt']['o']==7 && $gamearr['g']['wd']['u'][$i]['sf'])
	{
	// мы идем прятаться
	$ul=''; $uimg=''; $ux=''; $uy=''; $uname='';
	for($j=0;$j<count($userarr);$j++)
	{
	
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$gamearr['g'][''];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
		for($j=0;$j<count($locsarr);$j++)
	{
	if($locsarr[$j]['i']==-$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($locsarr[$j]['a'],'cp1251','utf-8');
	$ux=$locsarr[$j]['m']['x'];
	$uy=$locsarr[$j]['m']['y'];
	$ul=''; $uimg='';
	if(strpos($locsarr[$j]['a'],"кристаллов")>0) $uimg='../img/sap.png';
	if(strpos($locsarr[$j]['a'],"кредитов")>0) $uimg='../img/meat.png';
	if(strpos($locsarr[$j]['a'],"титана")>0) $uimg='../img/steel.png';
	if(strpos($locsarr[$j]['a'],"урана")>0) $uimg='../img/gold.png';
	
	}
	}
	
	$tocmp=$gamearr['g']['wd']['u'][$i]['t'].'_'.$gamearr['g']['wd']['u'][$i]['i'];
	$checked=(strpos($_GET[d1],$tocmp)===false)? '':'checked="checked"';
	$troops=json_encode($gamearr['g']['wd']['u'][$i]['pt']['t']['t']);	
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$armies.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td  width="25" align="center"><span id="b'.$gamearr['g']['wd']['u'][$i]['i'].'"><img src="../img/arrow.png" width="20" height="25" id="'.$gamearr['g']['wd']['u'][$i]['i'].'"  onclick="showarmy('.$gamearr['g']['wd']['u'][$i]['i'].');" title="Показать войска" tr=\''.$troops.'\' cl="#009933"/></span></td><td width="25" align="center"><input type="checkbox" '.$checked.' title="Вернуть" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['t'].',51);" /></td><td align="center"><table><tr><td>Через <font color="#009933"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="left" ti="g" sd="'.($gamearr['g']['wd']['u'][$i]['sf']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></td></tr></table></td><td align="center" width=12%>'.$ux.' '.$uy.'</td><td width="30" align="center">'.$ul.'</td><td align="center" width=13%><font color="#009933">Сейв</font></td><td width=23%>'.$uname.'</td><td width="30" align="center"><img src="'.$uimg.'" width="30" height="30" /></td></tr></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
	
	}

	}	
	else
	{	
	if($gamearr['g']['wd']['u'][$i]['sb'])
	{
	if($gamearr['g']['wd']['u'][$i]['pt']['r']) $cargo=json_encode($gamearr['g']['wd']['u'][$i]['pt']['r']);
	// мы идем домой
	$ul=''; $uimg=''; $ux=''; $uy=''; $uname='';
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
		for($j=0;$j<count($locsarr);$j++)
	{
	if($locsarr[$j]['i']==-$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($locsarr[$j]['a'],'cp1251','utf-8');
	$ux=$locsarr[$j]['m']['x'];
	$uy=$locsarr[$j]['m']['y'];
	$ul=''; $uimg='';
	if(strpos($locsarr[$j]['a'],"кристаллов")>0) $uimg='../img/sap.png';
	if(strpos($locsarr[$j]['a'],"кредитов")>0) $uimg='../img/meat.png';
	if(strpos($locsarr[$j]['a'],"титана")>0) $uimg='../img/steel.png';
	if(strpos($locsarr[$j]['a'],"урана")>0) $uimg='../img/gold.png';
	
	}
	}
	
	$b78=':';
	if($ux=='' && $uy=='') $b78=' ';
	
	$tocmp=$gamearr['g']['wd']['u'][$i]['t'].'_'.$gamearr['g']['wd']['u'][$i]['i'];
	$checked=(strpos($_GET[b1],$tocmp)===false)? '':'checked="checked"';
	$troops=json_encode($gamearr['g']['wd']['u'][$i]['pt']['t']['t']);
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sb']['a']-$timePS)/1000);
	$armies.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td  width="25" align="center"><span id="b'.$gamearr['g']['wd']['u'][$i]['i'].'"><img src="../img/arrow.png" width="20" height="25" id="'.$gamearr['g']['wd']['u'][$i]['i'].'"  onclick="showarmy('.$gamearr['g']['wd']['u'][$i]['i'].');" title="Показать войска" tr=\''.$troops.'\' cl="#006699" wt=\''.$cargo.'\' /></span></td><td width="25" align="center"><input type="checkbox" '.$checked.' title="Сейв" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['t'].',91);" /></td><td align="center"><table><tr><td>Через <font color="#006699"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="right" ti="b" sd="'.($gamearr['g']['wd']['u'][$i]['sb']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sb']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sb']['a']-$timePS).'"></span></td></tr></table></td><td align="center" width=12%>'.$ux.''.$b78.''.$uy.'</td><td width="30" align="center">'.$ul.'</td><td align="center" width=13%><font color="#006699">Возврат</font></td><td width=23%>'.$uname.'</td><td width="30" align="center"><img src="'.$uimg.'" width="30" height="30" /></td></tr></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div><div id="w'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
	
	}
	
		
	if($gamearr['g']['wd']['u'][$i]['pt']['o']==3)
	{
	// мы стоим в оккупации
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
			for($j=0;$j<count($locsarr);$j++)
	{
	if($locsarr[$j]['i']==-$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($locsarr[$j]['a'],'cp1251','utf-8');
	$ux=$locsarr[$j]['m']['x'];
	$uy=$locsarr[$j]['m']['y'];
	$ul=''; $uimg='';
	if(strpos($locsarr[$j]['a'],"кристаллов")>0) $uimg='../img/sap.png';
	if(strpos($locsarr[$j]['a'],"кредитов")>0) $uimg='../img/meat.png';
	if(strpos($locsarr[$j]['a'],"титана")>0) $uimg='../img/steel.png';
	if(strpos($locsarr[$j]['a'],"урана")>0) $uimg='../img/gold.png';
	
	}
	}
	
	$tocmp=$gamearr['g']['wd']['u'][$i]['t'].'_'.$gamearr['g']['wd']['u'][$i]['i'];
	$checked=(strpos($_GET[o],$tocmp)===false)? '':'checked="checked"';
	$troops=json_encode($gamearr['g']['wd']['u'][$i]['pt']['t']['t']);
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$lands.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td  width="25" align="center"><span id="b'.$gamearr['g']['wd']['u'][$i]['i'].'"><img src="../img/arrow.png" width="20" height="25" id="'.$gamearr['g']['wd']['u'][$i]['i'].'"  onclick="showarmy('.$gamearr['g']['wd']['u'][$i]['i'].');" title="Показать войска" tr=\''.$troops.'\' cl="red"/></span></td><td width="25" align="center"><input type="checkbox" '.$checked.' title="Вернуть" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['t'].',33);" /></td><td align="center">&nbsp;</td><td align="center" width=12%>'.$ux.':'.$uy.'</td><td width="30" align="center">'.$ul.'</td><td align="center" width=13%><font color="red">Осада</font></td><td width=23%>'.$uname.'</td><td width="30" align="center"><img src="'.$uimg.'" width="30" height="30" /></td></tr></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
	
	
	}
	if($gamearr['g']['wd']['u'][$i]['pt']['o']==5)
	{
	// мы стоим в подкрепе
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
		for($j=0;$j<count($locsarr);$j++)
	{
	if($locsarr[$j]['i']==-$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($locsarr[$j]['a'],'cp1251','utf-8');
	$ux=$locsarr[$j]['m']['x'];
	$uy=$locsarr[$j]['m']['y'];
	$ul=''; $uimg='';
	if(strpos($locsarr[$j]['a'],"кристаллов")>0) $uimg='../img/sap.png';
	if(strpos($locsarr[$j]['a'],"кредитов")>0) $uimg='../img/meat.png';
	if(strpos($locsarr[$j]['a'],"титана")>0) $uimg='../img/steel.png';
	if(strpos($locsarr[$j]['a'],"урана")>0) $uimg='../img/gold.png';
	
	}
	}
	
	$tocmp=$gamearr['g']['wd']['u'][$i]['t'].'_'.$gamearr['g']['wd']['u'][$i]['i'];
	$checked=(strpos($_GET[d1],$tocmp)===false)? '':'checked="checked"';	
	$troops=json_encode($gamearr['g']['wd']['u'][$i]['pt']['t']['t']);
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$lands.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td  width="25" align="center"><span id="b'.$gamearr['g']['wd']['u'][$i]['i'].'"><img src="../img/arrow.png" width="20" height="25" id="'.$gamearr['g']['wd']['u'][$i]['i'].'"  onclick="showarmy('.$gamearr['g']['wd']['u'][$i]['i'].');" title="Показать войска" tr=\''.$troops.'\' cl="#009933"/></span></td><td width="25" align="center"><input type="checkbox" '.$checked.' title="Вернуть" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['t'].',53);" /></td><td align="center">&nbsp;</td><td align="center" width=12%>'.$ux.':'.$uy.'</td><td width="30" align="center">'.$ul.'</td><td align="center" width=13%><font color="#009933">Защита</font></td><td width=23%>'.$uname.'</td><td width="30" align="center"><img src="'.$uimg.'" width="30" height="30" /></td></tr></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
	
	
	}
	
	if($gamearr['g']['wd']['u'][$i]['pt']['o']==7 && !$gamearr['g']['wd']['u'][$i]['sb'] && !$gamearr['g']['wd']['u'][$i]['sr'])
	{
	// мы стоим в бункере
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
		for($j=0;$j<count($locsarr);$j++)
	{
	if($locsarr[$j]['i']==-$gamearr['g']['wd']['u'][$i]['t'])
	{
	$uname=mb_convert_encoding($locsarr[$j]['a'],'cp1251','utf-8');
	$ux=$locsarr[$j]['m']['x'];
	$uy=$locsarr[$j]['m']['y'];
	$ul=''; $uimg='';
	if(strpos($locsarr[$j]['a'],"кристаллов")>0) $uimg='../img/sap.png';
	if(strpos($locsarr[$j]['a'],"кредитов")>0) $uimg='../img/meat.png';
	if(strpos($locsarr[$j]['a'],"титана")>0) $uimg='../img/steel.png';
	if(strpos($locsarr[$j]['a'],"урана")>0) $uimg='../img/gold.png';
	
	}
	}
	
	$tocmp=$gamearr['g']['wd']['u'][$i]['t'].'_'.$gamearr['g']['wd']['u'][$i]['i'];
	$checked=(strpos($_GET[d1],$tocmp)===false)? '':'checked="checked"';	
	$troops=json_encode($gamearr['g']['wd']['u'][$i]['pt']['t']['t']);
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$bunker.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td  width="25" align="center"><span id="b'.$gamearr['g']['wd']['u'][$i]['i'].'"><img src="../img/arrow.png" width="20" height="25" id="'.$gamearr['g']['wd']['u'][$i]['i'].'"  onclick="showarmy('.$gamearr['g']['wd']['u'][$i]['i'].');" title="Показать войска" tr=\''.$troops.'\' cl="#009933"/></span></td><td width="25" align="center"><input type="checkbox" '.$checked.' title="Вернуть" id="ch'.$gamearr['g']['wd']['u'][$i]['i'].'" tp="'.$gamearr['g']['wd']['u'][$i]['pt']['o'].'" onclick="handle(this,'.$gamearr['g']['wd']['u'][$i]['i'].','.$gamearr['g']['wd']['u'][$i]['t'].',53);" /></td><td align="center">&nbsp;</td><td align="center" width=12%>'.$ux.' '.$uy.'</td><td width="30" align="center">'.$ul.'</td><td align="center" width=13%><font color="#009933">Сейв</font></td><td width=23%>'.$uname.'</td><td width="30" align="center"><img src="'.$uimg.'" width="30" height="30" /></td></tr></table><div id="a'.$gamearr['g']['wd']['u'][$i]['i'].'"></div></div>';
	
	
	}
	
	}
	}
	
	}
	$orders='<table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td height="30" align="center"><table><tr><td colspan="2" rowspan=2><img src="../img/orders/ord0.png" width="30" height="30"  title="Спрятать войска" id="chc14" onclick="order(14);" /></td><td><input type="checkbox" title="Пехота" checked="checked" id="chi14" /></td></tr><tr><td><input type="checkbox" title="Тяж" checked="checked" id="cht14" /></td></tr></table></td><td height="30" align="center"><table><tr><td colspan="2" rowspan=2><img src="../img/orders/ord1.png" width="30" height="30"  title="Спрятать офф" id="chc1" onclick="order(1);" /></td><td><input type="checkbox" title="Пехота" checked="checked" id="chi1" /></td></tr><tr><td><input type="checkbox" title="Тяж" checked="checked" id="cht1" /></td></tr></table></td><td height="30" align="center"><table><tr><td colspan="2" rowspan=2><img src="../img/orders/ord2.png" width="30" height="30"  title="Спрятать деф" id="chc2" onclick="order(2);" /></td><td><input type="checkbox" title="Пехота" checked="checked" id="chi2" /></td></tr><tr><td><input type="checkbox" title="Тяж" checked="checked" id="cht2" /></td></tr></table></td><td height="30" align="center"><table><tr><td colspan="2" rowspan=2><img src="../img/orders/ord3.png" width="30" height="30"  title="Спрятать разведку" id="chc3" onclick="order(3);" /></td><td><input type="checkbox" title="Шмели" checked="checked" id="chi3" /></td></tr><tr><td><input type="checkbox" title="Тяж" checked="checked" id="cht3" /></td></tr></table></td><td height="30" align="center"><table><tr><td colspan="2" rowspan=2><img src="../img/orders/ord4.png" width="30" height="30"  title="Вернуть все войска" id="chc4" onclick="order(4);" /></td><td><input type="checkbox" title="Пехота" checked="checked" id="chi4" /></td></tr><tr><td><input type="checkbox" title="Тяж" checked="checked" id="cht4" /></td></tr></table></td><td height="30" align="center"><table><tr><td colspan="2" rowspan=2><img src="../img/orders/ord5.png" width="30" height="30"  title="Вернуть офф" id="chc5" onclick="order(5);" /></td><td><input type="checkbox" title="Пехота" checked="checked" id="chi5" /></td></tr><tr><td><input type="checkbox" title="Тяж" checked="checked" id="cht5" /></td></tr></table></td><td height="30" align="center"><table><tr><td colspan="2" rowspan=2><img src="../img/orders/ord6.png" width="30" height="30"  title="Вернуть деф" id="chc6" onclick="order(6);" /></td><td><input type="checkbox" title="Пехота" checked="checked" id="chi6" /></td></tr><tr><td><input type="checkbox" title="Тяж" checked="checked" id="cht6" /></td></tr></table></td><td height="30" align="center"><table><tr><td colspan="2" rowspan=2><img src="../img/orders/ord7.png" width="30" height="30"  title="Вернуть разведку" id="chc7" onclick="order(7);" /></td><td><input type="checkbox" title="Шмели" checked="checked" id="chi7" /></td></tr><tr><td><input type="checkbox" title="Тяж" checked="checked" id="cht7" /></td></tr></table></td><td height="30" align="center"><table><tr><td colspan="2" rowspan=2><img src="../img/orders/ord9.png" width="30" height="30"  title="Собрать деф" id="chc9" onclick="order(9);" /></td><td><input type="checkbox" title="Пехота" checked="checked" id="chi9" /></td></tr><tr><td><input type="checkbox" title="Тяж" checked="checked" id="cht9" /></td></tr></table></td><td height="30" align="center"><table><tr><td colspan="2" rowspan=2><img src="../img/orders/ord10.png" width="30" height="30"  title="Собрать разведку" id="chc10" onclick="order(10);" /></td><td><input type="checkbox" title="Шмели" checked="checked" id="chi10" /></td></tr><tr><td><input type="checkbox" title="Тяж" checked="checked" id="cht10" /></td></tr></table></td><td height="30" align="center"><table><tr><td colspan="2" rowspan=2><img src="../img/orders/ord8.png" width="30" height="30"  title="Собрать киборгов" id="chc8" onclick="order(8);" /></td><td><input type="checkbox" title="Чужие" id="chi8" /></td></tr><tr><td><input type="checkbox" title="Свои" checked="checked" id="cht8" /></td></tr></table></td><td height="30" align="center"><table><tr><td colspan="2" rowspan=2><img src="../img/orders/ord11.png" width="30" height="30"  title="Собрать деф со всех" id="chc11" onclick="order(11);" /></td><td><input type="checkbox" title="Пехота" checked="checked" id="chi11" /></td></tr><tr><td><input type="checkbox" title="Тяж" checked="checked" id="cht11" /></td></tr></table></td><td height="30" align="center"><table><tr><td colspan="2" rowspan=2><img src="../img/orders/ord12.png" width="30" height="30"  title="Собрать разведку со всех" id="chc12" onclick="order(12);" /></td><td><input type="checkbox" title="Шмели" checked="checked" id="chi12" /></td></tr><tr><td><input type="checkbox" title="Тяж" checked="checked" id="cht12" /></td></tr></table></td><td height="30" align="center"><table><tr><td colspan="2" rowspan=2><img src="../img/orders/ord13.png" width="30" height="30"  title="Распустить чужие войска" id="chc13" onclick="order(13);" /></td><td><input type="checkbox" title="Пехота" checked="checked" id="chi13" /></td></tr><tr><td><input type="checkbox" title="Тяж+Киборги" checked="checked" id="cht13" /></td></tr></table></td></tr></table>';
	
	$db->close_connection();	
	}
	else
	{
	$db=new db_query();
	$atts=explode(';',$db->show_attacks($_SESSION['soc_id']));
	if(count($atts)>0 && $atts[0]!=-1)
	{
	$uinfo = $db->get_user($_SESSION['soc_id'],'');
	$uuserarr=explode(';',$uinfo);
	$rq=0;
	$qw=0;
	do{
	$uuser=explode(',',$uuserarr[$qw]);
	$rq=($uuser[4]=='')? 0:1;
	$qw++;
	} while($rq==0);
	$db->close_connection();
	$db=new db_query(0,$uuser[2],$_SESSION['soc_id']);
	$alert=explode(';',$db->get_alert_info($uuser[2]));
	$me=new TDApi($uuser[2],$uuser[4],$db->friends,$db->v,$db->referer,$db->proxy,$db->proxypwd,$db->origin,$alert[4]);
	$users=Array();
	$attacks=Array();
	for($i=0;$i<count($atts);$i++)
	{
	$atttts=explode(':',$atts[$i]);
	array_push($users,$db->get_sid($atttts[0]));
	array_push($users,$atttts[2]);
	$attacks[$i]=$atttts;
	$attacks[$i][7]=$db->get_sid($atttts[0]);
	}
	array_unique($users);
	$user=$me->GetUser($users);	
	$userarr = json_decode($user,true);
	if($userarr['m'] || $userarr['cerror'] || !$userarr)
	{
	$user=$me->GetUser($users);	
	$userarr = json_decode($user,true);
	}
	$alert[1]++;
	$timePS = 0; // теоретическая разница времени нашего сервера и сервера игры
	$accname = "";
	$home='[]';
	$enemies.='<table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1">';
	for($i=0;$i<count($attacks);$i++)
	{
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$attacks[$i][2])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	if($userarr[$j]['i']==$attacks[$i][7])
	{
	$huname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$huimg=$userarr[$j]['p'];
	}
	}
	
	$time=date("d.m H:i:s",($attacks[$i][5]-$timePS)/1000);
	if($attacks[$i][3]==2) 
	{
	$text='Ограбление';
	$ti='o';
	$color="orange";
	}
	if($attacks[$i][3]==3) 	
	{
	$text='Оккупация';
	$ti='r';
	$color="red";
	}
	if($attacks[$i][3]==4) 
	{
	$text='Разведка';
	$ti='s';
	$color="#00ccff";
	}
	$enemies.='<tr><td width="30"  height="30"align="center"><img src="'.$huimg.'" width="30" height="30" /></td><td width=20%><a href="../php/attacks.php?uid='.str_replace('vk','',$attacks[$i][0]).'">'.$huname.'</a></td><td align="center" width=13%><font color="'.$color.'">'.$text.'</font></td><td align="center"><table><tr><td>Через <font color="'.$color.'"><b><span class="timer" ar="'.$attacks[$i][0].'" tl="right" ti="'.$ti.'" sd="'.($attacks[$i][4]-$timePS).'"  ts="'.($attacks[$i][5]-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($attacks[$i][5]-$timePS).'"></span></td></tr></table></td><td width="30" align="center">'.$ul.'</td><td width=20%>'.$uname.'</td><td width="30"  height="30"align="center"><img src="'.$uimg.'" width="30" height="30" /></td></tr>';
	}
	$enemies.='</table>';
	
		}
		$db->close_connection();
	}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=windows-1251" />
		<link href="../css/main.css" rel="stylesheet" type="text/css" />
		<link href="../css/ui-darkness/jquery-ui-1.9.1.custom.css" rel="stylesheet">
		<script src="../js/jquery-1.8.2.js"></script>
		<script src="../js/jquery-ui-1.9.1.custom.js"></script>
		

		
		
	</head>
	<body>
<? include "header.php"; ?>
<div class="frame" style=" width:1050px; margin:10px;">


<div class="header">
<div class="hleft"></div>
<div class="hright"></div>
<div class="hmainfull"><div>Атаки</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 40px 5px 40px;">	

<?php

	echo $accname.'<br /><br />';
		if ($_GET['uid']>0) echo '<fieldset><legend>Управление</legend><div id="orders">'.$orders.'</div></fieldset><br />';
	echo '<fieldset><legend>Атаки</legend><div id="enemies">'.$enemies.'</div></fieldset><br />';
	
	if ($_GET['uid']>0) echo '<fieldset><legend>Подкрепления</legend><div id="friends">'.$friends.'</div></fieldset><br />';
	
	if ($_GET['uid']>0) echo '<fieldset><legend>Замок</legend>';
	echo '<input type="hidden" id="home" tr=\''.$home.'\' cl="white">';
	
	if ($_GET['uid']>0) echo '<div id="ahome" ></div><div id="castle">'.$castle.'</div></fieldset><br />';	
	
	if ($_GET['uid']>0) echo '<fieldset><legend>Бункер</legend><div id="bunker">'.$bunker.'</div></fieldset><br />';

	if ($_GET['uid']>0) echo '<fieldset><legend>Походы</legend><div id="armies">'.$armies.'</div></fieldset><br />';
		

	if ($_GET['uid']>0) echo '<fieldset><legend>Провинции</legend><div id="lands">'.$lands.'</div></fieldset><br />';
	
	echo '<input type=hidden id="toGet" value="..'.getenv("SCRIPT_NAME").'?uid='.$_GET['uid'].'" />';
	
	
}
else die('Давай до свидания!');
?>
</div>
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>

<?php 

echo '<input type="hidden" id="t0" value="'.(microtime(true)*1000).'" />';
echo '<input type="hidden" id="o" value="'.$_GET['o'].'" />';
echo '<input type="hidden" id="d0" value="'.$_GET['d0'].'" />';
echo '<input type="hidden" id="d1" value="'.$_GET['d1'].'" />';
echo '<input type="hidden" id="o1" value="'.$_GET['o1'].'" />';
echo '<input type="hidden" id="o2" value="'.$_GET['o2'].'" />';
echo '<input type="hidden" id="b1" value="'.$_GET['b1'].'" />';
echo '<input type="hidden" id="r0" value="'.$_GET['r0'].'" />';
echo '<input type="hidden" id="r1" value="'.$_GET['r1'].'" />';
echo '<input type="hidden" id="o0" value="'.$_GET['o0'].'" />';
echo '<input type="hidden" id="ord" value="" />';


?>
  <script>
var reboot=0;

  var nowdate = new Date();
nowts = nowdate.valueOf();
  var LS = nowts - $('#t0').val();	
  //alert(LS);
  
    	showarmy('home');
  
  setInterval(function(){NYT()},1000);

function NYT() {
		var $inputs = $('.timer');
		var nowdate = new Date();
		nowts = nowdate.valueOf();
		$inputs.each(function() 
			{
			dest=$(this).attr("ts");
			start=$(this).attr("sd");
			col=$(this).attr("ti");
			tl=$(this).attr("tl");
			var d=Math.round((dest-nowts+LS)/1000);
			var s=dest-start;
			var w=nowts-LS-start;
			var e=Math.ceil(w*100/s);
			str='00:00:00';
			if(d>0)
				{
				h=Math.floor(d/3600);
				if(h<10) {h='0'+h;}
				d=d-h*3600;
				m=Math.floor(d/60);
				if(m<10) {m='0'+m;}
				d=d-m*60;
				if(d<10) {d='0'+d;}
				str=h+':'+m+':'+d;
				}
				if(reboot==0 && str=='00:00:00')  
				{
					var address='';
					address=($('#o').val()!='')?address+'&o='+$('#o').val():address;
					address=($('#o0').val()!='')?address+'&o0='+$('#o0').val():address;
					address=($('#o1').val()!='')?address+'&o1='+$('#o1').val():address;
					address=($('#d0').val()!='')?address+'&d0='+$('#d0').val():address;
					address=($('#d1').val()!='')?address+'&d1='+$('#d1').val():address;
					address=($('#r0').val()!='')?address+'&r0='+$('#r0').val():address;
					address=($('#r1').val()!='')?address+'&r1='+$('#r1').val():address;
					address=($('#b1').val()!='')?address+'&b1='+$('#b1').val():address;	
					address=($('#ord').val()!='')?address+'&ord='+$('#ord').val():address;
					window.location=$('#toGet').val()+address;
					reboot=1;
				}
				e=Math.min(e,100);
			$img='<img src="../img/bars/b'+col+'.png" height="5" width="'+e+'%" align="'+tl+'" />';
			$('#l'+dest).html($img);	
			$(this).html(str);
			});

	};
	
  function order($ord) 
	{
	var chck1 = $("#chi"+$ord).is(':checked');
	var chck2 = $("#cht"+$ord).is(':checked');
	$append='';
	if (chck1) $append=$append+'&ch1=1';
	if (chck2) $append=$append+'&ch2=1';
					$address='';
					$address=($('#o').val()!='')? $address+'&o='+$('#o').val():$address;
					$address=($('#o0').val()!='')? $address+'&o0='+$('#o0').val():$address;
					$address=($('#o1').val()!='')? $address+'&o1='+$('#o1').val():$address;
					$address=($('#d0').val()!='')? $address+'&d0='+$('#d0').val():$address;
					$address=($('#d1').val()!='')? $address+'&d1='+$('#d1').val():$address;
					$address=($('#r0').val()!='')? $address+'&r0='+$('#r0').val():$address;
					$address=($('#r1').val()!='')? $address+'&r1='+$('#r1').val():$address;
					$address=($('#b1').val()!='')? $address+'&b1='+$('#b1').val():$address;	
					$address=$address+$append;
	switch($ord)
	{
	case 1:
	{
if(reboot==0)  
				{

					window.location=$('#toGet').val()+'&ord='+$ord+$address;
					reboot=1;
				}
	}	
	break;
	case 2:
	{
if(reboot==0)  
				{

					window.location=$('#toGet').val()+'&ord='+$ord+$address;
					reboot=1;
				}
	}	
	break;
	case 3:
	{
if(reboot==0)  
				{

					window.location=$('#toGet').val()+'&ord='+$ord+$address;
					reboot=1;
				}
	}	
	break;
	case 4:
	{
if(reboot==0)  
				{

					window.location=$('#toGet').val()+'&ord='+$ord+$address;
					reboot=1;
				}
	}	
	break;
	case 5:
	{
if(reboot==0)  
				{

					window.location=$('#toGet').val()+'&ord='+$ord+$address;
					reboot=1;
				}
	}	
	break;
	case 6:
	{
if(reboot==0)  
				{

					window.location=$('#toGet').val()+'&ord='+$ord+$address;
					reboot=1;
				}
	}	
	break;
	case 7:
	{
if(reboot==0)  
				{

					window.location=$('#toGet').val()+'&ord='+$ord+$address;
					reboot=1;
				}
	}	
	break;
	case 8:
	{
	
	
	
	}	
	break;
	case 9:
	{
	
	
	
	}	
	break;
	case 10:
	{
	
	
	
	}	
	break;
	case 11:
	{
	
	
	
	}	
	break;
	case 12:
	{
	
	
	
	}	
	break;
	case 13:
	{
if(reboot==0)  
				{

					window.location=$('#toGet').val()+'&ord='+$ord+$address;
					reboot=1;
				}
	}	
	break;
	case 14:
	{
if(reboot==0)  
				{

					window.location=$('#toGet').val()+'&ord='+$ord+$address;
					reboot=1;
				}
	}	
	break;
	}
	}
	
	
function handle(sender,$id,$user,$type) 
	{

	if(sender.checked==false)
	{
	
	switch($type)
	{
	case 20:
	{
	$('#r0').val($('#r0').val().replace($user+'_'+$id,''));
	$('#r0').val($('#r0').val().replace(/(^_)/,''));
	$('#r0').val($('#r0').val().replace(/(_$)/,''));
	$('#r0').val($('#r0').val().replace(/(__)/,'_'));	
	}
	break;
	case 30:
	{
	$('#o0').val($('#o0').val().replace($user+'_'+$id,''));
	$('#o0').val($('#o0').val().replace(/(^_)/,''));
	$('#o0').val($('#o0').val().replace(/(_$)/,''));
	$('#o0').val($('#o0').val().replace(/(__)/,'_'));	
	}
	break;
	
	case 50:
	{
	$('#d0').val($('#d0').val().replace($user+'_'+$id,''));
	$('#d0').val($('#d0').val().replace(/(^_)/,''));
	$('#d0').val($('#d0').val().replace(/(_$)/,''));
	$('#d0').val($('#d0').val().replace(/(__)/,'_'));	
	}
	break;
	case 21:
	{
	$('#r0').val($('#r0').val().replace($user+'_'+$id,''));
	$('#r0').val($('#r0').val().replace(/(^_)/,''));
	$('#r0').val($('#r0').val().replace(/(_$)/,''));
	$('#r0').val($('#r0').val().replace(/(__)/,'_'));	
	}
	break;
	case 31:
	{
	$('#o').val($('#o').val().replace($user+'_'+$id,''));
	$('#o').val($('#o').val().replace(/(^_)/,''));
	$('#o').val($('#o').val().replace(/(_$)/,''));
	$('#o').val($('#o').val().replace(/(__)/,'_'));	
	}
	break;

	case 51:
	{
	$('#d1').val($('#d1').val().replace($user+'_'+$id,''));
	$('#d1').val($('#d1').val().replace(/(^_)/,''));
	$('#d1').val($('#d1').val().replace(/(_$)/,''));
	$('#d1').val($('#d1').val().replace(/(__)/,'_'));	
	}	
	break;
	case 91:
	{
	$('#b1').val($('#b1').val().replace($user+'_'+$id+'_'+$('#'+$id).attr("tr").replace(/"/g,'-'),''));
	$('#b1').val($('#b1').val().replace(/(^_)/,''));
	$('#b1').val($('#b1').val().replace(/(_$)/,''));
	$('#b1').val($('#b1').val().replace(/(__)/,'_'));	
	}	
	break;
	case 32:
	{
	$('#o1').val($('#o1').val().replace($user+'_'+$id,''));
	$('#o1').val($('#o1').val().replace(/(^_)/,''));
	$('#o1').val($('#o1').val().replace(/(_$)/,''));
	$('#o1').val($('#o1').val().replace(/(__)/,'_'));	
	}	
	break;
	case 52:
	{
	$('#d0').val($('#d0').val().replace($user+'_'+$id,''));
	$('#d0').val($('#d0').val().replace(/(^_)/,''));
	$('#d0').val($('#d0').val().replace(/(_$)/,''));
	$('#d0').val($('#d0').val().replace(/(__)/,'_'));		
	}	
	break;
	case 33:
	{
	$('#o').val($('#o').val().replace($user+'_'+$id,''));
	$('#o').val($('#o').val().replace(/(^_)/,''));
	$('#o').val($('#o').val().replace(/(_$)/,''));
	$('#o').val($('#o').val().replace(/(__)/,'_'));	
	}
	break;
	case 53:
	{
	$('#d1').val($('#d1').val().replace($user+'_'+$id,''));
	$('#d1').val($('#d1').val().replace(/(^_)/,''));
	$('#d1').val($('#d1').val().replace(/(_$)/,''));
	$('#d1').val($('#d1').val().replace(/(__)/,'_'));	
	}
	break;
	}
	
	}
	else
	{
	switch($type)
	{
	
	case 20:
	{
	if ($('#r0').val()=='') $('#r0').val($user+'_'+$id);
	else $('#r0').val($('#r0').val()+'_'+$user+'_'+$id);
	}
	break;
	case 30:
	{
	if ($('#o0').val()=='') $('#o0').val($user+'_'+$id);
	else $('#o0').val($('#o0').val()+'_'+$user+'_'+$id);
	}
	break;

	case 50:
	{
	if ($('#d0').val()=='') $('#d0').val($user+'_'+$id);
	else $('#d0').val($('#d0').val()+'_'+$user+'_'+$id);
	}
	break;
	case 21:
	{
	if ($('#r0').val()=='') $('#r0').val($user+'_'+$id);
	else $('#r0').val($('#r0').val()+'_'+$user+'_'+$id);
	}
	break;
	case 31:
	{
	if ($('#o').val()=='') $('#o').val($user+'_'+$id);
	else $('#o').val($('#o').val()+'_'+$user+'_'+$id);
	}
	break;

	case 51:
	{
	if ($('#d1').val()=='') $('#d1').val($user+'_'+$id);
	else $('#d1').val($('#d1').val()+'_'+$user+'_'+$id);
	}	
	break;
	case 91:
	{
	if ($('#b1').val()=='') $('#b1').val($user+'_'+$id+'_'+$('#'+$id).attr("tr").replace(/"/g,'-'));
	else $('#b1').val($('#b1').val()+'_'+$user+'_'+$id+'_'+$('#'+$id).attr("tr").replace(/"/g,'-'));
	}	
	break;
	case 32:
	{
	if ($('#o1').val()=='') $('#o1').val($user+'_'+$id);
	else $('#o1').val($('#o1').val()+'_'+$user+'_'+$id);
	var address='';
	address=($('#o').val()!='')?address+'&o='+$('#o').val():address;
	address=($('#o0').val()!='')?address+'&o0='+$('#o0').val():address;
	address=($('#o1').val()!='')?address+'&o1='+$('#o1').val():address;
	address=($('#d0').val()!='')?address+'&d0='+$('#d0').val():address;
	address=($('#d1').val()!='')?address+'&d1='+$('#d1').val():address;
	address=($('#r0').val()!='')?address+'&r0='+$('#r0').val():address;
	address=($('#r1').val()!='')?address+'&r1='+$('#r1').val():address;
	address=($('#b1').val()!='')?address+'&b1='+$('#b1').val():address;	
	address=($('#ord').val()!='')?address+'&ord='+$('#ord').val():address;
	window.location=$('#toGet').val()+address;
	}	
	break;
	case 52:
	{
	if ($('#d0').val()=='') $('#d0').val($user+'_'+$id);
	else $('#d0').val($('#d0').val()+'_'+$user+'_'+$id);
	var address='';
	address=($('#o').val()!='')?address+'&o='+$('#o').val():address;
	address=($('#o0').val()!='')?address+'&o0='+$('#o0').val():address;
	address=($('#o1').val()!='')?address+'&o1='+$('#o1').val():address;
	address=($('#d0').val()!='')?address+'&d0='+$('#d0').val():address;
	address=($('#d1').val()!='')?address+'&d1='+$('#d1').val():address;
	address=($('#r0').val()!='')?address+'&r0='+$('#r0').val():address;
	address=($('#r1').val()!='')?address+'&r1='+$('#r1').val():address;
	address=($('#b1').val()!='')?address+'&b1='+$('#b1').val():address;	

	window.location=$('#toGet').val()+address;
	}	
	break;
	case 33:
	{
	if ($('#o').val()=='') $('#o').val($user+'_'+$id);
	else $('#o').val($('#o').val()+'_'+$user+'_'+$id);
	var address='';
	address=($('#o').val()!='')?address+'&o='+$('#o').val():address;
	address=($('#o0').val()!='')?address+'&o0='+$('#o0').val():address;
	address=($('#o1').val()!='')?address+'&o1='+$('#o1').val():address;
	address=($('#d0').val()!='')?address+'&d0='+$('#d0').val():address;
	address=($('#d1').val()!='')?address+'&d1='+$('#d1').val():address;
	address=($('#r0').val()!='')?address+'&r0='+$('#r0').val():address;
	address=($('#r1').val()!='')?address+'&r1='+$('#r1').val():address;
	address=($('#b1').val()!='')?address+'&b1='+$('#b1').val():address;	

	window.location=$('#toGet').val()+address;
	}
	break;
	case 53:
	{
	if ($('#d1').val()=='') $('#d1').val($user+'_'+$id);
	else $('#d1').val($('#d1').val()+'_'+$user+'_'+$id);
	var address='';
	address=($('#o').val()!='')?address+'&o='+$('#o').val():address;
	address=($('#o0').val()!='')?address+'&o0='+$('#o0').val():address;
	address=($('#o1').val()!='')?address+'&o1='+$('#o1').val():address;
	address=($('#d0').val()!='')?address+'&d0='+$('#d0').val():address;
	address=($('#d1').val()!='')?address+'&d1='+$('#d1').val():address;
	address=($('#r0').val()!='')?address+'&r0='+$('#r0').val():address;
	address=($('#r1').val()!='')?address+'&r1='+$('#r1').val():address;
	address=($('#b1').val()!='')?address+'&b1='+$('#b1').val():address;

	window.location=$('#toGet').val()+address;
	}
	break;

	}
	
	}
	
	
	}
	
function unitName($utype)
{
switch ($utype)
{
case 1: return 'Пехотинец'; break;
case 2: return 'Киберпёс'; break;
case 3: return 'Гладиатор'; break;
case 4: return 'Валькирия'; break;
case 5: return 'Боевая машина'; break;
case 6: return 'Ударный танк'; break;
case 7: return 'Бронетранспортёр'; break;
case 8: return 'Осадный танк'; break;
case 9: return 'Пушка Гаусса'; break;
case 10: return 'Термомодуль'; break;
case 11: return 'Мортира'; break;
case 12: return 'Расщепитель'; break;
case 13: return 'Разведчик'; break;
case 14: return 'Перехватчик'; break;
case 15: return 'Штурмовик'; break;
case 16: return 'Крейсер'; break;
case 59: return 'Разведчик «Фантом»'; break;
case 62: return 'Орбитальная пушка'; break;
case 17: return 'Элитный пехотинец'; break;
case 18: return 'Элитный киберпёс'; break;
case 19: return 'Элитный гладиатор'; break;
case 20: return 'Элитная валькирия'; break;
case 21: return 'Элитная боевая машина'; break;
case 22: return 'Элитный ударный танк'; break;
case 23: return 'Элитный бронетранспортёр'; break;
case 24: return 'Элитный осадный танк'; break;
case 25: return 'Элитная пушка Гаусса'; break;
case 26: return 'Элитный термомодуль'; break;
case 27: return 'Элитная мортира'; break;
case 28: return 'Элитный расщепитель'; break;
case 29: return 'Элитный разведчик'; break;
case 30: return 'Элитный перехватчик'; break;
case 31: return 'Элитный штурмовик'; break;
case 32: return 'Элитный крейсер'; break;
case 60: return 'Элитный разведчик «Фантом»'; break;
case 63: return 'Элитная орбитальная пушка'; break;
case 33: return 'Киборг'; break;
case 53: return 'Пожиратель'; break;
case 54: return 'Потрошитель'; break;
case 55: return 'Живоглот'; break;
case 56: return 'Тварь'; break;
case 57: return 'Сталкер'; break;
case 58: return 'Мозгоед'; break;
case 34: return 'PD-13 "Кукарача"'; break;
case 36: return 'PD-8 "Стройбот"'; break;
case 35: return 'PD-72 "Атлант"'; break;
case 88: return 'Десантный хелиджет "Гиперион"'; break;
case 89: return 'Самоходная пушка "Эрида"'; break;
case 90: return 'Тяжёлый танк "Хронос"'; break;
case 37: return 'Снайпер'; break;
case 38: return 'Пулемётчик'; break;
case 39: return 'Пиротехник'; break;
case 40: return 'Ракетчик'; break;
case 41: return 'Элитный снайпер'; break;
case 42: return 'Элитный пулемётчик'; break;
case 43: return 'Элитный пиротехник'; break;
case 44: return 'Элитный ракетчик'; break;
case 45: return 'Ликвидатор'; break;
case 46: return 'Протектор'; break;
case 47: return 'Каратель'; break;
case 48: return 'Истребитель'; break;
case 49: return 'Элитный Ликвидатор'; break;
case 50: return 'Элитный Протектор'; break;
case 51: return 'Элитный каратель'; break;
case 52: return 'Элитный истребитель'; break;
case 64: return 'Пехотинец (мутант)'; break;
case 65: return 'Киберпёс (мутант)'; break;
case 66: return 'Гладиатор (мутант)'; break;
case 67: return 'Валькирия (мутант)'; break;
case 68: return 'Боевая машина (мутант)'; break;
case 69: return 'Ударный танк (мутант)'; break;
case 70: return 'Бронетранспортёр (мутант)'; break;
case 71: return 'Осадный танк (мутант)'; break;
case 72: return 'Пушка Гаусса (мутант)'; break;
case 73: return 'Термомодуль (мутант)'; break;
case 74: return 'Мортира (мутант)'; break;
case 75: return 'Расщепитель (мутант)'; break;
case 76: return 'Разведчик (мутант)'; break;
case 77: return 'Перехватчик (мутант)'; break;
case 78: return 'Штурмовик (мутант)'; break;
case 79: return 'Крейсер (мутант)'; break;
case 61: return 'Разведчик «Фантом» (мутант)'; break;
case 99: return 'Орбитальная пушка (мутант)'; break;
case 80: return 'Снайпер (мутант)'; break;
case 81: return 'Пулемётчик (мутант)'; break;
case 82: return 'Пиротехник (мутант)'; break;
case 83: return 'Ракетчик (мутант)'; break;
case 84: return 'Ликвидатор (мутант)'; break;
case 85: return 'Протектор (мутант)'; break;
case 86: return 'Каратель (мутант)'; break;
case 87: return 'Истребитель (мутант)'; break;
case 91: return 'Хищник'; break;
case 92: return 'Чистильщик'; break;
case 94: return 'Генератор поля'; break;
case 93: return 'Флагман'; break;
case 95: return 'Центурион'; break;
case 96: return 'Мастодонт'; break;
case 97: return 'Голиаф'; break;
case 98: return 'Авианосец'; break;
}
}	
	
	
function unitImg($utype)
{
	if($utype<10) $uim='0'+$utype+'_ps';
	if($utype>=10 && $utype<=16)  $uim=$utype+'_ps';
	if($utype>16 && $utype-16<10)  $uim='0'+($utype-16)+'_g_ps';
	if($utype-16>=10)  $uim=($utype-16)+'_g_ps';
	if($utype==33) $uim='33_ps';
return '<img src="../img/units/'+$uim+'.jpg" title="'+unitName($utype)+'" alt="'+unitName($utype)+'" width="45" height="39" />';
}
  

  function showarmy($ar) {

		var $troops = $('#'+$ar).attr("tr");
		var $color =  $('#'+$ar).attr("cl");
		
		data = $.parseJSON($troops);
		var $outtext1='<table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr height="39" >';
		var cnt2=0;
		for(var $i=1;$i<=33;$i++)
		{
		if(data[$i])
		{
		cnt2=cnt2+1;
		if(cnt2==15 || cnt2==29) $outtext1=$outtext1+'</tr><tr align="left" height="39" >';
		$outtext1=$outtext1+'<td align="center">';
		$outtext1=$outtext1+'<table align="center" bordercolor="'+$color+'" style="color:'+$color+';" border="1"><tr height="39" ><td align="center" height="39" >'+unitImg($i)+'</td></tr>';
		$outtext1=$outtext1+'<tr><td align="center">'+data[$i]+'</td></tr></table>';
		$outtext1=$outtext1+'</td>';
		}
		}
		var $outtext1=$outtext1+'</tr></table>';
		$carg='';
		if($('#'+$ar).attr("wt"))
		{
		var $car=$('#'+$ar).attr("wt");	
		cargo=$.parseJSON($car);
		if(cargo.u+cargo.t+cargo.m>0) 
		{
		$outtext1=$outtext1+'<table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td width="30%" ></td><td align="center"><img src="../img/gold.png" title="Золото" alt="Золото" height="30"  width="30" /></td><td align="center" width="70">'+Math.floor(cargo.u)+'</td><td align="center"><img src="../img/steel.png" title="Сталь" alt="Сталь" height="30"   width="30" /></td><td align="center" width="70">'+Math.floor(cargo.t)+'</td><td align="center"><img src="../img/meat.png" title="Мясо" alt="Мясо" height="30"   width="30" /></td><td align="center" width="70">'+Math.floor(cargo.m)+'</td><td width="30%" ></td></tr></table>';
		$carg='wt=\''+$car+'\' ';
		}
		}

		$('#a'+$ar).html($outtext1);
		$('#b'+$ar).html('<img src="../img/arrow2.png" width="20" height="25" id="'+$ar+'" onclick="hidearmy('+$ar+');" title="Скрыть войска" tr=\''+$troops+'\' cl="'+$color+'" '+$carg+' />');
		
	};
  
    function hidearmy($ar) {
	var $troops = $('#'+$ar).attr("tr");
	var $color =  $('#'+$ar).attr("cl");
	
	$carg='';
	if($('#'+$ar).attr("wt"))
		{
		var $car=$('#'+$ar).attr("wt");	
		$carg='wt=\''+$car+'\' ';
		}
  $('#a'+$ar).html('');
  $('#b'+$ar).html('<img src="../img/arrow.png" width="20" height="25" id="'+$ar+'" onclick="showarmy('+$ar+');" title="Показать войска" tr=\''+$troops+'\' cl="'+$color+'" '+$carg+' />');
  }
  
  

</script>
</body>
</html>