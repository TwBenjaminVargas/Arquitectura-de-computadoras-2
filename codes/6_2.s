//              EJERCICIO 6.1
/* C CODE:
1       #define N (1<<10)
2 	long A[N] [N] , s , i , j
3 	s=0;
4 	for ( i =0; i<N;++ i )
5 		for ( j =0; j<N; j++)
6 			s+=A[ i ] [ j ] ;
*/


//ARMv8 CODE:
.data /// segmento de datos
A: .dword 1,2,3,4
offset: .dword 0x40080000
.text

//preparo registros
	LDR X0,A
	LDR X3,offset
	ADD X0,X0,X3
//codigo
	LSL X9,#1,#10

	
