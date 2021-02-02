; hello world program for testing
section .data ;seccion de datos

message: db "Hello world!",10 ;db: double word

section .code
global _start ;accesible por otros archivos

_start:
  mov   rax,1
  mov   rdi,1
  mov   rsi,message
  mov   rdx,13
  syscall
  mov   rax,60
  xor   rdi,rdi
  syscall
