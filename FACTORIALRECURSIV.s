       MOV     R0, #4 ;numarul a carui factorial vrem sa l gasim (notam numarul cu n)
       MOV     R4, #1
       BL      LOOP
LOOP   STMFD   R1!, {R0} ;stocam numerele n, n-1...2,1 in stack
       SUB     R0, R0, #1
       CMP     R0, #1
       BGT     LOOP
REC    ;recursivitate?
       LDMFD   R1!, {R2} ;memoram in R2 varful stack ului
       MOV     R3, R4
MUL    ;inmultim varful cu R4 (in R4 avem rezultatul factorial la pasul i si la final r4 =fact(n))
       ADD     R4, R4, R3
       SUB     R2, R2, #1
       CMP     R2, #1
       BGT     MUL
       CMP     R1, #0
       BLT     REC


       ;       MOV R7, #7
       ;       MOV R6, #5
       ;       MOV R8, R7
       ;MUL2
       ;       ADD R7, R7, R8
       ;       SUB R6, R6, #1
       ;       CMP R6, #1
       ;       BGT MUL2
