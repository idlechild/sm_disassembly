
; bankcross from $BC

warnpc $BDC3F9
org $BDC3F9


Tiles_9_A_Norfair:
incbin "../data/Tiles_9_A_Norfair.bin" ; $3A31 bytes

Tiles_1B_Crocomire:
check bankcross off
incbin "../data/Tiles_1B_Crocomire.bin" ; $3305 bytes
check bankcross on
