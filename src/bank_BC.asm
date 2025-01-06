
; bankcross from $BB

warnpc $BCA5AA
org $BCA5AA


Tiles_7_8_RedBrinstar_Kraid_StatuesHall:
incbin "../data/Tiles_7_8_RedBrinstar_Kraid_StatuesHall.bin" ; $3A46 bytes

Tiles_1A_Kraid:
check bankcross off
incbin "../data/Tiles_1A_Kraid.bin" ; $6408 bytes
check bankcross on
