	ORG 4000H
	MOV PSW, #08H
;
	MOV 20H, #11H
	MOV 21H, #32H
	MOV 22H, #86H
	MOV 30H, 20H
	MOV 31H, 21H
	MOV 32H, 22H
;
	CLR C
	MOV A, 22H
	RLC A
	MOV 22H, A
;
	MOV A, 21H
	RLC A
	MOV 21H, A
;
	MOV A, 20H
	RLC A
	MOV 20H, A
;
	MOV PSW, #0H
	JMP 0057H
;
	END
	