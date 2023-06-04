#if defined _E
#define _EX extern
#else
#define _EX
#endif
#ifndef TSTACC_H
#define TSTACC_H
#include <curl/curl.h>
#include <string.h>
#include <iostream>
#include "/home/helga/Рабочий стол/projects/_Mapper/include/game.h"
#include <openssl/md5.h>


using namespace std;
class tstacc
{
    public:



        tstacc(int,string,string,string,string,string,string,string,string,string,string,string,string,string,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,string);
        virtual ~tstacc();

        int curl_set(void);
        game *gvars;
        int game_set(void);
        CURL *curl;
//CURLcode result;
int state;
void print(void);

    protected:
    private:



string sign();
string md5(string);
static int writer(char *, size_t , size_t , string*);
string toHex(const char *, int);
char errorBuffer[CURL_ERROR_SIZE];
string buffer;
};

#endif // TSTACC_H
