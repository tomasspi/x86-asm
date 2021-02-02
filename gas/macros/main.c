/*
  This is how you use macros on C:

  #define MAX 1000
  #define MIN 0

  #define SUM(a,b,result)   ((result) =  (a) + (b))

  answer = SUM(10+40)
*/

#include <stdio.h>

#define GREATER(a,b,result)\
({ \
  __asm__ \
  ( \
    "cmp    %1,%2\n\t" \
    "jge    0f\n\t" \
    "movl   %1,%0\n\t" \
    "jmp    1f\n" \
    "0:\n\t" \
    "movl   %2,%0\n" \
    "1:\n\t" \
    : "=r"(result) \
    : "r"(a),"r"(b) \
  ); \
})

int main(int argc, char const *argv[])
{
  int data1 = 10;
  int data2 = 20;
  int result;

  GREATER(data1,data2,result);

  printf("a = %d\nb = %d\nresult: %d is greater\n", data1, data2, result);

  return 0;
}
