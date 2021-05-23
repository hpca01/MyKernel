    global _start

    section .text
_start: 
        push 1
        push 1
        push message
        push 13
        
        pop rdx
        pop rsi
        pop rdi
        pop rax

        syscall
        mov rax, 60 ; system call # which is equal to sys_exit(int error_code)
        xor rdi,rdi ; basically xoring 1 and 1, which equals 0, and storing it into arg 0
        syscall
    
    section .data
message: db "Hello, World", 10

; intro asm re-written using stack, yes its not practical, but it is a good way to learn, nonetheless.