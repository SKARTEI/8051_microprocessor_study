;
	ORG 4000H
	SJMP START
;
	ORG 4003H
	SJMP NEXT
;
START: 
	MOV A, #0FFH
	MOV P1, A
;
	SETB IT0 
	SETB EX0 
	SETB EA 
;
LOOP:
	SJMP LOOP
;
NEXT: 
	CALL CHECK
	MOV A, 20H
	CPL A
	MOV P1, A
	INC 20H
	RETI
;
CHECK:
	MOV A, 20H
	CLR C
	SUBB A, #10
	JNC RESE
	RET
;
RESE:
	MOV 20H, #0
	RET
;

	END