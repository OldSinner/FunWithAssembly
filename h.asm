[bits 32]

push    'H'
call    [ebx+4] ;putchar
add     esp,4 ;pop the argument

push    '0' ;push the argument
call    [ebx] ;putchar