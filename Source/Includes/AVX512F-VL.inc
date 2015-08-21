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
// The Original Code is AVX512F-VL.inc
//
// The Initial Developer of the Original Code is Mahdi Safsafi.
// Portions created by Mahdi Safsafi . are Copyright (C) 2015 Mahdi Safsafi.
// All Rights Reserved.
// *************************************************************************** //
//

procedure Decode_AVX512F_VL_VMOVUPD_Vn_K_z_Wn(PInst: PInstruction);
begin
  // VMOVUPD  Vn{K}{z},Wn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Vn_K_z_Wn(PInst);
  PInst^.InstID := INST_ID_VMOVUPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVUPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVUPS_Vn_K_z_Wn(PInst: PInstruction);
begin
  // VMOVUPS  Vn{K}{z},Wn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Vn_K_z_Wn(PInst);
  PInst^.InstID := INST_ID_VMOVUPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVUPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVUPD_Wn_K_z_Vn(PInst: PInstruction);
begin
  // VMOVUPD  Wn{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Wn_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VMOVUPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVUPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVUPS_Wn_K_z_Vn(PInst: PInstruction);
begin
  // VMOVUPS  Wn{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Wn_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VMOVUPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVUPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVDDUP_Vo_K_z_Wo_q(PInst: PInstruction);
begin
  // VMOVDDUP  Vo{K}{z},Wo.q
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF2(PInst);
  PInst^.SetTuple4VL(TT_DUP);
  Decode_Vo_K_z_Wo_q(PInst);
  PInst^.InstID := INST_ID_VMOVDDUP;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVDDUP);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVDDUP_Vy_K_z_Wy(PInst: PInstruction);
begin
  // VMOVDDUP  Vy{K}{z},Wy
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF2(PInst);
  PInst^.SetTuple4VL(TT_DUP);
  Decode_Vy_K_z_Wy(PInst);
  PInst^.InstID := INST_ID_VMOVDDUP;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVDDUP);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVDDUP_Vz_K_z_Wz(PInst: PInstruction);
begin
  // VMOVDDUP  Vz{K}{z},Wz
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF2(PInst);
  PInst^.SetTuple4VL(TT_DUP);
  Decode_Vz_K_z_Wz(PInst);
  PInst^.InstID := INST_ID_VMOVDDUP;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVDDUP);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVSLDUP_Vn_K_z_Wn(PInst: PInstruction);
begin
  // VMOVSLDUP  Vn{K}{z},Wn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Vn_K_z_Wn(PInst);
  PInst^.InstID := INST_ID_VMOVSLDUP;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVSLDUP);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VUNPCKLPD_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VUNPCKLPD  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VUNPCKLPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VUNPCKLPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VUNPCKLPS_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VUNPCKLPS  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VUNPCKLPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VUNPCKLPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VUNPCKHPD_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VUNPCKHPD  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VUNPCKHPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VUNPCKHPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VUNPCKHPS_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VUNPCKHPS  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VUNPCKHPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VUNPCKHPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVSHDUP_Vn_K_z_Wn(PInst: PInstruction);
begin
  // VMOVSHDUP  Vn{K}{z},Wn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Vn_K_z_Wn(PInst);
  PInst^.InstID := INST_ID_VMOVSHDUP;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVSHDUP);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVAPD_Vn_K_z_Wn(PInst: PInstruction);
begin
  // VMOVAPD  Vn{K}{z},Wn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Vn_K_z_Wn(PInst);
  PInst^.InstID := INST_ID_VMOVAPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVAPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVAPS_Vn_K_z_Wn(PInst: PInstruction);
begin
  // VMOVAPS  Vn{K}{z},Wn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Vn_K_z_Wn(PInst);
  PInst^.InstID := INST_ID_VMOVAPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVAPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVAPD_Wn_K_z_Vn(PInst: PInstruction);
begin
  // VMOVAPD  Wn{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Wn_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VMOVAPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVAPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVAPS_Wn_K_z_Vn(PInst: PInstruction);
begin
  // VMOVAPS  Wn{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Wn_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VMOVAPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVAPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVNTPD_Mn_Vn(PInst: PInstruction);
begin
  // VMOVNTPD  Mn,Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Mn_Vn(PInst);
  PInst^.InstID := INST_ID_VMOVNTPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVNTPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVNTPS_Mn_Vn(PInst: PInstruction);
begin
  // VMOVNTPS  Mn,Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Mn_Vn(PInst);
  PInst^.InstID := INST_ID_VMOVNTPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVNTPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VSQRTPD_Vn_K_z_B64_Wn_er(PInst: PInstruction);
begin
  // VSQRTPD  Vn{K}{z},B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VSQRTPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VSQRTPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VSQRTPS_Vn_K_z_B32_Wn_er(PInst: PInstruction);
begin
  // VSQRTPS  Vn{K}{z},B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VSQRTPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VSQRTPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VADDPD_Vn_K_z_Hn_B64_Wn_er(PInst: PInstruction);
begin
  // VADDPD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VADDPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VADDPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VADDPS_Vn_K_z_Hn_B32_Wn_er(PInst: PInstruction);
begin
  // VADDPS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VADDPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VADDPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMULPD_Vn_K_z_Hn_B64_Wn_er(PInst: PInstruction);
begin
  // VMULPD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VMULPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMULPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMULPS_Vn_K_z_Hn_B32_Wn_er(PInst: PInstruction);
begin
  // VMULPS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VMULPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMULPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTPD2PS_Vh_K_z_B64_Wn_er(PInst: PInstruction);
begin
  // VCVTPD2PS  Vh{K}{z},B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vh_K_z_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VCVTPD2PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTPD2PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTPS2PD_Vn_K_z_B32_Wh_sae(PInst: PInstruction);
begin
  // VCVTPS2PD  Vn{K}{z},B32(Wh){sae}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_HV);
  Decode_Vn_K_z_B32_Wh_sae(PInst);
  PInst^.InstID := INST_ID_VCVTPS2PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTPS2PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTPS2DQ_Vn_K_z_B32_Wn_er(PInst: PInstruction);
begin
  // VCVTPS2DQ  Vn{K}{z},B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VCVTPS2DQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTPS2DQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTTPS2DQ_Vn_K_z_B32_Wn_sae(PInst: PInstruction);
begin
  // VCVTTPS2DQ  Vn{K}{z},B32(Wn){sae}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn_sae(PInst);
  PInst^.InstID := INST_ID_VCVTTPS2DQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTTPS2DQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTDQ2PS_Vn_K_z_B32_Wn_er(PInst: PInstruction);
