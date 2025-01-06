
; bankcross from $94

warnpc $9580D8
org $9580D8


Tiles_Title_Sprite:
incbin "../data/Tiles_Title_Sprite.bin" ; $2509 bytes

Tiles_Baby_Metroid_Mode7:
incbin "../data/Tiles_Baby_Metroid_Mode7.bin" ; $24E bytes

Tiles_Gunship_Ceres_Mode7:
incbin "../data/Tiles_Gunship_Ceres_Mode7.bin" ; $285A bytes

Tiles_Font1_BG3:
incbin "../data/Tiles_Font1_BG3.bin" ; $68A bytes

Tiles_Font2_BG3:
incbin "../data/Tiles_Font2_BG3.bin" ; $DAF bytes

Tiles_Intro_Sprite:
incbin "../data/Tiles_Intro_Sprite.bin" ; $144C bytes

Tiles_Intro_BG1_BG2:
check bankcross off
incbin "../data/Tiles_Intro_BG1_BG2.bin" ; $57FC bytes
check bankcross on
