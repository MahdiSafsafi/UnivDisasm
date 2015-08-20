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
// The Original Code is XOP.inc
//
// The Initial Developer of the Original Code is Mahdi Safsafi.
// Portions created by Mahdi Safsafi . are Copyright (C) 2015 Mahdi Safsafi.
// All Rights Reserved.
// *************************************************************************** //
//

procedure Decode_XOP_VFRCZPS_Vx_Wx(PInst: PInstruction);
begin
  // VFRCZPS  Vx,Wx
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vx_Wx(PInst);
  PInst^.InstID := INST_ID_VFRCZPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFRCZPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VFRCZPD_Vx_Wx(PInst: PInstruction);
begin
  // VFRCZPD  Vx,Wx
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vx_Wx(PInst);
  PInst^.InstID := INST_ID_VFRCZPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFRCZPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VFRCZSS_Vo_Wo_d(PInst: PInstruction);
begin
  // VFRCZSS  Vo,Wo.d
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_d(PInst);
  PInst^.InstID := INST_ID_VFRCZSS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFRCZSS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VFRCZSD_Vo_Wo_q(PInst: PInstruction);
begin
  // VFRCZSD  Vo,Wo.q
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_q(PInst);
  PInst^.InstID := INST_ID_VFRCZSD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFRCZSD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPROTB_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPROTB  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  PInst^.InstID := INST_ID_VPROTB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROTB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPROTB_Vo_Wo_Ho(PInst: PInstruction);
begin
  // VPROTB  Vo,Wo,Ho
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ho(PInst);
  PInst^.InstID := INST_ID_VPROTB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROTB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPROTW_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPROTW  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  PInst^.InstID := INST_ID_VPROTW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROTW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPROTW_Vo_Wo_Ho(PInst: PInstruction);
begin
  // VPROTW  Vo,Wo,Ho
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ho(PInst);
  PInst^.InstID := INST_ID_VPROTW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROTW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPROTD_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPROTD  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  PInst^.InstID := INST_ID_VPROTD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROTD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPROTD_Vo_Wo_Ho(PInst: PInstruction);
begin
  // VPROTD  Vo,Wo,Ho
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ho(PInst);
  PInst^.InstID := INST_ID_VPROTD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROTD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPROTQ_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPROTQ  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  PInst^.InstID := INST_ID_VPROTQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROTQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPROTQ_Vo_Wo_Ho(PInst: PInstruction);
begin
  // VPROTQ  Vo,Wo,Ho
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ho(PInst);
  PInst^.InstID := INST_ID_VPROTQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROTQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHLB_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPSHLB  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  PInst^.InstID := INST_ID_VPSHLB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHLB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHLB_Vo_Wo_Ho(PInst: PInstruction);
begin
  // VPSHLB  Vo,Wo,Ho
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ho(PInst);
  PInst^.InstID := INST_ID_VPSHLB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHLB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHLW_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPSHLW  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  PInst^.InstID := INST_ID_VPSHLW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHLW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHLW_Vo_Wo_Ho(PInst: PInstruction);
begin
  // VPSHLW  Vo,Wo,Ho
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ho(PInst);
  PInst^.InstID := INST_ID_VPSHLW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHLW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHLD_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPSHLD  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  PInst^.InstID := INST_ID_VPSHLD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHLD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHLD_Vo_Wo_Ho(PInst: PInstruction);
begin
  // VPSHLD  Vo,Wo,Ho
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ho(PInst);
  PInst^.InstID := INST_ID_VPSHLD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHLD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHLQ_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPSHLQ  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  PInst^.InstID := INST_ID_VPSHLQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHLQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHLQ_Vo_Wo_Ho(PInst: PInstruction);
begin
  // VPSHLQ  Vo,Wo,Ho
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ho(PInst);
  PInst^.InstID := INST_ID_VPSHLQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHLQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHAB_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPSHAB  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  PInst^.InstID := INST_ID_VPSHAB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHAB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHAB_Vo_Wo_Ho(PInst: PInstruction);
begin
  // VPSHAB  Vo,Wo,Ho
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ho(PInst);
  PInst^.InstID := INST_ID_VPSHAB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHAB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHAW_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPSHAW  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  PInst^.InstID := INST_ID_VPSHAW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHAW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHAW_Vo_Wo_Ho(PInst: PInstruction);
begin
  // VPSHAW  Vo,Wo,Ho
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ho(PInst);
  PInst^.InstID := INST_ID_VPSHAW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHAW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHAD_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPSHAD  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  PInst^.InstID := INST_ID_VPSHAD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHAD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHAD_Vo_Wo_Ho(PInst: PInstruction);
begin
  // VPSHAD  Vo,Wo,Ho
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ho(PInst);
  PInst^.InstID := INST_ID_VPSHAD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHAD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHAQ_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPSHAQ  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  PInst^.InstID := INST_ID_VPSHAQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHAQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPSHAQ_Vo_Wo_Ho(PInst: PInstruction);