begin
  // VCVTDQ2PS  Vn{K}{z},B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VCVTDQ2PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTDQ2PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VSUBPD_Vn_K_z_Hn_B64_Wn_er(PInst: PInstruction);
begin
  // VSUBPD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VSUBPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VSUBPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VSUBPS_Vn_K_z_Hn_B32_Wn_er(PInst: PInstruction);
begin
  // VSUBPS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VSUBPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VSUBPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMINPD_Vn_K_z_Hn_B64_Wn_sae(PInst: PInstruction);
begin
  // VMINPD  Vn{K}{z},Hn,B64(Wn){sae}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_sae(PInst);
  PInst^.InstID := INST_ID_VMINPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMINPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMINPS_Vn_K_z_Hn_B32_Wn_sae(PInst: PInstruction);
begin
  // VMINPS  Vn{K}{z},Hn,B32(Wn){sae}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_sae(PInst);
  PInst^.InstID := INST_ID_VMINPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMINPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VDIVPD_Vn_K_z_Hn_B64_Wn_er(PInst: PInstruction);
begin
  // VDIVPD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VDIVPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VDIVPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VDIVPS_Vn_K_z_Hn_B32_Wn_er(PInst: PInstruction);
begin
  // VDIVPS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VDIVPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VDIVPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMAXPD_Vn_K_z_Hn_B64_Wn_sae(PInst: PInstruction);
begin
  // VMAXPD  Vn{K}{z},Hn,B64(Wn){sae}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_sae(PInst);
  PInst^.InstID := INST_ID_VMAXPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMAXPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMAXPS_Vn_K_z_Hn_B32_Wn_sae(PInst: PInstruction);
begin
  // VMAXPS  Vn{K}{z},Hn,B32(Wn){sae}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_sae(PInst);
  PInst^.InstID := INST_ID_VMAXPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMAXPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPUNPCKLDQ_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPUNPCKLDQ  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPUNPCKLDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPUNPCKLDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPCMPGTD_rK_K_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPCMPGTD  rK{K},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_rK_K_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPCMPGTD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPCMPGTD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPUNPCKHDQ_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPUNPCKHDQ  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPUNPCKHDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPUNPCKHDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPUNPCKLQDQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPUNPCKLQDQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPUNPCKLQDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPUNPCKLQDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPUNPCKHQDQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPUNPCKHQDQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPUNPCKHQDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPUNPCKHQDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVDQA64_Vn_K_z_Wn(PInst: PInstruction);
begin
  // VMOVDQA64  Vn{K}{z},Wn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Vn_K_z_Wn(PInst);
  PInst^.InstID := INST_ID_VMOVDQA64;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVDQA64);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVDQU64_Vn_K_z_Wn(PInst: PInstruction);
begin
  // VMOVDQU64  Vn{K}{z},Wn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Vn_K_z_Wn(PInst);
  PInst^.InstID := INST_ID_VMOVDQU64;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVDQU64);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVDQA32_Vn_K_z_Wn(PInst: PInstruction);
begin
  // VMOVDQA32  Vn{K}{z},Wn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Vn_K_z_Wn(PInst);
  PInst^.InstID := INST_ID_VMOVDQA32;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVDQA32);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVDQU32_Vn_K_z_Wn(PInst: PInstruction);
begin
  // VMOVDQU32  Vn{K}{z},Wn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Vn_K_z_Wn(PInst);
  PInst^.InstID := INST_ID_VMOVDQU32;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVDQU32);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSHUFD_Vn_K_z_B32_Wn_Ib(PInst: PInstruction);
begin
  // VPSHUFD  Vn{K}{z},B32(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPSHUFD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSHUFD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPCMPEQD_rK_K_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPCMPEQD  rK{K},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_rK_K_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPCMPEQD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPCMPEQD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTTPD2UDQ_Vh_K_z_B64_Wn_sae(PInst: PInstruction);
begin
  // VCVTTPD2UDQ  Vh{K}{z},B64(Wn){sae}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vh_K_z_B64_Wn_sae(PInst);
  PInst^.InstID := INST_ID_VCVTTPD2UDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTTPD2UDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTTPS2UDQ_Vn_K_z_B32_Wn_sae(PInst: PInstruction);
begin
  // VCVTTPS2UDQ  Vn{K}{z},B32(Wn){sae}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn_sae(PInst);
  PInst^.InstID := INST_ID_VCVTTPS2UDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTTPS2UDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTPD2UDQ_Vh_K_z_B64_Wn_er(PInst: PInstruction);
begin
  // VCVTPD2UDQ  Vh{K}{z},B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vh_K_z_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VCVTPD2UDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTPD2UDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTPS2UDQ_Vn_K_z_B32_Wn_er(PInst: PInstruction);
begin
  // VCVTPS2UDQ  Vn{K}{z},B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VCVTPS2UDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTPS2UDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTUDQ2PS_Vn_K_z_B32_Wn_er(PInst: PInstruction);
begin
  // VCVTUDQ2PS  Vn{K}{z},B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF2(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VCVTUDQ2PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTUDQ2PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTUDQ2PD_Vn_K_z_B32_Wh_er(PInst: PInstruction);
begin
  // VCVTUDQ2PD  Vn{K}{z},B32(Wh){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_HV);
  Decode_Vn_K_z_B32_Wh_er(PInst);
  PInst^.InstID := INST_ID_VCVTUDQ2PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTUDQ2PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVDQA64_Wn_K_z_Vn(PInst: PInstruction);
begin
  // VMOVDQA64  Wn{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Wn_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VMOVDQA64;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVDQA64);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVDQU64_Wn_K_z_Vn(PInst: PInstruction);
begin
  // VMOVDQU64  Wn{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Wn_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VMOVDQU64;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVDQU64);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVDQA32_Wn_K_z_Vn(PInst: PInstruction);
begin
  // VMOVDQA32  Wn{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Wn_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VMOVDQA32;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVDQA32);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVDQU32_Wn_K_z_Vn(PInst: PInstruction);
begin
  // VMOVDQU32  Wn{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Wn_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VMOVDQU32;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVDQU32);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCMPccPD_rK_K_Hn_B64_Wn_sae(PInst: PInstruction);
