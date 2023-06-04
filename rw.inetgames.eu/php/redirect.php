    <?
     
    require_once("config.php");
    //перенаправляем на авторизацию
    //header('Location: http://api.vk.com/oauth/authorize?clien ... type=code');
    header('Location: '.PATH.'login.php');
    ?>