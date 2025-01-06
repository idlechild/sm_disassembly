
; bankcross from $C1

warnpc $C2855F
org $C2855F


TileTables_C_SandyMaridia:
incbin "../data/TileTables_C_SandyMaridia.bin" ; $10AE bytes

TileTables_1C_Draygon:
incbin "../data/TileTables_1C_Draygon.bin" ; $4F4 bytes

TileTables_D_E_Tourian:
incbin "../data/TileTables_D_E_Tourian.bin" ; $77A bytes

TileTables_15_16_17_18_19_UtilityRoom_Statues:
incbin "../data/TileTables_15_16_17_18_19_UtilityRoom_Statues.bin" ; $4E3 bytes

TileTables_F_10_11_12_13_14_Ceres:
incbin "../data/TileTables_F_10_11_12_13_14_Ceres.bin" ; $61E bytes

Palettes_0_UpperCrateria:
incbin "../data/Palettes_0_UpperCrateria.bin" ; $E1 bytes

Palettes_1_RedCrateria:
incbin "../data/Palettes_1_RedCrateria.bin" ; $E6 bytes

Palettes_2_LowerCrateria:
incbin "../data/Palettes_2_LowerCrateria.bin" ; $D2 bytes

Palettes_3_OldTourian:
incbin "../data/Palettes_3_OldTourian.bin" ; $D2 bytes

Palettes_4_WreckedShip_PowerOn:
incbin "../data/Palettes_4_WreckedShip_PowerOn.bin" ; $BF bytes

Palettes_5_WreckedShip_PowerOff:
incbin "../data/Palettes_5_WreckedShip_PowerOff.bin" ; $BE bytes

Palettes_6_GreenBlueBrinstar:
incbin "../data/Palettes_6_GreenBlueBrinstar.bin" ; $FB bytes

Palettes_7_RedBrinstar_Kraid:
incbin "../data/Palettes_7_RedBrinstar_Kraid.bin" ; $E8 bytes

Palettes_8_StatuesHall:
incbin "../data/Palettes_8_StatuesHall.bin" ; $C9 bytes

Palettes_1A_Kraid:
incbin "../data/Palettes_1A_Kraid.bin" ; $D4 bytes

Palettes_9_HeatedNorfair:
incbin "../data/Palettes_9_HeatedNorfair.bin" ; $D7 bytes

Palettes_A_UnheatedNorfair:
incbin "../data/Palettes_A_UnheatedNorfair.bin" ; $DD bytes

Palettes_1B_Crocomire:
incbin "../data/Palettes_1B_Crocomire.bin" ; $A4 bytes

Palettes_B_SandlessMaridia:
incbin "../data/Palettes_B_SandlessMaridia.bin" ; $F2 bytes

Palettes_C_SandyMaridia:
incbin "../data/Palettes_C_SandyMaridia.bin" ; $FE bytes

Palettes_1C_Draygon:
incbin "../data/Palettes_1C_Draygon.bin" ; $C1 bytes

Palettes_D_Tourian:
incbin "../data/Palettes_D_Tourian.bin" ; $D4 bytes

Palettes_E_MotherBrain:
incbin "../data/Palettes_E_MotherBrain.bin" ; $DB bytes

Palettes_Map_Statues:
incbin "../data/Palettes_Map_Statues.bin" ; $DF bytes

Palettes_16_WreckedShipMap_PowerOff:
incbin "../data/Palettes_16_WreckedShipMap_PowerOff.bin" ; $DD bytes

Palettes_17_BlueRefill:
incbin "../data/Palettes_17_BlueRefill.bin" ; $E5 bytes

Palettes_18_YellowRefill:
incbin "../data/Palettes_18_YellowRefill.bin" ; $E4 bytes

Palettes_19_SaveStation:
incbin "../data/Palettes_19_SaveStation.bin" ; $E3 bytes

Palettes_F_11_13_BlueCeres:
incbin "../data/Palettes_F_11_13_BlueCeres.bin" ; $DF bytes

Palettes_10_12_14_WhiteCeres:
incbin "../data/Palettes_10_12_14_WhiteCeres.bin" ; $D8 bytes

LevelData_LandingSite:
incbin "../data/LevelData_LandingSite.bin" ; $142D bytes

LevelData_GauntletEntrance:
incbin "../data/LevelData_GauntletEntrance.bin" ; $4DC bytes

LevelData_Parlor:
incbin "../data/LevelData_Parlor.bin" ; $DB3 bytes

LevelData_CrateriaPowerBombs:
incbin "../data/LevelData_CrateriaPowerBombs.bin" ; $1CE bytes

LevelData_WestOcean:
check bankcross off
incbin "../data/LevelData_WestOcean.bin" ; $22D9 bytes
check bankcross on