begin
  // VCMPccPD  rK{K},Hn,B64(Wn){sae}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_rK_K_Hn_B64_Wn_sae(PInst);
  DecodeImmAsOpExt(PInst);
  PInst^.InstID := INSTS_ID_VCMPccPD_Array
    [PInst^.OpImmExt and PInst^.T2N2OpImmMask];
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEMS_VCMPccPD_Array[PInst^.OpImmExt and
    PInst^.T2N2OpImmMask]);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCMPccPS_rK_K_Hn_B32_Wn_sae(PInst: PInstruction);
begin
  // VCMPccPS  rK{K},Hn,B32(Wn){sae}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_rK_K_Hn_B32_Wn_sae(PInst);
  DecodeImmAsOpExt(PInst);
  PInst^.InstID := INSTS_ID_VCMPccPS_Array
    [PInst^.OpImmExt and PInst^.T2N2OpImmMask];
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEMS_VCMPccPS_Array[PInst^.OpImmExt and
    PInst^.T2N2OpImmMask]);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VSHUFPD_Vn_K_z_Hn_B64_Wn_Ib(PInst: PInstruction);
begin
  // VSHUFPD  Vn{K}{z},Hn,B64(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VSHUFPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VSHUFPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VSHUFPS_Vn_K_z_Hn_B32_Wn_Ib(PInst: PInstruction);
begin
  // VSHUFPS  Vn{K}{z},Hn,B32(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VSHUFPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VSHUFPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSRLD_Vn_K_z_Hn_Wo_b(PInst: PInstruction);
begin
  // VPSRLD  Vn{K}{z},Hn,Wo.b
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_M128);
  Decode_Vn_K_z_Hn_Wo_b(PInst);
  PInst^.InstID := INST_ID_VPSRLD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSRLD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSRLQ_Vn_K_z_Hn_Wo_b(PInst: PInstruction);
begin
  // VPSRLQ  Vn{K}{z},Hn,Wo.b
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_M128);
  Decode_Vn_K_z_Hn_Wo_b(PInst);
  PInst^.InstID := INST_ID_VPSRLQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSRLQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPADDQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPADDQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPADDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPADDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPANDQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPANDQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPANDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPANDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPANDD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPANDD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPANDD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPANDD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPANDNQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPANDNQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPANDNQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPANDNQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPANDND_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPANDND  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPANDND;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPANDND);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSRAQ_Vn_K_z_Hn_Wo_b(PInst: PInstruction);
begin
  // VPSRAQ  Vn{K}{z},Hn,Wo.b
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_M128);
  Decode_Vn_K_z_Hn_Wo_b(PInst);
  PInst^.InstID := INST_ID_VPSRAQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSRAQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSRAD_Vn_K_z_Hn_Wo_b(PInst: PInstruction);
begin
  // VPSRAD  Vn{K}{z},Hn,Wo.b
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_M128);
  Decode_Vn_K_z_Hn_Wo_b(PInst);
  PInst^.InstID := INST_ID_VPSRAD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSRAD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTTPD2DQ_Vh_K_z_B64_Wn_sae(PInst: PInstruction);
begin
  // VCVTTPD2DQ  Vh{K}{z},B64(Wn){sae}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vh_K_z_B64_Wn_sae(PInst);
  PInst^.InstID := INST_ID_VCVTTPD2DQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTTPD2DQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTPD2DQ_Vh_K_z_B64_Wn_er(PInst: PInstruction);
begin
  // VCVTPD2DQ  Vh{K}{z},B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF2(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vh_K_z_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VCVTPD2DQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTPD2DQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTDQ2PD_Vn_K_z_B32_Wh_er(PInst: PInstruction);
begin
  // VCVTDQ2PD  Vn{K}{z},B32(Wh){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_HV);
  Decode_Vn_K_z_B32_Wh_er(PInst);
  PInst^.InstID := INST_ID_VCVTDQ2PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTDQ2PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVNTDQ_Mn_Vn(PInst: PInstruction);
begin
  // VMOVNTDQ  Mn,Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Mn_Vn(PInst);
  PInst^.InstID := INST_ID_VMOVNTDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVNTDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPORQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPORQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPORQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPORQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPORD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPORD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPORD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPORD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPXORQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPXORQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPXORQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPXORQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPXORD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPXORD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPXORD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPXORD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSLLD_Vn_K_z_Hn_Wo_b(PInst: PInstruction);
begin
  // VPSLLD  Vn{K}{z},Hn,Wo.b
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_M128);
  Decode_Vn_K_z_Hn_Wo_b(PInst);
  PInst^.InstID := INST_ID_VPSLLD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSLLD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSLLQ_Vn_K_z_Hn_Wo_b(PInst: PInstruction);
begin
  // VPSLLQ  Vn{K}{z},Hn,Wo.b
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_M128);
  Decode_Vn_K_z_Hn_Wo_b(PInst);
  PInst^.InstID := INST_ID_VPSLLQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSLLQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMULUDQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPMULUDQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPMULUDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMULUDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSUBD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPSUBD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPSUBD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSUBD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSUBQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPSUBQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPSUBQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSUBQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPADDD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPADDD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPADDD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPADDD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMILPS_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPERMILPS  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPERMILPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMILPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMILPD_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPERMILPD  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPERMILPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMILPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVUSDB_Wf_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVUSDB  Wf{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_QVM);
  Decode_Wf_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVUSDB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVUSDB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVUSQB_We_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVUSQB  We{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_OVM);
  Decode_We_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVUSQB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVUSQB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTPH2PS_Vn_K_z_Wh_sae(PInst: PInstruction);
begin
  // VCVTPH2PS  Vn{K}{z},Wh{sae}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.InstCategory := (INST_CATEGORY_16_BIT or INST_CATEGORY_CONVERT or
    INST_CATEGORY_FLOATING_POINT or INST_CATEGORY_SINGLE_PRECISION);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_HVM);
  Decode_Vn_K_z_Wh_sae(PInst);
  PInst^.InstID := INST_ID_VCVTPH2PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTPH2PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVUSDW_Wh_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVUSDW  Wh{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_HVM);
  Decode_Wh_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVUSDW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVUSDW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPRORVQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPRORVQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPRORVQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPRORVQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPRORVD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPRORVD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPRORVD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPRORVD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVUSQW_Wf_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVUSQW  Wf{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_QVM);
  Decode_Wf_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVUSQW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVUSQW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPROLVQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPROLVQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPROLVQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROLVQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPROLVD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPROLVD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPROLVD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROLVD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVUSQD_Wh_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVUSQD  Wh{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_HVM);
  Decode_Wh_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVUSQD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVUSQD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMPD_Vu_K_z_Hu_B64_Wu(PInst: PInstruction);
