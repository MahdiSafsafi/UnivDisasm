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
// The Original Code is UnivDisasm.dpr
//
// The Initial Developer of the Original Code is Mahdi Safsafi.
// Portions created by Mahdi Safsafi . are Copyright (C) 2015 Mahdi Safsafi.
// All Rights Reserved.
// *************************************************************************** //
//
// JCL_DEBUG_EXPERT_GENERATEJDBG OFF
program UnivDisasm;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  UnivDisasm.Cnsts.Instructions in '..\Source\UnivDisasm.Cnsts.Instructions.pas',
  UnivDisasm.Cnsts.Mnemonics in '..\Source\UnivDisasm.Cnsts.Mnemonics.pas',
  UnivDisasm.Cnsts in '..\Source\UnivDisasm.Cnsts.pas',
  UnivDisasm.Cnsts.Regs in '..\Source\UnivDisasm.Cnsts.Regs.pas',
  UnivDisasm.Disasm in '..\Source\UnivDisasm.Disasm.pas',
  UnivDisasm.Internal.Common in '..\Source\UnivDisasm.Internal.Common.pas',
  UnivDisasm.Internal.Escape in '..\Source\UnivDisasm.Internal.Escape.pas',
  UnivDisasm.Internal.Prefixes in '..\Source\UnivDisasm.Internal.Prefixes.pas',
  UnivDisasm.Syntax.NilSyntax in '..\Source\UnivDisasm.Syntax.NilSyntax.pas',
  UnivDisasm.Syntax.UnivSyntax in '..\Source\UnivDisasm.Syntax.UnivSyntax.pas',
  UnivDisasm.Syntax.Utils in '..\Source\UnivDisasm.Syntax.Utils.pas',
  UnivDisasm.SyntaxManager in '..\Source\UnivDisasm.SyntaxManager.pas',
  UnivDisasm.Utils in '..\Source\UnivDisasm.Utils.pas';

procedure DoHelp();
begin
  WriteLn( //
    'https://github.com/MahdiSafsafi/UnivDisasm' + #13#10, //
    'Usage: UnivDisasm [<Options>][<OpCodes>...]' + #13#10, //
    'Options:' + #13#10, //
    '-h : Help' + #13#10, //
    '-v : Vendor = <*Intel,AMD,CENTAUR>' + #13#10, //
    '-x : Architecture = *32 or 64' + #13#10, //
    '* means default to this value if not specified.' + #13#10, //
    'OpCodes: Sequence of bytes of opcodes.' + #13#10, //
    'Note: If you are using hex format, each byte must be preceded by (0x|$) prefix.'
    + #13#10 + #13#10, //
    'Eg: UnivDisasm.exe -v intel -x 32 "0x62 0x02 0x95 0x40 0x65 0xF4"' + #13#10
    //
    );
end;

const
  COMMAND_NIL = 0;
  COMMAND_VENDOR = 1;
  COMMAND_CPUX = 2;

procedure Decode(Address: PByte; nLength, Vendor, Arch: Integer);
var
  ins: TInstruction;
  P: PByte;
  sz: Integer;
begin
  P := Address;
  sz := 0;
  while (sz < nLength) do
  begin
    ins := default (TInstruction);
    ins.Arch := Arch;
    ins.Vendor := Vendor;
    ins.Addr := P;
    ins.Syntax := SX_UNIV_SYNTAX;
    ins.SyntaxOptions := USO_DEFAULT;
    Inc(sz, Disasm(@ins));
    WriteLn(ins.InstStr);
  end;
end;

var
  Param: string;
  LVendor, LCPUX: UInt8;
  L, i: Integer;
  Command: Integer;
  S, sop: string;
  OpCodesStr: TArray<String>;
  OpCodes: TArray<Byte>;

begin
  { Default value }
  LVendor := VENDOR_INTEL;
  LCPUX := CPUX32;
  SetLength(OpCodes, 32);
  WriteLn('');
  Command := COMMAND_NIL;
  try
    if ParamCount > 0 then
    begin
      for i := 1 to ParamCount do
      begin
        Param := ParamStr(i).Trim;
        case Command of
          COMMAND_VENDOR:
            begin
              Command := COMMAND_NIL;
              if SameText('intel', Param) then
                LVendor := VENDOR_INTEL
              else if SameText('amd', Param) then
                LVendor := VENDOR_AMD
              else if SameText('centaur', Param) then
                LVendor := VENDOR_CENTAUR
              else
              begin
                WriteLn('Error: unrecognized vendor.');
                Exit;
              end;
              Continue;
            end;
          COMMAND_CPUX:
            begin
              Command := COMMAND_NIL;
              if Param = '32' then
                LCPUX := CPUX32
              else if Param = '64' then
                LCPUX := CPUX64
              else
              begin
                WriteLn('Error: unrecognized architecture.');
                Exit;
              end;
              Continue;
            end;
        end;
        if Param = '-h' then
        begin
          DoHelp;
          Exit;
        end;
        if Param = '-v' then
        begin
          Command := COMMAND_VENDOR;
          Continue;
        end
        else if Param = '-x' then
        begin
          Command := COMMAND_CPUX;
          Continue;
        end
        else
        begin
          L := 0;
          OpCodesStr := Param.Split([' ', ',']);
          for S in OpCodesStr do
          begin
            sop := S.Trim;
            if sop.IsEmpty then
              Continue;
            OpCodes[L] := StrToInt(sop);
            Inc(L);
          end;
          Decode(@OpCodes[0], L, LVendor, LCPUX);
        end;
      end;
    end
    else
    begin
      DoHelp;
      Exit;
    end;
  except
    WriteLn('Error: Something went wrong !');
  end;

end.
