.section .text
.globl main

#C looks for a 'main' label to execute
main:
      mov     $message,%rdi
      call    puts
      ret

message:
      .ascii    "Hello World!"
#fix this
