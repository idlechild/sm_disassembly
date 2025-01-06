
; bankcross from $CC

warnpc $CD8404
org $CD8404


LevelData_Shaktool_State1:
incbin "../data/LevelData_Shaktool_State1.bin" ; $633 bytes

LevelData_HalfieClimb:
incbin "../data/LevelData_HalfieClimb.bin" ; $AD7 bytes

LevelData_Botwoon:
incbin "../data/LevelData_Botwoon.bin" ; $410 bytes

LevelData_SpaceJump:
incbin "../data/LevelData_SpaceJump.bin" ; $20A bytes

LevelData_WestCactusAlley:
incbin "../data/LevelData_WestCactusAlley.bin" ; $4E5 bytes

LevelData_EastCactusAlley:
incbin "../data/LevelData_EastCactusAlley.bin" ; $1190 bytes

LevelData_Draygon:
incbin "../data/LevelData_Draygon.bin" ; $6A9 bytes

LevelData_CeresElev:
incbin "../data/LevelData_CeresElev.bin" ; $3B8 bytes

LevelData_FallingTile:
incbin "../data/LevelData_FallingTile.bin" ; $17A bytes

LevelData_MagnetStairs:
incbin "../data/LevelData_MagnetStairs.bin" ; $251 bytes

LevelData_DeadScientist:
incbin "../data/LevelData_DeadScientist.bin" ; $367 bytes

LevelData_58Escape:
incbin "../data/LevelData_58Escape.bin" ; $10F bytes

LevelData_CeresRidley:
incbin "../data/LevelData_CeresRidley.bin" ; $BF bytes

LevelData_TourianFirst:
incbin "../data/LevelData_TourianFirst.bin" ; $3DE bytes

LevelData_Metroids1:
incbin "../data/LevelData_Metroids1.bin" ; $4C4 bytes

LevelData_Metroids2:
incbin "../data/LevelData_Metroids2.bin" ; $28D bytes

LevelData_Metroids3:
incbin "../data/LevelData_Metroids3.bin" ; $3B8 bytes

LevelData_Metroids4:
incbin "../data/LevelData_Metroids4.bin" ; $206 bytes

LevelData_BlueHopper:
incbin "../data/LevelData_BlueHopper.bin" ; $1D9 bytes

LevelData_DustTorizo:
incbin "../data/LevelData_DustTorizo.bin" ; $16C bytes

LevelData_BigBoy:
incbin "../data/LevelData_BigBoy.bin" ; $2C8 bytes

LevelData_Seaweed:
incbin "../data/LevelData_Seaweed.bin" ; $2E6 bytes

LevelData_MotherBrain:
incbin "../data/LevelData_MotherBrain.bin" ; $331 bytes

LevelData_TourianEyeDoor:
incbin "../data/LevelData_TourianEyeDoor.bin" ; $309 bytes

LevelData_RinkaShaft:
incbin "../data/LevelData_RinkaShaft.bin" ; $3FC bytes

LevelData_TourianEscape1:
incbin "../data/LevelData_TourianEscape1.bin" ; $247 bytes

LevelData_TourianEscape2:
incbin "../data/LevelData_TourianEscape2.bin" ; $21F bytes

LevelData_TourianEscape3:
incbin "../data/LevelData_TourianEscape3.bin" ; $7BA bytes

LevelData_TourianEscape4:
check bankcross off
incbin "../data/LevelData_TourianEscape4.bin" ; $E8E bytes
check bankcross on
