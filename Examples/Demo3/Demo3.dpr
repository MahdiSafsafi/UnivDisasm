program Demo3;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
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

function Add(a, b: integer): integer;
begin
  Result := a + b;
end;

var
  ins: TInstruction;
  P: PByte;
begin
  { Find all instructions that can modify EFLAGS.ZF flag }
  Writeln('instructions that may modify EFLAGS.ZF:');
  P := @Add;
  while (True) do
  begin
    ins := default (TInstruction);
    ins.Arch := CPUX32;
    ins.Addr := P;
    Disasm(@ins);
    P := ins.NextInst;
    if ins.Eflags.FZF and EF_M <> 0 then
    begin
      Writeln(Format('%p : %s', [ins.Addr, ins.InstStr]));
    end;
    FreeMem(ins.InstStr);
    if ins.InstID = INST_ID_RET then
      break;
  end;
  ReadLn;

end.
