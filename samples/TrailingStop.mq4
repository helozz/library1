//+------------------------------------------------------------------+
//|                                                 TrailingStop.mq4 |
//|                                                         Helga Oz |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Helga Oz"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict

extern int TrailingStopPoints = 35;
extern int ActivationAfter = 40;
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- create timer
 //  EventSetTimer(60);
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//--- destroy timer
  // EventKillTimer();
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
      double stoploss = 0;
      
      for(int i=OrdersTotal()-1;i>=0;i-- ) {
      
         RefreshRates();
         if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES ))
         {
            if(OrderSymbol() != Symbol()) continue;
            
            if(OrderType()==OP_BUY) 
            {
              if(OrderOpenPrice() + ActivationAfter*Point > Bid) break;
              stoploss=NormalizeDouble(Bid-TrailingStopPoints*Point,Digits);
              if(stoploss > OrderStopLoss())
              {
               if(!OrderModify(OrderTicket(), OrderOpenPrice(), stoploss, OrderTakeProfit(),0,clrGreen))
               {
                  Print("Failed to modify the order - ",GetLastError());
               }
               else
               {
               }
              }
             }
             
            if(OrderType()==OP_SELL) 
            {
              if(OrderOpenPrice() - ActivationAfter*Point < Ask) break;
              stoploss=NormalizeDouble(Ask+TrailingStopPoints*Point,Digits);
              if(stoploss > OrderStopLoss())
              {
               if(!OrderModify(OrderTicket(), OrderOpenPrice(), stoploss, OrderTakeProfit(),0,clrRed))
               {
                  Print("Failed to modify the order - ",GetLastError());
               }
               else
               {
               }
              }
             }
         }
         else
         {
            Print("Failed to select the order - ",GetLastError());
         }  
      }
  }
//+------------------------------------------------------------------+
//| Timer function                                                   |
//+------------------------------------------------------------------+
void OnTimer()
  {
//---
   
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
