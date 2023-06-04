
#ifndef WTDBCPP_H
#define WTDBCPP_H

#include "/home/helga/Рабочий стол/projects/_Mapper/defines.cpp"
#include <stdlib.h>
#include <mysql/mysql.h>

//////////////////////////////////
//test
#include <stdio.h>
#include <iostream>
#include <sstream>
#include <time.h>
#include <string.h>

using namespace std;

class wtdbcpp
{
    public:
        wtdbcpp();
        virtual ~wtdbcpp();
        MYSQL *conn;

        int restoi(char*);
        int restoi(string);
        string itores(int);
void setXXX(void);
void updtCoord(string,int,int);
void updtSID(string,int);
void updtSSID(string,int);
void updtSS(string,int,int,int);
void addTask(string,string,string,string);
int addAlert(string,int,int,int,string,string);
int isntAlerted(int,int,int);
int isAlert(int,int,int);
int forceGet(string);
void forceSet(string,int);
void alertSet(string,int);
void firstOff(string);
void updtAI(string,string,string,string,string,string,string,string,string,string,string,string,string,string,string,string,string,string,string,string,string);
void internMessage(string,string,string);
string recognizeUser(string);
void updtBLD(string,string,string,string);
string getTask(string,string);
string getWTask(string,string);
int existTask(string,string,string,string);
void remTask(string);
void updtTask(string,string,string);
void apo(void);
void lgo(void);
void mapOper(string,string,string,string,string);
void mapLoc(string,string,string,string,string,string,string,string,string,string,string);
void mapSec(string,string,string,string,string,string,string,string,string,string,string,string,string,string,string,string,string,string);
void addSec(int,string,string,int,int,int,int,int,int,string);
string getSectorU(void);
string getSectorT(void);
string getSectorUII(void);
string getSectorTII(void);
string getScheme(string,string);
string getSid(string);
string getRealFriends(string,string);
string getEngine(int);
void remEngine(string);
    protected:
    private:

MYSQL_RES *result;
MYSQL_ROW rresult;

};

#endif // WTDBCPP_H
