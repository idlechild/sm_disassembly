
; bankcross from $BE

warnpc $BF9DEA
org $BF9DEA


Tiles_1C_Draygon:
incbin "../data/Tiles_1C_Draygon.bin" ; $362A bytes

Tiles_D_E_Tourian:
check bankcross off
incbin "../data/Tiles_D_E_Tourian.bin" ; $31F6 bytes
check bankcross on
