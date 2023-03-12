LIST   DCD     1,2,3,4,9,4,2,12
ENDL   EQU     LIST + 4*8
       MOV     R0, #LIST
       LDR     R1, [R0]
       ADD     R0, R0, #4
LOOP   LDR     R2, [R0]
       CMP     R1, R2
       MOVLT   R1, R2
       ADD     R0, R0, #4
       CMP     R0, #ENDL
       BLE     LOOP