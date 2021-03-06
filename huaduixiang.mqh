
class huaduixiang
{
public:
   void hua(
           string       name,
           ENUM_OBJECT  type,
           datetime time1,double price1,
           color        colo=clrRed,
           int          sub_window=0);
   void hua(
           string       name,
           ENUM_OBJECT  type,
           datetime time1,double price1,
           datetime time2,double price2,
           color        colo=clrRed,
           int          sub_window=0);
   void hua(
           string       name,
           ENUM_OBJECT  type,
           datetime time1,double price1,
           datetime time2,double price2,
           datetime time3,double price3,
           color        colo=clrRed,
           int          sub_window=0);
   void shuxian(string name,datetime time,color colo=clrRed,int sub_window=0);
   void hengxian(string name,double price,color colo=clrRed,int sub_window=0);
   void qushixian(
           string       name,
           datetime time1,double price1,
           datetime time2,double price2,
           int zuoshe=0,int youshe=0,
           color        colo=clrRed,
           int          sub_window=0);
  void fibo(
           string       name,
           datetime time1,double price1,
           datetime time2,double price2,
           int levels=6,
           color        colo=clrRed,
           int          sub_window=0);
  
  void lable(string name,string text,int x,int y,int zhongxin=0,color colo=clrRed,int fontsize=10,int sub_window=0);
  void lableduo(string name,string &texts[],int x,int y,int yadd=15,int zhongxin=0,color colo=clrRed,int fontsize=10,int sub_window=0);
  void text(string name,string text,datetime time,double price,color colo=clrRed,int fontsize=10,int sub_window=0);
  void button(
           string name,string text,
           int x,int y,
           int xsize,int ysize,
           int zhongxin=0,
           color colo=clrRed,int fontsize=10,int sub_window=0);
  void edit(
           string name,string text,
           int x,int y,
           int xsize,int ysize,
           int zhongxin=0,
           color colo=clrRed,int fontsize=10,int sub_window=0);
};
void huaduixiang::hua(string name,ENUM_OBJECT type,datetime time1,double price1,datetime time2,double price2,datetime time3,double price3,color colo=255,int sub_window=0)
{
  if(ObjectFind(0,name)<0)
    {
      ObjectCreate(0,name,type,sub_window,time1,price1,time2,price2,time3,price3);
    }
   else
    {
      if(ObjectGetDouble(0,name,OBJPROP_PRICE)!=price1)
       {
         ObjectSetDouble(0,name,OBJPROP_PRICE,price1);
       }
      if(ObjectGetInteger(0,name,OBJPROP_TIME)!=time1)
       {
         ObjectSetInteger(0,name,OBJPROP_TIME,time1);
       }
       double p2;
       datetime t2;
       ObjectGetDouble(0,name,OBJPROP_PRICE,1,p2);
       ObjectGetInteger(0,name,OBJPROP_TIME,1,t2);
       if(p2!=price2)
        {
          ObjectSetDouble(0,name,OBJPROP_PRICE,1,price2);
        }
       if(t2!=time2)
        {
          ObjectSetInteger(0,name,OBJPROP_TIME,1,time2);
        }
       double p3;
       datetime t3;
       ObjectGetDouble(0,name,OBJPROP_PRICE,2,p3);
       ObjectGetInteger(0,name,OBJPROP_TIME,2,t3);
       if(p3!=price3)
        {
          ObjectSetDouble(0,name,OBJPROP_PRICE,2,price3);
        }
       if(t3!=time3)
        {
          ObjectSetInteger(0,name,OBJPROP_TIME,2,time3);
        }
    }
   if(ObjectGetInteger(0,name,OBJPROP_COLOR)!=colo)
    {
      ObjectSetInteger(0,name,OBJPROP_COLOR,colo);
    }
}
void huaduixiang::hua(string name,ENUM_OBJECT type,datetime time1,double price1,color colo=255,int sub_window=0)
{
  if(ObjectFind(0,name)<0)
    {
      ObjectCreate(0,name,type,sub_window,time1,price1);
    }
   else
    {
      if(ObjectGetDouble(0,name,OBJPROP_PRICE)!=price1)
       {
         ObjectSetDouble(0,name,OBJPROP_PRICE,price1);
       }
      if(ObjectGetInteger(0,name,OBJPROP_TIME)!=time1)
       {
         ObjectSetInteger(0,name,OBJPROP_TIME,time1);
       }
    }
   if(ObjectGetInteger(0,name,OBJPROP_COLOR)!=colo)
    {
      ObjectSetInteger(0,name,OBJPROP_COLOR,colo);
    }
}
void huaduixiang::hua(string name,ENUM_OBJECT type,datetime time1,double price1,datetime time2,double price2,color colo=255,int sub_window=0)
{
   if(ObjectFind(0,name)<0)
    {
      ObjectCreate(0,name,type,sub_window,time1,price1,time2,price2);
    }
   else
    {
      if(ObjectGetDouble(0,name,OBJPROP_PRICE)!=price1)
       {
         ObjectSetDouble(0,name,OBJPROP_PRICE,price1);
       }
      if(ObjectGetInteger(0,name,OBJPROP_TIME)!=time1)
       {
         ObjectSetInteger(0,name,OBJPROP_TIME,time1);
       }
       double p2;
       datetime t2;
       ObjectGetDouble(0,name,OBJPROP_PRICE,1,p2);
       ObjectGetInteger(0,name,OBJPROP_TIME,1,t2);
       if(p2!=price2)
        {
          ObjectSetDouble(0,name,OBJPROP_PRICE,1,price2);
        }
       if(t2!=time2)
        {
          ObjectSetInteger(0,name,OBJPROP_TIME,1,time2);
        }
    }
   if(ObjectGetInteger(0,name,OBJPROP_COLOR)!=colo)
    {
      ObjectSetInteger(0,name,OBJPROP_COLOR,colo);
    }
}
void huaduixiang::hengxian(string name,double price,color colo=255,int sub_window=0)
 {
   if(ObjectFind(0,name)<0)
    {
      ObjectCreate(0,name,OBJ_HLINE,sub_window,0,price);
    }
   else
    {
     if(ObjectGetDouble(0,name,OBJPROP_PRICE)!=price)
       {
         ObjectSetDouble(0,name,OBJPROP_PRICE,price);
       }
    }
   if(ObjectGetInteger(0,name,OBJPROP_COLOR)!=colo)
    {
      ObjectSetInteger(0,name,OBJPROP_COLOR,colo);
    }
 }
