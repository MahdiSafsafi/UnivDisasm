@echo off

rem all the following forms are valid !
UnivDisasm -v intel -x 64 "$62,$63,$15,$50,$03,$B2,$FC,$FD,$FF,$FF,$7B"
UnivDisasm -v intel -x 64 "$62 $63 $15 $50 $03 $B2 $FC $FD $FF $FF $7B"
UnivDisasm -v intel -x 64 "0x62 0x63 0x15 0x50 0x03 0xB2 0xFC 0xFD 0xFF 0xFF 0x7B"

pause