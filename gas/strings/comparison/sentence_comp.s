.section .data
string1:    .ascii    "Hello world"
string2:    .ascii    "Hello world!"

.section .text
.globl _start

_start:
      nop
      leal    string1,%esi
      leal    string2,%edi
      movl    $12,%ecx
      cld
      repe    cmpsb
      movl    $1,%eax       #without this occurs a segmentation fault
      je      _equal
      movl    $1,%ebx       #returns 1
      int     $0x80

_equal:
      movl    $0,%ebx
      int     $0x80         #returns 0
