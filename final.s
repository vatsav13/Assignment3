     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
    MOV r1,#14
	MOV r2,#2
	udiv r3,r1,r2; performing division operation
	mls r4,r3,r2,r1; computing modulus of the operation
	cmp r4,#0; checking if the result of modulus is 0 or 1
	ITE GT
	MOVGT r4,#13
	MOVLE r4,#14
stop B stop ; stop program
     ENDFUNC
     END