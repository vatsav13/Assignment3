     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
ENTRY 
__main  FUNCTION
MVF f1, #8.0;x-Number to find e^x
MVF f2, #15.0;Number of terms
MVF f3, #1.0;count
MVF f4, #1.0; temp
MVF f5, #1.0; temporary_result
Series:
CMFSZ f2, f3
BLT stop
DVFSZ f6, f1, f3
MUFSZ f4, f4, f6
ADF f5, f5, f4
FIXSZ r0, f5; Conversion of result in normal binary format(integer)
ADF f3, f3, #1.0;
B Series;  always loop
stop B stop 
ENDFUNC
END