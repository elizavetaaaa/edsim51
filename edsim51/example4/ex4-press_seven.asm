start:

	MOV R0, #0		

	; scan row1
	SETB P0.0		
	CLR P0.1		
	JNB P0.6, seven	
	JMP start	

seven:
	SETB P3.3		
	SETB P3.4		
	MOV P1, #11111000B	
	CALL delay
	JMP seven		

delay:
	MOV R0, #200
	DJNZ R0, $
	RET
