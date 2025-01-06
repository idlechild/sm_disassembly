
; bankcross from $96

warnpc $9788CC
org $9788CC


Intro_BG2_SamusHead_Tilemap:
incbin "../data/Intro_BG2_SamusHead_Tilemap.bin" ; $20F bytes

Zebes_Tilemap:
incbin "../data/Zebes_Tilemap.bin" ; $237 bytes

Intro_BG3_TheLastMetroidIsInCaptivity_Tilemap:
incbin "../data/Intro_BG3_TheLastMetroidIsInCaptivity_Tilemap.bin" ; $E2 bytes

GameOptionsMenu_OptionsScreen_Tilemap:
incbin "../data/GameOptionsMenu_OptionsScreen_Tilemap.bin" ; $1D9 bytes

GameOptionsMenu_ControllerSettings_English_Tilemap:
incbin "../data/GameOptionsMenu_ControllerSettings_English_Tilemap.bin" ; $1F7 bytes

GameOptionsMenu_ControllerSettings_Japanese_Tilemap:
incbin "../data/GameOptionsMenu_ControllerSettings_Japanese_Tilemap.bin" ; $1C9 bytes

GameOptionsMenu_SpecialSettings_English_Tilemap:
incbin "../data/GameOptionsMenu_SpecialSettings_English_Tilemap.bin" ; $1AD bytes

GameOptionsMenu_SpecialSettings_Japanese_Tilemap:
incbin "../data/GameOptionsMenu_SpecialSettings_Japanese_Tilemap.bin" ; $1BA bytes

Samus_Waiting_for_Credits_to_End_Tilemap:
incbin "../data/Samus_Waiting_for_Credits_to_End_Tilemap.bin" ; $10F bytes

Tiles_Samus_Waiting_for_Credits_to_End:
incbin "../data/Tiles_Samus_Waiting_for_Credits_to_End.bin" ; $2154 bytes

Tiles_PostCredits_SuitlessSamus:
incbin "../data/Tiles_PostCredits_SuitlessSamus.bin" ; $1EA5 bytes

Tiles_PostCredits_Samus_Shooting_the_Screen:
incbin "../data/Tiles_PostCredits_Samus_Shooting_the_Screen.bin" ; $FE2 bytes

Tiles_Font3_Background:
incbin "../data/Tiles_Font3_Background.bin" ; $721 bytes

Credits_Tilemap:
incbin "../data/Credits_Tilemap.bin" ; $A88 bytes

InterleavedTilesTilemapPostCreditsSamusBeamMode7:
check bankcross off
incbin "../data/InterleavedTilesTilemapPostCreditsSamusBeamMode7.bin" ; $97C bytes
check bankcross on
