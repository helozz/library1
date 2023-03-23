#define _E

#if defined _E
#define _EX extern
#else
#define _EX
#endif

#include "/home/helga/Рабочий стол/projects/_WTUpdater/defines.cpp"

#include <iostream>
#include <stdio.h>
#include <time.h>
#include <sys/time.h>
#include <sstream>
#include "/home/helga/Рабочий стол/projects/_WTUpdater/include/wtdbcpp.h"
#include "/home/helga/Рабочий стол/projects/_WTUpdater/include/tstacc.h"
#include "/home/helga/Рабочий стол/projects/_WTUpdater/include/TDdata.h"
#include <curl/curl.h>


 TDdata *tddata;
 wtdbcpp *dbqr;

using namespace std;


string convertInt(double number)
{
   stringstream ss;//create a stringstream
   ss.precision(13);
   ss << number;//add number to the stream
   return ss.str();//return a string with the contents of the stream
}

double microtime(){
     timeval tim;
     gettimeofday(&tim, NULL);
     return (tim.tv_sec+(tim.tv_usec/1000000.0))*1000;
}

void errorlog(string str0)
{
    double seconds;
    seconds = microtime();
    string secstr;
    secstr = convertInt(seconds);
    string str1;
    str1 = secstr;
    str1.append(" ");
    str1.append(str0);
    str1.append("\n");

    const char * str = str1.c_str ();
    string fff=_LOGS;
    fff.append("mainlog.txt");
    FILE* pFile = fopen(fff.c_str(), "a");
    if (pFile!=NULL)
  {
    fputs (str,pFile);
    fclose (pFile);
  }
}



