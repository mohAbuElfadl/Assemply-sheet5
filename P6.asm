.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	w1 DWORD ?
	w2 DWORD ?
	w3 DWORD ?
	w4 DWORD ?
	s BYTE "enter the weight and grade ",0
	a BYTE 40 DUP(?)
	b BYTE 11 DUP (?),0
	d BYTE "wighted sun is ",0
	e BYTE " sum of wieght is ",0
	f BYTE "  wieghted average",0
.CODE
	MainProc PROC
		input s,a,40
		atod a
		mov w1,eax
		input s,a,40
		atod a
		imul eax,w1
		mov ebx,eax
		input s,a,40
		atod a
		mov w2,eax
		input s,a,40
		atod a
		imul eax,w2
		add ebx,eax
		input s,a,40
		atod a
		mov w3,eax
		input s,a,40
		atod a
		imul eax,w3
		add ebx,eax
		input s,a,40
		atod a
		mov w4,eax
		input s,a,40
		atod a
		imul eax,w4
		add ebx,eax
		dtoa b,ebx
		output d,b
		mov eax,w1
		add eax,w2
		add eax,w3
		add eax,w4
		dtoa b,eax
		output e,b
		xchg eax,ebx
		cdq
		idiv ebx
		dtoa b,eax
		output f,b
		mov eax,0
		ret
	MainProc ENDP
END