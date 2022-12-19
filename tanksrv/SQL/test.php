<?php

$headers=array(
"Auth: 68cdda42b0c85022c28f4a180acd5d33",
"Content-type: application/x-www-form-urlencoded",
"Client: 0.1.8",
"Device: 02596f858c44367ffae76bd9c5d49bdd",
"Method: LogUser",
"Sign: 15bbc6a1fbede7c0c260d41a5f3b902c",
"User: fb100001454371005",
"Time: 1424791850072");


$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, "http://91.237.98.115/r.ashx");
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers); 
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)");
curl_setopt($ch, CURLOPT_POSTFIELDS, "{}");
curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, 20);
$output = curl_exec($ch);
curl_close($ch);
echo $output;