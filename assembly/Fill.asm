(MAIN)

@KBD
D=M
@CLEAR
D;JEQ


// (FILL)
@R0
M=-1        // Set color
@RENDER
0;JMP


(CLEAR)
@R0
M=0     // Set color



(RENDER)
@8192
D=A
@i
M=D   // i = screen size

(LOOP)
@i
M=M-1
D=M
@SCREEN
D=D+A
@R2
M=D       // Save addr of screen register to R2
@R0
D=M     // Get color
@R2
A=M      // Get the screen register's addr
M=D     

@i
D=M
@LOOP
D;JNE   // Check if finish rendering

@MAIN
0;JMP
