#include "/home/helga/Рабочий стол/projects/_Mapper/include/wtdbcpp.h"

wtdbcpp::wtdbcpp()
{

  this->conn = mysql_init(NULL);

  mysql_options(this->conn, MYSQL_SET_CHARSET_NAME, "utf8");
  mysql_options(this->conn, MYSQL_INIT_COMMAND, "SET NAMES utf8");

  /* Connect to database */
  if (!mysql_real_connect(this->conn, _SRV, _USR, _PWD, _DTB, 0, NULL, 0)) {
      //fprintf(stderr, "%s\n", mysql_error(this->conn));
     // exit(1);
  }

return;
}

void wtdbcpp::updtCoord(string vkid, int x ,int y)
{
string quer1="update ";
quer1.append(_ACCOUNTS);
quer1.append(" set a_x=");
quer1.append(this->itores(x));
quer1.append(", a_y=");
quer1.append(this->itores(y));
quer1.append(" where a_soc='");
quer1.append(vkid);
quer1.append("'");
mysql_query(this->conn, quer1.c_str());
//cout<<quer1<<endl;
}

void wtdbcpp::updtSID(string vkid, int sid)
{
string quer1="update ";
quer1.append(_ACCOUNTS);
quer1.append(" set a_sid=");
quer1.append(this->itores(sid));
quer1.append(" where a_soc='");
quer1.append(vkid);
quer1.append("'");
mysql_query(this->conn, quer1.c_str());
//cout<<quer1<<endl;
}

void wtdbcpp::updtSSID(string vkid, int ssid)
{
string quer1="update ";
quer1.append(_OPTIONS);
quer1.append(" set save_id=");
quer1.append(this->itores(ssid));
quer1.append(" where o_soc='");
quer1.append(vkid);
quer1.append("'");
mysql_query(this->conn, quer1.c_str());
//cout<<quer1<<endl;
}

void wtdbcpp::updtSS(string vkid, int x, int y, int ssid)
{
string quer1="update ";
quer1.append(_OPTIONS);
quer1.append(" set save_id=");
quer1.append(this->itores(ssid));
quer1.append(", save_x=");
quer1.append(this->itores(x));
quer1.append(", save_y=");
quer1.append(this->itores(y));
quer1.append(" where o_soc='");
quer1.append(vkid);
quer1.append("'");
mysql_query(this->conn, quer1.c_str());
//cout<<quer1<<endl;
}

void wtdbcpp::addTask(string vkid,string clss,string type,string params)
{
string quer1="insert into ";
quer1.append(_TASKS);
quer1.append("(`tsk_id`,`tsk_soc`,`tsk_class`,`tsk_type`,`tsk_params`) VALUES(NULL,'");
quer1.append(vkid);
quer1.append("','");
quer1.append(clss);
quer1.append("','");
quer1.append(type);
quer1.append("','");
quer1.append(params);
quer1.append("')");
mysql_query(this->conn, quer1.c_str());
//cout<<quer1<<endl;
}

int wtdbcpp::existTask(string vkid,string clss,string type,string params)
{
string quer1="select * from ";
quer1.append(_TASKS);
quer1.append(" where tsk_soc='");
quer1.append(vkid);
quer1.append("' and tsk_class='");
quer1.append(clss);
quer1.append("' and tsk_type='");
quer1.append(type);
quer1.append("' and tsk_params='");
quer1.append(params);
quer1.append("'");
 mysql_query(this->conn, quer1.c_str());
 this->result=mysql_store_result(this->conn);
 int num=(int)mysql_num_rows(this->result);
 mysql_free_result(this->result);
 return num;
}

int wtdbcpp::addAlert(string vkid,int alert,int enemy,int type,string dep,string arr)
{
string quer1="insert into ";
quer1.append(_ALERTS);
quer1.append("(`id` ,`soc`,`alert` ,`enemy` ,`type` ,`noted`,`dep`,`arr`) VALUES (NULL, '");
quer1.append(vkid);
quer1.append("','");
quer1.append(this->itores(alert));
quer1.append("','");
quer1.append(this->itores(enemy));
quer1.append("','");
quer1.append(this->itores(type));
quer1.append("',0,'");
quer1.append(dep);
quer1.append("','");
quer1.append(arr);
quer1.append("')");
int resp=mysql_query(this->conn, quer1.c_str());
if(!resp) return 1;
else return 0;
}

