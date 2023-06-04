<?php
// ver 0.97 work
session_start();
require_once("php/config.php");
require_once("auto/db_query.php");

$g_charset = 'windows-1251';
$uid = $_GET['uid'];
$hash = $_SESSION['hash'];
$calchash = md5(CLIENT_ID.''.$_SESSION['r_log'].''.SECRET);


?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<script>
var httphost='rw.inetgames.eu';
</script>
<script type="text/javascript" src="/js/vkadditional2.js"></script> 
<script type="text/javascript" src="/js/new/loader_nav12493_0.js"></script> 
<script type="text/javascript" src="/js/new/common.js"></script> 
<script type="text/javascript" src="/js/lang0_0.js"></script>
<script type="text/javascript" src="/js/new/apps.js"></script>
<link href="/css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table><tr><td>
<?php
if ($hash == $calchash)
{
	$db=new db_query(0,"vk".$uid,$_SESSION['soc_id']);
	$login = $db->get_login("vk".$uid);	
	$uinfo = $db->get_acc($_SESSION['soc_id'],'','vk'.$login);
	$accname = iconv('utf8','cp1251',$uinfo);
	echo $accname;
	$db->close_connection();	
	$db=new db_query(3,"vk".$uid,$login);
	$query  = "SELECT * FROM `vars`";	
	$data = mysql_query($query);	
	$row = mysql_fetch_array($data);
	$swf_url = $row['referer'];
	$query  = "SELECT * FROM `accounts` WHERE `a_soc` = 'vk".$uid."'";	
	$data = mysql_query($query);	
	$row = mysql_fetch_array($data);
	$acc = explode(" ", iconv('utf-8','cp1251',$row['a_n']));
	$accname =$acc[0];
	$accsname = $acc[1];
	$user_photo = $row['a_ava'];
	$AuthKey = $row['a_auth'];	
	$data = $db->options_get("vk".$uid);	
	$opt = explode(':',$data);
	if ($data !="")
	{
			echo '<br><table>';
			echo '<img src="'.$user_photo.'" />';
			echo '<h3>'.$accname.' '.$accsname.'</h3>';	
			$soc_uid=$uid;						
			$save_x =$opt[1]; 
			$save_y =$opt[2];
			$cha2 = ($opt[4]==1)?'checked':'';
			$cha1 = ($opt[5]==1)?'checked':'';
			$cha3 = ($opt[6]==1)?'checked':'';
			//$cha4 = ($opt[12]==1)?'checked':'';
			$ch1 = ($opt[14]==1)?'checked':'';
			$ch2 = ($opt[15]==1)?'checked':'';
			$rb = $opt[7];
			$rs = $opt[8];
			$rt = $opt[9];
			$ru = $opt[10];
			$rq = $opt[11];
			$comment = $opt[16];
			echo '<tr><form action="/php/options.php?uid='.$soc_uid.'" method="POST">';
			echo '<tr><td>Координаты автосейва</td></tr>';					
			echo '<tr><td>';
			echo 'X: <input name="auto_x" type="text"  SIZE=5 value="'.$save_x.'">';
			echo 'Y: <input name="auto_y" type="text"  SIZE=5 value="'.$save_y.'"></td></tr>';												
			echo '<tr><td>Время автостройки:</td><td><select size="1" name="timerefresh1">';
			echo '<option value="2" ';if($rb=="2") echo ' selected'; echo '>30м</option>';
			echo '<option value="4" ';if($rb=="4") echo ' selected'; echo '>60м</option>';
			echo '<option value="8" ';if($rb=="8") echo ' selected'; echo '>2ч</option>';
			echo '<option value="16" ';if($rb=="16") echo ' selected'; echo '>4ч</option>';
			echo '<option value="48" ';if($rb=="48") echo ' selected'; echo '>12ч</option>';
			echo '<option value="96" ';if($rb=="96") echo ' selected'; echo '>24ч</option>';
			echo '</select></td></tr>';
			echo '<tr><td>Время автосейва:</td><td><select size="1" name="timerefresh2">';
			echo '<option value="2" ';if($rs=="2") echo ' selected'; echo '>30м</option>';
			echo '<option value="4" ';if($rs=="4") echo ' selected'; echo '>60м</option>';
			echo '<option value="8" ';if($rs=="8") echo ' selected'; echo '>2ч</option>';
			echo '<option value="16" ';if($rs=="16") echo ' selected'; echo '>4ч</option>';
			echo '<option value="48" ';if($rs=="48") echo ' selected'; echo '>12ч</option>';
			echo '<option value="96" ';if($rs=="96") echo ' selected'; echo '>24ч</option>';
			echo '</select></td></tr>';
			echo '<tr><td>Время автотехов:</td><td><select size="1" name="timerefresh3">';
			echo '<option value="2" ';if($rt=="2") echo ' selected'; echo '>30м</option>';
			echo '<option value="4" ';if($rt=="4") echo ' selected'; echo '>60м</option>';
			echo '<option value="8" ';if($rt=="8") echo ' selected'; echo '>2ч</option>';
			echo '<option value="16" ';if($rt=="16") echo ' selected'; echo '>4ч</option>';
			echo '<option value="48" ';if($rt=="48") echo ' selected'; echo '>12ч</option>';
			echo '<option value="96" ';if($rt=="96") echo ' selected'; echo '>24ч</option>';
			echo '</select></td></tr>';
			echo '<tr><td>Постройка юнитов:</td><td><select size="1" name="timerefresh4">';
			echo '<option value="2" ';if($ru=="2") echo ' selected'; echo '>30м</option>';
			echo '<option value="4" ';if($ru=="4") echo ' selected'; echo '>60м</option>';
			echo '<option value="8" ';if($ru=="8") echo ' selected'; echo '>2ч</option>';
			echo '<option value="16" ';if($ru=="16") echo ' selected'; echo '>4ч</option>';
			echo '<option value="48" ';if($ru=="48") echo ' selected'; echo '>12ч</option>';
			echo '<option value="96" ';if($ru=="96") echo ' selected'; echo '>24ч</option>';
			echo '</select></td></tr>';
	
			echo '<tr><td>Автосейв оффа: </td><td><input type="checkbox" name="chavto1" '.$ch1.' /></td></tr>';
			echo '<tr><td>Автосейв дефа: </td><td><input type="checkbox" name="chavto2" '.$ch2.' /></td></tr>';
			echo '<tr><td>Автобилд: </td><td><input type="checkbox" name="chavto3" '.$cha1.' /></td></tr>';
			echo '<tr><td>Автострой юнитов: </td><td><input type="checkbox" name="chavto4" '.$cha2.' /></td></tr>';
			echo '<tr><td>Автотех: </td><td><input type="checkbox" name="chavto5" '.$cha3.' /></td></tr>';
			//echo '<tr><td>Автоквест: </td><td><input type="checkbox" name="chavto6" '.$cha4.' /></td></tr>';
			echo '<tr><td>Комментарий:</td></tr><tr><td><textarea rows="6" cols="20" name="comments">'.iconv('utf-8','cp1251',$comment).'</textarea></td></tr>';
			echo '<tr><td><input name="submit" type="submit" value="Обновить"></td></tr></form>'; 		
		echo '</table>';	
	}
}
else die('Давай до свидания!');


