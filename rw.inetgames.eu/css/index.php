    <?   
    require_once("config.php");     
    if(isset($_SESSION['access_token'])) {
        $uid = $_SESSION['user_id'];
        // получим профиль пользователя
        $resp = file_get_contents('https://api.vkontakte.ru/method/getProfiles?uids='.$uid.'&fields=photo_big&access_token='.$_SESSION['access_token']);
        $data = json_decode($resp, true);
        //print_r($data); // расскоментировать эту строчку, чтобы увидеть ответ сервера
       
        // выведем полученные данные
        echo 'Здравствуй, '.$data[response][0][first_name].' '.$data[response][0][last_name].
            '<br /><img src="'.$data[response][0][photo_big].'" />';
       
    } else {
        require_once("redirect.php");
    }
     
     
    ?>