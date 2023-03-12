       MOV     R0, #2
       MOV     R1, #13
       MOV     R4, R0
LOOP   ASR     R2, R1, #1
       ADD     R2, R2, R2
       CMP     R2, R1
       ADDLT   R3, R4, R3
       ASR     R1, R1, #1
       CMP     R1, #1
       ADD     R4, R4, R4
       BGE     LOOP