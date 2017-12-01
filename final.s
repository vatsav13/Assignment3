     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
    MOV r1,#28
	MOV r2,#21
loop	CMP r1,r2; comparing two numbers in this case 28,21
	SUBGT r1,r1,r2; subtract r1 from r2 if greater than
	MOV r3,r1
	SUBLT r2,r2,r1; subtract r2 from r1 if less than
	MOV r3,r1; result is stored in r3
	BNE loop; unless branch is not equal to loop always
stop B stop ; stop program
     ENDFUNC
     END