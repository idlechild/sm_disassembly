
; bankcross from $97

warnpc $988304
org $988304


Tiles_Zebes_Explosion:
incbin "../data/Tiles_Zebes_Explosion.bin" ; $32BD bytes

Wide_Part_of_Zebes_Explosion_Tilemap:
incbin "../data/Wide_Part_of_Zebes_Explosion_Tilemap.bin" ; $296 bytes

Concentric_Wide_Part_of_Zebes_Explosion_Tilemap:
incbin "../data/Concentric_Wide_Part_of_Zebes_Explosion_Tilemap.bin" ; $296 bytes

Eclipse_of_Zebes_during_Explosion_Tilemap:
incbin "../data/Eclipse_of_Zebes_during_Explosion_Tilemap.bin" ; $1E0 bytes

Blank_BG2_Tilemap:
incbin "../data/Blank_BG2_Tilemap.bin" ; $9 bytes

Tiles_Zebes_Being_Zoomed_Out_during_Zebes_Explosion_Mode7:
incbin "../data/Tiles_Zebes_Being_Zoomed_Out_during_Zebes_Explosion_Mode7.bin" ; $3079 bytes

Tiles_Grey_Clouds_during_Zebes_Explosion_Mode7:
check bankcross off
incbin "../data/Tiles_Grey_Clouds_during_Zebes_Explosion_Mode7.bin" ; $23B1 bytes
check bankcross on
