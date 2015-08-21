unit evex_wig1;

interface

uses uTestCase, UnivDisasm.Cnsts;

procedure Test_evex_wig1();

implementation

procedure Test_evex_wig1();
var
  TestCase: TTestCase;
begin
  TestCase := TTestCase.Create('evex_wig1');
  // -------------------------------------------------------------------
  TestCase.Start();
  TestCase.Arch := CPUX64;
  TestCase.TestCase(0, [$62, $63, $FD, $08, $17, $E8, $AB], 'vextractps  rax,xmm29,0xab');
  TestCase.TestCase(1, [$62, $63, $FD, $08, $17, $E8, $7B], 'vextractps  rax,xmm29,0x7b');
  TestCase.TestCase(2, [$62, $43, $FD, $08, $17, $E8, $7B], 'vextractps  r8,xmm29,0x7b');
  TestCase.TestCase(3, [$62, $63, $FD, $08, $17, $29, $7B], 'vextractps  dword [rcx],xmm29,0x7b');
  TestCase.TestCase(4, [$62, $23, $FD, $08, $17, $AC, $F0, $23, $01, $00, $00, $7B], 'vextractps  dword [rax+r14*8+0x123],xmm29,0x7b');
  TestCase.TestCase(5, [$62, $63, $FD, $08, $17, $6A, $7F, $7B], 'vextractps  dword [rdx+0x1fc],xmm29,0x7b');
  TestCase.TestCase(6, [$62, $63, $FD, $08, $17, $AA, $00, $02, $00, $00, $7B], 'vextractps  dword [rdx+0x200],xmm29,0x7b');
  TestCase.TestCase(7, [$62, $63, $FD, $08, $17, $6A, $80, $7B], 'vextractps  dword [rdx-0x200],xmm29,0x7b');
  TestCase.TestCase(8, [$62, $63, $FD, $08, $17, $AA, $FC, $FD, $FF, $FF, $7B], 'vextractps  dword [rdx-0x204],xmm29,0x7b');
  TestCase.TestCase(9, [$62, $02, $FD, $4F, $21, $F5], 'vpmovsxbd  zmm30{k7},xmm29');
  TestCase.TestCase(10, [$62, $02, $FD, $CF, $21, $F5], 'vpmovsxbd  zmm30{k7}{z},xmm29');
  TestCase.TestCase(11, [$62, $62, $FD, $4F, $21, $31], 'vpmovsxbd  zmm30{k7},oword [rcx]');
  TestCase.TestCase(12, [$62, $22, $FD, $4F, $21, $B4, $F0, $23, $01, $00, $00], 'vpmovsxbd  zmm30{k7},oword [rax+r14*8+0x123]');
  TestCase.TestCase(13, [$62, $62, $FD, $4F, $21, $72, $7F], 'vpmovsxbd  zmm30{k7},oword [rdx+0x7f0]');
  TestCase.TestCase(14, [$62, $62, $FD, $4F, $21, $B2, $00, $08, $00, $00], 'vpmovsxbd  zmm30{k7},oword [rdx+0x800]');
  TestCase.TestCase(15, [$62, $62, $FD, $4F, $21, $72, $80], 'vpmovsxbd  zmm30{k7},oword [rdx-0x800]');
  TestCase.TestCase(16, [$62, $62, $FD, $4F, $21, $B2, $F0, $F7, $FF, $FF], 'vpmovsxbd  zmm30{k7},oword [rdx-0x810]');
  TestCase.TestCase(17, [$62, $02, $FD, $4F, $22, $F5], 'vpmovsxbq  zmm30{k7},xmm29');
  TestCase.TestCase(18, [$62, $02, $FD, $CF, $22, $F5], 'vpmovsxbq  zmm30{k7}{z},xmm29');
  TestCase.TestCase(19, [$62, $62, $FD, $4F, $22, $31], 'vpmovsxbq  zmm30{k7},qword [rcx]');
  TestCase.TestCase(20, [$62, $22, $FD, $4F, $22, $B4, $F0, $23, $01, $00, $00], 'vpmovsxbq  zmm30{k7},qword [rax+r14*8+0x123]');
  TestCase.TestCase(21, [$62, $62, $FD, $4F, $22, $72, $7F], 'vpmovsxbq  zmm30{k7},qword [rdx+0x3f8]');
  TestCase.TestCase(22, [$62, $62, $FD, $4F, $22, $B2, $00, $04, $00, $00], 'vpmovsxbq  zmm30{k7},qword [rdx+0x400]');
  TestCase.TestCase(23, [$62, $62, $FD, $4F, $22, $72, $80], 'vpmovsxbq  zmm30{k7},qword [rdx-0x400]');
  TestCase.TestCase(24, [$62, $62, $FD, $4F, $22, $B2, $F8, $FB, $FF, $FF], 'vpmovsxbq  zmm30{k7},qword [rdx-0x408]');
  TestCase.TestCase(25, [$62, $02, $FD, $4F, $23, $F5], 'vpmovsxwd  zmm30{k7},ymm29');
  TestCase.TestCase(26, [$62, $02, $FD, $CF, $23, $F5], 'vpmovsxwd  zmm30{k7}{z},ymm29');
  TestCase.TestCase(27, [$62, $62, $FD, $4F, $23, $31], 'vpmovsxwd  zmm30{k7},yword [rcx]');
  TestCase.TestCase(28, [$62, $22, $FD, $4F, $23, $B4, $F0, $23, $01, $00, $00], 'vpmovsxwd  zmm30{k7},yword [rax+r14*8+0x123]');
  TestCase.TestCase(29, [$62, $62, $FD, $4F, $23, $72, $7F], 'vpmovsxwd  zmm30{k7},yword [rdx+0xfe0]');
  TestCase.TestCase(30, [$62, $62, $FD, $4F, $23, $B2, $00, $10, $00, $00], 'vpmovsxwd  zmm30{k7},yword [rdx+0x1000]');
  TestCase.TestCase(31, [$62, $62, $FD, $4F, $23, $72, $80], 'vpmovsxwd  zmm30{k7},yword [rdx-0x1000]');
  TestCase.TestCase(32, [$62, $62, $FD, $4F, $23, $B2, $E0, $EF, $FF, $FF], 'vpmovsxwd  zmm30{k7},yword [rdx-0x1020]');
  TestCase.TestCase(33, [$62, $02, $FD, $4F, $24, $F5], 'vpmovsxwq  zmm30{k7},xmm29');
  TestCase.TestCase(34, [$62, $02, $FD, $CF, $24, $F5], 'vpmovsxwq  zmm30{k7}{z},xmm29');
  TestCase.TestCase(35, [$62, $62, $FD, $4F, $24, $31], 'vpmovsxwq  zmm30{k7},oword [rcx]');
  TestCase.TestCase(36, [$62, $22, $FD, $4F, $24, $B4, $F0, $23, $01, $00, $00], 'vpmovsxwq  zmm30{k7},oword [rax+r14*8+0x123]');
  TestCase.TestCase(37, [$62, $62, $FD, $4F, $24, $72, $7F], 'vpmovsxwq  zmm30{k7},oword [rdx+0x7f0]');
  TestCase.TestCase(38, [$62, $62, $FD, $4F, $24, $B2, $00, $08, $00, $00], 'vpmovsxwq  zmm30{k7},oword [rdx+0x800]');
  TestCase.TestCase(39, [$62, $62, $FD, $4F, $24, $72, $80], 'vpmovsxwq  zmm30{k7},oword [rdx-0x800]');
  TestCase.TestCase(40, [$62, $62, $FD, $4F, $24, $B2, $F0, $F7, $FF, $FF], 'vpmovsxwq  zmm30{k7},oword [rdx-0x810]');
  TestCase.TestCase(41, [$62, $02, $FD, $4F, $31, $F5], 'vpmovzxbd  zmm30{k7},xmm29');
  TestCase.TestCase(42, [$62, $02, $FD, $CF, $31, $F5], 'vpmovzxbd  zmm30{k7}{z},xmm29');
  TestCase.TestCase(43, [$62, $62, $FD, $4F, $31, $31], 'vpmovzxbd  zmm30{k7},oword [rcx]');
  TestCase.TestCase(44, [$62, $22, $FD, $4F, $31, $B4, $F0, $23, $01, $00, $00], 'vpmovzxbd  zmm30{k7},oword [rax+r14*8+0x123]');
  TestCase.TestCase(45, [$62, $62, $FD, $4F, $31, $72, $7F], 'vpmovzxbd  zmm30{k7},oword [rdx+0x7f0]');
  TestCase.TestCase(46, [$62, $62, $FD, $4F, $31, $B2, $00, $08, $00, $00], 'vpmovzxbd  zmm30{k7},oword [rdx+0x800]');
  TestCase.TestCase(47, [$62, $62, $FD, $4F, $31, $72, $80], 'vpmovzxbd  zmm30{k7},oword [rdx-0x800]');
  TestCase.TestCase(48, [$62, $62, $FD, $4F, $31, $B2, $F0, $F7, $FF, $FF], 'vpmovzxbd  zmm30{k7},oword [rdx-0x810]');
  TestCase.TestCase(49, [$62, $02, $FD, $4F, $32, $F5], 'vpmovzxbq  zmm30{k7},xmm29');
  TestCase.TestCase(50, [$62, $02, $FD, $CF, $32, $F5], 'vpmovzxbq  zmm30{k7}{z},xmm29');
  TestCase.TestCase(51, [$62, $62, $FD, $4F, $32, $31], 'vpmovzxbq  zmm30{k7},qword [rcx]');
  TestCase.TestCase(52, [$62, $22, $FD, $4F, $32, $B4, $F0, $23, $01, $00, $00], 'vpmovzxbq  zmm30{k7},qword [rax+r14*8+0x123]');
  TestCase.TestCase(53, [$62, $62, $FD, $4F, $32, $72, $7F], 'vpmovzxbq  zmm30{k7},qword [rdx+0x3f8]');
  TestCase.TestCase(54, [$62, $62, $FD, $4F, $32, $B2, $00, $04, $00, $00], 'vpmovzxbq  zmm30{k7},qword [rdx+0x400]');
  TestCase.TestCase(55, [$62, $62, $FD, $4F, $32, $72, $80], 'vpmovzxbq  zmm30{k7},qword [rdx-0x400]');
  TestCase.TestCase(56, [$62, $62, $FD, $4F, $32, $B2, $F8, $FB, $FF, $FF], 'vpmovzxbq  zmm30{k7},qword [rdx-0x408]');
  TestCase.TestCase(57, [$62, $02, $FD, $4F, $33, $F5], 'vpmovzxwd  zmm30{k7},ymm29');
  TestCase.TestCase(58, [$62, $02, $FD, $CF, $33, $F5], 'vpmovzxwd  zmm30{k7}{z},ymm29');
  TestCase.TestCase(59, [$62, $62, $FD, $4F, $33, $31], 'vpmovzxwd  zmm30{k7},yword [rcx]');
  TestCase.TestCase(60, [$62, $22, $FD, $4F, $33, $B4, $F0, $23, $01, $00, $00], 'vpmovzxwd  zmm30{k7},yword [rax+r14*8+0x123]');
  TestCase.TestCase(61, [$62, $62, $FD, $4F, $33, $72, $7F], 'vpmovzxwd  zmm30{k7},yword [rdx+0xfe0]');
  TestCase.TestCase(62, [$62, $62, $FD, $4F, $33, $B2, $00, $10, $00, $00], 'vpmovzxwd  zmm30{k7},yword [rdx+0x1000]');
  TestCase.TestCase(63, [$62, $62, $FD, $4F, $33, $72, $80], 'vpmovzxwd  zmm30{k7},yword [rdx-0x1000]');
  TestCase.TestCase(64, [$62, $62, $FD, $4F, $33, $B2, $E0, $EF, $FF, $FF], 'vpmovzxwd  zmm30{k7},yword [rdx-0x1020]');
  TestCase.TestCase(65, [$62, $02, $FD, $4F, $34, $F5], 'vpmovzxwq  zmm30{k7},xmm29');
  TestCase.TestCase(66, [$62, $02, $FD, $CF, $34, $F5], 'vpmovzxwq  zmm30{k7}{z},xmm29');
  TestCase.TestCase(67, [$62, $62, $FD, $4F, $34, $31], 'vpmovzxwq  zmm30{k7},oword [rcx]');
  TestCase.TestCase(68, [$62, $22, $FD, $4F, $34, $B4, $F0, $23, $01, $00, $00], 'vpmovzxwq  zmm30{k7},oword [rax+r14*8+0x123]');
  TestCase.TestCase(69, [$62, $62, $FD, $4F, $34, $72, $7F], 'vpmovzxwq  zmm30{k7},oword [rdx+0x7f0]');
  TestCase.TestCase(70, [$62, $62, $FD, $4F, $34, $B2, $00, $08, $00, $00], 'vpmovzxwq  zmm30{k7},oword [rdx+0x800]');
  TestCase.TestCase(71, [$62, $62, $FD, $4F, $34, $72, $80], 'vpmovzxwq  zmm30{k7},oword [rdx-0x800]');
  TestCase.TestCase(72, [$62, $62, $FD, $4F, $34, $B2, $F0, $F7, $FF, $FF], 'vpmovzxwq  zmm30{k7},oword [rdx-0x810]');
  TestCase.TestCase(73, [$62, $63, $FD, $08, $17, $E8, $AB], 'vextractps  rax,xmm29,0xab');
  TestCase.TestCase(74, [$62, $63, $FD, $08, $17, $E8, $7B], 'vextractps  rax,xmm29,0x7b');
  TestCase.TestCase(75, [$62, $43, $FD, $08, $17, $E8, $7B], 'vextractps  r8,xmm29,0x7b');
  TestCase.TestCase(76, [$62, $63, $FD, $08, $17, $29, $7B], 'vextractps  dword [rcx],xmm29,0x7b');
  TestCase.TestCase(77, [$62, $23, $FD, $08, $17, $AC, $F0, $34, $12, $00, $00, $7B], 'vextractps  dword [rax+r14*8+0x1234],xmm29,0x7b');
  TestCase.TestCase(78, [$62, $63, $FD, $08, $17, $6A, $7F, $7B], 'vextractps  dword [rdx+0x1fc],xmm29,0x7b');
  TestCase.TestCase(79, [$62, $63, $FD, $08, $17, $AA, $00, $02, $00, $00, $7B], 'vextractps  dword [rdx+0x200],xmm29,0x7b');
  TestCase.TestCase(80, [$62, $63, $FD, $08, $17, $6A, $80, $7B], 'vextractps  dword [rdx-0x200],xmm29,0x7b');
  TestCase.TestCase(81, [$62, $63, $FD, $08, $17, $AA, $FC, $FD, $FF, $FF, $7B], 'vextractps  dword [rdx-0x204],xmm29,0x7b');
  TestCase.TestCase(82, [$62, $02, $FD, $4F, $21, $F5], 'vpmovsxbd  zmm30{k7},xmm29');
  TestCase.TestCase(83, [$62, $02, $FD, $CF, $21, $F5], 'vpmovsxbd  zmm30{k7}{z},xmm29');
  TestCase.TestCase(84, [$62, $62, $FD, $4F, $21, $31], 'vpmovsxbd  zmm30{k7},oword [rcx]');
  TestCase.TestCase(85, [$62, $22, $FD, $4F, $21, $B4, $F0, $34, $12, $00, $00], 'vpmovsxbd  zmm30{k7},oword [rax+r14*8+0x1234]');
  TestCase.TestCase(86, [$62, $62, $FD, $4F, $21, $72, $7F], 'vpmovsxbd  zmm30{k7},oword [rdx+0x7f0]');
  TestCase.TestCase(87, [$62, $62, $FD, $4F, $21, $B2, $00, $08, $00, $00], 'vpmovsxbd  zmm30{k7},oword [rdx+0x800]');
  TestCase.TestCase(88, [$62, $62, $FD, $4F, $21, $72, $80], 'vpmovsxbd  zmm30{k7},oword [rdx-0x800]');
  TestCase.TestCase(89, [$62, $62, $FD, $4F, $21, $B2, $F0, $F7, $FF, $FF], 'vpmovsxbd  zmm30{k7},oword [rdx-0x810]');
  TestCase.TestCase(90, [$62, $02, $FD, $4F, $22, $F5], 'vpmovsxbq  zmm30{k7},xmm29');
  TestCase.TestCase(91, [$62, $02, $FD, $CF, $22, $F5], 'vpmovsxbq  zmm30{k7}{z},xmm29');
  TestCase.TestCase(92, [$62, $62, $FD, $4F, $22, $31], 'vpmovsxbq  zmm30{k7},qword [rcx]');
  TestCase.TestCase(93, [$62, $22, $FD, $4F, $22, $B4, $F0, $34, $12, $00, $00], 'vpmovsxbq  zmm30{k7},qword [rax+r14*8+0x1234]');
  TestCase.TestCase(94, [$62, $62, $FD, $4F, $22, $72, $7F], 'vpmovsxbq  zmm30{k7},qword [rdx+0x3f8]');
  TestCase.TestCase(95, [$62, $62, $FD, $4F, $22, $B2, $00, $04, $00, $00], 'vpmovsxbq  zmm30{k7},qword [rdx+0x400]');
  TestCase.TestCase(96, [$62, $62, $FD, $4F, $22, $72, $80], 'vpmovsxbq  zmm30{k7},qword [rdx-0x400]');
  TestCase.TestCase(97, [$62, $62, $FD, $4F, $22, $B2, $F8, $FB, $FF, $FF], 'vpmovsxbq  zmm30{k7},qword [rdx-0x408]');
  TestCase.TestCase(98, [$62, $02, $FD, $4F, $23, $F5], 'vpmovsxwd  zmm30{k7},ymm29');
  TestCase.TestCase(99, [$62, $02, $FD, $CF, $23, $F5], 'vpmovsxwd  zmm30{k7}{z},ymm29');
  TestCase.TestCase(100, [$62, $62, $FD, $4F, $23, $31], 'vpmovsxwd  zmm30{k7},yword [rcx]');
  TestCase.TestCase(101, [$62, $22, $FD, $4F, $23, $B4, $F0, $34, $12, $00, $00], 'vpmovsxwd  zmm30{k7},yword [rax+r14*8+0x1234]');
  TestCase.TestCase(102, [$62, $62, $FD, $4F, $23, $72, $7F], 'vpmovsxwd  zmm30{k7},yword [rdx+0xfe0]');
  TestCase.TestCase(103, [$62, $62, $FD, $4F, $23, $B2, $00, $10, $00, $00], 'vpmovsxwd  zmm30{k7},yword [rdx+0x1000]');
  TestCase.TestCase(104, [$62, $62, $FD, $4F, $23, $72, $80], 'vpmovsxwd  zmm30{k7},yword [rdx-0x1000]');
  TestCase.TestCase(105, [$62, $62, $FD, $4F, $23, $B2, $E0, $EF, $FF, $FF], 'vpmovsxwd  zmm30{k7},yword [rdx-0x1020]');
  TestCase.TestCase(106, [$62, $02, $FD, $4F, $24, $F5], 'vpmovsxwq  zmm30{k7},xmm29');
  TestCase.TestCase(107, [$62, $02, $FD, $CF, $24, $F5], 'vpmovsxwq  zmm30{k7}{z},xmm29');
  TestCase.TestCase(108, [$62, $62, $FD, $4F, $24, $31], 'vpmovsxwq  zmm30{k7},oword [rcx]');
  TestCase.TestCase(109, [$62, $22, $FD, $4F, $24, $B4, $F0, $34, $12, $00, $00], 'vpmovsxwq  zmm30{k7},oword [rax+r14*8+0x1234]');
  TestCase.TestCase(110, [$62, $62, $FD, $4F, $24, $72, $7F], 'vpmovsxwq  zmm30{k7},oword [rdx+0x7f0]');
  TestCase.TestCase(111, [$62, $62, $FD, $4F, $24, $B2, $00, $08, $00, $00], 'vpmovsxwq  zmm30{k7},oword [rdx+0x800]');
  TestCase.TestCase(112, [$62, $62, $FD, $4F, $24, $72, $80], 'vpmovsxwq  zmm30{k7},oword [rdx-0x800]');
  TestCase.TestCase(113, [$62, $62, $FD, $4F, $24, $B2, $F0, $F7, $FF, $FF], 'vpmovsxwq  zmm30{k7},oword [rdx-0x810]');
  TestCase.TestCase(114, [$62, $02, $FD, $4F, $31, $F5], 'vpmovzxbd  zmm30{k7},xmm29');
  TestCase.TestCase(115, [$62, $02, $FD, $CF, $31, $F5], 'vpmovzxbd  zmm30{k7}{z},xmm29');
  TestCase.TestCase(116, [$62, $62, $FD, $4F, $31, $31], 'vpmovzxbd  zmm30{k7},oword [rcx]');
  TestCase.TestCase(117, [$62, $22, $FD, $4F, $31, $B4, $F0, $34, $12, $00, $00], 'vpmovzxbd  zmm30{k7},oword [rax+r14*8+0x1234]');
  TestCase.TestCase(118, [$62, $62, $FD, $4F, $31, $72, $7F], 'vpmovzxbd  zmm30{k7},oword [rdx+0x7f0]');
  TestCase.TestCase(119, [$62, $62, $FD, $4F, $31, $B2, $00, $08, $00, $00], 'vpmovzxbd  zmm30{k7},oword [rdx+0x800]');
  TestCase.TestCase(120, [$62, $62, $FD, $4F, $31, $72, $80], 'vpmovzxbd  zmm30{k7},oword [rdx-0x800]');
  TestCase.TestCase(121, [$62, $62, $FD, $4F, $31, $B2, $F0, $F7, $FF, $FF], 'vpmovzxbd  zmm30{k7},oword [rdx-0x810]');
  TestCase.TestCase(122, [$62, $02, $FD, $4F, $32, $F5], 'vpmovzxbq  zmm30{k7},xmm29');
  TestCase.TestCase(123, [$62, $02, $FD, $CF, $32, $F5], 'vpmovzxbq  zmm30{k7}{z},xmm29');
  TestCase.TestCase(124, [$62, $62, $FD, $4F, $32, $31], 'vpmovzxbq  zmm30{k7},qword [rcx]');
  TestCase.TestCase(125, [$62, $22, $FD, $4F, $32, $B4, $F0, $34, $12, $00, $00], 'vpmovzxbq  zmm30{k7},qword [rax+r14*8+0x1234]');
  TestCase.TestCase(126, [$62, $62, $FD, $4F, $32, $72, $7F], 'vpmovzxbq  zmm30{k7},qword [rdx+0x3f8]');
  TestCase.TestCase(127, [$62, $62, $FD, $4F, $32, $B2, $00, $04, $00, $00], 'vpmovzxbq  zmm30{k7},qword [rdx+0x400]');
  TestCase.TestCase(128, [$62, $62, $FD, $4F, $32, $72, $80], 'vpmovzxbq  zmm30{k7},qword [rdx-0x400]');
  TestCase.TestCase(129, [$62, $62, $FD, $4F, $32, $B2, $F8, $FB, $FF, $FF], 'vpmovzxbq  zmm30{k7},qword [rdx-0x408]');
  TestCase.TestCase(130, [$62, $02, $FD, $4F, $33, $F5], 'vpmovzxwd  zmm30{k7},ymm29');
  TestCase.TestCase(131, [$62, $02, $FD, $CF, $33, $F5], 'vpmovzxwd  zmm30{k7}{z},ymm29');
  TestCase.TestCase(132, [$62, $62, $FD, $4F, $33, $31], 'vpmovzxwd  zmm30{k7},yword [rcx]');
  TestCase.TestCase(133, [$62, $22, $FD, $4F, $33, $B4, $F0, $34, $12, $00, $00], 'vpmovzxwd  zmm30{k7},yword [rax+r14*8+0x1234]');
  TestCase.TestCase(134, [$62, $62, $FD, $4F, $33, $72, $7F], 'vpmovzxwd  zmm30{k7},yword [rdx+0xfe0]');
  TestCase.TestCase(135, [$62, $62, $FD, $4F, $33, $B2, $00, $10, $00, $00], 'vpmovzxwd  zmm30{k7},yword [rdx+0x1000]');
  TestCase.TestCase(136, [$62, $62, $FD, $4F, $33, $72, $80], 'vpmovzxwd  zmm30{k7},yword [rdx-0x1000]');
  TestCase.TestCase(137, [$62, $62, $FD, $4F, $33, $B2, $E0, $EF, $FF, $FF], 'vpmovzxwd  zmm30{k7},yword [rdx-0x1020]');
  TestCase.TestCase(138, [$62, $02, $FD, $4F, $34, $F5], 'vpmovzxwq  zmm30{k7},xmm29');
  TestCase.TestCase(139, [$62, $02, $FD, $CF, $34, $F5], 'vpmovzxwq  zmm30{k7}{z},xmm29');
  TestCase.TestCase(140, [$62, $62, $FD, $4F, $34, $31], 'vpmovzxwq  zmm30{k7},oword [rcx]');
  TestCase.TestCase(141, [$62, $22, $FD, $4F, $34, $B4, $F0, $34, $12, $00, $00], 'vpmovzxwq  zmm30{k7},oword [rax+r14*8+0x1234]');
  TestCase.TestCase(142, [$62, $62, $FD, $4F, $34, $72, $7F], 'vpmovzxwq  zmm30{k7},oword [rdx+0x7f0]');
  TestCase.TestCase(143, [$62, $62, $FD, $4F, $34, $B2, $00, $08, $00, $00], 'vpmovzxwq  zmm30{k7},oword [rdx+0x800]');
  TestCase.TestCase(144, [$62, $62, $FD, $4F, $34, $72, $80], 'vpmovzxwq  zmm30{k7},oword [rdx-0x800]');
  TestCase.TestCase(145, [$62, $62, $FD, $4F, $34, $B2, $F0, $F7, $FF, $FF], 'vpmovzxwq  zmm30{k7},oword [rdx-0x810]');
  TestCase.Stop();
  TestCase.SaveToFile('log\evex_wig1.log');
  TestCase.Free;
end;

end.