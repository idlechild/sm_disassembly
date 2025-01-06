
; bankcross from $C6

warnpc $C782ED
org $C782ED


LevelData_IceBeamTutorial:
incbin "../data/LevelData_IceBeamTutorial.bin" ; $628 bytes

LevelData_IceBeam:
incbin "../data/LevelData_IceBeam.bin" ; $133 bytes

LevelData_IceBeamSnake:
incbin "../data/LevelData_IceBeamSnake.bin" ; $471 bytes

LevelData_CrumbleShaft:
incbin "../data/LevelData_CrumbleShaft.bin" ; $2B3 bytes

LevelData_CrocomireSpeedway:
incbin "../data/LevelData_CrocomireSpeedway.bin" ; $1077 bytes

LevelData_Crocomire:
incbin "../data/LevelData_Crocomire.bin" ; $2C5 bytes

LevelData_HiJumpBoots:
incbin "../data/LevelData_HiJumpBoots.bin" ; $157 bytes

LevelData_CrocomireEscape:
incbin "../data/LevelData_CrocomireEscape.bin" ; $8E3 bytes

LevelData_HiJumpETank:
incbin "../data/LevelData_HiJumpETank.bin" ; $443 bytes

LevelData_PostCrocFarming:
incbin "../data/LevelData_PostCrocFarming.bin" ; $3E8 bytes

LevelData_PostCrocPowerBombs:
incbin "../data/LevelData_PostCrocPowerBombs.bin" ; $15C bytes

LevelData_PostCrocShaft:
incbin "../data/LevelData_PostCrocShaft.bin" ; $399 bytes

LevelData_PostCrocMissile:
incbin "../data/LevelData_PostCrocMissile.bin" ; $3EB bytes

LevelData_GrappleTutorial3:
incbin "../data/LevelData_GrappleTutorial3.bin" ; $360 bytes

LevelData_PostCrocJump:
incbin "../data/LevelData_PostCrocJump.bin" ; $EC6 bytes

LevelData_GrappleTutorial2:
incbin "../data/LevelData_GrappleTutorial2.bin" ; $23C bytes

LevelData_GrappleTutorial1:
incbin "../data/LevelData_GrappleTutorial1.bin" ; $16F bytes

LevelData_GrappleBeam:
incbin "../data/LevelData_GrappleBeam.bin" ; $3C2 bytes

LevelData_NorfairReserveTank:
incbin "../data/LevelData_NorfairReserveTank.bin" ; $171 bytes

LevelData_GreenBubblesMissiles:
incbin "../data/LevelData_GreenBubblesMissiles.bin" ; $226 bytes

LevelData_BubbleMountain:
incbin "../data/LevelData_BubbleMountain.bin" ; $7F7 bytes

LevelData_SpeedBoosterHall:
incbin "../data/LevelData_SpeedBoosterHall.bin" ; $A1C bytes

LevelData_SpeedBooster:
incbin "../data/LevelData_SpeedBooster.bin" ; $15B bytes

LevelData_SingleChamber:
incbin "../data/LevelData_SingleChamber.bin" ; $12FF bytes

LevelData_DoubleChamber:
check bankcross off
incbin "../data/LevelData_DoubleChamber.bin" ; $62F bytes
check bankcross on
