
; bankcross from $C3

warnpc $C4811E
org $C4811E


LevelData_FinalMissileBombway:
incbin "../data/LevelData_FinalMissileBombway.bin" ; $114 bytes

LevelData_FinalMissile:
incbin "../data/LevelData_FinalMissile.bin" ; $F0 bytes

LevelData_BowlingAlley:
incbin "../data/LevelData_BowlingAlley.bin" ; $1A0C bytes

LevelData_WreckedShipEntrance:
incbin "../data/LevelData_WreckedShipEntrance.bin" ; $180 bytes

LevelData_Attic_State0:
incbin "../data/LevelData_Attic_State0.bin" ; $439 bytes

LevelData_Attic_State1:
incbin "../data/LevelData_Attic_State1.bin" ; $439 bytes

LevelData_AssemblyLine:
incbin "../data/LevelData_AssemblyLine.bin" ; $28C bytes

LevelData_WreckedShipMainShaft_State0:
incbin "../data/LevelData_WreckedShipMainShaft_State0.bin" ; $1414 bytes

LevelData_WreckedShipMainShaft_State1:
incbin "../data/LevelData_WreckedShipMainShaft_State1.bin" ; $13C7 bytes

LevelData_SpikyDeath:
incbin "../data/LevelData_SpikyDeath.bin" ; $267 bytes

LevelData_ElectricDeath:
incbin "../data/LevelData_ElectricDeath.bin" ; $495 bytes

LevelData_WreckedShipETank:
incbin "../data/LevelData_WreckedShipETank.bin" ; $8CB bytes

LevelData_Basement:
incbin "../data/LevelData_Basement.bin" ; $43E bytes

LevelData_Phantoon:
incbin "../data/LevelData_Phantoon.bin" ; $119 bytes

LevelData_SpongeBath:
incbin "../data/LevelData_SpongeBath.bin" ; $2A9 bytes

LevelData_WSWestSuper:
incbin "../data/LevelData_WSWestSuper.bin" ; $141 bytes

LevelData_WSEastSuper_State0:
incbin "../data/LevelData_WSEastSuper_State0.bin" ; $309 bytes

LevelData_WSEastSuper_State1:
incbin "../data/LevelData_WSEastSuper_State1.bin" ; $309 bytes

LevelData_GravitySuit:
incbin "../data/LevelData_GravitySuit.bin" ; $12D bytes

LevelData_GreenBrinstarMainShaft:
check bankcross off
incbin "../data/LevelData_GreenBrinstarMainShaft.bin" ; $1A06 bytes
check bankcross on
