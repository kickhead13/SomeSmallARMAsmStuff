       MOV     R0, #1
       MOV     R1, #1
       MOV     R3, #3
       CMP     R3, #3
       BLT     SKIP
LOOP   ADD     R2, R1, R0
       MOV     R0, R1
       MOV     R1, R2
       CMP     R3, #3
       SUB     R3, R3, #1
       BNE     LOOP
       END
SKIP   MOV     R2, #1
       END