//              EJERCICIO 5.1
/*Asignaciones
x10 <-> i
x1 <-> a
x2 <-> result
x0 <->memArray
*/

//ARMv8 CODE:
.data /// segmen to de d a t o s
memArray: .dword 1, 2, 3, 4
i: .word 0
result: .dword 0
a: .dword 0
offset: .dword 0x40080000
.text
        LDR X0,=memArray
        LDR X3,offset
        ADD X0,X0,X3
        LDR X1,a
        LDR x2,result
        ADD X10, XZR, XZR
loop:   
        LDR X1, [X0,#0]
        ADD X2, X2, x1
        ADD X0, X0, #8
        ADD X10, X10, #1
        CMP X10, #3
        B.LT loop

/* C CODE:
        int i = 0;
        long a=0, result=0;
        do
        {
                a = *memArray;
                result += a;
                memArray+=1;
                i++;
        }
        while(i < 3);
*/
infloop: b infloop

