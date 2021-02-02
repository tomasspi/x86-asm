/*
  EXTENDED FORMAT
  "constraint"(variable)
  a: rax, eax, ax, al
  b: rbx, ebx, bx, bl
  c: rcx, ecx, cx, cl
  .
  .
  .
  r: any GPR
  g: use any GPR on mem location

  __asm__("assembly code" : "=a" (result): "d"(data1),"c"(data2))
  this means: edx = data1, ecx = data2, eax = result
*/

#include <stdio.h>

int main()
{
  int data1 = 10;
  int data2 = 20;
  int result;

  __asm__
  (
    "imull %%edx,%%ecx \n\t"
    "movl  %%ecx,%%eax"
    : "=a"(result)
    : "d"(data1),"c"(data2)
  );

  printf("%d + %d = %d\n", data1, data2, result);

  return 0;
}
