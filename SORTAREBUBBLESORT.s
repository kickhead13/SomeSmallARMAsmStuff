DATA       DCD     1,3,4,6,2
DLEN       EQU     5
LEN        EQU     DLEN*4
LOOP2      MOV     R0, #LEN
           MOV     R5, #0
           MOV     R0, #LEN
           MOV     R1, #DATA
           MOV     R2, R1
           ADD     R2, R2, #4
LOOP       LDR     R3, [R1]
           LDR     R4, [R2]
           CMP     R3, R4
           BGT     SKIPCHANGE
           MOV     R5, #1
           STR     R3, [R2]
           STR     R4, [R1]
SKIPCHANGE ADD     R1, R1, #4
           ADD     R2, R2, #4
           SUB     R0, R0, #4
           CMP     R0, #0
           BNE     LOOP
           CMP     R5, #0
           BNE     LOOP2