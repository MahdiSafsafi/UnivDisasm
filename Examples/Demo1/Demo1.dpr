program Demo1;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Main},
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
  UnivDisasm.Utils in '..\..\Source\UnivDisasm.Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
