r96_rect:
        test    r8d, r8d
        jle     .L17
        test    ecx, ecx
        jle     .L17
        mov     rax, rdi
        lea     edi, [rsi-1+rcx]
        mov     ecx, DWORD PTR [rax]
        cmp     ecx, esi
        jle     .L17
        test    edi, edi
        js      .L17
        mov     r10d, DWORD PTR [rax+4]
        lea     r8d, [rdx-1+r8]
        cmp     r10d, edx
        jle     .L17
        test    r8d, r8d
        js      .L17
        xor     r11d, r11d
        test    esi, esi
        mov     rax, QWORD PTR [rax+8]
        cmovs   esi, r11d
        test    edx, edx
        cmovs   edx, r11d
        lea     r11d, [rcx-1]
        cmp     ecx, edi
        cmovle  edi, r11d
        lea     r11d, [r10-1]
        cmp     r10d, r8d
        cmovle  r8d, r11d
        mov     r11d, ecx
        imul    ecx, edx
        sub     edi, esi
        movsx   rsi, esi
        lea     r10d, [rdi+1]
        sub     r11d, r10d
        movsx   rcx, ecx
        add     rcx, rsi
        lea     rsi, [rax+rcx*4]
        cmp     edx, r8d
        jg      .L17
        movsx   r11, r11d
        test    r10d, r10d
        jle     .L17
        push    r13
        mov     r13d, r10d
        movsx   rax, edi
        movd    xmm1, r9d
        push    r12
        and     r13d, -4
        add     r8d, 1
        pshufd  xmm0, xmm1, 0
        push    rbp
        mov     r12d, r13d
        lea     rbp, [r11+1+rax]
        push    rbx
        sal     r12, 2
        mov     ebx, r10d
        sal     rbp, 2
        shr     ebx, 2
        and     r10d, 3
        sal     rbx, 4
.L5:
        mov     rax, rsi
        lea     rcx, [rsi+rbx]
        cmp     edi, 2
        jbe     .L21
.L6:
        movups  XMMWORD PTR [rax], xmm0
        add     rax, 16
        cmp     rcx, rax
        jne     .L6
        test    r10d, r10d
        je      .L7
        lea     rax, [rsi+r12]
        mov     ecx, r13d
.L8:
        mov     DWORD PTR [rax], r9d
        lea     r11d, [rcx+1]
        cmp     edi, ecx
        jle     .L7
        mov     DWORD PTR [rax+4], r9d
        cmp     edi, r11d
        jle     .L7
        mov     DWORD PTR [rax+8], r9d
.L7:
        add     edx, 1
        add     rsi, rbp
        cmp     edx, r8d
        jne     .L5
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret
.L17:
        ret
.L21:
        mov     rax, rsi
        xor     ecx, ecx
        jmp     .L8
blit:
        push    r15
        mov     eax, edx
        push    r14
        push    r13
        push    r12
        push    rbp
        push    rbx
        mov     r8d, DWORD PTR [rsi]
        mov     rbx, rdi
        lea     edi, [r8-1+rdx]
        mov     edx, DWORD PTR [rbx]
        test    edi, edi
        js      .L22
        cmp     edx, eax
        jle     .L22
        mov     r9d, DWORD PTR [rsi+4]
        mov     r11, rsi
        mov     esi, DWORD PTR [rbx+4]
        add     r9d, ecx
        sub     r9d, 1
        js      .L22
        cmp     esi, ecx
        jle     .L22
        test    eax, eax
        js      .L24
        movsx   r12, eax
        xor     ebp, ebp
.L25:
        test    ecx, ecx
        js      .L26
        mov     r10d, edx
        imul    r10d, ecx
        movsx   r10, r10d
        add     r12, r10