string wtdbcpp::getSectorU(void)
{
srand (time(NULL));
int n=rand()%_UNumber;
string quer1="select build from ";
quer1.append(_SECTOR);
quer1.append(" where type='U' limit ");
quer1.append(this->itores(n));
quer1.append(",1");
mysql_query(this->conn, quer1.c_str());
    this->result=mysql_use_result(this->conn);
     string temp="";
     while ((this->rresult = mysql_fetch_row(this->result)) != NULL)
 {
     temp=this->rresult[0];
 }
  mysql_free_result(this->result);
return temp;
}

string wtdbcpp::getSectorT(void)
{
srand (time(NULL));
int n=rand()%_TNumber;
string quer1="select build from ";
quer1.append(_SECTOR);
quer1.append(" where type='T' limit ");
quer1.append(this->itores(n));
quer1.append(",1");
mysql_query(this->conn, quer1.c_str());
    this->result=mysql_use_result(this->conn);
     string temp="";
     while ((this->rresult = mysql_fetch_row(this->result)) != NULL)
 {
     temp=this->rresult[0];
 }
  mysql_free_result(this->result);
return temp;
}

string wtdbcpp::getSectorUII(void)
{
srand (time(NULL));
int n=rand()%_UIINumber;
string quer1="select build from ";
quer1.append(_SECTORII);
quer1.append(" where type='U' limit ");
quer1.append(this->itores(n));
quer1.append(",1");
mysql_query(this->conn, quer1.c_str());
    this->result=mysql_use_result(this->conn);
     string temp="";
     while ((this->rresult = mysql_fetch_row(this->result)) != NULL)
 {
     temp=this->rresult[0];
 }
  mysql_free_result(this->result);
return temp;
}

string wtdbcpp::getSectorTII(void)
{
srand (time(NULL));
int n=rand()%_TIINumber;
string quer1="select build from ";
quer1.append(_SECTORII);
quer1.append(" where type='T' limit ");
quer1.append(this->itores(n));
quer1.append(",1");
mysql_query(this->conn, quer1.c_str());
    this->result=mysql_use_result(this->conn);
     string temp="";
     while ((this->rresult = mysql_fetch_row(this->result)) != NULL)
 {
     temp=this->rresult[0];
 }
  mysql_free_result(this->result);
return temp;
}

string wtdbcpp::getScheme(string vkid,string type)
{
string sch="";
string quer1="select scheme from ";
quer1.append(_SCHEMES);
 quer1.append(" where soc='");
 quer1.append(vkid);
 quer1.append("'");
 mysql_query(this->conn, quer1.c_str());
 this->result=mysql_store_result(this->conn);
 int num=(int)mysql_num_rows(this->result);
 if(num > 0)
 {
while ((this->rresult = mysql_fetch_row(this->result)) != NULL)
 {
     sch=this->rresult[0];
    // cout<<sch<<endl;
 }
mysql_free_result(this->result);
 }
 else
 {
mysql_free_result(this->result);
    if(type=="T") sch=this->getSectorTII();
    if(type=="U") sch=this->getSectorUII();

quer1="insert into ";
quer1.append(_SCHEMES);
quer1.append("(`id` ,`soc`,`scheme`) VALUES (NULL, '");
quer1.append(vkid);
quer1.append("','");
quer1.append(sch);
quer1.append("')");
int resp=mysql_query(this->conn, quer1.c_str());
if(resp) return "";
 }
return sch;
}

int wtdbcpp::isntAlerted(int alert,int enemy,int type)
{
string quer1="select * from ";
quer1.append(_ALERTS);
 quer1.append(" where alert=");
 quer1.append(this->itores(alert));
 quer1.append(" and enemy=");
 quer1.append(this->itores(enemy));
  quer1.append(" and type=");
 quer1.append(this->itores(type));
  quer1.append(" and noted=1");
  mysql_query(this->conn, quer1.c_str());
  this->result=mysql_store_result(this->conn);
 int num=(int)mysql_num_rows(this->result);
 mysql_free_result(this->result);
if(num > 0) return 0;
else return 1;
}

