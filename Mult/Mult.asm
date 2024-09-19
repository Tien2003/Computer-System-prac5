// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@R0
M=0

// Initialize NEG_FLAG to 0
@NEG_FLAG
M=0

// Check if R1 is negative
@R1
D=M
@PROCESS_R1
D;JGE

@R1
M=-M
@NEG_FLAG
M=1

(PROCESS_R1)
(LOOP)
    @R1
    D=M
    @END
    D;JEQ  // Jump to END if R1 == 0

    @R2
    D=M
    @R0
    M=M+D 

    @R1
    M=M-1  

    @LOOP
    0;JMP

(END)
    @NEG_FLAG
    D=M
    @FINAL
    D;JEQ  
    @R0
    M=-M

(FINAL)
    @FINAL
    0;JMP