begin
  // VPERMPD  Vu{K}{z},Hu,B64(Wu)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL256(TT_FV);
  PInst^.SetTuple4VL512(TT_FV);
  Decode_Vu_K_z_Hu_B64_Wu(PInst);
  PInst^.InstID := INST_ID_VPERMPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMPS_Vu_K_z_Hu_B32_Wu(PInst: PInstruction);
begin
  // VPERMPS  Vu{K}{z},Hu,B32(Wu)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL256(TT_FV);
  PInst^.SetTuple4VL512(TT_FV);
  Decode_Vu_K_z_Hu_B32_Wu(PInst);
  PInst^.InstID := INST_ID_VPERMPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VBROADCASTSS_Vn_K_z_Wo_d(PInst: PInstruction);
begin
  // VBROADCASTSS  Vn{K}{z},Wo.d
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_T1S);
  Decode_Vn_K_z_Wo_d(PInst);
  PInst^.InstID := INST_ID_VBROADCASTSS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VBROADCASTSS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VBROADCASTSD_Vu_K_z_Wo_q(PInst: PInstruction);
begin
  // VBROADCASTSD  Vu{K}{z},Wo.q
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL512(TT_T1S);
  PInst^.SetTuple4VL256(TT_T1S);
  Decode_Vu_K_z_Wo_q(PInst);
  PInst^.InstID := INST_ID_VBROADCASTSD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VBROADCASTSD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VBROADCASTF32X4_Vu_K_z_Mo(PInst: PInstruction);
begin
  // VBROADCASTF32X4  Vu{K}{z},Mo
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL256(TT_T4);
  PInst^.SetTuple4VL512(TT_T4);
  Decode_Vu_K_z_Mo(PInst);
  PInst^.InstID := INST_ID_VBROADCASTF32X4;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VBROADCASTF32X4);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPABSD_Vn_K_z_B32_Wn(PInst: PInstruction);
begin
  // VPABSD  Vn{K}{z},B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPABSD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPABSD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPABSQ_Vn_K_z_B64_Wn(PInst: PInstruction);
begin
  // VPABSQ  Vn{K}{z},B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPABSQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPABSQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVSDB_Wf_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVSDB  Wf{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_QVM);
  Decode_Wf_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVSDB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVSDB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVSXBD_Vn_K_z_Wf(PInst: PInstruction);
begin
  // VPMOVSXBD  Vn{K}{z},Wf
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_QVM);
  Decode_Vn_K_z_Wf(PInst);
  PInst^.InstID := INST_ID_VPMOVSXBD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVSXBD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVSQB_We_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVSQB  We{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_OVM);
  Decode_We_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVSQB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVSQB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVSXBQ_Vn_K_z_We(PInst: PInstruction);
begin
  // VPMOVSXBQ  Vn{K}{z},We
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_OVM);
  Decode_Vn_K_z_We(PInst);
  PInst^.InstID := INST_ID_VPMOVSXBQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVSXBQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVSDW_Wh_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVSDW  Wh{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_HVM);
  Decode_Wh_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVSDW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVSDW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVSXWD_Vn_K_z_Wh(PInst: PInstruction);
begin
  // VPMOVSXWD  Vn{K}{z},Wh
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_HVM);
  Decode_Vn_K_z_Wh(PInst);
  PInst^.InstID := INST_ID_VPMOVSXWD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVSXWD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVSQW_Wf_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVSQW  Wf{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_QVM);
  Decode_Wf_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVSQW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVSQW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVSXWQ_Vn_K_z_Wf(PInst: PInstruction);
begin
  // VPMOVSXWQ  Vn{K}{z},Wf
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_QVM);
  Decode_Vn_K_z_Wf(PInst);
  PInst^.InstID := INST_ID_VPMOVSXWQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVSXWQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVSXDQ_Vn_K_z_Wh(PInst: PInstruction);
begin
  // VPMOVSXDQ  Vn{K}{z},Wh
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_HVM);
  Decode_Vn_K_z_Wh(PInst);
  PInst^.InstID := INST_ID_VPMOVSXDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVSXDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVSQD_Wh_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVSQD  Wh{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_HVM);
  Decode_Wh_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVSQD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVSQD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPTESTMQ_rK_K_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPTESTMQ  rK{K},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_rK_K_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPTESTMQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPTESTMQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPTESTNMQ_rK_K_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPTESTNMQ  rK{K},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_rK_K_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPTESTNMQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPTESTNMQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPTESTMD_rK_K_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPTESTMD  rK{K},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_rK_K_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPTESTMD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPTESTMD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPTESTNMD_rK_K_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPTESTNMD  rK{K},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_rK_K_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPTESTNMD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPTESTNMD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMULDQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPMULDQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPMULDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMULDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPCMPEQQ_rK_K_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPCMPEQQ  rK{K},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_rK_K_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPCMPEQQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPCMPEQQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VMOVNTDQA_Vn_Mn(PInst: PInstruction);
begin
  // VMOVNTDQA  Vn,Mn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FVM);
  Decode_Vn_Mn(PInst);
  PInst^.InstID := INST_ID_VMOVNTDQA;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VMOVNTDQA);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VSCALEFPD_Vn_K_z_Hn_B64_Wn_er(PInst: PInstruction);
begin
  // VSCALEFPD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VSCALEFPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VSCALEFPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VSCALEFPS_Vn_K_z_Hn_B32_Wn_er(PInst: PInstruction);
begin
  // VSCALEFPS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VSCALEFPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VSCALEFPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVDB_Wf_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVDB  Wf{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_QVM);
  Decode_Wf_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVDB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVDB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVZXBD_Vn_K_z_Wf(PInst: PInstruction);
begin
  // VPMOVZXBD  Vn{K}{z},Wf
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_QVM);
  Decode_Vn_K_z_Wf(PInst);
  PInst^.InstID := INST_ID_VPMOVZXBD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVZXBD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVQB_We_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVQB  We{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_OVM);
  Decode_We_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVQB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVQB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVZXBQ_Vn_K_z_We(PInst: PInstruction);
