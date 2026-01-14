@i
M=0   // i = 0
@res
M=0   // res = 0


@R0
D=M
@POSITIVE
D;JEQ
@R1
D=M
@POSITIVE
D;JEQ    // R2 = 0 if R0 == 0 or R1 == 0

(LOOP)
@R1
D=M
@res
M=D+M  // res += R1

@i
M=M+1  // i++
D=M

@R0
D=M-D

@LOOP
D;JGT  // loop if R0 > i


(POSITIVE)
@res
D=M
@R2
M=D   // R2 = res

(END)
@END
0;JMP