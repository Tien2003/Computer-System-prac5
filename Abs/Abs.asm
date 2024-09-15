// Calculates the absolute value of R1 and stores the result in R0.
// (R0, R1 refer to RAM[0], and RAM[1], respectively.)

// Put your code here.
@1
D=M
@END
D;JGT

(WHILE)
    @1
    D=-M
    @0
    M=D
    @WHILE
    D;JGE
(END)
    @1
    D=M
    @0
    M=D
    @END
    M;JGT