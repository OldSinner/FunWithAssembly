[bits 32]

call MAIN
MAIN:
    pop  ebp
    add  dword ebp, DATA-MAIN
    push ebp
    ; lea ebp, [eax+(DATA-MAIN)]
    ;add  dword [esp], DATA-MAIN
    call [ebx+3*4]
    pop  ebx
    call [ebx]


DATA:
    db "Testowy String", 0xa, 0