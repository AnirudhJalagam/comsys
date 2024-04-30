// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: MUL.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@R2
M = M-1
D = M 

@i
M = D // copying R2 value to array index like max i = value(R2)

@MUL
M = 0

(LOOP)

    // break condition
    @i
    D = M
    @LOOPEND
    D;JLT

    // loop body
    @R1
    D = M
    @MUL
    M = D + M
    @i
    M = M - 1
    @LOOP
    0;JMP

(LOOPEND)

    @MUL
    D = M
    @R0
    M = D

(END)
    @END
    0;JMP
