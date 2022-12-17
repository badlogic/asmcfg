_DATA   SEGMENT
COMM    ?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD                                                    ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA   ENDS
__xmm@ffffffffffffffffffffffffffffffff DB 0ffH, 0ffH, 0ffH, 0ffH, 0ffH, 0ffH
        DB      0ffH, 0ffH, 0ffH, 0ffH, 0ffH, 0ffH, 0ffH, 0ffH, 0ffH, 0ffH
??_C@_0BA@JMCGGCPB@Hello?5world?5?$CFi?6@ DB 'Hello world %i', 0aH, 00H ; `string'

image$ = 16
x1$ = 24
y1$ = 32
width$ = 40
height$ = 48
color$ = 56
r96_rect PROC                                     ; COMDAT
$LN30:
        push    rdi
        mov     edi, edx
        mov     r11, rcx
        test    r9d, r9d
        jle     $LN3@r96_rect
        mov     eax, DWORD PTR height$[rsp]
        test    eax, eax
        jle     $LN3@r96_rect
        mov     ecx, DWORD PTR [rcx]
        lea     r10d, DWORD PTR [r8+rax]
        mov     QWORD PTR [rsp+24], rsi
        lea     esi, DWORD PTR [rdx+r9]
        cmp     edx, ecx
        jge     $LN27@r96_rect
        test    esi, esi
        jle     $LN27@r96_rect
        mov     QWORD PTR [rsp+16], rbx
        mov     ebx, DWORD PTR [r11+4]
        cmp     r8d, ebx
        jge     $LN28@r96_rect
        test    r10d, r10d
        jle     SHORT $LN28@r96_rect
        xor     r9d, r9d
        test    edi, edi
        mov     edx, r9d
        cmovns  edx, edi
        test    r8d, r8d
        mov     edi, ecx
        cmovns  r9d, r8d
        cmp     r10d, ebx
        mov     eax, r9d
        cmovle  ebx, r10d
        mov     r10d, ecx
        dec     ebx
        cmp     esi, ecx
        cmovle  r10d, esi
        imul    eax, ecx
        sub     r10d, edx
        sub     edi, r10d
        movsxd  rcx, eax
        movsxd  rax, edx
        add     rcx, rax
        mov     rax, QWORD PTR [r11+8]
        lea     rdx, QWORD PTR [rax+rcx*4]
        cmp     r9d, ebx
        jg      SHORT $LN28@r96_rect
        mov     esi, DWORD PTR color$[rsp]
        movsxd  r11, edi
        shl     r11, 2
$LL4@r96_rect:
        test    r10d, r10d
        jle     SHORT $LN6@r96_rect
        mov     rdi, rdx
        movsxd  r8, r10d
        shl     r8, 2
        mov     rax, rsi
        mov     rcx, r8
        shr     rcx, 2
        rep stosd
        add     rdx, r8
$LN6@r96_rect:
        add     rdx, r11
        inc     r9d
        cmp     r9d, ebx
        jle     SHORT $LL4@r96_rect
$LN28@r96_rect:
        mov     rbx, QWORD PTR [rsp+16]
$LN27@r96_rect:
        mov     rsi, QWORD PTR [rsp+24]
$LN3@r96_rect:
        pop     rdi
        ret     0
r96_rect ENDP

dst$ = 32
src$ = 40
x$ = 48
y$ = 56
blit    PROC                                            ; COMDAT
$LN30:
        mov     QWORD PTR [rsp+32], rbx
        push    rbp
        push    rsi
        push    r14
        mov     r14d, DWORD PTR [rdx]
        mov     rbx, rcx
        mov     r10d, DWORD PTR [rdx+4]
        mov     r11d, r9d
        mov     ecx, DWORD PTR [rcx]
        add     r10d, r9d
        mov     rsi, rdx
        lea     ebp, DWORD PTR [r14+r8]
        cmp     r8d, ecx
        jge     $LN3@blit
        test    ebp, ebp
        jle     $LN3@blit
        mov     QWORD PTR [rsp+32], rdi
        mov     edi, DWORD PTR [rbx+4]
        cmp     r9d, edi
        jge     $LN27@blit
        test    r10d, r10d
        jle     $LN27@blit
        mov     QWORD PTR [rsp+40], r12
        xor     r12d, r12d
        test    r8d, r8d
        mov     QWORD PTR [rsp+48], r15
        mov     edx, r12d
        mov     r9d, r12d
        cmovns  edx, r8d
        mov     r15d, r14d
        test    r11d, r11d
        cmovns  r9d, r11d
        cmp     r10d, edi
        mov     eax, r9d
        cmovle  edi, r10d
        mov     r10d, ecx
        dec     edi
        cmp     ebp, ecx
        cmovle  r10d, ebp
        imul    eax, ecx
        sub     r10d, edx
        mov     ebp, ecx
        sub     ebp, r10d
        sub     r15d, r10d
        movsxd  rcx, eax
        movsxd  rax, edx
        add     rcx, rax
        mov     rax, QWORD PTR [rbx+8]
        lea     rdx, QWORD PTR [rax+rcx*4]
        mov     eax, r11d
        neg     eax
        test    r11d, r11d
        cmovns  eax, r12d
        imul    eax, r14d
        movsxd  rcx, eax
        mov     eax, r8d
        neg     eax
        test    r8d, r8d
        cmovns  eax, r12d
        mov     r12, QWORD PTR [rsp+40]
        cdqe
        add     rcx, rax
        mov     rax, QWORD PTR [rsi+8]
        lea     rax, QWORD PTR [rax+rcx*4]
        cmp     r9d, edi
        jg      SHORT $LN28@blit
        movsxd  r11, ebp
        shl     r11, 2
        movsxd  rbx, r15d
        shl     rbx, 2
        npad    7
$LL4@blit:
        test    r10d, r10d
        jle     SHORT $LN6@blit
        mov     r8d, r10d
        npad    8
$LL21@blit:
        mov     ecx, DWORD PTR [rax]
        add     rax, 4
        mov     DWORD PTR [rdx], ecx
        add     rdx, 4
        sub     r8, 1
        jne     SHORT $LL21@blit
$LN6@blit:
        add     rdx, r11
        add     rax, rbx
        inc     r9d
        cmp     r9d, edi
        jle     SHORT $LL4@blit
$LN28@blit:
        mov     r15, QWORD PTR [rsp+48]
$LN27@blit:
        mov     rdi, QWORD PTR [rsp+32]
$LN3@blit:
        mov     rbx, QWORD PTR [rsp+56]
        pop     r14
        pop     rsi
        pop     rbp
        ret     0
blit    ENDP

dst$ = 32
src$ = 40
x$ = 48
y$ = 56
color_key$ = 64
blit_keyed PROC                               ; COMDAT
$LN32:
        push    rsi
        push    rdi
        push    r14
        mov     r14d, DWORD PTR [rdx]
        mov     r10, rcx
        mov     eax, DWORD PTR [rdx+4]
        mov     rdi, rdx
        mov     ecx, DWORD PTR [rcx]
        add     eax, r9d
        lea     esi, DWORD PTR [r14+r8]
        cmp     r8d, ecx
        jge     $LN3@blit_keyed
        test    esi, esi
        jle     $LN3@blit_keyed
        mov     QWORD PTR [rsp+40], rbp
        mov     ebp, DWORD PTR [r10+4]
        cmp     r9d, ebp
        jge     $LN28@blit_keyed
        test    eax, eax
        jle     $LN28@blit_keyed
        mov     QWORD PTR [rsp+32], rbx
        mov     ebx, ecx
        mov     QWORD PTR [rsp+48], r12
        xor     r12d, r12d
        test    r8d, r8d
        mov     QWORD PTR [rsp+56], r15
        mov     edx, r12d
        mov     r11d, r12d
        cmovns  edx, r8d
        mov     r15d, r14d
        test    r9d, r9d
        cmovns  r11d, r9d
        cmp     eax, ebp
        cmovle  ebp, eax
        mov     eax, r11d
        dec     ebp
        cmp     esi, ecx
        cmovle  ebx, esi
        imul    eax, ecx
        mov     esi, ecx
        sub     ebx, edx
        sub     esi, ebx
        sub     r15d, ebx
        movsxd  rcx, eax
        movsxd  rax, edx
        add     rcx, rax
        mov     rax, QWORD PTR [r10+8]
        lea     rax, QWORD PTR [rax+rcx*4]
        mov     ecx, r9d
        neg     ecx
        test    r9d, r9d
        cmovns  ecx, r12d
        imul    ecx, r14d
        movsxd  rdx, ecx
        mov     ecx, r8d
        neg     ecx
        test    r8d, r8d
        cmovns  ecx, r12d
        mov     r12, QWORD PTR [rsp+48]
        movsxd  rcx, ecx
        add     rdx, rcx
        mov     rcx, QWORD PTR [rdi+8]
        lea     r8, QWORD PTR [rcx+rdx*4]
        cmp     r11d, ebp
        jg      SHORT $LN30@blit_keyed
        mov     r10d, DWORD PTR color_key$[rsp]
        movsxd  rdi, esi
        shl     rdi, 2
        movsxd  rsi, r15d
        shl     rsi, 2
$LL4@blit_keyed:
        mov     ecx, ebx
        test    ebx, ebx
        je      SHORT $LN20@blit_keyed
        npad    4
$LL23@blit_keyed:
        mov     edx, DWORD PTR [r8]
        lea     r9, QWORD PTR [rax+4]
        add     r8, 4
        dec     ecx
        cmp     edx, r10d
        je      SHORT $LN21@blit_keyed
        mov     DWORD PTR [rax], edx
$LN21@blit_keyed:
        mov     rax, r9
        test    ecx, ecx
        jne     SHORT $LL23@blit_keyed
$LN20@blit_keyed:
        add     rax, rdi
        add     r8, rsi
        inc     r11d
        cmp     r11d, ebp
        jle     SHORT $LL4@blit_keyed
$LN30@blit_keyed:
        mov     rbx, QWORD PTR [rsp+32]
        mov     r15, QWORD PTR [rsp+56]
$LN28@blit_keyed:
        mov     rbp, QWORD PTR [rsp+40]
$LN3@blit_keyed:
        pop     r14
        pop     rdi
        pop     rsi
        ret     0
blit_keyed ENDP

dst$ = 32
src$ = 40
x$ = 48
y$ = 56
color_key$ = 64
blit_keyed_opt1 PROC                                    ; COMDAT
$LN30:
        mov     QWORD PTR [rsp+32], rbx
        push    rbp
        push    rdi
        push    r14
        mov     r14d, DWORD PTR [rdx]
        mov     rbx, rcx
        mov     r11d, DWORD PTR [rdx+4]
        mov     rdi, rdx
        mov     ecx, DWORD PTR [rcx]
        add     r11d, r9d
        lea     ebp, DWORD PTR [r14+r8]
        cmp     r8d, ecx
        jge     $LN3@blit_keyed
        test    ebp, ebp
        jle     $LN3@blit_keyed
        mov     QWORD PTR [rsp+32], rsi
        mov     esi, DWORD PTR [rbx+4]
        cmp     r9d, esi
        jge     $LN27@blit_keyed
        test    r11d, r11d
        jle     $LN27@blit_keyed
        mov     QWORD PTR [rsp+40], r12
        xor     r12d, r12d
        test    r8d, r8d
        mov     QWORD PTR [rsp+48], r15
        mov     edx, r12d
        mov     r10d, r12d
        cmovns  edx, r8d
        mov     r15d, r14d
        test    r9d, r9d
        cmovns  r10d, r9d
        cmp     r11d, esi
        mov     eax, r10d
        cmovle  esi, r11d
        mov     r11d, ecx
        dec     esi
        cmp     ebp, ecx
        cmovle  r11d, ebp
        imul    eax, ecx
        sub     r11d, edx
        mov     ebp, ecx
        sub     ebp, r11d
        sub     r15d, r11d
        movsxd  rcx, eax
        movsxd  rax, edx
        add     rcx, rax
        mov     rax, QWORD PTR [rbx+8]
        lea     rdx, QWORD PTR [rax+rcx*4]
        mov     eax, r9d
        neg     eax
        test    r9d, r9d
        cmovns  eax, r12d
        imul    eax, r14d
        movsxd  rcx, eax
        mov     eax, r8d
        neg     eax
        test    r8d, r8d
        cmovns  eax, r12d
        mov     r12, QWORD PTR [rsp+40]
        cdqe
        add     rcx, rax
        mov     rax, QWORD PTR [rdi+8]
        lea     rax, QWORD PTR [rax+rcx*4]
        cmp     r10d, esi
        jg      SHORT $LN28@blit_keyed
        mov     r9d, DWORD PTR color_key$[rsp]
        movsxd  rbx, ebp
        shl     rbx, 2
        movsxd  rdi, r15d
        shl     rdi, 2
        npad    5
$LL4@blit_keyed:
        mov     ecx, r11d
        test    r11d, r11d
        je      SHORT $LN19@blit_keyed
        npad    8
$LL22@blit_keyed:
        mov     r8d, DWORD PTR [rax]
        dec     ecx
        cmp     r8d, r9d
        je      SHORT $LN15@blit_keyed
        mov     DWORD PTR [rdx], r8d
$LN15@blit_keyed:
        add     rax, 4
        add     rdx, 4
        test    ecx, ecx
        jne     SHORT $LL22@blit_keyed
$LN19@blit_keyed:
        add     rdx, rbx
        add     rax, rdi
        inc     r10d
        cmp     r10d, esi
        jle     SHORT $LL4@blit_keyed
$LN28@blit_keyed:
        mov     r15, QWORD PTR [rsp+48]
$LN27@blit_keyed:
        mov     rsi, QWORD PTR [rsp+32]
$LN3@blit_keyed:
        mov     rbx, QWORD PTR [rsp+56]
        pop     r14
        pop     rdi
        pop     rbp
        ret     0
blit_keyed_opt1 ENDP

dst$ = 32
src$ = 40
x$ = 48
y$ = 56
color_key$ = 64
blit_keyed_opt2 PROC                                    ; COMDAT
$LN32:
        mov     QWORD PTR [rsp+32], rbx
        push    rbp
        push    rdi
        push    r14
        mov     r14d, DWORD PTR [rdx]
        mov     rbx, rcx
        mov     r11d, DWORD PTR [rdx+4]
        mov     rdi, rdx
        mov     ecx, DWORD PTR [rcx]
        add     r11d, r9d
        lea     ebp, DWORD PTR [r14+r8]
        cmp     r8d, ecx
        jge     $LN3@blit_keyed
        test    ebp, ebp
        jle     $LN3@blit_keyed
        mov     QWORD PTR [rsp+32], rsi
        mov     esi, DWORD PTR [rbx+4]
        cmp     r9d, esi
        jge     $LN29@blit_keyed
        test    r11d, r11d
        jle     $LN29@blit_keyed
        mov     QWORD PTR [rsp+40], r12
        xor     r12d, r12d
        test    r8d, r8d
        mov     QWORD PTR [rsp+48], r15
        mov     edx, r12d
        mov     r10d, r12d
        cmovns  edx, r8d
        mov     r15d, r14d
        test    r9d, r9d
        cmovns  r10d, r9d
        cmp     r11d, esi
        mov     eax, r10d
        cmovle  esi, r11d
        mov     r11d, ecx
        dec     esi
        cmp     ebp, ecx
        cmovle  r11d, ebp
        imul    eax, ecx
        sub     r11d, edx
        mov     ebp, ecx
        sub     ebp, r11d
        sub     r15d, r11d
        movsxd  rcx, eax
        movsxd  rax, edx
        add     rcx, rax
        mov     rax, QWORD PTR [rbx+8]
        lea     rdx, QWORD PTR [rax+rcx*4]
        mov     eax, r9d
        neg     eax
        test    r9d, r9d
        cmovns  eax, r12d
        imul    eax, r14d
        movsxd  rcx, eax
        mov     eax, r8d
        neg     eax
        test    r8d, r8d
        cmovns  eax, r12d
        mov     r12, QWORD PTR [rsp+40]
        cdqe
        add     rcx, rax
        mov     rax, QWORD PTR [rdi+8]
        lea     rax, QWORD PTR [rax+rcx*4]
        cmp     r10d, esi
        jg      SHORT $LN30@blit_keyed
        mov     r9d, DWORD PTR color_key$[rsp]
        movsxd  rbx, ebp
        shl     rbx, 2
        movsxd  rdi, r15d
        shl     rdi, 2
        npad    5
$LL4@blit_keyed:
        test    r11d, r11d
        jle     SHORT $LN6@blit_keyed
        mov     r8d, r11d
$LL22@blit_keyed:
        mov     ecx, DWORD PTR [rax]
        cmp     ecx, r9d
        je      SHORT $LN23@blit_keyed
        mov     DWORD PTR [rdx], ecx
$LN23@blit_keyed:
        add     rax, 4
        add     rdx, 4
        sub     r8, 1
        jne     SHORT $LL22@blit_keyed
$LN6@blit_keyed:
        add     rdx, rbx
        add     rax, rdi
        inc     r10d
        cmp     r10d, esi
        jle     SHORT $LL4@blit_keyed
$LN30@blit_keyed:
        mov     r15, QWORD PTR [rsp+48]
$LN29@blit_keyed:
        mov     rsi, QWORD PTR [rsp+32]
$LN3@blit_keyed:
        mov     rbx, QWORD PTR [rsp+56]
        pop     r14
        pop     rdi
        pop     rbp
        ret     0
blit_keyed_opt2 ENDP

dst$ = 24
src$ = 32
x$ = 40
y$ = 48
color_key$ = 56
blit_keyed_opt3 PROC                                    ; COMDAT
$LN32:
        mov     QWORD PTR [rsp+24], rbx
        mov     QWORD PTR [rsp+32], rsi
        push    rdi
        push    r15
        movsxd  r15, DWORD PTR [rdx]
        mov     r10, rcx
        mov     ecx, DWORD PTR [rdx+4]
        mov     rbx, rdx
        add     ecx, r9d
        movsxd  rsi, DWORD PTR [r10]
        lea     edi, DWORD PTR [r15+r8]
        cmp     r8d, esi
        jge     $LN3@blit_keyed
        test    edi, edi
        jle     $LN3@blit_keyed
        mov     QWORD PTR [rsp+32], r14
        mov     r14d, DWORD PTR [r10+4]
        cmp     r9d, r14d
        jge     $LN29@blit_keyed
        test    ecx, ecx
        jle     $LN29@blit_keyed
        mov     QWORD PTR [rsp+24], rbp
        xor     ebp, ebp
        test    r8d, r8d
        mov     edx, ebp
        mov     r11d, ebp
        cmovns  edx, r8d
        test    r9d, r9d
        cmovns  r11d, r9d
        cmp     ecx, r14d
        mov     eax, r11d
        cmovle  r14d, ecx
        imul    eax, esi
        dec     r14d
        movsxd  rcx, eax
        movsxd  rax, edx
        add     rcx, rax
        mov     rax, QWORD PTR [r10+8]
        lea     r10, QWORD PTR [rax+rcx*4]
        mov     eax, r9d
        neg     eax
        test    r9d, r9d
        cmovns  eax, ebp
        imul    eax, r15d
        movsxd  rcx, eax
        mov     eax, r8d
        neg     eax
        test    r8d, r8d
        cmovns  eax, ebp
        cdqe
        add     rcx, rax
        mov     rax, QWORD PTR [rbx+8]
        cmp     edi, esi
        lea     rbx, QWORD PTR [rax+rcx*4]
        mov     eax, esi
        cmovle  eax, edi
        sub     eax, edx
        movsxd  rdi, eax
        cmp     r11d, r14d
        jg      SHORT $LN30@blit_keyed
        mov     r9d, DWORD PTR color_key$[rsp]
        mov     rbp, r15
        shl     rsi, 2
        shl     rbp, 2
$LL4@blit_keyed:
        test    rdi, rdi
        jle     SHORT $LN6@blit_keyed
        mov     r8, rbx
        mov     rax, r10
        sub     r8, r10
        mov     rdx, rdi
$LL22@blit_keyed:
        mov     ecx, DWORD PTR [r8+rax]
        cmp     ecx, r9d
        je      SHORT $LN23@blit_keyed
        mov     DWORD PTR [rax], ecx
$LN23@blit_keyed:
        add     rax, 4
        sub     rdx, 1
        jne     SHORT $LL22@blit_keyed
$LN6@blit_keyed:
        add     r10, rsi
        add     rbx, rbp
        inc     r11d
        cmp     r11d, r14d
        jle     SHORT $LL4@blit_keyed
$LN30@blit_keyed:
        mov     rbp, QWORD PTR [rsp+24]
$LN29@blit_keyed:
        mov     r14, QWORD PTR [rsp+32]
$LN3@blit_keyed:
        mov     rbx, QWORD PTR [rsp+40]
        mov     rsi, QWORD PTR [rsp+48]
        pop     r15
        pop     rdi
        ret     0
blit_keyed_opt3 ENDP

dst$ = 48
src$ = 56
src_next_row$1$ = 64
x$ = 64
y$ = 72
color_key$ = 80
blit_keyed_opt4 PROC                                    ; COMDAT
$LN53:
        push    rsi
        push    r12
        push    r14
        push    r15
        sub     rsp, 8
        mov     r11d, DWORD PTR color_key$[rsp]
        mov     r14, rcx
        mov     r12d, DWORD PTR [rdx]
        mov     r15, rdx
        mov     ecx, DWORD PTR [rdx+4]
        add     ecx, r9d
        mov     esi, DWORD PTR [r14]
        movd    xmm3, r11d
        lea     r10d, DWORD PTR [r12+r8]
        pshufd  xmm3, xmm3, 0
        cmp     r8d, esi
        jge     $LN3@blit_keyed
        test    r10d, r10d
        jle     $LN3@blit_keyed
        mov     QWORD PTR [rsp+72], rdi
        mov     edi, DWORD PTR [r14+4]
        cmp     r9d, edi
        jge     $LN48@blit_keyed
        test    ecx, ecx
        jle     $LN48@blit_keyed
        xor     edx, edx
        mov     QWORD PTR [rsp+48], rbx
        test    r8d, r8d
        mov     QWORD PTR [rsp+56], rbp
        mov     eax, r12d
        mov     QWORD PTR [rsp], r13
        cmovns  edx, r8d
        mov     ebp, esi
        xor     ebx, ebx
        mov     r13d, esi
        test    r9d, r9d
        cmovns  ebx, r9d
        cmp     ecx, edi
        cmovle  edi, ecx
        dec     edi
        cmp     r10d, esi
        cmovle  ebp, r10d
        sub     ebp, edx
        dec     ebp
        lea     r10d, DWORD PTR [rbp+1]
        sub     eax, r10d
        sub     r13d, r10d
        mov     DWORD PTR src_next_row$1$[rsp], eax
        mov     eax, ebx
        imul    eax, esi
        movsxd  rcx, eax
        movsxd  rax, edx
        add     rcx, rax
        mov     rax, QWORD PTR [r14+8]
        lea     rax, QWORD PTR [rax+rcx*4]
        mov     ecx, r9d
        neg     ecx
        test    r9d, r9d
        mov     r9d, 0
        cmovns  ecx, r9d
        imul    ecx, r12d
        movsxd  rdx, ecx
        mov     ecx, r8d
        neg     ecx
        test    r8d, r8d
        cmovns  ecx, r9d
        movsxd  rcx, ecx
        add     rdx, rcx
        mov     rcx, QWORD PTR [r15+8]
        lea     r8, QWORD PTR [rcx+rdx*4]
        cmp     ebx, edi
        jg      $LN51@blit_keyed
        movsxd  r14, DWORD PTR src_next_row$1$[rsp]
        movdqa  xmm4, XMMWORD PTR __xmm@ffffffffffffffffffffffffffffffff
        movsxd  rsi, r13d
        shl     rsi, 2
        shl     r14, 2
        npad    2
$LL4@blit_keyed:
        mov     edx, r9d
        test    r10d, r10d
        jle     $LN6@blit_keyed
        cmp     r10d, 16
        jb      $LN45@blit_keyed
        movsxd  rcx, ebp
        lea     r9, QWORD PTR [rax+rcx*4]
        lea     rcx, QWORD PTR [r8+rcx*4]
        cmp     rax, rcx
        ja      SHORT $LN26@blit_keyed
        cmp     r9, r8
        jae     $LN45@blit_keyed
$LN26@blit_keyed:
        mov     ecx, r10d
        and     ecx, -2147483633              ; ffffffff8000000fH
        jge     SHORT $LN46@blit_keyed
        dec     ecx
        or      ecx, -16
        inc     ecx
$LN46@blit_keyed:
        mov     r9d, r10d
        sub     r9d, ecx
        npad    9
$LL7@blit_keyed:
        movdqu  xmm0, XMMWORD PTR [r8]
        add     edx, 16
        movdqa  xmm2, xmm0
        pcmpeqd xmm2, xmm3
        pandn   xmm2, xmm4
        movdqa  xmm1, xmm2
        pand    xmm1, xmm0
        movdqu  xmm0, XMMWORD PTR [rax]
        pandn   xmm2, xmm0
        movdqu  xmm0, XMMWORD PTR [r8+16]
        por     xmm1, xmm2
        movdqu  XMMWORD PTR [rax], xmm1
        movdqa  xmm2, xmm0
        pcmpeqd xmm2, xmm3
        pandn   xmm2, xmm4
        movdqa  xmm1, xmm2
        pand    xmm1, xmm0
        movdqu  xmm0, XMMWORD PTR [rax+16]
        pandn   xmm2, xmm0
        movdqu  xmm0, XMMWORD PTR [r8+32]
        por     xmm1, xmm2
        movdqu  XMMWORD PTR [rax+16], xmm1
        movdqa  xmm2, xmm0
        pcmpeqd xmm2, xmm3
        pandn   xmm2, xmm4
        movdqa  xmm1, xmm2
        pand    xmm1, xmm0
        movdqu  xmm0, XMMWORD PTR [rax+32]
        pandn   xmm2, xmm0
        movdqu  xmm0, XMMWORD PTR [r8+48]
        add     r8, 64                                    ; 00000040H
        por     xmm1, xmm2
        movdqu  XMMWORD PTR [rax+32], xmm1
        movdqa  xmm2, xmm0
        pcmpeqd xmm2, xmm3
        pandn   xmm2, xmm4
        movdqa  xmm1, xmm2
        pand    xmm1, xmm0
        movdqu  xmm0, XMMWORD PTR [rax+48]
        pandn   xmm2, xmm0
        por     xmm1, xmm2
        movdqu  XMMWORD PTR [rax+48], xmm1
        add     rax, 64                             ; 00000040H
        cmp     edx, r9d
        jl      $LL7@blit_keyed
        cmp     edx, r10d
        jge     SHORT $LN47@blit_keyed
$LN45@blit_keyed:
        mov     r9d, r10d
        sub     r9d, edx
        npad    4
$LL21@blit_keyed:
        cmp     DWORD PTR [r8], r11d
        mov     edx, DWORD PTR [rax]
        cmovne  edx, DWORD PTR [r8]
        add     r8, 4
        mov     DWORD PTR [rax], edx
        add     rax, 4
        sub     r9, 1
        jne     SHORT $LL21@blit_keyed
$LN47@blit_keyed:
        xor     r9d, r9d
$LN6@blit_keyed:
        add     rax, rsi
        add     r8, r14
        inc     ebx
        cmp     ebx, edi
        jle     $LL4@blit_keyed
$LN51@blit_keyed:
        mov     rbx, QWORD PTR [rsp+48]
        mov     rbp, QWORD PTR [rsp+56]
        mov     r13, QWORD PTR [rsp]
$LN48@blit_keyed:
        mov     rdi, QWORD PTR [rsp+72]
$LN3@blit_keyed:
        add     rsp, 8
        pop     r15
        pop     r14
        pop     r12
        pop     rsi
        ret     0
blit_keyed_opt4 ENDP

main    PROC                                            ; COMDAT
$LN4:
        sub     rsp, 40                             ; 00000028H
        mov     edx, 123                      ; 0000007bH
        lea     rcx, OFFSET FLAT:??_C@_0BA@JMCGGCPB@Hello?5world?5?$CFi?6@
        call    printf
        xor     eax, eax
        add     rsp, 40                             ; 00000028H
        ret     0
main    ENDP