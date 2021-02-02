#Use of non-conditional jump instruction
.section .text
.globl _start

_start:
      nop
      movl    $34,%eax
      jmp     _bottom

_bottom:
      movl    $56,%ecx
      movl    $1,%eax
      int     $0x80
