unit avx512cd;

interface

uses uTestCase, UnivDisasm.Cnsts;

procedure Test_avx512cd();

implementation

procedure Test_avx512cd();
var
  TestCase: TTestCase;
begin
  TestCase := TTestCase.Create('avx512cd');
  // -------------------------------------------------------------------
  TestCase.Start();
  TestCase.Arch := CPUX64;
  TestCase.TestCase(0, [$62, $02, $7D, $48, $C4, $F5], 'vpconflictd zmm30,zmm29');
  TestCase.TestCase(1, [$62, $02, $7D, $4F, $C4, $F5], 'vpconflictd zmm30{k7},zmm29');
  TestCase.TestCase(2, [$62, $02, $7D, $CF, $C4, $F5], 'vpconflictd zmm30{k7}{z},zmm29');
  TestCase.TestCase(3, [$62, $62, $7D, $48, $C4, $31], 'vpconflictd zmm30,ZWORD [rcx]');
  TestCase.TestCase(4, [$62, $22, $7D, $48, $C4, $B4, $F0, $23, $01, $00, $00], 'vpconflictd zmm30,ZWORD [rax+r14*8+0x123]');
  TestCase.TestCase(5, [$62, $62, $7D, $58, $C4, $31], 'vpconflictd zmm30,DWORD [rcx]{1to16}');
  TestCase.TestCase(6, [$62, $62, $7D, $48, $C4, $72, $7F], 'vpconflictd zmm30,ZWORD [rdx+0x1fc0]');
  TestCase.TestCase(7, [$62, $62, $7D, $48, $C4, $B2, $00, $20, $00, $00], 'vpconflictd zmm30,ZWORD [rdx+0x2000]');
  TestCase.TestCase(8, [$62, $62, $7D, $48, $C4, $72, $80], 'vpconflictd zmm30,ZWORD [rdx-0x2000]');
  TestCase.TestCase(9, [$62, $62, $7D, $48, $C4, $B2, $C0, $DF, $FF, $FF], 'vpconflictd zmm30,ZWORD [rdx-0x2040]');
  TestCase.TestCase(10, [$62, $62, $7D, $58, $C4, $72, $7F], 'vpconflictd zmm30,DWORD [rdx+0x1fc]{1to16}');
  TestCase.TestCase(11, [$62, $62, $7D, $58, $C4, $B2, $00, $02, $00, $00], 'vpconflictd zmm30,DWORD [rdx+0x200]{1to16}');
  TestCase.TestCase(12, [$62, $62, $7D, $58, $C4, $72, $80], 'vpconflictd zmm30,DWORD [rdx-0x200]{1to16}');
  TestCase.TestCase(13, [$62, $62, $7D, $58, $C4, $B2, $FC, $FD, $FF, $FF], 'vpconflictd zmm30,DWORD [rdx-0x204]{1to16}');
  TestCase.TestCase(14, [$62, $02, $FD, $48, $C4, $F5], 'vpconflictq zmm30,zmm29');
  TestCase.TestCase(15, [$62, $02, $FD, $4F, $C4, $F5], 'vpconflictq zmm30{k7},zmm29');
  TestCase.TestCase(16, [$62, $02, $FD, $CF, $C4, $F5], 'vpconflictq zmm30{k7}{z},zmm29');
  TestCase.TestCase(17, [$62, $62, $FD, $48, $C4, $31], 'vpconflictq zmm30,ZWORD [rcx]');
  TestCase.TestCase(18, [$62, $22, $FD, $48, $C4, $B4, $F0, $23, $01, $00, $00], 'vpconflictq zmm30,ZWORD [rax+r14*8+0x123]');
  TestCase.TestCase(19, [$62, $62, $FD, $58, $C4, $31], 'vpconflictq zmm30,QWORD [rcx]{1to8}');
  TestCase.TestCase(20, [$62, $62, $FD, $48, $C4, $72, $7F], 'vpconflictq zmm30,ZWORD [rdx+0x1fc0]');
  TestCase.TestCase(21, [$62, $62, $FD, $48, $C4, $B2, $00, $20, $00, $00], 'vpconflictq zmm30,ZWORD [rdx+0x2000]');
  TestCase.TestCase(22, [$62, $62, $FD, $48, $C4, $72, $80], 'vpconflictq zmm30,ZWORD [rdx-0x2000]');
  TestCase.TestCase(23, [$62, $62, $FD, $48, $C4, $B2, $C0, $DF, $FF, $FF], 'vpconflictq zmm30,ZWORD [rdx-0x2040]');
  TestCase.TestCase(24, [$62, $62, $FD, $58, $C4, $72, $7F], 'vpconflictq zmm30,QWORD [rdx+0x3f8]{1to8}');
  TestCase.TestCase(25, [$62, $62, $FD, $58, $C4, $B2, $00, $04, $00, $00], 'vpconflictq zmm30,QWORD [rdx+0x400]{1to8}');
  TestCase.TestCase(26, [$62, $62, $FD, $58, $C4, $72, $80], 'vpconflictq zmm30,QWORD [rdx-0x400]{1to8}');
  TestCase.TestCase(27, [$62, $62, $FD, $58, $C4, $B2, $F8, $FB, $FF, $FF], 'vpconflictq zmm30,QWORD [rdx-0x408]{1to8}');
  TestCase.TestCase(28, [$62, $02, $7D, $48, $44, $F5], 'vplzcntd zmm30,zmm29');
  TestCase.TestCase(29, [$62, $02, $7D, $4F, $44, $F5], 'vplzcntd zmm30{k7},zmm29');
  TestCase.TestCase(30, [$62, $02, $7D, $CF, $44, $F5], 'vplzcntd zmm30{k7}{z},zmm29');
  TestCase.TestCase(31, [$62, $62, $7D, $48, $44, $31], 'vplzcntd zmm30,ZWORD [rcx]');
  TestCase.TestCase(32, [$62, $22, $7D, $48, $44, $B4, $F0, $23, $01, $00, $00], 'vplzcntd zmm30,ZWORD [rax+r14*8+0x123]');
  TestCase.TestCase(33, [$62, $62, $7D, $58, $44, $31], 'vplzcntd zmm30,DWORD [rcx]{1to16}');
  TestCase.TestCase(34, [$62, $62, $7D, $48, $44, $72, $7F], 'vplzcntd zmm30,ZWORD [rdx+0x1fc0]');
  TestCase.TestCase(35, [$62, $62, $7D, $48, $44, $B2, $00, $20, $00, $00], 'vplzcntd zmm30,ZWORD [rdx+0x2000]');
  TestCase.TestCase(36, [$62, $62, $7D, $48, $44, $72, $80], 'vplzcntd zmm30,ZWORD [rdx-0x2000]');
  TestCase.TestCase(37, [$62, $62, $7D, $48, $44, $B2, $C0, $DF, $FF, $FF], 'vplzcntd zmm30,ZWORD [rdx-0x2040]');
  TestCase.TestCase(38, [$62, $62, $7D, $58, $44, $72, $7F], 'vplzcntd zmm30,DWORD [rdx+0x1fc]{1to16}');
  TestCase.TestCase(39, [$62, $62, $7D, $58, $44, $B2, $00, $02, $00, $00], 'vplzcntd zmm30,DWORD [rdx+0x200]{1to16}');
  TestCase.TestCase(40, [$62, $62, $7D, $58, $44, $72, $80], 'vplzcntd zmm30,DWORD [rdx-0x200]{1to16}');
  TestCase.TestCase(41, [$62, $62, $7D, $58, $44, $B2, $FC, $FD, $FF, $FF], 'vplzcntd zmm30,DWORD [rdx-0x204]{1to16}');
  TestCase.TestCase(42, [$62, $02, $FD, $48, $44, $F5], 'vplzcntq zmm30,zmm29');
  TestCase.TestCase(43, [$62, $02, $FD, $4F, $44, $F5], 'vplzcntq zmm30{k7},zmm29');
  TestCase.TestCase(44, [$62, $02, $FD, $CF, $44, $F5], 'vplzcntq zmm30{k7}{z},zmm29');
  TestCase.TestCase(45, [$62, $62, $FD, $48, $44, $31], 'vplzcntq zmm30,ZWORD [rcx]');
  TestCase.TestCase(46, [$62, $22, $FD, $48, $44, $B4, $F0, $23, $01, $00, $00], 'vplzcntq zmm30,ZWORD [rax+r14*8+0x123]');
  TestCase.TestCase(47, [$62, $62, $FD, $58, $44, $31], 'vplzcntq zmm30,QWORD [rcx]{1to8}');
  TestCase.TestCase(48, [$62, $62, $FD, $48, $44, $72, $7F], 'vplzcntq zmm30,ZWORD [rdx+0x1fc0]');
  TestCase.TestCase(49, [$62, $62, $FD, $48, $44, $B2, $00, $20, $00, $00], 'vplzcntq zmm30,ZWORD [rdx+0x2000]');
  TestCase.TestCase(50, [$62, $62, $FD, $48, $44, $72, $80], 'vplzcntq zmm30,ZWORD [rdx-0x2000]');
  TestCase.TestCase(51, [$62, $62, $FD, $48, $44, $B2, $C0, $DF, $FF, $FF], 'vplzcntq zmm30,ZWORD [rdx-0x2040]');
  TestCase.TestCase(52, [$62, $62, $FD, $58, $44, $72, $7F], 'vplzcntq zmm30,QWORD [rdx+0x3f8]{1to8}');
  TestCase.TestCase(53, [$62, $62, $FD, $58, $44, $B2, $00, $04, $00, $00], 'vplzcntq zmm30,QWORD [rdx+0x400]{1to8}');
  TestCase.TestCase(54, [$62, $62, $FD, $58, $44, $72, $80], 'vplzcntq zmm30,QWORD [rdx-0x400]{1to8}');
  TestCase.TestCase(55, [$62, $62, $FD, $58, $44, $B2, $F8, $FB, $FF, $FF], 'vplzcntq zmm30,QWORD [rdx-0x408]{1to8}');
  TestCase.TestCase(56, [$62, $92, $16, $40, $27, $EC], 'vptestnmd k5,zmm29,zmm28');
  TestCase.TestCase(57, [$62, $92, $16, $47, $27, $EC], 'vptestnmd k5{k7},zmm29,zmm28');
  TestCase.TestCase(58, [$62, $F2, $16, $40, $27, $29], 'vptestnmd k5,zmm29,ZWORD [rcx]');
  TestCase.TestCase(59, [$62, $B2, $16, $40, $27, $AC, $F0, $23, $01, $00, $00], 'vptestnmd k5,zmm29,ZWORD [rax+r14*8+0x123]');
  TestCase.TestCase(60, [$62, $F2, $16, $50, $27, $29], 'vptestnmd k5,zmm29,DWORD [rcx]{1to16}');
  TestCase.TestCase(61, [$62, $F2, $16, $40, $27, $6A, $7F], 'vptestnmd k5,zmm29,ZWORD [rdx+0x1fc0]');
  TestCase.TestCase(62, [$62, $F2, $16, $40, $27, $AA, $00, $20, $00, $00], 'vptestnmd k5,zmm29,ZWORD [rdx+0x2000]');
  TestCase.TestCase(63, [$62, $F2, $16, $40, $27, $6A, $80], 'vptestnmd k5,zmm29,ZWORD [rdx-0x2000]');
  TestCase.TestCase(64, [$62, $F2, $16, $40, $27, $AA, $C0, $DF, $FF, $FF], 'vptestnmd k5,zmm29,ZWORD [rdx-0x2040]');
  TestCase.TestCase(65, [$62, $F2, $16, $50, $27, $6A, $7F], 'vptestnmd k5,zmm29,DWORD [rdx+0x1fc]{1to16}');
  TestCase.TestCase(66, [$62, $F2, $16, $50, $27, $AA, $00, $02, $00, $00], 'vptestnmd k5,zmm29,DWORD [rdx+0x200]{1to16}');
  TestCase.TestCase(67, [$62, $F2, $16, $50, $27, $6A, $80], 'vptestnmd k5,zmm29,DWORD [rdx-0x200]{1to16}');
  TestCase.TestCase(68, [$62, $F2, $16, $50, $27, $AA, $FC, $FD, $FF, $FF], 'vptestnmd k5,zmm29,DWORD [rdx-0x204]{1to16}');
  TestCase.TestCase(69, [$62, $92, $96, $40, $27, $EC], 'vptestnmq k5,zmm29,zmm28');
  TestCase.TestCase(70, [$62, $92, $96, $47, $27, $EC], 'vptestnmq k5{k7},zmm29,zmm28');
  TestCase.TestCase(71, [$62, $F2, $96, $40, $27, $29], 'vptestnmq k5,zmm29,ZWORD [rcx]');
  TestCase.TestCase(72, [$62, $B2, $96, $40, $27, $AC, $F0, $23, $01, $00, $00], 'vptestnmq k5,zmm29,ZWORD [rax+r14*8+0x123]');
  TestCase.TestCase(73, [$62, $F2, $96, $50, $27, $29], 'vptestnmq k5,zmm29,QWORD [rcx]{1to8}');
  TestCase.TestCase(74, [$62, $F2, $96, $40, $27, $6A, $7F], 'vptestnmq k5,zmm29,ZWORD [rdx+0x1fc0]');
  TestCase.TestCase(75, [$62, $F2, $96, $40, $27, $AA, $00, $20, $00, $00], 'vptestnmq k5,zmm29,ZWORD [rdx+0x2000]');
  TestCase.TestCase(76, [$62, $F2, $96, $40, $27, $6A, $80], 'vptestnmq k5,zmm29,ZWORD [rdx-0x2000]');
  TestCase.TestCase(77, [$62, $F2, $96, $40, $27, $AA, $C0, $DF, $FF, $FF], 'vptestnmq k5,zmm29,ZWORD [rdx-0x2040]');
  TestCase.TestCase(78, [$62, $F2, $96, $50, $27, $6A, $7F], 'vptestnmq k5,zmm29,QWORD [rdx+0x3f8]{1to8}');
  TestCase.TestCase(79, [$62, $F2, $96, $50, $27, $AA, $00, $04, $00, $00], 'vptestnmq k5,zmm29,QWORD [rdx+0x400]{1to8}');
  TestCase.TestCase(80, [$62, $F2, $96, $50, $27, $6A, $80], 'vptestnmq k5,zmm29,QWORD [rdx-0x400]{1to8}');
  TestCase.TestCase(81, [$62, $F2, $96, $50, $27, $AA, $F8, $FB, $FF, $FF], 'vptestnmq k5,zmm29,QWORD [rdx-0x408]{1to8}');
  TestCase.TestCase(82, [$62, $62, $7E, $48, $3A, $F6], 'vpbroadcastmw2d zmm30,k6');
  TestCase.TestCase(83, [$62, $62, $FE, $48, $2A, $F6], 'vpbroadcastmb2q zmm30,k6');
  TestCase.Stop();
  TestCase.SaveToFile('log\avx512cd.log');
  TestCase.Free;
end;

end.
