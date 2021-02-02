; how to make syscalls
; sys_write in this case
; sys_write(fd, buf, count)
; fd: stdin, stdout, stderr
; buf: char array
; count: number of bytes to be written

section .data
  msg db  "hello, world!"

section .code
global _start

_start:
      mov   rax,1   ; syscall number 1 -> write
      mov   rdi,1   ; first argument of sys_write (fd = 1 - stdout)
      mov   rsi,msg ; second argument of sys_write (buf)
      mov   rdx,13  ; third argument of sys_write (length of msg)
      syscall       ; executes the system call
      mov   rax,60  ; syscal number 60 -> exit
      mov   rdi,0   ; exit code 0
      syscall       ; executes the system call
