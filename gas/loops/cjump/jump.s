#Use of conditional jump instructions
.section .text
.globl _start

_start:
      nop
      movl    $15,%eax
      movl    $20,%ebx
      movl    $0,%ecx
      cmp     %eax,%ebx
      jge     greater     #jump to 'greater' if ebx >= eax
      nop
      movl    $1,%eax     #exit
      int     $0x80

greater:
      addl    $40,%ecx
      movl    $1,%eax     #exit
      int     $0x80
