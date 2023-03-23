#include "/home/helga/Рабочий стол/projects/_WTUpdater/include/game.h"

game::game(string vkid,string auth,string frnds,string ver,string ref,string prox,string prpwd,string name,string img,string fr0,string usrr,string nick,string type,int ssx,int ssy,int ssid,int _F,int _Q,int _B,int _U,int _T,int _O,int _D,int _N,int _R,int _A,int _BIO,int _L,int _S,int _ACT,int sx,int sy,int sid,string seed)
{
this->scheme="";
this->messg="";

this->currserver=_GMSRV;
this->zeroserver=_GMSRV;

this->vkid=vkid;
this->auth=auth;
this->name=name;
this->img=img;
this->prox=prox;
this->prpwd=prpwd;
this->ver=ver;
this->ref=ref;
this->usrr=usrr;
this->nick=nick;
this->friender(fr0,frnds);
this->type=type;
this->seed=seed;

this->sx=sx;
this->sy=sy;
this->sid=sid;
this->ssx=ssx;
this->ssy=ssy;
this->ssid=ssid;

this->_ACT=_ACT;
this->_F=_F;
this->_Q=_Q;
this->_B=_B;
this->_U=_U;
this->_T=_T;
this->_O=_O;
this->_D=_D;
this->_N=_N;
this->_R=_R;
this->_A=_A;
this->_BIO=_BIO;
this->_L=_L;
this->_S=_S;

this->realfr=dbqr->getRealFriends(this->usrr,dbqr->itores(this->sid));

this->addFt=0;

this->doSingIn();

//cout<<this->name<<" "<<this->vkid<<" "<<this->prox<<" ACT:"<<this->_ACT<<" L:"<<this->_L<<" U:"<<this->_U<<" T:"<<this->_T<<" D:"<<this->_D<<" O:"<<this->_O<<" B:"<<this->_B<<" A:"<<this->_A<<" R:"<<this->_R<<" F:"<<this->_F<<" Q:"<<this->_Q<<" N:"<<this->_N<<endl;

}


game::~game()
{
this->qarr.erase(this->qarr.begin(),this->qarr.end());
this->builds.erase(this->builds.begin(),this->builds.end());
this->unitsb.erase(this->unitsb.begin(),this->unitsb.end());
this->sectarmy.erase(this->sectarmy.begin(),this->sectarmy.end());
this->drafts.erase(this->drafts.begin(),this->drafts.end());
this->techs.erase(this->techs.begin(),this->techs.end());
this->lims.erase(this->lims.begin(),this->lims.end());
this->skills.erase(this->skills.begin(),this->skills.end());
    //dtor
}



int game::game_parse(string responce, int st)
{
Json::Reader reader;
Json::Value gameobj;
int indxa=responce.rfind("to validate");
responce.replace(0,responce.find("{"),"");
int indx=responce.rfind("}");
responce.replace(indx+1,responce.length()-indx-1,"");

char zzz=5;
int indxe=0;
while((indxe=responce.find(zzz))>=0)
{
    responce.replace(indxe,1,"");
}


/*
for(int i=1;i<21;i++)
{
    char zzz=i;
    int t=responce.find(zzz);
    cout<<t<<endl;
}
*/

 //cout<<responce<<endl;

    if(!reader.parse(responce.c_str(), gameobj))
    {
       // cout<<responce<<endl;
        /*
        string m1="Parse json error: ";
        m1.append(this->vkid);
        m1.append(": ");
        m1.append(this->method);
        m1.append(": ");
        m1.append(responce);
        m1.append("\n");
        errorlog(m1);
        */

        if(st==0)
        {
        //if(this->_R==1) dbqr->forceSet(this->vkid,2);
        return 1000;
        }
        if(st==-100)
        {
        return 0;
        }

        return this->next(st);
    }
    else
    {
        if(gameobj.isMember("m"))
        {
            this->messg="";
        if(gameobj["c"].asInt()==-6)
        {
            string ulog=dbqr->recognizeUser(this->usrr);
            string mess=_MSGBANI1;
            mess.append("<a href=\"upacc.php?uid=");
            mess.append(this->vkid);
            mess.append("\">");
            mess.append(this->name);
            mess.append("(");
            mess.append(this->nick);
            mess.append(")</a>");
            mess.append(_MSGBANI2);
            dbqr->internMessage(ulog,this->vkid,mess);
            return 1000;
        }
         if(gameobj["c"].asInt()==-3)
        {
            string ulog=dbqr->recognizeUser(this->usrr);
            string mess=_MSGBANM1;
            mess.append("<a href=\"tw_page.php?uid=");
            string vkidd=this->vkid;
            vkidd.replace(0,2,"");
            mess.append(vkidd);
            mess.append("\">");
            mess.append(this->name);
            mess.append("(");
            mess.append(this->nick);
            mess.append(")</a>");
            mess.append(_MSGBANM2);
            dbqr->internMessage(ulog,this->vkid,mess);
            return 1000;
        }
        if(gameobj["c"].asInt()==0 && indxa>0)
        {
            string ulog=dbqr->recognizeUser(this->usrr);
            string mess=_MSGAUT1;
            mess.append("<a href=\"upacc.php?uid=");
            mess.append(this->vkid);
            mess.append("\">");
            mess.append(this->name);
            mess.append("(");
            mess.append(this->nick);
            mess.append(")</a>");
            mess.append(_MSGAUT2);
            dbqr->internMessage(ulog,this->vkid,mess);
            return 3000;
        }
        if(gameobj["c"].asInt()==99)
        {
            string mess="Смена версии клиента!";
            dbqr->internMessage("14228555",this->vkid,mess);
            dbqr->internMessage("14569359",this->vkid,mess);
            dbqr->apo();
            return 2000;
        }
        string m1="Game error: ";
        m1.append(this->vkid);
        m1.append(": ");
        m1.append(this->method);
        m1.append(": ");
        m1.append(this->topost);
        m1.append(": ");
        m1.append(responce);
        m1.append("\n");

        errorlog(m1);
        if(st==0)
        {
        if(this->_R==1) dbqr->forceSet(this->vkid,2);
        return 1000;
        }
        else
        {
        if(strcmp(this->lasttask.c_str(),"")!=0) // add error codes here
        {

            dbqr->remTask(this->lasttask);
            this->lasttask="";
        }
        }

		if(strcmp(this->wildid.c_str(),"")!=0 )
		{
		if(gameobj["c"].asInt()==905)
		{
		    dbqr->updtTask(this->wildid,this->wildpar1,this->wildcls0);
		}
		else
		{
		if(gameobj["c"].asInt()==506)
		{
		    dbqr->remTask(this->wildid);
		}
		else
		{
		    dbqr->updtTask(this->wildid,this->wildpar0,this->wildcls0);
		}
		}
            this->wildpar="";
			this->wildid="";
			this->wildcls0="";
			this->wildcls="";
			this->wildpar0="";
			this->wildpar1="";
		}

        return this->next(st);
        }
        else
        {
            if(strcmp(this->messg.c_str(),"")!=0)
            {
            string ulog=dbqr->recognizeUser(this->usrr);
            dbqr->internMessage(ulog,this->vkid,this->messg);
            this->messg="";
            }
            if(strcmp(this->lasttask.c_str(),"")!=0)
            {
            dbqr->remTask(this->lasttask);
            this->lasttask="";
            }
//cout<<"state: "<<st<<" vkid: "<<this->vkid<<"  server: "<< this->currserver<<endl;
//cout<<this->topost<<endl;
        switch (st) /////////////////////////////////////////////////////////////////////////
        {
            case 0:
            {
            if(gameobj.isMember("r"))
            {
                this->currserver="http://";

                this->currserver.append(gameobj["r"].asString());
               this->currserver.append("/segment.ashx");
            return 0;
            }
            else
            {
            if(gameobj.isMember("a"))
            {
                for(unsigned int ssr=0;ssr<gameobj["a"].size();ssr++)
                {
                    string tmsr="http://";
                    tmsr.append(gameobj["a"][ssr].asString());
                    tmsr.append("/segment.ashx");
                    this->servers.push_back(tmsr);
                }
            }

            if(gameobj.isMember("i"))
            {
                this->ownsrv=gameobj["i"].asInt();
            }
//cout<<this->servers[this->ownsrv]<<endl;
            this->SG=0;
            this->u=gameobj["t"].asDouble();
            this->SG=this->microtime()-this->u;

            this->s=gameobj["i"].asInt();
            this->parseG(gameobj["u"]["g"]);

            //cout<<this->convertInt(this->u)<<" "<< this->convertInt(this->microtime()-this->u)<<endl;

            if(this->sid==0)  // установка sid
            {
            if(this->_F==1) this->addFt=1;
            this->sid=gameobj["u"]["i"].asInt();
            dbqr->updtSID(this->vkid,this->sid);
            }

            return this->next(st);
            }
            }; break;

            case 10:
            {

            this->parseGM(gameobj,0);
            return this->next(st);
            }; break;
            case 20:
            {

            return this->next(st);
            }; break;
            case 25:
            {
            if(gameobj.isMember("g"))
            {
            this->parseG(gameobj["g"]);
            }
            else this->parseO(gameobj);

            return this->next(st);
            }; break;
            case 27:
            {
            dbqr->remTask(this->lasttask);
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
            return this->next(st);
            }; break;
            case 30:
            {
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);

            return this->next(st);
            }; break;
            case 40:
            {
            dbqr->remTask(this->lasttask);
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);

            return this->next(st);
            }; break;
            case 55:
            { // обработка buyExtension
//cout<<responce<<endl;
            this->squares+=4;
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
            return this->next(st);
            }; break;
            case 60:
            { // обработка F-таска
                //this->errorlog(this->topost);
                //cout<<" method: "<<this->method<<endl;
                if(strcmp(this->method.c_str(),"TradingOffers.AddOffer")==0)
                {
                string offernum="1";
                if(gameobj.isMember("g"))
                {
                    offernum=this->convertInt(gameobj["g"]["rd"]["o"][gameobj["g"]["rd"]["o"].size()-1]["i"].asInt());
                }
                if(gameobj.isMember("o"))
                {
                    offernum=this->convertInt(gameobj["o"].asInt());
                }
                //cout<<offernum<<endl;
                dbqr->addTask(this->vkid,"F","RemOffer",offernum);
                }

            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);

            return this->next(st);
            }; break;

            case 67:
            { // обработка BuyBuild
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);

            return this->next(st);
            }; break;
            case 68:
            { // обработка SaveScene
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
            return this->next(st);
            }; break;
            case 75:
            {
                // T
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
            return this->next(st);
            }; break;
             case 77:
            {
                // L
            dbqr->remTask(this->lasttask);
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
            return this->next(st);
            }; break;
            case 83:
            {
                // P
            dbqr->remTask(this->lasttask);
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
            return this->next(st);
            }; break;
            case 86:
            {
                // B
            dbqr->remTask(this->lasttask);
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
            return this->next(st);
            }; break;
            case 84:
            { // обработка buyExtension
			this->squares+=4;
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
            return this->next(st);
            }; break;
            case 89:
            { // обработка SaveScene
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
            return this->next(st);
            }; break;
            case 90:
            {

            return this->next(st);
            }; break;
            case 100:
            {
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);

            return this->next(st);
            }; break;
            case 110:
            {

            return this->next(st);
            }; break;
            case 120:
            {
            dbqr->remTask(this->lasttask);
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);

            return this->next(st);
            }; break;
            case 126:
            {
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
            return this->next(st);
            }; break;
            case 130:
            {

            return this->next(st);
            }; break;
            case 140:
            {
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
            return this->next(st);
            }; break;
            case 150:
            {
            this->cybfr--;
            if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
            return this->next(st);
            }; break;
			case 170:
            {

            return this->next(st);
            }; break;
			case 180:
            {
            if(gameobj.isMember("g") && strcmp(this->offer.c_str(),"")!=0)
			{
			if(strcmp(this->offer.c_str(),"")!=0)
			{
			string parss=this->usrr;
			parss.append(",");
			parss.append(this->convertInt(this->sid));
			parss.append(",");
			parss.append(this->offer);
			parss.append(",");
			if(gameobj["g"]["rd"]["o"].size()>0) parss.append(this->convertInt(gameobj["g"]["rd"]["o"][gameobj["g"]["rd"]["o"].size()-1]["t"].asDouble()));
			parss.append(",");
			if(gameobj["g"]["rd"]["o"].size()>0) parss.append(this->convertInt(gameobj["g"]["rd"]["o"][gameobj["g"]["rd"]["o"].size()-1]["i"].asInt()));
			parss.append(",");
			parss.append(this->convertInt(this->tr_s,1));
			dbqr->addTask("wildcard","X","AcceptOffer", parss);
			}
			}
			else
			{
			if(strcmp(this->offer.c_str(),"")!=0)
			{
            if(gameobj.isMember("v")) this->r=gameobj["v"].asInt();
			string parss=this->usrr;
			parss.append(",");
			parss.append(this->convertInt(this->sid));
			parss.append(",");
			parss.append(this->offer);
			parss.append(",");
			if(gameobj.isMember("n")) parss.append(this->convertInt(gameobj["n"].asDouble()));
			parss.append(",");
			if(gameobj.isMember("o")) parss.append(this->convertInt(gameobj["o"].asInt()));
			parss.append(",");
			parss.append(this->convertInt(this->tr_s,1));
			dbqr->addTask("wildcard","X","AcceptOffer", parss);
			}
			}
			this->offer="";

			this->carrem-=1;
				vector<string> allrt=this->split(this->altr,':');
				allrt[5]+=1;
				this->altr=allrt[0];
				this->altr.append(":");
				this->altr.append(allrt[1]);
				this->altr.append(":");
				this->altr.append(allrt[2]);
				this->altr.append(":");
				this->altr.append(allrt[3]);
				this->altr.append(":");
				this->altr.append(allrt[4]);
				this->altr.append(":");
				this->altr.append(allrt[5]);

			if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            return this->next(st);
            }; break;

			case 190:
            {
			if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
			if(strcmp(this->wildid.c_str(),"")!=0) dbqr->updtTask(this->wildid,this->wildpar,this->wildcls);
			this->crem--;
			this->wildpar="";
			this->wildid="";
			this->wildcls0="";
			this->wildcls="";
			this->wildpar0="";
			this->wildpar1="";
            return this->next(st);
            }; break;

			case 200:
            {
			if(strcmp(this->wildid.c_str(),"")!=0) dbqr->remTask(this->wildid);
			this->wildpar="";
			this->wildid="";
			this->wildcls0="";
			this->wildcls="";
			this->wildpar0="";
			if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
            return this->next(st);
            }; break;

			case 210:
            {
			if(gameobj.isMember("g")) this->parseG(gameobj["g"]);
            else this->parseO(gameobj);
			return this->next(st);
            }; break;


        } ////////////////////////////////////////////////////////////////////////////////
        }
    }

return 1000;
}


