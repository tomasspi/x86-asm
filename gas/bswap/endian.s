# changes endianess
.section .text
.globl _start

_start:
      nop
      movl  $0x12345678,%ebx
      bswap %ebx              #changes endianess of ebx
      nop
      nop
