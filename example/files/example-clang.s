r96_rect:                               # @r96_rect
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        test    ecx, ecx
        jle     .LBB0_22
        test    r8d, r8d
        jle     .LBB0_22
        mov     ebp, dword ptr [rdi]
        cmp     ebp, esi
        jle     .LBB0_22
        add     ecx, esi
        test    ecx, ecx
        jle     .LBB0_22
        mov     r10d, dword ptr [rdi + 4]
        cmp     r10d, edx
        jle     .LBB0_22
        add     r8d, edx
        test    r8d, r8d
        jle     .LBB0_22
        xor     eax, eax
        test    esi, esi
        cmovle  esi, eax
        test    edx, edx
        cmovg   eax, edx
        cmp     ecx, ebp
        cmovge  ecx, ebp
        cmp     r8d, r10d
        cmovl   r10d, r8d
        cmp     eax, r10d
        jge     .LBB0_22
        mov     r12d, esi
        not     r12d
        add     r12d, ecx
        js      .LBB0_22
        lea     edx, [rsi + rbp]
        sub     edx, ecx
        imul    ebp, eax
        movsxd  rbp, ebp
        shl     rbp, 2
        add     rbp, qword ptr [rdi + 8]
        movsxd  r8, edx
        mov     edx, esi
        lea     rdi, [4*rdx]
        add     rdi, rbp
        mov     r11d, r12d
        inc     r11
        mov     rbx, r11
        and     rbx, -8
        lea     r14, [rbx - 8]
        mov     rdx, r14
        shr     rdx, 3
        inc     rdx
        lea     rbp, [4*rbx]
        mov     qword ptr [rsp - 8], rbp        # 8-byte Spill
        movd    xmm0, r9d
        pshufd  xmm0, xmm0, 0                   # xmm0 = xmm0[0,0,0,0]
        mov     r13d, edx
        and     r13d, 3
        and     rdx, -4
        mov     qword ptr [rsp - 16], rdx       # 8-byte Spill
        mov     rbp, r13
        shl     rbp, 5
        sub     esi, ecx
        jmp     .LBB0_9
.LBB0_21:                               #   in Loop: Header=BB0_9 Depth=1
        lea     rdi, [rdi + 4*r8]
        inc     eax
        cmp     eax, r10d
        je      .LBB0_22
.LBB0_9:                                # =>This Loop Header: Depth=1
        cmp     r12d, 7
        jae     .LBB0_11
        xor     ecx, ecx
        jmp     .LBB0_19
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
        cmp     r14, 24
        jae     .LBB0_13
        xor     ecx, ecx
        jmp     .LBB0_15
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
        mov     r15, qword ptr [rsp - 16]       # 8-byte Reload
        xor     ecx, ecx
.LBB0_14:                               #   Parent Loop BB0_9 Depth=1
        movdqu  xmmword ptr [rdi + 4*rcx], xmm0
        movdqu  xmmword ptr [rdi + 4*rcx + 16], xmm0
        movdqu  xmmword ptr [rdi + 4*rcx + 32], xmm0
        movdqu  xmmword ptr [rdi + 4*rcx + 48], xmm0
        movdqu  xmmword ptr [rdi + 4*rcx + 64], xmm0
        movdqu  xmmword ptr [rdi + 4*rcx + 80], xmm0
        movdqu  xmmword ptr [rdi + 4*rcx + 96], xmm0
        movdqu  xmmword ptr [rdi + 4*rcx + 112], xmm0
        add     rcx, 32
        add     r15, -4
        jne     .LBB0_14
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=1
        test    r13, r13
        je      .LBB0_18
        lea     rcx, [rdi + 4*rcx]
        add     rcx, 16
        xor     edx, edx
.LBB0_17:                               #   Parent Loop BB0_9 Depth=1
        movdqu  xmmword ptr [rcx + rdx - 16], xmm0
        movdqu  xmmword ptr [rcx + rdx], xmm0
        add     rdx, 32
        cmp     rbp, rdx
        jne     .LBB0_17
.LBB0_18:                               #   in Loop: Header=BB0_9 Depth=1
        add     rdi, qword ptr [rsp - 8]        # 8-byte Folded Reload
        mov     ecx, ebx
        cmp     r11, rbx
        je      .LBB0_21
.LBB0_19:                               #   in Loop: Header=BB0_9 Depth=1
        add     ecx, esi
.LBB0_20:                               #   Parent Loop BB0_9 Depth=1
        mov     dword ptr [rdi], r9d
        add     rdi, 4
        inc     ecx
        jne     .LBB0_20
        jmp     .LBB0_21
.LBB0_22:
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
blit:                                   # @blit
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        mov     r12d, dword ptr [rdi]
        cmp     r12d, edx
        jle     .LBB1_27
        mov     r11d, dword ptr [rsi]
        lea     r8d, [r11 + rdx]
        test    r8d, r8d
        jle     .LBB1_27
        mov     r10d, dword ptr [rdi + 4]
        cmp     r10d, ecx
        jle     .LBB1_27
        mov     ebx, dword ptr [rsi + 4]
        add     ebx, ecx
        test    ebx, ebx
        jle     .LBB1_27
        xor     r9d, r9d
        test    ecx, ecx
        mov     eax, 0
        cmovg   eax, ecx
        cmp     ebx, r10d
        cmovl   r10d, ebx
        cmp     eax, r10d
        jge     .LBB1_27
        cmp     r8d, r12d
        cmovge  r8d, r12d
        test    edx, edx
        cmovg   r9d, edx
        mov     r13d, r9d
        not     r13d
        add     r13d, r8d
        js      .LBB1_27
        mov     ebx, r8d
        sub     ebx, r9d
        mov     r14d, r11d
        sub     r14d, ebx
        mov     ebp, r12d
        mov     dword ptr [rsp - 44], ebx       # 4-byte Spill
        sub     ebp, ebx
        movsxd  rbx, ebp
        mov     qword ptr [rsp - 8], rbx        # 8-byte Spill
        movsxd  r14, r14d
        imul    r12d, eax
        movsxd  rbx, r12d
        shl     rbx, 2
        add     rbx, qword ptr [rdi + 8]
        mov     edi, r9d
        lea     rdi, [rbx + 4*rdi]
        mov     ebx, ecx
        neg     ebx
        sar     ecx, 31
        and     ecx, ebx
        imul    ecx, r11d
        movsxd  rcx, ecx
        shl     rcx, 2
        add     rcx, qword ptr [rsi + 8]
        mov     esi, edx
        neg     esi
        sar     edx, 31
        and     edx, esi
        movsxd  rdx, edx
        lea     rcx, [rcx + 4*rdx]
        mov     r12d, r13d
        inc     r12
        mov     qword ptr [rsp - 16], r12       # 8-byte Spill
        and     r12, -8
        lea     rdx, [r12 - 8]
        mov     qword ptr [rsp - 24], rdx       # 8-byte Spill
        mov     rsi, rdx
        shr     rsi, 3
        inc     rsi
        lea     r15, [4*r12]
        mov     rdx, rsi
        mov     qword ptr [rsp - 32], rsi       # 8-byte Spill
        and     rsi, -2
        mov     qword ptr [rsp - 40], rsi       # 8-byte Spill
        jmp     .LBB1_8
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=1
        mov     rdx, qword ptr [rsp - 8]        # 8-byte Reload
        lea     rdi, [rdi + 4*rdx]
        lea     rcx, [rcx + 4*r14]
        inc     eax
        cmp     eax, r10d
        je      .LBB1_27
.LBB1_8:                                # =>This Loop Header: Depth=1
        cmp     r13d, 7
        jb      .LBB1_17
        mov     rsi, rdi
        sub     rsi, rcx
        cmp     rsi, 32
        jb      .LBB1_17
        cmp     qword ptr [rsp - 24], 0         # 8-byte Folded Reload
        je      .LBB1_26
        mov     rbp, qword ptr [rsp - 40]       # 8-byte Reload
        xor     esi, esi