int wtdbcpp::isAlert(int alert,int enemy,int type)
{
string quer1="select * from ";
quer1.append(_ALERTS);
quer1.append(" where alert=");
 quer1.append(this->itores(alert));
 quer1.append(" and enemy=");
 quer1.append(this->itores(enemy));
quer1.append(" and type=");
 quer1.append(this->itores(type));
int resp=mysql_query(this->conn, quer1.c_str());
  this->result=mysql_store_result(this->conn);
 int num=(int)mysql_num_rows(this->result);
 mysql_free_result(this->result);
if(!resp) return 1;
if(num > 0) return 0;
else return 1;
}

int wtdbcpp::forceGet(string vkid)
{
string quer1="select `force` from ";
quer1.append(_OPTIONS);
quer1.append(" where o_soc='");
quer1.append(vkid);
quer1.append("'");
mysql_query(this->conn, quer1.c_str());
    this->result=mysql_use_result(this->conn);
     string temp="";
     while ((this->rresult = mysql_fetch_row(this->result)) != NULL)
 {
     temp=this->rresult[0];
 }
     mysql_free_result(this->result);

     int rr=this->restoi(temp);
return rr;
}

void wtdbcpp::forceSet(string vkid,int frc)
{
string quer1="update ";
quer1.append(_OPTIONS);
quer1.append(" set `force`=");
quer1.append(this->itores(frc));
quer1.append(" where o_soc='");
quer1.append(vkid);
quer1.append("'");
mysql_query(this->conn, quer1.c_str());
return;
}

void wtdbcpp::setXXX()
{
string quer1="update ";
quer1.append(_TASKS);
quer1.append(" set tsk_class=\"X\" where tsk_class=\"Y\"");
mysql_query(this->conn, quer1.c_str());
quer1="update ";
quer1.append(_TASKS);
quer1.append(" set tsk_class=\"G\" where tsk_class=\"K\"");
mysql_query(this->conn, quer1.c_str());
quer1="delete from ";
quer1.append(_TASKS);
quer1.append(" where tsk_params=\"\" or tsk_soc=\"\"");
mysql_query(this->conn, quer1.c_str());
return;
}

void wtdbcpp::alertSet(string vkid,int frc)
{
string quer1="update ";
quer1.append(_OPTIONS);
quer1.append(" set alert=");
quer1.append(this->itores(frc));
quer1.append(" where o_soc='");
quer1.append(vkid);
quer1.append("'");
mysql_query(this->conn, quer1.c_str());
return;
}

void wtdbcpp::firstOff(string vkid)
{
string quer1="update ";
quer1.append(_OPTIONS);
quer1.append(" set first=0");
quer1.append(" where o_soc='");
quer1.append(vkid);
quer1.append("'");
mysql_query(this->conn, quer1.c_str());
return;
}

void wtdbcpp::updtAI(string vkid,string au,string ar,string af,string aq,string u,string t,string m,string g,string c,string trh,string trp,string trs,string l,string cl,string dl,string lim,string dr,string tl,string tm,string as)
{
string quer1="update ";
quer1.append(_RES);
quer1.append(" set alert_f='");
quer1.append(af);
quer1.append("', alert_u='");
quer1.append(au);
quer1.append("', alert_r='");
quer1.append(ar);
quer1.append("', alert_q='");
quer1.append(aq);
quer1.append("', alert_s='");
quer1.append(as);
quer1.append("', l='");
quer1.append(l);
quer1.append("', u='");
quer1.append(u);
quer1.append("', t='");
quer1.append(t);
quer1.append("', m='");
quer1.append(m);
quer1.append("', g='");
quer1.append(g);
quer1.append("', gI='");
quer1.append(c);
quer1.append("', lc='");
quer1.append(cl);
quer1.append("', ld='");
quer1.append(dl);
quer1.append("', tr_h='");
quer1.append(trh);
quer1.append("', tr_p='");
quer1.append(trp);
quer1.append("', tr_s='");
quer1.append(trs);
quer1.append("', lim='");
quer1.append(lim);
quer1.append("', dd='");
quer1.append(dr);
quer1.append("', tt='");
quer1.append(tl);
quer1.append("', updated='");
quer1.append(tm);
quer1.append("', dtlupdated='");
quer1.append(tm);
quer1.append("' where soc_id='");
quer1.append(vkid);
quer1.append("'");
mysql_query(this->conn, quer1.c_str());
return;
}