begin
  // VPSHAQ  Vo,Wo,Ho
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ho(PInst);
  PInst^.InstID := INST_ID_VPSHAQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHAQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHADDBW_Vo_Wo(PInst: PInstruction);
begin
  // VPHADDBW  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHADDBW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHADDBW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHADDBD_Vo_Wo(PInst: PInstruction);
begin
  // VPHADDBD  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHADDBD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHADDBD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHADDBQ_Vo_Wo(PInst: PInstruction);
begin
  // VPHADDBQ  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHADDBQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHADDBQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHADDWD_Vo_Wo(PInst: PInstruction);
begin
  // VPHADDWD  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHADDWD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHADDWD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHADDWQ_Vo_Wo(PInst: PInstruction);
begin
  // VPHADDWQ  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHADDWQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHADDWQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHADDDQ_Vo_Wo(PInst: PInstruction);
begin
  // VPHADDDQ  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHADDDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHADDDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHADDUBWD_Vo_Wo(PInst: PInstruction);
begin
  // VPHADDUBWD  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHADDUBWD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHADDUBWD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHADDUBD_Vo_Wo(PInst: PInstruction);
begin
  // VPHADDUBD  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHADDUBD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHADDUBD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHADDUBQ_Vo_Wo(PInst: PInstruction);
begin
  // VPHADDUBQ  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHADDUBQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHADDUBQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHADDUWD_Vo_Wo(PInst: PInstruction);
begin
  // VPHADDUWD  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHADDUWD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHADDUWD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHADDUWQ_Vo_Wo(PInst: PInstruction);
begin
  // VPHADDUWQ  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHADDUWQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHADDUWQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHADDUDQ_Vo_Wo(PInst: PInstruction);
begin
  // VPHADDUDQ  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHADDUDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHADDUDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHSUBBW_Vo_Wo(PInst: PInstruction);
begin
  // VPHSUBBW  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHSUBBW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHSUBBW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHSUBWD_Vo_Wo(PInst: PInstruction);
begin
  // VPHSUBWD  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHSUBWD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHSUBWD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPHSUBDQ_Vo_Wo(PInst: PInstruction);
begin
  // VPHSUBDQ  Vo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo(PInst);
  PInst^.InstID := INST_ID_VPHSUBDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPHSUBDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPMACSSWW_Vo_Ho_Wo_Lo(PInst: PInstruction);
begin
  // VPMACSSWW  Vo,Ho,Wo,Lo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo_Lo(PInst);
  PInst^.InstID := INST_ID_VPMACSSWW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMACSSWW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPMACSSWD_Vo_Ho_Wo_Lo(PInst: PInstruction);
begin
  // VPMACSSWD  Vo,Ho,Wo,Lo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo_Lo(PInst);
  PInst^.InstID := INST_ID_VPMACSSWD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMACSSWD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPMACSSDQL_Vo_Ho_Wo_Lo(PInst: PInstruction);
begin
  // VPMACSSDQL  Vo,Ho,Wo,Lo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo_Lo(PInst);
  PInst^.InstID := INST_ID_VPMACSSDQL;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMACSSDQL);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPMACSSDD_Vo_Ho_Wo_Lo(PInst: PInstruction);
begin
  // VPMACSSDD  Vo,Ho,Wo,Lo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo_Lo(PInst);
  PInst^.InstID := INST_ID_VPMACSSDD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMACSSDD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPMACSSDQH_Vo_Ho_Wo_Lo(PInst: PInstruction);
begin
  // VPMACSSDQH  Vo,Ho,Wo,Lo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo_Lo(PInst);
  PInst^.InstID := INST_ID_VPMACSSDQH;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMACSSDQH);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPMACSWW_Vo_Ho_Wo_Lo(PInst: PInstruction);
begin
  // VPMACSWW  Vo,Ho,Wo,Lo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo_Lo(PInst);
  PInst^.InstID := INST_ID_VPMACSWW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMACSWW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPMACSWD_Vo_Ho_Wo_Lo(PInst: PInstruction);
begin
  // VPMACSWD  Vo,Ho,Wo,Lo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo_Lo(PInst);
  PInst^.InstID := INST_ID_VPMACSWD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMACSWD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPMACSDQL_Vo_Ho_Wo_Lo(PInst: PInstruction);
begin
  // VPMACSDQL  Vo,Ho,Wo,Lo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo_Lo(PInst);
  PInst^.InstID := INST_ID_VPMACSDQL;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMACSDQL);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPMACSDD_Vo_Ho_Wo_Lo(PInst: PInstruction);
begin
  // VPMACSDD  Vo,Ho,Wo,Lo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo_Lo(PInst);
  PInst^.InstID := INST_ID_VPMACSDD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMACSDD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPMACSDQH_Vo_Ho_Wo_Lo(PInst: PInstruction);
begin
  // VPMACSDQH  Vo,Ho,Wo,Lo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo_Lo(PInst);
  PInst^.InstID := INST_ID_VPMACSDQH;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMACSDQH);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPCMOV_Vx_Hx_Lx_Wx(PInst: PInstruction);
