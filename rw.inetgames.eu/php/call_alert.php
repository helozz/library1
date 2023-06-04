<? 
	include("../auto/db_query.php");
	session_start();
	header("Content-type: text/plain; charset=windows-1251");
	header("Cache-Control: no-store, no-cache, must-revalidate");
	header("Cache-Control: post-check=0, pre-check=0", false);
	sleep(2);
	$db=new db_query(0,"vk".$_SESSION['r_log'],$_SESSION['r_log']);
	if (isset($_POST['func']))
	{
		$func = $_POST['func'];
		$uid = $_POST['uid'];
		$lid = $_POST['p'];
		$ld = explode('_', $lid);
		if ($func=="refresh") $r=$db->set_alerted("vk".$uid, $ld[0]);		
	}	
	if (isset($_GET['func']))
	{
		class alert {
		// данные (свойства):
		var $ulog;
		var $uid;
		var $o;
		var $r;
		var $b;
		}
		$func = $_GET['func'];
		if ($func=="NY") 
		{
			$ra = $db->get_alerts();
			$rarray = explode(";",$ra);
			foreach($rarray AS $rarr)
			{
				$r_a= new alert;
				$r_ar= explode(':',$rarr);
				$r_a->ulog = $r_ar[0];
				$r_a->uid = str_replace('vk','',$r_ar[1]);
				$r_a->o = $r_ar[2];
				$r_a->r = $r_ar[3];
				$r_a->b = $r_ar[4];
				$rr[] = $r_a;
			}
			echo json_encode($rr);
		}	
	}
	$db->close_connection();
?>