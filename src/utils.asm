.include "hdr.asm"
.include "../pvsneslib/pvsneslib/source/sprites.asm"

.ramsection "ram.data" bank 0 slot 1
myVariable DSB 1
.ends

.section ".myvlb_text" superfree
;---------------------------------------------------------------------------
; void myConsoleVblank()
myConsoleVblank:

;dmaCopyOAram((unsigned char *) &oamMemory,0,0x220);
jsl oamUpdate
rtl

.ends
