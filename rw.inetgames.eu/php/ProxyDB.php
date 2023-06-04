<?php

class ProxyDB {
	/**
	* db
	* 
	* @var obj
	*/
	protected $db;
	/**
	* userId
	* 
	* @var int
	*/
	protected $userId;
	/**
	* privileged
	* 
	* @var int
	*/
	protected $privileged;
	/**
	* id
	* 
	* @var int
	*/
	protected $id;
	/**
	* proxy
	* 
	* @var array
	*/
	protected $proxy;
	/**
	* proxy_login
	* 
	* @var string
	*/
	protected $proxy_login;
	/**
	* proxy_pwd
	* 
	* @var string
	*/
	protected $proxy_pwd;
	/**
	* timeout
	* 
	* @var int
	*/
	protected $timeout;
	/**
	* checkProxyOpts
	* 
	* @var array
	*/
	protected $checkProxyOpts;
	/**
	* checkProxyURL
	* 
	* @var string
	*/
	protected $checkProxyURL;
	/**
	* checkProxyNeedle
	* 
	* @var string
	*/
	protected $checkProxyNeedle;
	/**
	* checkAnonymURL
	* 
	* @var string
	*/
	protected $checkAnonymURL;
	/**
	* checkAnonymNeedle
	* 
	* @var string
	*/
	protected $checkAnonymNeedle;

	public function __construct(&$db, $timeout = null, $userId = null) {
		$this->db = $db;
		if (!is_null($timeout)) {
			$this->timeout = $timeout;
		} else {
			$this->timeout = 1800;
		}
		if (!is_null($userId)) {
			$this->userId = $userId;
		}

		$this->checkProxyOpts = array(
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_HEADER => false,
			CURLOPT_FOLLOWLOCATION => true,
			CURLOPT_CONNECTTIMEOUT => 15,
			CURLOPT_TIMEOUT => 20,
			CURLOPT_USERAGENT => 'Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2',
			CURLOPT_HTTPHEADER => array(
				'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
				'Accept-Language: ru,uk;q=0.8,en-us;q=0.5,en;q=0.3',
				'Accept-Charset: windows-1251,utf-8;q=0.7,*;q=0.7'
			),
			CURLOPT_ENCODING => 'gzip,deflate'
		);
		
		$this->checkProxyURL = 'http://proxy.yaderka.ru/proxy.php';
		$this->checkProxyNeedle = 'RqfAmVYb4eAPQQrrYJnjWVNBaJTTrRWL';
		
		$this->checkAnonymURL = 'http://proxy.yaderka.ru/proxy.php';
		$this->checkAnonymNeedle = 'You Use an Anonym Proxy: ';
	}

	public function getProxy ($userId = null) {
		if (is_null($userId) && !$this->userId) {
			return false;
		}
		if ($userId == $this->userId && !$this->proxy['host']) {
			return $this->proxy;
		}
		$this->userId = $userId;
		$this->clearProxy();

		$member = $this->db->select()
					->from(array('m' => 'members'), array('id', 'proxy_id', 'user_id', 'privileged'))
					->joinLeft(array('p' => 'proxy'), 'm.proxy_id = p.id', array('host', 'port', 'type', 'unavailable', 'login', 'password'))
					->where('m.user_id = ?', $this->userId)
					->query()->fetch();
		if (is_object($member)) {
			$this->privileged = $member->privileged;
			if ($member->proxy_id < 0) {
				return false;
			}  elseif ($member->proxy_id == 0 || $member->unavailable > 2 || $member->host == '') {
				return $this->changeProxy();
			} else {
				return $this->setProxy(array(
						'id' => $member->proxy_id,
						'host' => $member->host,
						'port' => $member->port,
						'type' => $member->type,
						'login' => $member->login,
						'password' => $member->password
					)
				);
			}
		} else {
			return $this->getRandomProxy();
		}
	}

