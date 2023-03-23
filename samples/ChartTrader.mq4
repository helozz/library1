//+------------------------------------------------------------------+
//|                                                  ChartTrader.mq4 |
//|                                                         Helga Oz |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Helga Oz"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict

#define HO_BUY 1
#define HO_SELL 2
#define HO_SAVE 3
#define HO_LOAD 4
#define HO_CLOSE 5
#define HO_PLACE 6
#define HO_MARKET 7
#define HO_PROFIT 8
#define HO_LOSS 9
#define HO_PENDING 10
#define HO_SYMBOL 11
#define HO_BUFFER 12
#define HO_SYMBOLN 13

#define WM_USER 0x0400
#define PM_NOREMOVE 0x0000
#define PM_REMOVE 0x0001
#define PM_NOYIELD 0x0002
  
#import "kernel32.dll"
   int GetCurrentThreadId();
#import   
 
#import "user32.dll"
 
bool PeekMessageA( int& lpMsg[7], // address of structure with message
                    int hWnd, // handle of window
                    int wMsgFilterMin, // first message
                    int wMsgFilterMax, // last message
                    int remflg );
#import

extern int  MagicNumber = 1379;

int   Buffer[8];
int   A[7];
bool  empty = true;

string Name="ChartTrader";

string sym="";
string symbols[];
int    symCount;
string trails[];

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
     //Print(WindowHandle(Symbol(),Period())+" ===  "+  wnd);
     EventSetMillisecondTimer(5);
     GlobalVariableSet("HOTC-temp-THREAD", GetCurrentThreadId());
     ClearBuffer();
     
     symCount = getAvailableCurrencyPairs(symbols);
     for(int i=0; i<symCount; i++) Print(symbols[i]);
     
     ChartSetInteger(0,CHART_SHOW_BID_LINE,0,false);
     ChartSetInteger(0,CHART_SHOW_ASK_LINE,0,false);
     ChartSetInteger(0,CHART_SHOW_LAST_LINE,0,false);
     ChartSetInteger(0,CHART_SHOW_PERIOD_SEP,0,false);
     ChartSetInteger(0,CHART_SHOW_GRID,0,false);
     ChartSetInteger(0,CHART_SHOW_VOLUMES,0,false);
     ChartSetInteger(0,CHART_SHOW_OBJECT_DESCR,0,false);
     ChartSetInteger(0,CHART_COLOR_BACKGROUND,0, clrBlack);
     ChartSetInteger(0,CHART_COLOR_FOREGROUND ,0, clrWhite);
     ChartSetInteger(0,CHART_COLOR_GRID,0, clrBlack);
     ChartSetInteger(0,CHART_COLOR_VOLUME,0, clrBlack);
     ChartSetInteger(0,CHART_COLOR_CHART_UP,0, clrBlack);
     ChartSetInteger(0,CHART_COLOR_CHART_DOWN,0, clrBlack);
     ChartSetInteger(0,CHART_COLOR_CHART_LINE,0, clrBlack);
     ChartSetInteger(0,CHART_COLOR_CANDLE_BULL,0, clrBlack);
     ChartSetInteger(0,CHART_COLOR_CANDLE_BEAR,0, clrBlack);
     ChartSetInteger(0,CHART_COLOR_BID,0, clrBlack);
     ChartSetInteger(0,CHART_COLOR_ASK,0, clrBlack);
     ChartSetInteger(0,CHART_COLOR_LAST,0, clrBlack);
     ChartSetInteger(0,CHART_COLOR_STOP_LEVEL,0, clrBlack);
     ChartSetInteger(0,CHART_SHOW_TRADE_LEVELS,0, clrBlack);
     
     
     PlaySound("ok.wav");
     //PlaySound("timeout.wav");
   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
 //  if(wnd>0) CloseWindow(WindowHandle(Symbol(),Period()));
  // PrintFormat("%s: Unloading reason code =%d",__FUNCTION__,reason);
 //  if(reason==REASON_INITFAILED)
 //    {
      //UnloadSelf();
 //    }
     
     EventKillTimer();   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
      GetTrailingsOrders();
  }
  
  void GetTrailingsOrders()
  {
      string ord = "HOTC-TRAIL-";
      for(int i=0; i<GlobalVariablesTotal();i++)
      {
         string s = GlobalVariableName(i);
         if(StringSubstr(s, 0, 11)!= ord) continue;
         DoTrail(s);      
      }  
  }
  
    
  void DoTrail(string order)
  {
      string asd[5];
      //"HOTC-TRAIL-EURUSD-BE-15664566"
      StringSplit(order, '-', asd);
      
      int ticket = StrToInteger(asd[4]);
      string sy = asd[2];
      double pt = GlobalVariableGet(order);
      if(OrderSelect(ticket, SELECT_BY_TICKET, MODE_TRADES ))
      {
         if(OrderCloseTime()==0)
         {      
                     RefreshRates();
                     double ask = MarketInfo(sy, MODE_ASK);
                     double bid = MarketInfo(sy, MODE_BID);
                     double point = MarketInfo(sy, MODE_POINT);
                     int digits = (int)MarketInfo(sy, MODE_DIGITS); 
            double stoploss1 = bid;
            
            if(asd[3]=="BE") 
            {
               if(OrderType()==OP_BUY) 
               {
                  stoploss1=NormalizeDouble(OrderOpenPrice()+pt*point+OrderCommission()/point,digits);               
                  if(stoploss1 >= OrderOpenPrice())
                  {
                   if(!OrderModify(OrderTicket(), OrderOpenPrice(), stoploss1, OrderTakeProfit(),0,clrGreen))
                   {
                     
                   }
                   else
                   {
                     GlobalVariableDel(order);
                   }
                  }
               }
               if(OrderType()==OP_SELL) 
               {
                  stoploss1=NormalizeDouble(OrderOpenPrice()-pt*point-OrderCommission()/point,digits); 
                  
                  if(stoploss1 <= OrderOpenPrice())
                  {
                   if(!OrderModify(OrderTicket(), OrderOpenPrice(), stoploss1, OrderTakeProfit(),0,clrGreen))
                   {
                   
                   }
                   else
                   {
                     GlobalVariableDel(order);
                   }
                  }        
               }
            }
            
                     
            if(asd[3]=="TS") 
            {               
               //int pp = (int)GlobalVariableGet(StringConcatenate("HOTC-SDP-", sym));
               bool isModified = false;
               
               
               if(OrderType()==OP_BUY) 
               {
                  if(ask < OrderOpenPrice() + pt*point) return;
                  if(OrderStopLoss() == 0) 
                 {
                    for(int x = 10; x <= 50; x+=5)
                    {
                      if(OrderModify(OrderTicket(), OrderOpenPrice(), bid-x*point, OrderTakeProfit(),0,clrGreen)) break;                 
                    }                 
                 }
                 else
                 {
                 if(OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss()+1*point, OrderTakeProfit(),0,clrGreen))
                    {
                    if(OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss()+1*point, OrderTakeProfit(),0,clrGreen))
                    {
                    if(OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss()+1*point, OrderTakeProfit(),0,clrGreen))
                    {

                    }
                    }
                    }
                 }                   
                  /*
                  for(int i = pp - 1; i < pp + 50; i++)
                  {
                  
                     stoploss1 = NormalizeDouble(bid - i*point,digits);
                     if(stoploss1 > OrderStopLoss() || OrderStopLoss()==0)
                     {
                         if(!OrderModify(OrderTicket(), OrderOpenPrice(), stoploss1, OrderTakeProfit(),0,clrGreen))
                         {
                         }
                         else
                         {
                           isModified = true;
                           GlobalVariableSet(StringConcatenate("HOTC-SDP-", sym), MathMin(i, pp));
                           break;
                         }
                     }
                  }*/
               }
               
               if(OrderType()==OP_SELL) 
               {
                 if(bid > OrderOpenPrice() - pt*point) return;
                 if(OrderStopLoss() == 0) 
                 {
                    for(int x = 10; x <= 50; x+=5)
                    {
                    Print(ask+x*point);
                      if(OrderModify(OrderTicket(), OrderOpenPrice(), ask+x*point, OrderTakeProfit(),0,clrGreen)) break;                 
                    }                 
                 }
                 else
                 {
                 if(OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss()-1*point, OrderTakeProfit(),0,clrGreen))
                         {
                         if(OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss()-1*point, OrderTakeProfit(),0,clrGreen))
                         {
                         if(OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss()-1*point, OrderTakeProfit(),0,clrGreen))
                         {
                         
                         }
                         }
                         }
                 }
                 /*
                 
                  for(int i = pp - 1; i < pp + 50; i++)
                  {
                  stoploss1 = NormalizeDouble(ask + pp*point,digits);
                  if(stoploss1 < OrderStopLoss() || OrderStopLoss()==0)
                  {
                   if(!OrderModify(OrderTicket(), OrderOpenPrice(), stoploss1, OrderTakeProfit(),0,clrGreen))
                   {
                     
                   }
                   else
                   {
                     isModified = true;
                     GlobalVariableSet(StringConcatenate("HOTC-SDP-", sym), MathMin(i, pp));
                     break;
                   }
                  }
                  
                  }  */                          
               }
            }
         }
         
         else
         {
            GlobalVariableDel(order);
         }
      }
  }
  
  
  
  
  
  
