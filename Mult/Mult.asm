// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

@R0
M=0

@NEG_FLAG
M=0

@R1
D=M
@R1_POS
D;JGE

@R1
M=-M
@NEG_FLAG
M=1

(R1_POS)
(LOOP)
    @R1
    D=M
    @END
    D;JEQ  

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