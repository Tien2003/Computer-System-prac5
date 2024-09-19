// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//smallest <- arr[0] 
@R1
A=M
D=M
@smallest
M=D

@R2
M=M-1

(LOOP)
    @R2
    D=M

    @END
    D;JLE

    @R2
    D=M
    @R1
    A=M+D
    D=M

    @smallest
    D=D-M //if current<smallest
    @SKIP_UPDATE
    D;JGE

    @R1
    D=M
    @R2
    A=D+M
    D=M
    @smallest
    M=D



(SKIP_UPDATE)
    @R2
    M=M-1
    @LOOP
    0;JMP

(END)
    @smallest
    D=M
    @R0
    M=D

(INFINITE)
    @INFINITE
    0;JMP