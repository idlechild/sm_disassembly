
org $AA8000


CommonAA_GrappleAI_NoInteraction:
    JSL.L GrappleAI_SwitchEnemyAIToMainAI                                ;AA8000;
    RTL                                                                  ;AA8004;


CommonAA_GrappleAI_SamusLatchesOn:
    JSL.L GrappleAI_SamusLatchesOnWithGrapple                            ;AA8005;
    RTL                                                                  ;AA8009;


CommonAA_GrappleAI_KillEnemy:
    JSL.L GrappleAI_EnemyGrappleDeath                                    ;AA800A;
    RTL                                                                  ;AA800E;


CommonAA_GrappleAI_CancelGrappleBeam:
    JSL.L GrappleAI_SwitchToFrozenAI                                     ;AA800F;
    RTL                                                                  ;AA8013;


CommonAA_GrappleAI_SamusLatchesOn_NoInvincibility:
    JSL.L GrappleAI_SamusLatchesOnWithGrapple_NoInvincibility            ;AA8014;
    RTL                                                                  ;AA8018;


UNUSED_CommonAA_GrappleAI_SamusLatchesOn_ParalyzeEnemy_A38019:
    JSL.L GrappleAI_SamusLatchesOnWithGrapple_ParalyzeEnemy              ;AA8019;
    RTL                                                                  ;AA801D;


CommonAA_GrappleAI_HurtSamus:
    JSL.L GrappleAI_SwitchToFrozenAI_duplicate                           ;AA801E;
    RTL                                                                  ;AA8022;


CommonAA_NormalEnemyTouchAI:
    JSL.L NormalEnemyTouchAI                                             ;AA8023;
    RTL                                                                  ;AA8027;


CommonAA_NormalTouchAI_NoDeathCheck:
    JSL.L NormalEnemyTouchAI_NoDeathCheck_External                       ;AA8028;
    RTL                                                                  ;AA802C;


CommonAA_NormalEnemyShotAI:
    JSL.L NormalEnemyShotAI                                              ;AA802D;
    RTL                                                                  ;AA8031;


CommonAA_NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic:
    JSL.L NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic_External     ;AA8032;
    RTL                                                                  ;AA8036;


CommonAA_NormalEnemyPowerBombAI:
    JSL.L NormalEnemyPowerBombAI                                         ;AA8037;
    RTL                                                                  ;AA803B;


CommonAA_NormalEnemyPowerBombAI_NoDeathCheck:
    JSL.L NormalEnemyPowerBombAI_NoDeathCheck_External                   ;AA803C;
    RTL                                                                  ;AA8040;


CommonAA_NormalEnemyFrozenAI:
    JSL.L NormalEnemyFrozenAI                                            ;AA8041;
    RTL                                                                  ;AA8045;


CommonAA_CreateADudShot_JSL:
    JSL.L CreateADudShot                                                 ;AA8046;
    RTL                                                                  ;AA804A;


RTS_AA804B:
    RTS                                                                  ;AA804B;


RTL_AA804C:
    RTL                                                                  ;AA804C;


Spritemap_CommonAA_Nothing:
    dw $0000                                                             ;AA804D;

ExtendedSpritemap_CommonAA_Nothing:
    dw $0001                                                             ;AA804F;
    dw $0000,$0000                                                 
    dw Spritemap_CommonAA_Nothing                                        ;AA8055;
    dw Hitbox_CommonAA_Nothing                                           ;AA8057;

Hitbox_CommonAA_Nothing:
    dw $0001                                                             ;AA8059;
    dw $0000,$0000,$0000,$0000                                     
    dw CommonAA_NormalEnemyTouchAI                                       ;AA8063;
    dw CommonAA_NormalEnemyShotAI                                        ;AA8065;

InstList_CommonAA_DeleteEnemy:
    dw Instruction_CommonAA_DeleteEnemy                                  ;AA8067;

NOPNOP_AA8069:
    NOP                                                                  ;AA8069;
    NOP                                                                  ;AA806A;

Instruction_CommonAA_Enemy0FB2_InY:
    LDA.W $0000,Y                                                        ;AA806B;
    STA.W $0FB2,X                                                        ;AA806E;
    INY                                                                  ;AA8071;
    INY                                                                  ;AA8072;
    RTL                                                                  ;AA8073;


Instruction_CommonAA3_SetEnemy0FB2ToRTS:
    LDA.W #RTS_AA807B                                                    ;AA8074;
    STA.W $0FB2,X                                                        ;AA8077;
    RTL                                                                  ;AA807A;


RTS_AA807B:
    RTS                                                                  ;AA807B;


Instruction_CommonAA_DeleteEnemy:
    LDA.W $0F86,X                                                        ;AA807C;
    ORA.W #$0200                                                         ;AA807F;
    STA.W $0F86,X                                                        ;AA8082;
    PLA                                                                  ;AA8085;
    PEA.W ProcessEnemyInstructions_return-1                              ;AA8086;
    RTL                                                                  ;AA8089;


Instruction_CommonAA_CallFunctionInY:
    LDA.W $0000,Y                                                        ;AA808A;
    STA.B $12                                                            ;AA808D;
    PHY                                                                  ;AA808F;
    PHX                                                                  ;AA8090;
    PEA.W .manualReturn-1                                                ;AA8091;
    JMP.W ($0012)                                                        ;AA8094;


.manualReturn:
    PLX                                                                  ;AA8097;
    PLY                                                                  ;AA8098;
    INY                                                                  ;AA8099;
    INY                                                                  ;AA809A;
    RTL                                                                  ;AA809B;


Instruction_CommonAA_CallFunctionInY_WithA:
    LDA.W $0000,Y                                                        ;AA809C;
    STA.B $12                                                            ;AA809F;
    LDA.W $0002,Y                                                        ;AA80A1;
    PHY                                                                  ;AA80A4;
    PHX                                                                  ;AA80A5;
    PEA.W .manualReturn-1                                                ;AA80A6;
    JMP.W ($0012)                                                        ;AA80A9;


.manualReturn:
    PLX                                                                  ;AA80AC;
    PLY                                                                  ;AA80AD;
    TYA                                                                  ;AA80AE;
    CLC                                                                  ;AA80AF;
    ADC.W #$0004                                                         ;AA80B0;
    TAY                                                                  ;AA80B3;
    RTL                                                                  ;AA80B4;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_Instruction_CommonAA_CallExternalFunctionInY_AA80B5:
    LDA.W $0000,Y                                                        ;AA80B5;
    STA.B $12                                                            ;AA80B8;
    LDA.W $0001,Y                                                        ;AA80BA;
    STA.B $13                                                            ;AA80BD;
    PHX                                                                  ;AA80BF;
    PHY                                                                  ;AA80C0;
    JSL.L .externalFunction                                              ;AA80C1;
    PLY                                                                  ;AA80C5;
    PLX                                                                  ;AA80C6;
    INY                                                                  ;AA80C7;
    INY                                                                  ;AA80C8;
    INY                                                                  ;AA80C9;
    RTL                                                                  ;AA80CA;


.externalFunction:
    JML.W [$0012]                                                        ;AA80CB;


UNUSED_Inst_CommonAA_CallExternalFunctionInY_WithA_AA80CE:
    LDA.W $0000,Y                                                        ;AA80CE;
    STA.B $12                                                            ;AA80D1;
    LDA.W $0001,Y                                                        ;AA80D3;
    STA.B $13                                                            ;AA80D6;
    LDA.W $0003,Y                                                        ;AA80D8;
    PHX                                                                  ;AA80DB;
    PHY                                                                  ;AA80DC;
    JSL.L .externalFunction                                              ;AA80DD;
    PLY                                                                  ;AA80E1;
    PLX                                                                  ;AA80E2;
    TYA                                                                  ;AA80E3;
    CLC                                                                  ;AA80E4;
    ADC.W #$0005                                                         ;AA80E5;
    TAY                                                                  ;AA80E8;
    RTL                                                                  ;AA80E9;


.externalFunction:
    JML.W [$0012]                                                        ;AA80EA;
endif ; !FEATURE_KEEP_UNREFERENCED


Instruction_CommonAA_GotoY:
    LDA.W $0000,Y                                                        ;AA80ED;
    TAY                                                                  ;AA80F0;
    RTL                                                                  ;AA80F1;


Instruction_CommonAA_GotoY_PlusY:
    STY.B $12                                                            ;AA80F2;
    DEY                                                                  ;AA80F4;
    LDA.W $0000,Y                                                        ;AA80F5;
    XBA                                                                  ;AA80F8;
    BMI .highByte                                                        ;AA80F9;
    AND.W #$00FF                                                         ;AA80FB;
    BRA +                                                                ;AA80FE;


.highByte:
    ORA.W #$FF00                                                         ;AA8100;

  + CLC                                                                  ;AA8103;
    ADC.B $12                                                            ;AA8104;
    TAY                                                                  ;AA8106;
    RTL                                                                  ;AA8107;


Instruction_CommonAA_DecrementTimer_GotoYIfNonZero:
    DEC.W $0F90,X                                                        ;AA8108;
    BNE Instruction_CommonAA_GotoY                                       ;AA810B;
    INY                                                                  ;AA810D;
    INY                                                                  ;AA810E;
    RTL                                                                  ;AA810F;


Instruction_CommonAA_DecrementTimer_GotoYIfNonZero_duplicate:
    DEC.W $0F90,X                                                        ;AA8110;
    BNE Instruction_CommonAA_GotoY                                       ;AA8113;
    INY                                                                  ;AA8115;
    INY                                                                  ;AA8116;
    RTL                                                                  ;AA8117;


Instruction_CommonAA_DecrementTimer_GotoY_PlusY_IfNonZero:
    SEP #$20                                                             ;AA8118;
    DEC.W $0F90,X                                                        ;AA811A;
    REP #$20                                                             ;AA811D;
    BNE Instruction_CommonAA_GotoY_PlusY                                 ;AA811F;
    INY                                                                  ;AA8121;
    RTL                                                                  ;AA8122;


Instruction_CommonAA_TimerInY:
    LDA.W $0000,Y                                                        ;AA8123;
    STA.W $0F90,X                                                        ;AA8126;
    INY                                                                  ;AA8129;
    INY                                                                  ;AA812A;
    RTL                                                                  ;AA812B;


Instruction_CommonAA_SkipNextInstruction:
    INY                                                                  ;AA812C;
    INY                                                                  ;AA812D;
    RTL                                                                  ;AA812E;


Instruction_CommonAA_Sleep:
    DEY                                                                  ;AA812F;
    DEY                                                                  ;AA8130;
    TYA                                                                  ;AA8131;
    STA.W $0F92,X                                                        ;AA8132;
    PLA                                                                  ;AA8135;
    PEA.W ProcessEnemyInstructions_return-1                              ;AA8136;
    RTL                                                                  ;AA8139;


Instruction_CommonAA_WaitYFrames:
    LDA.W $0000,Y                                                        ;AA813A;
    STA.W $0F94,X                                                        ;AA813D;
    INY                                                                  ;AA8140;
    INY                                                                  ;AA8141;
    TYA                                                                  ;AA8142;
    STA.W $0F92,X                                                        ;AA8143;
    PLA                                                                  ;AA8146;
    PEA.W ProcessEnemyInstructions_return-1                              ;AA8147;
    RTL                                                                  ;AA814A;


Instruction_CommonAA_TransferYBytesInYToVRAM:
    PHX                                                                  ;AA814B;
    LDX.W $0330                                                          ;AA814C;
    LDA.W $0000,Y                                                        ;AA814F;
    STA.B $D0,X                                                          ;AA8152;
    LDA.W $0002,Y                                                        ;AA8154;
    STA.B $D2,X                                                          ;AA8157;
    LDA.W $0003,Y                                                        ;AA8159;
    STA.B $D3,X                                                          ;AA815C;
    LDA.W $0005,Y                                                        ;AA815E;
    STA.B $D5,X                                                          ;AA8161;
    TXA                                                                  ;AA8163;
    CLC                                                                  ;AA8164;
    ADC.W #$0007                                                         ;AA8165;
    STA.W $0330                                                          ;AA8168;
    TYA                                                                  ;AA816B;
    CLC                                                                  ;AA816C;
    ADC.W #$0007                                                         ;AA816D;
    TAY                                                                  ;AA8170;
    PLX                                                                  ;AA8171;
    RTL                                                                  ;AA8172;


Instruction_CommonAA_EnableOffScreenProcessing:
    LDA.W $0F86,X                                                        ;AA8173;
    ORA.W #$0800                                                         ;AA8176;
    STA.W $0F86,X                                                        ;AA8179;
    RTL                                                                  ;AA817C;


Instruction_CommonAA_DisableOffScreenProcessing:
    LDA.W $0F86,X                                                        ;AA817D;
    AND.W #$F7FF                                                         ;AA8180;
    STA.W $0F86,X                                                        ;AA8183;
    RTL                                                                  ;AA8186;


;        _____________________ Speed
;       |      _______________ Subspeed
;       |     |      _________ Negated speed
;       |     |     |      ___ Negated subspeed
;       |     |     |     |
CommonAAEnemySpeeds_LinearlyIncreasing:
  .speed:
    dw $0000                                                             ;AA8187;
  .subspeed:
    dw       $0000                                                       ;AA8189;
  .negatedSpeed:
    dw             $0000                                                 ;AA818B;
  .negatedSubspeed:
    dw                   $0000                                           ;AA818D;
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
CommonAAEnemySpeeds_QuadraticallyIncreasing:
; I.e. gravity
; Used by e.g. Botwoon when dying and falling to the floor
  .subspeed:
    dw $0000                                                             ;AA838F;
  .speed:
    dw       $0000                                                       ;AA8391;
  .negatedSubspeed:
    dw             $0000                                                 ;AA8393;
  .negatedSpeed:
    dw                   $0000                                           ;AA8395;
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


; Orb projectile
Palette_Torizo_OrbProjectile:
    dw $3800,$03FF,$033B,$0216,$0113,$6B1E,$4A16,$3591                   ;AA8687; Sprite palette 3
    dw $20E9,$1580,$1580,$1580,$1580,$1580,$1580,$1580                   ;AA8697;

; Bomb Torizo statue
Palette_Torizo_BombTorizoStatue:
    dw $3800,$02DF,$01D7,$00AC,$5A73,$41AD,$2D08,$1863                   ;AA86A7; Sprite palette 7
    dw $1486,$0145,$0145,$0145,$7FFF,$0145,$0145,$0000                   ;AA86B7;

; Initial Bomb Torizo
Palette_Torizo_InitialBombTorizo_SpritePalette1:
    dw $3800,$679F,$5299,$252E,$14AA,$5EFC,$4657,$35B2                   ;AA86C7;
    dw $2D70,$5B7F,$3DF8,$2D0E,$5F5F,$5E1A,$5D35,$0C63                   ;AA86D7;

Palette_Torizo_InitialBombTorizo_SpritePalette2:
    dw $3800,$4ABA,$35B2,$0847,$0003,$4215,$2970,$18CB                   ;AA86E7;
    dw $1089,$463A,$28B3,$1809,$6F7F,$51FD,$4113,$0C63                   ;AA86F7;

; Normal Torizo (Bomb Torizo after coming to life, Golden Torizo transitions to this from damage, the hatched Golden Torizo egg)
Palette_Torizo_Normal_SpritePalette1:
    dw $3800,$56BA,$41B2,$1447,$0403,$4E15,$3570,$24CB                   ;AA8707;
    dw $1868,$6F7F,$51F8,$410E,$031F,$01DA,$00F5,$0C63                   ;AA8717;

Palette_Torizo_Normal_SpritePalette2:
    dw $3800,$4215,$2D0D,$0002,$0000,$3970,$20CB,$0C26                   ;AA8727;
    dw $0403,$463A,$28B3,$1809,$6F7F,$51FD,$4113,$0C63                   ;AA8737;

; Initial Golden Torizo
Palette_Torizo_InitialGoldenTorizo_SpritePalette1:
    dw $3800,$6AB5,$49B0,$1C45,$0C01,$5613,$416D,$2CC9                   ;AA8747;
    dw $2066,$5714,$31CC,$14E3,$5630,$3569,$1883,$0C66                   ;AA8757;

Palette_Torizo_InitialGoldenTorizo_SpritePalette2:
    dw $3800,$5610,$350B,$0800,$0000,$416E,$2CC8,$1823                   ;AA8767;
    dw $0C01,$6A31,$4CAA,$2406,$7F7B,$75F4,$4D10,$0C63                   ;AA8777;

; Golden Torizo (after coming to life)
Palette_Torizo_GoldenTorizo_SpritePalette1:
    dw $3800,$4BBE,$06B9,$00A8,$0000,$173A,$0276,$01F2                   ;AA8787;
    dw $014D,$73E0,$4F20,$2A20,$7FE0,$5AA0,$5920,$0043                   ;AA8797;

Palette_Torizo_GoldenTorizo_SpritePalette2:
    dw $3800,$3719,$0214,$0003,$0000,$0295,$01D1,$014D                   ;AA87A7;
    dw $00A8,$4B40,$25E0,$00E0,$6B40,$4600,$4480,$0000                   ;AA87B7;

Hitboxes_Torizo_Blank:
    dw $0000                                                             ;AA87C7;

Spritemap_Torizo_Blank:
    dw $0001                                                             ;AA87C9;
    %spritemapEntry(0, $100, $00, 0, 1, 0, 1, $00)

ExtendedSpritemap_Torizo_Blank:
    dw $0001                                                             ;AA87D0;
    dw $0000,$0000
    dw Spritemap_Torizo_Blank                                            ;AA87D6;
    dw Hitboxes_Torizo_Blank                                             ;AA87D8;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitboxes_Torizo_AA87DA:
    dw $0001                                                             ;AA87DA;
    dw $FFF5,$FFD6,$000A,$0003
    dw EnemyTouch_Torizo                                                 ;AA87E4;
    dw EnemyShot_Torizo_Normal                                           ;AA87E6;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_0:
    dw $0001                                                             ;AA87E8;
    dw $FFF0,$FFE5,$0010,$001B
    dw EnemyTouch_Torizo                                                 ;AA87F2;
    dw EnemyShot_Torizo_StandUp_SitDown                                  ;AA87F4;

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_1:
    dw $0001                                                             ;AA87F6;
    dw $FFF2,$FFE5,$000D,$001B
    dw EnemyTouch_Torizo                                                 ;AA8800;
    dw EnemyShot_Torizo_StandUp_SitDown                                  ;AA8802;

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_2:
    dw $0001                                                             ;AA8804;
    dw $FFF3,$FFDE,$0009,$0021
    dw EnemyTouch_Torizo                                                 ;AA880E;
    dw EnemyShot_Torizo_StandUp_SitDown                                  ;AA8810;

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_3:
    dw $0001                                                             ;AA8812;
    dw $FFF5,$FFDA,$000B,$0027
    dw EnemyTouch_Torizo                                                 ;AA881C;
    dw EnemyShot_Torizo_StandUp_SitDown                                  ;AA881E;

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_4:
    dw $0001                                                             ;AA8820;
    dw $FFF1,$FFD4,$0008,$002F
    dw EnemyTouch_Torizo                                                 ;AA882A;
    dw EnemyShot_Torizo_StandUp_SitDown                                  ;AA882C;

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_5:
    dw $0001                                                             ;AA882E;
    dw $FFEE,$FFD5,$0003,$0018
    dw EnemyTouch_Torizo                                                 ;AA8838;
    dw EnemyShot_Torizo_StandUp_SitDown                                  ;AA883A;

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_6:
    dw $0001                                                             ;AA883C;
    dw $FFEF,$FFD6,$0005,$000F
    dw EnemyTouch_Torizo                                                 ;AA8846;
    dw EnemyShot_Torizo_StandUp_SitDown                                  ;AA8848;

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_7:
    dw $0001                                                             ;AA884A;
    dw $FFF1,$FFD9,$0007,$0015
    dw EnemyTouch_Torizo                                                 ;AA8854;
    dw EnemyShot_Torizo_Normal                                           ;AA8856;

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_8:
    dw $0000                                                             ;AA8858;

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_9:
    dw $0000                                                             ;AA885A;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitboxes_Torizo_StandUp_SitDown_FacingLeft_AA885C:
    dw $0001                                                             ;AA885C;
    dw $FFF0,$0027,$FFFF,$0037                                     
    dw EnemyTouch_Torizo                                                 ;AA8866;
    dw RTL_AAC9C1                                                        ;AA8868;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_A:
    dw $0000                                                             ;AA886A;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitboxes_Torizo_StandUp_SitDown_FacingLeft_AA886C:
    dw $0001                                                             ;AA886C;
    dw $FFE0,$0029,$FFF3,$0040                                     
    dw EnemyTouch_Torizo                                                 ;AA8876;
    dw RTL_AAC9C1                                                        ;AA8878;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_B:
    dw $0000                                                             ;AA887A;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitboxes_Torizo_StandUp_SitDown_FacingLeft_AA887C:
    dw $0001                                                             ;AA887C;
    dw $FFD8,$001C,$FFEC,$0030                                     
    dw EnemyTouch_Torizo                                                 ;AA8886;
    dw RTL_AAC9C1                                                        ;AA8888;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_C:
    dw $0000                                                             ;AA888A;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitboxes_Torizo_StandUp_SitDown_FacingLeft_AA888C:
    dw $0001                                                             ;AA888C;
    dw $FFC8,$0009,$FFEB,$0014                                     
    dw EnemyTouch_Torizo                                                 ;AA8896;
    dw RTL_AAC9C1                                                        ;AA8898;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_D:
    dw $0000                                                             ;AA889A;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitboxes_Torizo_StandUp_SitDown_FacingLeft_AA889C:
    dw $0001                                                             ;AA889C;
    dw $FFD3,$FFF3,$FFE5,$0003                                     
    dw EnemyTouch_Torizo                                                 ;AA88A6;
    dw RTL_AAC9C1                                                        ;AA88A8;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_E:
    dw $0000                                                             ;AA88AA;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitboxes_Torizo_StandUp_SitDown_FacingLeft_AA88AC:
    dw $0001                                                             ;AA88AC;
    dw $FFE3,$FFDB,$FFF0,$FFF1                                     
    dw EnemyTouch_Torizo                                                 ;AA88B6;
    dw RTL_AAC9C1                                                        ;AA88B8;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_F:
    dw $0000                                                             ;AA88BA;

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_10:
    dw $0000                                                             ;AA88BC;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitboxes_Torizo_StandUp_SitDown_FacingLeft_AA88BE:
    dw $0001                                                             ;AA88BE;
    dw $FFEF,$0028,$0000,$0039                                     
    dw EnemyTouch_Torizo                                                 ;AA88C8;
    dw RTL_AAC9C1                                                        ;AA88CA;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_11:
    dw $0000                                                             ;AA88CC;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitboxes_Torizo_StandUp_SitDown_FacingLeft_AA88CE:
    dw $0001                                                             ;AA88CE;
    dw $FFE6,$0021,$FFF4,$0032                                     
    dw EnemyTouch_Torizo                                                 ;AA88D8;
    dw RTL_AAC9C1                                                        ;AA88DA;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_12:
    dw $0000                                                             ;AA88DC;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitboxes_Torizo_StandUp_SitDown_FacingLeft_AA88DE:
    dw $0001                                                             ;AA88DE;
    dw $FFDD,$0018,$FFEA,$0025                                     
    dw EnemyTouch_Torizo                                                 ;AA88E8;
    dw RTL_AAC9C1                                                        ;AA88EA;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_13:
    dw $0000                                                             ;AA88EC;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitboxes_Torizo_StandUp_SitDown_FacingLeft_AA88EE:
    dw $0001                                                             ;AA88EE;
    dw $FFCA,$0008,$FFE9,$0012                                     
    dw EnemyTouch_Torizo                                                 ;AA88F8;
    dw RTL_AAC9C1                                                        ;AA88FA;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_14:
    dw $0000                                                             ;AA88FC;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitboxes_Torizo_StandUp_SitDown_FacingLeft_AA88FE:
    dw $0001                                                             ;AA88FE;
    dw $FFD3,$FFF3,$FFE3,$0000                                     
    dw EnemyTouch_Torizo                                                 ;AA8908;
    dw RTL_AAC9C1                                                        ;AA890A;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_15:
    dw $0000                                                             ;AA890C;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitboxes_Torizo_StandUp_SitDown_FacingLeft_AA890E:
    dw $0001                                                             ;AA890E;
    dw $FFE4,$FFDA,$FFEF,$FFEE                                     
    dw EnemyTouch_Torizo                                                 ;AA8918;
    dw RTL_AAC9C1                                                        ;AA891A;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_16:
    dw $0001                                                             ;AA891C;
    dw $FFEE,$FFDA,$0007,$0009                                     
    dw EnemyTouch_Torizo                                                 ;AA8926;
    dw EnemyShot_Torizo_Normal                                           ;AA8928;

Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17:
    dw $0001                                                             ;AA892A;
    dw $FFEE,$FFDB,$0007,$0012                                     
    dw EnemyTouch_Torizo                                                 ;AA8934;
    dw EnemyShot_Torizo_Normal                                           ;AA8936;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Hitboxes_Torizo_StandUp_SitDown_FacingLeft_AA8938:
    dw $0001                                                             ;AA8938;
    dw $FFF5,$FFD6,$000A,$0007                                     
    dw EnemyTouch_Torizo                                                 ;AA8942;
    dw EnemyShot_Torizo_Normal                                           ;AA8944;
endif ; !FEATURE_KEEP_UNREFERENCED

Hitboxes_Torizo_StandUp_SitDown_FacingRight_0:
    dw $0001                                                             ;AA8946;
    dw $FFF1,$FFE5,$000D,$001B                                     
    dw EnemyTouch_Torizo                                                 ;AA8950;
    dw EnemyShot_Torizo_StandUp_SitDown                                  ;AA8952;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_1:
    dw $0001                                                             ;AA8954;
    dw $FFF3,$FFE5,$000D,$001B                                     
    dw EnemyTouch_Torizo                                                 ;AA895E;
    dw EnemyShot_Torizo_StandUp_SitDown                                  ;AA8960;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_2:
    dw $0001                                                             ;AA8962;
    dw $FFF2,$FFE0,$000D,$0021                                     
    dw EnemyTouch_Torizo                                                 ;AA896C;
    dw EnemyShot_Torizo_StandUp_SitDown                                  ;AA896E;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_3:
    dw $0001                                                             ;AA8970;
    dw $FFF2,$FFDD,$000B,$0027                                     
    dw EnemyTouch_Torizo                                                 ;AA897A;
    dw EnemyShot_Torizo_StandUp_SitDown                                  ;AA897C;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_4:
    dw $0001                                                             ;AA897E;
    dw $FFFA,$FFD6,$000D,$002F                                     
    dw EnemyTouch_Torizo                                                 ;AA8988;
    dw EnemyShot_Torizo_StandUp_SitDown                                  ;AA898A;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_5:
    dw $0001                                                             ;AA898C;
    dw $FFF9,$FFD7,$000B,$002F                                     
    dw EnemyTouch_Torizo                                                 ;AA8996;
    dw EnemyShot_Torizo_StandUp_SitDown                                  ;AA8998;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_6:
    dw $0001                                                             ;AA899A;
    dw $FFF8,$FFD7,$0016,$002F                                     
    dw EnemyTouch_Torizo                                                 ;AA89A4;
    dw EnemyShot_Torizo_StandUp_SitDown                                  ;AA89A6;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_7:
    dw $0001                                                             ;AA89A8;
    dw $FFF6,$FFDA,$000D,$0017                                     
    dw EnemyTouch_Torizo                                                 ;AA89B2;
    dw EnemyShot_Torizo_Normal                                           ;AA89B4;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_8:
    dw $0000                                                             ;AA89B6;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_9:
    dw $0000                                                             ;AA89B8;

UNSUED_Hitboxes_Torizo_StandUp_SitDown_FacingRight_AA89BA:
    dw $0001                                                             ;AA89BA;
    dw $0000,$002B,$0016,$0040                                     
    dw EnemyTouch_Torizo                                                 ;AA89C4;
    dw RTL_AAC9C1                                                        ;AA89C6;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_A:
    dw $0000                                                             ;AA89C8;

UNSUED_Hitboxes_Torizo_StandUp_SitDown_FacingRight_AA89CA:
    dw $0001                                                             ;AA89CA;
    dw $000A,$0026,$001F,$003C                                     
    dw EnemyTouch_Torizo                                                 ;AA89D4;
    dw RTL_AAC9C1                                                        ;AA89D6;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_B:
    dw $0000                                                             ;AA89D8;

UNSUED_Hitboxes_Torizo_StandUp_SitDown_FacingRight_AA89DA:
    dw $0001                                                             ;AA89DA;
    dw $0014,$0018,$0022,$0025                                     
    dw EnemyTouch_Torizo                                                 ;AA89E4;
    dw RTL_AAC9C1                                                        ;AA89E6;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_C:
    dw $0000                                                             ;AA89E8;

UNSUED_Hitboxes_Torizo_StandUp_SitDown_FacingRight_AA89EA:
    dw $0001                                                             ;AA89EA;
    dw $0015,$0008,$003B,$0014                                     
    dw EnemyTouch_Torizo                                                 ;AA89F4;
    dw RTL_AAC9C1                                                        ;AA89F6;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_D:
    dw $0000                                                             ;AA89F8;

UNSUED_Hitboxes_Torizo_StandUp_SitDown_FacingRight_AA89FA:
    dw $0001                                                             ;AA89FA;
    dw $0017,$FFF9,$002D,$0004                                     
    dw EnemyTouch_Torizo                                                 ;AA8A04;
    dw RTL_AAC9C1                                                        ;AA8A06;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_E:
    dw $0000                                                             ;AA8A08;

UNSUED_Hitboxes_Torizo_StandUp_SitDown_FacingRight_AA8A0A:
    dw $0001                                                             ;AA8A0A;
    dw $000F,$FFDB,$001C,$FFED                                     
    dw EnemyTouch_Torizo                                                 ;AA8A14;
    dw RTL_AAC9C1                                                        ;AA8A16;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_F:
    dw $0000                                                             ;AA8A18;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_10:
    dw $0000                                                             ;AA8A1A;

UNSUED_Hitboxes_Torizo_StandUp_SitDown_FacingRight_AA8A1C:
    dw $0001                                                             ;AA8A1C;
    dw $FFFF,$0027,$000F,$003B                                     
    dw EnemyTouch_Torizo                                                 ;AA8A26;
    dw RTL_AAC9C1                                                        ;AA8A28;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_11:
    dw $0000                                                             ;AA8A2A;

UNSUED_Hitboxes_Torizo_StandUp_SitDown_FacingRight_AA8A2C:
    dw $0001                                                             ;AA8A2C;
    dw $0009,$0023,$001A,$0034                                     
    dw EnemyTouch_Torizo                                                 ;AA8A36;
    dw RTL_AAC9C1                                                        ;AA8A38;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_12:
    dw $0000                                                             ;AA8A3A;

UNSUED_Hitboxes_Torizo_StandUp_SitDown_FacingRight_AA8A3C:
    dw $0001                                                             ;AA8A3C;
    dw $0016,$0018,$0023,$0024                                     
    dw EnemyTouch_Torizo                                                 ;AA8A46;
    dw RTL_AAC9C1                                                        ;AA8A48;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_13:
    dw $0000                                                             ;AA8A4A;

UNSUED_Hitboxes_Torizo_StandUp_SitDown_FacingRight_AA8A4C:
    dw $0001                                                             ;AA8A4C;
    dw $0016,$0007,$0034,$0012                                     
    dw EnemyTouch_Torizo                                                 ;AA8A56;
    dw RTL_AAC9C1                                                        ;AA8A58;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_14:
    dw $0000                                                             ;AA8A5A;

UNSUED_Hitboxes_Torizo_StandUp_SitDown_FacingRight_AA8A5C:
    dw $0001                                                             ;AA8A5C;
    dw $0018,$FFF6,$002C,$0005                                     
    dw EnemyTouch_Torizo                                                 ;AA8A66;
    dw RTL_AAC9C1                                                        ;AA8A68;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_15:
    dw $0000                                                             ;AA8A6A;

UNSUED_Hitboxes_Torizo_StandUp_SitDown_FacingRight_AA8A6C:
    dw $0001                                                             ;AA8A6C;
    dw $000F,$FFDA,$001C,$FFF1                                     
    dw EnemyTouch_Torizo                                                 ;AA8A76;
    dw RTL_AAC9C1                                                        ;AA8A78;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_16:
    dw $0001                                                             ;AA8A7A;
    dw $FFF8,$FFDB,$000F,$000E                                     
    dw EnemyTouch_Torizo                                                 ;AA8A84;
    dw EnemyShot_Torizo_Normal                                           ;AA8A86;

Hitboxes_Torizo_StandUp_SitDown_FacingRight_17:
    dw $0001                                                             ;AA8A88;
    dw $FFF7,$FFD8,$0010,$0019                                     
    dw EnemyTouch_Torizo                                                 ;AA8A92;
    dw EnemyShot_Torizo_Normal                                           ;AA8A94;


Spritemaps_Torizo_0:
    dw $0004                                                             ;AA8A96;
    %spritemapEntry(0, $0C, $F4, 0, 0, 2, 1, $1CB)
    %spritemapEntry(0, $04, $F4, 0, 0, 2, 1, $1CA)
    %spritemapEntry(1, $1F4, $F4, 0, 0, 2, 1, $1C8)
    %spritemapEntry(1, $1F4, $04, 0, 0, 2, 1, $1E8)

Spritemaps_Torizo_1:
    dw $0004                                                             ;AA8AAC;
    %spritemapEntry(0, $1F8, $04, 0, 0, 2, 1, $1DB)
    %spritemapEntry(0, $1F0, $04, 0, 0, 2, 1, $1DA)
    %spritemapEntry(1, $00, $F4, 0, 0, 2, 1, $1C6)
    %spritemapEntry(1, $1F0, $F4, 0, 0, 2, 1, $1C4)

Spritemaps_Torizo_2:
    dw $0003                                                             ;AA8AC2;
    %spritemapEntry(1, $1E8, $FC, 0, 0, 2, 1, $1C0)
    %spritemapEntry(1, $00, $F4, 0, 0, 2, 1, $1C6)
    %spritemapEntry(1, $1F0, $F4, 0, 0, 2, 1, $1C4)

Spritemaps_Torizo_3:
    dw $0003                                                             ;AA8AD3;
    %spritemapEntry(1, $1E8, $FC, 0, 0, 2, 1, $1C2)
    %spritemapEntry(1, $00, $F4, 0, 0, 2, 1, $1C6)
    %spritemapEntry(1, $1F0, $F4, 0, 0, 2, 1, $1C4)

Spritemaps_Torizo_4:
    dw $0003                                                             ;AA8AE4;
    %spritemapEntry(1, $1E8, $FC, 0, 0, 2, 1, $1E0)
    %spritemapEntry(1, $00, $F4, 0, 0, 2, 1, $1C6)
    %spritemapEntry(1, $1F0, $F4, 0, 0, 2, 1, $1C4)

Spritemaps_Torizo_5:
    dw $0008                                                             ;AA8AF5;
    %spritemapEntry(0, $1E0, $F4, 0, 0, 2, 1, $172)
    %spritemapEntry(0, $1E8, $F4, 0, 0, 2, 1, $171)
    %spritemapEntry(0, $1F0, $0C, 0, 0, 2, 1, $1F2)
    %spritemapEntry(0, $1F0, $04, 0, 0, 2, 1, $1F3)
    %spritemapEntry(0, $1F0, $FC, 0, 0, 2, 1, $1E3)
    %spritemapEntry(0, $1E8, $FC, 0, 0, 2, 1, $1E2)
    %spritemapEntry(1, $00, $F4, 0, 0, 2, 1, $1C6)
    %spritemapEntry(1, $1F0, $F4, 0, 0, 2, 1, $1C4)

Spritemaps_Torizo_6:
    dw $0013                                                             ;AA8B1F;
    %spritemapEntry(0, $1F5, $18, 0, 0, 2, 1, $14C)
    %spritemapEntry(0, $03, $18, 0, 1, 2, 1, $14C)
    %spritemapEntry(0, $1FC, $00, 0, 1, 2, 1, $15F)
    %spritemapEntry(0, $1F8, $D8, 0, 0, 2, 1, $19F)
    %spritemapEntry(0, $1F5, $28, 0, 0, 2, 1, $1DF)
    %spritemapEntry(0, $1F5, $20, 0, 0, 2, 1, $1CF)
    %spritemapEntry(0, $1F5, $10, 0, 0, 2, 1, $19E)
    %spritemapEntry(0, $1F6, $08, 0, 0, 2, 1, $1DE)
    %spritemapEntry(0, $1F7, $00, 0, 0, 2, 1, $1CE)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 1, $1E6)
    %spritemapEntry(1, $1F0, $E0, 0, 0, 2, 1, $1E4)
    %spritemapEntry(0, $00, $D8, 0, 1, 2, 1, $19F)
    %spritemapEntry(0, $03, $28, 0, 1, 2, 1, $1DF)
    %spritemapEntry(0, $03, $20, 0, 1, 2, 1, $1CF)
    %spritemapEntry(0, $03, $10, 0, 1, 2, 1, $19E)
    %spritemapEntry(0, $02, $08, 0, 1, 2, 1, $1DE)
    %spritemapEntry(0, $01, $00, 0, 1, 2, 1, $1CE)
    %spritemapEntry(1, $00, $F0, 0, 1, 2, 1, $1E6)
    %spritemapEntry(1, $00, $E0, 0, 1, 2, 1, $1E4)

Spritemaps_Torizo_7:
    dw $001B                                                             ;AA8B80;
    %spritemapEntry(0, $00, $F8, 0, 1, 2, 1, $1DC)
    %spritemapEntry(0, $00, $F0, 0, 1, 2, 1, $1CC)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 2, 1, $1DC)
    %spritemapEntry(0, $1F8, $F0, 0, 0, 2, 1, $1CC)
    %spritemapEntry(0, $03, $18, 0, 1, 2, 1, $14C)
    %spritemapEntry(0, $1F5, $18, 0, 0, 2, 1, $14C)
    %spritemapEntry(0, $1F0, $E8, 0, 0, 2, 1, $1F4)
    %spritemapEntry(0, $1F0, $E0, 0, 0, 2, 1, $1E4)
    %spritemapEntry(0, $00, $E8, 0, 1, 2, 1, $1DD)
    %spritemapEntry(0, $00, $E0, 0, 1, 2, 1, $1CD)
    %spritemapEntry(0, $1F8, $E8, 0, 0, 2, 1, $1DD)
    %spritemapEntry(0, $1F8, $E0, 0, 0, 2, 1, $1CD)
    %spritemapEntry(0, $08, $E8, 0, 1, 2, 1, $1F4)
    %spritemapEntry(0, $08, $E0, 0, 1, 2, 1, $1E4)
    %spritemapEntry(0, $1FC, $00, 0, 1, 2, 1, $15F)
    %spritemapEntry(0, $1F5, $28, 0, 0, 2, 1, $1DF)
    %spritemapEntry(0, $1F5, $20, 0, 0, 2, 1, $1CF)
    %spritemapEntry(0, $1F5, $10, 0, 0, 2, 1, $19E)
    %spritemapEntry(0, $1F6, $08, 0, 0, 2, 1, $1DE)
    %spritemapEntry(0, $1F7, $00, 0, 0, 2, 1, $1CE)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 1, $1E6)
    %spritemapEntry(0, $03, $28, 0, 1, 2, 1, $1DF)
    %spritemapEntry(0, $03, $20, 0, 1, 2, 1, $1CF)
    %spritemapEntry(0, $03, $10, 0, 1, 2, 1, $19E)
    %spritemapEntry(0, $02, $08, 0, 1, 2, 1, $1DE)
    %spritemapEntry(0, $01, $00, 0, 1, 2, 1, $1CE)
    %spritemapEntry(1, $00, $F0, 0, 1, 2, 1, $1E6)

Spritemaps_Torizo_8:
    dw $0001                                                             ;AA8C09;
    %spritemapEntry(0, $1FC, $FC, 0, 1, 2, 5, $170)

Spritemaps_Torizo_9:
    dw $0001                                                             ;AA8C10;
    %spritemapEntry(0, $1FC, $FC, 0, 1, 2, 5, $163)

Spritemaps_Torizo_A:
    dw $0001                                                             ;AA8C17;
    %spritemapEntry(0, $1FC, $FC, 0, 1, 2, 5, $167)

Spritemaps_Torizo_B:
    dw $0001                                                             ;AA8C1E;
    %spritemapEntry(0, $1FC, $FC, 0, 1, 2, 5, $16A)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemaps_Torizo_AA8C25:
    dw $0001                                                             ;AA8C25;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 5, $12E)

UNUSED_Spritemaps_Torizo_AA8C2C:
    dw $0001                                                             ;AA8C2C;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 1, $104)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemaps_Torizo_C:
    dw $001A                                                             ;AA8C33;
    %spritemapEntry(0, $1E9, $FA, 0, 0, 2, 1, $1FB)
    %spritemapEntry(0, $1E1, $FA, 0, 0, 2, 1, $1FA)
    %spritemapEntry(1, $1FC, $EE, 0, 0, 2, 1, $128)
    %spritemapEntry(1, $1F8, $FB, 0, 1, 2, 1, $108)
    %spritemapEntry(0, $1F2, $15, 0, 0, 2, 1, $162)
    %spritemapEntry(0, $1EA, $15, 0, 0, 2, 1, $161)
    %spritemapEntry(0, $1E2, $15, 0, 0, 2, 1, $160)
    %spritemapEntry(1, $1E7, $F7, 1, 1, 2, 1, $158)
    %spritemapEntry(1, $1EF, $FF, 1, 1, 2, 1, $147)
    %spritemapEntry(0, $1F9, $12, 0, 0, 2, 1, $194)
    %spritemapEntry(0, $1F1, $12, 0, 0, 2, 1, $193)
    %spritemapEntry(1, $1F1, $02, 0, 0, 2, 1, $173)
    %spritemapEntry(0, $05, $16, 0, 0, 2, 1, $1EF)
    %spritemapEntry(0, $0D, $16, 0, 0, 2, 1, $1FC)
    %spritemapEntry(0, $0D, $0E, 0, 0, 2, 1, $1FF)
    %spritemapEntry(1, $1FD, $06, 0, 0, 2, 1, $1ED)
    %spritemapEntry(0, $07, $E3, 0, 0, 2, 1, $1CB)
    %spritemapEntry(0, $1FF, $E3, 0, 0, 2, 1, $1CA)
    %spritemapEntry(1, $1EF, $E3, 0, 0, 2, 1, $1C8)
    %spritemapEntry(1, $1EF, $F3, 0, 0, 2, 1, $1E8)
    %spritemapEntry(1, $08, $06, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $08, $F6, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $08, $E6, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1F8, $E6, 0, 0, 2, 1, $100)

Spritemaps_Torizo_D:
    dw $001A                                                             ;AA8CB7;
    %spritemapEntry(1, $1FD, $F9, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $1FD, $EC, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1E3, $03, 0, 1, 2, 1, $18F)
    %spritemapEntry(0, $1EB, $03, 0, 1, 2, 1, $18E)
    %spritemapEntry(0, $1EF, $04, 0, 1, 2, 1, $14F)
    %spritemapEntry(0, $1F7, $04, 0, 1, 2, 1, $14E)
    %spritemapEntry(0, $1FF, $04, 0, 1, 2, 1, $14D)
    %spritemapEntry(0, $1FB, $10, 0, 0, 2, 1, $196)
    %spritemapEntry(0, $1F3, $10, 0, 0, 2, 1, $195)
    %spritemapEntry(1, $1F3, $00, 0, 0, 2, 1, $175)
    %spritemapEntry(0, $02, $01, 1, 0, 2, 1, $1AE)
    %spritemapEntry(0, $1FA, $01, 1, 0, 2, 1, $1AD)
    %spritemapEntry(1, $1FA, $09, 1, 0, 2, 1, $1A6)
    %spritemapEntry(0, $1FB, $15, 0, 0, 2, 1, $162)
    %spritemapEntry(0, $1F3, $15, 0, 0, 2, 1, $161)
    %spritemapEntry(0, $1EB, $15, 0, 0, 2, 1, $160)
    %spritemapEntry(0, $06, $E4, 0, 0, 2, 1, $1CB)
    %spritemapEntry(0, $1FE, $E4, 0, 0, 2, 1, $1CA)
    %spritemapEntry(1, $1EE, $E4, 0, 0, 2, 1, $1C8)
    %spritemapEntry(1, $1EE, $F4, 0, 0, 2, 1, $1E8)
    %spritemapEntry(1, $07, $07, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1F7, $07, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $07, $F7, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1F7, $F7, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $07, $E7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1F7, $E7, 0, 0, 2, 1, $100)

Spritemaps_Torizo_E:
    dw $001B                                                             ;AA8D3B;
    %spritemapEntry(1, $1E7, $0D, 0, 1, 2, 1, $16C)
    %spritemapEntry(1, $1FA, $F4, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $1FA, $E7, 0, 0, 2, 1, $126)
    %spritemapEntry(1, $1EE, $07, 0, 1, 2, 1, $158)
    %spritemapEntry(1, $1F5, $FF, 0, 1, 2, 1, $147)
    %spritemapEntry(0, $1FB, $16, 0, 0, 2, 1, $198)
    %spritemapEntry(0, $1F3, $16, 0, 0, 2, 1, $197)
    %spritemapEntry(1, $1F3, $06, 0, 0, 2, 1, $177)
    %spritemapEntry(0, $01, $1B, 0, 0, 2, 1, $162)
    %spritemapEntry(0, $1F9, $1B, 0, 0, 2, 1, $161)
    %spritemapEntry(0, $1F1, $1B, 0, 0, 2, 1, $160)
    %spritemapEntry(0, $07, $0B, 1, 0, 2, 1, $1EC)
    %spritemapEntry(0, $1FF, $0B, 1, 0, 2, 1, $1EB)
    %spritemapEntry(0, $1F7, $0B, 1, 0, 2, 1, $1EA)
    %spritemapEntry(0, $07, $03, 0, 0, 2, 1, $1EC)
    %spritemapEntry(0, $1FF, $03, 0, 0, 2, 1, $1EB)
    %spritemapEntry(0, $1F7, $03, 0, 0, 2, 1, $1EA)
    %spritemapEntry(0, $06, $DE, 0, 0, 2, 1, $1CB)
    %spritemapEntry(0, $1FE, $DE, 0, 0, 2, 1, $1CA)
    %spritemapEntry(1, $1EE, $DE, 0, 0, 2, 1, $1C8)
    %spritemapEntry(1, $1EE, $EE, 0, 0, 2, 1, $1E8)
    %spritemapEntry(1, $07, $01, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1F7, $01, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $07, $F1, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1F7, $F1, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $07, $E1, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1F7, $E1, 0, 0, 2, 1, $100)

Spritemaps_Torizo_E_miscount:
    dw $0019                                                             ;AA8DC4;
    %spritemapEntry(1, $1FB, $F1, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $1FB, $E4, 0, 0, 2, 1, $126)
    %spritemapEntry(1, $1E6, $0A, 0, 1, 2, 1, $16C)
    %spritemapEntry(1, $1ED, $05, 0, 1, 2, 1, $158)
    %spritemapEntry(1, $1F4, $FD, 0, 1, 2, 1, $147)
    %spritemapEntry(1, $02, $FB, 0, 0, 2, 1, $1A9)
    %spritemapEntry(0, $02, $0B, 0, 0, 2, 1, $1BB)
    %spritemapEntry(0, $1FA, $0B, 0, 0, 2, 1, $1AF)
    %spritemapEntry(1, $1FA, $FB, 0, 0, 2, 1, $1A8)
    %spritemapEntry(0, $06, $D9, 0, 0, 2, 1, $1CB)
    %spritemapEntry(0, $1FE, $D9, 0, 0, 2, 1, $1CA)
    %spritemapEntry(1, $1EE, $D9, 0, 0, 2, 1, $1C8)
    %spritemapEntry(1, $1EE, $E9, 0, 0, 2, 1, $1E8)
    %spritemapEntry(1, $07, $FC, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1F7, $FC, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $07, $EC, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1F7, $EC, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $07, $DC, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1F7, $DC, 0, 0, 2, 1, $100)
    %spritemapEntry(0, $01, $1B, 0, 0, 2, 1, $198)
    %spritemapEntry(0, $1F9, $1B, 0, 0, 2, 1, $197)
    %spritemapEntry(1, $1F9, $0B, 0, 0, 2, 1, $177)
    %spritemapEntry(0, $08, $21, 0, 0, 2, 1, $162)
    %spritemapEntry(0, $00, $21, 0, 0, 2, 1, $161)
    %spritemapEntry(0, $1F8, $21, 0, 0, 2, 1, $160)

Spritemaps_Torizo_F:
    dw $0019                                                             ;AA8E43;
    %spritemapEntry(0, $1FD, $D3, 0, 0, 2, 1, $1CB)
    %spritemapEntry(0, $1F5, $D3, 0, 0, 2, 1, $1CA)
    %spritemapEntry(1, $1E5, $E3, 0, 0, 2, 1, $1E8)
    %spritemapEntry(1, $1E5, $D3, 0, 0, 2, 1, $1C8)
    %spritemapEntry(0, $01, $0F, 0, 0, 2, 1, $1AC)
    %spritemapEntry(0, $1F9, $0F, 0, 0, 2, 1, $1AB)
    %spritemapEntry(1, $1F9, $FF, 0, 0, 2, 1, $1A4)
    %spritemapEntry(0, $03, $28, 0, 0, 2, 1, $162)
    %spritemapEntry(0, $1FB, $28, 0, 0, 2, 1, $161)
    %spritemapEntry(0, $1F3, $28, 0, 0, 2, 1, $160)
    %spritemapEntry(0, $02, $21, 0, 0, 2, 1, $196)
    %spritemapEntry(0, $1FA, $21, 0, 0, 2, 1, $195)
    %spritemapEntry(1, $1FA, $11, 0, 0, 2, 1, $175)
    %spritemapEntry(0, $1FB, $0E, 0, 0, 2, 2, $1AE)
    %spritemapEntry(0, $1F3, $0E, 0, 0, 2, 2, $1AD)
    %spritemapEntry(1, $1F3, $FE, 0, 0, 2, 2, $1A6)
    %spritemapEntry(1, $1FD, $15, 0, 0, 2, 2, $18A)
    %spritemapEntry(1, $1F5, $0D, 0, 0, 2, 2, $179)
    %spritemapEntry(1, $1FF, $1F, 0, 0, 2, 2, $1A2)
    %spritemapEntry(1, $1FE, $F7, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1EE, $F7, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1FE, $E7, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1EE, $E7, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $1FE, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $D7, 0, 0, 2, 1, $100)

Spritemaps_Torizo_10:
    dw $001A                                                             ;AA8EC2;
    %spritemapEntry(0, $1FD, $D4, 0, 0, 2, 1, $1CB)
    %spritemapEntry(0, $1F5, $D4, 0, 0, 2, 1, $1CA)
    %spritemapEntry(1, $1E5, $E4, 0, 0, 2, 1, $1E8)
    %spritemapEntry(1, $1E5, $D4, 0, 0, 2, 1, $1C8)
    %spritemapEntry(0, $1FC, $0E, 0, 1, 2, 1, $1AE)
    %spritemapEntry(0, $04, $0E, 0, 1, 2, 1, $1AD)
    %spritemapEntry(1, $1FC, $FE, 0, 1, 2, 1, $1A6)
    %spritemapEntry(0, $13, $28, 0, 0, 2, 1, $162)
    %spritemapEntry(0, $0B, $28, 0, 0, 2, 1, $161)
    %spritemapEntry(0, $03, $28, 0, 0, 2, 1, $160)
    %spritemapEntry(0, $0D, $22, 0, 0, 2, 1, $198)
    %spritemapEntry(0, $05, $22, 0, 0, 2, 1, $197)
    %spritemapEntry(1, $05, $12, 0, 0, 2, 1, $177)
    %spritemapEntry(1, $1F6, $FC, 0, 0, 2, 2, $1A9)
    %spritemapEntry(0, $1F6, $0C, 0, 0, 2, 2, $1BB)
    %spritemapEntry(0, $1EE, $0C, 0, 0, 2, 2, $1AF)
    %spritemapEntry(1, $1EE, $FC, 0, 0, 2, 2, $1A8)
    %spritemapEntry(1, $1F2, $1F, 0, 0, 2, 2, $1A2)
    %spritemapEntry(0, $1EF, $1F, 0, 0, 2, 2, $197)
    %spritemapEntry(1, $1EF, $0F, 0, 0, 2, 2, $177)
    %spritemapEntry(1, $1FE, $F8, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1EE, $F8, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1FE, $E8, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1EE, $E8, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $1FE, $D8, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $D8, 0, 0, 2, 1, $100)

Spritemaps_Torizo_12:
    dw $001C                                                             ;AA8F46;
    %spritemapEntry(0, $1FD, $D5, 0, 0, 2, 1, $1CB)
    %spritemapEntry(0, $1F5, $D5, 0, 0, 2, 1, $1CA)
    %spritemapEntry(1, $1E5, $E5, 0, 0, 2, 1, $1E8)
    %spritemapEntry(1, $1E5, $D5, 0, 0, 2, 1, $1C8)
    %spritemapEntry(0, $1A, $28, 0, 0, 2, 1, $162)
    %spritemapEntry(0, $12, $28, 0, 0, 2, 1, $161)
    %spritemapEntry(0, $0A, $28, 0, 0, 2, 1, $160)
    %spritemapEntry(0, $1FD, $10, 0, 1, 2, 1, $1AE)
    %spritemapEntry(0, $05, $10, 0, 1, 2, 1, $1AD)
    %spritemapEntry(1, $1FD, $00, 0, 1, 2, 1, $1A6)
    %spritemapEntry(1, $0F, $1C, 0, 0, 2, 1, $18A)
    %spritemapEntry(1, $07, $14, 0, 0, 2, 1, $179)
    %spritemapEntry(0, $1EB, $28, 0, 0, 2, 2, $162)
    %spritemapEntry(0, $1E3, $28, 0, 0, 2, 2, $161)
    %spritemapEntry(0, $1DB, $28, 0, 0, 2, 2, $160)
    %spritemapEntry(1, $1F7, $FE, 0, 0, 2, 2, $1A9)
    %spritemapEntry(0, $1F7, $0E, 0, 0, 2, 2, $1BB)
    %spritemapEntry(0, $1EF, $0E, 0, 0, 2, 2, $1AF)
    %spritemapEntry(1, $1EF, $FE, 0, 0, 2, 2, $1A8)
    %spritemapEntry(0, $1EF, $22, 0, 0, 2, 2, $194)
    %spritemapEntry(0, $1E7, $22, 0, 0, 2, 2, $193)
    %spritemapEntry(1, $1E7, $12, 0, 0, 2, 2, $173)
    %spritemapEntry(1, $1FE, $F9, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1EE, $F9, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1FE, $E9, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1EE, $E9, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $1FE, $D9, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $D9, 0, 0, 2, 1, $100)

Spritemaps_Torizo_13:
    dw $0016                                                             ;AA8FD4;
    %spritemapEntry(0, $1EB, $28, 0, 0, 2, 1, $162)
    %spritemapEntry(0, $1E3, $28, 0, 0, 2, 1, $161)
    %spritemapEntry(0, $1DB, $28, 0, 0, 2, 1, $160)
    %spritemapEntry(1, $1F7, $FE, 0, 0, 2, 1, $1A9)
    %spritemapEntry(0, $1F7, $0E, 0, 0, 2, 1, $1BB)
    %spritemapEntry(0, $1EF, $0E, 0, 0, 2, 1, $1AF)
    %spritemapEntry(1, $1EF, $FE, 0, 0, 2, 1, $1A8)
    %spritemapEntry(0, $1EF, $22, 0, 0, 2, 1, $194)
    %spritemapEntry(0, $1E7, $22, 0, 0, 2, 1, $193)
    %spritemapEntry(1, $1E7, $12, 0, 0, 2, 1, $173)
    %spritemapEntry(0, $1FC, $0D, 0, 1, 2, 2, $1AE)
    %spritemapEntry(0, $04, $0D, 0, 1, 2, 2, $1AD)
    %spritemapEntry(1, $1FC, $FD, 0, 1, 2, 2, $1A6)
    %spritemapEntry(1, $0D, $16, 0, 0, 2, 2, $18A)
    %spritemapEntry(1, $05, $0E, 0, 0, 2, 2, $179)
    %spritemapEntry(1, $13, $1F, 0, 0, 2, 2, $1A0)
    %spritemapEntry(1, $1FE, $F9, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1EE, $F9, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1FE, $E9, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1EE, $E9, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $1FE, $D9, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $D9, 0, 0, 2, 1, $100)

Spritemaps_Torizo_14:
    dw $0015                                                             ;AA9044;
    %spritemapEntry(0, $1FB, $0F, 0, 0, 2, 1, $1AE)
    %spritemapEntry(0, $1F3, $0F, 0, 0, 2, 1, $1AD)
    %spritemapEntry(1, $1F3, $FF, 0, 0, 2, 1, $1A6)
    %spritemapEntry(0, $1F0, $28, 0, 0, 2, 1, $162)
    %spritemapEntry(0, $1E8, $28, 0, 0, 2, 1, $161)
    %spritemapEntry(0, $1E0, $28, 0, 0, 2, 1, $160)
    %spritemapEntry(0, $1F4, $23, 0, 0, 2, 1, $194)
    %spritemapEntry(0, $1EC, $23, 0, 0, 2, 1, $193)
    %spritemapEntry(1, $1EC, $13, 0, 0, 2, 1, $173)
    %spritemapEntry(1, $09, $1E, 0, 0, 2, 2, $1A0)
    %spritemapEntry(0, $1FF, $10, 0, 0, 2, 2, $1AC)
    %spritemapEntry(0, $1F7, $10, 0, 0, 2, 2, $1AB)
    %spritemapEntry(1, $1F7, $00, 0, 0, 2, 2, $1A4)
    %spritemapEntry(1, $05, $18, 0, 0, 2, 2, $18A)
    %spritemapEntry(1, $1FD, $10, 0, 0, 2, 2, $179)
    %spritemapEntry(1, $1FE, $F8, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1EE, $F8, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1FE, $E8, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1EE, $E8, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $1FE, $D8, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $D8, 0, 0, 2, 1, $100)

Spritemaps_Torizo_15:
    dw $0015                                                             ;AA90AF;
    %spritemapEntry(0, $01, $0F, 0, 0, 2, 1, $1AC)
    %spritemapEntry(0, $1F9, $0F, 0, 0, 2, 1, $1AB)
    %spritemapEntry(1, $1F9, $FF, 0, 0, 2, 1, $1A4)
    %spritemapEntry(0, $03, $28, 0, 0, 2, 1, $162)
    %spritemapEntry(0, $1FB, $28, 0, 0, 2, 1, $161)
    %spritemapEntry(0, $1F3, $28, 0, 0, 2, 1, $160)
    %spritemapEntry(0, $02, $21, 0, 0, 2, 1, $196)
    %spritemapEntry(0, $1FA, $21, 0, 0, 2, 1, $195)
    %spritemapEntry(1, $1FA, $11, 0, 0, 2, 1, $175)
    %spritemapEntry(0, $1FB, $0E, 0, 0, 2, 2, $1AE)
    %spritemapEntry(0, $1F3, $0E, 0, 0, 2, 2, $1AD)
    %spritemapEntry(1, $1F3, $FE, 0, 0, 2, 2, $1A6)
    %spritemapEntry(1, $1FD, $15, 0, 0, 2, 2, $18A)
    %spritemapEntry(1, $1F5, $0D, 0, 0, 2, 2, $179)
    %spritemapEntry(1, $1FF, $1F, 0, 0, 2, 2, $1A2)
    %spritemapEntry(1, $1FE, $F7, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1EE, $F7, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1FE, $E7, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1EE, $E7, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $1FE, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $D7, 0, 0, 2, 1, $100)

Spritemaps_Torizo_16:
    dw $0016                                                             ;AA911A;
    %spritemapEntry(0, $1FC, $0E, 0, 1, 2, 1, $1AE)
    %spritemapEntry(0, $04, $0E, 0, 1, 2, 1, $1AD)
    %spritemapEntry(1, $1FC, $FE, 0, 1, 2, 1, $1A6)
    %spritemapEntry(0, $13, $28, 0, 0, 2, 1, $162)
    %spritemapEntry(0, $0B, $28, 0, 0, 2, 1, $161)
    %spritemapEntry(0, $03, $28, 0, 0, 2, 1, $160)
    %spritemapEntry(0, $0D, $22, 0, 0, 2, 1, $198)
    %spritemapEntry(0, $05, $22, 0, 0, 2, 1, $197)
    %spritemapEntry(1, $05, $12, 0, 0, 2, 1, $177)
    %spritemapEntry(1, $1F6, $FC, 0, 0, 2, 2, $1A9)
    %spritemapEntry(0, $1F6, $0C, 0, 0, 2, 2, $1BB)
    %spritemapEntry(0, $1EE, $0C, 0, 0, 2, 2, $1AF)
    %spritemapEntry(1, $1EE, $FC, 0, 0, 2, 2, $1A8)
    %spritemapEntry(1, $1F2, $1F, 0, 0, 2, 2, $1A2)
    %spritemapEntry(0, $1EF, $1F, 0, 0, 2, 2, $197)
    %spritemapEntry(1, $1EF, $0F, 0, 0, 2, 2, $177)
    %spritemapEntry(1, $1FE, $F8, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1EE, $F8, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1FE, $E8, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1EE, $E8, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $1FE, $D8, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $D8, 0, 0, 2, 1, $100)

Spritemaps_Torizo_17:
    dw $0016                                                             ;AA918A;
    %spritemapEntry(0, $1FC, $0E, 0, 1, 2, 1, $1AE)
    %spritemapEntry(0, $04, $0E, 0, 1, 2, 1, $1AD)
    %spritemapEntry(1, $1FC, $FE, 0, 1, 2, 1, $1A6)
    %spritemapEntry(1, $0D, $17, 0, 0, 2, 1, $18A)
    %spritemapEntry(1, $05, $0F, 0, 0, 2, 1, $179)
    %spritemapEntry(1, $13, $20, 0, 0, 2, 1, $1A0)
    %spritemapEntry(0, $1EB, $28, 0, 0, 2, 2, $162)
    %spritemapEntry(0, $1E3, $28, 0, 0, 2, 2, $161)
    %spritemapEntry(0, $1DB, $28, 0, 0, 2, 2, $160)
    %spritemapEntry(1, $1F7, $FE, 0, 0, 2, 2, $1A9)
    %spritemapEntry(0, $1F7, $0E, 0, 0, 2, 2, $1BB)
    %spritemapEntry(0, $1EF, $0E, 0, 0, 2, 2, $1AF)
    %spritemapEntry(1, $1EF, $FE, 0, 0, 2, 2, $1A8)
    %spritemapEntry(0, $1EF, $22, 0, 0, 2, 2, $194)
    %spritemapEntry(0, $1E7, $22, 0, 0, 2, 2, $193)
    %spritemapEntry(1, $1E7, $12, 0, 0, 2, 2, $173)
    %spritemapEntry(1, $1FE, $F9, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1EE, $F9, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1FE, $E9, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1EE, $E9, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $1FE, $D9, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $D9, 0, 0, 2, 1, $100)

Spritemaps_Torizo_18:
    dw $0015                                                             ;AA91FA;
    %spritemapEntry(1, $0A, $1D, 0, 0, 2, 1, $1A0)
    %spritemapEntry(0, $00, $0F, 0, 0, 2, 1, $1AC)
    %spritemapEntry(0, $1F8, $0F, 0, 0, 2, 1, $1AB)
    %spritemapEntry(1, $1F8, $FF, 0, 0, 2, 1, $1A4)
    %spritemapEntry(1, $06, $17, 0, 0, 2, 1, $18A)
    %spritemapEntry(1, $1FE, $0F, 0, 0, 2, 1, $179)
    %spritemapEntry(0, $1FD, $0F, 0, 0, 2, 2, $1AE)
    %spritemapEntry(0, $1F5, $0F, 0, 0, 2, 2, $1AD)
    %spritemapEntry(1, $1F5, $FF, 0, 0, 2, 2, $1A6)
    %spritemapEntry(0, $1F2, $28, 0, 0, 2, 2, $162)
    %spritemapEntry(0, $1EA, $28, 0, 0, 2, 2, $161)
    %spritemapEntry(0, $1E2, $28, 0, 0, 2, 2, $160)
    %spritemapEntry(0, $1F6, $23, 0, 0, 2, 2, $194)
    %spritemapEntry(0, $1EE, $23, 0, 0, 2, 2, $193)
    %spritemapEntry(1, $1EE, $13, 0, 0, 2, 2, $173)
    %spritemapEntry(1, $1FE, $F8, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1EE, $F8, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1FE, $E8, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1EE, $E8, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $1FE, $D8, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $D8, 0, 0, 2, 1, $100)

Spritemaps_Torizo_19:
    dw $0015                                                             ;AA9265;
    %spritemapEntry(0, $1FB, $0E, 0, 0, 2, 1, $1AE)
    %spritemapEntry(0, $1F3, $0E, 0, 0, 2, 1, $1AD)
    %spritemapEntry(1, $1F3, $FE, 0, 0, 2, 1, $1A6)
    %spritemapEntry(1, $1FD, $15, 0, 0, 2, 1, $18A)
    %spritemapEntry(1, $1F5, $0D, 0, 0, 2, 1, $179)
    %spritemapEntry(1, $1FF, $1F, 0, 0, 2, 1, $1A2)
    %spritemapEntry(0, $01, $0F, 0, 0, 2, 2, $1AC)
    %spritemapEntry(0, $1F9, $0F, 0, 0, 2, 2, $1AB)
    %spritemapEntry(1, $1F9, $FF, 0, 0, 2, 2, $1A4)
    %spritemapEntry(0, $03, $28, 0, 0, 2, 2, $162)
    %spritemapEntry(0, $1FB, $28, 0, 0, 2, 2, $161)
    %spritemapEntry(0, $1F3, $28, 0, 0, 2, 2, $160)
    %spritemapEntry(0, $02, $21, 0, 0, 2, 2, $196)
    %spritemapEntry(0, $1FA, $21, 0, 0, 2, 2, $195)
    %spritemapEntry(1, $1FA, $11, 0, 0, 2, 2, $175)
    %spritemapEntry(1, $1FE, $F7, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1EE, $F7, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1FE, $E7, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1EE, $E7, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $1FE, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $D7, 0, 0, 2, 1, $100)

Spritemaps_Torizo_1A:
    dw $0016                                                             ;AA92D0;
    %spritemapEntry(1, $1F7, $FC, 0, 0, 2, 1, $1A9)
    %spritemapEntry(0, $1F7, $0C, 0, 0, 2, 1, $1BB)
    %spritemapEntry(0, $1EF, $0C, 0, 0, 2, 1, $1AF)
    %spritemapEntry(1, $1EF, $FC, 0, 0, 2, 1, $1A8)
    %spritemapEntry(1, $1F3, $1F, 0, 0, 2, 1, $1A2)
    %spritemapEntry(0, $1F0, $1F, 0, 0, 2, 1, $197)
    %spritemapEntry(1, $1F0, $0F, 0, 0, 2, 1, $177)
    %spritemapEntry(0, $1FE, $0E, 0, 1, 2, 2, $1AE)
    %spritemapEntry(0, $06, $0E, 0, 1, 2, 2, $1AD)
    %spritemapEntry(1, $1FE, $FE, 0, 1, 2, 2, $1A6)
    %spritemapEntry(0, $15, $28, 0, 0, 2, 2, $162)
    %spritemapEntry(0, $0D, $28, 0, 0, 2, 2, $161)
    %spritemapEntry(0, $05, $28, 0, 0, 2, 2, $160)
    %spritemapEntry(0, $0F, $22, 0, 0, 2, 2, $198)
    %spritemapEntry(0, $07, $22, 0, 0, 2, 2, $197)
    %spritemapEntry(1, $07, $12, 0, 0, 2, 2, $177)
    %spritemapEntry(1, $1FE, $F8, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1EE, $F8, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1FE, $E8, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1EE, $E8, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $1FE, $D8, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $D8, 0, 0, 2, 1, $100)

Spritemaps_Torizo_1B:
    dw $0007                                                             ;AA9340;
    %spritemapEntry(0, $10, $25, 0, 1, 2, 1, $17B)
    %spritemapEntry(0, $10, $1D, 0, 1, 2, 1, $16B)
    %spritemapEntry(1, $05, $FB, 0, 0, 2, 1, $10C)
    %spritemapEntry(0, $10, $16, 0, 0, 2, 1, $164)
    %spritemapEntry(0, $10, $0E, 0, 0, 2, 1, $154)
    %spritemapEntry(0, $10, $06, 0, 0, 2, 1, $144)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 1, $12A)

Spritemaps_Torizo_1C:
    dw $0005                                                             ;AA9365;
    %spritemapEntry(1, $1FA, $23, 0, 0, 2, 1, $16C)
    %spritemapEntry(1, $01, $02, 0, 0, 2, 1, $10A)
    %spritemapEntry(0, $02, $1F, 0, 1, 2, 1, $166)
    %spritemapEntry(1, $02, $0F, 0, 1, 2, 1, $145)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 1, $124)

Spritemaps_Torizo_1D:
    dw $0005                                                             ;AA9380;
    %spritemapEntry(1, $1F0, $28, 0, 0, 2, 1, $16C)
    %spritemapEntry(0, $1F9, $24, 0, 1, 2, 1, $166)
    %spritemapEntry(1, $1F9, $14, 0, 1, 2, 1, $145)
    %spritemapEntry(1, $1FC, $05, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 1, $128)

Spritemaps_Torizo_1E:
    dw $0005                                                             ;AA939B;
    %spritemapEntry(1, $1E7, $24, 0, 0, 2, 1, $16C)
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $1EC, $1B, 0, 1, 2, 1, $158)
    %spritemapEntry(1, $1F4, $13, 0, 1, 2, 1, $147)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 1, $126)

Spritemaps_Torizo_1F:
    dw $0005                                                             ;AA93B6;
    %spritemapEntry(1, $1DE, $19, 0, 0, 2, 1, $16C)
    %spritemapEntry(1, $1F4, $05, 0, 1, 2, 1, $108)
    %spritemapEntry(0, $1E4, $16, 0, 1, 2, 1, $15C)
    %spritemapEntry(1, $1EC, $0E, 0, 1, 2, 1, $14A)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 1, $128)

Spritemaps_Torizo_20:
    dw $0007                                                             ;AA93D1;
    %spritemapEntry(1, $1EF, $02, 0, 1, 2, 1, $10A)
    %spritemapEntry(0, $1CE, $0B, 0, 1, 2, 1, $18F)
    %spritemapEntry(0, $1D6, $0B, 0, 1, 2, 1, $18E)
    %spritemapEntry(0, $1DA, $0B, 0, 1, 2, 1, $14F)
    %spritemapEntry(0, $1E2, $0B, 0, 1, 2, 1, $14E)
    %spritemapEntry(0, $1EA, $0B, 0, 1, 2, 1, $14D)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 1, $124)

Spritemaps_Torizo_21:
    dw $0005                                                             ;AA93F6;
    %spritemapEntry(1, $1D4, $F6, 1, 1, 2, 1, $16E)
    %spritemapEntry(1, $1EF, $02, 0, 1, 2, 1, $10A)
    %spritemapEntry(1, $1DB, $FA, 1, 1, 2, 1, $158)
    %spritemapEntry(1, $1E3, $02, 1, 1, 2, 1, $147)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 1, $124)

Spritemaps_Torizo_22:
    dw $0007                                                             ;AA9411;
    %spritemapEntry(0, $1E6, $DD, 1, 0, 2, 1, $17B)
    %spritemapEntry(0, $1E6, $E5, 1, 0, 2, 1, $16B)
    %spritemapEntry(1, $1EA, $F8, 0, 1, 2, 1, $10E)
    %spritemapEntry(0, $1E6, $EB, 1, 1, 2, 1, $164)
    %spritemapEntry(0, $1E6, $F3, 1, 1, 2, 1, $154)
    %spritemapEntry(0, $1E6, $FB, 1, 1, 2, 1, $144)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 1, $12A)

Spritemaps_Torizo_23:
    dw $0007                                                             ;AA9436;
    %spritemapEntry(0, $0F, $25, 0, 1, 2, 2, $17B)
    %spritemapEntry(0, $0F, $1D, 0, 1, 2, 2, $16B)
    %spritemapEntry(1, $05, $FB, 0, 0, 2, 2, $10C)
    %spritemapEntry(0, $10, $16, 0, 0, 2, 2, $164)
    %spritemapEntry(0, $10, $0E, 0, 0, 2, 2, $154)
    %spritemapEntry(0, $10, $06, 0, 0, 2, 2, $144)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 2, $12A)

Spritemaps_Torizo_24:
    dw $0005                                                             ;AA945B;
    %spritemapEntry(1, $1FA, $23, 0, 0, 2, 2, $16C)
    %spritemapEntry(1, $01, $02, 0, 0, 2, 2, $10A)
    %spritemapEntry(0, $02, $1F, 0, 1, 2, 2, $166)
    %spritemapEntry(1, $02, $0F, 0, 1, 2, 2, $145)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 2, $124)

Spritemaps_Torizo_25:
    dw $0005                                                             ;AA9476;
    %spritemapEntry(1, $1F0, $28, 0, 0, 2, 2, $16C)
    %spritemapEntry(0, $1F9, $24, 0, 1, 2, 2, $166)
    %spritemapEntry(1, $1F9, $14, 0, 1, 2, 2, $145)
    %spritemapEntry(1, $1FC, $05, 0, 0, 2, 2, $108)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 2, $128)

Spritemaps_Torizo_26:
    dw $0005                                                             ;AA9491;
    %spritemapEntry(1, $1E6, $23, 0, 0, 2, 2, $16C)
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 2, $106)
    %spritemapEntry(1, $1EC, $1B, 0, 1, 2, 2, $158)
    %spritemapEntry(1, $1F4, $13, 0, 1, 2, 2, $147)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 2, $126)

Spritemaps_Torizo_27:
    dw $0005                                                             ;AA94AC;
    %spritemapEntry(1, $1DC, $19, 0, 0, 2, 2, $16C)
    %spritemapEntry(1, $1F4, $05, 0, 1, 2, 2, $108)
    %spritemapEntry(0, $1E4, $16, 0, 1, 2, 2, $15C)
    %spritemapEntry(1, $1EC, $0E, 0, 1, 2, 2, $14A)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 2, $128)

Spritemaps_Torizo_28:
    dw $0007                                                             ;AA94C7;
    %spritemapEntry(1, $1EF, $02, 0, 1, 2, 2, $10A)
    %spritemapEntry(0, $1CB, $0B, 0, 1, 2, 2, $18F)
    %spritemapEntry(0, $1D3, $0B, 0, 1, 2, 2, $18E)
    %spritemapEntry(0, $1DA, $0B, 0, 1, 2, 2, $14F)
    %spritemapEntry(0, $1E2, $0B, 0, 1, 2, 2, $14E)
    %spritemapEntry(0, $1EA, $0B, 0, 1, 2, 2, $14D)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 2, $124)

Spritemaps_Torizo_29:
    dw $0005                                                             ;AA94EC;
    %spritemapEntry(1, $1D3, $F4, 1, 1, 2, 2, $16E)
    %spritemapEntry(1, $1EF, $02, 0, 1, 2, 2, $10A)
    %spritemapEntry(1, $1DB, $FA, 1, 1, 2, 2, $158)
    %spritemapEntry(1, $1E3, $02, 1, 1, 2, 2, $147)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 2, $124)

Spritemaps_Torizo_2A:
    dw $0007                                                             ;AA9507;
    %spritemapEntry(0, $1E6, $DD, 1, 0, 2, 2, $17B)
    %spritemapEntry(0, $1E6, $E5, 1, 0, 2, 2, $16B)
    %spritemapEntry(1, $1EA, $F8, 0, 1, 2, 2, $10E)
    %spritemapEntry(0, $1E6, $EB, 1, 1, 2, 2, $164)
    %spritemapEntry(0, $1E6, $F3, 1, 1, 2, 2, $154)
    %spritemapEntry(0, $1E6, $FB, 1, 1, 2, 2, $144)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 2, $12A)

Spritemaps_Torizo_2B:
    dw $0018                                                             ;AA952C;
    %spritemapEntry(1, $1EE, $F3, 0, 0, 2, 1, $130)
    %spritemapEntry(1, $1F9, $FD, 0, 0, 2, 1, $1A9)
    %spritemapEntry(0, $1F9, $0D, 0, 0, 2, 1, $1BB)
    %spritemapEntry(0, $1F1, $0D, 0, 0, 2, 1, $1AF)
    %spritemapEntry(1, $1F1, $FD, 0, 0, 2, 1, $1A8)
    %spritemapEntry(1, $1FA, $15, 0, 0, 2, 1, $18A)
    %spritemapEntry(1, $1F2, $0D, 0, 0, 2, 1, $179)
    %spritemapEntry(0, $05, $20, 0, 0, 2, 1, $162)
    %spritemapEntry(0, $1FD, $20, 0, 0, 2, 1, $161)
    %spritemapEntry(0, $1F5, $20, 0, 0, 2, 1, $160)
    %spritemapEntry(1, $1F5, $FD, 0, 0, 2, 2, $1A9)
    %spritemapEntry(0, $1F5, $0D, 0, 0, 2, 2, $1BB)
    %spritemapEntry(0, $1ED, $0D, 0, 0, 2, 2, $1AF)
    %spritemapEntry(1, $1ED, $FD, 0, 0, 2, 2, $1A8)
    %spritemapEntry(1, $1F6, $15, 0, 0, 2, 2, $18A)
    %spritemapEntry(1, $1EE, $0D, 0, 0, 2, 2, $179)
    %spritemapEntry(0, $01, $20, 0, 0, 2, 2, $162)
    %spritemapEntry(0, $1F9, $20, 0, 0, 2, 2, $161)
    %spritemapEntry(0, $1F1, $20, 0, 0, 2, 2, $160)
    %spritemapEntry(1, $1EE, $E3, 0, 0, 2, 1, $110)
    %spritemapEntry(1, $1FE, $FB, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1FE, $EB, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1FE, $DB, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $DB, 0, 0, 2, 1, $100)

Spritemaps_Torizo_2C:
    dw $0013                                                             ;AA95A6;
    %spritemapEntry(1, $1EE, $F2, 0, 0, 2, 1, $130)
    %spritemapEntry(0, $1FC, $0F, 0, 0, 2, 1, $1AE)
    %spritemapEntry(0, $1F4, $0F, 0, 0, 2, 1, $1AD)
    %spritemapEntry(1, $1F4, $FF, 0, 0, 2, 1, $1A6)
    %spritemapEntry(1, $02, $22, 0, 0, 2, 1, $1A0)
    %spritemapEntry(1, $1FD, $19, 0, 0, 2, 1, $18A)
    %spritemapEntry(1, $1F5, $11, 0, 0, 2, 1, $179)
    %spritemapEntry(1, $1EE, $FA, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1EE, $E2, 0, 0, 2, 1, $110)
    %spritemapEntry(1, $1FE, $FA, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1FE, $EA, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1FE, $DA, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $DA, 0, 0, 2, 1, $100)
    %spritemapEntry(0, $1F8, $10, 0, 1, 2, 2, $1AC)
    %spritemapEntry(0, $00, $10, 0, 1, 2, 2, $1AB)
    %spritemapEntry(1, $1F8, $00, 0, 1, 2, 2, $1A4)
    %spritemapEntry(1, $09, $24, 0, 0, 2, 2, $1A0)
    %spritemapEntry(1, $04, $1B, 0, 0, 2, 2, $18A)
    %spritemapEntry(1, $1FC, $13, 0, 0, 2, 2, $179)

Spritemaps_Torizo_2D:
    dw $0015                                                             ;AA9607;
    %spritemapEntry(1, $1EE, $F2, 0, 0, 2, 1, $130)
    %spritemapEntry(1, $03, $27, 0, 0, 2, 1, $1A2)
    %spritemapEntry(1, $06, $27, 0, 0, 2, 1, $1A2)
    %spritemapEntry(0, $1F8, $10, 0, 0, 2, 1, $1AB)
    %spritemapEntry(0, $00, $10, 0, 0, 2, 1, $1AC)
    %spritemapEntry(1, $1F8, $00, 0, 0, 2, 1, $1A4)
    %spritemapEntry(1, $1FD, $13, 0, 0, 2, 1, $177)
    %spritemapEntry(0, $05, $23, 0, 0, 2, 1, $198)
    %spritemapEntry(0, $1FD, $23, 0, 0, 2, 1, $197)
    %spritemapEntry(0, $1FB, $10, 0, 0, 2, 2, $1AB)
    %spritemapEntry(0, $03, $10, 0, 0, 2, 2, $1AC)
    %spritemapEntry(1, $1FB, $00, 0, 0, 2, 2, $1A4)
    %spritemapEntry(1, $00, $13, 0, 0, 2, 2, $177)
    %spritemapEntry(0, $08, $23, 0, 0, 2, 2, $198)
    %spritemapEntry(0, $00, $23, 0, 0, 2, 2, $197)
    %spritemapEntry(1, $1EE, $FA, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1EE, $E2, 0, 0, 2, 1, $110)
    %spritemapEntry(1, $1FE, $FA, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1FE, $EA, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1FE, $DA, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $DA, 0, 0, 2, 1, $100)

Spritemaps_Torizo_2E:
    dw $0018                                                             ;AA9672;
    %spritemapEntry(0, $1A, $28, 0, 0, 2, 2, $162)
    %spritemapEntry(0, $12, $28, 0, 0, 2, 2, $161)
    %spritemapEntry(0, $0A, $28, 0, 0, 2, 2, $160)
    %spritemapEntry(0, $1EB, $28, 0, 0, 2, 1, $162)
    %spritemapEntry(0, $1E3, $28, 0, 0, 2, 1, $161)
    %spritemapEntry(0, $1DB, $28, 0, 0, 2, 1, $160)
    %spritemapEntry(1, $1F7, $FE, 0, 0, 2, 1, $1A9)
    %spritemapEntry(0, $1F7, $0E, 0, 0, 2, 1, $1BB)
    %spritemapEntry(0, $1EF, $0E, 0, 0, 2, 1, $1AF)
    %spritemapEntry(1, $1EF, $FE, 0, 0, 2, 1, $1A8)
    %spritemapEntry(0, $1EF, $22, 0, 0, 2, 1, $194)
    %spritemapEntry(0, $1E7, $22, 0, 0, 2, 1, $193)
    %spritemapEntry(1, $1E7, $12, 0, 0, 2, 1, $173)
    %spritemapEntry(0, $1FD, $10, 0, 1, 2, 2, $1AE)
    %spritemapEntry(0, $05, $10, 0, 1, 2, 2, $1AD)
    %spritemapEntry(1, $1FD, $00, 0, 1, 2, 2, $1A6)
    %spritemapEntry(1, $0F, $1C, 0, 0, 2, 2, $18A)
    %spritemapEntry(1, $07, $14, 0, 0, 2, 2, $179)
    %spritemapEntry(1, $1FE, $F9, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1EE, $F9, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1FE, $E9, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1EE, $E9, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $1FE, $D9, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $D9, 0, 0, 2, 1, $100)

Spritemaps_Torizo_2F:
    dw $0018                                                             ;AA96EC;
    %spritemapEntry(0, $1A, $28, 0, 0, 2, 1, $162)
    %spritemapEntry(0, $12, $28, 0, 0, 2, 1, $161)
    %spritemapEntry(0, $0A, $28, 0, 0, 2, 1, $160)
    %spritemapEntry(0, $1FD, $10, 0, 1, 2, 1, $1AE)
    %spritemapEntry(0, $05, $10, 0, 1, 2, 1, $1AD)
    %spritemapEntry(1, $1FD, $00, 0, 1, 2, 1, $1A6)
    %spritemapEntry(1, $0F, $1C, 0, 0, 2, 1, $18A)
    %spritemapEntry(1, $07, $14, 0, 0, 2, 1, $179)
    %spritemapEntry(0, $1EB, $28, 0, 0, 2, 2, $162)
    %spritemapEntry(0, $1E3, $28, 0, 0, 2, 2, $161)
    %spritemapEntry(0, $1DB, $28, 0, 0, 2, 2, $160)
    %spritemapEntry(1, $1F7, $FE, 0, 0, 2, 2, $1A9)
    %spritemapEntry(0, $1F7, $0E, 0, 0, 2, 2, $1BB)
    %spritemapEntry(0, $1EF, $0E, 0, 0, 2, 2, $1AF)
    %spritemapEntry(1, $1EF, $FE, 0, 0, 2, 2, $1A8)
    %spritemapEntry(0, $1EF, $22, 0, 0, 2, 2, $194)
    %spritemapEntry(0, $1E7, $22, 0, 0, 2, 2, $193)
    %spritemapEntry(1, $1E7, $12, 0, 0, 2, 2, $173)
    %spritemapEntry(1, $1FE, $F9, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1EE, $F9, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $1FE, $E9, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1EE, $E9, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $1FE, $D9, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1EE, $D9, 0, 0, 2, 1, $100)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemaps_Torizo_AA9766:
    dw $0006                                                             ;AA9766;
    %spritemapEntry(1, $00, $0C, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $1F0, $0C, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $00, $FC, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $1F0, $FC, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $00, $EC, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $1F0, $EC, 0, 0, 2, 1, $100)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemaps_Torizo_30:
    dw $0004                                                             ;AA9786;
    %spritemapEntry(0, $1EC, $F4, 0, 1, 2, 1, $1CB)
    %spritemapEntry(0, $1F4, $F4, 0, 1, 2, 1, $1CA)
    %spritemapEntry(1, $1FC, $F4, 0, 1, 2, 1, $1C8)
    %spritemapEntry(1, $1FC, $04, 0, 1, 2, 1, $1E8)

Spritemaps_Torizo_31:
    dw $0004                                                             ;AA979C;
    %spritemapEntry(0, $00, $04, 0, 1, 2, 1, $1DB)
    %spritemapEntry(0, $08, $04, 0, 1, 2, 1, $1DA)
    %spritemapEntry(1, $1F0, $F4, 0, 1, 2, 1, $1C6)
    %spritemapEntry(1, $00, $F4, 0, 1, 2, 1, $1C4)

Spritemaps_Torizo_32:
    dw $0003                                                             ;AA97B2;
    %spritemapEntry(1, $08, $FC, 0, 1, 2, 1, $1C0)
    %spritemapEntry(1, $1F0, $F4, 0, 1, 2, 1, $1C6)
    %spritemapEntry(1, $00, $F4, 0, 1, 2, 1, $1C4)

Spritemaps_Torizo_33:
    dw $0003                                                             ;AA97C3;
    %spritemapEntry(1, $08, $FC, 0, 1, 2, 1, $1C2)
    %spritemapEntry(1, $1F0, $F4, 0, 1, 2, 1, $1C6)
    %spritemapEntry(1, $00, $F4, 0, 1, 2, 1, $1C4)

Spritemaps_Torizo_34:
    dw $0003                                                             ;AA97D4;
    %spritemapEntry(1, $08, $FC, 0, 1, 2, 1, $1E0)
    %spritemapEntry(1, $1F0, $F4, 0, 1, 2, 1, $1C6)
    %spritemapEntry(1, $00, $F4, 0, 1, 2, 1, $1C4)

Spritemaps_Torizo_35:
    dw $0008                                                             ;AA97E5;
    %spritemapEntry(0, $18, $F4, 0, 1, 2, 1, $172)
    %spritemapEntry(0, $10, $F4, 0, 1, 2, 1, $171)
    %spritemapEntry(0, $08, $0C, 0, 1, 2, 1, $1F2)
    %spritemapEntry(0, $08, $04, 0, 1, 2, 1, $1F3)
    %spritemapEntry(0, $08, $FC, 0, 1, 2, 1, $1E3)
    %spritemapEntry(0, $10, $FC, 0, 1, 2, 1, $1E2)
    %spritemapEntry(1, $1F0, $F4, 0, 1, 2, 1, $1C6)
    %spritemapEntry(1, $00, $F4, 0, 1, 2, 1, $1C4)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemaps_Torizo_AA980F:
    dw $0013                                                             ;AA980F;
    %spritemapEntry(0, $1F5, $10, 0, 0, 2, 1, $14C)
    %spritemapEntry(0, $03, $10, 0, 1, 2, 1, $14C)
    %spritemapEntry(0, $1FC, $F8, 0, 1, 2, 1, $15F)
    %spritemapEntry(0, $1F8, $D0, 0, 0, 2, 1, $19F)
    %spritemapEntry(0, $1F5, $20, 0, 0, 2, 1, $1DF)
    %spritemapEntry(0, $1F5, $18, 0, 0, 2, 1, $1CF)
    %spritemapEntry(0, $1F5, $08, 0, 0, 2, 1, $19E)
    %spritemapEntry(0, $1F6, $00, 0, 0, 2, 1, $1DE)
    %spritemapEntry(0, $1F7, $F8, 0, 0, 2, 1, $1CE)
    %spritemapEntry(1, $1F0, $E8, 0, 0, 2, 1, $1E6)
    %spritemapEntry(1, $1F0, $D8, 0, 0, 2, 1, $1E4)
    %spritemapEntry(0, $00, $D0, 0, 1, 2, 1, $19F)
    %spritemapEntry(0, $03, $20, 0, 1, 2, 1, $1DF)
    %spritemapEntry(0, $03, $18, 0, 1, 2, 1, $1CF)
    %spritemapEntry(0, $03, $08, 0, 1, 2, 1, $19E)
    %spritemapEntry(0, $02, $00, 0, 1, 2, 1, $1DE)
    %spritemapEntry(0, $01, $F8, 0, 1, 2, 1, $1CE)
    %spritemapEntry(1, $00, $E8, 0, 1, 2, 1, $1E6)
    %spritemapEntry(1, $00, $D8, 0, 1, 2, 1, $1E4)

UNUSED_Spritemaps_Torizo_AA9870:
    dw $001B                                                             ;AA9870;
    %spritemapEntry(0, $00, $F0, 0, 1, 2, 1, $1DC)
    %spritemapEntry(0, $00, $E8, 0, 1, 2, 1, $1CC)
    %spritemapEntry(0, $1F8, $F0, 0, 0, 2, 1, $1DC)
    %spritemapEntry(0, $1F8, $E8, 0, 0, 2, 1, $1CC)
    %spritemapEntry(0, $03, $10, 0, 1, 2, 1, $14C)
    %spritemapEntry(0, $1F5, $10, 0, 0, 2, 1, $14C)
    %spritemapEntry(0, $1F0, $E0, 0, 0, 2, 1, $1F4)
    %spritemapEntry(0, $1F0, $D8, 0, 0, 2, 1, $1E4)
    %spritemapEntry(0, $00, $E0, 0, 1, 2, 1, $1DD)
    %spritemapEntry(0, $00, $D8, 0, 1, 2, 1, $1CD)
    %spritemapEntry(0, $1F8, $E0, 0, 0, 2, 1, $1DD)
    %spritemapEntry(0, $1F8, $D8, 0, 0, 2, 1, $1CD)
    %spritemapEntry(0, $08, $E0, 0, 1, 2, 1, $1F4)
    %spritemapEntry(0, $08, $D8, 0, 1, 2, 1, $1E4)
    %spritemapEntry(0, $1FC, $F8, 0, 1, 2, 1, $15F)
    %spritemapEntry(0, $1F5, $20, 0, 0, 2, 1, $1DF)
    %spritemapEntry(0, $1F5, $18, 0, 0, 2, 1, $1CF)
    %spritemapEntry(0, $1F5, $08, 0, 0, 2, 1, $19E)
    %spritemapEntry(0, $1F6, $00, 0, 0, 2, 1, $1DE)
    %spritemapEntry(0, $1F7, $F8, 0, 0, 2, 1, $1CE)
    %spritemapEntry(1, $1F0, $E8, 0, 0, 2, 1, $1E6)
    %spritemapEntry(0, $03, $20, 0, 1, 2, 1, $1DF)
    %spritemapEntry(0, $03, $18, 0, 1, 2, 1, $1CF)
    %spritemapEntry(0, $03, $08, 0, 1, 2, 1, $19E)
    %spritemapEntry(0, $02, $00, 0, 1, 2, 1, $1DE)
    %spritemapEntry(0, $01, $F8, 0, 1, 2, 1, $1CE)
    %spritemapEntry(1, $00, $E8, 0, 1, 2, 1, $1E6)

UNUSED_Spritemaps_Torizo_AA98F9:
    dw $0001                                                             ;AA98F9;
    %spritemapEntry(0, $1FC, $FC, 0, 1, 2, 5, $170)

UNUSED_Spritemaps_Torizo_AA9900:
    dw $0001                                                             ;AA9900;
    %spritemapEntry(0, $1FC, $FC, 0, 1, 2, 5, $163)

UNUSED_Spritemaps_Torizo_AA9907:
    dw $0001                                                             ;AA9907;
    %spritemapEntry(0, $1FC, $FC, 0, 1, 2, 5, $167)

UNUSED_Spritemaps_Torizo_AA990E:
    dw $0001                                                             ;AA990E;
    %spritemapEntry(0, $1FC, $FC, 0, 1, 2, 5, $16A)

UNUSED_Spritemaps_Torizo_AA9915:
    dw $0001                                                             ;AA9915;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 3, $12C)

UNUSED_Spritemaps_Torizo_AA991C:
    dw $0001                                                             ;AA991C;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 5, $12E)

UNUSED_Spritemaps_Torizo_AA9923:
    dw $0001                                                             ;AA9923;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 1, $104)

UNUSED_Spritemaps_Torizo_AA992A:
    dw $0006                                                             ;AA992A;
    %spritemapEntry(0, $1F8, $08, 1, 1, 2, 5, $152)
    %spritemapEntry(0, $00, $08, 1, 0, 2, 5, $152)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 2, 5, $192)
    %spritemapEntry(0, $1F8, $F0, 0, 0, 2, 5, $182)
    %spritemapEntry(0, $00, $F8, 0, 1, 2, 5, $192)
    %spritemapEntry(0, $00, $F0, 0, 1, 2, 5, $182)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemaps_Torizo_36:
    dw $001A                                                             ;AA994A;
    %spritemapEntry(0, $0F, $FA, 0, 1, 2, 1, $1FB)
    %spritemapEntry(0, $17, $FA, 0, 1, 2, 1, $1FA)
    %spritemapEntry(0, $17, $FA, 0, 1, 2, 1, $1FA)
    %spritemapEntry(1, $1F4, $EE, 0, 1, 2, 1, $128)
    %spritemapEntry(1, $1F8, $FB, 0, 0, 2, 1, $108)
    %spritemapEntry(0, $06, $15, 0, 1, 2, 1, $162)
    %spritemapEntry(0, $0E, $15, 0, 1, 2, 1, $161)
    %spritemapEntry(0, $16, $15, 0, 1, 2, 1, $160)
    %spritemapEntry(1, $09, $F7, 1, 0, 2, 1, $158)
    %spritemapEntry(1, $01, $FF, 1, 0, 2, 1, $147)
    %spritemapEntry(0, $1FF, $12, 0, 1, 2, 1, $194)
    %spritemapEntry(0, $07, $12, 0, 1, 2, 1, $193)
    %spritemapEntry(1, $1FF, $02, 0, 1, 2, 1, $173)
    %spritemapEntry(0, $1F3, $16, 0, 1, 2, 1, $1EF)
    %spritemapEntry(0, $1EB, $16, 0, 1, 2, 1, $1FC)
    %spritemapEntry(0, $1EB, $0E, 0, 1, 2, 1, $1FF)
    %spritemapEntry(1, $1F3, $06, 0, 1, 2, 1, $1ED)
    %spritemapEntry(0, $1F1, $E3, 0, 1, 2, 1, $1CB)
    %spritemapEntry(0, $1F9, $E3, 0, 1, 2, 1, $1CA)
    %spritemapEntry(1, $01, $E3, 0, 1, 2, 1, $1C8)
    %spritemapEntry(1, $01, $F3, 0, 1, 2, 1, $1E8)
    %spritemapEntry(1, $1E8, $06, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $1F8, $06, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1E8, $F6, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $1F8, $F6, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1E8, $E6, 0, 1, 2, 1, $102)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemaps_Torizo_UnusedEntry_AA99CE:
; Missing count
    dw $81F8                                                             ;AA99CE;
    db $E6                                                               ;AA99D0;
    dw $6300                                                             ;AA99D1;
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemaps_Torizo_37:
    dw $001A                                                             ;AA99D3;
    %spritemapEntry(1, $1F3, $F9, 0, 1, 2, 1, $106)
    %spritemapEntry(1, $1F3, $EC, 0, 1, 2, 1, $126)
    %spritemapEntry(0, $15, $03, 0, 0, 2, 1, $18F)
    %spritemapEntry(0, $0D, $03, 0, 0, 2, 1, $18E)
    %spritemapEntry(0, $09, $04, 0, 0, 2, 1, $14F)
    %spritemapEntry(0, $01, $04, 0, 0, 2, 1, $14E)
    %spritemapEntry(0, $1F9, $04, 0, 0, 2, 1, $14D)
    %spritemapEntry(0, $1FD, $10, 0, 1, 2, 1, $196)
    %spritemapEntry(0, $05, $10, 0, 1, 2, 1, $195)
    %spritemapEntry(1, $1FD, $00, 0, 1, 2, 1, $175)
    %spritemapEntry(0, $1F6, $01, 1, 1, 2, 1, $1AE)
    %spritemapEntry(0, $1FE, $01, 1, 1, 2, 1, $1AD)
    %spritemapEntry(1, $1F6, $09, 1, 1, 2, 1, $1A6)
    %spritemapEntry(0, $1FD, $15, 0, 1, 2, 1, $162)
    %spritemapEntry(0, $05, $15, 0, 1, 2, 1, $161)
    %spritemapEntry(0, $0D, $15, 0, 1, 2, 1, $160)
    %spritemapEntry(0, $1F2, $E4, 0, 1, 2, 1, $1CB)
    %spritemapEntry(0, $1FA, $E4, 0, 1, 2, 1, $1CA)
    %spritemapEntry(1, $02, $E4, 0, 1, 2, 1, $1C8)
    %spritemapEntry(1, $02, $F4, 0, 1, 2, 1, $1E8)
    %spritemapEntry(1, $1E9, $07, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $1F9, $07, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1E9, $F7, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $1F9, $F7, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1E9, $E7, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $1F9, $E7, 0, 1, 2, 1, $100)

Spritemaps_Torizo_38:
    dw $001B                                                             ;AA9A57;
    %spritemapEntry(1, $09, $0D, 0, 0, 2, 1, $16C)
    %spritemapEntry(1, $1F6, $F4, 0, 1, 2, 1, $106)
    %spritemapEntry(1, $1F6, $E7, 0, 1, 2, 1, $126)
    %spritemapEntry(1, $02, $07, 0, 0, 2, 1, $158)
    %spritemapEntry(1, $1FB, $FF, 0, 0, 2, 1, $147)
    %spritemapEntry(0, $1FD, $16, 0, 1, 2, 1, $198)
    %spritemapEntry(0, $05, $16, 0, 1, 2, 1, $197)
    %spritemapEntry(1, $1FD, $06, 0, 1, 2, 1, $177)
    %spritemapEntry(0, $1F7, $1B, 0, 1, 2, 1, $162)
    %spritemapEntry(0, $1FF, $1B, 0, 1, 2, 1, $161)
    %spritemapEntry(0, $07, $1B, 0, 1, 2, 1, $160)
    %spritemapEntry(0, $1F1, $0B, 1, 1, 2, 1, $1EC)
    %spritemapEntry(0, $1F9, $0B, 1, 1, 2, 1, $1EB)
    %spritemapEntry(0, $01, $0B, 1, 1, 2, 1, $1EA)
    %spritemapEntry(0, $1F1, $03, 0, 1, 2, 1, $1EC)
    %spritemapEntry(0, $1F9, $03, 0, 1, 2, 1, $1EB)
    %spritemapEntry(0, $01, $03, 0, 1, 2, 1, $1EA)
    %spritemapEntry(0, $1F2, $DE, 0, 1, 2, 1, $1CB)
    %spritemapEntry(0, $1FA, $DE, 0, 1, 2, 1, $1CA)
    %spritemapEntry(1, $02, $DE, 0, 1, 2, 1, $1C8)
    %spritemapEntry(1, $02, $EE, 0, 1, 2, 1, $1E8)
    %spritemapEntry(1, $1E9, $01, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $1F9, $01, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1E9, $F1, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $1F9, $F1, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1E9, $E1, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $1F9, $E1, 0, 1, 2, 1, $100)

Spritemaps_Torizo_39:
    dw $0019                                                             ;AA9AE0;
    %spritemapEntry(1, $1F5, $F1, 0, 1, 2, 1, $106)
    %spritemapEntry(1, $1F5, $E4, 0, 1, 2, 1, $126)
    %spritemapEntry(1, $0A, $0A, 0, 0, 2, 1, $16C)
    %spritemapEntry(1, $03, $05, 0, 0, 2, 1, $158)
    %spritemapEntry(1, $1FC, $FD, 0, 0, 2, 1, $147)
    %spritemapEntry(1, $1EE, $FB, 0, 1, 2, 1, $1A9)
    %spritemapEntry(0, $1F6, $0B, 0, 1, 2, 1, $1BB)
    %spritemapEntry(0, $1FE, $0B, 0, 1, 2, 1, $1AF)
    %spritemapEntry(1, $1F6, $FB, 0, 1, 2, 1, $1A8)
    %spritemapEntry(0, $1F2, $D9, 0, 1, 2, 1, $1CB)
    %spritemapEntry(0, $1FA, $D9, 0, 1, 2, 1, $1CA)
    %spritemapEntry(1, $02, $D9, 0, 1, 2, 1, $1C8)
    %spritemapEntry(1, $02, $E9, 0, 1, 2, 1, $1E8)
    %spritemapEntry(1, $1E9, $FC, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $1F9, $FC, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1E9, $EC, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $1F9, $EC, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1E9, $DC, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $1F9, $DC, 0, 1, 2, 1, $100)
    %spritemapEntry(0, $1F7, $1B, 0, 1, 2, 1, $198)
    %spritemapEntry(0, $1FF, $1B, 0, 1, 2, 1, $197)
    %spritemapEntry(1, $1F7, $0B, 0, 1, 2, 1, $177)
    %spritemapEntry(0, $1F0, $21, 0, 1, 2, 1, $162)
    %spritemapEntry(0, $1F8, $21, 0, 1, 2, 1, $161)
    %spritemapEntry(0, $00, $21, 0, 1, 2, 1, $160)

Spritemaps_Torizo_3A:
    dw $0019                                                             ;AA9B5F;
    %spritemapEntry(0, $1FB, $D3, 0, 1, 2, 1, $1CB)
    %spritemapEntry(0, $03, $D3, 0, 1, 2, 1, $1CA)
    %spritemapEntry(1, $0B, $E3, 0, 1, 2, 1, $1E8)
    %spritemapEntry(1, $0B, $D3, 0, 1, 2, 1, $1C8)
    %spritemapEntry(0, $1F7, $0F, 0, 1, 2, 1, $1AC)
    %spritemapEntry(0, $1FF, $0F, 0, 1, 2, 1, $1AB)
    %spritemapEntry(1, $1F7, $FF, 0, 1, 2, 1, $1A4)
    %spritemapEntry(0, $1F5, $28, 0, 1, 2, 1, $162)
    %spritemapEntry(0, $1FD, $28, 0, 1, 2, 1, $161)
    %spritemapEntry(0, $05, $28, 0, 1, 2, 1, $160)
    %spritemapEntry(0, $1F6, $21, 0, 1, 2, 1, $196)
    %spritemapEntry(0, $1FE, $21, 0, 1, 2, 1, $195)
    %spritemapEntry(1, $1F6, $11, 0, 1, 2, 1, $175)
    %spritemapEntry(0, $1FD, $0E, 0, 1, 2, 2, $1AE)
    %spritemapEntry(0, $05, $0E, 0, 1, 2, 2, $1AD)
    %spritemapEntry(1, $1FD, $FE, 0, 1, 2, 2, $1A6)
    %spritemapEntry(1, $1F3, $15, 0, 1, 2, 2, $18A)
    %spritemapEntry(1, $1FB, $0D, 0, 1, 2, 2, $179)
    %spritemapEntry(1, $1F1, $1F, 0, 1, 2, 2, $1A2)
    %spritemapEntry(1, $1F2, $F7, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $02, $F7, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1F2, $E7, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $02, $E7, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1F2, $D7, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $D7, 0, 1, 2, 1, $100)

Spritemaps_Torizo_3B:
    dw $001A                                                             ;AA9BDE;
    %spritemapEntry(0, $1FB, $D4, 0, 1, 2, 1, $1CB)
    %spritemapEntry(0, $03, $D4, 0, 1, 2, 1, $1CA)
    %spritemapEntry(1, $0B, $E4, 0, 1, 2, 1, $1E8)
    %spritemapEntry(1, $0B, $D4, 0, 1, 2, 1, $1C8)
    %spritemapEntry(0, $1FC, $0E, 0, 0, 2, 1, $1AE)
    %spritemapEntry(0, $1F4, $0E, 0, 0, 2, 1, $1AD)
    %spritemapEntry(1, $1F4, $FE, 0, 0, 2, 1, $1A6)
    %spritemapEntry(0, $1E5, $28, 0, 1, 2, 1, $162)
    %spritemapEntry(0, $1ED, $28, 0, 1, 2, 1, $161)
    %spritemapEntry(0, $1F5, $28, 0, 1, 2, 1, $160)
    %spritemapEntry(0, $1EB, $22, 0, 1, 2, 1, $198)
    %spritemapEntry(0, $1F3, $22, 0, 1, 2, 1, $197)
    %spritemapEntry(1, $1EB, $12, 0, 1, 2, 1, $177)
    %spritemapEntry(1, $1FA, $FC, 0, 1, 2, 2, $1A9)
    %spritemapEntry(0, $02, $0C, 0, 1, 2, 2, $1BB)
    %spritemapEntry(0, $0A, $0C, 0, 1, 2, 2, $1AF)
    %spritemapEntry(1, $02, $FC, 0, 1, 2, 2, $1A8)
    %spritemapEntry(1, $1FE, $1F, 0, 1, 2, 2, $1A2)
    %spritemapEntry(0, $09, $1F, 0, 1, 2, 2, $197)
    %spritemapEntry(1, $01, $0F, 0, 1, 2, 2, $177)
    %spritemapEntry(1, $1F2, $F8, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $02, $F8, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1F2, $E8, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $02, $E8, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1F2, $D8, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $D8, 0, 1, 2, 1, $100)

Spritemaps_Torizo_3C:
    dw $001C                                                             ;AA9C62;
    %spritemapEntry(0, $1FB, $D5, 0, 1, 2, 1, $1CB)
    %spritemapEntry(0, $03, $D5, 0, 1, 2, 1, $1CA)
    %spritemapEntry(1, $0B, $E5, 0, 1, 2, 1, $1E8)
    %spritemapEntry(1, $0B, $D5, 0, 1, 2, 1, $1C8)
    %spritemapEntry(0, $1DE, $28, 0, 1, 2, 1, $162)
    %spritemapEntry(0, $1E6, $28, 0, 1, 2, 1, $161)
    %spritemapEntry(0, $1EE, $28, 0, 1, 2, 1, $160)
    %spritemapEntry(0, $1FB, $10, 0, 0, 2, 1, $1AE)
    %spritemapEntry(0, $1F3, $10, 0, 0, 2, 1, $1AD)
    %spritemapEntry(1, $1F3, $00, 0, 0, 2, 1, $1A6)
    %spritemapEntry(1, $1E1, $1C, 0, 1, 2, 1, $18A)
    %spritemapEntry(1, $1E9, $14, 0, 1, 2, 1, $179)
    %spritemapEntry(0, $0D, $28, 0, 1, 2, 2, $162)
    %spritemapEntry(0, $15, $28, 0, 1, 2, 2, $161)
    %spritemapEntry(0, $1D, $28, 0, 1, 2, 2, $160)
    %spritemapEntry(1, $1F9, $FE, 0, 1, 2, 2, $1A9)
    %spritemapEntry(0, $01, $0E, 0, 1, 2, 2, $1BB)
    %spritemapEntry(0, $09, $0E, 0, 1, 2, 2, $1AF)
    %spritemapEntry(1, $01, $FE, 0, 1, 2, 2, $1A8)
    %spritemapEntry(0, $09, $22, 0, 1, 2, 2, $194)
    %spritemapEntry(0, $11, $22, 0, 1, 2, 2, $193)
    %spritemapEntry(1, $09, $12, 0, 1, 2, 2, $173)
    %spritemapEntry(1, $1F2, $F9, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $02, $F9, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1F2, $E9, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $02, $E9, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1F2, $D9, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $D9, 0, 1, 2, 1, $100)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemaps_Torizo_AA9CF0:
    dw $0002                                                             ;AA9CF0;
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 5, $180)
    %spritemapEntry(0, $00, $FC, 0, 1, 2, 5, $180)

UNUSED_Spritemaps_Torizo_AA9CFC:
    dw $0004                                                             ;AA9CFC;
    %spritemapEntry(0, $1F8, $00, 0, 0, 2, 5, $190)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 2, 5, $180)
    %spritemapEntry(0, $00, $00, 0, 1, 2, 5, $190)
    %spritemapEntry(0, $00, $F8, 0, 1, 2, 5, $180)

UNUSED_Spritemaps_Torizo_AA9D12:
    dw $0003                                                             ;AA9D12;
    %spritemapEntry(1, $1F8, $F4, 0, 1, 2, 5, $180)
    %spritemapEntry(0, $1F8, $04, 0, 0, 2, 5, $199)
    %spritemapEntry(0, $00, $04, 0, 1, 2, 5, $199)

UNUSED_Spritemaps_Torizo_AA9D23:
    dw $0003                                                             ;AA9D23;
    %spritemapEntry(0, $00, $06, 0, 1, 2, 5, $180)
    %spritemapEntry(0, $1F8, $06, 0, 0, 2, 5, $180)
    %spritemapEntry(1, $1F8, $F2, 0, 0, 2, 5, $12E)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemaps_Torizo_3D:
    dw $0016                                                             ;AA9D34;
    %spritemapEntry(0, $0D, $28, 0, 1, 2, 1, $162)
    %spritemapEntry(0, $15, $28, 0, 1, 2, 1, $161)
    %spritemapEntry(0, $1D, $28, 0, 1, 2, 1, $160)
    %spritemapEntry(1, $1F9, $FE, 0, 1, 2, 1, $1A9)
    %spritemapEntry(0, $01, $0E, 0, 1, 2, 1, $1BB)
    %spritemapEntry(0, $09, $0E, 0, 1, 2, 1, $1AF)
    %spritemapEntry(1, $01, $FE, 0, 1, 2, 1, $1A8)
    %spritemapEntry(0, $09, $22, 0, 1, 2, 1, $194)
    %spritemapEntry(0, $11, $22, 0, 1, 2, 1, $193)
    %spritemapEntry(1, $09, $12, 0, 1, 2, 1, $173)
    %spritemapEntry(0, $1FC, $0D, 0, 0, 2, 2, $1AE)
    %spritemapEntry(0, $1F4, $0D, 0, 0, 2, 2, $1AD)
    %spritemapEntry(1, $1F4, $FD, 0, 0, 2, 2, $1A6)
    %spritemapEntry(1, $1E3, $16, 0, 1, 2, 2, $18A)
    %spritemapEntry(1, $1EB, $0E, 0, 1, 2, 2, $179)
    %spritemapEntry(1, $1DD, $1F, 0, 1, 2, 2, $1A0)
    %spritemapEntry(1, $1F2, $F9, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $02, $F9, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1F2, $E9, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $02, $E9, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1F2, $D9, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $D9, 0, 1, 2, 1, $100)

Spritemaps_Torizo_3E:
    dw $0015                                                             ;AA9DA4;
    %spritemapEntry(0, $1FD, $0F, 0, 1, 2, 1, $1AE)
    %spritemapEntry(0, $05, $0F, 0, 1, 2, 1, $1AD)
    %spritemapEntry(1, $1FD, $FF, 0, 1, 2, 1, $1A6)
    %spritemapEntry(0, $08, $28, 0, 1, 2, 1, $162)
    %spritemapEntry(0, $10, $28, 0, 1, 2, 1, $161)
    %spritemapEntry(0, $18, $28, 0, 1, 2, 1, $160)
    %spritemapEntry(0, $04, $23, 0, 1, 2, 1, $194)
    %spritemapEntry(0, $0C, $23, 0, 1, 2, 1, $193)
    %spritemapEntry(1, $04, $13, 0, 1, 2, 1, $173)
    %spritemapEntry(1, $1E7, $1E, 0, 1, 2, 2, $1A0)
    %spritemapEntry(0, $1F9, $10, 0, 1, 2, 2, $1AC)
    %spritemapEntry(0, $01, $10, 0, 1, 2, 2, $1AB)
    %spritemapEntry(1, $1F9, $00, 0, 1, 2, 2, $1A4)
    %spritemapEntry(1, $1EB, $18, 0, 1, 2, 2, $18A)
    %spritemapEntry(1, $1F3, $10, 0, 1, 2, 2, $179)
    %spritemapEntry(1, $1F2, $F8, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $02, $F8, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1F2, $E8, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $02, $E8, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1F2, $D8, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $D8, 0, 1, 2, 1, $100)

Spritemaps_Torizo_3F:
    dw $0015                                                             ;AA9E0F;
    %spritemapEntry(0, $1F7, $0F, 0, 1, 2, 1, $1AC)
    %spritemapEntry(0, $1FF, $0F, 0, 1, 2, 1, $1AB)
    %spritemapEntry(1, $1F7, $FF, 0, 1, 2, 1, $1A4)
    %spritemapEntry(0, $1F5, $28, 0, 1, 2, 1, $162)
    %spritemapEntry(0, $1FD, $28, 0, 1, 2, 1, $161)
    %spritemapEntry(0, $05, $28, 0, 1, 2, 1, $160)
    %spritemapEntry(0, $1F6, $21, 0, 1, 2, 1, $196)
    %spritemapEntry(0, $1FE, $21, 0, 1, 2, 1, $195)
    %spritemapEntry(1, $1F6, $11, 0, 1, 2, 1, $175)
    %spritemapEntry(0, $1FD, $0E, 0, 1, 2, 2, $1AE)
    %spritemapEntry(0, $05, $0E, 0, 1, 2, 2, $1AD)
    %spritemapEntry(1, $1FD, $FE, 0, 1, 2, 2, $1A6)
    %spritemapEntry(1, $1F3, $15, 0, 1, 2, 2, $18A)
    %spritemapEntry(1, $1FB, $0D, 0, 1, 2, 2, $179)
    %spritemapEntry(1, $1F1, $1F, 0, 1, 2, 2, $1A2)
    %spritemapEntry(1, $1F2, $F7, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $02, $F7, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1F2, $E7, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $02, $E7, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1F2, $D7, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $D7, 0, 1, 2, 1, $100)

Spritemaps_Torizo_40:
    dw $0016                                                             ;AA9E7A;
    %spritemapEntry(0, $1FC, $0E, 0, 0, 2, 1, $1AE)
    %spritemapEntry(0, $1F4, $0E, 0, 0, 2, 1, $1AD)
    %spritemapEntry(1, $1F4, $FE, 0, 0, 2, 1, $1A6)
    %spritemapEntry(0, $1E5, $28, 0, 1, 2, 1, $162)
    %spritemapEntry(0, $1ED, $28, 0, 1, 2, 1, $161)
    %spritemapEntry(0, $1F5, $28, 0, 1, 2, 1, $160)
    %spritemapEntry(0, $1EB, $22, 0, 1, 2, 1, $198)
    %spritemapEntry(0, $1F3, $22, 0, 1, 2, 1, $197)
    %spritemapEntry(1, $1EB, $12, 0, 1, 2, 1, $177)
    %spritemapEntry(1, $1FA, $FC, 0, 1, 2, 2, $1A9)
    %spritemapEntry(0, $02, $0C, 0, 1, 2, 2, $1BB)
    %spritemapEntry(0, $0A, $0C, 0, 1, 2, 2, $1AF)
    %spritemapEntry(1, $02, $FC, 0, 1, 2, 2, $1A8)
    %spritemapEntry(1, $1FE, $1F, 0, 1, 2, 2, $1A2)
    %spritemapEntry(0, $09, $1F, 0, 1, 2, 2, $197)
    %spritemapEntry(1, $01, $0F, 0, 1, 2, 2, $177)
    %spritemapEntry(1, $1F2, $F8, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $02, $F8, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1F2, $E8, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $02, $E8, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1F2, $D8, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $D8, 0, 1, 2, 1, $100)

Spritemaps_Torizo_41:
    dw $0016                                                             ;AA9EEA;
    %spritemapEntry(0, $1FC, $0E, 0, 0, 2, 1, $1AE)
    %spritemapEntry(0, $1F4, $0E, 0, 0, 2, 1, $1AD)
    %spritemapEntry(1, $1F4, $FE, 0, 0, 2, 1, $1A6)
    %spritemapEntry(1, $1E3, $17, 0, 1, 2, 1, $18A)
    %spritemapEntry(1, $1EB, $0F, 0, 1, 2, 1, $179)
    %spritemapEntry(1, $1DD, $20, 0, 1, 2, 1, $1A0)
    %spritemapEntry(0, $0D, $28, 0, 1, 2, 2, $162)
    %spritemapEntry(0, $15, $28, 0, 1, 2, 2, $161)
    %spritemapEntry(0, $1D, $28, 0, 1, 2, 2, $160)
    %spritemapEntry(1, $1F9, $FE, 0, 1, 2, 2, $1A9)
    %spritemapEntry(0, $01, $0E, 0, 1, 2, 2, $1BB)
    %spritemapEntry(0, $09, $0E, 0, 1, 2, 2, $1AF)
    %spritemapEntry(1, $01, $FE, 0, 1, 2, 2, $1A8)
    %spritemapEntry(0, $09, $22, 0, 1, 2, 2, $194)
    %spritemapEntry(0, $11, $22, 0, 1, 2, 2, $193)
    %spritemapEntry(1, $09, $12, 0, 1, 2, 2, $173)
    %spritemapEntry(1, $1F2, $F9, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $02, $F9, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1F2, $E9, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $02, $E9, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1F2, $D9, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $D9, 0, 1, 2, 1, $100)

Spritemaps_Torizo_42:
    dw $0015                                                             ;AA9F5A;
    %spritemapEntry(1, $1E6, $1D, 0, 1, 2, 1, $1A0)
    %spritemapEntry(0, $1F8, $0F, 0, 1, 2, 1, $1AC)
    %spritemapEntry(0, $00, $0F, 0, 1, 2, 1, $1AB)
    %spritemapEntry(1, $1F8, $FF, 0, 1, 2, 1, $1A4)
    %spritemapEntry(1, $1EA, $17, 0, 1, 2, 1, $18A)
    %spritemapEntry(1, $1F2, $0F, 0, 1, 2, 1, $179)
    %spritemapEntry(0, $1FB, $0F, 0, 1, 2, 2, $1AE)
    %spritemapEntry(0, $03, $0F, 0, 1, 2, 2, $1AD)
    %spritemapEntry(1, $1FB, $FF, 0, 1, 2, 2, $1A6)
    %spritemapEntry(0, $06, $28, 0, 1, 2, 2, $162)
    %spritemapEntry(0, $0E, $28, 0, 1, 2, 2, $161)
    %spritemapEntry(0, $16, $28, 0, 1, 2, 2, $160)
    %spritemapEntry(0, $02, $23, 0, 1, 2, 2, $194)
    %spritemapEntry(0, $0A, $23, 0, 1, 2, 2, $193)
    %spritemapEntry(1, $02, $13, 0, 1, 2, 2, $173)
    %spritemapEntry(1, $1F2, $F8, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $02, $F8, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1F2, $E8, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $02, $E8, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1F2, $D8, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $D8, 0, 1, 2, 1, $100)

Spritemaps_Torizo_43:
    dw $0015                                                             ;AA9FC5;
    %spritemapEntry(0, $1FD, $0E, 0, 1, 2, 1, $1AE)
    %spritemapEntry(0, $05, $0E, 0, 1, 2, 1, $1AD)
    %spritemapEntry(1, $1FD, $FE, 0, 1, 2, 1, $1A6)
    %spritemapEntry(1, $1F3, $15, 0, 1, 2, 1, $18A)
    %spritemapEntry(1, $1FB, $0D, 0, 1, 2, 1, $179)
    %spritemapEntry(1, $1F1, $1F, 0, 1, 2, 1, $1A2)
    %spritemapEntry(0, $1F7, $0F, 0, 1, 2, 2, $1AC)
    %spritemapEntry(0, $1FF, $0F, 0, 1, 2, 2, $1AB)
    %spritemapEntry(1, $1F7, $FF, 0, 1, 2, 2, $1A4)
    %spritemapEntry(0, $1F5, $28, 0, 1, 2, 2, $162)
    %spritemapEntry(0, $1FD, $28, 0, 1, 2, 2, $161)
    %spritemapEntry(0, $05, $28, 0, 1, 2, 2, $160)
    %spritemapEntry(0, $1F6, $21, 0, 1, 2, 2, $196)
    %spritemapEntry(0, $1FE, $21, 0, 1, 2, 2, $195)
    %spritemapEntry(1, $1F6, $11, 0, 1, 2, 2, $175)
    %spritemapEntry(1, $1F2, $F7, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $02, $F7, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1F2, $E7, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $02, $E7, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1F2, $D7, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $D7, 0, 1, 2, 1, $100)

Spritemaps_Torizo_44:
    dw $0016                                                             ;AAA030;
    %spritemapEntry(1, $1F9, $FC, 0, 1, 2, 1, $1A9)
    %spritemapEntry(0, $01, $0C, 0, 1, 2, 1, $1BB)
    %spritemapEntry(0, $09, $0C, 0, 1, 2, 1, $1AF)
    %spritemapEntry(1, $01, $FC, 0, 1, 2, 1, $1A8)
    %spritemapEntry(1, $1FD, $1F, 0, 1, 2, 1, $1A2)
    %spritemapEntry(0, $08, $1F, 0, 1, 2, 1, $197)
    %spritemapEntry(1, $00, $0F, 0, 1, 2, 1, $177)
    %spritemapEntry(0, $1FA, $0E, 0, 0, 2, 2, $1AE)
    %spritemapEntry(0, $1F2, $0E, 0, 0, 2, 2, $1AD)
    %spritemapEntry(1, $1F2, $FE, 0, 0, 2, 2, $1A6)
    %spritemapEntry(0, $1E3, $28, 0, 1, 2, 2, $162)
    %spritemapEntry(0, $1EB, $28, 0, 1, 2, 2, $161)
    %spritemapEntry(0, $1F3, $28, 0, 1, 2, 2, $160)
    %spritemapEntry(0, $1E9, $22, 0, 1, 2, 2, $198)
    %spritemapEntry(0, $1F1, $22, 0, 1, 2, 2, $197)
    %spritemapEntry(1, $1E9, $12, 0, 1, 2, 2, $177)
    %spritemapEntry(1, $1F2, $F8, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $02, $F8, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1F2, $E8, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $02, $E8, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1F2, $D8, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $D8, 0, 1, 2, 1, $100)

Spritemaps_Torizo_45:
    dw $0007                                                             ;AAA0A0;
    %spritemapEntry(0, $1E8, $25, 0, 0, 2, 1, $17B)
    %spritemapEntry(0, $1E8, $1D, 0, 0, 2, 1, $16B)
    %spritemapEntry(1, $1EB, $FB, 0, 1, 2, 1, $10C)
    %spritemapEntry(0, $1E8, $16, 0, 1, 2, 1, $164)
    %spritemapEntry(0, $1E8, $0E, 0, 1, 2, 1, $154)
    %spritemapEntry(0, $1E8, $06, 0, 1, 2, 1, $144)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 1, $12A)

Spritemaps_Torizo_46:
    dw $0005                                                             ;AAA0C5;
    %spritemapEntry(1, $1F6, $23, 0, 1, 2, 1, $16C)
    %spritemapEntry(1, $1EF, $02, 0, 1, 2, 1, $10A)
    %spritemapEntry(0, $1F6, $1F, 0, 0, 2, 1, $166)
    %spritemapEntry(1, $1EE, $0F, 0, 0, 2, 1, $145)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 1, $124)

Spritemaps_Torizo_47:
    dw $0005                                                             ;AAA0E0;
    %spritemapEntry(1, $00, $28, 0, 1, 2, 1, $16C)
    %spritemapEntry(0, $1FF, $24, 0, 0, 2, 1, $166)
    %spritemapEntry(1, $1F7, $14, 0, 0, 2, 1, $145)
    %spritemapEntry(1, $1F4, $05, 0, 1, 2, 1, $108)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 1, $128)

Spritemaps_Torizo_48:
    dw $0005                                                             ;AAA0FB;
    %spritemapEntry(1, $09, $24, 0, 1, 2, 1, $16C)
    %spritemapEntry(1, $1F8, $06, 0, 1, 2, 1, $106)
    %spritemapEntry(1, $04, $1B, 0, 0, 2, 1, $158)
    %spritemapEntry(1, $1FC, $13, 0, 0, 2, 1, $147)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 1, $126)

Spritemaps_Torizo_49:
    dw $0005                                                             ;AAA116;
    %spritemapEntry(1, $12, $19, 0, 1, 2, 1, $16C)
    %spritemapEntry(1, $1FC, $05, 0, 0, 2, 1, $108)
    %spritemapEntry(0, $14, $16, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $04, $0E, 0, 0, 2, 1, $14A)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 1, $128)

Spritemaps_Torizo_4A:
    dw $0007                                                             ;AAA131;
    %spritemapEntry(1, $01, $02, 0, 0, 2, 1, $10A)
    %spritemapEntry(0, $2A, $0B, 0, 0, 2, 1, $18F)
    %spritemapEntry(0, $22, $0B, 0, 0, 2, 1, $18E)
    %spritemapEntry(0, $1E, $0B, 0, 0, 2, 1, $14F)
    %spritemapEntry(0, $16, $0B, 0, 0, 2, 1, $14E)
    %spritemapEntry(0, $0E, $0B, 0, 0, 2, 1, $14D)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 1, $124)

Spritemaps_Torizo_4B:
    dw $0005                                                             ;AAA156;
    %spritemapEntry(1, $1C, $F6, 1, 0, 2, 1, $16E)
    %spritemapEntry(1, $01, $02, 0, 0, 2, 1, $10A)
    %spritemapEntry(1, $15, $FA, 1, 0, 2, 1, $158)
    %spritemapEntry(1, $0D, $02, 1, 0, 2, 1, $147)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 1, $124)

Spritemaps_Torizo_4C:
    dw $0007                                                             ;AAA171;
    %spritemapEntry(0, $12, $DD, 1, 1, 2, 1, $17B)
    %spritemapEntry(0, $12, $E5, 1, 1, 2, 1, $16B)
    %spritemapEntry(1, $06, $F8, 0, 0, 2, 1, $10E)
    %spritemapEntry(0, $12, $EB, 1, 0, 2, 1, $164)
    %spritemapEntry(0, $12, $F3, 1, 0, 2, 1, $154)
    %spritemapEntry(0, $12, $FB, 1, 0, 2, 1, $144)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 1, $12A)

Spritemaps_Torizo_4D:
    dw $0007                                                             ;AAA196;
    %spritemapEntry(0, $1E9, $25, 0, 0, 2, 2, $17B)
    %spritemapEntry(0, $1E9, $1D, 0, 0, 2, 2, $16B)
    %spritemapEntry(1, $1EB, $FB, 0, 1, 2, 2, $10C)
    %spritemapEntry(0, $1E8, $16, 0, 1, 2, 2, $164)
    %spritemapEntry(0, $1E8, $0E, 0, 1, 2, 2, $154)
    %spritemapEntry(0, $1E8, $06, 0, 1, 2, 2, $144)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 2, $12A)

Spritemaps_Torizo_4E:
    dw $0005                                                             ;AAA1BB;
    %spritemapEntry(1, $1F6, $23, 0, 1, 2, 2, $16C)
    %spritemapEntry(1, $1EF, $02, 0, 1, 2, 2, $10A)
    %spritemapEntry(0, $1F6, $1F, 0, 0, 2, 2, $166)
    %spritemapEntry(1, $1EE, $0F, 0, 0, 2, 2, $145)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 2, $124)

Spritemaps_Torizo_4F:
    dw $0005                                                             ;AAA1D6;
    %spritemapEntry(1, $00, $28, 0, 1, 2, 2, $16C)
    %spritemapEntry(0, $1FF, $24, 0, 0, 2, 2, $166)
    %spritemapEntry(1, $1F7, $14, 0, 0, 2, 2, $145)
    %spritemapEntry(1, $1F4, $05, 0, 1, 2, 2, $108)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 2, $128)

Spritemaps_Torizo_50:
    dw $0005                                                             ;AAA1F1;
    %spritemapEntry(1, $0A, $23, 0, 1, 2, 2, $16C)
    %spritemapEntry(1, $1F8, $06, 0, 1, 2, 2, $106)
    %spritemapEntry(1, $04, $1B, 0, 0, 2, 2, $158)
    %spritemapEntry(1, $1FC, $13, 0, 0, 2, 2, $147)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 2, $126)

Spritemaps_Torizo_51:
    dw $0005                                                             ;AAA20C;
    %spritemapEntry(1, $14, $19, 0, 1, 2, 2, $16C)
    %spritemapEntry(1, $1FC, $05, 0, 0, 2, 2, $108)
    %spritemapEntry(0, $14, $16, 0, 0, 2, 2, $15C)
    %spritemapEntry(1, $04, $0E, 0, 0, 2, 2, $14A)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 2, $128)

Spritemaps_Torizo_52:
    dw $0007                                                             ;AAA227;
    %spritemapEntry(1, $01, $02, 0, 0, 2, 2, $10A)
    %spritemapEntry(0, $2D, $0B, 0, 0, 2, 2, $18F)
    %spritemapEntry(0, $25, $0B, 0, 0, 2, 2, $18E)
    %spritemapEntry(0, $1E, $0B, 0, 0, 2, 2, $14F)
    %spritemapEntry(0, $16, $0B, 0, 0, 2, 2, $14E)
    %spritemapEntry(0, $0E, $0B, 0, 0, 2, 2, $14D)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 2, $124)

Spritemaps_Torizo_53:
    dw $0005                                                             ;AAA24C;
    %spritemapEntry(1, $1D, $F4, 1, 0, 2, 2, $16E)
    %spritemapEntry(1, $01, $02, 0, 0, 2, 2, $10A)
    %spritemapEntry(1, $15, $FA, 1, 0, 2, 2, $158)
    %spritemapEntry(1, $0D, $02, 1, 0, 2, 2, $147)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 2, $124)

Spritemaps_Torizo_54:
    dw $0007                                                             ;AAA267;
    %spritemapEntry(0, $12, $DD, 1, 1, 2, 2, $17B)
    %spritemapEntry(0, $12, $E5, 1, 1, 2, 2, $16B)
    %spritemapEntry(1, $06, $F8, 0, 0, 2, 2, $10E)
    %spritemapEntry(0, $12, $EB, 1, 0, 2, 2, $164)
    %spritemapEntry(0, $12, $F3, 1, 0, 2, 2, $154)
    %spritemapEntry(0, $12, $FB, 1, 0, 2, 2, $144)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 2, $12A)

Spritemaps_Torizo_55:
    dw $0018                                                             ;AAA28C;
    %spritemapEntry(1, $02, $F3, 0, 1, 2, 1, $130)
    %spritemapEntry(1, $1F7, $FD, 0, 1, 2, 1, $1A9)
    %spritemapEntry(0, $1FF, $0D, 0, 1, 2, 1, $1BB)
    %spritemapEntry(0, $07, $0D, 0, 1, 2, 1, $1AF)
    %spritemapEntry(1, $1FF, $FD, 0, 1, 2, 1, $1A8)
    %spritemapEntry(1, $1F6, $15, 0, 1, 2, 1, $18A)
    %spritemapEntry(1, $1FE, $0D, 0, 1, 2, 1, $179)
    %spritemapEntry(0, $1F3, $20, 0, 1, 2, 1, $162)
    %spritemapEntry(0, $1FB, $20, 0, 1, 2, 1, $161)
    %spritemapEntry(0, $03, $20, 0, 1, 2, 1, $160)
    %spritemapEntry(1, $1FB, $FD, 0, 1, 2, 2, $1A9)
    %spritemapEntry(0, $03, $0D, 0, 1, 2, 2, $1BB)
    %spritemapEntry(0, $0B, $0D, 0, 1, 2, 2, $1AF)
    %spritemapEntry(1, $03, $FD, 0, 1, 2, 2, $1A8)
    %spritemapEntry(1, $1FA, $15, 0, 1, 2, 2, $18A)
    %spritemapEntry(1, $02, $0D, 0, 1, 2, 2, $179)
    %spritemapEntry(0, $1F7, $20, 0, 1, 2, 2, $162)
    %spritemapEntry(0, $1FF, $20, 0, 1, 2, 2, $161)
    %spritemapEntry(0, $07, $20, 0, 1, 2, 2, $160)
    %spritemapEntry(1, $02, $E3, 0, 1, 2, 1, $110)
    %spritemapEntry(1, $1F2, $FB, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $1F2, $EB, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $1F2, $DB, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $DB, 0, 1, 2, 1, $100)

Spritemaps_Torizo_56:
    dw $0013                                                             ;AAA306;
    %spritemapEntry(1, $02, $F2, 0, 1, 2, 1, $130)
    %spritemapEntry(0, $1FC, $0F, 0, 1, 2, 1, $1AE)
    %spritemapEntry(0, $04, $0F, 0, 1, 2, 1, $1AD)
    %spritemapEntry(1, $1FC, $FF, 0, 1, 2, 1, $1A6)
    %spritemapEntry(1, $1EE, $22, 0, 1, 2, 1, $1A0)
    %spritemapEntry(1, $1F3, $19, 0, 1, 2, 1, $18A)
    %spritemapEntry(1, $1FB, $11, 0, 1, 2, 1, $179)
    %spritemapEntry(1, $02, $FA, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $02, $E2, 0, 1, 2, 1, $110)
    %spritemapEntry(1, $1F2, $FA, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $1F2, $EA, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $1F2, $DA, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $DA, 0, 1, 2, 1, $100)
    %spritemapEntry(0, $00, $10, 0, 0, 2, 2, $1AC)
    %spritemapEntry(0, $1F8, $10, 0, 0, 2, 2, $1AB)
    %spritemapEntry(1, $1F8, $00, 0, 0, 2, 2, $1A4)
    %spritemapEntry(1, $1E7, $24, 0, 1, 2, 2, $1A0)
    %spritemapEntry(1, $1EC, $1B, 0, 1, 2, 2, $18A)
    %spritemapEntry(1, $1F4, $13, 0, 1, 2, 2, $179)

Spritemaps_Torizo_57:
    dw $0015                                                             ;AAA367;
    %spritemapEntry(1, $02, $F2, 0, 1, 2, 1, $130)
    %spritemapEntry(1, $1ED, $27, 0, 1, 2, 1, $1A2)
    %spritemapEntry(1, $1EA, $27, 0, 1, 2, 1, $1A2)
    %spritemapEntry(0, $00, $10, 0, 1, 2, 1, $1AB)
    %spritemapEntry(0, $1F8, $10, 0, 1, 2, 1, $1AC)
    %spritemapEntry(1, $1F8, $00, 0, 1, 2, 1, $1A4)
    %spritemapEntry(1, $1F3, $13, 0, 1, 2, 1, $177)
    %spritemapEntry(0, $1F3, $23, 0, 1, 2, 1, $198)
    %spritemapEntry(0, $1FB, $23, 0, 1, 2, 1, $197)
    %spritemapEntry(0, $1FD, $10, 0, 1, 2, 2, $1AB)
    %spritemapEntry(0, $1F5, $10, 0, 1, 2, 2, $1AC)
    %spritemapEntry(1, $1F5, $00, 0, 1, 2, 2, $1A4)
    %spritemapEntry(1, $1F0, $13, 0, 1, 2, 2, $177)
    %spritemapEntry(0, $1F0, $23, 0, 1, 2, 2, $198)
    %spritemapEntry(0, $1F8, $23, 0, 1, 2, 2, $197)
    %spritemapEntry(1, $02, $FA, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $02, $E2, 0, 1, 2, 1, $110)
    %spritemapEntry(1, $1F2, $FA, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $1F2, $EA, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $1F2, $DA, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $DA, 0, 1, 2, 1, $100)

Spritemaps_Torizo_58:
    dw $0018                                                             ;AAA3D2;
    %spritemapEntry(0, $1DE, $28, 0, 1, 2, 2, $162)
    %spritemapEntry(0, $1E6, $28, 0, 1, 2, 2, $161)
    %spritemapEntry(0, $1EE, $28, 0, 1, 2, 2, $160)
    %spritemapEntry(0, $0D, $28, 0, 1, 2, 1, $162)
    %spritemapEntry(0, $15, $28, 0, 1, 2, 1, $161)
    %spritemapEntry(0, $1D, $28, 0, 1, 2, 1, $160)
    %spritemapEntry(1, $1F9, $FE, 0, 1, 2, 1, $1A9)
    %spritemapEntry(0, $01, $0E, 0, 1, 2, 1, $1BB)
    %spritemapEntry(0, $09, $0E, 0, 1, 2, 1, $1AF)
    %spritemapEntry(1, $01, $FE, 0, 1, 2, 1, $1A8)
    %spritemapEntry(0, $09, $22, 0, 1, 2, 1, $194)
    %spritemapEntry(0, $11, $22, 0, 1, 2, 1, $193)
    %spritemapEntry(1, $09, $12, 0, 1, 2, 1, $173)
    %spritemapEntry(0, $1FB, $10, 0, 0, 2, 2, $1AE)
    %spritemapEntry(0, $1F3, $10, 0, 0, 2, 2, $1AD)
    %spritemapEntry(1, $1F3, $00, 0, 0, 2, 2, $1A6)
    %spritemapEntry(1, $1E1, $1C, 0, 1, 2, 2, $18A)
    %spritemapEntry(1, $1E9, $14, 0, 1, 2, 2, $179)
    %spritemapEntry(1, $1F2, $F9, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $02, $F9, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1F2, $E9, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $02, $E9, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1F2, $D9, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $D9, 0, 1, 2, 1, $100)

Spritemaps_Torizo_59:
    dw $0018                                                             ;AAA44C;
    %spritemapEntry(0, $1DE, $28, 0, 1, 2, 1, $162)
    %spritemapEntry(0, $1E6, $28, 0, 1, 2, 1, $161)
    %spritemapEntry(0, $1EE, $28, 0, 1, 2, 1, $160)
    %spritemapEntry(0, $1FB, $10, 0, 0, 2, 1, $1AE)
    %spritemapEntry(0, $1F3, $10, 0, 0, 2, 1, $1AD)
    %spritemapEntry(1, $1F3, $00, 0, 0, 2, 1, $1A6)
    %spritemapEntry(1, $1E1, $1C, 0, 1, 2, 1, $18A)
    %spritemapEntry(1, $1E9, $14, 0, 1, 2, 1, $179)
    %spritemapEntry(0, $0D, $28, 0, 1, 2, 2, $162)
    %spritemapEntry(0, $15, $28, 0, 1, 2, 2, $161)
    %spritemapEntry(0, $1D, $28, 0, 1, 2, 2, $160)
    %spritemapEntry(1, $1F9, $FE, 0, 1, 2, 2, $1A9)
    %spritemapEntry(0, $01, $0E, 0, 1, 2, 2, $1BB)
    %spritemapEntry(0, $09, $0E, 0, 1, 2, 2, $1AF)
    %spritemapEntry(1, $01, $FE, 0, 1, 2, 2, $1A8)
    %spritemapEntry(0, $09, $22, 0, 1, 2, 2, $194)
    %spritemapEntry(0, $11, $22, 0, 1, 2, 2, $193)
    %spritemapEntry(1, $09, $12, 0, 1, 2, 2, $173)
    %spritemapEntry(1, $1F2, $F9, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $02, $F9, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1F2, $E9, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $02, $E9, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1F2, $D9, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $02, $D9, 0, 1, 2, 1, $100)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemaps_Torizo_AAA4C6:
    dw $0006                                                             ;AAA4C6;
    %spritemapEntry(1, $1F0, $0C, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $00, $0C, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $1F0, $FC, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $00, $FC, 0, 1, 2, 1, $120)
    %spritemapEntry(1, $1F0, $EC, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $00, $EC, 0, 1, 2, 1, $100)

UNUSED_ExtendedSpritemaps_Torizo_AAA4E6:
    dw $0001                                                             ;AAA4E6;
    dw $0000,$0000
    dw Spritemaps_Torizo_7                                               ;AAA4EC;
    dw UNUSED_Hitboxes_Torizo_AA87DA                                     ;AAA4EE;
endif ; !FEATURE_KEEP_UNREFERENCED

ExtendedSpritemaps_Torizo_FacingScreen_Turning_Dodging:
    dw $0001                                                             ;AAA4F0;
    dw $0000,$0000                                                 
    dw Spritemaps_Torizo_6                                               ;AAA4F6;
    dw Hitboxes_Torizo_Blank                                             ;AAA4F8;

ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_0:
    dw $0004                                                             ;AAA4FA;
    dw $FFF1,$FFE2                                                 
    dw Spritemaps_Torizo_0                                               ;AAA500;
    dw Hitboxes_Torizo_Blank                                             ;AAA502;
    dw $FFFB,$FFE8                                                       ;AAA504;
    dw Spritemaps_Torizo_1B                                              ;AAA508;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_8                      ;AAA50A;
    dw $0000,$0000                                                       ;AAA50C;
    dw Spritemaps_Torizo_2E                                              ;AAA510;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA512;
    dw $FFFB,$FFE8                                                       ;AAA514;
    dw Spritemaps_Torizo_27                                              ;AAA518;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_12                     ;AAA51A;

ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_1:
    dw $0004                                                             ;AAA51C;
    dw $FFF1,$FFE2                                                 
    dw Spritemaps_Torizo_0                                               ;AAA522;
    dw Hitboxes_Torizo_Blank                                             ;AAA524;
    dw $FFFB,$FFE7                                                       ;AAA526;
    dw Spritemaps_Torizo_1C                                              ;AAA52A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_8                      ;AAA52C;
    dw $0000,$0000                                                       ;AAA52E;
    dw Spritemaps_Torizo_13                                              ;AAA532;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_7                      ;AAA534;
    dw $FFFB,$FFE7                                                       ;AAA536;
    dw Spritemaps_Torizo_26                                              ;AAA53A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_11                     ;AAA53C;

ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_2:
    dw $0004                                                             ;AAA53E;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA544;
    dw Hitboxes_Torizo_Blank                                             ;AAA546;
    dw $FFFB,$FFE6                                                       ;AAA548;
    dw Spritemaps_Torizo_1D                                              ;AAA54C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_9                      ;AAA54E;
    dw $0000,$0000                                                       ;AAA550;
    dw Spritemaps_Torizo_14                                              ;AAA554;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_7                      ;AAA556;
    dw $FFFB,$FFE6                                                       ;AAA558;
    dw Spritemaps_Torizo_25                                              ;AAA55C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_10                     ;AAA55E;

ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_3:
    dw $0004                                                             ;AAA560;
    dw $FFF1,$FFE0                                                 
    dw Spritemaps_Torizo_0                                               ;AAA566;
    dw Hitboxes_Torizo_Blank                                             ;AAA568;
    dw $FFFB,$FFE7                                                       ;AAA56A;
    dw Spritemaps_Torizo_1E                                              ;AAA56E;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_A                      ;AAA570;
    dw $0000,$0000                                                       ;AAA572;
    dw Spritemaps_Torizo_15                                              ;AAA576;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_7                      ;AAA578;
    dw $FFFB,$FFE7                                                       ;AAA57A;
    dw Spritemaps_Torizo_24                                              ;AAA57E;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_F                      ;AAA580;

ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_4:
    dw $0004                                                             ;AAA582;
    dw $FFF1,$FFE0                                                 
    dw Spritemaps_Torizo_0                                               ;AAA588;
    dw Hitboxes_Torizo_Blank                                             ;AAA58A;
    dw $FFFB,$FFE8                                                       ;AAA58C;
    dw Spritemaps_Torizo_1F                                              ;AAA590;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_B                      ;AAA592;
    dw $0000,$0000                                                       ;AAA594;
    dw Spritemaps_Torizo_16                                              ;AAA598;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_7                      ;AAA59A;
    dw $FFFB,$FFE8                                                       ;AAA59C;
    dw Spritemaps_Torizo_23                                              ;AAA5A0;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_F                      ;AAA5A2;

ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_0:
    dw $0004                                                             ;AAA5A4;
    dw $FFF1,$FFE2                                                 
    dw Spritemaps_Torizo_0                                               ;AAA5AA;
    dw Hitboxes_Torizo_Blank                                             ;AAA5AC;
    dw $FFFB,$FFE8                                                       ;AAA5AE;
    dw Spritemaps_Torizo_1F                                              ;AAA5B2;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_B                      ;AAA5B4;
    dw $0000,$0000                                                       ;AAA5B6;
    dw Spritemaps_Torizo_2F                                              ;AAA5BA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA5BC;
    dw $FFFB,$FFE8                                                       ;AAA5BE;
    dw Spritemaps_Torizo_23                                              ;AAA5C2;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_F                      ;AAA5C4;

ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_1:
    dw $0004                                                             ;AAA5C6;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA5CC;
    dw Hitboxes_Torizo_Blank                                             ;AAA5CE;
    dw $FFFB,$FFE7                                                       ;AAA5D0;
    dw Spritemaps_Torizo_1E                                              ;AAA5D4;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_A                      ;AAA5D6;
    dw $0000,$0000                                                       ;AAA5D8;
    dw Spritemaps_Torizo_17                                              ;AAA5DC;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_7                      ;AAA5DE;
    dw $FFFB,$FFE7                                                       ;AAA5E0;
    dw Spritemaps_Torizo_24                                              ;AAA5E4;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_F                      ;AAA5E6;

ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_2:
    dw $0004                                                             ;AAA5E8;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA5EE;
    dw Hitboxes_Torizo_Blank                                             ;AAA5F0;
    dw $FFFB,$FFE6                                                       ;AAA5F2;
    dw Spritemaps_Torizo_1D                                              ;AAA5F6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_9                      ;AAA5F8;
    dw $0000,$0000                                                       ;AAA5FA;
    dw Spritemaps_Torizo_18                                              ;AAA5FE;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_7                      ;AAA600;
    dw $FFFB,$FFE6                                                       ;AAA602;
    dw Spritemaps_Torizo_25                                              ;AAA606;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_10                     ;AAA608;

ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_3:
    dw $0004                                                             ;AAA60A;
    dw $FFF1,$FFE0                                                 
    dw Spritemaps_Torizo_0                                               ;AAA610;
    dw Hitboxes_Torizo_Blank                                             ;AAA612;
    dw $FFFB,$FFE7                                                       ;AAA614;
    dw Spritemaps_Torizo_1C                                              ;AAA618;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_8                      ;AAA61A;
    dw $0000,$0000                                                       ;AAA61C;
    dw Spritemaps_Torizo_19                                              ;AAA620;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_7                      ;AAA622;
    dw $FFFB,$FFE7                                                       ;AAA624;
    dw Spritemaps_Torizo_26                                              ;AAA628;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_11                     ;AAA62A;

ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_4:
    dw $0004                                                             ;AAA62C;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA632;
    dw Hitboxes_Torizo_Blank                                             ;AAA634;
    dw $FFFB,$FFE8                                                       ;AAA636;
    dw Spritemaps_Torizo_1B                                              ;AAA63A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_8                      ;AAA63C;
    dw $0000,$0000                                                       ;AAA63E;
    dw Spritemaps_Torizo_1A                                              ;AAA642;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_7                      ;AAA644;
    dw $FFFB,$FFE8                                                       ;AAA646;
    dw Spritemaps_Torizo_27                                              ;AAA64A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_12                     ;AAA64C;

ExtendedSpritemaps_Torizo_Attacks_FaceLeft_RightFootForward:
    dw $0003                                                             ;AAA64E;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA654;
    dw Hitboxes_Torizo_Blank                                             ;AAA656;
    dw $FFFC,$FFE7                                                       ;AAA658;
    dw Spritemaps_Torizo_1D                                              ;AAA65C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_9                      ;AAA65E;
    dw $0000,$0000                                                       ;AAA660;
    dw Spritemaps_Torizo_2F                                              ;AAA664;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA666;

ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_0:
    dw $0003                                                             ;AAA668;
    dw $FFF7,$FFE1                                                 
    dw Spritemaps_Torizo_1                                               ;AAA66E;
    dw Hitboxes_Torizo_Blank                                             ;AAA670;
    dw $FFFC,$FFE7                                                       ;AAA672;
    dw Spritemaps_Torizo_1E                                              ;AAA676;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_A                      ;AAA678;
    dw $0000,$0000                                                       ;AAA67A;
    dw Spritemaps_Torizo_2F                                              ;AAA67E;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA680;

ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_1:
    dw $0003                                                             ;AAA682;
    dw $FFF7,$FFE1                                                 
    dw Spritemaps_Torizo_2                                               ;AAA688;
    dw Hitboxes_Torizo_Blank                                             ;AAA68A;
    dw $FFFC,$FFE7                                                       ;AAA68C;
    dw Spritemaps_Torizo_1F                                              ;AAA690;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_B                      ;AAA692;
    dw $0000,$0000                                                       ;AAA694;
    dw Spritemaps_Torizo_2F                                              ;AAA698;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA69A;

ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_2:
    dw $0003                                                             ;AAA69C;
    dw $FFF7,$FFE1                                                 
    dw Spritemaps_Torizo_3                                               ;AAA6A2;
    dw Hitboxes_Torizo_Blank                                             ;AAA6A4;
    dw $FFFC,$FFE7                                                       ;AAA6A6;
    dw Spritemaps_Torizo_20                                              ;AAA6AA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_C                      ;AAA6AC;
    dw $0000,$0000                                                       ;AAA6AE;
    dw Spritemaps_Torizo_2F                                              ;AAA6B2;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA6B4;

ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_3:
    dw $0003                                                             ;AAA6B6;
    dw $FFFC,$FFE7                                                 
    dw Spritemaps_Torizo_21                                              ;AAA6BC;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_D                      ;AAA6BE;
    dw $FFF7,$FFE1                                                       ;AAA6C0;
    dw Spritemaps_Torizo_4                                               ;AAA6C4;
    dw Hitboxes_Torizo_Blank                                             ;AAA6C6;
    dw $0000,$0000                                                       ;AAA6C8;
    dw Spritemaps_Torizo_2F                                              ;AAA6CC;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA6CE;

ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_4:
    dw $0003                                                             ;AAA6D0;
    dw $FFFC,$FFE7                                                 
    dw Spritemaps_Torizo_21                                              ;AAA6D6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_D                      ;AAA6D8;
    dw $FFF7,$FFE1                                                       ;AAA6DA;
    dw Spritemaps_Torizo_5                                               ;AAA6DE;
    dw Hitboxes_Torizo_Blank                                             ;AAA6E0;
    dw $0000,$0000                                                       ;AAA6E2;
    dw Spritemaps_Torizo_2F                                              ;AAA6E6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA6E8;

ExtendedSpritemaps_Torizo_Attacks_FaceLeft_LeftFootForward:
    dw $0003                                                             ;AAA6EA;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA6F0;
    dw Hitboxes_Torizo_Blank                                             ;AAA6F2;
    dw $FFFC,$FFE7                                                       ;AAA6F4;
    dw Spritemaps_Torizo_1C                                              ;AAA6F8;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_8                      ;AAA6FA;
    dw $0000,$0000                                                       ;AAA6FC;
    dw Spritemaps_Torizo_2E                                              ;AAA700;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA702;

ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_0:
    dw $0003                                                             ;AAA704;
    dw $FFF7,$FFE1                                                 
    dw Spritemaps_Torizo_1                                               ;AAA70A;
    dw Hitboxes_Torizo_Blank                                             ;AAA70C;
    dw $FFFC,$FFE7                                                       ;AAA70E;
    dw Spritemaps_Torizo_1E                                              ;AAA712;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_A                      ;AAA714;
    dw $0000,$0000                                                       ;AAA716;
    dw Spritemaps_Torizo_2E                                              ;AAA71A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA71C;

ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_1:
    dw $0003                                                             ;AAA71E;
    dw $FFF7,$FFE1                                                 
    dw Spritemaps_Torizo_2                                               ;AAA724;
    dw Hitboxes_Torizo_Blank                                             ;AAA726;
    dw $FFFC,$FFE7                                                       ;AAA728;
    dw Spritemaps_Torizo_1F                                              ;AAA72C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_B                      ;AAA72E;
    dw $0000,$0000                                                       ;AAA730;
    dw Spritemaps_Torizo_2E                                              ;AAA734;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA736;

ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_2:
    dw $0003                                                             ;AAA738;
    dw $FFF7,$FFE1                                                 
    dw Spritemaps_Torizo_3                                               ;AAA73E;
    dw Hitboxes_Torizo_Blank                                             ;AAA740;
    dw $FFFC,$FFE7                                                       ;AAA742;
    dw Spritemaps_Torizo_20                                              ;AAA746;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_C                      ;AAA748;
    dw $0000,$0000                                                       ;AAA74A;
    dw Spritemaps_Torizo_2E                                              ;AAA74E;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA750;

ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_3:
    dw $0003                                                             ;AAA752;
    dw $FFFC,$FFE7                                                 
    dw Spritemaps_Torizo_21                                              ;AAA758;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_D                      ;AAA75A;
    dw $FFF7,$FFE1                                                       ;AAA75C;
    dw Spritemaps_Torizo_4                                               ;AAA760;
    dw Hitboxes_Torizo_Blank                                             ;AAA762;
    dw $0000,$0000                                                       ;AAA764;
    dw Spritemaps_Torizo_2E                                              ;AAA768;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA76A;

ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_4:
    dw $0003                                                             ;AAA76C;
    dw $FFFC,$FFE7                                                 
    dw Spritemaps_Torizo_21                                              ;AAA772;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_D                      ;AAA774;
    dw $FFF7,$FFE1                                                       ;AAA776;
    dw Spritemaps_Torizo_5                                               ;AAA77A;
    dw Hitboxes_Torizo_Blank                                             ;AAA77C;
    dw $0000,$0000                                                       ;AAA77E;
    dw Spritemaps_Torizo_2E                                              ;AAA782;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA784;

ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_0:
    dw $0003                                                             ;AAA786;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA78C;
    dw Hitboxes_Torizo_Blank                                             ;AAA78E;
    dw $FFFC,$FFE7                                                       ;AAA790;
    dw Spritemaps_Torizo_1E                                              ;AAA794;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_A                      ;AAA796;
    dw $0000,$0000                                                       ;AAA798;
    dw Spritemaps_Torizo_2F                                              ;AAA79C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA79E;

ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_1:
    dw $0004                                                             ;AAA7A0;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA7A6;
    dw Hitboxes_Torizo_Blank                                             ;AAA7A8;
    dw $FFFC,$FFE7                                                       ;AAA7AA;
    dw Spritemaps_Torizo_1E                                              ;AAA7AE;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_A                      ;AAA7B0;
    dw $0000,$0000                                                       ;AAA7B2;
    dw Spritemaps_Torizo_2F                                              ;AAA7B6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA7B8;
    dw $FFFC,$FFE7                                                       ;AAA7BA;
    dw Spritemaps_Torizo_27                                              ;AAA7BE;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_12                     ;AAA7C0;

ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_2:
    dw $0004                                                             ;AAA7C2;
    dw $FFFC,$FFE7                                                 
    dw Spritemaps_Torizo_1E                                              ;AAA7C8;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_A                      ;AAA7CA;
    dw $FFF1,$FFE1                                                       ;AAA7CC;
    dw Spritemaps_Torizo_0                                               ;AAA7D0;
    dw Hitboxes_Torizo_Blank                                             ;AAA7D2;
    dw $0000,$0000                                                       ;AAA7D4;
    dw Spritemaps_Torizo_2F                                              ;AAA7D8;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA7DA;
    dw $FFFC,$FFE7                                                       ;AAA7DC;
    dw Spritemaps_Torizo_28                                              ;AAA7E0;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_13                     ;AAA7E2;

ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_3:
    dw $0004                                                             ;AAA7E4;
    dw $FFFC,$FFE7                                                 
    dw Spritemaps_Torizo_1E                                              ;AAA7EA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_A                      ;AAA7EC;
    dw $FFF1,$FFE1                                                       ;AAA7EE;
    dw Spritemaps_Torizo_0                                               ;AAA7F2;
    dw Hitboxes_Torizo_Blank                                             ;AAA7F4;
    dw $0000,$0000                                                       ;AAA7F6;
    dw Spritemaps_Torizo_2F                                              ;AAA7FA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA7FC;
    dw $FFFC,$FFE7                                                       ;AAA7FE;
    dw Spritemaps_Torizo_29                                              ;AAA802;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_14                     ;AAA804;

ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_4:
    dw $0004                                                             ;AAA806;
    dw $FFFC,$FFE7                                                 
    dw Spritemaps_Torizo_1E                                              ;AAA80C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_A                      ;AAA80E;
    dw $FFF1,$FFE1                                                       ;AAA810;
    dw Spritemaps_Torizo_0                                               ;AAA814;
    dw Hitboxes_Torizo_Blank                                             ;AAA816;
    dw $0000,$0000                                                       ;AAA818;
    dw Spritemaps_Torizo_2F                                              ;AAA81C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA81E;
    dw $FFFC,$FFE7                                                       ;AAA820;
    dw Spritemaps_Torizo_2A                                              ;AAA824;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_15                     ;AAA826;

ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_5:
    dw $0004                                                             ;AAA828;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA82E;
    dw Hitboxes_Torizo_Blank                                             ;AAA830;
    dw $FFFC,$FFE7                                                       ;AAA832;
    dw Spritemaps_Torizo_1E                                              ;AAA836;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_A                      ;AAA838;
    dw $0000,$0000                                                       ;AAA83A;
    dw Spritemaps_Torizo_2F                                              ;AAA83E;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA840;
    dw $FFFC,$FFE7                                                       ;AAA842;
    dw Spritemaps_Torizo_24                                              ;AAA846;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_F                      ;AAA848;

ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_0:
    dw $0004                                                             ;AAA84A;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA850;
    dw Hitboxes_Torizo_Blank                                             ;AAA852;
    dw $FFFC,$FFE7                                                       ;AAA854;
    dw Spritemaps_Torizo_1F                                              ;AAA858;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_B                      ;AAA85A;
    dw $0000,$0000                                                       ;AAA85C;
    dw Spritemaps_Torizo_2F                                              ;AAA860;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA862;
    dw $FFFC,$FFE7                                                       ;AAA864;
    dw Spritemaps_Torizo_24                                              ;AAA868;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_F                      ;AAA86A;

ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_1:
    dw $0004                                                             ;AAA86C;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA872;
    dw Hitboxes_Torizo_Blank                                             ;AAA874;
    dw $FFFC,$FFE7                                                       ;AAA876;
    dw Spritemaps_Torizo_20                                              ;AAA87A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_C                      ;AAA87C;
    dw $0000,$0000                                                       ;AAA87E;
    dw Spritemaps_Torizo_2F                                              ;AAA882;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA884;
    dw $FFFC,$FFE7                                                       ;AAA886;
    dw Spritemaps_Torizo_24                                              ;AAA88A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_F                      ;AAA88C;

ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_2:
    dw $0004                                                             ;AAA88E;
    dw $FFFC,$FFE7                                                 
    dw Spritemaps_Torizo_21                                              ;AAA894;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_D                      ;AAA896;
    dw $FFF1,$FFE1                                                       ;AAA898;
    dw Spritemaps_Torizo_0                                               ;AAA89C;
    dw Hitboxes_Torizo_Blank                                             ;AAA89E;
    dw $0000,$0000                                                       ;AAA8A0;
    dw Spritemaps_Torizo_2F                                              ;AAA8A4;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA8A6;
    dw $FFFC,$FFE7                                                       ;AAA8A8;
    dw Spritemaps_Torizo_24                                              ;AAA8AC;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_F                      ;AAA8AE;

ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_3:
    dw $0004                                                             ;AAA8B0;
    dw $FFFC,$FFE7                                                 
    dw Spritemaps_Torizo_22                                              ;AAA8B6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_E                      ;AAA8B8;
    dw $FFF1,$FFE1                                                       ;AAA8BA;
    dw Spritemaps_Torizo_0                                               ;AAA8BE;
    dw Hitboxes_Torizo_Blank                                             ;AAA8C0;
    dw $0000,$0000                                                       ;AAA8C2;
    dw Spritemaps_Torizo_2F                                              ;AAA8C6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA8C8;
    dw $FFFC,$FFE7                                                       ;AAA8CA;
    dw Spritemaps_Torizo_24                                              ;AAA8CE;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_F                      ;AAA8D0;

ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_0:
    dw $0003                                                             ;AAA8D2;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA8D8;
    dw Hitboxes_Torizo_Blank                                             ;AAA8DA;
    dw $FFFC,$FFE7                                                       ;AAA8DC;
    dw Spritemaps_Torizo_1E                                              ;AAA8E0;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_A                      ;AAA8E2;
    dw $0000,$0000                                                       ;AAA8E4;
    dw Spritemaps_Torizo_2E                                              ;AAA8E8;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA8EA;

ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_1:
    dw $0003                                                             ;AAA8EC;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA8F2;
    dw Hitboxes_Torizo_Blank                                             ;AAA8F4;
    dw $FFFC,$FFE7                                                       ;AAA8F6;
    dw Spritemaps_Torizo_1F                                              ;AAA8FA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_B                      ;AAA8FC;
    dw $0000,$0000                                                       ;AAA8FE;
    dw Spritemaps_Torizo_2E                                              ;AAA902;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA904;

ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_2:
    dw $0003                                                             ;AAA906;
    dw $FFFC,$FFE7                                                 
    dw Spritemaps_Torizo_20                                              ;AAA90C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_C                      ;AAA90E;
    dw $FFF1,$FFE1                                                       ;AAA910;
    dw Spritemaps_Torizo_0                                               ;AAA914;
    dw Hitboxes_Torizo_Blank                                             ;AAA916;
    dw $0000,$0000                                                       ;AAA918;
    dw Spritemaps_Torizo_2E                                              ;AAA91C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA91E;

ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_3:
    dw $0003                                                             ;AAA920;
    dw $FFFC,$FFE7                                                 
    dw Spritemaps_Torizo_21                                              ;AAA926;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_D                      ;AAA928;
    dw $FFF1,$FFE1                                                       ;AAA92A;
    dw Spritemaps_Torizo_0                                               ;AAA92E;
    dw Hitboxes_Torizo_Blank                                             ;AAA930;
    dw $0000,$0000                                                       ;AAA932;
    dw Spritemaps_Torizo_2E                                              ;AAA936;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA938;

ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_4:
    dw $0003                                                             ;AAA93A;
    dw $FFFC,$FFE7                                                 
    dw Spritemaps_Torizo_22                                              ;AAA940;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_E                      ;AAA942;
    dw $FFF1,$FFE1                                                       ;AAA944;
    dw Spritemaps_Torizo_0                                               ;AAA948;
    dw Hitboxes_Torizo_Blank                                             ;AAA94A;
    dw $0000,$0000                                                       ;AAA94C;
    dw Spritemaps_Torizo_2E                                              ;AAA950;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA952;

ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_5:
    dw $0004                                                             ;AAA954;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA95A;
    dw Hitboxes_Torizo_Blank                                             ;AAA95C;
    dw $FFFC,$FFE7                                                       ;AAA95E;
    dw Spritemaps_Torizo_1D                                              ;AAA962;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_9                      ;AAA964;
    dw $0000,$0000                                                       ;AAA966;
    dw Spritemaps_Torizo_2E                                              ;AAA96A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA96C;
    dw $FFFC,$FFE7                                                       ;AAA96E;
    dw Spritemaps_Torizo_26                                              ;AAA972;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_11                     ;AAA974;

ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_0:
    dw $0004                                                             ;AAA976;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA97C;
    dw Hitboxes_Torizo_Blank                                             ;AAA97E;
    dw $FFFC,$FFE7                                                       ;AAA980;
    dw Spritemaps_Torizo_1D                                              ;AAA984;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_9                      ;AAA986;
    dw $0000,$0000                                                       ;AAA988;
    dw Spritemaps_Torizo_2E                                              ;AAA98C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA98E;
    dw $FFFC,$FFE7                                                       ;AAA990;
    dw Spritemaps_Torizo_27                                              ;AAA994;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_12                     ;AAA996;

ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_1:
    dw $0004                                                             ;AAA998;
    dw $FFF1,$FFE1                                                 
    dw Spritemaps_Torizo_0                                               ;AAA99E;
    dw Hitboxes_Torizo_Blank                                             ;AAA9A0;
    dw $FFFC,$FFE7                                                       ;AAA9A2;
    dw Spritemaps_Torizo_1D                                              ;AAA9A6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_9                      ;AAA9A8;
    dw $0000,$0000                                                       ;AAA9AA;
    dw Spritemaps_Torizo_2E                                              ;AAA9AE;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA9B0;
    dw $FFFC,$FFE7                                                       ;AAA9B2;
    dw Spritemaps_Torizo_28                                              ;AAA9B6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_13                     ;AAA9B8;

ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_2:
    dw $0004                                                             ;AAA9BA;
    dw $FFFC,$FFE7                                                 
    dw Spritemaps_Torizo_1D                                              ;AAA9C0;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_9                      ;AAA9C2;
    dw $FFF1,$FFE1                                                       ;AAA9C4;
    dw Spritemaps_Torizo_0                                               ;AAA9C8;
    dw Hitboxes_Torizo_Blank                                             ;AAA9CA;
    dw $0000,$0000                                                       ;AAA9CC;
    dw Spritemaps_Torizo_2E                                              ;AAA9D0;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA9D2;
    dw $FFFC,$FFE7                                                       ;AAA9D4;
    dw Spritemaps_Torizo_29                                              ;AAA9D8;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_14                     ;AAA9DA;

ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_3:
    dw $0004                                                             ;AAA9DC;
    dw $FFFC,$FFE7                                                 
    dw Spritemaps_Torizo_1D                                              ;AAA9E2;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_9                      ;AAA9E4;
    dw $FFF1,$FFE1                                                       ;AAA9E6;
    dw Spritemaps_Torizo_0                                               ;AAA9EA;
    dw Hitboxes_Torizo_Blank                                             ;AAA9EC;
    dw $0000,$0000                                                       ;AAA9EE;
    dw Spritemaps_Torizo_2E                                              ;AAA9F2;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_17                     ;AAA9F4;
    dw $FFFC,$FFE7                                                       ;AAA9F6;
    dw Spritemaps_Torizo_2A                                              ;AAA9FA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_15                     ;AAA9FC;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_ExtendedSpritemaps_Torizo_AAA9FE:
    dw $0001                                                             ;AAA9FE;
    dw $0000,$0008                                                 
    dw Spritemaps_Torizo_6                                               ;AAAA04;
    dw UNUSED_Hitboxes_Torizo_AA87DA                                     ;AAAA06;

UNUSED_ExtendedSpritemaps_Torizo_AAAA08:
    dw $0001                                                             ;AAAA08;
    dw $0000,$0008                                                 
    dw Spritemaps_Torizo_7                                               ;AAAA0E;
    dw UNUSED_Hitboxes_Torizo_AA87DA                                     ;AAAA10;
endif ; !FEATURE_KEEP_UNREFERENCED

ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0:
    dw $0001                                                             ;AAAA12;
    dw $0000,$0000                                                 
    dw Spritemaps_Torizo_C                                               ;AAAA18;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_0                      ;AAAA1A;

ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_1:
    dw $0001                                                             ;AAAA1C;
    dw $0000,$0000                                                 
    dw Spritemaps_Torizo_D                                               ;AAAA22;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_1                      ;AAAA24;

ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_2:
    dw $0001                                                             ;AAAA26;
    dw $0000,$0000                                                 
    dw Spritemaps_Torizo_E                                               ;AAAA2C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_2                      ;AAAA2E;

ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_3:
    dw $0001                                                             ;AAAA30;
    dw $0000,$0000                                                 
    dw Spritemaps_Torizo_E_miscount                                      ;AAAA36;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_3                      ;AAAA38;

ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_4:
    dw $0002                                                             ;AAAA3A;
    dw $FFFB,$FFE8                                                 
    dw Spritemaps_Torizo_1D                                              ;AAAA40;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_9                      ;AAAA42;
    dw $0000,$0000                                                       ;AAAA44;
    dw Spritemaps_Torizo_F                                               ;AAAA48;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_4                      ;AAAA4A;

ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_5:
    dw $0002                                                             ;AAAA4C;
    dw $FFFB,$FFE8                                                 
    dw Spritemaps_Torizo_1E                                              ;AAAA52;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_A                      ;AAAA54;
    dw $0000,$0000                                                       ;AAAA56;
    dw Spritemaps_Torizo_10                                              ;AAAA5A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_5                      ;AAAA5C;

ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_6:
    dw $0002                                                             ;AAAA5E;
    dw $FFFB,$FFE8                                                 
    dw Spritemaps_Torizo_1E                                              ;AAAA64;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_A                      ;AAAA66;
    dw $0000,$0000                                                       ;AAAA68;
    dw Spritemaps_Torizo_12                                              ;AAAA6C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_6                      ;AAAA6E;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_ExtendedSpritemaps_Torizo_AAAA70:
    dw $0001                                                             ;AAAA70;
    dw $0000,$0000                                                 
    dw Spritemaps_Torizo_8                                               ;AAAA76;
    dw Hitboxes_Torizo_Blank                                             ;AAAA78;

UNUSED_ExtendedSpritemaps_Torizo_AAAA7A:
    dw $0001                                                             ;AAAA7A;
    dw $0000,$0000                                                 
    dw Spritemaps_Torizo_9                                               ;AAAA80;
    dw Hitboxes_Torizo_Blank                                             ;AAAA82;

UNUSED_ExtendedSpritemaps_Torizo_AAAA84:
    dw $0001                                                             ;AAAA84;
    dw $0000,$0000                                                 
    dw Spritemaps_Torizo_A                                               ;AAAA8A;
    dw Hitboxes_Torizo_Blank                                             ;AAAA8C;

UNUSED_ExtendedSpritemaps_Torizo_AAAA8E:
    dw $0001                                                             ;AAAA8E;
    dw $0000,$0000                                                 
    dw Spritemaps_Torizo_B                                               ;AAAA94;
    dw Hitboxes_Torizo_Blank                                             ;AAAA96;
endif ; !FEATURE_KEEP_UNREFERENCED

ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_0:
    dw $0004                                                             ;AAAA98;
    dw $000F,$FFE2                                                 
    dw Spritemaps_Torizo_30                                              ;AAAA9E;
    dw Hitboxes_Torizo_Blank                                             ;AAAAA0;
    dw $0005,$FFE8                                                       ;AAAAA2;
    dw Spritemaps_Torizo_45                                              ;AAAAA6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_8                     ;AAAAA8;
    dw $0000,$0000                                                       ;AAAAAA;
    dw Spritemaps_Torizo_58                                              ;AAAAAE;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAAB0;
    dw $0005,$FFE8                                                       ;AAAAB2;
    dw Spritemaps_Torizo_51                                              ;AAAAB6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_12                    ;AAAAB8;

ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_1:
    dw $0004                                                             ;AAAABA;
    dw $000F,$FFE2                                                 
    dw Spritemaps_Torizo_30                                              ;AAAAC0;
    dw Hitboxes_Torizo_Blank                                             ;AAAAC2;
    dw $0005,$FFE7                                                       ;AAAAC4;
    dw Spritemaps_Torizo_46                                              ;AAAAC8;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_8                     ;AAAACA;
    dw $0000,$0000                                                       ;AAAACC;
    dw Spritemaps_Torizo_3D                                              ;AAAAD0;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_7                     ;AAAAD2;
    dw $0005,$FFE7                                                       ;AAAAD4;
    dw Spritemaps_Torizo_50                                              ;AAAAD8;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_11                    ;AAAADA;

ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_2:
    dw $0004                                                             ;AAAADC;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAAAE2;
    dw Hitboxes_Torizo_Blank                                             ;AAAAE4;
    dw $0005,$FFE6                                                       ;AAAAE6;
    dw Spritemaps_Torizo_47                                              ;AAAAEA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_9                     ;AAAAEC;
    dw $0000,$0000                                                       ;AAAAEE;
    dw Spritemaps_Torizo_3E                                              ;AAAAF2;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_7                     ;AAAAF4;
    dw $0005,$FFE6                                                       ;AAAAF6;
    dw Spritemaps_Torizo_4F                                              ;AAAAFA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_10                    ;AAAAFC;

ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_3:
    dw $0004                                                             ;AAAAFE;
    dw $000F,$FFE0                                                 
    dw Spritemaps_Torizo_30                                              ;AAAB04;
    dw Hitboxes_Torizo_Blank                                             ;AAAB06;
    dw $0005,$FFE7                                                       ;AAAB08;
    dw Spritemaps_Torizo_48                                              ;AAAB0C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_A                     ;AAAB0E;
    dw $0000,$0000                                                       ;AAAB10;
    dw Spritemaps_Torizo_3F                                              ;AAAB14;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_7                     ;AAAB16;
    dw $0005,$FFE7                                                       ;AAAB18;
    dw Spritemaps_Torizo_4E                                              ;AAAB1C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_F                     ;AAAB1E;

ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_4:
    dw $0004                                                             ;AAAB20;
    dw $000F,$FFE0                                                 
    dw Spritemaps_Torizo_30                                              ;AAAB26;
    dw Hitboxes_Torizo_Blank                                             ;AAAB28;
    dw $0005,$FFE8                                                       ;AAAB2A;
    dw Spritemaps_Torizo_49                                              ;AAAB2E;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_B                     ;AAAB30;
    dw $0000,$0000                                                       ;AAAB32;
    dw Spritemaps_Torizo_40                                              ;AAAB36;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_7                     ;AAAB38;
    dw $0005,$FFE8                                                       ;AAAB3A;
    dw Spritemaps_Torizo_4D                                              ;AAAB3E;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_F                     ;AAAB40;

ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_0:
    dw $0004                                                             ;AAAB42;
    dw $000F,$FFE2                                                 
    dw Spritemaps_Torizo_30                                              ;AAAB48;
    dw Hitboxes_Torizo_Blank                                             ;AAAB4A;
    dw $0005,$FFE8                                                       ;AAAB4C;
    dw Spritemaps_Torizo_49                                              ;AAAB50;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_B                     ;AAAB52;
    dw $0000,$0000                                                       ;AAAB54;
    dw Spritemaps_Torizo_59                                              ;AAAB58;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAB5A;
    dw $0005,$FFE8                                                       ;AAAB5C;
    dw Spritemaps_Torizo_4D                                              ;AAAB60;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_F                     ;AAAB62;

ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_1:
    dw $0004                                                             ;AAAB64;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAAB6A;
    dw Hitboxes_Torizo_Blank                                             ;AAAB6C;
    dw $0005,$FFE7                                                       ;AAAB6E;
    dw Spritemaps_Torizo_48                                              ;AAAB72;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_A                     ;AAAB74;
    dw $0000,$0000                                                       ;AAAB76;
    dw Spritemaps_Torizo_41                                              ;AAAB7A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_7                     ;AAAB7C;
    dw $0005,$FFE7                                                       ;AAAB7E;
    dw Spritemaps_Torizo_4E                                              ;AAAB82;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_F                     ;AAAB84;

ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_2:
    dw $0004                                                             ;AAAB86;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAAB8C;
    dw Hitboxes_Torizo_Blank                                             ;AAAB8E;
    dw $0005,$FFE6                                                       ;AAAB90;
    dw Spritemaps_Torizo_47                                              ;AAAB94;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_9                     ;AAAB96;
    dw $0000,$0000                                                       ;AAAB98;
    dw Spritemaps_Torizo_42                                              ;AAAB9C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_7                     ;AAAB9E;
    dw $0005,$FFE6                                                       ;AAABA0;
    dw Spritemaps_Torizo_4F                                              ;AAABA4;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_10                    ;AAABA6;

ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_3:
    dw $0004                                                             ;AAABA8;
    dw $000F,$FFE0                                                 
    dw Spritemaps_Torizo_30                                              ;AAABAE;
    dw Hitboxes_Torizo_Blank                                             ;AAABB0;
    dw $0005,$FFE7                                                       ;AAABB2;
    dw Spritemaps_Torizo_46                                              ;AAABB6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_8                     ;AAABB8;
    dw $0000,$0000                                                       ;AAABBA;
    dw Spritemaps_Torizo_43                                              ;AAABBE;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_7                     ;AAABC0;
    dw $0005,$FFE7                                                       ;AAABC2;
    dw Spritemaps_Torizo_50                                              ;AAABC6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_11                    ;AAABC8;

ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_4:
    dw $0004                                                             ;AAABCA;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAABD0;
    dw Hitboxes_Torizo_Blank                                             ;AAABD2;
    dw $0005,$FFE8                                                       ;AAABD4;
    dw Spritemaps_Torizo_45                                              ;AAABD8;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_8                     ;AAABDA;
    dw $0000,$0000                                                       ;AAABDC;
    dw Spritemaps_Torizo_44                                              ;AAABE0;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_7                     ;AAABE2;
    dw $0005,$FFE8                                                       ;AAABE4;
    dw Spritemaps_Torizo_51                                              ;AAABE8;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_12                    ;AAABEA;

ExtendedSpritemaps_Torizo_Attacks_FaceRight_LeftFootForward:
    dw $0003                                                             ;AAABEC;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAABF2;
    dw Hitboxes_Torizo_Blank                                             ;AAABF4;
    dw $0004,$FFE7                                                       ;AAABF6;
    dw Spritemaps_Torizo_47                                              ;AAABFA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_9                     ;AAABFC;
    dw $0000,$0000                                                       ;AAABFE;
    dw Spritemaps_Torizo_59                                              ;AAAC02;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAC04;

ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_0:
    dw $0003                                                             ;AAAC06;
    dw $0009,$FFE1                                                 
    dw Spritemaps_Torizo_31                                              ;AAAC0C;
    dw Hitboxes_Torizo_Blank                                             ;AAAC0E;
    dw $0004,$FFE7                                                       ;AAAC10;
    dw Spritemaps_Torizo_48                                              ;AAAC14;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_A                     ;AAAC16;
    dw $0000,$0000                                                       ;AAAC18;
    dw Spritemaps_Torizo_59                                              ;AAAC1C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAC1E;

ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_1:
    dw $0003                                                             ;AAAC20;
    dw $0009,$FFE1                                                 
    dw Spritemaps_Torizo_32                                              ;AAAC26;
    dw Hitboxes_Torizo_Blank                                             ;AAAC28;
    dw $0004,$FFE7                                                       ;AAAC2A;
    dw Spritemaps_Torizo_49                                              ;AAAC2E;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_B                     ;AAAC30;
    dw $0000,$0000                                                       ;AAAC32;
    dw Spritemaps_Torizo_59                                              ;AAAC36;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAC38;

ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_2:
    dw $0003                                                             ;AAAC3A;
    dw $0009,$FFE1                                                 
    dw Spritemaps_Torizo_33                                              ;AAAC40;
    dw Hitboxes_Torizo_Blank                                             ;AAAC42;
    dw $0004,$FFE7                                                       ;AAAC44;
    dw Spritemaps_Torizo_4A                                              ;AAAC48;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_C                     ;AAAC4A;
    dw $0000,$0000                                                       ;AAAC4C;
    dw Spritemaps_Torizo_59                                              ;AAAC50;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAC52;

ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_3:
    dw $0003                                                             ;AAAC54;
    dw $0004,$FFE7                                                 
    dw Spritemaps_Torizo_4B                                              ;AAAC5A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_D                     ;AAAC5C;
    dw $0009,$FFE1                                                       ;AAAC5E;
    dw Spritemaps_Torizo_34                                              ;AAAC62;
    dw Hitboxes_Torizo_Blank                                             ;AAAC64;
    dw $0000,$0000                                                       ;AAAC66;
    dw Spritemaps_Torizo_59                                              ;AAAC6A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAC6C;

ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_4:
    dw $0003                                                             ;AAAC6E;
    dw $0004,$FFE7                                                 
    dw Spritemaps_Torizo_4B                                              ;AAAC74;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_D                     ;AAAC76;
    dw $0009,$FFE1                                                       ;AAAC78;
    dw Spritemaps_Torizo_35                                              ;AAAC7C;
    dw Hitboxes_Torizo_Blank                                             ;AAAC7E;
    dw $0000,$0000                                                       ;AAAC80;
    dw Spritemaps_Torizo_59                                              ;AAAC84;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAC86;

ExtendedSpritemaps_Torizo_Attacks_FaceRight_RightFootForward:
    dw $0003                                                             ;AAAC88;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAAC8E;
    dw Hitboxes_Torizo_Blank                                             ;AAAC90;
    dw $0004,$FFE7                                                       ;AAAC92;
    dw Spritemaps_Torizo_46                                              ;AAAC96;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_8                     ;AAAC98;
    dw $0000,$0000                                                       ;AAAC9A;
    dw Spritemaps_Torizo_58                                              ;AAAC9E;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAACA0;

ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_0:
    dw $0003                                                             ;AAACA2;
    dw $0009,$FFE1                                                 
    dw Spritemaps_Torizo_31                                              ;AAACA8;
    dw Hitboxes_Torizo_Blank                                             ;AAACAA;
    dw $0004,$FFE7                                                       ;AAACAC;
    dw Spritemaps_Torizo_48                                              ;AAACB0;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_A                     ;AAACB2;
    dw $0000,$0000                                                       ;AAACB4;
    dw Spritemaps_Torizo_58                                              ;AAACB8;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAACBA;

ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_1:
    dw $0003                                                             ;AAACBC;
    dw $0009,$FFE1                                                 
    dw Spritemaps_Torizo_32                                              ;AAACC2;
    dw Hitboxes_Torizo_Blank                                             ;AAACC4;
    dw $0004,$FFE7                                                       ;AAACC6;
    dw Spritemaps_Torizo_49                                              ;AAACCA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_B                     ;AAACCC;
    dw $0000,$0000                                                       ;AAACCE;
    dw Spritemaps_Torizo_58                                              ;AAACD2;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAACD4;

ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_2:
    dw $0003                                                             ;AAACD6;
    dw $0009,$FFE1                                                 
    dw Spritemaps_Torizo_33                                              ;AAACDC;
    dw Hitboxes_Torizo_Blank                                             ;AAACDE;
    dw $0004,$FFE7                                                       ;AAACE0;
    dw Spritemaps_Torizo_4A                                              ;AAACE4;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_C                     ;AAACE6;
    dw $0000,$0000                                                       ;AAACE8;
    dw Spritemaps_Torizo_58                                              ;AAACEC;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAACEE;

ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_3:
    dw $0003                                                             ;AAACF0;
    dw $0004,$FFE7                                                 
    dw Spritemaps_Torizo_4B                                              ;AAACF6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_D                     ;AAACF8;
    dw $0009,$FFE1                                                       ;AAACFA;
    dw Spritemaps_Torizo_34                                              ;AAACFE;
    dw Hitboxes_Torizo_Blank                                             ;AAAD00;
    dw $0000,$0000                                                       ;AAAD02;
    dw Spritemaps_Torizo_58                                              ;AAAD06;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAD08;

ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_4:
    dw $0003                                                             ;AAAD0A;
    dw $0004,$FFE7                                                 
    dw Spritemaps_Torizo_4B                                              ;AAAD10;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_D                     ;AAAD12;
    dw $0009,$FFE1                                                       ;AAAD14;
    dw Spritemaps_Torizo_35                                              ;AAAD18;
    dw Hitboxes_Torizo_Blank                                             ;AAAD1A;
    dw $0000,$0000                                                       ;AAAD1C;
    dw Spritemaps_Torizo_58                                              ;AAAD20;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAD22;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_0:
    dw $0003                                                             ;AAAD24;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAAD2A;
    dw Hitboxes_Torizo_Blank                                             ;AAAD2C;
    dw $0004,$FFE7                                                       ;AAAD2E;
    dw Spritemaps_Torizo_48                                              ;AAAD32;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_A                     ;AAAD34;
    dw $0000,$0000                                                       ;AAAD36;
    dw Spritemaps_Torizo_59                                              ;AAAD3A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAD3C;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_1:
    dw $0004                                                             ;AAAD3E;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAAD44;
    dw Hitboxes_Torizo_Blank                                             ;AAAD46;
    dw $0004,$FFE7                                                       ;AAAD48;
    dw Spritemaps_Torizo_48                                              ;AAAD4C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_A                     ;AAAD4E;
    dw $0000,$0000                                                       ;AAAD50;
    dw Spritemaps_Torizo_59                                              ;AAAD54;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAD56;
    dw $0004,$FFE7                                                       ;AAAD58;
    dw Spritemaps_Torizo_51                                              ;AAAD5C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_12                    ;AAAD5E;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_2:
    dw $0004                                                             ;AAAD60;
    dw $0004,$FFE7                                                 
    dw Spritemaps_Torizo_48                                              ;AAAD66;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_A                     ;AAAD68;
    dw $000F,$FFE1                                                       ;AAAD6A;
    dw Spritemaps_Torizo_30                                              ;AAAD6E;
    dw Hitboxes_Torizo_Blank                                             ;AAAD70;
    dw $0000,$0000                                                       ;AAAD72;
    dw Spritemaps_Torizo_59                                              ;AAAD76;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAD78;
    dw $0004,$FFE7                                                       ;AAAD7A;
    dw Spritemaps_Torizo_52                                              ;AAAD7E;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_13                    ;AAAD80;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_3:
    dw $0004                                                             ;AAAD82;
    dw $0004,$FFE7                                                 
    dw Spritemaps_Torizo_48                                              ;AAAD88;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_A                     ;AAAD8A;
    dw $000F,$FFE1                                                       ;AAAD8C;
    dw Spritemaps_Torizo_30                                              ;AAAD90;
    dw Hitboxes_Torizo_Blank                                             ;AAAD92;
    dw $0000,$0000                                                       ;AAAD94;
    dw Spritemaps_Torizo_59                                              ;AAAD98;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAD9A;
    dw $0004,$FFE7                                                       ;AAAD9C;
    dw Spritemaps_Torizo_53                                              ;AAADA0;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_14                    ;AAADA2;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_4:
    dw $0004                                                             ;AAADA4;
    dw $0004,$FFE7                                                 
    dw Spritemaps_Torizo_48                                              ;AAADAA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_A                     ;AAADAC;
    dw $000F,$FFE1                                                       ;AAADAE;
    dw Spritemaps_Torizo_30                                              ;AAADB2;
    dw Hitboxes_Torizo_Blank                                             ;AAADB4;
    dw $0000,$0000                                                       ;AAADB6;
    dw Spritemaps_Torizo_59                                              ;AAADBA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAADBC;
    dw $0004,$FFE7                                                       ;AAADBE;
    dw Spritemaps_Torizo_54                                              ;AAADC2;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_15                    ;AAADC4;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_5:
    dw $0004                                                             ;AAADC6;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAADCC;
    dw Hitboxes_Torizo_Blank                                             ;AAADCE;
    dw $0004,$FFE7                                                       ;AAADD0;
    dw Spritemaps_Torizo_48                                              ;AAADD4;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_A                     ;AAADD6;
    dw $0000,$0000                                                       ;AAADD8;
    dw Spritemaps_Torizo_59                                              ;AAADDC;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAADDE;
    dw $0004,$FFE7                                                       ;AAADE0;
    dw Spritemaps_Torizo_4E                                              ;AAADE4;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_F                     ;AAADE6;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_6:
    dw $0004                                                             ;AAADE8;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAADEE;
    dw Hitboxes_Torizo_Blank                                             ;AAADF0;
    dw $0004,$FFE7                                                       ;AAADF2;
    dw Spritemaps_Torizo_49                                              ;AAADF6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_B                     ;AAADF8;
    dw $0000,$0000                                                       ;AAADFA;
    dw Spritemaps_Torizo_59                                              ;AAADFE;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAE00;
    dw $0004,$FFE7                                                       ;AAAE02;
    dw Spritemaps_Torizo_4E                                              ;AAAE06;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_F                     ;AAAE08;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_7:
    dw $0004                                                             ;AAAE0A;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAAE10;
    dw Hitboxes_Torizo_Blank                                             ;AAAE12;
    dw $0004,$FFE7                                                       ;AAAE14;
    dw Spritemaps_Torizo_4A                                              ;AAAE18;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_C                     ;AAAE1A;
    dw $0000,$0000                                                       ;AAAE1C;
    dw Spritemaps_Torizo_59                                              ;AAAE20;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAE22;
    dw $0004,$FFE7                                                       ;AAAE24;
    dw Spritemaps_Torizo_4E                                              ;AAAE28;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_F                     ;AAAE2A;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_8:
    dw $0004                                                             ;AAAE2C;
    dw $0004,$FFE7                                                 
    dw Spritemaps_Torizo_4B                                              ;AAAE32;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_D                     ;AAAE34;
    dw $000F,$FFE1                                                       ;AAAE36;
    dw Spritemaps_Torizo_30                                              ;AAAE3A;
    dw Hitboxes_Torizo_Blank                                             ;AAAE3C;
    dw $0000,$0000                                                       ;AAAE3E;
    dw Spritemaps_Torizo_59                                              ;AAAE42;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAE44;
    dw $0004,$FFE7                                                       ;AAAE46;
    dw Spritemaps_Torizo_4E                                              ;AAAE4A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_F                     ;AAAE4C;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_9:
    dw $0004                                                             ;AAAE4E;
    dw $0004,$FFE7                                                 
    dw Spritemaps_Torizo_4C                                              ;AAAE54;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_E                     ;AAAE56;
    dw $000F,$FFE1                                                       ;AAAE58;
    dw Spritemaps_Torizo_30                                              ;AAAE5C;
    dw Hitboxes_Torizo_Blank                                             ;AAAE5E;
    dw $0000,$0000                                                       ;AAAE60;
    dw Spritemaps_Torizo_59                                              ;AAAE64;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAE66;
    dw $0004,$FFE7                                                       ;AAAE68;
    dw Spritemaps_Torizo_4E                                              ;AAAE6C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_F                     ;AAAE6E;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_0:
    dw $0003                                                             ;AAAE70;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAAE76;
    dw Hitboxes_Torizo_Blank                                             ;AAAE78;
    dw $0004,$FFE7                                                       ;AAAE7A;
    dw Spritemaps_Torizo_48                                              ;AAAE7E;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_A                     ;AAAE80;
    dw $0000,$0000                                                       ;AAAE82;
    dw Spritemaps_Torizo_58                                              ;AAAE86;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAE88;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_1:
    dw $0003                                                             ;AAAE8A;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAAE90;
    dw Hitboxes_Torizo_Blank                                             ;AAAE92;
    dw $0004,$FFE7                                                       ;AAAE94;
    dw Spritemaps_Torizo_49                                              ;AAAE98;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_B                     ;AAAE9A;
    dw $0000,$0000                                                       ;AAAE9C;
    dw Spritemaps_Torizo_58                                              ;AAAEA0;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAEA2;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_2:
    dw $0003                                                             ;AAAEA4;
    dw $0004,$FFE7                                                 
    dw Spritemaps_Torizo_4A                                              ;AAAEAA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_C                     ;AAAEAC;
    dw $000F,$FFE1                                                       ;AAAEAE;
    dw Spritemaps_Torizo_30                                              ;AAAEB2;
    dw Hitboxes_Torizo_Blank                                             ;AAAEB4;
    dw $0000,$0000                                                       ;AAAEB6;
    dw Spritemaps_Torizo_58                                              ;AAAEBA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAEBC;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_3:
    dw $0003                                                             ;AAAEBE;
    dw $0004,$FFE7                                                 
    dw Spritemaps_Torizo_4B                                              ;AAAEC4;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_D                     ;AAAEC6;
    dw $000F,$FFE1                                                       ;AAAEC8;
    dw Spritemaps_Torizo_30                                              ;AAAECC;
    dw Hitboxes_Torizo_Blank                                             ;AAAECE;
    dw $0000,$0000                                                       ;AAAED0;
    dw Spritemaps_Torizo_58                                              ;AAAED4;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAED6;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_4:
    dw $0003                                                             ;AAAED8;
    dw $0004,$FFE7                                                 
    dw Spritemaps_Torizo_4C                                              ;AAAEDE;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_E                     ;AAAEE0;
    dw $000F,$FFE1                                                       ;AAAEE2;
    dw Spritemaps_Torizo_30                                              ;AAAEE6;
    dw Hitboxes_Torizo_Blank                                             ;AAAEE8;
    dw $0000,$0000                                                       ;AAAEEA;
    dw Spritemaps_Torizo_58                                              ;AAAEEE;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAEF0;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_5:
    dw $0004                                                             ;AAAEF2;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAAEF8;
    dw Hitboxes_Torizo_Blank                                             ;AAAEFA;
    dw $0004,$FFE7                                                       ;AAAEFC;
    dw Spritemaps_Torizo_47                                              ;AAAF00;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_9                     ;AAAF02;
    dw $0000,$0000                                                       ;AAAF04;
    dw Spritemaps_Torizo_58                                              ;AAAF08;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAF0A;
    dw $0004,$FFE7                                                       ;AAAF0C;
    dw Spritemaps_Torizo_50                                              ;AAAF10;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_11                    ;AAAF12;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_6:
    dw $0004                                                             ;AAAF14;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAAF1A;
    dw Hitboxes_Torizo_Blank                                             ;AAAF1C;
    dw $0004,$FFE7                                                       ;AAAF1E;
    dw Spritemaps_Torizo_47                                              ;AAAF22;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_9                     ;AAAF24;
    dw $0000,$0000                                                       ;AAAF26;
    dw Spritemaps_Torizo_58                                              ;AAAF2A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAF2C;
    dw $0004,$FFE7                                                       ;AAAF2E;
    dw Spritemaps_Torizo_51                                              ;AAAF32;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_12                    ;AAAF34;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_7:
    dw $0004                                                             ;AAAF36;
    dw $000F,$FFE1                                                 
    dw Spritemaps_Torizo_30                                              ;AAAF3C;
    dw Hitboxes_Torizo_Blank                                             ;AAAF3E;
    dw $0004,$FFE7                                                       ;AAAF40;
    dw Spritemaps_Torizo_47                                              ;AAAF44;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_9                     ;AAAF46;
    dw $0000,$0000                                                       ;AAAF48;
    dw Spritemaps_Torizo_58                                              ;AAAF4C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAF4E;
    dw $0004,$FFE7                                                       ;AAAF50;
    dw Spritemaps_Torizo_52                                              ;AAAF54;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_13                    ;AAAF56;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_8:
    dw $0004                                                             ;AAAF58;
    dw $0004,$FFE7                                                 
    dw Spritemaps_Torizo_47                                              ;AAAF5E;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_9                     ;AAAF60;
    dw $000F,$FFE1                                                       ;AAAF62;
    dw Spritemaps_Torizo_30                                              ;AAAF66;
    dw Hitboxes_Torizo_Blank                                             ;AAAF68;
    dw $0000,$0000                                                       ;AAAF6A;
    dw Spritemaps_Torizo_58                                              ;AAAF6E;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAF70;
    dw $0004,$FFE7                                                       ;AAAF72;
    dw Spritemaps_Torizo_53                                              ;AAAF76;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_14                    ;AAAF78;

ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_9:
    dw $0004                                                             ;AAAF7A;
    dw $0004,$FFE7                                                 
    dw Spritemaps_Torizo_47                                              ;AAAF80;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_9                     ;AAAF82;
    dw $000F,$FFE1                                                       ;AAAF84;
    dw Spritemaps_Torizo_30                                              ;AAAF88;
    dw Hitboxes_Torizo_Blank                                             ;AAAF8A;
    dw $0000,$0000                                                       ;AAAF8C;
    dw Spritemaps_Torizo_58                                              ;AAAF90;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_17                    ;AAAF92;
    dw $0004,$FFE7                                                       ;AAAF94;
    dw Spritemaps_Torizo_54                                              ;AAAF98;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_15                    ;AAAF9A;

ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_0:
    dw $0001                                                             ;AAAF9C;
    dw $0000,$0000                                                 
    dw Spritemaps_Torizo_36                                              ;AAAFA2;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_0                     ;AAAFA4;

ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_1:
    dw $0001                                                             ;AAAFA6;
    dw $0000,$0000                                                 
    dw Spritemaps_Torizo_37                                              ;AAAFAC;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_1                     ;AAAFAE;

ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_2:
    dw $0001                                                             ;AAAFB0;
    dw $0000,$0000                                                 
    dw Spritemaps_Torizo_38                                              ;AAAFB6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_2                     ;AAAFB8;

ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_3:
    dw $0001                                                             ;AAAFBA;
    dw $0000,$0000                                                 
    dw Spritemaps_Torizo_39                                              ;AAAFC0;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_3                     ;AAAFC2;

ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_4:
    dw $0002                                                             ;AAAFC4;
    dw $0005,$FFE8                                                 
    dw Spritemaps_Torizo_47                                              ;AAAFCA;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_9                     ;AAAFCC;
    dw $0000,$0000                                                       ;AAAFCE;
    dw Spritemaps_Torizo_3A                                              ;AAAFD2;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_4                     ;AAAFD4;

ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_5:
    dw $0002                                                             ;AAAFD6;
    dw $0005,$FFE8                                                 
    dw Spritemaps_Torizo_48                                              ;AAAFDC;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_A                     ;AAAFDE;
    dw $0000,$0000                                                       ;AAAFE0;
    dw Spritemaps_Torizo_3B                                              ;AAAFE4;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_5                     ;AAAFE6;

ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_6:
    dw $0002                                                             ;AAAFE8;
    dw $0005,$FFE8                                                 
    dw Spritemaps_Torizo_48                                              ;AAAFEE;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_A                     ;AAAFF0;
    dw $0000,$0000                                                       ;AAAFF2;
    dw Spritemaps_Torizo_3C                                              ;AAAFF6;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_6                     ;AAAFF8;

ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_0:
    dw $0003                                                             ;AAAFFA;
    dw $FFF0,$FFE3                                                 
    dw Spritemaps_Torizo_0                                               ;AAB000;
    dw Hitboxes_Torizo_Blank                                             ;AAB002;
    dw $FFFC,$FFEA                                                       ;AAB004;
    dw Spritemaps_Torizo_1D                                              ;AAB008;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_9                      ;AAB00A;
    dw $0000,$0000                                                       ;AAB00C;
    dw Spritemaps_Torizo_2B                                              ;AAB010;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_16                     ;AAB012;

ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_1:
    dw $0003                                                             ;AAB014;
    dw $FFF0,$FFE2                                                 
    dw Spritemaps_Torizo_0                                               ;AAB01A;
    dw Hitboxes_Torizo_Blank                                             ;AAB01C;
    dw $FFFC,$FFE8                                                       ;AAB01E;
    dw Spritemaps_Torizo_1C                                              ;AAB022;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_8                      ;AAB024;
    dw $0000,$0000                                                       ;AAB026;
    dw Spritemaps_Torizo_2C                                              ;AAB02A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_16                     ;AAB02C;

ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_2:
    dw $0003                                                             ;AAB02E;
    dw $FFF0,$FFE2                                                 
    dw Spritemaps_Torizo_0                                               ;AAB034;
    dw Hitboxes_Torizo_Blank                                             ;AAB036;
    dw $FFFD,$FFE8                                                       ;AAB038;
    dw Spritemaps_Torizo_1B                                              ;AAB03C;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_8                      ;AAB03E;
    dw $0000,$0000                                                       ;AAB040;
    dw Spritemaps_Torizo_2D                                              ;AAB044;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingLeft_16                     ;AAB046;

ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_0:
    dw $0003                                                             ;AAB048;
    dw $000F,$FFE4                                                 
    dw Spritemaps_Torizo_30                                              ;AAB04E;
    dw Hitboxes_Torizo_Blank                                             ;AAB050;
    dw $0004,$FFEA                                                       ;AAB052;
    dw Spritemaps_Torizo_47                                              ;AAB056;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_9                     ;AAB058;
    dw $0000,$0000                                                       ;AAB05A;
    dw Spritemaps_Torizo_55                                              ;AAB05E;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_16                    ;AAB060;

ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_1:
    dw $0003                                                             ;AAB062;
    dw $000F,$FFE3                                                 
    dw Spritemaps_Torizo_30                                              ;AAB068;
    dw Hitboxes_Torizo_Blank                                             ;AAB06A;
    dw $0004,$FFE8                                                       ;AAB06C;
    dw Spritemaps_Torizo_46                                              ;AAB070;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_8                     ;AAB072;
    dw $0000,$0000                                                       ;AAB074;
    dw Spritemaps_Torizo_56                                              ;AAB078;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_16                    ;AAB07A;

ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_2:
    dw $0003                                                             ;AAB07C;
    dw $000F,$FFE3                                                 
    dw Spritemaps_Torizo_30                                              ;AAB082;
    dw Hitboxes_Torizo_Blank                                             ;AAB084;
    dw $0003,$FFE8                                                       ;AAB086;
    dw Spritemaps_Torizo_45                                              ;AAB08A;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_8                     ;AAB08C;
    dw $0000,$0000                                                       ;AAB08E;
    dw Spritemaps_Torizo_57                                              ;AAB092;
    dw Hitboxes_Torizo_StandUp_SitDown_FacingRight_16                    ;AAB094;

TorizoMusicTracks:
  .song1:
; Song 1 - pre-fight music. Music track to queue when Bomb Torizo is revealed
    dw $0006                                                             ;AAB096;
  .song0:
; Song 0 - fight music. Music track to queue when Bomb Torizo fight starts
    dw $0005                                                             ;AAB098;
  .elevator:
; Elevator. Music track to queue when torizo dies
    dw $0003                                                             ;AAB09A;


Instruction_Torizo_FunctionInY:
    LDA.W $0000,Y                                                        ;AAB09C;
    STA.W $0FB0,X                                                        ;AAB09F;
    INY                                                                  ;AAB0A2;
    INY                                                                  ;AAB0A3;
    RTL                                                                  ;AAB0A4;


Tiles_Blank:
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB0A5;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB0B5;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB0C5;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB0D5;


InstList_Torizo_SpecialCallable_BlowUpBombTorizosGut:
; "special" because the usual link instruction isn't being used for returning
    dw Instruction_Torizo_FunctionInY                                    ;AAB0E5;
    dw RTS_AAC6AB                                                        ;AAB0E7;
    dw Instruction_Torizo_SetAnimationLock                               ;AAB0E9;
    dw Instruction_Torizo_Spawn5LowHealthExplosion_SleepFor28Frames,$0000 ;AAB0EB;
    dw Instruction_Torizo_MarkBTGutBlownUp_Spawn6BTDroolProjectiles      ;AAB0EF;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB0F1;
    dw $0040 : dl Tiles_Torizo_AAB479 : dw $7300                         ;AAB0F3;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB0FA;
    dw $0040 : dl Tiles_Torizo_AAB679 : dw $7400                         ;AAB0FC;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB103;
    dw $0020 : dl Tiles_Torizo_AAB4B9 : dw $7E70                         ;AAB105;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB10C;
    dw $0020 : dl Tiles_Torizo_AAB6B9 : dw $7F70                         ;AAB10E;
    dw Instruction_Torizo_FunctionInY                                    ;AAB115;
    dw Function_Torizo_NormalMovement                                    ;AAB117;
    dw Instruction_Torizo_ClearAnimationLock                             ;AAB119;
    dw Instruction_Torizo_GotoGutExplosionLinkInstruction                ;AAB11B;


Instruction_Torizo_MarkBTGutBlownUp_Spawn6BTDroolProjectiles:
    LDA.W $0FB6,X                                                        ;AAB11D;
    ORA.W #$8000                                                         ;AAB120;
    STA.W $0FB6,X                                                        ;AAB123;
    PHX                                                                  ;AAB126;
    PHY                                                                  ;AAB127;
    LDY.W #EnemyProjectile_BombTorizoContinuousDrool                     ;AAB128;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAB12B;
    LDY.W #EnemyProjectile_BombTorizoContinuousDrool                     ;AAB12F;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAB132;
    LDY.W #EnemyProjectile_BombTorizoContinuousDrool                     ;AAB136;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAB139;
    LDY.W #EnemyProjectile_BombTorizoContinuousDrool                     ;AAB13D;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAB140;
    LDY.W #EnemyProjectile_BombTorizoContinuousDrool                     ;AAB144;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAB147;
    LDY.W #EnemyProjectile_BombTorizoContinuousDrool                     ;AAB14B;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAB14E;
    PLY                                                                  ;AAB152;
    PLX                                                                  ;AAB153;
    RTL                                                                  ;AAB154;


InstList_Torizo_Callable_BlowUpBombTorizosFace:
    dw Instruction_Torizo_FunctionInY                                    ;AAB155;
    dw RTS_AAC6AB                                                        ;AAB157;
    dw Instruction_Torizo_SetAnimationLock                               ;AAB159;
    dw Instruction_Torizo_Spawn5LowHealthExplosion_SleepFor28Frames,$0006 ;AAB15B;
    dw Instruction_Torizo_MarkBombTorizoFaceBlownUp                      ;AAB15F;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB161;
    dw $0020 : dl Tiles_Torizo_AAB4D9 : dw $7E50                         ;AAB163;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB16A;
    dw $0020 : dl Tiles_Torizo_AAB6D9 : dw $7F50                         ;AAB16C;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB173;
    dw $0040 : dl Tiles_Blank : dw $7C80                                 ;AAB175;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB17C;
    dw $0040 : dl Tiles_Blank : dw $7CA0                                 ;AAB17E;
    dw Instruction_Common_WaitYFrames,$0001                              ;AAB185;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB189;
    dw $0040 : dl Tiles_Blank : dw $7D80                                 ;AAB18B;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB192;
    dw $0040 : dl Tiles_Blank : dw $7DA0                                 ;AAB194;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB19B;
    dw $0040 : dl Tiles_Blank : dw $7E80                                 ;AAB19D;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB1A4;
    dw $0040 : dl Tiles_Blank : dw $7F80                                 ;AAB1A6;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB1AD;
    dw $0020 : dl Tiles_Blank : dw $79F0                                 ;AAB1AF;
    dw Instruction_Torizo_FunctionInY                                    ;AAB1B6;
    dw Function_Torizo_NormalMovement                                    ;AAB1B8;
    dw Instruction_Torizo_ClearAnimationLock                             ;AAB1BA;
    dw Instruction_Torizo_Return                                         ;AAB1BC;

Instruction_Torizo_MarkBombTorizoFaceBlownUp:
    LDA.W $0FB6,X                                                        ;AAB1BE;
    ORA.W #$4000                                                         ;AAB1C1;
    STA.W $0FB6,X                                                        ;AAB1C4;
    RTL                                                                  ;AAB1C7;


InstList_Torizo_DeathSequence_0:
    dw Instruction_Torizo_FunctionInY                                    ;AAB1C8;
    dw RTS_AAC6AB                                                        ;AAB1CA;
    dw Instruction_Torizo_SetAnimationLock                               ;AAB1CC;
    dw Instruction_Common_TimerInY,$0008                                 ;AAB1CE;

InstList_Torizo_DeathSequence_1:
    dw Instruction_Torizo_SpawnTorizoDeathExplosion_SleepFor1IFrame      ;AAB1D2;
    dw Instruction_Common_WaitYFrames,$0006                              ;AAB1D4;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AAB1D8;
    dw InstList_Torizo_DeathSequence_1                                   ;AAB1DA;
    dw Instruction_Torizo_SetupPaletteTransitionToBlack                  ;AAB1DC;
    dw Instruction_Common_TimerInY,$000E                                 ;AAB1DE;

InstList_Torizo_DeathSequence_2:
    dw Instruction_Torizo_SpawnTorizoDeathExplosion_SleepFor1IFrame      ;AAB1E2;
    dw Instruction_Torizo_SetAsVisible                                   ;AAB1E4;
    dw Instruction_Common_WaitYFrames,$0002                              ;AAB1E6;
    dw Instruction_Torizo_SetAsInvisible                                 ;AAB1EA;
    dw Instruction_Common_WaitYFrames,$0002                              ;AAB1EC;
    dw Instruction_Torizo_SpawnTorizoDeathExplosion_SleepFor1IFrame      ;AAB1F0;
    dw Instruction_Torizo_SetAsVisible                                   ;AAB1F2;
    dw Instruction_Common_WaitYFrames,$0002                              ;AAB1F4;
    dw Instruction_Torizo_SetAsInvisible                                 ;AAB1F8;
    dw Instruction_Common_WaitYFrames,$0002                              ;AAB1FA;
    dw Instruction_Torizo_SetAsVisible                                   ;AAB1FE;
    dw Instruction_Common_WaitYFrames,$0002                              ;AAB200;
    dw Instruction_Torizo_SetAsInvisible                                 ;AAB204;
    dw Instruction_Common_WaitYFrames,$0002                              ;AAB206;
    dw Instruction_Torizo_SetAsVisible                                   ;AAB20A;
    dw Instruction_Common_WaitYFrames,$0002                              ;AAB20C;
    dw Instruction_Torizo_SetAsInvisible                                 ;AAB210;
    dw Instruction_Common_WaitYFrames,$0002                              ;AAB212;
    dw Instruction_Torizo_AdvanceGradualColorChange                      ;AAB216;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AAB218;
    dw InstList_Torizo_DeathSequence_2                                   ;AAB21A;
    dw Instruction_Common_WaitYFrames,$0040                              ;AAB21C;
    dw Instruction_Torizo_SetBossBit_QueueElevatorMusic_SpawnDrops       ;AAB220;
    dw Instruction_Common_DeleteEnemy                                    ;AAB222;

Instruction_Torizo_SetAsVisible:
    LDA.W $0F86,X                                                        ;AAB224;
    AND.W #$FEFF                                                         ;AAB227;
    STA.W $0F86,X                                                        ;AAB22A;
    RTL                                                                  ;AAB22D;


Instruction_Torizo_SetAsInvisible:
    LDA.W $0F86,X                                                        ;AAB22E;
    ORA.W #$0100                                                         ;AAB231;
    STA.W $0F86,X                                                        ;AAB234;
    RTL                                                                  ;AAB237;


Instruction_Torizo_SetupPaletteTransitionToBlack:
    PHX                                                                  ;AAB238;
    LDX.W #$001E                                                         ;AAB239;
    LDA.W #$0000                                                         ;AAB23C;

.loop:
    STA.L $7EC340,X                                                      ;AAB23F;
    STA.L $7EC320,X                                                      ;AAB243;
    DEX                                                                  ;AAB247;
    DEX                                                                  ;AAB248;
    BPL .loop                                                            ;AAB249;
    PLX                                                                  ;AAB24B;
    RTL                                                                  ;AAB24C;


Instruction_Torizo_SetBossBit_QueueElevatorMusic_SpawnDrops:
    LDA.W #$0004                                                         ;AAB24D;
    JSL.L SetBossBitsInAForCurrentArea                                   ;AAB250;
    LDA.W TorizoMusicTracks_elevator                                     ;AAB254;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;AAB257;
    PHY                                                                  ;AAB25B;
    PHX                                                                  ;AAB25C;
    PHP                                                                  ;AAB25D;
    LDA.W $079F                                                          ;AAB25E;
    BNE .notCrateria                                                     ;AAB261;
    JSL.L BombTorizoDeathItemDropRoutine                                 ;AAB263;
    BRA .return                                                          ;AAB267;


.notCrateria:
    JSL.L GoldenTorizoDeathItemDropRoutine                               ;AAB269;

.return:
    PLP                                                                  ;AAB26D;
    PLX                                                                  ;AAB26E;
    PLY                                                                  ;AAB26F;
    RTL                                                                  ;AAB270;


Instruction_Torizo_AdvanceGradualColorChange:
    LDA.W #$0600                                                         ;AAB271;
    JSL.L Advance_GradualColorChange_ofPalettesInA_Denominator_C         ;AAB274;
    RTL                                                                  ;AAB278;


; Torizo eyes opening / blinking
; Bomb Torizo gut blown up
; Bomb Torizo face blown up
; Golden Torizo releasing eggs
Tiles_Torizo:
    db $34,$2C,$4D,$7D,$5F,$7F,$1E,$7F,$9C,$FF,$B9,$FE,$BB,$FD,$7B,$BE   ;AAB279;
    db $7F,$00,$3A,$00,$DB,$00,$D7,$00,$37,$00,$EE,$00,$AF,$00,$ED,$00   ;AAB289;
    db $B7,$B7,$FF,$FF,$D5,$F5,$6A,$BA,$FE,$5E,$DA,$BA,$94,$74,$38,$F8   ;AAB299;
    db $78,$10,$11,$01,$EB,$01,$D6,$02,$76,$06,$B6,$02,$7E,$04,$EC,$08   ;AAB2A9;

Tiles_Torizo_AAB2B9:
    db $34,$2C,$4D,$7D,$5F,$7F,$1E,$7F,$9C,$FF,$B9,$FF,$BB,$FE,$7C,$BE   ;AAB2B9;
    db $7F,$00,$3A,$00,$DB,$00,$D7,$00,$36,$00,$EC,$00,$AD,$01,$EB,$03   ;AAB2C9;
    db $B7,$B7,$FF,$FF,$F5,$F5,$6A,$FA,$BE,$FE,$DA,$3A,$34,$74,$78,$F8   ;AAB2D9;
    db $78,$10,$11,$01,$CB,$01,$96,$02,$56,$66,$F6,$E2,$DE,$C4,$AC,$88   ;AAB2E9;

Tiles_Torizo_AAB2F9:
    db $34,$2C,$4D,$7D,$5F,$7F,$1E,$7F,$9D,$FF,$BB,$FE,$BC,$FE,$7D,$BE   ;AAB2F9;
    db $7F,$00,$3A,$00,$DB,$00,$D7,$00,$36,$01,$ED,$03,$AB,$03,$EB,$03   ;AAB309;
    db $B7,$B7,$FF,$FF,$F5,$F5,$EA,$FA,$3E,$FE,$5A,$3A,$54,$34,$B8,$78   ;AAB319;
    db $78,$10,$11,$01,$CB,$01,$16,$02,$D6,$E6,$F6,$E2,$FE,$E4,$EC,$C8   ;AAB329;

Tiles_Torizo_AAB339:
    db $34,$2C,$4D,$7D,$5D,$7F,$1A,$7F,$94,$FE,$BC,$F6,$BD,$F6,$76,$BF   ;AAB339;
    db $7F,$00,$3B,$00,$DE,$01,$D5,$03,$3B,$07,$EB,$07,$AB,$07,$E9,$03   ;AAB349;
    db $B7,$B7,$7F,$FF,$F5,$F5,$32,$FA,$5E,$3E,$5A,$3A,$D4,$34,$28,$F8   ;AAB359;
    db $78,$10,$D1,$01,$3B,$E1,$DE,$F2,$EE,$F6,$EE,$F2,$EE,$F4,$DC,$E8   ;AAB369;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB379;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB389;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB399;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB3A9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB3B9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB3C9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB3D9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB3E9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB3F9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB409;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB419;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB429;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB439;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB449;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB459;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB469;

Tiles_Torizo_AAB479:
    db $FD,$FD,$FA,$FB,$F7,$FF,$FF,$F7,$F7,$FF,$DF,$FF,$3F,$7F,$2F,$7F   ;AAB479;
    db $7A,$01,$04,$03,$E4,$FF,$F0,$FF,$20,$39,$00,$78,$00,$70,$00,$58   ;AAB489;
    db $E9,$F9,$5A,$F8,$FE,$FA,$73,$FF,$EF,$7F,$FF,$FF,$7F,$FF,$CF,$FF   ;AAB499;
    db $7F,$E1,$75,$D0,$2F,$F0,$1E,$F0,$3C,$E8,$10,$F8,$03,$FB,$07,$BB   ;AAB4A9;

Tiles_Torizo_AAB4B9:
    db $C7,$C6,$EB,$EA,$2A,$23,$96,$9F,$AB,$9F,$B3,$BF,$1F,$2F,$5B,$37   ;AAB4B9;
    db $7B,$00,$37,$00,$D5,$08,$61,$0C,$41,$3C,$C0,$1C,$C0,$3F,$80,$7F   ;AAB4C9;

Tiles_Torizo_AAB4D9:
    db $4F,$4F,$43,$46,$6F,$2F,$5B,$4C,$5F,$5B,$4F,$4A,$3B,$1F,$0F,$0F   ;AAB4D9;
    db $B6,$00,$F7,$08,$F0,$00,$B7,$00,$BE,$00,$F3,$00,$F4,$00,$FD,$00   ;AAB4E9;

Tiles_Torizo_AAB4F9:
    db $8D,$FD,$FA,$FB,$FF,$FF,$FD,$FE,$F3,$FC,$E5,$FB,$7F,$7E,$7B,$7C   ;AAB4F9;
    db $FA,$01,$64,$03,$1C,$1F,$F8,$FF,$00,$1F,$00,$3F,$00,$1F,$10,$1F   ;AAB509;
    db $E9,$F9,$5A,$F8,$FE,$FA,$B3,$7F,$4F,$FF,$BF,$FF,$BF,$7E,$CF,$7D   ;AAB519;
    db $7F,$E1,$75,$D0,$2F,$F0,$1E,$F0,$1C,$E8,$10,$F8,$02,$FA,$05,$F9   ;AAB529;

Tiles_Torizo_AAB539:
    db $8D,$FD,$FA,$FB,$FF,$FF,$FD,$FE,$FB,$FC,$FC,$FF,$7F,$7F,$3E,$3F   ;AAB539;
    db $FA,$01,$64,$03,$1C,$1F,$F8,$FF,$00,$1F,$60,$6F,$38,$3F,$1C,$1F   ;AAB549;
    db $E9,$F9,$5A,$F8,$FC,$FA,$B3,$7F,$4F,$FF,$BF,$FF,$7F,$BE,$EF,$7D   ;AAB559;
    db $7F,$E1,$75,$D0,$2F,$F0,$1E,$F0,$1C,$E8,$10,$F8,$02,$FA,$05,$F9   ;AAB569;

Tiles_Torizo_AAB579:
    db $8D,$FD,$FA,$FB,$FF,$FF,$FD,$FE,$FB,$FC,$FE,$FF,$7F,$7F,$3F,$3F   ;AAB579;
    db $FA,$01,$64,$03,$1C,$1F,$F8,$FF,$08,$1F,$7C,$7F,$3E,$3F,$2F,$2F   ;AAB589;
    db $E9,$F9,$4A,$F8,$FC,$FA,$73,$FF,$4F,$FF,$BF,$FF,$5F,$BE,$AE,$FD   ;AAB599;
    db $7F,$E1,$75,$C0,$2F,$F0,$1E,$F0,$1C,$E8,$10,$F8,$02,$FA,$05,$F8   ;AAB5A9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB5B9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB5C9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB5D9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB5E9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB5F9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB609;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB619;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB629;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB639;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB649;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB659;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB669;

Tiles_Torizo_AAB679:
    db $7F,$2F,$2B,$3F,$3F,$3F,$07,$2F,$0D,$07,$01,$03,$03,$01,$00,$00   ;AAB679;
    db $00,$58,$00,$3E,$00,$2A,$04,$2F,$00,$0B,$00,$03,$00,$02,$00,$00   ;AAB689;
    db $FE,$FE,$FF,$FF,$FF,$FF,$EF,$FF,$FF,$EF,$DF,$FF,$7F,$DF,$FF,$FF   ;AAB699;
    db $0F,$1A,$0E,$12,$0D,$11,$83,$FB,$03,$FB,$0B,$FB,$1B,$EB,$17,$17   ;AAB6A9;

Tiles_Torizo_AAB6B9:
    db $97,$9F,$13,$AF,$5B,$D7,$FB,$EF,$09,$0F,$44,$47,$2B,$E7,$0A,$E8   ;AAB6B9;
    db $60,$1F,$40,$3F,$20,$1F,$40,$1F,$70,$0F,$F8,$07,$30,$0D,$1D,$02   ;AAB6C9;

Tiles_Torizo_AAB6D9:
    db $47,$47,$65,$66,$3F,$BF,$DF,$7F,$17,$D7,$6F,$2F,$5F,$7F,$AF,$B7   ;AAB6D9;
    db $B9,$00,$9F,$00,$C1,$00,$30,$00,$EE,$00,$92,$00,$B7,$00,$D6,$00   ;AAB6E9;

Tiles_Torizo_AAB6F9:
    db $3D,$3E,$1F,$1F,$1F,$1F,$0F,$0F,$07,$07,$03,$03,$01,$01,$01,$01   ;AAB6F9;
    db $18,$1F,$1C,$1F,$0C,$0F,$06,$07,$03,$03,$00,$00,$00,$00,$01,$01   ;AAB709;
    db $DE,$FE,$DF,$3F,$6F,$BF,$2F,$FF,$DF,$EF,$9F,$FF,$FF,$FF,$FF,$FF   ;AAB719;
    db $0F,$FA,$0E,$F2,$0D,$F1,$03,$FB,$03,$FB,$0B,$FB,$1B,$6B,$17,$17   ;AAB729;

Tiles_Torizo_AAB739:
    db $1F,$1F,$0F,$0F,$07,$07,$07,$07,$03,$03,$01,$01,$01,$01,$01,$01   ;AAB739;
    db $0E,$0F,$07,$07,$03,$03,$03,$03,$01,$01,$01,$01,$00,$00,$01,$01   ;AAB749;
    db $DE,$FE,$BF,$DF,$EF,$FF,$CF,$FF,$DF,$EF,$FF,$FF,$FF,$FF,$FF,$FF   ;AAB759;
    db $0F,$FA,$0E,$F2,$4D,$B1,$83,$FB,$C3,$FB,$AB,$DB,$BB,$8B,$17,$17   ;AAB769;

Tiles_Torizo_AAB779:
    db $1F,$1F,$0F,$0F,$07,$07,$03,$03,$03,$03,$01,$01,$01,$01,$01,$01   ;AAB779;
    db $0F,$0F,$07,$07,$03,$03,$01,$01,$01,$01,$00,$00,$00,$00,$01,$01   ;AAB789;
    db $DE,$FE,$FF,$DF,$EF,$FF,$EF,$FF,$FF,$EF,$FF,$FF,$FF,$FF,$FF,$FF   ;AAB799;
    db $8F,$FA,$CE,$F2,$CD,$F1,$C3,$FB,$C3,$FB,$CB,$FB,$BB,$CB,$17,$17   ;AAB7A9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB7B9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB7C9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB7D9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB7E9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB7F9;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB809;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB819;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB829;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB839;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB849;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB859;
    db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;AAB869;

InstList_Torizo_BombTorizo_Initial_0:
    dw Instruction_Torizo_SetSteppedLeftWithRightFootState               ;AAB879;
    dw Instruction_Torizo_SetAnimationLock                               ;AAB87B;
    dw $0001,ExtendedSpritemap_Torizo_Blank                              ;AAB87D;
    dw Instruction_Torizo_FunctionInY                                    ;AAB881;
    dw Function_Torizo_WakeWhenBombTorizoChozoFinishesCrumbling          ;AAB883;
    dw Instruction_Common_Sleep                                          ;AAB885;
    dw Instruction_Torizo_FunctionInY                                    ;AAB887;
    dw Function_Torizo_SimpleMovement                                    ;AAB889;
    dw $0050,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AAB88B;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB88F;
    dw $0040 : dl Tiles_Torizo : dw $7D80                                ;AAB891;
    dw $0019,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AAB896;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB89C;
    dw $0040 : dl Tiles_Torizo_AAB2B9 : dw $7D80                         ;AAB89E;
    dw $000A,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AAB8A3;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB8A9;
    dw $0040 : dl Tiles_Torizo_AAB2F9 : dw $7D80                         ;AAB8AB;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AAB8B0;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB8B6;
    dw $0040 : dl Tiles_Torizo_AAB339 : dw $7D80                         ;AAB8B8;
    dw $0019,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AAB8BD;
    dw Instruction_Common_TimerInY,$0002                                 ;AAB8C3;

InstList_Torizo_BombTorizo_Initial_1:
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AAB8C7;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB8CB;
    dw $0040 : dl Tiles_Torizo : dw $7D80                                ;AAB8CD;
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AAB8D6;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB8D8;
    dw $0040 : dl Tiles_Torizo_AAB2B9 : dw $7D80                         ;AAB8DA;
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AAB8E3;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB8E5;
    dw $0040 : dl Tiles_Torizo_AAB2F9 : dw $7D80                         ;AAB8E7;
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AAB8F0;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAB8F2;
    dw $0040 : dl Tiles_Torizo_AAB339 : dw $7D80                         ;AAB8F4;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AAB8FB;
    dw InstList_Torizo_BombTorizo_Initial_1                              ;AAB8FD;
    dw $0028,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AAB8FF;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0000              ;AAB903;
    dw $000A,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_1      ;AAB905;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0002              ;AAB90B;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_2      ;AAB90D;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0004              ;AAB913;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_3      ;AAB915;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0006              ;AAB91B;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_4      ;AAB91D;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0008              ;AAB923;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_5      ;AAB925;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$000A              ;AAB92B;
    dw Instruction_Torizo_SetupPaletteTransitionToNormalTorizo           ;AAB92F;
    dw Instruction_Common_TimerInY,$0010                                 ;AAB931;

InstList_Torizo_BombTorizo_Initial_2:
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_6      ;AAB935;
    dw Instruction_Torizo_AdvanceGradualColorChange                      ;AAB939;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AAB93B;
    dw InstList_Torizo_BombTorizo_Initial_2                              ;AAB93D;
    dw RTL_AAC2C8                                                        ;AAB93F;
    dw Instruction_Torizo_ClearAnimationLock                             ;AAB941;
    dw Instruction_Torizo_StartFightMusic_BombTorizoBellyPaletteFX       ;AAB943;
    dw $000A,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_6      ;AAB945;
    dw Instruction_Common_GotoY                                          ;AAB949;
    dw InstList_Torizo_FacingLeft_Walking_LeftLegMoving                  ;AAB94B;


Instruction_Torizo_SetupPaletteTransitionToNormalTorizo:
    JSR.W LoadNormalTorizoTargetPalettes                                 ;AAB94D;
    RTL                                                                  ;AAB950;


Instruction_Torizo_StartFightMusic_BombTorizoBellyPaletteFX:
    LDA.W TorizoMusicTracks_song0                                        ;AAB951;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;AAB954;
    PHY                                                                  ;AAB958;
    LDY.W #PaletteFXObjects_BombTorizoBelly                              ;AAB959;
    JSL.L Spawn_PaletteFXObject                                          ;AAB95C;
    PLY                                                                  ;AAB960;
    RTL                                                                  ;AAB961;


InstList_Torizo_FacingLeft_TurningLeft:
    dw Instruction_Torizo_FunctionInY                                    ;AAB962;
    dw Function_Torizo_SimpleMovement                                    ;AAB964;
    dw Instruction_Torizo_SetTorizoTurningAroundFlag                     ;AAB966;
    dw $0014,ExtendedSpritemaps_Torizo_FacingScreen_Turning_Dodging      ;AAB968;

InstList_Torizo_FacingLeft_Walking_RightLegMoving:
    dw Instruction_Torizo_SetSteppedLeftWithLeftFootState                ;AAB96C;
    dw Instruction_Torizo_FunctionInY                                    ;AAB96E;
    dw Function_Torizo_NormalMovement                                    ;AAB970;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAB972;
    dw Function_Torizo_Movement_Walking                                  ;AAB974;
    dw Instruction_Torizo_SpawnLowHealthInitialDroolIfHealthIsLow        ;AAB976;
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AAB978;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_0      ;AAB97A;
    dw Instruction_Torizo_CallYIfSamusIsLessThan38PixelsInFront          ;AAB97E;
    dw InstList_Torizo_FacingLeft_ExplosiveSwipe_LeftFootForward         ;AAB980;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AAB982;
    dw InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_0      ;AAB984;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$0002 ;AAB986;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_1      ;AAB988;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AAB98E;
    dw InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_0      ;AAB990;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$0004 ;AAB992;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_2      ;AAB994;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AAB99A;
    dw InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_0      ;AAB99C;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$0006 ;AAB99E;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_3      ;AAB9A0;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AAB9A6;
    dw InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_0      ;AAB9A8;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$0008 ;AAB9AA;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_4      ;AAB9AC;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$000A ;AAB9B2;

InstList_Torizo_FacingLeft_Walking_LeftLegMoving:
    dw Instruction_Torizo_SetSteppedLeftWithRightFootState               ;AAB9B6;
    dw Instruction_Torizo_FunctionInY                                    ;AAB9B8;
    dw Function_Torizo_NormalMovement                                    ;AAB9BA;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAB9BC;
    dw Function_Torizo_Movement_Walking                                  ;AAB9BE;
    dw Instruction_Torizo_SpawnLowHealthInitialDroolIfHealthIsLow        ;AAB9C0;
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AAB9C2;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_0       ;AAB9C4;
    dw Instruction_Torizo_CallYIfSamusIsLessThan38PixelsInFront          ;AAB9C8;
    dw InstList_Torizo_FacingLeft_ExplosiveSwipe_RightFootForward        ;AAB9CA;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AAB9CC;
    dw InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_0         ;AAB9CE;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$000C ;AAB9D0;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_1       ;AAB9D2;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AAB9D8;
    dw InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_0         ;AAB9DA;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$000E ;AAB9DC;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_2       ;AAB9DE;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AAB9E4;
    dw InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_0         ;AAB9E6;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$0010 ;AAB9E8;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_3       ;AAB9EA;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AAB9F0;
    dw InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_0         ;AAB9F2;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$0012 ;AAB9F4;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_4       ;AAB9F6;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$0000 ;AAB9FC;
    dw Instruction_Common_GotoY                                          ;AABA00;
    dw InstList_Torizo_FacingLeft_Walking_RightLegMoving                 ;AABA02;

InstList_Torizo_FacingLeft_SpewingChozoOrbs_RightFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABA04;
    dw Function_Torizo_Movement_Attacking                                ;AABA06;
    dw $000A,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_RightFootForward ;AABA08;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_0  ;AABA0C;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_1  ;AABA10;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_2  ;AABA14;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_3  ;AABA18;
    dw $000A,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_4  ;AABA1C;
    dw Instruction_Torizo_PlayShotTorizoSFX                              ;AABA20;
    dw Instruction_Common_TimerInY,$0003                                 ;AABA22;

InstList_Torizo_FacingLeft_SpewingChozoOrbs_RightFootFwd_1:
    dw Instruction_Torizo_SpawnBombTorizosChozoOrbs                      ;AABA26;
    dw Instruction_Common_WaitYFrames,$000A                              ;AABA28;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AABA2C;
    dw InstList_Torizo_FacingLeft_SpewingChozoOrbs_RightFootFwd_1        ;AABA2E;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_3  ;AABA30;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_2  ;AABA34;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_1  ;AABA38;
    dw $003C,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_0  ;AABA3C;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABA40;
    dw Function_Torizo_Movement_Walking                                  ;AABA42;
    dw Instruction_Torizo_Return                                         ;AABA44;

InstList_Torizo_FacingLeft_SpewingChozoOrbs_LeftFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABA46;
    dw Function_Torizo_Movement_Attacking                                ;AABA48;
    dw $000A,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_LeftFootForward  ;AABA4A;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_0   ;AABA4E;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_1   ;AABA52;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_2   ;AABA56;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_3   ;AABA5A;
    dw $000A,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_4   ;AABA5E;
    dw Instruction_Torizo_PlayShotTorizoSFX                              ;AABA62;
    dw Instruction_Common_TimerInY,$0003                                 ;AABA64;

InstList_Torizo_FacingLeft_SpewingChozoOrbs_LeftFootFwd_1:
    dw Instruction_Torizo_SpawnBombTorizosChozoOrbs                      ;AABA68;
    dw Instruction_Common_WaitYFrames,$000A                              ;AABA6A;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AABA6E;
    dw InstList_Torizo_FacingLeft_SpewingChozoOrbs_LeftFootFwd_1         ;AABA70;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_3   ;AABA72;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_2   ;AABA76;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_1   ;AABA7A;
    dw $003C,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_0   ;AABA7E;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABA82;
    dw Function_Torizo_Movement_Walking                                  ;AABA84;
    dw Instruction_Torizo_Return                                         ;AABA86;

InstList_Torizo_FacingLeft_SonicBooms_RightFootForward_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABA88;
    dw Function_Torizo_Movement_Attacking                                ;AABA8A;
    dw Instruction_Common_TimerInY,$0004                                 ;AABA8C;

InstList_Torizo_FacingLeft_SonicBooms_RightFootForward_1:
    dw $0005,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_RightFootForward ;AABA90;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_0 ;AABA94;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_1 ;AABA98;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_2 ;AABA9C;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_3 ;AABAA0;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_4 ;AABAA4;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_3 ;AABAA8;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_2 ;AABAAC;
    dw Instruction_Torizo_SpawnBombTorizoSonicBoomWithParameterY,$0000   ;AABAB0;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_1 ;AABAB2;
    dw $0014,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_0 ;AABAB8;
    dw $0005,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_RightFootForward ;AABABC;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_5 ;AABAC0;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_0 ;AABAC4;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_1 ;AABAC8;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_2 ;AABACC;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_3 ;AABAD0;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_2 ;AABAD4;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_1 ;AABAD8;
    dw Instruction_Torizo_SpawnBombTorizoSonicBoomWithParameterY,$0001   ;AABADC;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_0 ;AABADE;
    dw $002D,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_5 ;AABAE4;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AABAE8;
    dw InstList_Torizo_FacingLeft_SonicBooms_RightFootForward_1          ;AABAEA;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABAEC;
    dw Function_Torizo_Movement_Walking                                  ;AABAEE;
    dw Instruction_Torizo_Return                                         ;AABAF0;

InstList_Torizo_FacingLeft_SonicBooms_LeftFootForward_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABAF2;
    dw Function_Torizo_Movement_Attacking                                ;AABAF4;
    dw Instruction_Common_TimerInY,$0004                                 ;AABAF6;

InstList_Torizo_FacingLeft_SonicBooms_LeftFootForward_1:
    dw $0005,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_LeftFootForward  ;AABAFA;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_0 ;AABAFE;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_1 ;AABB02;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_2 ;AABB06;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_3 ;AABB0A;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_4 ;AABB0E;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_3 ;AABB12;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_2 ;AABB16;
    dw Instruction_Torizo_SpawnBombTorizoSonicBoomWithParameterY,$0000   ;AABB1A;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_1 ;AABB1C;
    dw $0014,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_0 ;AABB22;
    dw $0005,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_LeftFootForward  ;AABB26;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_5 ;AABB2A;
    dw $0005,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_0  ;AABB2E;
    dw $0005,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_1  ;AABB32;
    dw $0005,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_2  ;AABB36;
    dw $0005,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_3  ;AABB3A;
    dw $0002,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_2  ;AABB3E;
    dw $0002,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_1  ;AABB42;
    dw Instruction_Torizo_SpawnBombTorizoSonicBoomWithParameterY,$0001   ;AABB46;
    dw $0002,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_0  ;AABB4A;
    dw $002D,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_5 ;AABB4E;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AABB52;
    dw InstList_Torizo_FacingLeft_SonicBooms_LeftFootForward_1           ;AABB54;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABB56;
    dw Function_Torizo_Movement_Walking                                  ;AABB58;
    dw Instruction_Torizo_Return                                         ;AABB5A;

InstList_Torizo_FacingLeft_ExplosiveSwipe_RightFootForward:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABB5C;
    dw Function_Torizo_Movement_Attacking                                ;AABB5E;
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_RightFootForward ;AABB60;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_0 ;AABB64;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_1 ;AABB68;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_2 ;AABB6C;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_3 ;AABB70;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0000  ;AABB74;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_4 ;AABB76;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0002  ;AABB7C;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_3 ;AABB7E;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0004  ;AABB84;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_2 ;AABB86;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0006  ;AABB8C;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_1 ;AABB8E;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0008  ;AABB94;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_0 ;AABB96;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$000A  ;AABB9C;
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_RightFootForward ;AABB9E;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_5 ;AABBA4;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_0 ;AABBA8;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_1 ;AABBAC;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_2 ;AABBB0;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$000C  ;AABBB4;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_3 ;AABBB6;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$000E  ;AABBBC;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_2 ;AABBBE;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0010  ;AABBC4;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_1 ;AABBC6;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0012  ;AABBCC;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_0 ;AABBCE;
    dw $000A,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_5 ;AABBD4;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABBD8;
    dw Function_Torizo_Movement_Walking                                  ;AABBDA;
    dw Instruction_Torizo_Return                                         ;AABBDC;

InstList_Torizo_FacingLeft_ExplosiveSwipe_LeftFootForward:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABBDE;
    dw Function_Torizo_Movement_Attacking                                ;AABBE0;
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_LeftFootForward  ;AABBE2;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_0 ;AABBE6;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_1 ;AABBEA;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_2 ;AABBEE;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_3 ;AABBF2;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0000  ;AABBF6;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_4 ;AABBF8;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0002  ;AABBFE;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_3 ;AABC00;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0004  ;AABC06;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_2 ;AABC08;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0006  ;AABC0E;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_1 ;AABC10;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0008  ;AABC16;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_0 ;AABC18;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$000A  ;AABC1E;
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_LeftFootForward  ;AABC20;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_5 ;AABC26;
    dw $0003,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_0  ;AABC2A;
    dw $0003,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_1  ;AABC2E;
    dw $0003,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_2  ;AABC32;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$000C  ;AABC36;
    dw $0003,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_3  ;AABC38;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$000E  ;AABC3E;
    dw $0001,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_2  ;AABC40;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0010  ;AABC46;
    dw $0001,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_1  ;AABC48;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0012  ;AABC4E;
    dw $0001,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_0  ;AABC50;
    dw $000A,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_5 ;AABC56;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABC5A;
    dw Function_Torizo_Movement_Walking                                  ;AABC5C;
    dw Instruction_Torizo_Return                                         ;AABC5E;

InstList_Torizo_FacingLeft_JumpingForwards_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABC60;
    dw Function_Torizo_Movement_Jumping_Falling                          ;AABC62;
    dw Instruction_Torizo_LinkInstructionInY                             ;AABC64;
    dw InstList_Torizo_FacingLeft_Falling_0                              ;AABC66;
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_0      ;AABC68;
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_1      ;AABC6C;

InstList_Torizo_FacingLeft_JumpingForwards_1:
    dw $0001,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_2      ;AABC70;
    dw Instruction_Torizo_GotoY_IfRising                                 ;AABC74;
    dw InstList_Torizo_FacingLeft_JumpingForwards_1                      ;AABC76;

InstList_Torizo_FacingLeft_Falling_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABC78;
    dw Function_Torizo_Movement_Jumping_Falling                          ;AABC7A;
    dw Instruction_Torizo_LinkInstructionInY                             ;AABC7C;
    dw InstList_Torizo_FacingLeft_Falling_2                              ;AABC7E;

InstList_Torizo_FacingLeft_Falling_1:
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_1      ;AABC80;
    dw Instruction_Common_GotoY                                          ;AABC84;
    dw InstList_Torizo_FacingLeft_Falling_1                              ;AABC86;

InstList_Torizo_FacingLeft_Falling_2:
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AABC88;
    dw Instruction_Torizo_SpawnTorizoLandingDustClouds                   ;AABC8A;
    dw Instruction_Torizo_GotoY_IfFaceBlownUp_ElseGotoY2_IfGolden        ;AABC8C;
    dw InstList_Torizo_FacingLeft_Faceless_Walking_LeftLegMoving         ;AABC8E;
    dw InstList_GoldenTorizo_WalkingLeft_LeftLegMoving                   ;AABC90;
    dw Instruction_Common_GotoY                                          ;AABC92;
    dw InstList_Torizo_FacingLeft_Walking_LeftLegMoving                  ;AABC94;

InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABC96;
    dw Function_Torizo_Movement_Jumping_Falling                          ;AABC98;
    dw Instruction_Torizo_LinkInstructionInY                             ;AABC9A;
    dw InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_2      ;AABC9C;
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_0      ;AABC9E;
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_1      ;AABCA2;

InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_1:
    dw $0001,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_2      ;AABCA6;
    dw Instruction_Torizo_GotoY_IfRising                                 ;AABCAA;
    dw InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_1      ;AABCAC;

InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_2:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABCAE;
    dw Function_Torizo_Movement_Jumping_Falling                          ;AABCB0;
    dw Instruction_Torizo_LinkInstructionInY                             ;AABCB2;
    dw InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_4      ;AABCB4;

InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_3:
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_1      ;AABCB6;
    dw Instruction_Common_GotoY                                          ;AABCBA;
    dw InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_3      ;AABCBC;

InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_4:
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AABCBE;
    dw Instruction_Torizo_SpawnTorizoLandingDustClouds                   ;AABCC0;
    dw Instruction_Torizo_GotoY_IfFaceBlownUp_ElseGotoY2_IfGolden        ;AABCC2;
    dw InstList_Torizo_FacingLeft_Faceless_Walking_RightLegMoving        ;AABCC4;
    dw InstList_GT_LandedFromBackwardsJump_FacingLeft_LeftFootFwd        ;AABCC6;
    dw Instruction_Torizo_CallY_OrY2_ForBombTorizoAttack                 ;AABCC8;
    dw InstList_Torizo_FacingLeft_SpewingChozoOrbs_LeftFootFwd_0         ;AABCCA;
    dw InstList_Torizo_FacingLeft_SonicBooms_LeftFootForward_0           ;AABCCC;
    dw Instruction_Common_GotoY                                          ;AABCCE;
    dw InstList_Torizo_FacingLeft_Walking_RightLegMoving                 ;AABCD0;

InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABCD2;
    dw Function_Torizo_Movement_Jumping_Falling                          ;AABCD4;
    dw Instruction_Torizo_LinkInstructionInY                             ;AABCD6;
    dw InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_2         ;AABCD8;
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_0      ;AABCDA;
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_1      ;AABCDE;

InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_1:
    dw $0001,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_2      ;AABCE2;
    dw Instruction_Torizo_GotoY_IfRising                                 ;AABCE6;
    dw InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_1         ;AABCE8;

InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_2:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABCEA;
    dw Function_Torizo_Movement_Jumping_Falling                          ;AABCEC;
    dw Instruction_Torizo_LinkInstructionInY                             ;AABCEE;
    dw InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_4         ;AABCF0;

InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_3:
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingLeft_1      ;AABCF2;
    dw Instruction_Common_GotoY                                          ;AABCF6;
    dw InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_3         ;AABCF8;

InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_4:
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AABCFA;
    dw Instruction_Torizo_SpawnTorizoLandingDustClouds                   ;AABCFC;
    dw Instruction_Torizo_GotoY_IfFaceBlownUp_ElseGotoY2_IfGolden        ;AABCFE;
    dw InstList_Torizo_FacingLeft_Faceless_Walking_LeftLegMoving         ;AABD00;
    dw InstList_GT_LandedFromBackwardsJump_FacingLeft_RightFootFwd       ;AABD02;
    dw Instruction_Torizo_CallY_OrY2_ForBombTorizoAttack                 ;AABD04;
    dw InstList_Torizo_FacingLeft_SpewingChozoOrbs_RightFootFwd_0        ;AABD06;
    dw InstList_Torizo_FacingLeft_SonicBooms_RightFootForward_0          ;AABD08;
    dw Instruction_Common_GotoY                                          ;AABD0A;
    dw InstList_Torizo_FacingLeft_Walking_LeftLegMoving                  ;AABD0C;

InstList_Torizo_FacingLeft_Faceless_TurningLeft:
    dw Instruction_Torizo_FunctionInY                                    ;AABD0E;
    dw Function_Torizo_SimpleMovement                                    ;AABD10;
    dw Instruction_Torizo_SetTorizoTurningAroundFlag                     ;AABD12;
    dw $0005,ExtendedSpritemaps_Torizo_FacingScreen_Turning_Dodging      ;AABD14;

InstList_Torizo_FacingLeft_Faceless_Walking_RightLegMoving:
    dw Instruction_Torizo_SetSteppedLeftWithLeftFootState                ;AABD18;
    dw Instruction_Torizo_FunctionInY                                    ;AABD1A;
    dw Function_Torizo_NormalMovement                                    ;AABD1C;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABD1E;
    dw Function_Torizo_Movement_Walking                                  ;AABD20;
    dw Instruction_Torizo_SpawnLowHealthInitialDroolIfHealthIsLow        ;AABD22;
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AABD24;
    dw $0001,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_0      ;AABD26;
    dw Instruction_Torizo_CallYIfSamusIsLessThan38PixelsInFront          ;AABD2A;
    dw InstList_Torizo_FacingLeft_ExplosiveSwipe_LeftFootForward         ;AABD2C;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$0002      ;AABD2E;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_1      ;AABD30;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$0004      ;AABD36;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_2      ;AABD38;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$0006      ;AABD3E;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_3      ;AABD40;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$0008      ;AABD46;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_4      ;AABD48;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$000A      ;AABD4E;

InstList_Torizo_FacingLeft_Faceless_Walking_LeftLegMoving:
    dw Instruction_Torizo_SetSteppedLeftWithRightFootState               ;AABD52;
    dw Instruction_Torizo_FunctionInY                                    ;AABD54;
    dw Function_Torizo_NormalMovement                                    ;AABD56;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABD58;
    dw Function_Torizo_Movement_Walking                                  ;AABD5A;
    dw Instruction_Torizo_SpawnLowHealthInitialDroolIfHealthIsLow        ;AABD5C;
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AABD5E;
    dw $0001,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_0       ;AABD60;
    dw Instruction_Torizo_CallYIfSamusIsLessThan38PixelsInFront          ;AABD64;
    dw InstList_Torizo_FacingLeft_ExplosiveSwipe_RightFootForward        ;AABD66;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$000C      ;AABD68;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_1       ;AABD6A;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$000E      ;AABD70;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_2       ;AABD72;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$0010      ;AABD78;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_3       ;AABD7A;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$0012      ;AABD80;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_4       ;AABD82;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$0000      ;AABD88;
    dw Instruction_Common_GotoY                                          ;AABD8C;
    dw InstList_Torizo_FacingLeft_Faceless_Walking_RightLegMoving        ;AABD8E;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_InstList_Torizo_FacingRight_StandUp_AABD90:
    dw Instruction_Torizo_SetSteppedRightWithLeftFootState               ;AABD90;
    dw $0001                                                             ;AABD92;
    dw ExtendedSpritemap_Torizo_Blank                                    ;AABD94;
    dw Instruction_Torizo_FunctionInY                                    ;AABD96;
    dw Function_Torizo_WakeWhenBombTorizoChozoFinishesCrumbling          ;AABD98;
    dw Instruction_Common_Sleep                                          ;AABD9A;
    dw Instruction_Torizo_FunctionInY                                    ;AABD9C;
    dw Function_Torizo_SimpleMovement                                    ;AABD9E;
    dw $0020,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_0     ;AABDA0;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0010              ;AABDA4;
    dw $0010,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_1     ;AABDA6;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0012              ;AABDAC;
    dw $0008,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_2     ;AABDAE;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0014              ;AABDB4;
    dw $0008,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_3     ;AABDB6;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0016              ;AABDBC;
    dw $0008,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_4     ;AABDBE;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0018              ;AABDC4;
    dw $0008,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_5     ;AABDC6;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$001A              ;AABDCC;
    dw $0008,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_6     ;AABDCE;
    dw Instruction_Common_GotoY                                          ;AABDD4;
    dw InstList_Torizo_FacingRight_Walking_RightLegMoving                ;AABDD6;
endif ; !FEATURE_KEEP_UNREFERENCED

InstList_Torizo_FacingRight_TurningRight:
    dw Instruction_Torizo_FunctionInY                                    ;AABDD8;
    dw Function_Torizo_SimpleMovement                                    ;AABDDA;
    dw Instruction_Torizo_SetTorizoTurningAroundFlag                     ;AABDDC;
    dw $0014,ExtendedSpritemaps_Torizo_FacingScreen_Turning_Dodging      ;AABDDE;

InstList_Torizo_FacingRight_Walking_LeftLegMoving:
    dw Instruction_Torizo_SetSteppedRightWithRightFootState              ;AABDE2;
    dw Instruction_Torizo_FunctionInY                                    ;AABDE4;
    dw Function_Torizo_NormalMovement                                    ;AABDE6;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABDE8;
    dw Function_Torizo_Movement_Walking                                  ;AABDEA;
    dw Instruction_Torizo_SpawnLowHealthInitialDroolIfHealthIsLow        ;AABDEC;
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AABDEE;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_0      ;AABDF0;
    dw Instruction_Torizo_CallYIfSamusIsLessThan38PixelsInFront          ;AABDF4;
    dw InstList_Torizo_FacingRight_ExplosiveSwipe_RightFootForward       ;AABDF6;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AABDF8;
    dw InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_0       ;AABDFA;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$0016 ;AABDFC;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_1      ;AABDFE;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AABE04;
    dw InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_0       ;AABE06;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$0018 ;AABE08;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_2      ;AABE0A;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AABE10;
    dw InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_0       ;AABE12;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$001A ;AABE14;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_3      ;AABE16;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AABE1C;
    dw InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_0       ;AABE1E;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$001C ;AABE20;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_4      ;AABE22;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AABE28;
    dw InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_0       ;AABE2A;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$001E ;AABE2C;

InstList_Torizo_FacingRight_Walking_RightLegMoving:
    dw Instruction_Torizo_SetSteppedRightWithLeftFootState               ;AABE30;
    dw Instruction_Torizo_FunctionInY                                    ;AABE32;
    dw Function_Torizo_NormalMovement                                    ;AABE34;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABE36;
    dw Function_Torizo_Movement_Walking                                  ;AABE38;
    dw Instruction_Torizo_SpawnLowHealthInitialDroolIfHealthIsLow        ;AABE3A;
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AABE3C;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_0     ;AABE3E;
    dw Instruction_Torizo_CallYIfSamusIsLessThan38PixelsInFront          ;AABE42;
    dw InstList_Torizo_FacingRight_ExplosiveSwipe_LeftFootForward        ;AABE44;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AABE46;
    dw InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_0       ;AABE48;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$0020 ;AABE4A;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_1     ;AABE4C;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AABE52;
    dw InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_0       ;AABE54;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$0022 ;AABE56;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_2     ;AABE58;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AABE5E;
    dw InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_0       ;AABE60;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$0024 ;AABE62;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_3     ;AABE64;
    dw Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels        ;AABE6A;
    dw InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_0       ;AABE6C;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$0026 ;AABE6E;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_4     ;AABE70;
    dw Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY,$0014 ;AABE76;
    dw Instruction_Common_GotoY                                          ;AABE7A;
    dw InstList_Torizo_FacingRight_Walking_LeftLegMoving                 ;AABE7C;

InstList_Torizo_FacingRight_SpewingChozoOrbs_LeftFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABE7E;
    dw Function_Torizo_Movement_Attacking                                ;AABE80;
    dw $000A,ExtendedSpritemaps_Torizo_Attacks_FaceRight_LeftFootForward ;AABE82;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_0  ;AABE86;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_1  ;AABE8A;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_2  ;AABE8E;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_3  ;AABE92;
    dw $000A,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_4  ;AABE96;
    dw Instruction_Torizo_PlayShotTorizoSFX                              ;AABE9A;
    dw Instruction_Common_TimerInY,$0003                                 ;AABE9C;

InstList_Torizo_FacingRight_SpewingChozoOrbs_LeftFootFwd_1:
    dw Instruction_Torizo_SpawnBombTorizosChozoOrbs                      ;AABEA0;
    dw Instruction_Common_WaitYFrames,$000A                              ;AABEA2;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AABEA6;
    dw InstList_Torizo_FacingRight_SpewingChozoOrbs_LeftFootFwd_1        ;AABEA8;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_3  ;AABEAA;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_2  ;AABEAE;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_1  ;AABEB2;
    dw $003C,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_0  ;AABEB6;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABEBA;
    dw Function_Torizo_Movement_Walking                                  ;AABEBC;
    dw Instruction_Torizo_Return                                         ;AABEBE;

InstList_Torizo_FacingRight_SpewingChozoOrbs_RightFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABEC0;
    dw Function_Torizo_Movement_Attacking                                ;AABEC2;
    dw $000A,ExtendedSpritemaps_Torizo_Attacks_FaceRight_RightFootForward ;AABEC4;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_0 ;AABEC8;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_1 ;AABECC;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_2 ;AABED0;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_3 ;AABED4;
    dw $000A,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_4 ;AABED8;
    dw Instruction_Torizo_PlayShotTorizoSFX                              ;AABEDC;
    dw Instruction_Common_TimerInY,$0003                                 ;AABEDE;

InstList_Torizo_FacingRight_SpewingChozoOrbs_RightFootFwd_1:
    dw Instruction_Torizo_SpawnBombTorizosChozoOrbs                      ;AABEE2;
    dw Instruction_Common_WaitYFrames,$000A                              ;AABEE4;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AABEE8;
    dw InstList_Torizo_FacingRight_SpewingChozoOrbs_RightFootFwd_1       ;AABEEA;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_3 ;AABEEC;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_2 ;AABEF0;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_1 ;AABEF4;
    dw $003C,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_0 ;AABEF8;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABEFC;
    dw Function_Torizo_Movement_Walking                                  ;AABEFE;
    dw Instruction_Torizo_Return                                         ;AABF00;

InstList_Torizo_FacingRight_SonicBooms_LeftFootForward_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABF02;
    dw Function_Torizo_Movement_Attacking                                ;AABF04;
    dw Instruction_Common_TimerInY,$0004                                 ;AABF06;

InstList_Torizo_FacingRight_SonicBooms_LeftFootForward_1:
    dw $0005,ExtendedSpritemaps_Torizo_Attacks_FaceRight_LeftFootForward ;AABF0A;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_0   ;AABF0E;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_1   ;AABF12;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_2   ;AABF16;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_3   ;AABF1A;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_4   ;AABF1E;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_3   ;AABF22;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_2   ;AABF26;
    dw Instruction_Torizo_SpawnBombTorizoSonicBoomWithParameterY,$0000   ;AABF2A;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_1   ;AABF2C;
    dw $0014,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_0   ;AABF32;
    dw $0005,ExtendedSpritemaps_Torizo_Attacks_FaceRight_LeftFootForward ;AABF36;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_5   ;AABF3A;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_6   ;AABF3E;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_7   ;AABF42;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_8   ;AABF46;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_9   ;AABF4A;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_8   ;AABF4E;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_7   ;AABF52;
    dw Instruction_Torizo_SpawnBombTorizoSonicBoomWithParameterY,$0001   ;AABF56;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_6   ;AABF58;
    dw $002D,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_5   ;AABF5E;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AABF62;
    dw InstList_Torizo_FacingRight_SonicBooms_LeftFootForward_1          ;AABF64;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABF66;
    dw Function_Torizo_Movement_Walking                                  ;AABF68;
    dw Instruction_Torizo_Return                                         ;AABF6A;

InstList_Torizo_FacingRight_SonicBooms_RightFootForward_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABF6C;
    dw Function_Torizo_Movement_Attacking                                ;AABF6E;
    dw Instruction_Common_TimerInY,$0004                                 ;AABF70;

InstList_Torizo_FacingRight_SonicBooms_RightFootForward_1:
    dw $0005,ExtendedSpritemaps_Torizo_Attacks_FaceRight_RightFootForward ;AABF74;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_0  ;AABF78;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_1  ;AABF7C;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_2  ;AABF80;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_3  ;AABF84;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_4  ;AABF88;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_3  ;AABF8C;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_2  ;AABF90;
    dw Instruction_Torizo_SpawnBombTorizoSonicBoomWithParameterY,$0000   ;AABF94;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_1  ;AABF96;
    dw $0014,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_0  ;AABF9C;
    dw $0005,ExtendedSpritemaps_Torizo_Attacks_FaceRight_RightFootForward ;AABFA0;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_5  ;AABFA4;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_6  ;AABFA8;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_7  ;AABFAC;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_8  ;AABFB0;
    dw $0005,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_9  ;AABFB4;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_8  ;AABFB8;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_7  ;AABFBC;
    dw Instruction_Torizo_SpawnBombTorizoSonicBoomWithParameterY,$0001   ;AABFC0;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_6  ;AABFC2;
    dw $002D,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_5  ;AABFC8;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AABFCC;
    dw InstList_Torizo_FacingRight_SonicBooms_RightFootForward_1         ;AABFCE;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABFD0;
    dw Function_Torizo_Movement_Walking                                  ;AABFD2;
    dw Instruction_Torizo_Return                                         ;AABFD4;

InstList_Torizo_FacingRight_ExplosiveSwipe_LeftFootForward:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AABFD6;
    dw Function_Torizo_Movement_Attacking                                ;AABFD8;
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceRight_LeftFootForward ;AABFDA;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_0   ;AABFDE;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_1   ;AABFE2;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_2   ;AABFE6;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_3   ;AABFEA;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0000  ;AABFEE;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_4   ;AABFF0;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0002  ;AABFF6;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_3   ;AABFF8;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0004  ;AABFFE;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_2   ;AAC000;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0006  ;AAC006;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_1   ;AAC008;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0008  ;AAC00E;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_0   ;AAC010;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$000A  ;AAC016;
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceRight_LeftFootForward ;AAC018;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_5   ;AAC01E;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_6   ;AAC022;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_7   ;AAC026;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_8   ;AAC02A;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$000C  ;AAC02E;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_9   ;AAC030;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$000E  ;AAC036;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_8   ;AAC038;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0010  ;AAC03E;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_7   ;AAC040;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0012  ;AAC046;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_6   ;AAC048;
    dw $000A,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_5   ;AAC04E;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAC052;
    dw Function_Torizo_Movement_Walking                                  ;AAC054;
    dw Instruction_Torizo_Return                                         ;AAC056;

InstList_Torizo_FacingRight_ExplosiveSwipe_RightFootForward:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAC058;
    dw Function_Torizo_Movement_Attacking                                ;AAC05A;
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceRight_RightFootForward ;AAC05C;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_0  ;AAC060;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_1  ;AAC064;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_2  ;AAC068;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_3  ;AAC06C;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0000  ;AAC070;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_4  ;AAC072;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0002  ;AAC078;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_3  ;AAC07A;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0004  ;AAC080;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_2  ;AAC082;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0006  ;AAC088;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_1  ;AAC08A;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0008  ;AAC090;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_0  ;AAC092;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$000A  ;AAC098;
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceRight_RightFootForward ;AAC09A;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_5  ;AAC0A0;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_6  ;AAC0A4;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_7  ;AAC0A8;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_8  ;AAC0AC;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$000C  ;AAC0B0;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_9  ;AAC0B2;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$000E  ;AAC0B8;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_8  ;AAC0BA;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0010  ;AAC0C0;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_7  ;AAC0C2;
    dw Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY,$0012  ;AAC0C8;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_6  ;AAC0CA;
    dw $000A,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_5  ;AAC0D0;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAC0D4;
    dw Function_Torizo_Movement_Walking                                  ;AAC0D6;
    dw Instruction_Torizo_Return                                         ;AAC0D8;

InstList_Torizo_FacingRight_JumpingForwards_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAC0DA;
    dw Function_Torizo_Movement_Jumping_Falling                          ;AAC0DC;
    dw Instruction_Torizo_LinkInstructionInY                             ;AAC0DE;
    dw InstList_Torizo_FacingRight_Falling_0                             ;AAC0E0;
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_0     ;AAC0E2;
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_1     ;AAC0E6;

InstList_Torizo_FacingRight_JumpingForwards_1:
    dw $0001,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_2     ;AAC0EA;
    dw Instruction_Torizo_GotoY_IfRising                                 ;AAC0EE;
    dw InstList_Torizo_FacingRight_JumpingForwards_1                     ;AAC0F0;

InstList_Torizo_FacingRight_Falling_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAC0F2;
    dw Function_Torizo_Movement_Jumping_Falling                          ;AAC0F4;
    dw Instruction_Torizo_LinkInstructionInY                             ;AAC0F6;
    dw InstList_Torizo_FacingRight_Falling_2                             ;AAC0F8;

InstList_Torizo_FacingRight_Falling_1:
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_1     ;AAC0FA;
    dw Instruction_Common_GotoY                                          ;AAC0FE;
    dw InstList_Torizo_FacingRight_Falling_1                             ;AAC100;

InstList_Torizo_FacingRight_Falling_2:
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AAC102;
    dw Instruction_Torizo_SpawnTorizoLandingDustClouds                   ;AAC104;
    dw Instruction_Torizo_GotoY_IfFaceBlownUp_ElseGotoY2_IfGolden        ;AAC106;
    dw InstList_Torizo_FacingRight_Faceless_Walking_RightLegMoving       ;AAC108;
    dw InstList_GoldenTorizo_WalkingRight_RightLegMoving                 ;AAC10A;
    dw Instruction_Common_GotoY                                          ;AAC10C;
    dw InstList_Torizo_FacingRight_Walking_RightLegMoving                ;AAC10E;

InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAC110;
    dw Function_Torizo_Movement_Jumping_Falling                          ;AAC112;
    dw Instruction_Torizo_LinkInstructionInY                             ;AAC114;
    dw InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_2       ;AAC116;
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_0     ;AAC118;
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_1     ;AAC11C;

InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_1:
    dw $0001,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_2     ;AAC120;
    dw Instruction_Torizo_GotoY_IfRising                                 ;AAC124;
    dw InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_1       ;AAC126;

InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_2:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAC128;
    dw Function_Torizo_Movement_Jumping_Falling                          ;AAC12A;
    dw Instruction_Torizo_LinkInstructionInY                             ;AAC12C;
    dw InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_4       ;AAC12E;

InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_3:
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_1     ;AAC130;
    dw Instruction_Common_GotoY                                          ;AAC134;
    dw InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_3       ;AAC136;

InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_4:
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AAC138;
    dw Instruction_Torizo_SpawnTorizoLandingDustClouds                   ;AAC13A;
    dw Instruction_Torizo_GotoY_IfFaceBlownUp_ElseGotoY2_IfGolden        ;AAC13C;
    dw InstList_Torizo_FacingRight_Faceless_Walking_LeftLegMoving        ;AAC13E;
    dw InstList_GT_LandedFromBackwardsJump_FacingRight_RightFootFwd      ;AAC140;
    dw Instruction_Torizo_CallY_OrY2_ForBombTorizoAttack                 ;AAC142;
    dw InstList_Torizo_FacingRight_SpewingChozoOrbs_RightFootFwd_0       ;AAC144;
    dw InstList_Torizo_FacingRight_SonicBooms_RightFootForward_0         ;AAC146;
    dw Instruction_Common_GotoY                                          ;AAC148;
    dw InstList_Torizo_FacingRight_Walking_LeftLegMoving                 ;AAC14A;

InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAC14C;
    dw Function_Torizo_Movement_Jumping_Falling                          ;AAC14E;
    dw Instruction_Torizo_LinkInstructionInY                             ;AAC150;
    dw InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_2       ;AAC152;
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_0     ;AAC154;
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_1     ;AAC158;

InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_1:
    dw $0001,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_2     ;AAC15C;
    dw Instruction_Torizo_GotoY_IfRising                                 ;AAC160;
    dw InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_1       ;AAC162;

InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_2:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAC164;
    dw Function_Torizo_Movement_Jumping_Falling                          ;AAC166;
    dw Instruction_Torizo_LinkInstructionInY                             ;AAC168;
    dw InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_4       ;AAC16A;

InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_3:
    dw $0005,ExtendedSpritemaps_Torizo_Jumping_Falling_FacingRight_1     ;AAC16C;
    dw Instruction_Common_GotoY                                          ;AAC170;
    dw InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_3       ;AAC172;

InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_4:
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AAC174;
    dw Instruction_Torizo_SpawnTorizoLandingDustClouds                   ;AAC176;
    dw Instruction_Torizo_GotoY_IfFaceBlownUp_ElseGotoY2_IfGolden        ;AAC178;
    dw InstList_Torizo_FacingRight_Faceless_Walking_RightLegMoving       ;AAC17A;
    dw InstList_GT_LandedFromBackwardsJump_FacingRight_LeftFootFwd       ;AAC17C;
    dw Instruction_Torizo_CallY_OrY2_ForBombTorizoAttack                 ;AAC17E;
    dw InstList_Torizo_FacingRight_SpewingChozoOrbs_LeftFootFwd_0        ;AAC180;
    dw InstList_Torizo_FacingRight_SonicBooms_LeftFootForward_0          ;AAC182;
    dw Instruction_Common_GotoY                                          ;AAC184;
    dw InstList_Torizo_FacingRight_Walking_RightLegMoving                ;AAC186;

InstList_Torizo_FacingRight_Faceless_TurningRight:
    dw Instruction_Torizo_FunctionInY                                    ;AAC188;
    dw Function_Torizo_SimpleMovement                                    ;AAC18A;
    dw Instruction_Torizo_SetTorizoTurningAroundFlag                     ;AAC18C;
    dw $0005,ExtendedSpritemaps_Torizo_FacingScreen_Turning_Dodging      ;AAC18E;

InstList_Torizo_FacingRight_Faceless_Walking_LeftLegMoving:
    dw Instruction_Torizo_SetSteppedRightWithRightFootState              ;AAC192;
    dw Instruction_Torizo_FunctionInY                                    ;AAC194;
    dw Function_Torizo_NormalMovement                                    ;AAC196;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAC198;
    dw Function_Torizo_Movement_Walking                                  ;AAC19A;
    dw Instruction_Torizo_SpawnLowHealthInitialDroolIfHealthIsLow        ;AAC19C;
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AAC19E;
    dw $0001,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_0      ;AAC1A0;
    dw Instruction_Torizo_CallYIfSamusIsLessThan38PixelsInFront          ;AAC1A4;
    dw InstList_Torizo_FacingRight_ExplosiveSwipe_RightFootForward       ;AAC1A6;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$0016      ;AAC1A8;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_1      ;AAC1AA;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$0018      ;AAC1B0;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_2      ;AAC1B2;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$001A      ;AAC1B8;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_3      ;AAC1BA;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$001C      ;AAC1C0;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_4      ;AAC1C2;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$001E      ;AAC1C8;

InstList_Torizo_FacingRight_Faceless_Walking_RightLegMoving:
    dw Instruction_Torizo_SetSteppedRightWithLeftFootState               ;AAC1CC;
    dw Instruction_Torizo_FunctionInY                                    ;AAC1CE;
    dw Function_Torizo_NormalMovement                                    ;AAC1D0;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAC1D2;
    dw Function_Torizo_Movement_Walking                                  ;AAC1D4;
    dw Instruction_Torizo_SpawnLowHealthInitialDroolIfHealthIsLow        ;AAC1D6;
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AAC1D8;
    dw $0001,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_0     ;AAC1DA;
    dw Instruction_Torizo_CallYIfSamusIsLessThan38PixelsInFront          ;AAC1DE;
    dw InstList_Torizo_FacingRight_ExplosiveSwipe_LeftFootForward        ;AAC1E0;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$0020      ;AAC1E2;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_1     ;AAC1E4;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$0022      ;AAC1EA;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_2     ;AAC1EC;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$0024      ;AAC1F2;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_3     ;AAC1F4;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$0026      ;AAC1FA;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_4     ;AAC1FC;
    dw Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY,$0014      ;AAC202;
    dw Instruction_Common_GotoY                                          ;AAC206;
    dw InstList_Torizo_FacingRight_Faceless_Walking_LeftLegMoving        ;AAC208;

MakeTorizoJumpForwards:
    LDA.W $0FB4,X                                                        ;AAC20A;
    BMI .facingRight                                                     ;AAC20D;
    LDA.W #$FD9C                                                         ;AAC20F;
    BRA +                                                                ;AAC212;


.facingRight:
    LDA.W #$0264                                                         ;AAC214;

  + STA.W $0FA8,X                                                        ;AAC217;
    LDA.W #$F969                                                         ;AAC21A;
    STA.W $0FAA,X                                                        ;AAC21D;
    LDA.W #$0030                                                         ;AAC220;
    STA.W $0FAC,X                                                        ;AAC223;
    LDA.W #$0001                                                         ;AAC226;
    STA.W $0F94,X                                                        ;AAC229;
    RTS                                                                  ;AAC22C;


MakeTorizoJumpBackwards:
    LDA.W $0FB4,X                                                        ;AAC22D;
    BMI .facingRight                                                     ;AAC230;
    LDA.W #$0396                                                         ;AAC232;
    BRA +                                                                ;AAC235;


.facingRight:
    LDA.W #$FC6A                                                         ;AAC237;

  + STA.W $0FA8,X                                                        ;AAC23A;
    LDA.W #$FB37                                                         ;AAC23D;
    STA.W $0FAA,X                                                        ;AAC240;
    LDA.W #$0030                                                         ;AAC243;
    STA.W $0FAC,X                                                        ;AAC246;
    LDA.W #$0001                                                         ;AAC249;
    STA.W $0F94,X                                                        ;AAC24C;
    RTS                                                                  ;AAC24F;


LoadInitialBombTorizoPalettes:
    PHX                                                                  ;AAC250;
    LDX.W #$001E                                                         ;AAC251;

.loop:
    LDA.W Palette_Torizo_InitialBombTorizo_SpritePalette2,X              ;AAC254;
    STA.L $7EC340,X                                                      ;AAC257;
    LDA.W Palette_Torizo_InitialBombTorizo_SpritePalette1,X              ;AAC25B;
    STA.L $7EC320,X                                                      ;AAC25E;
    DEX                                                                  ;AAC262;
    DEX                                                                  ;AAC263;
    BPL .loop                                                            ;AAC264;
    PLX                                                                  ;AAC266;
    RTS                                                                  ;AAC267;


LoadNormalTorizoTargetPalettes:
    PHX                                                                  ;AAC268;
    LDX.W #$001E                                                         ;AAC269;

.loop:
    LDA.W Palette_Torizo_Normal_SpritePalette2,X                         ;AAC26C;
    STA.L $7EC340,X                                                      ;AAC26F;
    LDA.W Palette_Torizo_Normal_SpritePalette1,X                         ;AAC273;
    STA.L $7EC320,X                                                      ;AAC276;
    DEX                                                                  ;AAC27A;
    DEX                                                                  ;AAC27B;
    BPL .loop                                                            ;AAC27C;
    PLX                                                                  ;AAC27E;
    RTS                                                                  ;AAC27F;


LoadInitialGoldenTorizoPalettes:
    PHX                                                                  ;AAC280;
    LDX.W #$001E                                                         ;AAC281;

.loop:
    LDA.W Palette_Torizo_InitialGoldenTorizo_SpritePalette2,X            ;AAC284;
    STA.L $7EC340,X                                                      ;AAC287;
    LDA.W Palette_Torizo_InitialGoldenTorizo_SpritePalette1,X            ;AAC28B;
    STA.L $7EC320,X                                                      ;AAC28E;
    DEX                                                                  ;AAC292;
    DEX                                                                  ;AAC293;
    BPL .loop                                                            ;AAC294;
    PLX                                                                  ;AAC296;
    RTS                                                                  ;AAC297;


LoadGoldenTorizoPalettes:
    PHX                                                                  ;AAC298;
    LDX.W #$001E                                                         ;AAC299;

.loop:
    LDA.W Palette_Torizo_GoldenTorizo_SpritePalette2,X                   ;AAC29C;
    STA.L $7EC340,X                                                      ;AAC29F;
    LDA.W Palette_Torizo_GoldenTorizo_SpritePalette1,X                   ;AAC2A3;
    STA.L $7EC320,X                                                      ;AAC2A6;
    DEX                                                                  ;AAC2AA;
    DEX                                                                  ;AAC2AB;
    BPL .loop                                                            ;AAC2AC;
    PLX                                                                  ;AAC2AE;
    RTS                                                                  ;AAC2AF;


LoadNormalTorizoPalettes:
    PHX                                                                  ;AAC2B0;
    LDX.W #$001E                                                         ;AAC2B1;

.loop:
    LDA.W Palette_Torizo_Normal_SpritePalette2,X                         ;AAC2B4;
    STA.L $7EC140,X                                                      ;AAC2B7;
    LDA.W Palette_Torizo_Normal_SpritePalette1,X                         ;AAC2BB;
    STA.L $7EC120,X                                                      ;AAC2BE;
    DEX                                                                  ;AAC2C2;
    DEX                                                                  ;AAC2C3;
    BPL .loop                                                            ;AAC2C4;
    PLX                                                                  ;AAC2C6;
    RTS                                                                  ;AAC2C7;


RTL_AAC2C8:
    RTL                                                                  ;AAC2C8;


Instruction_Torizo_SetAnimationLock:
    LDA.W #$7777                                                         ;AAC2C9;
    STA.L $7E7808,X                                                      ;AAC2CC;
    RTL                                                                  ;AAC2D0;


Instruction_Torizo_ClearAnimationLock:
    LDA.W #$0000                                                         ;AAC2D1;
    STA.L $7E7808,X                                                      ;AAC2D4;
    RTL                                                                  ;AAC2D8;


Instruction_Torizo_GotoY_IfFaceBlownUp_ElseGotoY2_IfGolden:
    BIT.W $0FB6,X                                                        ;AAC2D9;
    BVS .faceBlownUp                                                     ;AAC2DC;
    INY                                                                  ;AAC2DE;
    INY                                                                  ;AAC2DF;
    LDA.W $079F                                                          ;AAC2E0;
    BNE .faceBlownUp                                                     ;AAC2E3;
    INY                                                                  ;AAC2E5;
    INY                                                                  ;AAC2E6;
    RTL                                                                  ;AAC2E7;


.faceBlownUp:
    LDA.W $0000,Y                                                        ;AAC2E8;
    TAY                                                                  ;AAC2EB;
    RTL                                                                  ;AAC2EC;


Instruction_Torizo_LinkInstructionInY:
    LDA.W $0000,Y                                                        ;AAC2ED;
    STA.L $7E7800,X                                                      ;AAC2F0;
    INY                                                                  ;AAC2F4;
    INY                                                                  ;AAC2F5;
    RTL                                                                  ;AAC2F6;


Instruction_Torizo_Return:
    LDA.L $7E7800,X                                                      ;AAC2F7;
    TAY                                                                  ;AAC2FB;
    RTL                                                                  ;AAC2FC;


Instruction_Torizo_GotoGutExplosionLinkInstruction:
    LDA.L $7E7802,X                                                      ;AAC2FD;
    TAY                                                                  ;AAC301;
    RTL                                                                  ;AAC302;


Instruction_Torizo_Spawn5LowHealthExplosion_SleepFor28Frames:
    PHY                                                                  ;AAC303;
    LDA.W $0000,Y                                                        ;AAC304;
    PHA                                                                  ;AAC307;
    LDY.W #$0005                                                         ;AAC308;

.loop:
    PHY                                                                  ;AAC30B;
    LDA.B $03,S                                                          ;AAC30C;
    LDY.W #EnemyProjectile_BombTorizoLowHealthExplosion                  ;AAC30E;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;AAC311;
    PLY                                                                  ;AAC315;
    DEY                                                                  ;AAC316;
    BPL .loop                                                            ;AAC317;
    PLA                                                                  ;AAC319;
    PLY                                                                  ;AAC31A;
    INY                                                                  ;AAC31B;
    INY                                                                  ;AAC31C;
    TYA                                                                  ;AAC31D;
    STA.W $0F92,X                                                        ;AAC31E;
    LDA.W #$001E                                                         ;AAC321;
    STA.W $0F9C,X                                                        ;AAC324;
    STA.W $0F94,X                                                        ;AAC327;
    PLA                                                                  ;AAC32A;
    PEA.W ProcessEnemyInstructions_return-1                              ;AAC32B;
    RTL                                                                  ;AAC32E;


Instruction_Torizo_SpawnTorizoDeathExplosion_SleepFor1IFrame:
    PHY                                                                  ;AAC32F;
    LDY.W #EnemyProjectile_BombTorizoDeathExplosion                      ;AAC330;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;AAC333;
    PLY                                                                  ;AAC337;
    TYA                                                                  ;AAC338;
    STA.W $0F92,X                                                        ;AAC339;
    LDA.W #$0001                                                         ;AAC33C;
    STA.W $0F9C,X                                                        ;AAC33F;
    STA.W $0F94,X                                                        ;AAC342;
    PLA                                                                  ;AAC345;
    PEA.W ProcessEnemyInstructions_return-1                              ;AAC346;
    RTL                                                                  ;AAC349;


Instruction_Torizo_SpawnTorizoLandingDustClouds:
    PHY                                                                  ;AAC34A;
    LDY.W #EnemyProjectile_TorizoLandingDustCloud_RightFoot              ;AAC34B;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;AAC34E;
    LDY.W #EnemyProjectile_TorizoLandingDustCloud_LeftFoot               ;AAC352;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;AAC355;
    PLY                                                                  ;AAC359;
    RTL                                                                  ;AAC35A;


Instruction_Torizo_SpawnLowHealthInitialDroolIfHealthIsLow:
    LDA.W $0F8C,X                                                        ;AAC35B;
    CMP.W #$015E                                                         ;AAC35E;
    BCS .return                                                          ;AAC361;
    PHY                                                                  ;AAC363;
    LDY.W #EnemyProjectile_BombTorizoInitialDrool                        ;AAC364;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAC367;
    PLY                                                                  ;AAC36B;

.return:
    RTL                                                                  ;AAC36C;


Instruction_Torizo_SetTorizoTurningAroundFlag:
    LDA.W $0FB4,X                                                        ;AAC36D;
    ORA.W #$4000                                                         ;AAC370;
    STA.W $0FB4,X                                                        ;AAC373;
    RTL                                                                  ;AAC376;


Instruction_Torizo_SetSteppedLeftWithLeftFootState:
    LDA.W $0FB4,X                                                        ;AAC377;
    AND.W #$1FFF                                                         ;AAC37A;
    STA.W $0FB4,X                                                        ;AAC37D;
    LDA.L $7E7812,X                                                      ;AAC380;
    INC A                                                                ;AAC384;
    STA.L $7E7812,X                                                      ;AAC385;
    RTL                                                                  ;AAC389;


Instruction_Torizo_SetSteppedRightWithRightFootState:
    LDA.W $0FB4,X                                                        ;AAC38A;
    AND.W #$1FFF                                                         ;AAC38D;
    ORA.W #$8000                                                         ;AAC390;
    STA.W $0FB4,X                                                        ;AAC393;
    LDA.L $7E7812,X                                                      ;AAC396;
    INC A                                                                ;AAC39A;
    STA.L $7E7812,X                                                      ;AAC39B;
    RTL                                                                  ;AAC39F;


Instruction_Torizo_SetSteppedLeftWithRightFootState:
    LDA.W $0FB4,X                                                        ;AAC3A0;
    AND.W #$1FFF                                                         ;AAC3A3;
    ORA.W #$2000                                                         ;AAC3A6;
    STA.W $0FB4,X                                                        ;AAC3A9;
    LDA.L $7E7812,X                                                      ;AAC3AC;
    INC A                                                                ;AAC3B0;
    STA.L $7E7812,X                                                      ;AAC3B1;
    RTL                                                                  ;AAC3B5;


Instruction_Torizo_SetSteppedRightWithLeftFootState:
    LDA.W $0FB4,X                                                        ;AAC3B6;
    AND.W #$1FFF                                                         ;AAC3B9;
    ORA.W #$A000                                                         ;AAC3BC;
    STA.W $0FB4,X                                                        ;AAC3BF;
    LDA.L $7E7812,X                                                      ;AAC3C2;
    INC A                                                                ;AAC3C6;
    STA.L $7E7812,X                                                      ;AAC3C7;
    RTL                                                                  ;AAC3CB;


Instruction_Torizo_StandingUpMovement_IndexInY:
    PHY                                                                  ;AAC3CC;
    LDA.W $0000,Y                                                        ;AAC3CD;
    TAY                                                                  ;AAC3D0;
    LDA.W $0F7A,X                                                        ;AAC3D1;
    CLC                                                                  ;AAC3D4;
    ADC.W .XVelocities,Y                                                 ;AAC3D5;
    STA.W $0F7A,X                                                        ;AAC3D8;
    TYA                                                                  ;AAC3DB;
    AND.W #$000F                                                         ;AAC3DC;
    TAY                                                                  ;AAC3DF;
    LDA.W $0F7E,X                                                        ;AAC3E0;
    CLC                                                                  ;AAC3E3;
    ADC.W .YVelocities,Y                                                 ;AAC3E4;
    STA.W $0F7E,X                                                        ;AAC3E7;
    PLY                                                                  ;AAC3EA;
    INY                                                                  ;AAC3EB;
    INY                                                                  ;AAC3EC;
    RTL                                                                  ;AAC3ED;


.XVelocities:
    dw $FFF7,$FFFA,$FFF9,$0005,$FFF0,$FFF9, $0000,$0000                  ;AAC3EE; 0..Ah: Facing left
    dw $0009,$0006,$0007,$FFFB,$0010,$0007, $0000,$0000                  ;AAC3FE; 10h..1Ah: Facing right

.YVelocities:
    dw $0000,$FFFA,$FFFA,$FFF9,$0000,$0000, $0000,$0000                  ;AAC40E;

Instruction_Torizo_SittingDownMovement_IndexInY:
    PHY                                                                  ;AAC41E;
    LDA.W $0000,Y                                                        ;AAC41F;
    TAY                                                                  ;AAC422;
    LDA.W $0F7A,X                                                        ;AAC423;
    SEC                                                                  ;AAC426;
    SBC.W .negatedXVelocities,Y                                          ;AAC427;
    STA.W $0F7A,X                                                        ;AAC42A;
    TYA                                                                  ;AAC42D;
    AND.W #$000F                                                         ;AAC42E;
    TAY                                                                  ;AAC431;
    LDA.W $0F7E,X                                                        ;AAC432;
    SEC                                                                  ;AAC435;
    SBC.W .negatedYVelocities,Y                                          ;AAC436;
    STA.W $0F7E,X                                                        ;AAC439;
    PLY                                                                  ;AAC43C;
    INY                                                                  ;AAC43D;
    INY                                                                  ;AAC43E;
    RTL                                                                  ;AAC43F;


.negatedXVelocities:
    dw $FFF7,$FFFA,$FFF9,$0005,$FFF0,$FFF9, $0000,$0000                  ;AAC440; 0..Ah: Facing left
    dw $0009,$0006,$0007,$FFFB,$0010,$0007, $0000,$0000                  ;AAC450; 10h..1Ah: Facing right

.negatedYVelocities:
    dw $0000,$FFFA,$FFFA,$FFF9,$0000,$0000, $0000,$0000                  ;AAC460;

Instruction_Torizo_BombTorizoWalkingMovement_Normal_IndexInY:
    PHY                                                                  ;AAC470;
    STZ.B $12                                                            ;AAC471;
    LDA.W $0000,Y                                                        ;AAC473;
    TAY                                                                  ;AAC476;
    LDA.W .velocities,Y                                                  ;AAC477;
    STA.B $14                                                            ;AAC47A;
    STA.W $0FA8,X                                                        ;AAC47C;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;AAC47F;
    PLY                                                                  ;AAC483;
    BCC .noCollision                                                     ;AAC484;
    LDA.W #$0000                                                         ;AAC486;
    STA.L $7E7806,X                                                      ;AAC489;
    LDA.W $0FB4,X                                                        ;AAC48D;
    BMI .turningLeft                                                     ;AAC490;
    LDY.W #InstList_Torizo_FacingRight_TurningRight                      ;AAC492;
    RTL                                                                  ;AAC495;


.turningLeft:
    LDY.W #InstList_Torizo_FacingLeft_TurningLeft                        ;AAC496;
    RTL                                                                  ;AAC499;


.noCollision:
    JSL.L AlignEnemyYPositionWIthNonSquareSlope                          ;AAC49A;
    LDA.W $0AF6                                                          ;AAC49E;
    SEC                                                                  ;AAC4A1;
    SBC.W $0F7A,X                                                        ;AAC4A2;
    EOR.W $0FB4,X                                                        ;AAC4A5;
    BPL .facingAway                                                      ;AAC4A8;
    INY                                                                  ;AAC4AA;
    INY                                                                  ;AAC4AB;
    RTL                                                                  ;AAC4AC;


.facingAway:
    LDA.L $7E7806,X                                                      ;AAC4AD;
    BNE .return                                                          ;AAC4B1;
    LDA.W #$003C                                                         ;AAC4B3;
    STA.L $7E7806,X                                                      ;AAC4B6;

.return:
    INY                                                                  ;AAC4BA;
    INY                                                                  ;AAC4BB;
    RTL                                                                  ;AAC4BC;


.velocities:
    dw $FFFB,$0000,$FFFB,$FFED,$FFF0,$FFF9,$0000,$FFF9,$FFEF,$FFEE       ;AAC4BD; 0..12h: Moving left
    dw $0005,$0000,$0005,$0013,$0010,$0007,$0000,$0007,$0011,$0012       ;AAC4CD; 14h..26h: Moving right

Instruction_Torizo_BTWalkingMovement_Faceless_IndexInY:
    PHY                                                                  ;AAC4E5;
    STZ.B $12                                                            ;AAC4E6;
    LDA.W $0000,Y                                                        ;AAC4E8;
    TAY                                                                  ;AAC4EB;
    LDA.W .velocities,Y                                                  ;AAC4EC;
    STA.B $14                                                            ;AAC4EF;
    STA.W $0FA8,X                                                        ;AAC4F1;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;AAC4F4;
    PLY                                                                  ;AAC4F8;
    BCC .noCollision                                                     ;AAC4F9;
    LDA.W #$0000                                                         ;AAC4FB;
    STA.L $7E7806,X                                                      ;AAC4FE;
    LDA.W $0FB4,X                                                        ;AAC502;
    BMI .turningLeft                                                     ;AAC505;
    LDY.W #InstList_Torizo_FacingRight_Faceless_TurningRight             ;AAC507;
    RTL                                                                  ;AAC50A;


.turningLeft:
    LDY.W #InstList_Torizo_FacingLeft_Faceless_TurningLeft               ;AAC50B;
    RTL                                                                  ;AAC50E;


.noCollision:
    JSL.L AlignEnemyYPositionWIthNonSquareSlope                          ;AAC50F;
    LDA.W $0AF6                                                          ;AAC513;
    SEC                                                                  ;AAC516;
    SBC.W $0F7A,X                                                        ;AAC517;
    EOR.W $0FB4,X                                                        ;AAC51A;
    BPL .facingAway                                                      ;AAC51D;
    INY                                                                  ;AAC51F;
    INY                                                                  ;AAC520;
    RTL                                                                  ;AAC521;


.facingAway:
    LDA.L $7E7806,X                                                      ;AAC522;
    BNE .return                                                          ;AAC526;
    LDA.W #$003C                                                         ;AAC528;
    STA.L $7E7806,X                                                      ;AAC52B;

.return:
    INY                                                                  ;AAC52F;
    INY                                                                  ;AAC530;
    RTL                                                                  ;AAC531;


.velocities:
    dw $FFFB,$0000,$FFFB,$FFED,$FFF0,$FFF9,$0000,$FFF9                   ;AAC532;
    dw $FFEF,$FFEE,$0005,$0000,$0005,$0013,$0010,$0007                   ;AAC542;
    dw $0000,$0007,$0011,$0012                                           ;AAC552;

Instruction_Torizo_GotoY_IfRising:
    LDA.W $0FAA,X                                                        ;AAC55A;
    BMI .rising                                                          ;AAC55D;
    INY                                                                  ;AAC55F;
    INY                                                                  ;AAC560;
    RTL                                                                  ;AAC561;


.rising:
    LDA.W $0000,Y                                                        ;AAC562;
    TAY                                                                  ;AAC565;
    RTL                                                                  ;AAC566;


Instruction_Torizo_CallYIfSamusIsLessThan38PixelsInFront:
    LDA.W #$0038                                                         ;AAC567;
    JSL.L CheckIfXDistanceBetweenEnemyAndSamusIsAtLeastA                 ;AAC56A;
    BCC .near                                                            ;AAC56E;

.return:
    INY                                                                  ;AAC570;
    INY                                                                  ;AAC571;
    RTL                                                                  ;AAC572;


.near:
    LDA.W $0AF6                                                          ;AAC573;
    SEC                                                                  ;AAC576;
    SBC.W $0F7A,X                                                        ;AAC577;
    EOR.W $0FB4,X                                                        ;AAC57A;
    BPL .return                                                          ;AAC57D;
    TYA                                                                  ;AAC57F;
    INC A                                                                ;AAC580;
    INC A                                                                ;AAC581;
    STA.L $7E7800,X                                                      ;AAC582;
    LDA.W $0000,Y                                                        ;AAC586;
    TAY                                                                  ;AAC589;
    RTL                                                                  ;AAC58A;


Instruction_Torizo_GotoYAndJumpBackwardsIfLessThan20Pixels:
    LDA.W #$0020                                                         ;AAC58B;
    JSL.L CheckIfXDistanceBetweenEnemyAndSamusIsAtLeastA                 ;AAC58E;
    BCS .return                                                          ;AAC592;
    JSR.W CheckIfTorizoIsFacingSamus                                     ;AAC594;
    BMI .return                                                          ;AAC597;
    JSR.W MakeTorizoJumpBackwards                                        ;AAC599;
    LDA.W $0000,Y                                                        ;AAC59C;
    TAY                                                                  ;AAC59F;
    RTL                                                                  ;AAC5A0;


.return:
    INY                                                                  ;AAC5A1;
    INY                                                                  ;AAC5A2;
    RTL                                                                  ;AAC5A3;


Instruction_Torizo_CallY_OrY2_ForBombTorizoAttack:
    TYA                                                                  ;AAC5A4;
    INC A                                                                ;AAC5A5;
    INC A                                                                ;AAC5A6;
    INC A                                                                ;AAC5A7;
    INC A                                                                ;AAC5A8;
    STA.L $7E7800,X                                                      ;AAC5A9;
    LDA.W $09C6                                                          ;AAC5AD;
    CMP.W #$0005                                                         ;AAC5B0;
    BCC .spewOrbs                                                        ;AAC5B3;
    LDA.W $0AF6                                                          ;AAC5B5;
    LSR A                                                                ;AAC5B8;
    ADC.W $05B6                                                          ;AAC5B9;
    BIT.W #$0008                                                         ;AAC5BC;
    BEQ .sonicBooms                                                      ;AAC5BF;

.spewOrbs:
    LDA.W $0000,Y                                                        ;AAC5C1;
    BRA .return                                                          ;AAC5C4;


.sonicBooms:
    LDA.W $0002,Y                                                        ;AAC5C6;

.return:
    TAY                                                                  ;AAC5C9;
    RTL                                                                  ;AAC5CA;


Instruction_Torizo_SpawnBombTorizosChozoOrbs:
    PHY                                                                  ;AAC5CB;
    LDY.W #EnemyProjectile_BombTorizoChozoOrbs                           ;AAC5CC;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAC5CF;
    LDY.W #EnemyProjectile_BombTorizoChozoOrbs                           ;AAC5D3;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAC5D6;
    LDY.W #EnemyProjectile_BombTorizoChozoOrbs                           ;AAC5DA;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAC5DD;
    PLY                                                                  ;AAC5E1;
    RTL                                                                  ;AAC5E2;


Instruction_Torizo_SpawnBombTorizoSonicBoomWithParameterY:
    PHY                                                                  ;AAC5E3;
    LDA.W $0000,Y                                                        ;AAC5E4;
    LDY.W #EnemyProjectile_BombTorizoSonicBoom                           ;AAC5E7;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAC5EA;
    PLY                                                                  ;AAC5EE;
    INY                                                                  ;AAC5EF;
    INY                                                                  ;AAC5F0;
    RTL                                                                  ;AAC5F1;


Instruction_Torizo_SpawnGoldenTorizoSonicBoomWithParameterY:
    PHY                                                                  ;AAC5F2;
    LDA.W $0000,Y                                                        ;AAC5F3;
    LDY.W #EnemyProjectile_GoldenTorizoSonicBoom                         ;AAC5F6;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAC5F9;
    PLY                                                                  ;AAC5FD;
    INY                                                                  ;AAC5FE;
    INY                                                                  ;AAC5FF;
    RTL                                                                  ;AAC600;


Instruction_Torizo_SpawnBombTorizoExplosiveSwipeWithParamY:
    PHY                                                                  ;AAC601;
    LDA.W $0000,Y                                                        ;AAC602;
    LDY.W #EnemyProjectile_BombTorizoExplosiveSwipe                      ;AAC605;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;AAC608;
    PLY                                                                  ;AAC60C;
    INY                                                                  ;AAC60D;
    INY                                                                  ;AAC60E;
    RTL                                                                  ;AAC60F;


Instruction_Torizo_PlayShotTorizoSFX:
    LDA.W #$0027                                                         ;AAC610;
    JSL.L QueueSound_Lib2_Max6                                           ;AAC613;
    RTL                                                                  ;AAC617;


Instruction_Torizo_PlayTorizoFootstepsSFX:
    LDA.W #$004B                                                         ;AAC618;
    JSL.L QueueSound_Lib2_Max6                                           ;AAC61B;
    RTL                                                                  ;AAC61F;


HandleLowHealthInitialDrool:
    LDA.W $079F                                                          ;AAC620;
    BEQ .crateria                                                        ;AAC623;
    JMP.W .returnNotCrateria                                             ;AAC625; >.<


.crateria:
    LDA.W $05E5                                                          ;AAC628;
    AND.W #$8142                                                         ;AAC62B; If [random number] & 8142h = 0: (1/16 chance)
    BNE .return                                                          ;AAC62E;
    LDA.W $0F8C,X                                                        ;AAC630;
    BEQ .return                                                          ;AAC633;
    CMP.W #$015E                                                         ;AAC635;
    BCS .return                                                          ;AAC638;
    LDY.W #EnemyProjectile_BombTorizoInitialDrool                        ;AAC63A;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAC63D;

.return:
    RTS                                                                  ;AAC641;


.returnNotCrateria:
    RTS                                                                  ;AAC642; >.<


HandleFalling:
    STZ.B $12                                                            ;AAC643;
    STZ.B $14                                                            ;AAC645;
    LDA.W $0FAA,X                                                        ;AAC647;
    BPL +                                                                ;AAC64A;
    DEC.B $14                                                            ;AAC64C;

  + STA.B $13                                                            ;AAC64E;
    JSL.L MoveEnemyDownBy_14_12                                          ;AAC650;
    BCS .collision                                                       ;AAC654;
    LDA.W $0FAA,X                                                        ;AAC656;
    CLC                                                                  ;AAC659;
    ADC.W #$0028                                                         ;AAC65A;
    STA.W $0FAA,X                                                        ;AAC65D;
    RTS                                                                  ;AAC660;


.collision:
    LDA.W $0FAA,X                                                        ;AAC661;
    BMI .return                                                          ;AAC664;
    CMP.W #$0100                                                         ;AAC666;
    BEQ .return                                                          ;AAC669;
    LDA.W #$0004                                                         ;AAC66B;
    STA.W $183E                                                          ;AAC66E;
    LDA.W #$0020                                                         ;AAC671;
    STA.W $1840                                                          ;AAC674;
    LDA.W #$0100                                                         ;AAC677;
    STA.W $0FAA,X                                                        ;AAC67A;

.return:
    RTS                                                                  ;AAC67D;


HurtAI_BombTorizo:
    LDX.W $0E54                                                          ;AAC67E;
    JSR.W HandleLowHealthInitialDrool                                    ;AAC681;
    LDA.W $0F9C,X                                                        ;AAC684;
    LSR A                                                                ;AAC687;
    BCS .flash                                                           ;AAC688;
    JSR.W LoadNormalTorizoPalettes                                       ;AAC68A;
    BRA .return                                                          ;AAC68D;


.flash:
    PHX                                                                  ;AAC68F;
    LDX.W #$001E                                                         ;AAC690;

.loop:
    LDA.W #$7FFF                                                         ;AAC693;
    STA.L $7EC140,X                                                      ;AAC696;
    STA.L $7EC120,X                                                      ;AAC69A;
    DEX                                                                  ;AAC69E;
    DEX                                                                  ;AAC69F;
    BPL .loop                                                            ;AAC6A0;
    PLX                                                                  ;AAC6A2;

.return:
    RTL                                                                  ;AAC6A3;


MainAI_BombTorizo:
    LDX.W $0E54                                                          ;AAC6A4;
    JSR.W ($0FB0,X)                                                      ;AAC6A7;
    RTL                                                                  ;AAC6AA;


RTS_AAC6AB:
    RTS                                                                  ;AAC6AB;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_Torizo_AAC6AC:
    JSR.W HandleFalling                                                  ;AAC6AC;
    LDA.W #$0600                                                         ;AAC6AF;
    JSL.L Advance_GradualColorChange_ofPalettesInA_Denominator_C         ;AAC6B2;
    BCS .return                                                          ;AAC6B6;
    LDA.W #RTS_AAC6AB                                                    ;AAC6B8;
    STA.W $0FB0,X                                                        ;AAC6BB;

.return:
    RTS                                                                  ;AAC6BE;
endif ; !FEATURE_KEEP_UNREFERENCED


Function_Torizo_SimpleMovement:
    JSR.W HandleLowHealthInitialDrool                                    ;AAC6BF;
    JSR.W HandleFalling                                                  ;AAC6C2;
    RTS                                                                  ;AAC6C5;


Function_Torizo_WakeWhenBombTorizoChozoFinishesCrumbling:
    LDA.W $0F86,X                                                        ;AAC6C6;
    ORA.W #$0400                                                         ;AAC6C9;
    STA.W $0F86,X                                                        ;AAC6CC;
    PHX                                                                  ;AAC6CF;
    LDX.W #$004E                                                         ;AAC6D0;

.loop:
    LDA.W $1C37,X                                                        ;AAC6D3;
    CMP.W #PLMEntries_BombTorizosCrumblingChozo                          ;AAC6D6;
    BEQ .return                                                          ;AAC6D9;
    DEX                                                                  ;AAC6DB;
    DEX                                                                  ;AAC6DC;
    BPL .loop                                                            ;AAC6DD;
    PLX                                                                  ;AAC6DF;
    LDA.W TorizoMusicTracks_song1                                        ;AAC6E0;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;AAC6E3;
    LDA.W $0F86,X                                                        ;AAC6E7;
    AND.W #$FBFF                                                         ;AAC6EA;
    STA.W $0F86,X                                                        ;AAC6ED;
    INC.W $0F92,X                                                        ;AAC6F0;
    INC.W $0F92,X                                                        ;AAC6F3;
    LDA.W #$0001                                                         ;AAC6F6;
    STA.W $0F94,X                                                        ;AAC6F9;
    RTS                                                                  ;AAC6FC;


.return:
    PLX                                                                  ;AAC6FD;
    RTS                                                                  ;AAC6FE;


Function_Torizo_NormalMovement:
    JSR.W HandleLowHealthInitialDrool                                    ;AAC6FF;
    BIT.W $0FB6,X                                                        ;AAC702;
    BMI .notLowHealth                                                    ;AAC705;
    LDA.W $0F8C,X                                                        ;AAC707;
    CMP.W #$015E                                                         ;AAC70A;
    BCS .notLowHealth                                                    ;AAC70D;
    LDA.W $0F92,X                                                        ;AAC70F;
    STA.L $7E7802,X                                                      ;AAC712;
    LDA.W #InstList_Torizo_SpecialCallable_BlowUpBombTorizosGut          ;AAC716;
    STA.W $0F92,X                                                        ;AAC719;
    LDA.W #$0001                                                         ;AAC71C;
    STA.W $0F94,X                                                        ;AAC71F;
    RTS                                                                  ;AAC722;


.notLowHealth:
    BIT.W $0FB6,X                                                        ;AAC723;
    BVS .noChange                                                        ;AAC726;
    LDA.W $0F8C,X                                                        ;AAC728;
    CMP.W #$0064                                                         ;AAC72B;
    BCS .noChange                                                        ;AAC72E;
    LDA.W $0FB4,X                                                        ;AAC730;
    BMI .facingRight                                                     ;AAC733;
    LDA.W #InstList_Torizo_FacingRight_Faceless_TurningRight             ;AAC735;
    BRA +                                                                ;AAC738;


.facingRight:
    LDA.W #InstList_Torizo_FacingLeft_Faceless_TurningLeft               ;AAC73A;

  + STA.L $7E7800,X                                                      ;AAC73D;
    LDA.W #InstList_Torizo_Callable_BlowUpBombTorizosFace                ;AAC741;
    STA.W $0F92,X                                                        ;AAC744;
    LDA.W #$0001                                                         ;AAC747;
    STA.W $0F94,X                                                        ;AAC74A;
    RTS                                                                  ;AAC74D;


.noChange:
    JSR.W ($0FB2,X)                                                      ;AAC74E;
    RTS                                                                  ;AAC751;


Function_Torizo_Movement_Walking:
    BIT.W $0FB6,X                                                        ;AAC752;
    BVC .notFaceless                                                     ;AAC755;
    JMP.W .faceless                                                      ;AAC757;


.notFaceless:
    LDA.L $7E7806,X                                                      ;AAC75A;
    BEQ .notTurning                                                      ;AAC75E;
    DEC A                                                                ;AAC760;
    STA.L $7E7806,X                                                      ;AAC761;
    BNE .notTurning                                                      ;AAC765;
    LDA.W #$0000                                                         ;AAC767;
    STA.L $7E7806,X                                                      ;AAC76A;
    LDA.W $0FB4,X                                                        ;AAC76E;
    BMI .facingRight                                                     ;AAC771;
    LDA.W #InstList_Torizo_FacingRight_TurningRight                      ;AAC773;
    BRA +                                                                ;AAC776;


.facingRight:
    LDA.W #InstList_Torizo_FacingLeft_TurningLeft                        ;AAC778;

  + STA.W $0F92,X                                                        ;AAC77B;
    LDA.W #$0001                                                         ;AAC77E;
    STA.W $0F94,X                                                        ;AAC781;
    RTS                                                                  ;AAC784;


.notTurning:
    STZ.B $12                                                            ;AAC785;
    LDA.W $0FA8,X                                                        ;AAC787;
    BPL +                                                                ;AAC78A;
    EOR.W #$FFFF                                                         ;AAC78C;
    INC A                                                                ;AAC78F;

  + INC A                                                                ;AAC790;
    CMP.W #$0010                                                         ;AAC791;
    BCC +                                                                ;AAC794;
    LDA.W #$000F                                                         ;AAC796;

  + STA.B $14                                                            ;AAC799;
    JSL.L MoveEnemyDownBy_14_12                                          ;AAC79B;
    BCS .returnUpper                                                     ;AAC79F;
    LDA.W $0FB4,X                                                        ;AAC7A1;
    BMI ..facingRight                                                    ;AAC7A4;
    LDA.W #InstList_Torizo_FacingLeft_Falling_0                          ;AAC7A6;
    BRA +                                                                ;AAC7A9;


..facingRight:
    LDA.W #InstList_Torizo_FacingRight_Falling_0                         ;AAC7AB;

  + STA.W $0F92,X                                                        ;AAC7AE;
    LDA.W #$0001                                                         ;AAC7B1;
    STA.W $0F94,X                                                        ;AAC7B4;
    LDA.W #$0100                                                         ;AAC7B7;
    STA.W $0FAA,X                                                        ;AAC7BA;
    STZ.W $0FA8,X                                                        ;AAC7BD;

.returnUpper:
    RTS                                                                  ;AAC7C0;


.faceless:
    LDA.L $7E7806,X                                                      ;AAC7C1;
    BEQ .facelessNotTurning                                              ;AAC7C5;
    DEC A                                                                ;AAC7C7;
    STA.L $7E7806,X                                                      ;AAC7C8;
    BNE .facelessNotTurning                                              ;AAC7CC;
    LDA.W #$0000                                                         ;AAC7CE;
    STA.L $7E7806,X                                                      ;AAC7D1;
    LDA.W $0FB4,X                                                        ;AAC7D5;
    BMI ..facingRight                                                    ;AAC7D8;
    LDA.W #InstList_Torizo_FacingRight_Faceless_TurningRight             ;AAC7DA;
    BRA +                                                                ;AAC7DD;


..facingRight:
    LDA.W #InstList_Torizo_FacingLeft_Faceless_TurningLeft               ;AAC7DF;

  + STA.W $0F92,X                                                        ;AAC7E2;
    LDA.W #$0001                                                         ;AAC7E5;
    STA.W $0F94,X                                                        ;AAC7E8;
    RTS                                                                  ;AAC7EB;


.facelessNotTurning:
    STZ.B $12                                                            ;AAC7EC;
    LDA.W $0FA8,X                                                        ;AAC7EE;
    BPL +                                                                ;AAC7F1;
    EOR.W #$FFFF                                                         ;AAC7F3;
    INC A                                                                ;AAC7F6;

  + INC A                                                                ;AAC7F7;
    CMP.W #$0010                                                         ;AAC7F8;
    BCC +                                                                ;AAC7FB;
    LDA.W #$000F                                                         ;AAC7FD;

  + STA.B $14                                                            ;AAC800;
    JSL.L MoveEnemyDownBy_14_12                                          ;AAC802;
    BCS .returnLower                                                     ;AAC806;
    LDA.W $0FB4,X                                                        ;AAC808;
    BMI ..facingRight                                                    ;AAC80B;
    LDA.W #InstList_Torizo_FacingLeft_Falling_0                          ;AAC80D;
    BRA +                                                                ;AAC810;


..facingRight:
    LDA.W #InstList_Torizo_FacingRight_Falling_0                         ;AAC812;

  + STA.W $0F92,X                                                        ;AAC815;
    LDA.W #$0001                                                         ;AAC818;
    STA.W $0F94,X                                                        ;AAC81B;
    LDA.W #$0100                                                         ;AAC81E;
    STA.W $0FAA,X                                                        ;AAC821;
    STZ.W $0FA8,X                                                        ;AAC824;

.returnLower:
    RTS                                                                  ;AAC827;


Function_Torizo_Movement_Attacking:
    JSR.W HandleFalling                                                  ;AAC828;
    RTS                                                                  ;AAC82B;


Function_Torizo_Movement_Jumping_Falling:
    STZ.B $12                                                            ;AAC82C;
    STZ.B $14                                                            ;AAC82E;
    LDA.W $0FA8,X                                                        ;AAC830;
    BPL +                                                                ;AAC833;
    DEC.B $14                                                            ;AAC835;

  + STA.B $13                                                            ;AAC837;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;AAC839;
    JSL.L AlignEnemyYPositionWIthNonSquareSlope                          ;AAC83D;
    STZ.B $12                                                            ;AAC841;
    STZ.B $14                                                            ;AAC843;
    LDA.W $0FAA,X                                                        ;AAC845;
    BPL +                                                                ;AAC848;
    DEC.B $14                                                            ;AAC84A;

  + STA.B $13                                                            ;AAC84C;
    JSL.L MoveEnemyDownBy_14_12                                          ;AAC84E;
    BCS .collision                                                       ;AAC852;
    LDA.W $0FAA,X                                                        ;AAC854;
    CLC                                                                  ;AAC857;
    ADC.W $0FAC,X                                                        ;AAC858;
    STA.W $0FAA,X                                                        ;AAC85B;
    RTS                                                                  ;AAC85E;


.collision:
    LDA.L $7E7800,X                                                      ;AAC85F;
    STA.W $0F92,X                                                        ;AAC863;
    LDA.W #$0001                                                         ;AAC866;
    STA.W $0F94,X                                                        ;AAC869;
    LDA.W #$0100                                                         ;AAC86C;
    STA.W $0FAA,X                                                        ;AAC86F;
    LDA.W #$0004                                                         ;AAC872;
    STA.W $183E                                                          ;AAC875;
    LDA.W #$0020                                                         ;AAC878;
    STA.W $1840                                                          ;AAC87B;
    RTS                                                                  ;AAC87E;


InitAI_Torizo:
    LDA.W #$0004                                                         ;AAC87F;
    JSL.L CheckIfBossBitsForCurrentAreaMatchAnyBitsInA                   ;AAC882;
    BCC .notDead                                                         ;AAC886;
    LDX.W $0E54                                                          ;AAC888;
    LDA.W $0F86,X                                                        ;AAC88B;
    ORA.W #$0200                                                         ;AAC88E;
    STA.W $0F86,X                                                        ;AAC891;
    RTL                                                                  ;AAC894;


.notDead:
    LDY.W $079F                                                          ;AAC895;
    LDX.W $0E54                                                          ;AAC898;
    LDA.W $0F86,X                                                        ;AAC89B;
    ORA.W TorizoInitial_properties,Y                                     ;AAC89E;
    STA.W $0F86,X                                                        ;AAC8A1;
    LDA.W $0F88,X                                                        ;AAC8A4;
    ORA.W #$0004                                                         ;AAC8A7;
    STA.W $0F88,X                                                        ;AAC8AA;
    LDA.W TorizoInitial_XRadius,Y                                        ;AAC8AD;
    STA.W $0F82,X                                                        ;AAC8B0;
    LDA.W TorizoInitial_YRadius,Y                                        ;AAC8B3;
    STA.W $0F84,X                                                        ;AAC8B6;
    LDA.W #Function_Torizo_SimpleMovement                                ;AAC8B9;
    STA.W $0FB0,X                                                        ;AAC8BC;
    LDA.W #$0001                                                         ;AAC8BF;
    STA.W $0F94,X                                                        ;AAC8C2;
    STZ.W $0F90,X                                                        ;AAC8C5;
    STZ.W $0F96,X                                                        ;AAC8C8;
    LDA.W #RTS_AAC95E                                                    ;AAC8CB;
    STA.W $0FB2,X                                                        ;AAC8CE;
    LDA.W TorizoInitial_instListPointer,Y                                ;AAC8D1;
    STA.W $0F92,X                                                        ;AAC8D4;
    LDA.W #ExtendedSpritemap_Torizo_Blank                                ;AAC8D7;
    STA.W $0F8E,X                                                        ;AAC8DA;
    LDA.W TorizoInitial_XPosition,Y                                      ;AAC8DD;
    STA.W $0F7A,X                                                        ;AAC8E0;
    LDA.W TorizoInitial_YPosition,Y                                      ;AAC8E3;
    STA.W $0F7E,X                                                        ;AAC8E6;
    STZ.W $0FA8,X                                                        ;AAC8E9;
    LDA.W #$0100                                                         ;AAC8EC;
    STA.W $0FAA,X                                                        ;AAC8EF;
    LDX.W #$001E                                                         ;AAC8F2;

.loopTargetPalettes:
    LDA.W Palette_Torizo_BombTorizoStatue,X                              ;AAC8F5;
    STA.L $7EC3E0,X                                                      ;AAC8F8;
    LDA.W Palette_Torizo_OrbProjectile,X                                 ;AAC8FC;
    STA.L $7EC360,X                                                      ;AAC8FF;
    DEX                                                                  ;AAC903;
    DEX                                                                  ;AAC904;
    BPL .loopTargetPalettes                                              ;AAC905;
    LDA.W $079F                                                          ;AAC907;
    BNE .GTCode                                                          ;AAC90A;
    JSR.W LoadInitialBombTorizoPalettes                                  ;AAC90C;
    JSL.L Spawn_BombTorizoHaze                                           ;AAC90F;
    RTL                                                                  ;AAC913;


.GTCode:
    JSR.W LoadInitialGoldenTorizoPalettes                                ;AAC914;
    LDA.B $8B                                                            ;AAC917;
    CMP.W #$C0C0                                                         ;AAC919; ABXY inputs
    BNE .return                                                          ;AAC91C;
    LDA.W #$02BC                                                         ;AAC91E;
    STA.W $09C2                                                          ;AAC921;
    STA.W $09C4                                                          ;AAC924;
    LDA.W #$012C                                                         ;AAC927;
    STA.W $09D4                                                          ;AAC92A;
    STA.W $09D6                                                          ;AAC92D;
    LDA.W #$0064                                                         ;AAC930;
    STA.W $09C6                                                          ;AAC933;
    STA.W $09C8                                                          ;AAC936;
    LDA.W #$0014                                                         ;AAC939;
    STA.W $09CA                                                          ;AAC93C;
    STA.W $09CC                                                          ;AAC93F;
    LDA.W #$0014                                                         ;AAC942;
    STA.W $09CE                                                          ;AAC945;
    STA.W $09D0                                                          ;AAC948;
    LDA.W #$F337                                                         ;AAC94B;
    STA.W $09A2                                                          ;AAC94E;
    STA.W $09A4                                                          ;AAC951;
    LDA.W #$100F                                                         ;AAC954;
    STA.W $09A6                                                          ;AAC957;
    STA.W $09A8                                                          ;AAC95A;

.return:
    RTL                                                                  ;AAC95D;


RTS_AAC95E:
    RTS                                                                  ;AAC95E;


TorizoInitial:
;        _________ Crateria
;       |      ___ Norfair
;       |     |
  .XPosition:
    dw $00DB,$01A8                                                       ;AAC95F;

  .YPosition:
    dw $00B3,$0090                                                       ;AAC963;

  .instListPointer:
    dw InstList_Torizo_BombTorizo_Initial_0                              ;AAC967; Crateria
    dw InstList_GoldenTorizo_Initial_0                                   ;AAC969; Norfair

  .properties:
    dw $2800,$2800                                                       ;AAC96B;

  .XRadius:
    dw $0012,$0012                                                       ;AAC96F;

  .YRadius:
    dw $0030,$0029                                                       ;AAC973;

EnemyTouch_Torizo:
    JSL.L NormalEnemyTouchAI_NoDeathCheck_External                       ;AAC977;
    RTL                                                                  ;AAC97B;


EnemyShot_Torizo_Normal:
    LDA.W $079F                                                          ;AAC97C;
    BEQ .crateria                                                        ;AAC97F;
    JMP.W ShotReaction_GoldenTorizo_Normal                               ;AAC981;


.crateria:
    LDX.W $0E54                                                          ;AAC984;
    LDA.W $0F9C,X                                                        ;AAC987;
    ORA.L $7E7808,X                                                      ;AAC98A;
    BNE .return                                                          ;AAC98E;
    JSL.L NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic_External     ;AAC990;
    LDX.W $0E54                                                          ;AAC994;
    LDA.W $0F8C,X                                                        ;AAC997;
    BNE .return                                                          ;AAC99A;
    LDA.W #RTS_AAC6AB                                                    ;AAC99C;
    STA.W $0FB0,X                                                        ;AAC99F;
    LDA.W #InstList_Torizo_DeathSequence_0                               ;AAC9A2;
    STA.W $0F92,X                                                        ;AAC9A5;
    LDA.W #$0001                                                         ;AAC9A8;
    STA.W $0F94,X                                                        ;AAC9AB;
    LDA.W $0FB6,X                                                        ;AAC9AE;
    ORA.W #$C000                                                         ;AAC9B1;
    STA.W $0FB6,X                                                        ;AAC9B4;
    LDA.W $0F86,X                                                        ;AAC9B7;
    ORA.W #$0400                                                         ;AAC9BA;
    STA.W $0F86,X                                                        ;AAC9BD;

.return:
    RTL                                                                  ;AAC9C0;


RTL_AAC9C1:
    RTL                                                                  ;AAC9C1;


EnemyShot_Torizo_StandUp_SitDown:
    LDA.W $079F                                                          ;AAC9C2;
    BEQ .return                                                          ;AAC9C5;
    JMP.W ShotReaction_GoldenTorizo_StandUp_SitDown                      ;AAC9C7;


.return:
    RTL                                                                  ;AAC9CA;


InstList_GoldenTorizo_Initial_0:
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAC9CB;
    dw $0600 : dl Tiles_GoldenTorizoEgg : dw $6D00                       ;AAC9CD;
    dw Instruction_Torizo_SetSteppedLeftWithRightFootState               ;AAC9D4;
    dw Instruction_Torizo_SetAnimationLock                               ;AAC9D6;
    dw Instruction_Torizo_FunctionInY                                    ;AAC9D8;
    dw Function_GoldenTorizo_WakeIfSamusIsBelowAndRightOfTargetPos       ;AAC9DA;
    dw $0001,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_3      ;AAC9DC;
    dw Instruction_Common_Sleep                                          ;AAC9E0;
    dw Instruction_Torizo_FunctionInY                                    ;AAC9E2;
    dw Function_Torizo_SimpleMovement                                    ;AAC9E4;

InstList_GoldenTorizo_Initial_1:
    dw $0001,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_3      ;AAC9E6;
    dw Instruction_Torizo_GotoY_IfNotHitGround                           ;AAC9EA;
    dw InstList_GoldenTorizo_Initial_1                                   ;AAC9EC;
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AAC9EE;
    dw $0003,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_3      ;AAC9F0;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$0004             ;AAC9F4;
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_2      ;AAC9F6;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$0002             ;AAC9FC;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_1      ;AAC9FE;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$0000             ;AACA04;
    dw Instruction_Torizo_FunctionInY                                    ;AACA08;
    dw RTS_AAC6AB                                                        ;AACA0A;
    dw $0030,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AACA0C;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AACA10;
    dw $0040 : dl Tiles_Torizo : dw $7D80                                ;AACA12;
    dw $0019,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AACA17;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AACA1D;
    dw $0040 : dl Tiles_Torizo_AAB2B9 : dw $7D80                         ;AACA1F;
    dw $000A,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AACA24;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AACA2A;
    dw $0040 : dl Tiles_Torizo_AAB2F9 : dw $7D80                         ;AACA2C;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AACA31;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AACA37;
    dw $0040 : dl Tiles_Torizo_AAB339 : dw $7D80                         ;AACA39;
    dw $0019,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AACA3E;
    dw Instruction_Common_TimerInY,$0002                                 ;AACA44;

InstList_GoldenTorizo_Initial_2:
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AACA48;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AACA4C;
    dw $0040 : dl Tiles_Torizo : dw $7D80                                ;AACA4E;
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AACA53;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AACA59;
    dw $0040 : dl Tiles_Torizo_AAB2B9 : dw $7D80                         ;AACA5B;
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AACA60;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AACA66;
    dw $0040 : dl Tiles_Torizo_AAB2F9 : dw $7D80                         ;AACA68;
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AACA6D;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AACA73;
    dw $0040 : dl Tiles_Torizo_AAB339 : dw $7D80                         ;AACA75;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AACA7C;
    dw InstList_GoldenTorizo_Initial_2                                   ;AACA7E;
    dw $0019,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AACA80;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0000              ;AACA84;
    dw $000A,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_1      ;AACA86;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0002              ;AACA8C;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_2      ;AACA8E;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0004              ;AACA94;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_3      ;AACA96;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0006              ;AACA9C;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_4      ;AACA9E;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0008              ;AACAA4;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_5      ;AACAA6;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$000A              ;AACAAC;
    dw Instruction_Torizo_LoadGoldenTorizoPalettes                       ;AACAB0;
    dw Instruction_Common_TimerInY,$0010                                 ;AACAB2;

InstList_GoldenTorizo_Initial_3:
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_6      ;AACAB6;
    dw Instruction_Torizo_AdvanceGradualColorChange                      ;AACABA;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AACABC;
    dw InstList_GoldenTorizo_Initial_3                                   ;AACABE;
    dw RTL_AAC2C8                                                        ;AACAC0;
    dw Instruction_Torizo_ClearAnimationLock                             ;AACAC2;
    dw Inst_Torizo_StartFightMusic_GoldenTorizoBellyPaletteFX            ;AACAC4;
    dw $000A,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_6      ;AACAC6;
    dw Instruction_Common_GotoY                                          ;AACACA;
    dw InstList_GoldenTorizo_WalkingLeft_LeftLegMoving                   ;AACACC;

Instruction_Torizo_GotoY_IfNotHitGround:
    LDA.W $0F7E,X                                                        ;AACACE;
    CMP.W #$0177                                                         ;AACAD1;
    BEQ .notHitGround                                                    ;AACAD4;
    LDA.W $0000,Y                                                        ;AACAD6;
    TAY                                                                  ;AACAD9;
    RTL                                                                  ;AACADA;


.notHitGround:
    INY                                                                  ;AACADB;
    INY                                                                  ;AACADC;
    RTL                                                                  ;AACADD;


Instruction_Torizo_LoadGoldenTorizoPalettes:
    JSR.W LoadGoldenTorizoPalettes                                       ;AACADE;
    RTL                                                                  ;AACAE1;


Inst_Torizo_StartFightMusic_GoldenTorizoBellyPaletteFX:
    LDA.W #$0005                                                         ;AACAE2;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;AACAE5;
    LDA.W #$0012                                                         ;AACAE9;
    STA.W $0F82,X                                                        ;AACAEC;
    LDA.W #$0030                                                         ;AACAEF;
    STA.W $0F84,X                                                        ;AACAF2;
    PHY                                                                  ;AACAF5;
    LDY.W #PaletteFXObjects_GoldenTorizoBelly                            ;AACAF6;
    JSL.L Spawn_PaletteFXObject                                          ;AACAF9;
    PLY                                                                  ;AACAFD;
    RTL                                                                  ;AACAFE;


InstList_GoldenTorizo_SpewChozoOrbs_FaceLeft_RightFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACAFF;
    dw Function_GoldenTorizo_Movement_Attacking                          ;AACB01;
    dw $0005,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_RightFootForward ;AACB03;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_0  ;AACB07;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_1  ;AACB0B;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_2  ;AACB0F;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_3  ;AACB13;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_4  ;AACB17;
    dw Instruction_Common_TimerInY,$0006                                 ;AACB1B;

InstList_GoldenTorizo_SpewChozoOrbs_FaceLeft_RightFootFwd_1:
    dw Instruction_Torizo_PlayShotTorizoSFX                              ;AACB1F;
    dw Instruction_GoldenTorizo_SpawnChozoOrbs                           ;AACB21;
    dw Instruction_Common_WaitYFrames,$0005                              ;AACB23;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AACB27;
    dw InstList_GoldenTorizo_SpewChozoOrbs_FaceLeft_RightFootFwd_1       ;AACB29;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_3  ;AACB2B;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_2  ;AACB2F;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_1  ;AACB33;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_RightFootForward_0  ;AACB37;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACB3B;
    dw Function_GoldenTorizo_Movement_Walking                            ;AACB3D;
    dw Instruction_Torizo_Return                                         ;AACB3F;

InstList_GoldenTorizo_SpewChozoOrbs_FacingLeft_LeftFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACB41;
    dw Function_GoldenTorizo_Movement_Attacking                          ;AACB43;
    dw $0005,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_LeftFootForward  ;AACB45;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_0   ;AACB49;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_1   ;AACB4D;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_2   ;AACB51;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_3   ;AACB55;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_4   ;AACB59;
    dw Instruction_Common_TimerInY,$0006                                 ;AACB5D;

InstList_GoldenTorizo_SpewChozoOrbs_FacingLeft_LeftFootFwd_1:
    dw Instruction_Torizo_PlayShotTorizoSFX                              ;AACB61;
    dw Instruction_GoldenTorizo_SpawnChozoOrbs                           ;AACB63;
    dw Instruction_Common_WaitYFrames,$0005                              ;AACB65;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AACB69;
    dw InstList_GoldenTorizo_SpewChozoOrbs_FacingLeft_LeftFootFwd_1      ;AACB6B;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_3   ;AACB6D;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_2   ;AACB71;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_1   ;AACB75;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceLeft_LeftFootForward_0   ;AACB79;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACB7D;
    dw Function_GoldenTorizo_Movement_Walking                            ;AACB7F;
    dw Instruction_Torizo_Return                                         ;AACB81;

InstList_GoldenTorizo_SonicBooms_FacingLeft_RightFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACB83;
    dw Function_GoldenTorizo_Movement_Attacking                          ;AACB85;
    dw Instruction_Common_TimerInY,$0004                                 ;AACB87;

InstList_GoldenTorizo_SonicBooms_FacingLeft_RightFootFwd_1:
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_RightFootForward ;AACB8B;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_0 ;AACB8F;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_1 ;AACB93;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_2 ;AACB97;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_3 ;AACB9B;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_4 ;AACB9F;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_3 ;AACBA3;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_2 ;AACBA7;
    dw Instruction_Torizo_SpawnGoldenTorizoSonicBoomWithParameterY,$0000 ;AACBAB;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_1 ;AACBAD;
    dw $0004,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_0 ;AACBB3;
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_RightFootForward ;AACBB7;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_5 ;AACBBB;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_0 ;AACBBF;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_1 ;AACBC3;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_2 ;AACBC7;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_3 ;AACBCB;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_2 ;AACBCF;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_1 ;AACBD3;
    dw Instruction_Torizo_SpawnGoldenTorizoSonicBoomWithParameterY,$0001 ;AACBD7;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_RightFootForward_0 ;AACBD9;
    dw $0004,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_5 ;AACBDF;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AACBE3;
    dw InstList_GoldenTorizo_SonicBooms_FacingLeft_RightFootFwd_1        ;AACBE5;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACBE7;
    dw Function_GoldenTorizo_Movement_Walking                            ;AACBE9;
    dw Instruction_Torizo_Return                                         ;AACBEB;

InstList_GoldenTorizo_SonicBooms_FacingLeft_LeftFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACBED;
    dw Function_GoldenTorizo_Movement_Attacking                          ;AACBEF;
    dw Instruction_Common_TimerInY,$0004                                 ;AACBF1;

InstList_GoldenTorizo_SonicBooms_FacingLeft_LeftFootFwd_1:
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_LeftFootForward  ;AACBF5;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_0 ;AACBF9;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_1 ;AACBFD;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_2 ;AACC01;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_3 ;AACC05;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_4 ;AACC09;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_3 ;AACC0D;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_2 ;AACC11;
    dw Instruction_Torizo_SpawnGoldenTorizoSonicBoomWithParameterY,$0000 ;AACC15;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_1 ;AACC17;
    dw $0004,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_0 ;AACC1D;
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_LeftFootForward  ;AACC21;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_5 ;AACC25;
    dw $0003,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_0  ;AACC29;
    dw $0003,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_1  ;AACC2D;
    dw $0003,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_2  ;AACC31;
    dw $0003,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_3  ;AACC35;
    dw $0001,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_2  ;AACC39;
    dw $0001,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_1  ;AACC3D;
    dw Instruction_Torizo_SpawnGoldenTorizoSonicBoomWithParameterY,$0001 ;AACC41;
    dw $0001,ExtSpritemap_Torizo_SonicBoom_Swipe_FaceLeft_LeftFootFwd_0  ;AACC43;
    dw $0004,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_5 ;AACC49;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AACC4D;
    dw InstList_GoldenTorizo_SonicBooms_FacingLeft_LeftFootFwd_1         ;AACC4F;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACC51;
    dw Function_GoldenTorizo_Movement_Walking                            ;AACC53;
    dw Instruction_Torizo_Return                                         ;AACC55;

InstList_GoldenTorizo_SpewChozoOrb_FacingLeft_LeftFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACC57;
    dw Function_GoldenTorizo_Movement_Attacking                          ;AACC59;
    dw $0005,ExtendedSpritemaps_Torizo_Attacks_FaceRight_LeftFootForward ;AACC5B;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_0  ;AACC5F;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_1  ;AACC63;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_2  ;AACC67;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_3  ;AACC6B;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_4  ;AACC6F;
    dw Instruction_Common_TimerInY,$0006                                 ;AACC73;

InstList_GoldenTorizo_SpewChozoOrb_FacingLeft_LeftFootFwd_1:
    dw Instruction_Torizo_PlayShotTorizoSFX                              ;AACC77;
    dw Instruction_GoldenTorizo_SpawnChozoOrbs                           ;AACC79;
    dw Instruction_Common_WaitYFrames,$0005                              ;AACC7B;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AACC7F;
    dw InstList_GoldenTorizo_SpewChozoOrb_FacingLeft_LeftFootFwd_1       ;AACC81;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_3  ;AACC83;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_2  ;AACC87;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_1  ;AACC8B;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_LeftFootForward_0  ;AACC8F;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACC93;
    dw Function_GoldenTorizo_Movement_Walking                            ;AACC95;
    dw Instruction_Torizo_Return                                         ;AACC97;

InstList_GoldenTorizo_SpewChozoOrb_FacingLeft_RightFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACC99;
    dw Function_GoldenTorizo_Movement_Attacking                          ;AACC9B;
    dw $0005,ExtendedSpritemaps_Torizo_Attacks_FaceRight_RightFootForward ;AACC9D;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_0 ;AACCA1;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_1 ;AACCA5;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_2 ;AACCA9;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_3 ;AACCAD;
    dw $0005,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_4 ;AACCB1;
    dw Instruction_Common_TimerInY,$0006                                 ;AACCB5;

InstList_GoldenTorizo_SpewChozoOrb_FacingLeft_RightFootFwd_1:
    dw Instruction_Torizo_PlayShotTorizoSFX                              ;AACCB9;
    dw Instruction_GoldenTorizo_SpawnChozoOrbs                           ;AACCBB;
    dw Instruction_Common_WaitYFrames,$0005                              ;AACCBD;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AACCC1;
    dw InstList_GoldenTorizo_SpewChozoOrb_FacingLeft_RightFootFwd_1      ;AACCC3;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_3 ;AACCC5;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_2 ;AACCC9;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_1 ;AACCCD;
    dw $0003,ExtSpritemaps_Torizo_ChozoOrbs_FaceRight_RightFootForward_0 ;AACCD1;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACCD5;
    dw Function_GoldenTorizo_Movement_Walking                            ;AACCD7;
    dw Instruction_Torizo_Return                                         ;AACCD9;

InstList_GoldenTorizo_SonicBooms_FacingRight_LeftFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACCDB;
    dw Function_GoldenTorizo_Movement_Attacking                          ;AACCDD;
    dw Instruction_Common_TimerInY,$0004                                 ;AACCDF;

InstList_GoldenTorizo_SonicBooms_FacingRight_LeftFootFwd_1:
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceRight_LeftFootForward ;AACCE3;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_0   ;AACCE7;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_1   ;AACCEB;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_2   ;AACCEF;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_3   ;AACCF3;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_4   ;AACCF7;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_3   ;AACCFB;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_2   ;AACCFF;
    dw Instruction_Torizo_SpawnGoldenTorizoSonicBoomWithParameterY,$0000 ;AACD03;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_1   ;AACD05;
    dw $0004,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_0   ;AACD0B;
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceRight_LeftFootForward ;AACD0F;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_5   ;AACD13;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_6   ;AACD17;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_7   ;AACD1B;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_8   ;AACD1F;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_9   ;AACD23;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_8   ;AACD27;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_7   ;AACD2B;
    dw Instruction_Torizo_SpawnGoldenTorizoSonicBoomWithParameterY,$0001 ;AACD2F;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_6   ;AACD31;
    dw $0004,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_5   ;AACD37;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AACD3B;
    dw InstList_GoldenTorizo_SonicBooms_FacingRight_LeftFootFwd_1        ;AACD3D;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACD3F;
    dw Function_GoldenTorizo_Movement_Walking                            ;AACD41;
    dw Instruction_Torizo_Return                                         ;AACD43;

InstList_GoldenTorizo_SonicBooms_FacingRight_RightFootFwd_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACD45;
    dw Function_GoldenTorizo_Movement_Attacking                          ;AACD47;
    dw Instruction_Common_TimerInY,$0004                                 ;AACD49;

InstList_GoldenTorizo_SonicBooms_FacingRight_RightFootFwd_1:
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceRight_RightFootForward ;AACD4D;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_0  ;AACD51;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_1  ;AACD55;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_2  ;AACD59;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_3  ;AACD5D;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_4  ;AACD61;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_3  ;AACD65;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_2  ;AACD69;
    dw Instruction_Torizo_SpawnGoldenTorizoSonicBoomWithParameterY,$0000 ;AACD6D;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_1  ;AACD6F;
    dw $0004,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_0  ;AACD75;
    dw $0003,ExtendedSpritemaps_Torizo_Attacks_FaceRight_RightFootForward ;AACD79;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_5  ;AACD7D;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_6  ;AACD81;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_7  ;AACD85;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_8  ;AACD89;
    dw $0003,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_9  ;AACD8D;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_8  ;AACD91;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_7  ;AACD95;
    dw Instruction_Torizo_SpawnGoldenTorizoSonicBoomWithParameterY,$0001 ;AACD99;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_6  ;AACD9B;
    dw $0004,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_5  ;AACDA1;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AACDA5;
    dw InstList_GoldenTorizo_SonicBooms_FacingRight_RightFootFwd_1       ;AACDA7;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACDA9;
    dw Function_GoldenTorizo_Movement_Walking                            ;AACDAB;
    dw Instruction_Torizo_Return                                         ;AACDAD;

InstList_GT_LandedFromBackwardsJump_FacingLeft_LeftFootFwd:
    dw Instruction_GoldenTorizo_CallY_OrY2_ForAttack                     ;AACDAF;
    dw InstList_GoldenTorizo_SpewChozoOrbs_FacingLeft_LeftFootFwd_0      ;AACDB1;
    dw InstList_GoldenTorizo_SonicBooms_FacingLeft_LeftFootFwd_0         ;AACDB3;
    dw Instruction_Common_GotoY                                          ;AACDB5;
    dw InstList_GoldenTorizo_WalkingLeft_RightLegMoving                  ;AACDB7;

InstList_GT_LandedFromBackwardsJump_FacingLeft_RightFootFwd:
    dw Instruction_GoldenTorizo_CallY_OrY2_ForAttack                     ;AACDB9;
    dw InstList_GoldenTorizo_SpewChozoOrbs_FaceLeft_RightFootFwd_0       ;AACDBB;
    dw InstList_GoldenTorizo_SonicBooms_FacingLeft_RightFootFwd_0        ;AACDBD;
    dw Instruction_Common_GotoY                                          ;AACDBF;
    dw InstList_GoldenTorizo_WalkingLeft_LeftLegMoving                   ;AACDC1;

InstList_GT_LandedFromBackwardsJump_FacingRight_RightFootFwd:
    dw Instruction_GoldenTorizo_CallY_OrY2_ForAttack                     ;AACDC3;
    dw InstList_GoldenTorizo_SpewChozoOrb_FacingLeft_RightFootFwd_0      ;AACDC5;
    dw InstList_GoldenTorizo_SonicBooms_FacingRight_RightFootFwd_0       ;AACDC7;
    dw Instruction_Common_GotoY                                          ;AACDC9;
    dw InstList_GoldenTorizo_WalkingRight_LeftLegMoving                  ;AACDCB;

InstList_GT_LandedFromBackwardsJump_FacingRight_LeftFootFwd:
    dw Instruction_GoldenTorizo_CallY_OrY2_ForAttack                     ;AACDCD;
    dw InstList_GoldenTorizo_SpewChozoOrb_FacingLeft_LeftFootFwd_0       ;AACDCF;
    dw InstList_GoldenTorizo_SonicBooms_FacingRight_LeftFootFwd_0        ;AACDD1;
    dw Instruction_Common_GotoY                                          ;AACDD3;
    dw InstList_GoldenTorizo_WalkingRight_RightLegMoving                 ;AACDD5;

Instruction_GoldenTorizo_ClearCaughtSuperMissileFlag:
    LDA.W $0FB6,X                                                        ;AACDD7;
    AND.W #$EFFF                                                         ;AACDDA;
    STA.W $0FB6,X                                                        ;AACDDD;
    RTL                                                                  ;AACDE0;


InstList_GoldenTorizo_CaughtSuper_FacingLeft_LeftLegFwd:
    dw Instruction_Torizo_QueueSonicBoomSFX                              ;AACDE1;
    dw Instruction_Torizo_FunctionInY                                    ;AACDE3;
    dw Function_GoldenTorizo_SimpleMovement                              ;AACDE5;
    dw $0001,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_LeftFootForward  ;AACDE7;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_0  ;AACDEB;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_1  ;AACDEF;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_2  ;AACDF3;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_3  ;AACDF7;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_4  ;AACDFB;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_3  ;AACDFF;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_2  ;AACE03;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_1  ;AACE07;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_0  ;AACE0B;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_0  ;AACE0F;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_1  ;AACE13;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_2  ;AACE17;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_3  ;AACE1B;
    dw Instruction_GoldenTorizo_SpawnSuperMissile                        ;AACE1F;
    dw $0028,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_4  ;AACE21;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_3  ;AACE25;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_2  ;AACE29;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_1  ;AACE2D;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_0  ;AACE31;
    dw $0002,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_LeftFootForward  ;AACE35;
    dw $000A,ExtSpritemap_Torizo_NonOrbAttack_FaceLeft_LeftFootForward_5  ;AACE39;
    dw Instruction_GoldenTorizo_ClearCaughtSuperMissileFlag              ;AACE3D;
    dw Instruction_Common_GotoY                                          ;AACE3F;
    dw InstList_GoldenTorizo_WalkingLeft_RightLegMoving                  ;AACE41;

InstList_GoldenTorizo_CaughtSuper_FacingLeft_RightLegFwd:
    dw Instruction_Torizo_QueueSonicBoomSFX                              ;AACE43;
    dw Instruction_Torizo_FunctionInY                                    ;AACE45;
    dw Function_GoldenTorizo_SimpleMovement                              ;AACE47;
    dw $0001,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_RightFootForward ;AACE49;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_0 ;AACE4D;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_1 ;AACE51;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_2 ;AACE55;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_3 ;AACE59;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_4 ;AACE5D;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_3 ;AACE61;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_2 ;AACE65;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_1 ;AACE69;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_0 ;AACE6D;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_0 ;AACE71;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_1 ;AACE75;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_2 ;AACE79;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_3 ;AACE7D;
    dw Instruction_GoldenTorizo_SpawnSuperMissile                        ;AACE81;
    dw $0028,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_4 ;AACE83;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_3 ;AACE87;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_2 ;AACE8B;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_1 ;AACE8F;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_0 ;AACE93;
    dw $0002,ExtendedSpritemaps_Torizo_Attacks_FaceLeft_RightFootForward ;AACE97;
    dw $000A,ExtSpritemap_Torizo_NonOrbAttacks_FaceLeft_LeftFootForward_5 ;AACE9B;
    dw Instruction_GoldenTorizo_ClearCaughtSuperMissileFlag              ;AACE9F;
    dw Instruction_Common_GotoY                                          ;AACEA1;
    dw InstList_GoldenTorizo_WalkingLeft_LeftLegMoving                   ;AACEA3;

InstList_GoldenTorizo_CaughtSuper_FacingRight_RightLegFwd:
    dw Instruction_Torizo_QueueSonicBoomSFX                              ;AACEA5;
    dw Instruction_Torizo_FunctionInY                                    ;AACEA7;
    dw Function_GoldenTorizo_SimpleMovement                              ;AACEA9;
    dw $0001,ExtendedSpritemaps_Torizo_Attacks_FaceRight_RightFootForward ;AACEAB;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_0  ;AACEAF;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_1  ;AACEB3;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_2  ;AACEB7;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_3  ;AACEBB;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_4  ;AACEBF;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_3  ;AACEC3;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_2  ;AACEC7;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_1  ;AACECB;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_1  ;AACECF;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_2  ;AACED3;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_3  ;AACED7;
    dw Instruction_GoldenTorizo_SpawnSuperMissile                        ;AACEDB;
    dw $0028,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_4  ;AACEDD;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_3  ;AACEE1;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_2  ;AACEE5;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_1  ;AACEE9;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_0  ;AACEED;
    dw $0002,ExtendedSpritemaps_Torizo_Attacks_FaceRight_RightFootForward ;AACEF1;
    dw $000A,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_RightFootFwd_5  ;AACEF5;
    dw Instruction_GoldenTorizo_ClearCaughtSuperMissileFlag              ;AACEF9;
    dw Instruction_Common_GotoY                                          ;AACEFB;
    dw InstList_GoldenTorizo_WalkingRight_LeftLegMoving                  ;AACEFD;

InstList_GoldenTorizo_CaughtSuper_FacingRight_LeftLegFwd:
    dw Instruction_Torizo_QueueSonicBoomSFX                              ;AACEFF;
    dw Instruction_Torizo_FunctionInY                                    ;AACF01;
    dw Function_GoldenTorizo_SimpleMovement                              ;AACF03;
    dw $0001,ExtendedSpritemaps_Torizo_Attacks_FaceRight_LeftFootForward ;AACF05;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_0   ;AACF09;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_1   ;AACF0D;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_2   ;AACF11;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_3   ;AACF15;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_4   ;AACF19;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_3   ;AACF1D;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_2   ;AACF21;
    dw $0001,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_1   ;AACF25;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_1   ;AACF29;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_2   ;AACF2D;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_3   ;AACF31;
    dw Instruction_GoldenTorizo_SpawnSuperMissile                        ;AACF35;
    dw $0028,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_4   ;AACF37;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_3   ;AACF3B;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_2   ;AACF3F;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_1   ;AACF43;
    dw $0002,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_0   ;AACF47;
    dw $0002,ExtendedSpritemaps_Torizo_Attacks_FaceRight_LeftFootForward ;AACF4B;
    dw $000A,ExtSpritemap_Torizo_NonOrbAttacks_FaceRight_LeftFootFwd_5   ;AACF4F;
    dw Instruction_GoldenTorizo_ClearCaughtSuperMissileFlag              ;AACF53;
    dw Instruction_Common_GotoY                                          ;AACF55;
    dw InstList_GoldenTorizo_WalkingRight_RightLegMoving                 ;AACF57;

InstList_GoldenTorizo_SitDownAttack_FacingLeft:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACF59;
    dw Function_GoldenTorizo_Movement_Attacking                          ;AACF5B;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_6      ;AACF5D;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$000A             ;AACF61;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_5      ;AACF63;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$0008             ;AACF69;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_4      ;AACF6B;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$0006             ;AACF71;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_3      ;AACF73;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$0004             ;AACF79;
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_2      ;AACF7B;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$0002             ;AACF81;
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_1      ;AACF83;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$0000             ;AACF89;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_0      ;AACF8B;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0000              ;AACF91;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_1      ;AACF93;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0002              ;AACF99;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_2      ;AACF9B;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0004              ;AACFA1;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_3      ;AACFA3;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0006              ;AACFA9;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_4      ;AACFAB;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0008              ;AACFB1;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingLeft_5      ;AACFB3;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$000A              ;AACFB9;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACFBD;
    dw Function_GoldenTorizo_Movement_Walking                            ;AACFBF;
    dw Instruction_Common_GotoY                                          ;AACFC1;
    dw InstList_GoldenTorizo_WalkingLeft_LeftLegMoving                   ;AACFC3;

InstList_GoldenTorizo_SitDownAttack_FacingRight:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AACFC5;
    dw Function_GoldenTorizo_Movement_Attacking                          ;AACFC7;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_6     ;AACFC9;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$001A             ;AACFCD;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_5     ;AACFCF;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$0018             ;AACFD5;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_4     ;AACFD7;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$0016             ;AACFDD;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_3     ;AACFDF;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$0014             ;AACFE5;
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_2     ;AACFE7;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$0012             ;AACFED;
    dw $0004,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_1     ;AACFEF;
    dw Instruction_Torizo_SittingDownMovement_IndexInY,$0010             ;AACFF5;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_0     ;AACFF7;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0010              ;AACFFD;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_1     ;AACFFF;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0012              ;AAD005;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_2     ;AAD007;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0014              ;AAD00D;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_3     ;AAD00F;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0016              ;AAD015;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_4     ;AAD017;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$0018              ;AAD01D;
    dw $0005,ExtendedSpritemaps_Torizo_StandUp_SitDown_FacingRight_5     ;AAD01F;
    dw Instruction_Torizo_StandingUpMovement_IndexInY,$001A              ;AAD025;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAD029;
    dw Function_GoldenTorizo_Movement_Walking                            ;AAD02B;
    dw Instruction_Common_GotoY                                          ;AAD02D;
    dw InstList_GoldenTorizo_WalkingRight_RightLegMoving                 ;AAD02F;

InstList_GoldenTorizo_ReleaseGoldenTorizoEggs_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAD031;
    dw Function_GoldenTorizo_Movement_Attacking                          ;AAD033;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD035;
    dw $0040 : dl Tiles_Torizo_AAB4F9 : dw $7300                         ;AAD037;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD03E;
    dw $0040 : dl Tiles_Torizo_AAB6F9 : dw $7400                         ;AAD040;
    dw Instruction_Common_WaitYFrames,$0005                              ;AAD047;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD04B;
    dw $0040 : dl Tiles_Torizo_AAB539 : dw $7300                         ;AAD04D;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD054;
    dw $0040 : dl Tiles_Torizo_AAB739 : dw $7400                         ;AAD056;
    dw Instruction_Common_WaitYFrames,$0005                              ;AAD05D;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD061;
    dw $0040 : dl Tiles_Torizo_AAB579 : dw $7300                         ;AAD063;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD06A;
    dw $0040 : dl Tiles_Torizo_AAB779 : dw $7400                         ;AAD06C;
    dw Instruction_Common_WaitYFrames,$000A                              ;AAD073;
    dw Instruction_Common_TimerInY,$0006                                 ;AAD077;

InstList_GoldenTorizo_ReleaseGoldenTorizoEggs_1:
    dw Instruction_GoldenTorizo_QueueEggReleasedSFX                      ;AAD07B;
    dw Instruction_GoldenTorizo_SpawnGoldenTorizoEgg                     ;AAD07D;
    dw Instruction_Common_WaitYFrames,$0005                              ;AAD07F;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AAD083;
    dw InstList_GoldenTorizo_ReleaseGoldenTorizoEggs_1                   ;AAD085;

InstList_GoldenTorizo_ReleaseGoldenTorizoEggs_2:
    dw Instruction_Common_WaitYFrames,$0001                              ;AAD087;
    dw Instruction_GoldenTorizo_EyeBeamAttack_0                          ;AAD08B;
    dw InstList_GoldenTorizo_ReleaseGoldenTorizoEggs_2                   ;AAD08D;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD08F;
    dw $0040 : dl Tiles_Torizo_AAB579 : dw $7300                         ;AAD091;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD098;
    dw $0040 : dl Tiles_Torizo_AAB779 : dw $7400                         ;AAD09A;
    dw Instruction_Common_WaitYFrames,$0005                              ;AAD0A1;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD0A5;
    dw $0040 : dl Tiles_Torizo_AAB539 : dw $7300                         ;AAD0A7;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD0AE;
    dw $0040 : dl Tiles_Torizo_AAB739 : dw $7400                         ;AAD0B0;
    dw Instruction_Common_WaitYFrames,$0005                              ;AAD0B7;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD0BB;
    dw $0040 : dl Tiles_Torizo_AAB4F9 : dw $7300                         ;AAD0BD;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD0C4;
    dw $0040 : dl Tiles_Torizo_AAB6F9 : dw $7400                         ;AAD0C6;
    dw Instruction_Common_WaitYFrames,$0005                              ;AAD0CD;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD0D1;
    dw $0040 : dl Tiles_BombTorizo_GoldenTorizo+$600 : dw $7300          ;AAD0D3;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD0DA;
    dw $0040 : dl Tiles_BombTorizo_GoldenTorizo+$800 : dw $7400          ;AAD0DC;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAD0E3;
    dw Function_GoldenTorizo_Movement_Walking                            ;AAD0E5;
    dw Instruction_Torizo_Return                                         ;AAD0E7;

Instruction_GoldenTorizo_SpawnGoldenTorizoEgg:
    PHY                                                                  ;AAD0E9;
    LDY.W #EnemyProjectile_GoldenTorizoEgg                               ;AAD0EA;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;AAD0ED;
    PLY                                                                  ;AAD0F1;
    RTL                                                                  ;AAD0F2;


Instruction_GoldenTorizo_EyeBeamAttack_0:
    PHX                                                                  ;AAD0F3;
    LDX.W #$0022                                                         ;AAD0F4;

.loop:
    LDA.W $1997,X                                                        ;AAD0F7;
    CMP.W #EnemyProjectile_GoldenTorizoEgg                               ;AAD0FA;
    BEQ .gotoY                                                           ;AAD0FD;
    DEX                                                                  ;AAD0FF;
    DEX                                                                  ;AAD100;
    BPL .loop                                                            ;AAD101;
    PLX                                                                  ;AAD103;
    INY                                                                  ;AAD104;
    INY                                                                  ;AAD105;
    RTL                                                                  ;AAD106;


.gotoY:
    PLX                                                                  ;AAD107;
    LDA.W $0000,Y                                                        ;AAD108;
    TAY                                                                  ;AAD10B;
    RTL                                                                  ;AAD10C;


InstList_GoldenTorizo_EyeBeamAttack_0:
    dw Instruction_Torizo_FunctionInY                                    ;AAD10D;
    dw Function_GoldenTorizo_SimpleMovement                              ;AAD10F;
    dw Instruction_GoldenTorizo_DisableEyeBeamExplosions                 ;AAD111;
    dw Instruction_Torizo_SetAnimationLock                               ;AAD113;
    dw Instruction_Common_WaitYFrames,$0005                              ;AAD115;
    dw Instruction_Common_TimerInY,$0004                                 ;AAD119;
    dw Instruction_GoldenTorizo_QueueLaserSFX                            ;AAD11D;

InstList_GoldenTorizo_EyeBeamAttack_1:
    dw Instruction_GoldenTorizo_SpawnEyeBeam,$0000                       ;AAD11F;
    dw Instruction_Common_WaitYFrames,$0004                              ;AAD123;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AAD127;
    dw InstList_GoldenTorizo_EyeBeamAttack_1                             ;AAD129;
    dw Instruction_Common_WaitYFrames,$0005                              ;AAD12B;
    dw Instruction_Common_TimerInY,$0002                                 ;AAD12F;

InstList_GoldenTorizo_EyeBeamAttack_2:
    dw Instruction_Common_WaitYFrames,$0003                              ;AAD133;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD137;
    dw $0040 : dl Tiles_Torizo : dw $7D80                                ;AAD139;
    dw Instruction_Common_WaitYFrames,$0003                              ;AAD140;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD144;
    dw $0040 : dl Tiles_Torizo_AAB2B9 : dw $7D80                         ;AAD146;
    dw Instruction_Common_WaitYFrames,$0003                              ;AAD14D;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD151;
    dw $0040 : dl Tiles_Torizo_AAB2F9 : dw $7D80                         ;AAD153;
    dw Instruction_Common_WaitYFrames,$0003                              ;AAD15A;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD15E;
    dw $0040 : dl Tiles_Torizo_AAB339 : dw $7D80                         ;AAD160;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AAD167;
    dw InstList_GoldenTorizo_EyeBeamAttack_2                             ;AAD169;
    dw Instruction_GoldenTorizo_EnableEyeBeamExplosions                  ;AAD16B;
    dw Instruction_Common_WaitYFrames,$0005                              ;AAD16D;
    dw Instruction_GoldenTorizo_DisableEyeBeamExplosions                 ;AAD171;
    dw Instruction_Torizo_ClearAnimationLock                             ;AAD173;
    dw Instruction_Torizo_FunctionInY                                    ;AAD175;
    dw Function_GoldenTorizo_NormalMovement                              ;AAD177;
    dw Instruction_Torizo_Return                                         ;AAD179;

Instruction_GoldenTorizo_DisableEyeBeamExplosions:
    LDA.L $7E780C,X                                                      ;AAD17B;
    AND.W #$7FFF                                                         ;AAD17F;
    STA.L $7E780C,X                                                      ;AAD182;
    RTL                                                                  ;AAD186;


Instruction_GoldenTorizo_EnableEyeBeamExplosions:
    LDA.L $7E780C,X                                                      ;AAD187;
    ORA.W #$8000                                                         ;AAD18B;
    STA.L $7E780C,X                                                      ;AAD18E;
    RTL                                                                  ;AAD192;


InstList_Torizo_Stunned_0:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAD193;
    dw Function_GoldenTorizo_Movement_Attacking                          ;AAD195;
    dw Instruction_Torizo_SetAnimationLock                               ;AAD197;
    dw Instruction_Common_WaitYFrames,$0014                              ;AAD199;
    dw Instruction_Common_TimerInY,$0002                                 ;AAD19D;

InstList_Torizo_Stunned_1:
    dw Instruction_Common_WaitYFrames,$0002                              ;AAD1A1;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD1A5;
    dw $0040 : dl Tiles_Torizo : dw $7D80                                ;AAD1A7;
    dw Instruction_Common_WaitYFrames,$0003                              ;AAD1AE;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD1B2;
    dw $0040 : dl Tiles_Torizo_AAB2B9 : dw $7D80                         ;AAD1B4;
    dw Instruction_Common_WaitYFrames,$0002                              ;AAD1BB;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD1BF;
    dw $0040 : dl Tiles_Torizo_AAB2F9 : dw $7D80                         ;AAD1C1;
    dw Instruction_Common_WaitYFrames,$0003                              ;AAD1C8;
    dw Instruction_Common_TransferYBytesInYToVRAM                        ;AAD1CC;
    dw $0040 : dl Tiles_Torizo_AAB339 : dw $7D80                         ;AAD1CE;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AAD1D5;
    dw InstList_Torizo_Stunned_1                                         ;AAD1D7;
    dw Instruction_Common_WaitYFrames,$000A                              ;AAD1D9;
    dw Instruction_Torizo_ClearAnimationLock                             ;AAD1DD;
    dw Instruction_GoldenTorizo_UnmarkStunned                            ;AAD1DF;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAD1E1;
    dw Function_GoldenTorizo_Movement_Walking                            ;AAD1E3;
    dw Instruction_Torizo_Return                                         ;AAD1E5;


Instruction_GoldenTorizo_UnmarkStunned:
    LDA.W $0FB6,X                                                        ;AAD1E7;
    AND.W #$DFFF                                                         ;AAD1EA;
    STA.W $0FB6,X                                                        ;AAD1ED;
    RTL                                                                  ;AAD1F0;


InstList_GoldenTorizo_Dodge_TurningLeft:
    dw Instruction_Torizo_FunctionInY                                    ;AAD1F1;
    dw Function_Torizo_SimpleMovement                                    ;AAD1F3;
    dw Instruction_Torizo_SetAnimationLock                               ;AAD1F5;
    dw Instruction_Torizo_SetTorizoTurningAroundFlag                     ;AAD1F7;
    dw $0014,ExtendedSpritemaps_Torizo_FacingScreen_Turning_Dodging      ;AAD1F9;
    dw Instruction_Torizo_ClearAnimationLock                             ;AAD1FD;
    dw Instruction_Common_GotoY                                          ;AAD1FF;
    dw InstList_GoldenTorizo_WalkingLeft_RightLegMoving                  ;AAD201;

InstList_GoldenTorizo_TurningLeft:
    dw Instruction_Torizo_FunctionInY                                    ;AAD203;
    dw Function_Torizo_SimpleMovement                                    ;AAD205;
    dw Instruction_Torizo_SetTorizoTurningAroundFlag                     ;AAD207;
    dw $0005,ExtendedSpritemaps_Torizo_FacingScreen_Turning_Dodging      ;AAD209;

InstList_GoldenTorizo_WalkingLeft_RightLegMoving:
    dw Instruction_Torizo_SetSteppedLeftWithLeftFootState                ;AAD20D;
    dw Instruction_Torizo_FunctionInY                                    ;AAD20F;
    dw Function_GoldenTorizo_NormalMovement                              ;AAD211;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAD213;
    dw Function_GoldenTorizo_Movement_Walking                            ;AAD215;
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AAD217;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_0      ;AAD219;
    dw Instruction_GoldenTorizo_GotoY_JumpForwards_IfAtLeast70Pixel      ;AAD21D;
    dw InstList_Torizo_FacingLeft_JumpingForwards_0                      ;AAD21F;
    dw Instruction_GoldenTorizo_GotoY_JumpBack_IfLessThan20Pixels        ;AAD221;
    dw InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_0      ;AAD223;
    dw Instruction_GoldenTorizo_CallY_IfStunHealthGreaterThan2A31        ;AAD225;
    dw InstList_Torizo_Stunned_0                                         ;AAD227;
    dw Instruction_GT_CallY_25Chance_IfSamusMorphedInFrontOfTorizo       ;AAD229;
    dw InstList_GoldenTorizo_EyeBeamAttack_0                             ;AAD22B;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$0002           ;AAD22D;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_1      ;AAD22F;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$0004           ;AAD235;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_2      ;AAD237;
    dw Instruction_GoldenTorizo_CallY_25Chance_IfHealthLessThan789       ;AAD23D;
    dw InstList_GoldenTorizo_ReleaseGoldenTorizoEggs_0                   ;AAD23F;
    dw Instruction_GoldenTorizo_GotoY_JumpBack_IfLessThan20Pixels        ;AAD241;
    dw InstList_Torizo_FacingLeft_JumpingBackward_LandLeftFootFwd_0      ;AAD243;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$0006           ;AAD245;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_3      ;AAD247;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$0008           ;AAD24D;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingLeft_RightLegMoving_4      ;AAD24F;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$000A           ;AAD255;

InstList_GoldenTorizo_WalkingLeft_LeftLegMoving:
    dw Instruction_Torizo_SetSteppedLeftWithRightFootState               ;AAD259;
    dw Instruction_Torizo_FunctionInY                                    ;AAD25B;
    dw Function_GoldenTorizo_NormalMovement                              ;AAD25D;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAD25F;
    dw Function_GoldenTorizo_Movement_Walking                            ;AAD261;
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AAD263;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_0       ;AAD265;
    dw Instruction_GoldenTorizo_GotoY_IfSamusIsMorphedBehindTorizo       ;AAD269;
    dw InstList_GoldenTorizo_SitDownAttack_FacingLeft                    ;AAD26B;
    dw Instruction_GoldenTorizo_GotoY_JumpForwards_IfAtLeast70Pixel      ;AAD26D;
    dw InstList_Torizo_FacingLeft_JumpingForwards_0                      ;AAD26F;
    dw Instruction_GoldenTorizo_GotoY_JumpBack_IfLessThan20Pixels        ;AAD271;
    dw InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_0         ;AAD273;
    dw Instruction_GoldenTorizo_CallY_IfStunHealthGreaterThan2A31        ;AAD275;
    dw InstList_Torizo_Stunned_0                                         ;AAD277;
    dw Instruction_GT_CallY_25Chance_IfSamusMorphedInFrontOfTorizo       ;AAD279;
    dw InstList_GoldenTorizo_EyeBeamAttack_0                             ;AAD27B;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$000C           ;AAD27D;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_1       ;AAD27F;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$000E           ;AAD285;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_2       ;AAD287;
    dw Instruction_GoldenTorizo_CallY_25Chance_IfHealthLessThan789       ;AAD28D;
    dw InstList_GoldenTorizo_ReleaseGoldenTorizoEggs_0                   ;AAD28F;
    dw Instruction_GoldenTorizo_GotoY_JumpBack_IfLessThan20Pixels        ;AAD291;
    dw InstList_Torizo_FacingLeft_JumpingBackward_RightFootFwd_0         ;AAD293;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$0010           ;AAD295;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_3       ;AAD297;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$0012           ;AAD29D;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingLeft_LeftLegMoving_4       ;AAD29F;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$0000           ;AAD2A5;
    dw Instruction_Common_GotoY                                          ;AAD2A9;
    dw InstList_GoldenTorizo_WalkingLeft_RightLegMoving                  ;AAD2AB;

InstList_GoldenTorizo_Dodge_TurningRight:
    dw Instruction_Torizo_FunctionInY                                    ;AAD2AD;
    dw Function_Torizo_SimpleMovement                                    ;AAD2AF;
    dw Instruction_Torizo_SetAnimationLock                               ;AAD2B1;
    dw Instruction_Torizo_SetTorizoTurningAroundFlag                     ;AAD2B3;
    dw $0014,ExtendedSpritemaps_Torizo_FacingScreen_Turning_Dodging      ;AAD2B5;
    dw Instruction_Torizo_ClearAnimationLock                             ;AAD2B9;
    dw Instruction_Common_GotoY                                          ;AAD2BB;
    dw InstList_GoldenTorizo_WalkingRight_LeftLegMoving                  ;AAD2BD;

InstList_GoldenTorizo_TurningRight:
    dw Instruction_Torizo_FunctionInY                                    ;AAD2BF;
    dw Function_Torizo_SimpleMovement                                    ;AAD2C1;
    dw Instruction_Torizo_SetTorizoTurningAroundFlag                     ;AAD2C3;
    dw $0005,ExtendedSpritemaps_Torizo_FacingScreen_Turning_Dodging      ;AAD2C5;

InstList_GoldenTorizo_WalkingRight_LeftLegMoving:
    dw Instruction_Torizo_SetSteppedRightWithRightFootState              ;AAD2C9;
    dw Instruction_Torizo_FunctionInY                                    ;AAD2CB;
    dw Function_GoldenTorizo_NormalMovement                              ;AAD2CD;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAD2CF;
    dw Function_GoldenTorizo_Movement_Walking                            ;AAD2D1;
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AAD2D3;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_0      ;AAD2D5;
    dw Instruction_GoldenTorizo_GotoY_JumpForwards_IfAtLeast70Pixel      ;AAD2D9;
    dw InstList_Torizo_FacingRight_JumpingForwards_0                     ;AAD2DB;
    dw Instruction_GoldenTorizo_GotoY_JumpBack_IfLessThan20Pixels        ;AAD2DD;
    dw InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_0       ;AAD2DF;
    dw Instruction_GoldenTorizo_CallY_IfStunHealthGreaterThan2A31        ;AAD2E1;
    dw InstList_Torizo_Stunned_0                                         ;AAD2E3;
    dw Instruction_GT_CallY_25Chance_IfSamusMorphedInFrontOfTorizo       ;AAD2E5;
    dw InstList_GoldenTorizo_EyeBeamAttack_0                             ;AAD2E7;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$0016           ;AAD2E9;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_1      ;AAD2EB;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$0018           ;AAD2F1;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_2      ;AAD2F3;
    dw Instruction_GoldenTorizo_CallY_25Chance_IfHealthLessThan789       ;AAD2F9;
    dw InstList_GoldenTorizo_ReleaseGoldenTorizoEggs_0                   ;AAD2FB;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$001A           ;AAD2FD;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_3      ;AAD2FF;
    dw Instruction_GoldenTorizo_GotoY_JumpBack_IfLessThan20Pixels        ;AAD305;
    dw InstList_Torizo_FacingRight_JumpBackward_LandRightFootFwd_0       ;AAD307;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$001C           ;AAD309;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingRight_LeftLegMoving_4      ;AAD30B;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$001E           ;AAD311;

InstList_GoldenTorizo_WalkingRight_RightLegMoving:
    dw Instruction_Torizo_SetSteppedRightWithLeftFootState               ;AAD315;
    dw Instruction_Torizo_FunctionInY                                    ;AAD317;
    dw Function_GoldenTorizo_NormalMovement                              ;AAD319;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAD31B;
    dw Function_GoldenTorizo_Movement_Walking                            ;AAD31D;
    dw Instruction_Torizo_PlayTorizoFootstepsSFX                         ;AAD31F;
    dw $0005,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_0     ;AAD321;
    dw Instruction_GoldenTorizo_GotoY_IfSamusIsMorphedBehindTorizo       ;AAD325;
    dw InstList_GoldenTorizo_SitDownAttack_FacingRight                   ;AAD327;
    dw Instruction_GoldenTorizo_GotoY_JumpForwards_IfAtLeast70Pixel      ;AAD329;
    dw InstList_Torizo_FacingRight_JumpingForwards_0                     ;AAD32B;
    dw Instruction_GoldenTorizo_GotoY_JumpBack_IfLessThan20Pixels        ;AAD32D;
    dw InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_0       ;AAD32F;
    dw Instruction_GoldenTorizo_CallY_IfStunHealthGreaterThan2A31        ;AAD331;
    dw InstList_Torizo_Stunned_0                                         ;AAD333;
    dw Instruction_GT_CallY_25Chance_IfSamusMorphedInFrontOfTorizo       ;AAD335;
    dw InstList_GoldenTorizo_EyeBeamAttack_0                             ;AAD337;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$0020           ;AAD339;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_1     ;AAD33B;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$0022           ;AAD341;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_2     ;AAD343;
    dw Instruction_GoldenTorizo_CallY_25Chance_IfHealthLessThan789       ;AAD349;
    dw InstList_GoldenTorizo_ReleaseGoldenTorizoEggs_0                   ;AAD34B;
    dw Instruction_GoldenTorizo_GotoY_JumpBack_IfLessThan20Pixels        ;AAD34D;
    dw InstList_Torizo_FacingRight_JumpBackwards_LandLeftFootFwd_0       ;AAD34F;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$0024           ;AAD351;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_3     ;AAD353;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$0026           ;AAD359;
    dw $0004,ExtendedSpritemaps_Torizo_WalkingRight_RightLegMoving_4     ;AAD35B;
    dw Instruction_GoldenTorizo_WalkingMovement_IndexInY,$0014           ;AAD361;
    dw Instruction_Common_GotoY                                          ;AAD365;
    dw InstList_GoldenTorizo_WalkingRight_LeftLegMoving                  ;AAD367;

MainAI_GoldenTorizo:
    LDX.W $0E54                                                          ;AAD369;
    LDA.W $0A1C                                                          ;AAD36C;
    CMP.W #$001B                                                         ;AAD36F;
    BEQ .spaceJump                                                       ;AAD372;
    CMP.W #$001C                                                         ;AAD374;
    BEQ .spaceJump                                                       ;AAD377;
    LDA.W #$0000                                                         ;AAD379;
    STA.L $7E780E,X                                                      ;AAD37C;
    BRA .executeFunction                                                 ;AAD380;


.spaceJump:
    LDA.L $7E780E,X                                                      ;AAD382;
    INC A                                                                ;AAD386;
    STA.L $7E780E,X                                                      ;AAD387;

.executeFunction:
    JSR.W ($0FB0,X)                                                      ;AAD38B;
    RTL                                                                  ;AAD38E;


Instruction_GoldenTorizo_QueueEggReleasedSFX:
    LDA.W #$0034                                                         ;AAD38F;
    JSL.L QueueSound_Lib2_Max6                                           ;AAD392;
    RTL                                                                  ;AAD396;


Instruction_GoldenTorizo_QueueLaserSFX:
    LDA.W #$0067                                                         ;AAD397;
    JSL.L QueueSound_Lib2_Max6                                           ;AAD39A;
    RTL                                                                  ;AAD39E;


Instruction_Torizo_QueueSonicBoomSFX:
    LDA.W #$0048                                                         ;AAD39F;
    JSL.L QueueSound_Lib2_Max6                                           ;AAD3A2;
    RTL                                                                  ;AAD3A6;


CheckIfTorizoIsFacingSamus:
    LDA.W $0F7A,X                                                        ;AAD3A7;
    SEC                                                                  ;AAD3AA;
    SBC.W $0AF6                                                          ;AAD3AB;
    EOR.W $0FB4,X                                                        ;AAD3AE;
    RTS                                                                  ;AAD3B1;


Goto_GoldenTorizoHealthBasedPaletteHandling:
    LDA.W $0F8C,X                                                        ;AAD3B2;
    JSL.L GoldenTorizo_HealthBasedPalette_Handling                       ;AAD3B5;
    RTS                                                                  ;AAD3B9;


HurtAI_GoldenTorizo:
    LDX.W $0E54                                                          ;AAD3BA;
    JSR.W HandleLowHealthInitialDrool                                    ;AAD3BD;
    LDA.W $0F9C,X                                                        ;AAD3C0;
    LSR A                                                                ;AAD3C3;
    BCS .flash                                                           ;AAD3C4;
    JSR.W Goto_GoldenTorizoHealthBasedPaletteHandling                    ;AAD3C6;
    BRA .return                                                          ;AAD3C9;


.flash:
    PHX                                                                  ;AAD3CB;
    LDX.W #$001E                                                         ;AAD3CC;

.loopPalettes:
    LDA.W #$7FFF                                                         ;AAD3CF;
    STA.L $7EC140,X                                                      ;AAD3D2;
    STA.L $7EC120,X                                                      ;AAD3D6;
    DEX                                                                  ;AAD3DA;
    DEX                                                                  ;AAD3DB;
    BPL .loopPalettes                                                    ;AAD3DC;
    PLX                                                                  ;AAD3DE;

.return:
    RTL                                                                  ;AAD3DF;


Instruction_GoldenTorizo_SpawnSuperMissile:
    PHY                                                                  ;AAD3E0;
    LDY.W #EnemyProjectile_GoldenTorizoSuperMissile                      ;AAD3E1;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;AAD3E4;
    PLY                                                                  ;AAD3E8;
    RTL                                                                  ;AAD3E9;


Instruction_GoldenTorizo_GotoY_IfSamusIsMorphedBehindTorizo:
    JSR.W CheckIfTorizoIsFacingSamus                                     ;AAD3EA;
    BPL .noGo                                                            ;AAD3ED;
    LDA.W #$0004                                                         ;AAD3EF;
    JSL.L CheckIfXDistanceBetweenEnemyAndSamusIsAtLeastA                 ;AAD3F2;
    BCC .noGo                                                            ;AAD3F6;
    LDA.W #$0028                                                         ;AAD3F8;
    JSL.L CheckIfXDistanceBetweenEnemyAndSamusIsAtLeastA                 ;AAD3FB;
    BCS .noGo                                                            ;AAD3FF;
    LDA.W $0A1C                                                          ;AAD401;
    CMP.W #$001D                                                         ;AAD404;
    BEQ .gotoY                                                           ;AAD407;
    CMP.W #$001E                                                         ;AAD409;
    BEQ .gotoY                                                           ;AAD40C;
    CMP.W #$001F                                                         ;AAD40E;
    BEQ .gotoY                                                           ;AAD411;
    CMP.W #$0079                                                         ;AAD413;
    BEQ .gotoY                                                           ;AAD416;
    CMP.W #$007A                                                         ;AAD418;
    BEQ .gotoY                                                           ;AAD41B;
    CMP.W #$007B                                                         ;AAD41D;
    BEQ .gotoY                                                           ;AAD420;
    CMP.W #$007C                                                         ;AAD422;
    BNE .noGo                                                            ;AAD425;

.gotoY:
    LDA.W #$0000                                                         ;AAD427;
    STA.L $7E7812,X                                                      ;AAD42A;
    LDA.W $0000,Y                                                        ;AAD42E;
    TAY                                                                  ;AAD431;
    RTL                                                                  ;AAD432;


.noGo:
    INY                                                                  ;AAD433;
    INY                                                                  ;AAD434;
    RTL                                                                  ;AAD435;


Instruction_GoldenTorizo_SpawnEyeBeam:
    PHY                                                                  ;AAD436;
    LDA.W $0000,Y                                                        ;AAD437;
    LDY.W #EnemyProjectile_GoldenTorizoEyeBeam                           ;AAD43A;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;AAD43D;
    PLY                                                                  ;AAD441;
    INY                                                                  ;AAD442;
    INY                                                                  ;AAD443;
    RTL                                                                  ;AAD444;


Instruction_GT_CallY_25Chance_IfSamusMorphedInFrontOfTorizo:
    JSR.W CheckIfTorizoIsFacingSamus                                     ;AAD445;
    BMI .noGo                                                            ;AAD448;
    LDA.W #$0020                                                         ;AAD44A;
    JSL.L CheckIfXDistanceBetweenEnemyAndSamusIsAtLeastA                 ;AAD44D;
    BCC .noGo                                                            ;AAD451;
    LDA.W #$0060                                                         ;AAD453;
    JSL.L CheckIfXDistanceBetweenEnemyAndSamusIsAtLeastA                 ;AAD456;
    BCS .noGo                                                            ;AAD45A;
    JSL.L GenerateRandomNumber                                           ;AAD45C;
    AND.W #$0110                                                         ;AAD460;
    BNE .noGo                                                            ;AAD463;
    TYA                                                                  ;AAD465;
    INC A                                                                ;AAD466;
    INC A                                                                ;AAD467;
    STA.L $7E7800,X                                                      ;AAD468;
    LDA.W $0000,Y                                                        ;AAD46C;
    TAY                                                                  ;AAD46F;
    RTL                                                                  ;AAD470;


.noGo:
    INY                                                                  ;AAD471;
    INY                                                                  ;AAD472;
    RTL                                                                  ;AAD473;


Instruction_GoldenTorizo_CallY_25Chance_IfHealthLessThan789:
    LDA.W #$0788                                                         ;AAD474;
    CMP.W $0F8C,X                                                        ;AAD477;
    BCC .noGo                                                            ;AAD47A;
    JSL.L GenerateRandomNumber                                           ;AAD47C;
    AND.W #$0102                                                         ;AAD480;
    BNE .noGo                                                            ;AAD483;
    LDA.W #$0000                                                         ;AAD485;
    STA.L $7E7812,X                                                      ;AAD488;
    TYA                                                                  ;AAD48C;
    INC A                                                                ;AAD48D;
    INC A                                                                ;AAD48E;
    STA.L $7E7800,X                                                      ;AAD48F;
    LDA.W $0000,Y                                                        ;AAD493;
    TAY                                                                  ;AAD496;
    RTL                                                                  ;AAD497;


.noGo:
    INY                                                                  ;AAD498;
    INY                                                                  ;AAD499;
    RTL                                                                  ;AAD49A;


Instruction_GoldenTorizo_CallY_IfStunHealthGreaterThan2A31:
    LDA.W #$2A30                                                         ;AAD49B;
    CMP.W $0F8C,X                                                        ;AAD49E;
    BCS .noGo                                                            ;AAD4A1;
    LDA.W $0FB6,X                                                        ;AAD4A3;
    BIT.W #$2000                                                         ;AAD4A6;
    BEQ .noGo                                                            ;AAD4A9;
    TYA                                                                  ;AAD4AB;
    INC A                                                                ;AAD4AC;
    INC A                                                                ;AAD4AD;
    STA.L $7E7800,X                                                      ;AAD4AE;
    LDA.W $0000,Y                                                        ;AAD4B2;
    TAY                                                                  ;AAD4B5;
    RTL                                                                  ;AAD4B6;


.noGo:
    INY                                                                  ;AAD4B7;
    INY                                                                  ;AAD4B8;
    RTL                                                                  ;AAD4B9;


Instruction_GoldenTorizo_GotoY_JumpForwards_IfAtLeast70Pixel:
    LDA.W #$0070                                                         ;AAD4BA;
    JSL.L CheckIfXDistanceBetweenEnemyAndSamusIsAtLeastA                 ;AAD4BD;
    BCC .noGo                                                            ;AAD4C1;
    JSR.W CheckIfTorizoIsFacingSamus                                     ;AAD4C3;
    BMI .noGo                                                            ;AAD4C6;
    LDA.W #$012C                                                         ;AAD4C8;
    CMP.L $7E780E,X                                                      ;AAD4CB;
    BCC .jump                                                            ;AAD4CF;
    LDA.B $8B                                                            ;AAD4D1;
    AND.W #$0300                                                         ;AAD4D3;
    BEQ .noGo                                                            ;AAD4D6;
    JSL.L GenerateRandomNumber                                           ;AAD4D8;
    AND.W #$0101                                                         ;AAD4DC;
    BEQ .noGo                                                            ;AAD4DF;

.jump:
    LDA.W #$0000                                                         ;AAD4E1;
    STA.L $7E7812,X                                                      ;AAD4E4;
    JSR.W MakeTorizoJumpForwards                                         ;AAD4E8;
    LDA.W $0000,Y                                                        ;AAD4EB;
    TAY                                                                  ;AAD4EE;
    RTL                                                                  ;AAD4EF;


.noGo:
    INY                                                                  ;AAD4F0;
    INY                                                                  ;AAD4F1;
    RTL                                                                  ;AAD4F2;


Instruction_GoldenTorizo_SpawnChozoOrbs:
    PHY                                                                  ;AAD4F3;
    LDY.W #EnemyProjectile_GoldenTorizoChozoOrbs                         ;AAD4F4;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAD4F7;
    PLY                                                                  ;AAD4FB;
    RTL                                                                  ;AAD4FC;


Instruction_GoldenTorizo_GotoY_JumpBack_IfLessThan20Pixels:
    LDA.L $7E7812,X                                                      ;AAD4FD;
    CMP.W #$0008                                                         ;AAD501;
    BCS .jump                                                            ;AAD504;
    LDA.W #$0020                                                         ;AAD506;
    JSL.L CheckIfXDistanceBetweenEnemyAndSamusIsAtLeastA                 ;AAD509;
    BCS .noGo                                                            ;AAD50D;
    JSR.W CheckIfTorizoIsFacingSamus                                     ;AAD50F;
    BMI .noGo                                                            ;AAD512;

.jump:
    LDA.W #$0000                                                         ;AAD514;
    STA.L $7E7812,X                                                      ;AAD517;
    JSR.W MakeTorizoJumpBackwards                                        ;AAD51B;
    LDA.W $0000,Y                                                        ;AAD51E;
    TAY                                                                  ;AAD521;
    RTL                                                                  ;AAD522;


.noGo:
    INY                                                                  ;AAD523;
    INY                                                                  ;AAD524;
    RTL                                                                  ;AAD525;


Instruction_GoldenTorizo_CallY_OrY2_ForAttack:
    TYA                                                                  ;AAD526;
    INC A                                                                ;AAD527;
    INC A                                                                ;AAD528;
    INC A                                                                ;AAD529;
    INC A                                                                ;AAD52A;
    STA.L $7E7800,X                                                      ;AAD52B;
    LDA.W $09C6                                                          ;AAD52F;
    CMP.W #$0020                                                         ;AAD532;
    BCC .spewOrbs                                                        ;AAD535;
    LDA.W $0AF6                                                          ;AAD537;
    LSR A                                                                ;AAD53A;
    ADC.W $05B6                                                          ;AAD53B;
    AND.W #$0008                                                         ;AAD53E;
    BEQ .sonicBooms                                                      ;AAD541;

.spewOrbs:
    LDA.W $0000,Y                                                        ;AAD543;
    BRA .return                                                          ;AAD546;


.sonicBooms:
    LDA.W $0002,Y                                                        ;AAD548;

.return:
    TAY                                                                  ;AAD54B;
    RTL                                                                  ;AAD54C;


Instruction_GoldenTorizo_WalkingMovement_IndexInY:
    PHY                                                                  ;AAD54D;
    STZ.B $12                                                            ;AAD54E;
    LDA.W $0000,Y                                                        ;AAD550;
    TAY                                                                  ;AAD553;
    LDA.W .velocities,Y                                                  ;AAD554;
    STA.B $14                                                            ;AAD557;
    STA.W $0FA8,X                                                        ;AAD559;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;AAD55C;
    PLY                                                                  ;AAD560;
    BCC .noCollision                                                     ;AAD561;
    LDA.W #$0000                                                         ;AAD563;
    STA.L $7E7806,X                                                      ;AAD566;
    LDA.W $0FB4,X                                                        ;AAD56A;
    BMI .facingRight                                                     ;AAD56D;
    LDY.W #InstList_GoldenTorizo_TurningRight                            ;AAD56F;
    RTL                                                                  ;AAD572;


.facingRight:
    LDY.W #InstList_GoldenTorizo_TurningLeft                             ;AAD573;
    RTL                                                                  ;AAD576;


.noCollision:
    JSL.L AlignEnemyYPositionWIthNonSquareSlope                          ;AAD577;
    LDA.W $0AF6                                                          ;AAD57B;
    SEC                                                                  ;AAD57E;
    SBC.W $0F7A,X                                                        ;AAD57F;
    EOR.W $0FB4,X                                                        ;AAD582;
    BPL .facingAway                                                      ;AAD585;
    INY                                                                  ;AAD587;
    INY                                                                  ;AAD588;
    RTL                                                                  ;AAD589;


.facingAway:
    LDA.L $7E7806,X                                                      ;AAD58A;
    BNE .return                                                          ;AAD58E;
    LDA.W #$0010                                                         ;AAD590;
    STA.L $7E7806,X                                                      ;AAD593;

.return:
    INY                                                                  ;AAD597;
    INY                                                                  ;AAD598;
    RTL                                                                  ;AAD599;


.velocities:
    dw $FFFB,$0000,$FFFB,$FFED,$FFF0,$FFF9,$0000,$FFF9                   ;AAD59A;
    dw $FFEF,$FFEE,$0005,$0000,$0005,$0013,$0010,$0007                   ;AAD5AA;
    dw $0000,$0007,$0011,$0012                                           ;AAD5BA;

Function_GoldenTorizo_WakeIfSamusIsBelowAndRightOfTargetPos:
    LDA.W #$0140                                                         ;AAD5C2;
    CMP.W $0AFA                                                          ;AAD5C5;
    BCS .return                                                          ;AAD5C8;
    LDA.W #$0170                                                         ;AAD5CA;
    CMP.W $0AF6                                                          ;AAD5CD;
    BCS .return                                                          ;AAD5D0;
    INC.W $0F92,X                                                        ;AAD5D2;
    INC.W $0F92,X                                                        ;AAD5D5;
    LDA.W #$0001                                                         ;AAD5D8;
    STA.W $0F94,X                                                        ;AAD5DB;

.return:
    RTS                                                                  ;AAD5DE;


Function_GoldenTorizo_SimpleMovement:
    JSR.W HandleLowHealthInitialDrool                                    ;AAD5DF;
    JSR.W HandleFalling                                                  ;AAD5E2;
    RTS                                                                  ;AAD5E5;


Function_GoldenTorizo_NormalMovement:
    JSR.W HandleLowHealthInitialDrool                                    ;AAD5E6;
    JSR.W ($0FB2,X)                                                      ;AAD5E9;
    RTS                                                                  ;AAD5EC;


Function_GoldenTorizo_Movement_Attacking:
    JSR.W HandleFalling                                                  ;AAD5ED;
    RTS                                                                  ;AAD5F0;


Function_GoldenTorizo_Movement_Walking:
    LDA.L $7E7806,X                                                      ;AAD5F1;
    BEQ .notTurning                                                      ;AAD5F5;
    DEC A                                                                ;AAD5F7;
    STA.L $7E7806,X                                                      ;AAD5F8;
    BNE .notTurning                                                      ;AAD5FC;
    LDA.W #$0000                                                         ;AAD5FE;
    STA.L $7E7806,X                                                      ;AAD601;
    LDA.W $0FB4,X                                                        ;AAD605;
    BMI .facingRight                                                     ;AAD608;
    LDA.W #InstList_GoldenTorizo_TurningRight                            ;AAD60A;
    BRA +                                                                ;AAD60D;


.facingRight:
    LDA.W #InstList_GoldenTorizo_TurningLeft                             ;AAD60F;

  + STA.W $0F92,X                                                        ;AAD612;
    LDA.W #$0001                                                         ;AAD615;
    STA.W $0F94,X                                                        ;AAD618;
    RTS                                                                  ;AAD61B;


.notTurning:
    STZ.B $12                                                            ;AAD61C;
    LDA.W $0FA8,X                                                        ;AAD61E;
    BPL +                                                                ;AAD621;
    EOR.W #$FFFF                                                         ;AAD623;
    INC A                                                                ;AAD626;

  + INC A                                                                ;AAD627;
    CMP.W #$0010                                                         ;AAD628;
    BCC +                                                                ;AAD62B;
    LDA.W #$000F                                                         ;AAD62D;

  + STA.B $14                                                            ;AAD630;
    JSL.L MoveEnemyDownBy_14_12                                          ;AAD632;
    BCS .return                                                          ;AAD636;
    LDA.W $0FB4,X                                                        ;AAD638;
    BMI ..facingRight                                                    ;AAD63B;
    LDA.W #InstList_Torizo_FacingLeft_Falling_0                          ;AAD63D;
    BRA +                                                                ;AAD640;


..facingRight:
    LDA.W #InstList_Torizo_FacingRight_Falling_0                         ;AAD642;

  + STA.W $0F92,X                                                        ;AAD645;
    LDA.W #$0001                                                         ;AAD648;
    STA.W $0F94,X                                                        ;AAD64B;
    LDA.W #$0100                                                         ;AAD64E;
    STA.W $0FAA,X                                                        ;AAD651;
    STZ.W $0FA8,X                                                        ;AAD654;

.return:
    RTS                                                                  ;AAD657;


ShotReaction_GoldenTorizo_StandUp_SitDown:
    LDX.W $0E54                                                          ;AAD658;
    LDA.W $0F9C,X                                                        ;AAD65B;
    BNE .return                                                          ;AAD65E;
    LDA.L $7E7808,X                                                      ;AAD660;
    BEQ ShotReaction_GoldenTorizo_Damaged                                ;AAD664;

.return:
    RTL                                                                  ;AAD666;


ShotReaction_GoldenTorizo_Normal:
    LDX.W $0E54                                                          ;AAD667;
    LDA.W $0F9C,X                                                        ;AAD66A;
    BNE .return                                                          ;AAD66D;
    LDA.L $7E7808,X                                                      ;AAD66F;
    BEQ .gotoFlashOrAnimLock                                             ;AAD673;
    JMP.W ShotReaction_GoldenTorizo_Damaged                              ;AAD675;


.gotoFlashOrAnimLock:
    JMP.W .flashOrAnimLock                                               ;AAD678; >.<


.return:
    RTL                                                                  ;AAD67B;


.flashOrAnimLock:
    LDA.W $0FB6,X                                                        ;AAD67C;
    BIT.W #$1000                                                         ;AAD67F;
    BNE .stun                                                            ;AAD682;
    LDA.W $18A6                                                          ;AAD684;
    ASL A                                                                ;AAD687;
    TAY                                                                  ;AAD688;
    LDA.W $0C18,Y                                                        ;AAD689;
    AND.W #$0F00                                                         ;AAD68C;
    STA.L $7E780A,X                                                      ;AAD68F;
    CMP.W #$0100                                                         ;AAD693;
    BEQ ShotReaction_GoldenTorizo_Normal_Missile                         ;AAD696;
    CMP.W #$0200                                                         ;AAD698;
    BEQ ShotReaction_GoldenTorizo_Normal_SuperMissile                    ;AAD69B;

.stun:
    LDA.W $0FB6,X                                                        ;AAD69D;
    ORA.W #$2000                                                         ;AAD6A0;
    STA.W $0FB6,X                                                        ;AAD6A3; fallthrough to ShotReaction_GoldenTorizo_Damaged

ShotReaction_GoldenTorizo_Damaged:
    JSL.L NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic_External     ;AAD6A6;
    LDX.W $0E54                                                          ;AAD6AA;
    LDA.W $0F8C,X                                                        ;AAD6AD;
    BNE .return                                                          ;AAD6B0;
    LDA.W #InstList_Torizo_DeathSequence_0                               ;AAD6B2;
    STA.W $0F92,X                                                        ;AAD6B5;
    LDA.W #$0001                                                         ;AAD6B8;
    STA.W $0F94,X                                                        ;AAD6BB;
    LDA.W $0FB6,X                                                        ;AAD6BE;
    ORA.W #$C000                                                         ;AAD6C1;
    STA.W $0FB6,X                                                        ;AAD6C4;
    LDA.W $0F86,X                                                        ;AAD6C7;
    ORA.W #$0400                                                         ;AAD6CA;
    STA.W $0F86,X                                                        ;AAD6CD;

.return:
    RTL                                                                  ;AAD6D0;


ShotReaction_GoldenTorizo_Normal_Missile:
    LDA.W $0C04,Y                                                        ;AAD6D1;
    AND.W #$FFEF                                                         ;AAD6D4;
    STA.W $0C04,Y                                                        ;AAD6D7;
    LDA.W #RTS_AAC6AB                                                    ;AAD6DA;
    STA.W $0FB0,X                                                        ;AAD6DD;
    LDA.W #$0001                                                         ;AAD6E0;
    STA.W $0F94,X                                                        ;AAD6E3;
    BIT.W $0FB4,X                                                        ;AAD6E6;
    BMI .keepRight                                                       ;AAD6E9;
    LDA.W #InstList_GoldenTorizo_Dodge_TurningLeft                       ;AAD6EB;
    BRA +                                                                ;AAD6EE;


.keepRight:
    LDA.W #InstList_GoldenTorizo_Dodge_TurningRight                      ;AAD6F0;

  + STA.W $0F92,X                                                        ;AAD6F3;
    RTL                                                                  ;AAD6F6;


ShotReaction_GoldenTorizo_Normal_SuperMissile:
    JSR.W CheckIfTorizoIsFacingSamus                                     ;AAD6F7;
    BPL .facingSamus                                                     ;AAD6FA;
    JMP.W ShotReaction_GoldenTorizo_Damaged                              ;AAD6FC;


.facingSamus:
    LDA.W $0FB6,X                                                        ;AAD6FF;
    ORA.W #$1000                                                         ;AAD702;
    STA.W $0FB6,X                                                        ;AAD705;
    LDA.W #RTS_AAC6AB                                                    ;AAD708;
    STA.W $0FB0,X                                                        ;AAD70B;
    LDA.W $0C04,Y                                                        ;AAD70E;
    ORA.W #$0010                                                         ;AAD711;
    STA.W $0C04,Y                                                        ;AAD714;
    LDA.W #$0001                                                         ;AAD717;
    STA.W $0F94,X                                                        ;AAD71A;
    LDA.W $0FB4,X                                                        ;AAD71D;
    BIT.W #$2000                                                         ;AAD720;
    BNE .backgroundLegForward                                            ;AAD723;
    BIT.W $0FB4,X                                                        ;AAD725;
    BMI .facingRight                                                     ;AAD728;
    LDA.W #InstList_GoldenTorizo_CaughtSuper_FacingLeft_LeftLegFwd       ;AAD72A;
    BRA +                                                                ;AAD72D;


.facingRight:
    LDA.W #InstList_GoldenTorizo_CaughtSuper_FacingRight_RightLegFwd     ;AAD72F;
    BRA +                                                                ;AAD732;


.backgroundLegForward:
    BIT.W $0FB4,X                                                        ;AAD734;
    BMI ..facingRight                                                    ;AAD737;
    LDA.W #InstList_GoldenTorizo_CaughtSuper_FacingLeft_RightLegFwd      ;AAD739;
    BRA +                                                                ;AAD73C;


..facingRight:
    LDA.W #InstList_GoldenTorizo_CaughtSuper_FacingRight_LeftLegFwd      ;AAD73E;

  + STA.W $0F92,X                                                        ;AAD741;
    RTL                                                                  ;AAD744;


Palettes_TourianStatue_Ridley:
; Initial. (Sprite palette 1)
    dw $3800,$57FF,$2BFF,$1F3C,$0278,$01B0,$010B,$0087                   ;AAD745;
    dw $0044,$001F,$0012,$0009,$7FFF,$7FFF,$7FFF,$0000                   ;AAD755;

Palettes_TourianStatue_Phantoon:
; Sprite palette 2
    dw $3800,$57FF,$2BFF,$1F3C,$0278,$01B0,$010B,$0087                   ;AAD765;
    dw $0044,$7FFF,$7FFF,$7FFF,$03FF,$0252,$0129,$0000                   ;AAD775;

Palettes_TourianStatue_BaseDecoration:
; Sprite palette 7
    dw $3800,$27F9,$2375,$1AD2,$164E,$11AB,$0D27,$0484                   ;AAD785;
    dw $0000,$7F5F,$7C1F,$5816,$300C,$5294,$39CE,$2108                   ;AAD795;

InstList_TourianStatue_Ridley_0:
    dw Instruction_Common_DeleteEnemy                                    ;AAD7A5;

InstList_TourianStatue_Ridley_1:
    dw $7777,UNUSED_Spritemaps_TourianStatue_Ridley_AAD83B               ;AAD7A7;
    dw Instruction_Common_GotoY                                          ;AAD7AB;
    dw InstList_TourianStatue_Ridley_1                                   ;AAD7AD;

InstList_TourianStatue_Phantoon_0:
    dw Instruction_Common_DeleteEnemy                                    ;AAD7AF;

InstList_TourianStatue_Phantoon_1:
    dw $7777,UNUSED_Spritemaps_TourianStatue_Phantoon_AAD8B0             ;AAD7B1;
    dw Instruction_Common_GotoY                                          ;AAD7B5;
    dw InstList_TourianStatue_Phantoon_1                                 ;AAD7B7;

InstList_TourianStatue_BaseDecoration_0:
    dw Instruction_Common_DeleteEnemy                                    ;AAD7B9;
    dw $0100,UNUSED_Spritemaps_TourianStatue_BaseDecoration_AAD816       ;AAD7BB;

InstList_TourianStatue_BaseDecoration_1:
    dw $7777,UNUSED_Spritemaps_TourianStatue_BaseDecoration_AAD816       ;AAD7BF;
    dw Instruction_Common_GotoY                                          ;AAD7C3;
    dw InstList_TourianStatue_BaseDecoration_1                           ;AAD7C5;

MainAI_TourianStatue:
    RTL                                                                  ;AAD7C7;


InitAI_TourianStatue:
    LDX.W $0E54                                                          ;AAD7C8;
    STZ.W $0F96,X                                                        ;AAD7CB;
    LDA.W #$0001                                                         ;AAD7CE;
    STA.W $0F94,X                                                        ;AAD7D1;
    STZ.W $0F90,X                                                        ;AAD7D4;
    LDY.W $0FB4,X                                                        ;AAD7D7;
    LDA.W .pointers,Y                                                    ;AAD7DA;
    STA.W $0F92,X                                                        ;AAD7DD;
    LDY.W $0FB4,X                                                        ;AAD7E0;
    BNE .nonZeroParam1                                                   ;AAD7E3;
    LDY.W #EnemyProjectile_TourianStatueBaseDecoration                   ;AAD7E5;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;AAD7E8;
    LDY.W #EnemyProjectile_TourianStatueRidley                           ;AAD7EC;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;AAD7EF;
    LDY.W #EnemyProjectile_TourianStatuePhantoon                         ;AAD7F3;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;AAD7F6;

.nonZeroParam1:
    LDX.W #$001E                                                         ;AAD7FA;

.loopPalettes:
    LDA.W Palettes_TourianStatue_BaseDecoration,X                        ;AAD7FD;
    STA.L $7EC3E0,X                                                      ;AAD800;
    LDA.W Palettes_TourianStatue_Phantoon,X                              ;AAD804;
    STA.L $7EC340,X                                                      ;AAD807;
    DEX                                                                  ;AAD80B;
    DEX                                                                  ;AAD80C;
    BPL .loopPalettes                                                    ;AAD80D;
    RTL                                                                  ;AAD80F;


.pointers:
    dw InstList_TourianStatue_BaseDecoration_0                           ;AAD810;
    dw InstList_TourianStatue_Ridley_0                                   ;AAD812;
    dw InstList_TourianStatue_Phantoon_0                                 ;AAD814;

UNUSED_Spritemaps_TourianStatue_BaseDecoration_AAD816:
    dw $0007                                                             ;AAD816;
    %spritemapEntry(1, $4228, $F8, 0, 0, 1, 7, $19C)
    %spritemapEntry(1, $4218, $F8, 0, 0, 1, 7, $19A)
    %spritemapEntry(1, $4208, $F8, 0, 0, 1, 7, $198)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 1, 7, $196)
    %spritemapEntry(1, $43E8, $F8, 0, 0, 1, 7, $194)
    %spritemapEntry(1, $43D8, $F8, 0, 0, 1, 7, $192)
    %spritemapEntry(1, $43C8, $F8, 0, 0, 1, 7, $190)

UNUSED_Spritemaps_TourianStatue_Ridley_AAD83B:
    dw $0017                                                             ;AAD83B;
    %spritemapEntry(1, $43E5, $18, 0, 0, 2, 1, $144)
    %spritemapEntry(1, $43E5, $08, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43F5, $18, 0, 0, 2, 1, $146)
    %spritemapEntry(0, $0D, $20, 0, 0, 2, 1, $17D)
    %spritemapEntry(0, $0D, $18, 0, 0, 2, 1, $16D)
    %spritemapEntry(0, $05, $18, 0, 0, 2, 1, $148)
    %spritemapEntry(1, $4215, $08, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $4205, $08, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43F5, $08, 0, 0, 2, 1, $12E)
    %spritemapEntry(1, $43D5, $08, 0, 0, 2, 1, $12A)
    %spritemapEntry(1, $4215, $F8, 0, 0, 2, 1, $128)
    %spritemapEntry(1, $4205, $F8, 0, 0, 2, 1, $126)
    %spritemapEntry(1, $43F5, $F8, 0, 0, 2, 1, $124)
    %spritemapEntry(1, $43E5, $F8, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $43D5, $F8, 0, 0, 2, 1, $120)
    %spritemapEntry(1, $4215, $E8, 0, 0, 2, 1, $10E)
    %spritemapEntry(1, $4205, $E8, 0, 0, 2, 1, $10C)
    %spritemapEntry(1, $43F5, $E8, 0, 0, 2, 1, $10A)
    %spritemapEntry(1, $43E5, $E8, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $4215, $D8, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $4205, $D8, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43F5, $D8, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43E5, $D8, 0, 0, 2, 1, $100)

UNUSED_Spritemaps_TourianStatue_Phantoon_AAD8B0:
    dw $0013                                                             ;AAD8B0;
    %spritemapEntry(0, $08, $1C, 0, 0, 2, 2, $187)
    %spritemapEntry(0, $00, $1C, 0, 0, 2, 2, $186)
    %spritemapEntry(0, $1F8, $1C, 0, 0, 2, 2, $185)
    %spritemapEntry(0, $1F0, $1C, 0, 0, 2, 2, $184)
    %spritemapEntry(0, $00, $04, 0, 0, 2, 2, $183)
    %spritemapEntry(0, $00, $FC, 0, 0, 2, 2, $181)
    %spritemapEntry(0, $1F8, $04, 0, 0, 2, 2, $182)
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 2, $180)
    %spritemapEntry(1, $4208, $EC, 0, 0, 2, 2, $161)
    %spritemapEntry(1, $43E8, $EC, 0, 0, 2, 2, $14D)
    %spritemapEntry(1, $4208, $FC, 0, 0, 2, 2, $165)
    %spritemapEntry(1, $4208, $0C, 0, 0, 2, 2, $16B)
    %spritemapEntry(1, $43F8, $0C, 0, 0, 2, 2, $169)
    %spritemapEntry(1, $43E8, $0C, 0, 0, 2, 2, $167)
    %spritemapEntry(1, $43E8, $FC, 0, 0, 2, 2, $163)
    %spritemapEntry(1, $4200, $EC, 0, 0, 2, 2, $160)
    %spritemapEntry(1, $43F0, $EC, 0, 0, 2, 2, $14E)
    %spritemapEntry(1, $4200, $DC, 0, 0, 2, 2, $14B)
    %spritemapEntry(1, $43F0, $DC, 0, 0, 2, 2, $149)


Palette_Shaktool:
    dw $3800,$5755,$4A4F,$1CE4,$0C60,$56B2,$3E0D,$2D68                   ;AAD911;
    dw $2526,$03FF,$02F7,$0210,$0108,$001F,$0018,$000E                   ;AAD921;


UNUSED_Instruction_Shaktool_Lower1PixelAwayFromProj_AAD931:
    PHY                                                                  ;AAD931;
    LDY.W $0FB0,X                                                        ;AAD932;
    LDA.W $106E,Y                                                        ;AAD935;
    EOR.W #$0080                                                         ;AAD938;
    PLY                                                                  ;AAD93B;
    JMP.W MoveShaktoolPiece1Pixel                                        ;AAD93C;


UNUSED_Instruction_Shaktool_Raise1PixelTowardsProj_AAD93F:
    PHY                                                                  ;AAD93F;
    LDY.W $0FB0,X                                                        ;AAD940;
    LDA.W $106E,Y                                                        ;AAD943;
    PLY                                                                  ;AAD946;
    JMP.W MoveShaktoolPiece1Pixel                                        ;AAD947;


Instruction_Shaktool_Lower1Pixel:
    LDA.W $0FA9,X                                                        ;AAD94A;
    EOR.W #$0080                                                         ;AAD94D;
    JMP.W MoveShaktoolPiece1Pixel                                        ;AAD950;


Instruction_Shaktool_Raise1Pixel:
    LDA.W $0FA9,X                                                        ;AAD953;

MoveShaktoolPiece1Pixel:
    PHX                                                                  ;AAD956;
    PHY                                                                  ;AAD957;
    TXY                                                                  ;AAD958;
    AND.W #$00FF                                                         ;AAD959;
    ASL A                                                                ;AAD95C;
    TAX                                                                  ;AAD95D;
    STZ.B $12                                                            ;AAD95E;
    STZ.B $14                                                            ;AAD960;
    LDA.L SineCosineTables_8bitSine_SignExtended,X                       ;AAD962;
    BPL +                                                                ;AAD966;
    DEC.B $14                                                            ;AAD968;

  + STA.B $13                                                            ;AAD96A;
    LDA.W $0F7C,Y                                                        ;AAD96C;
    CLC                                                                  ;AAD96F;
    ADC.B $12                                                            ;AAD970;
    STA.W $0F7C,Y                                                        ;AAD972;
    LDA.W $0F7A,Y                                                        ;AAD975;
    ADC.B $14                                                            ;AAD978;
    STA.W $0F7A,Y                                                        ;AAD97A;
    STZ.B $12                                                            ;AAD97D;
    STZ.B $14                                                            ;AAD97F;
    LDA.L SineCosineTables_NegativeCosine_SignExtended,X                 ;AAD981;
    BPL +                                                                ;AAD985;
    DEC.B $14                                                            ;AAD987;

  + STA.B $13                                                            ;AAD989;
    LDA.W $0F80,Y                                                        ;AAD98B;
    CLC                                                                  ;AAD98E;
    ADC.B $12                                                            ;AAD98F;
    STA.W $0F80,Y                                                        ;AAD991;
    LDA.W $0F7E,Y                                                        ;AAD994;
    ADC.B $14                                                            ;AAD997;
    STA.W $0F7E,Y                                                        ;AAD999;
    PLY                                                                  ;AAD99C;
    PLX                                                                  ;AAD99D;
    RTL                                                                  ;AAD99E;


RTL_AAD99F:
    RTL                                                                  ;AAD99F;

    PHY                                                                  ;AAD9A0; dead code
    LDY.W #EnemyProjectile_ShaktoolFrontCircle                           ;AAD9A1;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAD9A4;
    PHA                                                                  ;AAD9A8;
    LDY.W #EnemyProjectile_ShaktoolMiddleCircle                          ;AAD9A9;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAD9AC;
    PLA                                                                  ;AAD9B0;
    LDY.W #EnemyProjectile_ShaktoolBackCircle                            ;AAD9B1;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;AAD9B4;
    PLY                                                                  ;AAD9B8;
    RTL                                                                  ;AAD9B9;


Instruction_Shaktool_ResetShaktoolFunctions:
    PHY                                                                  ;AAD9BA;
    LDY.W $0FB0,X                                                        ;AAD9BB;
    LDA.W ShaktoolPieceData_functionPointer                              ;AAD9BE;
    STA.W $0FB2,Y                                                        ;AAD9C1;
    LDA.W ShaktoolPieceData_functionPointer_rightArm                     ;AAD9C4;
    STA.W $0FF2,Y                                                        ;AAD9C7;
    LDA.W ShaktoolPieceData_functionPointer_centerRightArm               ;AAD9CA;
    STA.W $1032,Y                                                        ;AAD9CD;
    LDA.W ShaktoolPieceData_functionPointer_head                         ;AAD9D0;
    STA.W $1072,Y                                                        ;AAD9D3;
    LDA.W ShaktoolPieceData_functionPointer_centerLeftArm                ;AAD9D6;
    STA.W $10B2,Y                                                        ;AAD9D9;
    LDA.W ShaktoolPieceData_functionPointer_leftArm                      ;AAD9DC;
    STA.W $10F2,Y                                                        ;AAD9DF;
    LDA.W ShaktoolPieceData_functionPointer_leftSaw                      ;AAD9E2;
    STA.W $1132,Y                                                        ;AAD9E5;
    PLY                                                                  ;AAD9E8;
    RTL                                                                  ;AAD9E9;


UNUSED_InstList_Shaktool_SawHand_Attack_PrimaryPiece_AAD9EA:
    dw Instruction_Common_WaitYFrames,$0240                              ;AAD9EA;
    dw Instruction_Common_GotoY                                          ;AAD9EE;
    dw InstList_Shaktool_SawHand_PrimaryPiece                            ;AAD9F0;

UNUSED_InstList_Shaktool_SawHand_Attack_FinalPiece_AAD9F2:
    dw Instruction_Common_WaitYFrames,$0240                              ;AAD9F2;
    dw Instruction_Shaktool_ResetShaktoolFunctions                       ;AAD9F6;
    dw Instruction_Common_GotoY                                          ;AAD9F8;
    dw InstList_Shaktool_SawHand_FinalPiece                              ;AAD9FA;

InstList_Shaktool_SawHand_HeadBob_PrimaryPiece:
    dw Instruction_Common_WaitYFrames,$0014                              ;AAD9FC;
    dw Instruction_Common_GotoY                                          ;AADA00;
    dw InstList_Shaktool_SawHand_PrimaryPiece                            ;AADA02;

InstList_Shaktool_SawHand_HeadBob_FinalPiece:
    dw Instruction_Common_WaitYFrames,$0014                              ;AADA04;
    dw Instruction_Shaktool_ResetShaktoolFunctions                       ;AADA08;
    dw Instruction_Common_GotoY                                          ;AADA0A;
    dw InstList_Shaktool_SawHand_FinalPiece                              ;AADA0C;

InstList_Shaktool_SawHand_PrimaryPiece:
    dw $000A,Spritemaps_Shaktool_SawHand_PrimaryPiece_0                  ;AADA0E;
    dw $000A,Spritemaps_Shaktool_SawHand_PrimaryPiece_1                  ;AADA12;
    dw $000A,Spritemaps_Shaktool_SawHand_PrimaryPiece_2                  ;AADA16;
    dw Instruction_Common_GotoY                                          ;AADA1A;
    dw InstList_Shaktool_SawHand_PrimaryPiece                            ;AADA1C;

InstList_Shaktool_SawHand_FinalPiece:
    dw $0003,Spritemaps_Shaktool_SawHand_FinalPiece_0                    ;AADA1E;
    dw $0003,Spritemaps_Shaktool_SawHand_FinalPiece_1                    ;AADA22;
    dw $0003,Spritemaps_Shaktool_SawHand_FinalPiece_2                    ;AADA26;
    dw Instruction_Common_GotoY                                          ;AADA2A;
    dw InstList_Shaktool_SawHand_FinalPiece                              ;AADA2C;

UNUSED_InstList_Shaktool_ArmPiece_Attack_Back_AADA2E:
    dw Instruction_Common_WaitYFrames,$00C0                              ;AADA2E;
    dw UNUSED_Instruction_Shaktool_Lower1PixelAwayFromProj_AAD931        ;AADA32;
    dw Instruction_Common_WaitYFrames,$0080                              ;AADA34;
    dw UNUSED_Instruction_Shaktool_Raise1PixelTowardsProj_AAD93F         ;AADA38;
    dw Instruction_Common_WaitYFrames,$0100                              ;AADA3A;
    dw Instruction_Common_GotoY                                          ;AADA3E;
    dw InstList_Shaktool_ArmPiece_Normal                                 ;AADA40;

UNUSED_InstList_Shaktool_ArmPiece_Attack_Front_AADA42:
    dw Instruction_Common_WaitYFrames,$0100                              ;AADA42;
    dw UNUSED_Instruction_Shaktool_Lower1PixelAwayFromProj_AAD931        ;AADA46;
    dw Instruction_Common_WaitYFrames,$0080                              ;AADA48;
    dw UNUSED_Instruction_Shaktool_Raise1PixelTowardsProj_AAD93F         ;AADA4C;
    dw Instruction_Common_WaitYFrames,$00C0                              ;AADA4E;
    dw Instruction_Common_GotoY                                          ;AADA52;
    dw InstList_Shaktool_ArmPiece_Normal                                 ;AADA54;

InstList_Shaktool_ArmPiece_HeadBob_Back:
    dw Instruction_Shaktool_Lower1Pixel                                  ;AADA56;
    dw Instruction_Common_WaitYFrames,$0014                              ;AADA58;
    dw Instruction_Shaktool_Raise1Pixel                                  ;AADA5C;
    dw Instruction_Common_GotoY                                          ;AADA5E;
    dw InstList_Shaktool_ArmPiece_Normal                                 ;AADA60;

InstList_Shaktool_ArmPiece_HeadBob_Front:
    dw Instruction_Common_WaitYFrames,$0004                              ;AADA62;
    dw Instruction_Shaktool_Lower1Pixel                                  ;AADA66;
    dw Instruction_Common_WaitYFrames,$000C                              ;AADA68;
    dw Instruction_Shaktool_Raise1Pixel                                  ;AADA6C;
    dw Instruction_Common_WaitYFrames,$0004                              ;AADA6E;

InstList_Shaktool_ArmPiece_Normal:
    dw $0077,Spritemaps_Shaktool_ArmPiece                                ;AADA72;
    dw Instruction_Common_GotoY                                          ;AADA76;
    dw InstList_Shaktool_ArmPiece_Normal                                 ;AADA78;

UNUSED_InstList_Shaktool_Head_Attack_AADA7A:
    dw Instruction_Common_WaitYFrames,$0080                              ;AADA7A;
    dw UNUSED_Instruction_Shaktool_Lower1PixelAwayFromProj_AAD931        ;AADA7E;
    dw RTL_AAD99F                                                        ;AADA80;
    dw Instruction_Common_WaitYFrames,$0080                              ;AADA82;
    dw UNUSED_Instruction_Shaktool_Raise1PixelTowardsProj_AAD93F         ;AADA86;
    dw Instruction_Common_WaitYFrames,$0140                              ;AADA88;
    dw Instruction_Common_WaitYFrames,$0001                              ;AADA8C;

InstList_Shaktool_Head_HeadBob:
    dw Instruction_Common_WaitYFrames,$0008                              ;AADA90;
    dw Instruction_Shaktool_Lower1Pixel                                  ;AADA94;
    dw Instruction_Common_WaitYFrames,$0004                              ;AADA96;
    dw Instruction_Shaktool_Raise1Pixel                                  ;AADA9A;
    dw Instruction_Common_WaitYFrames,$0008                              ;AADA9C;
    dw Instruction_Common_WaitYFrames,$0001                              ;AADAA0;

InstList_Shaktool_Head_AimingLeft:
    dw $0774,Spritemaps_Shaktool_Head_0                                  ;AADAA4;
    dw Instruction_Common_GotoY                                          ;AADAA8;
    dw InstList_Shaktool_Head_AimingLeft                                 ;AADAAA;

InstList_Shaktool_Head_AimingUpLeft:
    dw $0775,Spritemaps_Shaktool_Head_1                                  ;AADAAC;
    dw Instruction_Common_GotoY                                          ;AADAB0;
    dw InstList_Shaktool_Head_AimingUpLeft                               ;AADAB2;

InstList_Shaktool_Head_AimingUp:
    dw $0776,Spritemaps_Shaktool_Head_2                                  ;AADAB4;
    dw Instruction_Common_GotoY                                          ;AADAB8;
    dw InstList_Shaktool_Head_AimingUp                                   ;AADABA;

InstList_Shaktool_Head_AimingUpRight:
    dw $0777,Spritemaps_Shaktool_Head_3                                  ;AADABC;
    dw Instruction_Common_GotoY                                          ;AADAC0;
    dw InstList_Shaktool_Head_AimingUpRight                              ;AADAC2;

InstList_Shaktool_Head_AimingRight:
    dw $0778,Spritemaps_Shaktool_Head_4                                  ;AADAC4;
    dw Instruction_Common_GotoY                                          ;AADAC8;
    dw InstList_Shaktool_Head_AimingRight                                ;AADACA;

InstList_Shaktool_Head_AimingDownRight:
    dw $0779,Spritemaps_Shaktool_Head_5                                  ;AADACC;
    dw Instruction_Common_GotoY                                          ;AADAD0;
    dw InstList_Shaktool_Head_AimingDownRight                            ;AADAD2;

InstList_Shaktool_Head_AimingDown:
    dw $077A,Spritemaps_Shaktool_Head_6                                  ;AADAD4;
    dw Instruction_Common_GotoY                                          ;AADAD8;
    dw InstList_Shaktool_Head_AimingDown                                 ;AADADA;

InstList_Shaktool_Head_AimingDownLeft:
    dw $077B,Spritemaps_Shaktool_Head_7                                  ;AADADC;
    dw Instruction_Common_GotoY                                          ;AADAE0;
    dw InstList_Shaktool_Head_AimingDownLeft                             ;AADAE2;

RTS_AADAE4:
    RTS                                                                  ;AADAE4;

    JSL.L GenerateRandomNumber                                           ;AADAE5; dead code
    BIT.W #$8431                                                         ;AADAE9;
    BNE .return                                                          ;AADAEC;
    LDY.W #$000C                                                         ;AADAEE;

.loop:
    LDA.W #RTS_AADCAA                                                    ;AADAF1;
    STA.W $0FB2,X                                                        ;AADAF4;
    LDA.W ShaktoolPieceData_unusedAttackInstListPointer,Y                ;AADAF7;
    STA.W $0F92,X                                                        ;AADAFA;
    LDA.W #$0001                                                         ;AADAFD;
    STA.W $0F94,X                                                        ;AADB00;
    TXA                                                                  ;AADB03;
    SEC                                                                  ;AADB04;
    SBC.W #$0040                                                         ;AADB05;
    TAX                                                                  ;AADB08;
    DEY                                                                  ;AADB09;
    DEY                                                                  ;AADB0A;
    BPL .loop                                                            ;AADB0B;

.return:
    RTS                                                                  ;AADB0D;


ShaktoolPiecesMovementOptionsInA:
    LDY.W $0FB0,X                                                        ;AADB0E;
    STA.W $0FB4,Y                                                        ;AADB11;
    STA.W $0FF4,Y                                                        ;AADB14;
    STA.W $1034,Y                                                        ;AADB17;
    STA.W $1074,Y                                                        ;AADB1A;
    STA.W $10B4,Y                                                        ;AADB1D;
    STA.W $10F4,Y                                                        ;AADB20;
    STA.W $1134,Y                                                        ;AADB23;
    RTS                                                                  ;AADB26;


ShaktoolPiecesFacingAngleInA:
    LDY.W $0FB0,X                                                        ;AADB27;
    STA.W $0FA8,Y                                                        ;AADB2A;
    STA.W $0FE8,Y                                                        ;AADB2D;
    STA.W $1028,Y                                                        ;AADB30;
    STA.W $1068,Y                                                        ;AADB33;
    STA.W $10A8,Y                                                        ;AADB36;
    STA.W $10E8,Y                                                        ;AADB39;
    STA.W $1128,Y                                                        ;AADB3C;
    RTS                                                                  ;AADB3F;


ShaktoolPiecesNeighborAngleInA:
    LDY.W $0FB0,X                                                        ;AADB40;
    STA.W $0FAA,Y                                                        ;AADB43;
    STA.W $0FEA,Y                                                        ;AADB46;
    STA.W $102A,Y                                                        ;AADB49;
    STA.W $106A,Y                                                        ;AADB4C;
    STA.W $10AA,Y                                                        ;AADB4F;
    STA.W $10EA,Y                                                        ;AADB52;
    STA.W $112A,Y                                                        ;AADB55;
    RTS                                                                  ;AADB58;


FlipShaktool:
    LDY.W $0FB0,X                                                        ;AADB59;
    LDA.W $106E,Y                                                        ;AADB5C;
    EOR.W #$8000                                                         ;AADB5F;
    STA.W $106E,Y                                                        ;AADB62;
    LDX.W $112A,Y                                                        ;AADB65;
    LDA.W $0FEA,Y                                                        ;AADB68;
    EOR.W #$8000                                                         ;AADB6B;
    AND.W #$FF00                                                         ;AADB6E;
    STA.W $112A,Y                                                        ;AADB71;
    TXA                                                                  ;AADB74;
    EOR.W #$8000                                                         ;AADB75;
    AND.W #$FF00                                                         ;AADB78;
    STA.W $0FEA,Y                                                        ;AADB7B;
    LDX.W $10EA,Y                                                        ;AADB7E;
    LDA.W $102A,Y                                                        ;AADB81;
    EOR.W #$8000                                                         ;AADB84;
    AND.W #$FF00                                                         ;AADB87;
    STA.W $10EA,Y                                                        ;AADB8A;
    TXA                                                                  ;AADB8D;
    EOR.W #$8000                                                         ;AADB8E;
    AND.W #$FF00                                                         ;AADB91;
    STA.W $102A,Y                                                        ;AADB94;
    LDX.W $10AA,Y                                                        ;AADB97;
    LDA.W $106A,Y                                                        ;AADB9A;
    EOR.W #$8000                                                         ;AADB9D;
    AND.W #$FF00                                                         ;AADBA0;
    STA.W $10AA,Y                                                        ;AADBA3;
    TXA                                                                  ;AADBA6;
    EOR.W #$8000                                                         ;AADBA7;
    AND.W #$FF00                                                         ;AADBAA;
    STA.W $106A,Y                                                        ;AADBAD;
    LDX.W $10FC,Y                                                        ;AADBB0;
    LDA.W $0F7C,Y                                                        ;AADBB3;
    STA.W $10FC,Y                                                        ;AADBB6;
    TXA                                                                  ;AADBB9;
    STA.W $0F7C,Y                                                        ;AADBBA;
    LDX.W $1100,Y                                                        ;AADBBD;
    LDA.W $0F80,Y                                                        ;AADBC0;
    STA.W $1100,Y                                                        ;AADBC3;
    TXA                                                                  ;AADBC6;
    STA.W $0F80,Y                                                        ;AADBC7;
    LDX.W $10FA,Y                                                        ;AADBCA;
    LDA.W $0F7A,Y                                                        ;AADBCD;
    STA.W $10FA,Y                                                        ;AADBD0;
    TXA                                                                  ;AADBD3;
    STA.W $0F7A,Y                                                        ;AADBD4;
    LDX.W $10FE,Y                                                        ;AADBD7;
    LDA.W $0F7E,Y                                                        ;AADBDA;
    STA.W $10FE,Y                                                        ;AADBDD;
    TXA                                                                  ;AADBE0;
    STA.W $0F7E,Y                                                        ;AADBE1;
    TYX                                                                  ;AADBE4;
    LDA.W #$8000                                                         ;AADBE5;
    STA.W $0FBC,X                                                        ;AADBE8;
    STA.W $0FFC,X                                                        ;AADBEB;
    STA.W $103C,X                                                        ;AADBEE;
    STA.W $107C,X                                                        ;AADBF1;
    STA.W $10BC,X                                                        ;AADBF4;
    STA.W $0FC0,X                                                        ;AADBF7;
    STA.W $1000,X                                                        ;AADBFA;
    STA.W $1040,X                                                        ;AADBFD;
    STA.W $1080,X                                                        ;AADC00;
    STA.W $10C0,X                                                        ;AADC03;
    RTS                                                                  ;AADC06;


SetSHaktoolPieceNeighborAngleDeltaDueToBlockCollision:
    LDA.W #$0000                                                         ;AADC07;
    SEC                                                                  ;AADC0A;
    BIT.W $0FB4,X                                                        ;AADC0B;
    BMI .antiClockwise                                                   ;AADC0E;
    SBC.W $0FAA,X                                                        ;AADC10;
    CLC                                                                  ;AADC13;
    ADC.W $0FA8,X                                                        ;AADC14;
    BRA +                                                                ;AADC17;


.antiClockwise:
    SBC.W $0FA8,X                                                        ;AADC19;
    CLC                                                                  ;AADC1C;
    ADC.W $0FAA,X                                                        ;AADC1D;

  + XBA                                                                  ;AADC20;
    AND.W #$00FF                                                         ;AADC21;
    ASL A                                                                ;AADC24;
    ASL A                                                                ;AADC25;
    STA.W $0FAC,X                                                        ;AADC26;
    RTS                                                                  ;AADC29;


PositionShaktoolPieceRelativeToPreviousPiece:
    LDA.W $0FAB,X                                                        ;AADC2A;
    AND.W #$00FF                                                         ;AADC2D;
    ASL A                                                                ;AADC30;
    TAY                                                                  ;AADC31;
    STZ.B $12                                                            ;AADC32;
    STZ.B $14                                                            ;AADC34;
    LDA.W SineCosineTables_sine,Y                                        ;AADC36;
    BPL +                                                                ;AADC39;
    DEC.B $14                                                            ;AADC3B;

  + STA.B $13                                                            ;AADC3D;
    LDA.B $12                                                            ;AADC3F;
    CLC                                                                  ;AADC41;
    ADC.W $0F3C,X                                                        ;AADC42;
    STA.W $0F7C,X                                                        ;AADC45;
    LDA.B $14                                                            ;AADC48;
    ADC.W $0F3A,X                                                        ;AADC4A;
    STA.W $0F7A,X                                                        ;AADC4D;
    STZ.B $12                                                            ;AADC50;
    STZ.B $14                                                            ;AADC52;
    LDA.W SineCosineTables_negativeCosine,Y                              ;AADC54;
    BPL +                                                                ;AADC57;
    DEC.B $14                                                            ;AADC59;

  + STA.B $13                                                            ;AADC5B;
    LDA.B $12                                                            ;AADC5D;
    CLC                                                                  ;AADC5F;
    ADC.W $0F40,X                                                        ;AADC60;
    STA.W $0F80,X                                                        ;AADC63;
    LDA.B $14                                                            ;AADC66;
    ADC.W $0F3E,X                                                        ;AADC68;
    STA.W $0F7E,X                                                        ;AADC6B;
    RTS                                                                  ;AADC6E;


SetShaktoolPiecesNeighborAngleAndAngleDeltaForCurling:
    LDA.W $0FA8,X                                                        ;AADC6F;
    JSR.W ShaktoolPiecesNeighborAngleInA                                 ;AADC72;
    LDY.W $0FB0,X                                                        ;AADC75;
    LDA.W ShaktoolPieceData_initialCurlingNeighborAngleDelta             ;AADC78;
    STA.W $0FAC,Y                                                        ;AADC7B;
    LDA.W ShaktoolPieceData_initialCurlingNeighborAngleDelta_rightArm    ;AADC7E;
    STA.W $0FEC,Y                                                        ;AADC81;
    LDA.W ShaktoolPieceData_initialCurlingNeighborAngleDelta_centerRightArm ;AADC84;
    STA.W $102C,Y                                                        ;AADC87;
    LDA.W ShaktoolPieceData_initialCurlingNeighborAngleDelta_head        ;AADC8A;
    STA.W $106C,Y                                                        ;AADC8D;
    LDA.W ShaktoolPieceData_initialCurlingNeighborAngleDelta_centerLeftArm ;AADC90;
    STA.W $10AC,Y                                                        ;AADC93;
    LDA.W ShaktoolPieceData_initialCurlingNeighborAngleDelta_leftArm     ;AADC96;
    STA.W $10EC,Y                                                        ;AADC99;
    LDA.W ShaktoolPieceData_initialCurlingNeighborAngleDelta_leftSaw     ;AADC9C;
    STA.W $112C,Y                                                        ;AADC9F;
    RTS                                                                  ;AADCA2;


MainAI_HurtAI_Shaktool:
    LDX.W $0E54                                                          ;AADCA3;
    JSR.W ($0FB2,X)                                                      ;AADCA6;
    RTL                                                                  ;AADCA9;


RTS_AADCAA:
    RTS                                                                  ;AADCAA;


RTS_AADCAB:
    RTS                                                                  ;AADCAB;


Function_Shaktool_ArmPiece_SetPosition_HandleCurling:
    JSR.W PositionShaktoolPieceRelativeToPreviousPiece                   ;AADCAC;
    BIT.W $0FB4,X                                                        ;AADCAF;
    BVC .notFullyCurled                                                  ;AADCB2;
    LDA.W #$0100                                                         ;AADCB4;
    CLC                                                                  ;AADCB7;
    ADC.W $0FA8,X                                                        ;AADCB8;
    STA.W $0FA8,X                                                        ;AADCBB;
    LDA.W #$0100                                                         ;AADCBE;
    BRA +                                                                ;AADCC1;


.notFullyCurled:
    LDA.W $0FAC,X                                                        ;AADCC3;

  + BIT.W $0FB4,X                                                        ;AADCC6;
    BPL .clockwise                                                       ;AADCC9;
    EOR.W #$FFFF                                                         ;AADCCB;
    INC A                                                                ;AADCCE;

.clockwise:
    CLC                                                                  ;AADCCF;
    ADC.W $0FAA,X                                                        ;AADCD0;
    STA.W $0FAA,X                                                        ;AADCD3;
    RTS                                                                  ;AADCD6;


Function_Shaktool_Head:
    JSR.W Function_Shaktool_ArmPiece_SetPosition_HandleCurling           ;AADCD7;
    LDA.W $0FAA,X                                                        ;AADCDA;
    EOR.W #$8000                                                         ;AADCDD;
    STA.B $12                                                            ;AADCE0;
    LDA.W $0FEA,X                                                        ;AADCE2;
    SEC                                                                  ;AADCE5;
    SBC.B $12                                                            ;AADCE6;
    LSR A                                                                ;AADCE8;
    CLC                                                                  ;AADCE9;
    ADC.B $12                                                            ;AADCEA;
    BIT.W $0FAE,X                                                        ;AADCEC;
    BPL +                                                                ;AADCEF;
    EOR.W #$8000                                                         ;AADCF1;

  + XBA                                                                  ;AADCF4;
    CLC                                                                  ;AADCF5;
    ADC.W #$0008                                                         ;AADCF6;
    AND.W #$00E0                                                         ;AADCF9;
    SEP #$20                                                             ;AADCFC;
    STA.W $0FAE,X                                                        ;AADCFE;
    REP #$20                                                             ;AADD01;
    LSR A                                                                ;AADD03;
    LSR A                                                                ;AADD04;
    LSR A                                                                ;AADD05;
    LSR A                                                                ;AADD06;
    TAY                                                                  ;AADD07;
    LDA.W .pointers,Y                                                    ;AADD08;
    STA.W $0F92,X                                                        ;AADD0B;
    LDA.W #$0001                                                         ;AADD0E;
    STA.W $0F94,X                                                        ;AADD11;
    RTS                                                                  ;AADD14;


.pointers:
    dw InstList_Shaktool_Head_AimingUp                                   ;AADD15;
    dw InstList_Shaktool_Head_AimingUpRight                              ;AADD17;
    dw InstList_Shaktool_Head_AimingRight                                ;AADD19;
    dw InstList_Shaktool_Head_AimingDownRight                            ;AADD1B;
    dw InstList_Shaktool_Head_AimingDown                                 ;AADD1D;
    dw InstList_Shaktool_Head_AimingDownLeft                             ;AADD1F;
    dw InstList_Shaktool_Head_AimingLeft                                 ;AADD21;
    dw InstList_Shaktool_Head_AimingUpLeft                               ;AADD23;

Function_Shaktool_FinalPiece:
    LDA.W $0F7E,X                                                        ;AADD25;
    PHA                                                                  ;AADD28;
    LDA.W $0F7A,X                                                        ;AADD29;
    PHA                                                                  ;AADD2C;
    JSR.W Function_Shaktool_ArmPiece_SetPosition_HandleCurling           ;AADD2D;
    LDA.W $0F7E,X                                                        ;AADD30;
    PHA                                                                  ;AADD33;
    LDA.W $0F7A,X                                                        ;AADD34;
    PHA                                                                  ;AADD37;
    LDA.B $05,S                                                          ;AADD38;
    STA.W $0F7A,X                                                        ;AADD3A;
    LDA.B $07,S                                                          ;AADD3D;
    STA.W $0F7E,X                                                        ;AADD3F;
    STZ.B $12                                                            ;AADD42;
    LDA.B $01,S                                                          ;AADD44;
    SEC                                                                  ;AADD46;
    SBC.B $05,S                                                          ;AADD47;
    STA.B $14                                                            ;AADD49;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;AADD4B;
    BCS .collision                                                       ;AADD4F;
    LDA.B $07,S                                                          ;AADD51;
    STA.W $0F7E,X                                                        ;AADD53;
    STZ.B $12                                                            ;AADD56;
    LDA.B $03,S                                                          ;AADD58;
    SEC                                                                  ;AADD5A;
    SBC.B $07,S                                                          ;AADD5B;
    STA.B $14                                                            ;AADD5D;
    JSL.L MoveEnemyDownBy_14_12                                          ;AADD5F;
    BCS .collision                                                       ;AADD63;
    PLA                                                                  ;AADD65;
    STA.W $0F7A,X                                                        ;AADD66;
    PLA                                                                  ;AADD69;
    STA.W $0F7E,X                                                        ;AADD6A;
    PLA                                                                  ;AADD6D;
    PLA                                                                  ;AADD6E;
    BIT.W $0FB4,X                                                        ;AADD6F;
    BVC .notFullyCurled                                                  ;AADD72;
    LDA.W #$0100                                                         ;AADD74;
    CLC                                                                  ;AADD77;
    ADC.W $0FA8,X                                                        ;AADD78;
    STA.W $0FA8,X                                                        ;AADD7B;
    RTS                                                                  ;AADD7E;


.notFullyCurled:
    LDA.W $0FAA,X                                                        ;AADD7F;
    EOR.W $0FA8,X                                                        ;AADD82;
    AND.W #$FF00                                                         ;AADD85;
    BNE +                                                                ;AADD88;
    JSR.W SetShaktoolPiecesNeighborAngleAndAngleDeltaForCurling          ;AADD8A;
    LDA.W #$7800                                                         ;AADD8D;
    STA.W $0FAE,X                                                        ;AADD90;
    LDA.W $0FB4,X                                                        ;AADD93;
    AND.W #$DFFF                                                         ;AADD96;
    JSR.W ShaktoolPiecesMovementOptionsInA                               ;AADD99;
    LDA.W $0FAE,X                                                        ;AADD9C;
    AND.W #$FF00                                                         ;AADD9F;
    STA.W $0FAE,X                                                        ;AADDA2;

  + LDA.W $0FAC,X                                                        ;AADDA5;
    CLC                                                                  ;AADDA8;
    ADC.W $0FAE,X                                                        ;AADDA9;
    STA.W $0FAE,X                                                        ;AADDAC;
    CMP.W #$F000                                                         ;AADDAF;
    BCC .return                                                          ;AADDB2;
    LDY.W $0FB0,X                                                        ;AADDB4;
    LDA.W $0FB4,X                                                        ;AADDB7;
    ORA.W #$4000                                                         ;AADDBA;
    JSR.W ShaktoolPiecesMovementOptionsInA                               ;AADDBD;

.return:
    JSR.W RTS_AADAE4                                                     ;AADDC0;
    RTS                                                                  ;AADDC3;


.collision:
    LDA.W $0FB4,X                                                        ;AADDC4;
    BIT.W #$2000                                                         ;AADDC7;
    BEQ .curling                                                         ;AADDCA;
    PLA                                                                  ;AADDCC;
    PLA                                                                  ;AADDCD;
    PLA                                                                  ;AADDCE;
    PLA                                                                  ;AADDCF;
    LDA.W $0FB4,X                                                        ;AADDD0;
    EOR.W #$8000                                                         ;AADDD3;
    AND.W #$8FFF                                                         ;AADDD6;
    JSR.W ShaktoolPiecesMovementOptionsInA                               ;AADDD9;
    BRA +                                                                ;AADDDC;


.curling:
    PLA                                                                  ;AADDDE;
    PLA                                                                  ;AADDDF;
    PLA                                                                  ;AADDE0;
    STA.W $0F7A,X                                                        ;AADDE1;
    PLA                                                                  ;AADDE4;
    STA.W $0F7E,X                                                        ;AADDE5;
    JSR.W FlipShaktool                                                   ;AADDE8;
    LDX.W $0E54                                                          ;AADDEB;
    LDA.W $0FB4,X                                                        ;AADDEE;
    ORA.W #$2000                                                         ;AADDF1;
    JSR.W ShaktoolPiecesMovementOptionsInA                               ;AADDF4;
    LDA.W $0FB4,X                                                        ;AADDF7;
    AND.W #$BFFF                                                         ;AADDFA;
    JSR.W ShaktoolPiecesMovementOptionsInA                               ;AADDFD;

  + STZ.W $0FAE,X                                                        ;AADE00;
    LDY.W $0FB0,X                                                        ;AADE03;
    JSL.L CalculateAngleOfEnemyYFromEnemyX                               ;AADE06;
    XBA                                                                  ;AADE0A;
    AND.W #$FF00                                                         ;AADE0B;
    BIT.W $0FB4,X                                                        ;AADE0E;
    BMI .antiClockwise                                                   ;AADE11;
    CLC                                                                  ;AADE13;
    ADC.W #$4000                                                         ;AADE14;
    BRA +                                                                ;AADE17;


.antiClockwise:
    SEC                                                                  ;AADE19;
    SBC.W #$4000                                                         ;AADE1A;

  + JSR.W ShaktoolPiecesFacingAngleInA                                   ;AADE1D;
    LDY.W #$000C                                                         ;AADE20;

.loop:
    JSR.W SetSHaktoolPieceNeighborAngleDeltaDueToBlockCollision          ;AADE23;
    LDA.W #RTS_AADCAA                                                    ;AADE26;
    STA.W $0FB2,X                                                        ;AADE29;
    LDA.W ShaktoolPieceData_headBobInstListPointer,Y                     ;AADE2C;
    STA.W $0F92,X                                                        ;AADE2F;
    LDA.W #$0001                                                         ;AADE32;
    STA.W $0F94,X                                                        ;AADE35;
    TXA                                                                  ;AADE38;
    SEC                                                                  ;AADE39;
    SBC.W #$0040                                                         ;AADE3A;
    TAX                                                                  ;AADE3D;
    DEY                                                                  ;AADE3E;
    DEY                                                                  ;AADE3F;
    BPL .loop                                                            ;AADE40;
    RTS                                                                  ;AADE42;


InitAI_Shaktool:
    LDX.W $0E54                                                          ;AADE43;
    LDA.W #$0001                                                         ;AADE46;
    STA.W $0F94,X                                                        ;AADE49;
    STZ.W $0F90,X                                                        ;AADE4C;
    LDA.W #$0000                                                         ;AADE4F;
    STA.W $0FA8,X                                                        ;AADE52;
    STA.W $0FAE,X                                                        ;AADE55;
    LDY.W $0FB6,X                                                        ;AADE58;
    LDA.W $0F86,X                                                        ;AADE5B;
    ORA.W ShaktoolPieceData_properties,Y                                 ;AADE5E;
    STA.W $0F86,X                                                        ;AADE61;
    TXA                                                                  ;AADE64;
    SEC                                                                  ;AADE65;
    SBC.W ShaktoolPieceData_RAMOffset,Y                                  ;AADE66;
    STA.W $0FB0,X                                                        ;AADE69;
    LDA.W ShaktoolPieceData_functionPointer,Y                            ;AADE6C;
    STA.W $0FB2,X                                                        ;AADE6F;
    LDA.W ShaktoolPieceData_initialCurlingNeighborAngleDelta,Y           ;AADE72;
    SEC                                                                  ;AADE75;
    SBC.W ShaktoolPieceData_zero,Y                                       ;AADE76;
    STA.W $0FAC,X                                                        ;AADE79;
    LDA.W ShaktoolPieceData_initialNeighborAngle,Y                       ;AADE7C;
    STA.W $0FAA,X                                                        ;AADE7F;
    LDA.W ShaktoolPieceData_initialInstListPointer,Y                     ;AADE82;
    STA.W $0F92,X                                                        ;AADE85;
    LDA.W ShaktoolPieceData_layerControl,Y                               ;AADE88;
    STA.W $0F9A,X                                                        ;AADE8B;
    TYA                                                                  ;AADE8E;
    BEQ .return                                                          ;AADE8F;
    JSR.W PositionShaktoolPieceRelativeToPreviousPiece                   ;AADE91;

.return:
    RTL                                                                  ;AADE94;


ShaktoolPieceData:
;                        _______________________________________ Initially right saw hand (primary piece)
;                       |      _________________________________ Initially rightmost arm piece
;                       |     |      ___________________________ Initially centre right arm piece
;                       |     |     |      _____________________ Head
;                       |     |     |     |      _______________ Initially centre left arm piece
;                       |     |     |     |     |      _________ Initially leftmost arm piece
;                       |     |     |     |     |     |      ___ Initially left saw hand (final piece)
;                       |     |     |     |     |     |     |
  .properties:
    dw $2800,$2C00,$2C00,$2C00,$2C00,$2C00,$2800                         ;AADE95;
  .RAMOffset:
    dw $0000,$0040,$0080,$00C0,$0100,$0140,$0180                         ;AADEA3;
  .initialNeighborAngle:
    dw $0000,$F800,$E800,$D000,$B000,$9800,$8800                         ;AADEB1;
  .initialInstListPointer:
    dw InstList_Shaktool_SawHand_PrimaryPiece                            ;AADEBF; Initially right saw hand (primary piece)
    dw InstList_Shaktool_ArmPiece_Normal                                 ;AADEC1; Initially rightmost arm piece
    dw InstList_Shaktool_ArmPiece_Normal                                 ;AADEC3; Initially centre right arm piece
    dw InstList_Shaktool_Head_AimingDown                                 ;AADEC5; Head
    dw InstList_Shaktool_ArmPiece_Normal                                 ;AADEC7; Initially centre left arm piece
    dw InstList_Shaktool_ArmPiece_Normal                                 ;AADEC9; Initially leftmost arm piece
    dw InstList_Shaktool_SawHand_PrimaryPiece                            ;AADECB; Initially left saw hand (final piece)
  .layerControl:
    dw $0002,$0004,$0004,$0002,$0004,$0004,$0002                         ;AADECD;
  .functionPointer:
    dw RTS_AADCAB                                                        ;AADEDB;
  .functionPointer_rightArm:
    dw Function_Shaktool_ArmPiece_SetPosition_HandleCurling              ;AADEDD;
  .functionPointer_centerRightArm:
    dw Function_Shaktool_ArmPiece_SetPosition_HandleCurling              ;AADEDF;
  .functionPointer_head:
    dw Function_Shaktool_Head                                            ;AADEE1;
  .functionPointer_centerLeftArm:
    dw Function_Shaktool_ArmPiece_SetPosition_HandleCurling              ;AADEE3;
  .functionPointer_leftArm:
    dw Function_Shaktool_ArmPiece_SetPosition_HandleCurling              ;AADEE5;
  .functionPointer_leftSaw:
    dw Function_Shaktool_FinalPiece                                      ;AADEE7;
  .initialCurlingNeighborAngleDelta:
    dw $0000                                                             ;AADEE9;
  .initialCurlingNeighborAngleDelta_rightArm:
    dw $0020                                                             ;AADEEB;
  .initialCurlingNeighborAngleDelta_centerRightArm:
    dw $0060                                                             ;AADEED;
  .initialCurlingNeighborAngleDelta_head:
    dw $00C0                                                             ;AADEEF;
  .initialCurlingNeighborAngleDelta_centerLeftArm:
    dw $0140                                                             ;AADEF1;
  .initialCurlingNeighborAngleDelta_leftArm:
    dw $01A0                                                             ;AADEF3;
  .initialCurlingNeighborAngleDelta_leftSaw:
    dw $01E0                                                             ;AADEF5;
  .zero:
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000                         ;AADEF7;

if !FEATURE_KEEP_UNREFERENCED
  .unused:
    dw $0000,$0000,$0002,$0004,$0006,$0008,$000A                         ;AADF05;
endif ; !FEATURE_KEEP_UNREFERENCED

  .headBobInstListPointer:
    dw InstList_Shaktool_SawHand_HeadBob_PrimaryPiece                    ;AADF13; Initially right saw hand (primary piece)
    dw InstList_Shaktool_ArmPiece_HeadBob_Back                           ;AADF15; Initially rightmost arm piece
    dw InstList_Shaktool_ArmPiece_HeadBob_Front                          ;AADF17; Initially centre right arm piece
    dw InstList_Shaktool_Head_HeadBob                                    ;AADF19; Head
    dw InstList_Shaktool_ArmPiece_HeadBob_Front                          ;AADF1B; Initially centre left arm piece
    dw InstList_Shaktool_ArmPiece_HeadBob_Back                           ;AADF1D; Initially leftmost arm piece
    dw InstList_Shaktool_SawHand_HeadBob_FinalPiece                      ;AADF1F; Initially left saw hand (final piece)
  .unusedAttackInstListPointer:
    dw UNUSED_InstList_Shaktool_SawHand_Attack_PrimaryPiece_AAD9EA       ;AADF21; Initially right saw hand (primary piece)
    dw UNUSED_InstList_Shaktool_ArmPiece_Attack_Back_AADA2E              ;AADF23; Initially rightmost arm piece
    dw UNUSED_InstList_Shaktool_ArmPiece_Attack_Front_AADA42             ;AADF25; Initially centre right arm piece
    dw UNUSED_InstList_Shaktool_Head_Attack_AADA7A                       ;AADF27; Head
    dw UNUSED_InstList_Shaktool_ArmPiece_Attack_Front_AADA42             ;AADF29; Initially centre left arm piece
    dw UNUSED_InstList_Shaktool_ArmPiece_Attack_Back_AADA2E              ;AADF2B; Initially leftmost arm piece
    dw UNUSED_InstList_Shaktool_SawHand_Attack_FinalPiece_AAD9F2         ;AADF2D; Initially left saw hand (final piece)

EnemyTouch_Shaktool:
    JSL.L NormalEnemyTouchAI                                             ;AADF2F;
    RTL                                                                  ;AADF33;


EnemyShot_Shaktool:
    JSL.L NormalEnemyShotAI                                              ;AADF34;
    LDX.W $0E54                                                          ;AADF38;
    LDA.W $0F8C,X                                                        ;AADF3B;
    BNE .return                                                          ;AADF3E;
    LDY.W $0FB0,X                                                        ;AADF40;
    LDA.W #$0200                                                         ;AADF43;
    STA.W $0F86,Y                                                        ;AADF46;
    STA.W $0FC6,Y                                                        ;AADF49;
    STA.W $1006,Y                                                        ;AADF4C;
    STA.W $1046,Y                                                        ;AADF4F;
    STA.W $1086,Y                                                        ;AADF52;
    STA.W $10C6,Y                                                        ;AADF55;
    STA.W $1106,Y                                                        ;AADF58;

.return:
    RTL                                                                  ;AADF5B;


Spritemaps_Shaktool_SawHand_FinalPiece_0:
    dw $0001                                                             ;AADF5C;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $100)

Spritemaps_Shaktool_SawHand_FinalPiece_1:
    dw $0001                                                             ;AADF63;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $102)

Spritemaps_Shaktool_SawHand_FinalPiece_2:
    dw $0001                                                             ;AADF6A;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $104)

Spritemaps_Shaktool_ArmPiece:
    dw $0001                                                             ;AADF71;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $106)

Spritemaps_Shaktool_Head_0:
    dw $0004                                                             ;AADF78;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $108)
    %spritemapEntry(0, $01, $F6, 0, 0, 2, 0, $11F)
    %spritemapEntry(0, $01, $02, 0, 0, 2, 0, $11F)
    %spritemapEntry(0, $1F0, $FC, 0, 0, 2, 0, $10E)

Spritemaps_Shaktool_Head_1:
    dw $0004                                                             ;AADF8E;
    %spritemapEntry(0, $1F4, $F4, 0, 0, 2, 0, $10F)
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $FC, 0, 0, 2, 0, $11F)
    %spritemapEntry(0, $1FC, $04, 0, 0, 2, 0, $11F)

Spritemaps_Shaktool_Head_2:
    dw $0004                                                             ;AADFA4;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $10A)
    %spritemapEntry(0, $02, $01, 0, 0, 2, 0, $11F)
    %spritemapEntry(0, $1F6, $01, 0, 0, 2, 0, $11F)
    %spritemapEntry(0, $1FC, $F0, 0, 0, 2, 0, $11E)

Spritemaps_Shaktool_Head_3:
    dw $0004                                                             ;AADFBA;
    %spritemapEntry(0, $04, $F4, 0, 1, 2, 0, $10F)
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $1FC, $04, 0, 0, 2, 0, $11F)
    %spritemapEntry(0, $1F4, $FC, 0, 0, 2, 0, $11F)

Spritemaps_Shaktool_Head_4:
    dw $0004                                                             ;AADFD0;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $108)
    %spritemapEntry(0, $1F7, $02, 0, 0, 2, 0, $11F)
    %spritemapEntry(0, $1F7, $F6, 0, 0, 2, 0, $11F)
    %spritemapEntry(0, $08, $FC, 0, 1, 2, 0, $10E)

Spritemaps_Shaktool_Head_5:
    dw $0004                                                             ;AADFE6;
    %spritemapEntry(0, $04, $04, 1, 1, 2, 0, $10F)
    %spritemapEntry(1, $1F8, $F8, 1, 0, 2, 0, $10C)
    %spritemapEntry(0, $1F4, $FC, 0, 0, 2, 0, $11F)
    %spritemapEntry(0, $1FC, $F4, 0, 0, 2, 0, $11F)

Spritemaps_Shaktool_Head_6:
    dw $0004                                                             ;AADFFC;
    %spritemapEntry(1, $1F8, $F8, 1, 0, 2, 0, $10A)
    %spritemapEntry(0, $02, $F7, 0, 0, 2, 0, $11F)
    %spritemapEntry(0, $1F6, $F7, 0, 0, 2, 0, $11F)
    %spritemapEntry(0, $1FC, $08, 1, 0, 2, 0, $11E)

Spritemaps_Shaktool_Head_7:
    dw $0004                                                             ;AAE012;
    %spritemapEntry(0, $1F4, $04, 1, 0, 2, 0, $10F)
    %spritemapEntry(1, $1F8, $F8, 1, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $FC, 0, 0, 2, 0, $11F)
    %spritemapEntry(0, $1FC, $F4, 0, 0, 2, 0, $11F)

Spritemaps_Shaktool_SawHand_PrimaryPiece_0:
    dw $0001                                                             ;AAE028;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $100)

Spritemaps_Shaktool_SawHand_PrimaryPiece_1:
    dw $0001                                                             ;AAE02F;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $102)

Spritemaps_Shaktool_SawHand_PrimaryPiece_2:
    dw $0001                                                             ;AAE036;
    %spritemapEntry(1, $1F8, $F8, 0, 1, 2, 0, $104)

SineCosineTables_negativeCosine:
    dw $F401,$F401,$F404,$F409,$F40F,$F418,$F422,$F42E                   ;AAE03D;
    dw $F43C,$F44B,$F45D,$F470,$F485,$F49C,$F4B4,$F4CE                   ;AAE04D;
    dw $F4EA,$F508,$F527,$F549,$F56B,$F590,$F5B6,$F5DD                   ;AAE05D;
    dw $F606,$F631,$F65D,$F68B,$F6BA,$F6EA,$F71C,$F750                   ;AAE06D;
    dw $F784,$F7BA,$F7F1,$F82A,$F864,$F89E,$F8DA,$F918                   ;AAE07D;
    dw $F956,$F995,$F9D5,$FA16,$FA58,$FA9B,$FADF,$FB24                   ;AAE08D;
    dw $FB69,$FBAF,$FBF6,$FC3D,$FC85,$FCCD,$FD16,$FD5F                   ;AAE09D;
    dw $FDA9,$FDF3,$FE3E,$FE88,$FED3,$FF1E,$FF6A,$FFB5                   ;AAE0AD;

SineCosineTables_sine:
    dw $0000,$004B,$0096,$00E1,$012D,$0178,$01C2,$020D                   ;AAE0BD;
    dw $0257,$02A1,$02EA,$0333,$037B,$03C3,$040A,$0451                   ;AAE0CD;
    dw $0497,$04DC,$0521,$0565,$05A8,$05EA,$062B,$066B                   ;AAE0DD;
    dw $06AA,$06E8,$0725,$0761,$079C,$07D6,$080F,$0846                   ;AAE0ED;
    dw $087C,$08B0,$08E4,$0916,$0946,$0975,$09A3,$09CF                   ;AAE0FD;
    dw $09FA,$0A23,$0A4A,$0A70,$0A95,$0AB7,$0AD9,$0AF8                   ;AAE10D;
    dw $0B16,$0B32,$0B4C,$0B64,$0B7B,$0B90,$0BA3,$0BB5                   ;AAE11D;
    dw $0BC4,$0BD2,$0BDE,$0BE8,$0BF1,$0BF7,$0BFC,$0BFF                   ;AAE12D;

SineCosineTables_cosine:
    dw $0BFF,$0BFF,$0BFC,$0BF7,$0BF1,$0BE8,$0BDE,$0BD2                   ;AAE13D;
    dw $0BC4,$0BB5,$0BA3,$0B90,$0B7B,$0B64,$0B4C,$0B32                   ;AAE14D;
    dw $0B16,$0AF8,$0AD9,$0AB7,$0A95,$0A70,$0A4A,$0A23                   ;AAE15D;
    dw $09FA,$09CF,$09A3,$0975,$0946,$0916,$08E4,$08B0                   ;AAE16D;
    dw $087C,$0846,$080F,$07D6,$079C,$0761,$0725,$06E8                   ;AAE17D;
    dw $06AA,$066B,$062B,$05EA,$05A8,$0565,$0521,$04DC                   ;AAE18D;
    dw $0497,$0451,$040A,$03C3,$037B,$0333,$02EA,$02A1                   ;AAE19D;
    dw $0257,$020D,$01C2,$0178,$012D,$00E1,$0096,$004B                   ;AAE1AD;

SineCosineTables_negativeSine:
    dw $0000,$FFB5,$FF6A,$FF1F,$FED3,$FE88,$FE3E,$FDF3                   ;AAE1BD;
    dw $FDA9,$FD5F,$FD16,$FCCD,$FC85,$FC3D,$FBF6,$FBAF                   ;AAE1CD;
    dw $FB69,$FB24,$FADF,$FA9B,$FA58,$FA16,$F9D5,$F995                   ;AAE1DD;
    dw $F956,$F918,$F8DB,$F89F,$F864,$F82A,$F7F1,$F7BA                   ;AAE1ED;
    dw $F784,$F750,$F71C,$F6EA,$F6BA,$F68B,$F65D,$F631                   ;AAE1FD;
    dw $F606,$F5DD,$F5B6,$F590,$F56B,$F549,$F527,$F508                   ;AAE20D;
    dw $F4EA,$F4CE,$F4B4,$F49C,$F485,$F470,$F45D,$F44B                   ;AAE21D;
    dw $F43C,$F42E,$F422,$F418,$F40F,$F409,$F404,$F401                   ;AAE22D;

SineCosineTables_negativeCosine_duplicate:
    dw $F401,$F401,$F404,$F409,$F40F,$F418,$F422,$F42E                   ;AAE23D;
    dw $F43C,$F44B,$F45D,$F470,$F485,$F49C,$F4B4,$F4CE                   ;AAE24D;
    dw $F4EA,$F508,$F527,$F549,$F56B,$F590,$F5B6,$F5DD                   ;AAE25D;
    dw $F606,$F631,$F65D,$F68B,$F6BA,$F6EA,$F71C,$F750                   ;AAE26D;
    dw $F784,$F7BA,$F7F1,$F82A,$F864,$F89E,$F8DA,$F918                   ;AAE27D;
    dw $F956,$F995,$F9D5,$FA16,$FA58,$FA9B,$FADF,$FB24                   ;AAE28D;
    dw $FB69,$FBAF,$FBF6,$FC3D,$FC85,$FCCD,$FD16,$FD5F                   ;AAE29D;
    dw $FDA9,$FDF3,$FE3E,$FE88,$FED3,$FF1E,$FF6A,$FFB5                   ;AAE2AD;

Palette_NoobTubeCrack_Initial:
; Sprite palette 7
    dw $3800,$7F9C,$7F17,$6E72,$59EE,$456A,$3528,$28E6                   ;AAE2BD;
    dw $777F,$66FB,$5676,$45F2,$358D,$2509,$1484,$0400                   ;AAE2CD;

Palette_NoobTubeCrack_SpritePalette1:

    dw $3800,$7F9C,$7F17,$6E72,$59EE,$456A,$3528,$28E6                   ;AAE2DD;
    dw $777F,$66FB,$5676,$45F2,$358D,$2509,$1484,$0400                   ;AAE2ED;

Palette_NoobTubeCrack_SpritePalette2:
    dw $3800,$7F9C,$7F17,$6E72,$59EE,$456A,$3528,$28E6                   ;AAE2FD;
    dw $777F,$66FB,$5676,$45F2,$358D,$2509,$1484,$0400                   ;AAE30D;

Palette_Chozo_WreckedShip_SpritePalette1:
    dw $3800,$633F,$4A9F,$2DDF,$6739,$4E73,$318C,$18C6                   ;AAE31D;
    dw $27FF,$1AF7,$0DCE,$00C6,$3FFF,$2B39,$7FFF,$0000                   ;AAE32D;

Palette_Chozo_WreckedShip_SpritePalette2:
    dw $3800,$633F,$4A9F,$2DDF,$4210,$318C,$2108,$1084                   ;AAE33D;
    dw $27FF,$1AF7,$0DCE,$00C6,$3FFF,$2B39,$5294,$0000                   ;AAE34D;

Palette_Chozo_LowerNorfair_SpritePalette1:
    dw $3800,$633F,$4A9F,$2DDF,$2F7C,$2295,$118D,$08E8                   ;AAE35D;
    dw $27FF,$1AF7,$0DCE,$00C6,$3FFF,$2B39,$73DF,$0043                   ;AAE36D;

Palette_Chozo_LowerNorfair_SpritePalette2:
    dw $3800,$633F,$4A9F,$2DDF,$2295,$118D,$08E8,$0085                   ;AAE37D;
    dw $27FF,$1AF7,$0DCE,$00C6,$3FFF,$2B39,$5294,$0001                   ;AAE38D;

InstList_Chozo_LowerNorfair_Initial:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAE39D;
    dw Function_Chozo_LowerNorfair                                       ;AAE39F;
    dw $0001,Spritemaps_Chozo_13                                         ;AAE3A1;
    dw Instruction_Common_Sleep                                          ;AAE3A5;

InstList_Chozo_LowerNorfair_Activated_0:
    dw Instruction_Common_SetEnemy0FB2ToRTS                              ;AAE3A7;
    dw Instruction_Chozo_Movement_IndexInY,$0020                         ;AAE3A9;
    dw $0020,Spritemaps_Chozo_13                                         ;AAE3AB;
    dw Instruction_Chozo_Movement_IndexInY,$0022                         ;AAE3B1;
    dw $0008,Spritemaps_Chozo_14                                         ;AAE3B3;
    dw Instruction_Chozo_Movement_IndexInY,$0024                         ;AAE3B9;
    dw $0030,Spritemaps_Chozo_15                                         ;AAE3BB;
    dw Instruction_Chozo_PlayChozoGrabsSamusSFX                          ;AAE3C1;
    dw Instruction_Chozo_Movement_IndexInY,$0026                         ;AAE3C3;
    dw $0040,Spritemaps_Chozo_16                                         ;AAE3C5;
    dw $0006,Spritemaps_Chozo_1F                                         ;AAE3CB;
    dw $0008,Spritemaps_Chozo_20                                         ;AAE3CF;
    dw $000A,Spritemaps_Chozo_21                                         ;AAE3D3;
    dw $000C,Spritemaps_Chozo_22                                         ;AAE3D7;
    dw $0060,Spritemaps_Chozo_23                                         ;AAE3DB;
    dw Instruction_Chozo_StartLoweringAcid                               ;AAE3DF;
    dw Instruction_Common_TimerInY,$0005                                 ;AAE3E1;

InstList_Chozo_LowerNorfair_Activated_1:
    dw $000B,Spritemaps_Chozo_20                                         ;AAE3E5;
    dw $0008,Spritemaps_Chozo_21                                         ;AAE3E9;
    dw $0006,Spritemaps_Chozo_22                                         ;AAE3ED;
    dw $0008,Spritemaps_Chozo_23                                         ;AAE3F1;
    dw $0006,Spritemaps_Chozo_22                                         ;AAE3F5;
    dw $0008,Spritemaps_Chozo_21                                         ;AAE3F9;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AAE3FD;
    dw InstList_Chozo_LowerNorfair_Activated_1                           ;AAE3FF;
    dw Instruction_Common_SetEnemy0FB2ToRTS                              ;AAE401;
    dw Instruction_Chozo_Movement_IndexInY,$0026                         ;AAE403;
    dw $0080,Spritemaps_Chozo_16                                         ;AAE405;
    dw Instruction_Chozo_Movement_IndexInY,$0024                         ;AAE40B;
    dw $0050,Spritemaps_Chozo_15                                         ;AAE40D;
    dw Instruction_Chozo_Movement_IndexInY,$0022                         ;AAE413;
    dw $0008,Spritemaps_Chozo_14                                         ;AAE415;
    dw Instruction_Chozo_Movement_IndexInY,$0020                         ;AAE41B;
    dw $0020,Spritemaps_Chozo_13                                         ;AAE41D;
    dw Instruction_Chozo_UnlockSamus                                     ;AAE423;
    dw Instruction_Chozo_SetLoweredAcidPosition                          ;AAE425;
    dw Instruction_Common_Sleep                                          ;AAE427;

Instruction_Chozo_StartLoweringAcid:
    LDA.W #$0019                                                         ;AAE429;
    STA.W $1980                                                          ;AAE42C;
    LDA.W #$0032                                                         ;AAE42F;
    STA.W $197C                                                          ;AAE432;
    RTL                                                                  ;AAE435;


Instruction_Chozo_SetLoweredAcidPosition:
    LDA.W #$02D2                                                         ;AAE436;
    STA.W $1978                                                          ;AAE439;
    RTL                                                                  ;AAE43C;


Instruction_Chozo_UnlockSamus:
    LDA.W #$0001                                                         ;AAE43D;
    JSL.L Run_Samus_Command                                              ;AAE440;
    RTL                                                                  ;AAE444;


Function_Chozo_LowerNorfair:
    LDA.W $0FB4,X                                                        ;AAE445;
    BEQ .return                                                          ;AAE448;
    LDA.W #InstList_Chozo_LowerNorfair_Activated_0                       ;AAE44A;
    STA.W $0F92,X                                                        ;AAE44D;
    LDA.W #$0001                                                         ;AAE450;
    STA.W $0F94,X                                                        ;AAE453;

.return:
    RTS                                                                  ;AAE456;


InstList_Chozo_WreckedShip_Initial:
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAE457;
    dw Function_Chozo_WreckedShip                                        ;AAE459;
    dw $0001,Spritemaps_Chozo_0                                          ;AAE45B;
    dw Instruction_Common_Sleep                                          ;AAE45F;

InstList_Chozo_WreckedShip_Activated_0:
    dw Instruction_Common_SetEnemy0FB2ToRTS                              ;AAE461;
    dw Instruction_Chozo_Movement_IndexInY,$0000                         ;AAE463;
    dw $0020,Spritemaps_Chozo_0                                          ;AAE465;
    dw Instruction_Chozo_Movement_IndexInY,$0002                         ;AAE46B;
    dw $0008,Spritemaps_Chozo_1                                          ;AAE46D;
    dw Instruction_Chozo_Movement_IndexInY,$0004                         ;AAE473;
    dw $0050,Spritemaps_Chozo_2                                          ;AAE475;
    dw Instruction_Chozo_PlayChozoGrabsSamusSFX                          ;AAE47B;
    dw Instruction_Chozo_Movement_IndexInY,$0006                         ;AAE47D;
    dw $0080,Spritemaps_Chozo_3                                          ;AAE47F;
    dw $0006,Spritemaps_Chozo_C                                          ;AAE485;
    dw $0008,Spritemaps_Chozo_D                                          ;AAE489;
    dw $000A,Spritemaps_Chozo_E                                          ;AAE48D;
    dw $000C,Spritemaps_Chozo_F                                          ;AAE491;
    dw $0080,Spritemaps_Chozo_10                                         ;AAE495;
    dw Instruction_Common_TimerInY,$0004                                 ;AAE499;

InstList_Chozo_WreckedShip_Activated_1:
    dw $000B,Spritemaps_Chozo_D                                          ;AAE49D;
    dw $0008,Spritemaps_Chozo_E                                          ;AAE4A1;
    dw $0006,Spritemaps_Chozo_F                                          ;AAE4A5;
    dw $0008,Spritemaps_Chozo_10                                         ;AAE4A9;
    dw $0006,Spritemaps_Chozo_F                                          ;AAE4AD;
    dw $0008,Spritemaps_Chozo_E                                          ;AAE4B1;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AAE4B5;
    dw InstList_Chozo_WreckedShip_Activated_1                            ;AAE4B7;
    dw Instruction_Common_Enemy0FB2_InY                                  ;AAE4B9;
    dw RTS_AAE7DA                                                        ;AAE4BB;
    dw Instruction_Common_TimerInY,$0010                                 ;AAE4BD;

InstList_Chozo_WreckedShip_Activated_2:
    dw Instruction_Chozo_Movement_IndexInY,$0016                         ;AAE4C1;
    dw Instruction_Chozo_SpawnChozoSpikeClearingFootstepProjectile,$FFF8 ;AAE4C5;
    dw $0008,Spritemaps_Chozo_B                                          ;AAE4C7;
    dw Instruction_Chozo_PlayChozoFootstepsSFX                           ;AAE4CD;
    dw Instruction_Chozo_Movement_IndexInY,$0008                         ;AAE4CF;
    dw Instruction_Chozo_SpawnChozoSpikeClearingFootstepProjectile,$FFEC ;AAE4D3;
    dw $000B,Spritemaps_Chozo_4                                          ;AAE4D5;
    dw Instruction_Chozo_Movement_IndexInY,$000A                         ;AAE4DB;
    dw Instruction_Chozo_SpawnChozoSpikeClearingFootstepProjectile,$FFF0 ;AAE4DF;
    dw $0008,Spritemaps_Chozo_5                                          ;AAE4E1;
    dw Instruction_Chozo_Movement_IndexInY,$000C                         ;AAE4E7;
    dw Instruction_Chozo_SpawnChozoSpikeClearingFootstepProjectile,$0000 ;AAE4EB;
    dw $0006,Spritemaps_Chozo_6                                          ;AAE4ED;
    dw Instruction_Chozo_Movement_IndexInY,$000E                         ;AAE4F3;
    dw Instruction_Chozo_SpawnChozoSpikeClearingFootstepProjectile,$FFF8 ;AAE4F7;
    dw $0008,Spritemaps_Chozo_7                                          ;AAE4F9;
    dw Instruction_Chozo_PlayChozoFootstepsSFX                           ;AAE4FF;
    dw Instruction_Chozo_Movement_IndexInY,$0010                         ;AAE501;
    dw Instruction_Chozo_SpawnChozoSpikeClearingFootstepProjectile,$FFEC ;AAE505;
    dw $000B,Spritemaps_Chozo_8                                          ;AAE507;
    dw Instruction_Chozo_Movement_IndexInY,$0012                         ;AAE50D;
    dw Instruction_Chozo_SpawnChozoSpikeClearingFootstepProjectile,$FFF0 ;AAE511;
    dw $0008,Spritemaps_Chozo_9                                          ;AAE513;
    dw Instruction_Chozo_Movement_IndexInY,$0014                         ;AAE519;
    dw Instruction_Chozo_SpawnChozoSpikeClearingFootstepProjectile,$0000 ;AAE51D;
    dw $0006,Spritemaps_Chozo_A                                          ;AAE51F;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;AAE525;
    dw InstList_Chozo_WreckedShip_Activated_2                            ;AAE527;
    dw Instruction_Chozo_Movement_IndexInY,$0016                         ;AAE529;
    dw Instruction_Chozo_SpawnChozoSpikeClearingFootstepProjectile,$FFF8 ;AAE52D;
    dw $0008,Spritemaps_Chozo_B                                          ;AAE52F;
    dw Instruction_Chozo_Movement_IndexInY,$0008                         ;AAE535;
    dw Instruction_Chozo_SpawnChozoSpikeClearingFootstepProjectile,$FFEC ;AAE539;
    dw $000B,Spritemaps_Chozo_4                                          ;AAE53B;
    dw Instruction_Chozo_Movement_IndexInY,$000A                         ;AAE541;
    dw Instruction_Chozo_SpawnChozoSpikeClearingFootstepProjectile,$FFF0 ;AAE545;
    dw $0008,Spritemaps_Chozo_5                                          ;AAE547;
    dw Instruction_Chozo_Movement_IndexInY,$000C                         ;AAE54D;
    dw Instruction_Chozo_SpawnChozoSpikeClearingFootstepProjectile,$0000 ;AAE551;
    dw $0006,Spritemaps_Chozo_6                                          ;AAE553;
    dw Instruction_Common_SetEnemy0FB2ToRTS                              ;AAE559;
    dw Instruction_Chozo_Movement_IndexInY,$0006                         ;AAE55B;
    dw $0080,Spritemaps_Chozo_3                                          ;AAE55D;
    dw Instruction_Chozo_Movement_IndexInY,$0004                         ;AAE563;
    dw $0050,Spritemaps_Chozo_2                                          ;AAE565;
    dw Instruction_Chozo_Movement_IndexInY,$0002                         ;AAE56B;
    dw $0008,Spritemaps_Chozo_1                                          ;AAE56D;
    dw Instruction_Chozo_Movement_IndexInY,$0000                         ;AAE573;
    dw $0020,Spritemaps_Chozo_0                                          ;AAE575;
    dw Instruction_Chozo_ReleaseSamus_BlockSlopeAccess                   ;AAE57B;
    dw Instruction_Common_Sleep                                          ;AAE57D;

Instruction_Chozo_PlayChozoGrabsSamusSFX:
    LDA.W #$001C                                                         ;AAE57F;
    JSL.L QueueSound_Lib2_Max6                                           ;AAE582;
    RTL                                                                  ;AAE586;


Instruction_Chozo_PlayChozoFootstepsSFX:
    LDA.W #$004B                                                         ;AAE587;
    JSL.L QueueSound_Lib2_Max6                                           ;AAE58A;
    RTL                                                                  ;AAE58E;


Instruction_Chozo_SpawnChozoSpikeClearingFootstepProjectile:
    PHX                                                                  ;AAE58F;
    PHY                                                                  ;AAE590;
    LDA.W $0F7A,X                                                        ;AAE591;
    CLC                                                                  ;AAE594;
    ADC.W $0000,Y                                                        ;AAE595;
    PHA                                                                  ;AAE598;
    LDA.W $0F7E,X                                                        ;AAE599;
    CLC                                                                  ;AAE59C;
    ADC.W #$001C                                                         ;AAE59D;
    PHA                                                                  ;AAE5A0;
    JSL.L CalculateTheBlockContainingAPixelPosition                      ;AAE5A1;
    LDA.W $0DC4                                                          ;AAE5A5;
    CLC                                                                  ;AAE5A8;
    ADC.W $07A5                                                          ;AAE5A9;
    ASL A                                                                ;AAE5AC;
    TAX                                                                  ;AAE5AD;
    LDA.L $7F0002,X                                                      ;AAE5AE;
    AND.W #$F000                                                         ;AAE5B2;
    CMP.W #$A000                                                         ;AAE5B5;
    BNE .return                                                          ;AAE5B8;
    TXA                                                                  ;AAE5BA;
    SEC                                                                  ;AAE5BB;
    SBC.W $07A5                                                          ;AAE5BC;
    TAX                                                                  ;AAE5BF;
    LDA.W #PLMEntries_CrumbleLowerNorfairChozoRoomPlug                   ;AAE5C0;
    JSL.L Spawn_PLM_to_CurrentBlockIndex                                 ;AAE5C3;
    PLY                                                                  ;AAE5C7;
    PHY                                                                  ;AAE5C8;
    LDA.W $0000,Y                                                        ;AAE5C9;
    LDY.W #EnemyProjectile_WreckedShipChozoSpikeClearingFootsteps        ;AAE5CC;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;AAE5CF;

.return:
    PLY                                                                  ;AAE5D3;
    PLX                                                                  ;AAE5D4;
    INY                                                                  ;AAE5D5;
    INY                                                                  ;AAE5D6;
    RTL                                                                  ;AAE5D7;


Instruction_Chozo_Movement_IndexInY:
    LDA.W $0000,Y                                                        ;AAE5D8;
    STA.W $0FAC,X                                                        ;AAE5DB;
    PHY                                                                  ;AAE5DE;
    STZ.B $12                                                            ;AAE5DF;
    STZ.B $14                                                            ;AAE5E1;
    LDY.W $0FAC,X                                                        ;AAE5E3;
    LDA.W .XVelocity,Y                                                   ;AAE5E6;
    BPL +                                                                ;AAE5E9;
    DEC.B $14                                                            ;AAE5EB;

  + STA.B $13                                                            ;AAE5ED;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;AAE5EF;
    BCS .goingNowhere                                                    ;AAE5F3; >_<

.goingNowhere:
    STZ.B $12                                                            ;AAE5F5;
    STZ.B $14                                                            ;AAE5F7;
    LDY.W $0FAC,X                                                        ;AAE5F9;
    LDA.W .XVelocity,Y                                                   ;AAE5FC;
    BPL +                                                                ;AAE5FF;
    EOR.W #$FFFF                                                         ;AAE601;
    INC A                                                                ;AAE604;

  + BPL +                                                                ;AAE605;
    DEC.B $14                                                            ;AAE607;

  + STA.B $13                                                            ;AAE609;
    JSL.L MoveEnemyDownBy_14_12                                          ;AAE60B;
    BCS .move                                                            ;AAE60F;

.move:
    JSL.L AlignEnemyYPositionWIthNonSquareSlope                          ;AAE611;
    LDY.W $0FAC,X                                                        ;AAE615;
    LDA.W $0F7A,X                                                        ;AAE618;
    CLC                                                                  ;AAE61B;
    ADC.W .XOffsets,Y                                                    ;AAE61C;
    STA.W $0AF6                                                          ;AAE61F;
    LDA.W $0F7E,X                                                        ;AAE622;
    CLC                                                                  ;AAE625;
    ADC.W .YOffsets,Y                                                    ;AAE626;
    STA.W $0AFA                                                          ;AAE629;
    PLY                                                                  ;AAE62C;
    INY                                                                  ;AAE62D;
    INY                                                                  ;AAE62E;
    RTL                                                                  ;AAE62F;


.XVelocity:
; Enemy X velocity. Unit 1/100h px/frame. Absolute value used for Y velocity
    dw $0000,$0000,$0000,$0000,$FE00,$FD00,$F200,$F800                   ;AAE630; 0..1Eh: Wrecked Ship. Only 0..16h used
    dw $FE00,$FD00,$F200,$F800,$0000,$0000,$0000,$0000                   ;AAE640;
    dw $0000,$0000,$0000,$0000,$0200,$0300,$0E00,$0800                   ;AAE650; 20h..3Eh: Lower Norfair. Only 0..6h used
    dw $0200,$0300,$0E00,$0800,$0000,$0000,$0000,$0000                   ;AAE660;

.XOffsets:
; Samus X offsets from enemy
    dw $FFE4,$FFE2,$FFE0,$FFE0,$FFE0,$FFE0,$FFE0,$FFE0                   ;AAE670; 0..1Eh: Wrecked Ship. Only 0..16h used
    dw $FFE0,$FFE0,$FFE0,$FFE0,$FFE0,$FFE0,$FFE0,$FFE0                   ;AAE680;
    dw $001C,$001E,$0020,$0020,$0020,$0020,$0020,$0020                   ;AAE690; 20h..3Eh: Lower Norfair. Only 0..6h used
    dw $0020,$0020,$0020,$0020,$0020,$0020,$0020,$0020                   ;AAE6A0;

.YOffsets:
; Samus Y offsets from enemy
    dw $FFE0,$FFE7,$FFE9,$FFE9,$FFE9,$FFE8,$FFE7,$FFE8                   ;AAE6B0; 0..1Eh: Wrecked Ship. Only 0..16h used
    dw $FFE9,$FFE8,$FFE7,$FFE8,$FFE9,$FFE9,$FFE9,$FFE9                   ;AAE6C0;
    dw $FFE0,$FFE7,$FFE9,$FFE9,$FFE9,$FFE8,$FFE7,$FFE8                   ;AAE6D0; 20h..3Eh: Lower Norfair. Only 0..6h used
    dw $FFE9,$FFE8,$FFE7,$FFE8,$FFE9,$FFE9,$FFE9,$FFE9                   ;AAE6E0;

Instruction_Chozo_ReleaseSamus_BlockSlopeAccess:
    LDA.W #$0001                                                         ;AAE6F0;
    JSL.L Run_Samus_Command                                              ;AAE6F3;
    LDA.W #$0000                                                         ;AAE6F7;
    STA.L $7ECD26                                                        ;AAE6FA;
    STA.L $7ECD28                                                        ;AAE6FE;
    STA.L $7ECD29                                                        ;AAE702;
    LDA.W #$0001                                                         ;AAE706;
    STA.L $7ECD2D                                                        ;AAE709;
    JSL.L Spawn_Hardcoded_PLM                                            ;AAE70D;
    db $17,$1D                                                           ;AAE711;
    dw PLMEntries_BlockSlopeAccessForWreckedShipChozo                    ;AAE713;
    RTL                                                                  ;AAE715;


InitAI_NoobTubeCrack:
    LDX.W #$003E                                                         ;AAE716;

.loop:
    LDA.W Palette_NoobTubeCrack_SpritePalette1,X                         ;AAE719;
    STA.L $7EC320,X                                                      ;AAE71C;
    DEX                                                                  ;AAE720;
    DEX                                                                  ;AAE721;
    BPL .loop                                                            ;AAE722;
    RTL                                                                  ;AAE724;


InitAI_Chozo:
    LDX.W $0E54                                                          ;AAE725;
    LDA.W $0F86,X                                                        ;AAE728;
    ORA.W #$A800                                                         ;AAE72B;
    STA.W $0F86,X                                                        ;AAE72E;
    LDA.W #Spritemap_CommonAA_Nothing                                    ;AAE731;
    STA.W $0F8E,X                                                        ;AAE734;
    LDA.W #$0001                                                         ;AAE737;
    STA.W $0F94,X                                                        ;AAE73A;
    STZ.W $0F90,X                                                        ;AAE73D;
    LDA.W #RTS_AAE7A6                                                    ;AAE740;
    STA.W $0FB2,X                                                        ;AAE743;
    LDA.W #$0000                                                         ;AAE746;
    STA.W $0FB4,X                                                        ;AAE749;
    STZ.W $0F96,X                                                        ;AAE74C;
    STZ.W $0F9A                                                          ;AAE74F;
    LDY.W $0FB6,X                                                        ;AAE752;
    LDA.W .instListPointers,Y                                            ;AAE755;
    STA.W $0F92,X                                                        ;AAE758;
    TYA                                                                  ;AAE75B;
    BNE .lowerNorfair                                                    ;AAE75C;
    LDX.W #$001E                                                         ;AAE75E;

.loopWreckedShip:
    LDA.W Palette_Chozo_WreckedShip_SpritePalette2,X                     ;AAE761;
    STA.L $7EC340,X                                                      ;AAE764;
    LDA.W Palette_Chozo_WreckedShip_SpritePalette1,X                     ;AAE768;
    STA.L $7EC320,X                                                      ;AAE76B;
    DEX                                                                  ;AAE76F;
    DEX                                                                  ;AAE770;
    BPL .loopWreckedShip                                                 ;AAE771;
    JSL.L Spawn_Hardcoded_PLM                                            ;AAE773;
    db $4A,$17                                                           ;AAE777;
    dw PLMEntries_WreckedShipChozoHand                                   ;AAE779;
    JSL.L Spawn_Hardcoded_PLM                                            ;AAE77B;
    db $17,$1D                                                           ;AAE77F;
    dw PLMEntries_BlockSlopeAccessForWreckedShipChozo                    ;AAE781;
    RTL                                                                  ;AAE783;


.lowerNorfair:
    LDX.W #$001E                                                         ;AAE784;

.loop:
    LDA.W Palette_Chozo_LowerNorfair_SpritePalette2,X                    ;AAE787;
    STA.L $7EC340,X                                                      ;AAE78A;
    LDA.W Palette_Chozo_LowerNorfair_SpritePalette1,X                    ;AAE78E;
    STA.L $7EC320,X                                                      ;AAE791;
    DEX                                                                  ;AAE795;
    DEX                                                                  ;AAE796;
    BPL .loop                                                            ;AAE797;
    JSL.L Spawn_Hardcoded_PLM                                            ;AAE799;
    db $0C,$1D                                                           ;AAE79D;
    dw PLMEntries_LowerNorfairChozoHand                                  ;AAE79F;
    RTL                                                                  ;AAE7A1;


.instListPointers:
    dw InstList_Chozo_WreckedShip_Initial                                ;AAE7A2;
    dw InstList_Chozo_LowerNorfair_Initial                               ;AAE7A4;

RTS_AAE7A6:
    RTS                                                                  ;AAE7A6;


MainAI_Chozo:
    LDX.W $0E54                                                          ;AAE7A7;
    JSR.W ($0FB2,X)                                                      ;AAE7AA;
    RTL                                                                  ;AAE7AD;


Function_Chozo_WreckedShip:
    PHX                                                                  ;AAE7AE;
    LDX.W $079F                                                          ;AAE7AF;
    LDA.L $7ED828,X                                                      ;AAE7B2;
    PLX                                                                  ;AAE7B6;
    AND.W #$0001                                                         ;AAE7B7;
    BEQ .return                                                          ;AAE7BA;
    LDA.W $0FB4,X                                                        ;AAE7BC;
    BEQ .return                                                          ;AAE7BF;
    LDA.W #InstList_Chozo_WreckedShip_Activated_0                        ;AAE7C1;
    STA.W $0F92,X                                                        ;AAE7C4;
    LDA.W #$0001                                                         ;AAE7C7;
    STA.W $0F94,X                                                        ;AAE7CA;
    LDA.W #$FF00                                                         ;AAE7CD;
    STA.W $0FA8,X                                                        ;AAE7D0;
    LDA.W #$0100                                                         ;AAE7D3;
    STA.W $0FAA,X                                                        ;AAE7D6;

.return:
    RTS                                                                  ;AAE7D9;


RTS_AAE7DA:
    RTS                                                                  ;AAE7DA;


RTL_AAE7DB:
    RTL                                                                  ;AAE7DB;


RTL_AAE7DC:
    RTL                                                                  ;AAE7DC;


Spritemaps_Chozo_0:
    dw $0012                                                             ;AAE7DD;
    %spritemapEntry(0, $1FA, $DF, 0, 0, 2, 1, $17D)
    %spritemapEntry(1, $43D6, $E7, 0, 0, 2, 1, $120)
    %spritemapEntry(0, $1E6, $E7, 0, 0, 2, 1, $10F)
    %spritemapEntry(1, $43E6, $EF, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $43ED, $EC, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E4, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43F2, $1F, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43FA, $1F, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43FA, $0D, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $43FA, $15, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $43F9, $05, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43F9, $FD, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43F4, $F7, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F7, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FC, $E7, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E7, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D7, 0, 0, 2, 1, $100)

Spritemaps_Chozo_1:
    dw $0011                                                             ;AAE839;
    %spritemapEntry(0, $1FA, $DF, 0, 0, 2, 1, $17D)
    %spritemapEntry(1, $43E9, $ED, 0, 0, 2, 1, $12A)
    %spritemapEntry(1, $43D9, $ED, 0, 0, 2, 1, $128)
    %spritemapEntry(1, $43ED, $EC, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E4, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43F2, $1F, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43FA, $1F, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43FA, $0D, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $43FA, $15, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $43F9, $05, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43F9, $FD, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43F4, $F7, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F7, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FC, $E7, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E7, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D7, 0, 0, 2, 1, $100)

Spritemaps_Chozo_2:
    dw $0011                                                             ;AAE890;
    %spritemapEntry(1, $43E8, $ED, 0, 0, 2, 1, $126)
    %spritemapEntry(1, $43D8, $ED, 0, 0, 2, 1, $124)
    %spritemapEntry(0, $1FA, $DF, 0, 0, 2, 1, $17D)
    %spritemapEntry(1, $43ED, $EC, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E4, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43F2, $1F, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43FA, $1F, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43FA, $0D, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $43FA, $15, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $43F9, $05, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43F9, $FD, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43F4, $F7, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F7, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FC, $E7, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E7, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D7, 0, 0, 2, 1, $100)

Spritemaps_Chozo_3:
    dw $0012                                                             ;AAE8E7;
    %spritemapEntry(1, $43E8, $ED, 0, 0, 2, 1, $126)
    %spritemapEntry(1, $43D8, $E9, 0, 0, 2, 1, $12C)
    %spritemapEntry(0, $1E0, $F9, 0, 0, 2, 1, $11F)
    %spritemapEntry(0, $1FA, $DF, 0, 0, 2, 1, $17D)
    %spritemapEntry(1, $43ED, $EC, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E4, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43F2, $1F, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43FA, $1F, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43FA, $0D, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $43FA, $15, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $43F9, $05, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43F9, $FD, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43F4, $F7, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F7, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FC, $E7, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E7, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D7, 0, 0, 2, 1, $100)

Spritemaps_Chozo_4:
    dw $0015                                                             ;AAE943;
    %spritemapEntry(0, $1E0, $F9, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $43E8, $ED, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1FA, $DF, 0, 0, 2, 1, $179)
    %spritemapEntry(1, $43E9, $1B, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43E1, $1B, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43EE, $10, 0, 0, 2, 1, $158)
    %spritemapEntry(1, $43EE, $08, 0, 0, 2, 1, $148)
    %spritemapEntry(1, $43F4, $FD, 0, 0, 2, 1, $144)
    %spritemapEntry(1, $43F4, $F7, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F7, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $4210, $15, 0, 0, 2, 2, $175)
    %spritemapEntry(1, $4204, $09, 0, 0, 2, 2, $14E)
    %spritemapEntry(1, $43FB, $FD, 0, 1, 2, 2, $142)
    %spritemapEntry(1, $43FB, $05, 0, 1, 2, 2, $152)
    %spritemapEntry(1, $43D8, $E9, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EC, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E4, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43FC, $E7, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E7, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D7, 0, 0, 2, 1, $100)

Spritemaps_Chozo_5:
    dw $0016                                                             ;AAE9AE;
    %spritemapEntry(0, $1E0, $F8, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $43E8, $EC, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1FA, $DE, 0, 0, 2, 1, $17A)
    %spritemapEntry(1, $43EC, $1C, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43E4, $1C, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43F1, $11, 0, 0, 2, 1, $158)
    %spritemapEntry(1, $43F1, $09, 0, 0, 2, 1, $148)
    %spritemapEntry(1, $43F7, $04, 0, 0, 2, 1, $152)
    %spritemapEntry(1, $43F7, $FC, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $43F4, $F6, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F6, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $4209, $16, 0, 0, 2, 2, $175)
    %spritemapEntry(1, $43FC, $09, 0, 0, 2, 2, $14E)
    %spritemapEntry(1, $43F9, $04, 0, 0, 2, 2, $150)
    %spritemapEntry(1, $43F9, $FC, 0, 0, 2, 2, $140)
    %spritemapEntry(1, $43D8, $E8, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EB, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E3, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43FC, $E6, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E6, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D6, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D6, 0, 0, 2, 1, $100)

Spritemaps_Chozo_6:
    dw $0016                                                             ;AAEA1E;
    %spritemapEntry(1, $43E8, $EB, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1E0, $F7, 0, 0, 2, 1, $11F)
    %spritemapEntry(0, $1FA, $DD, 0, 0, 2, 1, $17B)
    %spritemapEntry(1, $43FA, $1E, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43F2, $1E, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43FA, $13, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $43FA, $0B, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $43FD, $17, 0, 0, 2, 2, $173)
    %spritemapEntry(1, $43F9, $03, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43F9, $FB, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43FA, $08, 0, 0, 2, 2, $14E)
    %spritemapEntry(1, $43F4, $F5, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F5, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43F7, $03, 0, 0, 2, 2, $152)
    %spritemapEntry(1, $43F7, $FB, 0, 0, 2, 2, $142)
    %spritemapEntry(1, $43D8, $E7, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EA, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E2, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43FC, $E5, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E5, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D5, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D5, 0, 0, 2, 1, $100)

Spritemaps_Chozo_7:
    dw $0016                                                             ;AAEA8E;
    %spritemapEntry(0, $1E0, $F8, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $43E8, $EC, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1FA, $DE, 0, 0, 2, 1, $17C)
    %spritemapEntry(1, $4201, $1D, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43F9, $1D, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $4201, $12, 0, 0, 2, 1, $156)
    %spritemapEntry(1, $4201, $0A, 0, 0, 2, 1, $146)
    %spritemapEntry(1, $43FB, $04, 0, 1, 2, 1, $152)
    %spritemapEntry(1, $43FB, $FC, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $43F2, $1B, 0, 0, 2, 2, $173)
    %spritemapEntry(1, $43F3, $10, 0, 0, 2, 2, $156)
    %spritemapEntry(1, $43F3, $08, 0, 0, 2, 2, $146)
    %spritemapEntry(1, $43F4, $F6, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F6, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43F4, $FC, 0, 0, 2, 2, $144)
    %spritemapEntry(1, $43D8, $E8, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EB, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E3, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43FC, $E6, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E6, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D6, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D6, 0, 0, 2, 1, $100)

Spritemaps_Chozo_8:
    dw $0015                                                             ;AAEAFE;
    %spritemapEntry(1, $43E8, $ED, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1E0, $F9, 0, 0, 2, 1, $11F)
    %spritemapEntry(0, $1FA, $DF, 0, 0, 2, 1, $179)
    %spritemapEntry(1, $4210, $15, 0, 0, 2, 1, $175)
    %spritemapEntry(1, $4204, $09, 0, 0, 2, 1, $14E)
    %spritemapEntry(1, $43FB, $05, 0, 1, 2, 1, $152)
    %spritemapEntry(1, $43FB, $FD, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $43F4, $F7, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F7, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43E1, $1B, 0, 0, 2, 2, $170)
    %spritemapEntry(1, $43E9, $1B, 0, 0, 2, 2, $171)
    %spritemapEntry(1, $43EE, $10, 0, 0, 2, 2, $158)
    %spritemapEntry(1, $43EE, $08, 0, 0, 2, 2, $148)
    %spritemapEntry(1, $43F4, $FD, 0, 0, 2, 2, $144)
    %spritemapEntry(1, $43D8, $E9, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EC, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E4, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43FC, $E7, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E7, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D7, 0, 0, 2, 1, $100)

Spritemaps_Chozo_9:
    dw $0016                                                             ;AAEB69;
    %spritemapEntry(0, $1E0, $F8, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $43E8, $EC, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1FA, $DE, 0, 0, 2, 1, $17A)
    %spritemapEntry(1, $4209, $16, 0, 0, 2, 1, $175)
    %spritemapEntry(1, $43FC, $09, 0, 0, 2, 1, $14E)
    %spritemapEntry(1, $43F9, $04, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43F9, $FC, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43D8, $E8, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43F5, $E3, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43ED, $EB, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F4, $F6, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F6, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FC, $E6, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E6, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D6, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D6, 0, 0, 2, 1, $100)
    %spritemapEntry(1, $43E4, $1C, 0, 0, 2, 2, $170)
    %spritemapEntry(1, $43EC, $1C, 0, 0, 2, 2, $171)
    %spritemapEntry(1, $43F1, $11, 0, 0, 2, 2, $158)
    %spritemapEntry(1, $43F1, $09, 0, 0, 2, 2, $148)
    %spritemapEntry(1, $43F7, $04, 0, 0, 2, 2, $152)
    %spritemapEntry(1, $43F7, $FC, 0, 0, 2, 2, $142)

Spritemaps_Chozo_A:
    dw $0016                                                             ;AAEBD9;
    %spritemapEntry(1, $43E8, $EB, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1E0, $F7, 0, 0, 2, 1, $11F)
    %spritemapEntry(0, $1FA, $DD, 0, 0, 2, 1, $17B)
    %spritemapEntry(1, $43FD, $17, 0, 0, 2, 1, $173)
    %spritemapEntry(1, $43FA, $08, 0, 0, 2, 1, $14E)
    %spritemapEntry(1, $43F7, $03, 0, 0, 2, 1, $152)
    %spritemapEntry(1, $43F7, $FB, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $43F2, $1E, 0, 0, 2, 2, $170)
    %spritemapEntry(1, $43FA, $1E, 0, 0, 2, 2, $171)
    %spritemapEntry(1, $43FA, $13, 0, 0, 2, 2, $15C)
    %spritemapEntry(1, $43FA, $0B, 0, 0, 2, 2, $14C)
    %spritemapEntry(1, $43F9, $03, 0, 0, 2, 2, $150)
    %spritemapEntry(1, $43F9, $FB, 0, 0, 2, 2, $140)
    %spritemapEntry(1, $43D8, $E7, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EA, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E2, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43F4, $F5, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F5, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FC, $E5, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E5, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D5, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D5, 0, 0, 2, 1, $100)

Spritemaps_Chozo_B:
    dw $0016                                                             ;AAEC49;
    %spritemapEntry(0, $1E0, $F8, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $43E8, $EC, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1FA, $DE, 0, 0, 2, 1, $17C)
    %spritemapEntry(1, $43F2, $1B, 0, 0, 2, 1, $173)
    %spritemapEntry(1, $43F3, $10, 0, 0, 2, 1, $156)
    %spritemapEntry(1, $43F3, $08, 0, 0, 2, 1, $146)
    %spritemapEntry(1, $43F4, $FC, 0, 0, 2, 1, $144)
    %spritemapEntry(1, $43F9, $1D, 0, 0, 2, 2, $170)
    %spritemapEntry(1, $4201, $1D, 0, 0, 2, 2, $171)
    %spritemapEntry(1, $4201, $12, 0, 0, 2, 2, $156)
    %spritemapEntry(1, $4201, $0A, 0, 0, 2, 2, $146)
    %spritemapEntry(1, $43F4, $F6, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F6, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FB, $FC, 0, 1, 2, 2, $142)
    %spritemapEntry(1, $43FB, $04, 0, 1, 2, 2, $152)
    %spritemapEntry(1, $43D8, $E8, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EB, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E3, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43FC, $E6, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E6, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D6, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D6, 0, 0, 2, 1, $100)

Spritemaps_Chozo_C:
    dw $0012                                                             ;AAECB9;
    %spritemapEntry(1, $43E8, $ED, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1E0, $F9, 0, 0, 2, 1, $11F)
    %spritemapEntry(0, $1FA, $DF, 0, 0, 2, 1, $17D)
    %spritemapEntry(1, $43D8, $E9, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EC, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E4, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43F2, $1F, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43FA, $1F, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43FA, $0D, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $43FA, $15, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $43F9, $05, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43F9, $FD, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43F4, $F7, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F7, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FC, $E7, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E7, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D7, 0, 0, 2, 1, $100)

Spritemaps_Chozo_D:
    dw $0012                                                             ;AAED15;
    %spritemapEntry(0, $1E0, $F9, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $43E8, $ED, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1FA, $DF, 0, 0, 2, 1, $17C)
    %spritemapEntry(1, $43D8, $E9, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EC, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E4, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43F2, $1F, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43FA, $1F, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43FA, $0D, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $43FA, $15, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $43F9, $05, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43F9, $FD, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43F4, $F7, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F7, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FC, $E7, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E7, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D7, 0, 0, 2, 1, $100)

Spritemaps_Chozo_E:
    dw $0012                                                             ;AAED71;
    %spritemapEntry(1, $43D8, $E9, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43E8, $ED, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1E0, $F9, 0, 0, 2, 1, $11F)
    %spritemapEntry(0, $1FA, $DF, 0, 0, 2, 1, $17B)
    %spritemapEntry(1, $43ED, $EC, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E4, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43F2, $1F, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43FA, $1F, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43FA, $0D, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $43FA, $15, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $43F9, $05, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43F9, $FD, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43F4, $F7, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F7, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FC, $E7, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E7, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D7, 0, 0, 2, 1, $100)

Spritemaps_Chozo_F:
    dw $0012                                                             ;AAEDCD;
    %spritemapEntry(0, $1E0, $F9, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $43E8, $ED, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1FA, $DF, 0, 0, 2, 1, $17A)
    %spritemapEntry(1, $43D8, $E9, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EC, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E4, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43F2, $1F, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43FA, $1F, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43FA, $0D, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $43FA, $15, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $43F9, $05, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43F9, $FD, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43F4, $F7, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F7, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FC, $E7, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E7, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D7, 0, 0, 2, 1, $100)

Spritemaps_Chozo_10:
    dw $0012                                                             ;AAEE29;
    %spritemapEntry(1, $43D8, $E9, 0, 0, 2, 1, $12C)
    %spritemapEntry(0, $1E0, $F9, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $43E8, $ED, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1FA, $DF, 0, 0, 2, 1, $179)
    %spritemapEntry(1, $43ED, $EC, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E4, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43F2, $1F, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43FA, $1F, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43FA, $0D, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $43FA, $15, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $43F9, $05, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43F9, $FD, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43F4, $F7, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F7, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FC, $E7, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E7, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D7, 0, 0, 2, 1, $100)

Spritemaps_Chozo_11:
    dw $002A                                                             ;AAEE85;
    %spritemapEntry(1, $43E0, $98, 0, 0, 2, 1, $144)
    %spritemapEntry(1, $4242, $98, 0, 0, 2, 1, $14A)
    %spritemapEntry(1, $4232, $A0, 0, 0, 2, 1, $158)
    %spritemapEntry(1, $4232, $98, 0, 0, 2, 1, $148)
    %spritemapEntry(1, $4222, $A0, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $4222, $98, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $4202, $98, 0, 0, 2, 1, $14E)
    %spritemapEntry(1, $4212, $A0, 0, 0, 2, 1, $156)
    %spritemapEntry(1, $4212, $98, 0, 0, 2, 1, $146)
    %spritemapEntry(1, $4201, $B8, 0, 0, 2, 2, $14E)
    %spritemapEntry(1, $4211, $C0, 0, 0, 2, 2, $156)
    %spritemapEntry(1, $4211, $B8, 0, 0, 2, 2, $146)
    %spritemapEntry(1, $4241, $B8, 0, 0, 2, 2, $14A)
    %spritemapEntry(1, $4231, $C0, 0, 0, 2, 2, $158)
    %spritemapEntry(1, $4231, $B8, 0, 0, 2, 2, $148)
    %spritemapEntry(1, $4221, $C0, 0, 0, 2, 2, $15C)
    %spritemapEntry(1, $4221, $B8, 0, 0, 2, 2, $14C)
    %spritemapEntry(1, $43D8, $F0, 0, 0, 2, 2, $177)
    %spritemapEntry(1, $43C8, $F0, 0, 0, 2, 2, $175)
    %spritemapEntry(1, $43B8, $F0, 0, 0, 2, 2, $173)
    %spritemapEntry(1, $43A0, $F0, 0, 0, 2, 2, $170)
    %spritemapEntry(1, $43A8, $F0, 0, 0, 2, 2, $171)
    %spritemapEntry(1, $43D8, $E0, 0, 0, 2, 1, $177)
    %spritemapEntry(1, $43C8, $E0, 0, 0, 2, 1, $175)
    %spritemapEntry(1, $43B8, $E0, 0, 0, 2, 1, $173)
    %spritemapEntry(1, $43A8, $E0, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43A0, $E0, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43D0, $A0, 0, 0, 2, 1, $152)
    %spritemapEntry(1, $43D0, $98, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $43B0, $A0, 0, 1, 2, 1, $152)
    %spritemapEntry(1, $43B0, $98, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $43C0, $A0, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43C0, $98, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43A0, $98, 0, 1, 2, 1, $144)
    %spritemapEntry(1, $43A1, $B8, 0, 1, 2, 2, $144)
    %spritemapEntry(1, $43B0, $B8, 0, 1, 2, 2, $142)
    %spritemapEntry(1, $43B0, $C0, 0, 1, 2, 2, $152)
    %spritemapEntry(1, $43D0, $C0, 0, 0, 2, 2, $152)
    %spritemapEntry(1, $43C0, $C0, 0, 0, 2, 2, $150)
    %spritemapEntry(1, $43E0, $B8, 0, 0, 2, 2, $144)
    %spritemapEntry(1, $43D0, $B8, 0, 0, 2, 2, $142)
    %spritemapEntry(1, $43C0, $B8, 0, 0, 2, 2, $140)

Spritemaps_Chozo_12:
    dw $0019                                                             ;AAEF59;
    %spritemapEntry(1, $4238, $88, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $4240, $80, 0, 0, 2, 1, $10B)
    %spritemapEntry(0, $3E, $EF, 0, 0, 2, 1, $139)
    %spritemapEntry(1, $4236, $DF, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $4246, $E7, 0, 0, 2, 1, $12A)
    %spritemapEntry(1, $4220, $DB, 0, 0, 2, 1, $12A)
    %spritemapEntry(1, $4210, $DB, 0, 0, 2, 1, $128)
    %spritemapEntry(1, $4245, $C8, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $45, $C0, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $4235, $C0, 0, 0, 2, 1, $124)
    %spritemapEntry(1, $4211, $C0, 0, 0, 2, 1, $120)
    %spritemapEntry(0, $21, $C0, 0, 0, 2, 1, $10F)
    %spritemapEntry(1, $4221, $C8, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $43B7, $BD, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $43B7, $C5, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $4399, $D7, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $4399, $CF, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43DA, $CA, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43E2, $CA, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43F1, $A8, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43F9, $A8, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43F9, $98, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43E9, $98, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43F9, $88, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43E9, $88, 0, 0, 2, 1, $100)

Spritemaps_Chozo_13:
    dw $0012                                                             ;AAEFD8;
    %spritemapEntry(0, $1FE, $DF, 0, 1, 2, 1, $17D)
    %spritemapEntry(1, $421A, $E7, 0, 1, 2, 1, $120)
    %spritemapEntry(0, $12, $E7, 0, 1, 2, 1, $10F)
    %spritemapEntry(1, $420A, $EF, 0, 1, 2, 1, $122)
    %spritemapEntry(1, $4203, $EC, 0, 1, 2, 1, $10D)
    %spritemapEntry(1, $43FB, $E4, 0, 1, 2, 1, $10B)
    %spritemapEntry(1, $43FE, $1F, 0, 1, 2, 1, $170)
    %spritemapEntry(1, $43F6, $1F, 0, 1, 2, 1, $171)
    %spritemapEntry(1, $43F6, $0D, 0, 1, 2, 1, $14C)
    %spritemapEntry(1, $43F6, $15, 0, 1, 2, 1, $15C)
    %spritemapEntry(1, $43F7, $05, 0, 1, 2, 1, $150)
    %spritemapEntry(1, $43F7, $FD, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $43FC, $F7, 0, 1, 2, 1, $108)
    %spritemapEntry(1, $43F4, $F7, 0, 1, 2, 1, $109)
    %spritemapEntry(1, $43F4, $E7, 0, 1, 2, 1, $106)
    %spritemapEntry(1, $4204, $E7, 0, 1, 2, 1, $104)
    %spritemapEntry(1, $43F4, $D7, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $4204, $D7, 0, 1, 2, 1, $100)

Spritemaps_Chozo_14:
    dw $0011                                                             ;AAF034;
    %spritemapEntry(0, $1FE, $DF, 0, 1, 2, 1, $17D)
    %spritemapEntry(1, $4207, $ED, 0, 1, 2, 1, $12A)
    %spritemapEntry(1, $4217, $ED, 0, 1, 2, 1, $128)
    %spritemapEntry(1, $4203, $EC, 0, 1, 2, 1, $10D)
    %spritemapEntry(1, $43FB, $E4, 0, 1, 2, 1, $10B)
    %spritemapEntry(1, $43FE, $1F, 0, 1, 2, 1, $170)
    %spritemapEntry(1, $43F6, $1F, 0, 1, 2, 1, $171)
    %spritemapEntry(1, $43F6, $0D, 0, 1, 2, 1, $14C)
    %spritemapEntry(1, $43F6, $15, 0, 1, 2, 1, $15C)
    %spritemapEntry(1, $43F7, $05, 0, 1, 2, 1, $150)
    %spritemapEntry(1, $43F7, $FD, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $43FC, $F7, 0, 1, 2, 1, $108)
    %spritemapEntry(1, $43F4, $F7, 0, 1, 2, 1, $109)
    %spritemapEntry(1, $43F4, $E7, 0, 1, 2, 1, $106)
    %spritemapEntry(1, $4204, $E7, 0, 1, 2, 1, $104)
    %spritemapEntry(1, $43F4, $D7, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $4204, $D7, 0, 1, 2, 1, $100)

Spritemaps_Chozo_15:
    dw $0011                                                             ;AAF08B;
    %spritemapEntry(1, $4208, $ED, 0, 1, 2, 1, $126)
    %spritemapEntry(1, $4218, $ED, 0, 1, 2, 1, $124)
    %spritemapEntry(0, $1FE, $DF, 0, 1, 2, 1, $17D)
    %spritemapEntry(1, $4203, $EC, 0, 1, 2, 1, $10D)
    %spritemapEntry(1, $43FB, $E4, 0, 1, 2, 1, $10B)
    %spritemapEntry(1, $43FE, $1F, 0, 1, 2, 1, $170)
    %spritemapEntry(1, $43F6, $1F, 0, 1, 2, 1, $171)
    %spritemapEntry(1, $43F6, $0D, 0, 1, 2, 1, $14C)
    %spritemapEntry(1, $43F6, $15, 0, 1, 2, 1, $15C)
    %spritemapEntry(1, $43F7, $05, 0, 1, 2, 1, $150)
    %spritemapEntry(1, $43F7, $FD, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $43FC, $F7, 0, 1, 2, 1, $108)
    %spritemapEntry(1, $43F4, $F7, 0, 1, 2, 1, $109)
    %spritemapEntry(1, $43F4, $E7, 0, 1, 2, 1, $106)
    %spritemapEntry(1, $4204, $E7, 0, 1, 2, 1, $104)
    %spritemapEntry(1, $43F4, $D7, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $4204, $D7, 0, 1, 2, 1, $100)

Spritemaps_Chozo_16:
    dw $0012                                                             ;AAF0E2;
    %spritemapEntry(1, $4208, $ED, 0, 1, 2, 1, $126)
    %spritemapEntry(1, $4218, $E9, 0, 1, 2, 1, $12C)
    %spritemapEntry(0, $18, $F9, 0, 1, 2, 1, $11F)
    %spritemapEntry(0, $1FE, $DF, 0, 1, 2, 1, $17D)
    %spritemapEntry(1, $4203, $EC, 0, 1, 2, 1, $10D)
    %spritemapEntry(1, $43FB, $E4, 0, 1, 2, 1, $10B)
    %spritemapEntry(1, $43FE, $1F, 0, 1, 2, 1, $170)
    %spritemapEntry(1, $43F6, $1F, 0, 1, 2, 1, $171)
    %spritemapEntry(1, $43F6, $0D, 0, 1, 2, 1, $14C)
    %spritemapEntry(1, $43F6, $15, 0, 1, 2, 1, $15C)
    %spritemapEntry(1, $43F7, $05, 0, 1, 2, 1, $150)
    %spritemapEntry(1, $43F7, $FD, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $43FC, $F7, 0, 1, 2, 1, $108)
    %spritemapEntry(1, $43F4, $F7, 0, 1, 2, 1, $109)
    %spritemapEntry(1, $43F4, $E7, 0, 1, 2, 1, $106)
    %spritemapEntry(1, $4204, $E7, 0, 1, 2, 1, $104)
    %spritemapEntry(1, $43F4, $D7, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $4204, $D7, 0, 1, 2, 1, $100)

Spritemaps_Chozo_17:
    dw $0015                                                             ;AAF13E;
    %spritemapEntry(0, $1E0, $F9, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $43E8, $ED, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1FA, $DF, 0, 0, 2, 1, $179)
    %spritemapEntry(1, $43E9, $1B, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43E1, $1B, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43EE, $10, 0, 0, 2, 1, $158)
    %spritemapEntry(1, $43EE, $08, 0, 0, 2, 1, $148)
    %spritemapEntry(1, $43F4, $FD, 0, 0, 2, 1, $144)
    %spritemapEntry(1, $43F4, $F7, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F7, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $4210, $15, 0, 0, 2, 2, $175)
    %spritemapEntry(1, $4204, $09, 0, 0, 2, 2, $14E)
    %spritemapEntry(1, $43FB, $FD, 0, 1, 2, 2, $142)
    %spritemapEntry(1, $43FB, $05, 0, 1, 2, 2, $152)
    %spritemapEntry(1, $43D8, $E9, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EC, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E4, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43FC, $E7, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E7, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D7, 0, 0, 2, 1, $100)

Spritemaps_Chozo_18:
    dw $0016                                                             ;AAF1A9;
    %spritemapEntry(0, $1E0, $F8, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $43E8, $EC, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1FA, $DE, 0, 0, 2, 1, $17A)
    %spritemapEntry(1, $43EC, $1C, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43E4, $1C, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43F1, $11, 0, 0, 2, 1, $158)
    %spritemapEntry(1, $43F1, $09, 0, 0, 2, 1, $148)
    %spritemapEntry(1, $43F7, $04, 0, 0, 2, 1, $152)
    %spritemapEntry(1, $43F7, $FC, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $43F4, $F6, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F6, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $4209, $16, 0, 0, 2, 2, $175)
    %spritemapEntry(1, $43FC, $09, 0, 0, 2, 2, $14E)
    %spritemapEntry(1, $43F9, $04, 0, 0, 2, 2, $150)
    %spritemapEntry(1, $43F9, $FC, 0, 0, 2, 2, $140)
    %spritemapEntry(1, $43D8, $E8, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EB, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E3, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43FC, $E6, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E6, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D6, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D6, 0, 0, 2, 1, $100)

Spritemaps_Chozo_19:
    dw $0016                                                             ;AAF219;
    %spritemapEntry(1, $43E8, $EB, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1E0, $F7, 0, 0, 2, 1, $11F)
    %spritemapEntry(0, $1FA, $DD, 0, 0, 2, 1, $17B)
    %spritemapEntry(1, $43FA, $1E, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43F2, $1E, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43FA, $13, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $43FA, $0B, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $43FD, $17, 0, 0, 2, 2, $173)
    %spritemapEntry(1, $43F9, $03, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43F9, $FB, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43FA, $08, 0, 0, 2, 2, $14E)
    %spritemapEntry(1, $43F4, $F5, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F5, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43F7, $03, 0, 0, 2, 2, $152)
    %spritemapEntry(1, $43F7, $FB, 0, 0, 2, 2, $142)
    %spritemapEntry(1, $43D8, $E7, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EA, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E2, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43FC, $E5, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E5, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D5, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D5, 0, 0, 2, 1, $100)

Spritemaps_Chozo_1A:
    dw $0016                                                             ;AAF289;
    %spritemapEntry(0, $1E0, $F8, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $43E8, $EC, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1FA, $DE, 0, 0, 2, 1, $17C)
    %spritemapEntry(1, $4201, $1D, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43F9, $1D, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $4201, $12, 0, 0, 2, 1, $156)
    %spritemapEntry(1, $4201, $0A, 0, 0, 2, 1, $146)
    %spritemapEntry(1, $43FB, $04, 0, 1, 2, 1, $152)
    %spritemapEntry(1, $43FB, $FC, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $43F2, $1B, 0, 0, 2, 2, $173)
    %spritemapEntry(1, $43F3, $10, 0, 0, 2, 2, $156)
    %spritemapEntry(1, $43F3, $08, 0, 0, 2, 2, $146)
    %spritemapEntry(1, $43F4, $F6, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F6, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43F4, $FC, 0, 0, 2, 2, $144)
    %spritemapEntry(1, $43D8, $E8, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EB, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E3, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43FC, $E6, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E6, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D6, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D6, 0, 0, 2, 1, $100)

Spritemaps_Chozo_1B:
    dw $0015                                                             ;AAF2F9;
    %spritemapEntry(1, $43E8, $ED, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1E0, $F9, 0, 0, 2, 1, $11F)
    %spritemapEntry(0, $1FA, $DF, 0, 0, 2, 1, $179)
    %spritemapEntry(1, $4210, $15, 0, 0, 2, 1, $175)
    %spritemapEntry(1, $4204, $09, 0, 0, 2, 1, $14E)
    %spritemapEntry(1, $43FB, $05, 0, 1, 2, 1, $152)
    %spritemapEntry(1, $43FB, $FD, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $43F4, $F7, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F7, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43E1, $1B, 0, 0, 2, 2, $170)
    %spritemapEntry(1, $43E9, $1B, 0, 0, 2, 2, $171)
    %spritemapEntry(1, $43EE, $10, 0, 0, 2, 2, $158)
    %spritemapEntry(1, $43EE, $08, 0, 0, 2, 2, $148)
    %spritemapEntry(1, $43F4, $FD, 0, 0, 2, 2, $144)
    %spritemapEntry(1, $43D8, $E9, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EC, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E4, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43FC, $E7, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E7, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D7, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D7, 0, 0, 2, 1, $100)

Spritemaps_Chozo_1C:
    dw $0016                                                             ;AAF364;
    %spritemapEntry(0, $1E0, $F8, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $43E8, $EC, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1FA, $DE, 0, 0, 2, 1, $17A)
    %spritemapEntry(1, $4209, $16, 0, 0, 2, 1, $175)
    %spritemapEntry(1, $43FC, $09, 0, 0, 2, 1, $14E)
    %spritemapEntry(1, $43F9, $04, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43F9, $FC, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43D8, $E8, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43F5, $E3, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43ED, $EB, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F4, $F6, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F6, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FC, $E6, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E6, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D6, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D6, 0, 0, 2, 1, $100)
    %spritemapEntry(1, $43E4, $1C, 0, 0, 2, 2, $170)
    %spritemapEntry(1, $43EC, $1C, 0, 0, 2, 2, $171)
    %spritemapEntry(1, $43F1, $11, 0, 0, 2, 2, $158)
    %spritemapEntry(1, $43F1, $09, 0, 0, 2, 2, $148)
    %spritemapEntry(1, $43F7, $04, 0, 0, 2, 2, $152)
    %spritemapEntry(1, $43F7, $FC, 0, 0, 2, 2, $142)

Spritemaps_Chozo_1D:
    dw $0016                                                             ;AAF3D4;
    %spritemapEntry(1, $43E8, $EB, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1E0, $F7, 0, 0, 2, 1, $11F)
    %spritemapEntry(0, $1FA, $DD, 0, 0, 2, 1, $17B)
    %spritemapEntry(1, $43FD, $17, 0, 0, 2, 1, $173)
    %spritemapEntry(1, $43FA, $08, 0, 0, 2, 1, $14E)
    %spritemapEntry(1, $43F7, $03, 0, 0, 2, 1, $152)
    %spritemapEntry(1, $43F7, $FB, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $43F2, $1E, 0, 0, 2, 2, $170)
    %spritemapEntry(1, $43FA, $1E, 0, 0, 2, 2, $171)
    %spritemapEntry(1, $43FA, $13, 0, 0, 2, 2, $15C)
    %spritemapEntry(1, $43FA, $0B, 0, 0, 2, 2, $14C)
    %spritemapEntry(1, $43F9, $03, 0, 0, 2, 2, $150)
    %spritemapEntry(1, $43F9, $FB, 0, 0, 2, 2, $140)
    %spritemapEntry(1, $43D8, $E7, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EA, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E2, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43F4, $F5, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F5, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FC, $E5, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E5, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D5, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D5, 0, 0, 2, 1, $100)

Spritemaps_Chozo_1E:
    dw $0016                                                             ;AAF444;
    %spritemapEntry(0, $1E0, $F8, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $43E8, $EC, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $1FA, $DE, 0, 0, 2, 1, $17C)
    %spritemapEntry(1, $43F2, $1B, 0, 0, 2, 1, $173)
    %spritemapEntry(1, $43F3, $10, 0, 0, 2, 1, $156)
    %spritemapEntry(1, $43F3, $08, 0, 0, 2, 1, $146)
    %spritemapEntry(1, $43F4, $FC, 0, 0, 2, 1, $144)
    %spritemapEntry(1, $43F9, $1D, 0, 0, 2, 2, $170)
    %spritemapEntry(1, $4201, $1D, 0, 0, 2, 2, $171)
    %spritemapEntry(1, $4201, $12, 0, 0, 2, 2, $156)
    %spritemapEntry(1, $4201, $0A, 0, 0, 2, 2, $146)
    %spritemapEntry(1, $43F4, $F6, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43FC, $F6, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43FB, $FC, 0, 1, 2, 2, $142)
    %spritemapEntry(1, $43FB, $04, 0, 1, 2, 2, $152)
    %spritemapEntry(1, $43D8, $E8, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $43ED, $EB, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $43F5, $E3, 0, 0, 2, 1, $10B)
    %spritemapEntry(1, $43FC, $E6, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43EC, $E6, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43FC, $D6, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43EC, $D6, 0, 0, 2, 1, $100)

Spritemaps_Chozo_1F:
    dw $0012                                                             ;AAF4B4;
    %spritemapEntry(1, $4208, $ED, 0, 1, 2, 1, $126)
    %spritemapEntry(0, $18, $F9, 0, 1, 2, 1, $11F)
    %spritemapEntry(0, $1FE, $DF, 0, 1, 2, 1, $17D)
    %spritemapEntry(1, $4218, $E9, 0, 1, 2, 1, $12C)
    %spritemapEntry(1, $4203, $EC, 0, 1, 2, 1, $10D)
    %spritemapEntry(1, $43FB, $E4, 0, 1, 2, 1, $10B)
    %spritemapEntry(1, $43FE, $1F, 0, 1, 2, 1, $170)
    %spritemapEntry(1, $43F6, $1F, 0, 1, 2, 1, $171)
    %spritemapEntry(1, $43F6, $0D, 0, 1, 2, 1, $14C)
    %spritemapEntry(1, $43F6, $15, 0, 1, 2, 1, $15C)
    %spritemapEntry(1, $43F7, $05, 0, 1, 2, 1, $150)
    %spritemapEntry(1, $43F7, $FD, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $43FC, $F7, 0, 1, 2, 1, $108)
    %spritemapEntry(1, $43F4, $F7, 0, 1, 2, 1, $109)
    %spritemapEntry(1, $43F4, $E7, 0, 1, 2, 1, $106)
    %spritemapEntry(1, $4204, $E7, 0, 1, 2, 1, $104)
    %spritemapEntry(1, $43F4, $D7, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $4204, $D7, 0, 1, 2, 1, $100)

Spritemaps_Chozo_20:
    dw $0012                                                             ;AAF510;
    %spritemapEntry(0, $18, $F9, 0, 1, 2, 1, $11F)
    %spritemapEntry(1, $4208, $ED, 0, 1, 2, 1, $126)
    %spritemapEntry(0, $1FE, $DF, 0, 1, 2, 1, $17C)
    %spritemapEntry(1, $4218, $E9, 0, 1, 2, 1, $12C)
    %spritemapEntry(1, $4203, $EC, 0, 1, 2, 1, $10D)
    %spritemapEntry(1, $43FB, $E4, 0, 1, 2, 1, $10B)
    %spritemapEntry(1, $43FE, $1F, 0, 1, 2, 1, $170)
    %spritemapEntry(1, $43F6, $1F, 0, 1, 2, 1, $171)
    %spritemapEntry(1, $43F6, $0D, 0, 1, 2, 1, $14C)
    %spritemapEntry(1, $43F6, $15, 0, 1, 2, 1, $15C)
    %spritemapEntry(1, $43F7, $05, 0, 1, 2, 1, $150)
    %spritemapEntry(1, $43F7, $FD, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $43FC, $F7, 0, 1, 2, 1, $108)
    %spritemapEntry(1, $43F4, $F7, 0, 1, 2, 1, $109)
    %spritemapEntry(1, $43F4, $E7, 0, 1, 2, 1, $106)
    %spritemapEntry(1, $4204, $E7, 0, 1, 2, 1, $104)
    %spritemapEntry(1, $43F4, $D7, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $4204, $D7, 0, 1, 2, 1, $100)

Spritemaps_Chozo_21:
    dw $0012                                                             ;AAF56C;
    %spritemapEntry(1, $4218, $E9, 0, 1, 2, 1, $12C)
    %spritemapEntry(1, $4208, $ED, 0, 1, 2, 1, $126)
    %spritemapEntry(0, $18, $F9, 0, 1, 2, 1, $11F)
    %spritemapEntry(0, $1FE, $DF, 0, 1, 2, 1, $17B)
    %spritemapEntry(1, $4203, $EC, 0, 1, 2, 1, $10D)
    %spritemapEntry(1, $43FB, $E4, 0, 1, 2, 1, $10B)
    %spritemapEntry(1, $43FE, $1F, 0, 1, 2, 1, $170)
    %spritemapEntry(1, $43F6, $1F, 0, 1, 2, 1, $171)
    %spritemapEntry(1, $43F6, $0D, 0, 1, 2, 1, $14C)
    %spritemapEntry(1, $43F6, $15, 0, 1, 2, 1, $15C)
    %spritemapEntry(1, $43F7, $05, 0, 1, 2, 1, $150)
    %spritemapEntry(1, $43F7, $FD, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $43FC, $F7, 0, 1, 2, 1, $108)
    %spritemapEntry(1, $43F4, $F7, 0, 1, 2, 1, $109)
    %spritemapEntry(1, $43F4, $E7, 0, 1, 2, 1, $106)
    %spritemapEntry(1, $4204, $E7, 0, 1, 2, 1, $104)
    %spritemapEntry(1, $43F4, $D7, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $4204, $D7, 0, 1, 2, 1, $100)

Spritemaps_Chozo_22:
    dw $0012                                                             ;AAF5C8;
    %spritemapEntry(0, $18, $F9, 0, 1, 2, 1, $11F)
    %spritemapEntry(1, $4208, $ED, 0, 1, 2, 1, $126)
    %spritemapEntry(0, $1FE, $DF, 0, 1, 2, 1, $17A)
    %spritemapEntry(1, $4218, $E9, 0, 1, 2, 1, $12C)
    %spritemapEntry(1, $4203, $EC, 0, 1, 2, 1, $10D)
    %spritemapEntry(1, $43FB, $E4, 0, 1, 2, 1, $10B)
    %spritemapEntry(1, $43FE, $1F, 0, 1, 2, 1, $170)
    %spritemapEntry(1, $43F6, $1F, 0, 1, 2, 1, $171)
    %spritemapEntry(1, $43F6, $0D, 0, 1, 2, 1, $14C)
    %spritemapEntry(1, $43F6, $15, 0, 1, 2, 1, $15C)
    %spritemapEntry(1, $43F7, $05, 0, 1, 2, 1, $150)
    %spritemapEntry(1, $43F7, $FD, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $43FC, $F7, 0, 1, 2, 1, $108)
    %spritemapEntry(1, $43F4, $F7, 0, 1, 2, 1, $109)
    %spritemapEntry(1, $43F4, $E7, 0, 1, 2, 1, $106)
    %spritemapEntry(1, $4204, $E7, 0, 1, 2, 1, $104)
    %spritemapEntry(1, $43F4, $D7, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $4204, $D7, 0, 1, 2, 1, $100)

Spritemaps_Chozo_23:
    dw $0012                                                             ;AAF624;
    %spritemapEntry(1, $4218, $E9, 0, 1, 2, 1, $12C)
    %spritemapEntry(0, $18, $F9, 0, 1, 2, 1, $11F)
    %spritemapEntry(1, $4208, $ED, 0, 1, 2, 1, $126)
    %spritemapEntry(0, $1FE, $DF, 0, 1, 2, 1, $179)
    %spritemapEntry(1, $4203, $EC, 0, 1, 2, 1, $10D)
    %spritemapEntry(1, $43FB, $E4, 0, 1, 2, 1, $10B)
    %spritemapEntry(1, $43FE, $1F, 0, 1, 2, 1, $170)
    %spritemapEntry(1, $43F6, $1F, 0, 1, 2, 1, $171)
    %spritemapEntry(1, $43F6, $0D, 0, 1, 2, 1, $14C)
    %spritemapEntry(1, $43F6, $15, 0, 1, 2, 1, $15C)
    %spritemapEntry(1, $43F7, $05, 0, 1, 2, 1, $150)
    %spritemapEntry(1, $43F7, $FD, 0, 1, 2, 1, $140)
    %spritemapEntry(1, $43FC, $F7, 0, 1, 2, 1, $108)
    %spritemapEntry(1, $43F4, $F7, 0, 1, 2, 1, $109)
    %spritemapEntry(1, $43F4, $E7, 0, 1, 2, 1, $106)
    %spritemapEntry(1, $4204, $E7, 0, 1, 2, 1, $104)
    %spritemapEntry(1, $43F4, $D7, 0, 1, 2, 1, $102)
    %spritemapEntry(1, $4204, $D7, 0, 1, 2, 1, $100)

Spritemaps_Chozo_24:
    dw $002A                                                             ;AAF680;
    %spritemapEntry(1, $43E0, $98, 0, 0, 2, 1, $144)
    %spritemapEntry(1, $4242, $98, 0, 0, 2, 1, $14A)
    %spritemapEntry(1, $4232, $A0, 0, 0, 2, 1, $158)
    %spritemapEntry(1, $4232, $98, 0, 0, 2, 1, $148)
    %spritemapEntry(1, $4222, $A0, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $4222, $98, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $4202, $98, 0, 0, 2, 1, $14E)
    %spritemapEntry(1, $4212, $A0, 0, 0, 2, 1, $156)
    %spritemapEntry(1, $4212, $98, 0, 0, 2, 1, $146)
    %spritemapEntry(1, $4201, $B8, 0, 0, 2, 2, $14E)
    %spritemapEntry(1, $4211, $C0, 0, 0, 2, 2, $156)
    %spritemapEntry(1, $4211, $B8, 0, 0, 2, 2, $146)
    %spritemapEntry(1, $4241, $B8, 0, 0, 2, 2, $14A)
    %spritemapEntry(1, $4231, $C0, 0, 0, 2, 2, $158)
    %spritemapEntry(1, $4231, $B8, 0, 0, 2, 2, $148)
    %spritemapEntry(1, $4221, $C0, 0, 0, 2, 2, $15C)
    %spritemapEntry(1, $4221, $B8, 0, 0, 2, 2, $14C)
    %spritemapEntry(1, $43D8, $F0, 0, 0, 2, 2, $177)
    %spritemapEntry(1, $43C8, $F0, 0, 0, 2, 2, $175)
    %spritemapEntry(1, $43B8, $F0, 0, 0, 2, 2, $173)
    %spritemapEntry(1, $43A0, $F0, 0, 0, 2, 2, $170)
    %spritemapEntry(1, $43A8, $F0, 0, 0, 2, 2, $171)
    %spritemapEntry(1, $43D8, $E0, 0, 0, 2, 1, $177)
    %spritemapEntry(1, $43C8, $E0, 0, 0, 2, 1, $175)
    %spritemapEntry(1, $43B8, $E0, 0, 0, 2, 1, $173)
    %spritemapEntry(1, $43A8, $E0, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43A0, $E0, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43D0, $A0, 0, 0, 2, 1, $152)
    %spritemapEntry(1, $43D0, $98, 0, 0, 2, 1, $142)
    %spritemapEntry(1, $43B0, $A0, 0, 1, 2, 1, $152)
    %spritemapEntry(1, $43B0, $98, 0, 1, 2, 1, $142)
    %spritemapEntry(1, $43C0, $A0, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $43C0, $98, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43A0, $98, 0, 1, 2, 1, $144)
    %spritemapEntry(1, $43A1, $B8, 0, 1, 2, 2, $144)
    %spritemapEntry(1, $43B0, $B8, 0, 1, 2, 2, $142)
    %spritemapEntry(1, $43B0, $C0, 0, 1, 2, 2, $152)
    %spritemapEntry(1, $43D0, $C0, 0, 0, 2, 2, $152)
    %spritemapEntry(1, $43C0, $C0, 0, 0, 2, 2, $150)
    %spritemapEntry(1, $43E0, $B8, 0, 0, 2, 2, $144)
    %spritemapEntry(1, $43D0, $B8, 0, 0, 2, 2, $142)
    %spritemapEntry(1, $43C0, $B8, 0, 0, 2, 2, $140)

Spritemaps_Chozo_25:
    dw $0019                                                             ;AAF754;
    %spritemapEntry(1, $4238, $88, 0, 0, 2, 1, $10D)
    %spritemapEntry(1, $4240, $80, 0, 0, 2, 1, $10B)
    %spritemapEntry(0, $3E, $EF, 0, 0, 2, 1, $139)
    %spritemapEntry(1, $4236, $DF, 0, 0, 2, 1, $12C)
    %spritemapEntry(1, $4246, $E7, 0, 0, 2, 1, $12A)
    %spritemapEntry(1, $4220, $DB, 0, 0, 2, 1, $12A)
    %spritemapEntry(1, $4210, $DB, 0, 0, 2, 1, $128)
    %spritemapEntry(1, $4245, $C8, 0, 0, 2, 1, $126)
    %spritemapEntry(0, $45, $C0, 0, 0, 2, 1, $11F)
    %spritemapEntry(1, $4235, $C0, 0, 0, 2, 1, $124)
    %spritemapEntry(1, $4211, $C0, 0, 0, 2, 1, $120)
    %spritemapEntry(0, $21, $C0, 0, 0, 2, 1, $10F)
    %spritemapEntry(1, $4221, $C8, 0, 0, 2, 1, $122)
    %spritemapEntry(1, $43B7, $BD, 0, 0, 2, 1, $14C)
    %spritemapEntry(1, $43B7, $C5, 0, 0, 2, 1, $15C)
    %spritemapEntry(1, $4399, $D7, 0, 0, 2, 1, $150)
    %spritemapEntry(1, $4399, $CF, 0, 0, 2, 1, $140)
    %spritemapEntry(1, $43DA, $CA, 0, 0, 2, 1, $170)
    %spritemapEntry(1, $43E2, $CA, 0, 0, 2, 1, $171)
    %spritemapEntry(1, $43F1, $A8, 0, 0, 2, 1, $108)
    %spritemapEntry(1, $43F9, $A8, 0, 0, 2, 1, $109)
    %spritemapEntry(1, $43F9, $98, 0, 0, 2, 1, $106)
    %spritemapEntry(1, $43E9, $98, 0, 0, 2, 1, $104)
    %spritemapEntry(1, $43F9, $88, 0, 0, 2, 1, $102)
    %spritemapEntry(1, $43E9, $88, 0, 0, 2, 1, $100)


Freespace_BankAA_F7E3:                                                   ;AAF7D3;
; $81D bytes