.L27:
        lea     r10d, [rdx-1]
        cmp     edx, edi
        cmovle  edi, r10d
        cmp     esi, r9d
        lea     r10d, [rsi-1]
        mov     esi, edx
        cmovle  r9d, r10d
        mov     rdx, QWORD PTR [r11+8]
        sub     edi, eax
        mov     rax, QWORD PTR [rbx+8]
        lea     r10d, [rdi+1]
        lea     rdx, [rdx+rbp*4]
        sub     esi, r10d
        sub     r8d, r10d
        lea     rax, [rax+r12*4]
        cmp     ecx, r9d
        jg      .L22
        movsx   rsi, esi
        movsx   r8, r8d
        lea     r11, [0+rsi*4]
        lea     rbx, [0+r8*4]
        test    r10d, r10d
        jle     .L22
        movsx   r12, edi
        mov     r14d, r10d
        mov     r8d, r10d
        add     r9d, 1
        lea     rsi, [4+r12*4]
        and     r14d, -4
        sal     r12, 2
        and     r10d, 3
        mov     QWORD PTR [rsp-16], rsi
        shr     r8d, 2
        mov     ebp, r14d
        lea     r15d, [r14+1]
        lea     r13, [r11+4+r12]
        sal     r8, 4
        sal     rbp, 2
        lea     r12, [rbx+4+r12]
.L31:
        cmp     edi, 2
        jbe     .L37
        lea     rbx, [rdx+4]
        mov     r11, rax
        sub     r11, rbx
        cmp     r11, 8
        ja      .L38
.L37:
        mov     rsi, QWORD PTR [rsp-16]
        xor     r11d, r11d
.L34:
        mov     ebx, DWORD PTR [rdx+r11]
        mov     DWORD PTR [rax+r11], ebx
        add     r11, 4
        cmp     rsi, r11
        jne     .L34
        mov     QWORD PTR [rsp-16], rsi
.L35:
        add     ecx, 1
        add     rax, r13
        add     rdx, r12
        cmp     ecx, r9d
        jne     .L31
.L22:
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret
.L24:
        neg     eax
        xor     r12d, r12d
        movsx   rbp, eax
        xor     eax, eax
        jmp     .L25
.L38:
        mov     rsi, QWORD PTR [rsp-16]
        xor     r11d, r11d
.L32:
        movdqu  xmm0, XMMWORD PTR [rdx+r11]
        movups  XMMWORD PTR [rax+r11], xmm0
        add     r11, 16
        cmp     r8, r11
        jne     .L32
        mov     QWORD PTR [rsp-16], rsi
        lea     r11, [rax+rbp]
        lea     rbx, [rdx+rbp]
        test    r10d, r10d
        je      .L35
        mov     esi, DWORD PTR [rbx]
        mov     DWORD PTR [r11], esi
        cmp     edi, r14d
        jle     .L35
        mov     esi, DWORD PTR [rbx+4]
        mov     DWORD PTR [r11+4], esi
        cmp     edi, r15d
        jle     .L35
        mov     ebx, DWORD PTR [rbx+8]
        mov     DWORD PTR [r11+8], ebx
        jmp     .L35
.L26:
        neg     ecx
        imul    ecx, r8d
        movsx   rcx, ecx
        add     rbp, rcx
        xor     ecx, ecx
        jmp     .L27
blit_keyed:
        mov     r9d, ecx
        mov     ecx, DWORD PTR [rsi]
        mov     r11, rdi
        mov     rdi, rsi
        mov     eax, edx
        lea     esi, [rcx-1+rdx]
        mov     edx, DWORD PTR [r11]
        test    esi, esi
        js      .L64
        cmp     edx, eax
        jle     .L64
        push    r13
        push    r12
        push    rbp
        push    rbx
        mov     r10d, DWORD PTR [rdi+4]
        mov     ebx, DWORD PTR [r11+4]
        add     r10d, r9d
        sub     r10d, 1
        js      .L46
        cmp     ebx, r9d
        jle     .L46
        test    eax, eax
        js      .L48
        movsx   r13, eax
        xor     r12d, r12d
.L49:
        test    r9d, r9d
        js      .L50
        mov     ebp, edx
        imul    ebp, r9d
        movsx   rbp, ebp
        add     r13, rbp
