
# Use of the call/ret instructions
.section .text
.globl _start

_start:
      movl    $66,%eax
      movl    $89,%ebx
      call    _bottom
      movl    $70,%ecx

      movl    $1,%eax
      int     $0x80

_bottom:
      addl    $100,%eax
      addl    $11,%ebx
      ret               #returns to line 9
