//      EJERCICIO 5.1


.data

A: .dword 1,2,3,4,5 //A[5] = {1,2,3,4,5}
f: .dword 1 //f=1
g: .dword 2//g=2

offset: .dword 0x40080000

.text


//LOAD VALUES TO CUSTOM REGISTERS
	
	LDR X3,offset//cargo x3 con direccion de inicio de datos
	
	LDR X2, =A //cargo x2 con direccion de memoria del Arreglo

	ADD X6,X2,X3 //Establecer x6 con direccion de A
	
	LDR X1,g //x1 = g = 2



/*CODE LEGV8

*/


//CODE ARMv8
	ADD X9,X6,#32 //x9 = x6 + 16bytes

	LDUR X9,[X9,#0] // x9 = A[4]

	ADD X9,X9,X1 // x9 = x9 + x1 // x9 = A[4] + g

	SUB X0,XZR,X9 // f= -x9 = -g-A[4]

	//se espera al final de ejecucion
	//x0 = -g-A[4] = -2-5 = -7 = 11111...1001

	//x0 = -6 =1111111...1010

infloop:
        B infloop