void wtdbcpp::internMessage(string uid,string vkid,string mess)
{
string quer1="insert into ";
quer1.append(_MESSAGES);
quer1.append(" (`id`,`u_id`,`soc`,`mess`) VALUES ('','");
quer1.append(uid);
quer1.append("','");
quer1.append(vkid);
quer1.append("','");
quer1.append(mess);
quer1.append("')");
mysql_query(this->conn, quer1.c_str());
return;
}

string wtdbcpp::recognizeUser(string uid)
{
    string quer1="select vkid from ";
    quer1.append(_ACL);
    quer1.append(" where u_id='");
    quer1.append(uid);
    quer1.append("'");
    mysql_query(this->conn, quer1.c_str());
    this->result=mysql_use_result(this->conn);
     string temp="";
     while ((this->rresult = mysql_fetch_row(this->result)) != NULL)
 {
     temp=this->rresult[0];
 }
     mysql_free_result(this->result);
     return temp;
}

string wtdbcpp::getRealFriends(string uid,string sid)
{
    string quer1="select distinct a_sid from ";
    quer1.append(_ACCOUNTS);
    quer1.append(",");
    quer1.append(_RES);
    quer1.append(" where ");
    quer1.append(_ACCOUNTS);
    quer1.append(".a_u_id='");
    quer1.append(uid);
    quer1.append("' and ");
    quer1.append(_ACCOUNTS);
    quer1.append(".a_sid!=0 and ");
    quer1.append(_RES);
    quer1.append(".soc_id = ");
    quer1.append(_ACCOUNTS);
    quer1.append(".a_soc and ");
    quer1.append(_RES);
    quer1.append(".l>15 and ");
    quer1.append(_ACCOUNTS);
    quer1.append(".a_sid>");
    quer1.append(sid);
    quer1.append(" union select distinct a_sid from ");
    quer1.append(_ACCOUNTS);
    quer1.append(",");
    quer1.append(_RES);
    quer1.append(" where ");
    quer1.append(_ACCOUNTS);
    quer1.append(".a_u_id='");
    quer1.append(uid);
    quer1.append("' and ");
    quer1.append(_ACCOUNTS);
    quer1.append(".a_sid!=0 and ");
    quer1.append(_RES);
    quer1.append(".soc_id = ");
    quer1.append(_ACCOUNTS);
    quer1.append(".a_soc and ");
    quer1.append(_RES);
    quer1.append(".l>15 and ");
    quer1.append(_ACCOUNTS);
    quer1.append(".a_sid<");
    quer1.append(sid);
    mysql_query(this->conn, quer1.c_str());
    this->result=mysql_store_result(this->conn);
    int num=(int)mysql_num_rows(this->result);
     string temp="";
     int cnt=0;
    while ((this->rresult = mysql_fetch_row(this->result)) != NULL)
 {
     cnt++;
     temp.append(this->rresult[0]);
     if(cnt<num) temp.append(",");
 }
     mysql_free_result(this->result);
     return temp;
}

string wtdbcpp::getSid(string vkid)
{
    string quer1="select a_sid from ";
    quer1.append(_ACCOUNTS);
    quer1.append(" where a_soc='");
    quer1.append(vkid);
    quer1.append("'");
    mysql_query(this->conn, quer1.c_str());
    this->result=mysql_use_result(this->conn);
     string temp="";
    while ((this->rresult = mysql_fetch_row(this->result)) != NULL)
 {
     temp=this->rresult[0];
 }
     mysql_free_result(this->result);
     return temp;
}

void wtdbcpp::updtBLD(string vkid,string wl,string bl,string blds)
{
string quer1="select * from ";
quer1.append(_BUILDINGS);
 quer1.append(" where b_soc='");
 quer1.append(vkid);
 quer1.append("'");
mysql_query(this->conn, quer1.c_str());
  this->result=mysql_store_result(this->conn);
 int num=(int)mysql_num_rows(this->result);
 mysql_free_result(this->result);

if(num>0)
{
quer1="update ";
quer1.append(_BUILDINGS);
quer1.append(" set ware_limit='");
quer1.append(wl);
quer1.append("', bank_limit='");
quer1.append(bl);
quer1.append("', buildings='");
quer1.append(blds);
quer1.append("' where b_soc='");
quer1.append(vkid);
quer1.append("'");
mysql_query(this->conn, quer1.c_str());
}
else
{
quer1="insert into ";
quer1.append(_BUILDINGS);
quer1.append(" (`id`,`b_soc`,`ware_limit`,`bank_limit`, `buildings`) VALUES ('','");
quer1.append(vkid);
quer1.append("','");
quer1.append(wl);
quer1.append("','");
quer1.append(bl);
quer1.append("','");
quer1.append(blds);
quer1.append("')");
mysql_query(this->conn, quer1.c_str());
}
return;
}