begin
  // VPCMOV  Vx,Hx,Lx,Wx
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vx_Hx_Lx_Wx(PInst);
  PInst^.InstID := INST_ID_VPCMOV;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPCMOV);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPCMOV_Vx_Hx_Wx_Lx(PInst: PInstruction);
begin
  // VPCMOV  Vx,Hx,Wx,Lx
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vx_Hx_Wx_Lx(PInst);
  PInst^.InstID := INST_ID_VPCMOV;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPCMOV);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPPERM_Vo_Ho_Lo_Wo(PInst: PInstruction);
begin
  // VPPERM  Vo,Ho,Lo,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Lo_Wo(PInst);
  PInst^.InstID := INST_ID_VPPERM;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPPERM);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPPERM_Vo_Ho_Wo_Lo(PInst: PInstruction);
begin
  // VPPERM  Vo,Ho,Wo,Lo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo_Lo(PInst);
  PInst^.InstID := INST_ID_VPPERM;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPPERM);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPMADCSSWD_Vo_Ho_Wo_Lo(PInst: PInstruction);
begin
  // VPMADCSSWD  Vo,Ho,Wo,Lo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo_Lo(PInst);
  PInst^.InstID := INST_ID_VPMADCSSWD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMADCSSWD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPMADCSWD_Vo_Ho_Wo_Lo(PInst: PInstruction);
begin
  // VPMADCSWD  Vo,Ho,Wo,Lo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo_Lo(PInst);
  PInst^.InstID := INST_ID_VPMADCSWD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMADCSWD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPROTB_Vo_Wo_Ib(PInst: PInstruction);
begin
  // VPROTB  Vo,Wo,Ib
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ib(PInst);
  PInst^.InstID := INST_ID_VPROTB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROTB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPROTW_Vo_Wo_Ib(PInst: PInstruction);
begin
  // VPROTW  Vo,Wo,Ib
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ib(PInst);
  PInst^.InstID := INST_ID_VPROTW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROTW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPROTD_Vo_Wo_Ib(PInst: PInstruction);
begin
  // VPROTD  Vo,Wo,Ib
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ib(PInst);
  PInst^.InstID := INST_ID_VPROTD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROTD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPROTQ_Vo_Wo_Ib(PInst: PInstruction);
begin
  // VPROTQ  Vo,Wo,Ib
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Wo_Ib(PInst);
  PInst^.InstID := INST_ID_VPROTQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROTQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPCOMccB_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPCOMccB  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  DecodeImmAsOpExt(PInst);
  PInst^.InstID := INSTS_ID_VPCOMccB_Array[PInst^.OpImmExt and $07];
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEMS_VPCOMccB_Array[PInst^.OpImmExt and $07]);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPCOMccW_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPCOMccW  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  DecodeImmAsOpExt(PInst);
  PInst^.InstID := INSTS_ID_VPCOMccW_Array[PInst^.OpImmExt and $07];
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEMS_VPCOMccW_Array[PInst^.OpImmExt and $07]);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPCOMccD_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPCOMccD  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  DecodeImmAsOpExt(PInst);
  PInst^.InstID := INSTS_ID_VPCOMccD_Array[PInst^.OpImmExt and $07];
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEMS_VPCOMccD_Array[PInst^.OpImmExt and $07]);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPCOMccQ_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPCOMccQ  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  DecodeImmAsOpExt(PInst);
  PInst^.InstID := INSTS_ID_VPCOMccQ_Array[PInst^.OpImmExt and $07];
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEMS_VPCOMccQ_Array[PInst^.OpImmExt and $07]);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPCOMccUB_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPCOMccUB  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  DecodeImmAsOpExt(PInst);
  PInst^.InstID := INSTS_ID_VPCOMccUB_Array[PInst^.OpImmExt and $07];
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEMS_VPCOMccUB_Array[PInst^.OpImmExt and $07]);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPCOMccUW_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPCOMccUW  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  DecodeImmAsOpExt(PInst);
  PInst^.InstID := INSTS_ID_VPCOMccUW_Array[PInst^.OpImmExt and $07];
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEMS_VPCOMccUW_Array[PInst^.OpImmExt and $07]);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPCOMccUD_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPCOMccUD  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  DecodeImmAsOpExt(PInst);
  PInst^.InstID := INSTS_ID_VPCOMccUD_Array[PInst^.OpImmExt and $07];
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEMS_VPCOMccUD_Array[PInst^.OpImmExt and $07]);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_XOP_VPCOMccUQ_Vo_Ho_Wo(PInst: PInstruction);
begin
  // VPCOMccUQ  Vo,Ho,Wo
  PInst^.InstGroups := INST_GRP_XOP;
  PInst^.FlagsIndex := $00;
  Decode_Vo_Ho_Wo(PInst);
  DecodeImmAsOpExt(PInst);
  PInst^.InstID := INSTS_ID_VPCOMccUQ_Array[PInst^.OpImmExt and $07];
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEMS_VPCOMccUQ_Array[PInst^.OpImmExt and $07]);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;
