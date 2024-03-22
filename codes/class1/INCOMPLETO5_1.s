//      EJERCICIO 5.1


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

*/
//CODE ARMv8

infloop:
        B infloop

