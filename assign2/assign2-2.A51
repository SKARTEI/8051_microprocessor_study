	ORG 4000H
	MOV PSW, #08H
;
	MOV 20H, #12H
	MOV 21H, #34H
	MOV 22H, #56H
	MOV 30H, 20H
	MOV 31H, 21H
	MOV 32H, 22H
;
	MOV A, 20H
	MOV R0, #21H
	MOV R1, #22H
;
	XCHD A, @R0
	XCHD A, @R1
	MOV 20H, A
;
	MOV A, 20H
	SWAP A
	MOV 20H, A
;
	MOV A, 21H
	SWAP A
	MOV 21H, A
;
	MOV A, 22H
	SWAP A
	MOV 22H, A
;
	MOV PSW, #0H
	JMP 0057H
;
	END
	