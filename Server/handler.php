<?php
include_once 'db_query.php';
header('Content-Type: application/octet-stream');

$db = new db_query();


switch($_POST['method'])
{
	case 'login': echo $db->add_client(); break;
	case 'push': {
		$postdata = file_get_contents("php://input"); 
		$nm = $_POST['client'].microtime(true)*1000000;
		$handle = fopen(FILEPATH.$nm, "w");
		fwrite($handle, $postdata);
		fclose($handle);
		echo $db->add_post_data($_POST['client'], $_POST['recipient'], $nm);
	}
		break;
	case 'mode1': 
	{
		$res = $db->read_post_data($_POST['client']);
		if($res != 0)
		{
			$db->print_data($res);
		}
		else echo 0;
		break;
	}
	case 'mode2': 
	{	
		$cnt = TIMEOUT;
		for($i = 0; $i<$cnt; $i++)
			{
				$res = $db->read_post_data($_POST['client']);
				if($res != 0)
				{
					$db->print_data($res);
					break;
				}
				else sleep(1);
			}
			echo 0;
		break;
	}
	
	
}

$db->close_connection();

?>