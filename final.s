     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
        MOV r1,#0
		MOV r2,#1
		MOV r4,#10; no of terms to be in the series
		MOV r5,#0x20000000; starting address of the series
loop	CMP r4,#1
		ADDS r3,r1,r2; adding the values in the two registers r1,r2 and storingin r3
		MOV r1,r2
		MOV r2,r3
		SUBGT r4,r4,#1; subtract if greater than
		STR r3,[r5]
        ADD r5,r5,#4
		BGT loop; if branch is greater then loop always
stop B stop ; stop program
     ENDFUNC
     END