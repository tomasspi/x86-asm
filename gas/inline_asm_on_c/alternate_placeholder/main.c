#include <stdio.h>

int main()
{
  int data1 = 10;
  int data2 = 20;

  printf("%d * ", data2);

  __asm__
  (
    "imull    %[value1],%[value2]"
    : [value2] "=r"(data2)
    : [value1] "r"(data1), "0"(data2)
  );
  //we use '0' to avoid a duplicate operand of 'value2'
  
  printf("%d = %d\n", data1, data2);

  return 0;
}
