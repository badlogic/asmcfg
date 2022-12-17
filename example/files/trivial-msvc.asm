_DATA   SEGMENT
COMM    ?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD                                                    ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA   ENDS
_DATA   SEGMENT
$SG9893 DB        '%i', 0aH, 00H
_DATA   ENDS

i$1 = 32
n$ = 64
test    PROC
$LN6:
        mov     DWORD PTR [rsp+8], ecx
        sub     rsp, 56                             ; 00000038H
        mov     DWORD PTR i$1[rsp], 0
        jmp     SHORT $LN4@test
$LN2@test:
        mov     eax, DWORD PTR i$1[rsp]
        inc     eax
        mov     DWORD PTR i$1[rsp], eax
$LN4@test:
        mov     eax, DWORD PTR n$[rsp]
        cmp     DWORD PTR i$1[rsp], eax
        jge     SHORT $LN3@test
        mov     edx, DWORD PTR n$[rsp]
        lea     rcx, OFFSET FLAT:$SG9893
        call    printf
        jmp     SHORT $LN2@test
$LN3@test:
        add     rsp, 56                             ; 00000038H
        ret     0
test    ENDP
