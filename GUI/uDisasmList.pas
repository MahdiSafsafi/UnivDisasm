//
// *************************************************************************** //
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
// *************************************************************************** //
//
//
// *************************************************************************** //
// UnivDisasm library.
//
// This file is a part of UnivDisasm library.
//
// https://github.com/MahdiSafsafi/UnivDisasm
//
// The Original Code is uDisasmList.pas
//
// The Initial Developer of the Original Code is Mahdi Safsafi.
// Portions created by Mahdi Safsafi . are Copyright (C) 2015 Mahdi Safsafi.
// All Rights Reserved.
// *************************************************************************** //
//

unit uDisasmList;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Math,
  System.TimeSpan,
  System.Diagnostics,
  System.Generics.Collections,
  System.RegularExpressions,
  System.StrUtils,
  WinApi.Windows,
  WinApi.Messages,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Dialogs,
  UnivDisasm.Disasm,
  UnivDisasm.Cnsts,
  UnivDisasm.Cnsts.Instructions,
  UnivDisasm.Syntax.UnivSyntax;

type
  TInsData = record
    ins: TInstruction;
    VAddr: PByte;
    nsize: ShortInt;
  end;

  TDisasmList = class(TCustomControl)
  private
    FBinType: Integer;
    FInstsCount: Integer;
    FSI: TScrollInfo;
    FItemHeight: Integer;
    FItems: TList<TInsData>;
    FAddr: PByte;
    FVAddr: PByte;
    FMpFile: PByte;
    FhFile: THandle;
    FoFile: THandle;
    FOpened: Boolean;
    FTimeSpan: TTimeSpan;
    procedure CMFONTCHANGED(var Message: TMessage); message CM_FONTCHANGED;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMVScroll(var Message: TWMVScroll); message WM_VSCROLL;
    procedure WMWINDOWPOSCHANGED(var Message: TWMWindowPosChanged); message WM_WINDOWPOSCHANGED;
    procedure WMERASEBKGND(var Message: TWMEraseBkgnd); message WM_ERASEBKGND;
    function GetPagesCount: Integer;
    function GetFirstItemIndex: Integer;
    function GetLastItemIndex: Integer;
    function GetItemTop(vIndex: Integer): Integer;
    function IndexToVirtualIndex(Index: Integer): Integer;
    function GetMax: Integer;
    function GetAddrCharSize: Integer;
    function GetOpCodesCharSize: Integer;
  protected
    procedure PaintItem(Index: Integer); virtual;
    procedure PaintBkgnd(Canvas: TCanvas); virtual;
    procedure Paint; override;
    procedure InvalidateNC;
    procedure UpdateScrollBar;
    procedure CreateParams(var Params: TCreateParams); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Open(const AFile: AnsiString);
    procedure Close;
    property InstsCount: Integer read FInstsCount;
    property TimeSpan: TTimeSpan read FTimeSpan;
  published
    property Font;

  end;

implementation

{ TDisasmList }

procedure TDisasmList.CMFONTCHANGED(var Message: TMessage);
begin
  inherited;
  Canvas.Font.Assign(Font);
  FItemHeight := Canvas.TextHeight('WA') + 4; //
end;

constructor TDisasmList.Create(AOwner: TComponent);
begin
  inherited;
  DoubleBuffered := True;
  FItems := TList<TInsData>.Create();
  FItemHeight := 17;
  FOpened := False;
  FInstsCount := 0;
end;

procedure TDisasmList.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.Style := Params.Style or WS_VSCROLL;
end;

destructor TDisasmList.Destroy;
begin
  FItems.Clear;
  FItems.Destroy;
  inherited;
end;

function TDisasmList.GetAddrCharSize: Integer;
begin
  Result := Canvas.TextWidth('FFFFFFFF') + 2;
  if FBinType = CPUX64 then
    Result := Result * 2;
end;

function TDisasmList.GetFirstItemIndex: Integer;
begin
  FSI.cbSize := SizeOf(FSI);
  FSI.fMask := SIF_POS;
  GetScrollInfo(Handle, SB_VERT, FSI);
  Result := Max(0, FSI.nPos);
end;

function TDisasmList.GetItemTop(vIndex: Integer): Integer;
begin
  Result := vIndex * FItemHeight;
