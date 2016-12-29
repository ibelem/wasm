#include<stdio.h>

int fibonacci(int n)
{
  int a = 0;
  int b = 1;
  while (n > 1)
  {
    int t = b;
    b = a + b;
    a = t;
    n--;
  }
  return b;
}


int fibo(int a)
{
    if(a<=2)
        return 1;
    else
        return fibo(a-1)+fibo(a-2);
}

int main()
{  
    printf("%d\n",fibonacci(5));
    return 0;
}