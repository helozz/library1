<?php
session_start();
//attacks ver 0.4
	
require_once("func.php");	
require_once("../auto/defines.php");
require_once("../auto/db_query.php");
require_once("../auto/TDApi.php");
require_once("../auto/TDdata.php");
require_once("unitslist.php");
$authuid = $_SESSION['soc_id'];
$hash = $_SESSION['hash'];
$calchash = md5(CLIENT_ID.''.$_SESSION['soc_id'].''.SECRET);
if ($hash == $calchash)
{
	if (isset($_GET['uid']))
	{


	$data=new TDdata();
	$db=new db_query(0,_PREF."".$_GET['uid'],$_SESSION['soc_id']);
	$uinfo = $db->get_acc($_SESSION['soc_id'],'',_PREF."".$_GET['uid']);
	$accname = mb_convert_encoding($uinfo,'cp1251','utf-8');
	$sid=$db->get_sid(_PREF."".$_GET['uid']);
	$alert=explode(';',$db->get_alert_info(_PREF."".$_GET['uid']));
	
	//echo $alert[4];
	//$alert[4]=1;
	
	$me=new TDApi(_PREF."".$_GET['uid'],$db->get_auth(_PREF."".$_GET['uid']),$db->friends,$db->v,$db->referer,$db->proxy,$db->proxypwd,$db->get_seed(_PREF."".$_GET['uid']),$alert[4],$alert[5]);
	//echo $me->server;
	//echo $me->GetUser(13077);
	$time1 =  microtime(true)*1000;
	$game=$me->TryQuest($alert[2],$alert[1]-1,microtime(true)*1000,$alert[0],0,0);
		
	
	
	$gamearr=json_decode($game,true);
	$alert[1]=$gamearr['g']['r'];
	if(!$gamearr['g']) 
	{
	header("Location:..".getenv("SCRIPT_NAME").'?'.getenv("QUERY_STRING"));
	die();
	}
	$timePS = (int)($gamearr['t']-$time1); // теоретическая разница времени нашего сервера и сервера игры
	

	$freecars=$gamearr['g']['ad']['q'];
	for($i=0;$i<count($gamearr['g']['wd']['u']);$i++)
	{
	if($gamearr['g']['wd']['u'][$i]['o']==$sid && $gamearr['g']['wd']['u'][$i]['pd']) $freecars-= $gamearr['g']['wd']['u'][$i]['pd']['c'];
	}
	for($i=0;$i<count($gamearr['g']['rd']['o']);$i++)
	{
	if($gamearr['g']['rd']['o'][$i]['u']==$sid) $freecars-= $gamearr['g']['rd']['o'][$i]['o']['c'];
	}
	
	$ztasks=substr_count($db->get_user_tasks(_PREF."".$_GET['uid'],'Z'),'AddOffer');
	
	$build='<table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td width="30" align="center"><img src="../img/gold.png" width="30" height="30" /></td><td width=22% align="center"><font color="#009933"><b><span id="gameu">'.floor($gamearr['g']['a']['r']['u']).'</span></b></font></td><td width="30" align="center"><img src="../img/steel.png" width="30" height="30" /></td><td width=22% align="center"><font color="orange"><b><span id="gamet">'.floor($gamearr['g']['a']['r']['t']).'</span></b></font></td><td width="30" align="center"><img src="../img/meat.png" width="30" height="30" /></td><td width=22% align="center"><font color="#00ccff"><b><span id="gamem">'.floor($gamearr['g']['a']['r']['m']).'</span></b></font></td><td width="30" align="center"><img src="../img/resources.png" width="30" height="30"  title="Создать предложение" id="newoff" onclick="newoffer('.$freecars*$gamearr['g']['ad']['c'].');" /></td><td width=17% align="center"><font color="#ff6666"><b>'.$freecars.' x '.$gamearr['g']['ad']['c'].'</b></font></td><td width=5% align="center"><font color="#ff6666"><b>'.$ztasks.'</b></font></td></tr></table>';
	$build.='<div id="addoff"></div>';
	
	
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
	for($i=0;$i<count($gamearr['g']['ld']['m']);$i++)
	{
	array_push($users,$gamearr['g']['ld']['m'][$i]['u']);
	}
	for($i=0;$i<count($gamearr['g']['ld']['i']);$i++)
	{
	array_push($users,$gamearr['g']['ld']['i'][$i]['u']);
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
		
	$tomeres="";
	$fromres="";	
	$tomedr="";
	$fromdr="";
	$back="";
	$offers="";
	
	$tr=0;
	$fr=0;
	$td=0;
	$fd=0;
	
	$u=0;
	$t=0;
	$m=0;
	
	for($i=0;$i<count($gamearr['g']['wd']['u']);$i++)
	{

	if($gamearr['g']['wd']['u'][$i]['t']==$sid)
	{// к нам
	if($gamearr['g']['wd']['u'][$i]['sf'])
	{// к нам идет
	if($gamearr['g']['wd']['u'][$i]['pd'])
	{
	// к нам идет caravan
	if($gamearr['g']['wd']['u'][$i]['pd']['r'])
	{
	// к нам идет res
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
	for($j=0;$j<count($locsarr);$j++)
	{
	if($locsarr[$j]['i']==-$gamearr['g']['wd']['u'][$i]['o'])
	{
	$uname=mb_convert_encoding($locsarr[$j]['a'],'cp1251','utf-8');
	$ux=$locsarr[$j]['m']['x'];
	$uy=$locsarr[$j]['m']['y'];
	$ul=''; $uimg='';
	if(strpos($locsarr[$j]['a'],_RESGG)>0) $uimg='../img/sap.png';
	if(strpos($locsarr[$j]['a'],_RESMG)>0) $uimg='../img/meat.png';
	if(strpos($locsarr[$j]['a'],_RESTG)>0) $uimg='../img/steel.png';
	if(strpos($locsarr[$j]['a'],_RESUG)>0) $uimg='../img/gold.png';
	
	}
	}
	
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$tr++;
	$cargo=$gamearr['g']['wd']['u'][$i]['pd']['r']['u']+$gamearr['g']['wd']['u'][$i]['pd']['r']['t']+$gamearr['g']['wd']['u'][$i]['pd']['r']['m'];
	if($gamearr['g']['wd']['u'][$i]['pd']['r']['u']>0)
	{
	$type="../img/gold.png";
	$color="#009933";
	$bar="g";
	$u+=$gamearr['g']['wd']['u'][$i]['pd']['r']['u'];
	}
	if($gamearr['g']['wd']['u'][$i]['pd']['r']['t']>0)
	{
	$type="../img/steel.png";
	$color="orange";
	$bar="o";
	$t+=$gamearr['g']['wd']['u'][$i]['pd']['r']['t'];
	}
	if($gamearr['g']['wd']['u'][$i]['pd']['r']['m']>0)
	{
	$type="../img/meat.png";
	$color="#00ccff";
	$bar="s";
	$m+=$gamearr['g']['wd']['u'][$i]['pd']['r']['m'];
	}
	
	$tomeres.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td width="30"  height="30"align="center"><img src="'.$uimg.'" width="30" height="30" /></td><td width=23%>'.$uname.'</td><td align="center" width=9%><font color="'.$color.'"><b>'.$cargo.'</b></font></td><td width="30" align="center"><img src="'.$type.'" width="30" height="30" /></td><td align="center"><table><tr><td>Через <font color="'.$color.'"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="right" ti="'.$bar.'" sd="'.($gamearr['g']['wd']['u'][$i]['sf']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).''.$gamearr['g']['wd']['u'][$i]['i'].'"></span></td></tr></table><td width="25%" align="center">'.$u.'|'.$t.'|'.$m.'</td></tr></table></div>';
		
	}
	
	if($gamearr['g']['wd']['u'][$i]['pd']['d'])
	{
	// к нам идет чертеж
	$td++;
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
	for($j=0;$j<count($locsarr);$j++)
	{
	if($locsarr[$j]['i']==-$gamearr['g']['wd']['u'][$i]['o'])
	{
	$uname=mb_convert_encoding($locsarr[$j]['a'],'cp1251','utf-8');
	$ux=$locsarr[$j]['m']['x'];
	$uy=$locsarr[$j]['m']['y'];
	$ul=''; $uimg='';
	if(strpos($locsarr[$j]['a'],_RESGG)>0) $uimg='../img/sap.png';
	if(strpos($locsarr[$j]['a'],_RESMG)>0) $uimg='../img/meat.png';
	if(strpos($locsarr[$j]['a'],_RESTG)>0) $uimg='../img/steel.png';
	if(strpos($locsarr[$j]['a'],_RESUG)>0) $uimg='../img/gold.png';
	
	}
	}
	
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	
	$type="../img/techs/".$gamearr['g']['wd']['u'][$i]['pd']['d']['t'].".png\" title=\"".mb_convert_encoding($data->GetItemName($gamearr['g']['wd']['u'][$i]['pd']['d']['t']),'cp1251','utf-8')."\"";
	$cargo="Часть ".($gamearr['g']['wd']['u'][$i]['pd']['d']['p']+1);
	$bar="b";
	$color="#006699";
	
	$tomedr.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td width="30"  height="30"align="center"><img src="'.$uimg.'" width="30" height="30" /></td><td width=23%>'.$uname.'</td><td align="center" width=9%><font color="'.$color.'"><b>'.$cargo.'</b></font></td><td width="30" align="center"><img src="'.$type.'" width="30" height="30" /></td><td align="center"><table><tr><td>Через <font color="'.$color.'"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="right" ti="'.$bar.'" sd="'.($gamearr['g']['wd']['u'][$i]['sf']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).''.$gamearr['g']['wd']['u'][$i]['i'].'"></span></td></tr></table><td width="25%" align="center">Всего '._T9.': '.$td.'</td></tr></table></div>';
	
	}
	}
	}
	}
	
	if($gamearr['g']['wd']['u'][$i]['o']==$sid)
	{// от нас
	if($gamearr['g']['wd']['u'][$i]['sf'])
	{// от нас идет
	if($gamearr['g']['wd']['u'][$i]['pd'])
	{
	// от нас идет caravan
	if($gamearr['g']['wd']['u'][$i]['pd']['r'])
	{
	// от нас идет res
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
	if(strpos($locsarr[$j]['a'],_RESGG)>0) $uimg='../img/sap.png';
	if(strpos($locsarr[$j]['a'],_RESMG)>0) $uimg='../img/meat.png';
	if(strpos($locsarr[$j]['a'],_RESTG)>0) $uimg='../img/steel.png';
	if(strpos($locsarr[$j]['a'],_RESUG)>0) $uimg='../img/gold.png';
	
	}
	}
	
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	$fr++;
	$cargo=$gamearr['g']['wd']['u'][$i]['pd']['r']['u']+$gamearr['g']['wd']['u'][$i]['pd']['r']['t']+$gamearr['g']['wd']['u'][$i]['pd']['r']['m'];
	
	$num=$gamearr['g']['wd']['u'][$i]['pd']['c'].'('.$gamearr['g']['ad']['q'].')';
	
	if($gamearr['g']['wd']['u'][$i]['pd']['r']['u']>0)
	{
	$type="../img/gold.png";
	$color="#009933";
	$bar="g";
	}
	if($gamearr['g']['wd']['u'][$i]['pd']['r']['t']>0)
	{
	$type="../img/steel.png";
	$color="orange";
	$bar="o";
	}
	if($gamearr['g']['wd']['u'][$i]['pd']['r']['m']>0)
	{
	$type="../img/meat.png";
	$color="#00ccff";
	$bar="s";
	}
	
	$fromres.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td align="center" width=9%><font color="'.$color.'"><b>'.$cargo.'</b></font></td><td width="30" align="center"><img src="'.$type.'" width="30" height="30" /></td><td width=60 align="center">'.$num.'</td><td align="center"><table><tr><td>Через <font color="'.$color.'"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="left" ti="'.$bar.'" sd="'.($gamearr['g']['wd']['u'][$i]['sf']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).''.$gamearr['g']['wd']['u'][$i]['i'].'"></span></td></tr></table><td width=120 align="center">'.$ux.':'.$uy.'</td><td width=23%>'.$uname.'</td><td width="30"  height="30"align="center"><img src="'.$uimg.'" width="30" height="30" /></td></tr></table></div>';
		
	}
	
	if($gamearr['g']['wd']['u'][$i]['pd']['d'])
	{
	// от нас идет чертеж
	$fd++;
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
	if(strpos($locsarr[$j]['a'],_RESGG)>0) $uimg='../img/sap.png';
	if(strpos($locsarr[$j]['a'],_RESMG)>0) $uimg='../img/meat.png';
	if(strpos($locsarr[$j]['a'],_RESTG)>0) $uimg='../img/steel.png';
	if(strpos($locsarr[$j]['a'],_RESUG)>0) $uimg='../img/gold.png';
	
	}
	}
	
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS)/1000);
	
	$type="../img/techs/".$gamearr['g']['wd']['u'][$i]['pd']['d']['t'].".png\" title=\"".mb_convert_encoding($data->GetItemName($gamearr['g']['wd']['u'][$i]['pd']['d']['t']),'cp1251','utf-8')."\"";
	$cargo="Часть ".($gamearr['g']['wd']['u'][$i]['pd']['d']['p']+1);
	$bar="b";
	$color="#006699";
	$num=$gamearr['g']['wd']['u'][$i]['pd']['c'].'('.$gamearr['g']['ad']['q'].')';
	
	$fromdr.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td align="center" width=9%><font color="'.$color.'"><b>'.$cargo.'</b></font></td><td width="30" align="center"><img src="'.$type.'" width="30" height="30" /></td><td width=60 align="center">'.$num.'</td><td align="center"><table><tr><td>Через <font color="'.$color.'"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="left" ti="'.$bar.'" sd="'.($gamearr['g']['wd']['u'][$i]['sf']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sf']['a']-$timePS).''.$gamearr['g']['wd']['u'][$i]['i'].'"></span></td></tr></table><td width=120 align="center">'.$ux.':'.$uy.'</td><td width=23%>'.$uname.'</td><td width="30"  height="30"align="center"><img src="'.$uimg.'" width="30" height="30" /></td></tr></table></div>';
		
	}
	}
	}
	if($gamearr['g']['wd']['u'][$i]['sb'] && $gamearr['g']['wd']['u'][$i]['pd'])
	{//мы едем домой
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
	if(strpos($locsarr[$j]['a'],_RESGG)>0) $uimg='../img/sap.png';
	if(strpos($locsarr[$j]['a'],_RESMG)>0) $uimg='../img/meat.png';
	if(strpos($locsarr[$j]['a'],_RESTG)>0) $uimg='../img/steel.png';
	if(strpos($locsarr[$j]['a'],_RESUG)>0) $uimg='../img/gold.png';
	
	}
	}
	
	$time=date("d.m H:i:s",($gamearr['g']['wd']['u'][$i]['sb']['a']-$timePS)/1000);
	
	$type="";
	$cargo="";
	$bar="b";
	$color="#006699";
	$num=$gamearr['g']['wd']['u'][$i]['pd']['c'].'('.$gamearr['g']['ad']['q'].')';
	
	$back.='<div id="r'.$gamearr['g']['wd']['u'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td align="center" width=9%><font color="'.$color.'"><b>'.$cargo.'</b></font></td><td width="30" align="center"><img src="'.$type.'" width="30" height="30" /></td><td width=60 align="center">'.$num.'</td><td align="center"><table><tr><td>Через <font color="'.$color.'"><b><span class="timer" ar="'.$gamearr['g']['wd']['u'][$i]['i'].'" tl="right" ti="'.$bar.'" sd="'.($gamearr['g']['wd']['u'][$i]['sb']['d']-$timePS).'"  ts="'.($gamearr['g']['wd']['u'][$i]['sb']['a']-$timePS).'"></span></b></font>&nbsp;('.$time.')</td></tr><tr><td><span id="l'.($gamearr['g']['wd']['u'][$i]['sb']['a']-$timePS).''.$gamearr['g']['wd']['u'][$i]['i'].'"></span></td></tr></table><td width=120 align="center">'.$ux.':'.$uy.'</td><td width=23%>'.$uname.'</td><td width="30"  height="30"align="center"><img src="'.$uimg.'" width="30" height="30" /></td></tr></table></div>';
	
	}
	}
	
	}
	
	
	$embs="";
	$alcnt=$gamearr['g']['ad']['a']-count($gamearr['g']['ld']['m']);
	for($i=0;$i<count($gamearr['g']['ld']['m']);$i++)
	{
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['ld']['m'][$i]['u'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
	if($gamearr['g']['ld']['m'][$i]['s']==0) $state="Союзник";
	else $state="Приглашен";
	$embs.='<div id="ar'.$gamearr['g']['ld']['m'][$i]['u'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td width="30"  height="30"align="center"><img src="'.$uimg.'" width="30" height="30" /></td><td width=200>&nbsp;'.$uname.'</td><td width=30 align="center">'.$ul.'</td><td width=120 align="center">'.$ux.':'.$uy.'</td><td width=120 align="center">'.$state.'</td><td width="30" align="center">&nbsp;</td><td width="30" align="center"><img src="../img/Del.png" width="30" height="30"  title="Удалить" id="" onclick="remally('.$gamearr['g']['ld']['m'][$i]['u'].');" /></td></tr></table></div>';	
	}
	for($i=0;$i<count($gamearr['g']['ld']['i']);$i++)
	{
	for($j=0;$j<count($userarr);$j++)
	{
	if($userarr[$j]['i']==$gamearr['g']['ld']['i'][$i]['u'])
	{
	$uname=mb_convert_encoding($userarr[$j]['n'],'cp1251','utf-8');
	$uimg=($userarr[$j]['i']==0)? '../img/mery_s.jpg':$userarr[$j]['p'];
	$ux=$userarr[$j]['m']['x'];
	$uy=$userarr[$j]['m']['y'];
	$ul=$userarr[$j]['l'];
	}
	}
	$state="Предложение";
	$addal='&nbsp;';
	if($alcnt>0) $addal='<img src="../img/orders/ord11.png" width="30" height="30"  title="Принять" id="" onclick="addally('.$gamearr['g']['ld']['i'][$i]['u'].');" />';
	
	$embs.='<div id="ar'.$gamearr['g']['ld']['i'][$i]['u'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td width="30"  height="30"align="center"><img src="'.$uimg.'" width="30" height="30" /></td><td width=200>&nbsp;'.$uname.'</td><td width=30 align="center">'.$ul.'</td><td width=120 align="center">'.$ux.':'.$uy.'</td><td width=120 align="center">'.$state.'</td><td width="30" align="center">'.$addal.'</td><td width="30" align="center"><img src="../img/Del.png" width="30" height="30"  title="Удалить" id="" onclick="remally('.$gamearr['g']['ld']['i'][$i]['u'].');" /></td></tr></table></div>';	
	}
	if($alcnt>0) $embs.='<br /><div id="addrule"><button name="doaddd" id="doadd" onclick="add();">Добавить союзника</button></div>';
	
	
	
	for($i=0;$i<count($gamearr['g']['rd']['o']);$i++)
	{
	if($gamearr['g']['rd']['o'][$i]['o']['r'])
	{
	
	$cargo=$gamearr['g']['rd']['o'][$i]['o']['r']['u']+$gamearr['g']['rd']['o'][$i]['o']['r']['t']+$gamearr['g']['rd']['o'][$i]['o']['r']['m'];
	if($gamearr['g']['rd']['o'][$i]['o']['r']['u']>0)
	{
	$type="../img/gold.png";
	$color="#009933";
	$bar="g";
	}
	if($gamearr['g']['rd']['o'][$i]['o']['r']['t']>0)
	{
	$type="../img/steel.png";
	$color="orange";
	$bar="o";
	}
	if($gamearr['g']['rd']['o'][$i]['o']['r']['m']>0)
	{
	$type="../img/meat.png";
	$color="#00ccff";
	$bar="s";
	}
	
	$cargo2=$gamearr['g']['rd']['o'][$i]['s']['r']['u']+$gamearr['g']['rd']['o'][$i]['s']['r']['t']+$gamearr['g']['rd']['o'][$i]['s']['r']['m'];
	if($gamearr['g']['rd']['o'][$i]['s']['r']['u']>0)
	{
	$type2="../img/gold.png";
	$color2="#009933";
	$bar2="g";
	}
	if($gamearr['g']['rd']['o'][$i]['s']['r']['t']>0)
	{
	$type2="../img/steel.png";
	$color2="orange";
	$bar2="o";
	}
	if($gamearr['g']['rd']['o'][$i]['s']['r']['m']>0)
	{
	$type2="../img/meat.png";
	$color2="#00ccff";
	$bar2="s";
	}
	
	
	
	$num=$gamearr['g']['rd']['o'][$i]['o']['c'].'('.$gamearr['g']['ad']['q'].')';
	
	$offers.='<div id="r'.$gamearr['g']['rd']['o'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td align="center" width=12%><font color="'.$color.'"><b>'.$cargo.'</b></font></td><td width="30" align="center"><img src="'.$type.'" width="30" height="30" /></td><td width=60 align="center">обмениваем на</td><td align="center" width=12%><font color="'.$color2.'"><b>'.$cargo2.'</b></font></td><td width="30" align="center"><img src="'.$type2.'" width="30" height="30" /></td><td width=60 align="center">'.$num.'</td><td width="30" align="center"><img src="../img/Del.png" width="30" height="30"  title="Удалить" id="" onclick="remoffer('.$gamearr['g']['rd']['o'][$i]['i'].');" /></td></tr></table></div>';
	
	
	}
	if($gamearr['g']['rd']['o'][$i]['o']['d'])
	{
	$type="../img/techs/".$gamearr['g']['rd']['o'][$i]['o']['d']['t'].".png\" title=\"".mb_convert_encoding($data->GetItemName($gamearr['g']['rd']['o'][$i]['o']['d']['t']),'cp1251','utf-8')."\"";
	$cargo="Часть ".($gamearr['g']['rd']['o'][$i]['o']['d']['p']+1);
	$bar="b";
	$color="#006699";
	$num=$gamearr['g']['rd']['o'][$i]['o']['c'].'('.$gamearr['g']['ad']['q'].')';
	$type2="../img/techs/".$gamearr['g']['rd']['o'][$i]['s']['d']['t'].".png\" title=\"".mb_convert_encoding($data->GetItemName($gamearr['g']['rd']['o'][$i]['s']['d']['t']),'cp1251','utf-8')."\"";
	$cargo2="Часть ".($gamearr['g']['rd']['o'][$i]['s']['d']['p']+1);
	$bar2="b";
	$color2="#006699";
	$offers.='<div id="r'.$gamearr['g']['rd']['o'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td align="center" width=12%><font color="'.$color.'"><b>'.$cargo.'</b></font></td><td width="30" align="center"><img src="'.$type.'" width="30" height="30" /></td><td width=60 align="center">обмениваем на</td><td align="center" width=12%><font color="'.$color2.'"><b>'.$cargo2.'</b></font></td><td width="30" align="center"><img src="'.$type2.'" width="30" height="30" /></td><td width=60 align="center">'.$num.'</td><td width="30" align="center"><img src="../img/Del.png" width="30" height="30"  title="Удалить" id="" onclick="remoffer('.$gamearr['g']['rd']['o'][$i]['i'].');" /></td></tr></table></div>';
	
	}
	
	$db->set_alert_info(_PREF."".$_GET['uid'],$alert[3],$alert[0],$alert[1],$alert[2],$alert[5]);
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
		<script src="../js/defines.js"></script>

		
		
	</head>
	<body>
<? include "header.php"; ?>
<div class="frame" style=" width:1050px; margin:10px;">


<div class="header">
<div class="hleft"></div>
<div class="hright"></div>
<div class="hmainfull"><div>Рынок</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 40px 5px 40px;">	

<?php

	$db->close_connection();
	
	echo $accname.'<br /><br />';
	
	
	
	echo '<fieldset><legend>Ресурсы</legend><div id="build">'.$build.'</div></fieldset><br />';
	echo '<fieldset><legend>Доставка ресурсов</legend><div id="tomeres">'.$tomeres.'</div></fieldset><br />';
	echo '<fieldset><legend>Доставка '._T7.'</legend><div id="tomedr" >'.$tomedr.'</div></fieldset><br />';	
	echo '<fieldset><legend>Караваны в пути</legend><div id="from">'.$fromres.''.$fromdr.''.$back.'</div></fieldset><br />';
	echo '<fieldset><legend>Караваны '._T8.'</legend><div id="offers">'.$offers.'</div></fieldset><br />';
	echo '<fieldset><legend>Посольства</legend><div id="embs">'.$embs.'</div></fieldset><br />';
	
	
	echo '<fieldset><legend>Предложения</legend>&nbsp;&nbsp;&nbsp;Меняю: от <select size="1" name="qfr" id="qfr"><option value="0">0</option><option value="500">500</option><option value="1000">1000</option><option value="5000">5000</option><option value="10000">10000</option><option value="20000">20000</option><option value="30000">30000</option><option value="40000">40000</option><option value="50000">50000</option></select>';
	echo ' до <select size="1" name="qfr2" id="qfr2"><option value="0">0</option><option value="500">500</option><option value="1000">1000</option><option value="5000">5000</option><option value="10000">10000</option><option value="20000">20000</option><option value="30000">30000</option><option value="40000">40000</option><option value="50000">50000</option></select>  &nbsp;<img src="../img/gold.png" width="15" height="15" /><img src="../img/steel.png" width="15" height="15" /><img src="../img/meat.png" width="15" height="15" /><input type="radio" name="res3" value="5" checked="checked"></input> &nbsp;<img src="../img/gold.png" width="15" height="15" /><input type="radio" name="res3" value="1"></input>  &nbsp;<img src="../img/steel.png" width="15" height="15" /><input type="radio" name="res3" value="2"></input>';
	echo '&nbsp;<img src="../img/meat.png" width="15" height="15" /><input type="radio" name="res3" value="3"></input>&nbsp;&nbsp; на&nbsp;&nbsp;'; 
	echo ' &nbsp;<img src="../img/gold.png" width="15" height="15" /><img src="../img/steel.png" width="15" height="15" /><img src="../img/meat.png" width="15" height="15" /><input type="radio" name="res4" value="5" checked="checked"></input> &nbsp;<img src="../img/gold.png" width="15" height="15" /><input type="radio" name="res4" value="1"></input> ';
	echo '&nbsp;<img src="../img/steel.png" width="15" height="15" /><input type="radio" name="res4" value="2"></input>  &nbsp;<img src="../img/meat.png" width="15" height="15" /><input type="radio" name="res4" value="3"></input>';
	echo '&nbsp;&nbsp;Друзья&nbsp;<input type="checkbox" name="frnd" id="frnd" ></input>&nbsp;&nbsp;<button name="offs" id="ofs" onclick="getoffers();">Искать</button></fieldset><br /><div id="find"></div>';
	
	
	echo '<input type=hidden id="toGet" value="..'.getenv("SCRIPT_NAME").'?uid='.$_GET['uid'].'" />';
	echo '<input type=hidden id="toRev" value="'.$gamearr['g']['r'].'" />';
	echo '<input type=hidden id="Xcoord" value="'.$gamearr['g']['map']['x'].'" />';	
	echo '<input type=hidden id="Ycoord" value="'.$gamearr['g']['map']['y'].'" />';
	echo '<input type=hidden id="limc" value="'.($freecars*$gamearr['g']['ad']['c']).'" />';
	//echo '<input type=hidden id="toBuild" value="'.$_GET['b'].'" />';
	}
	
	//echo var_dump($dr_learn);		
	
	
	
	
}
else die('Давай до свидания!');
?>
</div>
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>

<?php echo '<input type="hidden" id="t0" value='.(microtime(true)*1000).' />' ?>
  <script>
var reboot=0;

  var nowdate = new Date();
nowts = nowdate.valueOf();
  var LS = nowts - $('#t0').val();	
  
  //alert(LS);
  setInterval(function(){NYT()},1000);

function NYT() { 
		var $inputs = $('.timer');
		var nowdate = new Date();
		nowts = nowdate.valueOf();
		$inputs.each(function() 
			{
			numm=$(this).attr("ar");
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
				window.location=$('#toGet').val();
				reboot=1;
				}
				e=Math.min(e,100);
			$img='<img src="../img/bars/b'+col+'.png" height="5" width="'+e+'%" align="'+tl+'" />';
			$('#l'+dest+numm).html($img);	
			$(this).html(str);
			});

	};

	
function remoffer(numb)
{
var iii=$('#toGet').val().split('=',2);
if(parseInt(iii[1])>0)
{
var url = 'request.php?uid='+iii[1]+'&onum='+numb+'&rev='+$('#toRev').val()+'&meth=remoffer';
				$.get(url, function(data)
				{							
					if (data=="0")
					{	
						alert("Ошибка удаления");
					}
					else
					{ 
						alert('Предложение удалено');
						window.location=$('#toGet').val();
					}
				});
}
};

function newoffer(capacity)
{
//alert(capacity);
var ttx= '<br />&nbsp;&nbsp;&nbsp;Предлагаю: <input type="text" name="resq" id="resq" size=6 value="0"></input> &nbsp;<img src="../img/gold.png" width="15" height="15" /><input type="radio" checked="checked" name="res" value="u"></input>  &nbsp;<img src="../img/steel.png" width="15" height="15" /><input type="radio" name="res" value="t"></input>  &nbsp;<img src="../img/meat.png" width="15" height="15" /><input type="radio" name="res" value="m"></input>&nbsp;&nbsp; на&nbsp;&nbsp; <input type="text" name="resq2" id="resq2" size=6 value="0"></input>  &nbsp;<img src="../img/gold.png" width="15" height="15" /><input type="radio" name="res2" value="u"></input>  &nbsp;<img src="../img/steel.png" width="15" height="15" /><input type="radio" checked="checked" name="res2" value="t"></input>  &nbsp;<img src="../img/meat.png" width="15" height="15" /><input type="radio" name="res2" value="m"></input>';
ttx+='&nbsp;&nbsp;&nbsp;<button name="resadding" id="resadding" onclick="resadd('+ capacity +');">Создать</button>';
ttx+='&nbsp;&nbsp;<button name="dontresadding" id="dontresadding" onclick="dontresadd();">Отмена</button>';
document.getElementById("addoff").innerHTML =ttx;
};	

function resadd(capacity)
{
var radios = document.getElementsByName("res");
var selectedValue1;
for (var i = 0; i < radios.length; i++) {
    if (radios[i].checked)
    {
        selectedValue1 = radios[i].value;
        break;
    }
}
var radios2 = document.getElementsByName("res2");
var selectedValue2;
for (var i = 0; i < radios2.length; i++) {
    if (radios2[i].checked)
    {
        selectedValue2 = radios2[i].value;
        break;
    }
}

if(isNaN(document.getElementById("resq").value) || isNaN(document.getElementById("resq2").value) || selectedValue1==selectedValue2 || 
parseInt(document.getElementById("gameu").innerHTML)<document.getElementById("resq").value && selectedValue1=='u' ||
parseInt(document.getElementById("gamet").innerHTML)<document.getElementById("resq").value && selectedValue1=='t' ||
parseInt(document.getElementById("gamem").innerHTML)<document.getElementById("resq").value && selectedValue1=='m' ||
document.getElementById("resq").value<document.getElementById("resq2").value/2 || 
document.getElementById("resq").value>document.getElementById("resq2").value*2 ||
document.getElementById("resq2").value>maxcapacity || document.getElementById("resq").value==0 || document.getElementById("resq2").value==0
) alert("Неверные параметры");
else
{
var iii=$('#toGet').val().split('=',2);
if(parseInt(iii[1])>0)
{
var url = 'request.php?uid='+iii[1]+'&r1='+selectedValue1+'&r2='+selectedValue2+'&q1='+document.getElementById("resq").value+'&q2='+document.getElementById("resq2").value+'&rev='+$('#toRev').val()+'&meth=addoffer';
				$.get(url, function(data)
				{							
					if (data=="0")
					{	
						alert("Ошибка создания");
					}
					else
					{ 
						alert('Предложение создано');
						window.location=$('#toGet').val();
					}
				});
}
}
};

function dontresadd()
{
document.getElementById("addoff").innerHTML ="";
};

function dontconf()
			{  
			document.getElementById("addrule").innerHTML = '<button name="doaddd" id="doadd" onclick="add();">Добавить союзника</button>';

			};	

function getoffers()
{
var radios3 = document.getElementsByName("res3");
var selectedValue3;
for (var i = 0; i < radios3.length; i++) {
    if (radios3[i].checked)
    {
        selectedValue3 = radios3[i].value;
        break;
    }
}
var radios4 = document.getElementsByName("res4");
var selectedValue3;
for (var i = 0; i < radios4.length; i++) {
    if (radios4[i].checked)
    {
        selectedValue4 = radios4[i].value;
        break;
    }
}
var xxx=0;
if(parseInt(document.getElementById("qfr").value)<parseInt(document.getElementById("qfr2").value)) xxx=document.getElementById("qfr2").value;
if(parseInt(selectedValue3)==parseInt(selectedValue4) && parseInt(selectedValue4)!=5) alert('Ошибка параметров запроса');
var iii=$('#toGet').val().split('=',2);
if(parseInt(iii[1])>0 && (parseInt(selectedValue3)!=parseInt(selectedValue4) || parseInt(selectedValue4)==5))
{
var ffr=0;
if(document.getElementById("frnd").checked) ffr=1;
var url = 'request.php?uid='+iii[1]+'&qfr='+document.getElementById("qfr").value+'&qto='+xxx+'&rto='+selectedValue4+'&rfr='+selectedValue3+'&frnd='+ffr+'&meth=getoffers';
				$.get(url, function(data)
				{							
					if (data=="[[],[]]")
					{	
						document.getElementById("find").innerHTML = 'Ничего не найдено';
					}
					else
					{ 
						var dataar=$.parseJSON(data);
						var ttt='';
						
						for(var $i=0;$i<dataar[0].length;$i++)
						{
						var flag=true;
						var col="#fefefe";
						var id=0;
						for(var $j=0;$j<dataar[1].length;$j++)
						{
						if(dataar[0][$i].u==dataar[1][$j].i)
						{
						var rim1='';
						var rim2='';
						var tp1='t';
						var tp2='m';
						var color1='';
						var color2='';
						if(parseInt(dataar[0][$i].o.r.t)>0)  
						{
						rim1="../img/steel.png";
						tp1='t';
						color1="orange";
						}
						if(parseInt(dataar[0][$i].o.r.m)>0)  
						{
						rim1="../img/meat.png";
						tp1='m';
						color1="#00ccff";
						}
						if(parseInt(dataar[0][$i].o.r.u)>0)  
						{
						rim1="../img/gold.png";
						tp1='u';
						color1="#009933";
						}
						if(parseInt(dataar[0][$i].s.r.t)>0)  
						{
						if(parseInt(dataar[0][$i].s.r.t)>parseInt(document.getElementById("gamet").value) || parseInt(dataar[0][$i].s.r.t)>parseInt(document.getElementById("limc").value)) flag=false;
						rim2="../img/steel.png";
						tp2='t';
						color2="orange";
						}
						if(parseInt(dataar[0][$i].s.r.m)>0)  
						{
						if(parseInt(dataar[0][$i].s.r.m)>parseInt(document.getElementById("gamem").value) || parseInt(dataar[0][$i].s.r.m)>parseInt(document.getElementById("limc").value)) flag=false;
						rim2="../img/meat.png";
						tp2='m';
						color2="#00ccff";
						}
						if(parseInt(dataar[0][$i].s.r.u)>0)  
						{
						if(parseInt(dataar[0][$i].s.r.u)>parseInt(document.getElementById("gameu").value) || parseInt(dataar[0][$i].s.r.u)>parseInt(document.getElementById("limc").value)) flag=false;
						rim2="../img/gold.png";
						tp2='u';
						color2="#009933";
						}
						
						var distt=Math.ceil(Math.sqrt((parseInt(document.getElementById("Xcoord").value)-parseInt(dataar[1][$j].m.x))*(parseInt(document.getElementById("Xcoord").value)-parseInt(dataar[1][$j].m.x))+(parseInt(document.getElementById("Ycoord").value)-parseInt(dataar[1][$j].m.y))*(parseInt(document.getElementById("Ycoord").value)-parseInt(dataar[1][$j].m.y))));
						distt/=parseFloat(dataar[0][$i].o.s);
						distt*=60;
						if(ffr==1) distt/=24;
						
						var h=Math.floor(distt/3600);
						if(h<10) {h='0'+h;}
						distt=Math.ceil(distt)-h*3600;
						var m=Math.floor(distt/60);
						if(m<10) {m='0'+m;}
						distt=distt-m*60;
						if(distt<10) {distt='0'+distt;}
						str=h+':'+m+':'+distt;
						
						if(parseInt(dataar[1][$j].al)==1) col="#009933";
						
						
						ttt+='<div id="onmb'+dataar[0][$i].i+'"><table align="center" style="width: 98%; color:'+col+'; font-size: 1em" border="1"><tr><td width="30"  height="30"align="center">';
						ttt+='<img src="'+dataar[1][$j].p+'" width="30" height="30" /></td><td width=22%>&nbsp;'+dataar[1][$j].n+'</td><td width=80 align="center"> '+dataar[1][$j].m.x+ ':'+dataar[1][$j].m.y+'</td><td width=40 align="center">&nbsp;'+str+'</td>';
						ttt+='<td width=30 align="center"><img src="'+rim1+'" width="30" height="30" /></td><td width=60 align="center"><font color="'+color1+'">'+(parseInt(dataar[0][$i].o.r.t)+parseInt(dataar[0][$i].o.r.u)+parseInt(dataar[0][$i].o.r.m))+'</font></td>';
						ttt+='<td width=30 align="center"> => </td><td width="30" align="center"><img src="'+rim2+'" width="30" height="30" /></td><td width=60 align="center"><font color="'+color2+'">'+(parseInt(dataar[0][$i].s.r.t)+parseInt(dataar[0][$i].s.r.u)+parseInt(dataar[0][$i].s.r.m))+'</font></td>';
						ttt+='<td width="30" align="center">';
						if(flag) ttt+='<img src="../img/orders/ord11.png" width="30" height="30"  title="Принять" id="" onclick="takeoffer('+iii[1]+','+dataar[0][$i].u+',\''+tp1+'\',\''+tp2+'\',';
						if(flag) ttt+=(parseInt(dataar[0][$i].o.r.u)+parseInt(dataar[0][$i].o.r.t)+parseInt(dataar[0][$i].o.r.m))+','+(parseInt(dataar[0][$i].s.r.u)+parseInt(dataar[0][$i].s.r.t)+parseInt(dataar[0][$i].s.r.m))+',';
						if(flag) ttt+=dataar[0][$i].t+','+dataar[0][$i].i+',\''+dataar[0][$i].o.s+'\','+dataar[0][$i].o.c+');" />';
						ttt+='</td></tr></table></div>';
						break;
						}
						}
						}
						document.getElementById("find").innerHTML = ttt;
					}
				});
}
};

function takeoffer(uid,frid,tp1,tp2,qfr,qto,t0,onm,vfr,cfr)
{
var url = 'request.php?uid='+uid+'&frid='+frid+'&v='+vfr+'&c='+cfr+'&tfr='+tp1+'&tto='+tp2+'&qto='+qto+'&qfr='+qfr+'&t0='+t0+'&on='+onm+'&rev='+$('#toRev').val()+'&meth=takeoffer';
				$.get(url, function(data)
				{							
					if (data=="0")
					{	
						alert("Ошибка");
					}
					else
					{ 
						alert('Предложение принято');
						window.location=$('#toGet').val();
					}
				});
};


function add()
			{  
			//document.getElementById("addrule").innerHTML ='';
			var x = parseInt(prompt("Введите координату аккаунта X:")); 
			var y = parseInt(prompt("Введите координату аккаунта Y:")); 
			//alert(x);
				if((x!=0 || y!=0) && (!isNaN(x) && !isNaN(y)))
				{ var url = 'find.php?x='+x+'&y='+y+'&n=1';
				$.get(url, function(data)
				{		
					if ((data==";")||(data=="0"))
					{	
						alert("Неверно указаны координаты");
						document.getElementById("addrule").innerHTML = '<button name="doaddd" id="doadd" onclick="add();">Добавить союзника</button>';
					}
					else
					{ //alert(data);
						var info = data.split(";",6);
						
						
						texxt ='<fieldset><legend>Добавить союзника</legend><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr>';
						texxt +='<td width="30"  height="30"align="center"><img src="'+info[2]+'" width=30 height=30 />';
						texxt +='</td><td width=200>&nbsp;'+info[1]+'</td><td width=30 align="center">'+info[3]+'</td><td width=120 align="center">'+info[4]+':'+info[5]+'</td>';
						texxt +='<td width="30" align="center"><button name="nowadding" id="nowaddf" onclick="invally('+ info[0] +');">Добавить</button></td><td width="30" align="center">';
						texxt +='<button name="dontcconfirm" id="dontconf" onclick="dontconf();">Отмена</button></td></tr></table>';	
						document.getElementById("addrule").innerHTML=texxt;
					}
				});
				}
					else 
					{
					alert("Неверно указаны координаты");
					document.getElementById("addrule").innerHTML = '<button name="doaddd" id="doadd" onclick="add();">Добавить союзника</button>';
					}
				
			};

function addally(ally)
{
var iii=$('#toGet').val().split('=',2);
if(parseInt(iii[1])>0)
{
var url = 'request.php?uid='+iii[1]+'&anum='+ally+'&rev='+$('#toRev').val()+'&meth=addally';
				$.get(url, function(data)
				{							
					if (data=="0")
					{	
						alert("Ошибка добавления");
						document.getElementById("addrule").innerHTML = '<button name="doaddd" id="doadd" onclick="add();">Добавить союзника</button>';
					}
					else
					{ 
						alert('Союзник добавлен');
						window.location=$('#toGet').val();
					}
				});
}
};

function invally(ally)
{
var iii=$('#toGet').val().split('=',2);
if(parseInt(iii[1])>0)
{
var url = 'request.php?uid='+iii[1]+'&anum='+ally+'&rev='+$('#toRev').val()+'&meth=invally';
				$.get(url, function(data)
				{							
					if (data=="0")
					{	
						alert("Ошибка приглашения");
						document.getElementById("addrule").innerHTML = '<button name="doaddd" id="doadd" onclick="add();">Добавить союзника</button>';
					}
					else
					{ 
						alert('Союзник приглашен');
						window.location=$('#toGet').val();
					}
				});
}
};

function remally(ally)
{
var iii=$('#toGet').val().split('=',2);
if(parseInt(iii[1])>0)
{
var url = 'request.php?uid='+iii[1]+'&anum='+ally+'&rev='+$('#toRev').val()+'&meth=remally';
				$.get(url, function(data)
				{							
					if (data=="0")
					{	
						alert("Ошибка удаления");
						document.getElementById("addrule").innerHTML = '<button name="doaddd" id="doadd" onclick="add();">Добавить союзника</button>';
					}
					else
					{ 
						alert('Союзник удален');
						window.location=$('#toGet').val();
					}
				});
}
};


  
  
</script>
</body>
</html>