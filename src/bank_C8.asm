
; bankcross from $C7

warnpc $C88532
org $C88532


LevelData_WaveBeam:
incbin "../data/LevelData_WaveBeam.bin" ; $12A bytes

LevelData_SpikyPlatformsTunnel:
incbin "../data/LevelData_SpikyPlatformsTunnel.bin" ; $2F7 bytes

LevelData_Volcano:
incbin "../data/LevelData_Volcano.bin" ; $AE7 bytes

LevelData_KronicBoost:
incbin "../data/LevelData_KronicBoost.bin" ; $923 bytes

LevelData_MagdolliteTunnel:
incbin "../data/LevelData_MagdolliteTunnel.bin" ; $286 bytes

LevelData_PurpleShaft:
incbin "../data/LevelData_PurpleShaft.bin" ; $2EC bytes

LevelData_LavaDive:
incbin "../data/LevelData_LavaDive.bin" ; $7BA bytes

LevelData_LowerNorfairElev:
incbin "../data/LevelData_LowerNorfairElev.bin" ; $164 bytes

LevelData_UpperNorfairFarming:
incbin "../data/LevelData_UpperNorfairFarming.bin" ; $56E bytes

LevelData_RisingTide:
incbin "../data/LevelData_RisingTide.bin" ; $29E bytes

LevelData_AcidSnakesTunnel:
incbin "../data/LevelData_AcidSnakesTunnel.bin" ; $35A bytes

LevelData_SpikyAcidSnakesTunnel:
incbin "../data/LevelData_SpikyAcidSnakesTunnel.bin" ; $17C bytes

LevelData_PurpleFarming:
incbin "../data/LevelData_PurpleFarming.bin" ; $152 bytes

LevelData_BatCave:
incbin "../data/LevelData_BatCave.bin" ; $2C7 bytes

LevelData_FrogSpeedway:
incbin "../data/LevelData_FrogSpeedway.bin" ; $37D bytes

LevelData_RedPirateShaft:
incbin "../data/LevelData_RedPirateShaft.bin" ; $36E bytes

LevelData_AcidStatue:
incbin "../data/LevelData_AcidStatue.bin" ; $8D6 bytes

UNUSED_LevelData_C8CDA9:
incbin "../data/UNUSED_LevelData_C8CDA9.bin" ; $7F3 bytes

LevelData_MainHall:
incbin "../data/LevelData_MainHall.bin" ; $B01 bytes

LevelData_GoldenTorizo:
incbin "../data/LevelData_GoldenTorizo.bin" ; $863 bytes

LevelData_FastRipper:
incbin "../data/LevelData_FastRipper.bin" ; $2FD bytes

LevelData_Ridley:
incbin "../data/LevelData_Ridley.bin" ; $1D1 bytes

LevelData_LNFarming:
incbin "../data/LevelData_LNFarming.bin" ; $251 bytes

LevelData_FastPillarsSetup:
incbin "../data/LevelData_FastPillarsSetup.bin" ; $3EC bytes

UNUSED_LevelData_C8F40B:
incbin "../data/UNUSED_LevelData_C8F40B.bin" ; $180 bytes

LevelData_MickeyMouse:
incbin "../data/LevelData_MickeyMouse.bin" ; $73A bytes

LevelData_Pillar:
check bankcross off
incbin "../data/LevelData_Pillar.bin" ; $55C bytes
check bankcross on
