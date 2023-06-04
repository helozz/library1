<?
header("content:encoding; charset: utf-8");
require_once("_dbsettings.php");
require_once("db_query.php");
?>
<style type="text/css">
td.u {
  color: white;
  background-color: green;
}
td.t {
  color: red;
  background-color: orange;
}
td.m {
  color: white;
  background-color: blue;
}
td.op {
  color: white;
  background-color: red;
}
td.r {
  color: black;
  background-color: yellow;
}
</style>
<br />
<form method='POST' action='statistic48972872378948957347.php' target='_self'>

  <fieldset>
    <legend>Статистика за месяц<input type='radio' name='t' value='0' checked></legend>
<select name='m'> <option>01</option><option>02</option> <option>03</option> 
<option>04</option><option>05</option><option>06</option><option>07</option>
<option>08</option><option>09</option><option>10</option><option>11</option>
<option>12</option> </select>&nbsp;<select name='y'><option>2012</option>
<option>2013</option> <option>2014</option></select> 
  </fieldset><br />
  <fieldset> 
    <legend>Статистика за неделю<input type='radio' name='t' value='1'></legend>
&nbsp;&nbsp;c&nbsp;&nbsp;<select name='d0'> <option value='01'>01</option><option>02</option> <option>03</option> 
<option>04</option><option>05</option><option>06</option><option>07</option><option>08</option><option>09</option><option>10</option>
<option>11</option><option>12</option><option>13</option><option>14</option><option>15</option><option>16</option>
<option>17</option><option>18</option><option>19</option><option>20</option><option>21</option><option>22</option>
<option>23</option><option>24</option><option>25</option><option>26</option><option>27</option><option>28</option>
<option>29</option><option>30</option><option>31</option>
</select>&nbsp;<select name='m0'> <option>01</option><option>02</option> <option>03</option> 
<option>04</option><option>05</option><option>06</option><option>07</option><option>08</option><option>09</option>
<option>10</option><option>11</option><option>12</option> </select>&nbsp;<select name='y0'> <option>2012</option><option>2013</option> <option>2014</option></select> &nbsp;&nbsp;по&nbsp;&nbsp;
<select name='d1'> <option value='01'>01</option><option>02</option> <option>03</option> 
<option>04</option><option>05</option><option>06</option><option>07</option><option>08</option><option>09</option>
<option>10</option><option>11</option><option>12</option><option>13</option><option>14</option><option>15</option>
<option>16</option><option>17</option><option>18</option><option>19</option><option>20</option><option>21</option>
<option>22</option><option>23</option><option>24</option><option>25</option><option>26</option><option>27</option>
<option>28</option><option>29</option><option>30</option><option>31</option>
</select>&nbsp;<select name='m1'> <option>01</option><option>02</option> <option>03</option>
<option>04</option><option>05</option><option>06</option><option>07</option><option>08</option><option>09</option>
<option>10</option><option>11</option><option>12</option> </select>&nbsp;<select name='y1'><option>2012</option>
<option>2013</option> <option>2014</option></select>  
</fieldset><br />
  <fieldset> 
Общая&nbsp;<input type='radio' name='s' value='0' checked>&nbsp;&nbsp;Детальная&nbsp;<input type='radio' name='s' value='1'>
  </fieldset> 
<br />
  <fieldset> 
    <legend>Оператор</legend>
<select name='o'>
<option>Все</option>
<?
$db=new db_query('0','vk1');

$res=$db->get_traders();
for($i=0; $i<@mysql_num_rows($res); $i++)
{
echo "<option>".@mysql_result($res,$i,'u_log')."</option>";
}
?>
</select>


 </fieldset><br />

  <fieldset> 
    <legend>Получатель</legend>
<select name='r'><option>Все</option>
<?
$db=new db_query('0','vk1');

$res=$db->get_clients();
for($i=0; $i<@mysql_num_rows($res); $i++)
{
echo "<option>".@mysql_result($res,$i,'t_name')."</option>";

}
?>

</select>

 </fieldset><br />
<input type='submit' value='Получить' />
<br /><br />
<?

$db=new db_query('0','vk1');

echo $_POST['r']."&nbsp;&nbsp;";

if($_POST['t']=='0')
{
if($_POST['o']=='Все')
{
$res=$db->get_mstat($_POST['m'],$_POST['y'],$_POST['r'],$_POST['s']);
}
else
{
$res=$db->get_user_mstat($_POST['o'],$_POST['m'],$_POST['y'],$_POST['r'],$_POST['s']);
}
}
else
{
if($_POST['o']=='Все')
{
$res=$db->get_wstat($_POST['d0'],$_POST['d1'],$_POST['m0'],$_POST['y0'],$_POST['r'],$_POST['s']);
}
else
{
$res=$db->get_user_wstat($_POST['o'],$_POST['d0'],$_POST['d1'],$_POST['m0'],$_POST['y0'],$_POST['r'],$_POST['s']);
}
}

$txt=($_POST['t']==0)?"За ".$_POST['m']." ".$_POST['y']:"За период с ".$_POST['d0'].".".$_POST['m0'].".".$_POST['y0']." по ".$_POST['d1'].".".$_POST['m1'].".".$_POST['y1'];
echo $txt."<br />";
$u=$t=$m=0;
echo '<table>';
if($_POST['s']==0)
{
echo '<tr><td clacc="op">Оператор</td><td class = "u">Уран </td><td class = "t">Титанит </td><td class = "m">Кредиты</td><td class = "r">Получатель</td></tr>';


for($i=0; $i<@mysql_num_rows($res); $i++)
{
$u+=@mysql_result($res,$i,'u');
$t+=@mysql_result($res,$i,'t');
$m+=@mysql_result($res,$i,'m');
}
echo '<tr><td clacc="op">'.$_POST['o'].'</td><td class = "u">'.$u.'</td><td class = "t">'.$t.'</td><td class = "m"> '.$m.'</td><td class = "r"> '.$_POST['r'].'</td></tr>';
}
else
{
echo '<tr><td clacc="op">Оператор</td><td class = "u">Уран </td><td class = "t">Титанит </td><td class = "m">Кредиты</td><td class = "r">Получатель</td></tr>';

for($i=0; $i<@mysql_num_rows($res); $i++)
{
$u+=@mysql_result($res,$i,'u');
$t+=@mysql_result($res,$i,'t');
$m+=@mysql_result($res,$i,'m');
$trader=($_POST['o']=='Все')?@mysql_result($res,$i,'op'):$_POST['o'];
echo '<tr><td clacc="op">'.$trader.'</td><td class = "u">'.@mysql_result($res,$i,'u').'</td><td class = "t">'.@mysql_result($res,$i,'t').'</td><td class = "m">'.@mysql_result($res,$i,'m').'</td><td class = "r">'.@mysql_result($res,$i,'name').'</td></tr>';
}
echo '<tr><td clacc="op">Итого: </td><td class = "u">'.$u.'</td><td class = "t">'.$t.'</td><td class = "m"> '.$m.'</td><td class = "r"> '.$_POST['r'].'</td></tr>';
echo '</table>';
}

?>