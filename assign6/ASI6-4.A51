;
	ORG 4000H
	SJMP START
;
	ORG 400BH
	SJMP SHIFT
;
START: 
	MOV TMOD, #00000110B
	MOV TH0, #0FBH
	MOV TL0, #0FBH
;
	SETB ET0
	SETB EA
	MOV A, #11111110B
	MOV P1, A
	SETB TR0
;
LOOP: 
	SJMP LOOP
;
;
SHIFT: 
	CLR TR0
	RL A
	MOV P1, A
	SETB TR0
	RETI
;
	END