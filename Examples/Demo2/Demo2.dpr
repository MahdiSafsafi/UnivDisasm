program Demo2;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  UnivDisasm.Disasm,
  UnivDisasm.Cnsts,
  UnivDisasm.Cnsts.Regs,
  UnivDisasm.Cnsts.Instructions,
  UnivDisasm.Syntax.UnivSyntax;

var
  ins: TInstruction;
  P: PByte;

begin
  { Find mov ebp,esp instructions }

  P := @System.SysUtils.Format;
  Writeln('mov ebp,esp instructions :');
  while (True) do
  begin
    ins := default (TInstruction);
    ins.Arch := CPUX32;
    ins.Addr := P;
    Disasm(@ins);
    P := ins.NextInst;
    if (ins.InstID = INST_ID_MOV) and ((ins.Arg1.Reg = REG_EBP) and (ins.Arg2.Reg = REG_ESP)) then
    begin
      Writeln(Format('%p : %s', [ins.Addr, ins.InstStr]));
    end;
    FreeMem(ins.InstStr);
    if ins.InstID = INST_ID_RET then
      break;
  end;
  Writeln('');

  { Find all mov eax,?? instructions }
  Writeln('mov eax,?? instructions:');
  P := @System.SysUtils.Format;
  while (True) do
  begin
    ins := default (TInstruction);
    ins.Arch := CPUX32;
    ins.Addr := P;
    Disasm(@ins);
    P := ins.NextInst;
    if (ins.InstID = INST_ID_MOV) and ((ins.Arg1.Reg = REG_EAX) and (ins.Arg2.Flags > 0)) then
    begin
      Writeln(Format('%p : %s', [ins.Addr, ins.InstStr]));
    end;
    FreeMem(ins.InstStr);
    if ins.InstID = INST_ID_RET then
      break;
  end;
  Writeln('');

  { Find all pop instructions }
  Writeln('pop instructions:');
  P := @System.SysUtils.Format;
  while (True) do
  begin
    ins := default (TInstruction);
    ins.Arch := CPUX32;
    ins.Addr := P;
    Disasm(@ins);
    P := ins.NextInst;
    if (ins.InstID = INST_ID_POP) then
    begin
      Writeln(Format('%p : %s', [ins.Addr, ins.InstStr]));
    end;
    FreeMem(ins.InstStr);
    if ins.InstID = INST_ID_RET then
      break;
  end;

  ReadLn;

end.
