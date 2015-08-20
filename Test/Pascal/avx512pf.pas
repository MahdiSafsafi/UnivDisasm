unit avx512pf;

interface

uses uTestCase, UnivDisasm.Cnsts;

procedure Test_avx512pf();

implementation

procedure Test_avx512pf();
var
  TestCase: TTestCase;
begin
  TestCase := TTestCase.Create('avx512pf');
  // -------------------------------------------------------------------
  TestCase.Start();
  TestCase.Arch := CPUX64;
  TestCase.TestCase(0, [$62, $92, $FD, $41, $C6, $8C, $FE, $7B, $00, $00, $00], 'vgatherpf0dpd  [r14+ymm31*8+0x7b]{k1}');
  TestCase.TestCase(1, [$62, $92, $FD, $41, $C6, $8C, $FE, $7B, $00, $00, $00], 'vgatherpf0dpd  [r14+ymm31*8+0x7b]{k1}');
  TestCase.TestCase(2, [$62, $92, $FD, $41, $C6, $4C, $39, $20], 'vgatherpf0dpd  [r9+ymm31*1+0x100]{k1}');
  TestCase.TestCase(3, [$62, $B2, $FD, $41, $C6, $8C, $B9, $00, $04, $00, $00], 'vgatherpf0dpd  [rcx+ymm31*4+0x400]{k1}');
  TestCase.TestCase(4, [$62, $92, $7D, $41, $C6, $8C, $FE, $7B, $00, $00, $00], 'vgatherpf0dps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(5, [$62, $92, $7D, $41, $C6, $8C, $FE, $7B, $00, $00, $00], 'vgatherpf0dps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(6, [$62, $92, $7D, $41, $C6, $4C, $39, $40], 'vgatherpf0dps  [r9+zmm31*1+0x100]{k1}');
  TestCase.TestCase(7, [$62, $B2, $7D, $41, $C6, $8C, $B9, $00, $04, $00, $00], 'vgatherpf0dps  [rcx+zmm31*4+0x400]{k1}');
  TestCase.TestCase(8, [$62, $92, $FD, $41, $C7, $8C, $FE, $7B, $00, $00, $00], 'vgatherpf0qpd  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(9, [$62, $92, $FD, $41, $C7, $8C, $FE, $7B, $00, $00, $00], 'vgatherpf0qpd  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(10, [$62, $92, $FD, $41, $C7, $4C, $39, $20], 'vgatherpf0qpd  [r9+zmm31*1+0x100]{k1}');
  TestCase.TestCase(11, [$62, $B2, $FD, $41, $C7, $8C, $B9, $00, $04, $00, $00], 'vgatherpf0qpd  [rcx+zmm31*4+0x400]{k1}');
  TestCase.TestCase(12, [$62, $92, $7D, $41, $C7, $8C, $FE, $7B, $00, $00, $00], 'vgatherpf0qps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(13, [$62, $92, $7D, $41, $C7, $8C, $FE, $7B, $00, $00, $00], 'vgatherpf0qps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(14, [$62, $92, $7D, $41, $C7, $4C, $39, $40], 'vgatherpf0qps  [r9+zmm31*1+0x100]{k1}');
  TestCase.TestCase(15, [$62, $B2, $7D, $41, $C7, $8C, $B9, $00, $04, $00, $00], 'vgatherpf0qps  [rcx+zmm31*4+0x400]{k1}');
  TestCase.TestCase(16, [$62, $92, $FD, $41, $C6, $94, $FE, $7B, $00, $00, $00], 'vgatherpf1dpd  [r14+ymm31*8+0x7b]{k1}');
  TestCase.TestCase(17, [$62, $92, $FD, $41, $C6, $94, $FE, $7B, $00, $00, $00], 'vgatherpf1dpd  [r14+ymm31*8+0x7b]{k1}');
  TestCase.TestCase(18, [$62, $92, $FD, $41, $C6, $54, $39, $20], 'vgatherpf1dpd  [r9+ymm31*1+0x100]{k1}');
  TestCase.TestCase(19, [$62, $B2, $FD, $41, $C6, $94, $B9, $00, $04, $00, $00], 'vgatherpf1dpd  [rcx+ymm31*4+0x400]{k1}');
  TestCase.TestCase(20, [$62, $92, $7D, $41, $C6, $94, $FE, $7B, $00, $00, $00], 'vgatherpf1dps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(21, [$62, $92, $7D, $41, $C6, $94, $FE, $7B, $00, $00, $00], 'vgatherpf1dps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(22, [$62, $92, $7D, $41, $C6, $54, $39, $40], 'vgatherpf1dps  [r9+zmm31*1+0x100]{k1}');
  TestCase.TestCase(23, [$62, $B2, $7D, $41, $C6, $94, $B9, $00, $04, $00, $00], 'vgatherpf1dps  [rcx+zmm31*4+0x400]{k1}');
  TestCase.TestCase(24, [$62, $92, $FD, $41, $C7, $94, $FE, $7B, $00, $00, $00], 'vgatherpf1qpd  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(25, [$62, $92, $FD, $41, $C7, $94, $FE, $7B, $00, $00, $00], 'vgatherpf1qpd  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(26, [$62, $92, $FD, $41, $C7, $54, $39, $20], 'vgatherpf1qpd  [r9+zmm31*1+0x100]{k1}');
  TestCase.TestCase(27, [$62, $B2, $FD, $41, $C7, $94, $B9, $00, $04, $00, $00], 'vgatherpf1qpd  [rcx+zmm31*4+0x400]{k1}');
  TestCase.TestCase(28, [$62, $92, $7D, $41, $C7, $94, $FE, $7B, $00, $00, $00], 'vgatherpf1qps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(29, [$62, $92, $7D, $41, $C7, $94, $FE, $7B, $00, $00, $00], 'vgatherpf1qps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(30, [$62, $92, $7D, $41, $C7, $54, $39, $40], 'vgatherpf1qps  [r9+zmm31*1+0x100]{k1}');
  TestCase.TestCase(31, [$62, $B2, $7D, $41, $C7, $94, $B9, $00, $04, $00, $00], 'vgatherpf1qps  [rcx+zmm31*4+0x400]{k1}');
  TestCase.TestCase(32, [$62, $92, $FD, $41, $C6, $AC, $FE, $7B, $00, $00, $00], 'vscatterpf0dpd  [r14+ymm31*8+0x7b]{k1}');
  TestCase.TestCase(33, [$62, $92, $FD, $41, $C6, $AC, $FE, $7B, $00, $00, $00], 'vscatterpf0dpd  [r14+ymm31*8+0x7b]{k1}');
  TestCase.TestCase(34, [$62, $92, $FD, $41, $C6, $6C, $39, $20], 'vscatterpf0dpd  [r9+ymm31*1+0x100]{k1}');
  TestCase.TestCase(35, [$62, $B2, $FD, $41, $C6, $AC, $B9, $00, $04, $00, $00], 'vscatterpf0dpd  [rcx+ymm31*4+0x400]{k1}');
  TestCase.TestCase(36, [$62, $92, $7D, $41, $C6, $AC, $FE, $7B, $00, $00, $00], 'vscatterpf0dps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(37, [$62, $92, $7D, $41, $C6, $AC, $FE, $7B, $00, $00, $00], 'vscatterpf0dps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(38, [$62, $92, $7D, $41, $C6, $6C, $39, $40], 'vscatterpf0dps  [r9+zmm31*1+0x100]{k1}');
  TestCase.TestCase(39, [$62, $B2, $7D, $41, $C6, $AC, $B9, $00, $04, $00, $00], 'vscatterpf0dps  [rcx+zmm31*4+0x400]{k1}');
  TestCase.TestCase(40, [$62, $92, $FD, $41, $C7, $AC, $FE, $7B, $00, $00, $00], 'vscatterpf0qpd  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(41, [$62, $92, $FD, $41, $C7, $AC, $FE, $7B, $00, $00, $00], 'vscatterpf0qpd  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(42, [$62, $92, $FD, $41, $C7, $6C, $39, $20], 'vscatterpf0qpd  [r9+zmm31*1+0x100]{k1}');
  TestCase.TestCase(43, [$62, $B2, $FD, $41, $C7, $AC, $B9, $00, $04, $00, $00], 'vscatterpf0qpd  [rcx+zmm31*4+0x400]{k1}');
  TestCase.TestCase(44, [$62, $92, $7D, $41, $C7, $AC, $FE, $7B, $00, $00, $00], 'vscatterpf0qps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(45, [$62, $92, $7D, $41, $C7, $AC, $FE, $7B, $00, $00, $00], 'vscatterpf0qps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(46, [$62, $92, $7D, $41, $C7, $6C, $39, $40], 'vscatterpf0qps  [r9+zmm31*1+0x100]{k1}');
  TestCase.TestCase(47, [$62, $B2, $7D, $41, $C7, $AC, $B9, $00, $04, $00, $00], 'vscatterpf0qps  [rcx+zmm31*4+0x400]{k1}');
  TestCase.TestCase(48, [$62, $92, $FD, $41, $C6, $B4, $FE, $7B, $00, $00, $00], 'vscatterpf1dpd  [r14+ymm31*8+0x7b]{k1}');
  TestCase.TestCase(49, [$62, $92, $FD, $41, $C6, $B4, $FE, $7B, $00, $00, $00], 'vscatterpf1dpd  [r14+ymm31*8+0x7b]{k1}');
  TestCase.TestCase(50, [$62, $92, $FD, $41, $C6, $74, $39, $20], 'vscatterpf1dpd  [r9+ymm31*1+0x100]{k1}');
  TestCase.TestCase(51, [$62, $B2, $FD, $41, $C6, $B4, $B9, $00, $04, $00, $00], 'vscatterpf1dpd  [rcx+ymm31*4+0x400]{k1}');
  TestCase.TestCase(52, [$62, $92, $7D, $41, $C6, $B4, $FE, $7B, $00, $00, $00], 'vscatterpf1dps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(53, [$62, $92, $7D, $41, $C6, $B4, $FE, $7B, $00, $00, $00], 'vscatterpf1dps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(54, [$62, $92, $7D, $41, $C6, $74, $39, $40], 'vscatterpf1dps  [r9+zmm31*1+0x100]{k1}');
  TestCase.TestCase(55, [$62, $B2, $7D, $41, $C6, $B4, $B9, $00, $04, $00, $00], 'vscatterpf1dps  [rcx+zmm31*4+0x400]{k1}');
  TestCase.TestCase(56, [$62, $92, $FD, $41, $C7, $B4, $FE, $7B, $00, $00, $00], 'vscatterpf1qpd  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(57, [$62, $92, $FD, $41, $C7, $B4, $FE, $7B, $00, $00, $00], 'vscatterpf1qpd  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(58, [$62, $92, $FD, $41, $C7, $74, $39, $20], 'vscatterpf1qpd  [r9+zmm31*1+0x100]{k1}');
  TestCase.TestCase(59, [$62, $B2, $FD, $41, $C7, $B4, $B9, $00, $04, $00, $00], 'vscatterpf1qpd  [rcx+zmm31*4+0x400]{k1}');
  TestCase.TestCase(60, [$62, $92, $7D, $41, $C7, $B4, $FE, $7B, $00, $00, $00], 'vscatterpf1qps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(61, [$62, $92, $7D, $41, $C7, $B4, $FE, $7B, $00, $00, $00], 'vscatterpf1qps  [r14+zmm31*8+0x7b]{k1}');
  TestCase.TestCase(62, [$62, $92, $7D, $41, $C7, $74, $39, $40], 'vscatterpf1qps  [r9+zmm31*1+0x100]{k1}');
  TestCase.TestCase(63, [$62, $B2, $7D, $41, $C7, $B4, $B9, $00, $04, $00, $00], 'vscatterpf1qps  [rcx+zmm31*4+0x400]{k1}');
  TestCase.TestCase(64, [$0F, $0D, $11], 'prefetchwt1 BYTE [rcx]');
  TestCase.TestCase(65, [$42, $0F, $0D, $94, $F0, $23, $01, $00, $00], 'prefetchwt1 BYTE [rax+r14*8+0x123]');
  TestCase.Stop();
  TestCase.SaveToFile('log\avx512pf.log');
  TestCase.Free;
end;

end.
