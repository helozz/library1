#if defined _E
#define _EX extern
#else
#define _EX
#endif

#ifndef GAME_H
#define GAME_H
#include <json/json.h>
#include "/home/helga/Рабочий стол/projects/_WTUpdater/json/json.h"
#include <stdio.h>
#include <iostream>
#include <time.h>
#include <sys/time.h>
#include <sstream>
#include <string.h>
#include "/home/helga/Рабочий стол/projects/_WTUpdater/include/TDdata.h"
#include "/home/helga/Рабочий стол/projects/_WTUpdater/include/wtdbcpp.h"
#include <vector>
#include <math.h>

extern TDdata *tddata;
extern wtdbcpp *dbqr;

using namespace std;

class game
{
    public:
        game(string,string,string,string,string,string,string,string,string,string,string,string,string,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,string);
        virtual ~game();
        int game_parse(string,int);

        string currserver;
        string zeroserver;
        vector<string> servers;
        int ownsrv;

string vkid;
string auth;
string img;
string name;
string frnds;
string prox;
string prpwd;
string ver;
string ref;
string fr0;
string usrr;
string nick;
string type;
string seed;
string session;

string topost;
string method;

int sx;
int sy;
int sid;
int ssx;
int ssy;
int ssid;

int _ACT;
int _F;
int _Q;
int _B;
int _U;
int _T;
int _O;
int _D;
int _N;
int _R;
int _A;
int _BIO;
int _L;
int _S;


    protected:
    private:

    string convertInt(double,int=0);
    double microtime(void);
    void errorlog(string);

vector<string> &split(const string &, char, vector<string> &);
vector<string> split(const string &, char);
string remowner(string);
void friender(string,string);
int TechNick(int);
void updtTable(void);
void updtBuild(void);
int confirmBuy(int);
void doSingIn(void);
void doGetId(void);
void doSaveScene(void);
void doStartQuest(int);
void doCloseQuest(int);
void doSectorName(string);
int doBuyBuild(int,int,int,int,int,string);
int doBuyTech(int,int);
int doTryQuest(int,int);
int doBuyUnit(int,int);
int doExtend(void);
void doMakeBio500(void);
void doCybForUser(string);
int doAddOffer(int,int,string,string);
void doAcceptOffer(string,string,string,string,string,string,string,string,int);
int doRemOffer(int);
void doSendRes(string,string,string);
void doCollectOccupation(int);

void applyScheme(void);
void cutScheme(void);
void setFTasks(void);

int next(int);

int parseO(Json::Value&);
int parseG(Json::Value&);
string parseGM(Json::Value&,int=0);
int buildingExists(int);
int buildingMaxLevel(int);
int techLearnt(int);
int draftsCollected(int);
int buyNotExpensive(int,int,int);
int learnIt(void);
void setBTasks(void);
int inArmies(int,int,int,int,int,int,string);

string wildcls;
string wildcls0;
string wildid;
string wildpar;
string wildpar0;
string wildpar1;
string offer;
string lasttask;
string rot;
string messg;
// переменные:
int r;
double u;
double SG;
string q;
int s;
string altr;
int l;
int rtc;
string scheme;
string realfr;

void remsid(string);
int cybfr;

int blockt;
int blockb;

// банки и склады
int bnum;
int wnum;
int bcap;
int wcap;

int crem;
int drem;
int carrem;

int squares;
int addFt;

// ресурсы:
double uran;
double titanit;
double money;
double gold;
double bio;

int tr_h;
int tr_p;
double tr_s;

vector<int> qarr;
vector<int> occar;

struct building{
int i;
int t;
int l;
int x;
int y;
int m;
int b;
};

vector<building> builds;

struct unitbuild{
int t;
int num;
int queue;
double tm; // осталось секунд постройки
};

vector<unitbuild> unitsb;

struct army{
int num;
string t;
};

vector<army> sectarmy;
vector<army> chooseArmy(int,int,int,int,int,int);
int doSendUnit(int,vector<army>,int,int);

struct draft{
int t;
vector<int> ps;
};

vector<draft> drafts;

struct tech{
int t;
int l;
int b;
};

vector<tech> techs;

struct lim{
int i;
int c;
int x;
};

vector<lim> lims;

struct skill{
int l;
int t;
};

vector<skill> skills;

int skillav;
int blockskill;

void doImproveSkill(int);
int isImproving(int);

/*
struct world{
int i;
int o;
int t;
int u;
int pto;
vector<army> pttt;
int pdc;
float sfd;
float sfa;
float sba;
float sbd;
};

vector<world> moves;
*/






};

#endif // GAME_H
