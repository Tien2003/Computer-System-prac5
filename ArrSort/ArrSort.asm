// Sorts the array of length R2 whose first element is at RAM[R1] in ascending order in place. Sets R0 to True (-1) when complete.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
    @R1 
    D=M-1 
    @R2 
    M=M+D 

(OUTER_LOOP)
(CHECK_TERMINATE)
    @R1
    D=M
    @R2
    D=D-M
    @FINISH
    D;JGT
    @R1
    D=M
    @R3 
    M=D+1 


(INNER_LOOP)
(CHECK_INNER_END)
    @R3
    D=M
    @R2
    D=D-M
    @INNER_FINISH
    D;JGT
    @R3 
    A=M
    D=M 
    @ELEM_POS
    D;JGE
    @ELEM_NEG
    0;JMP
(SWAP) 
    @R1
    A=M
    D=M
    @temp
    M=D
    @R3
    A=M
    D=M
    @R1
    A=M
    M=D
    @temp
    D=M
    @R3
    A=M
    M=D
(SKIP)
    @R3
    M=M+1
    @INNER_LOOP
    0;JMP

(INNER_FINISH)
    @R1
    M=M+1
    @OUTER_LOOP
    0;JMP

(FINISH)
    @R0
    M=-1
(END)
    @END
    0;JMP

(REF_NEG)
    
(REF_POS)
    @R3
    A=M
    D=M
    @R1
    A=M
    D=D-M 
    @SKIP
    D;JGE
    @SWAP
    0;JMP

(ELEM_NEG)
    @R1
    A=M
    D=M
    @REF_NEG
    D;JLT
    @SWAP
    0;JMP

(ELEM_POS)
    @R1
    A=M
    D=M
    @REF_POS
    D;JGE
    @SKIP
    0;JMP