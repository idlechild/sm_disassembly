
; bankcross from $C4

warnpc $C58BD5
org $C58BD5


LevelData_SporeSpawnSuper:
incbin "../data/LevelData_SporeSpawnSuper.bin" ; $A6D bytes

LevelData_BrinstarPreMap:
incbin "../data/LevelData_BrinstarPreMap.bin" ; $113 bytes

LevelData_EarlySupers:
incbin "../data/LevelData_EarlySupers.bin" ; $3AB bytes

LevelData_BrinstarReserveTank:
incbin "../data/LevelData_BrinstarReserveTank.bin" ; $1AC bytes

LevelData_GreenBrinstarFirefleas:
incbin "../data/LevelData_GreenBrinstarFirefleas.bin" ; $4B3 bytes

LevelData_Dachora:
incbin "../data/LevelData_Dachora.bin" ; $13EE bytes

LevelData_BigPink:
incbin "../data/LevelData_BigPink.bin" ; $165A bytes

LevelData_SporeSpawnKihunters:
incbin "../data/LevelData_SporeSpawnKihunters.bin" ; $28D bytes

LevelData_SporeSpawn:
incbin "../data/LevelData_SporeSpawn.bin" ; $35B bytes

LevelData_PinkBrinstarPowerBombs:
incbin "../data/LevelData_PinkBrinstarPowerBombs.bin" ; $3CA bytes

LevelData_GreenHillZone:
incbin "../data/LevelData_GreenHillZone.bin" ; $97C bytes

LevelData_MorphBall:
incbin "../data/LevelData_MorphBall.bin" ; $765 bytes

LevelData_ConstructionZone:
incbin "../data/LevelData_ConstructionZone.bin" ; $325 bytes

LevelData_BlueBrinstarETank:
incbin "../data/LevelData_BlueBrinstarETank.bin" ; $43F bytes

LevelData_NoobBridge:
incbin "../data/LevelData_NoobBridge.bin" ; $2C3 bytes

LevelData_GreenBrinstarBeetoms:
incbin "../data/LevelData_GreenBrinstarBeetoms.bin" ; $E6 bytes

LevelData_EtecoonETank:
incbin "../data/LevelData_EtecoonETank.bin" ; $3E7 bytes

LevelData_EtecoonSuper:
incbin "../data/LevelData_EtecoonSuper.bin" ; $8B bytes

LevelData_SporeSpawnFarming:
incbin "../data/LevelData_SporeSpawnFarming.bin" ; $2AF bytes

LevelData_WaterwayETank:
incbin "../data/LevelData_WaterwayETank.bin" ; $5D8 bytes

LevelData_FirstMissile:
incbin "../data/LevelData_FirstMissile.bin" ; $CB bytes

LevelData_PinkBrinstarHoppers:
check bankcross off
incbin "../data/LevelData_PinkBrinstarHoppers.bin" ; $3A6 bytes
check bankcross on
