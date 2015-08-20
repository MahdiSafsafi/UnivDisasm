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
// The Original Code is BMI2.inc
//
// The Initial Developer of the Original Code is Mahdi Safsafi.
// Portions created by Mahdi Safsafi . are Copyright (C) 2015 Mahdi Safsafi.
// All Rights Reserved.
// *************************************************************************** //
//

procedure Decode_BMI2_TZCNT_Gv_Ev(PInst: PInstruction);
begin
  // TZCNT  Gv,Ev
  PInst^.InstGroups := INST_GRP_BMI2;
  PInst^.InstCategory := INST_CATEGORY_BMI1;
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_TZCNT;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_TZCNT);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_BMI2_LZCNT_Gv_Ev(PInst: PInstruction);
begin
  // LZCNT  Gv,Ev
  PInst^.InstGroups := INST_GRP_BMI2;
  PInst^.InstCategory := INST_CATEGORY_BMI1;
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_LZCNT;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_LZCNT);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_BMI2_PDEP_Gy_By_Ey(PInst: PInstruction);
begin
  // PDEP  Gy,By,Ey
  PInst^.InstGroups := INST_GRP_BMI2;
  PInst^.InstCategory := INST_CATEGORY_NIL;
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF2(PInst);
  Decode_Gy_By_Ey(PInst);
  PInst^.InstID := INST_ID_PDEP;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PDEP);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_BMI2_PEXT_Gy_By_Ey(PInst: PInstruction);
begin
  // PEXT  Gy,By,Ey
  PInst^.InstGroups := INST_GRP_BMI2;
  PInst^.InstCategory := INST_CATEGORY_NIL;
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  Decode_Gy_By_Ey(PInst);
  PInst^.InstID := INST_ID_PEXT;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PEXT);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_BMI2_BZHI_Gy_Ey_By(PInst: PInstruction);
begin
  // BZHI  Gy,Ey,By
  PInst^.InstGroups := INST_GRP_BMI2;
  PInst^.InstCategory := INST_CATEGORY_NIL;
  PInst^.FlagsIndex := $00;
  Decode_Gy_Ey_By(PInst);
  PInst^.InstID := INST_ID_BZHI;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_BZHI);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_BMI2_MULX_Gy_By_Ey(PInst: PInstruction);
begin
  // MULX  Gy,By,Ey
  PInst^.InstGroups := INST_GRP_BMI2;
  PInst^.InstCategory := INST_CATEGORY_UNSIGNED;
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF2(PInst);
  Decode_Gy_By_Ey(PInst);
  PInst^.InstID := INST_ID_MULX;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_MULX);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_BMI2_SHLX_Gy_Ey_By(PInst: PInstruction);
begin
  // SHLX  Gy,Ey,By
  PInst^.InstGroups := INST_GRP_BMI2;
  PInst^.InstCategory := INST_CATEGORY_SHIFT;
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  Decode_Gy_Ey_By(PInst);
  PInst^.InstID := INST_ID_SHLX;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_SHLX);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_BMI2_SHRX_Gy_Ey_By(PInst: PInstruction);
begin
  // SHRX  Gy,Ey,By
  PInst^.InstGroups := INST_GRP_BMI2;
  PInst^.InstCategory := INST_CATEGORY_SHIFT;
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF2(PInst);
  Decode_Gy_Ey_By(PInst);
  PInst^.InstID := INST_ID_SHRX;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_SHRX);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_BMI2_SARX_Gy_Ey_By(PInst: PInstruction);
begin
  // SARX  Gy,Ey,By
  PInst^.InstGroups := INST_GRP_BMI2;
  PInst^.InstCategory := INST_CATEGORY_SHIFT;
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  Decode_Gy_Ey_By(PInst);
  PInst^.InstID := INST_ID_SARX;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_SARX);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_BMI2_RORX_By_Ey_Ib(PInst: PInstruction);
begin
  // RORX  By,Ey,Ib
  PInst^.InstGroups := INST_GRP_BMI2;
  PInst^.InstCategory := INST_CATEGORY_ROTATE;
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF2(PInst);
  Decode_By_Ey_Ib(PInst);
  PInst^.InstID := INST_ID_RORX;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_RORX);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;