int main()
{
 tddata=new TDdata();
 dbqr=new wtdbcpp();
 dbqr->setXXX();
//double time1=microtime();
int buff,cycle,num,crt,handle_count,msgs_left,stop,block,still_running,i,act,chron,oper;
string ver,ref,frnds="",frnds0="",frndsA="",name,auth,vkid,img,prox,prpwd,usrr,quer1,nick; // cybfrnds as additional friends

//errorlog("mark 1");
//var=1345;



//    string ww = "qwerty1000";
//    errorlog(ww);


///////////////////////////////////////////////////////////
//
// DB QUERIES
//
//

MYSQL_RES *vars;
MYSQL_ROW rvars;
quer1="select * from ";
quer1.append(_VARS);
mysql_query(dbqr->conn, quer1.c_str());
vars = mysql_use_result(dbqr->conn);

while ((rvars = mysql_fetch_row(vars)) != NULL)
{
ver=rvars[0];
ref=rvars[1];
buff=dbqr->restoi(rvars[4]);
cycle=dbqr->restoi(rvars[3]);
frndsA=rvars[5];
frnds0=rvars[6];
}
mysql_free_result(vars);

//cout<<buff<<cycle<<" "<<ver<<ref<<frnds0<<endl;

if (frndsA!="" && frnds0!="")
{
    frnds0=frnds0.append(",");
    frnds0=frnds0.append(frndsA);
}
else
{
    if(frndsA!="") frnds0=frndsA;
}

MYSQL_RES *timerlog;
MYSQL_ROW rtimerlog;
quer1="select * from ";
quer1.append(_TIMERLOG);
mysql_query(dbqr->conn, quer1.c_str());
timerlog = mysql_use_result(dbqr->conn);

while ((rtimerlog = mysql_fetch_row(timerlog)) != NULL)
{
oper=dbqr->restoi(rtimerlog[1]);
chron=oper%cycle;
}
mysql_free_result(timerlog);

//cout<<"  CHRON: "<<chron<<endl;

quer1="update ";
quer1.append(_TIMERLOG);
quer1.append(" set `operation`=`operation`+1");
mysql_query(dbqr->conn, quer1.c_str());

if(chron==0)
{
quer1="update ";
quer1.append(_OPTIONS);
quer1.append(" set `force`=`force`-1 where `force`>0");
mysql_query(dbqr->conn, quer1.c_str());

/*
string logs="0 accs in ";
logs.append(dbqr->itores(microtime()-time1));
logs.append(" msecs");
errorlog(logs);
*/

delete dbqr;
delete tddata;
return(0);
}
else
{
    chron--;
    cycle--;
}


MYSQL_RES *accounts;
MYSQL_ROW raccounts;
quer1="select * from ";
quer1.append(_ACCOUNTS);
quer1.append(",");
quer1.append(_USERS);
quer1.append(",");
quer1.append(_PROXIES);
quer1.append(",");
quer1.append(_OPTIONS);
quer1.append(" where ");
quer1.append(_USERS);
quer1.append(".u_act=1 and ");
quer1.append(_ACCOUNTS);
quer1.append(".a_soc=");
quer1.append(_OPTIONS);
quer1.append(".o_soc and ");
quer1.append(_ACCOUNTS);
quer1.append(".a_u_id<99 and ");
quer1.append(_ACCOUNTS);
quer1.append(".a_auth!='' and ");
quer1.append(_ACCOUNTS);
quer1.append(".a_soc=");
quer1.append(_PROXIES);
quer1.append(".p_a_soc and ");
quer1.append(_ACCOUNTS);
quer1.append(".a_u_id=");
quer1.append(_USERS);
quer1.append(".u_id and ((");
quer1.append(_ACCOUNTS);
quer1.append(".a_id%");
quer1.append(dbqr->itores(cycle));
quer1.append("=");
quer1.append(dbqr->itores(chron));
quer1.append(" and ");
quer1.append(_OPTIONS);
quer1.append(".type!=\'B\') OR (");
quer1.append(_OPTIONS);
quer1.append(".type!=\'R\' and ");
quer1.append(_OPTIONS);
quer1.append(".type!=\'B\' and ");
quer1.append(_OPTIONS);
quer1.append(".type!=\'P\' and ");
quer1.append(_ACCOUNTS);
quer1.append(".a_sid%5");
quer1.append(" = ");
quer1.append(dbqr->itores(oper%5));
quer1.append(") OR ");
quer1.append(_OPTIONS);
quer1.append(".first=1 OR (");
quer1.append(_OPTIONS);
quer1.append(".type=\'B\' and ");
quer1.append(_OPTIONS);
quer1.append(".alert=1))");
//cout<<quer1<<endl;
mysql_query(dbqr->conn, quer1.c_str());
accounts = mysql_store_result(dbqr->conn);

num=(int)mysql_num_rows(accounts);
//cout<<num<<" num"<<endl;

tstacc* accs[num];
string* accs0=new string[14*num];
int* accs1=new int[20*num];

i=0;
while ((raccounts = mysql_fetch_row(accounts)) != NULL)
 {
 //for (int f=0 ; f < mysql_num_fields(accounts); f++)
        //    cout<<f<<" "<<raccounts[f]<<endl;
accs0[i*14]=raccounts[4];
accs0[i*14+1]=raccounts[7];
accs0[i*14+2]=raccounts[16];
accs0[i*14+3]=ver;
accs0[i*14+4]=ref;
accs0[i*14+5]=raccounts[19];
accs0[i*14+6]=raccounts[22];
accs0[i*14+7]=raccounts[3];
accs0[i*14+8]=raccounts[5];
accs0[i*14+9]=frnds0;
accs0[i*14+10]=raccounts[1];
accs0[i*14+11]=raccounts[2];

accs0[i*14+12]=raccounts[25]; //type

accs0[i*14+13]=raccounts[6]; //seed

accs1[i*20]=dbqr->restoi(raccounts[26]);
accs1[i*20+1]=dbqr->restoi(raccounts[27]);
accs1[i*20+2]=dbqr->restoi(raccounts[28]);//ssid

accs1[i*20+17]=dbqr->restoi(raccounts[8]);
accs1[i*20+18]=dbqr->restoi(raccounts[9]);
accs1[i*20+19]=dbqr->restoi(raccounts[10]); //sid


int _F=dbqr->restoi(raccounts[43]);
int _U=(dbqr->restoi(raccounts[29]) && (((oper-chron-1)/(cycle+1))%dbqr->restoi(raccounts[40])==accs1[i*20+19]%2));
int _T=(dbqr->restoi(raccounts[31]) && (((oper-chron-1)/(cycle+1))%dbqr->restoi(raccounts[39])==accs1[i*20+19]%2));
int _B=(dbqr->restoi(raccounts[30]) && (((oper-chron-1)/(cycle+1))%dbqr->restoi(raccounts[37])==accs1[i*20+19]%2));
int _Q=(dbqr->restoi(raccounts[42]) && (((oper-chron-1)/(cycle+1))%dbqr->restoi(raccounts[41])==accs1[i*20+19]%2));
int _O=(dbqr->restoi(raccounts[44]) && (((oper-chron-1)/(cycle+1))%dbqr->restoi(raccounts[38])==accs1[i*20+19]%2));
int _D=(dbqr->restoi(raccounts[45]) && (((oper-chron-1)/(cycle+1))%dbqr->restoi(raccounts[38])==accs1[i*20+19]%2));
int _L=(dbqr->restoi(raccounts[34]) && (((oper-chron-1)/(cycle+1))%dbqr->restoi(raccounts[36])==accs1[i*20+19]%2));
int _S=(dbqr->restoi(raccounts[33]) && (((oper-chron-1)/(cycle+1))%dbqr->restoi(raccounts[35])==accs1[i*20+19]%2));
int _N=(((oper-chron-1)/(cycle+1))%(1440/(cycle+1))==0+accs1[i*20+19]%(120/(cycle+1)));
int _R=(dbqr->restoi(raccounts[46])==1);
int _A=dbqr->restoi(raccounts[47]);
int _BIO=dbqr->restoi(raccounts[32]);


int _ACT=((accs0[i*14+1]!="")&&(_F || _Q || _B || _U || _T || _O || _D || _N || _R || _A || _BIO || _L || _S || (!accs1[i*20+2] && (accs1[i*20] || accs1[i*20+1])) || !(accs1[i*20+17] || accs1[i*20+18]) || !accs1[i*20+19]));


accs1[i*20+3]=_F;
accs1[i*20+4]=_Q;
accs1[i*20+5]=_B;
accs1[i*20+6]=_U;
accs1[i*20+7]=_T;
accs1[i*20+8]=_O;
accs1[i*20+9]=_D;
accs1[i*20+10]=_N;
accs1[i*20+11]=_R;
accs1[i*20+12]=_A;
accs1[i*20+13]=_BIO;
accs1[i*20+14]=_L;
accs1[i*20+15]=_S;

accs1[i*20+16]=_ACT;

//cout<<accs0[i*14]<<" "<<accs0[i*14+7]<<" "<<accs0[i*14+5]<<endl;
//cout<<accs1[i*20]<<" "<<accs1[i*20+7]<<" "<<accs1[i*20+5]<<endl;

i++;
 }
mysql_free_result(accounts);

////if(num>0)num=1;////////////////////////////////
//cout<<"line 0"<<endl;
int nn=0;
for(i=0;i<num;i++)
{//cout<<"line -1"<<endl;
if(accs1[i*20+16]!=0)// && accs1[i*20+19]==251778)
{//cout<<"line -2 "<<num<<endl;


   accs[nn]=new tstacc(accs0[i*14],accs0[i*14+1],accs0[i*14+2],accs0[i*14+3],accs0[i*14+4],accs0[i*14+5],accs0[i*14+6],accs0[i*14+7],accs0[i*14+8],accs0[i*14+9],accs0[i*14+10],accs0[i*14+11],accs0[i*14+12],accs1[i*20],accs1[i*20+1],accs1[i*20+2],accs1[i*20+3],accs1[i*20+4],accs1[i*20+5],accs1[i*20+6],accs1[i*20+7],accs1[i*20+8],accs1[i*20+9],accs1[i*20+10],accs1[i*20+11],accs1[i*20+12],accs1[i*20+13],accs1[i*20+14],accs1[i*20+15],accs1[i*20+16],accs1[i*20+17],accs1[i*20+18],accs1[i*20+19],accs0[i*14+13]);
    nn++;
    //cout<<"line -3"<<endl;
}//cout<<"line -4"<<endl;
}

delete[] accs0;
delete[] accs1;

//cout<<"line 1"<<endl;
int num0=num; //test
num=nn;

///////////////////////////////////////////////////////////
//
// CURL
//
//

//errorlog("mark 2");

CURLMsg *msg; /* for picking up messages with the transfer status */
//msgs_left; /* how many messages are left */
CURLM* multi_handle = curl_multi_init();
handle_count = 0;


if(num<buff) crt=num;
else crt=buff;
//cout<<"line 2"<<endl;
//cout<<crt<<endl;


for(i=0;i<crt;i++)
{
   curl_multi_add_handle(multi_handle, accs[i]->curl);
}



//cout<<"line 3"<<endl;
int incaut=0;
 stop=0;
 block=1;
 still_running=0;
//cout<<"line 1"<<endl;

do {
    //cout<<"line 2    "<<endl;
CURLMcode result=CURLM_OK;
while((result=curl_multi_perform(multi_handle, &still_running)) ==
CURLM_CALL_MULTI_PERFORM);
if(result!= CURLM_OK) break;
stop=1;
//cout<<"line 3"<<endl;
 while ((msg=curl_multi_info_read(multi_handle, &msgs_left))) {
//cout<<"line 4"<<endl;

//errorlog("mark 3");
 if (msg->msg == CURLMSG_DONE) {

      int idx, found = 0;
     //  Find out which handle this message is about *//*
      for (idx=0; idx<num; idx++) {//////////////////////////////////////////////////////////////

      if(accs[idx]->state<1000) stop=0;

        found = (msg->easy_handle == accs[idx]->curl);

        if(found)
        {
    ///////////////////////    cout<<msg->data.result<<" "<<idx<<"  "<<endl;
      //accs[idx]->print();
      //accs[idx]->print();

     if((msg->data.result==52 || msg->data.result==56 || msg->data.result==7) && strcmp(accs[idx]->gvars->method.c_str(),"SignIn")==0)
   {//cout<<"NUM: 4 :"<<idx<<endl;
       accs[idx]->state=-100;
   }
   if(msg->data.result==28 && strcmp(accs[idx]->gvars->method.c_str(),"SignIn")==0)
   {//cout<<"NUM: 5 :"<<idx<<endl;
       if(crt+1<=num)
        {
            curl_multi_add_handle(multi_handle, accs[crt]->curl);
            crt++;
        }
        curl_multi_remove_handle(multi_handle, msg->easy_handle);

   }

     int resulttt= accs[idx]->game_set();

       if(resulttt==-2)
       {
        if(incaut>1)
        {
        curl_multi_cleanup(multi_handle);
        dbqr->apo();
        delete dbqr;
        delete tddata;
        return 0;
        }
        incaut++;
       }
       if(resulttt==-1)
       {
        curl_multi_cleanup(multi_handle);
        dbqr->apo();
        delete dbqr;
        delete tddata;
        return 0;
       }
       if(resulttt==1)
       {//cout<<"NUM: 6 :"<<idx<<endl;
        curl_multi_add_handle(multi_handle, accs[idx]->curl);
        curl_multi_remove_handle(multi_handle, msg->easy_handle);
       // cout<<"res: "<<resulttt<<" crt: "<<crt<<" num: "<<num<<endl;
       }
       if(resulttt==0 && !(msg->data.result==28 && strcmp(accs[idx]->gvars->method.c_str(),"SignIn")==0))
       {//cout<<"NUM: 7 :"<<idx<<endl;
        if(crt+1<=num)
        {
           // cout<<"res: "<<resulttt<<" crt: "<<crt<<" num: "<<num<<endl;
            curl_multi_add_handle(multi_handle, accs[crt]->curl);
            crt++;
        }
        curl_multi_remove_handle(multi_handle, msg->easy_handle);
       }

        break;
        }

      }
 }
 }



  struct timeval timeout;

  fd_set fdread;
  fd_set fdwrite;
  fd_set fdexcep;
  int maxfd = -1;

  long curl_timeo = -1;

  FD_ZERO(&fdread);
  FD_ZERO(&fdwrite);
  FD_ZERO(&fdexcep);

  timeout.tv_sec = 1;
  timeout.tv_usec = 0;

  curl_multi_timeout(multi_handle, &curl_timeo);
  if(curl_timeo >= 0) {
   timeout.tv_sec = curl_timeo / 1000;
   if(timeout.tv_sec > 1)
    timeout.tv_sec = 1;
   else
    timeout.tv_usec = (curl_timeo % 1000) * 1000;
  }

  curl_multi_fdset(multi_handle, &fdread, &fdwrite, &fdexcep, &maxfd);

  int rc = select(maxfd+1, &fdread, &fdwrite, &fdexcep, &timeout);




} while (still_running || stop==0);


//cout<<"NUM: 0"<<endl;
curl_multi_cleanup(multi_handle);

//cout<<"NUM:"<<num0<<"   NN:"<<nn<<endl;
/*
string logs=dbqr->itores(num0);
logs.append(" accs in ");
logs.append(dbqr->itores(microtime()-time1));
logs.append(" msecs");
errorlog(logs);
*/
//cout<<microtime()-time1<<endl;

delete dbqr;
delete tddata;

////cout<<"\nmsecs: "<<microtime()-time1<<endl;
    return 0;
}
