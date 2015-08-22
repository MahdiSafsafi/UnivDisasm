unit uTestCase;

interface

uses
  System.Classes,
  System.SysUtils,
  System.IOUtils,
  UnivDisasm.Disasm,
  System.RegularExpressions,
  TimeSpan, Diagnostics;

type
  TTestCase = class(TObject)
  private
    FErrorsCount: Integer;
    FTestName: String;
    FList: TStringList;
    FErrorsList: TStringList;
    FArch: Byte;
    FVendor: Byte;
    FInsts: Integer;
    FStopwatch: Diagnostics.TStopwatch;
    FElapsed: TTimeSpan;
    FStartCalled: Boolean;
    FStopCalled: Boolean;
  public
    constructor Create(const TestName: String);
    destructor Destroy; override;
    procedure Start;
    procedure Stop;
    function testcase(ID: Integer; const opcodes: array of Byte; const AInstStr: AnsiString): Boolean;
    procedure SaveToFile(const AFile: String);
    property Arch: Byte read FArch write FArch;
    property Vendor: Byte read FVendor write FVendor;
    property Elapsed: TTimeSpan read FElapsed;
  end;

implementation

uses UnivDisasm.Syntax.UnivSyntax;
{ TTestCase }

constructor TTestCase.Create(const TestName: String);
begin
  FErrorsCount := 0;
  FStartCalled := False;
  FStopCalled := False;
  FInsts := 0;
  FTestName := TestName;
  FList := TStringList.Create;
  FErrorsList := TStringList.Create;
  FElapsed := TTimeSpan.Zero;
end;

destructor TTestCase.Destroy;
begin
  FList.Free;
  FErrorsList.Free;
  inherited;
end;

procedure TTestCase.SaveToFile(const AFile: String);
var
  FS: TStreamWriter;
  i: Integer;
  Dir, LFile: string;
begin
  LFile := System.IOUtils.TPath.GetFullPath(AFile);
  Dir := ExtractFileDir(LFile);
  if not DirectoryExists(Dir) then
  begin
    CreateDir(Dir);
  end;
  FS := TStreamWriter.Create(LFile);
  try
    FS.WriteLine('---------------- Log Info --------------');
    FS.WriteLine(Format('Total decoded instructions = %d.', [FInsts]));
    FS.WriteLine(Format('Errors found = %d.', [FErrorsCount]));
    if (FStartCalled and FStopCalled) then
      FS.WriteLine('Timing = ' + FElapsed);
    FS.WriteLine('-----------------------------------------');
    FS.WriteLine('');
    if FErrorsList.Count > 0 then
    begin
      FS.WriteLine('-------------- Errors -----------------');
      for i := 0 to FErrorsList.Count - 1 do
        FS.WriteLine(FErrorsList[i]);
      FS.WriteLine('---------------------------------------');
      FS.WriteLine('');
    end;
    FS.WriteLine('----------- Instructions Str ------------');
    FS.WriteLine('{ Source InstStr   :   UnivInsStr }');
    FS.WriteLine('');
    for i := 0 to FList.Count - 1 do
      FS.WriteLine(FList[i]);
    FS.WriteLine('-----------------------------------------');

  finally
    FS.Free;
  end;
end;

procedure TTestCase.Start;
begin
  FStartCalled := True;
  FStopwatch := TStopwatch.Create;
  FStopwatch.Reset;
  FStopwatch.Start;
end;

procedure TTestCase.Stop;
begin
  if FStartCalled then
  begin
    FStopwatch.Stop;
    FElapsed := FStopwatch.Elapsed;
  end;
  FStopCalled := True;
  if FErrorsList.Count > 0 then
    WriteLn('Errors found in ' + FTestName);
end;

function TTestCase.testcase(ID: Integer; const opcodes: array of Byte; const AInstStr: AnsiString): Boolean;
var
  Inst: TInstruction;
  L, sz: ShortInt;
  SrcStr, nsStr, S, SLog: String;
  RegEx: TRegEx;
  Match: TMatch;
  SrcDisp: Integer;
  nsDisp: Integer;
  sopcodes: string;
  i: Integer;
begin
  Result := False;
  nsDisp := 0;
  SrcDisp := 0;
  Inc(FInsts);
  L := Length(opcodes);
  Inst := default (TInstruction);
  Inst.Arch := FArch;
  Inst.Vendor := FVendor;
  Inst.SyntaxOptions := USO_SHOW_1_DISP or USO_SHOW_MEM_SIZE or USO_SHOW_RELATIVE_DISP;
  Inst.Addr := @opcodes[0];
  for i := 0 to L - 1 do
  begin
    sopcodes := sopcodes + ',$' + IntToHex(opcodes[i], 2);
  end;
  sopcodes := sopcodes.Remove(0, 1);
  try
    sz := Disasm(@Inst);
  except
    Inc(FErrorsCount);
    FErrorsList.Add(Format('ERROR : testcase %d failed.', [ID]));
    Exit;
  end;
  nsStr := Inst.InstStr;
  SrcStr := AInstStr;
  SrcStr := LowerCase(SrcStr.Trim);
  SLog := Format('TestID %-8d  =  %-50s  :  %-50s', [ID, SrcStr, nsStr]);

  if (sz <> L) then
  begin
    Inc(FErrorsCount);
    FErrorsList.Add(Format('ERROR : testcase %d does not match length.', [ID]));
    FList.Add('ERROR   :  ' + SLog);
    Exit;
  end;
  RegEx := TRegEx.Create('\[.*?(0x[a-f0-9]+)\]', [roIgnoreCase, roSingleLine]);
  Match := RegEx.Match(SrcStr);
  if Match.Success then
  begin
    S := Match.Groups.Item[1].Value;
    SrcDisp := Integer(StrToInt64(S));
  end;
  Match := RegEx.Match(nsStr);
  if Match.Success then
  begin
    S := Match.Groups.Item[1].Value;
    nsDisp := Integer(StrToInt64(S));
  end;
  if nsDisp <> SrcDisp then
  begin
    Inc(FErrorsCount);
    FErrorsList.Add(Format('ERROR : testcase %d does not match displacement : ', [ID]));
    FErrorsList.Add(Format('        [%s]', [sopcodes]));
    FErrorsList.Add('        ' + SLog);
    Exit;
  end;
  FList.Add(SLog);
  Result := True;
end;

end.