begin
  // VPMOVZXBQ  Vn{K}{z},We
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_OVM);
  Decode_Vn_K_z_We(PInst);
  PInst^.InstID := INST_ID_VPMOVZXBQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVZXBQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVDW_Wh_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVDW  Wh{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_HVM);
  Decode_Wh_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVDW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVDW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVZXWD_Vn_K_z_Wh(PInst: PInstruction);
begin
  // VPMOVZXWD  Vn{K}{z},Wh
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_HVM);
  Decode_Vn_K_z_Wh(PInst);
  PInst^.InstID := INST_ID_VPMOVZXWD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVZXWD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVQW_Wf_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVQW  Wf{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_QVM);
  Decode_Wf_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVQW;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVQW);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVZXWQ_Vn_K_z_Wf(PInst: PInstruction);
begin
  // VPMOVZXWQ  Vn{K}{z},Wf
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_QVM);
  Decode_Vn_K_z_Wf(PInst);
  PInst^.InstID := INST_ID_VPMOVZXWQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVZXWQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVZXDQ_Vn_K_z_Wh(PInst: PInstruction);
begin
  // VPMOVZXDQ  Vn{K}{z},Wh
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_HVM);
  Decode_Vn_K_z_Wh(PInst);
  PInst^.InstID := INST_ID_VPMOVZXDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVZXDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMOVQD_Wh_K_z_Vn(PInst: PInstruction);
begin
  // VPMOVQD  Wh{K}{z},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefixF3(PInst);
  PInst^.SetTuple4VL(TT_HVM);
  Decode_Wh_K_z_Vn(PInst);
  PInst^.InstID := INST_ID_VPMOVQD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMOVQD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMQ_Vu_K_z_Hu_B64_Wu(PInst: PInstruction);
begin
  // VPERMQ  Vu{K}{z},Hu,B64(Wu)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL512(TT_FV);
  PInst^.SetTuple4VL256(TT_FV);
  Decode_Vu_K_z_Hu_B64_Wu(PInst);
  PInst^.InstID := INST_ID_VPERMQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMD_Vu_K_z_Hu_B32_Wu(PInst: PInstruction);
begin
  // VPERMD  Vu{K}{z},Hu,B32(Wu)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL256(TT_FV);
  PInst^.SetTuple4VL512(TT_FV);
  Decode_Vu_K_z_Hu_B32_Wu(PInst);
  PInst^.InstID := INST_ID_VPERMD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPCMPGTQ_rK_K_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPCMPGTQ  rK{K},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_rK_K_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPCMPGTQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPCMPGTQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMINSQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPMINSQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPMINSQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMINSQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMINSD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPMINSD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPMINSD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMINSD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMINUQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPMINUQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPMINUQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMINUQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMINUD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPMINUD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPMINUD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMINUD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMAXSQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPMAXSQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPMAXSQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMAXSQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMAXSD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPMAXSD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPMAXSD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMAXSD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMAXUQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPMAXUQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPMAXUQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMAXUQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMAXUD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPMAXUD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPMAXUD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMAXUD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPMULLD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPMULLD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPMULLD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPMULLD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VGETEXPPD_Vn_K_z_B64_Wn_sae(PInst: PInstruction);
begin
  // VGETEXPPD  Vn{K}{z},B64(Wn){sae}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B64_Wn_sae(PInst);
  PInst^.InstID := INST_ID_VGETEXPPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VGETEXPPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VGETEXPPS_Vn_K_z_B32_Wn_sae(PInst: PInstruction);
begin
  // VGETEXPPS  Vn{K}{z},B32(Wn){sae}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn_sae(PInst);
  PInst^.InstID := INST_ID_VGETEXPPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VGETEXPPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSRLVQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPSRLVQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPSRLVQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSRLVQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSRLVD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPSRLVD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPSRLVD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSRLVD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSRAVQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPSRAVQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPSRAVQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSRAVQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSRAVD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPSRAVD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPSRAVD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSRAVD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSLLVQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPSLLVQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPSLLVQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSLLVQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSLLVD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPSLLVD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPSLLVD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSLLVD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VRCP14PD_Vn_K_z_B64_Wn(PInst: PInstruction);
begin
  // VRCP14PD  Vn{K}{z},B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VRCP14PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VRCP14PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VRCP14PS_Vn_K_z_B32_Wn(PInst: PInstruction);
begin
  // VRCP14PS  Vn{K}{z},B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VRCP14PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VRCP14PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VRSQRT14PD_Vn_K_z_B64_Wn(PInst: PInstruction);
begin
  // VRSQRT14PD  Vn{K}{z},B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VRSQRT14PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VRSQRT14PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VRSQRT14PS_Vn_K_z_B32_Wn(PInst: PInstruction);
begin
  // VRSQRT14PS  Vn{K}{z},B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VRSQRT14PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VRSQRT14PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPBROADCASTD_Vn_K_z_Wo_d(PInst: PInstruction);
begin
  // VPBROADCASTD  Vn{K}{z},Wo.d
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_T1S);
  Decode_Vn_K_z_Wo_d(PInst);
  PInst^.InstID := INST_ID_VPBROADCASTD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPBROADCASTD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPBROADCASTQ_Vn_K_z_Wo_q(PInst: PInstruction);
begin
  // VPBROADCASTQ  Vn{K}{z},Wo.q
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_T1S);
  Decode_Vn_K_z_Wo_q(PInst);
  PInst^.InstID := INST_ID_VPBROADCASTQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPBROADCASTQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VBROADCASTI32X4_Vu_K_z_Mo(PInst: PInstruction);
begin
  // VBROADCASTI32X4  Vu{K}{z},Mo
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL512(TT_T4);
  PInst^.SetTuple4VL256(TT_T4);
  Decode_Vu_K_z_Mo(PInst);
  PInst^.InstID := INST_ID_VBROADCASTI32X4;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VBROADCASTI32X4);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPBLENDMQ_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPBLENDMQ  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPBLENDMQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPBLENDMQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPBLENDMD_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPBLENDMD  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPBLENDMD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPBLENDMD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VBLENDMPD_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VBLENDMPD  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VBLENDMPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VBLENDMPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VBLENDMPS_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VBLENDMPS  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VBLENDMPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VBLENDMPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMI2Q_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPERMI2Q  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPERMI2Q;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMI2Q);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMI2D_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPERMI2D  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPERMI2D;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMI2D);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMI2PD_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPERMI2PD  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPERMI2PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMI2PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMI2PS_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPERMI2PS  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPERMI2PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMI2PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPBROADCASTQ_Vn_K_z_Rq(PInst: PInstruction);
