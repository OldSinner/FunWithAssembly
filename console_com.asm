[bits 32]

; GetChar
; eax = characters

call [ebx+2*4]   ; call GetChar - asm loader   -> eax contain the character
cmp  eax, 'A'


jne  NO_A        ; jump if not equal
call WRITE_HELLO
db 'hello world', 0xa, 0


WRITE_HELLO:
    call [ebx+3*4] ; call WriteString - asm loader
    ;add  esp, 4
    call [ebx]     ; call Exit - asm loader

NO_A:           ; compare with 0x0A
call  WRITE_XYZ
db 'xyz', 0xa, 0

WRITE_XYZ:
    call [ebx+3*4] ; call WriteString - asm loader
    ;add  esp, 4
    call [ebx]     ; call Exit - asm loader


