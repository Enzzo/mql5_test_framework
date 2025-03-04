//+------------------------------------------------------------------+
//|                                                  simple_test.mq5 |
//|                                                           Sergey |
//|                                       https://www.mql5.com/enzzo |
//+------------------------------------------------------------------+
#property copyright "Sergey"
#property link      "https://www.mql5.com/enzzo"
#property version   "1.00"


int add(int x, int y){
   return x + y;
}

template<typename T, typename U>
void Test(const T l, const U r, const string hint = ""){
   if(l != r){
      string h = (hint.Length() > 0)?"("+hint+")":"";
      PrintFormat("Assertion failed: %s != %s %s",(string)l ,(string)r, h);
   }
}
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart(){
//---
   Test(add(1, 2), 3, "первая");
   Test(add(1, 2), 3);
   Test(add(1, 2), 4, "третья");
   Test(add(1, 2), 5);
   Test(add(1, 2), 44);
}
//+------------------------------------------------------------------+
