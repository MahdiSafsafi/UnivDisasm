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
// The Original Code is MMX.inc
//
// The Initial Developer of the Original Code is Mahdi Safsafi.
// Portions created by Mahdi Safsafi . are Copyright (C) 2015 Mahdi Safsafi.
// All Rights Reserved.
// *************************************************************************** //
//

procedure Decode_MMX_PUNPCKLBW_Pq_Qd(PInst: PInstruction);
begin
  // PUNPCKLBW  Pq,Qd
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_CONVERT or INST_CATEGORY_UNPACK);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qd(PInst);
  PInst^.InstID := INST_ID_PUNPCKLBW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PUNPCKLBW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PUNPCKLWD_Pq_Qd(PInst: PInstruction);
begin
  // PUNPCKLWD  Pq,Qd
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_CONVERT or INST_CATEGORY_UNPACK);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qd(PInst);
  PInst^.InstID := INST_ID_PUNPCKLWD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PUNPCKLWD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PUNPCKLDQ_Pq_Qd(PInst: PInstruction);
begin
  // PUNPCKLDQ  Pq,Qd
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_CONVERT or INST_CATEGORY_UNPACK);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qd(PInst);
  PInst^.InstID := INST_ID_PUNPCKLDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PUNPCKLDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PACKSSWB_Pq_Qq(PInst: PInstruction);
begin
  // PACKSSWB  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_CONVERT or INST_CATEGORY_PACK or
    INST_CATEGORY_SIGNED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PACKSSWB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PACKSSWB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PCMPGTB_Pq_Qq(PInst: PInstruction);
begin
  // PCMPGTB  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_COMPARE or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED or INST_CATEGORY_SIGNED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PCMPGTB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PCMPGTB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PCMPGTW_Pq_Qq(PInst: PInstruction);
begin
  // PCMPGTW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_COMPARE or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED or INST_CATEGORY_SIGNED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PCMPGTW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PCMPGTW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PCMPGTD_Pq_Qq(PInst: PInstruction);
begin
  // PCMPGTD  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_COMPARE or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED or INST_CATEGORY_SIGNED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PCMPGTD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PCMPGTD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PACKUSWB_Pq_Qq(PInst: PInstruction);
begin
  // PACKUSWB  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_CONVERT or INST_CATEGORY_PACK or
    INST_CATEGORY_UNSIGNED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PACKUSWB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PACKUSWB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PUNPCKHBW_Pq_Qq(PInst: PInstruction);
begin
  // PUNPCKHBW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_CONVERT or INST_CATEGORY_UNPACK);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PUNPCKHBW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PUNPCKHBW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PUNPCKHWD_Pq_Qq(PInst: PInstruction);
begin
  // PUNPCKHWD  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_CONVERT or INST_CATEGORY_UNPACK);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PUNPCKHWD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PUNPCKHWD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PUNPCKHDQ_Pq_Qq(PInst: PInstruction);
begin
  // PUNPCKHDQ  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_CONVERT or INST_CATEGORY_UNPACK);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PUNPCKHDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PUNPCKHDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PACKSSDW_Pq_Qq(PInst: PInstruction);
begin
  // PACKSSDW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_CONVERT or INST_CATEGORY_PACK or
    INST_CATEGORY_SIGNED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PACKSSDW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PACKSSDW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_MOVQ_Pq_Eq(PInst: PInstruction);
begin
  // MOVQ  Pq,Eq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := INST_CATEGORY_DATA_TRANSFER;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Eq(PInst);
  PInst^.InstID := INST_ID_MOVQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_MOVQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_MOVD_Pq_Eq(PInst: PInstruction);
begin
  // MOVD  Pq,Eq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := INST_CATEGORY_DATA_TRANSFER;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Eq(PInst);
  PInst^.InstID := INST_ID_MOVD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_MOVD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_MOVQ_Pq_Qq(PInst: PInstruction);
begin
  // MOVQ  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := INST_CATEGORY_DATA_TRANSFER;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_MOVQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_MOVQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PCMPEQB_Pq_Qq(PInst: PInstruction);
