# Use of SUB instruction

.section .data
data:   .int 40

.section .text
.globl _start

_start:
      nop
      movl    $0,%eax
      movl    $0,%ebx
      movb    $20,%al
      subb    $10,%al   #substract byte (20 - 10 = 10)
      movsx   %al,%eax  #move number extending the sign to the higher bits
      movw    $100,%cx
      subw    %cx,%bx
      movsx   %bx,%ebx
      movl    $100,%edx
      subl    %eax,%edx
      subl    data,%eax
      subl    %eax,data

      movl    $1,%eax   #sys_exit -> 1
      movl    $0,%ebx   #exit code -> 0 (success)
      int     $0x80      #generate an interrupt (syscall exit)