.L51:
        lea     ebp, [rdx-1]
        cmp     edx, esi
        cmovle  esi, ebp
        cmp     ebx, r10d
        lea     ebp, [rbx-1]
        cmovle  r10d, ebp
        mov     ebx, esi
        sub     ebx, eax
        mov     eax, ecx
        mov     rcx, QWORD PTR [r11+8]
        lea     ebp, [rbx+1]
        lea     rsi, [rcx+r13*4]
        mov     rcx, QWORD PTR [rdi+8]
        sub     edx, ebp
        sub     eax, ebp
        lea     rcx, [rcx+r12*4]
        cmp     r9d, r10d
        jg      .L46
        movsx   rdx, edx
        cdqe
        lea     r11, [0+rdx*4]
        lea     rdx, [0+rax*4]
        test    ebp, ebp
        je      .L46
        mov     eax, ebx
        add     r10d, 1
        lea     rdi, [4+rax*4]
        sal     rax, 2
        lea     rbx, [r11+4+rax]
        lea     r11, [rdx+4+rax]
.L55:
        xor     eax, eax
.L57:
        mov     edx, DWORD PTR [rcx+rax]
        cmp     edx, r8d
        je      .L56
        mov     DWORD PTR [rsi+rax], edx
.L56:
        add     rax, 4
        cmp     rdi, rax
        jne     .L57
        add     r9d, 1
        add     rsi, rbx
        add     rcx, r11
        cmp     r9d, r10d
        jne     .L55
.L46:
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret
.L64:
        ret
.L48:
        neg     eax
        xor     r13d, r13d
        movsx   r12, eax
        xor     eax, eax
        jmp     .L49
.L50:
        neg     r9d
        imul    r9d, ecx
        movsx   r9, r9d
        add     r12, r9
        xor     r9d, r9d
        jmp     .L51
blit_keyed_opt1:
        mov     r9d, ecx
        mov     ecx, DWORD PTR [rsi]
        mov     eax, edx
        lea     r11d, [rcx-1+rdx]
        mov     edx, DWORD PTR [rdi]
        test    r11d, r11d
        js      .L85
        cmp     edx, eax
        jle     .L85
        push    r13
        push    r12
        push    rbp
        push    rbx
        mov     r10d, DWORD PTR [rsi+4]
        mov     ebx, DWORD PTR [rdi+4]
        add     r10d, r9d
        sub     r10d, 1
        js      .L67
        cmp     ebx, r9d
        jle     .L67
        test    eax, eax
        js      .L69
        movsx   r12, eax
        xor     ebp, ebp
.L70:
        test    r9d, r9d
        js      .L71
        mov     r13d, edx
        imul    r13d, r9d
        movsx   r13, r13d
        add     r12, r13
.L72:
        lea     r13d, [rdx-1]
        cmp     edx, r11d
        cmovle  r11d, r13d
        cmp     ebx, r10d
        lea     r13d, [rbx-1]
        cmovle  r10d, r13d
        sub     r11d, eax
        mov     eax, ecx
        mov     rcx, QWORD PTR [rdi+8]
        lea     ebx, [r11+1]
        lea     rdi, [rcx+r12*4]
        mov     rcx, QWORD PTR [rsi+8]
        sub     edx, ebx
        sub     eax, ebx
        lea     rcx, [rcx+rbp*4]
        cmp     r9d, r10d
        jg      .L67
        movsx   rdx, edx
        cdqe
        lea     rbp, [0+rdx*4]
        lea     rdx, [0+rax*4]
        test    ebx, ebx
        je      .L67
        lea     rax, [0+r11*4]
        lea     rsi, [4+r11*4]
        add     r10d, 1
        lea     rbx, [rbp+4+rax]
        lea     r11, [rdx+4+rax]
.L76:
        xor     eax, eax
.L78:
        mov     edx, DWORD PTR [rcx+rax]
        cmp     edx, r8d
        je      .L77
        mov     DWORD PTR [rdi+rax], edx