.LBB1_12:                               #   Parent Loop BB1_8 Depth=1
        movups  xmm0, xmmword ptr [rcx + 4*rsi]
        movups  xmm1, xmmword ptr [rcx + 4*rsi + 16]
        movups  xmmword ptr [rdi + 4*rsi], xmm0
        movups  xmmword ptr [rdi + 4*rsi + 16], xmm1
        movups  xmm0, xmmword ptr [rcx + 4*rsi + 32]
        movups  xmm1, xmmword ptr [rcx + 4*rsi + 48]
        movups  xmmword ptr [rdi + 4*rsi + 32], xmm0
        movups  xmmword ptr [rdi + 4*rsi + 48], xmm1
        add     rsi, 16
        add     rbp, -2
        jne     .LBB1_12
        test    byte ptr [rsp - 32], 1          # 1-byte Folded Reload
        je      .LBB1_15
.LBB1_14:                               #   in Loop: Header=BB1_8 Depth=1
        movups  xmm0, xmmword ptr [rcx + 4*rsi]
        movups  xmm1, xmmword ptr [rcx + 4*rsi + 16]
        movups  xmmword ptr [rdi + 4*rsi], xmm0
        movups  xmmword ptr [rdi + 4*rsi + 16], xmm1
.LBB1_15:                               #   in Loop: Header=BB1_8 Depth=1
        add     rcx, r15
        add     rdi, r15
        mov     esi, r12d
        cmp     qword ptr [rsp - 16], r12       # 8-byte Folded Reload
        je      .LBB1_7
        jmp     .LBB1_18
.LBB1_17:                               #   in Loop: Header=BB1_8 Depth=1
        xor     esi, esi
.LBB1_18:                               #   in Loop: Header=BB1_8 Depth=1
        mov     ebp, r8d
        sub     ebp, r9d
        sub     ebp, esi
        mov     r11d, r13d
        sub     r11d, esi
        and     ebp, 7
        je      .LBB1_22
        mov     rdx, r9
        neg     ebp
        xor     ebx, ebx
.LBB1_20:                               #   Parent Loop BB1_8 Depth=1
        mov     r9d, dword ptr [rcx]
        add     rcx, 4
        mov     dword ptr [rdi], r9d
        add     rdi, 4
        dec     ebx
        cmp     ebp, ebx
        jne     .LBB1_20
        sub     esi, ebx
        mov     r9, rdx
.LBB1_22:                               #   in Loop: Header=BB1_8 Depth=1
        cmp     r11d, 7
        jb      .LBB1_7
        mov     edx, dword ptr [rsp - 44]       # 4-byte Reload
        mov     ebp, edx
        sub     ebp, esi
        xor     esi, esi
        xor     ebx, ebx
.LBB1_24:                               #   Parent Loop BB1_8 Depth=1
        mov     edx, dword ptr [rcx + 4*rbx]
        mov     dword ptr [rdi + 4*rbx], edx
        mov     edx, dword ptr [rcx + 4*rbx + 4]
        mov     dword ptr [rdi + 4*rbx + 4], edx
        mov     edx, dword ptr [rcx + 4*rbx + 8]
        mov     dword ptr [rdi + 4*rbx + 8], edx
        mov     edx, dword ptr [rcx + 4*rbx + 12]
        mov     dword ptr [rdi + 4*rbx + 12], edx
        mov     edx, dword ptr [rcx + 4*rbx + 16]
        mov     dword ptr [rdi + 4*rbx + 16], edx
        mov     edx, dword ptr [rcx + 4*rbx + 20]
        mov     dword ptr [rdi + 4*rbx + 20], edx
        mov     edx, dword ptr [rcx + 4*rbx + 24]
        mov     dword ptr [rdi + 4*rbx + 24], edx
        mov     edx, dword ptr [rcx + 4*rbx + 28]
        mov     dword ptr [rdi + 4*rbx + 28], edx
        add     rbx, 8
        add     rsi, -32
        cmp     ebp, ebx
        jne     .LBB1_24
        sub     rcx, rsi
        sub     rdi, rsi
        jmp     .LBB1_7
.LBB1_26:                               #   in Loop: Header=BB1_8 Depth=1
        xor     esi, esi
        test    byte ptr [rsp - 32], 1          # 1-byte Folded Reload
        jne     .LBB1_14
        jmp     .LBB1_15
.LBB1_27:
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
blit_keyed:                             # @blit_keyed
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        mov     r14d, dword ptr [rdi]
        cmp     r14d, edx
        jle     .LBB2_48
        mov     ebx, dword ptr [rsi]
        lea     r10d, [rbx + rdx]
        test    r10d, r10d
        jle     .LBB2_48
        mov     r9d, dword ptr [rdi + 4]
        cmp     r9d, ecx
        jle     .LBB2_48
        mov     eax, dword ptr [rsi + 4]
        add     eax, ecx
        test    eax, eax
        jle     .LBB2_48
        xor     r15d, r15d
        test    ecx, ecx
        mov     r11d, 0
        cmovg   r11d, ecx
        cmp     eax, r9d
        cmovl   r9d, eax
        cmp     r11d, r9d
        jge     .LBB2_48
        test    edx, edx
        cmovg   r15d, edx
        cmp     r10d, r14d
        cmovge  r10d, r14d
        mov     eax, r10d
        sub     eax, r15d
        mov     ebp, r10d
        sub     ebp, r15d
        mov     dword ptr [rsp - 16], ebp       # 4-byte Spill
        jne     .LBB2_6
.LBB2_48:
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
.LBB2_6:
        mov     r12d, ebx
        sub     r12d, eax
        mov     ebp, r14d
        sub     ebp, eax
        movsxd  rbp, ebp
        movsxd  r13, r12d
        imul    r14d, r11d
        movsxd  rax, r14d
        mov     r14, rbp
        shl     rax, 2
        add     rax, qword ptr [rdi + 8]
        mov     edi, r15d
        lea     rbp, [rax + 4*rdi]
        mov     eax, ecx
        neg     eax
        sar     ecx, 31
        and     ecx, eax
        imul    ecx, ebx
        movsxd  rax, ecx
        shl     rax, 2
        add     rax, qword ptr [rsi + 8]
        mov     ecx, edx
        neg     ecx
        sar     edx, 31
        and     edx, ecx
        movsxd  rcx, edx
        lea     rbx, [rax + 4*rcx]
        not     r15d
        add     r10d, r15d
        lea     rdx, [r10 + 1]
        mov     qword ptr [rsp - 8], rdx        # 8-byte Spill
        and     rdx, -8
        mov     eax, dword ptr [rsp - 16]       # 4-byte Reload
        sub     eax, edx
        mov     dword ptr [rsp - 12], eax       # 4-byte Spill
        lea     r12, [4*rdx]
        movd    xmm0, r8d
        pshufd  xmm0, xmm0, 0                   # xmm0 = xmm0[0,0,0,0]
        pcmpeqd xmm1, xmm1
        jmp     .LBB2_7
.LBB2_46:                               #   in Loop: Header=BB2_7 Depth=1
        sub     rcx, rdi
        sub     rsi, rdi
.LBB2_47:                               #   in Loop: Header=BB2_7 Depth=1
        lea     rbp, [rsi + 4*r14]
        lea     rbx, [rcx + 4*r13]
        inc     r11d
        cmp     r11d, r9d
        je      .LBB2_48
.LBB2_7:                                # =>This Loop Header: Depth=1
        cmp     r10d, 7
        jb      .LBB2_8
        mov     rax, rbp
        sub     rax, rbx
        cmp     rax, 32
        jb      .LBB2_8
        lea     rcx, [rbx + r12]
        lea     rsi, [r12 + rbp]
        xor     r15d, r15d
        jmp     .LBB2_11
.LBB2_27:                               #   in Loop: Header=BB2_11 Depth=2
        add     r15, 8
        cmp     rdx, r15
        je      .LBB2_28
.LBB2_11:                               #   Parent Loop BB2_7 Depth=1
        movdqu  xmm3, xmmword ptr [rbx + 4*r15]
        movdqu  xmm2, xmmword ptr [rbx + 4*r15 + 16]
        movdqa  xmm4, xmm3
        pcmpeqd xmm4, xmm0
        movd    eax, xmm4
        not     eax
        test    al, 1
        jne     .LBB2_12
        pxor    xmm4, xmm1
        pextrw  eax, xmm4, 2
        test    al, 1
        jne     .LBB2_14