int game::next(int sta)
{//cout<<this->vkid<< "  "<<sta<<" -3 "<<endl;
    switch (sta)
    {
        case 0:
        {
		if(this->ssid==0 && this->ssx==0 && this->ssy==0 && this->buildingExists(150)!=0)
        {
            this->ssx=this->sx;
            this->ssy=this->sy;
            dbqr->updtSS(this->vkid,this->sx,this->sy,this->sid);
        }
        if(this->ssid==0 && this->ssx==this->sx && this->ssy==this->sy && this->buildingExists(150)!=0)
        {
            this->ssid=this->sid;
            dbqr->updtSSID(this->vkid,this->ssid);
            return this->next(20);
        }
        if(this->ssid==0 && (this->ssx!=0 || this->ssy!=0))
        {
            this->doGetId();
            return 10;
        }
        return this->next(20);
        };  break;
        case 10:
        {

        return this->next(20);
        }; break;
        case 20:
        {
           // cout<<"addFt: "<<this->addFt<<endl;
        if(this->addFt==1)
        {
            //cout<<"20:  addFt==1"<<endl;

        if(this->rtc==5) this->scheme=dbqr->getSectorT();
        else this->scheme=dbqr->getSectorU();
        this->cutScheme();
        this->applyScheme();
        this->doSaveScene();
        return 25;
        }
        return this->next(27);
        }; break;
        case 25:
        {//cout<<this->scheme<<endl;
        // задания для автозастройки
        this->setFTasks();
        return this->next(27);
        }; break;
        case 27:
        {
        // Q-tasks
        string ttask=dbqr->getTask(this->vkid,"Q");
        Json::Reader treader;
        Json::Value taskobj;
        if(!treader.parse(ttask.c_str(), taskobj)) return this->next(30);
        else
        {
        if(taskobj.isMember("id"))
        {
            int trd=0;
            if(strcmp(taskobj["type"].asString().c_str(),"TryQuest")==0)
        {
            vector<string> pars=this->split(taskobj["par"].asString(),',');
            trd=this->doTryQuest(dbqr->restoi(pars[0]),dbqr->restoi(pars[1]));
        }
        if(trd==1)
        {
            this->lasttask=taskobj["id"].asString();
            return 27;
        }
        }
        }
        return this->next(30);
        }; break;
        case 30:
        {
        //    this->_Q=1;
         //   cout<<"quest array count: "<<this->qarr.size()<<endl;
        // автоквесты
        if((this->_F==1 || this->_Q==1) && this->qarr.size()>0)
        {
        if(this->qarr[this->qarr.size()-1]==0) this->doStartQuest(this->qarr[this->qarr.size()-2]);
        if(this->qarr[this->qarr.size()-1]==9) this->doCloseQuest(this->qarr[this->qarr.size()-2]);

        //cout<<this->qarr[this->qarr.size()-1]<<"   "<<this->qarr[this->qarr.size()-2]<<endl;

        this->qarr.pop_back();
        this->qarr.pop_back();
        return 30;
        }
        return this->next(40);
        }; break;
        case 40:
        {
        // имя сектора
        string ttask=dbqr->getTask(this->vkid,"C");
        Json::Reader treader;
        Json::Value taskobj;
        if(!treader.parse(ttask.c_str(), taskobj)) return this->next(50);
        else
        {
        if(taskobj.isMember("id"))
        {
        this->doSectorName(taskobj["par"].asString());
        this->lasttask=taskobj["id"].asString();
        return 40;
        }
        }
        return this->next(50);
        }; break;

        case 50:
        { // F - tasks
        if(this->_F==1)
        {
        string ftask=dbqr->getTask(this->vkid,"F");
        Json::Reader treader;
        Json::Value taskobj;
        if(!treader.parse(ftask.c_str(), taskobj)) return this->next(60);
        else
        {
        if(taskobj.isMember("id"))
        {
        // задания на автозастройку
       int trd=0;
        if(strcmp(taskobj["type"].asString().c_str(),"BuyBuild")==0)
        {
            vector<string> pars=this->split(taskobj["par"].asString(),',');
            trd=this->doBuyBuild(dbqr->restoi(pars[0]),dbqr->restoi(pars[3]),dbqr->restoi(pars[4]),dbqr->restoi(pars[1]),dbqr->restoi(pars[2]),"false");
        }
        if(strcmp(taskobj["type"].asString().c_str(),"BuyTech")==0)
        {
            vector<string> pars=this->split(taskobj["par"].asString(),',');
            trd=this->doBuyTech(dbqr->restoi(pars[0]),dbqr->restoi(pars[1]));
        }
        if(strcmp(taskobj["type"].asString().c_str(),"BuyUnit")==0)
        {
            vector<string> pars=this->split(taskobj["par"].asString(),',');
            trd=this->doBuyUnit(dbqr->restoi(pars[0]),dbqr->restoi(pars[1]));
        }
        if(strcmp(taskobj["type"].asString().c_str(),"TryQuest")==0)
        {
            vector<string> pars=this->split(taskobj["par"].asString(),',');
            trd=this->doTryQuest(dbqr->restoi(pars[0]),dbqr->restoi(pars[1]));
        }
        if(strcmp(taskobj["type"].asString().c_str(),"AddOffer")==0)
        {
            vector<string> pars=this->split(taskobj["par"].asString(),',');
            trd=this->doAddOffer(dbqr->restoi(pars[0]),dbqr->restoi(pars[1]),pars[2],pars[3]);
        }
        if(strcmp(taskobj["type"].asString().c_str(),"RemOffer")==0)
        {
            vector<string> pars=this->split(taskobj["par"].asString(),',');
            trd=this->doRemOffer(dbqr->restoi(pars[0]));
        }
        if(trd==1)
        {
            this->lasttask=taskobj["id"].asString();
            return 60;
        }
        }
        else
        {
        // отключение автозастройки
        dbqr->firstOff(this->vkid);
        if(this->buildingExists(150)==0) dbqr->addTask(this->vkid,"P","BuyBuild","-1,55,55,150,1");

        string ulog=dbqr->recognizeUser(this->usrr);
        string mess=_MSGFEND1;
            mess.append("<a href=\"autob.php?uid=");
            string vkidd=this->vkid;
            vkidd.replace(0,2,"");
            mess.append(vkidd);
            mess.append("\">");
            mess.append(this->name);
            mess.append("(");
            mess.append(this->nick);
            mess.append(")</a>");
            mess.append(_MSGFEND2);
            dbqr->internMessage(ulog,this->vkid,mess);
        return this->next(55);
        }
        }
        }
        return this->next(70);
        }; break;

        case 55:
        {
        // расширение после застройки
        if(this->squares<_ENumber)
        {
            int rd=this->doExtend();
            if(rd==1) return 55;
        }
        return this->next(65);
        }; break;
        case 65:
        {
        //
        if(this->buildingExists(137)==0) // не строим пока!!!
        {
            this->doBuyBuild(-1,137,1,50,50,"false");

            struct building tyuih;


            tyuih.i=this->builds.size()+1;
            tyuih.t=137;
            tyuih.l=0;
            tyuih.x=50;
            tyuih.y=50;
            tyuih.m=0;
            tyuih.b=1;

            this->builds.push_back(tyuih);
            /*
            this->builds.push_back(building());
            this->builds[this->builds.size()-1].i=this->builds.size();
            this->builds[this->builds.size()-1].t=137;
            this->builds[this->builds.size()-1].l=0;
            this->builds[this->builds.size()-1].x=50;
            this->builds[this->builds.size()-1].y=50;
            this->builds[this->builds.size()-1].m=0;
            this->builds[this->builds.size()-1].b=1;
            */
        }

        return 67;
        }; break;
        case 67:
        {
        //
        this->scheme="";
        do
        {
          if(this->rtc==5)  this->scheme=dbqr->getScheme(this->vkid,"T");
          else this->scheme=dbqr->getScheme(this->vkid,"U");
        } while(strcmp(this->scheme.c_str(),"")==0);
        //cout<<this->scheme<<endl;
        this->cutScheme();
        this->applyScheme();
        this->doSaveScene();

        return 68;
        }; break;
        case 68:
        {
        this->setBTasks();
        return this->next(70);
        }; break;
        case 60:
        {
        //
        return this->next(70);
        }; break;
        case 70:
        {
        // Автотехнологии
        if(this->_T==1 && this->_F==0 && this->blockt==1)
        {
        int tset=0;
        int tech2l=this->learnIt();
        if(tech2l>0)
        {
           tset=this->doBuyTech(tech2l,1);
        }
        if(tset>0) return 75;
        }
        if(this->_L==1 && this->_F==0 && this->blockt==1)
        {
         string ftask=dbqr->getTask(this->vkid,"L");
        Json::Reader treader;
        Json::Value taskobj;
        if(!treader.parse(ftask.c_str(), taskobj)) return this->next(80);
        else
        {
        if(taskobj.isMember("id"))
        {
        if(taskobj["type"]=="BuyTech")
        {
            vector<string> pars=this->split(taskobj["par"].asString(),',');
            int ttype=dbqr->restoi(pars[0]);
            int tlvl=dbqr->restoi(pars[1]);
            for(unsigned int qw=0;qw<this->techs.size();qw++)
            {
                if(this->techs[qw].t==ttype)
                {
                    if(this->techs[qw].l+1<=tddata->GetObjL(ttype))
                    {
                        tlvl=this->techs[qw].l+1;
                    }
                    else
                    {
                        dbqr->remTask(taskobj["id"].asString());
                        return this->next(80);
                    }

                }
            }

           int  trd=this->doBuyTech(ttype,tlvl);
        if(trd==1)
        {
			for(unsigned int qw=0;qw<this->techs.size();qw++)
            {
                if(this->techs[qw].t==ttype)
                {
                   this->techs[qw].l++;
				   this->techs[qw].b=1;
                }
            }
            //cout<<"mark 7"<<endl;
            this->lasttask=taskobj["id"].asString();
            return 77;
        }
        }

        }
        }
        }
        return this->next(80);
        }; break;
        case 75:
        {
        // Автотехнологии result
        return this->next(80);
        }; break;
        case 77:
        {
        // Прокачка техов result
        return this->next(80);
        }; break;
        case 80:
        {
        // Автостройка
        if(this->_B==1 && this->_F==0 && this->blockb==1)
        {
         string ftask=dbqr->getTask(this->vkid,"P");
        Json::Reader treader;
        Json::Value taskobj;
        if(!treader.parse(ftask.c_str(), taskobj)) return this->next(90);
        else
        {
        if(taskobj.isMember("id"))
        {
        int trd=0;
        int typeb=0;
        if(strcmp(taskobj["type"].asString().c_str(),"BuyBuild")==0)
        {
            vector<string> pars=this->split(taskobj["par"].asString(),',');
            typeb=dbqr->restoi(pars[3]);
            trd=this->doBuyBuild(dbqr->restoi(pars[0]),typeb,dbqr->restoi(pars[4]),dbqr->restoi(pars[1]),dbqr->restoi(pars[2]),"false");
        }
        if(trd==1)
        {
            struct building wejjf;


            wejjf.i=this->builds.size()+1;
            wejjf.t=typeb;
            wejjf.l=0;
            wejjf.x=50;
            wejjf.y=50;
            wejjf.m=0;
            wejjf.b=1;
            this->builds.push_back(wejjf);
            /*
            this->builds.push_back(building());
            this->builds[this->builds.size()-1].i=this->builds.size();
            this->builds[this->builds.size()-1].t=typeb;
            this->builds[this->builds.size()-1].l=0;
            this->builds[this->builds.size()-1].x=50;
            this->builds[this->builds.size()-1].y=50;
            this->builds[this->builds.size()-1].m=0;
            this->builds[this->builds.size()-1].b=1;
            */
            this->lasttask=taskobj["id"].asString();
            return 83;
        }
        }
        }
        if(this->blockb==1)
        {
        ftask=dbqr->getTask(this->vkid,"B");
        Json::Reader treader;
        Json::Value taskobj;
        if(!treader.parse(ftask.c_str(), taskobj)) return this->next(90);
        else
        {
        if(taskobj.isMember("id"))
        {
        int trd=0;
        if(strcmp(taskobj["type"].asString().c_str(),"BuyBuild")==0)
        {
            vector<string> pars=this->split(taskobj["par"].asString(),',');

            int rx;
            int ry;
            int rl;
            int rt;
            string rm;
            for(unsigned int rwq=0;rwq<this->builds.size();rwq++)
            {
                if(dbqr->restoi(pars[0])==this->builds[rwq].i)
                {
                    rx=this->builds[rwq].x;
                    ry=this->builds[rwq].y;
                    rl=this->builds[rwq].l;
                    rt=this->builds[rwq].t;
                    rm=(this->builds[rwq].m==1)? "true":"false";

                    if(rl+1>tddata->GetObjL(rt))
                    {
                        dbqr->remTask(taskobj["id"].asString());
                        return this->next(90);
                    }
                }
            }

            trd=this->doBuyBuild(dbqr->restoi(pars[0]),rt,rl+1,rx,ry,rm);
            if(trd==1)
            {
                this->lasttask=taskobj["id"].asString();
                return 86;
            }
        }
        }
        }
        }
        }
        return this->next(90);
        }; break;
        case 83:
        {

        return this->next(84);
        }; break;
        case 84:
        {
        // // расширение
        if(this->squares<_ENumber)
        {
            int rd=this->doExtend();
            if(rd==1) return 84;
        }
        return this->next(88);
        }; break;
        case 86:
        {
        //
        return this->next(90);
        }; break;
        case 88:
        {
        this->scheme="";
        do
        {
          if(this->rtc==5)  this->scheme=dbqr->getScheme(this->vkid,"T");
          else this->scheme=dbqr->getScheme(this->vkid,"U");
        } while(strcmp(this->scheme.c_str(),"")==0);
        this->cutScheme();
        this->applyScheme();
        this->doSaveScene();
        return 89;
        }; break;
        case 89:
        {

        return this->next(90);
        }; break;
        case 90:
        {// автосейв
            if((this->_D==1 || this->_O==1) && this->ssid!=0)
            {
                int tmptp=(this->ssid==this->sid)? 7:5;
                int res=this->doSendUnit(this->ssid,this->chooseArmy(1,1,this->_D,this->_O,0,this->_D),tmptp,0);
                if(res==1) return 100;
                else return this->next(110);
            }
        return this->next(110);
        }; break;
        case 100:
        {
        return this->next(110);
        }; break;
        case 110:
        {// Improve Skill
        if(this->_S==1 && this->_F==0 && this->blockskill==1 && this->skillav>0)
        {
        string ftask=dbqr->getTask(this->vkid,"S");
        Json::Reader treader;
        Json::Value taskobj;
        if(!treader.parse(ftask.c_str(), taskobj)) return this->next(130);
        else
        {
        if(taskobj.isMember("id"))
        {
            vector<string> pars=this->split(taskobj["par"].asString(),',');
            int imp=this->isImproving(dbqr->restoi(pars[0]));
            if(imp==1)
            {
            this->doImproveSkill(dbqr->restoi(pars[0]));
            this->lasttask=taskobj["id"].asString();
            this->blockskill=0;
            return 120;
            }
            if(imp==2)
            {
                dbqr->remTask(taskobj["id"].asString());
            }

        }
        }
        }
        return this->next(123);
        }; break;
        case 120: return this->next(123); break;
        case 123:
        {//bioplazma
            if(this->_BIO==1 && this->bio+500<this->wcap && this->uran>500 && this->titanit>500)
            {
                this->doMakeBio500();
                return 126;
            }
            return this->next(130);
        }; break;
        case 126: return this->next(130); break;
        case 130:
        {// автопостройка оффлайн
            if(this->_U==1 && this->_F==0)
            {
            double q[8]={0,0,0,0,0,0,0,0};
            int qi[8]={0,1,2,3,4,5,6,7};

            for(unsigned int in=0;in<this->unitsb.size();in++)
            {
                switch (this->unitsb[in].queue)
                {
                    case 0: q[0]+=this->unitsb[in].tm;
                    case 1: q[1]+=this->unitsb[in].tm;
                    case 2: q[2]+=this->unitsb[in].tm;
                    case 3: q[3]+=this->unitsb[in].tm;
                    case 4: q[4]+=this->unitsb[in].tm;
                    case 5: q[5]+=this->unitsb[in].tm;
                    case 6: q[6]+=this->unitsb[in].tm;
                    case 7: q[7]+=this->unitsb[in].tm;
                }
            }

            for(int r1=0;r1<8;r1++)
            {
                for(int r2=r1+1;r2<8;r2++)
                {
                    if(q[r2]>q[r1])
                    {
                        int tmp=qi[r1];
                        double tmpd=q[r1];
                        q[r1]=q[r2];
                        qi[r1]=qi[r2];
                        q[r2]=tmpd;
                        qi[r2]=tmp;

                    }
                }
            }


        for(int r3=7;r3>=0;r3--)
        {
        string ftask=dbqr->getTask(this->vkid,dbqr->itores(qi[r3]));
        Json::Reader treader;
        Json::Value taskobj;
        if(!treader.parse(ftask.c_str(), taskobj)) continue;
        else
        {
        if(taskobj.isMember("id"))
        {

            vector<string> pars=this->split(taskobj["par"].asString(),',');

            int type=dbqr->restoi(pars[0]);

            int numb=100000;
            if(tddata->GetObjLU(type,1)>0) numb=fmin(numb,floor(this->uran/tddata->GetObjLU(type,1)));
            if(tddata->GetObjLT(type,1)>0) numb=fmin(numb,floor(this->titanit/tddata->GetObjLT(type,1)));
            if(tddata->GetObjLM(type,1)>0) numb=fmin(numb,floor(this->money/tddata->GetObjLM(type,1)));
            if(tddata->GetObjLG(type,1)>0) numb=fmin(numb,floor(this->gold/tddata->GetObjLG(type,1)));
            if(tddata->GetObjLGI(type,1)>0) numb=fmin(numb,floor(this->bio/tddata->GetObjLGI(type,1)));
            numb=fmin(numb,dbqr->restoi(pars[1]));
           if(numb>0 && this->doBuyUnit(type,numb)==1)
           {
             int nn=dbqr->restoi(pars[1])-numb;
             if(nn>0)
             {
            string ppp=pars[0];
             ppp.append(",");
             ppp.append(dbqr->itores(nn));
             dbqr->updtTask(taskobj["id"].asString(),ppp,dbqr->itores(qi[r3]));
             }
             else dbqr->remTask(taskobj["id"].asString());
             return 140;
           }

        }
        }
        }
        }
        return this->next(150);
        }; break;
        case 140: return this->next(150); break;
        case 150:
        {//cyborgs
//cout<<this->frnds<<"  "<<endl<<endl<<this->fr0<<endl<<this->usrr<<endl;
//
            if(this->_N==1 && this->cybfr>0 && this->_F==0 && strcmp(this->realfr.c_str(),"")!=0)
            {
                string frc;
                vector<string> frcyb=this->split(this->realfr,',');
               this->doCybForUser(frcyb[0]);
                this->remsid(frcyb[0]);
                return 150;
            }
        return this->next(160);
        }; break;
        case 160: return this->next(170); break;
		case 170:
		{//Z-tasks
		string ttask=dbqr->getTask(this->vkid,"Z");
        Json::Reader treader;
        Json::Value taskobj;
        if(!treader.parse(ttask.c_str(), taskobj)) return this->next(180);
        else
        {
        if(taskobj.isMember("id"))
        {
		int trd=0;
		if(strcmp(taskobj["type"].asString().c_str(),"Transmit")==0)
        {
            vector<string> pars=this->split(taskobj["par"].asString(),',');
			int urtt=dbqr->restoi(pars[0]);
			int titt=dbqr->restoi(pars[1]);
			while(urtt+titt>0)
			{
			if(titt>0)
			{
			int num=0;
			int tnum=0;
			if(ceil((float)titt/2)<floor((float)this->tr_p))
			{
			 num=ceil((float)titt/2);
			 tnum=titt;
			}
			else
			{
			num=floor((float)this->tr_p);
			tnum=num*2;
			}
			string parss=dbqr->itores(num);
			parss.append(",");
			parss.append(dbqr->itores(tnum));
			parss.append(",m,t");
			dbqr->addTask(this->vkid,"Z","AddOffer", parss);
			titt-=tnum;
			}
			if(urtt>0)
			{
			int num=0;
			int tnum=0;
			if(ceil((float)urtt/2)<floor((float)this->tr_p))
			{
			 num=ceil((float)urtt/2);
			 tnum=urtt;
			}
			else
			{
			num=floor((float)this->tr_p);
			tnum=num*2;
			}
			string parss=dbqr->itores(num);
			parss.append(",");
			parss.append(dbqr->itores(tnum));
			parss.append(",m,u");
			dbqr->addTask(this->vkid,"Z","AddOffer", parss);
			urtt-=tnum;
			}
			}

			dbqr->remTask(taskobj["id"].asString());
		}
		if(strcmp(taskobj["type"].asString().c_str(),"AddOffer")==0)
        {
            vector<string> pars=this->split(taskobj["par"].asString(),',');
            if(this->money-10000>dbqr->restoi(pars[0]))
            {
                trd=this->doAddOffer(dbqr->restoi(pars[0]),dbqr->restoi(pars[1]),pars[2],pars[3]);
                if(trd==1) this->money-=dbqr->restoi(pars[0]);
                this->offer=pars[0];
                this->offer.append(",");
                this->offer.append(pars[1]);
                this->offer.append(",");
                this->offer.append(pars[2]);
                this->offer.append(",");
                this->offer.append(pars[3]);
            }
			else
			{
			if(dbqr->forceGet(this->vkid)==0)
			{
			this->offer=this->usrr;
			this->offer.append(",0,0,50000,");
			this->offer.append(this->vkid);
			this->offer.append(",");
			this->offer.append(this->convertInt(this->sid));
			dbqr->addTask("wildcard","G","SendRes", this->offer);
			dbqr->forceSet(this->vkid,2);
			this->offer="";
			}
			}
		}
		if(trd==1)
        {
            this->lasttask=taskobj["id"].asString();
            return 180;
        }
		}
		else
		{
		if(strcmp(this->type.c_str(),"B")==0) dbqr->alertSet(this->vkid,0);
		}
		}
		return this->next(180);
		}; break;

		case 180:
        {
		if(strcmp(this->type.c_str(),"R")==0)
		{
		string ttask=dbqr->getWTask(this->usrr,"G");
        Json::Reader treader;
        Json::Value taskobj;
        if(!treader.parse(ttask.c_str(), taskobj)) return this->next(180);
        else
        {
		if(taskobj.isMember("id"))
        {
		if(strcmp(taskobj["type"].asString().c_str(),"SendRes")==0)
        {
		dbqr->updtTask(taskobj["id"].asString(),taskobj["par"].asString(),"K");
		vector<string> pars=this->split(taskobj["par"].asString(),',');

		int limits=50000;
		int num=0;
		string typer="";
		int boole=0;

		for(unsigned int in=0;in<this->lims.size();in++)
		{
		if(this->lims[in].i==dbqr->restoi(pars[5]))
			{
            if(this->lims[in].c<2)
            {
            limits+=this->lims[in].x;
			boole=1;
			}
			else limits=0;
			}
		}


		if(dbqr->restoi(pars[2])>0 && this->titanit>5000 && this->carrem*this->tr_p>5000)
			{
			num=fmin(dbqr->restoi(pars[2]),fmin(fmin(limits,this->carrem*this->tr_p),this->titanit));
			typer="t";
			int resn=dbqr->restoi(pars[2])-num;
			this->wildpar="";
			this->wildpar.append(pars[0]);
			this->wildpar.append(",");
			this->wildpar.append(pars[1]);
			this->wildpar.append(",");
			this->wildpar.append(dbqr->itores(resn));
			this->wildpar.append(",");
			this->wildpar.append(pars[3]);
			this->wildpar.append(",");
			this->wildpar.append(pars[4]);
			this->wildpar.append(",");
			this->wildpar.append(pars[5]);
			this->wildpar1="";
			this->wildpar1.append(pars[0]);
			this->wildpar1.append(",");
			this->wildpar1.append(pars[1]);
			this->wildpar1.append(",");
			this->wildpar1.append("0");
			this->wildpar1.append(",");
			this->wildpar1.append(pars[3]);
			this->wildpar1.append(",");
			this->wildpar1.append(pars[4]);
			this->wildpar1.append(",");
			this->wildpar1.append(pars[5]);

			this->wildcls="G";
			this->wildid=taskobj["id"].asString();
			this->wildcls0="G";
			this->wildpar0=taskobj["par"].asString();
			}
			else
			{
			if(dbqr->restoi(pars[1])>0 && this->uran>5000 && this->carrem*this->tr_p>5000)
			{
			num=fmin(dbqr->restoi(pars[1]),fmin(fmin(limits,this->carrem*this->tr_p),this->uran));
			typer="u";
			int resn=dbqr->restoi(pars[1])-num;
			this->wildpar="";
			this->wildpar.append(pars[0]);
			this->wildpar.append(",");
			this->wildpar.append(dbqr->itores(resn));
			this->wildpar.append(",");
			this->wildpar.append(pars[2]);
			this->wildpar.append(",");
			this->wildpar.append(pars[3]);
			this->wildpar.append(",");
			this->wildpar.append(pars[4]);
			this->wildpar.append(",");
			this->wildpar.append(pars[5]);
			this->wildpar1="";
			this->wildpar1.append(pars[0]);
			this->wildpar1.append(",");
			this->wildpar1.append("0");
			this->wildpar1.append(",");
			this->wildpar1.append(pars[2]);
			this->wildpar1.append(",");
			this->wildpar1.append(pars[3]);
			this->wildpar1.append(",");
			this->wildpar1.append(pars[4]);
			this->wildpar1.append(",");
			this->wildpar1.append(pars[5]);
			this->wildcls="G";
			this->wildid=taskobj["id"].asString();
			this->wildcls0="G";
			this->wildpar0=taskobj["par"].asString();
			}
			else
			{
			//cout<<pars[3]<<" "<<this->money<<" "<<this->carrem<<" "<<this->tr_p<<endl;
			if(dbqr->restoi(pars[3])>0 && this->money>5000 && this->carrem*this->tr_p>5000)
			{
			num=fmin(dbqr->restoi(pars[3]),fmin(fmin(limits,this->carrem*this->tr_p),this->money));
			typer="m";
			int resn=dbqr->restoi(pars[3])-num;
			this->wildpar="";
			this->wildpar.append(pars[0]);
			this->wildpar.append(",");
			this->wildpar.append(pars[1]);
			this->wildpar.append(",");
			this->wildpar.append(pars[2]);
			this->wildpar.append(",");
			this->wildpar.append(dbqr->itores(resn));
			this->wildpar.append(",");
			this->wildpar.append(pars[4]);
			this->wildpar.append(",");
			this->wildpar.append(pars[5]);
			this->wildpar1="";
			this->wildpar1.append(pars[0]);
			this->wildpar1.append(",");
			this->wildpar1.append(pars[1]);
			this->wildpar1.append(",");
			this->wildpar1.append(pars[2]);
			this->wildpar1.append(",");
			this->wildpar1.append("0");
			this->wildpar1.append(",");
			this->wildpar1.append(pars[4]);
			this->wildpar1.append(",");
			this->wildpar1.append(pars[5]);
			this->wildcls="G";
			this->wildid=taskobj["id"].asString();
			this->wildcls0="G";
			this->wildpar0=taskobj["par"].asString();
			}
			}
			}

		if(boole==1)
		{
		for(unsigned int in=0;in<this->lims.size();in++)
		{
		if(this->lims[in].i==dbqr->restoi(pars[5]))
			{
			this->lims[in].c++;
			this->lims[in].x+=num;
			}
		}
		}

		if(dbqr->restoi(pars[2])+dbqr->restoi(pars[1])+dbqr->restoi(pars[3])-num==0) this->lasttask=taskobj["id"].asString();
		if(num>0 && strcmp(typer.c_str(),"")!=0)
		{
		this->doSendRes(pars[5],typer,this->convertInt(num));
		return 190;
		}
		else
		{
		dbqr->updtTask(taskobj["id"].asString(),taskobj["par"].asString(),"G");
		this->wildpar="";
		this->wildid="";
		this->wildcls0="";
		this->wildcls="";
		this->wildpar0="";
		this->wildpar1="";
		this->lasttask="";
		}

		}
        }
		}
		}
		return this->next(190);
        }; break;
		case 190:
        {
		if(strcmp(this->type.c_str(),"R")==0)
		{
		string ttask=dbqr->getWTask(this->usrr,"X");
        Json::Reader treader;
        Json::Value taskobj;
        if(!treader.parse(ttask.c_str(), taskobj)) return this->next(200);
        else
        {
		if(taskobj.isMember("id"))
        {
		if(strcmp(taskobj["type"].asString().c_str(),"AcceptOffer")==0)
        {
		dbqr->updtTask(taskobj["id"].asString(),taskobj["par"].asString(),"Y");
		vector<string> pars=this->split(taskobj["par"].asString(),',');

		if((dbqr->restoi(pars[3])<=this->carrem*this->tr_p) && strcmp(pars[1].c_str(),this->convertInt(this->sid).c_str())!=0 && (strcmp(pars[4].c_str(),"m")==0 && ((strcmp(pars[5].c_str(),"t")==0 && this->titanit>=dbqr->restoi(pars[3])) || (strcmp(pars[5].c_str(),"u")==0 && this->uran>=dbqr->restoi(pars[3])))))
		{
		this->doAcceptOffer(pars[1],pars[4],pars[5],pars[2],pars[3],pars[6],pars[7],pars[8],1);
		this->wildpar=taskobj["par"].asString();
		this->wildid=taskobj["id"].asString();
		this->wildcls0="X";
		this->wildcls="X";
		this->wildpar0=taskobj["par"].asString();
		return 200;
		}
		else
		{
        dbqr->updtTask(taskobj["id"].asString(),taskobj["par"].asString(),"X");
		this->wildpar="";
		this->wildid="";
		this->wildcls0="";
		this->wildcls="";
		this->wildpar0="";
		}
		}
		}
		}
		}
		return this->next(200);
        }; break;

		case 200: return this->next(210); break;
		case 210:
        {
			if(this->occar.size()>0)
			{
			this->doCollectOccupation(this->occar[this->occar.size()-1]);
			this->occar.pop_back();
			return 210;
			}

            return this->next(220); break;
        }; break;
		 case 220:
        {
            this->updtBuild();
            this->updtTable();

    //cout<<this->realfr<<endl;
            return 1000;
        }; break;



    }

return 1000;
}

