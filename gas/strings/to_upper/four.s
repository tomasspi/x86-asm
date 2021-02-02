# Case converter
# How to change the case to upper case

.section .data
string:   .ascii    "This is Sparta!\n"
length:   .int      16

.section .text
.globl _start

_start:
      nop
      leal    string,%esi
      movl    %esi,%edi
      movl    length,%ecx
      cld

_top:
      lodsb   #loads char into eax reg
      cmpb    $'a',%al
      jl      _skip
      cmpb    $'z',%al
      jg      _skip
      subb    $0x20,%al #by substraction it, you go form l to L

_skip:
      stosb   #stores modified char on eax reg
      loop    _top

      movl    $1,%eax
      movl    $0,%ebx
      int     $0x80