begin
  // PCMPEQB  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_COMPARE or INST_CATEGORY_PACKED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PCMPEQB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PCMPEQB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PCMPEQW_Pq_Qq(PInst: PInstruction);
begin
  // PCMPEQW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_COMPARE or INST_CATEGORY_PACKED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PCMPEQW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PCMPEQW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PCMPEQD_Pq_Qq(PInst: PInstruction);
begin
  // PCMPEQD  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_COMPARE or INST_CATEGORY_PACKED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PCMPEQD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PCMPEQD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_EMMS_void(PInst: PInstruction);
begin
  // EMMS  void
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := INST_CATEGORY_STATE_MANAGEMENT;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_EMMS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_EMMS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_MOVQ_Eq_Pq(PInst: PInstruction);
begin
  // MOVQ  Eq,Pq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := INST_CATEGORY_DATA_TRANSFER;
  PInst^.FlagsIndex := $00;
  Decode_Eq_Pq(PInst);
  PInst^.InstID := INST_ID_MOVQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_MOVQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_MOVD_Ed_Pq(PInst: PInstruction);
begin
  // MOVD  Ed,Pq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := INST_CATEGORY_DATA_TRANSFER;
  PInst^.FlagsIndex := $00;
  Decode_Ed_Pq(PInst);
  PInst^.InstID := INST_ID_MOVD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_MOVD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_MOVQ_Qq_Pq(PInst: PInstruction);
begin
  // MOVQ  Qq,Pq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := INST_CATEGORY_DATA_TRANSFER;
  PInst^.FlagsIndex := $00;
  Decode_Qq_Pq(PInst);
  PInst^.InstID := INST_ID_MOVQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_MOVQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSRLW_Pq_Qq(PInst: PInstruction);
begin
  // PSRLW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSRLW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSRLW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSRLD_Pq_Qq(PInst: PInstruction);
begin
  // PSRLD  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSRLD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSRLD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSRLQ_Pq_Qq(PInst: PInstruction);
begin
  // PSRLQ  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSRLQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSRLQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PMULLW_Pq_Qq(PInst: PInstruction);
begin
  // PMULLW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED or INST_CATEGORY_SIGNED or INST_CATEGORY_STORE);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PMULLW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PMULLW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSUBUSB_Pq_Qq(PInst: PInstruction);
begin
  // PSUBUSB  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED or INST_CATEGORY_UNSIGNED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSUBUSB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSUBUSB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSUBUSW_Pq_Qq(PInst: PInstruction);
begin
  // PSUBUSW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED or INST_CATEGORY_UNSIGNED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSUBUSW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSUBUSW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PAND_Pq_Qq(PInst: PInstruction);
begin
  // PAND  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := INST_CATEGORY_LOGICAL;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PAND;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PAND);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PADDUSB_Pq_Qq(PInst: PInstruction);
begin
  // PADDUSB  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED or INST_CATEGORY_UNSIGNED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PADDUSB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PADDUSB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PADDUSW_Pq_Qq(PInst: PInstruction);
begin
  // PADDUSW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED or INST_CATEGORY_UNSIGNED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PADDUSW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PADDUSW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PANDN_Pq_Qq(PInst: PInstruction);
begin
  // PANDN  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := INST_CATEGORY_LOGICAL;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PANDN;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PANDN);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSRAW_Pq_Qq(PInst: PInstruction);
begin
  // PSRAW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSRAW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSRAW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSRAD_Pq_Qq(PInst: PInstruction);
begin
  // PSRAD  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSRAD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSRAD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PMULHW_Pq_Qq(PInst: PInstruction);
begin
  // PMULHW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED or INST_CATEGORY_SIGNED or INST_CATEGORY_STORE);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PMULHW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PMULHW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSUBSB_Pq_Qq(PInst: PInstruction);
begin
  // PSUBSB  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED or INST_CATEGORY_SIGNED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSUBSB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSUBSB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSUBSW_Pq_Qq(PInst: PInstruction);
