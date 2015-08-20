# UnivDisasm
**UnivDisasm** is a powerful x86 disassembler and opcodes analyzer that support:

-x86 and x86-64 architectures.

-Intel and AMD instructions, including:

*FPU,MMX,SSE,SSE2,SSE3,SSSE3,SSE4.1,SSE4.2,SSE5,3DNOW,AVX,AVX2 ,FMA,FMA4.

*AES, MPX, F16C, TSX, VME, BMI, BMI2 …

*AVX512F, AVX512BW, AVX512CD, AVX512DQ, AVX512ER, AVX512PF, AVX512VBMI, AVX512IFMA.

-REX,DREX,VEX,EVEX,XOP encoding.

-Intel enhancement syntax: Masking, Zeroing, Rounding, Broadcasting.

-Customized: UnivDisasm has an open architecture allowing for easy to extend for others syntax. You can have your own assembler syntax with less code writing! 

-Support for VSIB memory addressing.

-Support Compressed displacement called disp8*N.

-Safe:

*Thread safe: You don’t need to worry when working with multi threads. 

*Disasm safe: UnivDisasm provides errors detecting and safe bytes reading mechanisms.

-Analyzer:
UniveDisasm comes with a powerful code analyzer: detecting for errors, warnings, wrong prefixes use, wrong memory address …
