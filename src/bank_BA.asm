
; bankcross from $B9

warnpc $BA807E
org $BA807E


Background_Crateria_0_VerticalPatternRocks:
incbin "../data/Background_Crateria_0_VerticalPatternRocks.bin" ; $246 bytes

Background_Crateria_0_HorizontalPatternRocks:
incbin "../data/Background_Crateria_0_HorizontalPatternRocks.bin" ; $173 bytes

Background_Crateria_0_Rocks:
incbin "../data/Background_Crateria_0_Rocks.bin" ; $183 bytes

Background_Crateria_2_PurpleRocks:
incbin "../data/Background_Crateria_2_PurpleRocks.bin" ; $142 bytes

Background_Crateria_2_BrickRoom_WallArt_Dark:
incbin "../data/Background_Crateria_2_BrickRoom_WallArt_Dark.bin" ; $84 bytes

Background_Crateria_2_3_Mechanical:
incbin "../data/Background_Crateria_2_3_Mechanical.bin" ; $2C9 bytes

Background_Crateria_2_BrickRoom_WallArt:
incbin "../data/Background_Crateria_2_BrickRoom_WallArt.bin" ; $84 bytes

Background_Crateria_2_Elevator:
incbin "../data/Background_Crateria_2_Elevator.bin" ; $2F0 bytes

Background_Crateria_2_BrickRoom:
incbin "../data/Background_Crateria_2_BrickRoom.bin" ; $2A bytes

Background_WreckedShip_4_5_EntranceHall_0:
incbin "../data/Background_WreckedShip_4_5_EntranceHall_0.bin" ; $23C bytes

Background_WreckedShip_4_5_EntranceHall_1:
incbin "../data/Background_WreckedShip_4_5_EntranceHall_1.bin" ; $363 bytes

Background_WreckedShip_4_5_Columns_Tubes:
incbin "../data/Background_WreckedShip_4_5_Columns_Tubes.bin" ; $507 bytes

Background_WreckedShip_4_5_ExperimentRoom:
incbin "../data/Background_WreckedShip_4_5_ExperimentRoom.bin" ; $3A8 bytes

Background_WreckedShip_4_5_Panels_Vents:
incbin "../data/Background_WreckedShip_4_5_Panels_Vents.bin" ; $2DD bytes

Background_WreckedShip_4_5_Panels_Vents_Horizontal:
incbin "../data/Background_WreckedShip_4_5_Panels_Vents_Horizontal.bin" ; $207 bytes

Background_WreckedShip_4_5_Panels_Vents_Vertical:
incbin "../data/Background_WreckedShip_4_5_Panels_Vents_Vertical.bin" ; $35C bytes

Background_Maridia_B_BrownWall:
incbin "../data/Background_Maridia_B_BrownWall.bin" ; $22A bytes

Background_Maridia_C_GreenWall:
incbin "../data/Background_Maridia_C_GreenWall.bin" ; $3D9 bytes

Background_Tourian_D_MechanicalRoom:
incbin "../data/Background_Tourian_D_MechanicalRoom.bin" ; $378 bytes

Background_Tourian_D_MechanicalRoom_Letterbox:
incbin "../data/Background_Tourian_D_MechanicalRoom_Letterbox.bin" ; $1F6 bytes

Background_Tourian_D_VerticalStructures:
incbin "../data/Background_Tourian_D_VerticalStructures.bin" ; $385 bytes

Background_Tourian_D_PipeRoom_Letterbox:
incbin "../data/Background_Tourian_D_PipeRoom_Letterbox.bin" ; $26D bytes

Background_Tourian_D_PipeRoom_VerticalSeparation:
incbin "../data/Background_Tourian_D_PipeRoom_VerticalSeparation.bin" ; $3CB bytes

Background_Tourian_D_PipeRoom:
incbin "../data/Background_Tourian_D_PipeRoom.bin" ; $436 bytes

Background_Tourian_E_PipeRoom_Dark:
incbin "../data/Background_Tourian_E_PipeRoom_Dark.bin" ; $451 bytes

Background_Tourian_D_E_StatueHall:
incbin "../data/Background_Tourian_D_E_StatueHall.bin" ; $292 bytes

Background_Tourian_15_Statues:
incbin "../data/Background_Tourian_15_Statues.bin" ; $164 bytes

Background_Blank:
incbin "../data/Background_Blank.bin" ; $9 bytes

Tiles_0_1_UpperCrateria:
incbin "../data/Tiles_0_1_UpperCrateria.bin" ; $32E8 bytes

Tiles_2_3_LowerCrateria:
check bankcross off
incbin "../data/Tiles_2_3_LowerCrateria.bin" ; $358C bytes
check bankcross on
