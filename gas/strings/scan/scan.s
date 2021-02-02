# Use of SCA instruction

.section .data
string1:    .ascii    "This is a test. A long text string to scan"
length:     .int       44

string2:    .ascii    "."

.section .text
.globl _start

_start:
      nop
      leal    string1,%edi
      leal    string2,%esi
      movl    length,%ecx
      lodsb
      cld
      repne   scasb
      movl    $1,%eax       #segmentation fault fix (syscall exit)
      jne     _not_found
      movl    $0,%ebx
      int     $0x80

_not_found:
      movl    $1,%ebx
      int     $0x80