void huaduixiang::shuxian(string name,datetime time,color colo=255,int sub_window=0)
 {
   if(ObjectFind(0,name)<0)
    {
      ObjectCreate(0,name,OBJ_VLINE,sub_window,time,0);
    }
   else
    {
      if(ObjectGetInteger(0,name,OBJPROP_TIME)!=time)
       {
         ObjectSetInteger(0,name,OBJPROP_TIME,time);
       }
    }
   if(ObjectGetInteger(0,name,OBJPROP_COLOR)!=colo)
    {
      ObjectSetInteger(0,name,OBJPROP_COLOR,colo);
    }
 }
void huaduixiang::text(string name,string text,datetime time,double price,color colo=255,int fontsize=10,int sub_window=0)
 {
   if(ObjectFind(0,name)<0)
    {
      ObjectCreate(0,name,OBJ_TEXT,sub_window,time,price);
    }
   else
    {
      if(ObjectGetInteger(0,name,OBJPROP_TIME)!=time)
       {
         ObjectSetInteger(0,name,OBJPROP_TIME,time);
       }
      if(ObjectGetDouble(0,name,OBJPROP_PRICE)!=price)
       {
         ObjectSetDouble(0,name,OBJPROP_PRICE,price);
       }
    }
   if(ObjectGetInteger(0,name,OBJPROP_FONTSIZE)!=fontsize)
    {
      ObjectSetInteger(0,name,OBJPROP_FONTSIZE,fontsize);
    }
   if(ObjectGetInteger(0,name,OBJPROP_COLOR)!=colo)
    {
      ObjectSetInteger(0,name,OBJPROP_COLOR,colo);
    }
   if(ObjectGetString(0,name,OBJPROP_TEXT)!=text)
    {
      ObjectSetString(0,name,OBJPROP_TEXT,text);
    }
 }
void huaduixiang::lableduo(string name,string &texts[],int x,int y,int yadd=15,int zhongxin=0,color colo=255,int fontsize=10,int sub_window=0)
 {
   for(int i=0;i<ArraySize(texts);i++)
    {
      lable(name+IntegerToString(i),texts[i],x,y,zhongxin,colo,fontsize,sub_window);
      y=y+yadd;
    }
 }