begin
  // VPBROADCASTQ  Vn{K}{z},Rq
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  Decode_Vn_K_z_Rq(PInst);
  PInst^.InstID := INST_ID_VPBROADCASTQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPBROADCASTQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPBROADCASTD_Vn_K_z_Rd(PInst: PInstruction);
begin
  // VPBROADCASTD  Vn{K}{z},Rd
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  Decode_Vn_K_z_Rd(PInst);
  PInst^.InstID := INST_ID_VPBROADCASTD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPBROADCASTD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMT2Q_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPERMT2Q  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPERMT2Q;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMT2Q);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMT2D_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPERMT2D  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPERMT2D;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMT2D);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMT2PD_Vn_K_z_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPERMT2PD  Vn{K}{z},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn(PInst);
  PInst^.InstID := INST_ID_VPERMT2PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMT2PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMT2PS_Vn_K_z_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPERMT2PS  Vn{K}{z},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn(PInst);
  PInst^.InstID := INST_ID_VPERMT2PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMT2PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VEXPANDPD_Vn_K_z_Wn(PInst: PInstruction);
begin
  // VEXPANDPD  Vn{K}{z},Wn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_T1S);
  Decode_Vn_K_z_Wn(PInst);
  PInst^.InstID := INST_ID_VEXPANDPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VEXPANDPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VEXPANDPS_Vn_K_z_Wn(PInst: PInstruction);
begin
  // VEXPANDPS  Vn{K}{z},Wn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_T1S);
  Decode_Vn_K_z_Wn(PInst);
  PInst^.InstID := INST_ID_VEXPANDPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VEXPANDPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPEXPANDQ_Vn_K_z_Wn(PInst: PInstruction);
begin
  // VPEXPANDQ  Vn{K}{z},Wn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_T1S);
  Decode_Vn_K_z_Wn(PInst);
  PInst^.InstID := INST_ID_VPEXPANDQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPEXPANDQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPEXPANDD_Vn_K_z_Wn(PInst: PInstruction);
begin
  // VPEXPANDD  Vn{K}{z},Wn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_T1S);
  Decode_Vn_K_z_Wn(PInst);
  PInst^.InstID := INST_ID_VPEXPANDD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPEXPANDD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCOMPRESSPD_Wn_K_z_M0_Vn(PInst: PInstruction);
begin
  // VCOMPRESSPD  Wn{K}{z.M0},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_T1S);
  Decode_Wn_K_z_M0_Vn(PInst);
  PInst^.InstID := INST_ID_VCOMPRESSPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCOMPRESSPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCOMPRESSPS_Wn_K_z_M0_Vn(PInst: PInstruction);
begin
  // VCOMPRESSPS  Wn{K}{z.M0},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_T1S);
  Decode_Wn_K_z_M0_Vn(PInst);
  PInst^.InstID := INST_ID_VCOMPRESSPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCOMPRESSPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPCOMPRESSQ_Wn_K_z_M0_Vn(PInst: PInstruction);
begin
  // VPCOMPRESSQ  Wn{K}{z.M0},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_T1S);
  Decode_Wn_K_z_M0_Vn(PInst);
  PInst^.InstID := INST_ID_VPCOMPRESSQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPCOMPRESSQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPCOMPRESSD_Wn_K_z_M0_Vn(PInst: PInstruction);
begin
  // VPCOMPRESSD  Wn{K}{z.M0},Vn
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_T1S);
  Decode_Wn_K_z_M0_Vn(PInst);
  PInst^.InstID := INST_ID_VPCOMPRESSD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPCOMPRESSD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMADDSUB132PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFMADDSUB132PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMADDSUB132PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMADDSUB132PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMADDSUB132PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFMADDSUB132PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMADDSUB132PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMADDSUB132PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMSUBADD132PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFMSUBADD132PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMSUBADD132PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMSUBADD132PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMSUBADD132PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFMSUBADD132PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMSUBADD132PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMSUBADD132PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMADD132PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFMADD132PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMADD132PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMADD132PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMADD132PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFMADD132PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMADD132PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMADD132PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMSUB132PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFMSUB132PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMSUB132PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMSUB132PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMSUB132PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFMSUB132PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMSUB132PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMSUB132PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFNMADD132PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFNMADD132PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFNMADD132PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFNMADD132PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFNMADD132PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFNMADD132PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFNMADD132PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFNMADD132PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFNMSUB132PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFNMSUB132PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFNMSUB132PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFNMSUB132PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFNMSUB132PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFNMSUB132PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFNMSUB132PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFNMSUB132PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMADDSUB213PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFMADDSUB213PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMADDSUB213PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMADDSUB213PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMADDSUB213PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFMADDSUB213PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMADDSUB213PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMADDSUB213PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMSUBADD213PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFMSUBADD213PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMSUBADD213PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMSUBADD213PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMSUBADD213PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFMSUBADD213PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMSUBADD213PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMSUBADD213PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMADD213PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFMADD213PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMADD213PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMADD213PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMADD213PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFMADD213PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMADD213PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMADD213PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMSUB213PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFMSUB213PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMSUB213PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMSUB213PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMSUB213PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFMSUB213PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMSUB213PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMSUB213PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFNMADD213PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFNMADD213PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFNMADD213PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFNMADD213PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFNMADD213PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFNMADD213PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFNMADD213PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFNMADD213PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFNMSUB213PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFNMSUB213PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFNMSUB213PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFNMSUB213PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFNMSUB213PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFNMSUB213PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFNMSUB213PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFNMSUB213PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMADDSUB231PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFMADDSUB231PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMADDSUB231PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMADDSUB231PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMADDSUB231PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFMADDSUB231PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMADDSUB231PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMADDSUB231PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMSUBADD231PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFMSUBADD231PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMSUBADD231PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMSUBADD231PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMSUBADD231PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFMSUBADD231PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMSUBADD231PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMSUBADD231PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMADD231PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFMADD231PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMADD231PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMADD231PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMADD231PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFMADD231PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMADD231PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMADD231PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMSUB231PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFMSUB231PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMSUB231PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMSUB231PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFMSUB231PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFMSUB231PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFMSUB231PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFMSUB231PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFNMADD231PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFNMADD231PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFNMADD231PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFNMADD231PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFNMADD231PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFNMADD231PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFNMADD231PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFNMADD231PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFNMSUB231PD_Vn_K_z_Hn_B64_Wn_er
  (PInst: PInstruction);
