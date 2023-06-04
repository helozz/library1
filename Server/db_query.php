<?
class db_query 
{
var $connection;

public function db_query()
{
require_once("defines.php");

$this->connection = new mysqli(DBHOST, DBUSER, DBPASS, DBNAME);
if($this->connection->connect_error) {
    die("Connection failed: " . $this->connection->connect_error);
}
//@mysql_set_charset('utf8');

return $this;
}

public function close_connection()
{
	$this->connection->close();
}

function addHeaders($client,$sender,$timestamp)
{
	header("client: ".$client);
	header("sender: ".$sender);
	header("time: ".$timestamp);
}

public function add_client()
{
	$res = 0;
	$stmt = $this->connection->prepare("INSERT INTO `login` (`id`) VALUES (NULL)");
	if ($stmt->execute()) $res = $this->connection->insert_id;
	$stmt->close();
	if($res > 0) $this->rem_client($res);
	return $res;
}

public function rem_client($client)
{
	$res = 0;
	$stmt = $this->connection->prepare("DELETE FROM `login` WHERE `id` = ?;");
	$stmt->bind_param("i", $i);
	$i = $client;
	if ($stmt->execute()) $res = 1;
	$stmt->close();
	return $res;
}

public function rem_data($id)
{
	$res = 0;
	$stmt = $this->connection->prepare("DELETE FROM `post_data` WHERE `id` = ?;");
	$stmt->bind_param("i", $i);
	$i = $id;
	if ($stmt->execute()) $res = 1;
	$stmt->close();
	return $res;
}

public function rem_client_data($client)
{
	$res = 0;
	$stmt = $this->connection->prepare("DELETE FROM `post_data` WHERE `client` = ?;");
	$stmt->bind_param("i", $i);
	$i = $client;
	if ($stmt->execute()) $res = 1;
	$stmt->close();
	return $res;
}

public function rem_sender_data($sender)
{	
	$res = 0;
	$stmt = $this->connection->prepare("DELETE FROM `post_data` WHERE `sender` = ?;");
	$stmt->bind_param("i", $i);
	$i = $sender;	
	if ($stmt->execute()) $res = 1;
	$stmt->close();
	return $res;
}

public function add_post_data($client, $sender, $data)
{
	$res = 0;
	$stmt = $this->connection->prepare("INSERT INTO `post_data` (`id`,`client`,`sender`,`data`) VALUES (?,?,?,?);");
	$stmt->bind_param("iiis", $i, $c, $s, $d);
	$i = NULL;
	$c = $sender;
	$s = $client;
	$d = $data;
	if ($stmt->execute()) $res = $this->connection->insert_id;
	$stmt->close();
	return $res;
}

public function read_post_data($client)
{	
	$res = 0;
	$iid = 0;
	$stmt = $this->connection->prepare("SELECT `id`, `data` FROM `post_data` WHERE `client`=? ORDER BY `id` ASC LIMIT 1;");
	$stmt->bind_param("i", $i);
	$i = $client;
	if ($stmt->execute()) 
	{
		$stmt->bind_result($id, $data);
		if ($stmt->fetch())
		{
		$iid = $id;
		$res = $data;
		}
	}
	$stmt->close();
	if($iid > 0) $this->rem_data($iid);
	return $res;
}

/*  API   */

public function print_data($res)
{
	$p = FILEPATH.$res;
			if ($handle = @fopen($p, 'rb')) {
				header('Content-Length: '.filesize($p));
				
				while (!feof($handle)) {
				print fread($handle, 1024);
				}
				fclose($handle);
				unlink($p);
			}
}


}



?>