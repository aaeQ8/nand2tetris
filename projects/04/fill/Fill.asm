// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.


(RESTART)
@SCREEN
D=A

@i
A=D

@c
M=D

(LOOP)
@24576
D=A
@c
D=D-M
@RESTART
D;JLE

@KBD
D=M

@DRAW_WHITE
D;JEQ

@DRAW_BLACK
0;JMP

(DRAW_BLACK)
@c
D=M

@i
A=D
M=-1

@c
M=M+1

@LOOP
0;JMP


(DRAW_WHITE)
@c
D=M

@i
A=D
M=0

@c
M=M+1

@LOOP
0;JMP

(END)
@END
0;JMP
