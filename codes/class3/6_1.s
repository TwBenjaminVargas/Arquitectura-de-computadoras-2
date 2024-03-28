/*
Traducir a AARCH64. La asignacion de variables a registros
X0, X1, X2, X3, X9 < − > A, s, i, j, N. Notar que en “C” los
arreglos bidimensionales se representan en memoria usando un
orden por filas.

#defineN(1<<10)
long A[N] [N] , s , i , j
s=0;
for ( i =0; i<N;++ i )
for ( j =0; j<N; j++)
s+=A[ i ] [ j ] ;

*/

.data

A: .dword 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1

offset: .dword 0x40080000

.text
 
//preparacion de registros
LDR X0,=A
LDR X3,offset
ADD X0,X3,X0

MOV X9,#2
LSL X9,X9,#1
ADD X1,XZR,XZR//s=0
ADD X2,XZR,XZR //i=0

fori:	
CMP X2,X9
BEQ infloop
B forj

forj:
ADD X3,XZR,XZR //j=0

comparacionj:
CMP X3,X9
BEQ incremento
//codigo
MUL X4,X9,X2// i*N
ADD X4,X4,X3//(i*N) + j
LSL X4,X4,#3

ADD X4,X0,X4
LDUR X5,[X4]
ADD X1,X1,X5 //s+= A[i][j]

//incrementar j
ADD X3,X3,#1
B comparacionj

incremento:
ADD X2,X2,#1
B fori
infloop:
B infloop
