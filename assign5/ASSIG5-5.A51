	ORG 4000H
;
	MOV A, #11111110B
	SETB P3.2
;
LOOP1:
	JB P3.2, LOOP1
CADA:
	MOV P1, A
	CALL DELAY
	RL A
	CLR F0
	CALL NEXT
LOOP2:
	JNB P3.2, LOOP2
	JB F0, LOOP1
	SJMP CADA
;
NEXT:
	JB P3.2, BACC
	MOV P1, #11111111B
NEX:	
	JNB P3.2, NEX
	SETB F0
	SJMP BACC
;
BACC:
	RET
;
DELAY: 
	MOV R1, #242
;
REP1: MOV R2, #242
REP2: 
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	DJNZ R2, REP2
	DJNZ R1, REP1
	RET
;
	END