
; bankcross from $95

warnpc $96D10A
org $96D10A


Tiles_Space_Ceres:
incbin "../data/Tiles_Space_Ceres.bin" ; $1B6C bytes

Tiles_Zebes:
incbin "../data/Tiles_Zebes.bin" ; $F8E bytes

Title_Mode7_Tilemap:
incbin "../data/Title_Mode7_Tilemap.bin" ; $265 bytes

Gunship_Ceres_Tilemap:
incbin "../data/Gunship_Ceres_Tilemap.bin" ; $AB bytes

Intro_BG1_MotherBrainsRoom_Tilemap:
check bankcross off
incbin "../data/Intro_BG1_MotherBrainsRoom_Tilemap.bin" ; $9B7 bytes
check bankcross on
