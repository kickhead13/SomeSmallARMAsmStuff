       mov     r1, #73
while  MOV     R2, R1
       CMP     R2, #10
       BLT     SKIP1
mod    sub     r2, r2, #10
       cmp     r2, #10
       bge     mod
SKIP1  ADD     R3, R3, R2
       CMP     R2, R5
       MOVGT   R5, R2

       MOV     R4, #0
       CMP     R1, #10
       BLT     SKIP
DIV10  ADD     R4, R4, #1
       SUB     R1, R1, #10
       CMP     R1, #10
       BGT     DIV10
SKIP   MOV     R1, R4
       cmp     r1, #0
       bgt     while