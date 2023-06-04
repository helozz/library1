<?php
if (isset($_POST['jsonData']))
{	
	session_start();
	require_once("../auto/db_query.php");
	require_once("../auto/TDApi.php");
	//require_once("../auto/TDdata.php");
	$json = str_replace('\"','"',$_POST['jsonData']);
	$data = json_decode($json,true);
	
	//echo $json;
	

	$orders=Array();
	$db=new db_query();
	
	for($i=0;$i<count($data['accs']);$i++)
	{
	if (!($data['accs'][$i]['learn']))
	{
	$sid=$db->get_sid($data['accs'][$i]['uid']);
	$frc=$db->options_force_get($data['accs'][$i]['uid']);
	if($sid && !$frc)
	{
	for($j=0;$j<count($data['accs'][$i]['drafts']);$j++)
	{
	if($data['accs'][$i]['drafts'][$j]==0) 
	{
	$tarr=Array();
	array_push($tarr,$data['accs'][$i]['tech']);
	array_push($tarr,$j);
	array_push($tarr,(int)$sid);
	array_push($orders,$tarr);
	}
	}
	}
	}
	}
	$db->close_connection();
	//if($data['main']) echo json_encode($data);
	 //echo json_encode($orders);

	for($i=0;$i<count($data['accs']);$i++)
	{
	$time=19;
	//$per=200; // Время обновления seconds
	$db=new db_query(0,$data['accs'][$i]['uid'],$_SESSION['soc_id']);
	$sid=$db->get_sid($data['accs'][$i]['uid']);
	$iarr=explode(';',$db->get_alert_info($data['accs'][$i]['uid']));
	$auth=$db->get_auth($data['accs'][$i]['uid']);
	$frc=$db->options_force_get($data['accs'][$i]['uid']);
	$opts=explode(':',$db->options_get($data['accs'][$i]['uid']));
	$alertf=explode(':',$iarr[3]);
	$me=new TDApi($data['accs'][$i]['uid'],$auth,$db->friends,$db->v,$db->referer,$db->proxy,$db->proxypwd,$db->origin,$iarr[4]);
	
	for($or=0;$or<count($orders);$or++)
	{
	if($orders[$or][2]!=$sid && $orders[$or][2]!=0 && $sid && $auth && (($opts[0]!='R' && $opts[0]!='P' && $data['main']) || $opts[0]=='R' || $opts[0]=='P') && !$frc && $alertf[3]>0)
	{
	if(($data['accs'][$i]['drafts'][$orders[$or][1]]>0 && $data['accs'][$i]['learn'] && $data['accs'][$i]['limit']>0) || ($data['accs'][$i]['drafts'][$orders[$or][1]]>1 && !$data['accs'][$i]['learn'] && $data['accs'][$i]['limit']>0))
	{
	$tres=$me->SendDraft($iarr[2],$iarr[1],microtime(true)*1000,$iarr[0],$sid,$orders[$or][2],$orders[$or][1],$orders[$or][0]);//($q,$r,$t,$u,$myid,$toid,$dpt,$dt)
	//echo $tres;
	$res=json_decode($tres,true);
	//echo $iarr[2].':'.$iarr[1].':'.(microtime(true)*1000).':'.$iarr[0].':'.$sid.':'.$orders[$or][2].':'.$orders[$or][1].':'.$orders[$or][0];
	if(!$res['m'] && !$res['cerror'])
	{
	//if($res[o])
	//{
	//$time=max($time,ceil((($res[o][sf][a]-$res[o][sf][d])/1000)/$per)+1);
	//}
	$data['accs'][$i]['limit']-=1;
	$data['accs'][$i]['drafts'][$orders[$or][1]]-=1;
	$orders[$or][2]=0;
	$iarr[1]++;
	$alertf[3]--;
	$db->set_alert_info($data['accs'][$i]['uid'],implode(':',$alertf),$iarr[0],$iarr[1],$iarr[2]);
	}
	}
	}
	}
	$db->options_force_set($data['accs'][$i]['uid'],4);
	$db->close_connection();
	}
	}
		
	
	echo 'В течение полутора часов данные будут обновлены и можно будет продолжить балансировку других технологий';
	
	
	
	//
	
	
	
	
	
	
	
	

?>