void game::doAcceptOffer(string frid,string tf,string tt,string nf,string nt,string t00,string on,string sp,int car)
{

        string trs="\"m\":";
        if(strcmp(tt.c_str(),"m")==0) trs.append(nt);
		else trs.append("0");
		trs.append(",\"t\":");
		if(strcmp(tt.c_str(),"t")==0) trs.append(nt);
		else trs.append("0");
		trs.append(",\"g\":0,\"c\":0,\"u\":");
		if(strcmp(tt.c_str(),"u")==0) trs.append(nt);
		else trs.append("0");

		string frs="\"m\":";
        if(strcmp(tf.c_str(),"m")==0) frs.append(nf);
		else frs.append("0");
		frs.append(",\"t\":");
		if(strcmp(tf.c_str(),"t")==0) frs.append(nf);
		else frs.append("0");
		frs.append(",\"g\":0,\"c\":0,\"u\":");
		if(strcmp(tf.c_str(),"u")==0) frs.append(nf);
		else frs.append("0");


    double t0=this->microtime();
    string req="{\"y\":null,\"q\":[";
    req.append(this->q);
    req.append("],\"r\":");
    req.append(this->convertInt(this->r));
    req.append(",\"t\":");
    req.append(this->convertInt(t0));
    req.append(",\"g\":");
    req.append(this->convertInt(t0-this->u));
    req.append(",\"u\":");
    req.append(this->convertInt(this->u));
    req.append(",\"o\":{\"o\":{\"s\":{\"r\":{");
    req.append(trs);
    req.append("},\"s\":0,\"c\":0,\"d\":null},\"t\":");
    req.append(t00);
    req.append(",\"o\":{\"r\":{");
	req.append(frs);
    req.append("},\"s\":");
	req.append(sp);
	req.append(",\"c\":");
	req.append(this->convertInt(car));
    req.append(",\"d\":null},\"u\":");
	req.append(frid);
    req.append(",\"i\":");
	req.append(on);
    req.append("}}}");

    this->topost=req;
    this->method="TradingOffers.AcceptOffer";
    this->currserver=this->servers[this->ownsrv];

return;
}

