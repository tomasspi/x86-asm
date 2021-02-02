#include <string.h>

int main()
{
  char *str = "Hello world!\n";
  long len  = strlen(str);
  int  ret  = 0;

  __asm__
  ( //%% is to help gcc differenciate operand from reg
    "movq   $1,%%rax\n\t" //rax = 1 -> sys_write
    "movq   $1,%%rdi\n\t" //rdi = 1 -> stdout
    "movq   %1,%%rsi\n\t" //first placeholder (str) to rsi (buf)
    "movl   %2,%%edx\n\t" //second placeholder (len) to edx (count)
    "syscall"
    : "=g"(ret)
    : "g"(str),"g"(len)
  );

  return 0;
}
