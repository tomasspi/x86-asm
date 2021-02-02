#Use of the SAL instruction (shift aritmetic left)
#(commonly use for multiplication)

# Formats: (you can append the data type -b,w,dw,q-)
# sal destination           (multiplies by 2)
# sal %cl,destination       (multiplies by the ammount contained on cl)
# sal number,destination    (multiplies by number)

.section .data
value1:   .int  25

.section .text
.globl  _start

_start:
      nop
      movl    $10,%ebx
      sall    %ebx
      movb    $2,%cl
      sall    %cl,%ebx
      sall    $2,%ebx
      sall    value1
      sall    $2,value1

      movl    $1,%eax
      movl    $0,%ebx
      int     $0x80
