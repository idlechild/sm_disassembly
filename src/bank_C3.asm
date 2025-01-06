

; bankcross from $C2

warnpc $C38E1F
org $C38E1F


LevelData_BowlingAlleyPath:
incbin "../data/LevelData_BowlingAlleyPath.bin" ; $1DF bytes

LevelData_CrateriaKihunter:
incbin "../data/LevelData_CrateriaKihunter.bin" ; $BFE bytes

LevelData_ForgottenHighwayElev:
incbin "../data/LevelData_ForgottenHighwayElev.bin" ; $1BC bytes

LevelData_EastOcean:
incbin "../data/LevelData_EastOcean.bin" ; $F23 bytes

LevelData_ForgottenHighwayKagos:
incbin "../data/LevelData_ForgottenHighwayKagos.bin" ; $4DF bytes

LevelData_CrabMaze:
incbin "../data/LevelData_CrabMaze.bin" ; $9E1 bytes

LevelData_ForgottenHighwayElbow:
incbin "../data/LevelData_ForgottenHighwayElbow.bin" ; $137 bytes

LevelData_CrateriaTube:
incbin "../data/LevelData_CrateriaTube.bin" ; $9B bytes

LevelData_Moat:
incbin "../data/LevelData_Moat.bin" ; $3D8 bytes

LevelData_RedBinstarElev:
incbin "../data/LevelData_RedBinstarElev.bin" ; $1BC bytes

LevelData_GauntletETank:
incbin "../data/LevelData_GauntletETank.bin" ; $50B bytes

LevelData_PreBowling:
incbin "../data/LevelData_PreBowling.bin" ; $18C bytes

LevelData_Climb:
incbin "../data/LevelData_Climb.bin" ; $105F bytes

LevelData_Pit:
incbin "../data/LevelData_Pit.bin" ; $52C bytes

LevelData_ElevToBlueBrinstar:
incbin "../data/LevelData_ElevToBlueBrinstar.bin" ; $1AD bytes

LevelData_BombTorizo:
incbin "../data/LevelData_BombTorizo.bin" ; $9E bytes

LevelData_Flyway:
incbin "../data/LevelData_Flyway.bin" ; $C4 bytes

LevelData_PreMapFlyway:
incbin "../data/LevelData_PreMapFlyway.bin" ; $CA bytes

LevelData_Terminator:
incbin "../data/LevelData_Terminator.bin" ; $689 bytes

LevelData_GreenBrinstarElev:
incbin "../data/LevelData_GreenBrinstarElev.bin" ; $1B0 bytes

LevelData_LowerMushrooms:
incbin "../data/LevelData_LowerMushrooms.bin" ; $32B bytes

LevelData_GreenPiratesShaft:
incbin "../data/LevelData_GreenPiratesShaft.bin" ; $673 bytes

LevelData_CrateriaSuper:
check bankcross off
incbin "../data/LevelData_CrateriaSuper.bin" ; $C4A bytes
check bankcross on
