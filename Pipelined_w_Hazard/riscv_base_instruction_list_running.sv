// * ADDI
// * ANDI
// * ORI
// * OR
// * AND
// * SW
// * LW
// * ADD
// * SUB
//? SLT
//? BEQ

//*Suman 2 del reg 1 al 12

00200093 //ADDI x1, x0, 2
00200113 //ADDI x2, x0, 2
00200193  //ADDI x3, x0, 2 
00200213  //ADDI x4, x0, 2 
00200293  //ADDI x5, x0, 2
00200313  //ADDI x6, x0, 2
00200393  //ADDI x7, x0, 2
00200413  //ADDI x8, x0, 2
00200493  //ADDI x9, x0, 2
00200513 //ADDI x10, x0, 2
00200593 //ADDI x11, x0, 2
//*Suman 3....D del reg 1 al 12

00200093//ADDI x1, x0, 2
00300093//ADDI x2, x0, 3
00400113//ADDI x3, x0, 4
00500193//ADDI x4, x0, 5
00600213//ADDI x5, x0, 6
00700293//ADDI x6, x0, 7
00800313//ADDI x7, x0, 8
00900393//ADDI x8, x0, 9
00A00413//ADDI x9, x0, A
00B00493//ADDI x10, x0, B
00C00513//ADDI x11, x0, C
00D00593//ADDI x12, x0, D
///////////111///////
//*working
00000093 //ADDI x1, x0, 0
00000113 //ADDI x2, x0, 0
00000193 //ADDI x3, x0, 0
00000213 //ADDI x4, x0, 0
00000293 //ADDI x5, x0, 0
00000313 //ADDI x6, x0, 0
00000393 //ADDI x7, x0, 0
00000413 //ADDI x8, x0, 0
00000493 //ADDI x9, x0, 0
00000513 //ADDI x10, x0, 0
00000593 //ADDI x11, x0, 0
00000613 //ADDI x12, x0, 0
00000693 //ADDI x13, x0, 0
00000713 //ADDI x14, x0, 0
00000793 //ADDI x15, x0, 0
00000813 //ADDI x16, x0, 0
00000893 //ADDI x17, x0, 0
00000913 //ADDI x18, x0, 0
00000993 //ADDI x19, x0, 0
00000A13 //ADDI x20, x0, 0
00000A93 //ADDI x21, x0, 0
00000B13 //ADDI x22, x0, 0
00000B93 //ADDI x23, x0, 0
00000C13 //ADDI x24, x0, 0
00000C93 //ADDI x25, x0, 0
00000D13 //ADDI x26, x0, 0
00000D93 //ADDI x27, x0, 0
00000E13 //ADDI x28, x0, 0
00000E93 //ADDI x29, x0, 0
00000F13 //ADDI x30, x0, 0
00000F93 //ADDI x31, x0, 0

//*AND I
00210593   // andi x11, x2, 2
00310613   // andi x12, x3, 3
00410693   // andi x13, x4, 4
00510713   // andi x14, x5, 5
00610793   // andi x15, x6, 6
//*ORI
00710813   // ori x16, x7, 7
00810893   // ori x17, x8, 8
00910913   // ori x18, x9, 9
00A10993   // ori x19, x10, 10
//* OR GOOOD
0023E2B3  // or x7,  x7, x2    # x7 = (x7 OR x2)
0023E3B3 // or x8,  x7, x2    # x8 = (x7 OR x2)
0023E4B3 // or x9,  x7, x2    # x9 = (x7 OR x2)
0023E5B3 // or x10, x7, x2    # x10 = (x7 OR x2)
00326BB3 // or x23, x4, x3    # x23 = (x4 OR x3)
00326C33 // or x24, x4, x3    # x24 = (x4 OR x3)
00326CB3 // or x25, x4, x3    # x25 = (x4 OR x3)
00326D33 // or x26, x4, x3    # x26 = (x4 OR x3)
00326DB3 // or x27, x4, x3    # x27 = (x4 OR x3)
00326E33 // or x28, x4, x3    # x28 = (x4 OR x3)
00326EB3 // or x29, x4, x3    # x29 = (x4 OR x3)
00326F33 // or x30, x4, x3    # x30 = (x4 OR x3)
//* store woords
00202023 //SW x2,0 (x0)
00202223 //SW x2,4 (x0)
00202423 //SW x2,8 (x0)
00202623 //SW x2,12 (x0)
00202823 //SW x2,16 (x0)
00202A23 //SW x2,20 (x0)
00202C23 //SW x2,24 (x0)
00202E23 //SW x2,28 (x0)
02202023 //SW x2,32 (x0)
02202223 //SW x2,36 (x0)
02202423 //SW x2,40 (x0)
02202623 //SW x2,44 (x0)
02202823 //SW x2,48 (x0)
02202A23 //SW x2,52 (x0)
02202C23 //SW x2,56 (x0)
02202E23 //SW x2,60 (x0)




