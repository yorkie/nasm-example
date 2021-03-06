section .bss

section .text

global main

main:

  push ebp
  mov ebp, esp


  ; system call: write
  push dword helloStr_len
  push dword helloStr
  push dword 1
  mov eax, 4
  sub esp, 4
  int 128
  add esp, 16


  ; system call: write
  push dword _lamb_var_60_len
  push dword _lamb_var_60
  push dword 1
  mov eax, 4
  sub esp, 4
  int 128
  add esp, 16

  ; system call: exit
  push dword 0
  mov eax, 1
  sub esp, 4
  int 128

  mov esp, ebp
  pop ebp
  ret

section .data

  helloStr: db 'Hello World', 10, 0
  helloStr_len: equ $-helloStr
  foo: dd 10
  _lamb_var_60: db 'haha', 10, 0
  _lamb_var_60_len: equ $-_lamb_var_60

