.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	x DWORD ?
	y DWORD ?
	z DWORD ?
	q BYTE "enter the num ",0
	w BYTE "the result is ",0
	t BYTE 40 DUP(?)
	r BYTE 11 DUP (?),0
.CODE
	MainProc PROC
		input q,t,40
		atod t
		mov x,eax
		input q,t,40
		atod t
		mov y,eax
		input q,t,40
		atod t
		mov z,eax
		mov eax,x
		add eax,y
		imul eax,2
		add eax,z
		dtoa r,eax
		output w,r
		mov eax,0
	MainProc ENDP
END