// Генерация списка друзей
$friends = '';
$query = "SELECT * FROM accounts WHERE `a_u_id`=".$_SESSION['u_id'];
$friendlist = $db->friends;
$friendlist=str_replace('"','',$friendlist);
$fl = str_replace('vk','',explode(",",$friendlist));
//echo var_dump($fl);
$data = mysql_query($query);
while ($row = mysql_fetch_array($data)) 
	{
		$acc = explode(" ", iconv('utf-8','cp1251', $row['a_n']));
		$fname =$acc[0];
		$sname = $acc[1];
		$soc_uid=str_replace('vk','',$row['a_soc']);
		if ($soc_uid!=$uid)
		{	
			if ( $friends != '' )  $friends .= ',';
			$fstr = '{\\"uid\\":'.$soc_uid.',\\"first_name\\":\\"'.$fname.'\\",\\"last_name\\":\\"'.$sname.'\\",\\"sex\\":\\"2\\",\\"photo_big\\":\\"'.$row['a_ava'].'\\"}';		
			$friends .= $fstr;
		}	
		if (in_array($soc_uid,$fl))	
		{
			//$friendlist=str_replace('"','',$friendlist);
			$friendlist=str_replace(",vk".$soc_uid."," , "," , $friendlist);
			$friendlist=str_replace("vk".$soc_uid."," , "" , $friendlist);
			$friendlist=str_replace(",vk".$soc_uid , "" , $friendlist);
		}
	}	
	//echo var_dump($friendlist);
	$friendlist = str_replace('vk','',$friendlist);
	$fl = explode(",",$friendlist);
	//echo var_dump($fl);
	foreach ($fl AS $fl_soc)
	{		
		$r = $db->get_accinfo("vk".$fl_soc);
		$accn = iconv('utf8','cp1251', $r);
		if ($accn!="")
		{
			if ( $friends != '' )  $friends .= ',';
			$acc = explode(';', $accn);
			$nn = explode(' ', $acc[0]);
			$fname = iconv('utf-8','cp1251', $nn[0]);
			$sname = iconv('utf-8','cp1251', $nn[1]);
			$photo = $acc[1];	
			$fstr = '{\\"uid\\":'.$fl_soc.',\\"first_name\\":\\"'.$fname.'\\",\\"last_name\\":\\"'.$sname.'\\",\\"sex\\":\\"2\\",\\"photo_big\\":\\"'.$photo.'\\"}';		
			$friends .= $fstr;
		}
	}
	//echo $friends;
	//$friends = '';
?>

</td>
<td>
<table width="100%">
<tr>
    <td style="width: 827px; height: 999px;">
        <div id="flash_api_external_cont"></div>
        <div id="flash_player_container" class="app_container" style="width: 827px; height: 999px;"></div>
    </td>
</tr></table>
<script type="text/javascript"> 
var params = {
   "api_url":"http:\/\/api.vk.com\/api.php",
   "api_id":2164459,
   "api_settings":9479,
   "viewer_id":<?php echo $uid; ?>,
 "viewer_type":2,
 "sid":"88d300e474eac32db36f0373a94fecc17a348dc335ba00771db7102a524a44",
 "secret":"66a3c3ad0e",
 "access_token":"9eab0ce6d34986819e80bedf699ecc147659eed9eed139af0789f46e9a78c65",
 "user_id":<?php echo $uid; ?>,
 "group_id":0,
 "is_app_user":1,
 "auth_key":"<?php echo $AuthKey; ?>",
 "language":"0",
 "parent_language":0,
 "ad_info":"ElsdCQRcQFVkBwFeAwJSXHt\/AUQ8HTJXUVBBJRVBNwoIFjI2HA8E",
 "api_result":"{\"response\":{\"app_friends\":[<?php echo $friends; ?>],\"user_data\":[{\"uid\":<?php echo $uid; ?>,\"first_name\":\"<?php echo $accname; ?>\",\"last_name\":\"<?php echo $accsname ?>\",\"photo_big\":\"<?php echo $user_photo; ?>\"}]}}",
 "referrer":"menu",
 "lc_name":"d30742f1"
}; 
showGame(true, "<?php echo $swf_url; ?>");
</script>
</td></tr></table>
</body>
<? 	$db->close_connection(); ?>
</html>
