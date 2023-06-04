<?php
//Балансировка ресов ver 0.5
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=windows-1251" />
		<link href="../css/main.css" rel="stylesheet" type="text/css" />
		<link href="../css/ui-darkness/jquery-ui-1.9.1.custom.css" rel="stylesheet">
		<script src="../js/jquery-1.8.2.js" type="text/javascript"></script>
		<script src="../js/jquery.php.js" type="text/javascript"></script>
		<script src="../js/jquery.form.js" type="text/javascript"></script>
		<script src="../js/jquery-ui-1.9.1.custom.js"></script>
		
</head>	
<?php
require_once("config.php");						
require_once("../auto/db_query.php");
require_once("../auto/TDApi.php");
$uid = $_SESSION['soc_id'];
$uphoto = $_SESSION['uphoto'];
$hash = $_SESSION['hash'];
$_SESSION['hash']    = $hash;
$calchash = md5(CLIENT_ID.''.$_SESSION["r_log"].''.SECRET);
if ($hash !=$calchash) die('Давай до свидания!');

$db=new db_query(0,"vk".$uid,$uid);
?>
<? include "header.php"; ?>
<body>
<div class="frame" style=" width:800px; margin:10px;">
<div class="header">
    <div class="hleft"></div>
    <div class="hright"></div>
    <div class="hmainfull"><div>Баланс</div></div>
