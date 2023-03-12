DATA   DCD     1,4,3,7,4,5
DLEN   EQU     6
LEN    EQU     DLEN*4
STOP   EQU     DATA + (DLEN-1)*4
       MOV     R10, #STOP
INIT   MOV     R0, #DATA
       MOV     R1, R0
       ADD     R1, R1, #4
       MOV     R2, #LEN
       MOV     R3, #LEN
LOOP1  ADD     R1, R0, #4
LOOP2  LDR     R4, [R1]
       LDR     R5, [R0]
       CMP     R4, R5
       BGT     SKIP
       STR     R4, [R0]
       STR     R5, [R1]
SKIP   ADD     R1, R1, #4
       CMP     R1, #STOP
       BLE     LOOP2
       ADD     R0, R0, #4
       SUB     R2, R2, #4
       CMP     R2, #4
       BNE     LOOP1