begin
  // VFNMSUB231PD  Vn{K}{z},Hn,B64(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFNMSUB231PD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFNMSUB231PD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFNMSUB231PS_Vn_K_z_Hn_B32_Wn_er
  (PInst: PInstruction);
begin
  // VFNMSUB231PS  Vn{K}{z},Hn,B32(Wn){er}
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_er(PInst);
  PInst^.InstID := INST_ID_VFNMSUB231PS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFNMSUB231PS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMQ_Vu_K_z_B64_Wu_Ib(PInst: PInstruction);
begin
  // VPERMQ  Vu{K}{z},B64(Wu),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL512(TT_FV);
  PInst^.SetTuple4VL256(TT_FV);
  Decode_Vu_K_z_B64_Wu_Ib(PInst);
  PInst^.InstID := INST_ID_VPERMQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMPD_Vu_K_z_B64_Wu_Ib(PInst: PInstruction);
begin
  // VPERMPD  Vu{K}{z},B64(Wu),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL256(TT_FV);
  PInst^.SetTuple4VL512(TT_FV);
  Decode_Vu_K_z_B64_Wu_Ib(PInst);
  PInst^.InstID := INST_ID_VPERMPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VALIGNQ_Vn_K_z_Hn_B64_Wn_Ib(PInst: PInstruction);
begin
  // VALIGNQ  Vn{K}{z},Hn,B64(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VALIGNQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VALIGNQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VALIGND_Vn_K_z_Hn_B32_Wn_Ib(PInst: PInstruction);
begin
  // VALIGND  Vn{K}{z},Hn,B32(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VALIGND;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VALIGND);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMILPS_Vn_K_z_B32_Wn_Ib(PInst: PInstruction);
begin
  // VPERMILPS  Vn{K}{z},B32(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPERMILPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMILPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPERMILPD_Vn_K_z_B64_Wn_Ib(PInst: PInstruction);
begin
  // VPERMILPD  Vn{K}{z},B64(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B64_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPERMILPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPERMILPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VRNDSCALEPS_Vn_K_z_B32_Wn_sae_Ib
  (PInst: PInstruction);
begin
  // VRNDSCALEPS  Vn{K}{z},B32(Wn){sae},Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn_sae_Ib(PInst);
  PInst^.InstID := INST_ID_VRNDSCALEPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VRNDSCALEPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VRNDSCALEPD_Vn_K_z_B64_Wn_sae_Ib
  (PInst: PInstruction);
begin
  // VRNDSCALEPD  Vn{K}{z},B64(Wn){sae},Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B64_Wn_sae_Ib(PInst);
  PInst^.InstID := INST_ID_VRNDSCALEPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VRNDSCALEPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VINSERTF32X4_Vu_K_z_Hu_Wo_Ib(PInst: PInstruction);
begin
  // VINSERTF32X4  Vu{K}{z},Hu,Wo,Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL256(TT_T4);
  PInst^.SetTuple4VL512(TT_T4);
  Decode_Vu_K_z_Hu_Wo_Ib(PInst);
  PInst^.InstID := INST_ID_VINSERTF32X4;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VINSERTF32X4);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VEXTRACTF32X4_Wo_K_z_Vu_Ib(PInst: PInstruction);
begin
  // VEXTRACTF32X4  Wo{K}{z},Vu,Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL512(TT_T4);
  PInst^.SetTuple4VL256(TT_T4);
  Decode_Wo_K_z_Vu_Ib(PInst);
  PInst^.InstID := INST_ID_VEXTRACTF32X4;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VEXTRACTF32X4);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VCVTPS2PH_Wh_K_z_Vn_sae_Ib(PInst: PInstruction);
begin
  // VCVTPS2PH  Wh{K}{z},Vn{sae},Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.InstCategory := (INST_CATEGORY_16_BIT or INST_CATEGORY_CONVERT or
    INST_CATEGORY_FLOATING_POINT or INST_CATEGORY_SINGLE_PRECISION);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_HVM);
  Decode_Wh_K_z_Vn_sae_Ib(PInst);
  PInst^.InstID := INST_ID_VCVTPS2PH;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VCVTPS2PH);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPCMPccUQ_rK_K_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPCMPccUQ  rK{K},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_rK_K_Hn_B64_Wn(PInst);
  DecodeImmAsOpExt(PInst);
  PInst^.InstID := INSTS_ID_VPCMPccUQ_Array[PInst^.OpImmExt and $07];
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEMS_VPCMPccUQ_Array[PInst^.OpImmExt and $07]);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPCMPccUD_rK_K_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPCMPccUD  rK{K},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_rK_K_Hn_B32_Wn(PInst);
  DecodeImmAsOpExt(PInst);
  PInst^.InstID := INSTS_ID_VPCMPccUD_Array[PInst^.OpImmExt and $07];
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEMS_VPCMPccUD_Array[PInst^.OpImmExt and $07]);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPCMPccQ_rK_K_Hn_B64_Wn(PInst: PInstruction);
begin
  // VPCMPccQ  rK{K},Hn,B64(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_rK_K_Hn_B64_Wn(PInst);
  DecodeImmAsOpExt(PInst);
  PInst^.InstID := INSTS_ID_VPCMPccQ_Array[PInst^.OpImmExt and $07];
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEMS_VPCMPccQ_Array[PInst^.OpImmExt and $07]);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPCMPccD_rK_K_Hn_B32_Wn(PInst: PInstruction);
begin
  // VPCMPccD  rK{K},Hn,B32(Wn)
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_rK_K_Hn_B32_Wn(PInst);
  DecodeImmAsOpExt(PInst);
  PInst^.InstID := INSTS_ID_VPCMPccD_Array[PInst^.OpImmExt and $07];
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEMS_VPCMPccD_Array[PInst^.OpImmExt and $07]);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VSHUFF64X2_Vu_K_z_Hu_B64_Wu_Ib(PInst: PInstruction);
begin
  // VSHUFF64X2  Vu{K}{z},Hu,B64(Wu),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL256(TT_FV);
  PInst^.SetTuple4VL512(TT_FV);
  Decode_Vu_K_z_Hu_B64_Wu_Ib(PInst);
  PInst^.InstID := INST_ID_VSHUFF64X2;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VSHUFF64X2);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VSHUFF32X4_Vu_K_z_Hu_B32_Wu_Ib(PInst: PInstruction);
