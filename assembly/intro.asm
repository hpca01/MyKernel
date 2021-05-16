    global _start

    section .text
_start: mov rax,1
        mov rdi, 1
        mov rsi, message
        mov rdx, 13
        syscall
        mov rax, 60
        xor rdi,rdi ; basically xoring 1 and 1, which equals 0
        syscall
    
    section .data
message: db "Hello, World", 10

; This program assembles a syscall to write out using file handle 1, which is stdout.
; It takes into account the address of the string, passed as the message variable, declared at the bottom
; It also passes the count of bytes, these characters are represented as bytes
; rax, rdi, rsi, and rdx are akin to variables which store things like the memory address of routines, etc
; syscall seems to execute whatever is in the rax register
; link to tutorial:https://cs.lmu.edu/~ray/notes/nasmtutorial/
; also refer to the Readme file in this folder for more info