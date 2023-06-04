<?php
$scanHeaders = array(
 'HTTP_VIA',
 'HTTP_X_FORWARDED_FOR',
 'HTTP_FORWARDED_FOR',
 'HTTP_X_FORWARDED',
 'HTTP_FORWARDED',
 'HTTP_CLIENT_IP',
 'HTTP_FORWARDED_FOR_IP',
 'VIA',
 'X_FORWARDED_FOR',
 'FORWARDED_FOR',
 'X_FORWARDED',
 'FORWARDED',
 'CLIENT_IP',
 'FORWARDED_FOR_IP',
 'HTTP_PROXY_CONNECTION'
);
$anonym = 0;
if ($_SERVER['REMOTE_ADDR'] == $_SERVER['SERVER_ADDR']) {
 $anonym = -1;
} else {
 foreach ($scanHeaders AS $scanHeader) {
  if ($_SERVER[$scanHeader]) {
   $anonym = 0;
   break;
  }
 }
}
?>
RqfAmVYb4eAPQQrrYJnjWVNBaJTTrRWL
You Use an Anonym Proxy: <?=$anonym?>