//**LW
00002083  // guardo el valor ram(0) en el registro 1  del rf
00402103  // guardo el valor ram(4) en el registro 2  del rf
00802183  // guardo el valor ram(8) en el registro 3  del rf
00C02203  // guardo el valor ram(12) en el registro 4  del rf
01002283  // guardo el valor ram(16) en el registro 5  del rf
01402303  // guardo el valor ram(20) en el registro 6  del rf
01802383  // guardo el valor ram(24) en el registro 7  del rf
01C02403  // guardo el valor ram(28) en el registro 8  del rf
02002483  // guardo el valor ram(32) en el registro 9  del rf
02402503  // guardo el valor ram(36) en el registro 10  del rf
02802583  // guardo el valor ram(40) en el registro 11  del rf
02C02603  // guardo el valor ram(44) en el registro 12 del rf



//*** ADDD

00900B33 // ADD x22, x0, x9	x22 = x0 + x9
00908BB3 // ADD x23, x1, x9	x23 = x1 + x9
00910C33 // ADD x24, x2, x9	x24 = x2 + x9
00918CB3 // ADD x25, x3, x9	x25 = x3 + x9
00920D33 // ADD x26, x4, x9	x26 = x4 + x9
00928DB3 // ADD x27, x5, x9	x27 = x5 + x9
00930E33 // ADD x28, x6, x9	x28 = x6 + x9
00938EB3 // ADD x29, x7, x9	x29 = x7 + x9
00940F33 // ADD x30, x8, x9	x30 = x8 + x9

//*** SUBS
40900B33 // SUBS x22, x0, x9	x22 = x0 - x9
40908BB3 // SUBS x23, x1, x9	x23 = x1 - x9
40910C33 // SUBS x24, x2, x9	x24 = x2 - x9
40918CB3 // SUBS x25, x3, x9	x25 = x3 - x9
40920D33 // SUBS x26, x4, x9	x26 = x4 - x9
40928DB3 // SUBS x27, x5, x9	x27 = x5 - x9
40930E33 // SUBS x28, x6, x9	x28 = x6 - x9
40938EB3 // SUBS x29, x7, x9	x29 = x7 - x9
40940F33 // SUBS x30, x8, x9	x30 = x8 - x9

//****** SLT
002B2633 //compara x2 con x22 y guardo en x12 SLT x12,x2,x22
016126B3 //compara x22 con x2 y guardo en x13 
003BA733 // compara x3 con x23 y guardo en x14 
0171A7B3 // compara x23 con x3 y guardo en x15 
004C2833 // compara x4 con x24 y guardo en x16 
018228B3 // compara x24 con x4 y guardo en x17 


//********beqn

// ? WORKKKKKKKKKKK

0000000-00010-10110-010-01100-0110011 // compara x2 con x22 y guardo en x12 SLT x12,x2,x22
0000000-10110-00010-010-01101-0110011 // compara x

