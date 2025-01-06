
; bankcross from $BF

warnpc $C0860B
org $C0860B


Tiles_15_16_17_18_19_UtilityRoom_Statues:
incbin "../data/Tiles_15_16_17_18_19_UtilityRoom_Statues.bin" ; $29F9 bytes

Tiles_F_10_Ceres:
incbin "../data/Tiles_F_10_Ceres.bin" ; $3226 bytes

Tiles_11_12_CeresElevator:
check bankcross off
incbin "../data/Tiles_11_12_CeresElevator.bin" ; $2B7E bytes
check bankcross on