void game::doSendRes(string toid,string typer,string num)
{
        string trs="\"m\":";
        if(strcmp(typer.c_str(),"m")==0) trs.append(num);
		else trs.append("0");
		trs.append(",\"t\":");
		if(strcmp(typer.c_str(),"t")==0) trs.append(num);
		else trs.append("0");
		trs.append(",\"g\":0,\"c\":0,\"u\":");
		if(strcmp(typer.c_str(),"u")==0) trs.append(num);
		else trs.append("0");

    double t0=this->microtime();
    string req="{\"y\":null,\"q\":[";
    req.append(this->q);
    req.append("],\"r\":");
    req.append(this->convertInt(this->r));
    req.append(",\"t\":");
    req.append(this->convertInt(t0));
    req.append(",\"g\":");
    req.append(this->convertInt(t0-this->u));
    req.append(",\"u\":");
    req.append(this->convertInt(this->u));
    req.append(",\"o\":{\"ti\":null,\"t\":");
    req.append(toid);
    req.append(",\"o\":");
    req.append(this->convertInt(this->sid));
    req.append(",\"u\":0,\"di\":{\"r\":{");
	req.append(trs);
    req.append("},\"s\":0,\"c\":0,\"d\":null}}}");

    this->topost=req;
    this->method="SendUnit";
this->currserver=this->servers[this->ownsrv];
return;
}

void game::doCybForUser(string usid)
{
double t0=this->microtime();
string req="{\"y\":null,\"q\":[";
req.append(this->q);
req.append("],\"r\":");
req.append(this->convertInt(this->r));
req.append(",\"t\":");
req.append(this->convertInt(t0));
req.append(",\"g\":");
req.append(this->convertInt(t0-this->u));
req.append(",\"u\":");
req.append(this->convertInt(this->u));
req.append(",\"o\":{\"u\":");
req.append(usid);
req.append("}}");
this->method="CreateCyborgForUser";
this->topost=req;
this->currserver=this->servers[this->ownsrv];
return;
}

void game::doCollectOccupation(int usid)
{
double t0=this->microtime();
string req="{\"y\":null,\"q\":[";
req.append(this->q);
req.append("],\"r\":");
req.append(this->convertInt(this->r));
req.append(",\"t\":");
req.append(this->convertInt(t0));
req.append(",\"g\":");
req.append(this->convertInt(t0-this->u));
req.append(",\"u\":");
req.append(this->convertInt(this->u));
req.append(",\"o\":{\"u\":");
req.append(this->convertInt(usid));
req.append("}}");
this->method="Occupation.CollectResources";
this->topost=req;
this->currserver=this->servers[this->ownsrv];
return;
}

void game::doMakeBio500(void)
{
double t0=this->microtime();
string req="{\"y\":null,\"q\":[";
req.append(this->q);
req.append("],\"r\":");
req.append(this->convertInt(this->r));
req.append(",\"t\":");
req.append(this->convertInt(t0));
req.append(",\"g\":");
req.append(this->convertInt(t0-this->u));
req.append(",\"u\":");
req.append(this->convertInt(this->u));
req.append(",\"o\":{\"i\":3,\"f\":1}}");
this->method="StartConversionJob";
this->topost=req;
this->currserver=this->servers[this->ownsrv];
return;
}

int game::doExtend(void) // ..........................ПВ изменить
{
    int f=10;
    int x=this->squares-22;
    vector<string> frndd=this->split(this->fr0,',');
    if(this->uran>50 && this->titanit>50 && this->money>50 && frndd.size()>30 && this->squares<_ENumber)
    {
	if(strcmp(_GName,"WT")==0)
	{
    f=(x==72)? 10:30;
    }
	if(strcmp(_GName,"RW")==0)
	{
	if (x==64) f=10;
	if (x==68) f=20;
	if (x==72) f=30;
    }
	if(strcmp(_GName,"PC")==0)
	{
	if (x==64) f=10;
	if (x==68) f=20;
	if (x==72) f=30;
    }
	double t0=this->microtime();
    string req="{\"y\":null,\"q\":[";
    req.append(this->q);
    req.append("],\"r\":");
    req.append(this->convertInt(this->r));
    req.append(",\"t\":");
    req.append(this->convertInt(t0));
    req.append(",\"g\":");
    req.append(this->convertInt(t0-this->u));
    req.append(",\"u\":");
    req.append(this->convertInt(this->u));
    req.append(",\"o\":{\"p\":{\"u\":50,\"m\":50,\"t\":50,\"g\":0},\"x\":");
    req.append(this->convertInt(x));
    req.append(",\"f\":");
    req.append(this->convertInt(f));
    req.append("}}");
    this->method="BuyExtension";
    this->topost=req;
    this->currserver=this->servers[this->ownsrv];
    return 1;
    }
    return 0;
}

int game::doBuyBuild(int i,int t,int l,int x,int y,string m)
{
if(this->confirmBuy(t)>0 && this->blockb==1 && this->buyNotExpensive(t,l,1)==1)
{
while(m.find("'")!=string::npos) m.replace(m.find("'"),1,"");
double t0=this->microtime();
string req="{\"y\":null,\"q\":[";
req.append(this->q);
req.append("],\"r\":");
req.append(this->convertInt(this->r));
req.append(",\"t\":");
req.append(this->convertInt(t0));
req.append(",\"g\":");
req.append(this->convertInt(t0-this->u));
req.append(",\"u\":");
req.append(this->convertInt(this->u));
req.append(",\"o\":{\"g\":false,\"o\":{\"i\":");
req.append(this->convertInt(i));
req.append(",\"t\":");
req.append(this->convertInt(t));
req.append(",\"gi\":{\"m\":");
req.append(m);
req.append(",\"x\":");
req.append(this->convertInt(x));
req.append(",\"y\":");
req.append(this->convertInt(y));
req.append("},\"bi\":{},\"c\":{\"s\":null,\"f\":null,\"l\":");
req.append(this->convertInt(l-1));
req.append("},\"ti\":null,\"d\":null,\"tci\":null}}}");
this->method="Buy";
this->topost=req;
this->currserver=this->servers[this->ownsrv];
this->blockb=0;
if (l==1 && this->_F==0)
{
            this->messg=_MSGBBLD1;
            this->messg.append(tddata->GetItemName(t));
            this->messg.append(_MSGBBLD2);
            this->messg.append("<a href=\"autob.php?uid=");
            string vkidd=this->vkid;
            vkidd.replace(0,2,"");
            this->messg.append(vkidd);
            this->messg.append("\">");
            this->messg.append(this->name);
            this->messg.append("(");
            this->messg.append(this->nick);
            this->messg.append(")</a>");
            this->messg.append(_MSGBBLD3);
}
if (l==20 && ((t==108 && this->wnum<3) || (t==109 && this->bnum<3)))
{
            /*this->messg=_MSGADDB1;
            this->messg.append("<a href=\"autob.php?uid=");
            string vkidd=this->vkid;
            vkidd.replace(0,2,"");
            this->messg.append(vkidd);
            this->messg.append("\">");
            this->messg.append(this->name);
            this->messg.append("(");
            this->messg.append(this->nick);
            this->messg.append(")</a>");
            this->messg.append(_MSGADDB2);
            this->messg.append(tddata->GetItemName(t));
            this->messg.append(_MSGADDB3);
            */
            string parr="-1,50,50,";
            parr.append(this->convertInt(t));
            parr.append(",1");
            dbqr->addTask(this->vkid,"P","BuyBuild",parr);

}
return 1;
}
return 0;
}

int game::doAddOffer(int qfr,int qto,string tfr,string tto)
{
    int u0=0;
    int u1=0;
    int t00=0;
    int t1=0;
    int m0=0;
    int m1=0;

    int tmpbl=0;
    if(tfr=="u" && this->uran>qfr)
    {
        u0=qfr;
        tmpbl=1;
    }
    if(tfr=="t" && this->titanit>qfr)
    {
        t00=qfr;
        tmpbl=1;
    }
    if(tfr=="m" && this->money>qfr)
    {
        m0=qfr;
        tmpbl=1;
    }
    if(tto=="u")
    {
        u1=qto;
    }
    if(tto=="t")
    {
       t1=qto;
    }
    if(tto=="m")
    {
        m1=qto;
    }
    if(strcmp(tfr.c_str(),tto.c_str())==0) tmpbl=0;
    if(qto>tddata->GetTrP(20)*tddata->GetTrN(20)) tmpbl=0;
    float k=(float)qfr/qto;
    if(k<0.5 || k>2) tmpbl=0;
if(tmpbl==1 && this->carrem*this->tr_p>=qfr)
{
double t0=this->microtime();
string req="{\"y\":null,\"q\":[";
req.append(this->q);
req.append("],\"r\":");
req.append(this->convertInt(this->r));
req.append(",\"t\":");
req.append(this->convertInt(t0));
req.append(",\"g\":");
req.append(this->convertInt(t0-this->u));
req.append(",\"u\":");
req.append(this->convertInt(this->u));
req.append(",\"o\":{\"s\":{\"r\":{\"g\":0,\"c\":0,\"u\":");
req.append(this->convertInt(u1));
req.append(",\"t\":");
req.append(this->convertInt(t1));
req.append(",\"m\":");
req.append(this->convertInt(m1));
req.append("},\"s\":0,\"c\":0,\"d\":null},\"t\":null,\"o\":{\"r\":{\"g\":0,\"c\":0,\"u\":");
req.append(this->convertInt(u0));
req.append(",\"t\":");
req.append(this->convertInt(t00));
req.append(",\"m\":");
req.append(this->convertInt(m0));
req.append("},\"s\":0,\"c\":0,\"d\":null},\"u\":");
req.append(this->convertInt(this->sid));
req.append(",\"i\":-1}}");
this->method="TradingOffers.AddOffer";
this->topost=req;
this->currserver=this->servers[this->ownsrv];
return 1;
}
return 0;
}

int game::doRemOffer(int on)
{
double t0=this->microtime();
string req="{\"y\":null,\"q\":[";
req.append(this->q);
req.append("],\"r\":");
req.append(this->convertInt(this->r));
req.append(",\"t\":");
req.append(this->convertInt(t0));
req.append(",\"g\":");
req.append(this->convertInt(t0-this->u));
req.append(",\"u\":");
req.append(this->convertInt(this->u));
req.append(",\"o\":");
req.append(this->convertInt(on));
req.append("}");
this->method="TradingOffers.RemoveOffer";
this->topost=req;
this->currserver=this->servers[this->ownsrv];
return 1;
}

int game::doBuyTech(int t,int l)
{
if(((this->confirmBuy(t)>0 && l==1) || l>1) && this->blockt==1 && this->buyNotExpensive(t,l,1))
{
double t0=this->microtime();
string req="{\"y\":null,\"q\":[";
req.append(this->q);
req.append("],\"r\":");
req.append(this->convertInt(this->r));
req.append(",\"t\":");
req.append(this->convertInt(t0));
req.append(",\"g\":");
req.append(this->convertInt(t0-this->u));
req.append(",\"u\":");
req.append(this->convertInt(this->u));
req.append(",\"o\":{\"g\":false,\"o\":{\"i\":-1,\"t\":");
req.append(this->convertInt(t));
req.append(",\"gi\":{\"m\":false,\"x\":0,\"y\":0},\"bi\":null,\"c\":{\"s\":null,\"f\":null,\"l\":");
req.append(this->convertInt(l-1));
req.append("},\"ti\":null,\"d\":null,\"tci\":{}}}}");
this->method="Buy";
this->topost=req;
this->currserver=this->servers[this->ownsrv];
this->blockt=0;
if (l==1 && this->_F==0)
{
            this->messg=_MSGTCHL1;
            this->messg.append("<a href=\"draft.php?id=");
            this->messg.append(dbqr->itores(this->TechNick(t)));
            this->messg.append("\">");
            this->messg.append(this->name);
            this->messg.append("(");
            this->messg.append(this->nick);
            this->messg.append(")</a>");
            this->messg.append(_MSGTCHL2);
            this->messg.append(tddata->GetItemName(t));
            this->messg.append(_MSGTCHL3);
}
return 1;
}
return 0;
}

int game::doTryQuest(int p,int c)
{
if(this->qarr.size()==0)
{
double t0=this->microtime();
string req="{\"y\":null,\"q\":[";
req.append(this->q);
req.append("],\"r\":");
req.append(this->convertInt(this->r));
req.append(",\"t\":");
req.append(this->convertInt(t0));
req.append(",\"g\":");
req.append(this->convertInt(t0-this->u));
req.append(",\"u\":");
req.append(this->convertInt(this->u));
req.append(",\"o\":{\"p\":");
req.append(this->convertInt(p));
req.append(",\"c\":");
req.append(this->convertInt(c));
req.append("}}");
this->method="TryCompleteQuest";
this->topost=req;
this->currserver=this->servers[this->ownsrv];
return 1;
}
return 0;
}

