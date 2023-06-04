<?php
// ver 0.1

if (isset($_POST['GetCost']))
{	
	session_start();
	//require_once("../auto/db_query.php");
	//require_once("../auto/TDApi.php");
	require_once("../auto/TDdata.php");
	$json = str_replace('\"','"',$_POST['GetCost']);
	
	//echo $json;
	$data = json_decode($json,true);
	
	$td=new TDdata();
	$id=$td->GetItemId($data['unitname']);
	echo '{"u":'.$data['unitcount']*$td->GetObjLU($id,1).',"t":'.$data['unitcount']*$td->GetObjLT($id,1).',"m":'.$data['unitcount']*$td->GetObjLM($id,1).',"g":'.$data['unitcount']*$td->GetObjLG($id,1).',"c":'.$data['unitcount']*$td->GetObjLC($id,1).',"q":'.$td->GetQueue($id).'}';
	
}
?>