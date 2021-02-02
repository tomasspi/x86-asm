section .text
global  main
extern  puts

main:
      mov   rdi,message
      call  puts
      ret

message:
      db    "Have a nice day!",0