int game::doBuyUnit(int t,int n)
{
if(this->confirmBuy(t)>0 && this->buyNotExpensive(t,1,n)==1)
{
double t0=this->microtime();
string req="{\"y\":null,\"q\":[";
req.append(this->q);
req.append("],\"r\":");
req.append(this->convertInt(this->r));
req.append(",\"t\":");
req.append(this->convertInt(t0));
req.append(",\"g\":");
req.append(this->convertInt(t0-this->u));
req.append(",\"u\":");
req.append(this->convertInt(this->u));
req.append(",\"o\":{\"g\":false,\"o\":{\"t\":");
req.append(this->convertInt(t));
req.append(",\"tci\":null,\"c\":{\"s\":null,\"f\":null,\"l\":0},\"d\":null,\"gi\":{\"m\":false,\"x\":0,\"y\":0},\"bi\":null,\"ti\":{\"c\":");
req.append(this->convertInt(n));
req.append("},\"i\":-1}}}");
this->method="Buy";
this->currserver=this->servers[this->ownsrv];
this->topost=req;
return 1;
}
return 0;
}

void game::doSectorName(string sname)
{
double t0=this->microtime();
string req="{\"y\":null,\"q\":[";
req.append(this->q);
req.append("],\"r\":");
req.append(this->convertInt(this->r));
req.append(",\"t\":");
req.append(this->convertInt(t0));
req.append(",\"g\":");
req.append(this->convertInt(t0-this->u));
req.append(",\"u\":");
req.append(this->convertInt(this->u));
req.append(",\"o\":\"");
req.append(sname);
req.append("\"}");
this->topost=req;
this->method="SetSectorName";
this->currserver=this->servers[ownsrv];
    string ulog=dbqr->recognizeUser(this->usrr);
            this->messg=_MSGNAME1;
            this->messg.append("<a href=\"tw_page.php?uid=");
            string vkidd=this->vkid;
            vkidd.replace(0,2,"");
            this->messg.append(vkidd);
            this->messg.append("\">");
            this->messg.append(this->name);
            this->messg.append("(");
            this->messg.append(this->nick);
            this->messg.append(")</a>");
            this->messg.append(_MSGNAME2);
            this->messg.append(sname);
            this->messg.append(_MSGNAME3);

}

void game::doSingIn(void)
{
this->method="SignIn";

string temp="{\"s\":{\"x\":\"NaN\",\"n\":\"";
 temp.append(this->name);
 temp.append("\",\"a\":true,\"l\":\"ru-RU\",\"t\":0,\"tg\":0,\"u\":\"");
 temp.append(this->img);
 temp.append("\",\"p\":null,\"i\":\"");
 temp.append(this->vkid);
 temp.append("\",\"d\":\"");
 string nametmp=this->name;
 temp.append(nametmp.replace(nametmp.find(" "),1,";"));
 temp.append(";NaN;ru_RU;0;;\"},\"f\":[");
 temp.append(this->fr0);
 temp.append("],\"i\":\"");
 temp.append(this->vkid);
 temp.append("\",\"l\":\"menu\",\"mr\":\"\"}");
//cout<<temp<<endl;
this->topost=temp;
}

void game::doGetId(void)
{
this->method="GetMap";
int ux=floor((float)this->ssx/20);
int uy=floor((float)this->ssy/20);
string temp="{\"b\":[{\"x\":";
 temp.append(this->convertInt(ux));
 temp.append(",\"y\":");
 temp.append(this->convertInt(uy));
 temp.append("}]}");
this->topost=temp;
this->currserver=this->servers[this->ownsrv];
}

void game::doSaveScene(void)
{
double t0=this->microtime();
//cout<<"t0: "<<this->convertInt(t0)<<" "<<"u: "<<this->convertInt(this->u)<<endl;
string req="{\"y\":null,\"n\":{\"n\":1},\"q\":[";
req.append(this->q);
req.append("],\"r\":");
req.append(this->convertInt(this->r));
req.append(",\"t\":");
req.append(this->convertInt(t0));
req.append(",\"g\":");
req.append(this->convertInt(t0-this->u));
req.append(",\"u\":");
req.append(this->convertInt(this->u));
req.append(",\"o\":{\"s\":{\"x\":");
req.append(this->convertInt(this->squares));
req.append(",\"y\":");
req.append(this->convertInt(this->squares));
req.append(",\"o\":[");

for(unsigned int ik=0;ik<this->builds.size();ik++)
{
    req.append("{\"gi\":{\"m\":");
    if(this->builds[ik].m==1) req.append("true");
    else req.append("false");
    req.append(",\"x\":");
    req.append(this->convertInt(this->builds[ik].x));
    req.append(",\"y\":");
    req.append(this->convertInt(this->builds[ik].y));
    req.append("},\"i\":");
    req.append(this->convertInt(this->builds[ik].i));
    req.append(",\"bi\":{},\"t\":");
    req.append(this->convertInt(this->builds[ik].t));
    req.append(",\"ti\":null,\"c\":{\"s\":null,\"f\":null,\"l\":");
    req.append(this->convertInt(this->builds[ik].l));
    req.append("},\"tci\":null,\"d\":null}");
    if(ik<this->builds.size()-1) req.append(",");
}
    req.append("]},\"d\":null,\"w\":false}}");
//cout<<"to post: "<<req<<endl;
this->method="SaveScene";
this->topost=req;
this->currserver=this->servers[this->ownsrv];
}

void game::doStartQuest(int qq)
{
   double t0=this->microtime();
string req="{\"y\":null,\"q\":[";
req.append(this->q);
req.append("],\"r\":");
req.append(this->convertInt(this->r));
req.append(",\"t\":");
req.append(this->convertInt(t0));
req.append(",\"g\":");
req.append(this->convertInt(t0-this->u));
req.append(",\"u\":");
req.append(this->convertInt(this->u));
req.append(",\"o\":{\"i\":");
req.append(this->convertInt(qq));
req.append("}}");
this->topost=req;
this->method="StartQuest";
this->currserver=this->servers[this->ownsrv];
}

void game::doCloseQuest(int qq)
{
    double t0=this->microtime();
string req="{\"y\":null,\"q\":[";
req.append(this->q);
req.append("],\"r\":");
req.append(this->convertInt(this->r));
req.append(",\"t\":");
req.append(this->convertInt(t0));
req.append(",\"g\":");
req.append(this->convertInt(t0-this->u));
req.append(",\"u\":");
req.append(this->convertInt(this->u));
req.append(",\"o\":{\"i\":");
req.append(this->convertInt(qq));
req.append("}}");
this->topost=req;
this->method="CloseQuest";
this->currserver=this->servers[this->ownsrv];
}

void game::doImproveSkill(int type)
{
double t0=this->microtime();
string req="{\"y\":null,\"q\":[";
req.append(this->q);
req.append("],\"r\":");
req.append(this->convertInt(this->r));
req.append(",\"t\":");
req.append(this->convertInt(t0));
req.append(",\"g\":");
req.append(this->convertInt(t0-this->u));
req.append(",\"u\":");
req.append(this->convertInt(this->u));
req.append(",\"o\":{\"i\":");
req.append(this->convertInt(type));
req.append("}}");
this->topost=req;
this->method="ImproveSkill";
this->currserver=this->servers[this->ownsrv];
}

int game::doSendUnit(int dest,vector<army> troops,int type,int locs)
{
    if(troops.size()>0 && dest!=0)
    {
        string trs="";
        for(unsigned int re=0;re<troops.size();re++)
        {
            trs.append("\"");
            trs.append(troops[re].t);
            trs.append("\":");
            trs.append(this->convertInt(troops[re].num));
            if(re<troops.size()-1) trs.append(",");
        }

     double t0=this->microtime();
    string req="{\"y\":null,\"q\":[";
    req.append(this->q);
    req.append("],\"r\":");
    req.append(this->convertInt(this->r));
    req.append(",\"t\":");
    req.append(this->convertInt(t0));
    req.append(",\"g\":");
    req.append(this->convertInt(t0-this->u));
    req.append(",\"u\":");
    req.append(this->convertInt(this->u));
    req.append(",\"o\":{\"ti\":{\"r\":null,\"t\":{\"t\":{");
    req.append(trs);
    req.append("}},\"o\":");
    req.append(this->convertInt(type));
    req.append("},\"t\":");
    req.append(this->convertInt(dest));
    req.append(",\"o\":");
    req.append(this->convertInt(this->sid));
    req.append(",\"di\":null,\"u\":");
    req.append(this->convertInt(locs));
    req.append("}}");
this->currserver=this->servers[this->ownsrv];
    this->topost=req;
    this->method="SendUnit";
    return 1;
    }
return 0;
}

vector<game::army> game::chooseArmy(int inf,int tec,int def,int off,int cyb,int ing)
{
    vector<army> armres;


    for(unsigned int in=0;in<this->sectarmy.size();in++)
    {
        if(this->inArmies(inf,tec,def,off,cyb,ing,this->sectarmy[in].t)==1)
        {
            struct army tyuhhjs;
            tyuhhjs.t=this->sectarmy[in].t;
            tyuhhjs.num=this->sectarmy[in].num;
            armres.push_back(tyuhhjs);

            /*
            armres.push_back(army());
            armres[armres.size()-1].t=this->sectarmy[in].t;
            armres[armres.size()-1].num=this->sectarmy[in].num;
            */
        }
    }
return armres;
}

int game::inArmies(int inf,int tec,int def,int off,int cyb,int ing,string type)
{
   int cno=0;
   int cnt=0;
   int cni=0;

   int offarr[37]={1,4,6,8,10,12,15,16,17,20,22,24,26,28,31,32,45,47,48,49,51,52,64,67,69,71,73,75,78,79,84,86,87,93,95,9003,9004};
   int infarr[33]={1,2,3,4,13,17,18,19,20,29,37,38,39,40,41,42,43,44,45,46,49,50,64,65,66,67,76,80,81,82,83,84,85};
   int inarray[9]={13,29,59,60,9000,9001,76,9002,31};

    if(strcmp("33",type.c_str())==0 && cyb==1) return 1;
    for(int cn=0;cn<37;cn++)
    {
        if(strcmp(this->convertInt(offarr[cn]).c_str(),type.c_str())==0) cno=1;
    }
    for(int cn=0;cn<33;cn++)
    {
        if(strcmp(this->convertInt(infarr[cn]).c_str(),type.c_str())==0) cnt=1;
    }
    for(int cn=0;cn<9;cn++)
    {
        if(strcmp(this->convertInt(inarray[cn]).c_str(),type.c_str())==0) cni=1;
    }

if(((inf==1 && cnt==1) || (tec==1 && cnt==0)) && ((off==1 && cno==1) || (def==1 && cno==0 && cni==0) || (cni==1 && ing==1)) && strcmp("33",type.c_str())!=0) return 1;
return 0;
}

int game::isImproving(int type)
{
int slvl=0;
for(unsigned int rt=0;rt<this->skills.size();rt++)
{
    if(this->skills[rt].t==type) slvl=this->skills[rt].l;
}

int snum=tddata->GetSkillNum(type);

if(slvl+1>tddata->GetSkillLevels(snum)) return 2;

 const char* getb=tddata->GetSkillDem(snum);
        Json::Reader treader;
        Json::Value legobj;
        if(!treader.parse(getb, legobj)) return 0;
    else
    {
    int lflag=1;

     for(unsigned int ik=0;ik<legobj.size();ik++)
            {
                if(legobj[ik].isMember("id"))
                {
                for(unsigned int te=0;te<this->skills.size();te++)
                {
                    if(legobj[ik]["id"].asInt()==this->skills[te].t)
                    {
                        if(legobj[ik]["level"].asInt()>this->skills[te].l) lflag=0;
                    }
                }
                }
            }
    return lflag;
    }
return 0;
}

int game::learnIt(void)
{
    for(int ds=1050;ds<1100;ds++)
    {
        if(strcmp(tddata->GetItemName(ds),"Название не установлено")!=0 && strcmp(tddata->GetItemName(ds),"")!=0)
        {
         if(this->techLearnt(ds)==0 && ds!=1080 && ds!=1089)
         {
             if(this->confirmBuy(ds)>0) return ds;
         }
        }
    }
    return 0;
}

void game::setFTasks(void)
{
   //dbqr->addTask(this->vkid,"F","TryQuest","0,10");

   for(unsigned int ih=0;ih<this->builds.size();ih++)
   {
       if(this->builds[ih].t==198 || this->builds[ih].t==199)
       {
           string params="";
           params.append(this->convertInt(this->builds[ih].i));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].x));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].y));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].t));
           params.append(",2");
           dbqr->addTask(this->vkid,"F","BuyBuild", params);
       }
   }
   if(this->scheme.size()>=8)
   {
   for(int im=this->scheme.size()-8;im>=0;im-=8)
   {
        if(dbqr->restoi(this->scheme.substr(im,3))==106)
        {
            string params="-1,";
           params.append(this->scheme.substr(im+3,2));
           params.append(",");
           params.append(this->scheme.substr(im+5,2));
           params.append(",106,1");
           dbqr->addTask(this->vkid,"F","BuyBuild", params);
           this->scheme=this->scheme.replace(im,8,"");
        }
   }
   }

   if(this->buildingExists(127)==0)
   {
    if(this->scheme.size()>=8)
   {

   for(int im=this->scheme.size()-8;im>=0;im-=8)
   {
        if(dbqr->restoi(this->scheme.substr(im,3))==127)
        {
            string params="-1,";
           params.append(this->scheme.substr(im+3,2));
           params.append(",");
           params.append(this->scheme.substr(im+5,2));
           params.append(",127,1");
           dbqr->addTask(this->vkid,"F","BuyBuild", params);
           this->scheme=this->scheme.replace(im,8,"");
           break;
        }
   }
   }
   }

    dbqr->addTask(this->vkid,"F","TryQuest","0,0");
    dbqr->addTask(this->vkid,"F","BuyTech","1050,1");
   //dbqr->addTask(this->vkid,"F","TryQuest","4,9");

   if(this->buildingExists(110)==0)
   {
    if(this->scheme.size()>=8)
   {
   for( int im=this->scheme.size()-8;im>=0;im-=8)
   {
        if(dbqr->restoi(this->scheme.substr(im,3))==110)
        {
            string params="-1,";
           params.append(this->scheme.substr(im+3,2));
           params.append(",");
           params.append(this->scheme.substr(im+5,2));
           params.append(",110,1");
           dbqr->addTask(this->vkid,"F","BuyBuild", params);
           this->scheme=this->scheme.replace(im,8,"");
           break;
        }
   }
   }
   }

   if(this->buildingExists(111)==0)
   {
    if(this->scheme.size()>=8)
   {
   for( int im=this->scheme.size()-8;im>=0;im-=8)
   {
        if(dbqr->restoi(this->scheme.substr(im,3))==111)
        {
            string params="-1,";
           params.append(this->scheme.substr(im+3,2));
           params.append(",");
           params.append(this->scheme.substr(im+5,2));
           params.append(",111,1");
           dbqr->addTask(this->vkid,"F","BuyTech","1051,1");
           dbqr->addTask(this->vkid,"F","BuyBuild", params);
           this->scheme=this->scheme.replace(im,8,"");
           break;
        }
   }
   }
   }

