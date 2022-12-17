test:                                   # @test
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     dword ptr [rbp - 4], edi
        mov     dword ptr [rbp - 8], 0
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
        mov     eax, dword ptr [rbp - 8]
        cmp     eax, dword ptr [rbp - 4]
        jge     .LBB0_4
        mov     esi, dword ptr [rbp - 4]
        lea     rdi, [rip + .L.str]
        mov     al, 0
        call    printf@PLT
        mov     eax, dword ptr [rbp - 8]
        add     eax, 1
        mov     dword ptr [rbp - 8], eax
        jmp     .LBB0_1
.LBB0_4:
        add     rsp, 16
        pop     rbp
        ret