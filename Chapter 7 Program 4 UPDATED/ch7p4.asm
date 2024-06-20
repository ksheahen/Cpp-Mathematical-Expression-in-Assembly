; Chapter 7 Program 4
; Author: Kathryn Sheahen
; Date: 4/17/2024

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
var1 SDWORD -1
var2 SDWORD 6
var3 SDWORD 3

.code
main PROC

	;var1 = (var2/var3) * (var1+var2)

	mov eax,var2	;moves var2 to EAX register
	cdq				;coverts DWORD into QWORD
	idiv var3		;signed division (var2/var3)

	mov ebx,var1	;moves var1 to EBX register
	add ebx,var2	;adds var1 and var2
	imul ebx		;signed multiplication (eax*ebx)
	mov var1,eax	;moves final result to var1

main ENDP
END main