string wtdbcpp::getTask(string vkid,string type)
{
string quer1="select * from ";
quer1.append(_TASKS);
 quer1.append(" where tsk_soc='");
 quer1.append(vkid);
 quer1.append("' and  tsk_class='");
 quer1.append(type);
quer1.append("' ORDER BY tsk_id ASC limit 0,1");
int res=mysql_query(this->conn, quer1.c_str());
string rstr="{";
if(res==0)
{
this->result=mysql_store_result(this->conn);
while ((this->rresult = mysql_fetch_row(this->result)) != NULL)
 {
     rstr.append("\"id\":\"");
     rstr.append(rresult[0]);
     rstr.append("\",\"clss\":\"");
     rstr.append(rresult[2]);
     rstr.append("\",\"type\":\"");
     rstr.append(rresult[3]);
     rstr.append("\",\"par\":\"");
     rstr.append(rresult[4]);
     rstr.append("\"");
 }

mysql_free_result(this->result);
}
rstr.append("}");
return rstr;
}

string wtdbcpp::getWTask(string usrid,string type)
{
string quer1="select * from ";
quer1.append(_TASKS);
 quer1.append(" where tsk_params like '");
 quer1.append(usrid);
 quer1.append(",%' and tsk_soc='wildcard' and  tsk_class='");
 quer1.append(type);
quer1.append("' ORDER BY tsk_id ASC limit 0,1");
int res=mysql_query(this->conn, quer1.c_str());
string rstr="{";
if(res==0)
{
this->result=mysql_store_result(this->conn);
while ((this->rresult = mysql_fetch_row(this->result)) != NULL)
 {
     rstr.append("\"id\":\"");
     rstr.append(rresult[0]);
     rstr.append("\",\"clss\":\"");
     rstr.append(rresult[2]);
     rstr.append("\",\"type\":\"");
     rstr.append(rresult[3]);
     rstr.append("\",\"par\":\"");
     rstr.append(rresult[4]);
     rstr.append("\"");
 }

mysql_free_result(this->result);
}
rstr.append("}");
return rstr;
}

void wtdbcpp::remTask(string id)
{
    string quer1="delete from ";
    quer1.append(_TASKS);
    quer1.append(" where tsk_id='");
    quer1.append(id);
    quer1.append("'");
mysql_query(this->conn, quer1.c_str());
}

void wtdbcpp::updtTask(string id,string pars,string type)
{
  string quer1="update ";
    quer1.append(_TASKS);
    quer1.append(" set tsk_params='");
    quer1.append(pars);
    quer1.append("', tsk_class='");
    quer1.append(type);
     quer1.append("' where tsk_id='");
    quer1.append(id);
    quer1.append("'");
mysql_query(this->conn, quer1.c_str());
}

void wtdbcpp::apo(void)
{
    string quer1="UPDATE ";
    quer1.append(_USERS);
    quer1.append(" SET `u_act`=`u_act`-2 WHERE 1");
 mysql_query(this->conn, quer1.c_str());
}

void wtdbcpp::lgo(void)
{
    string quer1="UPDATE ";
    quer1.append(_USERS);
    quer1.append(" SET `u_act`=`u_act`+2 WHERE 1");
 mysql_query(this->conn, quer1.c_str());
}

void wtdbcpp::mapOper(string sid,string op,string old,string newn,string time)
{
string quer1="insert into ";
quer1.append(_MAPO);
quer1.append(" (`id`,`sid`,`operation`,`old`,`new`,`time`) VALUES (NULL , '");
quer1.append(sid);
quer1.append("','");
quer1.append(op);
quer1.append("','");
quer1.append(old);
quer1.append("','");
quer1.append(newn);
quer1.append("','");
quer1.append(time);
quer1.append("')");
mysql_query(this->conn, quer1.c_str());
}

