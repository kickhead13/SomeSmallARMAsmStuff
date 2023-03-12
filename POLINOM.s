       mov     r1, #77
       MOV     R0, R1
while  MOV     R2, R1
       CMP     R2, #10
       BLT     SKIP1
mod    sub     r2, r2, #10
       cmp     r2, #10
       bge     mod
SKIP1  MOV     R7, #0
       MOV     R6, R3
MUL10  ADD     R7, R7, #1
       ADD     R3, R3,R6
       CMP     R7,#9
       BLT     MUL10
       ADD     R3, R3, R2
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

       CMP     R0, R3 ;LA SFARSIT AVEM IN R1 OPUSUL LUI R3
       MOVEQ   R8, #1 ;ESTE POLINOM
       MOVNE   R8, #0 ;NU ESTE POLINOM