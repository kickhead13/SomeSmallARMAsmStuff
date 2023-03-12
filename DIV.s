       MOV     R0, #120
       MOV     R1, #268
       MOV     R2, #0
       CMP     R1, #0
       BEQ     SKIP
       CMP     R0, R1
       BGE     DIV
       END
DIV    SUB     R0, R0, R1
       ADD     R2, R2, #1
       CMP     R0, R1
       BGE     DIV
       END
SKIP   MOV     R2, #-1