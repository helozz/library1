<?php 


	class Shttp{

		// Хендл
		private $curl = NULL;

		// Последний урл
		public $url;

		// Последняя POST DATA
		public $post_data;

		// Скачанные данные
		public $data;

		// User Agent
		public $user_agent = 'Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.9.2.13) Gecko/20101206 Ubuntu/9.10 (karmic) Firefox/3.6.13';

		// String: Последняя ошибка
		public $error;

		public $referer;

               		/***
		 * Инициализация
		 */
		public function init(){

			$this->curl = curl_init();

			if( !$this->curl ){
				$this->error = curl_error($this->curl);
				return;
			}
                        

			$this->set_opt(CURLOPT_RETURNTRANSFER,true);
			$this->set_opt(CURLOPT_CONNECTTIMEOUT,30);
			$this->set_opt(CURLOPT_USERAGENT,$this->user_agent);
			$this->set_opt(CURLOPT_HEADER,false);
			$this->set_opt(CURLOPT_ENCODING,'gzip,deflate');
			$this->set_opt(CURLOPT_FOLLOWLOCATION,true);

			// Кукисы
			$this->set_opt(CURLOPT_COOKIESESSION,true);
			$this->set_opt(CURLOPT_COOKIEFILE,'cookiefile');

			// Если Referer не задан, включаем автореферер. Как в браузерах
			if( !empty($this->referer) ){
				$this->set_opt(CURLOPT_REFERER,$this->referer);
			}
		}

		/***
		 * Деструктор
		 */
	    public function __destruct() {
	    	if( $this->curl ){
				curl_close($this->curl);
				$this->curl = NULL;
			}
	    }

	    /***
	     * Последняя ошибка
	     */
	    public function error(){
	    	return $this->error;
	    }

	    /***
	     * Скачанные данные в виде строки
	     */
	    public function data(){
	    	return $this->data;
	    }

	    /***
	     * Внутренняя функция. Устанавливаем опцию
	     */
		public function set_opt($opt,$val){
			if( !curl_setopt($this->curl,$opt,$val) ){

				$this->error = curl_error($this->curl);
				return false;
			}
			return true;
		}

		/***
		 * Сохраняем скачанные данные в файл
		 */
		public function to_file($name){

			if( $f = fopen($name,'w') ){

				fwrite($f,$this->data);
				fclose($f);
				return true;
			}
			else{
				$this->error = 'Не удалось записать в файл. Проверьте правильность пути или права на файл.';
			}

			return false;
		}

		/***
		 * Обычный GET запрос
		 */
		public function get($url){

			$this->url = $url;

			if( empty($this->url) ){
				$this->error = 'Не указан URL';
				return false;
			}

			$this->set_opt(CURLOPT_URL,$this->url);
			$this->set_opt(CURLOPT_POST,false);

			return $this->exec();
		}

		/***
		 * https GET запрос
		 */
		public function https_get($url){

			$this->url = $url;

			if( empty($this->url) ){
				$this->error = 'Не указан URL';
				return false;
			}

			$this->set_opt(CURLOPT_URL,$this->url);
			$this->set_opt(CURLOPT_SSL_VERIFYHOST,0);
			$this->set_opt(CURLOPT_SSL_VERIFYPEER,false);

			return $this->exec();
		}

		/***
		 * Внутренняя функция. Выполняет запрос
		 */
		private function exec(){

			if( false == ($this->data = curl_exec($this->curl)) ){

				$this->error = curl_error($this->curl);
				return false;
			}

			return true;
		}

		/***
		 * Обычный POST запрос
		 */
		public function post($url,$post_data){
			$this->url = $url;
			$this->post_data = $post_data;

			if( empty($this->url) ){
				$this->error = 'Не указан URL либо POST DATA';
				return false;
			}

			$this->set_opt(CURLOPT_URL,$this->url);

			// POST
			$this->set_opt(CURLOPT_POST,true);
			$this->set_opt(CURLOPT_POSTFIELDS,$this->post_data);

			return $this->exec();
		}



                public function cp1251_to_utf8($txt)
{
    $in_arr = array (
        chr(208), chr(192), chr(193), chr(194),
        chr(195), chr(196), chr(197), chr(168),
        chr(198), chr(199), chr(200), chr(201),
        chr(202), chr(203), chr(204), chr(205),
        chr(206), chr(207), chr(209), chr(210),
        chr(211), chr(212), chr(213), chr(214),
        chr(215), chr(216), chr(217), chr(218),
        chr(219), chr(220), chr(221), chr(222),
        chr(223), chr(224), chr(225), chr(226),
        chr(227), chr(228), chr(229), chr(184),
        chr(230), chr(231), chr(232), chr(233),
        chr(234), chr(235), chr(236), chr(237),
        chr(238), chr(239), chr(240), chr(241),
        chr(242), chr(243), chr(244), chr(245),
        chr(246), chr(247), chr(248), chr(249),
        chr(250), chr(251), chr(252), chr(253),
        chr(254), chr(255)
    );

    $out_arr = array (
        chr(208).chr(160), chr(208).chr(144), chr(208).chr(145),
        chr(208).chr(146), chr(208).chr(147), chr(208).chr(148),
        chr(208).chr(149), chr(208).chr(129), chr(208).chr(150),
        chr(208).chr(151), chr(208).chr(152), chr(208).chr(153),
        chr(208).chr(154), chr(208).chr(155), chr(208).chr(156),
        chr(208).chr(157), chr(208).chr(158), chr(208).chr(159),
        chr(208).chr(161), chr(208).chr(162), chr(208).chr(163),
        chr(208).chr(164), chr(208).chr(165), chr(208).chr(166),
        chr(208).chr(167), chr(208).chr(168), chr(208).chr(169),
        chr(208).chr(170), chr(208).chr(171), chr(208).chr(172),
        chr(208).chr(173), chr(208).chr(174), chr(208).chr(175),
        chr(208).chr(176), chr(208).chr(177), chr(208).chr(178),
        chr(208).chr(179), chr(208).chr(180), chr(208).chr(181),
        chr(209).chr(145), chr(208).chr(182), chr(208).chr(183),
        chr(208).chr(184), chr(208).chr(185), chr(208).chr(186),
        chr(208).chr(187), chr(208).chr(188), chr(208).chr(189),
        chr(208).chr(190), chr(208).chr(191), chr(209).chr(128),
        chr(209).chr(129), chr(209).chr(130), chr(209).chr(131),
        chr(209).chr(132), chr(209).chr(133), chr(209).chr(134),
        chr(209).chr(135), chr(209).chr(136), chr(209).chr(137),
        chr(209).chr(138), chr(209).chr(139), chr(209).chr(140),
        chr(209).chr(141), chr(209).chr(142), chr(209).chr(143)
    );

    $txt = str_replace($in_arr,$out_arr,$txt);
    return $txt;
}
   
}

