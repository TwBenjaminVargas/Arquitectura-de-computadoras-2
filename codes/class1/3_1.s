//      EJERCICIO 3.1


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
	ADD X0,X1,X0 //f=g+f
	SUB X0,XZR,X0 //f=-f;
*/
//CODE ARMv8
        ADD X0,X1,X0
	SUB X0,XZR,X0
infloop:
        B infloop


