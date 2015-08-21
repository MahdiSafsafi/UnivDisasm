unit sse4v2;

interface

uses uTestCase, UnivDisasm.Cnsts;

procedure Test_sse4v2();

implementation

procedure Test_sse4v2();
var
  TestCase: TTestCase;
begin
  TestCase := TTestCase.Create('sse4v2');
  // -------------------------------------------------------------------
  TestCase.Start();
  TestCase.Arch := CPUX64;
  TestCase.TestCase(0, [$F2, $0F, $38, $F0, $D9], 'crc32  ebx,cl');
  TestCase.TestCase(1, [$F2, $48, $0F, $38, $F0, $D9], 'crc32  rbx,cl');
  TestCase.TestCase(2, [$66, $F2, $0F, $38, $F1, $D9], 'crc32  ebx,cx');
  TestCase.TestCase(3, [$F2, $0F, $38, $F1, $D9], 'crc32  ebx,ecx');
  TestCase.TestCase(4, [$F2, $48, $0F, $38, $F1, $D9], 'crc32  rbx,rcx');
  TestCase.TestCase(5, [$F2, $0F, $38, $F0, $19], 'crc32  ebx,BYTE [rcx]');
  TestCase.TestCase(6, [$66, $F2, $0F, $38, $F1, $19], 'crc32  ebx,WORD [rcx]');
  TestCase.TestCase(7, [$F2, $0F, $38, $F1, $19], 'crc32  ebx,DWORD [rcx]');
  TestCase.TestCase(8, [$F2, $48, $0F, $38, $F1, $19], 'crc32  rbx,QWORD [rcx]');
  TestCase.TestCase(9, [$F2, $0F, $38, $F0, $D9], 'crc32  ebx,cl');
  TestCase.TestCase(10, [$F2, $48, $0F, $38, $F0, $D9], 'crc32  rbx,cl');
  TestCase.TestCase(11, [$66, $F2, $0F, $38, $F1, $D9], 'crc32  ebx,cx');
  TestCase.TestCase(12, [$F2, $0F, $38, $F1, $D9], 'crc32  ebx,ecx');
  TestCase.TestCase(13, [$F2, $48, $0F, $38, $F1, $D9], 'crc32  rbx,rcx');
  TestCase.TestCase(14, [$66, $0F, $38, $37, $01], 'pcmpgtq xmm0,OWORD [rcx]');
  TestCase.TestCase(15, [$66, $0F, $38, $37, $C1], 'pcmpgtq xmm0,xmm1');
  TestCase.TestCase(16, [$66, $0F, $3A, $61, $01, $00], 'pcmpestri xmm0,OWORD [rcx],0x0');
  TestCase.TestCase(17, [$66, $0F, $3A, $61, $C1, $00], 'pcmpestri xmm0,xmm1,0x0');
  TestCase.TestCase(18, [$66, $0F, $3A, $60, $01, $01], 'pcmpestrm xmm0,OWORD [rcx],0x1');
  TestCase.TestCase(19, [$66, $0F, $3A, $60, $C1, $01], 'pcmpestrm xmm0,xmm1,0x1');
  TestCase.TestCase(20, [$66, $0F, $3A, $63, $01, $02], 'pcmpistri xmm0,OWORD [rcx],0x2');
  TestCase.TestCase(21, [$66, $0F, $3A, $63, $C1, $02], 'pcmpistri xmm0,xmm1,0x2');
  TestCase.TestCase(22, [$66, $0F, $3A, $62, $01, $03], 'pcmpistrm xmm0,OWORD [rcx],0x3');
  TestCase.TestCase(23, [$66, $0F, $3A, $62, $C1, $03], 'pcmpistrm xmm0,xmm1,0x3');
  TestCase.TestCase(24, [$66, $F3, $0F, $B8, $19], 'popcnt bx,WORD [rcx]');
  TestCase.TestCase(25, [$F3, $0F, $B8, $19], 'popcnt ebx,DWORD [rcx]');
  TestCase.TestCase(26, [$F3, $48, $0F, $B8, $19], 'popcnt rbx,QWORD [rcx]');
  TestCase.TestCase(27, [$66, $F3, $0F, $B8, $19], 'popcnt bx,WORD [rcx]');
  TestCase.TestCase(28, [$F3, $0F, $B8, $19], 'popcnt ebx,DWORD [rcx]');
  TestCase.TestCase(29, [$F3, $48, $0F, $B8, $19], 'popcnt rbx,QWORD [rcx]');
  TestCase.TestCase(30, [$66, $F3, $0F, $B8, $D9], 'popcnt bx,cx');
  TestCase.TestCase(31, [$F3, $0F, $B8, $D9], 'popcnt ebx,ecx');
  TestCase.TestCase(32, [$F3, $48, $0F, $B8, $D9], 'popcnt rbx,rcx');
  TestCase.TestCase(33, [$66, $F3, $0F, $B8, $D9], 'popcnt bx,cx');
  TestCase.TestCase(34, [$F3, $0F, $B8, $D9], 'popcnt ebx,ecx');
  TestCase.TestCase(35, [$F3, $48, $0F, $B8, $D9], 'popcnt rbx,rcx');
  TestCase.TestCase(36, [$F2, $0F, $38, $F0, $D9], 'crc32  ebx,cl');
  TestCase.TestCase(37, [$F2, $48, $0F, $38, $F0, $D9], 'crc32  rbx,cl');
  TestCase.TestCase(38, [$66, $F2, $0F, $38, $F1, $D9], 'crc32  ebx,cx');
  TestCase.TestCase(39, [$F2, $0F, $38, $F1, $D9], 'crc32  ebx,ecx');
  TestCase.TestCase(40, [$F2, $48, $0F, $38, $F1, $D9], 'crc32  rbx,rcx');
  TestCase.TestCase(41, [$F2, $0F, $38, $F0, $19], 'crc32  ebx,BYTE [rcx]');
  TestCase.TestCase(42, [$66, $F2, $0F, $38, $F1, $19], 'crc32  ebx,WORD [rcx]');
  TestCase.TestCase(43, [$F2, $0F, $38, $F1, $19], 'crc32  ebx,DWORD [rcx]');
  TestCase.TestCase(44, [$F2, $48, $0F, $38, $F1, $19], 'crc32  rbx,QWORD [rcx]');
  TestCase.TestCase(45, [$F2, $0F, $38, $F0, $D9], 'crc32  ebx,cl');
  TestCase.TestCase(46, [$F2, $48, $0F, $38, $F0, $D9], 'crc32  rbx,cl');
  TestCase.TestCase(47, [$66, $F2, $0F, $38, $F1, $D9], 'crc32  ebx,cx');
  TestCase.TestCase(48, [$F2, $0F, $38, $F1, $D9], 'crc32  ebx,ecx');
  TestCase.TestCase(49, [$F2, $48, $0F, $38, $F1, $D9], 'crc32  rbx,rcx');
  TestCase.TestCase(50, [$66, $0F, $38, $37, $01], 'pcmpgtq xmm0,OWORD [rcx]');
  TestCase.TestCase(51, [$66, $0F, $38, $37, $C1], 'pcmpgtq xmm0,xmm1');
  TestCase.TestCase(52, [$66, $0F, $3A, $61, $01, $00], 'pcmpestri xmm0,OWORD [rcx],0x0');
  TestCase.TestCase(53, [$66, $0F, $3A, $61, $C1, $00], 'pcmpestri xmm0,xmm1,0x0');
  TestCase.TestCase(54, [$66, $0F, $3A, $60, $01, $01], 'pcmpestrm xmm0,OWORD [rcx],0x1');
  TestCase.TestCase(55, [$66, $0F, $3A, $60, $C1, $01], 'pcmpestrm xmm0,xmm1,0x1');
  TestCase.TestCase(56, [$66, $0F, $3A, $63, $01, $02], 'pcmpistri xmm0,OWORD [rcx],0x2');
  TestCase.TestCase(57, [$66, $0F, $3A, $63, $C1, $02], 'pcmpistri xmm0,xmm1,0x2');
  TestCase.TestCase(58, [$66, $0F, $3A, $62, $01, $03], 'pcmpistrm xmm0,OWORD [rcx],0x3');
  TestCase.TestCase(59, [$66, $0F, $3A, $62, $C1, $03], 'pcmpistrm xmm0,xmm1,0x3');
  TestCase.TestCase(60, [$66, $F3, $0F, $B8, $19], 'popcnt bx,WORD [rcx]');
  TestCase.TestCase(61, [$F3, $0F, $B8, $19], 'popcnt ebx,DWORD [rcx]');
  TestCase.TestCase(62, [$F3, $48, $0F, $B8, $19], 'popcnt rbx,QWORD [rcx]');
  TestCase.TestCase(63, [$66, $F3, $0F, $B8, $19], 'popcnt bx,WORD [rcx]');
  TestCase.TestCase(64, [$F3, $0F, $B8, $19], 'popcnt ebx,DWORD [rcx]');
  TestCase.TestCase(65, [$F3, $48, $0F, $B8, $19], 'popcnt rbx,QWORD [rcx]');
  TestCase.TestCase(66, [$66, $F3, $0F, $B8, $D9], 'popcnt bx,cx');
  TestCase.TestCase(67, [$F3, $0F, $B8, $D9], 'popcnt ebx,ecx');
  TestCase.TestCase(68, [$F3, $48, $0F, $B8, $D9], 'popcnt rbx,rcx');
  TestCase.TestCase(69, [$66, $F3, $0F, $B8, $D9], 'popcnt bx,cx');
  TestCase.TestCase(70, [$F3, $0F, $B8, $D9], 'popcnt ebx,ecx');
  TestCase.TestCase(71, [$F3, $48, $0F, $B8, $D9], 'popcnt rbx,rcx');
  TestCase.Stop();
  TestCase.SaveToFile('log\sse4v2.log');
  TestCase.Free;
end;

end.