void wtdbcpp::mapLoc(string mx,string my,string nm,string i,string g,string h,string o,string d,string v,string t,string n)
{
string quer1="select * from ";
quer1.append(_MAPL);
 quer1.append(" where i='");
 quer1.append(i);
 quer1.append("'");
mysql_query(this->conn, quer1.c_str());
this->result=mysql_store_result(this->conn);
 int num=(int)mysql_num_rows(this->result);
 mysql_free_result(this->result);
if(num==0)
{
quer1="insert into ";
quer1.append(_MAPL);
quer1.append("(`id`,`mapx`,`mapy`,`name`,`i`,`g`,`h`,`o`,`d`,`v`,`t`,`n`) VALUES(NULL ,'");
quer1.append(mx);
quer1.append("','");
quer1.append(my);
quer1.append("','");
quer1.append(nm);
quer1.append("','");
quer1.append(i);
quer1.append("','");
quer1.append(g);
quer1.append("','");
quer1.append(h);
quer1.append("','");
quer1.append(o);
quer1.append("','");
quer1.append(d);
quer1.append("','");
quer1.append(v);
quer1.append("','");
quer1.append(t);
quer1.append("','");
quer1.append(n);
quer1.append("')");
mysql_query(this->conn, quer1.c_str());
}
else
{
quer1="update ";
quer1.append(_MAPL);
quer1.append(" set `o`='");
quer1.append(o);
quer1.append("',`d`='");
quer1.append(d);
quer1.append("',`v`='");
quer1.append(v);
quer1.append("',`t`='");
quer1.append(t);
quer1.append("',`n`='");
quer1.append(n);
quer1.append("' where i='");
quer1.append(i);
quer1.append("'");
mysql_query(this->conn, quer1.c_str());
}
}

void wtdbcpp::mapSec(string v,string vkid,string name,string img,string reg,string level,string sectorname,
        string mapx,string mapy,string cspeed,string alliance,string ax,string ay,string si,
        string sid,string g,string h,string time)
{
string quer1="select * from ";
quer1.append(_MAPS);
 quer1.append(" where sid='");
 quer1.append(sid);
 quer1.append("'");
mysql_query(this->conn, quer1.c_str());
this->result=mysql_store_result(this->conn);
 int num=(int)mysql_num_rows(this->result);
 if(num>0)
 {
while ((this->rresult = mysql_fetch_row(this->result)) != NULL)
 {
     if(strcmp(this->rresult[3],name.c_str())!=0) this->mapOper(sid,"CHANGE_USERNAME",rresult[3],name,time);
     if(strcmp(this->rresult[7],sectorname.c_str())!=0) this->mapOper(sid,"CHANGE_SECTORNAME",rresult[7],sectorname,time);
     if(strcmp(this->rresult[12],ax.c_str())!=0) this->mapOper(sid,"CHANGE_ALLIANCE",rresult[12],ax,time);
 }
 mysql_free_result(this->result);

quer1="update ";
quer1.append(_MAPS);
quer1.append(" set `v`='");
quer1.append(v);
quer1.append("',`vkid`='");
quer1.append(vkid);
quer1.append("',`name`='");
quer1.append(name);
quer1.append("',`img`='");
quer1.append(img);
quer1.append("',`reg`='");
quer1.append(reg);
quer1.append("',`level`='");
quer1.append(level);
quer1.append("',`sectorname`='");
quer1.append(sectorname);
quer1.append("',`cspeed`='");
quer1.append(cspeed);
quer1.append("',`alliance`='");
quer1.append(alliance);
quer1.append("',`ax`='");
quer1.append(ax);
quer1.append("',`ay`='");
quer1.append(ay);
quer1.append("',`si`='");
quer1.append(si);
quer1.append("',`h`='");
quer1.append(h);
quer1.append("' where sid='");
quer1.append(sid);
quer1.append("'");
mysql_query(this->conn, quer1.c_str());
}

else
{
quer1="insert into ";
quer1.append(_MAPS);
quer1.append("(`id`,`v`,`vkid`,`name`,`img`,`reg`,`level`,`sectorname`,`mapx`,`mapy`,`cspeed`,`alliance`,`ax`,`ay`,`si`,`sid`,`g`,`h`) VALUES (NULL ,'");
quer1.append(v);
quer1.append("','");
quer1.append(vkid);
quer1.append("','");
quer1.append(name);
quer1.append("','");
quer1.append(img);
quer1.append("','");
quer1.append(reg);
quer1.append("','");
quer1.append(level);
quer1.append("','");
quer1.append(sectorname);
quer1.append("','");
quer1.append(mapx);
quer1.append("','");
quer1.append(mapy);
quer1.append("','");
quer1.append(cspeed);
quer1.append("','");
quer1.append(alliance);
quer1.append("','");
quer1.append(ax);
quer1.append("','");
quer1.append(ay);
quer1.append("','");
quer1.append(si);
quer1.append("','");
quer1.append(sid);
quer1.append("','");
quer1.append(g);
quer1.append("','");
quer1.append(h);
quer1.append("')");
mysql_query(this->conn, quer1.c_str());
}
}