0000000-00011-10111-010-01110-0110011 // compara x3 con x23 y guardo en x14 
0000000-10111-00011-010-01111-0110011 // compara x23 con x3 y guardo en x15 
00000000001110111010011100110011 // compara x3 con x23 y guardo en x14 
00000001011100011010011110110011 // compara x23 con x3 y guardo en x15 

0000000-00100-11000-010-10000-0110011 // compara x4 con x24 y guardo en x16 
0000000-11000-00100-010-10001-0110011 // compara x24 con x4 y guardo en x17 
00000000010011000010100000110011 // compara x4 con x24 y guardo en x16 
00000001100000100010100010110011 // compara x24 con x4 y guardo en x17 










0000000-00011-11000-010-01110-0110011 // compara
0000000-11000-00011-010-01111-0110011 // compara x
00000000001111000010011100110011 // compara
00000001100000011010011110110011 // compara x

0000000-00100-11010-010-10000-0110011 // compara x
0000000-11010-00100-010-10001-0110011 // compara x
00000000010011010010100000110011 // compara x
00000001101000100010100010110011 // compara x

0000000-00101-11001-010-10010-0110011 // compara x
0000000-11001-00101-010-10011-0110011 // compara x
00000000010111001010100100110011 // compara x
00000001100100101010100110110011 // compara x

0000000-00110-11011-010-10100-0110011 // compara x
0000000-11011-00110-010-10101-0110011 // compara x
00000000011011011010101000110011 // compara x
00000001101100110010101010110011 // compara x




010110
010111
011000
011001
011010
011011
011100
011101
011110









000000 - 0
000001 - 1
000010 - 2
000011 - 3
000100 - 4
000101 - 5
000110 - 6
000111 - 7
001000 - 8
001001 - 9
001010 - 10
001011 - 11
001100 - 12
001101 - 13
001110 - 14
001111 - 15
010000 - 16
010001 - 17
010010 - 18
010011 - 19
010100 - 20
010101 - 21
010110 - 22
010111 - 23
011000 - 24
011001 - 25
011010 - 26
011011 - 27
011100 - 28
011101 - 29
011110 - 30
011111 - 31
100000 - 32
100001 - 33
100010 - 34
100011 - 35
100100 - 36
100101 - 37
100110 - 38
100111 - 39
101000 - 40
101001 - 41
101010 - 42
101011 - 43
101100 - 44
101101 - 45
101110 - 46
101111 - 47
110000 - 48
110001 - 49
110010 - 50
110011 - 51
110100 - 52
110101 - 53
110110 - 54
110111 - 55
111000 - 56
111001 - 57
111010 - 58
111011 - 59
111100 - 60
111101 - 61
111110 - 62
111111 - 63
//!---------------------------No andan por bug del rd = al inmediatio que no tiene sentido
00100093 // addi x1, x0, 1
00200113 // addi x2, x0, 2
00300193 // addi x3, x0, 3
00400213 // addi x4, x0, 4
00500293 // addi x5, x0, 5
00600313 // addi x6, x0, 6
00700393 // addi x7, x0, 7
00800413 // addi x8, x0, 8
00900493 // addi x9, x0, 9
00A00513 // addi x10, x0, 10
00B00593 // addi x11, x0, 11
00C00613 // addi x12, x0, 12
00D00693 // addi x13, x0, 13
00E00713 // addi x14, x0, 14
00F00793 // addi x15, x0, 15
01000813 // addi x16, x0, 16
01100893 // addi x17, x0, 17
01200913 // addi x18, x0, 18
01300993 // addi x19, x0, 19
01400A13 // addi x20, x0, 20
01500A93 // addi x21, x0, 21
01600B13 // addi x22, x0, 22
01700B93 // addi x23, x0, 23
01800C13 // addi x24, x0, 24
01900C93 // addi x25, x0, 25
01A00D13 // addi x26, x0, 26
01B00D93 // addi x27, x0, 27
01C00E13 // addi x28, x0, 28
01D00E93 // addi x29, x0, 29
01E00F13 // addi x30, x0, 30
01F00F93 // addi x31, x0, 31
///////////////////////