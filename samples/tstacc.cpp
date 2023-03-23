#include "/home/helga/Рабочий стол/projects/_WTUpdater/include/tstacc.h"

int writer(char *, size_t , size_t , string* );

string tstacc::toHex(const char *pchData, int count)
{
    std::string sqw;
    for(int i=0; i<count; ++i) {
        unsigned char ch = pchData[i];
        unsigned char lo = ch%16;
        unsigned char hi = ch/16;
        sqw.push_back((hi<10)?(hi+0x30):(hi+87));
        sqw.push_back((lo<10)?(lo+0x30):(lo+87));
    }
    return sqw;
}

string tstacc::md5(string strr)
{
    MD5_CTX Md5Ctx;
    const int hash_length = 16;
    char hash[hash_length];
    std::string input_string;
    std::string hash_string_v2;

        input_string.append(strr);
        MD5_Init(&Md5Ctx);
        MD5_Update(&Md5Ctx, (unsigned char *)input_string.c_str(), input_string.size());
        MD5_Final((unsigned char *)hash, &Md5Ctx);
        hash_string_v2 = this->toHex(hash, hash_length);
    return hash_string_v2;
}

string tstacc::sign()
{
    string sttr="The Matrix has you...";
    sttr.append(this->gvars->topost);
    sttr.append(this->gvars->method);
    sttr.append(this->gvars->vkid);
    sttr.append(this->gvars->auth);
return this->md5(sttr);
}

tstacc::tstacc(string vkid,string auth,string frnds,string ver,string ref,string prox,string prpwd,string name,string img,string fr0,string usrr,string nick,string type,int ssx,int ssy,int ssid,int _F,int _Q,int _B,int _U,int _T,int _O,int _D,int _N,int _R,int _A,int _BIO,int _L,int _S,int _ACT,int sx,int sy,int sid,string seed)
{
this->state=0;
this->gvars=new game(vkid,auth,frnds,ver,ref,prox,prpwd,name,img,fr0,usrr,nick,type,ssx,ssy,ssid,_F,_Q,_B,_U,_T,_O,_D,_N,_R,_A,_BIO,_L,_S,_ACT,sx,sy,sid,seed);
this->curl_set();
}

int tstacc::curl_set()
{
    this->buffer="";

    this->curl = curl_easy_init();
    if (this->curl && (this->gvars->_ACT!=0))
    {
      //задаем все необходимые опции
      //определяем, куда выводить ошибки
      curl_easy_setopt(this->curl, CURLOPT_ERRORBUFFER, errorBuffer);
      //указываем функцию обратного вызова для записи получаемых данных
      curl_easy_setopt(this->curl, CURLOPT_WRITEFUNCTION, this->writer);
      //указываем куда записывать принимаемые данные
      curl_easy_setopt(this->curl, CURLOPT_WRITEDATA, &buffer);
      curl_easy_setopt(this->curl, CURLOPT_ENCODING, "deflate");
      //задаем опцию отображение заголовка страницы
      curl_easy_setopt(this->curl, CURLOPT_HEADER, 0);
      curl_easy_setopt(this->curl, CURLOPT_USERAGENT, "Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)");
      curl_easy_setopt(this->curl,CURLOPT_POST,1);
      curl_easy_setopt(this->curl,CURLOPT_CONNECTTIMEOUT,20);
      curl_easy_setopt(this->curl,CURLOPT_PROXY,this->gvars->prox.c_str());
      curl_easy_setopt(this->curl,CURLOPT_PROXYUSERPWD,this->gvars->prpwd.c_str());
      curl_easy_setopt(this->curl,CURLOPT_POSTFIELDS,this->gvars->topost.c_str());

// формируем хедеры
    curl_slist *headers=NULL;
    string tmp="Referer: ";
    tmp=tmp.append(this->gvars->ref);
    headers = curl_slist_append(headers, tmp.c_str());
    tmp="Content-type: text/html";
    headers = curl_slist_append(headers, tmp.c_str());
    tmp="sign-code: ";
    tmp=tmp.append(this->sign());
    headers = curl_slist_append(headers, tmp.c_str());
    tmp="locale-name: ru-RU";
	headers = curl_slist_append(headers, tmp.c_str());

    if(strcmp(this->gvars->seed.c_str(),"")!=0)
    {
    tmp="signin-authSeed: ";
    tmp=tmp.append(this->gvars->seed);
    headers = curl_slist_append(headers, tmp.c_str());
    }

    tmp="signin-authKey: ";
    tmp=tmp.append(this->gvars->auth);
    headers = curl_slist_append(headers, tmp.c_str());
    tmp="signin-userId: ";
    tmp=tmp.append(this->gvars->vkid);
    headers = curl_slist_append(headers, tmp.c_str());
    tmp="server-method: ";
    tmp=tmp.append(this->gvars->method);
    headers = curl_slist_append(headers, tmp.c_str());
    tmp="client-ver: ";
    tmp=tmp.append(this->gvars->ver);
    headers = curl_slist_append(headers, tmp.c_str());

      curl_easy_setopt(this->curl,CURLOPT_HTTPHEADER,headers);
      curl_easy_setopt(this->curl, CURLOPT_URL, this->gvars->currserver.c_str());
  return 1;
  }
  else return 0;
}

int tstacc::game_set(void)
{
if(strcmp(this->gvars->method.c_str(),"SignIn")==0)
   {
       unsigned int indx1=this->buffer.rfind("},\"f\":[");
       if(indx1!=string::npos) this->buffer.replace(indx1+1,this->buffer.length()-indx1-1,"}");
   }

this->state=this->gvars->game_parse(this->buffer,this->state);

if(this->state<1000)
{
this->curl_set();
return 1;
}
if(this->state==2000) return -1;
if(this->state==3000) return -2;
return 0;
}

tstacc::~tstacc()
{//завершаем сессию
curl_easy_cleanup(this->curl);//dtor
delete this->gvars;
}

int tstacc::writer(char *data, size_t size, size_t nmemb, string *buffer)
{
  //переменная - результат, по умолчанию нулевая
  int result = 0;
  //проверяем буфер
  if (buffer != NULL)
  {
    //добавляем к буферу строки из data, в количестве nmemb
    buffer->append(data, size * nmemb);
    //вычисляем объем принятых данных
    result = size * nmemb;
  }
  //вовзращаем результат
  return result;
}

void tstacc::print(void)
{
cout<<tstacc::buffer<<endl;
}

