     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
    MOV r1,#14
	MOV r2,#15
	MOV r3,#12
loop0	CMP r1,r2; comparing the initial two numbers considered 14,15
	BCC loop1; if carry is produced on subtraction go to loop1
	CMP r1,r3
	BCC loop3; comparing values 14, 12, if carry is produced on subtraction then go to loop3
	MOV r4,r1
	BGT loop0; if branch is greater then loop always
loop1 CMP r2,r3
	BCC loop3; on comparing 15,12 if carry is produced on subtraction go to loop3
	MOV r4,r2
	BGT loop1
loop3 MOV r4,r3; on running the program, greatest number is present in r4
	BGT loop3
stop B stop ; stop program
     ENDFUNC
     END