.L77:
        add     rax, 4
        cmp     rsi, rax
        jne     .L78
        add     r9d, 1
        add     rdi, rbx
        add     rcx, r11
        cmp     r9d, r10d
        jne     .L76
.L67:
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret
.L85:
        ret
.L69:
        neg     eax
        xor     r12d, r12d
        movsx   rbp, eax
        xor     eax, eax
        jmp     .L70
.L71:
        neg     r9d
        imul    r9d, ecx
        movsx   r9, r9d
        add     rbp, r9
        xor     r9d, r9d
        jmp     .L72
blit_keyed_opt2:
        mov     r9d, ecx
        mov     ecx, DWORD PTR [rsi]
        mov     eax, edx
        lea     r11d, [rcx-1+rdx]
        mov     edx, DWORD PTR [rdi]
        test    r11d, r11d
        js      .L103
        cmp     edx, eax
        jle     .L103
        push    r13
        push    r12
        push    rbp
        push    rbx
        mov     r10d, DWORD PTR [rsi+4]
        mov     ebx, DWORD PTR [rdi+4]
        add     r10d, r9d
        sub     r10d, 1
        js      .L88
        cmp     ebx, r9d
        jle     .L88
        test    eax, eax
        js      .L90
        movsx   r12, eax
        xor     ebp, ebp
.L91:
        test    r9d, r9d
        js      .L92
        mov     r13d, edx
        imul    r13d, r9d
        movsx   r13, r13d
        add     r12, r13
.L93:
        lea     r13d, [rdx-1]
        cmp     edx, r11d
        cmovle  r11d, r13d
        cmp     ebx, r10d
        lea     r13d, [rbx-1]
        cmovle  r10d, r13d
        sub     r11d, eax
        mov     eax, ecx
        mov     rcx, QWORD PTR [rdi+8]
        lea     ebx, [r11+1]
        lea     rdi, [rcx+r12*4]
        mov     rcx, QWORD PTR [rsi+8]
        sub     edx, ebx
        sub     eax, ebx
        lea     rcx, [rcx+rbp*4]
        cmp     r9d, r10d
        jg      .L88
        movsx   rdx, edx
        cdqe
        lea     rbp, [0+rdx*4]
        lea     rdx, [0+rax*4]
        test    ebx, ebx
        jle     .L88
        movsx   r11, r11d
        add     r10d, 1
        lea     rax, [0+r11*4]
        lea     rsi, [4+r11*4]
        lea     rbx, [rbp+4+rax]
        lea     r11, [rdx+4+rax]
.L97:
        xor     eax, eax
.L99:
        mov     edx, DWORD PTR [rcx+rax]
        cmp     edx, r8d
        je      .L98
        mov     DWORD PTR [rdi+rax], edx
.L98:
        add     rax, 4
        cmp     rsi, rax
        jne     .L99
        add     r9d, 1
        add     rdi, rbx
        add     rcx, r11
        cmp     r9d, r10d
        jne     .L97
.L88:
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret
.L103:
        ret
.L90:
        neg     eax
        xor     r12d, r12d
        movsx   rbp, eax
        xor     eax, eax
        jmp     .L91
.L92:
        neg     r9d
        imul    r9d, ecx
        movsx   r9, r9d
        add     rbp, r9
        xor     r9d, r9d
        jmp     .L93
blit_keyed_opt3:
        movsx   r11, DWORD PTR [rsi]
        movsx   r10, DWORD PTR [rdi]
        lea     eax, [r11-1+rdx]
        test    eax, eax
        js      .L121
        cmp     r10d, edx
        jle     .L121
        push    r13
        mov     r9d, ecx
        push    r12
        push    rbp
        push    rbx
        mov     ecx, DWORD PTR [rsi+4]
        mov     ebx, DWORD PTR [rdi+4]
        add     ecx, r9d
        sub     ecx, 1
        cmp     ebx, r9d
        jle     .L106
        test    ecx, ecx
        js      .L106
        test    edx, edx
        js      .L108
        movsx   r12, edx
        xor     ebp, ebp
