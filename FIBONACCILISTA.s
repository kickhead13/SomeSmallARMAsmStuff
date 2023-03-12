DATA   DCD     1,1
       MOV     R0, #DATA
       ADD     R0,R0, #8
       MOV     R2, #35
       SUB     R2, R2, #2
LOOP   LDR     R1, [R0, #-8]
       LDR     R3, [R0, #-4]
       ADD     R1, R1, R3
       STR     R1, [R0]
       CMP     R2, #0
       SUB     R2, R2, #1
       ADD     R0, R0, #4
       BNE     LOOP
