
; bankcross from $BD

warnpc $BEB130
org $BEB130


Tiles_B_SandlessMaridia:
incbin "../data/Tiles_B_SandlessMaridia.bin" ; $365D bytes

Tiles_C_SandyMaridia:
check bankcross off
incbin "../data/Tiles_C_SandyMaridia.bin" ; $365C bytes
check bankcross on
