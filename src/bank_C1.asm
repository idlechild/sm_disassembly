
; bankcross from $C0

warnpc $C18DA9
org $C18DA9


Tiles_13_14_CeresRidley:
incbin "../data/Tiles_13_14_CeresRidley.bin" ; $294D bytes

TileTables_0_1_UpperCrateria:
incbin "../data/TileTables_0_1_UpperCrateria.bin" ; $7F8 bytes

TileTables_2_3_LowerCrateria:
incbin "../data/TileTables_2_3_LowerCrateria.bin" ; $6E1 bytes

TileTables_4_5_WreckedShip:
incbin "../data/TileTables_4_5_WreckedShip.bin" ; $9D7 bytes

TileTables_6_GreenBlueBrinstar:
incbin "../data/TileTables_6_GreenBlueBrinstar.bin" ; $936 bytes

TileTables_7_8_RedBrinstar_Kraid_StatuesHall:
incbin "../data/TileTables_7_8_RedBrinstar_Kraid_StatuesHall.bin" ; $8AD bytes

TileTables_1A_Kraid:
incbin "../data/TileTables_1A_Kraid.bin" ; $1D8 bytes

TileTables_9_A_Norfair:
incbin "../data/TileTables_9_A_Norfair.bin" ; $104E bytes

TileTables_1B_Crocomire:
incbin "../data/TileTables_1B_Crocomire.bin" ; $102 bytes

TileTables_B_SandlessMaridia:
check bankcross off
incbin "../data/TileTables_B_SandlessMaridia.bin" ; $10AD bytes
check bankcross on
