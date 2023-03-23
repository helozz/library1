
 #ifndef DATA_H
#define DATA_H
//#include <string.h>
class TDdata{
public:
TDdata();
//virtual ~TDdata();
int GetQueue(int);
const char* GetItemName(int);
int GetItemId(const char*);
double GetItemU(int);
double GetItemT(int);
double GetItemM(int);
double GetItemG(int);
double GetItemC(int);
double GetItemS(const char*);
int GetItemP(int);
int GetTrN(int);
double GetTrP(int);
double GetTrS(int);
double GetWareCapacity(int);
const char* GetItemB(int);
int GetObjL(int);
double GetObjLU(int,int);
double GetObjLT(int,int);
double GetObjLM(int,int);
double GetObjLG(int,int);
double GetObjLGI(int,int);
double GetObjLC(int,int);
int GetObjSX(int);
int GetObjSY(int);
int GetSkillCount(void);
int GetSkillId(int);
int GetSkillLevels(int);
int GetSkillNum(int);
const char* GetSkillName(int);
const char* GetSkillDem(int);
const char* GetSkillImage(int);

};
#endif // DATA_H