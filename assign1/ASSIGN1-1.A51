	ORG 4000H
	MOV PSW, #08H
;
	MOV 20H, #01H
	MOV 21H, #23H
	MOV 22H, #45H
;
	MOV 30H, 20H
	MOV 31H, 21H
	MOV 32H, 22H
;
	MOV A, 21H
	XCH A, 22H
;
	MOV R0, #20H
	XCH A, @R0
;
	MOV 21H, A
;
	MOV PSW, #0H
	JMP 0057H
;
	END
	