.include "hdr.asm"

.ramsection "ram.data" bank $7E slot 1
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
