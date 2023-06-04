    <?
    require_once("../auto/db_query.php");
	include "Shttp.class.php";	
	$db=new db_query(0,"vk14569359","14569359");	
	if (isset($_GET["id"]))
	{	
		$userid = $_GET["id"];
	}
	else $userid = '116571329';
	$app_id = '2164459';
	$query="SELECT * FROM mailboxes WHERE `soc_id`='".$userid."'";
	$data = mysql_query($query);
	if ($data)
	{
		$row = mysql_fetch_array($data);
	
		$pass=$row["pass"];   // пасс для контакта
		$mail=$row["mail"];   // мэйл для контакта
		echo $mail;		

		$url_login='http://login.vk.com/';
		$post_data='?act=login&email='.urlencode($mail).'&pass='.$pass;
		//echo $url_login.$post_data;
		$url_game='http://vk.com/app'.$app_id.'_'.$userid.'?ref=1';
		
		$shttp = new Shttp();
		$shttp->init();
		$res = $db->get_proxy("vk".$userid);
		if ($res)
		{
			$ip = explode(';',$res);			
			$proxy = $ip[0];
			$proxypwd = $ip[1];		
			$shttp->set_opt(CURLOPT_HTTPPROXYTUNNEL, TRUE);
			$shttp->set_opt(CURLOPT_PROXY, $proxy);
			//$shttp->set_opt("CURLOPT_PROXYPORT", 7165);
			$shttp->set_opt(CURLOPT_PROXYUSERPWD, $proxypwd);
		}	
		$shttp->post($url_login,$post_data);
		$shttp->get("https://vk.com");
		$data_ = $shttp->data;
		echo iconv('cp1251','utf8',$data_);
		@sleep(3);
		$url_install = 'https://vk.com/rules_of_war?join=1&hash=8e5b27c09e51f21055&sett=7&ref=1&mid=116611089';
		//$shttp->get($url_game);
		//$shttp->get($url_install);
		//$data_ = $shttp->data;
		//echo iconv('cp1251','utf8',$data_);

		// Тут держим данные которые будем брать с нужными нам параметрами захвата
		$array_value = array(
        'auth_key'  		=> array('auth_key":"'=>'"'),
		'user_id'           => array('user_id":'=>','),
		'logout'			=> array('https://login.vk.com/?act=logout&hash='=>'"')
		);

		// Собственно берем
		foreach($array_value as $key=>$value)
		{
		   list($nafig, $content) = explode(key($value),$data_);
		   list($$key)=explode(current($value),$content);
		}
		$shttp->get('https://login.vk.com/?act=logout&hash='.$logout);
		//$data_ = $shttp->data;
		//echo iconv('cp1251','utf8',$data_);
		print $user_id."<br/>";
		print $auth_key."<br/>";
		    
		$query  = "UPDATE `accounts` SET `a_auth`= '".$auth_key."' WHERE `a_soc`='vk".$userid."'";
		//echo $query;		
		$data = mysql_query($query);
		//echo $data;
	}
	else die("No data for this acc");
	$db->close_connection();
    ?>
    