.LBB2_15:                               #   in Loop: Header=BB2_11 Depth=2
        pextrw  eax, xmm4, 4
        test    al, 1
        jne     .LBB2_16
.LBB2_17:                               #   in Loop: Header=BB2_11 Depth=2
        pextrw  eax, xmm4, 6
        test    al, 1
        je      .LBB2_19
.LBB2_18:                               #   in Loop: Header=BB2_11 Depth=2
        pshufd  xmm3, xmm3, 255                 # xmm3 = xmm3[3,3,3,3]
        movd    dword ptr [rbp + 4*r15 + 12], xmm3
.LBB2_19:                               #   in Loop: Header=BB2_11 Depth=2
        movdqa  xmm3, xmm2
        pcmpeqd xmm3, xmm0
        movd    eax, xmm3
        not     eax
        test    al, 1
        jne     .LBB2_20
        pxor    xmm3, xmm1
        pextrw  eax, xmm3, 2
        test    al, 1
        jne     .LBB2_22
.LBB2_23:                               #   in Loop: Header=BB2_11 Depth=2
        pextrw  eax, xmm3, 4
        test    al, 1
        jne     .LBB2_24
.LBB2_25:                               #   in Loop: Header=BB2_11 Depth=2
        pextrw  eax, xmm3, 6
        test    al, 1
        je      .LBB2_27
        jmp     .LBB2_26
.LBB2_12:                               #   in Loop: Header=BB2_11 Depth=2
        movd    dword ptr [rbp + 4*r15], xmm3
        pxor    xmm4, xmm1
        pextrw  eax, xmm4, 2
        test    al, 1
        je      .LBB2_15
.LBB2_14:                               #   in Loop: Header=BB2_11 Depth=2
        pshufd  xmm5, xmm3, 85                  # xmm5 = xmm3[1,1,1,1]
        movd    dword ptr [rbp + 4*r15 + 4], xmm5
        pextrw  eax, xmm4, 4
        test    al, 1
        je      .LBB2_17
.LBB2_16:                               #   in Loop: Header=BB2_11 Depth=2
        pshufd  xmm5, xmm3, 238                 # xmm5 = xmm3[2,3,2,3]
        movd    dword ptr [rbp + 4*r15 + 8], xmm5
        pextrw  eax, xmm4, 6
        test    al, 1
        jne     .LBB2_18
        jmp     .LBB2_19
.LBB2_20:                               #   in Loop: Header=BB2_11 Depth=2
        movd    dword ptr [rbp + 4*r15 + 16], xmm2
        pxor    xmm3, xmm1
        pextrw  eax, xmm3, 2
        test    al, 1
        je      .LBB2_23
.LBB2_22:                               #   in Loop: Header=BB2_11 Depth=2
        pshufd  xmm4, xmm2, 85                  # xmm4 = xmm2[1,1,1,1]
        movd    dword ptr [rbp + 4*r15 + 20], xmm4
        pextrw  eax, xmm3, 4
        test    al, 1
        je      .LBB2_25
.LBB2_24:                               #   in Loop: Header=BB2_11 Depth=2
        pshufd  xmm4, xmm2, 238                 # xmm4 = xmm2[2,3,2,3]
        movd    dword ptr [rbp + 4*r15 + 24], xmm4
        pextrw  eax, xmm3, 6
        test    al, 1
        je      .LBB2_27
.LBB2_26:                               #   in Loop: Header=BB2_11 Depth=2
        pshufd  xmm2, xmm2, 255                 # xmm2 = xmm2[3,3,3,3]
        movd    dword ptr [rbp + 4*r15 + 28], xmm2
        jmp     .LBB2_27
.LBB2_8:                                #   in Loop: Header=BB2_7 Depth=1
        mov     eax, dword ptr [rsp - 16]       # 4-byte Reload
        mov     rcx, rbx
        mov     rsi, rbp
        jmp     .LBB2_29
.LBB2_28:                               #   in Loop: Header=BB2_7 Depth=1
        mov     eax, dword ptr [rsp - 12]       # 4-byte Reload
        cmp     qword ptr [rsp - 8], rdx        # 8-byte Folded Reload
        je      .LBB2_47
.LBB2_29:                               #   in Loop: Header=BB2_7 Depth=1
        lea     r15d, [rax - 1]
        test    al, 3
        je      .LBB2_35
        mov     edi, eax
        and     edi, 3
        xor     ebp, ebp
        jmp     .LBB2_31
.LBB2_33:                               #   in Loop: Header=BB2_31 Depth=2
        add     rcx, 4
        add     rsi, 4
        inc     rbp
        cmp     edi, ebp
        je      .LBB2_34
.LBB2_31:                               #   Parent Loop BB2_7 Depth=1
        mov     ebx, dword ptr [rcx]
        cmp     ebx, r8d
        je      .LBB2_33
        mov     dword ptr [rsi], ebx
        jmp     .LBB2_33
.LBB2_34:                               #   in Loop: Header=BB2_7 Depth=1
        sub     eax, ebp
.LBB2_35:                               #   in Loop: Header=BB2_7 Depth=1
        cmp     r15d, 3
        jb      .LBB2_47
        mov     ebx, eax
        xor     edi, edi
        xor     ebp, ebp
        jmp     .LBB2_37
.LBB2_45:                               #   in Loop: Header=BB2_37 Depth=2
        add     rbp, 4
        add     rdi, -16
        cmp     ebx, ebp
        je      .LBB2_46
.LBB2_37:                               #   Parent Loop BB2_7 Depth=1
        mov     eax, dword ptr [rcx + 4*rbp]
        cmp     eax, r8d
        jne     .LBB2_38
        mov     eax, dword ptr [rcx + 4*rbp + 4]
        cmp     eax, r8d
        jne     .LBB2_40
.LBB2_41:                               #   in Loop: Header=BB2_37 Depth=2
        mov     eax, dword ptr [rcx + 4*rbp + 8]
        cmp     eax, r8d
        jne     .LBB2_42
.LBB2_43:                               #   in Loop: Header=BB2_37 Depth=2
        mov     eax, dword ptr [rcx + 4*rbp + 12]
        cmp     eax, r8d
        je      .LBB2_45
        jmp     .LBB2_44
.LBB2_38:                               #   in Loop: Header=BB2_37 Depth=2
        mov     dword ptr [rsi + 4*rbp], eax
        mov     eax, dword ptr [rcx + 4*rbp + 4]
        cmp     eax, r8d
        je      .LBB2_41
.LBB2_40:                               #   in Loop: Header=BB2_37 Depth=2
        mov     dword ptr [rsi + 4*rbp + 4], eax
        mov     eax, dword ptr [rcx + 4*rbp + 8]
        cmp     eax, r8d
        je      .LBB2_43
.LBB2_42:                               #   in Loop: Header=BB2_37 Depth=2
        mov     dword ptr [rsi + 4*rbp + 8], eax
        mov     eax, dword ptr [rcx + 4*rbp + 12]
        cmp     eax, r8d
        je      .LBB2_45
.LBB2_44:                               #   in Loop: Header=BB2_37 Depth=2
        mov     dword ptr [rsi + 4*rbp + 12], eax
        jmp     .LBB2_45
blit_keyed_opt1:                        # @blit_keyed_opt1
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        mov     r14d, dword ptr [rdi]
        cmp     r14d, edx
        jle     .LBB3_48
        mov     ebx, dword ptr [rsi]
        lea     r10d, [rbx + rdx]
        test    r10d, r10d
        jle     .LBB3_48
        mov     r9d, dword ptr [rdi + 4]
        cmp     r9d, ecx
        jle     .LBB3_48
        mov     eax, dword ptr [rsi + 4]
        add     eax, ecx
        test    eax, eax
        jle     .LBB3_48
        xor     r15d, r15d
        test    ecx, ecx
        mov     r11d, 0
        cmovg   r11d, ecx
        cmp     eax, r9d
        cmovl   r9d, eax
        cmp     r11d, r9d
        jge     .LBB3_48
        test    edx, edx
        cmovg   r15d, edx
        cmp     r10d, r14d
        cmovge  r10d, r14d
        mov     eax, r10d
        sub     eax, r15d
        mov     ebp, r10d
        sub     ebp, r15d
        mov     dword ptr [rsp - 16], ebp       # 4-byte Spill
        jne     .LBB3_6
