#UnivDisasm
**UnivDisasm** is a powerful x86 disassembler and opcodes analyzer library for x86 architectures.

#Disassembler

**Features**:

-Support x86 and x86-64 architectures.

-Support Intel and AMD instructions.

-Support mostly all instructions found in Intel and AMD documentations, including:

FPU,MMX,SSE,SSE2,SSE3,SSSE3,SSE4.1,SSE4.2,SSE5,3DNOW,AVX,AVX2 ,FMA,FMA4.

AES, MPX, F16C, TSX, VME, BMI, BMI2 …

AVX512F, AVX512BW, AVX512CD, AVX512DQ, AVX512ER, AVX512PF, AVX512VBMI, AVX512IFMA.

-Support REX, DREX, VEX, EVEX and XOP instructions encoding.

-EFlags/RFlags: UnivDisasm can recognize instructions that may affect, modify or reset EFlags register. 

-Instructions are grouped into two order: instructions groups and instructions categories. And each instruction has its own identifier ,make it easy to find and match decoded instructions.

-Branch instructions: UnivDisasm recognize branch and calculate the destination address, make it easy for you to follow branch instructions. 

-Support VSIB memory addressing.

-Support Intel enhancement syntax: Masking, Zeroing, Rounding, Broadcasting.

-Support the compressed displacement disp8*N.

-Reconize pseudo-ops instructions such as CMPPS.

-Safe: UnivDisasm was designed to be safe, that’s mean it’s safe for multi threads (thread safe).And provides built-in mechanisms for errors and safe bytes reading.

-Faster: Due to its coding architecture, UnivDisasm is considered to be faster to decode instructions.

-Customized: UnivDisasm has an open architecture allowing for easy to extend for others syntax. You can have your own assembler syntax with less code writing!

**Examples**
The left side is the instructions opcodes and the right side is the full instructions str decoded by UnivDisasm.
```
[$48,$8B,$04,$55,$56,$34,$12,$00] : # mov rax,qword [rdx*2+0x00123456]
[$48,$69,$C1,$05,$00,$00,$00] :     # imul rax,rcx,00000005
[$FF,$35,$23,$01,$00,$00    ] :     # push qword [rip 0x00000123]
[$D8,$C7                    ] :     # fadd st(0),st(7)
[$DC,$EF                    ] :     # fsub st(7),st(0)
[$62,$01,$95,$C7,$58,$F4                 ]  :  # vaddpd zmm30{k7}{z},zmm29,zmm28         
[$62,$01,$95,$10,$58,$F4                 ]  :  # vaddpd zmm30,zmm29,zmm28,{rn-sae}       
[$62,$01,$95,$70,$58,$F4                 ]  :  # vaddpd zmm30,zmm29,zmm28,{rz-sae}       
[$62,$91,$0C,$47,$C2,$ED,$19             ]  :  # vcmpnge_uqps k5{k7},zmm30,zmm29         
[$62,$03,$15,$00,$21,$F4,$AB             ]  :  # vinsertps xmm30,xmm29,xmm28,0xab        
[$62,$63,$15,$50,$03,$72,$7F,$7B         ]  :  # valignd zmm30,zmm29,dword disp8[rdx+0x1fc]{1to16},0x7b
[$62,$62,$95,$50,$65,$72,$80             ]  :  # vblendmpd zmm30,zmm29,qword disp8[rdx-0x400]{1to8}
[$62,$02,$FD,$41,$92,$74,$39,$20         ]  :  # vgatherdpd zmm30{k1},qword disp8[r9+ymm31*1+0x100]
[$62,$63,$95,$47,$3A,$B2,$E0,$EF,$FF,$FF,$7B]  :  # vinserti64x4 zmm30{k7},zmm29,yword [rdx-0x1020],0x7b
[$62,$63,$15,$50,$03,$B2,$00,$02,$00,$00,$7B]  :  # valignd zmm30,zmm29,dword [rdx+0x200]{1to16},0x7b
[$62,$02,$FD,$41,$92,$B4,$FE,$7B,$00,$00,$00]  :  # vgatherdpd zmm30{k1},qword [r14+ymm31*8+0x7b]
[$62,$02,$FD,$41,$92,$B4,$FE,$7B,$00,$00,$00]  :  # vgatherdpd zmm30{k1},qword [r14+ymm31*8+0x7b]
[$62,$22,$FD,$41,$92,$B4,$B9,$00,$04,$00,$00]  :  # vgatherdpd zmm30{k1},qword [rcx+ymm31*4+0x400]
[$62,$02,$7D,$41,$92,$B4,$FE,$7B,$00,$00,$00]  :  # vgatherdps zmm30{k1},dword [r14+zmm31*8+0x7b]
[$62,$02,$7D,$41,$92,$B4,$FE,$7B,$00,$00,$00]  :  # vgatherdps zmm30{k1},dword [r14+zmm31*8+0x7b]
[$62,$B1,$0C,$40,$C2,$AC,$F0,$23,$01,$00,$00,$1A]  :  # vcmpngt_uqps k5,zmm30,zword [rax+r14*8+0x123]
```

