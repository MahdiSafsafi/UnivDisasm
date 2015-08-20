unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TMain = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    LogMem: TMemo;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fDisasm(P: PByte; const Name: String);
  end;

var
  Main: TMain;

implementation

uses
  UnivDisasm.Disasm,
  UnivDisasm.Cnsts,
  UnivDisasm.Cnsts.Instructions,
  UnivDisasm.Syntax.UnivSyntax;

{$R *.dfm}

procedure TMain.fDisasm(P: PByte; const Name: String);
var
  ins: TInstruction;
  List: TList;
begin
  List := TList.Create;
  LogMem.Lines.Add(Format('/* %s */', [Name]));
  while True do
  begin
    ins := Default (TInstruction);
    ins.Arch := CPUX;
    ins.Syntax := SX_UNIV_SYNTAX;
    ins.SyntaxOptions := USO_DEFAULT;
    ins.Addr := P;
    Disasm(@ins);
    if Assigned(ins.DstAddr.Addr) then
      List.Add(ins.DstAddr.Addr);
    if List.IndexOf(ins.Addr) > -1 then
      LogMem.Lines.Add(Format('@@Addr_%p:', [ins.Addr]));
    P := ins.NextInst;

    LogMem.Lines.Add(ins.InstStr);
    if ins.InstID = INST_ID_RET then
      break;
  end;
  LogMem.Lines.Add('/*------------------------------------------------*/');
  LogMem.Lines.Add('');
  LogMem.Lines.Add('');
end;

procedure TMain.SpeedButton1Click(Sender: TObject);
begin
  LogMem.Clear;
  LogMem.Lines.BeginUpdate;

  fDisasm(@Int, 'Int');
  fDisasm(@Move, 'Move');
  fDisasm(@TForm.Create, 'TForm.Create');
  fDisasm(@TForm.Paint, 'TForm.Paint');
  fDisasm(@TForm.Free, 'TForm.Free');

  LogMem.Lines.EndUpdate;
end;

end.
