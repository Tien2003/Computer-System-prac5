// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@R0
M=0
@8
M=0

@R1
D=M
@NEG
D;JLT

(LOOP)
    @R1
    MD=M-1
    @END
    D;JEQ 

    @R2
    D=M
    @R0
    M=M+D   

    @LOOP
    0;JMP

(NEG)
    @R1
    M=-M

    @8
    M=1

    @LOOP
    0;JMP

(END)
    @8
    D=M
    @FINAL
    D;JEQ  

    @R0
    M=-M

(FINAL)
    @FINAL
    0;JMP