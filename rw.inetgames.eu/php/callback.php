    <?        
    require_once("config.php");
    // получили параметр code
    if($_REQUEST['code']) {
        // получаем access_token
        $resp = file_get_contents('https://api.vk.com/oauth/access_token?client_id='.CLIENT_ID.'&code='.$_REQUEST['code'].'&client_secret='.SECRET);
        $data = json_decode($resp, true);
     
        if($data['access_token']){
            // запишем данные в сессию
            $_SESSION['access_token'] = $data['access_token'];
            $_SESSION['user_id'] = $data['user_id'];
            // переадресуем пользователя на нужную страницу
            header('Location: '.PATH.'index.php');
            exit();
        }
    }
    ?>