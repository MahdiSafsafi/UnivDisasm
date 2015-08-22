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
  GlobalTest in 'GlobalTest.pas';

begin
  Writeln('Test started...');
  try
    TestAll();
    Writeln('Test finished.');
    Writeln('Please refer to log directory.');
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  ReadLn;

end.