.LBB3_48:
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
.LBB3_6:
        mov     r12d, ebx
        sub     r12d, eax
        mov     ebp, r14d
        sub     ebp, eax
        movsxd  rbp, ebp
        movsxd  r13, r12d
        imul    r14d, r11d
        movsxd  rax, r14d
        mov     r14, rbp
        shl     rax, 2
        add     rax, qword ptr [rdi + 8]
        mov     edi, r15d
        lea     rbp, [rax + 4*rdi]
        mov     eax, ecx
        neg     eax
        sar     ecx, 31
        and     ecx, eax
        imul    ecx, ebx
        movsxd  rax, ecx
        shl     rax, 2
        add     rax, qword ptr [rsi + 8]
        mov     ecx, edx
        neg     ecx
        sar     edx, 31
        and     edx, ecx
        movsxd  rcx, edx
        lea     rbx, [rax + 4*rcx]
        not     r15d
        add     r10d, r15d
        lea     rdx, [r10 + 1]
        mov     qword ptr [rsp - 8], rdx        # 8-byte Spill
        and     rdx, -8
        mov     eax, dword ptr [rsp - 16]       # 4-byte Reload
        sub     eax, edx
        mov     dword ptr [rsp - 12], eax       # 4-byte Spill
        lea     r12, [4*rdx]
        movd    xmm0, r8d
        pshufd  xmm0, xmm0, 0                   # xmm0 = xmm0[0,0,0,0]
        pcmpeqd xmm1, xmm1
        jmp     .LBB3_7
.LBB3_46:                               #   in Loop: Header=BB3_7 Depth=1
        sub     rcx, rdi
        sub     rsi, rdi
.LBB3_47:                               #   in Loop: Header=BB3_7 Depth=1
        lea     rbp, [rsi + 4*r14]
        lea     rbx, [rcx + 4*r13]
        inc     r11d
        cmp     r11d, r9d
        je      .LBB3_48
.LBB3_7:                                # =>This Loop Header: Depth=1
        cmp     r10d, 7
        jb      .LBB3_8
        mov     rax, rbp
        sub     rax, rbx
        cmp     rax, 32
        jb      .LBB3_8
        lea     rcx, [rbx + r12]
        lea     rsi, [r12 + rbp]
        xor     r15d, r15d
        jmp     .LBB3_11
.LBB3_27:                               #   in Loop: Header=BB3_11 Depth=2
        add     r15, 8
        cmp     rdx, r15
        je      .LBB3_28
.LBB3_11:                               #   Parent Loop BB3_7 Depth=1
        movdqu  xmm3, xmmword ptr [rbx + 4*r15]
        movdqu  xmm2, xmmword ptr [rbx + 4*r15 + 16]
        movdqa  xmm4, xmm3
        pcmpeqd xmm4, xmm0
        movd    eax, xmm4
        not     eax
        test    al, 1
        jne     .LBB3_12
        pxor    xmm4, xmm1
        pextrw  eax, xmm4, 2
        test    al, 1
        jne     .LBB3_14
.LBB3_15:                               #   in Loop: Header=BB3_11 Depth=2
        pextrw  eax, xmm4, 4
        test    al, 1
        jne     .LBB3_16
.LBB3_17:                               #   in Loop: Header=BB3_11 Depth=2
        pextrw  eax, xmm4, 6
        test    al, 1
        je      .LBB3_19
.LBB3_18:                               #   in Loop: Header=BB3_11 Depth=2
        pshufd  xmm3, xmm3, 255                 # xmm3 = xmm3[3,3,3,3]
        movd    dword ptr [rbp + 4*r15 + 12], xmm3
.LBB3_19:                               #   in Loop: Header=BB3_11 Depth=2
        movdqa  xmm3, xmm2
        pcmpeqd xmm3, xmm0
        movd    eax, xmm3
        not     eax
        test    al, 1
        jne     .LBB3_20
        pxor    xmm3, xmm1
        pextrw  eax, xmm3, 2
        test    al, 1
        jne     .LBB3_22
.LBB3_23:                               #   in Loop: Header=BB3_11 Depth=2
        pextrw  eax, xmm3, 4
        test    al, 1
        jne     .LBB3_24
.LBB3_25:                               #   in Loop: Header=BB3_11 Depth=2
        pextrw  eax, xmm3, 6
        test    al, 1
        je      .LBB3_27
        jmp     .LBB3_26
.LBB3_12:                               #   in Loop: Header=BB3_11 Depth=2
        movd    dword ptr [rbp + 4*r15], xmm3
        pxor    xmm4, xmm1
        pextrw  eax, xmm4, 2
        test    al, 1
        je      .LBB3_15
.LBB3_14:                               #   in Loop: Header=BB3_11 Depth=2
        pshufd  xmm5, xmm3, 85                  # xmm5 = xmm3[1,1,1,1]
        movd    dword ptr [rbp + 4*r15 + 4], xmm5
        pextrw  eax, xmm4, 4
        test    al, 1
        je      .LBB3_17
.LBB3_16:                               #   in Loop: Header=BB3_11 Depth=2
        pshufd  xmm5, xmm3, 238                 # xmm5 = xmm3[2,3,2,3]
        movd    dword ptr [rbp + 4*r15 + 8], xmm5
        pextrw  eax, xmm4, 6
        test    al, 1
        jne     .LBB3_18
        jmp     .LBB3_19
.LBB3_20:                               #   in Loop: Header=BB3_11 Depth=2
        movd    dword ptr [rbp + 4*r15 + 16], xmm2
        pxor    xmm3, xmm1
        pextrw  eax, xmm3, 2
        test    al, 1
        je      .LBB3_23
.LBB3_22:                               #   in Loop: Header=BB3_11 Depth=2
        pshufd  xmm4, xmm2, 85                  # xmm4 = xmm2[1,1,1,1]
        movd    dword ptr [rbp + 4*r15 + 20], xmm4
        pextrw  eax, xmm3, 4
        test    al, 1
        je      .LBB3_25
.LBB3_24:                               #   in Loop: Header=BB3_11 Depth=2
        pshufd  xmm4, xmm2, 238                 # xmm4 = xmm2[2,3,2,3]
        movd    dword ptr [rbp + 4*r15 + 24], xmm4
        pextrw  eax, xmm3, 6
        test    al, 1
        je      .LBB3_27
.LBB3_26:                               #   in Loop: Header=BB3_11 Depth=2
        pshufd  xmm2, xmm2, 255                 # xmm2 = xmm2[3,3,3,3]
        movd    dword ptr [rbp + 4*r15 + 28], xmm2
        jmp     .LBB3_27
.LBB3_8:                                #   in Loop: Header=BB3_7 Depth=1
        mov     eax, dword ptr [rsp - 16]       # 4-byte Reload
        mov     rcx, rbx
        mov     rsi, rbp
        jmp     .LBB3_29
.LBB3_28:                               #   in Loop: Header=BB3_7 Depth=1
        mov     eax, dword ptr [rsp - 12]       # 4-byte Reload
        cmp     qword ptr [rsp - 8], rdx        # 8-byte Folded Reload
        je      .LBB3_47
.LBB3_29:                               #   in Loop: Header=BB3_7 Depth=1
        lea     r15d, [rax - 1]
        test    al, 3
        je      .LBB3_35
        mov     edi, eax
        and     edi, 3
        xor     ebp, ebp
        jmp     .LBB3_31
.LBB3_33:                               #   in Loop: Header=BB3_31 Depth=2
        add     rcx, 4
        add     rsi, 4
        inc     rbp
        cmp     edi, ebp
        je      .LBB3_34
.LBB3_31:                               #   Parent Loop BB3_7 Depth=1
        mov     ebx, dword ptr [rcx]
        cmp     ebx, r8d
        je      .LBB3_33
        mov     dword ptr [rsi], ebx
        jmp     .LBB3_33
.LBB3_34:                               #   in Loop: Header=BB3_7 Depth=1
        sub     eax, ebp
.LBB3_35:                               #   in Loop: Header=BB3_7 Depth=1
        cmp     r15d, 3
        jb      .LBB3_47
        mov     ebx, eax
        xor     edi, edi
        xor     ebp, ebp
        jmp     .LBB3_37
