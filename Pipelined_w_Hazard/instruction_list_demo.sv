//*
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
0000f8b3 // and x0 x1 en x17
00117933 // and x1 x2 en x18
0021f9b3 // and x2 x3 en x19
00327a33 // and x3 x4 en x20
0042fab3 // and x4 x5 en x21
00537B33 // and x5 x6 en x22
0063FBB3 // and x6 x7 en x23
00747BB4 // and x7 x8 en x24
0084FBB5 // and x8 x9 en x25
0095FBB6 // and x9 x10 en x26
00000B13 //ADDI x22, x0, 0
00000B93 //ADDI x23, x0, 0
00000C13 //ADDI x24, x0, 0
00000C93 //ADDI x25, x0, 0
00000D13 //ADDI x26, x0, 0
00000D93 //ADDI x27, x0, 0
00000E13 //ADDI x28, x0, 0
00000E93 //ADDI x29, x0, 0
//*
00200093//ADDI x1, x0, 2
00300113//ADDI x2, x0, 3
00400193//ADDI x3, x0, 4
00500213//ADDI x4, x0, 5
00600293//ADDI x5, x0, 6
00700313//ADDI x6, x0, 7
00800393//ADDI x7, x0, 8
00900413//ADDI x8, x0, 9
00A00493//ADDI x9, x0, A
00B00513//ADDI x10, x0, B
00C00593//ADDI x11, x0, C
00D00613 //ADDI x12, x0, D
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
00202023 //SW x2,0 (x0)
00302223 //SW x3,4 (x0)
00402423 //SW x4,8 (x0)
00502623 //SW x5,12 (x0)
00602823 //SW x6,16 (x0)
00702A23 //SW x7,20 (x0)
00802C23 //SW x8,24 (x0)
00902E23 //SW x9,28 (x0)
02A02023 //SW xA,32 (x0)
02B02223 //SW xB,36 (x0)
02C02423 //SW xC,40 (x0)
02D02623 //SW xD,44 (x0)
02002823 //SW x2,48 (x0)
02002A23 //SW x2,52 (x0)
02202C23 //SW x2,56 (x0)
02202E23 //SW x2,60 (x0)
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
00900B33 // ADD x22, x0, x9	x22 = x0 + x9
00908BB3 // ADD x23, x1, x9	x23 = x1 + x9
00910C33 // ADD x24, x2, x9	x24 = x2 + x9
00918CB3 // ADD x25, x3, x9	x25 = x3 + x9
00920D33 // ADD x26, x4, x9	x26 = x4 + x9
00928DB3 // ADD x27, x5, x9	x27 = x5 + x9
00930E33 // ADD x28, x6, x9	x28 = x6 + x9
00938EB3 // ADD x29, x7, x9	x29 = x7 + x9
00940F33 // ADD x30, x8, x9	x30 = x8 + x9
40900B33 // SUBS x22, x0, x9	x22 = x0 - x9
40908BB3 // SUBS x23, x1, x9	x23 = x1 - x9
40910C33 // SUBS x24, x2, x9	x24 = x2 - x9
40918CB3 // SUBS x25, x3, x9	x25 = x3 - x9
40920D33 // SUBS x26, x4, x9	x26 = x4 - x9
40928DB3 // SUBS x27, x5, x9	x27 = x5 - x9
40930E33 // SUBS x28, x6, x9	x28 = x6 - x9
40938EB3 // SUBS x29, x7, x9	x29 = x7 - x9
40940F33 // SUBS x30, x8, x9	x30 = x8 - x9
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
//*
00200093//ADDI x1, x0, 2
00300113//ADDI x2, x0, 3
00400193//ADDI x3, x0, 4
00500213//ADDI x4, x0, 5
00600293//ADDI x5, x0, 6
00700313//ADDI x6, x0, 7
00800393//ADDI x7, x0, 8
00900413//ADDI x8, x0, 9
00A00493//ADDI x9, x0, A
00B00513//ADDI x10, x0, B
00C00593//ADDI x11, x0, C
00D00613 //ADDI x12, x0, D
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
00202023 //SW x2,0 (x0)
00302223 //SW x3,4 (x0)
00402423 //SW x4,8 (x0)
00502623 //SW x5,12 (x0)
00602823 //SW x6,16 (x0)
00702A23 //SW x7,20 (x0)
00802C23 //SW x8,24 (x0)
00902E23 //SW x9,28 (x0)
02A02023 //SW xA,32 (x0)
02B02223 //SW xB,36 (x0)
02C02423 //SW xC,40 (x0)
02D02623 //SW xD,44 (x0)
02002823 //SW x2,48 (x0)
02002A23 //SW x2,52 (x0)
02202C23 //SW x2,56 (x0)
02202E23 //SW x2,60 (x0)
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
00900B33 // ADD x22, x0, x9	x22 = x0 + x9
00908BB3 // ADD x23, x1, x9	x23 = x1 + x9
00910C33 // ADD x24, x2, x9	x24 = x2 + x9
00918CB3 // ADD x25, x3, x9	x25 = x3 + x9
00920D33 // ADD x26, x4, x9	x26 = x4 + x9
00928DB3 // ADD x27, x5, x9	x27 = x5 + x9
00930E33 // ADD x28, x6, x9	x28 = x6 + x9
00938EB3 // ADD x29, x7, x9	x29 = x7 + x9
00940F33 // ADD x30, x8, x9	x30 = x8 + x9
40900B33 // SUBS x22, x0, x9 x22 = x0 - x9
40908BB3 // SUBS x23, x1, x9 x23 = x1 - x9
40910C33 // SUBS x24, x2, x9 x24 = x2 - x9
40918CB3 // SUBS x25, x3, x9 x25 = x3 - x9
40920D33 // SUBS x26, x4, x9 x26 = x4 - x9
40928DB3 // SUBS x27, x5, x9 x27 = x5 - x9
40930E33 // SUBS x28, x6, x9 x28 = x6 - x9
40938EB3 // SUBS x29, x7, x9 x29 = x7 - x9
40940F33 // SUBS x30, x8, x9 x30 = x8 - x9
00000613 //ADDI x12, x0, 0
00000693 //ADDI x13, x0, 0
00000713 //ADDI x14, x0, 0
00000793 //ADDI x15, x0, 0
00000813 //ADDI x16, x0, 0
00000893 //ADDI x17, x0, 0
00000913 //ADDI x18, x0, 0
00000993 //ADDI x19, x0, 0
00000A13 //ADDI x20, x0, 0
002B2633 //compara x2 con x22 y guardo en x12 SLT x12,x2,x22
016126B3 //compara x22 con x2 y guardo en x13 
003BA733 // compara x3 con x23 y guardo en x14 
0171A7B3 // compara x23 con x3 y guardo en x15 
004C2833 // compara x4 con x24 y guardo en x16 
018228B3 // compara x24 con x4 y guardo en x17 
00000A93 //ADDI x21, x0, 0
02208263 // BEQ BEQ x1, x2, offset si x1 == x2
00000B13 //ADDI x22, x0, 0
//*