.L109:
        test    r9d, r9d
        js      .L110
        mov     r13d, r10d
        imul    r13d, r9d
        movsx   r13, r13d
        add     r12, r13
.L111:
        lea     r13d, [r10-1]
        cmp     r10d, eax
        cmovle  eax, r13d
        cmp     ebx, ecx
        lea     r13d, [rbx-1]
        cmovle  ecx, r13d
        sub     eax, edx
        mov     rdx, QWORD PTR [rdi+8]
        lea     rdi, [rdx+r12*4]
        mov     rdx, QWORD PTR [rsi+8]
        lea     rsi, [rdx+rbp*4]
        cmp     r9d, ecx
        jg      .L106
        sal     r10, 2
        sal     r11, 2
        test    eax, eax
        js      .L106
        lea     ebx, [rcx+1]
        lea     ecx, [rax+1]
        movsx   rcx, ecx
        sal     rcx, 2
.L115:
        xor     eax, eax
.L117:
        mov     edx, DWORD PTR [rsi+rax]
        cmp     edx, r8d
        je      .L116
        mov     DWORD PTR [rdi+rax], edx
.L116:
        add     rax, 4
        cmp     rcx, rax
        jne     .L117
        add     r9d, 1
        add     rdi, r10
        add     rsi, r11
        cmp     r9d, ebx
        jne     .L115
.L106:
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret
.L121:
        ret
.L108:
        neg     edx
        xor     r12d, r12d
        movsx   rbp, edx
        xor     edx, edx
        jmp     .L109
.L110:
        neg     r9d
        imul    r9d, r11d
        movsx   r9, r9d
        add     rbp, r9
        xor     r9d, r9d
        jmp     .L111
blit_keyed_opt4:
        push    r15
        mov     r10d, ecx
        mov     eax, edx
        push    r14
        push    r13
        push    r12
        push    rbp
        push    rbx
        mov     ecx, DWORD PTR [rsi]
        lea     ebx, [rcx-1+rdx]
        mov     edx, DWORD PTR [rdi]
        test    ebx, ebx
        js      .L124
        cmp     edx, eax
        jle     .L124
        mov     r9d, DWORD PTR [rsi+4]
        mov     r11d, DWORD PTR [rdi+4]
        add     r9d, r10d
        sub     r9d, 1
        js      .L124
        cmp     r11d, r10d
        jle     .L124
        test    eax, eax
        js      .L126
        movsx   r12, eax
        xor     ebp, ebp
.L127:
        test    r10d, r10d
        js      .L128
        mov     r13d, edx
        imul    r13d, r10d
        movsx   r13, r13d
        add     r12, r13
.L129:
        lea     r13d, [rdx-1]
        cmp     edx, ebx
        cmovle  ebx, r13d
        cmp     r11d, r9d
        lea     r13d, [r11-1]
        cmovle  r9d, r13d
        sub     ebx, eax
        mov     rax, QWORD PTR [rdi+8]
        lea     r15d, [rbx+1]
        sub     edx, r15d
        sub     ecx, r15d
        mov     DWORD PTR [rsp-12], r15d
        lea     rax, [rax+r12*4]
        mov     r13d, edx
        mov     rdx, QWORD PTR [rsi+8]
        mov     r11d, ecx
        lea     rdx, [rdx+rbp*4]
        cmp     r10d, r9d
        jg      .L124
        movsx   rcx, r13d
        movsx   rsi, r11d
        sal     rcx, 2
        sal     rsi, 2
        test    r15d, r15d
        jle     .L124
        lea     edi, [r9+1]
        mov     r12d, r15d
        mov     r9d, r15d
        mov     r14d, r15d
        mov     DWORD PTR [rsp-24], edi
        movsx   rdi, ebx
        and     r14d, -4
        movd    xmm6, r8d
        lea     r11, [4+rdi*4]
        sal     rdi, 2
        shr     r12d, 2
        mov     r13d, r14d
        lea     r15, [rcx+4+rdi]
        lea     rdi, [rsi+4+rdi]
        sal     r12, 4
        sal     r13, 2
        mov     QWORD PTR [rsp-32], rdi
        mov     edi, r9d
        sub     r9d, r14d
        pshufd  xmm4, xmm6, 0xe0
        and     edi, 3
        mov     DWORD PTR [rsp-16], r9d
        pshufd  xmm3, xmm6, 0
        mov     DWORD PTR [rsp-20], edi
