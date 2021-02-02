#CMPSB: used to compare bytes   (8)
#CMPSW: used to compare 2 bytes (16)
#CMPSL: used to compare 4 bytes (32)

.section .data
string1:    .ascii    "Hola"
string2:    .ascii    "Chau"

.section .text
.globl _start

_start:
      nop
      movl    $1,%eax
      leal    string1,%esi
      leal    string2,%edi
      cld
      cmpsl
      je      _equal
      movl    $1,%ebx       #not equals (fail)
      int     $0x80

_equal:
      movl    $0,%ebx       #equals (success)
      int     $0x80

#running 'echo $?' after running the program
#in a terminal, you can see the value of the
#ebx register. In this case: ./comp and
#'echo $?' should be 1.
