//+------------------------------------------------------------------+
//|                                                  circle_test.mq5 |
//|                                                           Guille |
//|                     https://github.com/Guillermo-Ramirez-Jimenez |
//+------------------------------------------------------------------+
#property copyright "Guille"
#property link      "https://github.com/Guillermo-Ramirez-Jimenez"
#property version   "1.00"
#property description "Test that calculates the length and area of a circle of given radius."

#define PI 3.1415926535
#define SQ(number) number*number

//--- input parameters
input double radius=1.0; //Radius of circle
double clength;
double carea;
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   clength=2*PI*radius;
   carea=PI*SQ(radius);
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   Print("The length of a circle of radius "+radius+" is "+clength);
   Print("The area of a circle of radius "+radius+" is "+carea);
  }
//+------------------------------------------------------------------+
