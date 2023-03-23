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
	
	if($_GET['b']>0)
	{
	$quan=100000;
	$quan=(ceil($data->GetObjLG($units[$_GET['b']]["id"],1))>0)? floor(min(floor($gamearr['g']['a']['r']['g'])/ceil($data->GetObjLG($units[$_GET['b']]["id"],1)),$quan)):$quan;
	$quan=(ceil($data->GetObjLGI($units[$_GET['b']]["id"],1))>0)? floor(min(floor($gamearr['g']['a']['r']['c'])/ceil($data->GetObjLGI($units[$_GET['b']]["id"],1)),$quan)):$quan;
	$quan=(ceil($data->GetObjLU($units[$_GET['b']]["id"],1))>0)? floor(min(floor($gamearr['g']['a']['r']['u'])/ceil($data->GetObjLU($units[$_GET['b']]["id"],1)),$quan)):$quan;
	$quan=(ceil($data->GetObjLT($units[$_GET['b']]["id"],1))>0)? floor(min(floor($gamearr['g']['a']['r']['t'])/ceil($data->GetObjLT($units[$_GET['b']]["id"],1)),$quan)):$quan;
	$quan=(ceil($data->GetObjLM($units[$_GET['b']]["id"],1))>0)? floor(min(floor($gamearr['g']['a']['r']['m'])/ceil($data->GetObjLM($units[$_GET['b']]["id"],1)),$quan)):$quan;
	if($quan>0)
	{
	$munb=($_GET['n']==0)? $quan:min($quan,$_GET['n']);
	$gameb=$me->BuyUnit($alert[2],$alert[1],microtime(true)*1000,$alert[0],$units[$_GET['b']]["id"],$munb);
	$gamearrb=json_decode($gameb,true);
	if($gamearrb['m'] && $gamearrb['c']==103) 
	{
	header("Location:..".getenv("SCRIPT_NAME").'?uid='.$_GET['uid'].'&e=1');
	die();
	}
	if(!$gamearrb['m'] && !$gamearrb['cerror'])
	{
	if($_GET['n']==0) 
	{
	header("Location:..".getenv("SCRIPT_NAME").'?'.getenv("QUERY_STRING"));
	die();
	}
	if($_GET['n']>0) $_GET['n']-=$munb;
	$alert[1]++;
	$gamearr['g']['a']['r']['u']-=$gamearrb['o']['p']['u'];
	$gamearr['g']['a']['r']['t']-=$gamearrb['o']['p']['t'];
	$gamearr['g']['a']['r']['m']-=$gamearrb['o']['p']['m'];
	$gamearr['g']['a']['r']['g']-=$gamearrb['o']['p']['g'];
	$gamearr['g']['a']['r']['c']-=$gamearrb['o']['p']['c'];
	$units[$_GET['b']]["build"]+=$munb;
	}
	else 
	{
	header("Location:..".getenv("SCRIPT_NAME").'?'.getenv("QUERY_STRING"));	
	die();
	}
	}
	}
	
	
	
	$build='<table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td width="30" align="center"><img src="../img/gold.png" width="30" height="30" /></td><td width=20% align="center"><font color="#009933"><b>'.floor($gamearr['g']['a']['r']['u']).'</b></font></td><td width="30" align="center"><img src="../img/steel.png" width="30" height="30" /></td><td width=20% align="center"><font color="orange"><b>'.floor($gamearr['g']['a']['r']['t']).'</b></font></td><td width="30" align="center"><img src="../img/meat.png" width="30" height="30" /></td><td width=20% align="center"><font color="#00ccff"><b>'.floor($gamearr['g']['a']['r']['m']).'</b></font></td><td width="30" align="center"><img src="../img/sap.png" width="30" height="30" /></td><td width=20% align="center"><font color="#ff66ff"><b>'.floor($gamearr['g']['a']['r']['g']).'</b></font></td><td width="30" align="center"><img src="../img/bio.png" width="30" height="30" /></td><td width=20% align="center"><font color="#ffff66"><b>'.floor($gamearr['g']['a']['r']['c']).'</b></font></td></tr></table>';
	
		for($j=0;$j<count($units);$j++)
	{
	for($i=0;$i<count($gamearr['g']['td']['f']['o']);$i++)
	{
	if($gamearr['g']['td']['f']['o'][$i]['k']==$units[$j]["id"]) $units[$j]["build"]+=$gamearr['g']['td']['f']['o'][$i]['p'];
	}
	}
	
	$build.='<div id="build" align="center"><br />';
	$build.=($_GET['b']>0)? '<img src="'.$units[$_GET['b']]["src"].'"  width="25" height="25" />':'';
	$build.='<select size="1" name="units" id="units" onChange="javascript: build(this);">';
	$build.=($_GET['b']>0)? '<option value="'.$_GET['b'].'">'.$units[$_GET['b']]["name"].'</option>':'<option value="0">Выберите тип юнитов</option>';
	$build.='<option value="0">Отключить автопостройку</option>';
	for($i=1;$i<=count($units);$i++)
	{
	if($i!=$_GET['b'])
	{
	$build.='<option value="'.$i.'">'.$units[$i]["name"].'</option>';
	}
	}							
	$build.='</select>&nbsp;Лимит:&nbsp;<input type="text" size="5" id="n" value="'.$_GET['n'].'" />';
	$build.=($_GET['e']==1)? '<br /><b>Вы не можете построить юнитов этого типа: не хватает некоторых зданий или исследований</b>':'';
	$build.=($_GET['b']>0)?'&nbsp;<img src="../img/gold.png" width="20" height="20" />&nbsp;'.ceil($data->GetObjLU($units[$_GET['b']]["id"],1)).'&nbsp;<img src="../img/steel.png" width="20" height="20" />&nbsp;'.ceil($data->GetObjLT($units[$_GET['b']]["id"],1)).'&nbsp;<img src="../img/meat.png" width="20" height="20" />&nbsp;'.ceil($data->GetObjLM($units[$_GET['b']]["id"],1)).'&nbsp;<img src="../img/sap.png" width="20" height="20" />&nbsp;'.ceil($data->GetObjLG($units[$_GET['b']]["id"],1)).'&nbsp;<img src="../img/bio.png" width="20" height="20" />&nbsp;'.ceil($data->GetObjLGI($units[$_GET['b']]["id"],1)).'</div>':'</div>';
	
	$build.='<br />';
	for($i=1;$i<=count($units);$i++)
	{
	if($units[$i]["build"]>0)
	{
	$build.='<img src="'.$units[$i]["src"].'"  width="20" height="20" />&nbsp;'.$units[$i]["name"].'&nbsp;-&nbsp;'.$units[$i]["build"].'<br />';
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
	
	$offers.='<div id="r'.$gamearr['g']['rd']['o'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td align="center" width=12%><font color="'.$color.'"><b>'.$cargo.'</b></font></td><td width="30" align="center"><img src="'.$type.'" width="30" height="30" /></td><td width=60 align="center">обмениваем на</td><td align="center" width=12%><font color="'.$color2.'"><b>'.$cargo2.'</b></font></td><td width="30" align="center"><img src="'.$type2.'" width="30" height="30" /></td><td width=60 align="center">'.$num.'</td></tr></table></div>';
	
	
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
	$offers.='<div id="r'.$gamearr['g']['rd']['o'][$i]['i'].'"><table align="center" style="width: 98%; color:#fefefe; font-size: 1em" border="1"><tr><td align="center" width=12%><font color="'.$color.'"><b>'.$cargo.'</b></font></td><td width="30" align="center"><img src="'.$type.'" width="30" height="30" /></td><td width=60 align="center">обмениваем на</td><td align="center" width=12%><font color="'.$color2.'"><b>'.$cargo2.'</b></font></td><td width="30" align="center"><img src="'.$type2.'" width="30" height="30" /></td><td width=60 align="center">'.$num.'</td></tr></table></div>';
	
	}
	}
	$db->set_alert_info(_PREF."".$_GET['uid'],$alert[3],$alert[0],$alert[1],$alert[2],$alert[5]);
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
<div class="hmainfull"><div>Караваны</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 40px 5px 40px;">	

<?php

	$db->close_connection();
	
	echo $accname.'<br /><br />';
	
	
	
	echo '<fieldset><legend>Автопостройка онлайн</legend><div id="build">'.$build.'</div></fieldset><br />';
	echo '<fieldset><legend>Доставка ресурсов</legend><div id="tomeres">'.$tomeres.'</div></fieldset><br />';
	echo '<fieldset><legend>Доставка '._T7.'</legend><div id="tomedr" >'.$tomedr.'</div></fieldset><br />';	
	echo '<fieldset><legend>Караваны в пути</legend><div id="from">'.$fromres.''.$fromdr.''.$back.'</div></fieldset><br />';
	echo '<fieldset><legend>Караваны '._T8.'</legend><div id="offers">'.$offers.'</div></fieldset><br />';
	echo '<input type=hidden id="toGet" value="..'.getenv("SCRIPT_NAME").'?uid='.$_GET['uid'].'" />';
	echo '<input type=hidden id="toBuild" value="'.$_GET['b'].'" />';
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
				window.location=$('#toGet').val()+"&b="+$('#toBuild').val()+"&n="+$('#n').val();
				reboot=1;
				}
				e=Math.min(e,100);
			$img='<img src="../img/bars/b'+col+'.png" height="5" width="'+e+'%" align="'+tl+'" />';
			$('#l'+dest+numm).html($img);	
			$(this).html(str);
			});

	};
	
 function build(unit) 
  { 
				//alert($('#toGet').val()+"&b="+unit.value+"&n="+$('#n').val());
				window.location=$('#toGet').val()+"&b="+unit.value+"&n="+$('#n').val();
				reboot=1;
		
  } 

  
  
  

  
  
</script>
</body>
</html>