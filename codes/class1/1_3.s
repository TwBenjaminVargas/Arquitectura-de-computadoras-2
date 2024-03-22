//      EJERCICIO 1.3


.data
f: .dword 1
g: .dword 2
h: .dword 3
i: .dword 4
j: .dword 5

.text
//LOAD VALUES TO CUSTOM REGISTERS
        LDR     X0, f
        LDR     X1, g
        LDR     X2, h
        LDR     X3, i
        LDR     X4, j

/*CODE LEGV8
	ADD X0,X1,X2//f=g+h
	ADD X0,X0,X0//f=f+f

//ALTERNATIVA 1.3:

	ADD X0,X1,X2
	LSL X0,X0,#1//2*f
*/
//CODE ARMv8
	ADD X0,X1,X2
	LSL X0,X0,#1
infloop:
        B infloop

