
// Use of the REP instruction

.section .data
value1:   .ascii   "Passing the complete string!\n"

 .section .bss
.lcomm    output,30

.section .text
.globl _start

_start:
      nop
      leal    value1,%esi
      leal    output,%edi
      movl    $30,%ecx
      cld     #clear direction flag: DF -> 0 increments pointers
      rep     movsb

      movl    $1,%eax
      movl    $0,%ebx
      int     $0x80