.LBB3_45:                               #   in Loop: Header=BB3_37 Depth=2
        add     rbp, 4
        add     rdi, -16
        cmp     ebx, ebp
        je      .LBB3_46
.LBB3_37:                               #   Parent Loop BB3_7 Depth=1
        mov     eax, dword ptr [rcx + 4*rbp]
        cmp     eax, r8d
        jne     .LBB3_38
        mov     eax, dword ptr [rcx + 4*rbp + 4]
        cmp     eax, r8d
        jne     .LBB3_40
.LBB3_41:                               #   in Loop: Header=BB3_37 Depth=2
        mov     eax, dword ptr [rcx + 4*rbp + 8]
        cmp     eax, r8d
        jne     .LBB3_42
.LBB3_43:                               #   in Loop: Header=BB3_37 Depth=2
        mov     eax, dword ptr [rcx + 4*rbp + 12]
        cmp     eax, r8d
        je      .LBB3_45
        jmp     .LBB3_44
.LBB3_38:                               #   in Loop: Header=BB3_37 Depth=2
        mov     dword ptr [rsi + 4*rbp], eax
        mov     eax, dword ptr [rcx + 4*rbp + 4]
        cmp     eax, r8d
        je      .LBB3_41
.LBB3_40:                               #   in Loop: Header=BB3_37 Depth=2
        mov     dword ptr [rsi + 4*rbp + 4], eax
        mov     eax, dword ptr [rcx + 4*rbp + 8]
        cmp     eax, r8d
        je      .LBB3_43
.LBB3_42:                               #   in Loop: Header=BB3_37 Depth=2
        mov     dword ptr [rsi + 4*rbp + 8], eax
        mov     eax, dword ptr [rcx + 4*rbp + 12]
        cmp     eax, r8d
        je      .LBB3_45
.LBB3_44:                               #   in Loop: Header=BB3_37 Depth=2
        mov     dword ptr [rsi + 4*rbp + 12], eax
        jmp     .LBB3_45
blit_keyed_opt2:                        # @blit_keyed_opt2
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        mov     ebx, dword ptr [rdi]
        cmp     ebx, edx
        jle     .LBB4_48
        mov     r10d, dword ptr [rsi]
        lea     r9d, [r10 + rdx]
        test    r9d, r9d
        jle     .LBB4_48
        mov     r11d, dword ptr [rdi + 4]
        cmp     r11d, ecx
        jle     .LBB4_48
        mov     eax, dword ptr [rsi + 4]
        add     eax, ecx
        test    eax, eax
        jle     .LBB4_48
        test    ecx, ecx
        mov     r13d, 0
        cmovg   r13d, ecx
        cmp     eax, r11d
        cmovl   r11d, eax
        cmp     r13d, r11d
        jge     .LBB4_48
        cmp     r9d, ebx
        cmovge  r9d, ebx
        test    edx, edx
        mov     eax, 0
        cmovg   eax, edx
        mov     qword ptr [rsp - 32], rax       # 8-byte Spill
        mov     r15d, eax
        not     r15d
        add     r15d, r9d
        js      .LBB4_48
        mov     eax, r9d
        mov     r14, qword ptr [rsp - 32]       # 8-byte Reload
        sub     eax, r14d
        mov     r12d, r10d
        sub     r12d, eax
        mov     ebp, ebx
        mov     dword ptr [rsp - 36], eax       # 4-byte Spill
        sub     ebp, eax
        movsxd  rax, ebp
        mov     qword ptr [rsp - 8], rax        # 8-byte Spill
        movsxd  rax, r12d
        mov     qword ptr [rsp - 16], rax       # 8-byte Spill
        imul    ebx, r13d
        movsxd  rax, ebx
        shl     rax, 2
        add     rax, qword ptr [rdi + 8]
        mov     edi, r14d
        lea     rbp, [rax + 4*rdi]
        mov     eax, ecx
        neg     eax
        sar     ecx, 31
        and     ecx, eax
        imul    ecx, r10d
        movsxd  rax, ecx
        shl     rax, 2
        add     rax, qword ptr [rsi + 8]
        mov     ecx, edx
        neg     ecx
        sar     edx, 31
        and     edx, ecx
        movsxd  rcx, edx
        lea     r14, [rax + 4*rcx]
        mov     edx, r15d
        inc     rdx
        mov     qword ptr [rsp - 24], rdx       # 8-byte Spill
        and     rdx, -8
        lea     r10, [4*rdx]
        movd    xmm0, r8d
        pshufd  xmm0, xmm0, 0                   # xmm0 = xmm0[0,0,0,0]
        pcmpeqd xmm1, xmm1
        jmp     .LBB4_7
.LBB4_46:                               #   in Loop: Header=BB4_7 Depth=1
        sub     rdi, rsi
        sub     rcx, rsi
.LBB4_47:                               #   in Loop: Header=BB4_7 Depth=1
        mov     rax, qword ptr [rsp - 8]        # 8-byte Reload
        lea     rbp, [rcx + 4*rax]
        mov     rax, qword ptr [rsp - 16]       # 8-byte Reload
        lea     r14, [rdi + 4*rax]
        inc     r13d
        cmp     r13d, r11d
        je      .LBB4_48
.LBB4_7:                                # =>This Loop Header: Depth=1
        cmp     r15d, 7
        jb      .LBB4_8
        mov     rax, rbp
        sub     rax, r14
        cmp     rax, 32
        jb      .LBB4_8
        lea     rdi, [r14 + r10]
        lea     rcx, [r10 + rbp]
        xor     r12d, r12d
        jmp     .LBB4_11
.LBB4_27:                               #   in Loop: Header=BB4_11 Depth=2
        add     r12, 8
        cmp     rdx, r12
        je      .LBB4_28
.LBB4_11:                               #   Parent Loop BB4_7 Depth=1
        movdqu  xmm3, xmmword ptr [r14 + 4*r12]
        movdqu  xmm2, xmmword ptr [r14 + 4*r12 + 16]
        movdqa  xmm4, xmm3
        pcmpeqd xmm4, xmm0
        movd    eax, xmm4
        not     eax
        test    al, 1
        jne     .LBB4_12
        pxor    xmm4, xmm1
        pextrw  eax, xmm4, 2
        test    al, 1
        jne     .LBB4_14
.LBB4_15:                               #   in Loop: Header=BB4_11 Depth=2
        pextrw  eax, xmm4, 4
        test    al, 1
        jne     .LBB4_16
.LBB4_17:                               #   in Loop: Header=BB4_11 Depth=2
        pextrw  eax, xmm4, 6
        test    al, 1
        je      .LBB4_19
.LBB4_18:                               #   in Loop: Header=BB4_11 Depth=2
        pshufd  xmm3, xmm3, 255                 # xmm3 = xmm3[3,3,3,3]
        movd    dword ptr [rbp + 4*r12 + 12], xmm3
.LBB4_19:                               #   in Loop: Header=BB4_11 Depth=2
        movdqa  xmm3, xmm2
        pcmpeqd xmm3, xmm0
        movd    eax, xmm3
        not     eax
        test    al, 1
        jne     .LBB4_20
        pxor    xmm3, xmm1
        pextrw  eax, xmm3, 2
        test    al, 1
        jne     .LBB4_22
.LBB4_23:                               #   in Loop: Header=BB4_11 Depth=2
        pextrw  eax, xmm3, 4
        test    al, 1
        jne     .LBB4_24
.LBB4_25:                               #   in Loop: Header=BB4_11 Depth=2
        pextrw  eax, xmm3, 6
        test    al, 1
        je      .LBB4_27
        jmp     .LBB4_26
.LBB4_12:                               #   in Loop: Header=BB4_11 Depth=2
        movd    dword ptr [rbp + 4*r12], xmm3
        pxor    xmm4, xmm1
        pextrw  eax, xmm4, 2
        test    al, 1
        je      .LBB4_15
.LBB4_14:                               #   in Loop: Header=BB4_11 Depth=2
        pshufd  xmm5, xmm3, 85                  # xmm5 = xmm3[1,1,1,1]
        movd    dword ptr [rbp + 4*r12 + 4], xmm5
        pextrw  eax, xmm4, 4
        test    al, 1
        je      .LBB4_17