//dbqr->addTask(this->vkid,"F","TryQuest","1,9");
dbqr->addTask(this->vkid,"F","BuyTech","1058,1");

 if(this->buildingExists(112)==0)
   {
    if(this->scheme.size()>=8)
   {
   for( int im=this->scheme.size()-8;im>=0;im-=8)
   {
        if(dbqr->restoi(this->scheme.substr(im,3))==112)
        {
            string params="-1,";
           params.append(this->scheme.substr(im+3,2));
           params.append(",");
           params.append(this->scheme.substr(im+5,2));
           params.append(",112,1");
           dbqr->addTask(this->vkid,"F","BuyBuild", params);
           this->scheme=this->scheme.replace(im,8,"");
           break;
        }
   }
   }
   }

dbqr->addTask(this->vkid,"F","BuyUnit","1,1");
//dbqr->addTask(this->vkid,"F","TryQuest","0,5");
dbqr->addTask(this->vkid,"F","BuyTech","1052,1");
dbqr->addTask(this->vkid,"F","BuyTech","1059,1");
dbqr->addTask(this->vkid,"F","BuyUnit","2,2");
dbqr->addTask(this->vkid,"F","TryQuest","0,0");

if(this->buildingExists(124)==0)
   {
    if(this->scheme.size()>=8)
   {
   for( int im=this->scheme.size()-8;im>=0;im-=8)
   {
        if(dbqr->restoi(this->scheme.substr(im,3))==124)
        {
            string params="-1,";
           params.append(this->scheme.substr(im+3,2));
           params.append(",");
           params.append(this->scheme.substr(im+5,2));
           params.append(",124,1");
           dbqr->addTask(this->vkid,"F","BuyBuild", params);
           this->scheme=this->scheme.replace(im,8,"");
           break;
        }
   }
   }
   }

//dbqr->addTask(this->vkid,"F","TryQuest","15,0");

if(this->buildingExists(120)==0)
   {
    if(this->scheme.size()>=8)
   {
   for( int im=this->scheme.size()-8;im>=0;im-=8)
   {
        if(dbqr->restoi(this->scheme.substr(im,3))==120)
        {
            string params="-1,";
           params.append(this->scheme.substr(im+3,2));
           params.append(",");
           params.append(this->scheme.substr(im+5,2));
           params.append(",120,1");
           dbqr->addTask(this->vkid,"F","BuyBuild", params);
           this->scheme=this->scheme.replace(im,8,"");
           break;
        }
   }
   }
   }

if(this->buildingExists(101)==0)
   {
    if(this->scheme.size()>=8)
   {
   for( int im=this->scheme.size()-8;im>=0;im-=8)
   {
        if(dbqr->restoi(this->scheme.substr(im,3))==101)
        {
            string params="-1,";
           params.append(this->scheme.substr(im+3,2));
           params.append(",");
           params.append(this->scheme.substr(im+5,2));
           params.append(",101,1");
           dbqr->addTask(this->vkid,"F","BuyBuild", params);
           this->scheme=this->scheme.replace(im,8,"");
           break;
        }
   }
   }
   }

dbqr->addTask(this->vkid,"F","TryQuest","0,0");
//dbqr->addTask(this->vkid,"F","TryQuest","5,0");

if(this->buildingExists(600)==0)
   {
    if(this->scheme.size()>=8)
   {
   for( int im=this->scheme.size()-8;im>=0;im-=8)
   {
        if(dbqr->restoi(this->scheme.substr(im,3))==600)
        {
            string params="-1,";
           params.append(this->scheme.substr(im+3,2));
           params.append(",");
           params.append(this->scheme.substr(im+5,2));
           params.append(",600,1");
           dbqr->addTask(this->vkid,"F","BuyBuild", params);
           this->scheme=this->scheme.replace(im,8,"");
           break;
        }
   }
   }
   }

if(this->buildingExists(109)==0)
   {
    if(this->scheme.size()>=8)
   {
   for( int im=this->scheme.size()-8;im>=0;im-=8)
   {
        if(dbqr->restoi(this->scheme.substr(im,3))==109)
        {
            string params="-1,";
           params.append(this->scheme.substr(im+3,2));
           params.append(",");
           params.append(this->scheme.substr(im+5,2));
           params.append(",109,1");
           dbqr->addTask(this->vkid,"F","BuyBuild", params);
           this->scheme=this->scheme.replace(im,8,"");
           break;
        }
   }
   }
   }

   if(this->buildingExists(108)==0)
   {
    if(this->scheme.size()>=8)
   {
   for( int im=this->scheme.size()-8;im>=0;im-=8)
   {
        if(dbqr->restoi(this->scheme.substr(im,3))==108)
        {
            string params="-1,";
           params.append(this->scheme.substr(im+3,2));
           params.append(",");
           params.append(this->scheme.substr(im+5,2));
           params.append(",108,1");
           dbqr->addTask(this->vkid,"F","BuyBuild", params);
           this->scheme=this->scheme.replace(im,8,"");
           break;
        }
   }
   }
   }

   if(this->buildingExists(144)==0)
   {
    if(this->scheme.size()>=8)
   {
   for( int im=this->scheme.size()-8;im>=0;im-=8)
   {
        if(dbqr->restoi(this->scheme.substr(im,3))==144)
        {
            string params="-1,";
           params.append(this->scheme.substr(im+3,2));
           params.append(",");
           params.append(this->scheme.substr(im+5,2));
           params.append(",144,1");
           dbqr->addTask(this->vkid,"F","BuyBuild", params);
           this->scheme=this->scheme.replace(im,8,"");
           break;
        }
   }
   }
   }

dbqr->addTask(this->vkid,"F","BuyTech","1072,1");
dbqr->addTask(this->vkid,"F","AddOffer","20,20,m,t");
dbqr->addTask(this->vkid,"F","TryQuest","0,0");
dbqr->addTask(this->vkid,"F","TryQuest","0,0");

}

void game::setBTasks(void)
{
for(int iw=1;iw<10;iw++)
{
       for(unsigned int ih=0;ih<this->builds.size();ih++)
   {
       if(tddata->GetObjL(this->builds[ih].t)>iw && (this->builds[ih].t<112 || this->builds[ih].t>119) && this->builds[ih].t!=124  && this->builds[ih].t!=102  && this->builds[ih].t!=104  && this->builds[ih].t!=108 && this->builds[ih].t!=109)
       {
           string params="";
           params.append(this->convertInt(this->builds[ih].i));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].x));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].y));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].t));
           params.append(",");
           params.append(this->convertInt(iw+1));
           params.append(",");
           if (this->builds[ih].m==0) params.append("false");
           else params.append("true");
           dbqr->addTask(this->vkid,"B","BuyBuild", params);
       }
       if(this->builds[ih].t==108 || this->builds[ih].t==109 || this->builds[ih].t==124 || this->builds[ih].t==102 || this->builds[ih].t==104)
       {
           string params="";
           if(iw==1)
           {
           params.append(this->convertInt(this->builds[ih].i));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].x));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].y));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].t));
           params.append(",");
           params.append(this->convertInt(2));
           params.append(",");
           if (this->builds[ih].m==0) params.append("false");
           else params.append("true");
           dbqr->addTask(this->vkid,"B","BuyBuild", params);
           params="";
           }
           params.append(this->convertInt(this->builds[ih].i));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].x));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].y));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].t));
           params.append(",");
           params.append(this->convertInt((iw+1)*2-1));
           params.append(",");
           if (this->builds[ih].m==0) params.append("false");
           else params.append("true");
           dbqr->addTask(this->vkid,"B","BuyBuild", params);
           params="";
           params.append(this->convertInt(this->builds[ih].i));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].x));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].y));
           params.append(",");
           params.append(this->convertInt(this->builds[ih].t));
           params.append(",");
           params.append(this->convertInt(iw*2+2));
           params.append(",");
           if (this->builds[ih].m==0) params.append("false");
           else params.append("true");
           dbqr->addTask(this->vkid,"B","BuyBuild", params);
       }
   }
}
}

void game::cutScheme(void)
{
    //cout<<"cut"<<endl;
    for(int in=this->scheme.size()-1;in>=0;in--)
    {
        if(strcmp(this->scheme.substr(in,1).c_str(),";")==0 || strcmp(this->scheme.substr(in,1).c_str(),":")==0) this->scheme=this->scheme.replace(in,1,"");
    }
}

void game::applyScheme(void)
{
   // cout<<"apply"<<endl;
    for(unsigned int in=0;in<this->builds.size();in++)
    {
       if(this->builds[in].t==150)
       {
           this->builds[in].x=60;
            this->builds[in].y=60;
             this->builds[in].m=0;
       }
        for(int ij=this->scheme.size()-8;ij>=0;ij-=8)
        {
         if(this->builds[in].t==dbqr->restoi(this->scheme.substr(ij,3)) || (this->builds[in].t==198 && dbqr->restoi(this->scheme.substr(ij,3))==102) || (this->builds[in].t==102 && dbqr->restoi(this->scheme.substr(ij,3))==198)  || (this->builds[in].t==199 && dbqr->restoi(this->scheme.substr(ij,3))==104) || (this->builds[in].t==104 && dbqr->restoi(this->scheme.substr(ij,3))==199))
         {
             this->builds[in].x=dbqr->restoi(this->scheme.substr(ij+3,2));
             this->builds[in].y=dbqr->restoi(this->scheme.substr(ij+5,2));
             this->builds[in].m=dbqr->restoi(this->scheme.substr(ij+7,1));
            // cout<<this->builds[in].x<<endl;

             this->scheme=this->scheme.replace(ij,8,"");
           //  cout<<"  "<<this->builds[in].t<<"  "<<this->builds[in].x<<"  "<<this->builds[in].y<<endl;
            break;
         }
        }
    }
}

int game::confirmBuy(int t)
{
 const char* getb=tddata->GetItemB(t);
        Json::Reader treader;
        Json::Value legobj;
        if(!treader.parse(getb, legobj)) return 0;
    else
    {
            int lflag=1;
            for(unsigned int ik=0;ik<legobj.size();ik++)
            {
                if(legobj[ik]["id"].asInt()>=100 && legobj[ik]["id"].asInt()<200)
                {
                   if(this->buildingMaxLevel(legobj[ik]["id"].asInt())>=legobj[ik]["level"].asInt()) lflag*=1;
                    else lflag*=0;
                }
                if(legobj[ik]["id"].asInt()>=1000 && legobj[ik]["id"].asInt()<1100)
                {
                    if(this->techLearnt(legobj[ik]["id"].asInt())>=legobj[ik]["level"].asInt()) lflag*=1;
                    else lflag*=0;
                }
                if(legobj[ik]["id"].asInt()>=1100 && legobj[ik]["id"].asInt()<1200)
                {
                    lflag*=this->draftsCollected(legobj[ik]["id"].asInt());

                }
            }
            return lflag;
    }
}

int game::parseO(Json::Value &o)
{
if(o.isMember("v")) this->r=o["v"].asInt();
if(o.isMember("o"))
{
if(o["o"].isMember("u") && o["o"].isMember("t") && o["o"].isMember("m") && o["o"].isMember("g") && o["o"].isMember("c"))
 {
 this->uran-=o["o"]["u"].asDouble();
 this->titanit-=o["o"]["t"].asDouble();
 this->money-=o["o"]["m"].asDouble();
 this->gold-=o["o"]["g"].asDouble();
 this->bio-=o["o"]["c"].asDouble();
 }
if(o["o"].isMember("p"))
{
if(o["o"]["p"].isMember("u")) this->uran-=o["o"]["p"]["u"].asDouble();
if(o["o"]["p"].isMember("t")) this->titanit-=o["o"]["p"]["t"].asDouble();
if(o["o"]["p"].isMember("m")) this->money-=o["o"]["p"]["m"].asDouble();
if(o["o"]["p"].isMember("g")) this->gold-=o["o"]["p"]["g"].asDouble();
if(o["o"]["p"].isMember("c")) this->bio-=o["o"]["p"]["c"].asDouble();
}
if(o["o"].isMember("r"))
{
if(o["o"]["r"].isMember("u")) this->uran+=o["o"]["r"]["u"].asDouble();
if(o["o"]["r"].isMember("t")) this->titanit+=o["o"]["r"]["t"].asDouble();
if(o["o"]["r"].isMember("m")) this->money+=o["o"]["r"]["m"].asDouble();
if(o["o"]["r"].isMember("g")) this->gold+=o["o"]["r"]["g"].asDouble();
if(o["o"]["r"].isMember("c")) this->bio+=o["o"]["r"]["c"].asDouble();
}
if(o["o"].isMember("pd"))
{
if(o["o"]["pd"].isMember("c"))
{
int rew=o["o"]["pd"]["c"].asInt();
this->carrem-=rew;
vector<string> allrt=this->split(this->altr,':');
int sff=dbqr->restoi(allrt[4]);
sff+=rew;
this->altr=allrt[0];
this->altr.append(":");
this->altr.append(allrt[1]);
this->altr.append(":");
this->altr.append(allrt[2]);
this->altr.append(":");
this->altr.append(allrt[3]);
this->altr.append(":");
this->altr.append(dbqr->itores(sff));
this->altr.append(":");
this->altr.append(allrt[5]);
}
if(o["o"]["pd"].isMember("r"))
{
if(o["o"]["pd"]["r"].isMember("u")) this->uran-=o["o"]["pd"]["r"]["u"].asDouble();
if(o["o"]["pd"]["r"].isMember("t")) this->titanit-=o["o"]["pd"]["r"]["t"].asDouble();
if(o["o"]["pd"]["r"].isMember("m")) this->money-=o["o"]["pd"]["r"]["m"].asDouble();
if(o["o"]["pd"]["r"].isMember("g")) this->gold-=o["o"]["pd"]["r"]["g"].asDouble();
if(o["o"]["pd"]["r"].isMember("c")) this->bio-=o["o"]["pd"]["r"]["c"].asDouble();
}
}
if(o["o"].isMember("j"))
{
    if(o["o"]["j"].isMember("c"))
    {
        if(o["o"]["j"]["c"].isMember("u")) this->uran-=o["o"]["j"]["c"]["u"].asDouble();
        if(o["o"]["j"]["c"].isMember("t")) this->titanit-=o["o"]["j"]["c"]["t"].asDouble();
        if(o["o"]["j"]["c"].isMember("m")) this->money-=o["o"]["j"]["c"]["m"].asDouble();
        if(o["o"]["j"]["c"].isMember("g")) this->gold-=o["o"]["j"]["c"]["g"].asDouble();
        if(o["o"]["j"]["c"].isMember("c")) this->bio-=o["o"]["j"]["c"]["c"].asDouble();
    }
}
}
return 0;
}

