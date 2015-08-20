program Demo3;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  UnivDisasm.Disasm,
  UnivDisasm.Cnsts,
  UnivDisasm.Cnsts.Regs,
  UnivDisasm.Cnsts.Instructions,
  UnivDisasm.Syntax.UnivSyntax;

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