.LBB4_16:                               #   in Loop: Header=BB4_11 Depth=2
        pshufd  xmm5, xmm3, 238                 # xmm5 = xmm3[2,3,2,3]
        movd    dword ptr [rbp + 4*r12 + 8], xmm5
        pextrw  eax, xmm4, 6
        test    al, 1
        jne     .LBB4_18
        jmp     .LBB4_19
.LBB4_20:                               #   in Loop: Header=BB4_11 Depth=2
        movd    dword ptr [rbp + 4*r12 + 16], xmm2
        pxor    xmm3, xmm1
        pextrw  eax, xmm3, 2
        test    al, 1
        je      .LBB4_23
.LBB4_22:                               #   in Loop: Header=BB4_11 Depth=2
        pshufd  xmm4, xmm2, 85                  # xmm4 = xmm2[1,1,1,1]
        movd    dword ptr [rbp + 4*r12 + 20], xmm4
        pextrw  eax, xmm3, 4
        test    al, 1
        je      .LBB4_25
.LBB4_24:                               #   in Loop: Header=BB4_11 Depth=2
        pshufd  xmm4, xmm2, 238                 # xmm4 = xmm2[2,3,2,3]
        movd    dword ptr [rbp + 4*r12 + 24], xmm4
        pextrw  eax, xmm3, 6
        test    al, 1
        je      .LBB4_27
.LBB4_26:                               #   in Loop: Header=BB4_11 Depth=2
        pshufd  xmm2, xmm2, 255                 # xmm2 = xmm2[3,3,3,3]
        movd    dword ptr [rbp + 4*r12 + 28], xmm2
        jmp     .LBB4_27
.LBB4_8:                                #   in Loop: Header=BB4_7 Depth=1
        xor     r12d, r12d
        mov     rdi, r14
        mov     rcx, rbp
        jmp     .LBB4_29
.LBB4_28:                               #   in Loop: Header=BB4_7 Depth=1
        mov     r12d, edx
        cmp     qword ptr [rsp - 24], rdx       # 8-byte Folded Reload
        je      .LBB4_47
.LBB4_29:                               #   in Loop: Header=BB4_7 Depth=1
        mov     rax, qword ptr [rsp - 32]       # 8-byte Reload
        add     eax, r12d
        mov     ebp, r9d
        sub     ebp, eax
        mov     ebx, r15d
        sub     ebx, r12d
        and     ebp, 3
        je      .LBB4_35
        neg     ebp
        xor     eax, eax
        jmp     .LBB4_31
.LBB4_33:                               #   in Loop: Header=BB4_31 Depth=2
        add     rdi, 4
        add     rcx, 4
        dec     eax
        cmp     ebp, eax
        je      .LBB4_34
.LBB4_31:                               #   Parent Loop BB4_7 Depth=1
        mov     esi, dword ptr [rdi]
        cmp     esi, r8d
        je      .LBB4_33
        mov     dword ptr [rcx], esi
        jmp     .LBB4_33
.LBB4_34:                               #   in Loop: Header=BB4_7 Depth=1
        sub     r12d, eax
.LBB4_35:                               #   in Loop: Header=BB4_7 Depth=1
        cmp     ebx, 3
        jb      .LBB4_47
        mov     eax, dword ptr [rsp - 36]       # 4-byte Reload
        mov     ebx, eax
        sub     ebx, r12d
        xor     esi, esi
        xor     ebp, ebp
        jmp     .LBB4_37
.LBB4_45:                               #   in Loop: Header=BB4_37 Depth=2
        add     rbp, 4
        add     rsi, -16
        cmp     ebx, ebp
        je      .LBB4_46
.LBB4_37:                               #   Parent Loop BB4_7 Depth=1
        mov     eax, dword ptr [rdi + 4*rbp]
        cmp     eax, r8d
        jne     .LBB4_38
        mov     eax, dword ptr [rdi + 4*rbp + 4]
        cmp     eax, r8d
        jne     .LBB4_40
.LBB4_41:                               #   in Loop: Header=BB4_37 Depth=2
        mov     eax, dword ptr [rdi + 4*rbp + 8]
        cmp     eax, r8d
        jne     .LBB4_42
.LBB4_43:                               #   in Loop: Header=BB4_37 Depth=2
        mov     eax, dword ptr [rdi + 4*rbp + 12]
        cmp     eax, r8d
        je      .LBB4_45
        jmp     .LBB4_44
.LBB4_38:                               #   in Loop: Header=BB4_37 Depth=2
        mov     dword ptr [rcx + 4*rbp], eax
        mov     eax, dword ptr [rdi + 4*rbp + 4]
        cmp     eax, r8d
        je      .LBB4_41
.LBB4_40:                               #   in Loop: Header=BB4_37 Depth=2
        mov     dword ptr [rcx + 4*rbp + 4], eax
        mov     eax, dword ptr [rdi + 4*rbp + 8]
        cmp     eax, r8d
        je      .LBB4_43
.LBB4_42:                               #   in Loop: Header=BB4_37 Depth=2
        mov     dword ptr [rcx + 4*rbp + 8], eax
        mov     eax, dword ptr [rdi + 4*rbp + 12]
        cmp     eax, r8d
        je      .LBB4_45
.LBB4_44:                               #   in Loop: Header=BB4_37 Depth=2
        mov     dword ptr [rcx + 4*rbp + 12], eax
        jmp     .LBB4_45
.LBB4_48:
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
blit_keyed_opt3:                        # @blit_keyed_opt3
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        movsxd  r10, dword ptr [rdi]
        cmp     r10d, edx
        jle     .LBB5_41
        movsxd  r9, dword ptr [rsi]
        lea     eax, [r9 + rdx]
        test    eax, eax
        jle     .LBB5_41
        mov     r11d, dword ptr [rdi + 4]
        cmp     r11d, ecx
        jle     .LBB5_41
        mov     ebp, dword ptr [rsi + 4]
        add     ebp, ecx
        test    ebp, ebp
        jle     .LBB5_41
        xor     ebx, ebx
        test    edx, edx
        mov     r14d, 0
        cmovg   r14d, edx
        test    ecx, ecx
        cmovg   ebx, ecx
        cmp     eax, r10d
        cmovge  eax, r10d
        cmp     ebp, r11d
        cmovl   r11d, ebp
        cmp     ebx, r11d
        jge     .LBB5_41
        mov     ebp, r14d
        not     ebp
        add     ebp, eax
        js      .LBB5_41
        mov     ebp, r10d
        imul    ebp, ebx
        movsxd  rbp, ebp
        mov     r15d, r14d
        shl     rbp, 2
        add     rbp, qword ptr [rdi + 8]
        lea     rbp, [rbp + 4*r15]
        mov     edi, ecx
        neg     edi
        sar     ecx, 31
        and     ecx, edi
        imul    ecx, r9d
        movsxd  rcx, ecx
        mov     edi, edx
        neg     edi
        sar     edx, 31
        and     edx, edi
        movsxd  rdx, edx
        shl     rcx, 2
        add     rcx, qword ptr [rsi + 8]
        lea     r13, [rcx + 4*rdx]
        sub     eax, r14d
        mov     r14, rbp
        lea     rcx, [4*r10]
        mov     qword ptr [rsp - 8], rcx        # 8-byte Spill
        lea     rcx, [4*r9]
        mov     qword ptr [rsp - 16], rcx       # 8-byte Spill
        mov     r12d, eax
        and     r12d, -8
        movd    xmm0, r8d
        pshufd  xmm0, xmm0, 0                   # xmm0 = xmm0[0,0,0,0]
        mov     r15, rax
        neg     r15
        xor     esi, esi
        pcmpeqd xmm1, xmm1
        mov     rcx, r13
        mov     qword ptr [rsp - 24], r13       # 8-byte Spill
        jmp     .LBB5_8
.LBB5_7:                                #   in Loop: Header=BB5_8 Depth=1
        lea     rbp, [rbp + 4*r10]
        lea     rcx, [rcx + 4*r9]
        inc     ebx
        inc     rsi
        cmp     ebx, r11d
        je      .LBB5_41
