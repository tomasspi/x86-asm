#syscalls with GAS
#sys_write(fd, buf, count)
#fd: file descriptor (stdin, stdout, stderr)
#buf: char array
#count: number of bytes to be written

.text
.globl _start

_start:
      mov   $1,%rax   # syscall 1 -> wirte
      mov   $1,%rdi   # first argument of sys_write (fd: 1 -> stdout)
      mov   $msg,%rsi # second argument of sys_write (buf)
      mov   $14,%rdx  # third argument of sys_write (length of buf)
      syscall         # executes the syscall
      mov   $60,%rax  # syscall 60 -> exit
      xor   %rdi,%rdi # exit code 0 (success)
      syscall         # executes syscall

msg:
      .ascii "Hello world!\n"
