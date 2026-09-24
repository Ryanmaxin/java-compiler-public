extern __exception
extern java.lang.Object.toString$86
extern Main.$selectors
extern java.lang.Object.hashCode$87
extern java.lang.Object.equals$85
extern java.lang.Object.Object$ctor$83
extern java.lang.System.$static
extern Main.$typecheck
extern java.lang.Object.getClass$89
extern java.lang.Object.clone$88
; Class data for Main
global Main
global Main.$static
global Main.$methods
section .data


Main:
dd Main.$selectors
dd Main.$typecheck
dd Main.$static
dd Main.$methods


; Static Fields
Main.$static:


; Method Table
Main.$methods:
dd java.lang.Object.equals$85, java.lang.Object.toString$86, java.lang.Object.hashCode$87, java.lang.Object.clone$88, java.lang.Object.getClass$89, Main.getDensity$178, Main.test$180


; Method implementations
section .text
global Main.Main$ctor$175
Main.Main$ctor$175:
push ebp
mov ebp, esp
; call superclass constructor
push dword [ebp + 8]
call java.lang.Object.Object$ctor$83
add esp, 4
Main.Main$ctor$175$end:
mov esp, ebp
pop ebp
ret
global Main.getDensity$178
Main.getDensity$178:
push ebp
mov ebp, esp
mov eax, [ebp + 8]
push eax
mov eax, [ebp + 12]
mov ebx, eax
pop eax
cmp ebx, 0
je __exception
cdq
idiv ebx
jmp Main.getDensity$178$end
Main.getDensity$178$end:
mov esp, ebp
pop ebp
ret
global Main.test$180
Main.test$180:
push ebp
mov ebp, esp
sub esp, 4
mov eax, 11
push eax
mov eax, 110
push eax
call Main.getDensity$178
add esp, 8
mov [ebp + -4], eax
mov eax, [java.lang.System.$static]
cmp eax, 0
je __exception
push eax
mov eax, [ebp + -4]
push eax
mov ebx, [esp + 4]
push ebx
mov ebx, [ebx]
mov ebx, [ebx + 12]
call [ebx + 68]
add esp, 12
mov eax, 123
jmp Main.test$180$end
Main.test$180$end:
mov esp, ebp
pop ebp
ret