begin
  // PSUBSW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED or INST_CATEGORY_SIGNED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSUBSW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSUBSW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_POR_Pq_Qq(PInst: PInstruction);
begin
  // POR  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := INST_CATEGORY_LOGICAL;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_POR;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_POR);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PADDSB_Pq_Qq(PInst: PInstruction);
begin
  // PADDSB  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED or INST_CATEGORY_SIGNED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PADDSB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PADDSB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PADDSW_Pq_Qq(PInst: PInstruction);
begin
  // PADDSW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED or INST_CATEGORY_SIGNED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PADDSW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PADDSW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PXOR_Pq_Qq(PInst: PInstruction);
begin
  // PXOR  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := INST_CATEGORY_LOGICAL;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PXOR;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PXOR);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSLLW_Pq_Qq(PInst: PInstruction);
begin
  // PSLLW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSLLW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSLLW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSLLD_Pq_Qq(PInst: PInstruction);
begin
  // PSLLD  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSLLD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSLLD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSLLQ_Pq_Qq(PInst: PInstruction);
begin
  // PSLLQ  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSLLQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSLLQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PMADDWD_Pq_Qq(PInst: PInstruction);
begin
  // PMADDWD  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PMADDWD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PMADDWD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSUBB_Pq_Qq(PInst: PInstruction);
begin
  // PSUBB  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSUBB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSUBB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSUBW_Pq_Qq(PInst: PInstruction);
begin
  // PSUBW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSUBW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSUBW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSUBD_Pq_Qq(PInst: PInstruction);
begin
  // PSUBD  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSUBD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSUBD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PADDB_Pq_Qq(PInst: PInstruction);
begin
  // PADDB  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PADDB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PADDB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PADDW_Pq_Qq(PInst: PInstruction);
begin
  // PADDW  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PADDW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PADDW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PADDD_Pq_Qq(PInst: PInstruction);
begin
  // PADDD  Pq,Qq
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_ARITHMETIC or INST_CATEGORY_INTEGER or
    INST_CATEGORY_PACKED);
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PADDD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PADDD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSRLW_Nq_Ib(PInst: PInstruction);
begin
  // PSRLW  Nq,Ib
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Nq_Ib(PInst);
  PInst^.InstID := INST_ID_PSRLW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSRLW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSRAW_Nq_Ib(PInst: PInstruction);
begin
  // PSRAW  Nq,Ib
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Nq_Ib(PInst);
  PInst^.InstID := INST_ID_PSRAW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSRAW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSLLW_Nq_Ib(PInst: PInstruction);
begin
  // PSLLW  Nq,Ib
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Nq_Ib(PInst);
  PInst^.InstID := INST_ID_PSLLW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSLLW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSRLD_Nq_Ib(PInst: PInstruction);
begin
  // PSRLD  Nq,Ib
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Nq_Ib(PInst);
  PInst^.InstID := INST_ID_PSRLD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSRLD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSRAD_Nq_Ib(PInst: PInstruction);
begin
  // PSRAD  Nq,Ib
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Nq_Ib(PInst);
  PInst^.InstID := INST_ID_PSRAD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSRAD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSLLD_Nq_Ib(PInst: PInstruction);
begin
  // PSLLD  Nq,Ib
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Nq_Ib(PInst);
  PInst^.InstID := INST_ID_PSLLD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSLLD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSRLQ_Nq_Ib(PInst: PInstruction);
begin
  // PSRLQ  Nq,Ib
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Nq_Ib(PInst);
  PInst^.InstID := INST_ID_PSRLQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSRLQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_MMX_PSLLQ_Nq_Ib(PInst: PInstruction);
begin
  // PSLLQ  Nq,Ib
  PInst^.InstGroups := INST_GRP_MMX;
  PInst^.InstCategory := (INST_CATEGORY_PACKED or INST_CATEGORY_SHIFT);
  PInst^.FlagsIndex := $00;
  Decode_Nq_Ib(PInst);
  PInst^.InstID := INST_ID_PSLLQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSLLQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;
