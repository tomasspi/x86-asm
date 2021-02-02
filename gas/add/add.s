# add instruction use
# debuggin using gdb

#rax eax ax al -> 64 32 16 8 bits

.section .data #data section
data:
    .int    40

.section .text
.globl _start

_start:
      nop               #Para que gdb pare aca
      movl  $0,%eax     #Inicializa eax, ebx y ecx en 0
      movl  $0,%ebx
      movl  $0,%ecx
      movb  $20,%al     #Coloca 20 en al
      addb  $10,%al     #Suma 10 (20 + 10 = 30)
      addb  $30,%al
      movl  $122,%ebx
      addl  data,%ebx
      nop
      nop