.LBB5_8:                                # =>This Loop Header: Depth=1
        cmp     eax, 8
        jb      .LBB5_9
        mov     rdx, qword ptr [rsp - 16]       # 8-byte Reload
        imul    rdx, rsi
        add     rdx, r13
        mov     rdi, qword ptr [rsp - 8]        # 8-byte Reload
        imul    rdi, rsi
        add     rdi, r14
        sub     rdi, rdx
        cmp     rdi, 32
        jae     .LBB5_12
.LBB5_9:                                #   in Loop: Header=BB5_8 Depth=1
        xor     edi, edi
.LBB5_31:                               #   in Loop: Header=BB5_8 Depth=1
        mov     rdx, rdi
        test    al, 1
        je      .LBB5_35
        mov     edx, dword ptr [rcx + 4*rdi]
        cmp     edx, r8d
        je      .LBB5_34
        mov     dword ptr [rbp + 4*rdi], edx
.LBB5_34:                               #   in Loop: Header=BB5_8 Depth=1
        mov     rdx, rdi
        or      rdx, 1
.LBB5_35:                               #   in Loop: Header=BB5_8 Depth=1
        not     rdi
        cmp     rdi, r15
        jne     .LBB5_37
        jmp     .LBB5_7
.LBB5_36:                               #   in Loop: Header=BB5_37 Depth=2
        add     rdx, 2
        cmp     rax, rdx
        je      .LBB5_7
.LBB5_37:                               #   Parent Loop BB5_8 Depth=1
        mov     edi, dword ptr [rcx + 4*rdx]
        cmp     edi, r8d
        jne     .LBB5_39
        mov     edi, dword ptr [rcx + 4*rdx + 4]
        cmp     edi, r8d
        je      .LBB5_36
        jmp     .LBB5_40
.LBB5_39:                               #   in Loop: Header=BB5_37 Depth=2
        mov     dword ptr [rbp + 4*rdx], edi
        mov     edi, dword ptr [rcx + 4*rdx + 4]
        cmp     edi, r8d
        je      .LBB5_36
.LBB5_40:                               #   in Loop: Header=BB5_37 Depth=2
        mov     dword ptr [rbp + 4*rdx + 4], edi
        jmp     .LBB5_36
.LBB5_12:                               #   in Loop: Header=BB5_8 Depth=1
        mov     r13, r14
        xor     r14d, r14d
        jmp     .LBB5_14
.LBB5_13:                               #   in Loop: Header=BB5_14 Depth=2
        add     r14, 8
        cmp     r12, r14
        je      .LBB5_30
.LBB5_14:                               #   Parent Loop BB5_8 Depth=1
        movdqu  xmm3, xmmword ptr [rcx + 4*r14]
        movdqu  xmm2, xmmword ptr [rcx + 4*r14 + 16]
        movdqa  xmm4, xmm3
        pcmpeqd xmm4, xmm0
        movd    edx, xmm4
        not     edx
        test    dl, 1
        je      .LBB5_15
        movd    dword ptr [rbp + 4*r14], xmm3
        pxor    xmm4, xmm1
        pextrw  edx, xmm4, 2
        test    dl, 1
        jne     .LBB5_24
.LBB5_16:                               #   in Loop: Header=BB5_14 Depth=2
        pextrw  edx, xmm4, 4
        test    dl, 1
        je      .LBB5_17
.LBB5_25:                               #   in Loop: Header=BB5_14 Depth=2
        pshufd  xmm5, xmm3, 238                 # xmm5 = xmm3[2,3,2,3]
        movd    dword ptr [rbp + 4*r14 + 8], xmm5
        pextrw  edx, xmm4, 6
        test    dl, 1
        jne     .LBB5_18
        jmp     .LBB5_19
.LBB5_15:                               #   in Loop: Header=BB5_14 Depth=2
        pxor    xmm4, xmm1
        pextrw  edx, xmm4, 2
        test    dl, 1
        je      .LBB5_16
.LBB5_24:                               #   in Loop: Header=BB5_14 Depth=2
        pshufd  xmm5, xmm3, 85                  # xmm5 = xmm3[1,1,1,1]
        movd    dword ptr [rbp + 4*r14 + 4], xmm5
        pextrw  edx, xmm4, 4
        test    dl, 1
        jne     .LBB5_25
.LBB5_17:                               #   in Loop: Header=BB5_14 Depth=2
        pextrw  edx, xmm4, 6
        test    dl, 1
        je      .LBB5_19
.LBB5_18:                               #   in Loop: Header=BB5_14 Depth=2
        pshufd  xmm3, xmm3, 255                 # xmm3 = xmm3[3,3,3,3]
        movd    dword ptr [rbp + 4*r14 + 12], xmm3
.LBB5_19:                               #   in Loop: Header=BB5_14 Depth=2
        movdqa  xmm3, xmm2
        pcmpeqd xmm3, xmm0
        movd    edx, xmm3
        not     edx
        test    dl, 1
        je      .LBB5_20
        movd    dword ptr [rbp + 4*r14 + 16], xmm2
        pxor    xmm3, xmm1
        pextrw  edx, xmm3, 2
        test    dl, 1
        jne     .LBB5_27
.LBB5_21:                               #   in Loop: Header=BB5_14 Depth=2
        pextrw  edx, xmm3, 4
        test    dl, 1
        je      .LBB5_22
.LBB5_28:                               #   in Loop: Header=BB5_14 Depth=2
        pshufd  xmm4, xmm2, 238                 # xmm4 = xmm2[2,3,2,3]
        movd    dword ptr [rbp + 4*r14 + 24], xmm4
        pextrw  edx, xmm3, 6
        test    dl, 1
        je      .LBB5_13
        jmp     .LBB5_29
.LBB5_20:                               #   in Loop: Header=BB5_14 Depth=2
        pxor    xmm3, xmm1
        pextrw  edx, xmm3, 2
        test    dl, 1
        je      .LBB5_21
.LBB5_27:                               #   in Loop: Header=BB5_14 Depth=2
        pshufd  xmm4, xmm2, 85                  # xmm4 = xmm2[1,1,1,1]
        movd    dword ptr [rbp + 4*r14 + 20], xmm4
        pextrw  edx, xmm3, 4
        test    dl, 1
        jne     .LBB5_28
.LBB5_22:                               #   in Loop: Header=BB5_14 Depth=2
        pextrw  edx, xmm3, 6
        test    dl, 1
        je      .LBB5_13
.LBB5_29:                               #   in Loop: Header=BB5_14 Depth=2
        pshufd  xmm2, xmm2, 255                 # xmm2 = xmm2[3,3,3,3]
        movd    dword ptr [rbp + 4*r14 + 28], xmm2
        jmp     .LBB5_13
.LBB5_30:                               #   in Loop: Header=BB5_8 Depth=1
        mov     rdi, r12
        cmp     r12, rax
        mov     r14, r13
        mov     r13, qword ptr [rsp - 24]       # 8-byte Reload
        je      .LBB5_7
        jmp     .LBB5_31
