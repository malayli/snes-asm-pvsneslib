.include "hdr.asm"
.include "../pvsneslib/pvsneslib/source/sprites.asm"

myVariable DSB 1

.section ".myvlb_text" superfree
;---------------------------------------------------------------------------
; void myConsoleVblank()
myConsoleVblank:

;dmaCopyOAram((unsigned char *) &oamMemory,0,0x220);
jsl oamUpdate
rtl

.ends