//+------------------------------------------------------------------+
//| Timer function                                                   |
//+------------------------------------------------------------------+
void OnTimer()
  {
//---
      if(PeekMessageA(A,0,WM_USER,WM_USER,PM_REMOVE))
      {
         //Alert("Получено сообщение!");
         bool fll=false;
         if(A[2]==HO_SYMBOL || A[2]==HO_BUFFER)
         { 
            for(int i=0; i<8; i++)
            {
               if(Buffer[i]==1)
               {
                  if(i==7) 
                  {
                     fll=true;
                  }
                  Buffer[i]=A[3];
                  break;
               }
            }
            if(fll)
            {
               ReadMessage(Buffer, A[2]);
            }
         }
         else
         {
            ////okPrint("Test is ok");
            if(A[2]==HO_BUY)
            {
               Buy();  
            }
            if(A[2]==HO_SELL)
            {
               Sell();  
            }
            if(A[2]==HO_CLOSE)
            {
               //??? UnloadSelf();  
            }
            if(A[2]==HO_PLACE)
            {
               CloseAllBuyOrSell(OP_SELL);  
            }
            if(A[2]==HO_MARKET)
            {
               Market();  
            }
            if(A[2]==HO_PROFIT)
            {
               Profit();  
            }
            if(A[2]==HO_LOSS)
            {
               Loss();  
            }
            if(A[2]==HO_PENDING)
            {
               CloseAllBuyOrSell(OP_BUY);  
            }
            if(A[2]==HO_SYMBOLN)
            {
               sym=(symbols[A[3]]);  
            }
         }
      }
    
  }
    
  void DoSell(double lotSize, double stopLossDelta, double takeProfitDelta, string symb, int be, int ts)
  {
      RefreshRates();
      double ask = MarketInfo(symb, MODE_ASK);
      double bid = MarketInfo(symb, MODE_BID);
      double point = MarketInfo(symb, MODE_POINT);
      int digits = (int)MarketInfo(symb, MODE_DIGITS);
         
         int ticket = OrderSend(symb, OP_SELL, lotSize, bid, 0, NormalizeDouble(bid - stopLossDelta, digits), NormalizeDouble(bid + takeProfitDelta, digits), "CT_SELL", MagicNumber, 0, clrAqua);
         if(ticket == -1) 
         {
            OnBrokerError();
         }
         else 
         {
            if(be>0) GlobalVariableSet(StringConcatenate("HOTC-TRAIL-",symb,"-BE-",ticket), be);
            if(ts>0) GlobalVariableSet(StringConcatenate("HOTC-TRAIL-",symb,"-TS-",ticket), ts);
            Print(ticket);
            Comment(ticket);
            OnBrokerSuccess();
         }      
  }
  
  void DoBuy(double lotSize, double stopLossDelta, double takeProfitDelta, string symb, int be, int ts)
  {
      RefreshRates();
      double ask = MarketInfo(symb, MODE_ASK);
      double bid = MarketInfo(symb, MODE_BID);
      double point = MarketInfo(symb, MODE_POINT);
      int digits = (int)MarketInfo(symb, MODE_DIGITS);
         
         int ticket = OrderSend(symb, OP_BUY, lotSize, ask, 0, NormalizeDouble(ask - stopLossDelta, digits), NormalizeDouble(ask + takeProfitDelta, digits), "CT_BUY", MagicNumber, 0, clrCoral);
         if(ticket == -1) 
         {
            OnBrokerError();
         }
         else 
         {
            if(be>0) GlobalVariableSet(StringConcatenate("HOTC-TRAIL-",symb,"-BE-",ticket), be);
            if(ts>0) GlobalVariableSet(StringConcatenate("HOTC-TRAIL-",symb,"-TS-",ticket), ts);
            Print(ticket);
            Comment(ticket);
            OnBrokerSuccess();
         }      
  }
  
  void Buy()
  {  
      if((int)GlobalVariableGet("HOTC-TW-TEMP")>0) CloseAllBuyOrSell(OP_SELL);
      
      int index = (int)GlobalVariableGet("HOTC-IN-TEMP");
      string sy = symbols[index];
      double ls = 0, tp=0, sl=0, stoploss=0, takeprofit=0;
      double ls2 = 0, stoploss2=0, takeprofit2=0;
      double ls3 = 0, stoploss3=0, takeprofit3=0;
      double ls4 = 0, stoploss4=0, takeprofit4=0;
      double ls5 = 0, stoploss5=0, takeprofit5=0;
      double ls6 = 0, stoploss6=0, takeprofit6=0;
      double ask = MarketInfo(sy, MODE_ASK);
      double bid = MarketInfo(sy, MODE_BID);
      double point = MarketInfo(sy, MODE_POINT);
      int digits = (int)MarketInfo(sy, MODE_DIGITS);      
      //double minstoplevel=MarketInfo(sy, MODE_STOPLEVEL);
      //Print("Minimum Stop Level=",minstoplevel," points");

           int lotdigits = 2; 
           double mls = MarketInfo(sy,MODE_MINLOT);
            if(mls == 1.0)  lotdigits=0;           //" Standard account";
            if(mls == 0.1)   lotdigits=1;          //" Mini Lot account"
            if(mls == 0.01)  lotdigits=2;           //" Micro Lot account";
      
      if((int)GlobalVariableGet("HOTC-SL-TEMP")==0)
      {
         sl = GlobalVariableGet("HOTC-SLV1-TEMP")/100000;
         if(sl>0) stoploss=NormalizeDouble(ask-sl*point, digits);
         sl = GlobalVariableGet("HOTC-SLV2-TEMP")/100000;
         if(sl>0) stoploss2=NormalizeDouble(ask-sl*point, digits);
         sl = GlobalVariableGet("HOTC-SLV3-TEMP")/100000;
         if(sl>0) stoploss3=NormalizeDouble(ask-sl*point, digits);
         sl = GlobalVariableGet("HOTC-SLV4-TEMP")/100000;
         if(sl>0) stoploss4=NormalizeDouble(ask-sl*point, digits);
         sl = GlobalVariableGet("HOTC-SLV5-TEMP")/100000;
         if(sl>0) stoploss5=NormalizeDouble(ask-sl*point, digits);
         sl = GlobalVariableGet("HOTC-SLV6-TEMP")/100000;
         if(sl>0) stoploss6=NormalizeDouble(ask-sl*point, digits);
      }
            
      if((int)GlobalVariableGet("HOTC-TP-TEMP")==0)
      {
         tp = GlobalVariableGet("HOTC-TPV1-TEMP")/100000;
         if(tp>0) takeprofit=NormalizeDouble(ask+tp*point, digits);
         tp = GlobalVariableGet("HOTC-TPV2-TEMP")/100000;
         if(tp>0) takeprofit2=NormalizeDouble(ask+tp*point, digits);
         tp = GlobalVariableGet("HOTC-TPV3-TEMP")/100000;
         if(tp>0) takeprofit3=NormalizeDouble(ask+tp*point, digits);
         tp = GlobalVariableGet("HOTC-TPV4-TEMP")/100000;
         if(tp>0) takeprofit4=NormalizeDouble(ask+tp*point, digits);
         tp = GlobalVariableGet("HOTC-TPV5-TEMP")/100000;
         if(tp>0) takeprofit5=NormalizeDouble(ask+tp*point, digits);
         tp = GlobalVariableGet("HOTC-TPV6-TEMP")/100000;
         if(tp>0) takeprofit6=NormalizeDouble(ask+tp*point, digits);
      }
      if((int)GlobalVariableGet("HOTC-TP-TEMP")==100000)
      {
         // TP/SL Ratio      
         tp = sl*GlobalVariableGet("HOTC-TPV1-TEMP")/100000;
         if(tp>0) takeprofit=NormalizeDouble(ask+tp*point, digits);
         tp = sl*GlobalVariableGet("HOTC-TPV2-TEMP")/100000;
         if(tp>0) takeprofit2=NormalizeDouble(ask+tp*point, digits);
         tp = sl*GlobalVariableGet("HOTC-TPV3-TEMP")/100000;
         if(tp>0) takeprofit3=NormalizeDouble(ask+tp*point, digits);
         tp = sl*GlobalVariableGet("HOTC-TPV4-TEMP")/100000;
         if(tp>0) takeprofit4=NormalizeDouble(ask+tp*point, digits);
         tp = sl*GlobalVariableGet("HOTC-TPV5-TEMP")/100000;
         if(tp>0) takeprofit5=NormalizeDouble(ask+tp*point, digits);
         tp = sl*GlobalVariableGet("HOTC-TPV6-TEMP")/100000;
         if(tp>0) takeprofit6=NormalizeDouble(ask+tp*point, digits);
      } 
      
      
            
      if((int)GlobalVariableGet("HOTC-LS-TEMP")==0)
      {
         // Fix Lot Size
         ls = GlobalVariableGet("HOTC-LSV1-TEMP")/100000;
         ls2 = GlobalVariableGet("HOTC-LSV2-TEMP")/100000;
         ls3 = GlobalVariableGet("HOTC-LSV3-TEMP")/100000;
         ls4 = GlobalVariableGet("HOTC-LSV4-TEMP")/100000;
         ls5 = GlobalVariableGet("HOTC-LSV5-TEMP")/100000;
         ls6 = GlobalVariableGet("HOTC-LSV6-TEMP")/100000;
      }
      if((int)GlobalVariableGet("HOTC-LS-TEMP")==100000)
      {
         // Risk %         
         double risk = NormalizeDouble(GlobalVariableGet("HOTC-LSV1-TEMP")/10000000,4);
         double risk2 = NormalizeDouble(GlobalVariableGet("HOTC-LSV2-TEMP")/10000000,4);
         double risk3 = NormalizeDouble(GlobalVariableGet("HOTC-LSV3-TEMP")/10000000,4);
         double risk4 = NormalizeDouble(GlobalVariableGet("HOTC-LSV4-TEMP")/10000000,4);
         double risk5 = NormalizeDouble(GlobalVariableGet("HOTC-LSV5-TEMP")/10000000,4);
         double risk6 = NormalizeDouble(GlobalVariableGet("HOTC-LSV6-TEMP")/10000000,4);
         if (risk>0) 
         {
          if(risk>1) risk =1;
           ls = NormalizeDouble(MathFloor(AccountEquity()*risk*point/((ask - stoploss)*mls))*mls, lotdigits);
         }  
         if (risk2>0) 
         {
          if(risk2>1) risk2 =1;
           ls2 = NormalizeDouble(MathFloor(AccountEquity()*risk2*point/((ask - stoploss2)*mls))*mls, lotdigits);
         }
          if (risk3>0) 
         {
          if(risk3>1) risk3 =1;
           ls3 = NormalizeDouble(MathFloor(AccountEquity()*risk3*point/((ask - stoploss3)*mls))*mls, lotdigits);
         }
          if (risk4>0) 
         {
          if(risk4>1) risk4 =1;
           ls4 = NormalizeDouble(MathFloor(AccountEquity()*risk4*point/((ask - stoploss4)*mls))*mls, lotdigits);
         }
          if (risk5>0) 
         {
          if(risk5>1) risk5 =1;
           ls5 = NormalizeDouble(MathFloor(AccountEquity()*risk5*point/((ask - stoploss5)*mls))*mls, lotdigits);
         }
          if (risk6>0) 
         {
          if(risk6>1) risk6 =1;
           ls6 = NormalizeDouble(MathFloor(AccountEquity()*risk6*point/((ask - stoploss6)*mls))*mls, lotdigits);
         } 
         
      }
      
      if((int)GlobalVariableGet("HOTC-LS-TEMP")==200000)
      {
      double Money = NormalizeDouble(GlobalVariableGet("HOTC-LSV1-TEMP")/100000,2);
         if (Money>0) 
         {
         // Money
           ls = NormalizeDouble(MathFloor(point*Money/((ask - stoploss)*mls))*mls, lotdigits);
         }
         Money = NormalizeDouble(GlobalVariableGet("HOTC-LSV2-TEMP")/100000,2);
         if (Money>0) 
         {
         // Money
           ls2 = NormalizeDouble(MathFloor(point*Money/((ask - stoploss2)*mls))*mls, lotdigits);
         }
         Money = NormalizeDouble(GlobalVariableGet("HOTC-LSV3-TEMP")/100000,2);
         if (Money>0) 
         {
         // Money
           ls3 = NormalizeDouble(MathFloor(point*Money/((ask - stoploss3)*mls))*mls, lotdigits);
         }
         Money = NormalizeDouble(GlobalVariableGet("HOTC-LSV4-TEMP")/100000,2);
         if (Money>0) 
         {
         // Money
           ls4 = NormalizeDouble(MathFloor(point*Money/((ask - stoploss4)*mls))*mls, lotdigits);
         }
         Money = NormalizeDouble(GlobalVariableGet("HOTC-LSV5-TEMP")/100000,2);
         if (Money>0) 
         {
         // Money
           ls5 = NormalizeDouble(MathFloor(point*Money/((ask - stoploss5)*mls))*mls, lotdigits);
         }
         Money = NormalizeDouble(GlobalVariableGet("HOTC-LSV6-TEMP")/100000,2);
         if (Money>0) 
         {
         // Money
           ls6 = NormalizeDouble(MathFloor(point*Money/((ask - stoploss6)*mls))*mls, lotdigits);
         }
      }

      if((int)GlobalVariableGet("HOTC-SEL1-TEMP")==100000)
      {
         DoBuy(ls, ask - stoploss, takeprofit - ask, sy, (int)GlobalVariableGet("HOTC-BEV1-TEMP")/100000, (int)GlobalVariableGet("HOTC-TSV1-TEMP")/100000); 
      }

      if((int)GlobalVariableGet("HOTC-SEL2-TEMP")==100000)
      {
         DoBuy(ls2, ask - stoploss2, takeprofit2 - ask, sy, (int)GlobalVariableGet("HOTC-BEV2-TEMP")/100000, (int)GlobalVariableGet("HOTC-TSV2-TEMP")/100000); 
      }

      if((int)GlobalVariableGet("HOTC-SEL3-TEMP")==100000)
      {
         DoBuy(ls3, ask - stoploss3, takeprofit3 - ask, sy, (int)GlobalVariableGet("HOTC-BEV3-TEMP")/100000, (int)GlobalVariableGet("HOTC-TSV3-TEMP")/100000); 
      }

      if((int)GlobalVariableGet("HOTC-SEL4-TEMP")==100000)
      {
         DoBuy(ls4, ask - stoploss4, takeprofit4 - ask, sy, (int)GlobalVariableGet("HOTC-BEV4-TEMP")/100000, (int)GlobalVariableGet("HOTC-TSV4-TEMP")/100000); 
      }

      if((int)GlobalVariableGet("HOTC-SEL5-TEMP")==100000)
      {
         DoBuy(ls5, ask - stoploss5, takeprofit5 - ask, sy, (int)GlobalVariableGet("HOTC-BEV5-TEMP")/100000, (int)GlobalVariableGet("HOTC-TSV5-TEMP")/100000); 
      }

      if((int)GlobalVariableGet("HOTC-SEL6-TEMP")==100000)
      {
         DoBuy(ls6, ask - stoploss6, takeprofit6 - ask, sy, (int)GlobalVariableGet("HOTC-BEV6-TEMP")/100000, (int)GlobalVariableGet("HOTC-TSV6-TEMP")/100000); 
      }
     
      
      
  }
    
  void Sell()
  {
      if((int)GlobalVariableGet("HOTC-TW-TEMP")>0) CloseAllBuyOrSell(OP_BUY);
      
      
      int index = (int)GlobalVariableGet("HOTC-IN-TEMP");
      string sy = symbols[index];
      double ls = 0, tp=0, sl=0, stoploss=0, takeprofit=0;
      double ls2 = 0, stoploss2=0, takeprofit2=0;
      double ls3 = 0, stoploss3=0, takeprofit3=0;
      double ls4 = 0, stoploss4=0, takeprofit4=0;
      double ls5 = 0, stoploss5=0, takeprofit5=0;
      double ls6 = 0, stoploss6=0, takeprofit6=0;
      double ask = MarketInfo(sy, MODE_ASK);
      double bid = MarketInfo(sy, MODE_BID);
      double point = MarketInfo(sy, MODE_POINT);
      int digits = (int)MarketInfo(sy, MODE_DIGITS);
           int lotdigits = 2; 
           double mls = MarketInfo(sy,MODE_MINLOT);
            if(mls == 1.0)  lotdigits=0;           //" Standard account";
            if(mls == 0.1)   lotdigits=1;          //" Mini Lot account"
            if(mls == 0.01)  lotdigits=2;           //" Micro Lot account";
      
      if((int)GlobalVariableGet("HOTC-SL-TEMP")==0)
      {
         sl = GlobalVariableGet("HOTC-SLV1-TEMP")/100000;
         if(sl>0) stoploss=NormalizeDouble(bid+sl*point, digits);
         sl = GlobalVariableGet("HOTC-SLV2-TEMP")/100000;
         if(sl>0) stoploss2=NormalizeDouble(bid+sl*point, digits);
         sl = GlobalVariableGet("HOTC-SLV3-TEMP")/100000;
         if(sl>0) stoploss3=NormalizeDouble(bid+sl*point, digits);
         sl = GlobalVariableGet("HOTC-SLV4-TEMP")/100000;
         if(sl>0) stoploss4=NormalizeDouble(bid+sl*point, digits);
         sl = GlobalVariableGet("HOTC-SLV5-TEMP")/100000;
         if(sl>0) stoploss5=NormalizeDouble(bid+sl*point, digits);
         sl = GlobalVariableGet("HOTC-SLV6-TEMP")/100000;
         if(sl>0) stoploss6=NormalizeDouble(bid+sl*point, digits);
      }   
      
      if((int)GlobalVariableGet("HOTC-TP-TEMP")==0)
      {
         tp = GlobalVariableGet("HOTC-TPV1-TEMP")/100000;
         if(tp>0) takeprofit=NormalizeDouble(bid-tp*point, digits);
         tp = GlobalVariableGet("HOTC-TPV2-TEMP")/100000;
         if(tp>0) takeprofit2=NormalizeDouble(bid-tp*point, digits);
         tp = GlobalVariableGet("HOTC-TPV3-TEMP")/100000;
         if(tp>0) takeprofit3=NormalizeDouble(bid-tp*point, digits);
         tp = GlobalVariableGet("HOTC-TPV4-TEMP")/100000;
         if(tp>0) takeprofit4=NormalizeDouble(bid-tp*point, digits);
         tp = GlobalVariableGet("HOTC-TPV5-TEMP")/100000;
         if(tp>0) takeprofit5=NormalizeDouble(bid-tp*point, digits);
         tp = GlobalVariableGet("HOTC-TPV6-TEMP")/100000;
         if(tp>0) takeprofit6=NormalizeDouble(bid-tp*point, digits);
      }
      if((int)GlobalVariableGet("HOTC-TP-TEMP")==100000)
      {
         // TP/SL Ratio      
         tp = sl*GlobalVariableGet("HOTC-TPV1-TEMP")/100000;
         if(tp>0) takeprofit=NormalizeDouble(bid-tp*point, digits);
         tp = sl*GlobalVariableGet("HOTC-TPV2-TEMP")/100000;
         if(tp>0) takeprofit2=NormalizeDouble(bid-tp*point, digits);
         tp = sl*GlobalVariableGet("HOTC-TPV3-TEMP")/100000;
         if(tp>0) takeprofit3=NormalizeDouble(bid-tp*point, digits);
         tp = sl*GlobalVariableGet("HOTC-TPV4-TEMP")/100000;
         if(tp>0) takeprofit4=NormalizeDouble(bid-tp*point, digits);
         tp = sl*GlobalVariableGet("HOTC-TPV5-TEMP")/100000;
         if(tp>0) takeprofit5=NormalizeDouble(bid-tp*point, digits);
         tp = sl*GlobalVariableGet("HOTC-TPV6-TEMP")/100000;
         if(tp>0) takeprofit6=NormalizeDouble(bid-tp*point, digits);
      } 

       if((int)GlobalVariableGet("HOTC-LS-TEMP")==0)
      {
         // Fix Lot Size
         ls = GlobalVariableGet("HOTC-LSV1-TEMP")/100000;
         ls2 = GlobalVariableGet("HOTC-LSV2-TEMP")/100000;
         ls3 = GlobalVariableGet("HOTC-LSV3-TEMP")/100000;
         ls4 = GlobalVariableGet("HOTC-LSV4-TEMP")/100000;
         ls5 = GlobalVariableGet("HOTC-LSV5-TEMP")/100000;
         ls6 = GlobalVariableGet("HOTC-LSV6-TEMP")/100000;
      }
      
      if((int)GlobalVariableGet("HOTC-LS-TEMP")==100000)
      {
         // Risk %         
         double risk = NormalizeDouble(GlobalVariableGet("HOTC-LSV1-TEMP")/10000000,4);
         double risk2 = NormalizeDouble(GlobalVariableGet("HOTC-LSV2-TEMP")/10000000,4);
         double risk3 = NormalizeDouble(GlobalVariableGet("HOTC-LSV3-TEMP")/10000000,4);
         double risk4 = NormalizeDouble(GlobalVariableGet("HOTC-LSV4-TEMP")/10000000,4);
         double risk5 = NormalizeDouble(GlobalVariableGet("HOTC-LSV5-TEMP")/10000000,4);
         double risk6 = NormalizeDouble(GlobalVariableGet("HOTC-LSV6-TEMP")/10000000,4);
         if (risk>0) 
         {
          if(risk>1) risk =1;
           ls = NormalizeDouble(MathFloor(AccountEquity()*risk*point/((stoploss - bid)*mls))*mls, lotdigits);
         }  
         if (risk2>0) 
         {
          if(risk2>1) risk2 =1;
           ls2 = NormalizeDouble(MathFloor(AccountEquity()*risk2*point/((stoploss2 - bid)*mls))*mls, lotdigits);
         }
          if (risk3>0) 
         {
          if(risk3>1) risk3 =1;
           ls3 = NormalizeDouble(MathFloor(AccountEquity()*risk3*point/((stoploss3 - bid)*mls))*mls, lotdigits);
         }
          if (risk4>0) 
         {
          if(risk4>1) risk4 =1;
           ls4 = NormalizeDouble(MathFloor(AccountEquity()*risk4*point/((stoploss4 - bid)*mls))*mls, lotdigits);
         }
          if (risk5>0) 
         {
          if(risk5>1) risk5 =1;
           ls5 = NormalizeDouble(MathFloor(AccountEquity()*risk5*point/((stoploss5 - bid)*mls))*mls, lotdigits);
         }
          if (risk6>0) 
         {
          if(risk6>1) risk6 =1;
           ls6 = NormalizeDouble(MathFloor(AccountEquity()*risk6*point/((stoploss6 - bid)*mls))*mls, lotdigits);
         } 
         
      }
      
      if((int)GlobalVariableGet("HOTC-LS-TEMP")==200000)
      {
      double Money = NormalizeDouble(GlobalVariableGet("HOTC-LSV1-TEMP")/100000,2);
         if (Money>0) 
         {
         // Money
           ls = NormalizeDouble(MathFloor(point*Money/((stoploss - bid)*mls))*mls, lotdigits);
         }
         Money = NormalizeDouble(GlobalVariableGet("HOTC-LSV2-TEMP")/100000,2);
         if (Money>0) 
         {
         // Money
           ls2 = NormalizeDouble(MathFloor(point*Money/((stoploss2 - bid)*mls))*mls, lotdigits);
         }
         Money = NormalizeDouble(GlobalVariableGet("HOTC-LSV3-TEMP")/100000,2);
         if (Money>0) 
         {
         // Money
           ls3 = NormalizeDouble(MathFloor(point*Money/((stoploss3 - bid)*mls))*mls, lotdigits);
         }
         Money = NormalizeDouble(GlobalVariableGet("HOTC-LSV4-TEMP")/100000,2);
         if (Money>0) 
         {
         // Money
           ls4 = NormalizeDouble(MathFloor(point*Money/((stoploss4 - bid)*mls))*mls, lotdigits);
         }
         Money = NormalizeDouble(GlobalVariableGet("HOTC-LSV5-TEMP")/100000,2);
         if (Money>0) 
         {
         // Money
           ls5 = NormalizeDouble(MathFloor(point*Money/((stoploss5 - bid)*mls))*mls, lotdigits);
         }
         Money = NormalizeDouble(GlobalVariableGet("HOTC-LSV6-TEMP")/100000,2);
         if (Money>0) 
         {
         // Money
           ls6 = NormalizeDouble(MathFloor(point*Money/((stoploss6 - bid)*mls))*mls, lotdigits);
         }
      }
      
      
      if((int)GlobalVariableGet("HOTC-SEL1-TEMP")==100000)
      {
         DoSell(ls, bid - stoploss, takeprofit - bid, sy, (int)GlobalVariableGet("HOTC-BEV1-TEMP")/100000, (int)GlobalVariableGet("HOTC-TSV1-TEMP")/100000); 
      }

      if((int)GlobalVariableGet("HOTC-SEL2-TEMP")==100000)
      {
         DoSell(ls2, bid - stoploss2, takeprofit2 - bid, sy, (int)GlobalVariableGet("HOTC-BEV2-TEMP")/100000, (int)GlobalVariableGet("HOTC-TSV2-TEMP")/100000); 
      }

      if((int)GlobalVariableGet("HOTC-SEL3-TEMP")==100000)
      {
         DoSell(ls3, bid - stoploss3, takeprofit3 - bid, sy, (int)GlobalVariableGet("HOTC-BEV3-TEMP")/100000, (int)GlobalVariableGet("HOTC-TSV3-TEMP")/100000); 
      }

      if((int)GlobalVariableGet("HOTC-SEL4-TEMP")==100000)
      {
         DoSell(ls4, bid - stoploss4, takeprofit4 - bid, sy, (int)GlobalVariableGet("HOTC-BEV4-TEMP")/100000, (int)GlobalVariableGet("HOTC-TSV4-TEMP")/100000); 
      }

      if((int)GlobalVariableGet("HOTC-SEL5-TEMP")==100000)
      {
         DoSell(ls5, bid - stoploss5, takeprofit5 - bid, sy, (int)GlobalVariableGet("HOTC-BEV5-TEMP")/100000, (int)GlobalVariableGet("HOTC-TSV5-TEMP")/100000); 
      }

      if((int)GlobalVariableGet("HOTC-SEL6-TEMP")==100000)
      {
         DoSell(ls6, bid - stoploss6, takeprofit6 - bid, sy, (int)GlobalVariableGet("HOTC-BEV6-TEMP")/100000, (int)GlobalVariableGet("HOTC-TSV6-TEMP")/100000); 
      }
      
  }
  
  void Place()
  {
      
  }
  
  void CloseAllBuyOrSell(int type)
  {
      int index = (int)GlobalVariableGet("HOTC-IN-TEMP");
      string sy = symbols[index];
      double ls = GlobalVariableGet("HOTC-LSV-TEMP")/100000;
      double tp = GlobalVariableGet("HOTC-TPV-TEMP")/100000;
      double sl = GlobalVariableGet("HOTC-SLV-TEMP")/100000;
        
      for(int i=OrdersTotal()-1;i>=0;i-- ) {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES ))
      {
         if(OrderMagicNumber()!= MagicNumber) continue;
         if(OrderSymbol()!= sy) continue;
                  double ask = MarketInfo(sy, MODE_ASK);
                  double bid = MarketInfo(sy, MODE_BID);
                  double point = MarketInfo(sy, MODE_POINT);
                  int digits = (int)MarketInfo(sy, MODE_DIGITS); 
         double ClosePrice=0;
         bool clos = false;
         if(OrderType()==type && OrderType()==OP_BUY) 
         {
            ClosePrice=NormalizeDouble(bid,digits);
            clos = true;
         }
         if(OrderType()==type && OrderType()==OP_SELL) 
         {
            ClosePrice=NormalizeDouble(ask,digits);
            clos = true;
         }

         if(clos)
         {
               if(OrderClose(OrderTicket(),OrderLots(),ClosePrice,0,clrYellow)){
               PlaySound("ok.wav");
               }
               else{
              Print("Order failed to close with error - ",GetLastError());
             Comment("Failed to select the order - ",GetLastError());
              if(OrderClose(OrderTicket(),OrderLots(),ClosePrice,0,clrYellow)) {OnBrokerSuccess();}
              else{
               OnBrokerError();
              }
               }
         }
      }
      else{
         Print("Failed to select the order - ",GetLastError());
             Comment("Failed to select the order - ",GetLastError());
      }  
      }
  } 

  void Market()
  {
      int index = (int)GlobalVariableGet("HOTC-IN-TEMP");
      string sy = symbols[index];
      double ls = GlobalVariableGet("HOTC-LSV-TEMP")/100000;
      double tp = GlobalVariableGet("HOTC-TPV-TEMP")/100000;
      double sl = GlobalVariableGet("HOTC-SLV-TEMP")/100000;
        
      for(int i=OrdersTotal()-1;i>=0;i-- ) {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES ))
      {
         if(OrderMagicNumber()!= MagicNumber) continue;
         if(OrderSymbol()!= sy) continue;
                  double ask = MarketInfo(sy, MODE_ASK);
                  double bid = MarketInfo(sy, MODE_BID);
                  double point = MarketInfo(sy, MODE_POINT);
                  int digits = (int)MarketInfo(sy, MODE_DIGITS); 
         double ClosePrice=0;
         
         if(OrderType()==OP_BUY) ClosePrice=NormalizeDouble(bid,digits);
         if(OrderType()==OP_SELL) ClosePrice=NormalizeDouble(ask,digits);
                 if(OrderClose(OrderTicket(),OrderLots(),ClosePrice,0,clrYellow)){
               PlaySound("ok.wav");
               }
               else{
              Print("Order failed to close with error - ",GetLastError());
             Comment("Failed to select the order - ",GetLastError());
              if(OrderClose(OrderTicket(),OrderLots(),ClosePrice,0,clrYellow)) {OnBrokerSuccess();}
              else{
               OnBrokerError();
              }
               }
      }
      else{
         Print("Failed to select the order - ",GetLastError());
             Comment("Failed to select the order - ",GetLastError());
      }  
      }
  } 
  
  void Profit()
  {
      int index = (int)GlobalVariableGet("HOTC-IN-TEMP");
      string sy = symbols[index];
      double ls = GlobalVariableGet("HOTC-LSV-TEMP")/100000;
      double tp = GlobalVariableGet("HOTC-TPV-TEMP")/100000;
      double sl = GlobalVariableGet("HOTC-SLV-TEMP")/100000;

        
      for(int i=OrdersTotal()-1;i>=0;i-- ) 
      {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES ))
         {
         if(OrderMagicNumber()!= MagicNumber) continue;
         if(OrderSymbol()!= sy) continue;
            if(OrderProfit()>0)
            {     
                  double ask = MarketInfo(sy, MODE_ASK);
                  double bid = MarketInfo(sy, MODE_BID);
                  double point = MarketInfo(sy, MODE_POINT);
                  int digits = (int)MarketInfo(sy, MODE_DIGITS); 
               if(OrderMagicNumber()!= MagicNumber) continue;
               double ClosePrice=0;
               //RefreshRates();
               if(OrderType()==OP_BUY) ClosePrice=NormalizeDouble(bid,digits);
               if(OrderType()==OP_SELL) ClosePrice=NormalizeDouble(ask,digits);
                 if(OrderClose(OrderTicket(),OrderLots(),ClosePrice,0,clrYellow)){
               PlaySound("ok.wav");
               }
               else{
              Print("Order failed to close with error - ",GetLastError());
             Comment("Failed to select the order - ",GetLastError());
              if(OrderClose(OrderTicket(),OrderLots(),ClosePrice,0,clrYellow)) {OnBrokerSuccess();}
              else{
               OnBrokerError();
              }
               }
               }
          }
          else
          {
             Print("Failed to select the order - ",GetLastError());
             Comment("Failed to select the order - ",GetLastError());
          }  
      }
  }
    
  void Loss()
  {
      int index = (int)GlobalVariableGet("HOTC-IN-TEMP");
      string sy = symbols[index];
      double ls = GlobalVariableGet("HOTC-LSV-TEMP")/100000;
      double tp = GlobalVariableGet("HOTC-TPV-TEMP")/100000;
      double sl = GlobalVariableGet("HOTC-SLV-TEMP")/100000;
        
      for(int i=OrdersTotal()-1;i>=0;i-- ) 
      {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES ))
         {
         if(OrderMagicNumber()!= MagicNumber) continue;
         if(OrderSymbol()!= sy) continue;
            if(OrderProfit()<=0)
            {
                  double ask = MarketInfo(sy, MODE_ASK);
                  double bid = MarketInfo(sy, MODE_BID);
                  double point = MarketInfo(sy, MODE_POINT);
                  int digits = (int)MarketInfo(sy, MODE_DIGITS); 
               if(OrderMagicNumber()!= MagicNumber) continue;
               double ClosePrice=0;
               //RefreshRates();
               if(OrderType()==OP_BUY) ClosePrice=NormalizeDouble(bid,digits);
               if(OrderType()==OP_SELL) ClosePrice=NormalizeDouble(ask,digits);
                if(OrderClose(OrderTicket(),OrderLots(),ClosePrice,0,clrYellow)){
               PlaySound("ok.wav");
               }
               else{
              Print("Order failed to close with error - ",GetLastError());
             Comment("Failed to select the order - ",GetLastError());
              if(OrderClose(OrderTicket(),OrderLots(),ClosePrice,0,clrYellow)) { OnBrokerSuccess();}
              else{
               OnBrokerError();
              }
             }
            }
          }
          else
          {
             Print("Failed to select the order - ",GetLastError());
             Comment("Failed to select the order - ",GetLastError());
          }  
      }
  }
    
  void Pending()
  {

  }
  
  void OnBrokerSuccess()
  {
      GlobalVariableSet("HOTC-temp-ERROR",2);
      PlaySound("ok.wav");
  }
  
  void OnBrokerError()
  {
      GlobalVariableSet("HOTC-temp-ERROR",1);
      PlaySound("timeout.wav");
  }
  
  void ClearBuffer()
  {
      for(int i=0; i<8; i++)
            {
               Buffer[i]=1;
            }
  }
  
  void ReadMessage(int &arr[], int topic)
  {
  Print(topic);
     if(topic==HO_SYMBOL)
     {
     string sss = "";     
     for(int i=0; i<8; i++)
            {
               if(arr[i]!=0)
               {
               uchar c = (uchar) arr[i];  
               sss = StringConcatenate(sss, CharToStr(c));
               }
            } 
     Print(sss);
     ClearBuffer();
     }
     
  }

//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
//---



  }
//+------------------------------------------------------------------+



void UnloadSelf()
{
    GlobalVariableDel("HOTC-temp-THREAD");
    ExpertRemove();
}

int getAvailableCurrencyPairs(string& availableCurrencyPairs[])
{
//---   
   bool selected = false;
   int symbolsCount = SymbolsTotal(selected);
   //Print("Symbols total: "+SymbolsTotal(selected));
   int currencypairsCount;
   ArrayResize(availableCurrencyPairs, symbolsCount);
   int idxCurrencyPair = 0;
   for(int idxSymbol = 0; idxSymbol < symbolsCount; idxSymbol++)
     {      
         string symbol = SymbolName(idxSymbol, selected);
         //string firstChar = StringSubstr(symbol, 0, 1);
         //if(firstChar != "#" && StringLen(symbol) == 6)
          // {        
               availableCurrencyPairs[idxCurrencyPair++] = symbol; 
               
         //  } 
           //Print("Symbol #"+ idxSymbol +": "+ symbol);
     }
     currencypairsCount = idxCurrencyPair;
     ArrayResize(availableCurrencyPairs, currencypairsCount);
     return currencypairsCount;
}