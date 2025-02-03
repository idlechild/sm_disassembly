
org $A48000


CommonA4_GrappleAI_NoInteraction:
    JSL.L GrappleAI_SwitchEnemyAIToMainAI                                ;A48000;
    RTL                                                                  ;A48004;


CommonA4_GrappleAI_SamusLatchesOn:
    JSL.L GrappleAI_SamusLatchesOnWithGrapple                            ;A48005;
    RTL                                                                  ;A48009;


CommonA4_GrappleAI_KillEnemy:
    JSL.L GrappleAI_EnemyGrappleDeath                                    ;A4800A;
    RTL                                                                  ;A4800E;


CommonA4_GrappleAI_CancelGrappleBeam:
    JSL.L GrappleAI_SwitchToFrozenAI                                     ;A4800F;
    RTL                                                                  ;A48013;


CommonA4_GrappleAI_SamusLatchesOn_NoInvincibility:
    JSL.L GrappleAI_SamusLatchesOnWithGrapple_NoInvincibility            ;A48014;
    RTL                                                                  ;A48018;


UNUSED_CommonA4_GrappleAI_SamusLatchesOn_ParalyzeEnemy_A48019:
    JSL.L GrappleAI_SamusLatchesOnWithGrapple_ParalyzeEnemy              ;A48019;
    RTL                                                                  ;A4801D;


CommonA4_GrappleAI_HurtSamus:
    JSL.L GrappleAI_SwitchToFrozenAI_duplicate                           ;A4801E;
    RTL                                                                  ;A48022;


CommonA4_NormalEnemyTouchAI:
    JSL.L NormalEnemyTouchAI                                             ;A48023;
    RTL                                                                  ;A48027;


CommonA4_NormalTouchAI_NoDeathCheck:
    JSL.L NormalEnemyTouchAI_NoDeathCheck_External                       ;A48028;
    RTL                                                                  ;A4802C;


CommonA4_NormalEnemyShotAI:
    JSL.L NormalEnemyShotAI                                              ;A4802D;
    RTL                                                                  ;A48031;


CommonA4_NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic:
    JSL.L NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic_External     ;A48032;
    RTL                                                                  ;A48036;


CommonA4_NormalEnemyPowerBombAI:
    JSL.L NormalEnemyPowerBombAI                                         ;A48037;
    RTL                                                                  ;A4803B;


CommonA4_NormalEnemyPowerBombAI_NoDeathCheck:
    JSL.L NormalEnemyPowerBombAI_NoDeathCheck_External                   ;A4803C;
    RTL                                                                  ;A48040;


CommonA4_NormalEnemyFrozenAI:
    JSL.L NormalEnemyFrozenAI                                            ;A48041;
    RTL                                                                  ;A48045;


CommonA4_CreateADudShot:
    JSL.L CreateADudShot                                                 ;A48046;
    RTL                                                                  ;A4804A;


RTS_A4804B:
    RTS                                                                  ;A4804B;


RTL_A4804C:
    RTL                                                                  ;A4804C;


Spritemap_CommonA4_Nothing:
    dw $0000                                                             ;A4804D;

ExtendedSpritemap_CommonA4_Nothing:
    dw $0001                                                             ;A4804F;
    dw $0000,$0000
    dw Spritemap_CommonA4_Nothing                                        ;A48055;
    dw Hitbox_CommonA4_Nothing                                           ;A48057;

Hitbox_CommonA4_Nothing:
    dw $0001                                                             ;A48059;
    dw $0000,$0000,$0000,$0000
    dw CommonA4_NormalEnemyTouchAI                                       ;A48063;
    dw CommonA4_NormalEnemyShotAI                                        ;A48065;

InstList_CommonA4_DeleteEnemy:
    dw Instruction_CommonA4_DeleteEnemy                                  ;A48067;

NOPNOP_A48069:
    NOP                                                                  ;A48069;
    NOP                                                                  ;A4806A;

Instruction_CommonA4_Enemy0FB2_InY:
    LDA.W $0000,Y                                                        ;A4806B;
    STA.W $0FB2,X                                                        ;A4806E;
    INY                                                                  ;A48071;
    INY                                                                  ;A48072;
    RTL                                                                  ;A48073;


Instruction_CommonA4_SetEnemy0FB2ToRTS:
    LDA.W #RTS_A4807B                                                    ;A48074;
    STA.W $0FB2,X                                                        ;A48077;
    RTL                                                                  ;A4807A;


RTS_A4807B:
    RTS                                                                  ;A4807B;


Instruction_CommonA4_DeleteEnemy:
    LDA.W $0F86,X                                                        ;A4807C;
    ORA.W #$0200                                                         ;A4807F;
    STA.W $0F86,X                                                        ;A48082;
    PLA                                                                  ;A48085;
    PEA.W ProcessEnemyInstructions_return-1                              ;A48086;
    RTL                                                                  ;A48089;


Instruction_CommonA4_CallFunctionInY:
    LDA.W $0000,Y                                                        ;A4808A;
    STA.B $12                                                            ;A4808D;
    PHY                                                                  ;A4808F;
    PHX                                                                  ;A48090;
    PEA.W .manualReturn-1                                                ;A48091;
    JMP.W ($0012)                                                        ;A48094;


.manualReturn:
    PLX                                                                  ;A48097;
    PLY                                                                  ;A48098;
    INY                                                                  ;A48099;
    INY                                                                  ;A4809A;
    RTL                                                                  ;A4809B;


Instruction_CommonA4_CallFunctionInY_WithA:
    LDA.W $0000,Y                                                        ;A4809C;
    STA.B $12                                                            ;A4809F;
    LDA.W $0002,Y                                                        ;A480A1;
    PHY                                                                  ;A480A4;
    PHX                                                                  ;A480A5;
    PEA.W .manualReturn-1                                                ;A480A6;
    JMP.W ($0012)                                                        ;A480A9;


.manualReturn:
    PLX                                                                  ;A480AC;
    PLY                                                                  ;A480AD;
    TYA                                                                  ;A480AE;
    CLC                                                                  ;A480AF;
    ADC.W #$0004                                                         ;A480B0;
    TAY                                                                  ;A480B3;
    RTL                                                                  ;A480B4;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_Instruction_CommonA4_CallExternalFunctionInY_A480B5:
    LDA.W $0000,Y                                                        ;A480B5;
    STA.B $12                                                            ;A480B8;
    LDA.W $0001,Y                                                        ;A480BA;
    STA.B $13                                                            ;A480BD;
    PHX                                                                  ;A480BF;
    PHY                                                                  ;A480C0;
    JSL.L .externalFunction                                              ;A480C1;
    PLY                                                                  ;A480C5;
    PLX                                                                  ;A480C6;
    INY                                                                  ;A480C7;
    INY                                                                  ;A480C8;
    INY                                                                  ;A480C9;
    RTL                                                                  ;A480CA;


.externalFunction:
    JML.W [$0012]                                                        ;A480CB;


UNUSED_Inst_CommonA4_CallExternalFunctionInY_WithA_A480CE:
    LDA.W $0000,Y                                                        ;A480CE;
    STA.B $12                                                            ;A480D1;
    LDA.W $0001,Y                                                        ;A480D3;
    STA.B $13                                                            ;A480D6;
    LDA.W $0003,Y                                                        ;A480D8;
    PHX                                                                  ;A480DB;
    PHY                                                                  ;A480DC;
    JSL.L .externalFunction                                              ;A480DD;
    PLY                                                                  ;A480E1;
    PLX                                                                  ;A480E2;
    TYA                                                                  ;A480E3;
    CLC                                                                  ;A480E4;
    ADC.W #$0005                                                         ;A480E5;
    TAY                                                                  ;A480E8;
    RTL                                                                  ;A480E9;


.externalFunction:
    JML.W [$0012]                                                        ;A480EA;
endif ; !FEATURE_KEEP_UNREFERENCED


Instruction_CommonA4_GotoY:
    LDA.W $0000,Y                                                        ;A480ED;
    TAY                                                                  ;A480F0;
    RTL                                                                  ;A480F1;


Instruction_CommonA4_GotoY_PlusY:
    STY.B $12                                                            ;A480F2;
    DEY                                                                  ;A480F4;
    LDA.W $0000,Y                                                        ;A480F5;
    XBA                                                                  ;A480F8;
    BMI .highByte                                                        ;A480F9;
    AND.W #$00FF                                                         ;A480FB;
    BRA +                                                                ;A480FE;


.highByte:
    ORA.W #$FF00                                                         ;A48100;

  + CLC                                                                  ;A48103;
    ADC.B $12                                                            ;A48104;
    TAY                                                                  ;A48106;
    RTL                                                                  ;A48107;


Instruction_CommonA4_DecrementTimer_GotoYIfNonZero:
    DEC.W $0F90,X                                                        ;A48108;
    BNE Instruction_CommonA4_GotoY                                       ;A4810B;
    INY                                                                  ;A4810D;
    INY                                                                  ;A4810E;
    RTL                                                                  ;A4810F;


Instruction_CommonA4_DecrementTimer_GotoYIfNonZero_duplicate:
    DEC.W $0F90,X                                                        ;A48110;
    BNE Instruction_CommonA4_GotoY                                       ;A48113;
    INY                                                                  ;A48115;
    INY                                                                  ;A48116;
    RTL                                                                  ;A48117;


Instruction_CommonA4_DecrementTimer_GotoY_PlusY_IfNonZero:
    SEP #$20                                                             ;A48118;
    DEC.W $0F90,X                                                        ;A4811A;
    REP #$20                                                             ;A4811D;
    BNE Instruction_CommonA4_GotoY_PlusY                                 ;A4811F;
    INY                                                                  ;A48121;
    RTL                                                                  ;A48122;


Instruction_CommonA4_TimerInY:
    LDA.W $0000,Y                                                        ;A48123;
    STA.W $0F90,X                                                        ;A48126;
    INY                                                                  ;A48129;
    INY                                                                  ;A4812A;
    RTL                                                                  ;A4812B;


Instruction_CommonA4_SkipNextInstruction:
    INY                                                                  ;A4812C;
    INY                                                                  ;A4812D;
    RTL                                                                  ;A4812E;


Instruction_CommonA4_Sleep:
    DEY                                                                  ;A4812F;
    DEY                                                                  ;A48130;
    TYA                                                                  ;A48131;
    STA.W $0F92,X                                                        ;A48132;
    PLA                                                                  ;A48135;
    PEA.W ProcessEnemyInstructions_return-1                              ;A48136;
    RTL                                                                  ;A48139;


Instruction_CommonA4_WaitYFrames:
    LDA.W $0000,Y                                                        ;A4813A;
    STA.W $0F94,X                                                        ;A4813D;
    INY                                                                  ;A48140;
    INY                                                                  ;A48141;
    TYA                                                                  ;A48142;
    STA.W $0F92,X                                                        ;A48143;
    PLA                                                                  ;A48146;
    PEA.W ProcessEnemyInstructions_return-1                              ;A48147;
    RTL                                                                  ;A4814A;


Instruction_CommonA4_TransferYBytesInYToVRAM:
    PHX                                                                  ;A4814B;
    LDX.W $0330                                                          ;A4814C;
    LDA.W $0000,Y                                                        ;A4814F;
    STA.B $D0,X                                                          ;A48152;
    LDA.W $0002,Y                                                        ;A48154;
    STA.B $D2,X                                                          ;A48157;
    LDA.W $0003,Y                                                        ;A48159;
    STA.B $D3,X                                                          ;A4815C;
    LDA.W $0005,Y                                                        ;A4815E;
    STA.B $D5,X                                                          ;A48161;
    TXA                                                                  ;A48163;
    CLC                                                                  ;A48164;
    ADC.W #$0007                                                         ;A48165;
    STA.W $0330                                                          ;A48168;
    TYA                                                                  ;A4816B;
    CLC                                                                  ;A4816C;
    ADC.W #$0007                                                         ;A4816D;
    TAY                                                                  ;A48170;
    PLX                                                                  ;A48171;
    RTL                                                                  ;A48172;


Instruction_CommonA4_EnableOffScreenProcessing:
    LDA.W $0F86,X                                                        ;A48173;
    ORA.W #$0800                                                         ;A48176;
    STA.W $0F86,X                                                        ;A48179;
    RTL                                                                  ;A4817C;


Instruction_CommonA4_DisableOffScreenProcessing:
    LDA.W $0F86,X                                                        ;A4817D;
    AND.W #$F7FF                                                         ;A48180;
    STA.W $0F86,X                                                        ;A48183;
    RTL                                                                  ;A48186;


;        _____________________ Speed
;       |      _______________ Subspeed
;       |     |      _________ Negated speed
;       |     |     |      ___ Negated subspeed
;       |     |     |     |
CommonA4EnemySpeeds_LinearlyIncreasing:
  .speed:
    dw $0000                                                             ;A48187;
  .subspeed:
    dw       $0000                                                       ;A48189;
  .negatedSpeed:
    dw             $0000                                                 ;A4818B;
  .negatedSubspeed:
    dw                   $0000                                           ;A4818D;
    dw $0000,$1333,$FFFF,$ECCD
    dw $0000,$2666,$FFFF,$D99A
    dw $0000,$3999,$FFFF,$C667
    dw $0000,$4CCC,$FFFF,$B334
    dw $0000,$5FFF,$FFFF,$A001
    dw $0000,$7332,$FFFF,$8CCE
    dw $0000,$8665,$FFFF,$799B
    dw $0000,$9998,$FFFF,$6668
    dw $0000,$ACCB,$FFFF,$5335
    dw $0000,$BFFE,$FFFF,$4002
    dw $0000,$D331,$FFFF,$2CCF
    dw $0000,$E664,$FFFF,$199C
    dw $0000,$F997,$FFFF,$0669
    dw $0001,$0CCA,$FFFE,$F336
    dw $0001,$1FFD,$FFFE,$E003
    dw $0001,$3330,$FFFE,$CCD0
    dw $0001,$4663,$FFFE,$B99D
    dw $0001,$5996,$FFFE,$A66A
    dw $0001,$6CC9,$FFFE,$9337
    dw $0001,$7FFC,$FFFE,$8004
    dw $0001,$932F,$FFFE,$6CD1
    dw $0001,$A662,$FFFE,$599E
    dw $0001,$B995,$FFFE,$466B
    dw $0001,$CCC8,$FFFE,$3338
    dw $0001,$DFFB,$FFFE,$2005
    dw $0001,$F32E,$FFFE,$0CD2
    dw $0002,$0661,$FFFD,$F99F
    dw $0002,$1994,$FFFD,$E66C
    dw $0002,$2CC7,$FFFD,$D339
    dw $0002,$3FFA,$FFFD,$C006
    dw $0002,$532D,$FFFD,$ACD3
    dw $0002,$6660,$FFFD,$99A0
    dw $0002,$7993,$FFFD,$866D
    dw $0002,$8CC6,$FFFD,$733A
    dw $0002,$9FF9,$FFFD,$6007
    dw $0002,$B32C,$FFFD,$4CD4
    dw $0002,$C65F,$FFFD,$39A1
    dw $0002,$D992,$FFFD,$266E
    dw $0002,$ECC5,$FFFD,$133B
    dw $0002,$FFF8,$FFFD,$0008
    dw $0003,$132B,$FFFC,$ECD5
    dw $0003,$265E,$FFFC,$D9A2
    dw $0003,$3991,$FFFC,$C66F
    dw $0003,$4CC4,$FFFC,$B33C
    dw $0003,$5FF7,$FFFC,$A009
    dw $0003,$732A,$FFFC,$8CD6
    dw $0003,$865D,$FFFC,$79A3
    dw $0003,$9990,$FFFC,$6670
    dw $0003,$ACC3,$FFFC,$533D
    dw $0003,$BFF6,$FFFC,$400A
    dw $0003,$D329,$FFFC,$2CD7
    dw $0003,$E65C,$FFFC,$19A4
    dw $0003,$F98F,$FFFC,$0671
    dw $0004,$0CC2,$FFFB,$F33E
    dw $0004,$1FF5,$FFFB,$E00B
    dw $0004,$3328,$FFFB,$CCD8
    dw $0004,$465B,$FFFB,$B9A5
    dw $0004,$598E,$FFFB,$A672
    dw $0004,$6CC1,$FFFB,$933F
    dw $0004,$7FF4,$FFFB,$800C
    dw $0004,$9327,$FFFB,$6CD9
    dw $0004,$A65A,$FFFB,$59A6
    dw $0004,$B98D,$FFFB,$4673
    dw $0004,$CCC0,$FFFB,$3340
    dw $0004,$DFF3,$FFFB,$200D
    dw $0004,$F326,$FFFB,$0CDA


;        _____________________ Subspeed
;       |      _______________ Speed
;       |     |      _________ Negated subspeed
;       |     |     |      ___ Negated speed
;       |     |     |     |
CommonA4EnemySpeeds_QuadraticallyIncreasing:
; I.e. gravity
; Used by e.g. Botwoon when dying and falling to the floor
  .subspeed:
    dw $0000                                                             ;A4838F;
  .speed:
    dw       $0000                                                       ;A48391;
  .negatedSubspeed:
    dw             $0000                                                 ;A48393;
  .negatedSpeed:
    dw                   $0000                                           ;A48395;
    dw $0109,$0000,$FEF7,$FFFF
    dw $031B,$0000,$FCE5,$FFFF
    dw $073F,$0000,$F8C1,$FFFF
    dw $0B63,$0000,$F49D,$FFFF
    dw $1199,$0000,$EE67,$FFFF
    dw $19E1,$0000,$E61F,$FFFF
    dw $2229,$0000,$DDD7,$FFFF
    dw $2C83,$0000,$D37D,$FFFF
    dw $36DD,$0000,$C923,$FFFF
    dw $4349,$0000,$BCB7,$FFFF
    dw $51C7,$0000,$AE39,$FFFF
    dw $6045,$0000,$9FBB,$FFFF
    dw $70D5,$0000,$8F2B,$FFFF
    dw $8165,$0000,$7E9B,$FFFF
    dw $9407,$0000,$6BF9,$FFFF
    dw $A8BB,$0000,$5745,$FFFF
    dw $BD6F,$0000,$4291,$FFFF
    dw $D435,$0000,$2BCB,$FFFF
    dw $EAFB,$0000,$1505,$FFFF
    dw $03D3,$0001,$FC2D,$FFFE
    dw $15BD,$0001,$EA43,$FFFE
    dw $30A7,$0001,$CF59,$FFFE
    dw $4DA3,$0001,$B25D,$FFFE
    dw $6A9F,$0001,$9561,$FFFE
    dw $89AD,$0001,$7653,$FFFE
    dw $AACD,$0001,$5533,$FFFE
    dw $CBED,$0001,$3413,$FFFE
    dw $EF1F,$0001,$10E1,$FFFE
    dw $0951,$0002,$F6AF,$FFFD
    dw $2E95,$0002,$D16B,$FFFD
    dw $55EB,$0002,$AA15,$FFFD
    dw $7D41,$0002,$82BF,$FFFD
    dw $A6A9,$0002,$5957,$FFFD
    dw $D011,$0002,$2FEF,$FFFD
    dw $FB8B,$0002,$0475,$FFFD
    dw $2017,$0003,$DFE9,$FFFC
    dw $4DA3,$0003,$B25D,$FFFC
    dw $7D41,$0003,$82BF,$FFFC
    dw $ACDF,$0003,$5321,$FFFC
    dw $DE8F,$0003,$2171,$FFFC
    dw $0951,$0004,$F6AF,$FFFB
    dw $3D13,$0004,$C2ED,$FFFB
    dw $72E7,$0004,$8D19,$FFFB
    dw $A8BB,$0004,$5745,$FFFB
    dw $E0A1,$0004,$1F5F,$FFFB
    dw $1199,$0005,$EE67,$FFFA
    dw $4B91,$0005,$B46F,$FFFA
    dw $879B,$0005,$7865,$FFFA
    dw $C3A5,$0005,$3C5B,$FFFA
    dw $01C1,$0005,$FE3F,$FFFA
    dw $38EF,$0006,$C711,$FFF9
    dw $791D,$0006,$86E3,$FFF9
    dw $BB5D,$0006,$44A3,$FFF9
    dw $FD9D,$0006,$0263,$FFF9
    dw $38EF,$0007,$C711,$FFF8
    dw $7F53,$0007,$80AD,$FFF8
    dw $C5B7,$0007,$3A49,$FFF8
    dw $052D,$0008,$FAD3,$FFF7
    dw $4DA3,$0008,$B25D,$FFF7
    dw $982B,$0008,$67D5,$FFF7
    dw $E4C5,$0008,$1B3B,$FFF7
    dw $285F,$0009,$D7A1,$FFF6
    dw $770B,$0009,$88F5,$FFF6
    dw $C5B7,$0009,$3A49,$FFF6
    dw $0D75,$000A,$F28B,$FFF5
    dw $6045,$000A,$9FBB,$FFF5
    dw $B315,$000A,$4CEB,$FFF5
    dw $07F7,$000B,$F809,$FFF5
    dw $53D9,$000B,$AC27,$FFF4
    dw $AACD,$000B,$5533,$FFF4
    dw $03D3,$000C,$FC2D,$FFF3
    dw $53D9,$000C,$AC27,$FFF3
    dw $AEF1,$000C,$510F,$FFF3
    dw $0109,$000D,$FEF7,$FFF2
    dw $5E33,$000D,$A1CD,$FFF2
    dw $BD6F,$000D,$4291,$FFF2
    dw $13AB,$000E,$EC55,$FFF1
    dw $74F9,$000E,$8B07,$FFF1
    dw $D647,$000E,$29B9,$FFF1
    dw $30A7,$000F,$CF59,$FFF0
    dw $9619,$000F,$69E7,$FFF0
    dw $FB8B,$000F,$0475,$FFF0
    dw $5A0F,$0010,$A5F1,$FFEF
    dw $C193,$0010,$3E6D,$FFEF
    dw $2229,$0011,$DDD7,$FFEE
    dw $8DD1,$0011,$722F,$FFEE
    dw $F979,$0011,$0687,$FFEE
    dw $5E33,$0012,$A1CD,$FFED
    dw $CBED,$0012,$3413,$FFED
    dw $32B9,$0013,$CD47,$FFEC
    dw $A497,$0013,$5B69,$FFEC
    dw $0D75,$0014,$F28B,$FFEB
    dw $8165,$0014,$7E9B,$FFEB
    dw $F555,$0014,$0AAB,$FFEB


HurtAI_Crocomire:
; No call to Crocomire_vs_Samus_CollisionHandling, I guess that's why charged plasma lets you roll over past Crocomire
    LDX.W $0E54                                                          ;A48687;
    JSL.L UpdateCrocomireBG2Scroll                                       ;A4868A;
    JSR.W CrocomireHurtFlashHandling                                     ;A4868E;
    RTL                                                                  ;A48691;


CrocomireConstants:
  .mouthCloseDelayWhenDamaged_NotProjAttack:
; Mouth close delay when damaged not during projectile attack
    dw $0008                                                             ;A48692;

  .mouthCloseDelayWhenDamaged_ProjAttack:
; Mouth close delay when damaged during projectile attack
    dw $0008                                                             ;A48694;

  .index:
; Crocomire enemy index when leaving enemy shot when shot by uncharged beam whilst mouth is open. Not read meaningfully
    dw $0000                                                             ;A48696;

  .stepsWhenDamagedByChargeBeam:
; Number of steps taken back when damaged by charged beam
    dw $0002                                                             ;A48698;

  .stepsWhenDamagedByMissile:
; Number of steps taken back when damaged by missile
    dw $0001                                                             ;A4869A;

  .stepsWhenDamagedBySuperMissile:
; Number of steps taken back when damaged by super missile
    dw $0003                                                             ;A4869C;

  .powerBombReactionEnableFlag:
; Power bomb reaction enable flag
    dw $0003                                                             ;A4869E;

  .mouthOpenInstructionTimer:
; Mouth open instruction timer when shot by uncharged beam
    dw $0008                                                             ;A486A0;

  .XThresholdSpikeWall:
; Crocomire X position threshold being near spike wall (to start spike wall charge and finish backing away from spike wall)
    dw $0300                                                             ;A486A2;

  .XThresholdBridge:
; Crocomire X position threshold for bridge to collapse
    dw $0640                                                             ;A486A4;

Instruction_Crocomire_FightAI:
    PHX                                                                  ;A486A6;
    LDX.W $0E54                                                          ;A486A7;
    LDA.W $0FAC,X                                                        ;A486AA;
    TAX                                                                  ;A486AD;
    JSR.W (.pointers,X)                                                  ;A486AE;
    PLX                                                                  ;A486B1;
    RTL                                                                  ;A486B2;


.pointers:
    dw FightAI_Crocomire_0_LockUp_SetInitialInstList                     ;A486B3;
    dw FightAI_Crocomire_2_StepForwardUntilOnScreen_StepForward          ;A486B5;
    dw FightAI_Crocomire_4_Asleep                                        ;A486B7;
    dw FightAI_Crocomire_6_SteppingForward                               ;A486B9;
    dw FightAI_Crocomire_8_ProjectileAttack                              ;A486BB;
    dw FightAI_Crocomire_A_NearSpikeWallCharge                           ;A486BD;
    dw FightAI_Crocomire_C_SteppingBack                                  ;A486BF;
    dw FightAI_Crocomire_E_BackOffFromSpikeWall                          ;A486C1;
    dw UNUSED_FightAI_Crocomire_10_RoarAndStepForwards_A487FB            ;A486C3;
    dw FightAI_Crocomire_12_WaitForFirstDamage                           ;A486C5;
    dw FightAI_Crocomire_14_WaitForSecondDamage                          ;A486C7;
    dw UNUSED_FightAI_Crocomire_16_WaitForSecondDamage_A4885A            ;A486C9;
    dw FightAI_Crocomire_18_PowerBombedCharge                            ;A486CB;
    dw UNUSED_FightAI_Crocomire_1A_DoNearSpikeWallCharge_A4889A          ;A486CD;
    dw FightAI_Crocomire_1C_UnusedSequence_SetInitialInstList            ;A486CF;
    dw UNUSED_FightAI_Crocomire_1E_ChooseForwardMovingAttack_A4891B      ;A486D1;
    dw UNUSED_FightAI_Crocomire_20_DoNothingAndStepForward_A48940        ;A486D3;
    dw UNUSED_FightAI_Crocomire_22_MoveForwardUntilHitSamus_A4895E       ;A486D5;
    dw UNUSED_FightAI_Crocomire_24_MoveClaws_StepForward_A489A8          ;A486D7;
    dw UNUSED_FightAI_Crocomire_26_StepForward_A489DE                    ;A486D9;
    dw UNUSED_FightAI_Crocomire_28_MovingClaws_A489F9                    ;A486DB;

RTS_A486DD:
    RTS                                                                  ;A486DD;


FightAI_Crocomire_0_LockUp_SetInitialInstList:
    LDY.W #InstList_Crocomire_Initial                                    ;A486DE;
    LDA.W #$0001                                                         ;A486E1;
    STA.W $0F94,X                                                        ;A486E4;
    RTS                                                                  ;A486E7;


FightAI_Crocomire_2_StepForwardUntilOnScreen_StepForward:
    LDA.W #$0004                                                         ;A486E8;
    STA.W $0FAC                                                          ;A486EB;
    LDY.W #InstList_Crocomire_StepForward                                ;A486EE;
    RTS                                                                  ;A486F1;


FightAI_Crocomire_4_Asleep:
    LDA.W $0F7A                                                          ;A486F2;
    SEC                                                                  ;A486F5;
    SBC.W $0AF6                                                          ;A486F6;
    BPL +                                                                ;A486F9;
    EOR.W #$FFFF                                                         ;A486FB;
    INC A                                                                ;A486FE;

  + CMP.W #$00E0                                                         ;A486FF;
    BPL .return                                                          ;A48702;
    LDA.W $0FAA                                                          ;A48704;
    ORA.W #$8000                                                         ;A48707;
    STA.W $0FAA                                                          ;A4870A;
    LDY.W #InstList_Crocomire_WaitForFirstSecondDamage                   ;A4870D;
    LDA.W #$0012                                                         ;A48710;
    STA.W $0FAC                                                          ;A48713;

.return:
    RTS                                                                  ;A48716;


FightAI_Crocomire_6_SteppingForward:
    LDA.W $0FAA                                                          ;A48717;
    BIT.W #$0800                                                         ;A4871A;
    BEQ .step                                                            ;A4871D;
    LDA.W $0FAA                                                          ;A4871F;
    AND.W #$F7FF                                                         ;A48722;
    STA.W $0FAA                                                          ;A48725;
    LDA.W $0FAE                                                          ;A48728;
    BEQ .step                                                            ;A4872B;
    LDY.W #InstList_Crocomire_StepBack                                   ;A4872D;
    LDA.W #$000C                                                         ;A48730;
    STA.W $0FAC                                                          ;A48733;
    RTS                                                                  ;A48736;


.step:
    LDA.W $0F7A                                                          ;A48737;
    CMP.W CrocomireConstants_XThresholdSpikeWall                         ;A4873A;
    BMI .nearSpikeWall                                                   ;A4873D;
    CPY.W #InstList_Crocomire_SteppingBack                               ;A4873F;
    BMI .return                                                          ;A48742;
    LDY.W #InstList_Crocomire_StepForward                                ;A48744;

.return:
    RTS                                                                  ;A48747;


.nearSpikeWall:
    LDY.W #InstList_CrocomireTongue_NearSpikeWallCharge_0                ;A48748;
    LDA.W #$000A                                                         ;A4874B;
    STA.W $0FAC                                                          ;A4874E;
    RTS                                                                  ;A48751;


Instruction_Crocomire_MaybeStartProjectileAttack:
    PHX                                                                  ;A48752;
    LDA.W $05E5                                                          ;A48753;
    AND.W #$0FFF                                                         ;A48756;
    CMP.W #$0400                                                         ;A48759;
    BPL .return                                                          ;A4875C;
    LDA.W #$0008                                                         ;A4875E;
    STA.W $0FAC                                                          ;A48761;
    STZ.W $0FB2                                                          ;A48764;
    LDY.W #InstList_Crocomire_ProjectileAttack_0                         ;A48767;

.return:
    PLX                                                                  ;A4876A;
    RTL                                                                  ;A4876B;


FightAI_Crocomire_8_ProjectileAttack:
    LDA.W $0FAA                                                          ;A4876C;
    BIT.W #$0800                                                         ;A4876F;
    BEQ .notDamaged                                                      ;A48772;
    AND.W #$F7FF                                                         ;A48774;
    STA.W $0FAA                                                          ;A48777;
    LDY.W #InstList_Crocomire_StepBack                                   ;A4877A;
    LDA.W #$000C                                                         ;A4877D;
    STA.W $0FAC                                                          ;A48780;
    RTS                                                                  ;A48783;


.notDamaged:
    LDA.W $0FB2                                                          ;A48784;
    CMP.W #$0010                                                         ;A48787;
    BPL .stepForward                                                     ;A4878A;
    INC.W $0FB2                                                          ;A4878C;
    INC.W $0FB2                                                          ;A4878F;
    PHX                                                                  ;A48792;
    PHY                                                                  ;A48793;
    LDX.W $0E54                                                          ;A48794;
    LDY.W #EnemyProjectile_CrocomiresProjectile                          ;A48797;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A4879A;
    LDA.W #$001C                                                         ;A4879E;
    JSL.L QueueSound_Lib3_Max6                                           ;A487A1;
    PLY                                                                  ;A487A5;
    PLX                                                                  ;A487A6;
    RTS                                                                  ;A487A7;


.stepForward:
    LDY.W #InstList_Crocomire_StepForwardAfterDelay                      ;A487A8;
    LDA.W #$0006                                                         ;A487AB;
    STA.W $0FAC                                                          ;A487AE;
    RTS                                                                  ;A487B1;


FightAI_Crocomire_A_NearSpikeWallCharge:
    LDA.W $0FAA                                                          ;A487B2;
    BIT.W #$0800                                                         ;A487B5;
    BEQ .return                                                          ;A487B8;
    AND.W #$F7FF                                                         ;A487BA;
    STA.W $0FAA                                                          ;A487BD;
    LDY.W #InstList_Crocomire_StepBack                                   ;A487C0;
    LDA.W #$000C                                                         ;A487C3;
    STA.W $0FAC                                                          ;A487C6;

.return:
    RTS                                                                  ;A487C9;


FightAI_Crocomire_C_SteppingBack:
    LDA.W $0FAE                                                          ;A487CA;
    BEQ .stepForward                                                     ;A487CD;
    DEC A                                                                ;A487CF;
    STA.W $0FAE                                                          ;A487D0;
    BEQ .stepForward                                                     ;A487D3;
    LDY.W #InstList_Crocomire_SteppingBack                               ;A487D5;
    LDA.W #$000C                                                         ;A487D8;
    STA.W $0FAC                                                          ;A487DB;
    RTS                                                                  ;A487DE;


.stepForward:
    LDA.W #$0006                                                         ;A487DF;
    STA.W $0FAC                                                          ;A487E2;
    LDY.W #InstList_Crocomire_StepForward                                ;A487E5;
    RTS                                                                  ;A487E8;


FightAI_Crocomire_E_BackOffFromSpikeWall:
    LDA.W $0F7A                                                          ;A487E9;
    CMP.W CrocomireConstants_XThresholdSpikeWall                         ;A487EC;
    BMI .return                                                          ;A487EF;
    LDA.W #$0006                                                         ;A487F1;
    STA.W $0FAC                                                          ;A487F4;
    LDY.W #InstList_Crocomire_StepForward                                ;A487F7;

.return:
    RTS                                                                  ;A487FA;


UNUSED_FightAI_Crocomire_10_RoarAndStepForwards_A487FB:
    LDA.W #$0006                                                         ;A487FB;
    STA.W $0FAC                                                          ;A487FE;
    LDY.W #InstList_Crocomire_WaitForFirstSecondDamage_Roar              ;A48801;
    RTS                                                                  ;A48804;


UNUSED_SetFightIntroMovingClawsInstList_A48805:
    LDY.W #InstList_Crocomire_WaitForFirstSecondDamage_MovingClaws       ;A48805;
    LDA.W $0FAA                                                          ;A48808;
    AND.W #$FBFF                                                         ;A4880B;
    STA.W $0FAA                                                          ;A4880E;
    RTS                                                                  ;A48811;


FightAI_Crocomire_12_WaitForFirstDamage:
    LDA.W $0FAA                                                          ;A48812;
    BIT.W #$0800                                                         ;A48815;
    BEQ .notDamaged                                                      ;A48818;
    LDA.W $0FAA                                                          ;A4881A;
    AND.W #$F7FF                                                         ;A4881D;
    STA.W $0FAA                                                          ;A48820;
    LDY.W #InstList_Crocomire_StepBack                                   ;A48823;
    LDA.W #$0014                                                         ;A48826;
    STA.W $0FAC                                                          ;A48829;
    RTS                                                                  ;A4882C;


.notDamaged:
    CPY.W #InstList_Crocomire_WaitForFirstSecondDamage_RoarCloseMouth_1  ;A4882D;
    BMI .return                                                          ;A48830;
    LDY.W #InstList_Crocomire_WaitForFirstSecondDamage_Roar              ;A48832;

.return:
    RTS                                                                  ;A48835;


FightAI_Crocomire_14_WaitForSecondDamage:
    LDA.W $0FAA                                                          ;A48836;
    BIT.W #$0800                                                         ;A48839;
    BEQ .notDamaged                                                      ;A4883C;
    LDA.W $0FAA                                                          ;A4883E;
    AND.W #$F7FF                                                         ;A48841;
    STA.W $0FAA                                                          ;A48844;
    LDY.W #InstList_Crocomire_StepBack                                   ;A48847;
    LDA.W #$000C                                                         ;A4884A;
    STA.W $0FAC                                                          ;A4884D;
    RTS                                                                  ;A48850;


.notDamaged:
    CPY.W #InstList_Crocomire_WaitForFirstSecondDamage_RoarCloseMouth_1  ;A48851;
    BMI .return                                                          ;A48854;
    LDY.W #InstList_Crocomire_WaitForFirstSecondDamage_Roar              ;A48856;

.return:
    RTS                                                                  ;A48859;


UNUSED_FightAI_Crocomire_16_WaitForSecondDamage_A4885A:
    LDA.W $0FAA                                                          ;A4885A;
    BIT.W #$0800                                                         ;A4885D;
    BEQ .notDamaged                                                      ;A48860;
    LDA.W $0FAA                                                          ;A48862;
    AND.W #$F7FF                                                         ;A48865;
    STA.W $0FAA                                                          ;A48868;
    LDY.W #InstList_Crocomire_StepBack                                   ;A4886B;
    LDA.W #$000C                                                         ;A4886E;
    STA.W $0FAC                                                          ;A48871;
    RTS                                                                  ;A48874;


.notDamaged:
    CPY.W #InstList_Crocomire_WaitForFirstSecondDamage_RoarCloseMouth_1  ;A48875;
    BMI .return                                                          ;A48878;
    LDY.W #InstList_Crocomire_WaitForFirstSecondDamage_Roar              ;A4887A;

.return:
    RTS                                                                  ;A4887D;


FightAI_Crocomire_18_PowerBombedCharge:
    LDX.W $0E54                                                          ;A4887E;
    LDA.W $0FAE                                                          ;A48881;
    DEC A                                                                ;A48884;
    STA.W $0FAE                                                          ;A48885;
    CMP.W #$0002                                                         ;A48888;
    BPL .return                                                          ;A4888B;
    STZ.W $0FAE                                                          ;A4888D;
    LDA.W #$0006                                                         ;A48890;
    STA.W $0FAC                                                          ;A48893;
    LDY.W #InstList_Crocomire_StepForward                                ;A48896;

.return:
    RTS                                                                  ;A48899;


UNUSED_FightAI_Crocomire_1A_DoNearSpikeWallCharge_A4889A:
    LDX.W $0E54                                                          ;A4889A;
    LDA.W $0FAA                                                          ;A4889D;
    BIT.W #$0800                                                         ;A488A0;
    BNE .SamusNotHitByClaw                                               ;A488A3;
    LDA.W #$000A                                                         ;A488A5;
    STA.W $0FAC,X                                                        ;A488A8;
    LDY.W #InstList_Crocomire_WaitForFirstSecondDamage_RoarCloseMouth_0  ;A488AB;
    RTS                                                                  ;A488AE;


.SamusNotHitByClaw:
    AND.W #$BF00                                                         ;A488AF;
    ORA.W #$A000                                                         ;A488B2;
    STA.W $0FAA                                                          ;A488B5;
    LDA.W #$0001                                                         ;A488B8;
    STA.W $0FAE                                                          ;A488BB;
    LDA.W #$000A                                                         ;A488BE;
    STA.W $0FB0                                                          ;A488C1;
    LDA.W #$000C                                                         ;A488C4;
    STA.W $0FAC                                                          ;A488C7;
    LDA.W #$0054                                                         ;A488CA;
    JSL.L QueueSound_Lib2_Max6                                           ;A488CD;
    RTS                                                                  ;A488D1;


FightAI_Crocomire_1C_UnusedSequence_SetInitialInstList:
    LDX.W $0E54                                                          ;A488D2;
    JSR.W FightAI_Crocomire_0_LockUp_SetInitialInstList                  ;A488D5;
    LDA.W $0FAA                                                          ;A488D8;
    ORA.W #$0200                                                         ;A488DB;
    STA.W $0FAA                                                          ;A488DE;
    LDA.W #$0020                                                         ;A488E1;
    STA.W $0FAE                                                          ;A488E4;
    LDA.W #$001E                                                         ;A488E7;
    STA.W $0FAC                                                          ;A488EA;
    RTS                                                                  ;A488ED;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_ChargeCrocomireForwardOneStepAfterDelay_A488EE:
    LDX.W $0E54                                                          ;A488EE;
    JSR.W FightAI_Crocomire_0_LockUp_SetInitialInstList                  ;A488F1;
    LDA.W $0FAE                                                          ;A488F4;
    BEQ .timerExpired                                                    ;A488F7;
    DEC.W $0FAE                                                          ;A488F9;
    BNE .return                                                          ;A488FC;

.timerExpired:
    LDX.W $0E54                                                          ;A488FE;
    JSR.W ChargeCrocomireForwardOneStep                                  ;A48901;
    LDA.W #$0020                                                         ;A48904;
    STA.W $0FAC                                                          ;A48907;

.return:
    RTS                                                                  ;A4890A;
endif ; !FEATURE_KEEP_UNREFERENCED


ChargeCrocomireForwardOneStep:
    LDA.W #$0014                                                         ;A4890B;
    STA.W $0FAC,X                                                        ;A4890E;
    LDA.W $0FAA                                                          ;A48911;
    STA.W $0FAA                                                          ;A48914;
    LDY.W #UNUSED_InstList_Crocomire_ChargeForwardOneStep_A4BAEA         ;A48917;
    RTS                                                                  ;A4891A;


UNUSED_FightAI_Crocomire_1E_ChooseForwardMovingAttack_A4891B:
    LDX.W $0E54                                                          ;A4891B;
    LDA.W $0FAA                                                          ;A4891E;
    BIT.W #$0100                                                         ;A48921;
    BNE .setInstList                                                     ;A48924;
    JSR.W ChargeCrocomireForwardOneStep                                  ;A48926;
    LDA.W #$0020                                                         ;A48929;
    STA.W $0FAC                                                          ;A4892C;
    RTS                                                                  ;A4892F;


.setInstList:
    JSR.W FightAI_Crocomire_0_LockUp_SetInitialInstList                  ;A48930;
    LDA.W #$0010                                                         ;A48933;
    STA.W $0FAE                                                          ;A48936;
    LDA.W #$0022                                                         ;A48939;
    STA.W $0FAC                                                          ;A4893C;
    RTS                                                                  ;A4893F;


UNUSED_FightAI_Crocomire_20_DoNothingAndStepForward_A48940:
    LDX.W $0E54                                                          ;A48940;
    JSR.W FightAI_Crocomire_0_LockUp_SetInitialInstList                  ;A48943;
    LDA.W $0FAE                                                          ;A48946;
    BNE .return                                                          ;A48949;
    LDA.W $0FAA                                                          ;A4894B;
    ORA.W #$2000                                                         ;A4894E;
    STA.W $0FAA                                                          ;A48951;
    JSR.W FightAI_Crocomire_2_StepForwardUntilOnScreen_StepForward       ;A48954;
    LDA.W #$0024                                                         ;A48957;
    STA.W $0FAC                                                          ;A4895A;

.return:
    RTS                                                                  ;A4895D;


UNUSED_FightAI_Crocomire_22_MoveForwardUntilHitSamus_A4895E:
    LDA.W $0F7A                                                          ;A4895E;
    CMP.W #$02A0                                                         ;A48961;
    BPL .notAgainstSpikes                                                ;A48964;
    LDX.W $0E54                                                          ;A48966;
    JSR.W FightAI_Crocomire_2_StepForwardUntilOnScreen_StepForward       ;A48969;
    LDA.W #$0024                                                         ;A4896C;
    STA.W $0FAC                                                          ;A4896F;
    LDA.W #$0003                                                         ;A48972;
    STA.W $0FAE                                                          ;A48975;
    RTS                                                                  ;A48978;


.notAgainstSpikes:
    LDA.W $0FAA                                                          ;A48979;
    BIT.W #$4000                                                         ;A4897C;
    BNE .SamusHitByClaw                                                  ;A4897F;
    LDA.W #$0026                                                         ;A48981;
    STA.W $0FAC                                                          ;A48984;
    JSR.W UNUSED_SetFightIntroMovingClawsInstList_A48805                 ;A48987;

.SamusHitByClaw:
    LDA.W $0FAA                                                          ;A4898A;
    BIT.W #$4000                                                         ;A4898D;
    BEQ .return                                                          ;A48990;
    LDA.W #$0005                                                         ;A48992;
    STA.W $0FAE                                                          ;A48995;
    LDY.W #InstList_Crocomire_WaitForFirstSecondDamage_MovingClaws       ;A48998;
    LDA.W $0FAC                                                          ;A4899B;
    STA.W $0FB2                                                          ;A4899E;
    LDA.W #$002A                                                         ;A489A1;
    STA.W $0FAC                                                          ;A489A4;

.return:
    RTS                                                                  ;A489A7;


UNUSED_FightAI_Crocomire_24_MoveClaws_StepForward_A489A8:
    LDX.W $0E54                                                          ;A489A8;
    LDA.W $0FAE                                                          ;A489AB;
    BEQ .timerExpired                                                    ;A489AE;
    DEC.W $0FAE                                                          ;A489B0;
    BEQ .timerExpired                                                    ;A489B3;
    LDA.W #$0024                                                         ;A489B5;
    STA.W $0FAC                                                          ;A489B8;
    STZ.W $0FEE                                                          ;A489BB;
    LDA.W $0FAA                                                          ;A489BE;
    ORA.W #$0400                                                         ;A489C1;
    STA.W $0FAA                                                          ;A489C4;
    LDY.W #InstList_Crocomire_WaitForFirstSecondDamage_MovingClaws       ;A489C7;
    RTS                                                                  ;A489CA;


.timerExpired:
    JSR.W FightAI_Crocomire_2_StepForwardUntilOnScreen_StepForward       ;A489CB;
    LDA.W #$0028                                                         ;A489CE;
    STA.W $0FAC                                                          ;A489D1;
    LDA.W $0FAA                                                          ;A489D4;
    AND.W #$FBFF                                                         ;A489D7;
    STA.W $0FAA                                                          ;A489DA;
    RTS                                                                  ;A489DD;


UNUSED_FightAI_Crocomire_26_StepForward_A489DE:
    LDA.W $0FAA                                                          ;A489DE;
    BIT.W #$2000                                                         ;A489E1;
    BNE .stepForward                                                     ;A489E4;
    AND.W #$FCFF                                                         ;A489E6;
    STA.W $0FAA                                                          ;A489E9;

.stepForward:
    LDX.W $0E54                                                          ;A489EC;
    JSR.W FightAI_Crocomire_2_StepForwardUntilOnScreen_StepForward       ;A489EF;
    LDA.W #$0028                                                         ;A489F2;
    STA.W $0FAC                                                          ;A489F5;
    RTS                                                                  ;A489F8;


UNUSED_FightAI_Crocomire_28_MovingClaws_A489F9:
    LDA.W $0FAE                                                          ;A489F9;
    BNE .timerNotExpired                                                 ;A489FC;
    LDA.W $0FAA                                                          ;A489FE;
    AND.W #$BFFF                                                         ;A48A01;
    STA.W $0FAA                                                          ;A48A04;
    LDA.W #$0001                                                         ;A48A07;
    STA.W $0F94                                                          ;A48A0A;
    LDA.W $0FB2                                                          ;A48A0D;
    STA.W $0FAC                                                          ;A48A10;
    LDY.W #InstList_Crocomire_WaitForFirstSecondDamage_MovingClaws       ;A48A13;
    RTS                                                                  ;A48A16;


.timerNotExpired:
    LDA.W $0FAA                                                          ;A48A17;
    BIT.W #$4000                                                         ;A48A1A;
    BEQ .steppingBack                                                    ;A48A1D;
    DEC.W $0FAE                                                          ;A48A1F;
    LDA.W #$003B                                                         ;A48A22;
    JSL.L QueueSound_Lib2_Max6                                           ;A48A25;
    LDY.W #InstList_Crocomire_WaitForFirstSecondDamage_MovingClaws       ;A48A29;
    RTS                                                                  ;A48A2C;


.steppingBack:
    AND.W #$BFFF                                                         ;A48A2D;
    STA.W $0FAA                                                          ;A48A30;
    LDA.W #$000C                                                         ;A48A33;
    STA.W $0FAC                                                          ;A48A36;
    RTS                                                                  ;A48A39;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_Palette_Crocomire_A48A3A:
    dw $3800,$7FFF,$6B40,$6A80,$6980,$68E0,$6800,$5294                   ;A48A3A;
    dw $39CE,$2108,$08BF,$0895,$039F,$023A,$0176,$0000                   ;A48A4A;
endif ; !FEATURE_KEEP_UNREFERENCED

InitAI_Crocomire:
    REP #$30                                                             ;A48A5A;
    LDA.W #$0006                                                         ;A48A5C;
    STA.W $179C                                                          ;A48A5F;
    LDX.W #$0000                                                         ;A48A62;
    LDA.W #$0338                                                         ;A48A65;

.loopBG2Tilemap:
    STA.L $7E2000,X                                                      ;A48A68;
    INX                                                                  ;A48A6C;
    INX                                                                  ;A48A6D;
    CPX.W #$1000                                                         ;A48A6E;
    BMI .loopBG2Tilemap                                                  ;A48A71;
    LDX.W $079F                                                          ;A48A73;
    LDA.L $7ED828,X                                                      ;A48A76;
    BIT.W #$0002                                                         ;A48A7A;
    BNE .dead                                                            ;A48A7D;
    JSL.L DisableMinimap_MarkBossRoomTilesExplored                       ;A48A7F;
    STZ.W $069A                                                          ;A48A83;
    LDX.W $0E54                                                          ;A48A86;
    STZ.W $0FA8,X                                                        ;A48A89;
    STZ.W $0FB0,X                                                        ;A48A8C;
    LDA.W #$0000                                                         ;A48A8F;
    STA.L $7ECD20                                                        ;A48A92;
    LDX.W #$0020                                                         ;A48A96;

.loopTargetPalette:
    LDA.W Palette_Crocomire_Sprite2,X                                    ;A48A99;
    STA.L $7EC340,X                                                      ;A48A9C;
    LDA.W Palette_Crocomire_Sprite5,X                                    ;A48AA0;
    STA.L $7EC3A0,X                                                      ;A48AA3;
    DEX                                                                  ;A48AA7;
    DEX                                                                  ;A48AA8;
    BPL .loopTargetPalette                                               ;A48AA9;
    LDX.W $0E54                                                          ;A48AAB;
    LDA.W #$0004                                                         ;A48AAE;
    STA.W $0FAC,X                                                        ;A48AB1;
    LDA.W #$0010                                                         ;A48AB4;
    STA.W $179E                                                          ;A48AB7;
    LDA.W #$0002                                                         ;A48ABA;
    STA.W $0941                                                          ;A48ABD;
    LDA.W #$0400                                                         ;A48AC0;
    STA.W $179A                                                          ;A48AC3;
    LDA.W #InstList_Crocomire_Initial                                    ;A48AC6;
    STA.W $0F92,X                                                        ;A48AC9;
    LDA.W $0F88,X                                                        ;A48ACC;
    ORA.W #$0004                                                         ;A48ACF;
    STA.W $0F88,X                                                        ;A48AD2;
    LDA.W #$0001                                                         ;A48AD5;
    STA.W $0F94,X                                                        ;A48AD8;
    RTL                                                                  ;A48ADB;


.dead:
    LDA.W #$0101                                                         ;A48ADC;
    STA.L $7ECD20                                                        ;A48ADF;
    STA.L $7ECD22                                                        ;A48AE3;
    STZ.W $0688                                                          ;A48AE7;
    LDA.W $0F86                                                          ;A48AEA;
    ORA.W #$0400                                                         ;A48AED;
    AND.W #$7FFF                                                         ;A48AF0;
    STA.W $0F86                                                          ;A48AF3;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48AF6;
    db $20,$03                                                           ;A48AFA;
    dw PLMEntries_clearCrocomireInvisibleWall                            ;A48AFC;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48AFE;
    db $1E,$03                                                           ;A48B02;
    dw PLMEntries_clearCrocomireInvisibleWall                            ;A48B04;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48B06;
    db $61,$0B                                                           ;A48B0A;
    dw PLMEntries_clearCrocomiresBridge                                  ;A48B0C;
    LDA.W #$0054                                                         ;A48B0E;
    STA.W $0FA8                                                          ;A48B11;
    LDA.W #InstList_CrocomireCorpse_Skeleton_Dead                        ;A48B14;
    STA.W $0F92                                                          ;A48B17;
    LDA.W #$0001                                                         ;A48B1A;
    STA.W $0F94                                                          ;A48B1D;
    LDA.W #$0240                                                         ;A48B20;
    STA.W $0F7A                                                          ;A48B23;
    LDA.W #$0090                                                         ;A48B26;
    STA.W $0F7E                                                          ;A48B29;
    LDA.W #$001C                                                         ;A48B2C;
    STA.W $0F84                                                          ;A48B2F;
    LDA.W #$0028                                                         ;A48B32;
    STA.W $0F82                                                          ;A48B35;
    LDX.W $0330                                                          ;A48B38;
    LDA.W #$0800                                                         ;A48B3B;
    STA.B $D0,X                                                          ;A48B3E;
    LDA.W #$2000                                                         ;A48B40;
    STA.B $D2,X                                                          ;A48B43;
    LDA.W #$007E                                                         ;A48B45;
    STA.B $D4,X                                                          ;A48B48;
    LDA.B $59                                                            ;A48B4A;
    AND.W #$00FC                                                         ;A48B4C;
    XBA                                                                  ;A48B4F;
    STA.B $D5,X                                                          ;A48B50;
    TXA                                                                  ;A48B52;
    CLC                                                                  ;A48B53;
    ADC.W #$0007                                                         ;A48B54;
    STA.W $0330                                                          ;A48B57;
    RTL                                                                  ;A48B5A;


UpdateCrocomireBG2Scroll:
    LDA.W $0F7E,X                                                        ;A48B5B;
    SEC                                                                  ;A48B5E;
    SBC.W #$0043                                                         ;A48B5F;
    EOR.W #$FFFF                                                         ;A48B62;
    INC A                                                                ;A48B65;
    STA.B $B7                                                            ;A48B66;
    LDX.W #$0020                                                         ;A48B68;

.loop:
    LDA.W $0F8E                                                          ;A48B6B;
    CMP.W .pointers,X                                                    ;A48B6E;
    BEQ .found                                                           ;A48B71;
    DEX                                                                  ;A48B73;
    DEX                                                                  ;A48B74;
    BPL .loop                                                            ;A48B75;
    BRA UpdateCrocomireBG2XScroll                                        ;A48B77;


.pointers:
    dw ExtendedSpritemap_Crocomire_ChargeForward_StepBack_0              ;A48B79;
    dw ExtendedSpritemap_Crocomire_ChargeForward_StepBack_1              ;A48B7B;
    dw ExtendedSpritemap_Crocomire_ChargeForward_StepBack_2              ;A48B7D;
    dw ExtendedSpritemap_Crocomire_ChargeForward_StepBack_3              ;A48B7F;
    dw ExtendedSpritemap_Crocomire_ChargeForward_StepBack_4              ;A48B81;
    dw ExtendedSpritemap_Crocomire_ChargeForward_StepBack_5              ;A48B83;
    dw ExtendedSpritemap_Crocomire_ChargeForward_StepBack_6              ;A48B85;
    dw ExtendedSpritemap_Crocomire_ChargeForward_StepBack_7              ;A48B87;
    dw ExtendedSpritemap_Crocomire_ChargeForward_StepBack_8              ;A48B89;
    dw ExtendedSpritemap_Crocomire_ChargeForward_StepBack_9              ;A48B8B;
    dw ExtendedSpritemap_Crocomire_ChargeForward_StepBack_A              ;A48B8D;
    dw ExtendedSpritemap_Crocomire_ChargeForward_StepBack_B              ;A48B8F;
    dw ExtendedSpritemap_Crocomire_MovingClaws_0                         ;A48B91;
    dw ExtendedSpritemap_Crocomire_MovingClaws_1                         ;A48B93;
    dw ExtendedSpritemap_Crocomire_MovingClaws_2                         ;A48B95;
    dw ExtendedSpritemap_Crocomire_MovingClaws_3                         ;A48B97;
    dw ExtendedSpritemap_Crocomire_MovingClaws_4                         ;A48B99;

.found:
    TAY                                                                  ;A48B9B;
    LDA.W $001C,Y                                                        ;A48B9C;
    CLC                                                                  ;A48B9F;
    ADC.B $B7                                                            ;A48BA0;
    STA.B $B7                                                            ;A48BA2; fallthrough to UpdateCrocomireBG2XScroll

UpdateCrocomireBG2XScroll:
    LDX.W $0E54                                                          ;A48BA4;
    LDA.W $0F7A,X                                                        ;A48BA7;
    CLC                                                                  ;A48BAA;
    ADC.W $0FE8,X                                                        ;A48BAB;
    STA.W $0FBA,X                                                        ;A48BAE;
    LDA.W $0F7E,X                                                        ;A48BB1;
    STA.W $0FBE,X                                                        ;A48BB4;
    LDA.W $0F7A,X                                                        ;A48BB7;
    CMP.W $0911                                                          ;A48BBA;
    BPL .rightOffScreenCheck                                             ;A48BBD;
    CLC                                                                  ;A48BBF;
    ADC.W #$0080                                                         ;A48BC0;
    CMP.W $0911                                                          ;A48BC3;
    BMI .offScreen                                                       ;A48BC6;

.onScreen:
    LDA.W $0911                                                          ;A48BC8;
    SEC                                                                  ;A48BCB;
    SBC.W $0F7A,X                                                        ;A48BCC;
    CLC                                                                  ;A48BCF;
    ADC.W #$0033                                                         ;A48BD0;
    PHA                                                                  ;A48BD3;
    BPL +                                                                ;A48BD4;
    EOR.W #$FFFF                                                         ;A48BD6;
    INC A                                                                ;A48BD9;

  + CMP.W #$011C                                                         ;A48BDA;
    BMI +                                                                ;A48BDD;
    PLA                                                                  ;A48BDF;
    LDA.W #$0100                                                         ;A48BE0;
    PHA                                                                  ;A48BE3;

  + PLA                                                                  ;A48BE4;
    STA.B $B5                                                            ;A48BE5;
    RTL                                                                  ;A48BE7;


.offScreen:
    LDA.W #$0100                                                         ;A48BE8;
    STA.B $B5                                                            ;A48BEB;
    RTL                                                                  ;A48BED;


.rightOffScreenCheck:
    LDA.W $0911                                                          ;A48BEE;
    CLC                                                                  ;A48BF1;
    ADC.W #$0100                                                         ;A48BF2;
    STA.B $12                                                            ;A48BF5;
    LDA.W $0F7A,X                                                        ;A48BF7;
    SEC                                                                  ;A48BFA;
    SBC.W #$0080                                                         ;A48BFB;
    CMP.B $12                                                            ;A48BFE;
    BPL .offScreen                                                       ;A48C00;
    BRA .onScreen                                                        ;A48C02;


MainAI_Crocomire:
    PHB                                                                  ;A48C04;
    LDA.W $0FA8                                                          ;A48C05;
    TAX                                                                  ;A48C08;
    JSR.W (.pointers,X)                                                  ;A48C09;
    JSR.W Crocomire_vs_Samus_CollisionHandling                           ;A48C0C;
    JSR.W CrocomireHurtFlashHandling                                     ;A48C0F;
    PLB                                                                  ;A48C12;
    RTL                                                                  ;A48C13;


.pointers:
    dw MainAI_Crocomire_DeathSequence_0_NotStarted                       ;A48C14;
    dw MainAI_Crocomire_DeathSequence_2_Falling                          ;A48C16;
    dw MainAI_Crocomire_DeathSequence_4_A_Hop_1_2_Resting                ;A48C18;
    dw MainAI_Crocomire_DeathSequence_6_C_Hop_1_2_Rising                 ;A48C1A;
    dw MainAI_Crocomire_DeathSequence_8_E_Hop_1_2_Sinking                ;A48C1C;
    dw MainAI_Crocomire_DeathSequence_4_A_Hop_1_2_Resting                ;A48C1E;
    dw MainAI_Crocomire_DeathSequence_6_C_Hop_1_2_Rising                 ;A48C20;
    dw MainAI_Crocomire_DeathSequence_8_E_Hop_1_2_Sinking                ;A48C22;
    dw MainAI_Crocomire_DeathSequence_10_Hop_3_LoadMeltingTilemap        ;A48C24;
    dw MainAI_Crocomire_DeathSequence_12_2E_Hop_3_4_LoadMeltTiles        ;A48C26;
    dw MainAI_Crocomire_DeathSequence_14_30_Hop_3_6_UploadingToVRAM      ;A48C28;
    dw MainAI_Crocomire_DeathSequence_16_22_28_Hop_3_4_5_Rising          ;A48C2A;
    dw MainAI_Crocomire_DeathSequence_18_Hop_3_QueueCry_HDMAObject       ;A48C2C;
    dw MainAI_Crocomire_DeathSequence_1A_38_Hop_3_6_Melting              ;A48C2E;
    dw MainAI_Crocomire_DeathSequence_1C_3A_Hop_3_6_ClearTilemap         ;A48C30;
    dw MainAI_Crocomire_DeathSequence_1E_24_2A_Hop_3_4_5_Sinking         ;A48C32;
    dw MainAI_Crocomire_DeathSequence_20_26_Hop_4_5_Resting              ;A48C34;
    dw MainAI_Crocomire_DeathSequence_16_22_28_Hop_3_4_5_Rising          ;A48C36;
    dw MainAI_Crocomire_DeathSequence_1E_24_2A_Hop_3_4_5_Sinking         ;A48C38;
    dw MainAI_Crocomire_DeathSequence_20_26_Hop_4_5_Resting              ;A48C3A;
    dw MainAI_Crocomire_DeathSequence_16_22_28_Hop_3_4_5_Rising          ;A48C3C;
    dw MainAI_Crocomire_DeathSequence_1E_24_2A_Hop_3_4_5_Sinking         ;A48C3E;
    dw MainAI_Crocomire_DeathSequence_2C_Hop_6_LoadMeltingTilemap        ;A48C40;
    dw MainAI_Crocomire_DeathSequence_12_2E_Hop_3_4_LoadMeltTiles        ;A48C42;
    dw MainAI_Crocomire_DeathSequence_14_30_Hop_3_6_UploadingToVRAM      ;A48C44;
    dw MainAI_Crocomire_DeathSequence_32_SetIndex34                      ;A48C46;
    dw MainAI_Crocomire_DeathSequence_34_Hop_6_Rising                    ;A48C48;
    dw MainAI_Crocomire_DeathSequence_36_Hop_6_QueueCry_HDMAObject       ;A48C4A;
    dw MainAI_Crocomire_DeathSequence_1A_38_Hop_3_6_Melting              ;A48C4C;
    dw MainAI_Crocomire_DeathSequence_1C_3A_Hop_3_6_ClearTilemap         ;A48C4E;
    dw MainAI_Crocomire_DeathSequence_3C_Hop_6_Sinking                   ;A48C50;
    dw MainAI_Crocomire_DeathSequence_3E_BehindWall_WaitForSamus         ;A48C52;
    dw MainAI_Crocomire_DeathSequence_40_BehindWall_Rumbling             ;A48C54;
    dw MainAI_Crocomire_DeathSequence_42_BehindWall_NoMoreRumbling       ;A48C56;
    dw MainAI_Crocomire_DeathSequence_44_BreaksDownWall                  ;A48C58;
    dw MainAI_Crocomire_DeathSequence_46_SkeletonFalls                   ;A48C5A;
    dw MainAI_Crocomire_DeathSequence_48_SkeletonFallsApart              ;A48C5C;
    dw MainAI_Crocomire_DeathSequence_4A_UnlockCamera                    ;A48C5E;
    dw MainAI_Crocomire_DeathSequence_4C_SetIndex4E                      ;A48C60;
    dw MainAI_Crocomire_DeathSequence_4E_SetIndex50                      ;A48C62;
    dw MainAI_Crocomire_DeathSequence_50_MarkEvent_PostDeathMusic        ;A48C64;
    dw RTS_A48C8F                                                        ;A48C66;
    dw MainAI_Crocomire_DeathSequence_54_SetIndex56                      ;A48C68;
    dw MainAI_Crocomire_DeathSequence_56_DeadDueToRoomEntry              ;A48C6A;
    dw MainAI_Crocomire_DeathSequence_58_FlowingDownTheRiver             ;A48C6C;

MainAI_Crocomire_DeathSequence_0_NotStarted:
    JSL.L HandleCrocomiresBridge                                         ;A48C6E;
    LDA.W #$0101                                                         ;A48C72;
    STA.L $7ECD24                                                        ;A48C75;
    LDA.W $0AF6                                                          ;A48C79;
    CMP.W #$0520                                                         ;A48C7C;
    BMI .bridgeNotInSight                                                ;A48C7F;
    LDA.W #$0100                                                         ;A48C81;
    STA.L $7ECD24                                                        ;A48C84;

.bridgeNotInSight:
    LDX.W $0E54                                                          ;A48C88;
    JSL.L UpdateCrocomireBG2Scroll                                       ;A48C8B; fallthrough to RTS_A48C8F

RTS_A48C8F:
    RTS                                                                  ;A48C8F;


MainAI_Crocomire_DeathSequence_56_DeadDueToRoomEntry:
    STZ.B $B5                                                            ;A48C90;
    STZ.B $B7                                                            ;A48C92;
    RTS                                                                  ;A48C94;


Crocomire_vs_Samus_CollisionHandling:
    LDA.W $0FA8                                                          ;A48C95;
    BNE .return                                                          ;A48C98;
    LDA.W $0F7A                                                          ;A48C9A;
    SEC                                                                  ;A48C9D;
    SBC.W $0F82                                                          ;A48C9E;
    SBC.W $0AFE                                                          ;A48CA1;
    SBC.W $0AF6                                                          ;A48CA4;
    BPL .return                                                          ;A48CA7;
    JSL.L NormalEnemyTouchAI                                             ;A48CA9;
    LDA.W $0F7A                                                          ;A48CAD;
    SEC                                                                  ;A48CB0;
    SBC.W $0F82                                                          ;A48CB1;
    SEC                                                                  ;A48CB4;
    SBC.W $0AFE                                                          ;A48CB5;
    STA.W $0AF6                                                          ;A48CB8;
    STA.W $0B10                                                          ;A48CBB;
    LDA.W #$FFFC                                                         ;A48CBE;
    STA.W $0B58                                                          ;A48CC1;
    LDA.W #$FFFF                                                         ;A48CC4;
    STA.W $0B5C                                                          ;A48CC7;

.return:
    RTS                                                                  ;A48CCA;


CrocomireHurtFlashHandling:
    LDA.W $0797                                                          ;A48CCB;
    BNE .return                                                          ;A48CCE;
    LDA.W $0F9C                                                          ;A48CD0;
    BEQ .palette                                                         ;A48CD3;
    LDA.W $0E44                                                          ;A48CD5;
    BIT.W #$0002                                                         ;A48CD8;
    BEQ .palette                                                         ;A48CDB;
    LDA.W #$7FFF                                                         ;A48CDD;
    LDX.W #$000E                                                         ;A48CE0;

.loopWhite:
    STA.L $7EC0E0,X                                                      ;A48CE3;
    DEX                                                                  ;A48CE7;
    DEX                                                                  ;A48CE8;
    BPL .loopWhite                                                       ;A48CE9;
    RTS                                                                  ;A48CEB;


.palette:
    LDX.W #$000E                                                         ;A48CEC;

.loopPalette:
    LDA.W Palette_Crocomire_BG12,X                                       ;A48CEF;
    STA.L $7EC0E0,X                                                      ;A48CF2;
    DEX                                                                  ;A48CF6;
    DEX                                                                  ;A48CF7;
    BPL .loopPalette                                                     ;A48CF8;

.return:
    RTS                                                                  ;A48CFA;


Instruction_Crocomire_QueueCrySFX:
    PHX                                                                  ;A48CFB;
    PHY                                                                  ;A48CFC;
    LDA.W #$0074                                                         ;A48CFD;
    JSL.L QueueSound_Lib2_Max6                                           ;A48D00;
    PLY                                                                  ;A48D04;
    PLX                                                                  ;A48D05;
    RTL                                                                  ;A48D06;


Instruction_Crocomire_QueueBigExplosionSFX:
    PHX                                                                  ;A48D07;
    PHY                                                                  ;A48D08;
    LDA.W #$0025                                                         ;A48D09;
    JSL.L QueueSound_Lib2_Max6                                           ;A48D0C;
    PLY                                                                  ;A48D10;
    PLX                                                                  ;A48D11;
    RTL                                                                  ;A48D12;


Instruction_Crocomire_QueueSkeletonCollapseSFX:
    PHX                                                                  ;A48D13;
    PHY                                                                  ;A48D14;
    LDA.W #$0075                                                         ;A48D15;
    JSL.L QueueSound_Lib2_Max6                                           ;A48D18;
    PLY                                                                  ;A48D1C;
    PLX                                                                  ;A48D1D;
    RTL                                                                  ;A48D1E;


HandlePlayingCrocomireAcidDamageSFX:
    PHX                                                                  ;A48D1F;
    PHY                                                                  ;A48D20;
    LDA.L $7E8000                                                        ;A48D21;
    BEQ .return                                                          ;A48D25;
    DEC A                                                                ;A48D27;
    STA.L $7E8000                                                        ;A48D28;
    BNE .return                                                          ;A48D2C;
    LDA.W #$0020                                                         ;A48D2E;
    STA.L $7E8000                                                        ;A48D31;
    LDA.W #$0022                                                         ;A48D35;
    JSL.L QueueSound_Lib3_Max6                                           ;A48D38;

.return:
    PLY                                                                  ;A48D3C;
    PLX                                                                  ;A48D3D;
    RTL                                                                  ;A48D3E;


MainAI_Crocomire_DeathSequence_4_A_Hop_1_2_Resting:
    JSL.L HandlePlayingCrocomireAcidDamageSFX                            ;A48D3F;
    JSL.L UpdateCrocomireBG2XScroll                                      ;A48D43;

MainAI_Crocomire_DeathSequence_20_26_Hop_4_5_Resting:
    LDA.W $0FAE                                                          ;A48D47;
    BEQ .timerExpired                                                    ;A48D4A;
    DEC A                                                                ;A48D4C;
    STA.W $0FAE                                                          ;A48D4D;
    RTS                                                                  ;A48D50;


.timerExpired:
    INC.W $0FA8                                                          ;A48D51;
    INC.W $0FA8                                                          ;A48D54;
    LDA.W #$0300                                                         ;A48D57;
    STA.W $0FB0                                                          ;A48D5A;
    RTS                                                                  ;A48D5D;


HandleCrocomiresBridge:
    PHY                                                                  ;A48D5E;
    LDA.W $0F7A                                                          ;A48D5F;
    CMP.W #$0600                                                         ;A48D62;
    BMI .notOnBridge                                                     ;A48D65;
    CMP.W #$0610                                                         ;A48D67;
    BPL .oneBlockDeep                                                    ;A48D6A;
    LDA.L $7E9000                                                        ;A48D6C;
    BNE .returnUpper                                                     ;A48D70;
    LDA.W #$0001                                                         ;A48D72;
    STA.L $7E9000                                                        ;A48D75;
    LDA.W #$0600                                                         ;A48D79;
    STA.B $12                                                            ;A48D7C;
    LDA.W #$00B0                                                         ;A48D7E;
    STA.B $14                                                            ;A48D81;
    LDA.W #$0015                                                         ;A48D83;
    LDY.W #EnemyProjectile_MiscDust                                      ;A48D86;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A48D89;

.returnUpper:
    PLY                                                                  ;A48D8D;
    RTL                                                                  ;A48D8E;


.notOnBridge:
    LDA.W #$0000                                                         ;A48D8F;
    STA.L $7E9000                                                        ;A48D92;
    STA.L $7E9002                                                        ;A48D96;
    STA.L $7E9006                                                        ;A48D9A;
    STA.L $7E900A                                                        ;A48D9E;
    PLY                                                                  ;A48DA2;
    RTL                                                                  ;A48DA3;


.oneBlockDeep:
    LDA.W $0F7A                                                          ;A48DA4;
    CMP.W #$0610                                                         ;A48DA7;
    BMI .deadCode                                                        ;A48DAA;
    CMP.W #$0620                                                         ;A48DAC;
    BPL .twoBlocksDeep                                                   ;A48DAF;
    LDA.L $7E9002                                                        ;A48DB1;
    BNE .returnMiddle                                                    ;A48DB5;
    LDA.W #$0001                                                         ;A48DB7;
    STA.L $7E9002                                                        ;A48DBA;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48DBE;
    db $61,$0B                                                           ;A48DC2;
    dw PLMEntries_crumbleABlockOfCrocomiresBridge                        ;A48DC4;
    LDA.W #$0620                                                         ;A48DC6;
    STA.B $12                                                            ;A48DC9;
    LDA.W #$00B0                                                         ;A48DCB;
    STA.B $14                                                            ;A48DCE;
    LDA.W #$0015                                                         ;A48DD0;
    LDY.W #EnemyProjectile_MiscDust                                      ;A48DD3;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A48DD6;

.returnMiddle:
    PLY                                                                  ;A48DDA;
    RTL                                                                  ;A48DDB;


.deadCode:
    LDA.W #$0000                                                         ;A48DDC;
    STA.L $7E9002                                                        ;A48DDF;
    STA.L $7E9006                                                        ;A48DE3;
    STA.L $7E900A                                                        ;A48DE7;
    PLY                                                                  ;A48DEB;
    RTL                                                                  ;A48DEC;


.twoBlocksDeep:
    LDA.W $0F7A                                                          ;A48DED;
    CMP.W #$0620                                                         ;A48DF0;
    BMI .deadCode2                                                       ;A48DF3;
    CMP.W #$0630                                                         ;A48DF5;
    BPL .threeBlocksDeep                                                 ;A48DF8;
    LDA.L $7E9006                                                        ;A48DFA;
    BNE .returnLower                                                     ;A48DFE;
    LDA.W #$0001                                                         ;A48E00;
    STA.L $7E9006                                                        ;A48E03;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48E07;
    db $62,$0B                                                           ;A48E0B;
    dw PLMEntries_crumbleABlockOfCrocomiresBridge                        ;A48E0D;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48E0F;
    db $63,$0B                                                           ;A48E13;
    dw PLMEntries_crumbleABlockOfCrocomiresBridge                        ;A48E15;
    LDA.W #$0630                                                         ;A48E17;
    STA.B $12                                                            ;A48E1A;
    LDA.W #$00B0                                                         ;A48E1C;
    STA.B $14                                                            ;A48E1F;
    LDA.W #$0015                                                         ;A48E21;
    LDY.W #EnemyProjectile_MiscDust                                      ;A48E24;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A48E27;

.returnLower:
    PLY                                                                  ;A48E2B;
    RTL                                                                  ;A48E2C;


.deadCode2:
    LDA.W #$0000                                                         ;A48E2D;
    STA.L $7E9006                                                        ;A48E30;
    STA.L $7E900A                                                        ;A48E34;
    PLY                                                                  ;A48E38;
    RTL                                                                  ;A48E39;


.threeBlocksDeep:
    CMP.W CrocomireConstants_XThresholdBridge                            ;A48E3A;
    BPL .collapseBridge                                                  ;A48E3D;
    PLY                                                                  ;A48E3F;
    RTL                                                                  ;A48E40;


.collapseBridge:
    JSR.W CollapseCrocomiresBridge                                       ;A48E41;
    LDA.W #$0001                                                         ;A48E44;
    STA.L $7E8000                                                        ;A48E47;
    LDA.W #$0001                                                         ;A48E4B;
    STA.L $7E9018                                                        ;A48E4E;
    LDX.W $0E54                                                          ;A48E52;
    INC.W $0FA8,X                                                        ;A48E55;
    INC.W $0FA8,X                                                        ;A48E58;
    LDA.W #$0002                                                         ;A48E5B;
    STA.L $7E7800                                                        ;A48E5E;
    STA.L $7E7840                                                        ;A48E62;
    STA.L $7E7880                                                        ;A48E66;
    STA.L $7E78C0                                                        ;A48E6A;
    STA.L $7E7900                                                        ;A48E6E;
    STA.L $7E7940                                                        ;A48E72;
    LDA.W #$0000                                                         ;A48E76;
    STA.L $7E7802                                                        ;A48E79;
    STA.L $7E7842                                                        ;A48E7D;
    STA.L $7E7882                                                        ;A48E81;
    STA.L $7E78C2                                                        ;A48E85;
    STA.L $7E7902                                                        ;A48E89;
    STA.L $7E7942                                                        ;A48E8D;
    LDA.W #$003B                                                         ;A48E91;
    JSL.L QueueSound_Lib2_Max6                                           ;A48E94;
    LDA.W #$0000                                                         ;A48E98;
    STA.L $7E9016                                                        ;A48E9B;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48E9F;
    db $4E,$03                                                           ;A48EA3;
    dw PLMEntries_createCrocomireInvisibleWall                           ;A48EA5;
    LDA.W #InstList_CrocomireTongue_BridgeCollapsed                      ;A48EA7;
    STA.W $0F92,X                                                        ;A48EAA;
    LDA.W #$0001                                                         ;A48EAD;
    STA.W $0F94,X                                                        ;A48EB0;
    LDA.W $0F86,X                                                        ;A48EB3;
    ORA.W #$0400                                                         ;A48EB6;
    STA.W $0F86,X                                                        ;A48EB9;
    LDA.W #$7FFF                                                         ;A48EBC;
    STA.W $0FD4,X                                                        ;A48EBF;
    LDA.W #InstList_Crocomire_Sleep                                      ;A48EC2;
    STA.W $0FD2,X                                                        ;A48EC5;
    LDA.W $0FC6                                                          ;A48EC8;
    ORA.W #$0100                                                         ;A48ECB;
    STA.W $0FC6                                                          ;A48ECE;
    STZ.W $0FB0,X                                                        ;A48ED1;
    STZ.W $0FB2,X                                                        ;A48ED4;
    LDA.W #$0800                                                         ;A48ED7;
    STA.W $0FAE,X                                                        ;A48EDA;
    LDA.W #$0010                                                         ;A48EDD;
    STA.W $0F84                                                          ;A48EE0;
    PLY                                                                  ;A48EE3;
    RTL                                                                  ;A48EE4;


CollapseCrocomiresBridge:
    JSL.L Spawn_Hardcoded_PLM                                            ;A48EE5;
    db $61,$0B                                                           ;A48EE9;
    dw PLMEntries_clearABlockOfCrocomiresBridge                          ;A48EEB;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48EED;
    db $62,$0B                                                           ;A48EF1;
    dw PLMEntries_clearABlockOfCrocomiresBridge                          ;A48EF3;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48EF5;
    db $63,$0B                                                           ;A48EF9;
    dw PLMEntries_clearABlockOfCrocomiresBridge                          ;A48EFB;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48EFD;
    db $64,$0B                                                           ;A48F01;
    dw PLMEntries_clearABlockOfCrocomiresBridge                          ;A48F03;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48F05;
    db $65,$0B                                                           ;A48F09;
    dw PLMEntries_clearABlockOfCrocomiresBridge                          ;A48F0B;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48F0D;
    db $66,$0B                                                           ;A48F11;
    dw PLMEntries_clearABlockOfCrocomiresBridge                          ;A48F13;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48F15;
    db $67,$0B                                                           ;A48F19;
    dw PLMEntries_clearABlockOfCrocomiresBridge                          ;A48F1B;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48F1D;
    db $68,$0B                                                           ;A48F21;
    dw PLMEntries_clearABlockOfCrocomiresBridge                          ;A48F23;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48F25;
    db $69,$0B                                                           ;A48F29;
    dw PLMEntries_clearABlockOfCrocomiresBridge                          ;A48F2B;
    JSL.L Spawn_Hardcoded_PLM                                            ;A48F2D;
    db $6A,$0B                                                           ;A48F31;
    dw PLMEntries_clearABlockOfCrocomiresBridge                          ;A48F33;
    LDA.W #$0600                                                         ;A48F35;
    STA.B $12                                                            ;A48F38;
    LDA.W #$00B0                                                         ;A48F3A;
    STA.B $14                                                            ;A48F3D;
    LDA.W #$0015                                                         ;A48F3F;
    LDY.W #EnemyProjectile_MiscDust                                      ;A48F42;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A48F45;
    LDA.W #$0610                                                         ;A48F49;
    STA.B $12                                                            ;A48F4C;
    LDA.W #$00C0                                                         ;A48F4E;
    STA.B $14                                                            ;A48F51;
    LDA.W #$0015                                                         ;A48F53;
    LDY.W #EnemyProjectile_MiscDust                                      ;A48F56;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A48F59;
    LDA.W #$0620                                                         ;A48F5D;
    STA.B $12                                                            ;A48F60;
    LDA.W #$00B0                                                         ;A48F62;
    STA.B $14                                                            ;A48F65;
    LDA.W #$0015                                                         ;A48F67;
    LDY.W #EnemyProjectile_MiscDust                                      ;A48F6A;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A48F6D;
    LDA.W #$0630                                                         ;A48F71;
    STA.B $12                                                            ;A48F74;
    LDA.W #$00C0                                                         ;A48F76;
    STA.B $14                                                            ;A48F79;
    LDA.W #$0015                                                         ;A48F7B;
    LDY.W #EnemyProjectile_MiscDust                                      ;A48F7E;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A48F81;
    LDA.W #$0640                                                         ;A48F85;
    STA.B $12                                                            ;A48F88;
    LDA.W #$00C0                                                         ;A48F8A;
    STA.B $14                                                            ;A48F8D;
    LDA.W #$0015                                                         ;A48F8F;
    LDY.W #EnemyProjectile_MiscDust                                      ;A48F92;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A48F95;
    LDA.W #$0650                                                         ;A48F99;
    STA.B $12                                                            ;A48F9C;
    LDA.W #$00C0                                                         ;A48F9E;
    STA.B $14                                                            ;A48FA1;
    LDA.W #$0015                                                         ;A48FA3;
    LDY.W #EnemyProjectile_MiscDust                                      ;A48FA6;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A48FA9;
    LDA.W #$0660                                                         ;A48FAD;
    STA.B $12                                                            ;A48FB0;
    LDA.W #$00C0                                                         ;A48FB2;
    STA.B $14                                                            ;A48FB5;
    LDA.W #$0015                                                         ;A48FB7;
    LDY.W #EnemyProjectile_MiscDust                                      ;A48FBA;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A48FBD;
    RTS                                                                  ;A48FC1;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_MoveEnemyDownBy14_12_A48FC2:
    JSL.L MoveEnemyDownBy_14_12                                          ;A48FC2;
    RTL                                                                  ;A48FC6;
endif ; !FEATURE_KEEP_UNREFERENCED


Instruction_Crocomire_ShakeScreen:
    PHX                                                                  ;A48FC7;
    PHY                                                                  ;A48FC8;
    LDA.W #$0004                                                         ;A48FC9;
    STA.W $183E                                                          ;A48FCC;
    LDA.W #$0005                                                         ;A48FCF;
    STA.W $1840                                                          ;A48FD2;
    LDA.W #$0076                                                         ;A48FD5;
    JSL.L QueueSound_Lib2_Max6                                           ;A48FD8;
    PLY                                                                  ;A48FDC;
    PLX                                                                  ;A48FDD;
    RTL                                                                  ;A48FDE;


Instruction_Crocomire_MoveLeft4Pixels:
    PHX                                                                  ;A48FDF;
    PHY                                                                  ;A48FE0;
    LDX.W $0E54                                                          ;A48FE1;
    LDA.W $0FAA                                                          ;A48FE4;
    BIT.W #$0800                                                         ;A48FE7;
    BNE .return                                                          ;A48FEA;
    STZ.B $12                                                            ;A48FEC;
    LDA.W #$FFFC                                                         ;A48FEE;
    STA.B $14                                                            ;A48FF1;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A48FF3;

.return:
    PLY                                                                  ;A48FF7;
    PLX                                                                  ;A48FF8;
    RTL                                                                  ;A48FF9;


Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud:
    JSR.W SpawnBigDustCloudProjectileWithRandomXOffset                   ;A48FFA;
    BRA Instruction_Crocomire_MoveLeft4Pixels                            ;A48FFD;


Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud_dup:
    JSR.W SpawnBigDustCloudProjectileWithRandomXOffset                   ;A48FFF;
    BRA Instruction_Crocomire_MoveLeft4Pixels                            ;A49002;


SpawnBigDustCloudProjectileWithRandomXOffset:
    PHX                                                                  ;A49004;
    LDA.W $05E5                                                          ;A49005;
    AND.W #$001F                                                         ;A49008;
    LDX.W $05E5                                                          ;A4900B;
    CPX.W #$1000                                                         ;A4900E;
    BMI .spawn                                                           ;A49011;
    EOR.W #$FFFF                                                         ;A49013;
    INC A                                                                ;A49016;

.spawn:
    JSL.L SpawnBigDustCloudProjectile                                    ;A49017;
    PLX                                                                  ;A4901B;
    RTS                                                                  ;A4901C;


Instruction_Crocomire_MoveLeft_SpawnCloud_HandleSpikeWall:
    PHX                                                                  ;A4901D;
    PHY                                                                  ;A4901E;
    LDX.W $0E54                                                          ;A4901F;
    STZ.B $12                                                            ;A49022;
    LDA.W #$FFFC                                                         ;A49024;
    STA.B $14                                                            ;A49027;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A49029;
    BCS .hitWall                                                         ;A4902D;
    LDX.W #$0020                                                         ;A4902F;
    LDA.W $05E5                                                          ;A49032;
    CMP.W #$0800                                                         ;A49035;
    BMI .spawnDustCloud                                                  ;A49038;
    LDX.W #$FFE0                                                         ;A4903A;

.spawnDustCloud:
    LDA.W $05E5                                                          ;A4903D;
    AND.W #$000F                                                         ;A49040;
    STX.B $12                                                            ;A49043;
    CLC                                                                  ;A49045;
    ADC.B $12                                                            ;A49046;
    JSL.L SpawnBigDustCloudProjectile                                    ;A49048;
    PLY                                                                  ;A4904C;
    PLX                                                                  ;A4904D;
    RTL                                                                  ;A4904E;


.hitWall:
    PLY                                                                  ;A4904F;
    LDY.W #InstList_Crocomire_BackOffFromSpikeWall                       ;A49050;
    LDA.W #$000E                                                         ;A49053;
    STA.W $0FAC                                                          ;A49056;
    PLX                                                                  ;A49059;
    RTL                                                                  ;A4905A;


Instruction_Crocomire_MoveRight4PixelsIfOnScreen:
    PHX                                                                  ;A4905B;
    PHY                                                                  ;A4905C;
    LDX.W $0E54                                                          ;A4905D;
    STZ.B $12                                                            ;A49060;
    LDA.W #$0004                                                         ;A49062;
    STA.B $14                                                            ;A49065;
    LDA.W $0F7A                                                          ;A49067;
    SEC                                                                  ;A4906A;
    SBC.W $0F82                                                          ;A4906B;
    SBC.W #$0100                                                         ;A4906E;
    SBC.B $14                                                            ;A49071;
    CMP.W $0911                                                          ;A49073;
    BPL .return                                                          ;A49076;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A49078;

.return:
    PLY                                                                  ;A4907C;
    PLX                                                                  ;A4907D;
    RTL                                                                  ;A4907E;


Instruction_Crocomire_MoveRight4Pixels:
    PHX                                                                  ;A4907F;
    PHY                                                                  ;A49080;
    STZ.B $12                                                            ;A49081;
    LDA.W #$0004                                                         ;A49083;
    STA.B $14                                                            ;A49086;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A49088;
    PLY                                                                  ;A4908C;
    PLX                                                                  ;A4908D;
    RTL                                                                  ;A4908E;


Instruction_Crocomire_MoveRight4PixelsIfOnScreen_SpawnCloud:
    JSR.W SpawnBigDustCloudProjectileWithRandomXOffset                   ;A4908F;
    BRA Instruction_Crocomire_MoveRight4PixelsIfOnScreen                 ;A49092;


Instruction_Crocomire_MoveRight4Pixels_SpawnBigDustCloud:
    JSR.W SpawnBigDustCloudProjectileWithRandomXOffset                   ;A49094;
    BRA Instruction_Crocomire_MoveRight4Pixels                           ;A49097;


MainAI_Crocomire_DeathSequence_3C_Hop_6_Sinking:
    JSR.W SetMelting2InstListPointer                                     ;A49099;
    JSR.W HandleCrocomireAcidDamageSmoke                                 ;A4909C;
    JSR.W SinkCrocomireDown                                              ;A4909F;
    LDA.W $0FA8                                                          ;A490A2;
    CMP.W #$003E                                                         ;A490A5;
    BNE .return                                                          ;A490A8;
    LDA.W #$0006                                                         ;A490AA;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;A490AD;
    LDA.W #$0058                                                         ;A490B1;
    STA.W $0FA8                                                          ;A490B4;
    LDA.W #InstList_CrocomireCorpse_Skeleton_FlowingDownTheRiver         ;A490B7;
    STA.W $0F92                                                          ;A490BA;
    LDA.W #$0101                                                         ;A490BD;
    STA.L $7ECD24                                                        ;A490C0;
    STZ.W $05F7                                                          ;A490C4;
    LDA.W $0FC6                                                          ;A490C7;
    ORA.W #$0200                                                         ;A490CA;
    STA.W $0FC6                                                          ;A490CD;
    JSL.L Spawn_Hardcoded_PLM                                            ;A490D0;
    db $4E,$03                                                           ;A490D4;
    dw PLMEntries_clearCrocomireInvisibleWall                            ;A490D6;
    STZ.W $0941                                                          ;A490D8;
    STZ.W $0688                                                          ;A490DB;

.return:
    RTS                                                                  ;A490DE;


SetMelting2InstListPointer:
    LDA.W $0F7E                                                          ;A490DF;
    LDY.W #InstList_Crocomire_Melting2_TopRow                            ;A490E2;
    CMP.W #$0118                                                         ;A490E5;
    BPL .setInstList                                                     ;A490E8;
    LDY.W #InstList_Crocomire_Melting2_Top2Rows                          ;A490EA;
    CMP.W #$0108                                                         ;A490ED;
    BPL .setInstList                                                     ;A490F0;
    LDY.W #InstList_Crocomire_Melting2_Top3Rows                          ;A490F2;
    CMP.W #$00F8                                                         ;A490F5;
    BPL .setInstList                                                     ;A490F8;
    LDY.W #InstList_Crocomire_Melting2_Top4Rows                          ;A490FA;

.setInstList:
    TYA                                                                  ;A490FD;
    STA.W $0F92                                                          ;A490FE;
    LDA.W #$0001                                                         ;A49101;
    STA.W $0F94                                                          ;A49104;
    RTS                                                                  ;A49107;


MainAI_Crocomire_DeathSequence_1E_24_2A_Hop_3_4_5_Sinking:
    JSR.W HandleCrocomireAcidDamageSmoke                                 ;A49108;
    LDA.W $0F7E                                                          ;A4910B;
    LDY.W #InstList_Crocomire_Melting1_TopRow                            ;A4910E;
    CMP.W #$0118                                                         ;A49111;
    BPL .setInstList                                                     ;A49114;
    LDY.W #InstList_Crocomire_Melting1_Top2Rows                          ;A49116;
    CMP.W #$0108                                                         ;A49119;
    BPL .setInstList                                                     ;A4911C;
    LDY.W #InstList_Crocomire_Melting1_Top3Rows                          ;A4911E;
    CMP.W #$00F8                                                         ;A49121;
    BPL .setInstList                                                     ;A49124;
    LDY.W #InstList_Crocomire_Melting1_Top4Rows                          ;A49126;

.setInstList:
    TYA                                                                  ;A49129;
    STA.W $0F92                                                          ;A4912A;
    LDA.W #$0001                                                         ;A4912D;
    STA.W $0F94                                                          ;A49130;
    JMP.W SinkCrocomireDown                                              ;A49133;


MainAI_Crocomire_DeathSequence_2_Falling:
    LDA.L $7E9016                                                        ;A49136;
    CMP.W #$0016                                                         ;A4913A;
    BMI .indexLessThan16                                                 ;A4913D;
    JMP.W MainAI_Crocomire_DeathSequence_8_E_Hop_1_2_Sinking             ;A4913F;


.indexLessThan16:
    TAX                                                                  ;A49142;
    INC A                                                                ;A49143;
    INC A                                                                ;A49144;
    STA.L $7E9016                                                        ;A49145;
    LDA.W .XPositions,X                                                  ;A49149;
    LDY.W #EnemyProjectile_CrocomireBridgeCrumbling                      ;A4914C;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A4914F;
    JMP.W MainAI_Crocomire_DeathSequence_8_E_Hop_1_2_Sinking             ;A49153;


.XPositions:
; Crocomire bridge crumbling enemy projectile X positions
; Note that these are all on the screen to the right of the one Crocomire dies on,
; and they use the normal floor graphics, not the bridge graphics
; I would guess that this is a leftover effect from a previous room design
    dw $0780,$0730,$0790,$0740,$07B0,$0760,$07A0,$0770                   ;A49156;
    dw $0710,$0750,$0720                                                 ;A49166;

HandleCrocomireAcidDamageSmoke:
    LDA.L $7E9018                                                        ;A4916C;
    DEC A                                                                ;A49170;
    STA.L $7E9018                                                        ;A49171;
    BNE .return                                                          ;A49175;
    LDA.W #$0006                                                         ;A49177;
    STA.L $7E9018                                                        ;A4917A;
    LDA.W $05E5                                                          ;A4917E;
    AND.W #$003F                                                         ;A49181;
    TAX                                                                  ;A49184;
    LDA.W $05E5                                                          ;A49185;
    BIT.W #$0002                                                         ;A49188;
    BNE +                                                                ;A4918B;
    TXA                                                                  ;A4918D;
    EOR.W #$FFFF                                                         ;A4918E;
    TAX                                                                  ;A49191;

  + TXA                                                                  ;A49192;
    CLC                                                                  ;A49193;
    ADC.W $0F7A                                                          ;A49194;
    STA.B $12                                                            ;A49197;
    LDA.W $05E5                                                          ;A49199;
    AND.W #$1F00                                                         ;A4919C;
    XBA                                                                  ;A4919F;
    STA.B $14                                                            ;A491A0;
    LDA.W $1962                                                          ;A491A2;
    CLC                                                                  ;A491A5;
    ADC.W #$0010                                                         ;A491A6;
    SEC                                                                  ;A491A9;
    SBC.B $14                                                            ;A491AA;
    STA.B $14                                                            ;A491AC;
    LDA.W #$0015                                                         ;A491AE;
    STA.B $16                                                            ;A491B1;
    STZ.B $18                                                            ;A491B3;
    JSL.L Create_Sprite_Object                                           ;A491B5;

.return:
    RTS                                                                  ;A491B9;


MainAI_Crocomire_DeathSequence_8_E_Hop_1_2_Sinking:
    JSL.L HandlePlayingCrocomireAcidDamageSFX                            ;A491BA;
    JSR.W HandleCrocomireAcidDamageSmoke                                 ;A491BE; fallthrough to SinkCrocomireDown

SinkCrocomireDown:
    JSR.W ResetCrocomireBG2YScrollHDMADataTable                          ;A491C1;
    LDA.W $0FAA                                                          ;A491C4;
    AND.W #$F7FF                                                         ;A491C7;
    STA.W $0FAA                                                          ;A491CA;
    LDX.W $0E54                                                          ;A491CD;
    JSL.L UpdateCrocomireBG2Scroll                                       ;A491D0;
    LDA.W $0F7E,X                                                        ;A491D4;
    CMP.W #$0118                                                         ;A491D7;
    BMI .reachedLeftLedge                                                ;A491DA;
    INC.W $0FA8,X                                                        ;A491DC;
    INC.W $0FA8,X                                                        ;A491DF;
    LDA.W #$0030                                                         ;A491E2;
    STA.W $0FAE                                                          ;A491E5;
    RTS                                                                  ;A491E8;


.reachedLeftLedge:
    LDA.B $B7                                                            ;A491E9;
    EOR.W #$FFFF                                                         ;A491EB;
    INC A                                                                ;A491EE;
    STA.B $12                                                            ;A491EF;
    LDA.W #$0120                                                         ;A491F1;
    SEC                                                                  ;A491F4;
    SBC.B $12                                                            ;A491F5;
    AND.W #$FFF8                                                         ;A491F7;
    ASL A                                                                ;A491FA;
    ASL A                                                                ;A491FB;
    ASL A                                                                ;A491FC;
    TAX                                                                  ;A491FD;
    LDA.W #$0020                                                         ;A491FE;
    STA.B $12                                                            ;A49201;
    LDA.W #$0338                                                         ;A49203;

.loopTilemap:
    STA.L $7E2000,X                                                      ;A49206;
    INX                                                                  ;A4920A;
    INX                                                                  ;A4920B;
    DEC.B $12                                                            ;A4920C;
    BNE .loopTilemap                                                     ;A4920E;
    LDA.W #$0001                                                         ;A49210;
    STA.W $0E1E                                                          ;A49213;
    LDA.W $0F88                                                          ;A49216;
    AND.W #$7FFF                                                         ;A49219;
    STA.W $0F88                                                          ;A4921C;
    LDX.W $0E54                                                          ;A4921F;
    SEP #$20                                                             ;A49222;
    LDA.W $0FAE,X                                                        ;A49224;
    CLC                                                                  ;A49227;
    ADC.B #$80                                                           ;A49228;
    STA.W $0FAE,X                                                        ;A4922A;
    LDA.W $0FAF,X                                                        ;A4922D;
    ADC.B #$03                                                           ;A49230;
    CMP.B #$30                                                           ;A49232;
    BMI +                                                                ;A49234;
    LDA.B #$30                                                           ;A49236;

  + STA.W $0FAF,X                                                        ;A49238;
    CLC                                                                  ;A4923B;
    ADC.W $0FB0,X                                                        ;A4923C;
    STA.W $0FB0,X                                                        ;A4923F;
    LDA.W $0FB1,X                                                        ;A49242;
    ADC.B #$00                                                           ;A49245;
    CMP.B #$03                                                           ;A49247;
    BMI +                                                                ;A49249;
    LDA.B #$03                                                           ;A4924B;

  + STA.W $0FB1,X                                                        ;A4924D;
    LDA.W $0FB0,X                                                        ;A49250;
    CLC                                                                  ;A49253;
    ADC.W $0FB3,X                                                        ;A49254;
    STA.W $0FB3,X                                                        ;A49257;
    LDA.W $0FB1,X                                                        ;A4925A;
    ADC.W $0F7E,X                                                        ;A4925D;
    STA.W $0F7E,X                                                        ;A49260;
    LDA.W $0F7F,X                                                        ;A49263;
    ADC.B #$00                                                           ;A49266;
    STA.W $0F7F,X                                                        ;A49268;
    REP #$20                                                             ;A4926B;
    RTS                                                                  ;A4926D;


MainAI_Crocomire_DeathSequence_34_Hop_6_Rising:
    LDX.W $0E54                                                          ;A4926E;
    LDA.W $0F7E,X                                                        ;A49271;
    LDY.W #InstList_Crocomire_Melting2_TopRow                            ;A49274;
    CMP.W #$0118                                                         ;A49277;
    BPL .setInstListPointer                                              ;A4927A;
    LDY.W #InstList_Crocomire_Melting2_Top2Rows                          ;A4927C;
    CMP.W #$0108                                                         ;A4927F;
    BPL .setInstListPointer                                              ;A49282;
    LDY.W #InstList_Crocomire_Melting2_Top3Rows                          ;A49284;
    CMP.W #$00F8                                                         ;A49287;
    BPL .setInstListPointer                                              ;A4928A;
    LDY.W #InstList_Crocomire_Melting2_Top4Rows                          ;A4928C;

.setInstListPointer:
    TYA                                                                  ;A4928F;
    STA.W $0F92,X                                                        ;A49290;
    LDA.W #$0001                                                         ;A49293;
    STA.W $0F94,X                                                        ;A49296;
    JSR.W HandleCrocomireAcidDamageSmoke                                 ;A49299;
    BRA RaiseCrocomireUp                                                 ;A4929C;


MainAI_Crocomire_DeathSequence_16_22_28_Hop_3_4_5_Rising:
    JSR.W HandleCrocomireAcidDamageSmoke                                 ;A4929E;
    LDX.W $0E54                                                          ;A492A1;
    LDA.W $0F7E,X                                                        ;A492A4;
    LDY.W #InstList_Crocomire_Melting1_TopRow                            ;A492A7;
    CMP.W #$0118                                                         ;A492AA;
    BPL .setInstListPointer                                              ;A492AD;
    LDY.W #InstList_Crocomire_Melting1_Top2Rows                          ;A492AF;
    CMP.W #$0108                                                         ;A492B2;
    BPL .setInstListPointer                                              ;A492B5;
    LDY.W #InstList_Crocomire_Melting1_Top3Rows                          ;A492B7;
    CMP.W #$00F8                                                         ;A492BA;
    BPL .setInstListPointer                                              ;A492BD;
    LDY.W #InstList_Crocomire_Melting1_Top4Rows                          ;A492BF;

.setInstListPointer:
    TYA                                                                  ;A492C2;
    STA.W $0F92,X                                                        ;A492C3;
    LDA.W #$0001                                                         ;A492C6;
    STA.W $0F94,X                                                        ;A492C9;
    BRA RaiseCrocomireUp                                                 ;A492CC;


MainAI_Crocomire_DeathSequence_6_C_Hop_1_2_Rising:
    JSL.L HandlePlayingCrocomireAcidDamageSFX                            ;A492CE;
    JSR.W HandleCrocomireAcidDamageSmoke                                 ;A492D2;
    LDX.W $0E54                                                          ;A492D5; fallthrough to RaiseCrocomireUp

RaiseCrocomireUp:
    JSR.W ResetCrocomireBG2YScrollHDMADataTable                          ;A492D8;
    LDX.W $0E54                                                          ;A492DB;
    LDA.W $0F7E,X                                                        ;A492DE;
    CMP.W #$00DA                                                         ;A492E1;
    BPL .raised                                                          ;A492E4;
    LDX.W $0E54                                                          ;A492E6;
    INC.W $0FA8,X                                                        ;A492E9;
    INC.W $0FA8,X                                                        ;A492EC;
    RTS                                                                  ;A492EF;


.raised:
    JSL.L UpdateCrocomireBG2Scroll                                       ;A492F0;
    LDA.W $0FAE                                                          ;A492F4;
    CLC                                                                  ;A492F7;
    ADC.W #$0100                                                         ;A492F8;
    CMP.W #$1F00                                                         ;A492FB;
    BMI +                                                                ;A492FE;
    LDA.W #$1F00                                                         ;A49300;

  + STA.W $0FAE                                                          ;A49303;
    SEP #$20                                                             ;A49306;
    LDA.W $0FB0                                                          ;A49308;
    SEC                                                                  ;A4930B;
    SBC.W $0FAF                                                          ;A4930C;
    STA.W $0FB0                                                          ;A4930F;
    LDA.W $0FB1                                                          ;A49312;
    SBC.B #$00                                                           ;A49315;
    BPL .positiveYVelocity                                               ;A49317;
    LDA.B #$FF                                                           ;A49319;
    STA.W $0FB0                                                          ;A4931B;
    LDA.B #$00                                                           ;A4931E;

.positiveYVelocity:
    STA.W $0FB1                                                          ;A49320;
    LDA.W $0FB3                                                          ;A49323;
    SEC                                                                  ;A49326;
    SBC.W $0FB0                                                          ;A49327;
    STA.W $0FB3                                                          ;A4932A;
    LDA.W $0F7E                                                          ;A4932D;
    SBC.W $0FB1                                                          ;A49330;
    STA.W $0F7E                                                          ;A49333;
    LDA.W $0F7F                                                          ;A49336;
    SBC.B #$00                                                           ;A49339;
    STA.W $0F7F                                                          ;A4933B;
    REP #$20                                                             ;A4933E;
    RTS                                                                  ;A49340;


MainAI_Crocomire_DeathSequence_10_Hop_3_LoadMeltingTilemap:
    LDA.W #$0030                                                         ;A49341;
    STA.W $068C                                                          ;A49344;
    STA.W $0688                                                          ;A49347;
    LDX.W $0E54                                                          ;A4934A;
    INC.W $0FA8,X                                                        ;A4934D;
    INC.W $0FA8,X                                                        ;A49350;
    LDA.W #InstList_Crocomire_Melting1_TopRow                            ;A49353;
    STA.W $0F92,X                                                        ;A49356;
    LDA.W #$0001                                                         ;A49359;
    STA.W $0F94,X                                                        ;A4935C;
    LDA.W #$0001                                                         ;A4935F;
    STA.W $0E1E                                                          ;A49362;
    LDA.W #InstList_CrocomireTongue_Melting                              ;A49365;
    STA.W $0FD2,X                                                        ;A49368;
    LDA.W #$0001                                                         ;A4936B;
    STA.W $0FD4,X                                                        ;A4936E;
    LDA.W $0FC6,X                                                        ;A49371;
    ORA.W #$2C00                                                         ;A49374;
    AND.W #$FEFF                                                         ;A49377;
    STA.W $0FC6,X                                                        ;A4937A;
    LDA.W $0F7A,X                                                        ;A4937D;
    STA.W $0FBA,X                                                        ;A49380;
    LDA.W $0F7E,X                                                        ;A49383;
    CLC                                                                  ;A49386;
    ADC.W #$0010                                                         ;A49387;
    STA.W $0FBE,X                                                        ;A4938A;
    LDX.W #$0000                                                         ;A4938D;
    LDA.W #$0338                                                         ;A49390;

.loopClearTilemap:
    STA.L $7E2000,X                                                      ;A49393;
    STA.L $7E2002,X                                                      ;A49397;
    INX                                                                  ;A4939B;
    INX                                                                  ;A4939C;
    INX                                                                  ;A4939D;
    INX                                                                  ;A4939E;
    CPX.W #$0400                                                         ;A4939F;
    BMI .loopClearTilemap                                                ;A493A2;
    LDX.W #$0000                                                         ;A493A4;

.loopMeltingTilemap:
    LDA.L MeltingCrocomireTilesLoadingTable_Tilemap_Melting1,X           ;A493A7;
    CMP.W #$FFFF                                                         ;A493AB;
    BEQ .done                                                            ;A493AE;
    STA.L $7E2040,X                                                      ;A493B0;
    INX                                                                  ;A493B4;
    INX                                                                  ;A493B5;
    BRA .loopMeltingTilemap                                              ;A493B6;


.done:
    TXA                                                                  ;A493B8;
    CLC                                                                  ;A493B9;
    ADC.W #$0400                                                         ;A493BA; fallthrough to WriteCrocomireBG2Tilemap
    TAX                                                                  ;A493BD;

WriteCrocomireBG2Tilemap:
    TXY                                                                  ;A493BE;
    LDX.W $0330                                                          ;A493BF;
    STY.B $D0,X                                                          ;A493C2;
    LDA.W #$2000                                                         ;A493C4;
    STA.B $D2,X                                                          ;A493C7;
    LDA.W #$007E                                                         ;A493C9;
    STA.B $D4,X                                                          ;A493CC;
    LDA.B $59                                                            ;A493CE;
    AND.W #$00FC                                                         ;A493D0;
    XBA                                                                  ;A493D3;
    STA.B $D5,X                                                          ;A493D4;
    TXA                                                                  ;A493D6;
    CLC                                                                  ;A493D7;
    ADC.W #$0007                                                         ;A493D8;
    STA.W $0330                                                          ;A493DB;
    RTS                                                                  ;A493DE;


ResetCrocomireBG2YScrollHDMADataTable:
    LDA.B $B7                                                            ;A493DF;
    LDX.W #$01FE                                                         ;A493E1;

.loop:
    STA.L $7ECAF0,X                                                      ;A493E4;
    DEX                                                                  ;A493E8;
    DEX                                                                  ;A493E9;
    BPL .loop                                                            ;A493EA;
    RTS                                                                  ;A493EC;


MainAI_Crocomire_DeathSequence_2C_Hop_6_LoadMeltingTilemap:
    JSR.W ResetCrocomireBG2YScrollHDMADataTable                          ;A493ED;
    LDX.W $0E54                                                          ;A493F0;
    INC.W $0FA8,X                                                        ;A493F3;
    INC.W $0FA8,X                                                        ;A493F6;
    LDA.W #$0001                                                         ;A493F9;
    STA.W $0F94,X                                                        ;A493FC;
    LDA.W #$0030                                                         ;A493FF;
    STA.W $068C                                                          ;A49402;
    STA.W $0688                                                          ;A49405;
    LDA.W #InstList_Crocomire_Melting2_TopRow                            ;A49408;
    STA.W $0F92,X                                                        ;A4940B;
    LDX.W #$0000                                                         ;A4940E;
    LDA.W #$0338                                                         ;A49411;

.loopClearTilemap:
    STA.L $7E2000,X                                                      ;A49414;
    INX                                                                  ;A49418;
    INX                                                                  ;A49419;
    CPX.W #$0800                                                         ;A4941A;
    BMI .loopClearTilemap                                                ;A4941D;
    LDX.W #$0000                                                         ;A4941F;

.loopMeltingTilemap:
    LDA.L MeltingCrocomireTilesLoadingTable_Tilemap_Melting2,X           ;A49422;
    CMP.W #$FFFF                                                         ;A49426;
    BEQ .done                                                            ;A49429;
    STA.L $7E2040,X                                                      ;A4942B;
    INX                                                                  ;A4942F;
    INX                                                                  ;A49430;
    BRA .loopMeltingTilemap                                              ;A49431;


.done:
    TXA                                                                  ;A49433;
    CLC                                                                  ;A49434;
    ADC.W #$0400                                                         ;A49435;
    TAX                                                                  ;A49438;
    JMP.W WriteCrocomireBG2Tilemap                                       ;A49439;


RTL_A4943C:
    RTL                                                                  ;A4943C;


MainAI_Crocomire_DeathSequence_12_2E_Hop_3_4_LoadMeltTiles:
    REP #$30                                                             ;A4943D;
    PHB                                                                  ;A4943F;
    LDX.W $0E54                                                          ;A49440;
    INC.W $0FA8,X                                                        ;A49443;
    INC.W $0FA8,X                                                        ;A49446;
    LDA.W #$0100                                                         ;A49449;
    STA.W $0692                                                          ;A4944C;
    STZ.W $0690                                                          ;A4944F;
    LDX.W $069A                                                          ;A49452;
    LDA.W MeltingCrocomireTilesLoadingTable_Melting1_0,X                 ;A49455;
    STA.W $0698                                                          ;A49458;
    STA.W $0694                                                          ;A4945B;
    LDA.W MeltingCrocomireTilesLoadingTable_Melting1_0+2,X               ;A4945E;
    STA.W $0696                                                          ;A49461;
    LDA.W MeltingCrocomireTilesLoadingTable_Melting1_0+4,X               ;A49464;
    STA.W $068E                                                          ;A49467;
    STZ.B $00                                                            ;A4946A;
    LDA.W MeltingCrocomireTilesLoadingTable_Melting1_0+6,X               ;A4946C;
    STA.B $02                                                            ;A4946F;
    TXA                                                                  ;A49471;
    CLC                                                                  ;A49472;
    ADC.W #$0008                                                         ;A49473;
    TAX                                                                  ;A49476;

.loop:
    LDY.W MeltingCrocomireTilesLoadingTable_Melting1_0,X                 ;A49477;
    CPY.W #$FFFF                                                         ;A4947A;
    BEQ .done                                                            ;A4947D;
    PHX                                                                  ;A4947F;
    LDA.W MeltingCrocomireTilesLoadingTable_Melting1_0+2,X               ;A49480;
    TAX                                                                  ;A49483;
    LDA.W $068E                                                          ;A49484;
    STA.B $12                                                            ;A49487;

.loopInner:
    LDA.B [$00],Y                                                        ;A49489;
    STA.L $7E0000,X                                                      ;A4948B;
    INX                                                                  ;A4948F;
    INX                                                                  ;A49490;
    INY                                                                  ;A49491;
    INY                                                                  ;A49492;
    DEC.B $12                                                            ;A49493;
    BPL .loopInner                                                       ;A49495;
    PLX                                                                  ;A49497;
    INX                                                                  ;A49498;
    INX                                                                  ;A49499;
    INX                                                                  ;A4949A;
    INX                                                                  ;A4949B;
    BRA .loop                                                            ;A4949C;


.done:
    INX                                                                  ;A4949E;
    INX                                                                  ;A4949F;
    STX.W $069A                                                          ;A494A0;
    STX.W $068A                                                          ;A494A3;
    LDX.W #$0080                                                         ;A494A6;

.loopYOffsets:
    STZ.W $069C,X                                                        ;A494A9;
    DEX                                                                  ;A494AC;
    DEX                                                                  ;A494AD;
    BPL .loopYOffsets                                                    ;A494AE;
    PLB                                                                  ;A494B0;
    RTS                                                                  ;A494B1;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_UploadCrocomireMeltingTilesToVRAM_A494B2:
    JSR.W MainAI_Crocomire_DeathSequence_14_30_Hop_3_6_UploadingToVRAM   ;A494B2;
    RTS                                                                  ;A494B5;
endif ; !FEATURE_KEEP_UNREFERENCED


MainAI_Crocomire_DeathSequence_14_30_Hop_3_6_UploadingToVRAM:
    LDX.W $068A                                                          ;A494B6;
    LDY.W $0330                                                          ;A494B9;
    LDA.W MeltingCrocomireTilesLoadingTable_Melting1_0,X                 ;A494BC;
    CMP.W #$FFFF                                                         ;A494BF;
    BEQ .terminator                                                      ;A494C2;
    STA.W $00D0,Y                                                        ;A494C4;
    LDA.W MeltingCrocomireTilesLoadingTable_Melting1_0+6,X               ;A494C7;
    STA.W $00D2,Y                                                        ;A494CA;
    LDA.W MeltingCrocomireTilesLoadingTable_Melting1_0+4,X               ;A494CD;
    STA.W $00D4,Y                                                        ;A494D0;
    LDA.W MeltingCrocomireTilesLoadingTable_Melting1_0+2,X               ;A494D3;
    STA.W $00D5,Y                                                        ;A494D6;
    TYA                                                                  ;A494D9;
    CLC                                                                  ;A494DA;
    ADC.W #$0007                                                         ;A494DB;
    TAY                                                                  ;A494DE;
    TXA                                                                  ;A494DF;
    CLC                                                                  ;A494E0;
    ADC.W #$0008                                                         ;A494E1;
    STA.W $068A                                                          ;A494E4;
    STY.W $0330                                                          ;A494E7;
    RTS                                                                  ;A494EA;


.terminator:
    STY.W $0330                                                          ;A494EB;
    LDX.W $0E54                                                          ;A494EE;
    INC.W $0FA8,X                                                        ;A494F1;
    INC.W $0FA8,X                                                        ;A494F4;
    STZ.W $068A                                                          ;A494F7;
    RTS                                                                  ;A494FA;


MainAI_Crocomire_DeathSequence_18_Hop_3_QueueCry_HDMAObject:
    REP #$30                                                             ;A494FB;
    LDA.W #$0077                                                         ;A494FD;
    JSL.L QueueSound_Lib2_Max6                                           ;A49500;
    BRA CreateCrocomireMeltingHDMAObject                                 ;A49504;


MainAI_Crocomire_DeathSequence_36_Hop_6_QueueCry_HDMAObject:
    REP #$30                                                             ;A49506;
    LDA.W #$002D                                                         ;A49508;
    JSL.L QueueSound_Lib2_Max6                                           ;A4950B;

CreateCrocomireMeltingHDMAObject:
    LDA.W $0FBE                                                          ;A4950F;
    SEC                                                                  ;A49512;
    SBC.W #$0048                                                         ;A49513;
    ASL A                                                                ;A49516;
    TAX                                                                  ;A49517;
    LDA.B $B7                                                            ;A49518;

.loop:
    STA.L $7ECAF0,X                                                      ;A4951A;
    DEX                                                                  ;A4951E;
    DEX                                                                  ;A4951F;
    BPL .loop                                                            ;A49520;
    LDX.W $0E54                                                          ;A49522;
    INC.W $0FA8,X                                                        ;A49525;
    INC.W $0FA8,X                                                        ;A49528;
    LDA.W $0F7A                                                          ;A4952B;
    STA.W $102E                                                          ;A4952E;
    PHP                                                                  ;A49531;
    LDA.W #$00FF                                                         ;A49532;
    STA.L $7ECAE0                                                        ;A49535;
    LDA.W #$CAF0                                                         ;A49539; $7E
    STA.L $7ECAE1                                                        ;A4953C;
    LDA.W #$00E1                                                         ;A49540;
    STA.L $7ECAE3                                                        ;A49543;
    LDA.W #$CBEE                                                         ;A49547;
    STA.L $7ECAE4                                                        ;A4954A;
    LDA.W #$0000                                                         ;A4954E;
    STA.L $7ECAE6                                                        ;A49551;
    JSL.L Spawn_HDMAObject                                               ;A49555;
    db $42,$10                                                           ;A49559;
    dw InstList_HDMAObject_CrocomireMelting_0                            ;A4955B;
    STA.L $7E783E                                                        ;A4955D;
    PLP                                                                  ;A49561;
    RTS                                                                  ;A49562;


InstList_HDMAObject_CrocomireMelting_0:
    dw Instruction_HDMAObject_HDMATableBank : db $7E                     ;A49563;
    dw Instruction_HDMAObject_IndirectHDMATableBank : db $7E             ;A49566;
    dw Instruction_HDMAObject_PreInstructionInY                          ;A49569;
    dl RTL_A4943C                                                        ;A4956B;

InstList_HDMAObject_CrocomireMelting_1:
    dw $7777,$CAE0                                                       ;A4956E; $7E
    dw Instruction_HDMAObject_GotoY                                      ;A49572;
    dw InstList_HDMAObject_CrocomireMelting_1                            ;A49574;

MainAI_Crocomire_DeathSequence_32_SetIndex34:
    LDX.W $0E54                                                          ;A49576;
    INC.W $0FA8,X                                                        ;A49579;
    INC.W $0FA8,X                                                        ;A4957C;
    RTS                                                                  ;A4957F;


MainAI_Crocomire_DeathSequence_1A_38_Hop_3_6_Melting:
    REP #$30                                                             ;A49580;
    JSR.W HandleCrocomireAcidDamageSmoke                                 ;A49582;
    LDX.W $102E                                                          ;A49585;
    DEC.W $0FEE                                                          ;A49588;
    LDA.W $0FEE                                                          ;A4958B;
    AND.W #$0002                                                         ;A4958E;
    BEQ +                                                                ;A49591;
    TXA                                                                  ;A49593;
    CLC                                                                  ;A49594;
    ADC.W #$0004                                                         ;A49595;
    TAX                                                                  ;A49598;

  + STX.W $0F7A                                                          ;A49599;
    JSL.L EraseMeltingCrocomirePixelColumn                               ;A4959C;
    CMP.W #$0000                                                         ;A495A0;
    BNE .noError                                                         ;A495A3;

.finished:
    LDX.W $0E54                                                          ;A495A5;
    INC.W $0FA8,X                                                        ;A495A8;
    INC.W $0FA8,X                                                        ;A495AB;
    LDX.W $069A                                                          ;A495AE;

.loopFindTerminator:
    LDA.W MeltingCrocomireTilesLoadingTable_Melting1_0,X                 ;A495B1;
    CMP.W #$FFFF                                                         ;A495B4;
    BEQ .terminator                                                      ;A495B7;
    TXA                                                                  ;A495B9;
    CLC                                                                  ;A495BA;
    ADC.W #$0008                                                         ;A495BB;
    TAX                                                                  ;A495BE;
    BRA .loopFindTerminator                                              ;A495BF;


.terminator:
    INX                                                                  ;A495C1;
    INX                                                                  ;A495C2;
    STX.W $069A                                                          ;A495C3;
    LDA.L $7E783E                                                        ;A495C6;
    TAX                                                                  ;A495CA;
    LDA.W #$0000                                                         ;A495CB;
    STA.W $18B4,X                                                        ;A495CE;
    RTS                                                                  ;A495D1;


.noError:
    LDX.W $0E54                                                          ;A495D2;
    JSL.L UpdateCrocomireBG2Scroll                                       ;A495D5;
    LDA.W $0692                                                          ;A495D9;
    TAX                                                                  ;A495DC;
    AND.W #$FF00                                                         ;A495DD;
    XBA                                                                  ;A495E0;
    STA.B $12                                                            ;A495E1;
    LDA.W $0694                                                          ;A495E3;
    SEC                                                                  ;A495E6;
    SBC.W #$0003                                                         ;A495E7;
    CMP.W #$0010                                                         ;A495EA;
    BPL +                                                                ;A495ED;
    CPX.W #$5000                                                         ;A495EF;
    BPL .finished                                                        ;A495F2;
    LDA.W #$0010                                                         ;A495F4;

  + STA.W $0694                                                          ;A495F7;
    LDA.W $0692                                                          ;A495FA;
    CLC                                                                  ;A495FD;
    ADC.W #$0180                                                         ;A495FE;
    CMP.W #$5000                                                         ;A49601;
    BMI +                                                                ;A49604;
    LDA.W #$5000                                                         ;A49606;

  + STA.W $0692                                                          ;A49609;
    STZ.B $12                                                            ;A4960C;
    LDA.W $0FBE                                                          ;A4960E;
    SEC                                                                  ;A49611;
    SBC.W #$0048                                                         ;A49612;
    ASL A                                                                ;A49615;
    TAX                                                                  ;A49616;
    LDA.W $0694                                                          ;A49617;
    TAY                                                                  ;A4961A;
    STA.W $05A6                                                          ;A4961B;
    ASL A                                                                ;A4961E;

.loopMeltingRows:
    TYA                                                                  ;A4961F;
    SEC                                                                  ;A49620;
    SBC.W $05A6                                                          ;A49621;
    CLC                                                                  ;A49624;
    ADC.B $B7                                                            ;A49625;
    STA.L $7ECAF0,X                                                      ;A49627;
    LDA.B $12                                                            ;A4962B;
    CLC                                                                  ;A4962D;
    ADC.W $0692                                                          ;A4962E;
    STA.B $12                                                            ;A49631;
    BCS .carrySet                                                        ;A49633;
    INY                                                                  ;A49635;

.carrySet:
    INC.W $05A6                                                          ;A49636;
    INX                                                                  ;A49639;
    INX                                                                  ;A4963A;
    CPY.W $0698                                                          ;A4963B;
    BMI .loopMeltingRows                                                 ;A4963E;
    CPX.W #$0200                                                         ;A49640;
    BPL .return                                                          ;A49643;
    LDA.B $B7                                                            ;A49645;

.loopTablePadding:
    STA.L $7ECAF0,X                                                      ;A49647;
    INX                                                                  ;A4964B;
    INX                                                                  ;A4964C;
    CPX.W #$0200                                                         ;A4964D;
    BMI .loopTablePadding                                                ;A49650;

.return:
    RTS                                                                  ;A49652;


MainAI_Crocomire_DeathSequence_1C_3A_Hop_3_6_ClearTilemap:
    REP #$30                                                             ;A49653;
    LDX.W $0E54                                                          ;A49655;
    STZ.W $0FB0,X                                                        ;A49658;
    STZ.W $0FB2,X                                                        ;A4965B;
    LDA.W #$0800                                                         ;A4965E;
    STA.W $0FAE,X                                                        ;A49661;
    LDA.W #$0338                                                         ;A49664;
    LDX.W #$0FFE                                                         ;A49667;

.loop:
    STA.L $7E2000,X                                                      ;A4966A;
    DEX                                                                  ;A4966E;
    DEX                                                                  ;A4966F;
    BPL .loop                                                            ;A49670;
    LDX.W $0330                                                          ;A49672;
    LDA.W #$0800                                                         ;A49675;
    STA.B $D0,X                                                          ;A49678;
    LDA.W #$2000                                                         ;A4967A;
    STA.B $D2,X                                                          ;A4967D;
    LDA.W #$007E                                                         ;A4967F;
    STA.B $D4,X                                                          ;A49682;
    LDA.B $59                                                            ;A49684;
    AND.W #$00FE                                                         ;A49686;
    XBA                                                                  ;A49689;
    STA.B $D5,X                                                          ;A4968A;
    TXA                                                                  ;A4968C;
    CLC                                                                  ;A4968D;
    ADC.W #$0007                                                         ;A4968E;
    STA.W $0330                                                          ;A49691;
    JMP.W NextCrocomireDeathSequenceIndex                                ;A49694;


CrocomireMeltingXOffsetTable:                                            ;A49697;
; Indexed by $0690
; Provides the pixel X offsets of melting Crocomire to erase in chronological order
; Due (presumably) to a programming error, this table is only used to determine the tile to modify, but not the pixel within the tile
; This pixel within the tile that gets erased is instead determined by the table index % 8
;       0   1   2   3   4   5   6   7
    db $2B,$28,$21,$1F,$2C,$10,$16,$17
    db $0F,$00,$06,$07,$0B,$08,$01,$2A
    db $0C,$24,$2E,$2D,$1A,$14,$1D,$23
    db $1E,$29,$25,$22,$13,$19,$15,$12
    db $30,$03,$09,$02,$1B,$05,$18,$1C
    db $11,$0A,$04,$0D,$2F,$0E,$20,$26
    db $27

EraseMeltingCrocomirePixelColumn:
    PHP                                                                  ;A496C8;
    SEP #$20                                                             ;A496C9;
    REP #$10                                                             ;A496CB;
    XBA                                                                  ;A496CD;
    LDA.W $068C                                                          ;A496CE;
    STA.B $12                                                            ;A496D1;
    STZ.B $13                                                            ;A496D3;
    STZ.B $14                                                            ;A496D5;
    STZ.B $15                                                            ;A496D7;
    STZ.B $16                                                            ;A496D9;
    STZ.B $17                                                            ;A496DB;
    LDX.W $0690                                                          ;A496DD;

.loopFindColumnToErase:
    LDA.W CrocomireMeltingXOffsetTable,X                                 ;A496E0;
    TAY                                                                  ;A496E3;
    LDA.W $069C,Y                                                        ;A496E4;
    CMP.W $0688                                                          ;A496E7;
    BMI +                                                                ;A496EA;
    INX                                                                  ;A496EC;
    CPX.W #$0080                                                         ;A496ED;
    BMI .loopFindColumnToErase                                           ;A496F0;
    STZ.W $0690                                                          ;A496F2;
    LDA.B #$00                                                           ;A496F5;
    PLP                                                                  ;A496F7;
    RTL                                                                  ;A496F8;


  + STX.W $0690                                                          ;A496F9;
    TXA                                                                  ;A496FC;
    AND.B #$07                                                           ;A496FD;
    TAY                                                                  ;A496FF;
    REP #$20                                                             ;A49700;

.loopEraseColumn:
    LDX.W $0690                                                          ;A49702;
    LDA.W CrocomireMeltingXOffsetTable,X                                 ;A49705;
    AND.W #$00FF                                                         ;A49708;
    TAX                                                                  ;A4970B;
    AND.W #$FFF8                                                         ;A4970C;
    ASL A                                                                ;A4970F;
    ASL A                                                                ;A49710;
    STA.B $14                                                            ;A49711;
    LDA.W $069C,X                                                        ;A49713;
    AND.W #$0007                                                         ;A49716;
    ASL A                                                                ;A49719;
    CLC                                                                  ;A4971A;
    ADC.B $14                                                            ;A4971B;
    STA.B $14                                                            ;A4971D;
    LDA.W $069C,X                                                        ;A4971F;
    AND.W #$FFF8                                                         ;A49722;
    ASL A                                                                ;A49725;
    ASL A                                                                ;A49726;
    ASL A                                                                ;A49727;
    ASL A                                                                ;A49728;
    ASL A                                                                ;A49729;
    ASL A                                                                ;A4972A;
    CLC                                                                  ;A4972B;
    ADC.B $14                                                            ;A4972C;
    TAX                                                                  ;A4972E;
    SEP #$20                                                             ;A4972F;
    LDA.L $7E4000,X                                                      ;A49731;
    AND.W TilePixelColumnBitmasks,Y                                      ;A49735;
    STA.L $7E4000,X                                                      ;A49738;
    LDA.L $7E4001,X                                                      ;A4973C;
    AND.W TilePixelColumnBitmasks,Y                                      ;A49740;
    STA.L $7E4001,X                                                      ;A49743;
    LDA.L $7E4010,X                                                      ;A49747;
    AND.W TilePixelColumnBitmasks,Y                                      ;A4974B;
    STA.L $7E4010,X                                                      ;A4974E;
    LDA.L $7E4011,X                                                      ;A49752;
    AND.W TilePixelColumnBitmasks,Y                                      ;A49756;
    STA.L $7E4011,X                                                      ;A49759;
    LDA.B #$00                                                           ;A4975D;
    XBA                                                                  ;A4975F;
    LDX.W $0690                                                          ;A49760;
    LDA.W CrocomireMeltingXOffsetTable,X                                 ;A49763;
    TAX                                                                  ;A49766;
    LDA.W $069C,X                                                        ;A49767;
    CMP.B #$30                                                           ;A4976A;
    BEQ +                                                                ;A4976C;
    REP #$20                                                             ;A4976E;
    INC.W $069C,X                                                        ;A49770;
    LDA.W $069C,X                                                        ;A49773;
    AND.W #$00FF                                                         ;A49776;
    STA.B $16                                                            ;A49779;
    DEC.B $12                                                            ;A4977B;
    BNE .loopEraseColumn                                                 ;A4977D;

  + REP #$30                                                             ;A4977F;

.cycled:
    LDA.W $069A                                                          ;A49781;
    CLC                                                                  ;A49784;
    ADC.W $068A                                                          ;A49785;
    TAX                                                                  ;A49788;
    LDY.W $0330                                                          ;A49789;
    LDA.W MeltingCrocomireTilesLoadingTable_Melting1_0,X                 ;A4978C;
    CMP.W #$FFFF                                                         ;A4978F;
    BNE +                                                                ;A49792;
    STZ.W $068A                                                          ;A49794;
    BRA .cycled                                                          ;A49797;


  + STA.W $00D0,Y                                                        ;A49799;
    LDA.W MeltingCrocomireTilesLoadingTable_Melting1_0+6,X               ;A4979C;
    STA.W $00D2,Y                                                        ;A4979F;
    LDA.W MeltingCrocomireTilesLoadingTable_Melting1_0+4,X               ;A497A2;
    STA.W $00D4,Y                                                        ;A497A5;
    LDA.W MeltingCrocomireTilesLoadingTable_Melting1_0+2,X               ;A497A8;
    STA.W $00D5,Y                                                        ;A497AB;
    TYA                                                                  ;A497AE;
    CLC                                                                  ;A497AF;
    ADC.W #$0007                                                         ;A497B0;
    STA.W $0330                                                          ;A497B3;
    LDA.W $068A                                                          ;A497B6;
    CLC                                                                  ;A497B9;
    ADC.W #$0008                                                         ;A497BA;
    STA.W $068A                                                          ;A497BD;
    LDA.W $0690                                                          ;A497C0;
    CMP.W #$0080                                                         ;A497C3;
    BMI +                                                                ;A497C6;
    STZ.W $0690                                                          ;A497C8;

  + STA.W $0690                                                          ;A497CB;
    LDA.W #$0001                                                         ;A497CE;
    PLP                                                                  ;A497D1;
    RTL                                                                  ;A497D2;


MainAI_Crocomire_DeathSequence_3E_BehindWall_WaitForSamus:
    REP #$20                                                             ;A497D3;
    LDA.W $0AF6                                                          ;A497D5;
    CMP.W #$0280                                                         ;A497D8;
    BPL .return                                                          ;A497DB;
    LDA.W #$0005                                                         ;A497DD;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;A497E0;
    LDA.W #$0100                                                         ;A497E4;
    STA.L $7ECD23                                                        ;A497E7;
    JSL.L Spawn_Hardcoded_PLM                                            ;A497EB;
    db $30,$03                                                           ;A497EF;
    dw PLMEntries_createCrocomireInvisibleWall                           ;A497F1;
    LDA.W #$0006                                                         ;A497F3;
    STA.W $0941                                                          ;A497F6;
    LDA.W $0F86                                                          ;A497F9;
    AND.W #$7FFF                                                         ;A497FC;
    ORA.W #$0400                                                         ;A497FF;
    STA.W $0F86                                                          ;A49802;
    LDA.W $0FC6                                                          ;A49805;
    ORA.W #$0500                                                         ;A49808;
    STA.W $0FC6                                                          ;A4980B;
    LDA.W #$0004                                                         ;A4980E;
    STA.W $0FAE                                                          ;A49811;
    STZ.W $0FEE                                                          ;A49814;
    LDA.W #$000A                                                         ;A49817;
    STA.W $102E                                                          ;A4981A;
    LDA.W #$0001                                                         ;A4981D;
    STA.W $106E                                                          ;A49820;
    STZ.W $0FAA                                                          ;A49823;
    LDA.W #$0038                                                         ;A49826;
    STA.W $0F84                                                          ;A49829;
    JMP.W NextCrocomireDeathSequenceIndex                                ;A4982C;


.return:
    RTS                                                                  ;A4982F;


MainAI_Crocomire_DeathSequence_58_FlowingDownTheRiver:
    LDA.W $0F7A                                                          ;A49830;
    SEC                                                                  ;A49833;
    SBC.W #$0002                                                         ;A49834;
    STA.W $0F7A                                                          ;A49837;
    CMP.W #$01E0                                                         ;A4983A;
    BMI .leftOfFightArea                                                 ;A4983D;
    LDA.W #$00DC                                                         ;A4983F;
    STA.W $0F7E                                                          ;A49842;
    RTS                                                                  ;A49845;


.leftOfFightArea:
    LDA.W #$01E0                                                         ;A49846;
    STA.W $0F7A                                                          ;A49849;
    LDA.W #$0036                                                         ;A4984C;
    STA.W $0F7E                                                          ;A4984F;
    LDA.W #$003E                                                         ;A49852;
    STA.W $0FA8                                                          ;A49855;
    RTS                                                                  ;A49858;


MainAI_Crocomire_DeathSequence_40_BehindWall_Rumbling:
    LDX.W $0FAE                                                          ;A49859;
    LDA.W .targetYOffset,X                                               ;A4985C;
    CMP.W #$8080                                                         ;A4985F;
    BNE +                                                                ;A49862;
    STA.W $0FEE                                                          ;A49864;
    LDA.W #$0080                                                         ;A49867;
    STA.W $0FAE                                                          ;A4986A;
    LDX.W #$001E                                                         ;A4986D;

.loopSpritePalette:
    LDA.W Palette_Crocomire_Sprite3,X                                    ;A49870;
    STA.L $7EC160,X                                                      ;A49873;
    DEX                                                                  ;A49877;
    DEX                                                                  ;A49878;
    BPL .loopSpritePalette                                               ;A49879;
    JMP.W NextCrocomireDeathSequenceIndex                                ;A4987B;


  + LDX.W $0FAE                                                          ;A4987E;
    LDA.W $0FEE                                                          ;A49881;
    CMP.W .targetYOffset,X                                               ;A49884;
    BEQ .equal                                                           ;A49887;
    BPL +                                                                ;A49889;
    CLC                                                                  ;A4988B;
    ADC.W $106E                                                          ;A4988C;

.return:
    STA.W $0FEE                                                          ;A4988F;
    RTS                                                                  ;A49892;


  + SEC                                                                  ;A49893;
    SBC.W $106E                                                          ;A49894;
    BRA .return                                                          ;A49897;


.equal:
    LDA.W .targetYOffset,X                                               ;A49899;
    BPL .positive                                                        ;A4989C;
    LDA.W $102E                                                          ;A4989E;
    BEQ .rumbleTimerExpired                                              ;A498A1;
    DEC A                                                                ;A498A3;
    STA.W $102E                                                          ;A498A4;
    DEX                                                                  ;A498A7;
    DEX                                                                  ;A498A8;
    STX.W $0FAE                                                          ;A498A9;
    LDA.W #$002B                                                         ;A498AC;
    JSL.L QueueSound_Lib2_Max6                                           ;A498AF;
    RTS                                                                  ;A498B3;


.rumbleTimerExpired:
    INX                                                                  ;A498B4;
    INX                                                                  ;A498B5;
    LDA.W .targetYOffset,X                                               ;A498B6;
    STA.W $102E                                                          ;A498B9;
    INX                                                                  ;A498BC;
    INX                                                                  ;A498BD;
    LDA.W .targetYOffset,X                                               ;A498BE;
    STA.W $106E                                                          ;A498C1;

.positive:
    INX                                                                  ;A498C4;
    INX                                                                  ;A498C5;
    STX.W $0FAE                                                          ;A498C6;
    RTS                                                                  ;A498C9;


.targetYOffset:
; Rumble table                                                           ;A498CA;
;        _______________ Target Y offset. 8080h = terminator
;       |      _________ Rumble cooldown
;       |     |      ___ Y offset delta
;       |     |     |
    dw $0004
    dw $0001
    dw $0000
    dw $FFFF,$0008,$0001
    dw $0001
    dw $FFFF,$000C,$0001
    dw $0001
    dw $FFFE,$0010,$0002
    dw $0002
    dw $FFFE,$0010,$0002
    dw $0002
    dw $FFFC,$0008,$0001
    dw $0001
    dw $FFFE,$0003,$0001
    dw $0001
    dw $FFFF,$8080,$8080
    dw $8080,$8080

MainAI_Crocomire_DeathSequence_42_BehindWall_NoMoreRumbling:
    LDA.W $0FAE                                                          ;A4990A;
    BEQ .zero                                                            ;A4990D;
    DEC A                                                                ;A4990F;
    STA.W $0FAE                                                          ;A49910;
    LDY.W $0688                                                          ;A49913;
    LDA.W .VRAMSpriteTilesOffset,Y                                       ;A49916;
    CMP.W #$FFFF                                                         ;A49919;
    BNE +                                                                ;A4991C;
    RTS                                                                  ;A4991E;


  + LDX.W $0330                                                          ;A4991F;
    LDA.W #$0200                                                         ;A49922;
    STA.B $D0,X                                                          ;A49925;
    LDA.W .skeletonSpriteTilesSourceAddress,Y                            ;A49927;
    STA.B $D2,X                                                          ;A4992A;
    LDA.W #$00AD                                                         ;A4992C;
    STA.B $D4,X                                                          ;A4992F;
    LDA.B $52                                                            ;A49931;
    AND.W #$0007                                                         ;A49933;
    XBA                                                                  ;A49936;
    ASL A                                                                ;A49937;
    ASL A                                                                ;A49938;
    ASL A                                                                ;A49939;
    ASL A                                                                ;A4993A;
    ASL A                                                                ;A4993B;
    STA.B $12                                                            ;A4993C;
    CLC                                                                  ;A4993E;
    ADC.W .VRAMSpriteTilesOffset,Y                                       ;A4993F;
    STA.B $D5,X                                                          ;A49942;
    TXA                                                                  ;A49944;
    CLC                                                                  ;A49945;
    ADC.W #$0007                                                         ;A49946;
    STA.W $0330                                                          ;A49949;
    INY                                                                  ;A4994C;
    INY                                                                  ;A4994D;
    STY.W $0688                                                          ;A4994E;
    RTS                                                                  ;A49951;


.zero:
    LDA.W #$01E0                                                         ;A49952;
    STA.W $0F7A                                                          ;A49955;
    LDA.W #$0036                                                         ;A49958;
    STA.W $0F7E                                                          ;A4995B;
    LDA.W #$0050                                                         ;A4995E;
    STA.W $102E                                                          ;A49961;
    STZ.W $0FB0                                                          ;A49964;
    STZ.W $0FB2                                                          ;A49967;
    JSL.L Spawn_Hardcoded_PLM                                            ;A4996A;
    db $20,$03                                                           ;A4996E;
    dw PLMEntries_clearCrocomireInvisibleWall                            ;A49970;
    JSL.L Spawn_Hardcoded_PLM                                            ;A49972;
    db $1E,$03                                                           ;A49976;
    dw PLMEntries_createCrocomireInvisibleWall                           ;A49978;
    JSL.L Spawn_Hardcoded_PLM                                            ;A4997A;
    db $70,$0B                                                           ;A4997E;
    dw PLMEntries_clearCrocomiresBridge                                  ;A49980;
    LDA.W #$0029                                                         ;A49982;
    JSL.L QueueSound_Lib2_Max6                                           ;A49985;
    LDA.W #InstList_CrocomireCorpse_Skeleton_FallsApart_0                ;A49989;
    LDA.W #InstList_CrocomireCorpse_Skeleton_Falling
    STA.W $0F92                                                          ;A4998C;
    LDA.W #$0001                                                         ;A4998F;
    STA.W $0F94                                                          ;A49992;
    LDA.W #$0000                                                         ;A49995;
    STA.W $0F96                                                          ;A49998;
    LDX.W #$001E                                                         ;A4999B;

.loopSpritePalette:
    LDA.W Palette_Crocomire_Sprite1,X                                    ;A4999E;
    STA.L $7EC120,X                                                      ;A499A1;
    DEX                                                                  ;A499A5;
    DEX                                                                  ;A499A6;
    BPL .loopSpritePalette                                               ;A499A7;
    JSL.L Clear_Enemy_Projectiles                                        ;A499A9;
    LDA.W #$0008                                                         ;A499AD;
    STA.B $12                                                            ;A499B0;

.loop:
    LDX.W $0E54                                                          ;A499B2;
    LDY.W #EnemyProjectile_CrocomireSpikeWallPieces                      ;A499B5;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A499B8;
    DEC.B $12                                                            ;A499BC;
    BNE .loop                                                            ;A499BE;
    LDA.W #$0030                                                         ;A499C0;
    JSL.L QueueSound_Lib2_Max6                                           ;A499C3;
    JMP.W NextCrocomireDeathSequenceIndex                                ;A499C7;


.deadReturn:
    RTS                                                                  ;A499CA;


.VRAMSpriteTilesOffset:
; VRAM sprite tiles offsets. FFFFh = terminator
    dw $1600,$1700,$1800,$1900,$1E00,$1F00,$FFFF                         ;A499CB;

.skeletonSpriteTilesSourceAddress:
; Skeleton sprite tiles source addresses. Bank $AD
    dw Tiles_CrocomireSkeleton_0                                         ;A499D9;
    dw Tiles_CrocomireSkeleton_1                                         ;A499DB;
    dw Tiles_CrocomireSkeleton_2                                         ;A499DD;
    dw Tiles_CrocomireSkeleton_3                                         ;A499DF;
    dw Tiles_CrocomireSkeleton_4                                         ;A499E1;
    dw Tiles_CrocomireSkeleton_5                                         ;A499E3;

MainAI_Crocomire_DeathSequence_44_BreaksDownWall:
    LDA.W $0F7A                                                          ;A499E5;
    CMP.W #$00E0                                                         ;A499E8;
    BPL .timer                                                           ;A499EB;
    LDA.W $0FB0                                                          ;A499ED;
    CLC                                                                  ;A499F0;
    ADC.W #$9999                                                         ;A499F1;
    STA.W $0FB0                                                          ;A499F4;
    LDA.W $0FB2                                                          ;A499F7;
    ADC.W #$0000                                                         ;A499FA;
    CMP.W #$0002                                                         ;A499FD;
    BMI +                                                                ;A49A00;
    LDA.W #$9999
    STA.W $0FB0
    LDA.W #$0002                                                         ;A49A02;

  + STA.W $0FB2                                                          ;A49A05;
    LDA.W $0F7C                                                          ;A49A08;
    CLC                                                                  ;A49A0B;
    ADC.W $0FB0                                                          ;A49A0C;
    STA.W $0F7C                                                          ;A49A0F;
    LDA.W $0F7A                                                          ;A49A12;
    ADC.W $0FB2                                                          ;A49A15;
    STA.W $0F7A                                                          ;A49A18;

.timer:
    LDA.W $102E                                                          ;A49A1B;
    BEQ .return                                                          ;A49A1E;
    DEC.W $102E                                                          ;A49A20;
    BNE .return                                                          ;A49A23;
    STZ.W $0FB0                                                          ;A49A25;
    LDA.W #InstList_CrocomireCorpse_Skeleton_Falling                     ;A49A28;
    STA.W $0F92                                                          ;A49A2B;
    LDA.W #$0001                                                         ;A49A2E;
    STA.W $0F94                                                          ;A49A31;
    JMP.W NextCrocomireDeathSequenceIndex                                ;A49A34;


.return:
    RTS                                                                  ;A49A37;


MainAI_Crocomire_DeathSequence_46_SkeletonFalls:
    LDA.W $0FB0                                                          ;A49A38;
    CLC                                                                  ;A49A3B;
    ADC.W #$0999                                                         ;A49A3C;
    STA.W $0FB0                                                          ;A49A3F;
    LDA.W $0FB2                                                          ;A49A42;
    ADC.W #$0000                                                         ;A49A45;
    CMP.W #$0006                                                         ;A49A48;
    BMI +                                                                ;A49A4B;
    LDA.W #$0006                                                         ;A49A4D;

  + STA.W $0FB2                                                          ;A49A50;
    LDA.W #$0CCC                                                         ;A49A53;
    CLC                                                                  ;A49A56;
    ADC.W $0F80                                                          ;A49A57;
    STA.W $0F80                                                          ;A49A5A;
    LDA.W $0F7E                                                          ;A49A5D;
    ADC.W #$0001                                                         ;A49A60;
    STA.W $0F7E                                                          ;A49A63;
    LDA.W $0F7C                                                          ;A49A66;
    CLC                                                                  ;A49A69;
    ADC.W $0FB0                                                          ;A49A6A;
    STA.W $0F7C                                                          ;A49A6D;
    LDA.W $0F7A                                                          ;A49A70;
    ADC.W $0FB2                                                          ;A49A73;
    STA.W $0F7A                                                          ;A49A76;
    CMP.W #$0240                                                         ;A49A79;
    BMI .return                                                          ;A49A7C;
    LDA.W #$0025                                                         ;A49A7E;
    JSL.L QueueSound_Lib2_Max6                                           ;A49A81;
    LDA.W $0F96                                                          ;A49A85;
    STA.W $0FD6                                                          ;A49A88;
    LDA.W #InstList_CrocomireCorpse_Skeleton_FallsApart_0                ;A49A8B;
    STA.W $0F92                                                          ;A49A8E;
    LDA.W #$0001                                                         ;A49A91;
    STA.W $0F94                                                          ;A49A94;
    JMP.W NextCrocomireDeathSequenceIndex                                ;A49A97;


.return:
    RTS                                                                  ;A49A9A;


Instruction_Crocomire_SpawnBigDustCloudProjectile_Negative20:
    LDA.W #$FFE0                                                         ;A49A9B;
    BRA SpawnBigDustCloudProjectile                                      ;A49A9E;


Instruction_Crocomire_SpawnBigDustCloudProjectile_0:
    LDA.W #$0000                                                         ;A49AA0;
    BRA SpawnBigDustCloudProjectile                                      ;A49AA3;


Instruction_Crocomire_SpawnBigDustCloudProjectile_Negative10:
    LDA.W #$FFF0                                                         ;A49AA5;
    BRA SpawnBigDustCloudProjectile                                      ;A49AA8;


Instruction_Crocomire_SpawnBigDustCloudProjectile_10:
    LDA.W #$0010                                                         ;A49AAA;
    BRA SpawnBigDustCloudProjectile                                      ;A49AAD;


Instruction_Crocomire_SpawnBigDustCloudProjectile_0_dup:
    LDA.W #$0000                                                         ;A49AAF;
    BRA SpawnBigDustCloudProjectile                                      ;A49AB2;


Instruction_Crocomire_SpawnBigDustCloudProjectile_8:
    LDA.W #$0008                                                         ;A49AB4;
    BRA SpawnBigDustCloudProjectile                                      ;A49AB7;


Instruction_Crocomire_SpawnBigDustCloudProjectile_10_dup:
    LDA.W #$0010                                                         ;A49AB9;
    BRA SpawnBigDustCloudProjectile                                      ;A49ABC;


Instruction_Crocomire_SpawnBigDustCloudProjectile_18:
    LDA.W #$0018                                                         ;A49ABE;
    BRA SpawnBigDustCloudProjectile                                      ;A49AC1;


Instruction_Crocomire_SpawnBigDustCloudProjectile_20:
    LDA.W #$0020                                                         ;A49AC3;
    BRA SpawnBigDustCloudProjectile                                      ;A49AC6;


Instruction_Crocomire_SpawnBigDustCloudProjectile_28:
    LDA.W #$0028                                                         ;A49AC8;
    BRA SpawnBigDustCloudProjectile                                      ;A49ACB;


Instruction_Crocomire_SpawnBigDustCloudProjectile_30:
    LDA.W #$0030                                                         ;A49ACD;
    BRA SpawnBigDustCloudProjectile                                      ;A49AD0;


Instruction_Crocomire_SpawnBigDustCloudProjectile_38:
    LDA.W #$0038                                                         ;A49AD2;
    BRA SpawnBigDustCloudProjectile                                      ;A49AD5;


Instruction_Crocomire_SpawnBigDustCloudProjectile_40:
    LDA.W #$0040                                                         ;A49AD7;

SpawnBigDustCloudProjectile:
    PHX                                                                  ;A49ADA;
    PHY                                                                  ;A49ADB;
    STA.B $12                                                            ;A49ADC;
    LDA.W $05E5                                                          ;A49ADE;
    AND.W #$0007                                                         ;A49AE1;
    CLC                                                                  ;A49AE4;
    ADC.W $0F7A                                                          ;A49AE5;
    ADC.B $12                                                            ;A49AE8;
    STA.B $12                                                            ;A49AEA;
    LDA.W $0F7E                                                          ;A49AEC;
    CLC                                                                  ;A49AEF;
    ADC.W $0F84                                                          ;A49AF0;
    SEC                                                                  ;A49AF3;
    SBC.W #$0010                                                         ;A49AF4;
    STA.B $14                                                            ;A49AF7;
    LDA.W #$0015                                                         ;A49AF9;
    LDY.W #EnemyProjectile_MiscDust                                      ;A49AFC;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A49AFF;
    PLY                                                                  ;A49B03;
    PLX                                                                  ;A49B04;
    RTL                                                                  ;A49B05;


MainAI_Crocomire_DeathSequence_48_SkeletonFallsApart:
    LDA.W $0F92                                                          ;A49B06;
    CMP.W #InstList_CrocomireCorpse_Skeleton_1                           ;A49B09;
    BMI .notFallenApartYet                                               ;A49B0C;
    LDA.W #InstList_CrocomireCorpse_Skeleton_Dead                        ;A49B0E;
    STA.W $0F92                                                          ;A49B11;
    LDA.W #$0001                                                         ;A49B14;
    STA.W $0F94                                                          ;A49B17;
    LDA.W $0F7A                                                          ;A49B1A;
    CLC                                                                  ;A49B1D;
    ADC.W #$0040                                                         ;A49B1E;
    STA.W $0F7A                                                          ;A49B21;
    LDA.W $0F7E                                                          ;A49B24;
    CLC                                                                  ;A49B27;
    ADC.W #$0015                                                         ;A49B28;
    STA.W $0F7E                                                          ;A49B2B;
    LDA.W #$001C                                                         ;A49B2E;
    STA.W $0F84                                                          ;A49B31;
    LDA.W #$0028                                                         ;A49B34;
    STA.W $0F82                                                          ;A49B37;
    JSL.L Spawn_Hardcoded_PLM                                            ;A49B3A;
    db $30,$03                                                           ;A49B3E;
    dw PLMEntries_clearCrocomireInvisibleWall                            ;A49B40;
    JSL.L CrocomireDeathItemDropRoutine                                  ;A49B42;
    JMP.W NextCrocomireDeathSequenceIndex                                ;A49B46;


.notFallenApartYet:
    LDA.W $0FB0                                                          ;A49B49;
    CLC                                                                  ;A49B4C;
    ADC.W #$1000                                                         ;A49B4D;
    STA.W $0FB0                                                          ;A49B50;
    LDA.W $0FB2                                                          ;A49B53;
    ADC.W #$0000                                                         ;A49B56;
    CMP.W #$0006                                                         ;A49B59;
    BMI +                                                                ;A49B5C;
    LDA.W #$0006                                                         ;A49B5E;

  + STA.W $0FB2                                                          ;A49B61;
    RTS                                                                  ;A49B64;


MainAI_Crocomire_DeathSequence_4A_UnlockCamera:
    LDA.W #$0101                                                         ;A49B65;
    STA.L $7ECD20                                                        ;A49B68;
    STA.L $7ECD22                                                        ;A49B6C;
    JSL.L Spawn_Hardcoded_PLM                                            ;A49B70;
    db $1E,$03                                                           ;A49B74;
    dw PLMEntries_clearCrocomireInvisibleWall                            ;A49B76;
    JMP.W NextCrocomireDeathSequenceIndex                                ;A49B78;


MainAI_Crocomire_DeathSequence_4E_SetIndex50:
    BRA NextCrocomireDeathSequenceIndex                                  ;A49B7B;


MainAI_Crocomire_DeathSequence_4C_SetIndex4E:
    LDA.W $0F92                                                          ;A49B7D;
    CMP.W #InstList_CrocomireCorpse_Skeleton_1                           ;A49B80;
    BPL NextCrocomireDeathSequenceIndex                                  ;A49B83;
    RTS                                                                  ;A49B85;


MainAI_Crocomire_DeathSequence_50_MarkEvent_PostDeathMusic:
    LDA.W #$0006                                                         ;A49B86;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;A49B89;
    STZ.W $0941                                                          ;A49B8D;
    LDX.W $079F                                                          ;A49B90;
    LDA.L $7ED828,X                                                      ;A49B93;
    ORA.W #$0002                                                         ;A49B97;
    STA.L $7ED828,X                                                      ;A49B9A;
    LDA.W #$0006                                                         ;A49B9E;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;A49BA1;
    LDA.W #$FFF0                                                         ;A49BA5;
    JSL.L SpawnBigDustCloudProjectile                                    ;A49BA8;
    LDA.W #$0010                                                         ;A49BAC;
    JSL.L SpawnBigDustCloudProjectile                                    ;A49BAF;

NextCrocomireDeathSequenceIndex:
    INC.W $0FA8                                                          ;A49BB3;
    INC.W $0FA8                                                          ;A49BB6;
    RTS                                                                  ;A49BB9;


MainAI_Crocomire_DeathSequence_54_SetIndex56:
    JMP.W NextCrocomireDeathSequenceIndex                                ;A49BBA;


TilePixelColumnBitmasks:                                                 ;A49BBD;
; ~(1 << x)
    db $7F ; ~80h. Pixel column 0
    db $BF ; ~40h. Pixel column 1
    db $DF ; ~20h. Pixel column 2
    db $EF ; ~10h. Pixel column 3
    db $F7 ; ~8. Pixel column 4
    db $FB ; ~4. Pixel column 5
    db $FD ; ~2. Pixel column 6
    db $FE ; ~1. Pixel column 7


; Tables for loading Crocomire melting tiles

; Format:
;     mmmm,uuuu,nnnn,bbbb
;     ssss,dddd
;     [...]
;     FFFF
; where
;     m: Max adjusted destination Y offset (it's weird, see $9580)
;     u: Unused
;     n: Number of words to copy
;     b: Source bank
;     s: Source address
;     d: Destination address (bank $7E)

;     nnnn,dddd,bbbb,ssss
;     [...]
;     FFFF
; where
;     n: Number of bytes to copy
;     b: Source bank
;     s: Source address
;     d: VRAM destination address

; Melting 1
MeltingCrocomireTilesLoadingTable_Melting1_0:
    dw $0058,$0030,$0200,$00A4                                           ;A49BC5;
    dw Tiles_Crocomire_Melting1_0,$4000                                  ;A49BCD;
    dw Tiles_Crocomire_Melting1_1,$4200                                  ;A49BD1;
    dw Tiles_Crocomire_Melting1_2,$4400                                  ;A49BD5;
    dw Tiles_Crocomire_Melting1_3,$4600                                  ;A49BD9;
    dw Tiles_Crocomire_Melting1_4,$4800                                  ;A49BDD;
    dw Tiles_Crocomire_Melting1_5,$4A00                                  ;A49BE1;
    dw $FFFF                                                             ;A49BE3;

MeltingCrocomireTilesLoadingTable_Melting1_1:                            ;A49BE7;
    dw $0160,$0000,$007E,$4000
    dw $0160,$0100,$007E,$4200
    dw $0160,$0200,$007E,$4400
    dw $0160,$0300,$007E,$4600
    dw $0160,$0400,$007E,$4800
    dw $0160,$0500,$007E,$4A00
    dw $FFFF

MeltingCrocomireTilesLoadingTable_Melting2_0:
    dw $0058,$0030,$0200,$00A4                                           ;A49C19;
    dw Tiles_Crocomire_Melting2_0,$4000                                  ;A49C21;
    dw Tiles_Crocomire_Melting2_1,$4200                                  ;A49C25;
    dw Tiles_Crocomire_Melting2_2,$4400                                  ;A49C29;
    dw Tiles_Crocomire_Melting2_3,$4600                                  ;A49C2D;
    dw Tiles_Crocomire_Melting2_4,$4800                                  ;A49C31;
    dw Tiles_Crocomire_Melting2_5,$4A00                                  ;A49C35;
    dw Palette_Crocomire,$4C00                                           ;A49C39;
    dw $FFFF                                                             ;A49C3B;

MeltingCrocomireTilesLoadingTable_Melting2_1:                            ;A49C3F;
    dw $0160,$0000,$007E,$4000
    dw $0160,$0100,$007E,$4200
    dw $0160,$0200,$007E,$4400
    dw $0160,$0300,$007E,$4600
    dw $0160,$0400,$007E,$4800
    dw $0160,$0500,$007E,$4A00
    dw $0160,$0600,$007E,$4C00
    dw $FFFF

MeltingCrocomireTilesLoadingTable_Tilemap_Melting1:
    dw $3C00,$3C20,$3C30,$3C40,$3C50,$3C01,$0338,$0338                   ;A49C79;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49C89;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49C99;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49CA9;
    dw $3C10,$3C11,$3C04,$3C33,$3C43,$3C23,$3C41,$3C51                   ;A49CB9;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49CC9;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49CD9;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49CE9;
    dw $0338,$3C02,$3C14,$3C05,$3C44,$3C54,$3C24,$3C34                   ;A49CF9;
    dw $3C12,$3C22,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49D09;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49D19;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49D29;
    dw $0338,$0338,$3C53,$3C15,$3C06,$3C16,$3C26,$3C36                   ;A49D39;
    dw $3C46,$3C13,$3C52,$0338,$0338,$0338,$0338,$0338                   ;A49D49;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49D59;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49D69;
    dw $0338,$0338,$0338,$3C25,$3C56,$3C07,$3C17,$3C27                   ;A49D79;
    dw $3C37,$3C47,$3C03,$0338,$0338,$0338,$0338,$0338                   ;A49D89;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49D99;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49DA9;
    dw $0338,$0338,$0338,$0338,$3C57,$3C08,$3C18,$3C28                   ;A49DB9;
    dw $3C38,$3C48,$3C35,$0338,$0338,$0338,$0338,$0338                   ;A49DC9;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49DD9;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49DE9;
    dw $0338,$3C32,$3C21,$3C45,$3C58,$3C09,$3C19,$3C29                   ;A49DF9;
    dw $3C29,$3C49,$3C59,$0338,$0338,$0338,$0338,$0338                   ;A49E09;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49E19;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49E29;
    dw $0338,$3C42,$3C31,$3C55,$3C0A,$3C1A,$3C2A,$3C3A                   ;A49E39;
    dw $3C4A,$3C5A,$3C0B,$0338,$0338,$0338,$0338,$0338                   ;A49E49;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49E59;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49E69;
    dw $FFFF                                                             ;A49E79;

MeltingCrocomireTilesLoadingTable_Tilemap_Melting2:
    dw $3C00,$3C10,$3C20,$3C30,$0338,$0338,$0338,$0338                   ;A49E7B;
    dw $0338,$3C00,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49E8B;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49E9B;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49EAB;
    dw $3C40,$3C11,$3C21,$3C50,$3C23,$0338,$0338,$0338                   ;A49EBB;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49ECB;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49EDB;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49EEB;
    dw $0338,$3C32,$3C42,$3C04,$3C54,$3C03,$0338,$0338                   ;A49EFB;
    dw $3C33,$3C01,$3C53,$0338,$0338,$0338,$0338,$0338                   ;A49F0B;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49F1B;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49F2B;
    dw $0338,$0338,$0338,$3C34,$3C44,$3C05,$3C24,$3C14                   ;A49F3B;
    dw $3C02,$3C12,$3C22,$0338,$0338,$0338,$0338,$0338                   ;A49F4B;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49F5B;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49F6B;
    dw $0338,$0338,$0338,$0338,$3C35,$3C45,$3C55,$3C06                   ;A49F7B;
    dw $3C16,$3C26,$3C36,$3C3A,$0338,$0338,$0338,$0338                   ;A49F8B;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49F9B;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49FAB;
    dw $0338,$0338,$0338,$0338,$0338,$3C46,$3C56,$3C07                   ;A49FBB;
    dw $3C17,$3C27,$3C37,$3C47,$0338,$0338,$0338,$0338                   ;A49FCB;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49FDB;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A49FEB;
    dw $0338,$3C31,$3C41,$3C51,$3C57,$3C08,$3C18,$3C28                   ;A49FFB;
    dw $3C38,$3C48,$3C58,$3C09,$0338,$0338,$0338,$0338                   ;A4A00B;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A4A01B;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A4A02B;
    dw $0338,$3C43,$3C52,$3C19,$3C13,$3C39,$3C49,$3C59                   ;A4A03B;
    dw $3C0A,$3C1A,$3C2A,$3C3A,$0338,$0338,$0338,$0338                   ;A4A04B;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A4A05B;
    dw $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338                   ;A4A06B;
    dw $FFFF                                                             ;A4A07B;

Tiles_Crocomire_Melting1_0:
    db $00,$03,$00,$07,$02,$0D,$19,$1E,$32,$3C,$26,$38,$36,$39,$6F,$71   ;A4A07D;
    db $03,$00,$07,$00,$0F,$00,$1F,$18,$3F,$30,$3F,$20,$3F,$30,$7F,$61   ;A4A08D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$C0,$1C,$FC   ;A4A09D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$40,$FC,$1C   ;A4A0AD;
    db $05,$07,$03,$03,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A0BD;
    db $07,$05,$03,$03,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A0CD;
    db $C0,$40,$40,$40,$E0,$20,$78,$18,$B4,$8C,$FC,$D8,$FC,$C4,$BE,$86   ;A4A0DD;
    db $C0,$40,$C0,$40,$E0,$20,$F8,$18,$74,$04,$24,$00,$3C,$04,$7E,$06   ;A4A0ED;
    db $A0,$1F,$DF,$3F,$F7,$F9,$DD,$F0,$E7,$F9,$77,$F8,$BD,$FF,$7F,$FF   ;A4A0FD;
    db $FF,$00,$E1,$1F,$C0,$FB,$E0,$DF,$E0,$FF,$C0,$7F,$E0,$BF,$FF,$7F   ;A4A10D;
    db $FA,$F2,$78,$F2,$E5,$F8,$F1,$3E,$FE,$1F,$47,$87,$07,$81,$03,$C0   ;A4A11D;
    db $C2,$FD,$C0,$7F,$E0,$FF,$E0,$3F,$F0,$1F,$FD,$07,$FF,$01,$FF,$00   ;A4A12D;
    db $1A,$FC,$F8,$0F,$1E,$03,$F3,$F0,$D9,$D8,$8F,$0F,$01,$05,$E1,$03   ;A4A13D;
    db $F0,$1F,$F8,$0F,$FE,$03,$0F,$00,$27,$00,$F0,$00,$FA,$00,$FC,$00   ;A4A14D;
    db $03,$80,$34,$44,$97,$07,$C3,$03,$C1,$01,$4E,$8E,$EF,$0F,$EF,$0F   ;A4A15D;
    db $7F,$00,$BB,$00,$F8,$00,$FC,$00,$FE,$00,$F1,$00,$F0,$00,$F0,$00   ;A4A16D;
    db $D9,$1F,$59,$9F,$51,$9F,$51,$9F,$1C,$9F,$9C,$1F,$DE,$1F,$DE,$1F   ;A4A17D;
    db $E0,$00,$E0,$00,$E0,$00,$E0,$00,$E0,$00,$E0,$00,$E0,$00,$E0,$00   ;A4A18D;
    db $CF,$0F,$8F,$0F,$0F,$0F,$2F,$2F,$2F,$2F,$A7,$A7,$31,$31,$21,$31   ;A4A19D;
    db $F0,$00,$F0,$00,$F0,$00,$D0,$00,$D0,$00,$58,$00,$CE,$00,$CE,$00   ;A4A1AD;
    db $F1,$04,$19,$E4,$0F,$F6,$74,$85,$F0,$01,$91,$0E,$9F,$80,$41,$40   ;A4A1BD;
    db $FB,$00,$FB,$00,$F9,$00,$FB,$00,$FF,$00,$FF,$00,$7F,$00,$BF,$00   ;A4A1CD;
    db $E8,$90,$B8,$10,$78,$40,$FC,$A4,$CC,$80,$46,$02,$E6,$02,$EE,$02   ;A4A1DD;
    db $E8,$80,$E8,$00,$B8,$00,$5C,$04,$7C,$00,$FE,$02,$FE,$02,$FE,$02   ;A4A1ED;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A1FD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A20D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A21D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A22D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A23D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A24D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A25D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A26D;

Tiles_Crocomire_Melting1_1:
    db $1C,$63,$4C,$73,$49,$76,$42,$7C,$50,$6E,$50,$6F,$5F,$7F,$79,$79   ;A4A27D;
    db $7F,$00,$7F,$40,$7F,$40,$7F,$40,$7F,$40,$7F,$40,$7F,$5F,$79,$79   ;A4A28D;
    db $FF,$00,$00,$FF,$05,$FF,$C5,$1F,$0C,$D3,$02,$FD,$21,$FE,$F0,$FF   ;A4A29D;
    db $FF,$00,$FF,$00,$FF,$05,$FF,$05,$FF,$00,$FF,$00,$FF,$20,$FF,$F0   ;A4A2AD;
    db $BC,$A0,$16,$DA,$9B,$5B,$00,$61,$87,$F8,$C7,$C0,$32,$F0,$13,$F1   ;A4A2BD;
    db $BC,$A0,$E6,$02,$E7,$03,$FF,$00,$7F,$00,$3F,$00,$0F,$00,$0E,$00   ;A4A2CD;
    db $C8,$C6,$1B,$1B,$1D,$1B,$17,$11,$14,$11,$1E,$1D,$19,$18,$39,$38   ;A4A2DD;
    db $3E,$00,$E7,$03,$E7,$01,$EF,$01,$EF,$00,$E3,$00,$E7,$00,$C7,$00   ;A4A2ED;
    db $2F,$FF,$AF,$D7,$C7,$F8,$73,$7C,$38,$3F,$1D,$1E,$0E,$0F,$06,$07   ;A4A2FD;
    db $FF,$2F,$FF,$87,$FF,$C0,$7F,$70,$3F,$38,$1F,$1C,$0F,$0E,$07,$06   ;A4A30D;
    db $41,$80,$23,$C0,$1B,$E2,$98,$E0,$4C,$70,$26,$38,$13,$1C,$10,$1F   ;A4A31D;
    db $FF,$00,$FF,$00,$FD,$00,$FF,$80,$7F,$40,$3F,$20,$1F,$10,$1F,$10   ;A4A32D;
    db $7F,$8F,$4E,$2F,$65,$BF,$B8,$FF,$F9,$7F,$73,$1F,$B3,$9F,$3F,$03   ;A4A33D;
    db $01,$FF,$03,$FE,$03,$FD,$87,$F8,$DF,$79,$FE,$13,$7F,$13,$FF,$03   ;A4A34D;
    db $FF,$E0,$D4,$28,$6F,$19,$FF,$89,$DD,$C7,$EF,$63,$64,$23,$67,$20   ;A4A35D;
    db $00,$FF,$C0,$3F,$E0,$1F,$70,$0F,$38,$07,$9C,$03,$DF,$00,$DF,$00   ;A4A36D;
    db $90,$80,$D2,$D2,$F8,$E1,$CC,$C3,$CE,$C1,$C7,$D0,$8B,$88,$9B,$80   ;A4A37D;
    db $7F,$00,$2D,$00,$1F,$00,$3F,$00,$3F,$00,$2F,$00,$77,$00,$7F,$00   ;A4A38D;
    db $9C,$83,$A0,$9F,$A1,$9F,$27,$1E,$2F,$18,$3C,$10,$61,$03,$E8,$0E   ;A4A39D;
    db $7F,$00,$7F,$00,$7F,$01,$FF,$06,$FF,$08,$FF,$10,$FC,$00,$F1,$00   ;A4A3AD;
    db $28,$30,$99,$10,$99,$10,$9B,$10,$CF,$00,$DF,$10,$C7,$00,$EF,$00   ;A4A3BD;
    db $CF,$00,$EF,$00,$EF,$00,$EF,$00,$FF,$00,$EF,$00,$FF,$00,$FF,$00   ;A4A3CD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A3DD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A3ED;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A3FD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A40D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A41D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A42D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A43D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A44D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A45D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A46D;

Tiles_Crocomire_Melting1_2:
    db $00,$FF,$00,$C1,$05,$00,$FF,$00,$A8,$70,$F1,$C1,$80,$80,$B6,$00   ;A4A47D;
    db $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$20,$FE,$C0,$FF,$80,$FF,$00   ;A4A48D;
    db $00,$00,$00,$00,$00,$00,$E4,$E4,$59,$FF,$37,$C8,$7F,$80,$1F,$E0   ;A4A49D;
    db $00,$00,$00,$00,$00,$00,$E4,$E4,$FF,$59,$FF,$00,$FF,$00,$FF,$00   ;A4A4AD;
    db $00,$00,$00,$00,$00,$00,$C0,$40,$A0,$60,$90,$70,$98,$28,$FC,$04   ;A4A4BD;
    db $00,$00,$00,$00,$00,$00,$C0,$40,$E0,$20,$F0,$10,$F8,$08,$FC,$04   ;A4A4CD;
    db $4F,$1F,$41,$8E,$E8,$EB,$1C,$1C,$1F,$3F,$F0,$FF,$BC,$BF,$13,$03   ;A4A4DD;
    db $FF,$0F,$7F,$00,$17,$00,$E3,$00,$C0,$00,$00,$00,$40,$00,$FC,$00   ;A4A4ED;
    db $B2,$B0,$22,$20,$85,$01,$81,$01,$9F,$07,$73,$80,$79,$86,$04,$FF   ;A4A4FD;
    db $4F,$00,$DF,$00,$FE,$00,$FE,$00,$F8,$00,$FF,$00,$FF,$00,$FF,$04   ;A4A50D;
    db $0C,$0F,$06,$07,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A51D;
    db $0F,$0C,$07,$06,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A52D;
    db $4F,$FF,$FB,$FF,$E4,$FB,$8F,$F0,$D7,$E8,$A1,$C0,$E0,$F0,$B8,$C0   ;A4A53D;
    db $F4,$4F,$C0,$FF,$80,$FB,$00,$F0,$00,$F9,$00,$FF,$00,$FF,$00,$FF   ;A4A54D;
    db $C9,$3E,$FB,$5C,$FB,$3C,$BF,$7E,$FF,$FF,$37,$E0,$C0,$C0,$01,$01   ;A4A55D;
    db $07,$F8,$0F,$F8,$1F,$F8,$3F,$FE,$7F,$FF,$FF,$20,$FF,$C0,$FE,$00   ;A4A56D;
    db $72,$72,$00,$00,$20,$00,$71,$80,$3F,$C0,$7C,$83,$F8,$06,$FC,$00   ;A4A57D;
    db $8D,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00   ;A4A58D;
    db $31,$E0,$70,$E0,$E1,$81,$A3,$03,$26,$07,$B6,$87,$65,$07,$D6,$02   ;A4A59D;
    db $FF,$20,$FF,$60,$FE,$80,$FC,$00,$F8,$00,$78,$00,$F8,$00,$FD,$00   ;A4A5AD;
    db $83,$0E,$CD,$0C,$C3,$00,$F6,$01,$FC,$03,$D8,$07,$B8,$07,$F0,$0F   ;A4A5BD;
    db $F1,$00,$F3,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00   ;A4A5CD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A5DD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A5ED;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A5FD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A60D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A61D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A62D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A63D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A64D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A65D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A66D;

Tiles_Crocomire_Melting1_3:
    db $20,$E0,$0C,$BC,$A0,$0F,$B0,$30,$BB,$FF,$01,$FF,$6A,$60,$52,$0D   ;A4A67D;
    db $E0,$20,$FC,$0C,$FF,$00,$CF,$00,$00,$00,$00,$00,$9F,$00,$FF,$00   ;A4A68D;
    db $81,$FE,$D0,$FF,$ED,$FF,$FF,$FF,$7F,$FF,$13,$FF,$F1,$0F,$9F,$01   ;A4A69D;
    db $FF,$80,$FF,$D0,$FF,$ED,$7F,$FF,$01,$FF,$00,$FF,$00,$FF,$00,$FF   ;A4A6AD;
    db $00,$00,$00,$00,$00,$00,$7F,$7F,$81,$FF,$09,$FE,$E6,$FD,$FD,$FE   ;A4A6BD;
    db $00,$00,$00,$00,$00,$00,$7F,$7F,$FF,$81,$FF,$08,$FF,$E4,$FF,$FC   ;A4A6CD;
    db $FC,$A7,$FC,$C7,$81,$E0,$FC,$C3,$C2,$FF,$8C,$FB,$D7,$F8,$3C,$FB   ;A4A6DD;
    db $D8,$80,$F8,$C0,$7F,$80,$7F,$C0,$7D,$C2,$F0,$8F,$E0,$DC,$E0,$3F   ;A4A6ED;
    db $6C,$18,$0C,$0C,$EE,$EE,$F3,$FF,$F9,$FF,$5E,$5F,$57,$87,$1B,$E3   ;A4A6FD;
    db $E7,$00,$F3,$00,$11,$00,$00,$00,$00,$00,$A0,$00,$F8,$00,$FC,$00   ;A4A70D;
    db $BB,$F1,$A5,$E3,$33,$F1,$79,$F9,$7B,$F9,$FB,$F9,$E3,$E1,$9F,$03   ;A4A71D;
    db $0F,$01,$1D,$01,$0F,$01,$07,$01,$07,$01,$07,$01,$1F,$01,$FF,$03   ;A4A72D;
    db $ED,$F1,$F7,$F9,$FA,$7C,$1A,$FC,$E9,$1E,$39,$0E,$EC,$1E,$2D,$5E   ;A4A73D;
    db $FE,$E0,$3E,$F0,$1F,$F8,$07,$F8,$0F,$F8,$07,$F8,$07,$FC,$07,$FC   ;A4A74D;
    db $02,$02,$00,$00,$80,$00,$C8,$00,$FD,$81,$F3,$03,$0A,$0A,$A0,$A0   ;A4A75D;
    db $FD,$00,$FF,$00,$FF,$00,$FF,$00,$FE,$80,$FC,$00,$F5,$00,$5F,$00   ;A4A76D;
    db $00,$00,$05,$00,$7E,$00,$E8,$14,$C0,$30,$09,$81,$76,$77,$AC,$E7   ;A4A77D;
    db $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FE,$00,$88,$00,$18,$00   ;A4A78D;
    db $00,$00,$05,$00,$7E,$00,$E8,$14,$C0,$30,$09,$81,$76,$77,$AC,$E7   ;A4A79D;
    db $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FE,$00,$88,$00,$18,$00   ;A4A7AD;
    db $D7,$00,$67,$85,$67,$87,$63,$83,$F3,$03,$F9,$01,$FC,$00,$FE,$00   ;A4A7BD;
    db $FF,$00,$FA,$00,$F8,$00,$FC,$00,$FC,$00,$FE,$00,$FF,$00,$FF,$00   ;A4A7CD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A7DD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A7ED;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A7FD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A80D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A81D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A82D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A83D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A84D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A85D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A86D;

Tiles_Crocomire_Melting1_4:
    db $00,$00,$00,$00,$60,$60,$0E,$EE,$3E,$9A,$24,$E0,$F1,$55,$BA,$07   ;A4A87D;
    db $00,$00,$00,$00,$60,$60,$FE,$0E,$67,$02,$1F,$00,$AA,$00,$F8,$00   ;A4A88D;
    db $E0,$E0,$1C,$FC,$85,$7F,$D0,$87,$D8,$C7,$6E,$E0,$26,$E0,$24,$E0   ;A4A89D;
    db $E0,$E0,$FC,$1C,$FF,$05,$7F,$00,$3F,$00,$1F,$00,$1F,$00,$1F,$00   ;A4A8AD;
    db $FE,$FF,$6F,$7F,$67,$7F,$31,$3F,$14,$1B,$12,$1D,$10,$1D,$31,$38   ;A4A8BD;
    db $C7,$FE,$43,$7F,$40,$7F,$00,$3F,$00,$1F,$00,$1F,$00,$1F,$00,$3F   ;A4A8CD;
    db $06,$F6,$21,$38,$E7,$0D,$15,$E4,$CC,$F4,$E5,$F9,$F4,$78,$70,$38   ;A4A8DD;
    db $09,$00,$C7,$00,$F2,$00,$FB,$00,$7B,$C0,$3E,$E0,$1F,$F0,$3F,$F0   ;A4A8ED;
    db $55,$38,$10,$3F,$32,$7F,$36,$FF,$EC,$FE,$FE,$FD,$F8,$FE,$BA,$FC   ;A4A8FD;
    db $1F,$F0,$1F,$F0,$1D,$F2,$18,$F7,$38,$EF,$F8,$FF,$F0,$FF,$F0,$BF   ;A4A90D;
    db $00,$00,$00,$00,$03,$03,$07,$05,$FD,$FC,$82,$7A,$72,$C2,$D1,$83   ;A4A91D;
    db $00,$00,$00,$00,$03,$03,$07,$05,$FF,$FC,$FD,$00,$3D,$00,$7C,$00   ;A4A92D;
    db $98,$FC,$CE,$FE,$CE,$FE,$4C,$7C,$AC,$BC,$BC,$BC,$39,$39,$38,$38   ;A4A93D;
    db $03,$00,$01,$00,$01,$00,$83,$00,$43,$00,$43,$00,$C6,$00,$C7,$00   ;A4A94D;
    db $7B,$78,$74,$74,$FD,$7C,$B6,$AE,$B2,$8E,$79,$1D,$F3,$CF,$BC,$BC   ;A4A95D;
    db $87,$00,$8B,$00,$83,$00,$51,$00,$71,$00,$E2,$00,$30,$00,$43,$00   ;A4A96D;
    db $07,$07,$0E,$0F,$18,$18,$1A,$1B,$8F,$8F,$A1,$81,$71,$B8,$89,$98   ;A4A97D;
    db $F8,$00,$F0,$00,$E7,$00,$E4,$00,$70,$00,$7E,$00,$47,$00,$67,$00   ;A4A98D;
    db $F7,$87,$14,$E0,$7F,$80,$60,$87,$58,$98,$4D,$8F,$67,$87,$72,$82   ;A4A99D;
    db $78,$00,$FF,$00,$FF,$00,$FF,$00,$E7,$00,$F0,$00,$F8,$00,$FD,$00   ;A4A9AD;
    db $EF,$E4,$CF,$C0,$EE,$EB,$E2,$E1,$A6,$A1,$0C,$03,$09,$06,$7B,$04   ;A4A9BD;
    db $1B,$00,$3F,$00,$15,$00,$1F,$00,$5F,$00,$FF,$00,$FF,$00,$FF,$00   ;A4A9CD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A9DD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A9ED;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4A9FD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AA0D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AA1D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AA2D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AA3D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AA4D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AA5D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AA6D;

Tiles_Crocomire_Melting1_5:
    db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$B0,$07,$7F,$C0,$C7,$54,$F5   ;A4AA7D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$B0,$FF,$07,$3F,$00,$0B,$00   ;A4AA8D;
    db $00,$00,$00,$00,$00,$00,$E0,$E0,$20,$F0,$04,$3C,$00,$FE,$38,$01   ;A4AA9D;
    db $00,$00,$00,$00,$00,$00,$E0,$E0,$F0,$20,$FC,$04,$FE,$00,$FF,$00   ;A4AAAD;
    db $00,$00,$00,$00,$80,$80,$80,$80,$80,$80,$00,$80,$C0,$C0,$40,$C0   ;A4AABD;
    db $00,$00,$00,$00,$80,$80,$80,$80,$80,$80,$80,$00,$C0,$C0,$C0,$40   ;A4AACD;
    db $03,$03,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AADD;
    db $03,$03,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AAED;
    db $4F,$B1,$03,$FC,$BD,$FE,$AE,$5F,$4F,$0F,$AA,$17,$0E,$13,$93,$07   ;A4AAFD;
    db $FE,$00,$FF,$00,$1F,$FC,$07,$FE,$03,$BF,$03,$5E,$03,$FE,$01,$FF   ;A4AB0D;
    db $FA,$02,$7A,$82,$3C,$C0,$00,$FF,$FD,$C2,$EF,$E0,$F0,$E0,$FC,$D8   ;A4AB1D;
    db $FD,$00,$FD,$00,$FF,$00,$FF,$00,$FF,$C0,$7F,$E0,$7F,$E0,$67,$C0   ;A4AB2D;
    db $78,$80,$16,$E8,$01,$FE,$A0,$FF,$78,$7F,$1C,$1F,$0E,$0F,$02,$03   ;A4AB3D;
    db $FF,$00,$FF,$00,$FF,$00,$FF,$A0,$7F,$78,$1F,$1C,$0F,$0E,$03,$02   ;A4AB4D;
    db $02,$03,$02,$03,$03,$03,$01,$01,$01,$01,$02,$03,$02,$03,$02,$03   ;A4AB5D;
    db $03,$02,$03,$02,$03,$03,$01,$01,$01,$01,$03,$02,$03,$02,$03,$02   ;A4AB6D;
    db $07,$06,$CF,$F9,$F9,$F0,$EF,$0E,$26,$3E,$E4,$FC,$9C,$1C,$81,$04   ;A4AB7D;
    db $07,$06,$FF,$C9,$FF,$F0,$F1,$00,$C1,$00,$03,$00,$E3,$00,$FB,$00   ;A4AB8D;
    db $7E,$1E,$BE,$86,$F8,$38,$F8,$F8,$1C,$04,$EE,$E6,$DC,$C4,$E8,$68   ;A4AB9D;
    db $FE,$1E,$7E,$06,$F8,$38,$F8,$F8,$FC,$04,$1E,$06,$3C,$04,$F8,$68   ;A4ABAD;
    db $49,$B0,$53,$AF,$1E,$E0,$1F,$E0,$BE,$40,$BF,$41,$EC,$00,$49,$00   ;A4ABBD;
    db $FF,$00,$FF,$03,$FF,$00,$FF,$00,$FF,$00,$FE,$00,$FF,$00,$FF,$00   ;A4ABCD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4ABDD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4ABED;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4ABFD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AC0D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AC1D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AC2D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AC3D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AC4D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AC5D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AC6D;

Tiles_Crocomire_Melting2_0:
    db $00,$00,$00,$00,$00,$01,$03,$03,$06,$07,$04,$07,$06,$07,$0D,$0E   ;A4AC7D;
    db $00,$00,$00,$00,$01,$00,$03,$03,$07,$06,$07,$04,$07,$06,$0F,$0C   ;A4AC8D;
    db $00,$00,$E0,$20,$98,$28,$F4,$0C,$F2,$6E,$D3,$05,$7F,$60,$29,$28   ;A4AC9D;
    db $00,$00,$E0,$20,$F8,$08,$FC,$04,$9E,$02,$FF,$01,$9F,$00,$D7,$00   ;A4ACAD;
    db $03,$03,$F9,$3F,$59,$9F,$49,$8F,$35,$D7,$37,$D7,$87,$C7,$A7,$C7   ;A4ACBD;
    db $00,$00,$C4,$00,$E0,$00,$F0,$00,$E8,$00,$E8,$00,$F8,$80,$F8,$80   ;A4ACCD;
    db $00,$00,$00,$00,$00,$00,$80,$80,$80,$80,$80,$80,$00,$80,$C0,$40   ;A4ACDD;
    db $00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$80,$00,$80,$00,$C0   ;A4ACED;
    db $7F,$7F,$ED,$7E,$FC,$1F,$7E,$87,$1F,$E3,$A8,$D0,$C0,$F0,$C0,$F8   ;A4ACFD;
    db $38,$FF,$38,$EF,$7C,$9F,$7C,$87,$7E,$83,$FF,$80,$FF,$C0,$FF,$C0   ;A4AD0D;
    db $70,$70,$A7,$5F,$5C,$E7,$55,$B3,$13,$27,$CA,$E7,$3A,$B7,$2B,$60   ;A4AD1D;
    db $00,$F0,$00,$FF,$40,$FF,$50,$BF,$D3,$2F,$13,$2E,$43,$0E,$93,$0C   ;A4AD2D;
    db $1B,$1D,$EF,$F3,$FF,$27,$77,$2F,$3F,$7F,$66,$7C,$98,$78,$60,$80   ;A4AD3D;
    db $00,$1F,$01,$FF,$03,$FF,$07,$FF,$0F,$FF,$1F,$E4,$7F,$98,$7F,$80   ;A4AD4D;
    db $0F,$8E,$41,$40,$05,$20,$8C,$70,$C0,$38,$28,$10,$30,$00,$20,$00   ;A4AD5D;
    db $71,$80,$BF,$00,$FF,$00,$FC,$00,$F8,$00,$38,$00,$30,$00,$20,$00   ;A4AD6D;
    db $F9,$C0,$F0,$20,$21,$00,$E1,$C0,$C1,$C1,$94,$94,$86,$86,$24,$86   ;A4AD7D;
    db $FF,$C0,$FE,$20,$F9,$00,$39,$00,$32,$00,$63,$00,$71,$00,$71,$00   ;A4AD8D;
    db $C0,$C0,$C0,$C0,$00,$00,$00,$00,$80,$80,$C0,$C0,$80,$80,$00,$00   ;A4AD9D;
    db $C0,$C0,$C0,$C0,$00,$00,$00,$00,$80,$80,$C0,$C0,$80,$80,$00,$00   ;A4ADAD;
    db $7D,$1C,$79,$38,$BD,$BD,$7C,$7C,$74,$74,$21,$20,$81,$00,$CF,$00   ;A4ADBD;
    db $63,$00,$47,$00,$02,$00,$83,$00,$8B,$00,$DF,$00,$FF,$00,$FF,$00   ;A4ADCD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4ADDD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4ADED;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4ADFD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AE0D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AE1D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AE2D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AE3D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AE4D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AE5D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AE6D;

Tiles_Crocomire_Melting2_1:
    db $00,$7F,$00,$F8,$40,$A0,$3F,$C0,$55,$8E,$DE,$18,$D0,$30,$F6,$20   ;A4AE7D;
    db $7F,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$04,$FF,$18,$FF,$10,$FF,$20   ;A4AE8D;
    db $9F,$60,$80,$7F,$20,$DF,$58,$83,$01,$DA,$00,$FF,$E4,$FF,$3F,$3E   ;A4AE9D;
    db $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$E4,$3F,$3E   ;A4AEAD;
    db $19,$98,$C3,$C3,$C7,$C3,$8A,$82,$88,$80,$89,$81,$21,$01,$41,$01   ;A4AEBD;
    db $67,$00,$3C,$00,$3C,$00,$79,$00,$79,$00,$78,$00,$F8,$00,$D8,$00   ;A4AECD;
    db $5E,$40,$43,$5C,$81,$1E,$0E,$F0,$BE,$40,$F2,$01,$13,$10,$88,$08   ;A4AEDD;
    db $BF,$00,$BF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$EF,$00,$F7,$00   ;A4AEED;
    db $00,$00,$00,$00,$01,$01,$07,$07,$01,$03,$03,$01,$05,$07,$0D,$0F   ;A4AEFD;
    db $00,$00,$00,$00,$01,$01,$00,$07,$01,$03,$00,$03,$00,$07,$00,$0F   ;A4AF0D;
    db $3F,$C0,$0F,$F0,$A7,$F8,$E0,$FF,$FF,$F8,$7D,$FC,$3E,$FC,$FF,$3B   ;A4AF1D;
    db $FF,$00,$FF,$00,$FF,$A0,$FF,$E0,$3F,$F8,$0F,$FC,$0F,$FC,$0C,$F8   ;A4AF2D;
    db $20,$C0,$60,$80,$70,$80,$F9,$C0,$FF,$F0,$FE,$00,$01,$00,$34,$34   ;A4AF3D;
    db $FF,$00,$FF,$00,$FF,$00,$FF,$C0,$FF,$F0,$FF,$00,$FF,$00,$CA,$00   ;A4AF4D;
    db $E0,$00,$10,$00,$0E,$00,$05,$02,$00,$06,$01,$00,$0E,$0E,$15,$1C   ;A4AF5D;
    db $FE,$00,$1E,$00,$0E,$00,$07,$00,$07,$00,$0F,$00,$11,$00,$23,$00   ;A4AF6D;
    db $00,$00,$00,$01,$00,$03,$00,$03,$05,$03,$86,$82,$0C,$00,$0D,$01   ;A4AF7D;
    db $00,$00,$01,$00,$03,$00,$03,$00,$07,$01,$0E,$02,$8F,$00,$CE,$00   ;A4AF8D;
    db $3F,$C0,$0F,$F0,$A7,$F8,$E0,$FF,$FF,$F8,$7D,$FC,$3E,$FC,$FF,$3B   ;A4AF9D;
    db $FF,$00,$FF,$00,$FF,$A0,$FF,$E0,$3F,$F8,$0F,$FC,$0F,$FC,$0C,$F8   ;A4AFAD;
    db $E9,$96,$EA,$15,$C3,$7C,$43,$3C,$D7,$28,$97,$68,$3D,$C0,$69,$80   ;A4AFBD;
    db $7F,$00,$FF,$00,$BF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00   ;A4AFCD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AFDD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AFED;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4AFFD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B00D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B01D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B02D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B03D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B04D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B05D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B06D;

Tiles_Crocomire_Melting2_2:
    db $04,$FC,$00,$34,$B0,$00,$F0,$00,$10,$18,$20,$3F,$0D,$0C,$CA,$01   ;A4B07D;
    db $FC,$04,$FC,$00,$F8,$00,$F8,$00,$E0,$00,$C0,$00,$F3,$00,$FF,$00   ;A4B08D;
    db $F4,$03,$1B,$E7,$BE,$FF,$BB,$FE,$9C,$7F,$4E,$BF,$35,$DF,$0D,$FF   ;A4B09D;
    db $FF,$00,$FC,$03,$F8,$BF,$FC,$BB,$FC,$1F,$F8,$0F,$FC,$17,$FC,$0F   ;A4B0AD;
    db $00,$C0,$60,$60,$B0,$70,$F0,$30,$90,$30,$C0,$B0,$38,$18,$28,$18   ;A4B0BD;
    db $C0,$00,$E0,$60,$F0,$30,$F0,$30,$F0,$10,$70,$00,$F8,$18,$F8,$08   ;A4B0CD;
    db $00,$00,$90,$C0,$20,$00,$80,$40,$00,$80,$00,$00,$00,$00,$00,$00   ;A4B0DD;
    db $00,$00,$30,$00,$E0,$00,$C0,$00,$80,$00,$00,$00,$00,$00,$00,$00   ;A4B0ED;
    db $E0,$E0,$C0,$E0,$B0,$F0,$10,$F8,$38,$F8,$70,$F8,$78,$F8,$F6,$6E   ;A4B0FD;
    db $20,$E0,$60,$C0,$70,$B0,$E0,$18,$E0,$38,$C0,$78,$E0,$78,$E0,$7E   ;A4B10D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$80,$80,$C0,$C0   ;A4B11D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$80,$80,$C0,$C0   ;A4B12D;
    db $5D,$0D,$4C,$0C,$4D,$0D,$44,$05,$84,$01,$87,$03,$86,$01,$07,$07   ;A4B13D;
    db $D0,$00,$C1,$00,$C0,$00,$C8,$00,$84,$00,$84,$00,$86,$00,$00,$00   ;A4B14D;
    db $00,$00,$01,$01,$03,$03,$23,$83,$25,$01,$24,$00,$E2,$C3,$A1,$C3   ;A4B15D;
    db $07,$00,$06,$00,$04,$00,$EC,$00,$E6,$00,$E7,$00,$20,$00,$24,$00   ;A4B16D;
    db $00,$28,$08,$78,$38,$70,$70,$40,$60,$00,$90,$10,$20,$60,$18,$C0   ;A4B17D;
    db $28,$00,$78,$08,$78,$30,$78,$40,$78,$00,$E0,$00,$90,$00,$3C,$00   ;A4B18D;
    db $5E,$40,$43,$5C,$81,$1E,$0E,$F0,$BE,$40,$F2,$01,$13,$10,$88,$08   ;A4B19D;
    db $BF,$00,$BF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$EF,$00,$F7,$00   ;A4B1AD;
    db $3D,$12,$77,$E2,$CF,$08,$FF,$14,$D9,$10,$E8,$20,$9C,$00,$3D,$00   ;A4B1BD;
    db $FD,$10,$FD,$60,$F7,$00,$EB,$00,$EF,$00,$DF,$00,$FF,$00,$FF,$00   ;A4B1CD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B1DD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B1ED;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B1FD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B20D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B21D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B22D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B23D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B24D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B25D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B26D;

Tiles_Crocomire_Melting2_3:
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$00,$00,$02,$00   ;A4B27D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$02,$00   ;A4B28D;
    db $00,$00,$00,$00,$00,$00,$0F,$0F,$10,$1F,$01,$1F,$1C,$1F,$1F,$1F   ;A4B29D;
    db $00,$00,$00,$00,$00,$00,$0F,$0F,$1F,$10,$1F,$01,$1F,$1C,$1F,$1F   ;A4B2AD;
    db $07,$06,$06,$07,$02,$03,$01,$03,$03,$03,$02,$02,$00,$00,$00,$00   ;A4B2BD;
    db $07,$06,$07,$06,$03,$02,$03,$01,$03,$03,$02,$02,$00,$00,$00,$00   ;A4B2CD;
    db $00,$00,$00,$00,$03,$00,$05,$02,$01,$04,$03,$06,$03,$02,$03,$03   ;A4B2DD;
    db $00,$00,$00,$00,$03,$00,$07,$00,$07,$00,$05,$00,$01,$00,$00,$00   ;A4B2ED;
    db $E8,$F0,$64,$78,$63,$7C,$53,$5C,$49,$4E,$0C,$0F,$0E,$0F,$0A,$0B   ;A4B2FD;
    db $FF,$E0,$7F,$60,$7F,$60,$5F,$50,$4F,$48,$0F,$0C,$0F,$0E,$0B,$0A   ;A4B30D;
    db $8F,$F0,$C2,$FD,$60,$7F,$74,$7F,$3F,$3F,$23,$23,$03,$03,$00,$00   ;A4B31D;
    db $BF,$C0,$FF,$C0,$7F,$60,$7F,$74,$3F,$3F,$23,$23,$03,$03,$00,$00   ;A4B32D;
    db $78,$08,$88,$88,$BC,$84,$CF,$C3,$56,$D1,$3F,$BB,$7F,$F8,$97,$90   ;A4B33D;
    db $F8,$08,$78,$08,$7C,$04,$3F,$03,$2E,$00,$44,$00,$07,$00,$6F,$00   ;A4B34D;
    db $F7,$FE,$D4,$FC,$06,$1E,$4F,$7F,$EF,$FF,$3F,$3F,$3C,$1C,$33,$00   ;A4B35D;
    db $01,$00,$03,$00,$E1,$00,$80,$00,$00,$00,$C0,$00,$E3,$00,$FF,$00   ;A4B36D;
    db $3D,$1C,$1D,$09,$2A,$22,$36,$36,$0C,$2C,$0C,$2C,$2C,$2C,$5D,$5C   ;A4B37D;
    db $23,$00,$36,$00,$1D,$00,$09,$00,$13,$00,$13,$00,$13,$00,$23,$00   ;A4B38D;
    db $25,$86,$33,$82,$F3,$C2,$93,$A2,$19,$20,$3B,$C2,$F8,$00,$3D,$00   ;A4B39D;
    db $71,$00,$75,$00,$3D,$00,$7D,$00,$FF,$00,$FD,$00,$FF,$00,$FF,$00   ;A4B3AD;
    db $00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$C0,$40,$C0,$40,$C0,$40   ;A4B3BD;
    db $00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$C0,$40,$C0,$40,$C0,$40   ;A4B3CD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B3DD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B3ED;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B3FD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B40D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B41D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B42D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B43D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B44D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B45D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B46D;

Tiles_Crocomire_Melting2_4:
    db $03,$0C,$09,$0E,$09,$0E,$08,$0F,$0A,$0D,$0A,$0D,$0B,$0F,$0F,$0F   ;A4B47D;
    db $0F,$00,$0F,$08,$0F,$08,$0F,$08,$0F,$08,$0F,$08,$0F,$0B,$0F,$0F   ;A4B48D;
    db $00,$00,$00,$00,$00,$00,$FC,$FC,$2B,$FF,$26,$D9,$CF,$B0,$A3,$DC   ;A4B49D;
    db $00,$00,$00,$00,$00,$00,$FC,$FC,$FF,$2B,$FF,$00,$FF,$80,$FF,$80   ;A4B4AD;
    db $A5,$FF,$F5,$FA,$B8,$BF,$0E,$0F,$07,$07,$03,$03,$03,$03,$01,$01   ;A4B4BD;
    db $FC,$A7,$FD,$F2,$BF,$B8,$0F,$0E,$07,$07,$03,$03,$03,$03,$01,$01   ;A4B4CD;
    db $1F,$1F,$0D,$0F,$0C,$0F,$06,$07,$02,$03,$02,$03,$02,$03,$06,$07   ;A4B4DD;
    db $18,$1F,$08,$0F,$08,$0F,$00,$07,$00,$03,$00,$03,$00,$03,$00,$07   ;A4B4ED;
    db $23,$5F,$1F,$41,$03,$40,$2E,$1E,$8B,$1B,$F1,$01,$00,$E0,$1C,$E0   ;A4B4FD;
    db $9E,$63,$9F,$61,$9F,$60,$C1,$30,$C4,$30,$DE,$20,$9F,$60,$9F,$60   ;A4B50D;
    db $06,$11,$C4,$09,$32,$C1,$1A,$E1,$1D,$E2,$8D,$F1,$D1,$ED,$55,$68   ;A4B51D;
    db $E8,$07,$F4,$03,$FC,$03,$FC,$03,$F8,$07,$FA,$84,$F2,$CC,$77,$48   ;A4B52D;
    db $5B,$62,$4B,$72,$6B,$72,$2A,$33,$23,$33,$53,$62,$5B,$62,$5B,$62   ;A4B53D;
    db $7D,$40,$7D,$40,$7D,$60,$3C,$20,$3C,$20,$7D,$40,$7D,$40,$7D,$40   ;A4B54D;
    db $60,$20,$A0,$60,$60,$20,$20,$20,$60,$20,$60,$20,$60,$20,$E0,$60   ;A4B55D;
    db $E0,$20,$A0,$20,$E0,$20,$E0,$20,$E0,$20,$E0,$20,$E0,$20,$E0,$60   ;A4B56D;
    db $EE,$C0,$E2,$7C,$CF,$30,$4C,$30,$6B,$13,$69,$11,$2C,$10,$6E,$D0   ;A4B57D;
    db $2F,$00,$9F,$00,$FF,$00,$FF,$00,$FC,$00,$FE,$00,$FF,$00,$3F,$00   ;A4B58D;
    db $00,$01,$09,$01,$08,$00,$6E,$00,$EF,$00,$FB,$00,$F7,$00,$FE,$01   ;A4B59D;
    db $CE,$00,$CE,$00,$CF,$00,$EF,$00,$EF,$00,$FF,$00,$FF,$00,$FF,$00   ;A4B5AD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B5BD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B5CD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B5DD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B5ED;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B5FD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B60D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B61D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B62D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B63D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B64D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B65D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B66D;

Tiles_Crocomire_Melting2_5:
    db $0E,$04,$0F,$08,$F0,$FC,$BF,$18,$F8,$3F,$70,$1E,$3A,$7E,$66,$7E   ;A4B67D;
    db $0A,$00,$0F,$08,$0F,$F0,$0F,$F8,$0F,$F8,$1E,$F0,$1C,$FA,$3C,$E6   ;A4B68D;
    db $00,$00,$00,$00,$00,$00,$80,$80,$3F,$FF,$F0,$0F,$EE,$18,$FA,$10   ;A4B69D;
    db $00,$00,$00,$00,$00,$00,$80,$80,$FF,$3F,$FF,$00,$E7,$00,$EF,$00   ;A4B6AD;
    db $D0,$FF,$FA,$FF,$FD,$FF,$3F,$FF,$8F,$7F,$42,$BF,$1E,$A1,$33,$00   ;A4B6BD;
    db $FF,$D0,$7F,$FA,$1F,$FD,$0F,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF   ;A4B6CD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$40,$C0   ;A4B6DD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$C0,$40   ;A4B6ED;
    db $82,$87,$82,$47,$A6,$0F,$46,$9F,$DD,$8F,$BF,$9F,$DF,$3F,$57,$3F   ;A4B6FD;
    db $03,$86,$03,$CE,$03,$FE,$03,$FE,$07,$FD,$8F,$FF,$8E,$7F,$9E,$77   ;A4B70D;
    db $5A,$3D,$FB,$84,$AD,$23,$FF,$70,$BB,$B8,$5C,$4D,$6C,$25,$2D,$24   ;A4B71D;
    db $C0,$3F,$18,$E7,$1C,$E3,$0E,$E1,$46,$81,$32,$01,$5A,$01,$1A,$01   ;A4B72D;
    db $33,$30,$32,$33,$34,$35,$31,$10,$11,$10,$00,$02,$00,$00,$10,$00   ;A4B73D;
    db $06,$01,$04,$01,$00,$01,$25,$00,$07,$00,$14,$00,$14,$00,$10,$00   ;A4B74D;
    db $00,$00,$19,$1F,$7F,$7E,$FD,$A1,$A4,$87,$5C,$5F,$53,$43,$30,$60   ;A4B75D;
    db $00,$00,$1F,$19,$7F,$7E,$FE,$A0,$F8,$80,$A0,$00,$BC,$00,$9F,$00   ;A4B76D;
    db $EF,$E3,$97,$10,$FF,$07,$1F,$FF,$03,$00,$BD,$FC,$FB,$F8,$5D,$4D   ;A4B77D;
    db $1F,$03,$EF,$00,$FF,$07,$FF,$1F,$FF,$00,$03,$00,$07,$00,$BF,$0D   ;A4B78D;
    db $78,$C0,$AC,$90,$6C,$10,$CC,$30,$9C,$60,$1C,$E0,$1F,$E0,$1F,$E0   ;A4B79D;
    db $3C,$00,$7C,$00,$FC,$00,$FC,$00,$FC,$00,$FC,$00,$FF,$00,$FF,$00   ;A4B7AD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B7BD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B7CD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B7DD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B7ED;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B7FD;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B80D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B81D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B82D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B83D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B84D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B85D;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;A4B86D;

Palette_Crocomire:
; Tongue, arms, legs, skeleton (except arm)
; Initial. (Sprite palette 7)
    dw $3800,$7FFF,$0DFF,$08BF,$0895,$086C,$0447,$6B7E                   ;A4B87D;
    dw $571E,$3A58,$2171,$0CCB,$039F,$023A,$0176,$0000                   ;A4B88D;

Palette_Crocomire_BG12:
; Body/head
; BG1/2 palette 7
    dw $0000,$7FFF,$0DFF,$08BF,$0895,$086C,$0447,$6B7E                   ;A4B89D;
    dw $571E,$3A58,$2171,$0CCB,$039F,$023A,$0176,$0000                   ;A4B8AD;

Palette_Crocomire_Sprite2:
; Breakable wall
; Sprite palette 2
    dw $3800,$571E,$6318,$6318,$6318,$6318,$6318,$4A7B                   ;A4B8BD;
    dw $1C90,$1469,$1424,$0008,$24BF,$2495,$1C6C,$1045                   ;A4B8CD;

Palette_Crocomire_Sprite5:
; Projectile
; Sprite palette 5. Changes colour Fh from 7D08h to 3E0h, no observable difference
    dw $3800,$7F5A,$033B,$0216,$0113,$7C1D,$5814,$300A                   ;A4B8DD;
    dw $3BE0,$2680,$1580,$5294,$39CE,$2108,$2484,$03E0                   ;A4B8ED;

Palette_Crocomire_Sprite1:
; Skeleton arm
; Sprite palette 1
    dw $3800,$7FFF,$6B7E,$571E,$3A58,$2171,$0CCB,$6B7E                   ;A4B8FD;
    dw $571E,$3A58,$2171,$0CCB,$039F,$023A,$0176,$0000                   ;A4B90D;

Palette_Crocomire_Sprite3:
; Breakable wall spikes
; Sprite palette 3
    dw $3800,$02DF,$01D7,$00AC,$5A73,$41AD,$2D08,$1863                   ;A4B91D;
    dw $0BB1,$48FB,$7FFF,$0000,$7FFF,$44E5,$7FFF,$0000                   ;A4B92D;

EnemyTouch_Crocomire_Claws:
    JSL.L NormalEnemyTouchAI                                             ;A4B93D;
    LDA.W $0FAA                                                          ;A4B941;
    ORA.W #$4000                                                         ;A4B944;
    STA.W $0FAA                                                          ;A4B947;
    LDA.W #$FFFC                                                         ;A4B94A;
    STA.W $0B58                                                          ;A4B94D; fallthrough to RTL_A4B950

RTL_A4B950:
    RTL                                                                  ;A4B950;


EnemyShot_Crocomire_Nothing:
    LDA.W $0FAA                                                          ;A4B951;
    AND.W #$000F                                                         ;A4B954;
    CMP.W #$000F                                                         ;A4B957;
    BPL +                                                                ;A4B95A;
    INC A                                                                ;A4B95C;

  + STA.B $12                                                            ;A4B95D;
    LDA.W $0FAA                                                          ;A4B95F;
    ORA.B $12                                                            ;A4B962;
    STA.W $0FAA                                                          ;A4B964;
    RTL                                                                  ;A4B967;


EnemyShot_Crocomire_SpawnShotExplosion:
    PHX                                                                  ;A4B968;
    PHY                                                                  ;A4B969;
    LDA.W $18A6                                                          ;A4B96A;
    ASL A                                                                ;A4B96D;
    TAX                                                                  ;A4B96E;
    LDA.W $0B64,X                                                        ;A4B96F;
    STA.B $12                                                            ;A4B972;
    LDA.W $0B78,X                                                        ;A4B974;
    STA.B $14                                                            ;A4B977;
    LDA.W $0C18,X                                                        ;A4B979;
    LDY.W #$001D                                                         ;A4B97C;
    BIT.W #$0200                                                         ;A4B97F;
    BNE .notBeamMissileBomb                                              ;A4B982;
    LDY.W #$0006                                                         ;A4B984;

.notBeamMissileBomb:
    TYA                                                                  ;A4B987;
    LDY.W #EnemyProjectile_MiscDust                                      ;A4B988;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A4B98B;
    PLY                                                                  ;A4B98F;
    PLX                                                                  ;A4B990;
    RTL                                                                  ;A4B991;


PowerBombReaction_Crocomire:
    LDA.W $0FA8                                                          ;A4B992;
    BNE .return                                                          ;A4B995;
    LDA.W CrocomireConstants_powerBombReactionEnableFlag                 ;A4B997;
    BEQ .return                                                          ;A4B99A;
    STA.W $0FAE                                                          ;A4B99C;
    LDA.W $0FAC                                                          ;A4B99F;
    CMP.W #$0018                                                         ;A4B9A2;
    BEQ .return                                                          ;A4B9A5;
    LDA.W $0FAA                                                          ;A4B9A7;
    AND.W #$BFF0                                                         ;A4B9AA;
    ORA.W #$8000                                                         ;A4B9AD;
    STA.W $0FAA                                                          ;A4B9B0;
    LDA.W #$000A                                                         ;A4B9B3;
    STA.W $0FB0                                                          ;A4B9B6;
    LDA.W $0F9C                                                          ;A4B9B9;
    CLC                                                                  ;A4B9BC;
    ADC.W #$0004                                                         ;A4B9BD;
    STA.W $0F9C                                                          ;A4B9C0;
    LDA.W $0F8A                                                          ;A4B9C3;
    ORA.W #$0002                                                         ;A4B9C6;
    STA.W $0F8A                                                          ;A4B9C9;
    LDA.W #$0018                                                         ;A4B9CC;
    STA.W $0FAC                                                          ;A4B9CF;
    LDX.W $0F8E                                                          ;A4B9D2;
    LDA.W $0000,X                                                        ;A4B9D5;
    STA.B $12                                                            ;A4B9D8;

.loop:
    LDA.W $0006,X                                                        ;A4B9DA;
    LDY.W #InstList_Crocomire_PowerBombReaction_MouthFullyOpen           ;A4B9DD;
    CMP.W #ExtendedTilemap_Crocomire_1                                   ;A4B9E0;
    BEQ .mouthNotOpen                                                    ;A4B9E3;
    LDY.W #InstList_Crocomire_PowerBombReaction_MouthPartiallyOpen       ;A4B9E5;
    CMP.W #ExtendedTilemap_Crocomire_0                                   ;A4B9E8;
    BEQ .mouthNotOpen                                                    ;A4B9EB;
    TXA                                                                  ;A4B9ED;
    CLC                                                                  ;A4B9EE;
    ADC.W #$0008                                                         ;A4B9EF;
    TAX                                                                  ;A4B9F2;
    DEC.B $12                                                            ;A4B9F3;
    BNE .loop                                                            ;A4B9F5;
    LDY.W #InstList_Crocomire_PowerBombReaction_MouthNotOpen_0           ;A4B9F7;

.mouthNotOpen:
    TYA                                                                  ;A4B9FA;
    STA.W $0F92                                                          ;A4B9FB;
    LDA.W #$0001                                                         ;A4B9FE;
    STA.W $0F94                                                          ;A4BA01;

.return:
    RTL                                                                  ;A4BA04;


EnemyShot_Crocomire_OpenMouth:
    LDA.W #$0000                                                         ;A4BA05;
    STA.W $0FA0                                                          ;A4BA08;
    LDA.W $0F7A                                                          ;A4BA0B;
    SEC                                                                  ;A4BA0E;
    SBC.W $0F82                                                          ;A4BA0F;
    SEC                                                                  ;A4BA12;
    SBC.W #$0100                                                         ;A4BA13;
    SEC                                                                  ;A4BA16;
    SBC.W $0911                                                          ;A4BA17;
    BPL .offScreen                                                       ;A4BA1A;
    LDA.W $18A6                                                          ;A4BA1C;
    ASL A                                                                ;A4BA1F;
    TAX                                                                  ;A4BA20;
    LDA.W $0C18,X                                                        ;A4BA21;
    BIT.W #$0F00                                                         ;A4BA24;
    BNE .notBeam                                                         ;A4BA27;
    LDX.W CrocomireConstants_stepsWhenDamagedByChargeBeam                ;A4BA29;
    BIT.W #$0010                                                         ;A4BA2C;
    BNE .damage                                                          ;A4BA2F;
    LDA.W CrocomireConstants_mouthOpenInstructionTimer                   ;A4BA31;
    STA.W $0F94                                                          ;A4BA34;
    LDX.W CrocomireConstants_index                                       ;A4BA37;
    JMP.W EnemyShot_Crocomire_SpawnShotExplosion_duplicate               ;A4BA3A;


.notBeam:
    AND.W #$0F00                                                         ;A4BA3D;
    LDX.W CrocomireConstants_stepsWhenDamagedByMissile                   ;A4BA40;
    CMP.W #$0100                                                         ;A4BA43;
    BEQ .damage                                                          ;A4BA46;
    LDX.W CrocomireConstants_stepsWhenDamagedBySuperMissile              ;A4BA48;
    CMP.W #$0200                                                         ;A4BA4B;
    BEQ .damage                                                          ;A4BA4E;
    LDX.W #$0000                                                         ;A4BA50;

.damage:
    TXA                                                                  ;A4BA53;
    CMP.W #$0000                                                         ;A4BA54;
    BEQ .flash                                                           ;A4BA57;
    CLC                                                                  ;A4BA59;
    ADC.W $0FAE                                                          ;A4BA5A;
    STA.W $0FAE                                                          ;A4BA5D;

.offScreen:
    LDA.W $0FAA                                                          ;A4BA60;
    AND.W #$000F                                                         ;A4BA63;
    CMP.W #$000F                                                         ;A4BA66;
    BPL +                                                                ;A4BA69;
    INC A                                                                ;A4BA6B;

  + STA.B $12                                                            ;A4BA6C;
    LDA.W $0FAA                                                          ;A4BA6E;
    BIT.W #$0800                                                         ;A4BA71;
    BNE .damaged                                                         ;A4BA74;
    LDX.W CrocomireConstants_mouthCloseDelayWhenDamaged_NotProjAttack    ;A4BA76;
    LDA.W $0FAC                                                          ;A4BA79;
    CMP.W #$0008                                                         ;A4BA7C;
    BNE +                                                                ;A4BA7F;
    LDX.W CrocomireConstants_mouthCloseDelayWhenDamaged_ProjAttack       ;A4BA81;

  + TXA                                                                  ;A4BA84;
    CLC                                                                  ;A4BA85;
    ADC.W $0F94                                                          ;A4BA86;
    STA.W $0F94                                                          ;A4BA89;

.damaged:
    LDA.W $0FAA                                                          ;A4BA8C;
    AND.W #$BFF0                                                         ;A4BA8F;
    ORA.W #$0800                                                         ;A4BA92;
    ORA.B $12                                                            ;A4BA95;
    STA.W $0FAA                                                          ;A4BA97;
    LDA.W #$000A                                                         ;A4BA9A;
    STA.W $0FB0                                                          ;A4BA9D;

.flash:
    LDA.W $0F9C                                                          ;A4BAA0;
    CLC                                                                  ;A4BAA3;
    ADC.W #$000E                                                         ;A4BAA4;
    STA.W $0F9C                                                          ;A4BAA7;
    LDA.W $0F8A                                                          ;A4BAAA;
    ORA.W #$0002                                                         ;A4BAAD;
    STA.W $0F8A                                                          ;A4BAB0;
    RTL                                                                  ;A4BAB3;


EnemyShot_Crocomire_SpawnShotExplosion_duplicate:
    PHX                                                                  ;A4BAB4;
    PHY                                                                  ;A4BAB5;
    LDA.W $18A6                                                          ;A4BAB6;
    ASL A                                                                ;A4BAB9;
    TAX                                                                  ;A4BABA;
    LDA.W $0B64,X                                                        ;A4BABB;
    STA.B $12                                                            ;A4BABE;
    LDA.W $0B78,X                                                        ;A4BAC0;
    STA.B $14                                                            ;A4BAC3;
    LDA.W $0C18,X                                                        ;A4BAC5;
    LDY.W #$001D                                                         ;A4BAC8;
    BIT.W #$0200                                                         ;A4BACB;
    BNE .notBeamMissileBomb                                              ;A4BACE;
    LDY.W #$0006                                                         ;A4BAD0;

.notBeamMissileBomb:
    TYA                                                                  ;A4BAD3;
    LDY.W #EnemyProjectile_MiscDust                                      ;A4BAD4;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A4BAD7;
    PLY                                                                  ;A4BADB;
    PLX                                                                  ;A4BADC;
    RTL                                                                  ;A4BADD;


InstList_Crocomire_Initial:
    dw $0001,ExtendedSpritemap_Crocomire_0                               ;A4BADE;
    dw Instruction_Crocomire_FightAI                                     ;A4BAE2;
    dw Instruction_Common_GotoY                                          ;A4BAE4;
    dw InstList_Crocomire_Initial                                        ;A4BAE6;
    dw Instruction_Common_Sleep                                          ;A4BAE8;

UNUSED_InstList_Crocomire_ChargeForwardOneStep_A4BAEA:
    dw $0006,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_0        ;A4BAEA;
    dw Instruction_Crocomire_ShakeScreen                                 ;A4BAEE;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud           ;A4BAF0;
    dw $0007,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_1        ;A4BAF2;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BAF6;
    dw $0007,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_2        ;A4BAF8;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BAFC;
    dw $0006,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_3        ;A4BAFE;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud           ;A4BB02;
    dw $0007,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_4        ;A4BB04;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BB08;
    dw $0007,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_5        ;A4BB0A;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BB0E;
    dw $0006,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_6        ;A4BB10;
    dw Instruction_Crocomire_ShakeScreen                                 ;A4BB14;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud           ;A4BB16;
    dw $0007,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_7        ;A4BB18;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BB1C;
    dw $0007,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_8        ;A4BB1E;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BB22;
    dw $0006,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_9        ;A4BB24;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud           ;A4BB28;
    dw $0007,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_A        ;A4BB2A;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BB2E;
    dw $0007,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_B        ;A4BB30;
    dw Instruction_Crocomire_FightAI                                     ;A4BB34;

InstList_Crocomire_ProjectileAttack_0:
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_10              ;A4BB36;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_0                   ;A4BB38;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_1                   ;A4BB3C;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_0               ;A4BB40;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_2                   ;A4BB42;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_3                   ;A4BB46;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_4                   ;A4BB4A;
    dw Instruction_Crocomire_QueueBigExplosionSFX                        ;A4BB4E;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_Negative20      ;A4BB50;
    dw $0005,ExtendedSpritemap_Crocomire_MovingClaws_0                   ;A4BB52;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_1                   ;A4BB56;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_Negative10      ;A4BB5A;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_2                   ;A4BB5C;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_3                   ;A4BB60;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_4                   ;A4BB64;
    dw Instruction_Crocomire_QueueBigExplosionSFX                        ;A4BB68;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_0               ;A4BB6A;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_0                   ;A4BB6C;
    dw $0005,ExtendedSpritemap_Crocomire_MovingClaws_1                   ;A4BB70;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_28              ;A4BB74;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_2                   ;A4BB76;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_3                   ;A4BB7A;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_4                   ;A4BB7E;
    dw Instruction_Crocomire_QueueBigExplosionSFX                        ;A4BB82;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_Negative10      ;A4BB84;
    dw $0004,ExtendedSpritemap_Crocomire_7                               ;A4BB86;
    dw Instruction_Crocomire_QueueCrySFX                                 ;A4BB8A;
    dw $0004,ExtendedSpritemap_Crocomire_8                               ;A4BB8C;
    dw $0005,ExtendedSpritemap_Crocomire_9                               ;A4BB90;

InstList_Crocomire_ProjectileAttack_1:
    dw Instruction_Crocomire_FightAI                                     ;A4BB94;
    dw $0007,ExtendedSpritemap_Crocomire_20                              ;A4BB96;
    dw $0006,ExtendedSpritemap_Crocomire_21                              ;A4BB9A;
    dw $0006,ExtendedSpritemap_Crocomire_22                              ;A4BB9E;
    dw $0006,ExtendedSpritemap_Crocomire_23                              ;A4BBA2;
    dw $0006,ExtendedSpritemap_Crocomire_24                              ;A4BBA6;
    dw Instruction_Common_GotoY                                          ;A4BBAA;
    dw InstList_Crocomire_ProjectileAttack_1                             ;A4BBAC;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_InstList_Crocomire_A4BBAE:
    dw $0003,ExtendedSpritemap_Crocomire_14                              ;A4BBAE;
    dw Instruction_Crocomire_ShakeScreen                                 ;A4BBB2;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud           ;A4BBB4;
    dw Instruction_Crocomire_FightAI                                     ;A4BBB6;
    dw Instruction_Crocomire_MaybeStartProjectileAttack                  ;A4BBB8;
    dw $0003,ExtendedSpritemap_Crocomire_15                              ;A4BBBA;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BBBE;
    dw Instruction_Crocomire_FightAI                                     ;A4BBC0;
    dw $0003,ExtendedSpritemap_Crocomire_16                              ;A4BBC2;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud           ;A4BBC6;
    dw Instruction_Crocomire_FightAI                                     ;A4BBC8;
endif ; !FEATURE_KEEP_UNREFERENCED

InstList_Crocomire_StepForwardAfterDelay:
    dw $0096,ExtendedSpritemap_Crocomire_14                              ;A4BBCA;

InstList_Crocomire_StepForward:
    dw Instruction_Crocomire_MaybeStartProjectileAttack                  ;A4BBCE;
    dw $0004,ExtendedSpritemap_Crocomire_7                               ;A4BBD0;
    dw Instruction_Crocomire_FightAI                                     ;A4BBD4;
    dw $0004,ExtendedSpritemap_Crocomire_8                               ;A4BBD6;
    dw Instruction_Crocomire_QueueCrySFX                                 ;A4BBDA;
    dw Instruction_Crocomire_FightAI                                     ;A4BBDC;
    dw $0004,ExtendedSpritemap_Crocomire_9                               ;A4BBDE;
    dw Instruction_Crocomire_FightAI                                     ;A4BBE2;
    dw $000D,ExtendedSpritemap_Crocomire_17                              ;A4BBE4;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud           ;A4BBE8;
    dw Instruction_Crocomire_FightAI                                     ;A4BBEA;
    dw $0003,ExtendedSpritemap_Crocomire_18                              ;A4BBEC;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BBF0;
    dw Instruction_Crocomire_FightAI                                     ;A4BBF2;
    dw $0004,ExtendedSpritemap_Crocomire_19                              ;A4BBF4;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BBF8;
    dw Instruction_Crocomire_FightAI                                     ;A4BBFA;
    dw $0003,ExtendedSpritemap_Crocomire_1A                              ;A4BBFC;
    dw Instruction_Crocomire_ShakeScreen                                 ;A4BC00;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud           ;A4BC02;
    dw Instruction_Crocomire_FightAI                                     ;A4BC04;
    dw $0003,ExtendedSpritemap_Crocomire_1B                              ;A4BC06;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BC0A;
    dw Instruction_Crocomire_FightAI                                     ;A4BC0C;
    dw $0003,ExtendedSpritemap_Crocomire_1C                              ;A4BC0E;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BC12;
    dw Instruction_Crocomire_FightAI                                     ;A4BC14;
    dw $0004,ExtendedSpritemap_Crocomire_1D                              ;A4BC16;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud           ;A4BC1A;
    dw Instruction_Crocomire_FightAI                                     ;A4BC1C;
    dw $0004,ExtendedSpritemap_Crocomire_1E                              ;A4BC1E;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BC22;
    dw Instruction_Crocomire_FightAI                                     ;A4BC24;
    dw $0004,ExtendedSpritemap_Crocomire_1F                              ;A4BC26;
    dw Instruction_Crocomire_FightAI                                     ;A4BC2A;
    dw Instruction_Common_GotoY                                          ;A4BC2C;
    dw InstList_Crocomire_StepForward                                    ;A4BC2E;

InstList_Crocomire_StepBack:
    dw $0002,ExtendedSpritemap_Crocomire_8                               ;A4BC30;

InstList_Crocomire_SteppingBack:
    dw $0006,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_B        ;A4BC34;
    dw Instruction_Crocomire_MoveRight4PixelsIfOnScreen_SpawnCloud       ;A4BC38;
    dw $0007,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_A        ;A4BC3A;
    dw Instruction_Crocomire_MoveRight4PixelsIfOnScreen                  ;A4BC3E;
    dw $0007,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_9        ;A4BC40;
    dw Instruction_Crocomire_MoveRight4PixelsIfOnScreen                  ;A4BC44;
    dw $0006,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_8        ;A4BC46;
    dw Instruction_Crocomire_MoveRight4PixelsIfOnScreen_SpawnCloud       ;A4BC4A;
    dw $0007,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_7        ;A4BC4C;
    dw Instruction_Crocomire_ShakeScreen                                 ;A4BC50;
    dw Instruction_Crocomire_MoveRight4PixelsIfOnScreen                  ;A4BC52;
    dw Instruction_Crocomire_FightAI                                     ;A4BC54;

InstList_Crocomire_WaitForFirstSecondDamage:
    dw $001C,ExtendedSpritemap_Crocomire_6                               ;A4BC56;
    dw $0001,ExtendedSpritemap_Crocomire_5                               ;A4BC5A;
    dw $0001,ExtendedSpritemap_Crocomire_4                               ;A4BC5E;
    dw $0001,ExtendedSpritemap_Crocomire_3                               ;A4BC62;
    dw $0001,ExtendedSpritemap_Crocomire_2                               ;A4BC66;
    dw $0001,ExtendedSpritemap_Crocomire_1                               ;A4BC6A;
    dw $0001,ExtendedSpritemap_Crocomire_0                               ;A4BC6E;
    dw $000E,ExtendedSpritemap_Crocomire_0                               ;A4BC72;
    dw $0001,ExtendedSpritemap_Crocomire_1                               ;A4BC76;
    dw $0001,ExtendedSpritemap_Crocomire_2                               ;A4BC7A;
    dw $0001,ExtendedSpritemap_Crocomire_3                               ;A4BC7E;
    dw $0001,ExtendedSpritemap_Crocomire_4                               ;A4BC82;
    dw $0001,ExtendedSpritemap_Crocomire_5                               ;A4BC86;
    dw $000E,ExtendedSpritemap_Crocomire_6                               ;A4BC8A;
    dw $0001,ExtendedSpritemap_Crocomire_5                               ;A4BC8E;
    dw $0001,ExtendedSpritemap_Crocomire_4                               ;A4BC92;
    dw $0001,ExtendedSpritemap_Crocomire_3                               ;A4BC96;
    dw $0001,ExtendedSpritemap_Crocomire_2                               ;A4BC9A;
    dw $0001,ExtendedSpritemap_Crocomire_1                               ;A4BC9E;
    dw $0001,ExtendedSpritemap_Crocomire_0                               ;A4BCA2;
    dw $0001,ExtendedSpritemap_Crocomire_1                               ;A4BCA6;
    dw $0001,ExtendedSpritemap_Crocomire_2                               ;A4BCAA;
    dw $0001,ExtendedSpritemap_Crocomire_3                               ;A4BCAE;
    dw $0001,ExtendedSpritemap_Crocomire_4                               ;A4BCB2;
    dw $0001,ExtendedSpritemap_Crocomire_5                               ;A4BCB6;
    dw $0001,ExtendedSpritemap_Crocomire_6                               ;A4BCBA;
    dw $0001,ExtendedSpritemap_Crocomire_5                               ;A4BCBE;
    dw $0001,ExtendedSpritemap_Crocomire_4                               ;A4BCC2;
    dw $0001,ExtendedSpritemap_Crocomire_3                               ;A4BCC6;
    dw $0001,ExtendedSpritemap_Crocomire_2                               ;A4BCCA;
    dw $0001,ExtendedSpritemap_Crocomire_1                               ;A4BCCE;
    dw $0001,ExtendedSpritemap_Crocomire_0                               ;A4BCD2;
    dw Instruction_Crocomire_FightAI                                     ;A4BCD6;

InstList_Crocomire_WaitForFirstSecondDamage_MovingClaws:
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_10              ;A4BCD8;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_0                   ;A4BCDA;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_1                   ;A4BCDE;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_0               ;A4BCE2;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_2                   ;A4BCE4;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_3                   ;A4BCE8;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_4                   ;A4BCEC;
    dw Instruction_Crocomire_QueueBigExplosionSFX                        ;A4BCF0;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_Negative20      ;A4BCF2;
    dw $0005,ExtendedSpritemap_Crocomire_MovingClaws_0                   ;A4BCF4;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_1                   ;A4BCF8;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_Negative10      ;A4BCFC;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_2                   ;A4BCFE;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_3                   ;A4BD02;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_4                   ;A4BD06;
    dw Instruction_Crocomire_QueueBigExplosionSFX                        ;A4BD0A;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_0               ;A4BD0C;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_0                   ;A4BD0E;
    dw $0005,ExtendedSpritemap_Crocomire_MovingClaws_1                   ;A4BD12;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_28              ;A4BD16;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_2                   ;A4BD18;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_3                   ;A4BD1C;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_4                   ;A4BD20;
    dw Instruction_Crocomire_QueueBigExplosionSFX                        ;A4BD24;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_Negative10      ;A4BD26;
    dw Instruction_Crocomire_FightAI                                     ;A4BD28;

InstList_Crocomire_WaitForFirstSecondDamage_Roar:
    dw $0028,ExtendedSpritemap_Crocomire_7                               ;A4BD2A;
    dw Instruction_Crocomire_QueueCrySFX                                 ;A4BD2E;
    dw $0004,ExtendedSpritemap_Crocomire_8                               ;A4BD30;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BD34;
    dw Instruction_Crocomire_FightAI                                     ;A4BD38;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BD3A;
    dw Instruction_Crocomire_FightAI                                     ;A4BD3E;
    dw $0001,ExtendedSpritemap_Crocomire_9                               ;A4BD40;
    dw Instruction_Crocomire_FightAI                                     ;A4BD44;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BD46;
    dw Instruction_Crocomire_FightAI                                     ;A4BD4A;
    dw $0001,ExtendedSpritemap_Crocomire_9                               ;A4BD4C;
    dw Instruction_Crocomire_FightAI                                     ;A4BD50;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BD52;
    dw Instruction_Crocomire_FightAI                                     ;A4BD56;
    dw $0001,ExtendedSpritemap_Crocomire_9                               ;A4BD58;
    dw Instruction_Crocomire_FightAI                                     ;A4BD5C;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BD5E;
    dw Instruction_Crocomire_FightAI                                     ;A4BD62;
    dw $0001,ExtendedSpritemap_Crocomire_9                               ;A4BD64;
    dw Instruction_Crocomire_FightAI                                     ;A4BD68;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BD6A;
    dw Instruction_Crocomire_FightAI                                     ;A4BD6E;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BD70;
    dw Instruction_Crocomire_FightAI                                     ;A4BD74;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BD76;
    dw Instruction_Crocomire_FightAI                                     ;A4BD7A;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BD7C;
    dw Instruction_Crocomire_FightAI                                     ;A4BD80;
    dw $001B,ExtendedSpritemap_Crocomire_9                               ;A4BD82;
    dw Instruction_Crocomire_FightAI                                     ;A4BD86;
    dw $0001,ExtendedSpritemap_Crocomire_9                               ;A4BD88;
    dw Instruction_Crocomire_FightAI                                     ;A4BD8C;

InstList_Crocomire_WaitForFirstSecondDamage_RoarCloseMouth_0:
    dw $001E,ExtendedSpritemap_Crocomire_9                               ;A4BD8E;
    dw Instruction_Crocomire_FightAI                                     ;A4BD92;
    dw $0004,ExtendedSpritemap_Crocomire_8                               ;A4BD94;
    dw Instruction_Crocomire_FightAI                                     ;A4BD98;
    dw $0006,ExtendedSpritemap_Crocomire_8                               ;A4BD9A;
    dw $0001,ExtendedSpritemap_Crocomire_7                               ;A4BD9E;

InstList_Crocomire_WaitForFirstSecondDamage_RoarCloseMouth_1:
    dw $0001,ExtendedSpritemap_Crocomire_7                               ;A4BDA2;
    dw Instruction_Crocomire_FightAI                                     ;A4BDA6;
    dw $0001,ExtendedSpritemap_Crocomire_7                               ;A4BDA8;
    dw Instruction_Crocomire_FightAI                                     ;A4BDAC;

InstList_Crocomire_PowerBombReaction_MouthFullyOpen:
    dw $0002,ExtendedSpritemap_Crocomire_8                               ;A4BDAE;

InstList_Crocomire_PowerBombReaction_MouthPartiallyOpen:
    dw $0002,ExtendedSpritemap_Crocomire_7                               ;A4BDB2;

InstList_Crocomire_PowerBombReaction_MouthNotOpen_0:
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_10              ;A4BDB6;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_0                   ;A4BDB8;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_1                   ;A4BDBC;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_0               ;A4BDC0;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_2                   ;A4BDC2;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_3                   ;A4BDC6;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_4                   ;A4BDCA;
    dw Instruction_Crocomire_QueueBigExplosionSFX                        ;A4BDCE;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_Negative20      ;A4BDD0;
    dw $0005,ExtendedSpritemap_Crocomire_MovingClaws_0                   ;A4BDD2;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_1                   ;A4BDD6;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_Negative10      ;A4BDDA;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_2                   ;A4BDDC;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_3                   ;A4BDE0;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_4                   ;A4BDE4;
    dw Instruction_Crocomire_QueueBigExplosionSFX                        ;A4BDE8;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_0               ;A4BDEA;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_0                   ;A4BDEC;
    dw $0005,ExtendedSpritemap_Crocomire_MovingClaws_1                   ;A4BDF0;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_28              ;A4BDF4;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_2                   ;A4BDF6;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_3                   ;A4BDFA;
    dw $0004,ExtendedSpritemap_Crocomire_MovingClaws_4                   ;A4BDFE;
    dw Instruction_Crocomire_QueueBigExplosionSFX                        ;A4BE02;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_Negative10      ;A4BE04;

InstList_Crocomire_PowerBombReaction_MouthNotOpen_1:
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_0        ;A4BE06;
    dw Instruction_Crocomire_ShakeScreen                                 ;A4BE0A;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud           ;A4BE0C;
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_1        ;A4BE0E;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BE12;
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_2        ;A4BE14;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BE18;
    dw $0004,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_3        ;A4BE1A;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud           ;A4BE1E;
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_4        ;A4BE20;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BE24;
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_5        ;A4BE26;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BE2A;
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_6        ;A4BE2C;
    dw Instruction_Crocomire_ShakeScreen                                 ;A4BE30;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud           ;A4BE32;
    dw $0004,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_7        ;A4BE34;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BE38;
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_8        ;A4BE3A;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BE3E;
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_9        ;A4BE40;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud           ;A4BE44;
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_A        ;A4BE46;
    dw Instruction_Crocomire_MoveLeft4Pixels                             ;A4BE4A;
    dw $0004,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_B        ;A4BE4C;
    dw Instruction_Crocomire_FightAI                                     ;A4BE50;
    dw Instruction_Common_GotoY                                          ;A4BE52;
    dw InstList_Crocomire_PowerBombReaction_MouthNotOpen_1               ;A4BE54;

InstList_CrocomireTongue_Fight:
    dw $0004,ExtendedSpritemap_Crocomire_10                              ;A4BE56;
    dw $0004,ExtendedSpritemap_Crocomire_11                              ;A4BE5A;
    dw $0004,ExtendedSpritemap_Crocomire_12                              ;A4BE5E;
    dw $0004,ExtendedSpritemap_Crocomire_13                              ;A4BE62;
    dw Instruction_Common_GotoY                                          ;A4BE66;
    dw InstList_CrocomireTongue_Fight                                    ;A4BE68;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_InstList_CrocomireTongue_ReverseVersionOfFight_A4BE6A:
    dw $0004,ExtendedSpritemap_Crocomire_13                              ;A4BE6A;
    dw $0004,ExtendedSpritemap_Crocomire_12                              ;A4BE6E;
    dw $0004,ExtendedSpritemap_Crocomire_11                              ;A4BE72;
    dw $0004,ExtendedSpritemap_Crocomire_10                              ;A4BE76;
    dw Instruction_Common_GotoY                                          ;A4BE7A;
    dw InstList_CrocomireTongue_Fight                                    ;A4BE7C;
endif ; !FEATURE_KEEP_UNREFERENCED

InstList_CrocomireTongue_NearSpikeWallCharge_0:
    dw $0004,ExtendedSpritemap_Crocomire_7                               ;A4BE7E;
    dw Instruction_Crocomire_QueueCrySFX                                 ;A4BE82;
    dw Instruction_Crocomire_FightAI                                     ;A4BE84;
    dw $0004,ExtendedSpritemap_Crocomire_8                               ;A4BE86;
    dw Instruction_Crocomire_FightAI                                     ;A4BE8A;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BE8C;
    dw Instruction_Crocomire_FightAI                                     ;A4BE90;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BE92;
    dw Instruction_Crocomire_FightAI                                     ;A4BE96;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BE98;
    dw Instruction_Crocomire_FightAI                                     ;A4BE9C;
    dw $0001,ExtendedSpritemap_Crocomire_9                               ;A4BE9E;
    dw Instruction_Crocomire_FightAI                                     ;A4BEA2;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BEA4;
    dw Instruction_Crocomire_FightAI                                     ;A4BEA8;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BEAA;
    dw Instruction_Crocomire_FightAI                                     ;A4BEAE;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BEB0;
    dw Instruction_Crocomire_FightAI                                     ;A4BEB4;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BEB6;
    dw Instruction_Crocomire_FightAI                                     ;A4BEBA;
    dw $0001,ExtendedSpritemap_Crocomire_9                               ;A4BEBC;
    dw Instruction_Crocomire_FightAI                                     ;A4BEC0;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BEC2;
    dw Instruction_Crocomire_FightAI                                     ;A4BEC6;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BEC8;
    dw Instruction_Crocomire_FightAI                                     ;A4BECC;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BECE;
    dw Instruction_Crocomire_FightAI                                     ;A4BED2;
    dw $0002,ExtendedSpritemap_Crocomire_9                               ;A4BED4;
    dw Instruction_Crocomire_FightAI                                     ;A4BED8;
    dw $0004,ExtendedSpritemap_Crocomire_8                               ;A4BEDA;
    dw Instruction_Crocomire_FightAI                                     ;A4BEDE;
    dw $0006,ExtendedSpritemap_Crocomire_8                               ;A4BEE0;
    dw Instruction_Crocomire_FightAI                                     ;A4BEE4;
    dw $0001,ExtendedSpritemap_Crocomire_7                               ;A4BEE6;
    dw Instruction_Crocomire_FightAI                                     ;A4BEEA;

InstList_CrocomireTongue_NearSpikeWallCharge_1:
    dw $0002,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_0        ;A4BEEC;
    dw Instruction_Crocomire_ShakeScreen                                 ;A4BEF0;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud_dup       ;A4BEF2;
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_1        ;A4BEF4;
    dw Instruction_Crocomire_MoveLeft_SpawnCloud_HandleSpikeWall         ;A4BEF8;
    dw $0002,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_2        ;A4BEFA;
    dw Instruction_Crocomire_MoveLeft_SpawnCloud_HandleSpikeWall         ;A4BEFE;
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_3        ;A4BF00;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud_dup       ;A4BF04;
    dw $0002,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_4        ;A4BF06;
    dw Instruction_Crocomire_MoveLeft_SpawnCloud_HandleSpikeWall         ;A4BF0A;
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_5        ;A4BF0C;
    dw Instruction_Crocomire_MoveLeft_SpawnCloud_HandleSpikeWall         ;A4BF10;
    dw $0002,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_6        ;A4BF12;
    dw Instruction_Crocomire_ShakeScreen                                 ;A4BF16;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud_dup       ;A4BF18;
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_7        ;A4BF1A;
    dw Instruction_Crocomire_MoveLeft_SpawnCloud_HandleSpikeWall         ;A4BF1E;
    dw $0002,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_8        ;A4BF20;
    dw Instruction_Crocomire_MoveLeft_SpawnCloud_HandleSpikeWall         ;A4BF24;
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_9        ;A4BF26;
    dw Instruction_Crocomire_MoveLeft4Pixels_SpawnBigDustCloud_dup       ;A4BF2A;
    dw $0002,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_A        ;A4BF2C;
    dw Instruction_Crocomire_MoveLeft_SpawnCloud_HandleSpikeWall         ;A4BF30;
    dw $0003,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_B        ;A4BF32;
    dw Instruction_Crocomire_FightAI                                     ;A4BF36;
    dw Instruction_Common_GotoY                                          ;A4BF38;
    dw InstList_CrocomireTongue_NearSpikeWallCharge_1                    ;A4BF3A;

InstList_Crocomire_BackOffFromSpikeWall:
    dw $0006,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_B        ;A4BF3C;
    dw Instruction_Crocomire_MoveRight4Pixels_SpawnBigDustCloud          ;A4BF40;
    dw $0007,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_A        ;A4BF42;
    dw Instruction_Crocomire_MoveRight4Pixels                            ;A4BF46;
    dw $0007,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_9        ;A4BF48;
    dw Instruction_Crocomire_MoveRight4Pixels                            ;A4BF4C;
    dw $0006,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_8        ;A4BF4E;
    dw Instruction_Crocomire_MoveRight4Pixels_SpawnBigDustCloud          ;A4BF52;
    dw $0007,ExtendedSpritemap_Crocomire_ChargeForward_StepBack_7        ;A4BF54;
    dw Instruction_Crocomire_ShakeScreen                                 ;A4BF58;
    dw Instruction_Crocomire_MoveRight4Pixels                            ;A4BF5A;
    dw Instruction_Crocomire_FightAI                                     ;A4BF5C;
    dw Instruction_Common_GotoY                                          ;A4BF5E;
    dw InstList_Crocomire_BackOffFromSpikeWall                           ;A4BF60;

InstList_Crocomire_Sleep:
    dw Instruction_Common_Sleep                                          ;A4BF62;

InstList_Crocomire_Melting1_TopRow:
    dw $7FFF,ExtendedSpritemap_Crocomire_25                              ;A4BF64;
    dw Instruction_Common_GotoY                                          ;A4BF68;
    dw InstList_Crocomire_Melting1_TopRow                                ;A4BF6A;

InstList_Crocomire_Melting1_Top2Rows:
    dw $7FFF,ExtendedSpritemap_Crocomire_26                              ;A4BF6C;
    dw Instruction_Common_Sleep                                          ;A4BF70;

InstList_Crocomire_Melting1_Top3Rows:
    dw $7FFF,ExtendedSpritemap_Crocomire_27                              ;A4BF72;
    dw Instruction_CommonA4_Sleep                                        ;A4BF76;

InstList_Crocomire_Melting1_Top4Rows:
    dw $7FFF,ExtendedSpritemap_Crocomire_28                              ;A4BF78;
    dw Instruction_CommonA4_Sleep                                        ;A4BF7C;

InstList_Crocomire_Melting2_TopRow:
    dw $7FFF,ExtendedSpritemap_Crocomire_29                              ;A4BF7E;
    dw Instruction_Common_GotoY                                          ;A4BF82;
    dw InstList_Crocomire_Melting2_TopRow                                ;A4BF84;

InstList_Crocomire_Melting2_Top2Rows:
    dw $7FFF,ExtendedSpritemap_Crocomire_2A                              ;A4BF86;
    dw Instruction_Common_Sleep                                          ;A4BF8A;

InstList_Crocomire_Melting2_Top3Rows:
    dw $7FFF,ExtendedSpritemap_Crocomire_2B                              ;A4BF8C;
    dw Instruction_Common_Sleep                                          ;A4BF90;

InstList_Crocomire_Melting2_Top4Rows:
    dw $7FFF,ExtendedSpritemap_Crocomire_2C                              ;A4BF92;
    dw Instruction_CommonA4_Sleep                                        ;A4BF96;

InstList_CrocomireTongue_Melting:
    dw $0004,ExtendedSpritemap_Crocomire_2D                              ;A4BF98;
    dw $0004,ExtendedSpritemap_Crocomire_2E                              ;A4BF9C;
    dw $0004,ExtendedSpritemap_Crocomire_2F                              ;A4BFA0;
    dw $0004,ExtendedSpritemap_Crocomire_30                              ;A4BFA4;
    dw $0004,ExtendedSpritemap_Crocomire_31                              ;A4BFA8;
    dw Instruction_Common_GotoY                                          ;A4BFAC;
    dw InstList_CrocomireTongue_Melting                                  ;A4BFAE;

InstList_CrocomireTongue_BridgeCollapsed:
    dw $0004,ExtendedSpritemap_Crocomire_8                               ;A4BFB0;
    dw $0004,ExtendedSpritemap_Crocomire_7                               ;A4BFB4;
    dw Instruction_Crocomire_QueueCrySFX                                 ;A4BFB8;
    dw $0004,ExtendedSpritemap_Crocomire_8                               ;A4BFBA;
    dw $0004,ExtendedSpritemap_Crocomire_9                               ;A4BFBE;
    dw Instruction_Common_Sleep                                          ;A4BFC2;

ExtendedSpritemap_Crocomire_ChargeForward_StepBack_0:
    dw $0006                                                             ;A4BFC4;
    dw $0003,$000B
    dw Spritemap_Crocomire_3                                             ;A4BFCA;
    dw Hitbox_Crocomire_3                                                ;A4BFCC;
    dw $0000,$0026                                                       ;A4BFCE;
    dw Spritemap_Crocomire_B                                             ;A4BFD2;
    dw Hitbox_Crocomire_5                                                ;A4BFD4;
    dw $FFE3,$0026                                                       ;A4BFD6;
    dw Spritemap_Crocomire_5                                             ;A4BFDA;
    dw Hitbox_Crocomire_5                                                ;A4BFDC;
    dw $0000,$0000                                                       ;A4BFDE;
    dw ExtendedTilemap_Crocomire_3                                       ;A4BFE2;
    dw Hitbox_Crocomire_F                                                ;A4BFE4;
    dw $0000,$0000                                                       ;A4BFE6;
    dw ExtendedTilemap_Crocomire_9                                       ;A4BFEA;
    dw Hitbox_Crocomire_F                                                ;A4BFEC;
    dw $0000,$FFFF                                                       ;A4BFEE;
    dw ExtendedTilemap_Crocomire_6                                       ;A4BFF2;
    dw Hitbox_Crocomire_F                                                ;A4BFF4;

ExtendedSpritemap_Crocomire_ChargeForward_StepBack_1:
    dw $0006                                                             ;A4BFF6;
    dw $0001,$000B
    dw Spritemap_Crocomire_4                                             ;A4BFFC;
    dw Hitbox_Crocomire_4                                                ;A4BFFE;
    dw $0000,$0026                                                       ;A4C000;
    dw Spritemap_Crocomire_C                                             ;A4C004;
    dw Hitbox_Crocomire_5                                                ;A4C006;
    dw $FFE3,$0026                                                       ;A4C008;
    dw Spritemap_Crocomire_6                                             ;A4C00C;
    dw Hitbox_Crocomire_5                                                ;A4C00E;
    dw $0000,$FFFE                                                       ;A4C010;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C014;
    dw Hitbox_Crocomire_F                                                ;A4C016;
    dw $0000,$FFFE                                                       ;A4C018;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C01C;
    dw Hitbox_Crocomire_F                                                ;A4C01E;
    dw $0000,$FFFE                                                       ;A4C020;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C024;
    dw Hitbox_Crocomire_F                                                ;A4C026;

ExtendedSpritemap_Crocomire_ChargeForward_StepBack_2:
    dw $0006                                                             ;A4C028;
    dw $0000,$0008
    dw Spritemap_Crocomire_1                                             ;A4C02E;
    dw Hitbox_Crocomire_1                                                ;A4C030;
    dw $0000,$0026                                                       ;A4C032;
    dw Spritemap_Crocomire_D                                             ;A4C036;
    dw Hitbox_Crocomire_5                                                ;A4C038;
    dw $FFE3,$0026                                                       ;A4C03A;
    dw Spritemap_Crocomire_7                                             ;A4C03E;
    dw Hitbox_Crocomire_5                                                ;A4C040;
    dw $0000,$FFFE                                                       ;A4C042;
    dw ExtendedTilemap_Crocomire_5                                       ;A4C046;
    dw Hitbox_Crocomire_F                                                ;A4C048;
    dw $0000,$FFFE                                                       ;A4C04A;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C04E;
    dw Hitbox_Crocomire_F                                                ;A4C050;
    dw $0000,$FFFE                                                       ;A4C052;
    dw ExtendedTilemap_Crocomire_8                                       ;A4C056;
    dw Hitbox_Crocomire_F                                                ;A4C058;

ExtendedSpritemap_Crocomire_ChargeForward_StepBack_3:
    dw $0006                                                             ;A4C05A;
    dw $0001,$000B
    dw Spritemap_Crocomire_0                                             ;A4C060;
    dw Hitbox_Crocomire_0                                                ;A4C062;
    dw $0000,$0026                                                       ;A4C064;
    dw Spritemap_Crocomire_E                                             ;A4C068;
    dw Hitbox_Crocomire_5                                                ;A4C06A;
    dw $FFE3,$0026                                                       ;A4C06C;
    dw Spritemap_Crocomire_8                                             ;A4C070;
    dw Hitbox_Crocomire_5                                                ;A4C072;
    dw $0000,$FFFF                                                       ;A4C074;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C078;
    dw Hitbox_Crocomire_F                                                ;A4C07A;
    dw $0000,$FFFF                                                       ;A4C07C;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C080;
    dw Hitbox_Crocomire_F                                                ;A4C082;
    dw $0000,$FFFE                                                       ;A4C084;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C088;
    dw Hitbox_Crocomire_F                                                ;A4C08A;

ExtendedSpritemap_Crocomire_ChargeForward_StepBack_4:
    dw $0006                                                             ;A4C08C;
    dw $0001,$000A
    dw Spritemap_Crocomire_0                                             ;A4C092;
    dw Hitbox_Crocomire_0                                                ;A4C094;
    dw $0000,$0026                                                       ;A4C096;
    dw Spritemap_Crocomire_F                                             ;A4C09A;
    dw Hitbox_Crocomire_5                                                ;A4C09C;
    dw $FFE3,$0026                                                       ;A4C09E;
    dw Spritemap_Crocomire_9                                             ;A4C0A2;
    dw Hitbox_Crocomire_5                                                ;A4C0A4;
    dw $0000,$FFFE                                                       ;A4C0A6;
    dw ExtendedTilemap_Crocomire_3                                       ;A4C0AA;
    dw Hitbox_Crocomire_F                                                ;A4C0AC;
    dw $0000,$FFFE                                                       ;A4C0AE;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C0B2;
    dw Hitbox_Crocomire_F                                                ;A4C0B4;
    dw $0000,$FFFE                                                       ;A4C0B6;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C0BA;
    dw Hitbox_Crocomire_F                                                ;A4C0BC;

ExtendedSpritemap_Crocomire_ChargeForward_StepBack_5:
    dw $0006                                                             ;A4C0BE;
    dw $0001,$000A
    dw Spritemap_Crocomire_2                                             ;A4C0C4;
    dw Hitbox_Crocomire_2                                                ;A4C0C6;
    dw $0000,$0026                                                       ;A4C0C8;
    dw Spritemap_Crocomire_10                                            ;A4C0CC;
    dw Hitbox_Crocomire_5                                                ;A4C0CE;
    dw $FFE3,$0026                                                       ;A4C0D0;
    dw Spritemap_Crocomire_A                                             ;A4C0D4;
    dw Hitbox_Crocomire_5                                                ;A4C0D6;
    dw $0000,$FFFE                                                       ;A4C0D8;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C0DC;
    dw Hitbox_Crocomire_F                                                ;A4C0DE;
    dw $0000,$FFFE                                                       ;A4C0E0;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C0E4;
    dw Hitbox_Crocomire_F                                                ;A4C0E6;
    dw $0000,$FFFE                                                       ;A4C0E8;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C0EC;
    dw Hitbox_Crocomire_F                                                ;A4C0EE;

ExtendedSpritemap_Crocomire_ChargeForward_StepBack_6:
    dw $0006                                                             ;A4C0F0;
    dw $0001,$000A
    dw Spritemap_Crocomire_3                                             ;A4C0F6;
    dw Hitbox_Crocomire_3                                                ;A4C0F8;
    dw $0000,$0026                                                       ;A4C0FA;
    dw Spritemap_Crocomire_5                                             ;A4C0FE;
    dw Hitbox_Crocomire_5                                                ;A4C100;
    dw $FFE3,$0026                                                       ;A4C102;
    dw Spritemap_Crocomire_B                                             ;A4C106;
    dw Hitbox_Crocomire_5                                                ;A4C108;
    dw $0000,$FFFF                                                       ;A4C10A;
    dw ExtendedTilemap_Crocomire_5                                       ;A4C10E;
    dw Hitbox_Crocomire_F                                                ;A4C110;
    dw $0000,$FFFF                                                       ;A4C112;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C116;
    dw Hitbox_Crocomire_F                                                ;A4C118;
    dw $0000,$FFFF                                                       ;A4C11A;
    dw ExtendedTilemap_Crocomire_8                                       ;A4C11E;
    dw Hitbox_Crocomire_F                                                ;A4C120;

ExtendedSpritemap_Crocomire_ChargeForward_StepBack_7:
    dw $0006                                                             ;A4C122;
    dw $0001,$000A
    dw Spritemap_Crocomire_4                                             ;A4C128;
    dw Hitbox_Crocomire_4                                                ;A4C12A;
    dw $0000,$0026                                                       ;A4C12C;
    dw Spritemap_Crocomire_6                                             ;A4C130;
    dw Hitbox_Crocomire_5                                                ;A4C132;
    dw $FFE3,$0026                                                       ;A4C134;
    dw Spritemap_Crocomire_C                                             ;A4C138;
    dw Hitbox_Crocomire_5                                                ;A4C13A;
    dw $0000,$FFFF                                                       ;A4C13C;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C140;
    dw Hitbox_Crocomire_F                                                ;A4C142;
    dw $0000,$FFFF                                                       ;A4C144;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C148;
    dw Hitbox_Crocomire_F                                                ;A4C14A;
    dw $0000,$FFFF                                                       ;A4C14C;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C150;
    dw Hitbox_Crocomire_F                                                ;A4C152;

ExtendedSpritemap_Crocomire_ChargeForward_StepBack_8:
    dw $0006                                                             ;A4C154;
    dw $0001,$000A
    dw Spritemap_Crocomire_1                                             ;A4C15A;
    dw Hitbox_Crocomire_1                                                ;A4C15C;
    dw $0000,$0026                                                       ;A4C15E;
    dw Spritemap_Crocomire_7                                             ;A4C162;
    dw Hitbox_Crocomire_5                                                ;A4C164;
    dw $FFE3,$0026                                                       ;A4C166;
    dw Spritemap_Crocomire_D                                             ;A4C16A;
    dw Hitbox_Crocomire_5                                                ;A4C16C;
    dw $0000,$0000                                                       ;A4C16E;
    dw ExtendedTilemap_Crocomire_3                                       ;A4C172;
    dw Hitbox_Crocomire_F                                                ;A4C174;
    dw $0000,$0000                                                       ;A4C176;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C17A;
    dw Hitbox_Crocomire_F                                                ;A4C17C;
    dw $0000,$0000                                                       ;A4C17E;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C182;
    dw Hitbox_Crocomire_F                                                ;A4C184;

ExtendedSpritemap_Crocomire_ChargeForward_StepBack_9:
    dw $0006                                                             ;A4C186;
    dw $0001,$000C
    dw Spritemap_Crocomire_0                                             ;A4C18C;
    dw Hitbox_Crocomire_0                                                ;A4C18E;
    dw $0000,$0026                                                       ;A4C190;
    dw Spritemap_Crocomire_8                                             ;A4C194;
    dw Hitbox_Crocomire_5                                                ;A4C196;
    dw $FFE3,$0026                                                       ;A4C198;
    dw Spritemap_Crocomire_E                                             ;A4C19C;
    dw Hitbox_Crocomire_5                                                ;A4C19E;
    dw $0000,$0000                                                       ;A4C1A0;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C1A4;
    dw Hitbox_Crocomire_F                                                ;A4C1A6;
    dw $0000,$0000                                                       ;A4C1A8;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C1AC;
    dw Hitbox_Crocomire_F                                                ;A4C1AE;
    dw $0000,$0000                                                       ;A4C1B0;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C1B4;
    dw Hitbox_Crocomire_F                                                ;A4C1B6;

ExtendedSpritemap_Crocomire_ChargeForward_StepBack_A:
    dw $0006                                                             ;A4C1B8;
    dw $0001,$000D
    dw Spritemap_Crocomire_0                                             ;A4C1BE;
    dw Hitbox_Crocomire_0                                                ;A4C1C0;
    dw $0000,$0026                                                       ;A4C1C2;
    dw Spritemap_Crocomire_9                                             ;A4C1C6;
    dw Hitbox_Crocomire_5                                                ;A4C1C8;
    dw $FFE3,$0026                                                       ;A4C1CA;
    dw Spritemap_Crocomire_F                                             ;A4C1CE;
    dw Hitbox_Crocomire_5                                                ;A4C1D0;
    dw $0000,$0000                                                       ;A4C1D2;
    dw ExtendedTilemap_Crocomire_5                                       ;A4C1D6;
    dw Hitbox_Crocomire_F                                                ;A4C1D8;
    dw $0000,$0000                                                       ;A4C1DA;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C1DE;
    dw Hitbox_Crocomire_F                                                ;A4C1E0;
    dw $0000,$0000                                                       ;A4C1E2;
    dw ExtendedTilemap_Crocomire_8                                       ;A4C1E6;
    dw Hitbox_Crocomire_F                                                ;A4C1E8;

ExtendedSpritemap_Crocomire_ChargeForward_StepBack_B:
    dw $0006                                                             ;A4C1EA;
    dw $0001,$000B
    dw Spritemap_Crocomire_2                                             ;A4C1F0;
    dw Hitbox_Crocomire_2                                                ;A4C1F2;
    dw $0000,$0026                                                       ;A4C1F4;
    dw Spritemap_Crocomire_A                                             ;A4C1F8;
    dw Hitbox_Crocomire_5                                                ;A4C1FA;
    dw $FFE3,$0026                                                       ;A4C1FC;
    dw Spritemap_Crocomire_10                                            ;A4C200;
    dw Hitbox_Crocomire_5                                                ;A4C202;
    dw $0000,$0000                                                       ;A4C204;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C208;
    dw Hitbox_Crocomire_F                                                ;A4C20A;
    dw $0000,$0000                                                       ;A4C20C;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C210;
    dw Hitbox_Crocomire_F                                                ;A4C212;
    dw $0000,$0000                                                       ;A4C214;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C218;
    dw Hitbox_Crocomire_F                                                ;A4C21A;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_ExtendedSpritemap_Crocomire_A4C21C:
    dw $0006                                                             ;A4C21C;
    dw $0001,$000A
    dw Spritemap_Crocomire_0                                             ;A4C222;
    dw Hitbox_Crocomire_0                                                ;A4C224;
    dw $0000,$0029                                                       ;A4C226;
    dw Spritemap_Crocomire_11                                            ;A4C22A;
    dw Hitbox_Crocomire_5                                                ;A4C22C;
    dw $FFE3,$0029                                                       ;A4C22E;
    dw Spritemap_Crocomire_11                                            ;A4C232;
    dw Hitbox_Crocomire_5                                                ;A4C234;
    dw $0000,$FFFE                                                       ;A4C236;
    dw ExtendedTilemap_Crocomire_3                                       ;A4C23A;
    dw Hitbox_Crocomire_F                                                ;A4C23C;
    dw $0000,$0000                                                       ;A4C23E;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C242;
    dw Hitbox_Crocomire_F                                                ;A4C244;
    dw $0000,$0000                                                       ;A4C246;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C24A;
    dw Hitbox_Crocomire_F                                                ;A4C24C;

UNUSED_ExtendedSpritemap_Crocomire_A4C24E:
    dw $0006                                                             ;A4C24E;
    dw $0001,$0008
    dw Spritemap_Crocomire_0                                             ;A4C254;
    dw Hitbox_Crocomire_0                                                ;A4C256;
    dw $0000,$0029                                                       ;A4C258;
    dw Spritemap_Crocomire_12                                            ;A4C25C;
    dw Hitbox_Crocomire_5                                                ;A4C25E;
    dw $FFE3,$0029                                                       ;A4C260;
    dw Spritemap_Crocomire_12                                            ;A4C264;
    dw Hitbox_Crocomire_5                                                ;A4C266;
    dw $0000,$FFFC                                                       ;A4C268;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C26C;
    dw Hitbox_Crocomire_F                                                ;A4C26E;
    dw $0000,$0000                                                       ;A4C270;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C274;
    dw Hitbox_Crocomire_F                                                ;A4C276;
    dw $0000,$0000                                                       ;A4C278;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C27C;
    dw Hitbox_Crocomire_F                                                ;A4C27E;

UNUSED_ExtendedSpritemap_Crocomire_A4C280:
    dw $0006                                                             ;A4C280;
    dw $0001,$0006
    dw Spritemap_Crocomire_0                                             ;A4C286;
    dw Hitbox_Crocomire_0                                                ;A4C288;
    dw $0000,$0029                                                       ;A4C28A;
    dw Spritemap_Crocomire_13                                            ;A4C28E;
    dw Hitbox_Crocomire_5                                                ;A4C290;
    dw $FFE3,$0029                                                       ;A4C292;
    dw Spritemap_Crocomire_13                                            ;A4C296;
    dw Hitbox_Crocomire_5                                                ;A4C298;
    dw $0000,$FFFA                                                       ;A4C29A;
    dw ExtendedTilemap_Crocomire_5                                       ;A4C29E;
    dw Hitbox_Crocomire_F                                                ;A4C2A0;
    dw $0000,$0000                                                       ;A4C2A2;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C2A6;
    dw Hitbox_Crocomire_F                                                ;A4C2A8;
    dw $0000,$0000                                                       ;A4C2AA;
    dw ExtendedTilemap_Crocomire_8                                       ;A4C2AE;
    dw Hitbox_Crocomire_F                                                ;A4C2B0;

UNUSED_ExtendedSpritemap_Crocomire_A4C2B2:
    dw $0007                                                             ;A4C2B2;
    dw $0000,$000B
    dw Spritemap_Crocomire_2                                             ;A4C2B8;
    dw Hitbox_Crocomire_2                                                ;A4C2BA;
    dw $FFFD,$FFE4                                                       ;A4C2BC;
    dw Spritemap_Crocomire_1D                                            ;A4C2C0;
    dw Hitbox_Crocomire_B                                                ;A4C2C2;
    dw $0000,$0029                                                       ;A4C2C4;
    dw Spritemap_Crocomire_13                                            ;A4C2C8;
    dw Hitbox_Crocomire_5                                                ;A4C2CA;
    dw $FFE3,$0029                                                       ;A4C2CC;
    dw Spritemap_Crocomire_13                                            ;A4C2D0;
    dw Hitbox_Crocomire_5                                                ;A4C2D2;
    dw $0000,$0000                                                       ;A4C2D4;
    dw ExtendedTilemap_Crocomire_2                                       ;A4C2D8;
    dw Hitbox_Crocomire_E                                                ;A4C2DA;
    dw $0000,$0000                                                       ;A4C2DC;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C2E0;
    dw Hitbox_Crocomire_10                                               ;A4C2E2;
    dw $0000,$0000                                                       ;A4C2E4;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C2E8;
    dw Hitbox_Crocomire_F                                                ;A4C2EA;
endif ; !FEATURE_KEEP_UNREFERENCED

ExtendedSpritemap_Crocomire_0:
    dw $0007                                                             ;A4C2EC;
    dw $0000,$000B
    dw Spritemap_Crocomire_2                                             ;A4C2F2;
    dw Hitbox_Crocomire_2                                                ;A4C2F4;
    dw $FFFD,$FFE4                                                       ;A4C2F6;
    dw Spritemap_Crocomire_1C                                            ;A4C2FA;
    dw Hitbox_Crocomire_B                                                ;A4C2FC;
    dw $0000,$0029                                                       ;A4C2FE;
    dw Spritemap_Crocomire_13                                            ;A4C302;
    dw Hitbox_Crocomire_5                                                ;A4C304;
    dw $FFE3,$0029                                                       ;A4C306;
    dw Spritemap_Crocomire_13                                            ;A4C30A;
    dw Hitbox_Crocomire_5                                                ;A4C30C;
    dw $0000,$0000                                                       ;A4C30E;
    dw ExtendedTilemap_Crocomire_2                                       ;A4C312;
    dw Hitbox_Crocomire_E                                                ;A4C314;
    dw $0000,$0000                                                       ;A4C316;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C31A;
    dw Hitbox_Crocomire_10                                               ;A4C31C;
    dw $0000,$0000                                                       ;A4C31E;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C322;
    dw Hitbox_Crocomire_F                                                ;A4C324;

ExtendedSpritemap_Crocomire_1:
    dw $0007                                                             ;A4C326;
    dw $0000,$000B
    dw Spritemap_Crocomire_2                                             ;A4C32C;
    dw Hitbox_Crocomire_2                                                ;A4C32E;
    dw $FFFD,$FFE4                                                       ;A4C330;
    dw Spritemap_Crocomire_1D                                            ;A4C334;
    dw Hitbox_Crocomire_B                                                ;A4C336;
    dw $0000,$0029                                                       ;A4C338;
    dw Spritemap_Crocomire_13                                            ;A4C33C;
    dw Hitbox_Crocomire_5                                                ;A4C33E;
    dw $FFE3,$0029                                                       ;A4C340;
    dw Spritemap_Crocomire_13                                            ;A4C344;
    dw Hitbox_Crocomire_5                                                ;A4C346;
    dw $0000,$0000                                                       ;A4C348;
    dw ExtendedTilemap_Crocomire_2                                       ;A4C34C;
    dw Hitbox_Crocomire_E                                                ;A4C34E;
    dw $0000,$0000                                                       ;A4C350;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C354;
    dw Hitbox_Crocomire_10                                               ;A4C356;
    dw $0000,$0000                                                       ;A4C358;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C35C;
    dw Hitbox_Crocomire_F                                                ;A4C35E;

ExtendedSpritemap_Crocomire_2:
    dw $0007                                                             ;A4C360;
    dw $0000,$000B
    dw Spritemap_Crocomire_2                                             ;A4C366;
    dw Hitbox_Crocomire_2                                                ;A4C368;
    dw $FFFD,$FFE4                                                       ;A4C36A;
    dw Spritemap_Crocomire_1E                                            ;A4C36E;
    dw Hitbox_Crocomire_B                                                ;A4C370;
    dw $0000,$0029                                                       ;A4C372;
    dw Spritemap_Crocomire_13                                            ;A4C376;
    dw Hitbox_Crocomire_5                                                ;A4C378;
    dw $FFE3,$0029                                                       ;A4C37A;
    dw Spritemap_Crocomire_13                                            ;A4C37E;
    dw Hitbox_Crocomire_5                                                ;A4C380;
    dw $0000,$0000                                                       ;A4C382;
    dw ExtendedTilemap_Crocomire_2                                       ;A4C386;
    dw Hitbox_Crocomire_E                                                ;A4C388;
    dw $0000,$0000                                                       ;A4C38A;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C38E;
    dw Hitbox_Crocomire_10                                               ;A4C390;
    dw $0000,$0000                                                       ;A4C392;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C396;
    dw Hitbox_Crocomire_F                                                ;A4C398;

ExtendedSpritemap_Crocomire_3:
    dw $0007                                                             ;A4C39A;
    dw $0000,$000B
    dw Spritemap_Crocomire_2                                             ;A4C3A0;
    dw Hitbox_Crocomire_2                                                ;A4C3A2;
    dw $FFFD,$FFE4                                                       ;A4C3A4;
    dw Spritemap_Crocomire_1F                                            ;A4C3A8;
    dw Hitbox_Crocomire_B                                                ;A4C3AA;
    dw $0000,$0029                                                       ;A4C3AC;
    dw Spritemap_Crocomire_13                                            ;A4C3B0;
    dw Hitbox_Crocomire_5                                                ;A4C3B2;
    dw $FFE3,$0029                                                       ;A4C3B4;
    dw Spritemap_Crocomire_13                                            ;A4C3B8;
    dw Hitbox_Crocomire_5                                                ;A4C3BA;
    dw $0000,$0000                                                       ;A4C3BC;
    dw ExtendedTilemap_Crocomire_2                                       ;A4C3C0;
    dw Hitbox_Crocomire_E                                                ;A4C3C2;
    dw $0000,$0000                                                       ;A4C3C4;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C3C8;
    dw Hitbox_Crocomire_10                                               ;A4C3CA;
    dw $0000,$0000                                                       ;A4C3CC;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C3D0;
    dw Hitbox_Crocomire_F                                                ;A4C3D2;

ExtendedSpritemap_Crocomire_4:
    dw $0007                                                             ;A4C3D4;
    dw $0000,$000B
    dw Spritemap_Crocomire_2                                             ;A4C3DA;
    dw Hitbox_Crocomire_2                                                ;A4C3DC;
    dw $FFFD,$FFE4                                                       ;A4C3DE;
    dw Spritemap_Crocomire_20                                            ;A4C3E2;
    dw Hitbox_Crocomire_B                                                ;A4C3E4;
    dw $0000,$0029                                                       ;A4C3E6;
    dw Spritemap_Crocomire_13                                            ;A4C3EA;
    dw Hitbox_Crocomire_5                                                ;A4C3EC;
    dw $FFE3,$0029                                                       ;A4C3EE;
    dw Spritemap_Crocomire_13                                            ;A4C3F2;
    dw Hitbox_Crocomire_5                                                ;A4C3F4;
    dw $0000,$0000                                                       ;A4C3F6;
    dw ExtendedTilemap_Crocomire_2                                       ;A4C3FA;
    dw Hitbox_Crocomire_E                                                ;A4C3FC;
    dw $0000,$0000                                                       ;A4C3FE;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C402;
    dw Hitbox_Crocomire_10                                               ;A4C404;
    dw $0000,$0000                                                       ;A4C406;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C40A;
    dw Hitbox_Crocomire_F                                                ;A4C40C;

ExtendedSpritemap_Crocomire_5:
    dw $0007                                                             ;A4C40E;
    dw $0000,$000B
    dw Spritemap_Crocomire_2                                             ;A4C414;
    dw Hitbox_Crocomire_2                                                ;A4C416;
    dw $FFFD,$FFE4                                                       ;A4C418;
    dw Spritemap_Crocomire_21                                            ;A4C41C;
    dw Hitbox_Crocomire_B                                                ;A4C41E;
    dw $0000,$0029                                                       ;A4C420;
    dw Spritemap_Crocomire_13                                            ;A4C424;
    dw Hitbox_Crocomire_5                                                ;A4C426;
    dw $FFE3,$0029                                                       ;A4C428;
    dw Spritemap_Crocomire_13                                            ;A4C42C;
    dw Hitbox_Crocomire_5                                                ;A4C42E;
    dw $0000,$0000                                                       ;A4C430;
    dw ExtendedTilemap_Crocomire_2                                       ;A4C434;
    dw Hitbox_Crocomire_E                                                ;A4C436;
    dw $0000,$0000                                                       ;A4C438;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C43C;
    dw Hitbox_Crocomire_10                                               ;A4C43E;
    dw $0000,$0000                                                       ;A4C440;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C444;
    dw Hitbox_Crocomire_F                                                ;A4C446;

ExtendedSpritemap_Crocomire_6:
    dw $0006                                                             ;A4C448;
    dw $0000,$000B
    dw Spritemap_Crocomire_2                                             ;A4C44E;
    dw Hitbox_Crocomire_2                                                ;A4C450;
    dw $0000,$0029                                                       ;A4C452;
    dw Spritemap_Crocomire_13                                            ;A4C456;
    dw Hitbox_Crocomire_5                                                ;A4C458;
    dw $FFE3,$0029                                                       ;A4C45A;
    dw Spritemap_Crocomire_13                                            ;A4C45E;
    dw Hitbox_Crocomire_5                                                ;A4C460;
    dw $0000,$0000                                                       ;A4C462;
    dw ExtendedTilemap_Crocomire_2                                       ;A4C466;
    dw Hitbox_Crocomire_E                                                ;A4C468;
    dw $0000,$0000                                                       ;A4C46A;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C46E;
    dw Hitbox_Crocomire_10                                               ;A4C470;
    dw $0000,$0000                                                       ;A4C472;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C476;
    dw Hitbox_Crocomire_F                                                ;A4C478;

ExtendedSpritemap_Crocomire_MovingClaws_0:
    dw $0006                                                             ;A4C47A;
    dw $0001,$000B
    dw Spritemap_Crocomire_15                                            ;A4C480;
    dw Hitbox_Crocomire_7                                                ;A4C482;
    dw $0000,$0025                                                       ;A4C484;
    dw Spritemap_Crocomire_11                                            ;A4C488;
    dw Hitbox_Crocomire_5                                                ;A4C48A;
    dw $FFE3,$0029                                                       ;A4C48C;
    dw Spritemap_Crocomire_13                                            ;A4C490;
    dw Hitbox_Crocomire_5                                                ;A4C492;
    dw $0000,$0000                                                       ;A4C494;
    dw ExtendedTilemap_Crocomire_3                                       ;A4C498;
    dw Hitbox_Crocomire_F                                                ;A4C49A;
    dw $0000,$0000                                                       ;A4C49C;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C4A0;
    dw Hitbox_Crocomire_F                                                ;A4C4A2;
    dw $0000,$0000                                                       ;A4C4A4;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C4A8;
    dw Hitbox_Crocomire_F                                                ;A4C4AA;

ExtendedSpritemap_Crocomire_MovingClaws_1:
    dw $0006                                                             ;A4C4AC;
    dw $0000,$0008
    dw Spritemap_Crocomire_16                                            ;A4C4B2;
    dw Hitbox_Crocomire_8                                                ;A4C4B4;
    dw $0000,$0027                                                       ;A4C4B6;
    dw Spritemap_Crocomire_12                                            ;A4C4BA;
    dw Hitbox_Crocomire_5                                                ;A4C4BC;
    dw $FFE3,$0027                                                       ;A4C4BE;
    dw Spritemap_Crocomire_12                                            ;A4C4C2;
    dw Hitbox_Crocomire_5                                                ;A4C4C4;
    dw $0000,$FFFE                                                       ;A4C4C6;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C4CA;
    dw Hitbox_Crocomire_F                                                ;A4C4CC;
    dw $0000,$FFFE                                                       ;A4C4CE;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C4D2;
    dw Hitbox_Crocomire_F                                                ;A4C4D4;
    dw $0000,$FFFE                                                       ;A4C4D6;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C4DA;
    dw Hitbox_Crocomire_F                                                ;A4C4DC;

ExtendedSpritemap_Crocomire_MovingClaws_2:
    dw $0006                                                             ;A4C4DE;
    dw $0001,$0008
    dw Spritemap_Crocomire_14                                            ;A4C4E4;
    dw Hitbox_Crocomire_6                                                ;A4C4E6;
    dw $0000,$0029                                                       ;A4C4E8;
    dw Spritemap_Crocomire_13                                            ;A4C4EC;
    dw Hitbox_Crocomire_5                                                ;A4C4EE;
    dw $FFE3,$0020                                                       ;A4C4F0;
    dw Spritemap_Crocomire_11                                            ;A4C4F4;
    dw Hitbox_Crocomire_5                                                ;A4C4F6;
    dw $0000,$FFFC                                                       ;A4C4F8;
    dw ExtendedTilemap_Crocomire_5                                       ;A4C4FC;
    dw Hitbox_Crocomire_F                                                ;A4C4FE;
    dw $0000,$FFFC                                                       ;A4C500;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C504;
    dw Hitbox_Crocomire_F                                                ;A4C506;
    dw $0000,$FFFC                                                       ;A4C508;
    dw ExtendedTilemap_Crocomire_8                                       ;A4C50C;
    dw Hitbox_Crocomire_F                                                ;A4C50E;

ExtendedSpritemap_Crocomire_MovingClaws_3:
    dw $0006                                                             ;A4C510;
    dw $0000,$000A
    dw Spritemap_Crocomire_1                                             ;A4C516;
    dw Hitbox_Crocomire_1                                                ;A4C518;
    dw $0000,$0027                                                       ;A4C51A;
    dw Spritemap_Crocomire_12                                            ;A4C51E;
    dw Hitbox_Crocomire_5                                                ;A4C520;
    dw $FFE3,$0025                                                       ;A4C522;
    dw Spritemap_Crocomire_12                                            ;A4C526;
    dw Hitbox_Crocomire_5                                                ;A4C528;
    dw $0000,$FFFE                                                       ;A4C52A;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C52E;
    dw Hitbox_Crocomire_F                                                ;A4C530;
    dw $0000,$FFFE                                                       ;A4C532;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C536;
    dw Hitbox_Crocomire_F                                                ;A4C538;
    dw $0000,$FFFE                                                       ;A4C53A;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C53E;
    dw Hitbox_Crocomire_F                                                ;A4C540;

ExtendedSpritemap_Crocomire_MovingClaws_4:
    dw $0006                                                             ;A4C542;
    dw $0001,$000C
    dw Spritemap_Crocomire_0                                             ;A4C548;
    dw Hitbox_Crocomire_0                                                ;A4C54A;
    dw $0000,$0025                                                       ;A4C54C;
    dw Spritemap_Crocomire_11                                            ;A4C550;
    dw Hitbox_Crocomire_5                                                ;A4C552;
    dw $FFE3,$0028                                                       ;A4C554;
    dw Spritemap_Crocomire_13                                            ;A4C558;
    dw Hitbox_Crocomire_5                                                ;A4C55A;
    dw $0000,$FFFF                                                       ;A4C55C;
    dw ExtendedTilemap_Crocomire_3                                       ;A4C560;
    dw Hitbox_Crocomire_F                                                ;A4C562;
    dw $0000,$FFFF                                                       ;A4C564;
    dw ExtendedTilemap_Crocomire_9                                       ;A4C568;
    dw Hitbox_Crocomire_F                                                ;A4C56A;
    dw $0000,$FFFF                                                       ;A4C56C;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C570;
    dw Hitbox_Crocomire_F                                                ;A4C572;

ExtendedSpritemap_Crocomire_7:
    dw $0007                                                             ;A4C574;
    dw $0001,$000B
    dw Spritemap_Crocomire_2                                             ;A4C57A;
    dw Hitbox_Crocomire_2                                                ;A4C57C;
    dw $0000,$0026                                                       ;A4C57E;
    dw Spritemap_Crocomire_A                                             ;A4C582;
    dw Hitbox_Crocomire_5                                                ;A4C584;
    dw $FFE3,$0026                                                       ;A4C586;
    dw Spritemap_Crocomire_10                                            ;A4C58A;
    dw Hitbox_Crocomire_5                                                ;A4C58C;
    dw $0000,$0000                                                       ;A4C58E;
    dw ExtendedTilemap_Crocomire_2                                       ;A4C592;
    dw Hitbox_Crocomire_E                                                ;A4C594;
    dw $0000,$0000                                                       ;A4C596;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C59A;
    dw Hitbox_Crocomire_F                                                ;A4C59C;
    dw $0000,$0000                                                       ;A4C59E;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C5A2;
    dw Hitbox_Crocomire_10                                               ;A4C5A4;
    dw $0000,$0000                                                       ;A4C5A6;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C5AA;
    dw Hitbox_Crocomire_F                                                ;A4C5AC;

ExtendedSpritemap_Crocomire_8:
    dw $0007                                                             ;A4C5AE;
    dw $0001,$000B
    dw Spritemap_Crocomire_2                                             ;A4C5B4;
    dw Hitbox_Crocomire_2                                                ;A4C5B6;
    dw $0000,$0026                                                       ;A4C5B8;
    dw Spritemap_Crocomire_A                                             ;A4C5BC;
    dw Hitbox_Crocomire_5                                                ;A4C5BE;
    dw $FFE3,$0026                                                       ;A4C5C0;
    dw Spritemap_Crocomire_10                                            ;A4C5C4;
    dw Hitbox_Crocomire_5                                                ;A4C5C6;
    dw $0000,$0000                                                       ;A4C5C8;
    dw ExtendedTilemap_Crocomire_0                                       ;A4C5CC;
    dw Hitbox_Crocomire_C                                                ;A4C5CE;
    dw $0000,$0000                                                       ;A4C5D0;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C5D4;
    dw Hitbox_Crocomire_F                                                ;A4C5D6;
    dw $0000,$0000                                                       ;A4C5D8;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C5DC;
    dw Hitbox_Crocomire_10                                               ;A4C5DE;
    dw $0000,$0000                                                       ;A4C5E0;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C5E4;
    dw Hitbox_Crocomire_F                                                ;A4C5E6;

ExtendedSpritemap_Crocomire_9:
    dw $0007                                                             ;A4C5E8;
    dw $0001,$000B
    dw Spritemap_Crocomire_2                                             ;A4C5EE;
    dw Hitbox_Crocomire_2                                                ;A4C5F0;
    dw $0000,$0026                                                       ;A4C5F2;
    dw Spritemap_Crocomire_A                                             ;A4C5F6;
    dw Hitbox_Crocomire_5                                                ;A4C5F8;
    dw $FFE3,$0026                                                       ;A4C5FA;
    dw Spritemap_Crocomire_10                                            ;A4C5FE;
    dw Hitbox_Crocomire_5                                                ;A4C600;
    dw $0000,$0000                                                       ;A4C602;
    dw ExtendedTilemap_Crocomire_1                                       ;A4C606;
    dw Hitbox_Crocomire_D                                                ;A4C608;
    dw $0000,$0000                                                       ;A4C60A;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C60E;
    dw Hitbox_Crocomire_F                                                ;A4C610;
    dw $0000,$0000                                                       ;A4C612;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C616;
    dw Hitbox_Crocomire_10                                               ;A4C618;
    dw $0000,$0000                                                       ;A4C61A;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C61E;
    dw Hitbox_Crocomire_F                                                ;A4C620;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_ExtendedSpritemap_Crocomire_A4C622:
    dw $0001                                                             ;A4C622;
    dw $0000,$0000
    dw ExtendedTilemap_Crocomire_3                                       ;A4C628;
    dw Hitbox_Crocomire_F                                                ;A4C62A;

UNUSED_ExtendedSpritemap_Crocomire_A4C62C:
    dw $0001                                                             ;A4C62C;
    dw $0000,$0000
    dw ExtendedTilemap_Crocomire_4                                       ;A4C632;
    dw Hitbox_Crocomire_F                                                ;A4C634;

UNUSED_ExtendedSpritemap_Crocomire_A4C636:
    dw $0001                                                             ;A4C636;
    dw $0000,$0000
    dw ExtendedTilemap_Crocomire_5                                       ;A4C63C;
    dw Hitbox_Crocomire_F                                                ;A4C63E;

UNUSED_ExtendedSpritemap_Crocomire_A4C640:
    dw $0001                                                             ;A4C640;
    dw $0000,$0000
    dw ExtendedTilemap_Crocomire_6                                       ;A4C646;
    dw Hitbox_Crocomire_F                                                ;A4C648;

UNUSED_ExtendedSpritemap_Crocomire_A4C64A:
    dw $0001                                                             ;A4C64A;
    dw $0000,$0000
    dw ExtendedTilemap_Crocomire_7                                       ;A4C650;
    dw Hitbox_Crocomire_F                                                ;A4C652;

UNUSED_ExtendedSpritemap_Crocomire_A4C654:
    dw $0001                                                             ;A4C654;
    dw $0000,$0000
    dw ExtendedTilemap_Crocomire_8                                       ;A4C65A;
    dw Hitbox_Crocomire_F                                                ;A4C65C;
endif ; !FEATURE_KEEP_UNREFERENCED

ExtendedSpritemap_Crocomire_10:
    dw $0001                                                             ;A4C65E;
    dw $FFE0,$FFE8
    dw Spritemap_Crocomire_17                                            ;A4C664;
    dw Hitbox_Crocomire_9                                                ;A4C666;

ExtendedSpritemap_Crocomire_11:
    dw $0001                                                             ;A4C668;
    dw $FFE0,$FFE8
    dw Spritemap_Crocomire_18                                            ;A4C66E;
    dw Hitbox_Crocomire_9                                                ;A4C670;

ExtendedSpritemap_Crocomire_12:
    dw $0001                                                             ;A4C672;
    dw $FFE0,$FFE8
    dw Spritemap_Crocomire_19                                            ;A4C678;
    dw Hitbox_Crocomire_9                                                ;A4C67A;

ExtendedSpritemap_Crocomire_13:
    dw $0001                                                             ;A4C67C;
    dw $FFE0,$FFE8
    dw Spritemap_Crocomire_1A                                            ;A4C682;
    dw Hitbox_Crocomire_9                                                ;A4C684;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_ExtendedSpritemap_Crocomire_A4C686:
    dw $0001                                                             ;A4C686;
    dw $0000,$0000
    dw Spritemap_Crocomire_1B                                            ;A4C68C;
    dw Hitbox_Crocomire_A                                                ;A4C68E;

UNUSED_ExtendedSpritemap_Crocomire_A4C690:
    dw $0001                                                             ;A4C690;
    dw $0000,$0000
    dw ExtendedTilemap_Crocomire_9                                       ;A4C696;
    dw Hitbox_Crocomire_F                                                ;A4C698;

UNUSED_ExtendedSpritemap_Crocomire_A4C69A:
    dw $0001                                                             ;A4C69A;
    dw $0000,$0000
    dw ExtendedTilemap_Crocomire_A                                       ;A4C6A0;
    dw Hitbox_Crocomire_10                                               ;A4C6A2;
endif ; !FEATURE_KEEP_UNREFERENCED

ExtendedSpritemap_Crocomire_14:
    dw $0007                                                             ;A4C6A4;
    dw $0003,$000B
    dw Spritemap_Crocomire_3                                             ;A4C6AA;
    dw Hitbox_Crocomire_3                                                ;A4C6AC;
    dw $0000,$0026                                                       ;A4C6AE;
    dw Spritemap_Crocomire_B                                             ;A4C6B2;
    dw Hitbox_Crocomire_5                                                ;A4C6B4;
    dw $FFE3,$0026                                                       ;A4C6B6;
    dw Spritemap_Crocomire_5                                             ;A4C6BA;
    dw Hitbox_Crocomire_5                                                ;A4C6BC;
    dw $0000,$0000                                                       ;A4C6BE;
    dw ExtendedTilemap_Crocomire_2                                       ;A4C6C2;
    dw Hitbox_Crocomire_E                                                ;A4C6C4;
    dw $0000,$0000                                                       ;A4C6C6;
    dw ExtendedTilemap_Crocomire_3                                       ;A4C6CA;
    dw Hitbox_Crocomire_F                                                ;A4C6CC;
    dw $0000,$0000                                                       ;A4C6CE;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C6D2;
    dw Hitbox_Crocomire_10                                               ;A4C6D4;
    dw $0000,$FFFF                                                       ;A4C6D6;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C6DA;
    dw Hitbox_Crocomire_F                                                ;A4C6DC;

ExtendedSpritemap_Crocomire_15:
    dw $0007                                                             ;A4C6DE;
    dw $0001,$000B
    dw Spritemap_Crocomire_4                                             ;A4C6E4;
    dw Hitbox_Crocomire_4                                                ;A4C6E6;
    dw $0000,$0026                                                       ;A4C6E8;
    dw Spritemap_Crocomire_C                                             ;A4C6EC;
    dw Hitbox_Crocomire_5                                                ;A4C6EE;
    dw $FFE3,$0026                                                       ;A4C6F0;
    dw Spritemap_Crocomire_6                                             ;A4C6F4;
    dw Hitbox_Crocomire_5                                                ;A4C6F6;
    dw $0000,$0000                                                       ;A4C6F8;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C6FC;
    dw Hitbox_Crocomire_F                                                ;A4C6FE;
    dw $0000,$0000                                                       ;A4C700;
    dw ExtendedTilemap_Crocomire_0                                       ;A4C704;
    dw Hitbox_Crocomire_C                                                ;A4C706;
    dw $0000,$0000                                                       ;A4C708;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C70C;
    dw Hitbox_Crocomire_10                                               ;A4C70E;
    dw $0000,$FFFE                                                       ;A4C710;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C714;
    dw Hitbox_Crocomire_F                                                ;A4C716;

ExtendedSpritemap_Crocomire_16:
    dw $0007                                                             ;A4C718;
    dw $0000,$0008
    dw Spritemap_Crocomire_1                                             ;A4C71E;
    dw Hitbox_Crocomire_1                                                ;A4C720;
    dw $0000,$0026                                                       ;A4C722;
    dw Spritemap_Crocomire_D                                             ;A4C726;
    dw Hitbox_Crocomire_5                                                ;A4C728;
    dw $FFE3,$0026                                                       ;A4C72A;
    dw Spritemap_Crocomire_7                                             ;A4C72E;
    dw Hitbox_Crocomire_5                                                ;A4C730;
    dw $0000,$FFFF                                                       ;A4C732;
    dw ExtendedTilemap_Crocomire_5                                       ;A4C736;
    dw Hitbox_Crocomire_F                                                ;A4C738;
    dw $0000,$0000                                                       ;A4C73A;
    dw ExtendedTilemap_Crocomire_1                                       ;A4C73E;
    dw Hitbox_Crocomire_D                                                ;A4C740;
    dw $0000,$0000                                                       ;A4C742;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C746;
    dw Hitbox_Crocomire_10                                               ;A4C748;
    dw $0000,$FFFE                                                       ;A4C74A;
    dw ExtendedTilemap_Crocomire_8                                       ;A4C74E;
    dw Hitbox_Crocomire_F                                                ;A4C750;

ExtendedSpritemap_Crocomire_17:
    dw $0007                                                             ;A4C752;
    dw $0001,$000B
    dw Spritemap_Crocomire_0                                             ;A4C758;
    dw Hitbox_Crocomire_0                                                ;A4C75A;
    dw $0000,$0026                                                       ;A4C75C;
    dw Spritemap_Crocomire_E                                             ;A4C760;
    dw Hitbox_Crocomire_5                                                ;A4C762;
    dw $FFE3,$0026                                                       ;A4C764;
    dw Spritemap_Crocomire_8                                             ;A4C768;
    dw Hitbox_Crocomire_5                                                ;A4C76A;
    dw $0000,$FFFF                                                       ;A4C76C;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C770;
    dw Hitbox_Crocomire_F                                                ;A4C772;
    dw $0000,$0000                                                       ;A4C774;
    dw ExtendedTilemap_Crocomire_1                                       ;A4C778;
    dw Hitbox_Crocomire_D                                                ;A4C77A;
    dw $0000,$0000                                                       ;A4C77C;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C780;
    dw Hitbox_Crocomire_10                                               ;A4C782;
    dw $0000,$FFFE                                                       ;A4C784;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C788;
    dw Hitbox_Crocomire_F                                                ;A4C78A;

ExtendedSpritemap_Crocomire_18:
    dw $0007                                                             ;A4C78C;
    dw $0001,$000A
    dw Spritemap_Crocomire_0                                             ;A4C792;
    dw Hitbox_Crocomire_0                                                ;A4C794;
    dw $0000,$0026                                                       ;A4C796;
    dw Spritemap_Crocomire_F                                             ;A4C79A;
    dw Hitbox_Crocomire_5                                                ;A4C79C;
    dw $FFE3,$0026                                                       ;A4C79E;
    dw Spritemap_Crocomire_9                                             ;A4C7A2;
    dw Hitbox_Crocomire_5                                                ;A4C7A4;
    dw $0000,$FFFF                                                       ;A4C7A6;
    dw ExtendedTilemap_Crocomire_3                                       ;A4C7AA;
    dw Hitbox_Crocomire_F                                                ;A4C7AC;
    dw $0000,$0000                                                       ;A4C7AE;
    dw ExtendedTilemap_Crocomire_1                                       ;A4C7B2;
    dw Hitbox_Crocomire_D                                                ;A4C7B4;
    dw $0000,$0000                                                       ;A4C7B6;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C7BA;
    dw Hitbox_Crocomire_10                                               ;A4C7BC;
    dw $0000,$FFFE                                                       ;A4C7BE;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C7C2;
    dw Hitbox_Crocomire_F                                                ;A4C7C4;

ExtendedSpritemap_Crocomire_19:
    dw $0007                                                             ;A4C7C6;
    dw $0001,$000A
    dw Spritemap_Crocomire_2                                             ;A4C7CC;
    dw Hitbox_Crocomire_2                                                ;A4C7CE;
    dw $0000,$0026                                                       ;A4C7D0;
    dw Spritemap_Crocomire_10                                            ;A4C7D4;
    dw Hitbox_Crocomire_5                                                ;A4C7D6;
    dw $FFE3,$0026                                                       ;A4C7D8;
    dw Spritemap_Crocomire_A                                             ;A4C7DC;
    dw Hitbox_Crocomire_5                                                ;A4C7DE;
    dw $0000,$FFFF                                                       ;A4C7E0;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C7E4;
    dw Hitbox_Crocomire_F                                                ;A4C7E6;
    dw $0000,$0000                                                       ;A4C7E8;
    dw ExtendedTilemap_Crocomire_1                                       ;A4C7EC;
    dw Hitbox_Crocomire_D                                                ;A4C7EE;
    dw $0000,$0000                                                       ;A4C7F0;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C7F4;
    dw Hitbox_Crocomire_10                                               ;A4C7F6;
    dw $0000,$FFFE                                                       ;A4C7F8;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C7FC;
    dw Hitbox_Crocomire_F                                                ;A4C7FE;

ExtendedSpritemap_Crocomire_1A:
    dw $0007                                                             ;A4C800;
    dw $0001,$000A
    dw Spritemap_Crocomire_3                                             ;A4C806;
    dw Hitbox_Crocomire_3                                                ;A4C808;
    dw $0000,$0026                                                       ;A4C80A;
    dw Spritemap_Crocomire_5                                             ;A4C80E;
    dw Hitbox_Crocomire_5                                                ;A4C810;
    dw $FFE3,$0026                                                       ;A4C812;
    dw Spritemap_Crocomire_B                                             ;A4C816;
    dw Hitbox_Crocomire_5                                                ;A4C818;
    dw $0000,$FFFF                                                       ;A4C81A;
    dw ExtendedTilemap_Crocomire_5                                       ;A4C81E;
    dw Hitbox_Crocomire_F                                                ;A4C820;
    dw $0000,$0000                                                       ;A4C822;
    dw ExtendedTilemap_Crocomire_1                                       ;A4C826;
    dw Hitbox_Crocomire_D                                                ;A4C828;
    dw $0000,$0000                                                       ;A4C82A;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C82E;
    dw Hitbox_Crocomire_10                                               ;A4C830;
    dw $0000,$0000                                                       ;A4C832;
    dw ExtendedTilemap_Crocomire_8                                       ;A4C836;
    dw Hitbox_Crocomire_F                                                ;A4C838;

ExtendedSpritemap_Crocomire_1B:
    dw $0007                                                             ;A4C83A;
    dw $0001,$000A
    dw Spritemap_Crocomire_4                                             ;A4C840;
    dw Hitbox_Crocomire_4                                                ;A4C842;
    dw $0000,$0026                                                       ;A4C844;
    dw Spritemap_Crocomire_6                                             ;A4C848;
    dw Hitbox_Crocomire_5                                                ;A4C84A;
    dw $FFE3,$0026                                                       ;A4C84C;
    dw Spritemap_Crocomire_C                                             ;A4C850;
    dw Hitbox_Crocomire_5                                                ;A4C852;
    dw $0000,$FFFF                                                       ;A4C854;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C858;
    dw Hitbox_Crocomire_F                                                ;A4C85A;
    dw $0000,$0000                                                       ;A4C85C;
    dw ExtendedTilemap_Crocomire_1                                       ;A4C860;
    dw Hitbox_Crocomire_D                                                ;A4C862;
    dw $0000,$0000                                                       ;A4C864;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C868;
    dw Hitbox_Crocomire_10                                               ;A4C86A;
    dw $0000,$0000                                                       ;A4C86C;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C870;
    dw Hitbox_Crocomire_F                                                ;A4C872;

ExtendedSpritemap_Crocomire_1C:
    dw $0007                                                             ;A4C874;
    dw $0001,$000A
    dw Spritemap_Crocomire_1                                             ;A4C87A;
    dw Hitbox_Crocomire_1                                                ;A4C87C;
    dw $0000,$0026                                                       ;A4C87E;
    dw Spritemap_Crocomire_7                                             ;A4C882;
    dw Hitbox_Crocomire_5                                                ;A4C884;
    dw $FFE3,$0026                                                       ;A4C886;
    dw Spritemap_Crocomire_D                                             ;A4C88A;
    dw Hitbox_Crocomire_5                                                ;A4C88C;
    dw $0000,$0000                                                       ;A4C88E;
    dw ExtendedTilemap_Crocomire_3                                       ;A4C892;
    dw Hitbox_Crocomire_F                                                ;A4C894;
    dw $0000,$0000                                                       ;A4C896;
    dw ExtendedTilemap_Crocomire_1                                       ;A4C89A;
    dw Hitbox_Crocomire_D                                                ;A4C89C;
    dw $0000,$0000                                                       ;A4C89E;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C8A2;
    dw Hitbox_Crocomire_10                                               ;A4C8A4;
    dw $0000,$0000                                                       ;A4C8A6;
    dw ExtendedTilemap_Crocomire_6                                       ;A4C8AA;
    dw Hitbox_Crocomire_F                                                ;A4C8AC;

ExtendedSpritemap_Crocomire_1D:
    dw $0007                                                             ;A4C8AE;
    dw $0001,$000C
    dw Spritemap_Crocomire_0                                             ;A4C8B4;
    dw Hitbox_Crocomire_0                                                ;A4C8B6;
    dw $0000,$0026                                                       ;A4C8B8;
    dw Spritemap_Crocomire_8                                             ;A4C8BC;
    dw Hitbox_Crocomire_5                                                ;A4C8BE;
    dw $FFE3,$0026                                                       ;A4C8C0;
    dw Spritemap_Crocomire_E                                             ;A4C8C4;
    dw Hitbox_Crocomire_5                                                ;A4C8C6;
    dw $0000,$0000                                                       ;A4C8C8;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C8CC;
    dw Hitbox_Crocomire_F                                                ;A4C8CE;
    dw $0000,$0000                                                       ;A4C8D0;
    dw ExtendedTilemap_Crocomire_1                                       ;A4C8D4;
    dw Hitbox_Crocomire_D                                                ;A4C8D6;
    dw $0000,$0000                                                       ;A4C8D8;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C8DC;
    dw Hitbox_Crocomire_10                                               ;A4C8DE;
    dw $0000,$0000                                                       ;A4C8E0;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C8E4;
    dw Hitbox_Crocomire_F                                                ;A4C8E6;

ExtendedSpritemap_Crocomire_1E:
    dw $0007                                                             ;A4C8E8;
    dw $0001,$000D
    dw Spritemap_Crocomire_0                                             ;A4C8EE;
    dw Hitbox_Crocomire_0                                                ;A4C8F0;
    dw $0000,$0026                                                       ;A4C8F2;
    dw Spritemap_Crocomire_9                                             ;A4C8F6;
    dw Hitbox_Crocomire_5                                                ;A4C8F8;
    dw $FFE3,$0026                                                       ;A4C8FA;
    dw Spritemap_Crocomire_F                                             ;A4C8FE;
    dw Hitbox_Crocomire_5                                                ;A4C900;
    dw $0000,$0000                                                       ;A4C902;
    dw ExtendedTilemap_Crocomire_5                                       ;A4C906;
    dw Hitbox_Crocomire_F                                                ;A4C908;
    dw $0000,$0000                                                       ;A4C90A;
    dw ExtendedTilemap_Crocomire_0                                       ;A4C90E;
    dw Hitbox_Crocomire_C                                                ;A4C910;
    dw $0000,$0000                                                       ;A4C912;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C916;
    dw Hitbox_Crocomire_10                                               ;A4C918;
    dw $0000,$0000                                                       ;A4C91A;
    dw ExtendedTilemap_Crocomire_8                                       ;A4C91E;
    dw Hitbox_Crocomire_F                                                ;A4C920;

ExtendedSpritemap_Crocomire_1F:
    dw $0007                                                             ;A4C922;
    dw $0001,$000B
    dw Spritemap_Crocomire_2                                             ;A4C928;
    dw Hitbox_Crocomire_2                                                ;A4C92A;
    dw $0000,$0026                                                       ;A4C92C;
    dw Spritemap_Crocomire_A                                             ;A4C930;
    dw Hitbox_Crocomire_5                                                ;A4C932;
    dw $FFE3,$0026                                                       ;A4C934;
    dw Spritemap_Crocomire_10                                            ;A4C938;
    dw Hitbox_Crocomire_5                                                ;A4C93A;
    dw $0000,$0000                                                       ;A4C93C;
    dw ExtendedTilemap_Crocomire_5                                       ;A4C940;
    dw Hitbox_Crocomire_F                                                ;A4C942;
    dw $0000,$0000                                                       ;A4C944;
    dw ExtendedTilemap_Crocomire_2                                       ;A4C948;
    dw Hitbox_Crocomire_E                                                ;A4C94A;
    dw $0000,$0000                                                       ;A4C94C;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C950;
    dw Hitbox_Crocomire_10                                               ;A4C952;
    dw $0000,$0000                                                       ;A4C954;
    dw ExtendedTilemap_Crocomire_8                                       ;A4C958;
    dw Hitbox_Crocomire_F                                                ;A4C95A;

ExtendedSpritemap_Crocomire_20:
    dw $0007                                                             ;A4C95C;
    dw $0001,$000B
    dw Spritemap_Crocomire_15                                            ;A4C962;
    dw Hitbox_Crocomire_7                                                ;A4C964;
    dw $0000,$0026                                                       ;A4C966;
    dw Spritemap_Crocomire_A                                             ;A4C96A;
    dw Hitbox_Crocomire_5                                                ;A4C96C;
    dw $FFE3,$0026                                                       ;A4C96E;
    dw Spritemap_Crocomire_10                                            ;A4C972;
    dw Hitbox_Crocomire_5                                                ;A4C974;
    dw $0000,$0000                                                       ;A4C976;
    dw ExtendedTilemap_Crocomire_1                                       ;A4C97A;
    dw Hitbox_Crocomire_D                                                ;A4C97C;
    dw $0000,$0000                                                       ;A4C97E;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C982;
    dw Hitbox_Crocomire_F                                                ;A4C984;
    dw $0000,$0000                                                       ;A4C986;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C98A;
    dw Hitbox_Crocomire_10                                               ;A4C98C;
    dw $0000,$0000                                                       ;A4C98E;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C992;
    dw Hitbox_Crocomire_F                                                ;A4C994;

ExtendedSpritemap_Crocomire_21:
    dw $0007                                                             ;A4C996;
    dw $0000,$0006
    dw Spritemap_Crocomire_16                                            ;A4C99C;
    dw Hitbox_Crocomire_8                                                ;A4C99E;
    dw $0000,$0026                                                       ;A4C9A0;
    dw Spritemap_Crocomire_A                                             ;A4C9A4;
    dw Hitbox_Crocomire_5                                                ;A4C9A6;
    dw $FFE3,$0026                                                       ;A4C9A8;
    dw Spritemap_Crocomire_10                                            ;A4C9AC;
    dw Hitbox_Crocomire_5                                                ;A4C9AE;
    dw $0000,$0000                                                       ;A4C9B0;
    dw ExtendedTilemap_Crocomire_1                                       ;A4C9B4;
    dw Hitbox_Crocomire_D                                                ;A4C9B6;
    dw $0000,$0000                                                       ;A4C9B8;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C9BC;
    dw Hitbox_Crocomire_F                                                ;A4C9BE;
    dw $0000,$0000                                                       ;A4C9C0;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C9C4;
    dw Hitbox_Crocomire_10                                               ;A4C9C6;
    dw $0000,$0000                                                       ;A4C9C8;
    dw ExtendedTilemap_Crocomire_7                                       ;A4C9CC;
    dw Hitbox_Crocomire_F                                                ;A4C9CE;

ExtendedSpritemap_Crocomire_22:
    dw $0007                                                             ;A4C9D0;
    dw $0001,$0004
    dw Spritemap_Crocomire_14                                            ;A4C9D6;
    dw Hitbox_Crocomire_6                                                ;A4C9D8;
    dw $0000,$0026                                                       ;A4C9DA;
    dw Spritemap_Crocomire_A                                             ;A4C9DE;
    dw Hitbox_Crocomire_5                                                ;A4C9E0;
    dw $FFE3,$0026                                                       ;A4C9E2;
    dw Spritemap_Crocomire_10                                            ;A4C9E6;
    dw Hitbox_Crocomire_5                                                ;A4C9E8;
    dw $0000,$0000                                                       ;A4C9EA;
    dw ExtendedTilemap_Crocomire_1                                       ;A4C9EE;
    dw Hitbox_Crocomire_D                                                ;A4C9F0;
    dw $0000,$0000                                                       ;A4C9F2;
    dw ExtendedTilemap_Crocomire_4                                       ;A4C9F6;
    dw Hitbox_Crocomire_F                                                ;A4C9F8;
    dw $0000,$0000                                                       ;A4C9FA;
    dw ExtendedTilemap_Crocomire_A                                       ;A4C9FE;
    dw Hitbox_Crocomire_10                                               ;A4CA00;
    dw $0000,$0000                                                       ;A4CA02;
    dw ExtendedTilemap_Crocomire_7                                       ;A4CA06;
    dw Hitbox_Crocomire_F                                                ;A4CA08;

ExtendedSpritemap_Crocomire_23:
    dw $0007                                                             ;A4CA0A;
    dw $0000,$0008
    dw Spritemap_Crocomire_1                                             ;A4CA10;
    dw Hitbox_Crocomire_1                                                ;A4CA12;
    dw $0000,$0026                                                       ;A4CA14;
    dw Spritemap_Crocomire_A                                             ;A4CA18;
    dw Hitbox_Crocomire_5                                                ;A4CA1A;
    dw $FFE3,$0026                                                       ;A4CA1C;
    dw Spritemap_Crocomire_10                                            ;A4CA20;
    dw Hitbox_Crocomire_5                                                ;A4CA22;
    dw $0000,$0000                                                       ;A4CA24;
    dw ExtendedTilemap_Crocomire_1                                       ;A4CA28;
    dw Hitbox_Crocomire_D                                                ;A4CA2A;
    dw $0000,$0000                                                       ;A4CA2C;
    dw ExtendedTilemap_Crocomire_4                                       ;A4CA30;
    dw Hitbox_Crocomire_F                                                ;A4CA32;
    dw $0000,$0000                                                       ;A4CA34;
    dw ExtendedTilemap_Crocomire_A                                       ;A4CA38;
    dw Hitbox_Crocomire_10                                               ;A4CA3A;
    dw $0000,$0000                                                       ;A4CA3C;
    dw ExtendedTilemap_Crocomire_7                                       ;A4CA40;
    dw Hitbox_Crocomire_F                                                ;A4CA42;

ExtendedSpritemap_Crocomire_24:
    dw $0007                                                             ;A4CA44;
    dw $0001,$000B
    dw Spritemap_Crocomire_0                                             ;A4CA4A;
    dw Hitbox_Crocomire_0                                                ;A4CA4C;
    dw $0000,$0026                                                       ;A4CA4E;
    dw Spritemap_Crocomire_A                                             ;A4CA52;
    dw Hitbox_Crocomire_5                                                ;A4CA54;
    dw $FFE3,$0026                                                       ;A4CA56;
    dw Spritemap_Crocomire_10                                            ;A4CA5A;
    dw Hitbox_Crocomire_5                                                ;A4CA5C;
    dw $0000,$0000                                                       ;A4CA5E;
    dw ExtendedTilemap_Crocomire_1                                       ;A4CA62;
    dw Hitbox_Crocomire_D                                                ;A4CA64;
    dw $0000,$0000                                                       ;A4CA66;
    dw ExtendedTilemap_Crocomire_4                                       ;A4CA6A;
    dw Hitbox_Crocomire_F                                                ;A4CA6C;
    dw $0000,$0000                                                       ;A4CA6E;
    dw ExtendedTilemap_Crocomire_A                                       ;A4CA72;
    dw Hitbox_Crocomire_10                                               ;A4CA74;
    dw $0000,$0000                                                       ;A4CA76;
    dw ExtendedTilemap_Crocomire_7                                       ;A4CA7A;
    dw Hitbox_Crocomire_F                                                ;A4CA7C;

ExtendedSpritemap_Crocomire_25:
    dw $0001                                                             ;A4CA7E;
    dw $0000,$0000
    dw Spritemap_Crocomire_22                                            ;A4CA84;
    dw Hitbox_Crocomire_1                                                ;A4CA86;

ExtendedSpritemap_Crocomire_26:
    dw $0001                                                             ;A4CA88;
    dw $0000,$0000
    dw Spritemap_Crocomire_23                                            ;A4CA8E;
    dw Hitbox_Crocomire_1                                                ;A4CA90;

ExtendedSpritemap_Crocomire_27:
    dw $0001                                                             ;A4CA92;
    dw $0000,$0000
    dw Spritemap_Crocomire_24                                            ;A4CA98;
    dw Hitbox_Crocomire_1                                                ;A4CA9A;

ExtendedSpritemap_Crocomire_28:
    dw $0001                                                             ;A4CA9C;
    dw $0000,$0000
    dw Spritemap_Crocomire_25                                            ;A4CAA2;
    dw Hitbox_Crocomire_1                                                ;A4CAA4;

ExtendedSpritemap_Crocomire_29:
    dw $0001                                                             ;A4CAA6;
    dw $0000,$0000
    dw Spritemap_Crocomire_26                                            ;A4CAAC;
    dw Hitbox_Crocomire_1                                                ;A4CAAE;

ExtendedSpritemap_Crocomire_2A:
    dw $0001                                                             ;A4CAB0;
    dw $0000,$0000
    dw Spritemap_Crocomire_27                                            ;A4CAB6;
    dw Hitbox_Crocomire_1                                                ;A4CAB8;

ExtendedSpritemap_Crocomire_2B:
    dw $0001                                                             ;A4CABA;
    dw $0000,$0000
    dw Spritemap_Crocomire_28                                            ;A4CAC0;
    dw Hitbox_Crocomire_1                                                ;A4CAC2;

ExtendedSpritemap_Crocomire_2C:
    dw $0001                                                             ;A4CAC4;
    dw $0000,$0000
    dw Spritemap_Crocomire_29                                            ;A4CACA;
    dw Hitbox_Crocomire_1                                                ;A4CACC;

ExtendedSpritemap_Crocomire_2D:
    dw $0001                                                             ;A4CACE;
    dw $0001,$000B
    dw Spritemap_Crocomire_15                                            ;A4CAD4;
    dw Hitbox_Crocomire_11                                               ;A4CAD6;

ExtendedSpritemap_Crocomire_2E:
    dw $0001                                                             ;A4CAD8;
    dw $0000,$0008
    dw Spritemap_Crocomire_16                                            ;A4CADE;
    dw Hitbox_Crocomire_11                                               ;A4CAE0;

ExtendedSpritemap_Crocomire_2F:
    dw $0001                                                             ;A4CAE2;
    dw $0001,$0008
    dw Spritemap_Crocomire_14                                            ;A4CAE8;
    dw Hitbox_Crocomire_11                                               ;A4CAEA;

ExtendedSpritemap_Crocomire_30:
    dw $0001                                                             ;A4CAEC;
    dw $0000,$000A
    dw Spritemap_Crocomire_1                                             ;A4CAF2;
    dw Hitbox_Crocomire_11                                               ;A4CAF4;

ExtendedSpritemap_Crocomire_31:
    dw $0001                                                             ;A4CAF6;
    dw $0001,$000C
    dw Spritemap_Crocomire_0                                             ;A4CAFC;
    dw Hitbox_Crocomire_11                                               ;A4CAFE;

RTL_A4CB00:
    RTL                                                                  ;A4CB00;


LoadEnemyIndexAndRTL:
    LDX.W $0E54                                                          ;A4CB01;
    RTL                                                                  ;A4CB04;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitbox_Crocomire_A4CB05:
    dw $0000                                                             ;A4CB05;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitbox_Crocomire_0:
    dw $0001                                                             ;A4CB07;
    dw $FFB2,$0020,$FFF0,$002B
    dw EnemyTouch_Crocomire_Claws                                        ;A4CB11;
    dw EnemyShot_Crocomire_SpawnShotExplosion_duplicate                  ;A4CB13;

Hitbox_Crocomire_1:
    dw $0001                                                             ;A4CB15;
    dw $FFA1,$000B,$FFF0,$000B
    dw EnemyTouch_Crocomire_Claws                                        ;A4CB1F;
    dw EnemyShot_Crocomire_SpawnShotExplosion_duplicate                  ;A4CB21;

Hitbox_Crocomire_2:
    dw $0001                                                             ;A4CB23;
    dw $FFBB,$001F,$FFF0,$002C
    dw EnemyTouch_Crocomire_Claws                                        ;A4CB2D;
    dw EnemyShot_Crocomire_SpawnShotExplosion_duplicate                  ;A4CB2F;

Hitbox_Crocomire_3:
    dw $0001                                                             ;A4CB31;
    dw $FFC4,$0012,$FFF0,$0020
    dw EnemyTouch_Crocomire_Claws                                        ;A4CB3B;
    dw EnemyShot_Crocomire_SpawnShotExplosion_duplicate                  ;A4CB3D;

Hitbox_Crocomire_4:
    dw $0001                                                             ;A4CB3F;
    dw $FFB0,$000D,$FFF0,$001B
    dw EnemyTouch_Crocomire_Claws                                        ;A4CB49;
    dw EnemyShot_Crocomire_SpawnShotExplosion_duplicate                  ;A4CB4B;

Hitbox_Crocomire_5:
    dw $0000                                                             ;A4CB4D;

Hitbox_Crocomire_6:
    dw $0001                                                             ;A4CB4F;
    dw $FFA1,$FFFA,$FFF0,$001B
    dw EnemyTouch_Crocomire_Claws                                        ;A4CB59;
    dw EnemyShot_Crocomire_Nothing                                       ;A4CB5B;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitbox_Crocomire_A4CB5D:
    dw $0000                                                             ;A4CB5D;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitbox_Crocomire_7:
    dw $0001                                                             ;A4CB5F;
    dw $FFC5,$FFF7,$FFF0,$0005
    dw EnemyTouch_Crocomire_Claws                                        ;A4CB69;
    dw EnemyShot_Crocomire_Nothing                                       ;A4CB6B;

Hitbox_Crocomire_8:
    dw $0001                                                             ;A4CB6D;
    dw $FFA3,$FFDC,$FFE2,$FFF3
    dw EnemyTouch_Crocomire_Claws                                        ;A4CB77;
    dw EnemyShot_Crocomire_Nothing                                       ;A4CB79;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitbox_Crocomire_A4CB7B:
    dw $0001                                                             ;A4CB7B;
    dw $FFFB,$FFFB,$0004,$0004
    dw EnemyTouch_Crocomire_Claws                                        ;A4CB85;
    dw EnemyShot_Crocomire_Nothing                                       ;A4CB87;

UNUSED_Hitbox_Crocomire_A4CB89:
    dw $0001                                                             ;A4CB89;
    dw $FFFA,$FFF9,$0005,$0006
    dw EnemyTouch_Crocomire_Claws                                        ;A4CB93;
    dw EnemyShot_Crocomire_Nothing                                       ;A4CB95;

UNUSED_Hitbox_Crocomire_A4CB97:
    dw $0001                                                             ;A4CB97;
    dw $FFF8,$FFF8,$0007,$0007
    dw EnemyTouch_Crocomire_Claws                                        ;A4CBA1;
    dw EnemyShot_Crocomire_Nothing                                       ;A4CBA3;

UNUSED_Hitbox_Crocomire_A4CBA5:
    dw $0001                                                             ;A4CBA5;
    dw $FFF7,$FFF8,$0008,$0007
    dw EnemyTouch_Crocomire_Claws                                        ;A4CBAF;
    dw EnemyShot_Crocomire_Nothing                                       ;A4CBB1;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitbox_Crocomire_9:
    dw $0000                                                             ;A4CBB3;

Hitbox_Crocomire_A:
    dw $0001                                                             ;A4CBB5;
    dw $FFF7,$FFF7,$0008,$0007
    dw EnemyTouch_Crocomire_Claws                                        ;A4CBBF;
    dw EnemyShot_Crocomire_Nothing                                       ;A4CBC1;

Hitbox_Crocomire_B:
    dw $0000                                                             ;A4CBC3;

Hitbox_Crocomire_C:
    dw $0003                                                             ;A4CBC5;
    dw $FFCE,$FFDB,$0028,$FFF0
    dw CommonA4_NormalEnemyTouchAI                                       ;A4CBCF;
    dw EnemyShot_Crocomire_OpenMouth                                     ;A4CBD1;
    dw $FFCC,$FFC6,$002A,$FFDA                                           ;A4CBD3;
    dw CommonA4_NormalEnemyTouchAI                                       ;A4CBDB;
    dw CommonA4_NormalEnemyShotAI                                        ;A4CBDD;
    dw $FFE0,$FFF3,$0028,$0000                                           ;A4CBDF;
    dw CommonA4_NormalEnemyTouchAI                                       ;A4CBE7;
    dw CommonA4_NormalEnemyShotAI                                        ;A4CBE9;

Hitbox_Crocomire_D:
    dw $0003                                                             ;A4CBEB;
    dw $FFD2,$FFCB,$000D,$FFF0
    dw CommonA4_NormalEnemyTouchAI                                       ;A4CBF5;
    dw EnemyShot_Crocomire_OpenMouth                                     ;A4CBF7;
    dw $FFD7,$FFB6,$0010,$FFC7                                           ;A4CBF9;
    dw CommonA4_NormalEnemyTouchAI                                       ;A4CC01;
    dw CommonA4_NormalEnemyShotAI                                        ;A4CC03;
    dw $FFDB,$FFF0,$0010,$FFFD                                           ;A4CC05;
    dw CommonA4_NormalEnemyTouchAI                                       ;A4CC0D;
    dw CommonA4_NormalEnemyShotAI                                        ;A4CC0F;

Hitbox_Crocomire_E:
    dw $0001                                                             ;A4CC11;
    dw $FFDB,$FFCE,$0026,$FFFC
    dw EnemyTouch_Crocomire_Claws                                        ;A4CC1B;
    dw CommonA4_NormalEnemyShotAI                                        ;A4CC1D;

Hitbox_Crocomire_F:
    dw $0001                                                             ;A4CC1F;
    dw $FFDA,$FFD0,$0025,$0034
    dw EnemyTouch_Crocomire_Claws                                        ;A4CC29;
    dw EnemyShot_Crocomire_SpawnShotExplosion                            ;A4CC2B;

Hitbox_Crocomire_10:
    dw $0001                                                             ;A4CC2D;
    dw $FFDA,$FFFC,$002A,$0034
    dw EnemyTouch_Crocomire_Claws                                        ;A4CC37;
    dw EnemyShot_Crocomire_Nothing                                       ;A4CC39;

Hitbox_Crocomire_11:
    dw $0000                                                             ;A4CC3B;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_Crocomire_A4CC3D:
    dw $0011                                                             ;A4CC3D;
    %spritemapEntry(0, $1E4, $18, 0, 0, 3, 0, $1A6)
    %spritemapEntry(0, $1F4, $18, 0, 0, 3, 0, $1BF)
    %spritemapEntry(0, $1EC, $18, 0, 0, 3, 0, $1AF)
    %spritemapEntry(1, $1C, $10, 0, 0, 3, 0, $1CA)
    %spritemapEntry(1, $0C, $10, 0, 0, 3, 0, $1C8)
    %spritemapEntry(1, $1FC, $10, 0, 0, 3, 0, $1C6)
    %spritemapEntry(1, $1C, $00, 0, 0, 3, 0, $1C4)
    %spritemapEntry(1, $0C, $00, 0, 0, 3, 0, $1C2)
    %spritemapEntry(1, $1FC, $00, 0, 0, 3, 0, $1C0)
    %spritemapEntry(0, $0C, $E8, 0, 0, 3, 0, $1B6)
    %spritemapEntry(1, $1C, $F0, 0, 0, 3, 0, $1AD)
    %spritemapEntry(1, $0C, $F0, 0, 0, 3, 0, $1AB)
    %spritemapEntry(1, $1FC, $F0, 0, 0, 3, 0, $1A9)
    %spritemapEntry(1, $1EC, $F0, 0, 0, 3, 0, $1A7)
    %spritemapEntry(1, $1FC, $E0, 0, 0, 3, 0, $1A4)
    %spritemapEntry(1, $1EC, $E0, 0, 0, 3, 0, $1A2)
    %spritemapEntry(1, $1DC, $E0, 0, 0, 3, 0, $1A0)

UNUSED_Spritemap_Crocomire_A4CC94:
    dw $0011                                                             ;A4CC94;
    %spritemapEntry(0, $14, $18, 0, 1, 3, 0, $1A6)
    %spritemapEntry(0, $04, $18, 0, 1, 3, 0, $1BF)
    %spritemapEntry(0, $0C, $18, 0, 1, 3, 0, $1AF)
    %spritemapEntry(1, $1D4, $10, 0, 1, 3, 0, $1CA)
    %spritemapEntry(1, $1E4, $10, 0, 1, 3, 0, $1C8)
    %spritemapEntry(1, $1F4, $10, 0, 1, 3, 0, $1C6)
    %spritemapEntry(1, $1D4, $00, 0, 1, 3, 0, $1C4)
    %spritemapEntry(1, $1E4, $00, 0, 1, 3, 0, $1C2)
    %spritemapEntry(1, $1F4, $00, 0, 1, 3, 0, $1C0)
    %spritemapEntry(0, $1EC, $E8, 0, 1, 3, 0, $1B6)
    %spritemapEntry(1, $1D4, $F0, 0, 1, 3, 0, $1AD)
    %spritemapEntry(1, $1E4, $F0, 0, 1, 3, 0, $1AB)
    %spritemapEntry(1, $1F4, $F0, 0, 1, 3, 0, $1A9)
    %spritemapEntry(1, $04, $F0, 0, 1, 3, 0, $1A7)
    %spritemapEntry(1, $1F4, $E0, 0, 1, 3, 0, $1A4)
    %spritemapEntry(1, $04, $E0, 0, 1, 3, 0, $1A2)
    %spritemapEntry(1, $14, $E0, 0, 1, 3, 0, $1A0)

UNUSED_Spritemap_Crocomire_A4CCEB:
    dw $000A                                                             ;A4CCEB;
    %spritemapEntry(0, $18, $0C, 0, 0, 3, 0, $16B)
    %spritemapEntry(0, $10, $0C, 0, 0, 3, 0, $16A)
    %spritemapEntry(1, $10, $FC, 0, 0, 3, 0, $168)
    %spritemapEntry(1, $10, $EC, 0, 0, 3, 0, $166)
    %spritemapEntry(1, $00, $00, 0, 0, 3, 0, $164)
    %spritemapEntry(1, $1F0, $00, 0, 0, 3, 0, $162)
    %spritemapEntry(1, $00, $F0, 0, 0, 3, 0, $164)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 3, 0, $162)
    %spritemapEntry(1, $1E0, $FC, 0, 0, 3, 0, $180)
    %spritemapEntry(1, $1E0, $EC, 0, 0, 3, 0, $160)

UNUSED_Spritemap_Crocomire_A4CD1F:
    dw $000A                                                             ;A4CD1F;
    %spritemapEntry(0, $1E0, $0C, 0, 1, 3, 0, $16B)
    %spritemapEntry(0, $1E8, $0C, 0, 1, 3, 0, $16A)
    %spritemapEntry(1, $1E0, $FC, 0, 1, 3, 0, $168)
    %spritemapEntry(1, $1E0, $EC, 0, 1, 3, 0, $166)
    %spritemapEntry(1, $1F0, $00, 0, 1, 3, 0, $164)
    %spritemapEntry(1, $00, $00, 0, 1, 3, 0, $162)
    %spritemapEntry(1, $1F0, $F0, 0, 1, 3, 0, $164)
    %spritemapEntry(1, $00, $F0, 0, 1, 3, 0, $162)
    %spritemapEntry(1, $10, $FC, 0, 1, 3, 0, $180)
    %spritemapEntry(1, $10, $EC, 0, 1, 3, 0, $160)

UNUSED_Spritemap_Crocomire_A4CD53:
    dw $000F                                                             ;A4CD53;
    %spritemapEntry(1, $20, $10, 0, 0, 3, 0, $18E)
    %spritemapEntry(1, $00, $10, 0, 0, 3, 0, $18A)
    %spritemapEntry(1, $10, $10, 0, 0, 3, 0, $18C)
    %spritemapEntry(0, $1F8, $18, 0, 0, 3, 0, $17B)
    %spritemapEntry(0, $1F0, $10, 0, 0, 3, 0, $10F)
    %spritemapEntry(0, $1F8, $10, 0, 0, 3, 0, $11F)
    %spritemapEntry(0, $1E7, $18, 0, 1, 3, 0, $17A)
    %spritemapEntry(0, $1E0, $18, 0, 0, 3, 0, $17A)
    %spritemapEntry(0, $1D0, $10, 0, 0, 3, 0, $188)
    %spritemapEntry(0, $1D8, $10, 0, 0, 3, 0, $189)
    %spritemapEntry(0, $1E0, $10, 0, 0, 3, 0, $198)
    %spritemapEntry(0, $1E8, $10, 0, 0, 3, 0, $199)
    %spritemapEntry(1, $1F0, $00, 0, 0, 3, 0, $186)
    %spritemapEntry(1, $1E0, $00, 0, 0, 3, 0, $184)
    %spritemapEntry(1, $1D0, $00, 0, 0, 3, 0, $182)

UNUSED_Spritemap_Crocomire_A4CDA0:
    dw $000F                                                             ;A4CDA0;
    %spritemapEntry(1, $1D0, $10, 0, 1, 3, 0, $18E)
    %spritemapEntry(1, $1F0, $10, 0, 1, 3, 0, $18A)
    %spritemapEntry(1, $1E0, $10, 0, 1, 3, 0, $18C)
    %spritemapEntry(0, $00, $18, 0, 1, 3, 0, $17B)
    %spritemapEntry(0, $08, $10, 0, 1, 3, 0, $10F)
    %spritemapEntry(0, $00, $10, 0, 1, 3, 0, $11F)
    %spritemapEntry(0, $11, $18, 0, 0, 3, 0, $17A)
    %spritemapEntry(0, $18, $18, 0, 1, 3, 0, $17A)
    %spritemapEntry(0, $28, $10, 0, 1, 3, 0, $188)
    %spritemapEntry(0, $20, $10, 0, 1, 3, 0, $189)
    %spritemapEntry(0, $18, $10, 0, 1, 3, 0, $198)
    %spritemapEntry(0, $10, $10, 0, 1, 3, 0, $199)
    %spritemapEntry(1, $00, $00, 0, 1, 3, 0, $186)
    %spritemapEntry(1, $10, $00, 0, 1, 3, 0, $184)
    %spritemapEntry(1, $20, $00, 0, 1, 3, 0, $182)

UNUSED_Spritemap_Crocomire_A4CDED:
    dw $0002                                                             ;A4CDED;
    %spritemapEntry(1, $00, $F8, 0, 0, 3, 0, $16E)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 3, 0, $16C)

UNUSED_Spritemap_Crocomire_A4CDF9:
    dw $0002                                                             ;A4CDF9;
    %spritemapEntry(1, $1F0, $F8, 0, 1, 3, 0, $16E)
    %spritemapEntry(1, $00, $F8, 0, 1, 3, 0, $16C)

UNUSED_Spritemap_Crocomire_A4CE05:
    dw $0001                                                             ;A4CE05;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 3, 0, $160)

UNUSED_Spritemap_Crocomire_A4CE0C:
    dw $0001                                                             ;A4CE0C;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 3, 0, $180)

UNUSED_Spritemap_Crocomire_A4CE13:
    dw $0001                                                             ;A4CE13;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 3, 0, $162)

UNUSED_Spritemap_Crocomire_A4CE1A:
    dw $0001                                                             ;A4CE1A;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 3, 0, $164)

UNUSED_Spritemap_Crocomire_A4CE21:
    dw $0001                                                             ;A4CE21;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 3, 0, $166)

UNUSED_Spritemap_Crocomire_A4CE28:
    dw $0001                                                             ;A4CE28;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 3, 0, $168)

UNUSED_Spritemap_Crocomire_A4CE2F:
    dw $0002                                                             ;A4CE2F;
    %spritemapEntry(0, $1F8, $FC, 0, 1, 3, 0, $16B)
    %spritemapEntry(0, $00, $FC, 0, 1, 3, 0, $16A)

UNUSED_Spritemap_Crocomire_A4CE3B:
    dw $0003                                                             ;A4CE3B;
    %spritemapEntry(0, $00, $04, 0, 1, 3, 0, $188)
    %spritemapEntry(0, $1F8, $04, 0, 1, 3, 0, $189)
    %spritemapEntry(1, $1F8, $F4, 0, 1, 3, 0, $182)

UNUSED_Spritemap_Crocomire_A4CE4C:
    dw $0005                                                             ;A4CE4C;
    %spritemapEntry(0, $1F9, $08, 0, 0, 3, 0, $17A)
    %spritemapEntry(0, $00, $08, 0, 1, 3, 0, $17A)
    %spritemapEntry(0, $00, $00, 0, 1, 3, 0, $198)
    %spritemapEntry(0, $1F8, $00, 0, 1, 3, 0, $199)
    %spritemapEntry(1, $1F8, $F0, 0, 1, 3, 0, $184)

UNUSED_Spritemap_Crocomire_A4CE67:
    dw $0004                                                             ;A4CE67;
    %spritemapEntry(0, $00, $05, 0, 1, 3, 0, $10F)
    %spritemapEntry(0, $1F8, $0D, 0, 1, 3, 0, $17B)
    %spritemapEntry(0, $1F8, $05, 0, 1, 3, 0, $11F)
    %spritemapEntry(1, $1F8, $F5, 0, 1, 3, 0, $186)

UNUSED_Spritemap_Crocomire_A4CE7D:
    dw $0001                                                             ;A4CE7D;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 3, 0, $18A)

UNUSED_Spritemap_Crocomire_A4CE84:
    dw $0001                                                             ;A4CE84;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 3, 0, $18C)

UNUSED_Spritemap_Crocomire_A4CE8B:
    dw $0001                                                             ;A4CE8B;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 3, 0, $18E)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_Crocomire_0:
    dw $0009                                                             ;A4CE92;
    %spritemapEntry(1, $1C3, $1A, 0, 0, 3, 0, $E4)
    %spritemapEntry(1, $1B3, $1E, 0, 0, 3, 0, $100)
    %spritemapEntry(0, $00, $07, 0, 0, 3, 0, $108)
    %spritemapEntry(0, $1F0, $FF, 0, 0, 3, 0, $F6)
    %spritemapEntry(1, $1F0, $07, 0, 0, 3, 0, $106)
    %spritemapEntry(1, $1F8, $F7, 0, 0, 3, 0, $E7)
    %spritemapEntry(1, $1EC, $0B, 0, 0, 3, 0, $E0)
    %spritemapEntry(1, $1DE, $12, 0, 0, 3, 0, $E0)
    %spritemapEntry(1, $1D0, $19, 0, 0, 3, 0, $E0)

Spritemap_Crocomire_1:
    dw $0009                                                             ;A4CEC1;
    %spritemapEntry(1, $1B1, $13, 0, 0, 3, 0, $E4)
    %spritemapEntry(1, $1A1, $13, 0, 0, 3, 0, $100)
    %spritemapEntry(0, $1F8, $09, 0, 0, 3, 0, $FF)
    %spritemapEntry(0, $1F0, $F9, 0, 0, 3, 0, $EF)
    %spritemapEntry(1, $1E8, $01, 0, 0, 3, 0, $ED)
    %spritemapEntry(1, $1F8, $F9, 0, 0, 3, 0, $10D)
    %spritemapEntry(1, $1DE, $05, 0, 0, 3, 0, $102)
    %spritemapEntry(1, $1CE, $0F, 0, 0, 3, 0, $104)
    %spritemapEntry(1, $1C0, $0F, 0, 0, 3, 0, $102)

Spritemap_Crocomire_2:
    dw $0007                                                             ;A4CEF0;
    %spritemapEntry(1, $1CC, $1C, 0, 0, 3, 0, $E4)
    %spritemapEntry(1, $1BC, $1E, 0, 0, 3, 0, $100)
    %spritemapEntry(1, $1F8, $08, 0, 0, 3, 0, $109)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $E9)
    %spritemapEntry(1, $1F6, $0D, 0, 0, 3, 0, $E0)
    %spritemapEntry(1, $1E8, $14, 0, 0, 3, 0, $E0)
    %spritemapEntry(1, $1DA, $1B, 0, 0, 3, 0, $E0)

Spritemap_Crocomire_3:
    dw $0009                                                             ;A4CF15;
    %spritemapEntry(0, $00, $08, 0, 1, 3, 0, $FF)
    %spritemapEntry(0, $08, $F8, 0, 1, 3, 0, $EF)
    %spritemapEntry(1, $08, $00, 0, 1, 3, 0, $ED)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 3, 0, $10D)
    %spritemapEntry(1, $1D5, $11, 0, 0, 3, 0, $E4)
    %spritemapEntry(1, $1C5, $11, 0, 0, 3, 0, $100)
    %spritemapEntry(1, $02, $03, 0, 0, 3, 0, $102)
    %spritemapEntry(1, $1F2, $0D, 0, 0, 3, 0, $104)
    %spritemapEntry(1, $1E4, $0D, 0, 0, 3, 0, $102)

Spritemap_Crocomire_4:
    dw $0007                                                             ;A4CF44;
    %spritemapEntry(1, $1C0, $0C, 0, 0, 3, 0, $E4)
    %spritemapEntry(1, $1B0, $0C, 0, 0, 3, 0, $100)
    %spritemapEntry(1, $1F8, $08, 0, 0, 3, 0, $109)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $E9)
    %spritemapEntry(1, $1F0, $0C, 0, 0, 3, 0, $E2)
    %spritemapEntry(1, $1E0, $0C, 0, 0, 3, 0, $E2)
    %spritemapEntry(1, $1D0, $0C, 0, 0, 3, 0, $E2)

Spritemap_Crocomire_5:
    dw $0008                                                             ;A4CF69;
    %spritemapEntry(0, $02, $09, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $1FA, $09, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $1F2, $09, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $1EA, $09, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1E2, $09, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $1F2, $F9, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $1F6, $F9, 0, 0, 3, 0, $14B)
    %spritemapEntry(1, $01, $F9, 0, 0, 3, 0, $12B)

Spritemap_Crocomire_6:
    dw $0008                                                             ;A4CF93;
    %spritemapEntry(0, $05, $09, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $1FD, $09, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $1F5, $09, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $1ED, $09, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1E5, $09, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $1F5, $F9, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $1F7, $F9, 0, 0, 3, 0, $14B)
    %spritemapEntry(1, $01, $F9, 0, 0, 3, 0, $12B)

Spritemap_Crocomire_7:
    dw $0008                                                             ;A4CFBD;
    %spritemapEntry(0, $08, $09, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $00, $09, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $1F8, $09, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $1F0, $09, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1E8, $09, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $1F8, $F9, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $1F9, $F9, 0, 0, 3, 0, $14B)
    %spritemapEntry(1, $00, $F9, 0, 0, 3, 0, $12B)

Spritemap_Crocomire_8:
    dw $0008                                                             ;A4CFE7;
    %spritemapEntry(0, $0C, $09, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $04, $09, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $1FC, $09, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $1F4, $09, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1EC, $09, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $1FC, $F9, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $1FC, $F9, 0, 0, 3, 0, $14B)
    %spritemapEntry(1, $00, $F9, 0, 0, 3, 0, $12B)

Spritemap_Crocomire_9:
    dw $0008                                                             ;A4D011;
    %spritemapEntry(1, $03, $F9, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $02, $F9, 0, 1, 3, 0, $14B)
    %spritemapEntry(0, $11, $09, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $09, $09, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $01, $09, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $1F9, $09, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1F1, $09, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $01, $F9, 0, 1, 3, 0, $12B)

Spritemap_Crocomire_A:
    dw $0008                                                             ;A4D03B;
    %spritemapEntry(1, $09, $F9, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $06, $F9, 0, 1, 3, 0, $14B)
    %spritemapEntry(0, $18, $09, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $10, $09, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $08, $09, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $00, $09, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1F8, $09, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $01, $F9, 0, 1, 3, 0, $12B)

Spritemap_Crocomire_B:
    dw $0008                                                             ;A4D065;
    %spritemapEntry(1, $10, $F9, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $0B, $F9, 0, 1, 3, 0, $14B)
    %spritemapEntry(0, $20, $09, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $18, $09, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $10, $09, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $08, $09, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $00, $09, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $03, $F9, 0, 1, 3, 0, $12B)

Spritemap_Crocomire_C:
    dw $0008                                                             ;A4D08F;
    %spritemapEntry(1, $09, $F8, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $06, $F8, 0, 1, 3, 0, $14B)
    %spritemapEntry(0, $18, $09, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $10, $08, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $08, $08, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $00, $09, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1F8, $09, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $01, $F9, 0, 1, 3, 0, $12B)

Spritemap_Crocomire_D:
    dw $0008                                                             ;A4D0B9;
    %spritemapEntry(1, $03, $F5, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $02, $F5, 0, 1, 3, 0, $14B)
    %spritemapEntry(0, $11, $06, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $09, $05, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $01, $05, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $1F9, $07, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1F1, $07, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $01, $F9, 0, 1, 3, 0, $12B)

Spritemap_Crocomire_E:
    dw $0008                                                             ;A4D0E3;
    %spritemapEntry(0, $0C, $06, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $04, $05, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $1FC, $05, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $1F4, $07, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1EC, $07, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $1FC, $F5, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $1FC, $F5, 0, 0, 3, 0, $14B)
    %spritemapEntry(1, $00, $F9, 0, 0, 3, 0, $12B)

Spritemap_Crocomire_F:
    dw $0008                                                             ;A4D10D;
    %spritemapEntry(0, $08, $06, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $00, $05, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $1F8, $05, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $1F0, $07, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1E8, $07, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $1F8, $F5, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $1F9, $F5, 0, 0, 3, 0, $14B)
    %spritemapEntry(1, $00, $F9, 0, 0, 3, 0, $12B)

Spritemap_Crocomire_10:
    dw $0008                                                             ;A4D137;
    %spritemapEntry(0, $05, $07, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $1FD, $06, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $1F5, $06, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $1ED, $08, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1E5, $08, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $1F5, $F6, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $1F7, $F6, 0, 0, 3, 0, $14B)
    %spritemapEntry(1, $01, $F9, 0, 0, 3, 0, $12B)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_Crocomire_A4D161:
    dw $0008                                                             ;A4D161;
    %spritemapEntry(0, $02, $08, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $1FA, $07, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $1F2, $07, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $1EA, $08, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1E2, $08, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $1F2, $F7, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $1F6, $F7, 0, 0, 3, 0, $14B)
    %spritemapEntry(1, $01, $F9, 0, 0, 3, 0, $12B)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_Crocomire_11:
    dw $0008                                                             ;A4D18B;
    %spritemapEntry(0, $0C, $04, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $04, $05, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $1FC, $05, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $1F4, $05, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1EC, $05, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $1FC, $F5, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $1FC, $F5, 0, 0, 3, 0, $14B)
    %spritemapEntry(1, $00, $F9, 0, 0, 3, 0, $12B)

Spritemap_Crocomire_12:
    dw $0008                                                             ;A4D1B5;
    %spritemapEntry(0, $0C, $04, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $04, $05, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $1FC, $05, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $1F4, $05, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1EC, $05, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $1FC, $F5, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $1FC, $F3, 0, 0, 3, 0, $14B)
    %spritemapEntry(1, $00, $F5, 0, 0, 3, 0, $12B)

Spritemap_Crocomire_13:
    dw $0008                                                             ;A4D1DF;
    %spritemapEntry(0, $0C, $04, 0, 0, 3, 0, $DF)
    %spritemapEntry(0, $04, $05, 0, 0, 3, 0, $DE)
    %spritemapEntry(0, $1FC, $05, 0, 0, 3, 0, $DD)
    %spritemapEntry(0, $1F4, $05, 0, 0, 3, 0, $DC)
    %spritemapEntry(0, $1EC, $05, 0, 0, 3, 0, $DB)
    %spritemapEntry(1, $1FC, $F5, 0, 0, 3, 0, $12D)
    %spritemapEntry(1, $1FC, $F1, 0, 0, 3, 0, $14B)
    %spritemapEntry(1, $00, $F1, 0, 0, 3, 0, $12B)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_Crocomire_A4D209:
    dw $0009                                                             ;A4D209;
    %spritemapEntry(1, $2D, $1A, 0, 1, 3, 0, $E4)
    %spritemapEntry(1, $3D, $1E, 0, 1, 3, 0, $100)
    %spritemapEntry(0, $1F8, $07, 0, 1, 3, 0, $108)
    %spritemapEntry(0, $08, $FF, 0, 1, 3, 0, $F6)
    %spritemapEntry(1, $00, $07, 0, 1, 3, 0, $106)
    %spritemapEntry(1, $1F8, $F7, 0, 1, 3, 0, $E7)
    %spritemapEntry(1, $04, $0B, 0, 1, 3, 0, $E0)
    %spritemapEntry(1, $12, $12, 0, 1, 3, 0, $E0)
    %spritemapEntry(1, $20, $19, 0, 1, 3, 0, $E0)

UNUSED_Spritemap_Crocomire_A4D238:
    dw $0009                                                             ;A4D238;
    %spritemapEntry(1, $3F, $13, 0, 1, 3, 0, $E4)
    %spritemapEntry(1, $4F, $13, 0, 1, 3, 0, $100)
    %spritemapEntry(0, $00, $09, 0, 1, 3, 0, $FF)
    %spritemapEntry(0, $08, $F9, 0, 1, 3, 0, $EF)
    %spritemapEntry(1, $08, $01, 0, 1, 3, 0, $ED)
    %spritemapEntry(1, $1F8, $F9, 0, 1, 3, 0, $10D)
    %spritemapEntry(1, $12, $05, 0, 1, 3, 0, $102)
    %spritemapEntry(1, $22, $0F, 0, 1, 3, 0, $104)
    %spritemapEntry(1, $30, $0F, 0, 1, 3, 0, $102)

UNUSED_Spritemap_Crocomire_A4D267:
    dw $0007                                                             ;A4D267;
    %spritemapEntry(1, $24, $1C, 0, 1, 3, 0, $E4)
    %spritemapEntry(1, $34, $1E, 0, 1, 3, 0, $100)
    %spritemapEntry(1, $1F8, $08, 0, 1, 3, 0, $109)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 3, 0, $E9)
    %spritemapEntry(1, $1FA, $0D, 0, 1, 3, 0, $E0)
    %spritemapEntry(1, $08, $14, 0, 1, 3, 0, $E0)
    %spritemapEntry(1, $16, $1B, 0, 1, 3, 0, $E0)

UNUSED_Spritemap_Crocomire_A4D28C:
    dw $0009                                                             ;A4D28C;
    %spritemapEntry(0, $1F8, $08, 0, 0, 3, 0, $FF)
    %spritemapEntry(0, $1F0, $F8, 0, 0, 3, 0, $EF)
    %spritemapEntry(1, $1E8, $00, 0, 0, 3, 0, $ED)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $10D)
    %spritemapEntry(1, $1B, $11, 0, 1, 3, 0, $E4)
    %spritemapEntry(1, $2B, $11, 0, 1, 3, 0, $100)
    %spritemapEntry(1, $1EE, $03, 0, 1, 3, 0, $102)
    %spritemapEntry(1, $1FE, $0D, 0, 1, 3, 0, $104)
    %spritemapEntry(1, $0C, $0D, 0, 1, 3, 0, $102)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_Crocomire_14:
    dw $0007                                                             ;A4D2BB;
    %spritemapEntry(1, $1E6, $FA, 0, 0, 3, 0, $EB)
    %spritemapEntry(1, $1F6, $FA, 0, 0, 3, 0, $10B)
    %spritemapEntry(1, $1AD, $FA, 0, 0, 3, 0, $E4)
    %spritemapEntry(1, $19D, $FA, 0, 0, 3, 0, $100)
    %spritemapEntry(1, $1DD, $FA, 0, 0, 3, 0, $E2)
    %spritemapEntry(1, $1CD, $FA, 0, 0, 3, 0, $E2)
    %spritemapEntry(1, $1BD, $FA, 0, 0, 3, 0, $E2)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_Crocomire_A4D2E0:
    dw $0009                                                             ;A4D2E0;
    %spritemapEntry(0, $00, $F0, 1, 1, 3, 0, $FF)
    %spritemapEntry(0, $08, $00, 1, 1, 3, 0, $EF)
    %spritemapEntry(1, $08, $F0, 1, 1, 3, 0, $ED)
    %spritemapEntry(1, $1F8, $F8, 1, 1, 3, 0, $10D)
    %spritemapEntry(1, $3D, $DB, 0, 1, 3, 0, $E4)
    %spritemapEntry(1, $4D, $DB, 0, 1, 3, 0, $100)
    %spritemapEntry(1, $10, $EC, 1, 1, 3, 0, $102)
    %spritemapEntry(1, $20, $E2, 1, 1, 3, 0, $104)
    %spritemapEntry(1, $2E, $E2, 1, 1, 3, 0, $102)

UNUSED_Spritemap_Crocomire_A4D30F:
    dw $0007                                                             ;A4D30F;
    %spritemapEntry(1, $0A, $FA, 0, 1, 3, 0, $EB)
    %spritemapEntry(1, $1FA, $FA, 0, 1, 3, 0, $10B)
    %spritemapEntry(1, $43, $FA, 0, 1, 3, 0, $E4)
    %spritemapEntry(1, $53, $FA, 0, 1, 3, 0, $100)
    %spritemapEntry(1, $13, $FA, 0, 1, 3, 0, $E2)
    %spritemapEntry(1, $23, $FA, 0, 1, 3, 0, $E2)
    %spritemapEntry(1, $33, $FA, 0, 1, 3, 0, $E2)

UNUSED_Spritemap_Crocomire_A4D334:
    dw $0009                                                             ;A4D334;
    %spritemapEntry(0, $1F8, $08, 0, 0, 3, 0, $FF)
    %spritemapEntry(0, $1F0, $F8, 0, 0, 3, 0, $EF)
    %spritemapEntry(1, $1E8, $00, 0, 0, 3, 0, $ED)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $10D)
    %spritemapEntry(1, $1B, $F6, 0, 1, 3, 0, $E4)
    %spritemapEntry(1, $2B, $F6, 0, 1, 3, 0, $100)
    %spritemapEntry(1, $1EE, $07, 1, 1, 3, 0, $102)
    %spritemapEntry(1, $1FE, $FD, 1, 1, 3, 0, $104)
    %spritemapEntry(1, $0C, $FD, 1, 1, 3, 0, $102)

UNUSED_Spritemap_Crocomire_A4D363:
    dw $0007                                                             ;A4D363;
    %spritemapEntry(1, $1F8, $08, 0, 1, 3, 0, $109)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 3, 0, $E9)
    %spritemapEntry(1, $2A, $FA, 0, 1, 3, 0, $E4)
    %spritemapEntry(1, $3A, $FA, 0, 1, 3, 0, $100)
    %spritemapEntry(1, $1FD, $0B, 1, 1, 3, 0, $102)
    %spritemapEntry(1, $0D, $01, 1, 1, 3, 0, $104)
    %spritemapEntry(1, $1B, $01, 1, 1, 3, 0, $102)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_Crocomire_15:
    dw $0009                                                             ;A4D388;
    %spritemapEntry(0, $00, $08, 0, 1, 3, 0, $FF)
    %spritemapEntry(0, $08, $F8, 0, 1, 3, 0, $EF)
    %spritemapEntry(1, $08, $00, 0, 1, 3, 0, $ED)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 3, 0, $10D)
    %spritemapEntry(1, $1D5, $F6, 0, 0, 3, 0, $E4)
    %spritemapEntry(1, $1C5, $F6, 0, 0, 3, 0, $100)
    %spritemapEntry(1, $02, $07, 1, 0, 3, 0, $102)
    %spritemapEntry(1, $1F2, $FD, 1, 0, 3, 0, $104)
    %spritemapEntry(1, $1E4, $FD, 1, 0, 3, 0, $102)

Spritemap_Crocomire_16:
    dw $0009                                                             ;A4D3B7;
    %spritemapEntry(0, $1F8, $F0, 1, 0, 3, 0, $FF)
    %spritemapEntry(0, $1F0, $00, 1, 0, 3, 0, $EF)
    %spritemapEntry(1, $1E8, $F0, 1, 0, 3, 0, $ED)
    %spritemapEntry(1, $1F8, $F8, 1, 0, 3, 0, $10D)
    %spritemapEntry(1, $1B3, $DB, 0, 0, 3, 0, $E4)
    %spritemapEntry(1, $1A3, $DB, 0, 0, 3, 0, $100)
    %spritemapEntry(1, $1E0, $EC, 1, 0, 3, 0, $102)
    %spritemapEntry(1, $1D0, $E2, 1, 0, 3, 0, $104)
    %spritemapEntry(1, $1C2, $E2, 1, 0, 3, 0, $102)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_Crocomire_A4D3E6:
    dw $0004                                                             ;A4D3E6;
    %spritemapEntry(0, $00, $F8, 0, 1, 3, 0, $D0)
    %spritemapEntry(0, $00, $00, 1, 1, 3, 0, $D0)
    %spritemapEntry(0, $1F8, $00, 1, 0, 3, 0, $D0)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $D0)

UNUSED_Spritemap_Crocomire_A4D3FC:
    dw $0004                                                             ;A4D3FC;
    %spritemapEntry(0, $00, $F8, 0, 1, 3, 0, $D1)
    %spritemapEntry(0, $00, $00, 1, 1, 3, 0, $D1)
    %spritemapEntry(0, $1F8, $00, 1, 0, 3, 0, $D1)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $D1)

UNUSED_Spritemap_Crocomire_A4D412:
    dw $0004                                                             ;A4D412;
    %spritemapEntry(0, $00, $00, 1, 1, 3, 0, $D2)
    %spritemapEntry(0, $00, $F8, 0, 1, 3, 0, $D2)
    %spritemapEntry(0, $1F8, $00, 1, 0, 3, 0, $D2)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $D2)

UNUSED_Spritemap_Crocomire_A4D428:
    dw $0004                                                             ;A4D428;
    %spritemapEntry(0, $00, $00, 1, 1, 3, 0, $D3)
    %spritemapEntry(0, $00, $F8, 0, 1, 3, 0, $D3)
    %spritemapEntry(0, $1F8, $00, 1, 0, 3, 0, $D3)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 0, $D3)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_Crocomire_17:
    dw $0004                                                             ;A4D43E;
    %spritemapEntry(0, $08, $00, 0, 0, 2, 0, $D7)
    %spritemapEntry(0, $00, $00, 0, 0, 2, 0, $D6)
    %spritemapEntry(0, $1F8, $00, 0, 0, 2, 0, $D5)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 2, 0, $D4)

Spritemap_Crocomire_18:
    dw $0003                                                             ;A4D454;
    %spritemapEntry(0, $08, $00, 0, 0, 2, 0, $DA)
    %spritemapEntry(0, $00, $00, 0, 0, 2, 0, $D9)
    %spritemapEntry(0, $1F8, $00, 0, 0, 2, 0, $D8)

Spritemap_Crocomire_19:
    dw $0004                                                             ;A4D465;
    %spritemapEntry(0, $08, $F8, 1, 0, 2, 0, $D7)
    %spritemapEntry(0, $00, $F8, 1, 0, 2, 0, $D6)
    %spritemapEntry(0, $1F8, $F8, 1, 0, 2, 0, $D5)
    %spritemapEntry(0, $1F8, $00, 1, 0, 2, 0, $D4)

Spritemap_Crocomire_1A:
    dw $0003                                                             ;A4D47B;
    %spritemapEntry(0, $08, $F8, 1, 0, 2, 0, $DA)
    %spritemapEntry(0, $00, $F8, 1, 0, 2, 0, $D9)
    %spritemapEntry(0, $1F8, $F8, 1, 0, 2, 0, $D8)

Spritemap_Crocomire_1B:
    dw $0001                                                             ;A4D48C;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 3, 0, $1CC)

Spritemap_Crocomire_1C:
    dw $0006                                                             ;A4D493;
    %spritemapEntry(0, $1E0, $00, 0, 0, 3, 0, $1DE)
    %spritemapEntry(0, $1E0, $F8, 0, 0, 3, 0, $1CE)
    %spritemapEntry(0, $1E8, $00, 0, 0, 3, 0, $15D)
    %spritemapEntry(0, $1E8, $F8, 0, 0, 3, 0, $14D)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 3, 0, $1E6)
    %spritemapEntry(1, $00, $F0, 0, 0, 3, 0, $1E0)

Spritemap_Crocomire_1D:
    dw $0006                                                             ;A4D4B3;
    %spritemapEntry(0, $1E0, $00, 0, 0, 3, 0, $1DF)
    %spritemapEntry(0, $1E0, $F8, 0, 0, 3, 0, $1CF)
    %spritemapEntry(0, $1E8, $00, 0, 0, 3, 0, $15D)
    %spritemapEntry(0, $1E8, $F8, 0, 0, 3, 0, $14D)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 3, 0, $1E6)
    %spritemapEntry(1, $00, $F0, 0, 0, 3, 0, $1E0)

Spritemap_Crocomire_1E:
    dw $0006                                                             ;A4D4D3;
    %spritemapEntry(0, $1E8, $00, 0, 0, 3, 0, $15E)
    %spritemapEntry(0, $1E8, $F8, 0, 0, 3, 0, $14E)
    %spritemapEntry(0, $1E0, $00, 0, 0, 3, 0, $13F)
    %spritemapEntry(0, $1E0, $F8, 0, 0, 3, 0, $12F)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 3, 0, $1E6)
    %spritemapEntry(1, $00, $F0, 0, 0, 3, 0, $1E0)

Spritemap_Crocomire_1F:
    dw $0004                                                             ;A4D4F3;
    %spritemapEntry(1, $00, $F0, 0, 0, 3, 0, $1E0)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 3, 0, $1E8)
    %spritemapEntry(0, $1E8, $00, 0, 0, 3, 0, $15F)
    %spritemapEntry(0, $1E8, $F8, 0, 0, 3, 0, $14F)

Spritemap_Crocomire_20:
    dw $0002                                                             ;A4D509;
    %spritemapEntry(1, $00, $F0, 0, 0, 3, 0, $1E2)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 3, 0, $1EA)

Spritemap_Crocomire_21:
    dw $0001                                                             ;A4D515;
    %spritemapEntry(1, $00, $F0, 0, 0, 3, 0, $1E4)

ExtendedTilemap_Crocomire_0:                                             ;A4D51C;
    dw $FFFE
    dw $2000,$000C, $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338
    dw $2040,$000C, $0338,$0338,$3CA2,$3CA3,$3CA4,$3CA5,$3CA6,$3CA7,$3CA8,$3CA9,$3CAA,$0338
    dw $2080,$000C, $3CB0,$3CB1,$3CB2,$3CB3,$3CB4,$3CB5,$3CB6,$3CB7,$3CB8,$3CB9,$3CBA,$3CBB
    dw $20C0,$000C, $3CAC,$3CAD,$3CAE,$3CAF,$3CC0,$3CC1,$3CC2,$3CC3,$3CC4,$3CC5,$3CC6,$3CC7
    dw $2100,$000C, $3CBC,$3CBD,$3CBE,$3CBF,$3CD0,$3CD1,$3CD2,$3CD3,$3CD4,$3CD5,$3CD6,$3CD7
    dw $2140,$000C, $0338,$0338,$0338,$0338,$3CCA,$3CCB,$3CCC,$3CCD,$3CCE,$3CCF,$3C8B,$3C8C
    dw $2180,$000C, $0338,$0338,$3CD8,$3CD9,$3CDA,$3CDB,$3CDC,$3CDD,$3CDE,$3CDF,$3C9B,$3C9C
    dw $21C0,$000C, $0338,$0338,$3C43,$3C44,$3C45,$3C46,$3C8D,$3C8E,$3C8F,$3C9D,$3C9E,$3C9F
    dw $FFFF

ExtendedTilemap_Crocomire_1:                                             ;A4D600;
    dw $FFFE
    dw $2000,$0008, $0338,$3CE0,$3CE1,$3CE2,$3CE3,$3CE4,$3CE5,$3CE6
    dw $2040,$000B, $0338,$3CF0,$3CF1,$3CF2,$3CF3,$3CF4,$3CF5,$3CF6,$3CF7,$3CF8,$0338
    dw $2080,$000C, $0338,$0338,$3CE9,$3CEA,$3CEB,$3CEC,$3CED,$3CEE,$3CEF,$3D00,$3D01,$0338
    dw $20C0,$000C, $0338,$0338,$0338,$3CFA,$3CFB,$3CFC,$3CFD,$3CFE,$3CFF,$3D10,$3D11,$3D12
    dw $2100,$000C, $0338,$0338,$0338,$0338,$3D03,$3D04,$3D05,$3D06,$3D07,$3D08,$3D09,$3D0A
    dw $2140,$000C, $0338,$0338,$0338,$0338,$0338,$3D14,$3D15,$3D16,$3D17,$3D18,$3D19,$3D1A
    dw $2180,$000C, $0338,$0338,$3D0C,$3D0D,$3D0E,$3D0F,$3D20,$3D21,$3D22,$3D23,$3D24,$3D25
    dw $21C0,$000C, $0338,$0338,$3D1C,$3D1D,$3D1E,$3D1F,$3D30,$3D31,$3D32,$3D33,$3D34,$3D35
    dw $FFFF

ExtendedTilemap_Crocomire_2:                                             ;A4D6DA;
    dw $FFFE
    dw $2000,$0008, $0338,$0338,$0338,$0338,$0338,$0338,$0338,$0338
    dw $2040,$000B, $0338,$0338,$0338,$0338,$0338,$3C02,$3C03,$3C04,$3C05,$3C06,$3C07
    dw $2080,$000C, $0338,$0338,$0338,$3C10,$3C11,$3C12,$3C13,$3C14,$3C15,$3C16,$3C17,$3C18
    dw $20C0,$000C, $0338,$3C0A,$3C0B,$3C0C,$3C0D,$3C0E,$3C0F,$3C20,$3C21,$3C22,$3C23,$3C24
    dw $2100,$000C, $3C19,$3C1A,$3C1B,$3C1C,$3C1D,$3C1E,$3C1F,$3C30,$3C31,$3C32,$3C33,$3C34
    dw $2140,$000C, $3C25,$3C26,$3C27,$3C28,$3C29,$3C2A,$3C2B,$3C2C,$3C2D,$3C2E,$3C2F,$3C40
    dw $2180,$000C, $3C35,$3C36,$3C37,$3C38,$3C39,$3C3A,$3C3B,$3C3C,$3C3D,$3C3E,$3C3F,$3C50
    dw $21C0,$0001, $3C00
    dw $21C4,$000A, $3C43,$3C44,$3C45,$3C46,$3C47,$3C48,$3C49,$3C4A,$3C4B,$3C4C
    dw $FFFF

ExtendedTilemap_Crocomire_3:                                             ;A4D7B6;
    dw $FFFE
    dw $2246,$0004, $3C4F,$3C60,$3C61,$3C62
    dw $2286,$0004, $3C5F,$3C70,$3C71,$3C72
    dw $22C6,$0004, $3C6A,$3C6B,$3C6C,$3C6D
    dw $2306,$0004, $3C7A,$3C7B,$3C7C,$3C7D
    dw $FFFF

ExtendedTilemap_Crocomire_4:                                             ;A4D7EA;
    dw $FFFE,$2246,$0004,$3D46,$3D47,$3D48,$3D49,$2286,$0004,$3D56,$3D57,$3D58,$3D59,$22C6,$0004,$3D4A,$3D4B,$3D4C,$3D4D,$2306,$0004,$3D5A,$3D5B,$3D5C,$3D5D,$FFFF

ExtendedTilemap_Crocomire_5:                                             ;A4D81E;
    dw $FFFE,$2246,$0004,$3D4E,$3D4F,$3D02,$3D0B,$2286,$0004,$3D13,$3D1B,$3C42,$3C51,$22C6,$0004,$3CA0,$3CA1,$3CAB,$3CF9,$2306,$0004,$3C01,$3C08,$3C09,$3C41,$FFFF

ExtendedTilemap_Crocomire_6:                                             ;A4D852;
    dw $FFFE,$2354,$0006,$3D40,$3D41,$3D42,$3D43,$3D44,$3D45,$2394,$0006,$3D50,$3D51,$3D52,$3D53,$3D54,$3D55,$FFFF

ExtendedTilemap_Crocomire_7:                                             ;A4D876;
    dw $FFFE,$2354,$0006,$3D26,$3D27,$3D28,$3D29,$3D2A,$3D2B,$2394,$0006,$3D36,$3D37,$3D38,$3D39,$3D3A,$3D3B,$FFFF

ExtendedTilemap_Crocomire_8:                                             ;A4D89A;
    dw $FFFE,$2354,$0006,$3D2C,$3D2D,$3D2E,$3D2F,$3CC8,$3CC9,$2394,$0006,$3D3C,$3D3D,$3D3E,$3D3F,$3CE7,$3CE8,$FFFF

ExtendedTilemap_Crocomire_9:                                             ;A4D8BE;
    dw $FFFE
    dw $2040,$000C, $0338,$0338,$0338,$0338,$0338,$3C02,$3C03,$3C04,$3C05,$3C06,$3C07,$0338
    dw $2080,$000C, $0338,$0338,$0338,$3C10,$3C11,$3C12,$3C13,$3C14,$3C15,$3C16,$3C17,$3C18
    dw $20C0,$000C, $0338,$3C0A,$3C0B,$3C0C,$3C0D,$3C0E,$3C0F,$3C20,$3C21,$3C22,$3C23,$3C24
    dw $2100,$000C, $3C19,$3C1A,$3C1B,$3C1C,$3C1D,$3C1E,$3C1F,$3C30,$3C31,$3C32,$3C33,$3C34
    dw $2140,$000C, $3C25,$3C26,$3C27,$3C28,$3C29,$3C2A,$3C2B,$3C2C,$3C2D,$3C2E,$3C2F,$3C40
    dw $2180,$000C, $3C35,$3C36,$3C37,$3C38,$3C39,$3C3A,$3C3B,$3C3C,$3C3D,$3C3E,$3C3F,$3C50
    dw $21C0,$000C, $3C00,$0338,$3C43,$3C44,$3C45,$3C46,$3C47,$3C48,$3C49,$3C4A,$3C4B,$3C4C
    dw $2200,$000C, $0338,$0338,$3C53,$3C54,$3C55,$3C56,$3C57,$3C58,$3C59,$3C5A,$3C5B,$3C5C
    dw $2240,$000C, $0338,$3C4D,$3C4E,$3C4F,$3C60,$3C61,$3C62,$3C63,$3C64,$3C65,$3C66,$3C67
    dw $2280,$000C, $0338,$3C5D,$3C5E,$3C5F,$3C70,$3C71,$3C72,$3C73,$3C74,$3C75,$3C76,$3C77
    dw $22C0,$000C, $0338,$3C68,$3C69,$3C6A,$3C6B,$3C6C,$3C6D,$3C6E,$3C6F,$3C80,$3C81,$0338
    dw $2300,$000C, $0338,$3C78,$3C79,$3C7A,$3C7B,$3C7C,$3C7D,$3C7E,$3C7F,$3C90,$3C91,$0338
    dw $2340,$000C, $0338,$3C82,$3C83,$3C84,$3C85,$3C86,$3C87,$3C88,$3C89,$3C8A,$3D40,$3D41
    dw $2380,$000C, $0338,$0338,$3C93,$3C94,$3C95,$3C96,$3C97,$3C98,$3C99,$3C9A,$3D50,$3D51
    dw $FFFF

ExtendedTilemap_Crocomire_A:                                             ;A4DA4A;
    dw $FFFE
    dw $2202,$000B, $0338,$3C53,$3C54,$3C55,$3C56,$3C57,$3C58,$3C59,$3C5A,$3C5B,$3C5C
    dw $2242,$000B, $3C4D,$3C4E,$3C4F,$3C60,$3C61,$3C62,$3C63,$3C64,$3C65,$3C66,$3C67
    dw $2282,$000B, $3C5D,$3C5E,$3C5F,$3C70,$3C71,$3C72,$3C73,$3C74,$3C75,$3C76,$3C77
    dw $22C2,$000B, $3C68,$3C69,$3C6A,$3C6B,$3C6C,$3C6D,$3C6E,$3C6F,$3C80,$3C81,$0338
    dw $2302,$000B, $3C78,$3C79,$3C7A,$3C7B,$3C7C,$3C7D,$3C7E,$3C7F,$3C90,$3C91,$0338
    dw $2342,$000B, $3C82,$3C83,$3C84,$3C85,$3C86,$3C87,$3C88,$3C89,$3C8A,$3D40,$3D41
    dw $2382,$000B, $0338,$3C93,$3C94,$3C95,$3C96,$3C97,$3C98,$3C99,$3C9A,$3D50,$3D51
    dw $FFFF

Spritemap_Crocomire_22:
    dw $0017                                                             ;A4DB04;
    %spritemapEntry(0, $1D8, $D8, 0, 0, 2, 7, $177)
    %spritemapEntry(0, $1E8, $E8, 0, 0, 2, 7, $166)
    %spritemapEntry(0, $1F0, $E8, 0, 0, 2, 7, $165)
    %spritemapEntry(0, $00, $D0, 0, 0, 2, 7, $176)
    %spritemapEntry(0, $1F8, $D0, 0, 0, 2, 7, $175)
    %spritemapEntry(0, $1F0, $D0, 0, 0, 2, 7, $174)
    %spritemapEntry(0, $1F0, $C8, 0, 0, 2, 7, $164)
    %spritemapEntry(1, $43E0, $C8, 0, 0, 2, 7, $162)
    %spritemapEntry(1, $43D0, $C8, 0, 0, 2, 7, $160)
    %spritemapEntry(1, $43E8, $D8, 0, 0, 2, 7, $168)
    %spritemapEntry(0, $1E0, $E0, 0, 0, 2, 7, $177)
    %spritemapEntry(0, $1E0, $D8, 0, 0, 2, 7, $167)
    %spritemapEntry(1, $4218, $D8, 0, 0, 2, 7, $16E)
    %spritemapEntry(1, $4208, $D8, 0, 0, 2, 7, $16C)
    %spritemapEntry(1, $43F8, $D8, 0, 0, 2, 7, $16A)
    %spritemapEntry(1, $4218, $E8, 0, 0, 2, 7, $184)
    %spritemapEntry(1, $4208, $E8, 0, 0, 2, 7, $182)
    %spritemapEntry(1, $43F8, $E8, 0, 0, 2, 7, $180)
    %spritemapEntry(1, $4218, $F8, 0, 0, 2, 7, $18E)
    %spritemapEntry(1, $4208, $F8, 0, 0, 2, 7, $18C)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 7, $18A)
    %spritemapEntry(1, $43E8, $F8, 0, 0, 2, 7, $188)
    %spritemapEntry(1, $43D8, $F8, 0, 0, 2, 7, $186)

Spritemap_Crocomire_23:
    dw $0022                                                             ;A4DB79;
    %spritemapEntry(0, $1D8, $D8, 0, 0, 2, 7, $177)
    %spritemapEntry(0, $1E8, $E8, 0, 0, 2, 7, $166)
    %spritemapEntry(0, $1F0, $E8, 0, 0, 2, 7, $165)
    %spritemapEntry(0, $00, $D0, 0, 0, 2, 7, $176)
    %spritemapEntry(0, $1F8, $D0, 0, 0, 2, 7, $175)
    %spritemapEntry(0, $1F0, $D0, 0, 0, 2, 7, $174)
    %spritemapEntry(0, $1F0, $C8, 0, 0, 2, 7, $164)
    %spritemapEntry(1, $43E0, $C8, 0, 0, 2, 7, $162)
    %spritemapEntry(1, $43D0, $C8, 0, 0, 2, 7, $160)
    %spritemapEntry(1, $43E8, $D8, 0, 0, 2, 7, $168)
    %spritemapEntry(0, $1E0, $E0, 0, 0, 2, 7, $177)
    %spritemapEntry(0, $1E0, $D8, 0, 0, 2, 7, $167)
    %spritemapEntry(1, $4218, $D8, 0, 0, 2, 7, $16E)
    %spritemapEntry(1, $4208, $D8, 0, 0, 2, 7, $16C)
    %spritemapEntry(1, $43F8, $D8, 0, 0, 2, 7, $16A)
    %spritemapEntry(1, $4218, $E8, 0, 0, 2, 7, $184)
    %spritemapEntry(1, $4208, $E8, 0, 0, 2, 7, $182)
    %spritemapEntry(1, $43F8, $E8, 0, 0, 2, 7, $180)
    %spritemapEntry(1, $4218, $F8, 0, 0, 2, 7, $18E)
    %spritemapEntry(1, $4208, $F8, 0, 0, 2, 7, $18C)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 7, $18A)
    %spritemapEntry(1, $43E8, $F8, 0, 0, 2, 7, $188)
    %spritemapEntry(1, $43D8, $F8, 0, 0, 2, 7, $186)
    %spritemapEntry(0, $20, $08, 0, 0, 2, 7, $13A)
    %spritemapEntry(0, $18, $08, 0, 0, 2, 7, $139)
    %spritemapEntry(0, $10, $08, 0, 0, 2, 7, $138)
    %spritemapEntry(0, $08, $08, 0, 0, 2, 7, $137)
    %spritemapEntry(0, $00, $08, 0, 0, 2, 7, $136)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 7, $135)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 7, $134)
    %spritemapEntry(0, $1E8, $08, 0, 0, 2, 7, $133)
    %spritemapEntry(0, $1E0, $08, 0, 0, 2, 7, $132)
    %spritemapEntry(0, $1D8, $08, 0, 0, 2, 7, $131)
    %spritemapEntry(0, $1D0, $08, 0, 0, 2, 7, $130)

Spritemap_Crocomire_24:
    dw $002D                                                             ;A4DC25;
    %spritemapEntry(0, $1D8, $D8, 0, 0, 2, 7, $177)
    %spritemapEntry(0, $1E8, $E8, 0, 0, 2, 7, $166)
    %spritemapEntry(0, $1F0, $E8, 0, 0, 2, 7, $165)
    %spritemapEntry(0, $00, $D0, 0, 0, 2, 7, $176)
    %spritemapEntry(0, $1F8, $D0, 0, 0, 2, 7, $175)
    %spritemapEntry(0, $1F0, $D0, 0, 0, 2, 7, $174)
    %spritemapEntry(0, $1F0, $C8, 0, 0, 2, 7, $164)
    %spritemapEntry(1, $43E0, $C8, 0, 0, 2, 7, $162)
    %spritemapEntry(1, $43D0, $C8, 0, 0, 2, 7, $160)
    %spritemapEntry(1, $43E8, $D8, 0, 0, 2, 7, $168)
    %spritemapEntry(0, $1E0, $E0, 0, 0, 2, 7, $177)
    %spritemapEntry(0, $1E0, $D8, 0, 0, 2, 7, $167)
    %spritemapEntry(1, $4218, $D8, 0, 0, 2, 7, $16E)
    %spritemapEntry(1, $4208, $D8, 0, 0, 2, 7, $16C)
    %spritemapEntry(1, $43F8, $D8, 0, 0, 2, 7, $16A)
    %spritemapEntry(1, $4218, $E8, 0, 0, 2, 7, $184)
    %spritemapEntry(1, $4208, $E8, 0, 0, 2, 7, $182)
    %spritemapEntry(1, $43F8, $E8, 0, 0, 2, 7, $180)
    %spritemapEntry(1, $4218, $F8, 0, 0, 2, 7, $18E)
    %spritemapEntry(1, $4208, $F8, 0, 0, 2, 7, $18C)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 7, $18A)
    %spritemapEntry(1, $43E8, $F8, 0, 0, 2, 7, $188)
    %spritemapEntry(1, $43D8, $F8, 0, 0, 2, 7, $186)
    %spritemapEntry(0, $20, $10, 0, 0, 2, 7, $14A)
    %spritemapEntry(0, $18, $10, 0, 0, 2, 7, $149)
    %spritemapEntry(0, $10, $10, 0, 0, 2, 7, $148)
    %spritemapEntry(0, $08, $10, 0, 0, 2, 7, $147)
    %spritemapEntry(0, $00, $10, 0, 0, 2, 7, $146)
    %spritemapEntry(0, $1F8, $10, 0, 0, 2, 7, $145)
    %spritemapEntry(0, $1F0, $10, 0, 0, 2, 7, $144)
    %spritemapEntry(0, $1E8, $10, 0, 0, 2, 7, $143)
    %spritemapEntry(0, $1E0, $10, 0, 0, 2, 7, $142)
    %spritemapEntry(0, $1D8, $10, 0, 0, 2, 7, $141)
    %spritemapEntry(0, $1D0, $10, 0, 0, 2, 7, $140)
    %spritemapEntry(0, $20, $08, 0, 0, 2, 7, $13A)
    %spritemapEntry(0, $18, $08, 0, 0, 2, 7, $139)
    %spritemapEntry(0, $10, $08, 0, 0, 2, 7, $138)
    %spritemapEntry(0, $08, $08, 0, 0, 2, 7, $137)
    %spritemapEntry(0, $00, $08, 0, 0, 2, 7, $136)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 7, $135)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 7, $134)
    %spritemapEntry(0, $1E8, $08, 0, 0, 2, 7, $133)
    %spritemapEntry(0, $1E0, $08, 0, 0, 2, 7, $132)
    %spritemapEntry(0, $1D8, $08, 0, 0, 2, 7, $131)
    %spritemapEntry(0, $1D0, $08, 0, 0, 2, 7, $130)

Spritemap_Crocomire_25:
    dw $0037                                                             ;A4DD08;
    %spritemapEntry(0, $1D8, $D8, 0, 0, 2, 7, $177)
    %spritemapEntry(0, $1E8, $E8, 0, 0, 2, 7, $166)
    %spritemapEntry(0, $1F0, $E8, 0, 0, 2, 7, $165)
    %spritemapEntry(0, $00, $D0, 0, 0, 2, 7, $176)
    %spritemapEntry(0, $1F8, $D0, 0, 0, 2, 7, $175)
    %spritemapEntry(0, $1F0, $D0, 0, 0, 2, 7, $174)
    %spritemapEntry(0, $1F0, $C8, 0, 0, 2, 7, $164)
    %spritemapEntry(1, $43E0, $C8, 0, 0, 2, 7, $162)
    %spritemapEntry(1, $43D0, $C8, 0, 0, 2, 7, $160)
    %spritemapEntry(1, $43E8, $D8, 0, 0, 2, 7, $168)
    %spritemapEntry(0, $1E0, $E0, 0, 0, 2, 7, $177)
    %spritemapEntry(0, $1E0, $D8, 0, 0, 2, 7, $167)
    %spritemapEntry(1, $4218, $D8, 0, 0, 2, 7, $16E)
    %spritemapEntry(1, $4208, $D8, 0, 0, 2, 7, $16C)
    %spritemapEntry(1, $43F8, $D8, 0, 0, 2, 7, $16A)
    %spritemapEntry(1, $4218, $E8, 0, 0, 2, 7, $184)
    %spritemapEntry(1, $4208, $E8, 0, 0, 2, 7, $182)
    %spritemapEntry(1, $43F8, $E8, 0, 0, 2, 7, $180)
    %spritemapEntry(1, $4218, $F8, 0, 0, 2, 7, $18E)
    %spritemapEntry(1, $4208, $F8, 0, 0, 2, 7, $18C)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 7, $18A)
    %spritemapEntry(1, $43E8, $F8, 0, 0, 2, 7, $188)
    %spritemapEntry(1, $43D8, $F8, 0, 0, 2, 7, $186)
    %spritemapEntry(0, $18, $18, 0, 0, 2, 7, $159)
    %spritemapEntry(0, $10, $18, 0, 0, 2, 7, $158)
    %spritemapEntry(0, $08, $18, 0, 0, 2, 7, $157)
    %spritemapEntry(0, $00, $18, 0, 0, 2, 7, $156)
    %spritemapEntry(0, $1F8, $18, 0, 0, 2, 7, $155)
    %spritemapEntry(0, $1F0, $18, 0, 0, 2, 7, $154)
    %spritemapEntry(0, $1E8, $18, 0, 0, 2, 7, $153)
    %spritemapEntry(0, $1E0, $18, 0, 0, 2, 7, $152)
    %spritemapEntry(0, $1D8, $18, 0, 0, 2, 7, $151)
    %spritemapEntry(0, $1D0, $18, 0, 0, 2, 7, $150)
    %spritemapEntry(0, $20, $10, 0, 0, 2, 7, $14A)
    %spritemapEntry(0, $18, $10, 0, 0, 2, 7, $149)
    %spritemapEntry(0, $10, $10, 0, 0, 2, 7, $148)
    %spritemapEntry(0, $08, $10, 0, 0, 2, 7, $147)
    %spritemapEntry(0, $00, $10, 0, 0, 2, 7, $146)
    %spritemapEntry(0, $1F8, $10, 0, 0, 2, 7, $145)
    %spritemapEntry(0, $1F0, $10, 0, 0, 2, 7, $144)
    %spritemapEntry(0, $1E8, $10, 0, 0, 2, 7, $143)
    %spritemapEntry(0, $1E0, $10, 0, 0, 2, 7, $142)
    %spritemapEntry(0, $1D8, $10, 0, 0, 2, 7, $141)
    %spritemapEntry(0, $1D0, $10, 0, 0, 2, 7, $140)
    %spritemapEntry(0, $20, $08, 0, 0, 2, 7, $13A)
    %spritemapEntry(0, $18, $08, 0, 0, 2, 7, $139)
    %spritemapEntry(0, $10, $08, 0, 0, 2, 7, $138)
    %spritemapEntry(0, $08, $08, 0, 0, 2, 7, $137)
    %spritemapEntry(0, $00, $08, 0, 0, 2, 7, $136)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 7, $135)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 7, $134)
    %spritemapEntry(0, $1E8, $08, 0, 0, 2, 7, $133)
    %spritemapEntry(0, $1E0, $08, 0, 0, 2, 7, $132)
    %spritemapEntry(0, $1D8, $08, 0, 0, 2, 7, $131)
    %spritemapEntry(0, $1D0, $08, 0, 0, 2, 7, $130)

Spritemap_Crocomire_26:
    dw $0018                                                             ;A4DE1D;
    %spritemapEntry(0, $10, $F0, 0, 0, 2, 7, $1ED)
    %spritemapEntry(0, $08, $F0, 0, 0, 2, 7, $1EC)
    %spritemapEntry(0, $20, $F0, 0, 0, 2, 7, $1FD)
    %spritemapEntry(0, $18, $F0, 0, 0, 2, 7, $1FC)
    %spritemapEntry(1, $4218, $F8, 0, 0, 2, 7, $18E)
    %spritemapEntry(1, $4208, $F8, 0, 0, 2, 7, $18C)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 7, $18A)
    %spritemapEntry(0, $01, $D0, 0, 0, 2, 7, $1B6)
    %spritemapEntry(0, $1D9, $00, 0, 0, 2, 7, $1A6)
    %spritemapEntry(0, $1E1, $00, 0, 0, 2, 7, $1AF)
    %spritemapEntry(0, $1E9, $00, 0, 0, 2, 7, $1BF)
    %spritemapEntry(1, $4211, $F8, 0, 0, 2, 7, $1CA)
    %spritemapEntry(1, $4201, $F8, 0, 0, 2, 7, $1C8)
    %spritemapEntry(1, $43F1, $F8, 0, 0, 2, 7, $1C6)
    %spritemapEntry(1, $4211, $E8, 0, 0, 2, 7, $1C4)
    %spritemapEntry(1, $4201, $E8, 0, 0, 2, 7, $1C2)
    %spritemapEntry(1, $43F1, $E8, 0, 0, 2, 7, $1C0)
    %spritemapEntry(1, $4211, $D8, 0, 0, 2, 7, $1AD)
    %spritemapEntry(1, $4201, $D8, 0, 0, 2, 7, $1AB)
    %spritemapEntry(1, $43F1, $D8, 0, 0, 2, 7, $1A9)
    %spritemapEntry(1, $43E1, $D8, 0, 0, 2, 7, $1A7)
    %spritemapEntry(1, $43F1, $C8, 0, 0, 2, 7, $1A4)
    %spritemapEntry(1, $43E1, $C8, 0, 0, 2, 7, $1A2)
    %spritemapEntry(1, $43D1, $C8, 0, 0, 2, 7, $1A0)

Spritemap_Crocomire_27:
    dw $0023                                                             ;A4DE97;
    %spritemapEntry(0, $10, $F0, 0, 0, 2, 7, $1ED)
    %spritemapEntry(0, $08, $F0, 0, 0, 2, 7, $1EC)
    %spritemapEntry(0, $20, $F0, 0, 0, 2, 7, $1FD)
    %spritemapEntry(0, $18, $F0, 0, 0, 2, 7, $1FC)
    %spritemapEntry(1, $4218, $F8, 0, 0, 2, 7, $18E)
    %spritemapEntry(1, $4208, $F8, 0, 0, 2, 7, $18C)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 7, $18A)
    %spritemapEntry(0, $01, $D0, 0, 0, 2, 7, $1B6)
    %spritemapEntry(0, $1D9, $00, 0, 0, 2, 7, $1A6)
    %spritemapEntry(0, $1E1, $00, 0, 0, 2, 7, $1AF)
    %spritemapEntry(0, $1E9, $00, 0, 0, 2, 7, $1BF)
    %spritemapEntry(1, $4211, $F8, 0, 0, 2, 7, $1CA)
    %spritemapEntry(1, $4201, $F8, 0, 0, 2, 7, $1C8)
    %spritemapEntry(1, $43F1, $F8, 0, 0, 2, 7, $1C6)
    %spritemapEntry(1, $4211, $E8, 0, 0, 2, 7, $1C4)
    %spritemapEntry(1, $4201, $E8, 0, 0, 2, 7, $1C2)
    %spritemapEntry(1, $43F1, $E8, 0, 0, 2, 7, $1C0)
    %spritemapEntry(1, $4211, $D8, 0, 0, 2, 7, $1AD)
    %spritemapEntry(1, $4201, $D8, 0, 0, 2, 7, $1AB)
    %spritemapEntry(1, $43F1, $D8, 0, 0, 2, 7, $1A9)
    %spritemapEntry(1, $43E1, $D8, 0, 0, 2, 7, $1A7)
    %spritemapEntry(1, $43F1, $C8, 0, 0, 2, 7, $1A4)
    %spritemapEntry(1, $43E1, $C8, 0, 0, 2, 7, $1A2)
    %spritemapEntry(1, $43D1, $C8, 0, 0, 2, 7, $1A0)
    %spritemapEntry(0, $20, $08, 0, 0, 2, 7, $13A)
    %spritemapEntry(0, $18, $08, 0, 0, 2, 7, $139)
    %spritemapEntry(0, $10, $08, 0, 0, 2, 7, $138)
    %spritemapEntry(0, $08, $08, 0, 0, 2, 7, $137)
    %spritemapEntry(0, $00, $08, 0, 0, 2, 7, $136)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 7, $135)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 7, $134)
    %spritemapEntry(0, $1E8, $08, 0, 0, 2, 7, $133)
    %spritemapEntry(0, $1E0, $08, 0, 0, 2, 7, $132)
    %spritemapEntry(0, $1D8, $08, 0, 0, 2, 7, $131)
    %spritemapEntry(0, $1D0, $08, 0, 0, 2, 7, $130)

Spritemap_Crocomire_28:
    dw $002E                                                             ;A4DF48;
    %spritemapEntry(0, $10, $F0, 0, 0, 2, 7, $1ED)
    %spritemapEntry(0, $08, $F0, 0, 0, 2, 7, $1EC)
    %spritemapEntry(0, $20, $F0, 0, 0, 2, 7, $1FD)
    %spritemapEntry(0, $18, $F0, 0, 0, 2, 7, $1FC)
    %spritemapEntry(1, $4218, $F8, 0, 0, 2, 7, $18E)
    %spritemapEntry(1, $4208, $F8, 0, 0, 2, 7, $18C)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 7, $18A)
    %spritemapEntry(0, $01, $D0, 0, 0, 2, 7, $1B6)
    %spritemapEntry(0, $1D9, $00, 0, 0, 2, 7, $1A6)
    %spritemapEntry(0, $1E1, $00, 0, 0, 2, 7, $1AF)
    %spritemapEntry(0, $1E9, $00, 0, 0, 2, 7, $1BF)
    %spritemapEntry(1, $4211, $F8, 0, 0, 2, 7, $1CA)
    %spritemapEntry(1, $4201, $F8, 0, 0, 2, 7, $1C8)
    %spritemapEntry(1, $43F1, $F8, 0, 0, 2, 7, $1C6)
    %spritemapEntry(1, $4211, $E8, 0, 0, 2, 7, $1C4)
    %spritemapEntry(1, $4201, $E8, 0, 0, 2, 7, $1C2)
    %spritemapEntry(1, $43F1, $E8, 0, 0, 2, 7, $1C0)
    %spritemapEntry(1, $4211, $D8, 0, 0, 2, 7, $1AD)
    %spritemapEntry(1, $4201, $D8, 0, 0, 2, 7, $1AB)
    %spritemapEntry(1, $43F1, $D8, 0, 0, 2, 7, $1A9)
    %spritemapEntry(1, $43E1, $D8, 0, 0, 2, 7, $1A7)
    %spritemapEntry(1, $43F1, $C8, 0, 0, 2, 7, $1A4)
    %spritemapEntry(1, $43E1, $C8, 0, 0, 2, 7, $1A2)
    %spritemapEntry(1, $43D1, $C8, 0, 0, 2, 7, $1A0)
    %spritemapEntry(0, $20, $10, 0, 0, 2, 7, $14A)
    %spritemapEntry(0, $18, $10, 0, 0, 2, 7, $149)
    %spritemapEntry(0, $10, $10, 0, 0, 2, 7, $148)
    %spritemapEntry(0, $08, $10, 0, 0, 2, 7, $147)
    %spritemapEntry(0, $00, $10, 0, 0, 2, 7, $146)
    %spritemapEntry(0, $1F8, $10, 0, 0, 2, 7, $145)
    %spritemapEntry(0, $1F0, $10, 0, 0, 2, 7, $144)
    %spritemapEntry(0, $1E8, $10, 0, 0, 2, 7, $143)
    %spritemapEntry(0, $1E0, $10, 0, 0, 2, 7, $142)
    %spritemapEntry(0, $1D8, $10, 0, 0, 2, 7, $141)
    %spritemapEntry(0, $1D0, $10, 0, 0, 2, 7, $140)
    %spritemapEntry(0, $20, $08, 0, 0, 2, 7, $13A)
    %spritemapEntry(0, $18, $08, 0, 0, 2, 7, $139)
    %spritemapEntry(0, $10, $08, 0, 0, 2, 7, $138)
    %spritemapEntry(0, $08, $08, 0, 0, 2, 7, $137)
    %spritemapEntry(0, $00, $08, 0, 0, 2, 7, $136)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 7, $135)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 7, $134)
    %spritemapEntry(0, $1E8, $08, 0, 0, 2, 7, $133)
    %spritemapEntry(0, $1E0, $08, 0, 0, 2, 7, $132)
    %spritemapEntry(0, $1D8, $08, 0, 0, 2, 7, $131)
    %spritemapEntry(0, $1D0, $08, 0, 0, 2, 7, $130)

Spritemap_Crocomire_29:
    dw $0038                                                             ;A4E030;
    %spritemapEntry(0, $10, $F0, 0, 0, 2, 7, $1ED)
    %spritemapEntry(0, $08, $F0, 0, 0, 2, 7, $1EC)
    %spritemapEntry(0, $20, $F0, 0, 0, 2, 7, $1FD)
    %spritemapEntry(0, $18, $F0, 0, 0, 2, 7, $1FC)
    %spritemapEntry(1, $4218, $F8, 0, 0, 2, 7, $18E)
    %spritemapEntry(1, $4208, $F8, 0, 0, 2, 7, $18C)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 7, $18A)
    %spritemapEntry(0, $01, $D0, 0, 0, 2, 7, $1B6)
    %spritemapEntry(0, $1D9, $00, 0, 0, 2, 7, $1A6)
    %spritemapEntry(0, $1E1, $00, 0, 0, 2, 7, $1AF)
    %spritemapEntry(0, $1E9, $00, 0, 0, 2, 7, $1BF)
    %spritemapEntry(1, $4211, $F8, 0, 0, 2, 7, $1CA)
    %spritemapEntry(1, $4201, $F8, 0, 0, 2, 7, $1C8)
    %spritemapEntry(1, $43F1, $F8, 0, 0, 2, 7, $1C6)
    %spritemapEntry(1, $4211, $E8, 0, 0, 2, 7, $1C4)
    %spritemapEntry(1, $4201, $E8, 0, 0, 2, 7, $1C2)
    %spritemapEntry(1, $43F1, $E8, 0, 0, 2, 7, $1C0)
    %spritemapEntry(1, $4211, $D8, 0, 0, 2, 7, $1AD)
    %spritemapEntry(1, $4201, $D8, 0, 0, 2, 7, $1AB)
    %spritemapEntry(1, $43F1, $D8, 0, 0, 2, 7, $1A9)
    %spritemapEntry(1, $43E1, $D8, 0, 0, 2, 7, $1A7)
    %spritemapEntry(1, $43F1, $C8, 0, 0, 2, 7, $1A4)
    %spritemapEntry(1, $43E1, $C8, 0, 0, 2, 7, $1A2)
    %spritemapEntry(1, $43D1, $C8, 0, 0, 2, 7, $1A0)
    %spritemapEntry(0, $18, $18, 0, 0, 2, 7, $159)
    %spritemapEntry(0, $10, $18, 0, 0, 2, 7, $158)
    %spritemapEntry(0, $08, $18, 0, 0, 2, 7, $157)
    %spritemapEntry(0, $00, $18, 0, 0, 2, 7, $156)
    %spritemapEntry(0, $1F8, $18, 0, 0, 2, 7, $155)
    %spritemapEntry(0, $1F0, $18, 0, 0, 2, 7, $154)
    %spritemapEntry(0, $1E8, $18, 0, 0, 2, 7, $153)
    %spritemapEntry(0, $1E0, $18, 0, 0, 2, 7, $152)
    %spritemapEntry(0, $1D8, $18, 0, 0, 2, 7, $151)
    %spritemapEntry(0, $1D0, $18, 0, 0, 2, 7, $150)
    %spritemapEntry(0, $20, $10, 0, 0, 2, 7, $14A)
    %spritemapEntry(0, $18, $10, 0, 0, 2, 7, $149)
    %spritemapEntry(0, $10, $10, 0, 0, 2, 7, $148)
    %spritemapEntry(0, $08, $10, 0, 0, 2, 7, $147)
    %spritemapEntry(0, $00, $10, 0, 0, 2, 7, $146)
    %spritemapEntry(0, $1F8, $10, 0, 0, 2, 7, $145)
    %spritemapEntry(0, $1F0, $10, 0, 0, 2, 7, $144)
    %spritemapEntry(0, $1E8, $10, 0, 0, 2, 7, $143)
    %spritemapEntry(0, $1E0, $10, 0, 0, 2, 7, $142)
    %spritemapEntry(0, $1D8, $10, 0, 0, 2, 7, $141)
    %spritemapEntry(0, $1D0, $10, 0, 0, 2, 7, $140)
    %spritemapEntry(0, $20, $08, 0, 0, 2, 7, $13A)
    %spritemapEntry(0, $18, $08, 0, 0, 2, 7, $139)
    %spritemapEntry(0, $10, $08, 0, 0, 2, 7, $138)
    %spritemapEntry(0, $08, $08, 0, 0, 2, 7, $137)
    %spritemapEntry(0, $00, $08, 0, 0, 2, 7, $136)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 7, $135)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 7, $134)
    %spritemapEntry(0, $1E8, $08, 0, 0, 2, 7, $133)
    %spritemapEntry(0, $1E0, $08, 0, 0, 2, 7, $132)
    %spritemapEntry(0, $1D8, $08, 0, 0, 2, 7, $131)
    %spritemapEntry(0, $1D0, $08, 0, 0, 2, 7, $130)


InstList_CrocomireCorpse_Skeleton_Falling:
    dw $0008,ExtendedSpritemap_CrocomireCorpse_0                         ;A4E14A;
    dw $0008,ExtendedSpritemap_CrocomireCorpse_1                         ;A4E14E;
    dw $0009,ExtendedSpritemap_CrocomireCorpse_2                         ;A4E152;
    dw Instruction_Common_Sleep                                          ;A4E156;

InstList_CrocomireCorpse_Skeleton_FallsApart_0:
    dw $0008,ExtendedSpritemap_CrocomireCorpse_3                         ;A4E158;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_Negative20      ;A4E15C;
    dw $0004,ExtendedSpritemap_CrocomireCorpse_4                         ;A4E15E;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_0               ;A4E162;
    dw $0004,ExtendedSpritemap_CrocomireCorpse_4                         ;A4E164;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_Negative10      ;A4E168;
    dw $0004,ExtendedSpritemap_CrocomireCorpse_5                         ;A4E16A;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_10              ;A4E16E;
    dw $0005,ExtendedSpritemap_CrocomireCorpse_5                         ;A4E170;
    dw $0008,ExtendedSpritemap_CrocomireCorpse_6                         ;A4E174;
    dw $001A,ExtendedSpritemap_CrocomireCorpse_7                         ;A4E178;
    dw $000D,ExtendedSpritemap_CrocomireCorpse_8                         ;A4E17C;
    dw Instruction_Crocomire_QueueSkeletonCollapseSFX                    ;A4E180;
    dw $0008,ExtendedSpritemap_CrocomireCorpse_9                         ;A4E182;
    dw $0007,ExtendedSpritemap_CrocomireCorpse_A                         ;A4E186;
    dw $0008,ExtendedSpritemap_CrocomireCorpse_B                         ;A4E18A;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_0_dup           ;A4E18E;
    dw $0006,ExtendedSpritemap_CrocomireCorpse_C                         ;A4E190;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_8               ;A4E194;
    dw $0006,ExtendedSpritemap_CrocomireCorpse_D                         ;A4E196;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_10_dup          ;A4E19A;
    dw $0006,ExtendedSpritemap_CrocomireCorpse_E                         ;A4E19C;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_18              ;A4E1A0;
    dw $0007,ExtendedSpritemap_CrocomireCorpse_F                         ;A4E1A2;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_20              ;A4E1A6;
    dw $0005,ExtendedSpritemap_CrocomireCorpse_10                        ;A4E1A8;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_28              ;A4E1AC;
    dw $0005,ExtendedSpritemap_CrocomireCorpse_11                        ;A4E1AE;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_30              ;A4E1B2;
    dw $0006,ExtendedSpritemap_CrocomireCorpse_12                        ;A4E1B4;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_38              ;A4E1B8;
    dw $0004,ExtendedSpritemap_CrocomireCorpse_13                        ;A4E1BA;
    dw Instruction_Crocomire_SpawnBigDustCloudProjectile_40              ;A4E1BE;
    dw Instruction_Crocomire_QueueBigExplosionSFX                        ;A4E1C0;
    dw $0005,ExtendedSpritemap_CrocomireCorpse_14                        ;A4E1C2;

InstList_CrocomireCorpse_Skeleton_1:
    dw $7FFF,ExtendedSpritemap_CrocomireCorpse_15                        ;A4E1C6;
    dw Instruction_Common_Sleep                                          ;A4E1CA;

InstList_CrocomireCorpse_Skeleton_Dead:
    dw $7FFF,ExtendedSpritemap_CrocomireCorpse_16                        ;A4E1CC;
    dw Instruction_CommonA4_Sleep                                        ;A4E1D0;

InstList_CrocomireCorpse_Skeleton_FlowingDownTheRiver:
    dw $0003,ExtendedSpritemap_CrocomireCorpse_17                        ;A4E1D2;
    dw $0003,ExtendedSpritemap_CrocomireCorpse_18                        ;A4E1D6;
    dw $0003,ExtendedSpritemap_CrocomireCorpse_19                        ;A4E1DA;
    dw $0003,ExtendedSpritemap_CrocomireCorpse_1A                        ;A4E1DE;
    dw $0003,ExtendedSpritemap_CrocomireCorpse_1B                        ;A4E1E2;
    dw $0003,ExtendedSpritemap_CrocomireCorpse_1C                        ;A4E1E6;
    dw $0003,ExtendedSpritemap_CrocomireCorpse_1D                        ;A4E1EA;
    dw $0003,ExtendedSpritemap_CrocomireCorpse_1E                        ;A4E1EE;
    dw $0003,ExtendedSpritemap_CrocomireCorpse_1F                        ;A4E1F2;
    dw $0011,ExtendedSpritemap_CrocomireCorpse_20                        ;A4E1F6;
    dw Instruction_Common_GotoY                                          ;A4E1FA;
    dw InstList_CrocomireCorpse_Skeleton_FlowingDownTheRiver             ;A4E1FC;

ExtendedSpritemap_CrocomireCorpse_0:
    dw $0005                                                             ;A4E1FE;
    dw $FFF0,$0007
    dw Spritemap_CrocomireCorpse_14                                      ;A4E204;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E206;
    dw $FFFC,$FFD1                                                       ;A4E208;
    dw Spritemap_CrocomireCorpse_0                                       ;A4E20C;
    dw Hitbox_CrocomireCorspe                                            ;A4E20E;
    dw $FFE7,$FFF8                                                       ;A4E210;
    dw Spritemap_CrocomireCorpse_3                                       ;A4E214;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E216;
    dw $FFFF,$0005                                                       ;A4E218;
    dw Spritemap_CrocomireCorpse_1                                       ;A4E21C;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E21E;
    dw $FFE4,$0014                                                       ;A4E220;
    dw Spritemap_CrocomireCorpse_2                                       ;A4E224;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E226;

ExtendedSpritemap_CrocomireCorpse_1:
    dw $0005                                                             ;A4E228;
    dw $FFF0,$0004
    dw Spritemap_CrocomireCorpse_15                                      ;A4E22E;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E230;
    dw $FFFD,$FFCF                                                       ;A4E232;
    dw Spritemap_CrocomireCorpse_0                                       ;A4E236;
    dw Hitbox_CrocomireCorspe                                            ;A4E238;
    dw $FFE7,$FFF8                                                       ;A4E23A;
    dw Spritemap_CrocomireCorpse_3                                       ;A4E23E;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E240;
    dw $FFFF,$0003                                                       ;A4E242;
    dw Spritemap_CrocomireCorpse_1                                       ;A4E246;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E248;
    dw $FFE2,$0014                                                       ;A4E24A;
    dw Spritemap_CrocomireCorpse_2                                       ;A4E24E;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E250;

ExtendedSpritemap_CrocomireCorpse_2:
    dw $0005                                                             ;A4E252;
    dw $FFF5,$FFFF
    dw Spritemap_CrocomireCorpse_12                                      ;A4E258;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E25A;
    dw $FFFF,$FFCE                                                       ;A4E25C;
    dw Spritemap_CrocomireCorpse_0                                       ;A4E260;
    dw Hitbox_CrocomireCorspe                                            ;A4E262;
    dw $FFE7,$FFF6                                                       ;A4E264;
    dw Spritemap_CrocomireCorpse_3                                       ;A4E268;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E26A;
    dw $FFFF,$0002                                                       ;A4E26C;
    dw Spritemap_CrocomireCorpse_1                                       ;A4E270;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E272;
    dw $FFE1,$0014                                                       ;A4E274;
    dw Spritemap_CrocomireCorpse_2                                       ;A4E278;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E27A;

ExtendedSpritemap_CrocomireCorpse_3:
    dw $0005                                                             ;A4E27C;
    dw $FFF0,$0003
    dw Spritemap_CrocomireCorpse_13                                      ;A4E282;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E284;
    dw $0000,$FFCD                                                       ;A4E286;
    dw Spritemap_CrocomireCorpse_0                                       ;A4E28A;
    dw Hitbox_CrocomireCorspe                                            ;A4E28C;
    dw $FFE7,$FFF8                                                       ;A4E28E;
    dw Spritemap_CrocomireCorpse_3                                       ;A4E292;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E294;
    dw $FFFF,$0001                                                       ;A4E296;
    dw Spritemap_CrocomireCorpse_1                                       ;A4E29A;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E29C;
    dw $FFE0,$0014                                                       ;A4E29E;
    dw Spritemap_CrocomireCorpse_2                                       ;A4E2A2;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E2A4;

ExtendedSpritemap_CrocomireCorpse_4:
    dw $0005                                                             ;A4E2A6;
    dw $FFF4,$0007
    dw Spritemap_CrocomireCorpse_10                                      ;A4E2AC;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E2AE;
    dw $0002,$FFD0                                                       ;A4E2B0;
    dw Spritemap_CrocomireCorpse_0                                       ;A4E2B4;
    dw Hitbox_CrocomireCorspe                                            ;A4E2B6;
    dw $FFE7,$FFFB                                                       ;A4E2B8;
    dw Spritemap_CrocomireCorpse_3                                       ;A4E2BC;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E2BE;
    dw $FFFF,$0004                                                       ;A4E2C0;
    dw Spritemap_CrocomireCorpse_1                                       ;A4E2C4;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E2C6;
    dw $FFDF,$0014                                                       ;A4E2C8;
    dw Spritemap_CrocomireCorpse_2                                       ;A4E2CC;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E2CE;

ExtendedSpritemap_CrocomireCorpse_5:
    dw $0005                                                             ;A4E2D0;
    dw $FFF4,$0006
    dw Spritemap_CrocomireCorpse_10                                      ;A4E2D6;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E2D8;
    dw $0002,$FFD4                                                       ;A4E2DA;
    dw Spritemap_CrocomireCorpse_0                                       ;A4E2DE;
    dw Hitbox_CrocomireCorspe                                            ;A4E2E0;
    dw $FFE7,$FFFB                                                       ;A4E2E2;
    dw Spritemap_CrocomireCorpse_3                                       ;A4E2E6;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E2E8;
    dw $FFFF,$0006                                                       ;A4E2EA;
    dw Spritemap_CrocomireCorpse_1                                       ;A4E2EE;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E2F0;
    dw $FFDE,$0014                                                       ;A4E2F2;
    dw Spritemap_CrocomireCorpse_2                                       ;A4E2F6;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E2F8;

ExtendedSpritemap_CrocomireCorpse_6:
    dw $0005                                                             ;A4E2FA;
    dw $FFF5,$0004
    dw Spritemap_CrocomireCorpse_10                                      ;A4E300;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E302;
    dw $0003,$FFD1                                                       ;A4E304;
    dw Spritemap_CrocomireCorpse_0                                       ;A4E308;
    dw Hitbox_CrocomireCorspe                                            ;A4E30A;
    dw $FFE7,$FFFB                                                       ;A4E30C;
    dw Spritemap_CrocomireCorpse_3                                       ;A4E310;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E312;
    dw $FFFF,$0004                                                       ;A4E314;
    dw Spritemap_CrocomireCorpse_1                                       ;A4E318;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E31A;
    dw $FFDE,$0014                                                       ;A4E31C;
    dw Spritemap_CrocomireCorpse_2                                       ;A4E320;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E322;

ExtendedSpritemap_CrocomireCorpse_7:
    dw $0005                                                             ;A4E324;
    dw $FFF4,$0005
    dw Spritemap_CrocomireCorpse_10                                      ;A4E32A;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E32C;
    dw $0002,$FFD0                                                       ;A4E32E;
    dw Spritemap_CrocomireCorpse_0                                       ;A4E332;
    dw Hitbox_CrocomireCorspe                                            ;A4E334;
    dw $FFE7,$FFFB                                                       ;A4E336;
    dw Spritemap_CrocomireCorpse_3                                       ;A4E33A;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E33C;
    dw $FFFF,$0003                                                       ;A4E33E;
    dw Spritemap_CrocomireCorpse_1                                       ;A4E342;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E344;
    dw $FFDD,$0014                                                       ;A4E346;
    dw Spritemap_CrocomireCorpse_2                                       ;A4E34A;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E34C;

ExtendedSpritemap_CrocomireCorpse_8:
    dw $0005                                                             ;A4E34E;
    dw $FFF0,$000E
    dw Spritemap_CrocomireCorpse_11                                      ;A4E354;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E356;
    dw $0009,$FFD1                                                       ;A4E358;
    dw Spritemap_CrocomireCorpse_0                                       ;A4E35C;
    dw Hitbox_CrocomireCorspe                                            ;A4E35E;
    dw $FFE7,$0000                                                       ;A4E360;
    dw Spritemap_CrocomireCorpse_3                                       ;A4E364;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E366;
    dw $0001,$0005                                                       ;A4E368;
    dw Spritemap_CrocomireCorpse_1                                       ;A4E36C;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E36E;
    dw $FFDA,$0014                                                       ;A4E370;
    dw Spritemap_CrocomireCorpse_2                                       ;A4E374;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E376;

ExtendedSpritemap_CrocomireCorpse_9:
    dw $0005                                                             ;A4E378;
    dw $FFEB,$001A
    dw Spritemap_CrocomireCorpse_13                                      ;A4E37E;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E380;
    dw $0010,$FFD9                                                       ;A4E382;
    dw Spritemap_CrocomireCorpse_0                                       ;A4E386;
    dw Hitbox_CrocomireCorspe                                            ;A4E388;
    dw $FFE7,$0007                                                       ;A4E38A;
    dw Spritemap_CrocomireCorpse_3                                       ;A4E38E;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E390;
    dw $0005,$000B                                                       ;A4E392;
    dw Spritemap_CrocomireCorpse_1                                       ;A4E396;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E398;
    dw $FFDA,$0014                                                       ;A4E39A;
    dw Spritemap_CrocomireCorpse_2                                       ;A4E39E;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E3A0;

ExtendedSpritemap_CrocomireCorpse_A:
    dw $0005                                                             ;A4E3A2;
    dw $FFEA,$0023
    dw Spritemap_CrocomireCorpse_13                                      ;A4E3A8;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E3AA;
    dw $0015,$FFDD                                                       ;A4E3AC;
    dw Spritemap_CrocomireCorpse_0                                       ;A4E3B0;
    dw Hitbox_CrocomireCorspe                                            ;A4E3B2;
    dw $FFE6,$0013                                                       ;A4E3B4;
    dw Spritemap_CrocomireCorpse_3                                       ;A4E3B8;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E3BA;
    dw $0007,$000F                                                       ;A4E3BC;
    dw Spritemap_CrocomireCorpse_1                                       ;A4E3C0;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E3C2;
    dw $FFDA,$0014                                                       ;A4E3C4;
    dw Spritemap_CrocomireCorpse_2                                       ;A4E3C8;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E3CA;

ExtendedSpritemap_CrocomireCorpse_B:
    dw $0005                                                             ;A4E3CC;
    dw $FFEA,$002F
    dw Spritemap_CrocomireCorpse_13                                      ;A4E3D2;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E3D4;
    dw $001F,$FFEC                                                       ;A4E3D6;
    dw Spritemap_CrocomireCorpse_0                                       ;A4E3DA;
    dw Hitbox_CrocomireCorspe                                            ;A4E3DC;
    dw $FFE7,$001E                                                       ;A4E3DE;
    dw Spritemap_CrocomireCorpse_3                                       ;A4E3E2;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E3E4;
    dw $000A,$0014                                                       ;A4E3E6;
    dw Spritemap_CrocomireCorpse_1                                       ;A4E3EA;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E3EC;
    dw $FFDA,$0014                                                       ;A4E3EE;
    dw Spritemap_CrocomireCorpse_2                                       ;A4E3F2;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E3F4;

ExtendedSpritemap_CrocomireCorpse_C:
    dw $0005                                                             ;A4E3F6;
    dw $FFEA,$0036
    dw Spritemap_CrocomireCorpse_13                                      ;A4E3FC;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E3FE;
    dw $0024,$FFF2                                                       ;A4E400;
    dw Spritemap_CrocomireCorpse_0                                       ;A4E404;
    dw Hitbox_CrocomireCorspe                                            ;A4E406;
    dw $FFE7,$0023                                                       ;A4E408;
    dw Spritemap_CrocomireCorpse_3                                       ;A4E40C;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E40E;
    dw $000A,$0019                                                       ;A4E410;
    dw Spritemap_CrocomireCorpse_1                                       ;A4E414;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E416;
    dw $FFDA,$0014                                                       ;A4E418;
    dw Spritemap_CrocomireCorpse_2                                       ;A4E41C;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E41E;

ExtendedSpritemap_CrocomireCorpse_D:
    dw $0009                                                             ;A4E420;
    dw $002E,$FFFC
    dw Spritemap_CrocomireCorpse_0                                       ;A4E426;
    dw Hitbox_CrocomireCorspe                                            ;A4E428;
    dw $FFE7,$002B                                                       ;A4E42A;
    dw Spritemap_CrocomireCorpse_3                                       ;A4E42E;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E430;
    dw $000C,$001E                                                       ;A4E432;
    dw Spritemap_CrocomireCorpse_1                                       ;A4E436;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E438;
    dw $0001,$0024                                                       ;A4E43A;
    dw Spritemap_CrocomireCorpse_A                                       ;A4E43E;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E440;
    dw $FFEB,$0020                                                       ;A4E442;
    dw Spritemap_CrocomireCorpse_B                                       ;A4E446;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E448;
    dw $FFD8,$0022                                                       ;A4E44A;
    dw Spritemap_CrocomireCorpse_C                                       ;A4E44E;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E450;
    dw $FFC6,$001E                                                       ;A4E452;
    dw Spritemap_CrocomireCorpse_D                                       ;A4E456;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E458;
    dw $FFB6,$0029                                                       ;A4E45A;
    dw Spritemap_CrocomireCorpse_E                                       ;A4E45E;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E460;
    dw $FFA3,$0029                                                       ;A4E462;
    dw Spritemap_CrocomireCorpse_F                                       ;A4E466;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E468;

ExtendedSpritemap_CrocomireCorpse_E:
    dw $000D                                                             ;A4E46A;
    dw $0037,$0007
    dw Spritemap_CrocomireCorpse_0                                       ;A4E470;
    dw Hitbox_CrocomireCorspe                                            ;A4E472;
    dw $0029,$0027                                                       ;A4E474;
    dw Spritemap_CrocomireCorpse_4                                       ;A4E478;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E47A;
    dw $FFF9,$0014                                                       ;A4E47C;
    dw Spritemap_CrocomireCorpse_7                                       ;A4E480;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E482;
    dw $0019,$002C                                                       ;A4E484;
    dw Spritemap_CrocomireCorpse_5                                       ;A4E488;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E48A;
    dw $0019,$001C                                                       ;A4E48C;
    dw Spritemap_CrocomireCorpse_5                                       ;A4E490;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E492;
    dw $FFF8,$0025                                                       ;A4E494;
    dw Spritemap_CrocomireCorpse_8                                       ;A4E498;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E49A;
    dw $0008,$0019                                                       ;A4E49C;
    dw Spritemap_CrocomireCorpse_6                                       ;A4E4A0;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E4A2;
    dw $0009,$002A                                                       ;A4E4A4;
    dw Spritemap_CrocomireCorpse_6                                       ;A4E4A8;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E4AA;
    dw $FFF7,$0031                                                       ;A4E4AC;
    dw Spritemap_CrocomireCorpse_9                                       ;A4E4B0;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E4B2;
    dw $FFE8,$0024                                                       ;A4E4B4;
    dw Spritemap_CrocomireCorpse_B                                       ;A4E4B8;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E4BA;
    dw $FFD3,$0028                                                       ;A4E4BC;
    dw Spritemap_CrocomireCorpse_C                                       ;A4E4C0;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E4C2;
    dw $FFC3,$001C                                                       ;A4E4C4;
    dw Spritemap_CrocomireCorpse_D                                       ;A4E4C8;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E4CA;
    dw $FFB4,$002B                                                       ;A4E4CC;
    dw Spritemap_CrocomireCorpse_E                                       ;A4E4D0;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E4D2;

ExtendedSpritemap_CrocomireCorpse_F:
    dw $000D                                                             ;A4E4D4;
    dw $003C,$000C
    dw Spritemap_CrocomireCorpse_0                                       ;A4E4DA;
    dw Hitbox_CrocomireCorspe                                            ;A4E4DC;
    dw $0029,$002C                                                       ;A4E4DE;
    dw Spritemap_CrocomireCorpse_4                                       ;A4E4E2;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E4E4;
    dw $FFF9,$0019                                                       ;A4E4E6;
    dw Spritemap_CrocomireCorpse_7                                       ;A4E4EA;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E4EC;
    dw $001C,$0030                                                       ;A4E4EE;
    dw Spritemap_CrocomireCorpse_5                                       ;A4E4F2;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E4F4;
    dw $001A,$0020                                                       ;A4E4F6;
    dw Spritemap_CrocomireCorpse_5                                       ;A4E4FA;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E4FC;
    dw $FFFD,$0025                                                       ;A4E4FE;
    dw Spritemap_CrocomireCorpse_8                                       ;A4E502;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E504;
    dw $0009,$001E                                                       ;A4E506;
    dw Spritemap_CrocomireCorpse_6                                       ;A4E50A;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E50C;
    dw $000D,$002D                                                       ;A4E50E;
    dw Spritemap_CrocomireCorpse_6                                       ;A4E512;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E514;
    dw $FFF8,$0033                                                       ;A4E516;
    dw Spritemap_CrocomireCorpse_9                                       ;A4E51A;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E51C;
    dw $FFE9,$002A                                                       ;A4E51E;
    dw Spritemap_CrocomireCorpse_B                                       ;A4E522;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E524;
    dw $FFD0,$002A                                                       ;A4E526;
    dw Spritemap_CrocomireCorpse_C                                       ;A4E52A;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E52C;
    dw $FFC2,$0021                                                       ;A4E52E;
    dw Spritemap_CrocomireCorpse_D                                       ;A4E532;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E534;
    dw $FFAE,$002F                                                       ;A4E536;
    dw Spritemap_CrocomireCorpse_E                                       ;A4E53A;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E53C;

ExtendedSpritemap_CrocomireCorpse_10:
    dw $000D                                                             ;A4E53E;
    dw $003E,$0011
    dw Spritemap_CrocomireCorpse_0                                       ;A4E544;
    dw Hitbox_CrocomireCorspe                                            ;A4E546;
    dw $0029,$0031                                                       ;A4E548;
    dw Spritemap_CrocomireCorpse_4                                       ;A4E54C;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E54E;
    dw $FFF8,$0020                                                       ;A4E550;
    dw Spritemap_CrocomireCorpse_7                                       ;A4E554;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E556;
    dw $001C,$0030                                                       ;A4E558;
    dw Spritemap_CrocomireCorpse_5                                       ;A4E55C;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E55E;
    dw $0018,$0025                                                       ;A4E560;
    dw Spritemap_CrocomireCorpse_5                                       ;A4E564;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E566;
    dw $FFFE,$0029                                                       ;A4E568;
    dw Spritemap_CrocomireCorpse_8                                       ;A4E56C;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E56E;
    dw $0009,$0023                                                       ;A4E570;
    dw Spritemap_CrocomireCorpse_6                                       ;A4E574;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E576;
    dw $000F,$0030                                                       ;A4E578;
    dw Spritemap_CrocomireCorpse_6                                       ;A4E57C;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E57E;
    dw $FFF6,$0036                                                       ;A4E580;
    dw Spritemap_CrocomireCorpse_9                                       ;A4E584;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E586;
    dw $FFE8,$002F                                                       ;A4E588;
    dw Spritemap_CrocomireCorpse_B                                       ;A4E58C;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E58E;
    dw $FFCE,$002D                                                       ;A4E590;
    dw Spritemap_CrocomireCorpse_C                                       ;A4E594;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E596;
    dw $FFC0,$0026                                                       ;A4E598;
    dw Spritemap_CrocomireCorpse_D                                       ;A4E59C;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E59E;
    dw $FFAC,$0033                                                       ;A4E5A0;
    dw Spritemap_CrocomireCorpse_E                                       ;A4E5A4;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E5A6;

ExtendedSpritemap_CrocomireCorpse_11:
    dw $000C                                                             ;A4E5A8;
    dw $0040,$0016
    dw Spritemap_CrocomireCorpse_0                                       ;A4E5AE;
    dw Hitbox_CrocomireCorspe                                            ;A4E5B0;
    dw $0029,$0031                                                       ;A4E5B2;
    dw Spritemap_CrocomireCorpse_4                                       ;A4E5B6;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E5B8;
    dw $FFF7,$0026                                                       ;A4E5BA;
    dw Spritemap_CrocomireCorpse_7                                       ;A4E5BE;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E5C0;
    dw $001C,$002C                                                       ;A4E5C2;
    dw Spritemap_CrocomireCorpse_5                                       ;A4E5C6;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E5C8;
    dw $0016,$0028                                                       ;A4E5CA;
    dw Spritemap_CrocomireCorpse_5                                       ;A4E5CE;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E5D0;
    dw $0002,$002C                                                       ;A4E5D2;
    dw Spritemap_CrocomireCorpse_8                                       ;A4E5D6;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E5D8;
    dw $000C,$0027                                                       ;A4E5DA;
    dw Spritemap_CrocomireCorpse_6                                       ;A4E5DE;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E5E0;
    dw $000F,$0030                                                       ;A4E5E2;
    dw Spritemap_CrocomireCorpse_6                                       ;A4E5E6;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E5E8;
    dw $FFF6,$0036                                                       ;A4E5EA;
    dw Spritemap_CrocomireCorpse_9                                       ;A4E5EE;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E5F0;
    dw $FFE9,$0034                                                       ;A4E5F2;
    dw Spritemap_CrocomireCorpse_B                                       ;A4E5F6;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E5F8;
    dw $FFD2,$0032                                                       ;A4E5FA;
    dw Spritemap_CrocomireCorpse_C                                       ;A4E5FE;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E600;
    dw $FFBE,$002C                                                       ;A4E602;
    dw Spritemap_CrocomireCorpse_D                                       ;A4E606;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E608;

ExtendedSpritemap_CrocomireCorpse_12:
    dw $000A                                                             ;A4E60A;
    dw $0040,$0014
    dw Spritemap_CrocomireCorpse_0                                       ;A4E610;
    dw Hitbox_CrocomireCorspe                                            ;A4E612;
    dw $0029,$0036                                                       ;A4E614;
    dw Spritemap_CrocomireCorpse_4                                       ;A4E618;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E61A;
    dw $FFF6,$002B                                                       ;A4E61C;
    dw Spritemap_CrocomireCorpse_7                                       ;A4E620;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E622;
    dw $001C,$0031                                                       ;A4E624;
    dw Spritemap_CrocomireCorpse_5                                       ;A4E628;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E62A;
    dw $0016,$002D                                                       ;A4E62C;
    dw Spritemap_CrocomireCorpse_5                                       ;A4E630;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E632;
    dw $0002,$002C                                                       ;A4E634;
    dw Spritemap_CrocomireCorpse_8                                       ;A4E638;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E63A;
    dw $000C,$002C                                                       ;A4E63C;
    dw Spritemap_CrocomireCorpse_6                                       ;A4E640;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E642;
    dw $000F,$0035                                                       ;A4E644;
    dw Spritemap_CrocomireCorpse_6                                       ;A4E648;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E64A;
    dw $FFEA,$0039                                                       ;A4E64C;
    dw Spritemap_CrocomireCorpse_B                                       ;A4E650;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E652;
    dw $FFD2,$0037                                                       ;A4E654;
    dw Spritemap_CrocomireCorpse_C                                       ;A4E658;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E65A;

ExtendedSpritemap_CrocomireCorpse_13:
    dw $0006                                                             ;A4E65C;
    dw $0040,$0013
    dw Spritemap_CrocomireCorpse_0                                       ;A4E662;
    dw Hitbox_CrocomireCorspe                                            ;A4E664;
    dw $FFF3,$002E                                                       ;A4E666;
    dw Spritemap_CrocomireCorpse_7                                       ;A4E66A;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E66C;
    dw $001D,$0033                                                       ;A4E66E;
    dw Spritemap_CrocomireCorpse_5                                       ;A4E672;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E674;
    dw $0014,$002F                                                       ;A4E676;
    dw Spritemap_CrocomireCorpse_5                                       ;A4E67A;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E67C;
    dw $0002,$0031                                                       ;A4E67E;
    dw Spritemap_CrocomireCorpse_8                                       ;A4E682;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E684;
    dw $000C,$002C                                                       ;A4E686;
    dw Spritemap_CrocomireCorpse_6                                       ;A4E68A;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E68C;

ExtendedSpritemap_CrocomireCorpse_14:
    dw $0003                                                             ;A4E68E;
    dw $0040,$0014
    dw Spritemap_CrocomireCorpse_0                                       ;A4E694;
    dw Hitbox_CrocomireCorspe                                            ;A4E696;
    dw $FFF3,$0031                                                       ;A4E698;
    dw Spritemap_CrocomireCorpse_7                                       ;A4E69C;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E69E;
    dw $000E,$0030                                                       ;A4E6A0;
    dw Spritemap_CrocomireCorpse_6                                       ;A4E6A4;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E6A6;

ExtendedSpritemap_CrocomireCorpse_15:
    dw $0001                                                             ;A4E6A8;
    dw $0040,$0015
    dw Spritemap_CrocomireCorpse_0                                       ;A4E6AE;
    dw Hitbox_CrocomireCorspe                                            ;A4E6B0;

ExtendedSpritemap_CrocomireCorpse_16:
    dw $0001                                                             ;A4E6B2;
    dw $0000,$0000
    dw Spritemap_CrocomireCorpse_0                                       ;A4E6B8;
    dw Hitbox_CrocomireCorspe                                            ;A4E6BA;

ExtendedSpritemap_CrocomireCorpse_17:
    dw $0001                                                             ;A4E6BC;
    dw $0000,$0000
    dw Spritemap_CrocomireCorpse_16                                      ;A4E6C2;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E6C4;

ExtendedSpritemap_CrocomireCorpse_18:
    dw $0001                                                             ;A4E6C6;
    dw $0000,$0000
    dw Spritemap_CrocomireCorpse_17                                      ;A4E6CC;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E6CE;

ExtendedSpritemap_CrocomireCorpse_19:
    dw $0001                                                             ;A4E6D0;
    dw $0000,$0000
    dw Spritemap_CrocomireCorpse_18                                      ;A4E6D6;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E6D8;

ExtendedSpritemap_CrocomireCorpse_1A:
    dw $0001                                                             ;A4E6DA;
    dw $0000,$0000
    dw Spritemap_CrocomireCorpse_19                                      ;A4E6E0;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E6E2;

ExtendedSpritemap_CrocomireCorpse_1B:
    dw $0001                                                             ;A4E6E4;
    dw $0000,$0000
    dw Spritemap_CrocomireCorpse_1A                                      ;A4E6EA;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E6EC;

ExtendedSpritemap_CrocomireCorpse_1C:
    dw $0001                                                             ;A4E6EE;
    dw $0000,$0000
    dw Spritemap_CrocomireCorpse_1B                                      ;A4E6F4;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E6F6;

ExtendedSpritemap_CrocomireCorpse_1D:
    dw $0001                                                             ;A4E6F8;
    dw $0000,$0000
    dw Spritemap_CrocomireCorpse_1C                                      ;A4E6FE;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E700;

ExtendedSpritemap_CrocomireCorpse_1E:
    dw $0001                                                             ;A4E702;
    dw $0000,$0000
    dw Spritemap_CrocomireCorpse_1D                                      ;A4E708;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E70A;

ExtendedSpritemap_CrocomireCorpse_1F:
    dw $0001                                                             ;A4E70C;
    dw $0000,$0000
    dw Spritemap_CrocomireCorpse_1E                                      ;A4E712;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E714;

ExtendedSpritemap_CrocomireCorpse_20:
    dw $0001                                                             ;A4E716;
    dw $0020,$0020
    dw Spritemap_CrocomireCorpse_1F                                      ;A4E71C;
    dw Hitbox_CrocomireCorspe_Empty                                      ;A4E71E;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitbox_CrocomireCorspe_A4E720:
    dw $0001                                                             ;A4E720;
    dw $FFE6,$FFE2,$0026,$001D
    dw RTL_A4B950                                                        ;A4E72A;
    dw EnemyShot_Crocomire_SpawnShotExplosion                            ;A4E72C;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitbox_CrocomireCorspe:
    dw $0002                                                             ;A4E72E;
    dw $FFDA,$FFF0,$0000,$001F
    dw RTL_A4B950                                                        ;A4E738;
    dw EnemyShot_Crocomire_SpawnShotExplosion                            ;A4E73A;
    dw $0000,$FFE3,$001A,$001C                                           ;A4E73C;
    dw RTL_A4B950                                                        ;A4E744;
    dw EnemyShot_Crocomire_SpawnShotExplosion                            ;A4E746;

Hitbox_CrocomireCorspe_Empty:
    dw $0000                                                             ;A4E748;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_CrocomireCorpse_A4E74A:
    dw $0011                                                             ;A4E74A;
    %spritemapEntry(0, $1E4, $18, 0, 0, 2, 7, $1A6)
    %spritemapEntry(0, $1F4, $18, 0, 0, 2, 7, $1BF)
    %spritemapEntry(0, $1EC, $18, 0, 0, 2, 7, $1AF)
    %spritemapEntry(1, $1C, $10, 0, 0, 2, 7, $1CA)
    %spritemapEntry(1, $0C, $10, 0, 0, 2, 7, $1C8)
    %spritemapEntry(1, $1FC, $10, 0, 0, 2, 7, $1C6)
    %spritemapEntry(1, $1C, $00, 0, 0, 2, 7, $1C4)
    %spritemapEntry(1, $0C, $00, 0, 0, 2, 7, $1C2)
    %spritemapEntry(1, $1FC, $00, 0, 0, 2, 7, $1C0)
    %spritemapEntry(0, $0C, $E8, 0, 0, 2, 7, $1B6)
    %spritemapEntry(1, $1C, $F0, 0, 0, 2, 7, $1AD)
    %spritemapEntry(1, $0C, $F0, 0, 0, 2, 7, $1AB)
    %spritemapEntry(1, $1FC, $F0, 0, 0, 2, 7, $1A9)
    %spritemapEntry(1, $1EC, $F0, 0, 0, 2, 7, $1A7)
    %spritemapEntry(1, $1FC, $E0, 0, 0, 2, 7, $1A4)
    %spritemapEntry(1, $1EC, $E0, 0, 0, 2, 7, $1A2)
    %spritemapEntry(1, $1DC, $E0, 0, 0, 2, 7, $1A0)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_CrocomireCorpse_0:
    dw $0011                                                             ;A4E7A1;
    %spritemapEntry(0, $14, $18, 0, 1, 2, 7, $1A6)
    %spritemapEntry(0, $04, $18, 0, 1, 2, 7, $1BF)
    %spritemapEntry(0, $0C, $18, 0, 1, 2, 7, $1AF)
    %spritemapEntry(1, $1D4, $10, 0, 1, 2, 7, $1CA)
    %spritemapEntry(1, $1E4, $10, 0, 1, 2, 7, $1C8)
    %spritemapEntry(1, $1F4, $10, 0, 1, 2, 7, $1C6)
    %spritemapEntry(1, $1D4, $00, 0, 1, 2, 7, $1C4)
    %spritemapEntry(1, $1E4, $00, 0, 1, 2, 7, $1C2)
    %spritemapEntry(1, $1F4, $00, 0, 1, 2, 7, $1C0)
    %spritemapEntry(0, $1EC, $E8, 0, 1, 2, 7, $1B6)
    %spritemapEntry(1, $1D4, $F0, 0, 1, 2, 7, $1AD)
    %spritemapEntry(1, $1E4, $F0, 0, 1, 2, 7, $1AB)
    %spritemapEntry(1, $1F4, $F0, 0, 1, 2, 7, $1A9)
    %spritemapEntry(1, $04, $F0, 0, 1, 2, 7, $1A7)
    %spritemapEntry(1, $1F4, $E0, 0, 1, 2, 7, $1A4)
    %spritemapEntry(1, $04, $E0, 0, 1, 2, 7, $1A2)
    %spritemapEntry(1, $14, $E0, 0, 1, 2, 7, $1A0)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_CrocomireCorpse_A4E7F8:
    dw $000A                                                             ;A4E7F8;
    %spritemapEntry(0, $18, $0C, 0, 0, 2, 7, $16B)
    %spritemapEntry(0, $10, $0C, 0, 0, 2, 7, $16A)
    %spritemapEntry(1, $10, $FC, 0, 0, 2, 7, $168)
    %spritemapEntry(1, $10, $EC, 0, 0, 2, 7, $166)
    %spritemapEntry(1, $00, $00, 0, 0, 2, 7, $164)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 7, $162)
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 7, $164)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 7, $162)
    %spritemapEntry(1, $1E0, $FC, 0, 0, 2, 7, $180)
    %spritemapEntry(1, $1E0, $EC, 0, 0, 2, 7, $160)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_CrocomireCorpse_1:
    dw $000A                                                             ;A4E82C;
    %spritemapEntry(0, $1E0, $0C, 0, 1, 2, 7, $16B)
    %spritemapEntry(0, $1E8, $0C, 0, 1, 2, 7, $16A)
    %spritemapEntry(1, $1E0, $FC, 0, 1, 2, 7, $168)
    %spritemapEntry(1, $1E0, $EC, 0, 1, 2, 7, $166)
    %spritemapEntry(1, $1F0, $00, 0, 1, 2, 7, $164)
    %spritemapEntry(1, $00, $00, 0, 1, 2, 7, $162)
    %spritemapEntry(1, $1F0, $F0, 0, 1, 2, 7, $164)
    %spritemapEntry(1, $00, $F0, 0, 1, 2, 7, $162)
    %spritemapEntry(1, $10, $FC, 0, 1, 2, 7, $180)
    %spritemapEntry(1, $10, $EC, 0, 1, 2, 7, $160)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_CrocomireCorpse_A4E860:
    dw $000F                                                             ;A4E860;
    %spritemapEntry(1, $20, $10, 0, 0, 2, 7, $18E)
    %spritemapEntry(1, $00, $10, 0, 0, 2, 7, $18A)
    %spritemapEntry(1, $10, $10, 0, 0, 2, 7, $18C)
    %spritemapEntry(0, $1F8, $18, 0, 0, 2, 7, $17B)
    %spritemapEntry(0, $1F0, $10, 0, 0, 2, 7, $10F)
    %spritemapEntry(0, $1F8, $10, 0, 0, 2, 7, $11F)
    %spritemapEntry(0, $1E7, $18, 0, 1, 2, 7, $17A)
    %spritemapEntry(0, $1E0, $18, 0, 0, 2, 7, $17A)
    %spritemapEntry(0, $1D0, $10, 0, 0, 2, 7, $188)
    %spritemapEntry(0, $1D8, $10, 0, 0, 2, 7, $189)
    %spritemapEntry(0, $1E0, $10, 0, 0, 2, 7, $198)
    %spritemapEntry(0, $1E8, $10, 0, 0, 2, 7, $199)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 7, $186)
    %spritemapEntry(1, $1E0, $00, 0, 0, 2, 7, $184)
    %spritemapEntry(1, $1D0, $00, 0, 0, 2, 7, $182)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_CrocomireCorpse_2:
    dw $000F                                                             ;A4E8AD;
    %spritemapEntry(1, $1D0, $10, 0, 1, 2, 7, $18E)
    %spritemapEntry(1, $1F0, $10, 0, 1, 2, 7, $18A)
    %spritemapEntry(1, $1E0, $10, 0, 1, 2, 7, $18C)
    %spritemapEntry(0, $00, $18, 0, 1, 2, 7, $17B)
    %spritemapEntry(0, $08, $10, 0, 1, 2, 7, $10F)
    %spritemapEntry(0, $00, $10, 0, 1, 2, 7, $11F)
    %spritemapEntry(0, $11, $18, 0, 0, 2, 7, $17A)
    %spritemapEntry(0, $18, $18, 0, 1, 2, 7, $17A)
    %spritemapEntry(0, $28, $10, 0, 1, 2, 7, $188)
    %spritemapEntry(0, $20, $10, 0, 1, 2, 7, $189)
    %spritemapEntry(0, $18, $10, 0, 1, 2, 7, $198)
    %spritemapEntry(0, $10, $10, 0, 1, 2, 7, $199)
    %spritemapEntry(1, $00, $00, 0, 1, 2, 7, $186)
    %spritemapEntry(1, $10, $00, 0, 1, 2, 7, $184)
    %spritemapEntry(1, $20, $00, 0, 1, 2, 7, $182)

Spritemap_CrocomireCorpse_3:
    dw $0002                                                             ;A4E8FA;
    %spritemapEntry(1, $00, $F8, 0, 0, 2, 7, $16E)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 7, $16C)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_CrocomireCorpse_A4E906:
    dw $0002                                                             ;A4E906;
    %spritemapEntry(1, $1F0, $F8, 0, 1, 2, 7, $16E)
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 7, $16C)

UNUSED_Spritemap_CrocomireCorpse_A4E912:
    dw $0001                                                             ;A4E912;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 7, $160)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_CrocomireCorpse_4:
    dw $0001                                                             ;A4E919;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 7, $180)

Spritemap_CrocomireCorpse_5:
    dw $0001                                                             ;A4E920;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 7, $162)

Spritemap_CrocomireCorpse_6:
    dw $0001                                                             ;A4E927;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 7, $164)

Spritemap_CrocomireCorpse_7:
    dw $0001                                                             ;A4E92E;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 7, $166)

Spritemap_CrocomireCorpse_8:
    dw $0001                                                             ;A4E935;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 7, $168)

Spritemap_CrocomireCorpse_9:
    dw $0002                                                             ;A4E93C;
    %spritemapEntry(0, $1F8, $FC, 0, 1, 2, 7, $16B)
    %spritemapEntry(0, $00, $FC, 0, 1, 2, 7, $16A)

Spritemap_CrocomireCorpse_A:
    dw $0003                                                             ;A4E948;
    %spritemapEntry(0, $00, $04, 0, 1, 2, 7, $188)
    %spritemapEntry(0, $1F8, $04, 0, 1, 2, 7, $189)
    %spritemapEntry(1, $1F8, $F4, 0, 1, 2, 7, $182)

Spritemap_CrocomireCorpse_B:
    dw $0005                                                             ;A4E959;
    %spritemapEntry(0, $1F9, $08, 0, 0, 2, 7, $17A)
    %spritemapEntry(0, $00, $08, 0, 1, 2, 7, $17A)
    %spritemapEntry(0, $00, $00, 0, 1, 2, 7, $198)
    %spritemapEntry(0, $1F8, $00, 0, 1, 2, 7, $199)
    %spritemapEntry(1, $1F8, $F0, 0, 1, 2, 7, $184)

Spritemap_CrocomireCorpse_C:
    dw $0004                                                             ;A4E974;
    %spritemapEntry(0, $00, $05, 0, 1, 2, 7, $10F)
    %spritemapEntry(0, $1F8, $0D, 0, 1, 2, 7, $17B)
    %spritemapEntry(0, $1F8, $05, 0, 1, 2, 7, $11F)
    %spritemapEntry(1, $1F8, $F5, 0, 1, 2, 7, $186)

Spritemap_CrocomireCorpse_D:
    dw $0001                                                             ;A4E98A;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 7, $18A)

Spritemap_CrocomireCorpse_E:
    dw $0001                                                             ;A4E991;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 7, $18C)

Spritemap_CrocomireCorpse_F:
    dw $0001                                                             ;A4E998;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 7, $18E)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_CrocomireCorpse_A4E99F:
    dw $0009                                                             ;A4E99F;
    %spritemapEntry(1, $1C3, $1A, 0, 0, 2, 0, $E4)
    %spritemapEntry(1, $1B3, $1E, 0, 0, 2, 0, $100)
    %spritemapEntry(0, $00, $07, 0, 0, 2, 0, $108)
    %spritemapEntry(0, $1F0, $FF, 0, 0, 2, 0, $F6)
    %spritemapEntry(1, $1F0, $07, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $1F8, $F7, 0, 0, 2, 0, $E7)
    %spritemapEntry(1, $1EC, $0B, 0, 0, 2, 0, $E0)
    %spritemapEntry(1, $1DE, $12, 0, 0, 2, 0, $E0)
    %spritemapEntry(1, $1D0, $19, 0, 0, 2, 0, $E0)

UNUSED_Spritemap_CrocomireCorpse_A4E9CE:
    dw $0009                                                             ;A4E9CE;
    %spritemapEntry(1, $1B1, $13, 0, 0, 2, 0, $E4)
    %spritemapEntry(1, $1A1, $13, 0, 0, 2, 0, $100)
    %spritemapEntry(0, $1F8, $09, 0, 0, 2, 0, $FF)
    %spritemapEntry(0, $1F0, $F9, 0, 0, 2, 0, $EF)
    %spritemapEntry(1, $1E8, $01, 0, 0, 2, 0, $ED)
    %spritemapEntry(1, $1F8, $F9, 0, 0, 2, 0, $10D)
    %spritemapEntry(1, $1DE, $05, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1CE, $0F, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $1C0, $0F, 0, 0, 2, 0, $102)

UNUSED_Spritemap_CrocomireCorpse_A4E9FD:
    dw $0007                                                             ;A4E9FD;
    %spritemapEntry(1, $1CC, $1C, 0, 0, 2, 0, $E4)
    %spritemapEntry(1, $1BC, $1E, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1F8, $08, 0, 0, 2, 0, $109)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $E9)
    %spritemapEntry(1, $1F6, $0D, 0, 0, 2, 0, $E0)
    %spritemapEntry(1, $1E8, $14, 0, 0, 2, 0, $E0)
    %spritemapEntry(1, $1DA, $1B, 0, 0, 2, 0, $E0)

UNUSED_Spritemap_CrocomireCorpse_A4EA22:
    dw $0009                                                             ;A4EA22;
    %spritemapEntry(0, $00, $08, 0, 1, 2, 0, $FF)
    %spritemapEntry(0, $08, $F8, 0, 1, 2, 0, $EF)
    %spritemapEntry(1, $08, $00, 0, 1, 2, 0, $ED)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $10D)
    %spritemapEntry(1, $1D5, $11, 0, 0, 2, 0, $E4)
    %spritemapEntry(1, $1C5, $11, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $02, $03, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1F2, $0D, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $1E4, $0D, 0, 0, 2, 0, $102)

UNUSED_Spritemap_CrocomireCorpse_A4EA51:
    dw $0007                                                             ;A4EA51;
    %spritemapEntry(1, $1C0, $0C, 0, 0, 2, 0, $E4)
    %spritemapEntry(1, $1B0, $0C, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1F8, $08, 0, 0, 2, 0, $109)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $E9)
    %spritemapEntry(1, $1F0, $0C, 0, 0, 2, 0, $E2)
    %spritemapEntry(1, $1E0, $0C, 0, 0, 2, 0, $E2)
    %spritemapEntry(1, $1D0, $0C, 0, 0, 2, 0, $E2)

UNUSED_Spritemap_CrocomireCorpse_A4EA76:
    dw $0008                                                             ;A4EA76;
    %spritemapEntry(0, $02, $09, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $1FA, $09, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $1F2, $09, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $1EA, $09, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1E2, $09, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $1F2, $F9, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $1F6, $F9, 0, 0, 2, 0, $14B)
    %spritemapEntry(1, $01, $F9, 0, 0, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4EAA0:
    dw $0008                                                             ;A4EAA0;
    %spritemapEntry(0, $05, $09, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $1FD, $09, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $1F5, $09, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $1ED, $09, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1E5, $09, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $1F5, $F9, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $1F7, $F9, 0, 0, 2, 0, $14B)
    %spritemapEntry(1, $01, $F9, 0, 0, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4EACA:
    dw $0008                                                             ;A4EACA;
    %spritemapEntry(0, $08, $09, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $00, $09, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $1F8, $09, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $1F0, $09, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1E8, $09, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $1F8, $F9, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $1F9, $F9, 0, 0, 2, 0, $14B)
    %spritemapEntry(1, $00, $F9, 0, 0, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4EAF4:
    dw $0008                                                             ;A4EAF4;
    %spritemapEntry(0, $0C, $09, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $04, $09, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $1FC, $09, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $1F4, $09, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1EC, $09, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $1FC, $F9, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $1FC, $F9, 0, 0, 2, 0, $14B)
    %spritemapEntry(1, $00, $F9, 0, 0, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4EB1E:
    dw $0008                                                             ;A4EB1E;
    %spritemapEntry(1, $03, $F9, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $02, $F9, 0, 1, 2, 0, $14B)
    %spritemapEntry(0, $11, $09, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $09, $09, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $01, $09, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $1F9, $09, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1F1, $09, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $01, $F9, 0, 1, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4EB48:
    dw $0008                                                             ;A4EB48;
    %spritemapEntry(1, $09, $F9, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $06, $F9, 0, 1, 2, 0, $14B)
    %spritemapEntry(0, $18, $09, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $10, $09, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $08, $09, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $00, $09, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1F8, $09, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $01, $F9, 0, 1, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4EB72:
    dw $0008                                                             ;A4EB72;
    %spritemapEntry(1, $10, $F9, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $0B, $F9, 0, 1, 2, 0, $14B)
    %spritemapEntry(0, $20, $09, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $18, $09, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $10, $09, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $08, $09, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $00, $09, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $03, $F9, 0, 1, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4EB9C:
    dw $0008                                                             ;A4EB9C;
    %spritemapEntry(1, $09, $F8, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $06, $F8, 0, 1, 2, 0, $14B)
    %spritemapEntry(0, $18, $09, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $10, $08, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $08, $08, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $00, $09, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1F8, $09, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $01, $F9, 0, 1, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4EBC6:
    dw $0008                                                             ;A4EBC6;
    %spritemapEntry(1, $03, $F5, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $02, $F5, 0, 1, 2, 0, $14B)
    %spritemapEntry(0, $11, $06, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $09, $05, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $01, $05, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $1F9, $07, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1F1, $07, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $01, $F9, 0, 1, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4EBF0:
    dw $0008                                                             ;A4EBF0;
    %spritemapEntry(0, $0C, $06, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $04, $05, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $1FC, $05, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $1F4, $07, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1EC, $07, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $1FC, $F5, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $1FC, $F5, 0, 0, 2, 0, $14B)
    %spritemapEntry(1, $00, $F9, 0, 0, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4EC1A:
    dw $0008                                                             ;A4EC1A;
    %spritemapEntry(0, $08, $06, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $00, $05, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $1F8, $05, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $1F0, $07, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1E8, $07, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $1F8, $F5, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $1F9, $F5, 0, 0, 2, 0, $14B)
    %spritemapEntry(1, $00, $F9, 0, 0, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4EC44:
    dw $0008                                                             ;A4EC44;
    %spritemapEntry(0, $05, $07, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $1FD, $06, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $1F5, $06, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $1ED, $08, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1E5, $08, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $1F5, $F6, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $1F7, $F6, 0, 0, 2, 0, $14B)
    %spritemapEntry(1, $01, $F9, 0, 0, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4EC6E:
    dw $0008                                                             ;A4EC6E;
    %spritemapEntry(0, $02, $08, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $1FA, $07, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $1F2, $07, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $1EA, $08, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1E2, $08, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $1F2, $F7, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $1F6, $F7, 0, 0, 2, 0, $14B)
    %spritemapEntry(1, $01, $F9, 0, 0, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4EC98:
    dw $0008                                                             ;A4EC98;
    %spritemapEntry(0, $0C, $04, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $04, $05, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $1FC, $05, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $1F4, $05, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1EC, $05, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $1FC, $F5, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $1FC, $F5, 0, 0, 2, 0, $14B)
    %spritemapEntry(1, $00, $F9, 0, 0, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4ECC2:
    dw $0008                                                             ;A4ECC2;
    %spritemapEntry(0, $0C, $04, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $04, $05, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $1FC, $05, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $1F4, $05, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1EC, $05, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $1FC, $F5, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $1FC, $F3, 0, 0, 2, 0, $14B)
    %spritemapEntry(1, $00, $F5, 0, 0, 2, 0, $12B)

UNUSED_Spritemap_CrocomireCorpse_A4ECEC:
    dw $0008                                                             ;A4ECEC;
    %spritemapEntry(0, $0C, $04, 0, 0, 2, 0, $DF)
    %spritemapEntry(0, $04, $05, 0, 0, 2, 0, $DE)
    %spritemapEntry(0, $1FC, $05, 0, 0, 2, 0, $DD)
    %spritemapEntry(0, $1F4, $05, 0, 0, 2, 0, $DC)
    %spritemapEntry(0, $1EC, $05, 0, 0, 2, 0, $DB)
    %spritemapEntry(1, $1FC, $F5, 0, 0, 2, 0, $12D)
    %spritemapEntry(1, $1FC, $F1, 0, 0, 2, 0, $14B)
    %spritemapEntry(1, $00, $F1, 0, 0, 2, 0, $12B)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_CrocomireCorpse_10:
    dw $0009                                                             ;A4ED16;
    %spritemapEntry(1, $2D, $1A, 0, 1, 2, 1, $E4)
    %spritemapEntry(1, $3D, $1E, 0, 1, 2, 1, $100)
    %spritemapEntry(0, $1F8, $07, 0, 1, 2, 1, $108)
    %spritemapEntry(0, $08, $FF, 0, 1, 2, 1, $F6)
    %spritemapEntry(1, $00, $07, 0, 1, 2, 1, $106)
    %spritemapEntry(1, $1F8, $F7, 0, 1, 2, 1, $E7)
    %spritemapEntry(1, $04, $0B, 0, 1, 2, 1, $E0)
    %spritemapEntry(1, $12, $12, 0, 1, 2, 1, $E0)
    %spritemapEntry(1, $20, $19, 0, 1, 2, 1, $E0)

Spritemap_CrocomireCorpse_11:
    dw $0009                                                             ;A4ED45;
    %spritemapEntry(1, $3F, $13, 0, 1, 2, 1, $E4)
    %spritemapEntry(1, $4F, $13, 0, 1, 2, 1, $100)
    %spritemapEntry(0, $00, $09, 0, 1, 2, 1, $FF)
    %spritemapEntry(0, $08, $F9, 0, 1, 2, 1, $EF)
    %spritemapEntry(1, $08, $01, 0, 1, 2, 1, $ED)
    %spritemapEntry(1, $1F8, $F9, 0, 1, 2, 1, $10D)
    %spritemapEntry(1, $12, $05, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $22, $0F, 0, 1, 2, 1, $104)
    %spritemapEntry(1, $30, $0F, 0, 1, 2, 1, $102)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_CrocomireCorpse_A4ED74:
    dw $0007                                                             ;A4ED74;
    %spritemapEntry(1, $24, $1C, 0, 1, 2, 1, $E4)
    %spritemapEntry(1, $34, $1E, 0, 1, 2, 1, $100)
    %spritemapEntry(1, $1F8, $08, 0, 1, 2, 1, $109)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 1, $E9)
    %spritemapEntry(1, $1FA, $0D, 0, 1, 2, 1, $E0)
    %spritemapEntry(1, $08, $14, 0, 1, 2, 1, $E0)
    %spritemapEntry(1, $16, $1B, 0, 1, 2, 1, $E0)

UNUSED_Spritemap_CrocomireCorpse_A4ED99:
    dw $0009                                                             ;A4ED99;
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 1, $FF)
    %spritemapEntry(0, $1F0, $F8, 0, 0, 2, 1, $EF)
    %spritemapEntry(1, $1E8, $00, 0, 0, 2, 1, $ED)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $1B, $11, 0, 1, 2, 1, $E4)
    %spritemapEntry(1, $2B, $11, 0, 1, 2, 1, $100)
    %spritemapEntry(1, $1EE, $03, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $1FE, $0D, 0, 1, 2, 1, $104)
    %spritemapEntry(1, $0C, $0D, 0, 1, 2, 1, $102)

UNUSED_Spritemap_CrocomireCorpse_A4EDC8:
    dw $0007                                                             ;A4EDC8;
    %spritemapEntry(1, $1E6, $FA, 0, 0, 2, 0, $EB)
    %spritemapEntry(1, $1F6, $FA, 0, 0, 2, 0, $10B)
    %spritemapEntry(1, $1AD, $FA, 0, 0, 2, 0, $E4)
    %spritemapEntry(1, $19D, $FA, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1DD, $FA, 0, 0, 2, 0, $E2)
    %spritemapEntry(1, $1CD, $FA, 0, 0, 2, 0, $E2)
    %spritemapEntry(1, $1BD, $FA, 0, 0, 2, 0, $E2)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_CrocomireCorpse_12:
    dw $0009                                                             ;A4EDED;
    %spritemapEntry(0, $00, $F0, 1, 1, 2, 1, $FF)
    %spritemapEntry(0, $08, $00, 1, 1, 2, 1, $EF)
    %spritemapEntry(1, $08, $F0, 1, 1, 2, 1, $ED)
    %spritemapEntry(1, $1F8, $F8, 1, 1, 2, 1, $10D)
    %spritemapEntry(1, $3D, $DB, 0, 1, 2, 1, $E4)
    %spritemapEntry(1, $4D, $DB, 0, 1, 2, 1, $100)
    %spritemapEntry(1, $10, $EC, 1, 1, 2, 1, $102)
    %spritemapEntry(1, $20, $E2, 1, 1, 2, 1, $104)
    %spritemapEntry(1, $2E, $E2, 1, 1, 2, 1, $102)

Spritemap_CrocomireCorpse_13:
    dw $0007                                                             ;A4EE1C;
    %spritemapEntry(1, $0A, $FA, 0, 1, 2, 1, $EB)
    %spritemapEntry(1, $1FA, $FA, 0, 1, 2, 1, $10B)
    %spritemapEntry(1, $43, $FA, 0, 1, 2, 1, $E4)
    %spritemapEntry(1, $53, $FA, 0, 1, 2, 1, $100)
    %spritemapEntry(1, $13, $FA, 0, 1, 2, 1, $E2)
    %spritemapEntry(1, $23, $FA, 0, 1, 2, 1, $E2)
    %spritemapEntry(1, $33, $FA, 0, 1, 2, 1, $E2)

Spritemap_CrocomireCorpse_14:
    dw $0009                                                             ;A4EE41;
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 1, $FF)
    %spritemapEntry(0, $1F0, $F8, 0, 0, 2, 1, $EF)
    %spritemapEntry(1, $1E8, $00, 0, 0, 2, 1, $ED)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $1B, $F6, 0, 1, 2, 1, $E4)
    %spritemapEntry(1, $2B, $F6, 0, 1, 2, 1, $100)
    %spritemapEntry(1, $1EE, $07, 1, 1, 2, 1, $102)
    %spritemapEntry(1, $1FE, $FD, 1, 1, 2, 1, $104)
    %spritemapEntry(1, $0C, $FD, 1, 1, 2, 1, $102)

Spritemap_CrocomireCorpse_15:
    dw $0007                                                             ;A4EE70;
    %spritemapEntry(1, $1F8, $08, 0, 1, 2, 1, $109)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 1, $E9)
    %spritemapEntry(1, $2A, $FA, 0, 1, 2, 1, $E4)
    %spritemapEntry(1, $3A, $FA, 0, 1, 2, 1, $100)
    %spritemapEntry(1, $1FD, $0B, 1, 1, 2, 1, $102)
    %spritemapEntry(1, $0D, $01, 1, 1, 2, 1, $104)
    %spritemapEntry(1, $1B, $01, 1, 1, 2, 1, $102)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_CrocomireCorpse_A4EE95:
    dw $0009                                                             ;A4EE95;
    %spritemapEntry(0, $00, $08, 0, 1, 2, 0, $FF)
    %spritemapEntry(0, $08, $F8, 0, 1, 2, 0, $EF)
    %spritemapEntry(1, $08, $00, 0, 1, 2, 0, $ED)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $10D)
    %spritemapEntry(1, $1D5, $F6, 0, 0, 2, 0, $E4)
    %spritemapEntry(1, $1C5, $F6, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $02, $07, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $1F2, $FD, 1, 0, 2, 0, $104)
    %spritemapEntry(1, $1E4, $FD, 1, 0, 2, 0, $102)

UNUSED_Spritemap_CrocomireCorpse_A4EEC4:
    dw $0009                                                             ;A4EEC4;
    %spritemapEntry(0, $1F8, $F0, 1, 0, 2, 0, $FF)
    %spritemapEntry(0, $1F0, $00, 1, 0, 2, 0, $EF)
    %spritemapEntry(1, $1E8, $F0, 1, 0, 2, 0, $ED)
    %spritemapEntry(1, $1F8, $F8, 1, 0, 2, 0, $10D)
    %spritemapEntry(1, $1B3, $DB, 0, 0, 2, 0, $E4)
    %spritemapEntry(1, $1A3, $DB, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1E0, $EC, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $1D0, $E2, 1, 0, 2, 0, $104)
    %spritemapEntry(1, $1C2, $E2, 1, 0, 2, 0, $102)

UNUSED_Spritemap_CrocomireCorpse_A4EEF3:
    dw $0004                                                             ;A4EEF3;
    %spritemapEntry(0, $00, $F8, 0, 1, 2, 0, $D0)
    %spritemapEntry(0, $00, $00, 1, 1, 2, 0, $D0)
    %spritemapEntry(0, $1F8, $00, 1, 0, 2, 0, $D0)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 2, 0, $D0)

UNUSED_Spritemap_CrocomireCorpse_A4EF09:
    dw $0004                                                             ;A4EF09;
    %spritemapEntry(0, $00, $F8, 0, 1, 2, 0, $D1)
    %spritemapEntry(0, $00, $00, 1, 1, 2, 0, $D1)
    %spritemapEntry(0, $1F8, $00, 1, 0, 2, 0, $D1)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 2, 0, $D1)

UNUSED_Spritemap_CrocomireCorpse_A4EF1F:
    dw $0004                                                             ;A4EF1F;
    %spritemapEntry(0, $00, $00, 1, 1, 2, 0, $D2)
    %spritemapEntry(0, $00, $F8, 0, 1, 2, 0, $D2)
    %spritemapEntry(0, $1F8, $00, 1, 0, 2, 0, $D2)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 2, 0, $D2)

UNUSED_Spritemap_CrocomireCorpse_A4EF35:
    dw $0004                                                             ;A4EF35;
    %spritemapEntry(0, $00, $00, 1, 1, 2, 0, $D3)
    %spritemapEntry(0, $00, $F8, 0, 1, 2, 0, $D3)
    %spritemapEntry(0, $1F8, $00, 1, 0, 2, 0, $D3)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 2, 0, $D3)

UNUSED_Spritemap_CrocomireCorpse_A4EF4B:
    dw $0004                                                             ;A4EF4B;
    %spritemapEntry(0, $08, $00, 0, 0, 2, 0, $D7)
    %spritemapEntry(0, $00, $00, 0, 0, 2, 0, $D6)
    %spritemapEntry(0, $1F8, $00, 0, 0, 2, 0, $D5)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 2, 0, $D4)

UNUSED_Spritemap_CrocomireCorpse_A4EF61:
    dw $0003                                                             ;A4EF61;
    %spritemapEntry(0, $08, $00, 0, 0, 2, 0, $DA)
    %spritemapEntry(0, $00, $00, 0, 0, 2, 0, $D9)
    %spritemapEntry(0, $1F8, $00, 0, 0, 2, 0, $D8)

UNUSED_Spritemap_CrocomireCorpse_A4EF72:
    dw $0004                                                             ;A4EF72;
    %spritemapEntry(0, $08, $F8, 1, 0, 2, 0, $D7)
    %spritemapEntry(0, $00, $F8, 1, 0, 2, 0, $D6)
    %spritemapEntry(0, $1F8, $F8, 1, 0, 2, 0, $D5)
    %spritemapEntry(0, $1F8, $00, 1, 0, 2, 0, $D4)

UNUSED_Spritemap_CrocomireCorpse_A4EF88:
    dw $0003                                                             ;A4EF88;
    %spritemapEntry(0, $08, $F8, 1, 0, 2, 0, $DA)
    %spritemapEntry(0, $00, $F8, 1, 0, 2, 0, $D9)
    %spritemapEntry(0, $1F8, $F8, 1, 0, 2, 0, $D8)

UNUSED_Spritemap_CrocomireCorpse_A4EF99:
    dw $0001                                                             ;A4EF99;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $1CC)

UNUSED_Spritemap_CrocomireCorpse_A4EFA0:
    dw $0006                                                             ;A4EFA0;
    %spritemapEntry(0, $1E0, $00, 0, 0, 2, 0, $1DE)
    %spritemapEntry(0, $1E0, $F8, 0, 0, 2, 0, $1CE)
    %spritemapEntry(0, $1E8, $00, 0, 0, 2, 0, $15D)
    %spritemapEntry(0, $1E8, $F8, 0, 0, 2, 0, $14D)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $1E6)
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $1E0)

UNUSED_Spritemap_CrocomireCorpse_A4EFC0:
    dw $0006                                                             ;A4EFC0;
    %spritemapEntry(0, $1E0, $00, 0, 0, 2, 0, $1DF)
    %spritemapEntry(0, $1E0, $F8, 0, 0, 2, 0, $1CF)
    %spritemapEntry(0, $1E8, $00, 0, 0, 2, 0, $15D)
    %spritemapEntry(0, $1E8, $F8, 0, 0, 2, 0, $14D)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $1E6)
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $1E0)

UNUSED_Spritemap_CrocomireCorpse_A4EFE0:
    dw $0006                                                             ;A4EFE0;
    %spritemapEntry(0, $1E8, $00, 0, 0, 2, 0, $15E)
    %spritemapEntry(0, $1E8, $F8, 0, 0, 2, 0, $14E)
    %spritemapEntry(0, $1E0, $00, 0, 0, 2, 0, $13F)
    %spritemapEntry(0, $1E0, $F8, 0, 0, 2, 0, $12F)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $1E6)
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $1E0)

UNUSED_Spritemap_CrocomireCorpse_A4F000:
    dw $0004                                                             ;A4F000;
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $1E0)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $1E8)
    %spritemapEntry(0, $1E8, $00, 0, 0, 2, 0, $15F)
    %spritemapEntry(0, $1E8, $F8, 0, 0, 2, 0, $14F)

UNUSED_Spritemap_CrocomireCorpse_A4F016:
    dw $0002                                                             ;A4F016;
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $1E2)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $1EA)

UNUSED_Spritemap_CrocomireCorpse_A4F022:
    dw $0001                                                             ;A4F022;
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $1E4)

UNUSED_ExtendedTilemap_CrocomireCorpse_A4F029:
    dw $FFFE,$2000,$000C,$01FF,$01FF,$01FF,$01FF,$01FF                   ;A4F029;
    dw $01FF,$01FF,$01FF,$01FF,$01FF,$01FF,$01FF,$2040                   ;A4F039;
    dw $000C,$01FF,$01FF,$1CA2,$1CA3,$1CA4,$1CA5,$1CA6                   ;A4F049;
    dw $1CA7,$1CA8,$1CA9,$1CAA,$01FF,$2080,$000C,$1CB0                   ;A4F059;
    dw $1CB1,$1CB2,$1CB3,$1CB4,$1CB5,$1CB6,$1CB7,$1CB8                   ;A4F069;
    dw $1CB9,$1CBA,$1CBB,$20C0,$000C,$1CAC,$1CAD,$1CAE                   ;A4F079;
    dw $1CAF,$1CC0,$1CC1,$1CC2,$1CC3,$1CC4,$1CC5,$1CC6                   ;A4F089;
    dw $1CC7,$2100,$000C,$1CBC,$1CBD,$1CBE,$1CBF,$1CD0                   ;A4F099;
    dw $1CD1,$1CD2,$1CD3,$1CD4,$1CD5,$1CD6,$1CD7,$2140                   ;A4F0A9;
    dw $000C,$01FF,$01FF,$01FF,$01FF,$1CCA,$1CCB,$1CCC                   ;A4F0B9;
    dw $1CCD,$1CCE,$1CCF,$1C8B,$1C8C,$2180,$000C,$01FF                   ;A4F0C9;
    dw $01FF,$1CD8,$1CD9,$1CDA,$1CDB,$1CDC,$1CDD,$1CDE                   ;A4F0D9;
    dw $1CDF,$1C9B,$1C9C,$21C0,$000C,$01FF,$01FF,$1C43                   ;A4F0E9;
    dw $1C44,$1C45,$1C46,$1C8D,$1C8E,$1C8F,$1C9D,$1C9E                   ;A4F0F9;
    dw $1C9F,$FFFF                                                       ;A4F109;

UNUSED_ExtendedTilemap_CrocomireCorpse_A4F10D:
    dw $FFFE,$2002,$0007,$1CE0,$1CE1,$1CE2,$1CE3,$1CE4                   ;A4F10D;
    dw $1CE5,$1CE6,$2042,$000A,$1CF0,$1CF1,$1CF2,$1CF3                   ;A4F11D;
    dw $1CF4,$1CF5,$1CF6,$1CF7,$1CF8,$01FF,$2080,$000C                   ;A4F12D;
    dw $01FF,$01FF,$1CE9,$1CEA,$1CEB,$1CEC,$1CED,$1CEE                   ;A4F13D;
    dw $1CEF,$1D00,$1D01,$01FF,$20C0,$000C,$01FF,$01FF                   ;A4F14D;
    dw $01FF,$1CFA,$1CFB,$1CFC,$1CFD,$1CFE,$1CFF,$1D10                   ;A4F15D;
    dw $1D11,$1D12,$2100,$000C,$01FF,$01FF,$01FF,$01FF                   ;A4F16D;
    dw $1D03,$1D04,$1D05,$1D06,$1D07,$1D08,$1D09,$1D0A                   ;A4F17D;
    dw $2148,$0008,$01FF,$1D14,$1D15,$1D16,$1D17,$1D18                   ;A4F18D;
    dw $1D19,$1D1A,$2184,$000A,$1D0C,$1D0D,$1D0E,$1D0F                   ;A4F19D;
    dw $1D20,$1D21,$1D22,$1D23,$1D24,$1D25,$21C4,$000A                   ;A4F1AD;
    dw $1D1C,$1D1D,$1D1E,$1D1F,$1D30,$1D31,$1D32,$1D33                   ;A4F1BD;
    dw $1D34,$1D35,$FFFF                                                 ;A4F1CD;

UNUSED_ExtendedTilemap_CrocomireCorpse_A4F1D3:
    dw $FFFE,$2002,$0007,$01FF,$01FF,$01FF,$01FF,$01FF                   ;A4F1D3;
    dw $01FF,$01FF,$2042,$000A,$01FF,$01FF,$01FF,$01FF                   ;A4F1E3;
    dw $1C02,$1C03,$1C04,$1C05,$1C06,$1C07,$2084,$000A                   ;A4F1F3;
    dw $01FF,$1C10,$1C11,$1C12,$1C13,$1C14,$1C15,$1C16                   ;A4F203;
    dw $1C17,$1C18,$20C2,$000B,$1C0A,$1C0B,$1C0C,$1C0D                   ;A4F213;
    dw $1C0E,$1C0F,$1C20,$1C21,$1C22,$1C23,$1C24,$2100                   ;A4F223;
    dw $000C,$1C19,$1C1A,$1C1B,$1C1C,$1C1D,$1C1E,$1C1F                   ;A4F233;
    dw $1C30,$1C31,$1C32,$1C33,$1C34,$2140,$000C,$1C25                   ;A4F243;
    dw $1C26,$1C27,$1C28,$1C29,$1C2A,$1C2B,$1C2C,$1C2D                   ;A4F253;
    dw $1C2E,$1C2F,$1C40,$2180,$000C,$1C35,$1C36,$1C37                   ;A4F263;
    dw $1C38,$1C39,$1C3A,$1C3B,$1C3C,$1C3D,$1C3E,$1C3F                   ;A4F273;
    dw $1C50,$21C0,$0001,$1C00,$21C4,$000A,$1C43,$1C44                   ;A4F283;
    dw $1C45,$1C46,$1C47,$1C48,$1C49,$1C4A,$1C4B,$1C4C                   ;A4F293;
    dw $FFFF                                                             ;A4F2A3;

UNUSED_ExtendedTilemap_CrocomireCorpse_A4F2A5:
    dw $FFFE,$2246,$0004,$1C4F,$1C60,$1C61,$1C62,$2286                   ;A4F2A5;
    dw $0004,$1C5F,$1C70,$1C71,$1C72,$22C6,$0004,$1C6A                   ;A4F2B5;
    dw $1C6B,$1C6C,$1C6D,$2306,$0004,$1C7A,$1C7B,$1C7C                   ;A4F2C5;
    dw $1C7D,$FFFF                                                       ;A4F2D5;

UNUSED_ExtendedTilemap_CrocomireCorpse_A4F2D9:
    dw $FFFE,$2246,$0004,$1D46,$1D47,$1D48,$1D49,$2286                   ;A4F2D9;
    dw $0004,$1D56,$1D57,$1D58,$1D59,$22C6,$0004,$1D4A                   ;A4F2E9;
    dw $1D4B,$1D4C,$1D4D,$2306,$0004,$1D5A,$1D5B,$1D5C                   ;A4F2F9;
    dw $1D5D,$FFFF                                                       ;A4F309;

UNUSED_ExtendedTilemap_CrocomireCorpse_A4F30D:
    dw $FFFE,$2246,$0004,$1D4E,$1D4F,$1D02,$1D0B,$2286                   ;A4F30D;
    dw $0004,$1D13,$1D1B,$1C42,$1C51,$22C6,$0004,$1CA0                   ;A4F31D;
    dw $1CA1,$1CAB,$1CF9,$2306,$0004,$1C01,$1C08,$1C09                   ;A4F32D;
    dw $1C41,$FFFF                                                       ;A4F33D;

UNUSED_ExtendedTilemap_CrocomireCorpse_A4F341:
    dw $FFFE,$2354,$0006,$1D40,$1D41,$1D42,$1D43,$1D44                   ;A4F341;
    dw $1D45,$2394,$0006,$1D50,$1D51,$1D52,$1D53,$1D54                   ;A4F351;
    dw $1D55,$FFFF                                                       ;A4F361;

UNUSED_ExtendedTilemap_CrocomireCorpse_A4F365:
    dw $FFFE,$2354,$0006,$1D26,$1D27,$1D28,$1D29,$1D2A                   ;A4F365;
    dw $1D2B,$2394,$0006,$1D36,$1D37,$1D38,$1D39,$1D3A                   ;A4F375;
    dw $1D3B,$FFFF                                                       ;A4F385;

UNUSED_ExtendedTilemap_CrocomireCorpse_A4F389:
    dw $FFFE,$2354,$0006,$1D2C,$1D2D,$1D2E,$1D2F,$1CC8                   ;A4F389;
    dw $1CC9,$2394,$0006,$1D3C,$1D3D,$1D3E,$1D3F,$1CE7                   ;A4F399;
    dw $1CE8,$FFFF                                                       ;A4F3A9;

UNUSED_ExtendedTilemap_CrocomireCorpse_A4F3AD:
    dw $FFFE,$2040,$000C,$01FF,$01FF,$01FF,$01FF,$01FF                   ;A4F3AD;
    dw $1C02,$1C03,$1C04,$1C05,$1C06,$1C07,$01FF,$2080                   ;A4F3BD;
    dw $000C,$01FF,$01FF,$01FF,$1C10,$1C11,$1C12,$1C13                   ;A4F3CD;
    dw $1C14,$1C15,$1C16,$1C17,$1C18,$20C0,$000C,$01FF                   ;A4F3DD;
    dw $1C0A,$1C0B,$1C0C,$1C0D,$1C0E,$1C0F,$1C20,$1C21                   ;A4F3ED;
    dw $1C22,$1C23,$1C24,$2100,$000C,$1C19,$1C1A,$1C1B                   ;A4F3FD;
    dw $1C1C,$1C1D,$1C1E,$1C1F,$1C30,$1C31,$1C32,$1C33                   ;A4F40D;
    dw $1C34,$2140,$000C,$1C25,$1C26,$1C27,$1C28,$1C29                   ;A4F41D;
    dw $1C2A,$1C2B,$1C2C,$1C2D,$1C2E,$1C2F,$1C40,$2180                   ;A4F42D;
    dw $000C,$1C35,$1C36,$1C37,$1C38,$1C39,$1C3A,$1C3B                   ;A4F43D;
    dw $1C3C,$1C3D,$1C3E,$1C3F,$1C50,$21C0,$000C,$1C00                   ;A4F44D;
    dw $01FF,$1C43,$1C44,$1C45,$1C46,$1C47,$1C48,$1C49                   ;A4F45D;
    dw $1C4A,$1C4B,$1C4C,$2200,$000C,$01FF,$01FF,$1C53                   ;A4F46D;
    dw $1C54,$1C55,$1C56,$1C57,$1C58,$1C59,$1C5A,$1C5B                   ;A4F47D;
    dw $1C5C,$2240,$000C,$01FF,$1C4D,$1C4E,$1C4F,$1C60                   ;A4F48D;
    dw $1C61,$1C62,$1C63,$1C64,$1C65,$1C66,$1C67,$2280                   ;A4F49D;
    dw $000C,$01FF,$1C5D,$1C5E,$1C5F,$1C70,$1C71,$1C72                   ;A4F4AD;
    dw $1C73,$1C74,$1C75,$1C76,$1C77,$22C0,$000C,$01FF                   ;A4F4BD;
    dw $1C68,$1C69,$1C6A,$1C6B,$1C6C,$1C6D,$1C6E,$1C6F                   ;A4F4CD;
    dw $1C80,$1C81,$01FF,$2300,$000C,$01FF,$1C78,$1C79                   ;A4F4DD;
    dw $1C7A,$1C7B,$1C7C,$1C7D,$1C7E,$1C7F,$1C90,$1C91                   ;A4F4ED;
    dw $01FF,$2340,$000C,$01FF,$1C82,$1C83,$1C84,$1C85                   ;A4F4FD;
    dw $1C86,$1C87,$1C88,$1C89,$1C8A,$0140,$0141,$2380                   ;A4F50D;
    dw $000C,$01FF,$01FF,$1C93,$1C94,$1C95,$1C96,$1C97                   ;A4F51D;
    dw $1C98,$1C99,$1C9A,$0150,$0151,$FFFF                               ;A4F52D;

UNUSED_ExtendedTilemap_CrocomireCorpse_A4F539:
    dw $FFFE,$2202,$000B,$01FF,$1C53,$1C54,$1C55,$1C56                   ;A4F539;
    dw $1C57,$1C58,$1C59,$1C5A,$1C5B,$1C5C,$2242,$000B                   ;A4F549;
    dw $1C4D,$1C4E,$1C4F,$1C60,$1C61,$1C62,$1C63,$1C64                   ;A4F559;
    dw $1C65,$1C66,$1C67,$2282,$000B,$1C5D,$1C5E,$1C5F                   ;A4F569;
    dw $1C70,$1C71,$1C72,$1C73,$1C74,$1C75,$1C76,$1C77                   ;A4F579;
    dw $22C2,$000B,$1C68,$1C69,$1C6A,$1C6B,$1C6C,$1C6D                   ;A4F589;
    dw $1C6E,$1C6F,$1C80,$1C81,$01FF,$2302,$000B,$1C78                   ;A4F599;
    dw $1C79,$1C7A,$1C7B,$1C7C,$1C7D,$1C7E,$1C7F,$1C90                   ;A4F5A9;
    dw $1C91,$01FF,$2342,$000B,$1C82,$1C83,$1C84,$1C85                   ;A4F5B9;
    dw $1C86,$1C87,$1C88,$1C89,$1C8A,$0140,$0141,$2382                   ;A4F5C9;
    dw $000B,$01FF,$1C93,$1C94,$1C95,$1C96,$1C97,$1C98                   ;A4F5D9;
    dw $1C99,$1C9A,$0150,$0151,$FFFF                                     ;A4F5E9;
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_CrocomireCorpse_16:
    dw $0001                                                             ;A4F5F3;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 3, 5, $25)

Spritemap_CrocomireCorpse_17:
    dw $0003                                                             ;A4F5FA;
    %spritemapEntry(0, $00, $F8, 0, 0, 3, 5, $25)
    %spritemapEntry(0, $1FA, $F6, 0, 0, 3, 5, $25)
    %spritemapEntry(0, $1FC, $FB, 0, 0, 3, 5, $25)

Spritemap_CrocomireCorpse_18:
    dw $0003                                                             ;A4F60B;
    %spritemapEntry(0, $01, $F7, 0, 0, 3, 5, $25)
    %spritemapEntry(0, $1F9, $F4, 0, 0, 3, 5, $25)
    %spritemapEntry(0, $1FB, $FA, 0, 0, 3, 5, $25)

Spritemap_CrocomireCorpse_19:
    dw $0003                                                             ;A4F61C;
    %spritemapEntry(0, $01, $F5, 0, 0, 3, 5, $43)
    %spritemapEntry(0, $1FC, $F8, 0, 0, 3, 5, $43)
    %spritemapEntry(0, $1FA, $F1, 0, 0, 3, 5, $43)

Spritemap_CrocomireCorpse_1A:
    dw $0003                                                             ;A4F62D;
    %spritemapEntry(0, $01, $F3, 0, 0, 3, 5, $43)
    %spritemapEntry(0, $1FC, $F5, 0, 0, 3, 5, $43)
    %spritemapEntry(0, $1FA, $EE, 0, 0, 3, 5, $43)

Spritemap_CrocomireCorpse_1B:
    dw $0003                                                             ;A4F63E;
    %spritemapEntry(0, $00, $F0, 0, 0, 3, 5, $40)
    %spritemapEntry(0, $1FC, $F4, 0, 0, 3, 5, $40)
    %spritemapEntry(0, $1FA, $ED, 0, 0, 3, 5, $40)

Spritemap_CrocomireCorpse_1C:
    dw $0003                                                             ;A4F64F;
    %spritemapEntry(0, $00, $EE, 0, 0, 3, 5, $40)
    %spritemapEntry(0, $1FC, $F2, 0, 0, 3, 5, $40)
    %spritemapEntry(0, $1FA, $EC, 0, 0, 3, 5, $40)

Spritemap_CrocomireCorpse_1D:
    dw $0002                                                             ;A4F660;
    %spritemapEntry(0, $00, $EC, 0, 0, 3, 5, $40)
    %spritemapEntry(0, $1FC, $F0, 0, 0, 3, 5, $40)

Spritemap_CrocomireCorpse_1E:
    dw $0001                                                             ;A4F66C;
    %spritemapEntry(0, $1FC, $EE, 0, 0, 3, 5, $40)

Spritemap_CrocomireCorpse_1F:
    dw $0001                                                             ;A4F673;
    %spritemapEntry(0, $1FC, $EE, 0, 0, 0, 5, $40)


InitAI_CrocomireTongue:
    LDX.W $079F                                                          ;A4F67A;
    LDA.L $7ED828,X                                                      ;A4F67D;
    BIT.W #$0002                                                         ;A4F681;
    BNE .dead                                                            ;A4F684;
    LDX.W $0E54                                                          ;A4F686;
    LDA.W #InstList_CrocomireTongue_Fight                                ;A4F689;
    STA.W $0F92,X                                                        ;A4F68C;
    LDA.W $0F88,X                                                        ;A4F68F;
    ORA.W #$0404                                                         ;A4F692;
    STA.W $0F88,X                                                        ;A4F695;
    LDA.W #$0001                                                         ;A4F698;
    STA.W $0F94,X                                                        ;A4F69B;
    LDA.W #$0017                                                         ;A4F69E;
    STA.W $0FA8,X                                                        ;A4F6A1;
    LDA.W #$0E00                                                         ;A4F6A4;
    STA.W $0F96,X                                                        ;A4F6A7;
    RTL                                                                  ;A4F6AA;


.dead:
    LDX.W $0E54                                                          ;A4F6AB;
    LDA.W $0F86,X                                                        ;A4F6AE;
    ORA.W #$0300                                                         ;A4F6B1;
    AND.W #$DFFF                                                         ;A4F6B4;
    STA.W $0F86,X                                                        ;A4F6B7;
    RTL                                                                  ;A4F6BA;


MainAI_CrocomireTongue:
    LDX.W $0E54                                                          ;A4F6BB;
    RTL                                                                  ;A4F6BE;


RTL_A4F6BF:
    RTL                                                                  ;A4F6BF;


Freespace_BankA4_F6D9:                                                   ;A4F6C0;
; $927 bytes