end;

function TDisasmList.GetLastItemIndex: Integer;
begin
  FSI.cbSize := SizeOf(FSI);
  FSI.fMask := SIF_POS;
  GetScrollInfo(Handle, SB_VERT, FSI);
  Result := Min(GetMax - 1, FSI.nPos + GetPagesCount);
end;

function TDisasmList.GetMax: Integer;
begin
  Result := FItems.Count;
end;

function TDisasmList.GetOpCodesCharSize: Integer;
var
  S: String;
begin
  S := '';
  S := StringOfChar('F', 30) + StringOfChar(' ', 15);
  Result := Canvas.TextWidth(S) + 10;
end;

function TDisasmList.GetPagesCount: Integer;
begin
  Result := Height div FItemHeight;
end;

function TDisasmList.IndexToVirtualIndex(Index: Integer): Integer;
begin
  Result := Index - GetFirstItemIndex;
end;

procedure TDisasmList.InvalidateNC;
begin
  if HandleAllocated then
    SendMessage(Handle, WM_NCPAINT, 0, 0);
end;

function RvaToOffset(NT: PImageNtHeaders; Rva: UInt64): UInt64;
var
  i: Word;
  Img: PImageSectionHeader;
  Offset, Limit: UInt64;
begin
  Result := 0;
  Offset := Rva;
  Img := PImageSectionHeader(NT);

  Inc(PImageNtHeaders(Img));
  if (Rva < Img.PointerToRawData) then
  begin
    Result := Rva;
    Exit;
  end;
  i := 0;
  while i < NT.FileHeader.NumberOfSections do
  begin
    if (Img.SizeOfRawData <> 0) then
    begin
      Limit := Img.SizeOfRawData;
    end
    else
      Limit := Img.Misc.VirtualSize;
    if (Rva >= Img.VirtualAddress) and (Rva < (Img.VirtualAddress + Limit)) then
    begin
      if (Img.PointerToRawData <> 0) then
      begin
        Dec(Offset, Img.VirtualAddress);
        Inc(Offset, Img.PointerToRawData);
      end;
      Result := Offset;
      Break;
    end;
    Inc(Img);
    Inc(i);
  end;
end;

procedure TDisasmList.Open(const AFile: AnsiString);
var
  PDosHeader: PImageDosHeader;
  PNtHeader: PImageNtHeaders;
  LMax, P: PByte;
  ins: TInstruction;
  Data: TInsData;
  L, sz: Integer;
  BinType: DWORD;
  Stopwatch: TStopwatch;

