
; bankcross from $C8

warnpc $C98222
org $C98222


LevelData_Plowerhouse:
incbin "../data/LevelData_Plowerhouse.bin" ; $2B1 bytes

LevelData_WorstRoomInTheGame:
incbin "../data/LevelData_WorstRoomInTheGame.bin" ; $4CC bytes

LevelData_Amphitheatre:
incbin "../data/LevelData_Amphitheatre.bin" ; $B1B bytes

LevelData_LNSpringBallMaze:
incbin "../data/LevelData_LNSpringBallMaze.bin" ; $828 bytes

LevelData_LNEscapePowerBombs:
incbin "../data/LevelData_LNEscapePowerBombs.bin" ; $199 bytes

LevelData_RedKihunterShaft:
incbin "../data/LevelData_RedKihunterShaft.bin" ; $A11 bytes

LevelData_Wasteland:
incbin "../data/LevelData_Wasteland.bin" ; $93B bytes

LevelData_MetalPirates:
incbin "../data/LevelData_MetalPirates.bin" ; $2E4 bytes

LevelData_ThreeMusketeers:
incbin "../data/LevelData_ThreeMusketeers.bin" ; $E62 bytes

LevelData_RidleyETank:
incbin "../data/LevelData_RidleyETank.bin" ; $11B bytes

LevelData_ScrewAttack:
incbin "../data/LevelData_ScrewAttack.bin" ; $2DE bytes

LevelData_LNFireflea:
incbin "../data/LevelData_LNFireflea.bin" ; $144C bytes

LevelData_GlassTunnel_State0:
incbin "../data/LevelData_GlassTunnel_State0.bin" ; $5D7 bytes

LevelData_GlassTunnel_State1:
incbin "../data/LevelData_GlassTunnel_State1.bin" ; $585 bytes

LevelData_WestTunnel:
incbin "../data/LevelData_WestTunnel.bin" ; $15B bytes

LevelData_EastTunnel:
incbin "../data/LevelData_EastTunnel.bin" ; $A1C bytes

LevelData_MainStreet:
check bankcross off
incbin "../data/LevelData_MainStreet.bin" ; $1CD9 bytes
check bankcross on
