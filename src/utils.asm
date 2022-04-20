.include "hdr.asm"

.section ".myvlb_text" superfree
;---------------------------------------------------------------------------
; void myConsoleVblank()
myConsoleVblank:

; Refresh pad values
	lda snes_mplay5

.ends
