unit uMain;

interface

// https://github.com/MahdiSafsafi/UnivDisasm

{ Notes:
  -You must use UnivDisasm64 for x64 applications.
  -You must use UnivDisasm32 for x32 applications.
  -Disasm start from PE EntryPoint !
  -Detecting mixed code and data is not implemented. => access violation errors may occur !
  -There is no implementation of memory management. => Hard to works with large files !
}
{ TODO:
  -Implement memory management routines.
  -Detect mixed data.
}
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.Menus, uDisasmList;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Open1: TMenuItem;
    Exit1: TMenuItem;
    StatusBar1: TStatusBar;
    FOD: TFileOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
    FDisList: TDisasmList;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Exit1Click(Sender: TObject);
begin
  FDisList.Close;
  Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDisList := TDisasmList.Create(Self);
  FDisList.Parent := Self;
  FDisList.Align := alClient;
  FDisList.Font.Name := 'Lucida Console';
  FDisList.Font.Size := 12;
  FDisList.Visible := True;
end;

procedure TForm1.Open1Click(Sender: TObject);
var
  BinType: DWORD;
begin
  if FOD.Execute then
  begin
    GetBinaryType(PChar(FOD.FileName), BinType);
{$IFDEF CPUX64}
    if BinType <> SCS_64BIT_BINARY then
      raise Exception.Create('Must use UnivDisasm32 version to work on x32 application.');
{$ELSE !CPUX64}
    if BinType <> SCS_32BIT_BINARY then
      raise Exception.Create('Must use UnivDisasm64 version to work on x64 application.');
{$ENDIF CPUX64}
    FDisList.Open(FOD.FileName);
    StatusBar1.SimpleText := Format('Total instructions decoded : %d instructions in %s.', [FDisList.InstsCount, String(FDisList.TimeSpan)]);
   Caption:=Format('UnivDisasm - %s',[FOD.FileName]);
  end;
end;

end.