begin
  // VSHUFF32X4  Vu{K}{z},Hu,B32(Wu),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL256(TT_FV);
  PInst^.SetTuple4VL512(TT_FV);
  Decode_Vu_K_z_Hu_B32_Wu_Ib(PInst);
  PInst^.InstID := INST_ID_VSHUFF32X4;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VSHUFF32X4);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPTERNLOGQ_Vn_K_z_Hn_B64_Wn_Ib(PInst: PInstruction);
begin
  // VPTERNLOGQ  Vn{K}{z},Hn,B64(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPTERNLOGQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPTERNLOGQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPTERNLOGD_Vn_K_z_Hn_B32_Wn_Ib(PInst: PInstruction);
begin
  // VPTERNLOGD  Vn{K}{z},Hn,B32(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPTERNLOGD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPTERNLOGD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VGETMANTPD_Vn_K_z_B64_Wn_sae_Ib
  (PInst: PInstruction);
begin
  // VGETMANTPD  Vn{K}{z},B64(Wn){sae},Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B64_Wn_sae_Ib(PInst);
  PInst^.InstID := INST_ID_VGETMANTPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VGETMANTPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VGETMANTPS_Vn_K_z_B32_Wn_sae_Ib
  (PInst: PInstruction);
begin
  // VGETMANTPS  Vn{K}{z},B32(Wn){sae},Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_B32_Wn_sae_Ib(PInst);
  PInst^.InstID := INST_ID_VGETMANTPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VGETMANTPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VINSERTI32X4_Vu_K_z_Hu_Wo_Ib(PInst: PInstruction);
begin
  // VINSERTI32X4  Vu{K}{z},Hu,Wo,Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL256(TT_T4);
  PInst^.SetTuple4VL512(TT_T4);
  Decode_Vu_K_z_Hu_Wo_Ib(PInst);
  PInst^.InstID := INST_ID_VINSERTI32X4;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VINSERTI32X4);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VEXTRACTI32X4_Wo_K_z_Vu_Ib(PInst: PInstruction);
begin
  // VEXTRACTI32X4  Wo{K}{z},Vu,Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL512(TT_T4);
  PInst^.SetTuple4VL256(TT_T4);
  Decode_Wo_K_z_Vu_Ib(PInst);
  PInst^.InstID := INST_ID_VEXTRACTI32X4;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VEXTRACTI32X4);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VSHUFI64X2_Vu_K_z_Hu_B64_Wu_Ib(PInst: PInstruction);
begin
  // VSHUFI64X2  Vu{K}{z},Hu,B64(Wu),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL256(TT_FV);
  PInst^.SetTuple4VL512(TT_FV);
  Decode_Vu_K_z_Hu_B64_Wu_Ib(PInst);
  PInst^.InstID := INST_ID_VSHUFI64X2;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VSHUFI64X2);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VSHUFI32X4_Vu_K_z_Hu_B32_Wu_Ib(PInst: PInstruction);
begin
  // VSHUFI32X4  Vu{K}{z},Hu,B32(Wu),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL256(TT_FV);
  PInst^.SetTuple4VL512(TT_FV);
  Decode_Vu_K_z_Hu_B32_Wu_Ib(PInst);
  PInst^.InstID := INST_ID_VSHUFI32X4;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VSHUFI32X4);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFIXUPIMMPD_Vn_K_z_Hn_B64_Wn_sae_Ib
  (PInst: PInstruction);
begin
  // VFIXUPIMMPD  Vn{K}{z},Hn,B64(Wn){sae},Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B64_Wn_sae_Ib(PInst);
  PInst^.InstID := INST_ID_VFIXUPIMMPD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFIXUPIMMPD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VFIXUPIMMPS_Vn_K_z_Hn_B32_Wn_sae_Ib
  (PInst: PInstruction);
begin
  // VFIXUPIMMPS  Vn{K}{z},Hn,B32(Wn){sae},Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Vn_K_z_Hn_B32_Wn_sae_Ib(PInst);
  PInst^.InstID := INST_ID_VFIXUPIMMPS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VFIXUPIMMPS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPRORD_Hn_K_z_B32_Wn_Ib(PInst: PInstruction);
begin
  // VPRORD  Hn{K}{z},B32(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Hn_K_z_B32_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPRORD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPRORD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPRORQ_Hn_K_z_B64_Wn_Ib(PInst: PInstruction);
begin
  // VPRORQ  Hn{K}{z},B64(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Hn_K_z_B64_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPRORQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPRORQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPROLD_Hn_K_z_B32_Wn_Ib(PInst: PInstruction);
begin
  // VPROLD  Hn{K}{z},B32(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Hn_K_z_B32_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPROLD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROLD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPROLQ_Hn_K_z_B64_Wn_Ib(PInst: PInstruction);
begin
  // VPROLQ  Hn{K}{z},B64(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Hn_K_z_B64_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPROLQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPROLQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSRLD_Hn_K_z_B32_Wn_Ib(PInst: PInstruction);
begin
  // VPSRLD  Hn{K}{z},B32(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Hn_K_z_B32_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPSRLD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSRLD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSRAD_Hn_K_z_B32_Wn_Ib(PInst: PInstruction);
begin
  // VPSRAD  Hn{K}{z},B32(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Hn_K_z_B32_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPSRAD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSRAD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSRAQ_Hn_K_z_B64_Wn_Ib(PInst: PInstruction);
begin
  // VPSRAQ  Hn{K}{z},B64(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Hn_K_z_B64_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPSRAQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSRAQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSLLD_Hn_K_z_B32_Wn_Ib(PInst: PInstruction);
begin
  // VPSLLD  Hn{K}{z},B32(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Hn_K_z_B32_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPSLLD;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSLLD);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSRLQ_Hn_K_z_B64_Wn_Ib(PInst: PInstruction);
begin
  // VPSRLQ  Hn{K}{z},B64(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Hn_K_z_B64_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPSRLQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSRLQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_AVX512F_VL_VPSLLQ_Hn_K_z_B64_Wn_Ib(PInst: PInstruction);
begin
  // VPSLLQ  Hn{K}{z},B64(Wn),Ib
  PInst^.InstGroups := (INST_GRP_AVX512F or INST_GRP_VL);
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  PInst^.SetTuple4VL(TT_FV);
  Decode_Hn_K_z_B64_Wn_Ib(PInst);
  PInst^.InstID := INST_ID_VPSLLQ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_VPSLLQ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;
