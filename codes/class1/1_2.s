//      EJERCICIO 1.2


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
	ADDI X0,X2,#5
	ADD X0,X0,X1
*/

//CODE ARMv8
	ADD X0,X2,#5 //f=h+5
	ADD X0,X0,X1//f= f+g
infloop:
        B infloop

