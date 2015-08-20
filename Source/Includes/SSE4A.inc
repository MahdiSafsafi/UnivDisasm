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
// The Original Code is SSE4A.inc
//
// The Initial Developer of the Original Code is Mahdi Safsafi.
// Portions created by Mahdi Safsafi . are Copyright (C) 2015 Mahdi Safsafi.
// All Rights Reserved.
// *************************************************************************** //
//

procedure Decode_SSE4A_MOVNTSD_Mq_Vo(PInst: PInstruction);
begin
  // MOVNTSD  Mq,Vo
  PInst^.InstGroups := INST_GRP_SSE4A;
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF2(PInst);
  Decode_Mq_Vo(PInst);
  PInst^.InstID := INST_ID_MOVNTSD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_MOVNTSD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_SSE4A_MOVNTSS_Md_Vo(PInst: PInstruction);
begin
  // MOVNTSS  Md,Vo
  PInst^.InstGroups := INST_GRP_SSE4A;
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  Decode_Md_Vo(PInst);
  PInst^.InstID := INST_ID_MOVNTSS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_MOVNTSS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_SSE4A_EXTRQ_Uo_Ib_Ib(PInst: PInstruction);
begin
  // EXTRQ  Uo,Ib,Ib
  PInst^.InstGroups := INST_GRP_SSE4A;
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  Decode_Uo_Ib_Ib(PInst);
  PInst^.InstID := INST_ID_EXTRQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_EXTRQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_SSE4A_INSERTQ_Vo_Uo_Ib_Ib(PInst: PInstruction);
begin
  // INSERTQ  Vo,Uo,Ib,Ib
  PInst^.InstGroups := INST_GRP_SSE4A;
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF2(PInst);
  Decode_Vo_Uo_Ib_Ib(PInst);
  PInst^.InstID := INST_ID_INSERTQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_INSERTQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_SSE4A_EXTRQ_Vo_Uo(PInst: PInstruction);
begin
  // EXTRQ  Vo,Uo
  PInst^.InstGroups := INST_GRP_SSE4A;
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  Decode_Vo_Uo(PInst);
  PInst^.InstID := INST_ID_EXTRQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_EXTRQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_SSE4A_INSERTQ_Vo_Uo(PInst: PInstruction);
begin
  // INSERTQ  Vo,Uo
  PInst^.InstGroups := INST_GRP_SSE4A;
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF2(PInst);
  Decode_Vo_Uo(PInst);
  PInst^.InstID := INST_ID_INSERTQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_INSERTQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;
