// Use of the MOVS instruction

// movsb: moves a single byte
// movsw: moves 2 bytes (16 bits)
// movsl: moves 4 bytes (32 bits)

// movl    $myvar,%edi -> indirect addr mode (myvar addr on edi)
// lea     myvar,%edi  -> load effective address

.section .data
value1: .ascii   "This is a test string\n"

// for unitialized variables
.section .bss
  .lcomm  output,23

.section .text
.globl _start

_start:
      nop
      leal    value1,%esi
      leal    output,%edi
      movsb   #moves 'T'
      movsw   #moves 'hi'
      movsl   #moves 's is'

      movl $1,%eax
      movl $0,%ebx
      int $0x80
