/*
  If you store different values on the same
  reg, you can access them using %i (i = 0 ... n)
  as follows:
  
  __asm__("assembly code"
          : "=r"(result)
          : "r"(data1), "r"(data2));
  will produce: %0 will represent reg for result
                %1 will represent reg for data1
                %2 will represent reg for data2
*/

#include <stdio.h>

int main()
{
  int data1 = 10;
  int data2 = 20;
  int result;

  __asm__
  (
    "imull    %1,%2 \n\t"
    "movl     %2,%0"
    : "=r"(result)
    : "r"(data1), "r"(data2)
  );

  printf("%d * %d = %d\n", data1, data2, result);

  return 0;
}
