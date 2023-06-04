<?php
// ver 1.1

if (isset($_POST['jsonData']))
{	
	session_start();
	require_once("../auto/db_query.php");
	require_once("../auto/TDApi.php");
	//require_once("../auto/TDdata.php");
	$json = str_replace('\"','"',$_POST['jsonData']);
	$data = json_decode($json,true);
	//echo $json;
	//$data['cargo']['reverse']=0;
	@sleep($data['cargo']['delay']);
		
	if($_SESSION['soc_id'] && $data['cargo']['type']!='' && $data['cargo']['weight']>0 && $data['sender']['vkid'] && $data['sender']['auth'] && (($data['cargo']['reverse']>0) && $data['destination']['vkid'] && $data['destination']['auth'] || $data['cargo']['reverse']==0))
	{
	$revid=0;
	$fl=0;
	$al=0;
	if($data['cargo']['reverse']>0)
	{
	@sleep(16);
	$db=new db_query(0,$data['destination']['vkid'],$_SESSION['soc_id']);
	$me=new TDApi($data['destination']['vkid'],$data['destination']['auth'],$db->friends,$db->v,$db->referer,$db->proxy,$db->proxypwd,$db->origin,$data['destination']['alert_s']);
	$tres=$me->SendRes($data['destination']['alert_q'],$data['destination']['alert_r'],microtime(true)*1000,$data['destination']['alert_u'],$data['destination']['sid'],$data['sender']['sid'],$data['cargo']['reverse'],'m');
	$res=json_decode($tres,true);
	if($res['o'])
	{
	$revid=$res['o']['i'];	
	$data['destination']['alert_r']=$res['v'];
	@sleep(9);
	}
	if($res['g'])
	{
	$obj=array_pop($res['g']['wd']['u']);
	$revid=$obj['i'];	
	$data['destination']['alert_r']=$res['g']['r'];
	@sleep(9);
	}
	if($res['m'] || $res['cerror'])
	{
	die('0');
	}
	$db->close_connection();
	}

	if(!($data['cargo']['reverse']>0 && $revid==0))
	{
	$db=new db_query(0,$data['sender']['vkid'],$_SESSION['soc_id']);
	$me=new TDApi($data['sender']['vkid'],$data['sender']['auth'],$db->friends,$db->v,$db->referer,$db->proxy,$db->proxypwd,$db->origin,$data['sender']['alert_s']);
	$cnt=0;
	while($cnt<1)
	{
	$tres=$me->SendRes24($data['sender']['alert_q'],$data['sender']['alert_r'],microtime(true)*1000,$data['sender']['alert_u'],$data['sender']['sid'],$data['destination']['sid'],$data['cargo']['weight'],$data['cargo']['type']);
	$res=json_decode($tres,true);
	//echo $tres;
	if($res['o'] || $res['g'])
	{
	$db->options_force_set($data['sender']['vkid'],max(1,$db->options_force_get($data['sender']['vkid'])));
	$db->options_force_set($data['destination']['vkid'],max(2,$db->options_force_get($data['destination']['vkid'])));
	$oarr=($res['o'])? $res['o'] : array_pop($res['g']['wd']['u']);	
	$db->update_alert_info($data['sender']['vkid'],3,$oarr['pd']['c']);
	$db->update_alert_info($data['sender']['vkid'],4,-$oarr['pd']['c']);
	if($oarr['sf']['a']-$oarr['sf']['d']>3600000) $al=1;
	if($revid==0 && !$al) die('1');
	if($revid==0 && $al) die('5');
	$fl=1;
	}
	if($res['cerror'])
	{
	$cnt++;
	}
	if($res['m'])
	{
	$cnt+=5;
	}
	if(!($res['o'] || $res['g'] || $res['cerror'] || $res['m'])) $al=1;
	}
	if($revid==0 && !$al) die('0');
	if($revid==0 && $al) die('5');
	
	$db->close_connection();
	}
	
	
	
	if($data['cargo']['reverse']>0 && $revid>0)
	{
	$db=new db_query(0,$data['destination']['vkid'],$_SESSION['soc_id']);
	$me=new TDApi($data['destination']['vkid'],$data['destination']['auth'],$db->friends,$db->v,$db->referer,$db->proxy,$db->proxypwd,$db->origin,$data['destination']['alert_s']);
	$cnt=0;
	while($cnt<2)
	{
	$tres=$me->CancelUnit($data['destination']['alert_q'],$data['destination']['alert_r'],microtime(true)*1000,$data['destination']['alert_u'],$revid);
	$res=json_decode($tres,true);
	if(!$res['m'] && !$res['cerror'])
	{
	
	if($al) die('5');
	if($fl) die('1');
	if(!$fl) die('0');
	}
	if($res['cerror'])
	{
	$cnt++;
	}
	if($res['m'])
	{
	$cnt+=5;
	}
	}

	if($fl) die('2');
	if(!$fl) die('3');
		
	$db->close_connection();
	}
	}
	else echo 4;	
}
?>