.L133:
        xor     ecx, ecx
        test    ebx, ebx
        je      .L135
        lea     rcx, [rdx+4]
        mov     rsi, rax
        sub     rsi, rcx
        xor     ecx, ecx
        cmp     rsi, 8
        ja      .L159
.L135:
        mov     esi, DWORD PTR [rdx+rcx]
        cmp     r8d, esi
        je      .L158
        mov     DWORD PTR [rax+rcx], esi
.L158:
        add     rcx, 4
        cmp     rcx, r11
        jne     .L135
.L145:
        mov     rdi, QWORD PTR [rsp-32]
        add     r10d, 1
        add     rax, r15
        add     rdx, rdi
        mov     edi, DWORD PTR [rsp-24]
        cmp     r10d, edi
        jne     .L133
.L124:
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret
.L126:
        neg     eax
        xor     r12d, r12d
        movsx   rbp, eax
        xor     eax, eax
        jmp     .L127
.L159:
        cmp     ebx, 2
        jbe     .L147
.L138:
        movdqu  xmm0, XMMWORD PTR [rdx+rcx]
        movdqu  xmm1, XMMWORD PTR [rax+rcx]
        movdqu  xmm5, XMMWORD PTR [rdx+rcx]
        pcmpeqd xmm0, xmm3
        pand    xmm1, xmm0
        pandn   xmm0, xmm5
        por     xmm0, xmm1
        movups  XMMWORD PTR [rax+rcx], xmm0
        add     rcx, 16
        cmp     r12, rcx
        jne     .L138
        mov     ecx, DWORD PTR [rsp-20]
        test    ecx, ecx
        je      .L145
        mov     esi, DWORD PTR [rsp-16]
        lea     rcx, [rax+r13]
        lea     rdi, [rdx+r13]
        mov     r9d, r14d
        cmp     ebx, r14d
        je      .L140
.L137:
        movq    xmm2, QWORD PTR [rdx+r9*4]
        lea     rbp, [rax+r9*4]
        movq    xmm1, QWORD PTR [rbp+0]
        movdqa  xmm0, xmm2
        pcmpeqd xmm0, xmm4
        pand    xmm1, xmm0
        pandn   xmm0, xmm2
        por     xmm1, xmm0
        movq    QWORD PTR [rbp+0], xmm1
        test    sil, 1
        je      .L145
        and     esi, -2
        sal     rsi, 2
        add     rcx, rsi
        add     rdi, rsi
.L140:
        mov     esi, DWORD PTR [rdi]
        cmp     r8d, esi
        cmove   esi, DWORD PTR [rcx]
        mov     DWORD PTR [rcx], esi
        jmp     .L145
.L147:
        mov     esi, DWORD PTR [rsp-12]
        mov     rdi, rdx
        mov     rcx, rax
        xor     r9d, r9d
        jmp     .L137
.L128:
        neg     r10d
        imul    r10d, ecx
        movsx   r10, r10d
        add     rbp, r10
        xor     r10d, r10d
        jmp     .L129
.LC0:
        .string "test"
.LC1:
        .string "Hello world %i %i %s\n"
main:
        sub     rsp, 8
        mov     ecx, OFFSET FLAT:.LC0
        mov     edx, 1
        xor     eax, eax
        mov     esi, 123
        mov     edi, OFFSET FLAT:.LC1
        call    printf
        xor     eax, eax
        add     rsp, 8
        ret