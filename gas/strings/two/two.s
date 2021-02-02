// How to move a complete string instead of bytes
.section .data
value1: .ascii    "Ego non laturus sum omnia\n"

.section .bss
  .lcomm    output,27

.section .text
.globl _start

_start:
      nop
      leal    value1,%esi
      leal    output,%edi
      movl    $27,%ecx

_load:
      movsb
      loop    _load

      movl    $1,%eax
      movl    $0,%ebx
      int     $0x80