string game::parseGM(Json::Value &map, int action)
{
    //cout<<"parse GM"<<endl;
//cout<<"this->ssx="<<this->ssx<<endl;
    time_t t = time(0);   // get time now
    struct tm * now = localtime( & t );
string thistime=(now->tm_mday + 1>9)?"":"0";
thistime.append(this->convertInt(now->tm_mday));
(now->tm_mon + 1>9)? thistime.append("."):thistime.append(".0");
thistime.append(this->convertInt(now->tm_mon + 1));
thistime.append(".");
thistime.append(this->convertInt(now->tm_year-100));
(now->tm_hour>9)? thistime.append(" "):thistime.append(" 0");
thistime.append(this->convertInt(now->tm_hour));
(now->tm_min>9)? thistime.append(":"):thistime.append(":0");
thistime.append(this->convertInt(now->tm_min));
(now->tm_sec>9)? thistime.append(":"):thistime.append(":0");
thistime.append(this->convertInt(now->tm_sec));



string respon="";
for(unsigned int in=0;in<map["n"].size();in++)
{
int mapx=map["n"][in]["m"]["x"].asInt();
int mapy=map["n"][in]["m"]["y"].asInt();
int msid=map["n"][in]["i"].asInt();

string ax="";
string ay="";
if(map["n"][in].isMember("x")) ax=this->convertInt(map["n"][in]["x"].asInt());
if(map["n"][in].isMember("y")) ay=this->convertInt(map["n"][in]["y"].asInt());

dbqr->mapSec(this->convertInt(map["n"][in]["v"].asInt()),map["n"][in]["s"].asString(),map["n"][in]["n"].asString(),
             map["n"][in]["p"].asString(),this->convertInt(map["n"][in]["r"].asDouble()),
             this->convertInt(map["n"][in]["l"].asInt()),map["n"][in]["a"].asString(),
             this->convertInt(mapx),this->convertInt(mapy),this->convertInt(map["n"][in]["c"].asDouble(),1),
             "",
             this->convertInt(map["n"][in]["x"].asInt()),this->convertInt(map["n"][in]["y"].asInt()),
             this->convertInt(map["n"][in]["si"].asInt()),this->convertInt(msid),
             this->convertInt(map["n"][in]["g"].asInt()), this->convertInt(map["n"][in]["h"].asDouble()),thistime);

switch(action)
{
case 0:
{
    if(this->ssx==mapx && this->ssy==mapy)
    {//cout<<"parse GM switch"<<endl;
        this->ssid=msid;
        dbqr->updtSSID(this->vkid,msid);
        respon=this->convertInt(msid);
    }

}; break;
}
}
for(unsigned int in=0;in<map["l"].size();in++)
{

string ao;
string ad;
string at;
string an;

if(map["l"][in].isMember("o")) ao=this->convertInt(map["l"][in]["o"].asInt());
if(map["l"][in].isMember("d")) ad=this->convertInt(map["l"][in]["d"].asDouble());
if(map["l"][in].isMember("t"))
{
    if(map["l"][in]["t"].isMember("l")) at=this->convertInt(map["l"][in]["t"]["l"].asInt());
}
if(map["l"][in].isMember("n"))
{
    if(map["l"][in]["n"].isMember("b")) an=this->convertInt(map["l"][in]["n"]["b"].asInt());
}


dbqr->mapLoc(this->convertInt(map["l"][in]["m"]["x"].asInt()),this->convertInt(map["l"][in]["m"]["y"].asInt()),
             map["l"][in]["a"].asString(),this->convertInt(map["l"][in]["i"].asInt()),
             this->convertInt(map["l"][in]["g"].asInt()),this->convertInt(map["l"][in]["h"].asDouble()),ao,ad,this->convertInt(map["l"][in]["v"].asInt()),
             at,an);

}
return respon;
}

int game::parseG(Json::Value &G)
{
this->blockb=1;
this->blockt=1;
this->blockskill=1;

this->occar.erase(this->occar.begin(),this->occar.end());
this->qarr.erase(this->qarr.begin(),this->qarr.end());
this->builds.erase(this->builds.begin(),this->builds.end());
this->unitsb.erase(this->unitsb.begin(),this->unitsb.end());
this->sectarmy.erase(this->sectarmy.begin(),this->sectarmy.end());
this->drafts.erase(this->drafts.begin(),this->drafts.end());
this->techs.erase(this->techs.begin(),this->techs.end());
this->lims.erase(this->lims.begin(),this->lims.end());
this->skills.erase(this->skills.begin(),this->skills.end());

vector<int> oarr;
if(G.isMember("od"))
{
for(unsigned int occr=0;occr<G["od"]["u"].size();occr++)
{
if(G["od"]["u"][occr].isMember("c") && G["od"]["u"][occr]["s"].asInt()==2)
{
if(G["od"]["u"][occr]["c"].asDouble()+1000*60*60*2<G["t"].asDouble()) oarr.push_back(G["od"]["u"][occr]["i"].asInt());
}
if(!G["od"]["u"][occr].isMember("c") && G["od"]["u"][occr].isMember("o") && G["od"]["u"][occr]["s"].asInt()==2)
{
if(G["od"]["u"][occr]["o"].asDouble()+1000*60*60*6<G["t"].asDouble()) oarr.push_back(G["od"]["u"][occr]["i"].asInt());
}
}
}
this->occar=oarr;

this->cybfr=50-G["xd"]["o"].size();
for(unsigned int sa=0;sa<G["xd"]["o"].size();sa++)
{
    this->remsid(dbqr->itores(G["xd"]["o"][sa].asInt()));
}
/*
for(unsigned int sa=0;sa<G["xd"]["x"].size();sa++)
{
    this->remsid(dbqr->itores(G["xd"]["x"][sa].asInt()));
}
for(unsigned int sa=0;sa<G["xd"]["y"].size();sa++)
{
    this->remsid(dbqr->itores(G["xd"]["y"][sa].asInt()));
}
*/

this->r=G["r"].asInt();
//this->u=G["t"].asDouble();
//this->SG=this->microtime()-this->u;

this->rtc=G["rtc"].asInt();

if(this->sx==0 && this->sy==0) // установка координат
{
    this->sx=G["map"]["x"].asInt();
    this->sy=G["map"]["y"].asInt();
    dbqr->updtCoord(this->vkid,this->sx,this->sy);
}

this->uran=G["a"]["r"]["u"].asDouble();
this->titanit=G["a"]["r"]["t"].asDouble();
this->money=G["a"]["r"]["m"].asDouble();
this->gold=G["a"]["r"]["g"].asDouble();
this->bio=G["a"]["r"]["c"].asDouble();

this->l=G["a"]["l"].asInt();

this->bnum=0;
this->wnum=0;
this->bcap=1000;
this->wcap=1000;

this->bcap=0;
this->wcap=0;
int biofl=0;

this->squares=G["sd"]["w"]["x"].asInt();
for(unsigned int ik=0;ik<G["sd"]["s"]["o"].size();ik++)  // создаем вектор зданий
{
struct building asdf;
asdf.i=G["sd"]["s"]["o"][ik]["i"].asInt();
asdf.l=G["sd"]["s"]["o"][ik]["c"]["l"].asInt();
asdf.m=G["sd"]["s"]["o"][ik]["gi"]["m"].asInt();
asdf.t=G["sd"]["s"]["o"][ik]["t"].asInt();
asdf.x=G["sd"]["s"]["o"][ik]["gi"]["x"].asInt();
asdf.y=G["sd"]["s"]["o"][ik]["gi"]["y"].asInt();
asdf.b=(int)G["sd"]["s"]["o"][ik]["c"].isMember("f");
if(asdf.b>0) this->blockb=0;
 if(asdf.t==108)
{
    this->wnum++;
    this->wcap+=tddata->GetWareCapacity(asdf.l);
}
if(asdf.t==109)
{
    this->bnum++;
    this->bcap+=tddata->GetWareCapacity(asdf.l);
}
if(asdf.t==149) biofl=1;
//cout<<"ready? "<<endl;
this->builds.push_back(asdf);
//cout<<"here it is! "<<endl;

/*
this->builds.push_back(building());
this->builds[ik].i=G["sd"]["s"]["o"][ik]["i"].asInt();
this->builds[ik].l=G["sd"]["s"]["o"][ik]["c"]["l"].asInt();
this->builds[ik].m=G["sd"]["s"]["o"][ik]["gi"]["m"].asInt();
this->builds[ik].t=G["sd"]["s"]["o"][ik]["t"].asInt();
this->builds[ik].x=G["sd"]["s"]["o"][ik]["gi"]["x"].asInt();
this->builds[ik].y=G["sd"]["s"]["o"][ik]["gi"]["y"].asInt();
this->builds[ik].b=(int)G["sd"]["s"]["o"][ik]["c"].isMember("f");
if(this->builds[ik].b>0) this->blockb=0;

if(this->builds[ik].t==108)
{
    this->wnum++;
    this->wcap+=tddata->GetWareCapacity(this->builds[ik].l);
}
if(this->builds[ik].t==109)
{
    this->bnum++;
    this->bcap+=tddata->GetWareCapacity(this->builds[ik].l);
}
if(this->builds[ik].t==149) biofl=1;*/
}
this->_BIO*=biofl;

if(G.isMember("bc"))
{
    if(G["bc"].isMember("c"))
    {
        if(G["bc"]["c"].isMember("f")) this->_BIO=0;
    }
}

for(unsigned int ik=0;ik<G["td"]["f"]["o"].size();ik++)  // создаем вектор зданий
{
int asd=1;
for(unsigned int in=0;in<this->unitsb.size();in++)
{
    if(G["td"]["f"]["o"][ik]["k"].asInt()==this->unitsb[in].t)
    {
        //cout<<unitsb[in].num<<endl;
        this->unitsb[in].num+=G["td"]["f"]["o"][ik]["p"].asInt();
        this->unitsb[in].tm+=G["td"]["f"]["o"][ik]["p"].asInt()*tddata->GetObjLC(G["td"]["f"]["o"][ik]["k"].asInt(),1);
        asd=0;
    }

}
if(asd)
{
struct unitbuild dsaf;

dsaf.t=G["td"]["f"]["o"][ik]["k"].asInt();
dsaf.num=G["td"]["f"]["o"][ik]["p"].asInt();
dsaf.queue=tddata->GetQueue(G["td"]["f"]["o"][ik]["k"].asInt());
dsaf.tm+=G["td"]["f"]["o"][ik]["p"].asInt()*tddata->GetObjLC(G["td"]["f"]["o"][ik]["k"].asInt(),1);
this->unitsb.push_back(dsaf);

}
}

//cout<<" m 1"<<endl;
int tdf=0;
for(unsigned int in=1;in<100;in++)
{
string tmpin=dbqr->itores(in);
if(G["td"]["r"]["t"].isMember(tmpin))
{
    struct army wdfg;

    wdfg.t=tmpin;
    wdfg.num=G["td"]["r"]["t"][tmpin].asInt();
    this->sectarmy.push_back(wdfg);

    /*
    this->sectarmy.push_back(army());
    this->sectarmy[tdf].t=tmpin;
    this->sectarmy[tdf].num=G["td"]["r"]["t"][tmpin].asInt();
    */

tdf++;
}
}
for(unsigned int in=9000;in<9050;in++)
{
string tmpin=dbqr->itores(in);
if(G["td"]["r"]["t"].isMember(tmpin))
{
    struct army wdfg;

    wdfg.t=tmpin;
    wdfg.num=G["td"]["r"]["t"][tmpin].asInt();
    this->sectarmy.push_back(wdfg);

    /*
    this->sectarmy.push_back(army());
    this->sectarmy[tdf].t=tmpin;
    this->sectarmy[tdf].num=G["td"]["r"]["t"][tmpin].asInt();
    */

tdf++;
}
}


this->q="";
vector<int> tqarr;
for(unsigned int in=0;in<G["qd"]["q"].size();in++)
{
    if((this->_Q==1 || this->_F==1) && (G["qd"]["q"][in]["s"].asInt()==0 || G["qd"]["q"][in]["s"].asInt()==9))
    {
    tqarr.push_back(G["qd"]["q"][in]["l"].asInt()); /////////////NB
    tqarr.push_back(G["qd"]["q"][in]["s"].asInt());
    }
    int xd=0;
    if((this->_Q==1 || this->_F==1) && G["qd"]["q"][in]["s"].asInt()==5 && G["qd"]["q"][in]["c"][xd].isMember("c"))
    {
    if(G["qd"]["q"][in]["c"][xd]["c"].isMember("p") && G["qd"]["q"][in]["c"][xd]["c"].isMember("c"))
    {
    string pr=this->convertInt(G["qd"]["q"][in]["c"][xd]["c"]["p"].asInt());
    pr.append(",");
    pr.append(this->convertInt(G["qd"]["q"][in]["c"][xd]["c"]["c"].asInt()));
    if(dbqr->existTask(this->vkid,"Q","TryQuest",pr)==0) dbqr->addTask(this->vkid,"Q","TryQuest",pr);
    }
    }
    this->q.append(this->convertInt(G["qd"]["q"][in]["l"].asInt()));
    if(in<G["qd"]["q"].size()-1) this->q.append(",");
}
this->qarr=tqarr;


this->crem=6-G["wd"]["y"].asInt();
this->drem=2-G["wd"]["x"].asInt();

this->tr_h=G["ad"]["q"].asInt();
this->tr_p=floor(G["ad"]["c"].asDouble());
this->tr_s=G["ad"]["s"].asDouble();



int aa=0,ao=0,ai=0,fa=0,fo=0,fi=0,ac=0,ar=0;
string dep,arr;

for(unsigned int in=0;in<G["wd"]["u"].size();in++)  // алерт
{
if(G["wd"]["u"][in]["t"].asInt()==this->sid)
{
if(G["wd"]["u"][in].isMember("pt"))
{
    if(G["wd"]["u"][in]["pt"]["o"].asInt()>0)
    {
        dep="0";
        arr="0";
        if(G["wd"]["u"][in].isMember("sf"))
        {
        dep=this->convertInt(G["wd"]["u"][in]["sf"]["d"].asDouble());
        arr=this->convertInt(G["wd"]["u"][in]["sf"]["a"].asDouble());
        }
       if(G["wd"]["u"][in]["pt"]["o"].asInt()==2)
       {
        aa=1;
        fa=(dbqr->isntAlerted(G["wd"]["u"][in]["i"].asInt(),G["wd"]["u"][in]["o"].asInt(),G["wd"]["u"][in]["pt"]["o"].asInt()))?1:0;
       if(dbqr->isAlert(G["wd"]["u"][in]["i"].asInt(),G["wd"]["u"][in]["o"].asInt(),G["wd"]["u"][in]["pt"]["o"].asInt())) dbqr->addAlert(this->vkid,G["wd"]["u"][in]["i"].asInt(),G["wd"]["u"][in]["o"].asInt(),G["wd"]["u"][in]["pt"]["o"].asInt(),dep,arr);
        }
       if(G["wd"]["u"][in]["pt"]["o"].asInt()==3)
       {
        ao=1;
        fo=(dbqr->isntAlerted(G["wd"]["u"][in]["i"].asInt(),G["wd"]["u"][in]["o"].asInt(),G["wd"]["u"][in]["pt"]["o"].asInt()))?1:0;
       if(dbqr->isAlert(G["wd"]["u"][in]["i"].asInt(),G["wd"]["u"][in]["o"].asInt(),G["wd"]["u"][in]["pt"]["o"].asInt())) dbqr->addAlert(this->vkid,G["wd"]["u"][in]["i"].asInt(),G["wd"]["u"][in]["o"].asInt(),G["wd"]["u"][in]["pt"]["o"].asInt(),dep,arr);
        }
       if(G["wd"]["u"][in]["pt"]["o"].asInt()==4)
       {
        ai=1;
        fi=(dbqr->isntAlerted(G["wd"]["u"][in]["i"].asInt(),G["wd"]["u"][in]["o"].asInt(),G["wd"]["u"][in]["pt"]["o"].asInt()))?1:0;
       if(dbqr->isAlert(G["wd"]["u"][in]["i"].asInt(),G["wd"]["u"][in]["o"].asInt(),G["wd"]["u"][in]["pt"]["o"].asInt())) dbqr->addAlert(this->vkid,G["wd"]["u"][in]["i"].asInt(),G["wd"]["u"][in]["o"].asInt(),G["wd"]["u"][in]["pt"]["o"].asInt(),dep,arr);

       }
     }
}
}
if(G["wd"]["u"][in]["o"].asInt()==this->sid)
{
    if(G["wd"]["u"][in].isMember("pd"))
{
    ac+=G["wd"]["u"][in]["pd"]["c"].asInt();
}
}
}



for(unsigned int in=0;in<G["rd"]["o"].size();in++)
{
ar+=G["rd"]["o"][in]["o"]["c"].asInt();
}

this->carrem=tr_h-ac-ar;

this->altr=this->convertInt(aa+fa);
this->altr.append(":");
this->altr.append(this->convertInt(ao+fo));
this->altr.append(":");
this->altr.append(this->convertInt(ai+fi));
this->altr.append(":");
this->altr.append(this->convertInt(tr_h-ac-ar));
this->altr.append(":");
this->altr.append(this->convertInt(ac));
this->altr.append(":");
this->altr.append(this->convertInt(ar));

//cout<<this->altr<<endl;/////////////////////////////////////////////////////////////////

int cnm=0;
for(unsigned int in=0;in<G["wd"]["f"].size();in++)
{
    int asl=0;
    for(unsigned int ij=0;ij<G["wd"]["f"][in]["x"].size();ij++)
    {
     asl+= G["wd"]["f"][in]["x"][ij]["r"].asInt();
    }
    if(G["wd"]["f"][in]["c"].asInt()>0 || asl!=0)
    {
        struct lim tedfr;

        tedfr.i=G["wd"]["f"][in]["i"].asInt();
        tedfr.c=G["wd"]["f"][in]["c"].asInt();
        tedfr.x=asl;
        this->lims.push_back(tedfr);

        /*
        this->lims.push_back(lim());
        this->lims[cnm].i=G["wd"]["f"][in]["i"].asInt();
        this->lims[cnm].c=G["wd"]["f"][in]["c"].asInt();
        this->lims[cnm].x=asl;
        */
        cnm++;
    }
}

this->techs.resize(G["hd"]["tl"].size());
for(unsigned int in=0;in<G["hd"]["tl"].size();in++)
{
        //this->techs.push_back(tech());
        this->techs[in].t=G["hd"]["tl"][in]["t"].asInt();
        this->techs[in].l=G["hd"]["tl"][in]["c"]["l"].asInt();
        this->techs[in].b=(int) G["hd"]["tl"][in]["c"].isMember("f");
        if(this->techs[in].b>0) this->blockt=0;
}

this->drafts.resize(G["dd"]["d"].size());
for(unsigned int in=0;in<G["dd"]["d"].size();in++)
{
   // this->drafts.push_back(draft());
    this->drafts[in].t=G["dd"]["d"][in]["t"].asInt();
    int cnm=0;

this->drafts[in].ps.resize(G["dd"]["d"][in]["d"]["p"].size());
    for(unsigned int ij=0;ij<G["dd"]["d"][in]["d"]["p"].size();ij++)
    {
    //this->drafts[in].ps.push_back(G["dd"]["d"][in]["d"]["p"][ij].asInt());
    this->drafts[in].ps[ij]=G["dd"]["d"][in]["d"]["p"][ij].asInt();
    cnm++;
    }

}

for(unsigned int in=0;in<G["sa"]["s"].size();in++)
{
    struct skill tregh;

    tregh.t=G["sa"]["s"][in]["t"].asInt();
    tregh.l=G["sa"]["s"][in]["c"]["l"].asInt();

    this->skills.push_back(tregh);

    /*
    this->skills.push_back(skill());
    this->skills[in].t=G["sa"]["s"][in]["t"].asInt();
    this->skills[in].l=G["sa"]["s"][in]["c"]["l"].asInt();
    */
    if(G["sa"]["s"][in]["c"].isMember("f")) this->blockskill=0;
}

this->skillav=G["sa"]["p"].asInt();

//cout<<this->drafts[0].t<<" drafts"<<endl;
//cout<<dbqr->addAlert(this->vkid,123,234,345,"12345","67890");
//if (this->sectarmy.size()>0) cout<<"unit: "<<this->sectarmy[0].t<<" : "<<this->sectarmy[0].num<<endl;
//if (this->unitsb.size()>0) cout<<"тгь: "<<this->unitsb[0].num<<" queue: "<<this->unitsb[0].queue<<" type: "<<this->unitsb[0].t<<endl;
//dbqr->addTask("vk1","E","TestTask","123,43");
//cout<<this->bcap<<" "<<this->wcap<<" "<<this->convertInt(this->titanit)<<"  "<<this->titanit<<endl;
return 0;
}

