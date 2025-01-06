
; bankcross from $CA

warnpc $CB83DB
org $CB83DB


LevelData_CrabHole:
incbin "../data/LevelData_CrabHole.bin" ; $45F bytes

LevelData_WestSandHallTunnel:
incbin "../data/LevelData_WestSandHallTunnel.bin" ; $1A6 bytes

LevelData_PlasmaTutorial:
incbin "../data/LevelData_PlasmaTutorial.bin" ; $1F4 bytes

LevelData_Plasma:
incbin "../data/LevelData_Plasma.bin" ; $BBE bytes

LevelData_ThreadTheNeedle:
incbin "../data/LevelData_ThreadTheNeedle.bin" ; $93E bytes

LevelData_MaridiaElev:
incbin "../data/LevelData_MaridiaElev.bin" ; $7A8 bytes

LevelData_PlasmaSpark:
incbin "../data/LevelData_PlasmaSpark.bin" ; $1DD7 bytes

LevelData_Kassiuz:
incbin "../data/LevelData_Kassiuz.bin" ; $750 bytes

LevelData_Toilet:
incbin "../data/LevelData_Toilet.bin" ; $F54 bytes

LevelData_BugSandHole:
incbin "../data/LevelData_BugSandHole.bin" ; $19C bytes

LevelData_WestSandHall:
incbin "../data/LevelData_WestSandHall.bin" ; $5E3 bytes

LevelData_Oasis:
incbin "../data/LevelData_Oasis.bin" ; $427 bytes

LevelData_EastSandHall:
incbin "../data/LevelData_EastSandHall.bin" ; $399 bytes

LevelData_WestSandHole:
incbin "../data/LevelData_WestSandHole.bin" ; $94E bytes

LevelData_EastSandHole:
incbin "../data/LevelData_EastSandHole.bin" ; $948 bytes

LevelData_WestAqueductQuicksand:
check bankcross off
incbin "../data/LevelData_WestAqueductQuicksand.bin" ; $1EF bytes
check bankcross on