.LBB5_41:
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
blit_keyed_opt4:                        # @blit_keyed_opt4
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        mov     ebx, dword ptr [rdi]
        cmp     ebx, edx
        jle     .LBB6_33
        mov     r14d, dword ptr [rsi]
        lea     r9d, [r14 + rdx]
        test    r9d, r9d
        jle     .LBB6_33
        mov     r11d, dword ptr [rdi + 4]
        cmp     r11d, ecx
        jle     .LBB6_33
        mov     ebp, dword ptr [rsi + 4]
        add     ebp, ecx
        test    ebp, ebp
        jle     .LBB6_33
        test    ecx, ecx
        mov     r10d, 0
        cmovg   r10d, ecx
        cmp     ebp, r11d
        cmovl   r11d, ebp
        cmp     r10d, r11d
        jge     .LBB6_33
        cmp     r9d, ebx
        cmovge  r9d, ebx
        test    edx, edx
        mov     eax, 0
        cmovg   eax, edx
        mov     qword ptr [rsp - 40], rax       # 8-byte Spill
        mov     r15d, eax
        not     r15d
        add     r15d, r9d
        js      .LBB6_33
        mov     eax, r9d
        mov     r12, qword ptr [rsp - 40]       # 8-byte Reload
        sub     eax, r12d
        mov     r13d, r14d
        sub     r13d, eax
        mov     ebp, ebx
        mov     dword ptr [rsp - 52], eax       # 4-byte Spill
        sub     ebp, eax
        movsxd  rax, ebp
        mov     qword ptr [rsp - 8], rax        # 8-byte Spill
        movsxd  rax, r13d
        mov     qword ptr [rsp - 16], rax       # 8-byte Spill
        imul    ebx, r10d
        movsxd  rax, ebx
        shl     rax, 2
        add     rax, qword ptr [rdi + 8]
        mov     edi, r12d
        lea     r12, [rax + 4*rdi]
        mov     eax, ecx
        neg     eax
        sar     ecx, 31
        and     ecx, eax
        imul    ecx, r14d
        movsxd  rax, ecx
        shl     rax, 2
        add     rax, qword ptr [rsi + 8]
        mov     ecx, edx
        neg     ecx
        sar     edx, 31
        and     edx, ecx
        movsxd  rcx, edx
        lea     r13, [rax + 4*rcx]
        mov     r14d, r15d
        lea     rdx, [4*r14 + 4]
        inc     r14
        mov     qword ptr [rsp - 24], r14       # 8-byte Spill
        and     r14, -8
        lea     rax, [4*r14]
        mov     qword ptr [rsp - 32], rax       # 8-byte Spill
        movd    xmm0, r8d
        pshufd  xmm0, xmm0, 0                   # xmm0 = xmm0[0,0,0,0]
        mov     qword ptr [rsp - 48], rdx       # 8-byte Spill
        jmp     .LBB6_7
.LBB6_31:                               #   in Loop: Header=BB6_7 Depth=1
        sub     rcx, rsi
        sub     rdi, rsi
.LBB6_32:                               #   in Loop: Header=BB6_7 Depth=1
        mov     rax, qword ptr [rsp - 8]        # 8-byte Reload
        lea     r12, [rdi + 4*rax]
        mov     rax, qword ptr [rsp - 16]       # 8-byte Reload
        lea     r13, [rcx + 4*rax]
        inc     r10d
        cmp     r10d, r11d
        je      .LBB6_33
.LBB6_7:                                # =>This Loop Header: Depth=1
        cmp     r15d, 7
        jb      .LBB6_8
        lea     rax, [rdx + r13]
        cmp     r12, rax
        jae     .LBB6_11
        lea     rax, [r12 + rdx]
        cmp     r13, rax
        jae     .LBB6_11
.LBB6_8:                                #   in Loop: Header=BB6_7 Depth=1
        xor     esi, esi
        mov     rcx, r13
        mov     rdi, r12
.LBB6_14:                               #   in Loop: Header=BB6_7 Depth=1
        mov     rax, qword ptr [rsp - 40]       # 8-byte Reload
        add     eax, esi
        mov     ebx, r9d
        sub     ebx, eax
        mov     ebp, r15d
        sub     ebp, esi
        and     ebx, 3
        je      .LBB6_20
        neg     ebx
        xor     edx, edx
        jmp     .LBB6_16
.LBB6_18:                               #   in Loop: Header=BB6_16 Depth=2
        mov     dword ptr [rdi], eax
        add     rcx, 4
        add     rdi, 4
        dec     edx
        cmp     ebx, edx
        je      .LBB6_19
.LBB6_16:                               #   Parent Loop BB6_7 Depth=1
        mov     eax, dword ptr [rcx]
        cmp     eax, r8d
        jne     .LBB6_18
        mov     eax, dword ptr [rdi]
        jmp     .LBB6_18
.LBB6_19:                               #   in Loop: Header=BB6_7 Depth=1
        sub     esi, edx
        mov     rdx, qword ptr [rsp - 48]       # 8-byte Reload
.LBB6_20:                               #   in Loop: Header=BB6_7 Depth=1
        cmp     ebp, 3
        jb      .LBB6_32
        mov     eax, dword ptr [rsp - 52]       # 4-byte Reload
        mov     ebp, eax
        sub     ebp, esi
        xor     esi, esi
        xor     ebx, ebx
        jmp     .LBB6_22
.LBB6_30:                               #   in Loop: Header=BB6_22 Depth=2
        mov     dword ptr [rdi + 4*rbx + 12], eax
        add     rbx, 4
        add     rsi, -16
        cmp     ebp, ebx
        je      .LBB6_31
.LBB6_22:                               #   Parent Loop BB6_7 Depth=1
        mov     eax, dword ptr [rcx + 4*rbx]
        cmp     eax, r8d
        je      .LBB6_23
        mov     dword ptr [rdi + 4*rbx], eax
        mov     eax, dword ptr [rcx + 4*rbx + 4]
        cmp     eax, r8d
        je      .LBB6_25
.LBB6_26:                               #   in Loop: Header=BB6_22 Depth=2
        mov     dword ptr [rdi + 4*rbx + 4], eax
        mov     eax, dword ptr [rcx + 4*rbx + 8]
        cmp     eax, r8d
        je      .LBB6_27
.LBB6_28:                               #   in Loop: Header=BB6_22 Depth=2
        mov     dword ptr [rdi + 4*rbx + 8], eax
        mov     eax, dword ptr [rcx + 4*rbx + 12]
        cmp     eax, r8d
        jne     .LBB6_30
        jmp     .LBB6_29
.LBB6_23:                               #   in Loop: Header=BB6_22 Depth=2
        mov     eax, dword ptr [rdi + 4*rbx]
        mov     dword ptr [rdi + 4*rbx], eax
        mov     eax, dword ptr [rcx + 4*rbx + 4]
        cmp     eax, r8d
        jne     .LBB6_26
.LBB6_25:                               #   in Loop: Header=BB6_22 Depth=2
        mov     eax, dword ptr [rdi + 4*rbx + 4]
        mov     dword ptr [rdi + 4*rbx + 4], eax
        mov     eax, dword ptr [rcx + 4*rbx + 8]
        cmp     eax, r8d
        jne     .LBB6_28
.LBB6_27:                               #   in Loop: Header=BB6_22 Depth=2
        mov     eax, dword ptr [rdi + 4*rbx + 8]
        mov     dword ptr [rdi + 4*rbx + 8], eax
        mov     eax, dword ptr [rcx + 4*rbx + 12]
        cmp     eax, r8d
        jne     .LBB6_30
.LBB6_29:                               #   in Loop: Header=BB6_22 Depth=2
        mov     eax, dword ptr [rdi + 4*rbx + 12]
        jmp     .LBB6_30
.LBB6_11:                               #   in Loop: Header=BB6_7 Depth=1
        mov     rax, qword ptr [rsp - 32]       # 8-byte Reload
        lea     rcx, [rax + r13]
        lea     rdi, [r12 + rax]
        xor     edx, edx
.LBB6_12:                               #   Parent Loop BB6_7 Depth=1
        movdqu  xmm1, xmmword ptr [r13 + 4*rdx]
        movdqu  xmm2, xmmword ptr [r13 + 4*rdx + 16]
        movdqu  xmm3, xmmword ptr [r12 + 4*rdx]
        movdqu  xmm4, xmmword ptr [r12 + 4*rdx + 16]
        movdqa  xmm5, xmm1
        pcmpeqd xmm5, xmm0
        movdqa  xmm6, xmm2
        pcmpeqd xmm6, xmm0
        pand    xmm3, xmm5
        pandn   xmm5, xmm1
        por     xmm5, xmm3
        pand    xmm4, xmm6
        pandn   xmm6, xmm2
        por     xmm6, xmm4
        movdqu  xmmword ptr [r12 + 4*rdx], xmm5
        movdqu  xmmword ptr [r12 + 4*rdx + 16], xmm6
        add     rdx, 8
        cmp     r14, rdx
        jne     .LBB6_12
        mov     esi, r14d
        cmp     qword ptr [rsp - 24], r14       # 8-byte Folded Reload
        mov     rdx, qword ptr [rsp - 48]       # 8-byte Reload
        je      .LBB6_32
        jmp     .LBB6_14
.LBB6_33:
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
main:                                   # @main
        push    rax
        lea     rdi, [rip + .L.str]
        mov     esi, 123
        xor     eax, eax
        call    printf@PLT
        xor     eax, eax
        pop     rcx
        ret
.L.str:
        .asciz  "Hello world %i\n"