	public function getRandomProxy() 
    {

		$proxy = $this->db->select()
					->from(array('p' => 'proxy'), array('id', 'host', 'port', 'type', 'login', 'password'))
					->where('p.unavailable <= 2')
					->where('p.checked > 0')
					->order('p.unavailable')
					->order('anonym DESC');
		$proxy = $proxy->order(new Zend_Db_Expr('RAND()'))
					->limit(1)
					->query()->fetch();

		if (is_object($proxy)) {
			return $this->setProxy($proxy);
		} 
		else {
			$this->clearProxy();
			return null;
		}




/*
		if (!is_null($privileged)) {
			$this->privileged = $privileged;
		}
		$proxy = $this->db->select()
					->from(array('p' => 'proxy'), array('id', 'host', 'port', 'type', 'login', 'password'))
					->where('p.id NOT IN (?)', new Zend_Db_Expr (
						$this->db->select()
							->distinct()
							->from(array('m' => 'members'), array('proxy_id'))
							->__toString()
						)
					  )
					->where('p.unavailable <= 2')
					->where('p.checked > 0')
					->order('p.unavailable')
					->order('anonym DESC');
		if ($this->privileged)
			$proxy = $proxy->order('privileged DESC');
		else
			$proxy = $proxy->order('privileged ASC');
		$proxy = $proxy->order(new Zend_Db_Expr('RAND()'))
					->limit(1)
					->query()->fetch();

		if (is_object($proxy)) {
			return $this->setProxy($proxy);
		} else {
			$proxy = $this->db->select()
						->from(array('m' => 'members'), array('id' => 'proxy_id'))
						->joinLeft(array('p' => 'proxy'), 'm.proxy_id = p.id', array('host', 'port', 'type', 'login', 'password'))
						->where('p.host IS NOT null')
						->where("p.host != ''")
						->order('COUNT(*)')
						->group('m.proxy_id')
						->limit(1)
						->query()->fetch();
			if (is_object($proxy)) {
				return $this->setProxy($proxy);
			} else {
//				throw new Exception('Random proxy is not available.');
				$this->clearProxy();
				return null;
			}
		}
*/
	}

	public function setProxy($proxy) {
		if (is_object($proxy)) {
			$proxy = get_object_vars($proxy);
		}
		$this->proxy = array(
			'host' => $proxy['host'],
			'port' => $proxy['port'],
			'type' => $proxy['type'],
			'login' => $proxy['login'],
			'password' => $proxy['password']
		);
		if ($proxy['id']) {
			$this->id = $proxy['id'];
		} else {
			unset($this->id);
		}
		return $this->proxy;
	}
	
	public function getProxyId() {
		return $this->id;
	}
	
	protected function clearProxy() {
		unset($this->id);
		unset($this->proxy);
	}

	public function checkProxy($checkAnonym = false) {
		if (!$this->proxy['host'] || !$this->proxy['port']) {
			return false;
		}
		$request = curl_init($this->checkProxyURL);
		curl_setopt_array($request, $this->checkProxyOpts);
		curl_setopt($request, CURLOPT_PROXY, $this->proxy['host'].':'.$this->proxy['port']);
		if ($this->proxy['type']) {
			curl_setopt($request, CURLOPT_PROXYTYPE, $this->proxy['type']);
		}
		$response = curl_exec($request);
		$curl_errno = curl_errno($request);
		curl_close($request);
		if ($curl_errno || $response == '' || strpos($response, $this->checkProxyNeedle) === FALSE) {
			if ($this->id) {
				$this->unavailableProxy();
			}
			return false;
		} else {
			if ($this->id) {
				$this->availableProxy($checkAnonym, $curl_errno, $response);
			}
			return true;
		}
	}

	public function availableProxy($checkAnonym = false, $curl_errno = 0, $response = '') {
		if ($this->id) {
			$data = array(
				'unavailable' => 0,
				'checked' => time()
			);
			if ($checkAnonym) {
				if ($this->checkProxyURL != $this->checkAnonymURL) {
					$request = curl_init($this->checkAnonymURL);
					curl_setopt_array($request, $this->checkProxyOpts);
					curl_setopt($request, CURLOPT_PROXY, $this->proxy['host'].':'.$this->proxy['port']);
					if ($this->proxy['type']) {
						curl_setopt($request, CURLOPT_PROXYTYPE, $this->proxy['type']);
					}
					$response = curl_exec($request);
					$curl_errno = curl_errno($request);
					curl_close($request);
				}
				if (!$curl_errno && $response != '' && preg_match('/'.$this->checkAnonymNeedle.'([0-1])/Uis', $response, $matches)) {
					$data['anonym'] = $matches[1];
				}
			}
			$this->db->update('proxy', $data, 'id = '.$this->id);
		}	
	}

	public function unavailableProxy($unavailable = 1) {
		if ($this->id) {
			$unavailable = (int)$unavailable;
			if ($unavailable <= 0) {
				$unavailable = 1;
			}
			$unavail = $this->db->select()
							->from('proxy', array('unavailable'))
							->where('id = ?', $this->id)
							->query()->fetch();
			if (is_object($unavail)) {
				$unavail = $unavail->unavailable + $unavailable;
				$this->db->update('proxy', array('unavailable' => $unavail, 'checked' => time()), 'id = '.$this->id);
				return $unavail;
			}
			return 0;
		}
		return 0;
	}

	public function changeProxy($userId = null) {
		if (!is_null($userId)) {
			$this->userId = $userId;
		}
		if (!is_null($this->getRandomProxy())) {
			$this->db->update('members', array('proxy_id' => $this->id), 'user_id = '.$this->userId);
			return $this->proxy;
		} else {
			return null;
		}
	}
}
?>