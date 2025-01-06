
; bankcross from $CB

warnpc $CC80B8
org $CC80B8


LevelData_EastAqueductQuicksand:
incbin "../data/LevelData_EastAqueductQuicksand.bin" ; $1F0 bytes

LevelData_Aqueduct:
incbin "../data/LevelData_Aqueduct.bin" ; $1E93 bytes

LevelData_Butterfly:
incbin "../data/LevelData_Butterfly.bin" ; $20F bytes

LevelData_BotwoonHallway:
incbin "../data/LevelData_BotwoonHallway.bin" ; $8FE bytes

LevelData_Pants:
incbin "../data/LevelData_Pants.bin" ; $BFB bytes

LevelData_EastPants:
incbin "../data/LevelData_EastPants.bin" ; $4EE bytes

LevelData_Springball:
incbin "../data/LevelData_Springball.bin" ; $4FE bytes

LevelData_BelowBotwoonETank:
incbin "../data/LevelData_BelowBotwoonETank.bin" ; $7C2 bytes

LevelData_Colosseum:
incbin "../data/LevelData_Colosseum.bin" ; $1BC0 bytes

LevelData_ThePrecious:
incbin "../data/LevelData_ThePrecious.bin" ; $85B bytes

LevelData_BotwoonETank:
incbin "../data/LevelData_BotwoonETank.bin" ; $C81 bytes

LevelData_PlasmaBeachQuicksand:
incbin "../data/LevelData_PlasmaBeachQuicksand.bin" ; $FB bytes

LevelData_BotwoonQuicksand:
incbin "../data/LevelData_BotwoonQuicksand.bin" ; $1ED bytes

LevelData_Shaktool_State0:
check bankcross off
incbin "../data/LevelData_Shaktool_State0.bin" ; $68E bytes
check bankcross on
