program Test;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  uTestCase,
  UnivDisasm.Cnsts.Instructions in '..\..\Source\UnivDisasm.Cnsts.Instructions.pas',
  UnivDisasm.Cnsts.Mnemonics in '..\..\Source\UnivDisasm.Cnsts.Mnemonics.pas',
  UnivDisasm.Cnsts in '..\..\Source\UnivDisasm.Cnsts.pas',
  UnivDisasm.Cnsts.Regs in '..\..\Source\UnivDisasm.Cnsts.Regs.pas',
  UnivDisasm.Disasm in '..\..\Source\UnivDisasm.Disasm.pas',
  UnivDisasm.Internal.Common in '..\..\Source\UnivDisasm.Internal.Common.pas',
  UnivDisasm.Internal.Escape in '..\..\Source\UnivDisasm.Internal.Escape.pas',
  UnivDisasm.Internal.Prefixes in '..\..\Source\UnivDisasm.Internal.Prefixes.pas',
  UnivDisasm.Syntax.NilSyntax in '..\..\Source\UnivDisasm.Syntax.NilSyntax.pas',
  UnivDisasm.Syntax.UnivSyntax in '..\..\Source\UnivDisasm.Syntax.UnivSyntax.pas',
  UnivDisasm.Syntax.Utils in '..\..\Source\UnivDisasm.Syntax.Utils.pas',
  UnivDisasm.SyntaxManager in '..\..\Source\UnivDisasm.SyntaxManager.pas',
  UnivDisasm.Utils in '..\..\Source\UnivDisasm.Utils.pas',
  avx2 in 'avx2.pas',
  avx512cd in 'avx512cd.pas',
  avx512er in 'avx512er.pas',
  avx512f in 'avx512f.pas',
  avx512pf in 'avx512pf.pas',
  bmi in 'bmi.pas',
  bmi2 in 'bmi2.pas',
  fma in 'fma.pas',
  fma_scalar in 'fma_scalar.pas',
  hle in 'hle.pas',
  sse4v1 in 'sse4v1.pas',
  sse4v2 in 'sse4v2.pas';

begin
  Writeln('Test started...');
  try
    Test_avx2();
    Test_avx512f();
    Test_avx512pf();
    Test_avx512cd();
    Test_avx512er();
    Test_fma();
    Test_fma_scalar();
    Test_bmi();
    Test_bmi2();
    Test_hle();
    Test_sse4v1();
    Test_sse4v2();

    Writeln('Test finished.');
    Writeln(Format('Please refer to %slog\ *.log files.', [IncludeTrailingBackslash(ExtractFileDir(ParamStr(0)))]));
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  ReadLn;

end.