</div>
<div class="mainarea">
<div class="content" style="padding:20px 20px 5px 20px; padding-top:5px;">
<div class="normal_text">
<?php
// function sendres
function send_res($data)
{
    //$data = json_decode($jsondata,true);

    //@sleep($data['cargo']['delay']);
    //echo var_dump($data);
    if($_SESSION['soc_id'] && $data['cargo']['type']!='' && $data['destination']['sid']>0 && $data['cargo']['weight']>0 && $data['sender']['vkid'] && $data['sender']['auth'] && (($data['cargo']['reverse']>0) && $data['destination']['vkid'] && $data['destination']['auth'] || $data['cargo']['reverse']==0))
    {
        $revid=0;
        $fl=0;
        if($data['cargo']['reverse']>0)
        {
            $db1=new db_query(0,$data['destination']['vkid'],$_SESSION['soc_id']);
            $me=new TDApi($data['destination']['vkid'],$data['destination']['auth'],$db11->friends,$db11->v,$db11->referer,$db1->proxy,$db1->proxypwd,$db1->origin,$data['destination']['alert_s']);
            $tres=$me->SendRes($data['destination']['alert_q'],$data['destination']['alert_r'],microtime(true)*1000,$data['destination']['alert_u'],$data['destination']['sid'],$data['sender']['sid'],$data['cargo']['reverse'],'m');
            $res=json_decode($tres,true);
            if($res['o'])
            {
                $revid=$res['o']['i'];
                $data['destination']['alert_r']=$res['v'];
                @sleep(9);
            }
            if($res['g'])
            {
                $obj=array_pop($res['g']['wd']['u']);
                $revid=$obj['i'];
                $data['destination']['alert_r']=$res['g']['r'];
                @sleep(9);
            }
            if($res['m'] || $res['cerror'])
            {
                return 0;
            }
            $db1->close_connection();
        }

        if(!($data['cargo']['reverse']>0 && $revid==0))
        {
            $db1=new db_query(0,$data['sender']['vkid'],$_SESSION['soc_id']);
            $me=new TDApi($data['sender']['vkid'],$data['sender']['auth'],$db1->friends,$db1->v,$db1->referer,$db1->proxy,$db1->proxypwd,$db1->origin,$data['sender']['alert_s']);
            $cnt=0;
            while($cnt<3)
            {
                $tres=$me->SendRes($data['sender']['alert_q'],$data['sender']['alert_r'],microtime(true)*1000,$data['sender']['alert_u'],$data['sender']['sid'],$data['destination']['sid'],$data['cargo']['weight'],$data['cargo']['type']);
                $res=json_decode($tres,true);
                //echo $tres;
                if(!$res['m'] && !$res['cerror'])
                {
                    $db1->options_force_set($data['sender']['vkid'],max(1,$db1->options_force_get($data['sender']['vkid'])));
                    $db1->options_force_set($data['destination']['vkid'],max(2,$db1->options_force_get($data['destination']['vkid'])));
                    if($revid==0) return 1;
                    $fl=1;
                }
                if($res['cerror'])
                {
                    $cnt++;
                }
                if($res['m'])
                {
                    $cnt+=5;
                }
            }
            if($revid==0) return 0;

            $db1->close_connection();
        }



        if($data['cargo']['reverse']>0 && $revid>0)
        {
            $db1=new db_query(0,$data['destination']['vkid'],$_SESSION['soc_id']);
            $me=new TDApi($data['destination']['vkid'],$data['destination']['auth'],$db1->friends,$db1->v,$db1->referer,$db1->proxy,$db1->proxypwd,$db1->origin,$data['destination']['alert_s']);
            $cnt=0;
            while($cnt<3)
            {
                $tres=$me->CancelUnit($data['destination']['alert_q'],$data['destination']['alert_r'],microtime(true)*1000,$data['destination']['alert_u'],$revid);
                $res=json_decode($tres,true);
                if(!$res['m'] && !$res['cerror'])
                {
                    @sleep(11);
                    if($fl) return 1;
                    if(!$fl) return 0;
                }
                if($res['cerror'])
                {
                    $cnt++;
                }
                if($res['m'])
                {
                    $cnt+=5;
                }
            }
            if($fl) return 2;
            if(!$fl) return 3;

            $db1->close_connection();
        }
    }
    else return 4;
}
    if (isset($_POST['submit']))
    {
        $mingold = $_POST['gold'];
        $minsteel = $_POST['steel'];
        $minmeat = $_POST['meat'];
        $query = "SELECT * FROM `accounts`, `options` WHERE (`accounts`.`a_soc` = `options`.`o_soc`) AND (a_u_id=".$_SESSION['u_id'].") ORDER BY a_ismn DESC";
        $data = mysql_query($query);
        $row = mysql_fetch_array($data);
        $cnt = 0;
        do
        {
                    $r=$db->get_all_info($row['a_soc']);

                    $acc_info = explode(';',$r);
                if ($acc_info[0] > 31)  // отсеиваем мелкие акки
                {
                    $out_data[$cnt]["nick"] = mb_convert_encoding($row['a_n'],'cp1251','utf-8');
                    $out_data[$cnt]["u"] = (float)$acc_info[1];
                    $out_data[$cnt]["t"] = (float)$acc_info[2];
                    $out_data[$cnt]["volume"] = $out_data[$cnt]["u"] + $out_data[$cnt]["t"];
                    $out_data[$cnt]["m"] = (float)$acc_info[3];
                    $out_data[$cnt]["g"] = (float)$acc_info[4];
                    $out_data[$cnt]["tr_h"] = (int)$acc_info[5];
                    $out_data[$cnt]["tr_p"] = (int)$acc_info[6];
                    $out_data[$cnt]["tr_s"] = (float)$acc_info[7];
                    $out_data[$cnt]["lc"] = (int)$acc_info[8];
                    $out_data[$cnt]["lim"] = $acc_info[10];
                    $out_data[$cnt]["x"] = (int)$row['a_x'];
                    $out_data[$cnt]["y"] = (int)$row['a_y'];
                    $out_data[$cnt]["vkid"] = $row['a_soc'];
                    $out_data[$cnt]["auth"] = $row['a_auth'];
                    $out_data[$cnt]["alert_u"] = $acc_info[13];
                    $out_data[$cnt]["alert_r"] = (int)$acc_info[14];
                    $out_data[$cnt]["alert_q"] = $acc_info[15];
                    $out_data[$cnt]["alert_s"] = (int)$acc_info[19];
                    $out_data[$cnt]["alert_f"] = $acc_info[18];
                    $out_data[$cnt]["type"] = $row['type'];
                    $out_data[$cnt]["sid"] = (int)$row['a_sid'];
                    $out_data[$cnt]["dist"] = 0;
                    $out_data[$cnt]["time"] = 0;
                    $out_data[$cnt]["reverse"] = 0;
                    $out_data[$cnt]["revlim"] = 50000;
                    $out_data[$cnt]["daylim"] = 2;
                    $out_data[$cnt]["revdaylim"] = 2;
                    $out_data[$cnt]["cargo"] = 0;
                    $out_data[$cnt]["res_type"]='';
                    $out_data[$cnt]["delay"]= $delay;
                    $out_data[$cnt]["checked"] = false;
                    $alerts_arr = explode(':',$out_data[$cnt]["alert_f"]);
                    $out_data[$cnt]["car_av"] = (int)$alerts_arr[3];
                    $cnt++;
                }
        }
        while ($row = mysql_fetch_array($data)) ;
        $total_u = 0;
        $total_t = 0;
        $total_m = 0;
        for ($i=0; $i<$cnt;$i++)
        {
            $total_u+= $out_data[$i]["u"];
            $total_t+= $out_data[$i]["t"];
            $total_m+= $out_data[$i]["m"];
            $A[$i]["vkid"] = $out_data[$i]['vkid'];
            $A[$i]["id"] = $i;
            if ($out_data[$i]["type"]=="M") $A[$i]["sended"] = true;
            else $A[$i]["sended"] = false;
            $out_data[$i]["cargo"] = min($out_data[$i]["tr_p"]*$out_data[$i]["car_av"], 50000);
        }
        $total_u = $total_u / $cnt;
        $total_t = $total_t / $cnt;
        $total_m = $total_m / $cnt;
        if ($mingold > $total_u) $mingold = $total_u;
        if ($minsteel > $total_t) $minsteel = $total_t;
        if ($minmeat > $total_m) $minmeat = $total_m;
        for ($i=0; $i<$cnt;$i++)
        {
            $A[$i]["du"] = $out_data[$i]["u"] - $mingold;  //дельта по золоту
            $A[$i]["dt"] = $out_data[$i]["t"] - $minsteel; //дельта по стали
            $A[$i]["dm"] = $out_data[$i]["m"] - $minmeat; //дельта по мясу
        }
        echo "<p>Среднее расчетное кол-во ресов:</p>";
        echo "<p>".floor($total_u)."|".floor($total_t)."|".floor($total_m)."</p>";

        // сортировка по золоту
        foreach ($A as $key => $item)
        {
            $dst[$key] = $item["du"];
        }
        array_multisort($dst, SORT_ASC, $A);
        //echo var_dump($A);
        $i = 0;
		$y = $cnt -1;
        do
        {
            
            echo $A[$i]["vkid"].'|'.$A[$i]["du"].'|'.$A[$i]["dt"].'|'.$A[$i]["dm"].'<br>';
            if (!$A[$y]["sended"])
            {
                $j = $A[$i]["id"];
                $k = $A[$y]["id"];

                $sendcargo["destination"]["vkid"] = $out_data[$j]["vkid"];
                $sendcargo["destination"]["auth"] = $out_data[$j]["auth"];
                $sendcargo["destination"]["alert_u"] = $out_data[$j]["alert_u"];
                $sendcargo["destination"]["alert_r"] = $out_data[$j]["alert_r"];
                $sendcargo["destination"]["alert_q"] = $out_data[$j]["alert_q"];
                $sendcargo["destination"]["alert_s"] = $out_data[$j]["alert_s"];
                $sendcargo["destination"]["sid"] = $out_data[$j]["sid"];
                $sendcargo["sender"]["vkid"] = $out_data[$k]["vkid"];
                $sendcargo["sender"]["auth"] = $out_data[$k]["auth"];
                $sendcargo["sender"]["alert_u"] = $out_data[$k]["alert_u"];
                $sendcargo["sender"]["alert_r"] = $out_data[$k]["alert_r"];
                $sendcargo["sender"]["alert_q"] = $out_data[$k]["alert_q"];
                $sendcargo["sender"]["alert_s"] = $out_data[$k]["alert_s"];
                $sendcargo["sender"]["sid"] = $out_data[$k]["sid"];
                $sendcargo["cargo"]["type"] = "u";
                $sendcargo["cargo"]["reverse"] = 0;
                $sendcargo["cargo"]["delay"] = 	0;
                if ($out_data[$k]["cargo"]> floor(abs($A[$i]["du"]))) 
				{
					$sendcargo["cargo"]["weight"] = floor(abs($A[$i]["du"]));
					$i++;
				}
                else 
					{
						$sendcargo["cargo"]["weight"] = $out_data[$k]["cargo"];
						$A[$i]["du"] += $out_data[$k]["cargo"]; 
					}
				//echo var_dump($sendcargo);
                $res = send_res($sendcargo);
                $uinfo = $db->get_acc($_SESSION['soc_id'],'',$sendcargo["sender"]["vkid"]);
                $accname1 = mb_convert_encoding($uinfo,'cp1251','utf-8');
                $uinfo = $db->get_acc($_SESSION['soc_id'],'',$sendcargo["destination"]["vkid"]);
                $accname2 = mb_convert_encoding($uinfo,'cp1251','utf-8');
                if ($res==1)
                {
                    echo '<p>'.$sendcargo["cargo"]["weight"].' '.$sendcargo["cargo"]["type"].' отправлено с аккаунта '.$accname1.' на аккаунт '.$accname2.' ('.$res.')
                    <img src="../img/alertm/g1.png" height="20" Width="20"/></p>';
                }
                if ($res==0)
                {
                    echo '<p>ресурсы не отправлены с аккаунта '.$accname1.'('.$res.')<img src="../img/alertm/r1.png" height="20" Width="20"/></p>';
                }
                if ($res==2)
                {
                    echo '<p>'.$sendcargo["cargo"]["weight"].' '.$sendcargo["cargo"]["type"].' отправлено с аккаунта '.$accname1.' на аккаунт '.$accname2.', но обратный караван не отменился('.$res.')
                    <img src="../img/alertm/y1.png" height="20" Width="20"/></p>';
                }
                if ($res==3)
                {
                    echo '<p>ресурсы не отправлены с аккаунта '.$accname1.'('.$res.')<img src="../img/alertm/o1.png" height="20" Width="20"/></p>';

                }
                if ($res==4)
                {
                    echo '<p>ошибка отправки '.$accname1.'('.$res.')<img src="../img/alertm/r0.png" height="20" Width="20"/></p>';

                }
                if (($res==1)||($res==2))
                {
                    //$db->add_lists(vkid,@mysql_result($ex,0,'lim'),@mysql_result($ex,0,'dd'),@mysql_result($ex,0,'tt'));
                    $alerts_f = '0:0:0:0:'.$arrayOfObjects[$i]["car_av"].':0';
                    $lc = $arrayOfObjects[$i]["lc"]-1;
                    $query = 'UPDATE `res`  SET  `lc`='.$lc.', `alert_f` = "'.$alerts_f.'" WHERE `soc_id` = "'.$sendcargo["sender"]["vkid"].'"';
                    $r = mysql_query($query);
                    $A[$y]["sended"] = true;
                }
            }
            $y--;
            flush();
        }
        while ($A[$i]["du"]<0);
        // сортировка по стали
        foreach ($A as $key => $item)
        {
            $dst[$key] = $item["dt"];
        }
        array_multisort($dst, SORT_ASC, $A);
        //echo var_dump($A);
        $i = 0;
        $y = $cnt -1;
        do
        {

            echo $A[$i]["vkid"].'|'.$A[$i]["du"].'|'.$A[$i]["dt"].'|'.$A[$i]["dm"].'<br>';
            if (!$A[$y]["sended"])
            {
                $j = $A[$i]["id"];
                $k = $A[$y]["id"];

                $sendcargo["destination"]["vkid"] = $out_data[$j]["vkid"];
                $sendcargo["destination"]["auth"] = $out_data[$j]["auth"];
                $sendcargo["destination"]["alert_u"] = $out_data[$j]["alert_u"];
                $sendcargo["destination"]["alert_r"] = $out_data[$j]["alert_r"];
                $sendcargo["destination"]["alert_q"] = $out_data[$j]["alert_q"];
                $sendcargo["destination"]["alert_s"] = $out_data[$j]["alert_s"];
                $sendcargo["destination"]["sid"] = $out_data[$j]["sid"];
                $sendcargo["sender"]["vkid"] = $out_data[$k]["vkid"];
                $sendcargo["sender"]["auth"] = $out_data[$k]["auth"];
                $sendcargo["sender"]["alert_u"] = $out_data[$k]["alert_u"];
                $sendcargo["sender"]["alert_r"] = $out_data[$k]["alert_r"];
                $sendcargo["sender"]["alert_q"] = $out_data[$k]["alert_q"];
                $sendcargo["sender"]["alert_s"] = $out_data[$k]["alert_s"];
                $sendcargo["sender"]["sid"] = $out_data[$k]["sid"];
                $sendcargo["cargo"]["type"] = "t";
                $sendcargo["cargo"]["reverse"] = 0;
                $sendcargo["cargo"]["delay"] = 	0;
                if ($out_data[$k]["cargo"]> floor(abs($A[$i]["dt"])))
                {
                    $sendcargo["cargo"]["weight"] = floor(abs($A[$i]["dt"]));
                    $i++;
                }
                else
                {
                    $sendcargo["cargo"]["weight"] = $out_data[$k]["cargo"];
                    $A[$i]["dt"] += $out_data[$k]["cargo"];
                }
                //echo var_dump($sendcargo);
                $res = send_res($sendcargo);
                $uinfo = $db->get_acc($_SESSION['soc_id'],'',$sendcargo["sender"]["vkid"]);
                $accname1 = mb_convert_encoding($uinfo,'cp1251','utf-8');
                $uinfo = $db->get_acc($_SESSION['soc_id'],'',$sendcargo["destination"]["vkid"]);
                $accname2 = mb_convert_encoding($uinfo,'cp1251','utf-8');
                if ($res==1)
                {
                    echo '<p>'.$sendcargo["cargo"]["weight"].' '.$sendcargo["cargo"]["type"].' отправлено с аккаунта '.$accname1.' на аккаунт '.$accname2.' ('.$res.')
                    <img src="../img/alertm/g1.png" height="20" Width="20"/></p>';
                }
                if ($res==0)
                {
                    echo '<p>ресурсы не отправлены с аккаунта '.$accname1.'('.$res.')<img src="../img/alertm/r1.png" height="20" Width="20"/></p>';
                }
                if ($res==2)
                {
                    echo '<p>'.$sendcargo["cargo"]["weight"].' '.$sendcargo["cargo"]["type"].' отправлено с аккаунта '.$accname1.' на аккаунт '.$accname2.', но обратный караван не отменился('.$res.')
                    <img src="../img/alertm/y1.png" height="20" Width="20"/></p>';
                }
                if ($res==3)
                {
                    echo '<p>ресурсы не отправлены с аккаунта '.$accname1.'('.$res.')<img src="../img/alertm/o1.png" height="20" Width="20"/></p>';

                }
                if ($res==4)
                {
                    echo '<p>ошибка отправки '.$accname1.'('.$res.')<img src="../img/alertm/r0.png" height="20" Width="20"/></p>';

                }
                if (($res==1)||($res==2))
                {
                    //$db->add_lists(vkid,@mysql_result($ex,0,'lim'),@mysql_result($ex,0,'dd'),@mysql_result($ex,0,'tt'));
                    $alerts_f = '0:0:0:0:'.$arrayOfObjects[$i]["car_av"].':0';
                    $lc = $arrayOfObjects[$i]["lc"]-1;
                    $query = 'UPDATE `res`  SET  `lc`='.$lc.', `alert_f` = "'.$alerts_f.'" WHERE `soc_id` = "'.$sendcargo["sender"]["vkid"].'"';
                    $r = mysql_query($query);
                    $A[$y]["sended"] = true;
                }
            }
            $y--;
            flush();
        }
        while ($A[$i]["dt"]<0);
    }
?>

			<form action="resbalance.php" method="POST">
			<p> Минимальное кол-во урана:</p>
			<p> <input name="gold" type="text" id="gold" SIZE=4/> </p>
			<p> Минимальное кол-во титана:</p>
			<p> <input name="steel" type="text" id="steel" SIZE=4/> </p>
			<p> Минимальное кол-во кредитов:</p>
			<p> <input name="meat" type="text" id="meat" SIZE=4/> </p>
			<p> <input name="submit" type="submit" value="Продолжить"/> </p>
			</form>
		</div>
</div>							
<div class="footer"><div class="fleft"></div><div class="fright"></div>
</div>
</div>
</div>
<div id="content"> </div>
<script>							
</script>

</body>
<? $db->close_connection(); ?>	
</html>							