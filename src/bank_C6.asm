
; bankcross from $C5

warnpc $C681C2
org $C681C2


LevelData_HopperETank:
incbin "../data/LevelData_HopperETank.bin" ; $156 bytes

LevelData_BlueBrinstarBoulders:
incbin "../data/LevelData_BlueBrinstarBoulders.bin" ; $11F bytes

LevelData_BillyMays:
incbin "../data/LevelData_BillyMays.bin" ; $B7 bytes

LevelData_RedTower:
incbin "../data/LevelData_RedTower.bin" ; $CF5 bytes

LevelData_RedBrinstarFirefleas:
incbin "../data/LevelData_RedBrinstarFirefleas.bin" ; $A16 bytes

LevelData_XrayScope:
incbin "../data/LevelData_XrayScope.bin" ; $177 bytes

LevelData_Hellway:
incbin "../data/LevelData_Hellway.bin" ; $1DB bytes

LevelData_Caterpillar:
incbin "../data/LevelData_Caterpillar.bin" ; $13D4 bytes

LevelData_BetaPowerBomb:
incbin "../data/LevelData_BetaPowerBomb.bin" ; $26D bytes

LevelData_AlphaPowerBomb:
incbin "../data/LevelData_AlphaPowerBomb.bin" ; $1AD bytes

LevelData_SkreeBoost:
incbin "../data/LevelData_SkreeBoost.bin" ; $1E3 bytes

LevelData_BelowSpazer:
incbin "../data/LevelData_BelowSpazer.bin" ; $3AB bytes

LevelData_Spazer:
incbin "../data/LevelData_Spazer.bin" ; $BC bytes

LevelData_WarehouseZeela:
incbin "../data/LevelData_WarehouseZeela.bin" ; $6E6 bytes

LevelData_WarehouseETank:
incbin "../data/LevelData_WarehouseETank.bin" ; $1C7 bytes

LevelData_WarehouseKihunter:
incbin "../data/LevelData_WarehouseKihunter.bin" ; $789 bytes

LevelData_MiniKraid:
incbin "../data/LevelData_MiniKraid.bin" ; $512 bytes

LevelData_KraidEyeDoor:
incbin "../data/LevelData_KraidEyeDoor.bin" ; $355 bytes

LevelData_Kraid:
incbin "../data/LevelData_Kraid.bin" ; $26D bytes

LevelData_StatuesHallway:
incbin "../data/LevelData_StatuesHallway.bin" ; $4EA bytes

UNUSED_LevelData_C6DD77:
incbin "../data/UNUSED_LevelData_C6DD77.bin" ; $169 bytes

LevelData_WarehouseEntrance:
incbin "../data/LevelData_WarehouseEntrance.bin" ; $475 bytes

LevelData_VariaSuit:
incbin "../data/LevelData_VariaSuit.bin" ; $14F bytes

LevelData_IceBeamAcid:
incbin "../data/LevelData_IceBeamAcid.bin" ; $151 bytes

LevelData_Cathedral:
incbin "../data/LevelData_Cathedral.bin" ; $6C4 bytes

LevelData_CathedralEntrance:
incbin "../data/LevelData_CathedralEntrance.bin" ; $628 bytes

LevelData_BusinessCenter:
incbin "../data/LevelData_BusinessCenter.bin" ; $5E0 bytes

LevelData_IceBeamGate:
check bankcross off
incbin "../data/LevelData_IceBeamGate.bin" ; $A2B bytes
check bankcross on