begin
  if FOpened then
    Close;
  FOpened := True;
  L := 0;
  GetBinaryTypeA(PAnsiChar(AFile), BinType);
  if BinType = SCS_64BIT_BINARY then
    FBinType := CPUX64
  else
    FBinType := CPUX32;
  FhFile := CreateFileA(PAnsiChar(AFile), GENERIC_READ, FILE_SHARE_READ, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
  FoFile := CreateFileMappingA(FhFile, nil, PAGE_READONLY, 0, 0, nil);
  FMpFile := MapViewOfFile(FoFile, FILE_MAP_READ, 0, 0, 0);
  PDosHeader := PImageDosHeader(FMpFile);
  if PDosHeader.e_magic <> IMAGE_DOS_SIGNATURE then
    Exit;
  PNtHeader := PImageNtHeaders(UInt64(PDosHeader) + PDosHeader._lfanew);
  if PNtHeader.Signature <> IMAGE_NT_SIGNATURE then
    Exit;

  FAddr := (FMpFile + RvaToOffset(PNtHeader, PNtHeader.OptionalHeader.AddressOfEntryPoint));
  FVAddr := PByte(PNtHeader.OptionalHeader.AddressOfEntryPoint + PNtHeader.OptionalHeader.ImageBase);
  LMax := PByte(FMpFile + RvaToOffset(PNtHeader, PNtHeader.OptionalHeader.BaseOfCode) + PNtHeader.OptionalHeader.SizeOfCode);
  P := FAddr;
  // Disasm start from here!
  Stopwatch := TStopwatch.Create;
  Stopwatch.Reset;
  Stopwatch.Start;
  while P < LMax do
  begin
    Inc(FInstsCount);
    ins := default (TInstruction);
    ins.Syntax := SX_UNIV_SYNTAX;
    ins.SyntaxOptions := USO_DEFAULT;
    ins.Arch := FBinType;
    ins.Addr := P;
    try
      sz := Disasm(@ins);
    except
      Break;
    end;
    Inc(P, sz);
    Data.ins := ins;
    Data.nsize := sz;
    Data.VAddr := FVAddr + L;
    Inc(L, sz);
    FItems.Add(Data);
  end;
  Stopwatch.Stop;
  FTimeSpan := Stopwatch.Elapsed;
  UpdateScrollBar;
  Invalidate;
end;

procedure TDisasmList.Close;
begin
  if FOpened then
  begin
    FOpened := False;
    FItems.Clear;
    UnMapViewOfFile(FMpFile);
    CloseHandle(FoFile);
    CloseHandle(FhFile);
  end;
end;

procedure TDisasmList.Paint;
var
  i, L: Integer;
  FirstItem: Integer;
  LastItem: Integer;
begin
  PaintBkgnd(Canvas);
  FirstItem := GetFirstItemIndex;
  LastItem := GetLastItemIndex;
  for i := FirstItem to LastItem do
  begin
    PaintItem(i);
  end;
  L := GetAddrCharSize + 15;
  Canvas.Font.Color := clGray;
  Canvas.MoveTo(L, 0);
  Canvas.LineTo(L, Height);

  L := GetOpCodesCharSize + 30;
  Canvas.MoveTo(L, 0);
  Canvas.LineTo(L, Height);

  Canvas.Font.Color := clBlack;

  inherited;
end;

procedure TDisasmList.PaintBkgnd(Canvas: TCanvas);
begin
  Canvas.Brush.Color := clCream;
  Canvas.FillRect(ClientRect);
end;

procedure TDisasmList.PaintItem(Index: Integer);
  function IsMemDec(const A: String): Boolean;
  const
    MemDecArray: array [0 .. 7] of String = ( //
      'byte', 'word', 'dword', 'qword', //
      'fword', 'oword', 'yword', 'zword');
  var
    i: Integer;
  begin
    Result := False;
    for i := 0 to Length(MemDecArray) - 1 do
    begin
      if SameText(A, MemDecArray[i]) then
        Exit(True);
    end;
  end;
  function IsSeg(const A: String): Boolean;
  const
    SegArray: array [0 .. 5] of String = ( //
      'cs', { 00 }
      'ds', { 01 }
      'ss', { 02 }
      'es', { 03 }
      'fs', { 04 }
      'gs' { 05 } );
  var
    i: Integer;
  begin
    Result := False;
    for i := 0 to Length(SegArray) - 1 do
    begin
      if SameText(A, SegArray[i]) then
        Exit(True);
    end;
  end;

  function IsNumeric(const A: String): Boolean;
  var
    Value: Int64;
  begin
    Result := TryStrToInt64(Trim(A), Value);
  end;

var
  S: String;
  R: TRect;
  vIndex, Y, i, L: Integer;
  P: PByte;
  RegEx: TRegEx;
  Matches: TMatchCollection;
  Match: TMatch;
  PrvChar: Char;
  LBrushColor: TColor;
  LPenColor: TColor;
  insid: Integer;
begin
  Canvas.Brush.Color := clCream;
  vIndex := IndexToVirtualIndex(Index);
  Y := GetItemTop(vIndex);

  Canvas.Font.Color := clGrayText;
  L := GetAddrCharSize;
  R := Rect(10, Y, L + 15, Y + FItemHeight);

  S := IntToHex(UInt64(FItems[Index].VAddr), 8 * (FBinType + 1));
  DrawText(Canvas.Handle, S, -1, R, DT_LEFT or DT_SINGLELINE);
  Canvas.Font.Color := clBlack;

  S := '';
  P := FItems[Index].ins.Addr;
  insid := FItems[Index].ins.InstID;
  for i := 0 to FItems[Index].nsize - 1 do
  begin
    S := S + ' ' + IntToHex(P^, 2);
    Inc(P);
  end;
  S := S.Trim;
  R := Rect(L + 30, Y, GetOpCodesCharSize + 30, Y + FItemHeight);
  DrawText(Canvas.Handle, S, -1, R, DT_LEFT or DT_SINGLELINE);

  R := Rect(GetOpCodesCharSize + 40, Y, Width, Y + FItemHeight);
  S := FItems[Index].ins.InstStr;

  PrvChar := #00;
  RegEx := TRegEx.Create('(^|\b)(.+?)(\b|$)');
  Matches := RegEx.Matches(S);
  for i := 0 to Matches.Count - 1 do
  begin
    LBrushColor := clCream;
    LPenColor := clBlack;
    Match := Matches.Item[i];
    S := Match.Value;
    if (i = 0) and (FItems[Index].ins.InstGroups and INST_GRP_GP = INST_GRP_GP) then
      LPenColor := clBlue;
    if S.StartsWith('0x') then
      LPenColor := $000080FF
    else if (PrvChar <> '*') and (IsNumeric(S)) then
      LPenColor := clGreen
    else if IsMemDec(S) then
      LPenColor := $00A8393A
    else if IsSeg(S) then
      LPenColor := clFuchsia
    else if SameText(S, 'rip') then
      LPenColor := clBlue;
    if insid = INST_ID_JMP then
    begin
      LBrushColor := clYellow;
      LPenColor := clBlack;
    end
    else if (insid = INST_ID_CALL) or (insid = INST_ID_RET) then
    begin
      LBrushColor := clAqua;
      LPenColor := clBlack;
    end
    else if FItems[Index].ins.DstAddr.Flags and JF_JCC <> 0 then
    begin
      LBrushColor := clYellow;
      LPenColor := clRed;
    end;
    if (Length(S) = 1) and (S.Trim <> '') then
      PrvChar := S[1];
    Canvas.Brush.Color := LBrushColor;
    Canvas.Font.Color := LPenColor;
    DrawText(Canvas.Handle, S, -1, R, DT_LEFT or DT_SINGLELINE);
    R.Left := R.Left + Canvas.TextWidth(S);
  end;

end;

procedure TDisasmList.UpdateScrollBar;
begin
  FSI.cbSize := SizeOf(FSI);
  FSI.fMask := SIF_RANGE or SIF_PAGE;
  FSI.nMin := 0;
  FSI.nMax := GetMax - 1;
  FSI.nPage := GetPagesCount;
  if Assigned(Parent) and not(csDestroying in ComponentState) then
  begin
    SetScrollInfo(Handle, SB_VERT, FSI, False);
    InvalidateNC;
  end;
end;

procedure TDisasmList.WMERASEBKGND(var Message: TWMEraseBkgnd);
begin
  Message.Result := 1;
end;

procedure TDisasmList.WMSize(var Message: TWMSize);
begin
  inherited;
  UpdateScrollBar;
end;

procedure TDisasmList.WMVScroll(var Message: TWMVScroll);
var
  YPos: Integer;
begin
  FSI.cbSize := SizeOf(FSI);
  FSI.fMask := SIF_ALL;
  GetScrollInfo(Handle, SB_VERT, FSI);
  YPos := FSI.nPos;
  case Message.ScrollCode of
    SB_TOP: FSI.nPos := FSI.nMin;
    SB_BOTTOM: FSI.nPos := FSI.nMax;
    SB_LINEUP: FSI.nPos := FSI.nPos - 1;
    SB_LINEDOWN: FSI.nPos := FSI.nPos + 1;
    SB_PAGEUP: FSI.nPos := FSI.nPos - FSI.nPage;
    SB_PAGEDOWN: FSI.nPos := FSI.nPos + FSI.nPage;
    SB_THUMBTRACK: FSI.nPos := FSI.nTrackPos;
  end;
  FSI.fMask := SIF_POS;
  SetScrollInfo(Handle, SB_VERT, FSI, True);
  GetScrollInfo(Handle, SB_VERT, FSI);
  ScrollWindow(Handle, 0, FItemHeight * (YPos - FSI.nPos), nil, nil);
  { Update the non validated area . }
  UpdateWindow(Handle);
end;

procedure TDisasmList.WMWINDOWPOSCHANGED(var Message: TWMWindowPosChanged);
begin
  inherited;
  UpdateScrollBar;
end;

end.