void huaduixiang::lable(string name,string text,int x,int y,int zhongxin=0,color colo=clrRed,int fontsize=10,int sub_window=0)
 {
   ObjectCreate(0,name,OBJ_LABEL,sub_window,0,0);
   if(ObjectGetInteger(0,name,OBJPROP_CORNER)!=zhongxin)
    {
      ObjectSetInteger(0,name,OBJPROP_CORNER,zhongxin); 
    }
   if(ObjectGetInteger(0,name,OBJPROP_XDISTANCE)!=x)
    {
      ObjectSetInteger(0,name,OBJPROP_XDISTANCE,x);
    }
   if(ObjectGetInteger(0,name,OBJPROP_YDISTANCE)!=y)
    {
      ObjectSetInteger(0,name,OBJPROP_YDISTANCE,y);
    }
   if(ObjectGetInteger(0,name,OBJPROP_FONTSIZE)!=fontsize)
    {
      ObjectSetInteger(0,name,OBJPROP_FONTSIZE,fontsize);
    }
   if(ObjectGetInteger(0,name,OBJPROP_COLOR)!=colo)
    {
      ObjectSetInteger(0,name,OBJPROP_COLOR,colo);
    }
   if(ObjectGetString(0,name,OBJPROP_TEXT)!=text)
    {
      ObjectSetString(0,name,OBJPROP_TEXT,text);
    }
 }
 void huaduixiang::button(string name,string text,int x,int y,int xsize,int ysize,int zhongxin=0,color colo=clrRed,int fontsize=10,int sub_window=0)
 {
   ObjectCreate(0,name,OBJ_BUTTON,sub_window,0,0);
   if(ObjectGetInteger(0,name,OBJPROP_CORNER)!=zhongxin)
    {
      ObjectSetInteger(0,name,OBJPROP_CORNER,zhongxin); 
    }
   if(ObjectGetInteger(0,name,OBJPROP_XDISTANCE)!=x)
    {
      ObjectSetInteger(0,name,OBJPROP_XDISTANCE,x);
    }
   if(ObjectGetInteger(0,name,OBJPROP_YDISTANCE)!=y)
    {
      ObjectSetInteger(0,name,OBJPROP_YDISTANCE,y);
    }
   if(ObjectGetInteger(0,name,OBJPROP_XSIZE)!=xsize)
    {
      ObjectSetInteger(0,name,OBJPROP_XSIZE,xsize);
    }
   if(ObjectGetInteger(0,name,OBJPROP_YSIZE)!=ysize)
    {
      ObjectSetInteger(0,name,OBJPROP_YSIZE,ysize);
    }
   if(ObjectGetInteger(0,name,OBJPROP_FONTSIZE)!=fontsize)
    {
      ObjectSetInteger(0,name,OBJPROP_FONTSIZE,fontsize);
    }
   if(ObjectGetInteger(0,name,OBJPROP_COLOR)!=colo)
    {
      ObjectSetInteger(0,name,OBJPROP_COLOR,colo);
    }
   if(ObjectGetString(0,name,OBJPROP_TEXT)!=text)
    {
      ObjectSetString(0,name,OBJPROP_TEXT,text);
    }
   
 }
 void huaduixiang::edit(string name,string text,int x,int y,int xsize,int ysize,int zhongxin=0,color colo=clrRed,int fontsize=10,int sub_window=0)
 {
   ObjectCreate(0,name,OBJ_EDIT,sub_window,0,0);
   if(ObjectGetInteger(0,name,OBJPROP_CORNER)!=zhongxin)
    {
      ObjectSetInteger(0,name,OBJPROP_CORNER,zhongxin); 
    }
   if(ObjectGetInteger(0,name,OBJPROP_XDISTANCE)!=x)
    {
      ObjectSetInteger(0,name,OBJPROP_XDISTANCE,x);
    }
   if(ObjectGetInteger(0,name,OBJPROP_YDISTANCE)!=y)
    {
      ObjectSetInteger(0,name,OBJPROP_YDISTANCE,y);
    }
   if(ObjectGetInteger(0,name,OBJPROP_XSIZE)!=xsize)
    {
      ObjectSetInteger(0,name,OBJPROP_XSIZE,xsize);
    }
   if(ObjectGetInteger(0,name,OBJPROP_YSIZE)!=ysize)
    {
      ObjectSetInteger(0,name,OBJPROP_YSIZE,ysize);
    }
   if(ObjectGetInteger(0,name,OBJPROP_FONTSIZE)!=fontsize)
    {
      ObjectSetInteger(0,name,OBJPROP_FONTSIZE,fontsize);
    }
   if(ObjectGetInteger(0,name,OBJPROP_COLOR)!=colo)
    {
      ObjectSetInteger(0,name,OBJPROP_COLOR,colo);
    }
   if(ObjectGetString(0,name,OBJPROP_TEXT)!=text)
    {
      ObjectSetString(0,name,OBJPROP_TEXT,text);
    }
   
 }
 void huaduixiang::qushixian(string name,datetime time1,double price1,datetime time2,double price2,int zuoshe=0,int youshe=0,color colo=255,int sub_window=0)
 {
   hua(name,OBJ_TREND,time1,price1,time2,price2,colo,sub_window);
   if(ObjectGetInteger(0,name,OBJPROP_RAY_LEFT)!=zuoshe)
    {
      ObjectSetInteger(0,name,OBJPROP_RAY_LEFT,zuoshe);
    }
   if(ObjectGetInteger(0,name,OBJPROP_RAY_RIGHT)!=youshe)
    {
      ObjectSetInteger(0,name,OBJPROP_RAY_RIGHT,youshe);
    }
 }
void huaduixiang::fibo(string name,datetime time1,double price1,datetime time2,double price2,int levels=6,color colo=255,int sub_window=0)
 {
   hua(name,OBJ_FIBO,time1,price1,time2,price2,colo,sub_window);
   if(ObjectGetInteger(0,name,OBJPROP_LEVELS)!=levels)
    {
      ObjectSetInteger(0,name,OBJPROP_LEVELS,levels);
    }
 }
