#include <stdio.h>

int main(int argc, char const *argv[]) {

  int dividend = 20;
  int divisor  = 5;
  int result;


  __asm__
  (
    "divb   %2\n\t"
    "movl   %%eax,%0"
    : "=m"(result) //m = memory
    : "a"(dividend),"m"(divisor)
  );

  printf("%d / %d = %d\n", dividend, divisor, result);
  return 0;
}
