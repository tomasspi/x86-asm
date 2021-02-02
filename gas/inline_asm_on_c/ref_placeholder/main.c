#include <stdio.h>

int main()
{
  int data1 = 10;
  int data2 = 20;

  printf("%d * ", data2);

  __asm__
  (
    "imull    %1,%0" //0 is where the return value is stored
    : "=r"(data2)
    : "r"(data1), "0"(data2)
  );

  printf("%d = %d\n", data1, data2);

  return 0;
}
