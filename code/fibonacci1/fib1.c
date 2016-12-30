#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/timeb.h>
#if defined(WIN32)
#define TIMEB _timeb
#define ftime _ftime
typedef __int64 TIME_T;
#else
#define TIMEB timeb
typedef long long TIME_T;
#endif

double fibonacci(int n)
{
  if (n <= 2)
  {
    return 1;
  }
  else
    return fibonacci(n - 1) + fibonacci(n - 2);
}

int time_interval(int num)
{
  struct TIMEB ts1, ts2;
  TIME_T t1, t2;
  int ti;
  printf(".wasm fibonacci(%d):\n", num);
  ftime(&ts1); //开始计时
  printf("%lf\n", fibonacci(num));
  ftime(&ts2); //停止计时
  t1 = (TIME_T)ts1.time * 1000 + ts1.millitm;
  //printf("t1=%lld\n",t1);
  t2 = (TIME_T)ts2.time * 1000 + ts2.millitm;
  //printf("t2=%lld\n",t2);
  ti = t2 - t1; //获取时间间隔，ms为单位的
  return ti;
}

void run(int num)
{
  int ti = time_interval(num);
  printf(">: %dms\n", ti);
}

int main()
{
  run(50);
  return 0;
}