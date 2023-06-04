<? 	
	session_start();
	include("../auto/db_query.php");
	header("Content-type: text/plain; charset=windows-1251");
	header("Cache-Control: no-store, no-cache, must-revalidate");
	header("Cache-Control: post-check=0, pre-check=0", false);	
	if (isset($_GET['uid']))
	{
		$db=new db_query(0,"vk".$_SESSION['r_log'],$_SESSION['r_log']);
		$uid = $_GET['uid'];
		$query = 'SELECT * FROM acl WHERE `vkid`="'.$uid.'"';
		$data = mysql_query($query);
		$row = mysql_fetch_array($data);
		$m = $row['mailalert'];
		$mail_to = $row['mail'];
		if ($m==1)
		{
			
			$letter = $_GET['mess'];
			$title = "RW - Alert";
			$verify = mail($mail_to,$title,$letter,"Content-type:text/plain; charset = windows-1251\r\nFrom:admin@inetgames.eu");
						   if(!$verify) {$err = 'Письмо не удалось отправить. Пожалуйста свяжитесь с администратором сайта';}
						   else 
						   {
							$err = 'Письмо было успешно отправлено!';
						   }
			echo $err;			   
		}
		$db->close_connection();	
	}			
?>					   