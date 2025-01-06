
; bankcross from $C9

warnpc $CA8EFF
org $CA8EFF


LevelData_FishTank:
incbin "../data/LevelData_FishTank.bin" ; $1214 bytes

LevelData_MamaTurtle:
incbin "../data/LevelData_MamaTurtle.bin" ; $E86 bytes

LevelData_CrabTunnel:
incbin "../data/LevelData_CrabTunnel.bin" ; $2B6 bytes

LevelData_MtEverest:
incbin "../data/LevelData_MtEverest.bin" ; $1BF3 bytes

LevelData_RedFish:
incbin "../data/LevelData_RedFish.bin" ; $632 bytes

LevelData_WateringHole:
incbin "../data/LevelData_WateringHole.bin" ; $754 bytes

LevelData_NWestMaridiaBug:
incbin "../data/LevelData_NWestMaridiaBug.bin" ; $890 bytes

LevelData_CrabShaft:
incbin "../data/LevelData_CrabShaft.bin" ; $1144 bytes

LevelData_PseudoPlasmaSpark:
check bankcross off
incbin "../data/LevelData_PseudoPlasmaSpark.bin" ; $E3E bytes
check bankcross on