Sample Dump (not all features are included):
```
# [0x62 0x61 0x95 0x40 0x58 0x72 0x7F]
# vaddpd zmm30,zmm29,zword disp8[rdx+0x1fc0]
ins.Prefixes.EVEXPrf.Flags := PF_USED + PF_VALID
ins.Encoding := ENC_EVEX
ins.AddressMode = AM_64
ins.ModRm.Value = 0x72
ins.ModRm.Value.Mod = 1
ins.ModRm.Value.Reg = 6
ins.ModRm.Value.Rm  = 2
ins.Disp.Flags = DF_USED + DF_DISP8N
ins.Disp.N     = 64
ins.Disp.Value = 0x1FC0
ins.Disp.Size  = SIZE_WORD
ins.InstID     = INST_ID_VADDPD
ins.Mnem       = INST_MNEM_VADDPD
ins.InstGroups = INST_GRP_AVX512F + INST_GRP_VL
ins.nArg       = 3 
ins.Arg1.Flags = AF_REG
ins.Arg1.Size  = SIZE_ZWORD
ins.Arg1.Reg   = REG_ZMM30
ins.Arg2.Flags = AF_REG
ins.Arg2.Size  = SIZE_ZWORD
ins.Arg2.Reg   = REG_ZMM29
ins.Arg3.Flags = AF_MEM
ins.Arg3.Size  = SIZE_ZWORD
ins.Arg3.Mem.BaseReg = REG_RDX
...
...
```
#Simple GUI
![GUI](https://raw.githubusercontent.com/MahdiSafsafi/UnivDisasm/master/GUI/GUI.PNG)

#Analyzer

UnivDisasm has a powerful analyzer, make it easy to find errors and detect for warnings.

**Features**:

-Detect instructions that may cause crash if executed.

-Detect wrong prefixes combining.

-Detect wrong address memory.

-Detect wrong segment registers.

-Detect for unlockable instructions.

-Detect instructions that doesn’t initialize BND registers.

Errors recognized by Analyzer:
```
 { Errors }
  ERROR_SUCCESS                     : No errors detected.
  ERROR_INVALID_OPERAND_SIZE        : Invalid J size.
  ERROR_INVALID_EFFECTIVE_ADDRESS   : Invalid memory address => May cause AV.
  ERROR_INVALID_ADDRESS_MODE        : Invalid Address mode.
  ERROR_VL_EXPECTED_UPPER           : Vector length size must be YWORD or ZWORD.
  ERROR_VL_EXPECTED_LOWER           : Vector length size must be OWORD or YWORD.
  ERROR_INVALID_SEGMENT        		: Invalid segment register.
  ERROR_INVALID_VEX_ESCAPE    		: Invalid VEX prefix escape.
  ERROR_INVALID_EVEX_ESCAPE  		: Invalid EVEX prefix escape.
  ERROR_INVALID_XOP_ESCAPE  		: Invalid XOP prefix escape.
  ERROR_EXCEEDED_SAFE_LENGTH 	    : Exceeded Safe length.
  ERROR_SIB_EXPECTED 
  ERROR_RELATIVE_ADDRESS_PROHIBITED 
  ERROR_INVALID_OPCODE 
  ERROR_INTERNAL  					: Internal Error
```

Warnings recognized by Analyzer:
```
  { Warnings }
  WARN_NIL  { No warnings }
  WARN_INST_NOT_LOCKABLE  : Instruction not lockable.
  WARN_XAQUIRE_INVALID  : Invalid XAQUIRE prefix.
  WARN_REPNE_INVALID  : Invalid REPNE prefix.
  WARN_REP_INVALID  : Invalid REP prefix.
  WARN_REPE_INVALID  : Invalid REPE prefix.
  WARN_XRELEASE_INVALID 
  WARN_SUPERFLUOUS_PREFIX  : Prefix found , but not required.
  WARN_XAQUIRE_NEED_LOCK  : XAQUIRE prefix require LOCK prefix.
  WARN_XRELEASE_NEED_LOCK  : XRELEASE prefix require LOCK prefix.
  WARN_SOURCE_OPERAND_NOT_MEM  : Source operand must be memory.
  WARN_CS_PREFIX_IGNORED  : CS segment override prefix is ignored.
  WARN_DS_PREFIX_IGNORED  : DS segment override prefix is ignored.
  WARN_SS_PREFIX_IGNORED  : SS segment override prefix is ignored.
  WARN_ES_PREFIX_IGNORED  : ES segment override prefix is ignored.
  WARN_BND_NO_INIT  : Instruction doesn't init bnd regs.
  WARN_INDEX_REG_NOT_USED_IN_EAC  : Index register is not used in effective address calculation.
```



Delphinus-Support :

Do you use Delphinus ? You may want to install UnivDisasm from Delphinus.