void wtdbcpp::addSec(int sid,string vkid,string n,int lvl,int xp,int x,int y,int s,int b,string scheme)
{
string quer1="select * from ";
quer1.append(_MAPSECTORS);
 quer1.append(" where i='");
 quer1.append(this->itores(sid));
 quer1.append("'");
mysql_query(this->conn, quer1.c_str());
this->result=mysql_store_result(this->conn);
 int num=(int)mysql_num_rows(this->result);
mysql_free_result(this->result);
 if(num>0)
 {
quer1="update ";
quer1.append(_MAPSECTORS);
quer1.append(" set `id`='");
quer1.append(vkid);
quer1.append("',`n`='");
quer1.append(n);
quer1.append("',`lvl`='");
quer1.append(this->itores(lvl));
quer1.append("',`xp`='");
quer1.append(this->itores(xp));
quer1.append("',`mapx`='");
quer1.append(this->itores(x));
quer1.append("',`mapy`='");
quer1.append(this->itores(y));
quer1.append("',`s`='");
quer1.append(this->itores(s));
quer1.append("',`b`='");
quer1.append(this->itores(b));
quer1.append("',`scheme`='");
quer1.append(scheme);
quer1.append("' where i='");
quer1.append(this->itores(sid));
quer1.append("'");
mysql_query(this->conn, quer1.c_str());
}

else
{
quer1="insert into ";
quer1.append(_MAPSECTORS);
quer1.append("(`i`,`id`,`n`,`lvl`,`xp`,`mapx`,`mapy`,`s`,`b`,`scheme`) VALUES ('");
quer1.append(this->itores(sid));
quer1.append("','");
quer1.append(vkid);
quer1.append("','");
quer1.append(n);
quer1.append("','");
quer1.append(this->itores(lvl));
quer1.append("','");
quer1.append(this->itores(xp));
quer1.append("','");
quer1.append(this->itores(x));
quer1.append("','");
quer1.append(this->itores(y));
quer1.append("','");
quer1.append(this->itores(s));
quer1.append("','");
quer1.append(this->itores(b));
quer1.append("','");
quer1.append(scheme);
quer1.append("')");
mysql_query(this->conn, quer1.c_str());
}
}

wtdbcpp::~wtdbcpp()
{
     mysql_close(this->conn); //dtor
}

string wtdbcpp::getEngine(int thrd)
{
string quer1="select * from ";
quer1.append(_ENGINE);
 quer1.append(" where `id`%64=");
 quer1.append(this->itores(thrd));
 quer1.append(" limit 0,1;");
 int res=mysql_query(this->conn, quer1.c_str());
string rstr="{";
if(res==0)
{
this->result=mysql_store_result(this->conn);
while ((this->rresult = mysql_fetch_row(this->result)) != NULL)
 {
     rstr.append("\"x\":");
     rstr.append(rresult[1]);
     rstr.append(",\"y\":");
     rstr.append(rresult[2]);
     rstr.append(",\"id\":");
     rstr.append(rresult[0]);
     rstr.append("}");
 }
mysql_free_result(this->result);
}
return rstr;
}

void wtdbcpp::remEngine(string id)
{
    string quer1="delete from ";
    quer1.append(_ENGINE);
    quer1.append(" where `id`='");
    quer1.append(id);
    quer1.append("'");
mysql_query(this->conn, quer1.c_str());
}

int wtdbcpp::restoi(char* asd)
{
    std::stringstream ss(asd);
    int n;
    ss >> n;
    return n;
}

int wtdbcpp::restoi(string asd)
{
    std::stringstream ss(asd.c_str());
    int n;
    ss >> n;
    return n;
}

 string wtdbcpp::itores(int dsa)
 {
     std::stringstream ss;
     ss << dsa;
     string tmp=ss.str();
     return tmp;
 }