int game::buyNotExpensive(int t,int l,int n)
{
if((t==108 && this->wnum>1) || (t==109 && this->bnum>1)) n*=2;
if(tddata->GetObjLU(t,l)*n>this->uran && tddata->GetObjLU(t,l)>0) return 0;
if(tddata->GetObjLT(t,l)*n>this->titanit && tddata->GetObjLT(t,l)>0) return 0;
if(tddata->GetObjLM(t,l)*n>this->money && tddata->GetObjLM(t,l)>0) return 0;
if(tddata->GetObjLG(t,l)*n>this->gold && tddata->GetObjLG(t,l)>0) return 0;
if(tddata->GetObjLGI(t,l)*n>this->bio && tddata->GetObjLGI(t,l)>0) return 0;
return 1;
}

int game::buildingExists(int t)
{
    int cnt=0;
    for(unsigned int i=0;i<this->builds.size();i++)
    {
        if(this->builds[i].t==t) cnt+=this->builds[i].l;
    }
    return cnt;
}

int game::buildingMaxLevel(int t)
{
    int cnt=0;
    for(unsigned int i=0;i<this->builds.size();i++)
    {
        if(this->builds[i].l>cnt && this->builds[i].t==t) cnt=this->builds[i].l;
    }
    return cnt;
}

int game::techLearnt(int t)
{
    int cnt=0;
    for(unsigned int i=0;i<this->techs.size();i++)
    {
        if(this->techs[i].t==t) cnt+=this->techs[i].l;
    }
	// if(t==) return 1;
    return cnt;
}

int game::draftsCollected(int t)
{
    int cnt=0;
    for(unsigned int i=0;i<this->drafts.size();i++)
    {
        if(this->drafts[i].t==t)
        {
            cnt=1;
            for(unsigned int j=0;j<this->drafts[i].ps.size();j++) cnt*=this->drafts[i].ps[j];
        }
    }
    return cnt;
}

void game::updtTable(void)
{
    string limits="";
    for(unsigned int in=0;in<this->lims.size();in++)
    {
        limits.append(this->convertInt(this->lims[in].i));
        limits.append("+");
        limits.append(this->convertInt(this->lims[in].c));
        limits.append("+");
        limits.append(this->convertInt(this->lims[in].x));
        if(in<this->lims.size()-1) limits.append(":");
    }

    string draftss="";
    for(unsigned int in=0;in<this->drafts.size();in++)
    {
        draftss.append(this->convertInt(this->drafts[in].t));
        draftss.append("+");
        for(unsigned int ij=0;ij<drafts[in].ps.size();ij++)
        {
        draftss.append(this->convertInt(ij));
        draftss.append("*");
        draftss.append(this->convertInt(this->drafts[in].ps[ij]));
        if (ij<this->drafts[in].ps.size()-1) draftss.append("+");
        }
        if(in<this->drafts.size()-1) draftss.append(":");
    }

    string ttechs="";
    for(unsigned int in=0;in<this->techs.size();in++)
    {
        ttechs.append(this->convertInt(this->techs[in].t));
        ttechs.append("+");
        ttechs.append(this->convertInt(this->techs[in].l));
        ttechs.append("+");
        ttechs.append(this->convertInt(this->techs[in].b));
        if(in<this->techs.size()-1) ttechs.append(":");
    }

    time_t t = time(0);   // get time now
    struct tm * now = localtime( & t );
string thistime=(now->tm_mday + 1>9)?"":"0";
thistime.append(this->convertInt(now->tm_mday));
(now->tm_mon + 1>9)? thistime.append("."):thistime.append(".0");
thistime.append(this->convertInt(now->tm_mon + 1));
thistime.append(".");
thistime.append(this->convertInt(now->tm_year-100));
(now->tm_hour>9)? thistime.append(" "):thistime.append(" 0");
thistime.append(this->convertInt(now->tm_hour));
(now->tm_min>9)? thistime.append(":"):thistime.append(":0");
thistime.append(this->convertInt(now->tm_min));
(now->tm_sec>9)? thistime.append(":"):thistime.append(":0");
thistime.append(this->convertInt(now->tm_sec));

dbqr->updtAI(this->vkid,this->convertInt(this->u),this->convertInt(this->r),this->altr,this->q,this->convertInt(this->uran,1),this->convertInt(this->titanit,1),this->convertInt(this->money,1),
             this->convertInt(this->gold,1),this->convertInt(this->bio,1),this->convertInt(this->tr_h),this->convertInt(this->tr_p), this->convertInt(this->tr_s,1),this->convertInt(this->l),this->convertInt(this->crem),this->convertInt(this->drem),limits, draftss,ttechs,thistime,this->convertInt(this->ownsrv));

return;
}

void game::updtBuild(void)
{
string blds="";
blds.append(this->convertInt(this->rtc));
blds.append(";");

for(unsigned int in=0;in<this->builds.size();in++)
{
    if((this->builds[in].t<200 && this->builds[in].t>=100) || this->builds[in].t==600)
    {
        blds.append(this->convertInt(this->builds[in].i));
        blds.append(",");
        blds.append(this->convertInt(this->builds[in].t));
        blds.append(",");
        if(this->builds[in].m==0) blds.append("false");
        else blds.append("true");
        blds.append(",");
        blds.append(this->convertInt(this->builds[in].x));
        blds.append(",");
        blds.append(this->convertInt(this->builds[in].y));
        blds.append(",");
        blds.append(this->convertInt(this->builds[in].l));
        blds.append(",");
        blds.append(this->convertInt(this->builds[in].b));
        if(in<this->builds.size()-1) blds.append(";");
    }
}
//cout<<blds<<endl;
dbqr->updtBLD(this->vkid,this->convertInt(this->wcap),this->convertInt(this->bcap),blds);
return;
}

string game::convertInt(double number, int cas)
{
   stringstream ss;//create a stringstream
   ss.precision(13);
   ss << number;//add number to the stream
   string ret=ss.str();//return a string with the contents of the stream
   if(!cas)
   {
   int a=ret.find(".");
    if(a==-1) return ret;
    ret=ret.replace(a,ret.length()-a,"");
   }
  return ret;
}

double game::microtime(){
     timeval tim;
     gettimeofday(&tim, NULL);
     return (tim.tv_sec+(tim.tv_usec/1000000.0))*1000-this->SG;
}

void game::errorlog(string str0)
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
    fff.append("gamelog.txt");
    FILE* pFile = fopen(fff.c_str(), "a");
    if (pFile!=NULL)
  {
    fputs (str,pFile);
    fclose (pFile);
  }
}

vector<string> &game::split(const string &s, char delim, vector<string> &elems) {
    stringstream ss(s);
    string item;
    while(getline(ss, item, delim)) {
        elems.push_back(item);
    }
    return elems;
}


vector<string> game::split(const string &s, char delim) {
    vector<string> elems;
    return split(s, delim, elems);
}

void game::friender(string s1,string s2)
{
this->frnds=this->remowner(s2);
vector<string> the_vector0 = this->split(s2, ',');
for(unsigned int sd=0;sd<the_vector0.size();sd++)
{
    if(s1.find(the_vector0.at(sd))==string::npos)
    {
        if(s1!="") s1=s1.append(",");
        s1=s1.append(the_vector0.at(sd));
    }
}
vector<string> the_vector1 = this->split(s1, ',');
if(the_vector1.size()<35)
{
int limfradd=35-the_vector1.size();
MYSQL_RES *random;
MYSQL_ROW rrandom;
string quer1="select a_soc from ";
quer1.append(_ACCOUNTS);
quer1.append(" where a_soc>'");
quer1.append(this->vkid);
quer1.append("' limit 0,50");
//cout<<quer1<<endl;
mysql_query(dbqr->conn, quer1.c_str());
random = mysql_use_result(dbqr->conn);
while ((rrandom = mysql_fetch_row(random)) != NULL && limfradd>=0)
{
string tempvk="\"";
tempvk.append(rrandom[0]);
tempvk.append("\"");
  if(s1.find(tempvk)==string::npos)
    {
        if(s1!="") s1.append(",");
        s1.append(tempvk);
        limfradd--;
    }
}
mysql_free_result(random);
}
this->fr0=this->remowner(s1);
}

string game::remowner(string list)
{
string tempvk=",\"";
tempvk.append(this->vkid);
tempvk.append("\",");
int indx=list.find(tempvk);
if(indx!=-1) list.replace(indx,tempvk.length(),",");
tempvk="\"";
tempvk.append(this->vkid);
tempvk.append("\",");
indx=list.find(tempvk);
if(indx!=-1) list.replace(indx,tempvk.length(),"");
tempvk=",\"";
tempvk.append(this->vkid);
tempvk.append("\"");
indx=list.find(tempvk);
if(indx!=-1) list.replace(indx,tempvk.length(),"");
tempvk="\"";
tempvk.append(this->vkid);
tempvk.append("\"");
indx=list.find(tempvk);
if(indx!=-1) list.replace(indx,tempvk.length(),"");
return list;
}

void game::remsid(string csid)
{
string tempvk=",";
tempvk.append(csid);
tempvk.append(",");
int indx=this->realfr.find(tempvk);
if(indx!=-1) this->realfr.replace(indx,tempvk.length(),",");
tempvk="";
tempvk.append(csid);
tempvk.append(",");
indx=this->realfr.find(tempvk);
if(indx!=-1) this->realfr.replace(indx,tempvk.length(),"");
tempvk=",";
tempvk.append(csid);
tempvk.append("");
indx=this->realfr.find(tempvk);
if(indx!=-1) this->realfr.replace(indx,tempvk.length(),"");
tempvk=csid;
indx=this->realfr.find(tempvk);
if(indx!=-1) this->realfr.replace(indx,tempvk.length(),"");
return;
}

int game::TechNick(int i)
{
switch(i)
{
case 1076: return 0; break;
case 1054: return 1; break;
case 1060: return 2; break;
case 1061: return 3; break;
case 1053: return 4; break;
case 1055: return 5; break;
case 1056: return 6; break;
case 1057: return 7; break;
case 1062: return 8; break;
case 1078: return 9; break;
case 1063: return 10; break;
case 1079: return 11; break;
case 1065: return 12; break;
case 1068: return 13; break;
case 1066: return 14; break;
case 1069: return 15; break;
case 1073: return 16; break;
case 1074: return 17; break;
case 1075: return 18; break;
case 1070: return 19; break;
case 1071: return 20; break;
case 1080: return 21; break;
default: return 0;
}
}

