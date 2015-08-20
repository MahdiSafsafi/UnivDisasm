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
// The Original Code is 3DNOW.inc
//
// The Initial Developer of the Original Code is Mahdi Safsafi.
// Portions created by Mahdi Safsafi . are Copyright (C) 2015 Mahdi Safsafi.
// All Rights Reserved.
// *************************************************************************** //
//

procedure Decode_3DNOW_PI2FW_Pq_Qq(PInst: PInstruction);
begin
  // PI2FW  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PI2FW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PI2FW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PI2FD_Pq_Qq(PInst: PInstruction);
begin
  // PI2FD  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PI2FD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PI2FD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PF2IW_Pq_Qq(PInst: PInstruction);
begin
  // PF2IW  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PF2IW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PF2IW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PF2ID_Pq_Qq(PInst: PInstruction);
begin
  // PF2ID  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PF2ID;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PF2ID);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFRCPV_Pq_Qq(PInst: PInstruction);
begin
  // PFRCPV  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFRCPV;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFRCPV);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFRSQRTV_Pq_Qq(PInst: PInstruction);
begin
  // PFRSQRTV  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFRSQRTV;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFRSQRTV);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFNACC_Pq_Qq(PInst: PInstruction);
begin
  // PFNACC  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFNACC;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFNACC);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFPNACC_Pq_Qq(PInst: PInstruction);
begin
  // PFPNACC  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFPNACC;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFPNACC);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFCMPGE_Pq_Qq(PInst: PInstruction);
begin
  // PFCMPGE  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFCMPGE;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFCMPGE);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFMIN_Pq_Qq(PInst: PInstruction);
begin
  // PFMIN  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFMIN;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFMIN);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFRCP_Pq_Qq(PInst: PInstruction);
begin
  // PFRCP  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFRCP;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFRCP);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFRSQRT_Pq_Qq(PInst: PInstruction);
begin
  // PFRSQRT  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFRSQRT;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFRSQRT);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFSUB_Pq_Qq(PInst: PInstruction);
begin
  // PFSUB  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFSUB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFSUB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFADD_Pq_Qq(PInst: PInstruction);
begin
  // PFADD  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFADD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFADD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFCMPGT_Pq_Qq(PInst: PInstruction);
begin
  // PFCMPGT  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFCMPGT;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFCMPGT);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFMAX_Pq_Qq(PInst: PInstruction);
begin
  // PFMAX  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFMAX;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFMAX);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFRCPIT1_Pq_Qq(PInst: PInstruction);
begin
  // PFRCPIT1  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFRCPIT1;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFRCPIT1);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFRSQIT1_Pq_Qq(PInst: PInstruction);
begin
  // PFRSQIT1  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFRSQIT1;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFRSQIT1);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFSUBR_Pq_Qq(PInst: PInstruction);
begin
  // PFSUBR  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFSUBR;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFSUBR);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFACC_Pq_Qq(PInst: PInstruction);
begin
  // PFACC  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFACC;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFACC);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFCMPEQ_Pq_Qq(PInst: PInstruction);
begin
  // PFCMPEQ  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFCMPEQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFCMPEQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFMUL_Pq_Qq(PInst: PInstruction);
begin
  // PFMUL  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFMUL;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFMUL);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PFRCPIT2_Pq_Qq(PInst: PInstruction);
begin
  // PFRCPIT2  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PFRCPIT2;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PFRCPIT2);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PMULHRW_Pq_Qq(PInst: PInstruction);
begin
  // PMULHRW  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PMULHRW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PMULHRW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PSWAPD_Pq_Qq(PInst: PInstruction);
begin
  // PSWAPD  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PSWAPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PSWAPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_3DNOW_PAVGUSB_Pq_Qq(PInst: PInstruction);
begin
  // PAVGUSB  Pq,Qq
  PInst^.InstGroups := INST_GRP_3DNOW;
  PInst^.FlagsIndex := $00;
  Decode_Pq_Qq(PInst);
  PInst^.InstID := INST_ID_PAVGUSB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PAVGUSB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;
