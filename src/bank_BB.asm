
; bankcross from $BA

warnpc $BBAE9E
org $BBAE9E


Tiles_4_5_WreckedShip:
incbin "../data/Tiles_4_5_WreckedShip.bin" ; $3812 bytes

Tiles_6_GreenBlueBrinstar:
check bankcross off
incbin "../data/Tiles_6_GreenBlueBrinstar.bin" ; $3EF9 bytes
check bankcross on
