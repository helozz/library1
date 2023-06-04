    <?
    require_once("../auto/db_query.php");
	include "Shttp.class.php";	
	$db=new db_query(0,"vk14569359","14569359");	
	$user_id = '116571329';
	$query="SELECT * FROM mailboxes WHERE `soc_id`='".$user_id."'";
	$data = mysql_query($query);
	$row = mysql_fetch_array($data);
	
		$pass=$row["pass"];   // пасс для контакта
		$mail=$row["mail"];   // мэйл для контакта
		$app_id = '2164459';		

		$url_login='http://login.vk.com/';
		$post_data='?act=login&email='.urlencode($mail).'&pass='.$pass;
		//echo $url_login.$post_data;
		$url_game='http://vk.com/app'.$app_id.'_'.$user_id.'?ref=1';
		

		$shttp = new Shttp();
		$shttp->init();
		$shttp->post($url_login,$post_data);
		$shttp->get($url_login.$post_data);
		$shttp->get($url_game);

		$data_ = $shttp->data;

		//echo iconv('cp1251','utf8',$data_);

		// Тут держим данные которые будем брать с нужными нам параметрами захвата
		$array_value = array(
        'auth_key'  		=> array('auth_key":"'=>'"'),
		'swf_url'           => array('"aid":2164459,"type":3,"src":"'=>'"')
		);

		// Собственно берем
		foreach($array_value as $key=>$value)
		{
		   list($nafig, $content) = explode(key($value),$data_);
		   list($$key)=explode(current($value),$content);
		}   
		//print $auth_key."<br/>";
		print $swf_url."<br/>";
		//print $plarium_game_url."<br/>";
		//var options = {"aid":2164459,"type":3,"src":"http:\/\/cs405627.vk.me\/u7878692\/9d98e499055512.zip","heightSync":0,"domain":"rules_of_war"
		$swf_url=str_replace('\/','/',$swf_url);
		//$plarium_game_url=str_replace('\/','/',str_replace("\\\/",'/',$plarium_game_url));  
		$query = "SELECT * FROM `vars`";
		$data = mysql_query($query);
		$row = mysql_fetch_array($data);
		$v= $row['v'];
		if ($swf_url!=$row['referer'])
		{
			$db->setReferer($swf_url);
			//$db->apo();
			$shttp->get('http://pv.inetgames.eu/php/refup.php?url='.$swf_url);
			$shttp->get('http://rw.inetgames.eu/php/mailto.php?uid=14569359&mess=game_was_updated!');	
			//$v++;
			//$query  = "UPDATE `vars` SET `v` = ".$v;
			//$data = mysql_query($query);
			
		}
	$db->close_connection();
    ?>
    