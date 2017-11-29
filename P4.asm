.586
.MODEL FLAT 
INCLUDE io.h
.STACK 4096
.DATA
	a BYTE "enter dollars ",0
	b BYTE " enter num of fifty cent",0
	p BYTE "enter num of quarters ",0
	d BYTE "enter num of dimes ",0
	e BYTE "enter num of nickles ",0
	f BYTE " enter the num of pennies ",0
	h BYTE "the total money is ",0
	i BYTE "numbers of cions ",0
	x DWORD ?
	y DWORD ?
	z DWORD ?
	l DWORD ?
	m DWORD ?
	n DWORD ?
	g BYTE 40 DUP(?)
	j BYTE 11 DUP(?)
	BYTE "."
	s BYTE 11 DUP(?),0
.CODE
	MainProc PROC
		mov edx,0
		input a,g,40
		atod g
		mov x,eax
		input b,g,40
		atod g
		mov y,eax
		input p,g,40
		atod g
		mov z,eax
		input d,g,40
		atod g
		mov l,eax
		input e,g,40
		atod g
		mov m,eax
		input f,g,40
		atod g
		mov n,eax
		mov eax,x
		imul eax,100
		mov ebx,y
		imul ebx,50
		add eax,ebx
		mov ebx,z
		imul ebx,25
		add eax,ebx
		mov ebx,l
		imul ebx,10
		add eax,ebx
		mov ebx,m
		imul ebx,5
		add eax,ebx
		mov ebx,n
		add eax,ebx
		mov ebx,100
		cdq 
		idiv ebx
		dtoa j,eax
		mov eax,edx
		dtoa s,eax
		output h,j
		mov eax,x
		add eax,z
		add eax,y
		add eax,l
		add eax,m
		add eax,n
		dtoa s,eax
		output i,s
		mov eax,0
		ret
	MainProc ENDP
END 