
org $A28000


CommonA2_GrappleAI_NoInteraction:
    JSL.L GrappleAI_SwitchEnemyAIToMainAI                                ;A28000;
    RTL                                                                  ;A28004;


CommonA2_GrappleAI_SamusLatchesOn:
    JSL.L GrappleAI_SamusLatchesOnWithGrapple                            ;A28005;
    RTL                                                                  ;A28009;


CommonA2_GrappleAI_KillEnemy:
    JSL.L GrappleAI_EnemyGrappleDeath                                    ;A2800A;
    RTL                                                                  ;A2800E;


CommonA2_GrappleAI_CancelGrappleBeam:
    JSL.L GrappleAI_SwitchToFrozenAI                                     ;A2800F;
    RTL                                                                  ;A28013;


CommonA2_GrappleAI_SamusLatchesOn_NoInvincibility:
    JSL.L GrappleAI_SamusLatchesOnWithGrapple_NoInvincibility            ;A28014;
    RTL                                                                  ;A28018;


UNUSED_CommonA2_GrappleAI_SamusLatchesOn_ParalyzeEnemy_A28019:
    JSL.L GrappleAI_SamusLatchesOnWithGrapple_ParalyzeEnemy              ;A28019;
    RTL                                                                  ;A2801D;


CommonA2_GrappleAI_HurtSamus:
    JSL.L GrappleAI_SwitchToFrozenAI_duplicate                           ;A2801E;
    RTL                                                                  ;A28022;


CommonA2_NormalEnemyTouchAI:
    JSL.L NormalEnemyTouchAI                                             ;A28023;
    RTL                                                                  ;A28027;


CommonA2_NormalTouchAI_NoDeathCheck:
    JSL.L NormalEnemyTouchAI_NoDeathCheck_External                       ;A28028;
    RTL                                                                  ;A2802C;


CommonA2_NormalEnemyShotAI:
    JSL.L NormalEnemyShotAI                                              ;A2802D;
    RTL                                                                  ;A28031;


CommonA2_NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic:
    JSL.L NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic_External     ;A28032;
    RTL                                                                  ;A28036;


CommonA2_NormalEnemyPowerBombAI:
    JSL.L NormalEnemyPowerBombAI                                         ;A28037;
    RTL                                                                  ;A2803B;


CommonA2_NormalEnemyPowerBombAI_NoDeathCheck:
    JSL.L NormalEnemyPowerBombAI_NoDeathCheck_External                   ;A2803C;
    RTL                                                                  ;A28040;


CommonA2_NormalEnemyFrozenAI:
    JSL.L NormalEnemyFrozenAI                                            ;A28041;
    RTL                                                                  ;A28045;


CommonA2_CreateADudShot_JSL:
    JSL.L CreateADudShot                                                 ;A28046;
    RTL                                                                  ;A2804A;


RTS_A2804B:
    RTS                                                                  ;A2804B;


RTL_A2804C:
    RTL                                                                  ;A2804C;


Spritemap_CommonA2_Nothing:
    dw $0000                                                             ;A2804D;

ExtendedSpritemap_CommonA2_Nothing:
    dw $0001                                                             ;A2804F;
    dw $0000,$0000
    dw Spritemap_CommonA2_Nothing                                        ;A28055;
    dw Hitbox_CommonA2_Nothing                                           ;A28057;

Hitbox_CommonA2_Nothing:
    dw $0001                                                             ;A28059;
    dw $0000,$0000,$0000,$0000
    dw CommonA2_NormalEnemyTouchAI                                       ;A28063;
    dw CommonA2_NormalEnemyShotAI                                        ;A28065;

InstList_CommonA2_DeleteEnemy:
    dw Instruction_CommonA2_DeleteEnemy                                  ;A28067;

NOPNOP_A28069:
    NOP                                                                  ;A28069;
    NOP                                                                  ;A2806A;

Instruction_CommonA2_Enemy0FB2_InY:
    LDA.W $0000,Y                                                        ;A2806B;
    STA.W $0FB2,X                                                        ;A2806E;
    INY                                                                  ;A28071;
    INY                                                                  ;A28072;
    RTL                                                                  ;A28073;


Instruction_CommonA2_SetEnemy0FB2ToRTS:
    LDA.W #RTS_A2807B                                                    ;A28074;
    STA.W $0FB2,X                                                        ;A28077;
    RTL                                                                  ;A2807A;


RTS_A2807B:
    RTS                                                                  ;A2807B;


Instruction_CommonA2_DeleteEnemy:
    LDA.W $0F86,X                                                        ;A2807C;
    ORA.W #$0200                                                         ;A2807F;
    STA.W $0F86,X                                                        ;A28082;
    PLA                                                                  ;A28085;
    PEA.W  ProcessEnemyInstructions_return-1                             ;A28086;
    RTL                                                                  ;A28089;


Instruction_CommonA2_CallFunctionInY:
    LDA.W $0000,Y                                                        ;A2808A;
    STA.B $12                                                            ;A2808D;
    PHY                                                                  ;A2808F;
    PHX                                                                  ;A28090;
    PEA.W .manualReturn-1                                                ;A28091;
    JMP.W ($0012)                                                        ;A28094;


.manualReturn:
    PLX                                                                  ;A28097;
    PLY                                                                  ;A28098;
    INY                                                                  ;A28099;
    INY                                                                  ;A2809A;
    RTL                                                                  ;A2809B;


Instruction_CommonA2_CallFunctionInY_WithA:
    LDA.W $0000,Y                                                        ;A2809C;
    STA.B $12                                                            ;A2809F;
    LDA.W $0002,Y                                                        ;A280A1;
    PHY                                                                  ;A280A4;
    PHX                                                                  ;A280A5;
    PEA.W .manualReturn-1                                                ;A280A6;
    JMP.W ($0012)                                                        ;A280A9;


.manualReturn:
    PLX                                                                  ;A280AC;
    PLY                                                                  ;A280AD;
    TYA                                                                  ;A280AE;
    CLC                                                                  ;A280AF;
    ADC.W #$0004                                                         ;A280B0;
    TAY                                                                  ;A280B3;
    RTL                                                                  ;A280B4;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_Instruction_CommonA2_CallExternalFunctionInY_A280B5:
    LDA.W $0000,Y                                                        ;A280B5;
    STA.B $12                                                            ;A280B8;
    LDA.W $0001,Y                                                        ;A280BA;
    STA.B $13                                                            ;A280BD;
    PHX                                                                  ;A280BF;
    PHY                                                                  ;A280C0;
    JSL.L .externalFunction                                              ;A280C1;
    PLY                                                                  ;A280C5;
    PLX                                                                  ;A280C6;
    INY                                                                  ;A280C7;
    INY                                                                  ;A280C8;
    INY                                                                  ;A280C9;
    RTL                                                                  ;A280CA;


.externalFunction:
    JML.W [$0012]                                                        ;A280CB;


UNUSED_Inst_CommonA2_CallExternalFunctionInY_WithA_A280CE:
    LDA.W $0000,Y                                                        ;A280CE;
    STA.B $12                                                            ;A280D1;
    LDA.W $0001,Y                                                        ;A280D3;
    STA.B $13                                                            ;A280D6;
    LDA.W $0003,Y                                                        ;A280D8;
    PHX                                                                  ;A280DB;
    PHY                                                                  ;A280DC;
    JSL.L .externalFunction                                              ;A280DD;
    PLY                                                                  ;A280E1;
    PLX                                                                  ;A280E2;
    TYA                                                                  ;A280E3;
    CLC                                                                  ;A280E4;
    ADC.W #$0005                                                         ;A280E5;
    TAY                                                                  ;A280E8;
    RTL                                                                  ;A280E9;


.externalFunction:
    JML.W [$0012]                                                        ;A280EA;
endif ; !FEATURE_KEEP_UNREFERENCED


Instruction_CommonA2_GotoY:
    LDA.W $0000,Y                                                        ;A280ED;
    TAY                                                                  ;A280F0;
    RTL                                                                  ;A280F1;


Instruction_CommonA2_GotoY_PlusY:
    STY.B $12                                                            ;A280F2;
    DEY                                                                  ;A280F4;
    LDA.W $0000,Y                                                        ;A280F5;
    XBA                                                                  ;A280F8;
    BMI .highByte                                                        ;A280F9;
    AND.W #$00FF                                                         ;A280FB;
    BRA +                                                                ;A280FE;


.highByte:
    ORA.W #$FF00                                                         ;A28100;

  + CLC                                                                  ;A28103;
    ADC.B $12                                                            ;A28104;
    TAY                                                                  ;A28106;
    RTL                                                                  ;A28107;


Instruction_CommonA2_DecrementTimer_GotoYIfNonZero:
    DEC.W $0F90,X                                                        ;A28108;
    BNE Instruction_CommonA2_GotoY                                       ;A2810B;
    INY                                                                  ;A2810D;
    INY                                                                  ;A2810E;
    RTL                                                                  ;A2810F;


Instruction_CommonA2_DecrementTimer_GotoYIfNonZero_duplicate:
    DEC.W $0F90,X                                                        ;A28110;
    BNE Instruction_CommonA2_GotoY                                       ;A28113;
    INY                                                                  ;A28115;
    INY                                                                  ;A28116;
    RTL                                                                  ;A28117;


Instruction_CommonA2_DecrementTimer_GotoY_PlusY_IfNonZero:
    SEP #$20                                                             ;A28118;
    DEC.W $0F90,X                                                        ;A2811A;
    REP #$20                                                             ;A2811D;
    BNE Instruction_CommonA2_GotoY_PlusY                                 ;A2811F;
    INY                                                                  ;A28121;
    RTL                                                                  ;A28122;


Instruction_CommonA2_TimerInY:
    LDA.W $0000,Y                                                        ;A28123;
    STA.W $0F90,X                                                        ;A28126;
    INY                                                                  ;A28129;
    INY                                                                  ;A2812A;
    RTL                                                                  ;A2812B;


Instruction_CommonA2_SkipNextInstruction:
    INY                                                                  ;A2812C;
    INY                                                                  ;A2812D;
    RTL                                                                  ;A2812E;


Instruction_CommonA2_Sleep:
    DEY                                                                  ;A2812F;
    DEY                                                                  ;A28130;
    TYA                                                                  ;A28131;
    STA.W $0F92,X                                                        ;A28132;
    PLA                                                                  ;A28135;
    PEA.W ProcessEnemyInstructions_return-1                              ;A28136;
    RTL                                                                  ;A28139;


Instruction_CommonA2_WaitYFrames:
    LDA.W $0000,Y                                                        ;A2813A;
    STA.W $0F94,X                                                        ;A2813D;
    INY                                                                  ;A28140;
    INY                                                                  ;A28141;
    TYA                                                                  ;A28142;
    STA.W $0F92,X                                                        ;A28143;
    PLA                                                                  ;A28146;
    PEA.W ProcessEnemyInstructions_return-1                              ;A28147;
    RTL                                                                  ;A2814A;


Instruction_CommonA2_TransferYBytesInYToVRAM:
    PHX                                                                  ;A2814B;
    LDX.W $0330                                                          ;A2814C;
    LDA.W $0000,Y                                                        ;A2814F;
    STA.B $D0,X                                                          ;A28152;
    LDA.W $0002,Y                                                        ;A28154;
    STA.B $D2,X                                                          ;A28157;
    LDA.W $0003,Y                                                        ;A28159;
    STA.B $D3,X                                                          ;A2815C;
    LDA.W $0005,Y                                                        ;A2815E;
    STA.B $D5,X                                                          ;A28161;
    TXA                                                                  ;A28163;
    CLC                                                                  ;A28164;
    ADC.W #$0007                                                         ;A28165;
    STA.W $0330                                                          ;A28168;
    TYA                                                                  ;A2816B;
    CLC                                                                  ;A2816C;
    ADC.W #$0007                                                         ;A2816D;
    TAY                                                                  ;A28170;
    PLX                                                                  ;A28171;
    RTL                                                                  ;A28172;


Instruction_CommonA2_EnableOffScreenProcessing:
    LDA.W $0F86,X                                                        ;A28173;
    ORA.W #$0800                                                         ;A28176;
    STA.W $0F86,X                                                        ;A28179;
    RTL                                                                  ;A2817C;


Instruction_CommonA2_DisableOffScreenProcessing:
    LDA.W $0F86,X                                                        ;A2817D;
    AND.W #$F7FF                                                         ;A28180;
    STA.W $0F86,X                                                        ;A28183;
    RTL                                                                  ;A28186;


;        _____________________ Speed
;       |      _______________ Subspeed
;       |     |      _________ Negated speed
;       |     |     |      ___ Negated subspeed
;       |     |     |     |
CommonA2EnemySpeeds_LinearlyIncreasing:
  .speed:
    dw $0000                                                             ;A28187;
  .subspeed:
    dw       $0000                                                       ;A28189;
  .negatedSpeed:
    dw             $0000                                                 ;A2818B;
  .negatedSubspeed:
    dw                   $0000                                           ;A2818D;
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
CommonA2EnemySpeeds_QuadraticallyIncreasing:
; I.e. gravity
; Used by e.g. Botwoon when dying and falling to the floor
  .subspeed:
    dw $0000                                                             ;A2838F;
  .speed:
    dw       $0000                                                       ;A28391;
  .negatedSubspeed:
    dw             $0000                                                 ;A28393;
  .negatedSpeed:
    dw                   $0000                                           ;A28395;
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


Palette_Boyon:
    dw $3800,$4BBE,$06B9,$00EA,$0065,$173A,$0276,$01F2                   ;A28687;
    dw $014D,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;A28697;

InstList_Boyon_Idle_0:
    dw Instruction_Common_DisableOffScreenProcessing                     ;A286A7;
    dw RTL_A288C5                                                        ;A286A9;

InstList_Boyon_Idle_1:
    dw $000A,Spritemap_Boyon_Idle_0                                      ;A286AB;
    dw $000A,Spritemap_Boyon_Idle_1                                      ;A286AF;
    dw $000A,Spritemap_Boyon_Idle_2                                      ;A286B3;
    dw $000A,Spritemap_Boyon_Idle_1                                      ;A286B7;
    dw Instruction_CommonA2_GotoY                                        ;A286BB;
    dw InstList_Boyon_Idle_1                                             ;A286BD;

InstList_Boyon_Bouncing_0:
    dw Instruction_Common_EnableOffScreenProcessing                      ;A286BF;
    dw Instruction_Boyon_88C6                                            ;A286C1;

InstList_Boyon_Bouncing_1:
    dw $0005,Spritemap_Boyon_Bouncing_0                                  ;A286C3;
    dw $0005,Spritemap_Boyon_Bouncing_1                                  ;A286C7;
    dw $0005,Spritemap_Boyon_Bouncing_2                                  ;A286CB;
    dw $0005,Spritemap_Boyon_Bouncing_3                                  ;A286CF;
    dw $0005,Spritemap_Boyon_Bouncing_2                                  ;A286D3;
    dw $0005,Spritemap_Boyon_Bouncing_1                                  ;A286D7;
    dw Instruction_Common_GotoY                                          ;A286DB;
    dw InstList_Boyon_Bouncing_1                                         ;A286DD;

BoyonData_speedMultipliers:
    dw $0001,$0002,$0004,$0008,$000A,$000D,$0010,$0014                   ;A286DF;

BoyonData_jumpHeights:
    dw $3000,$4000,$5000,$6000,$7000,$8000,$9000,$A000                   ;A286EF;
    dw $B000                                                             ;A286FF;

BoyonData_speedTable:
    db $00,$01,$03,$07,$0C,$12,$19,$22,$2B,$36,$42,$4F,$5D,$6E,$7E,$90   ;A28701;
    db $A3,$B7,$CD,$E4,$FC,$FF,$FF                                       ;A28711;

BoyonData_bounceFunctionPointers:
    dw Function_Boyon_Falling                                            ;A28718;
    dw Function_Boyon_Jumping                                            ;A2871A;

InitAI_Boyon:
    LDX.W $0E54                                                          ;A2871C;
    LDA.W #Spritemap_CommonA2_Nothing                                    ;A2871F;
    STA.W $0F8E,X                                                        ;A28722;
    JSR.W SetBoyonInstList                                               ;A28725;
    LDA.W #$0001                                                         ;A28728;
    STA.L $7E7802,X                                                      ;A2872B;
    LDA.W $0FB4,X                                                        ;A2872F;
    AND.W #$00FF                                                         ;A28732;
    ASL A                                                                ;A28735;
    TAY                                                                  ;A28736;
    LDA.W BoyonData_speedMultipliers,Y                                   ;A28737;
    STA.W $0FA8,X                                                        ;A2873A;
    LDA.W $0FB5,X                                                        ;A2873D;
    AND.W #$00FF                                                         ;A28740;
    ASL A                                                                ;A28743;
    TAY                                                                  ;A28744;
    LDA.W BoyonData_jumpHeights,Y                                        ;A28745;
    STA.W $0FAC,X                                                        ;A28748;
    STZ.W $0FAE,X                                                        ;A2874B;
    STZ.W $0FB0,X                                                        ;A2874E;
    STZ.W $0FB2,X                                                        ;A28751;
    RTL                                                                  ;A28754;


CalculateInitialBounceSpeed:
    PHP                                                                  ;A28755;

.loop:
    LDY.W $0FB0,X                                                        ;A28756;
    SEP #$20                                                             ;A28759;
    LDA.W BoyonData_speedTable,Y                                         ;A2875B;
    CPY.W #$0017                                                         ;A2875E;
    BMI +                                                                ;A28761;
    LDA.B #$FF                                                           ;A28763;

  + STA.W $4202                                                          ;A28765;
    LDA.W $0FA8,X                                                        ;A28768;
    STA.W $4203                                                          ;A2876B;
    NOP                                                                  ;A2876E;
    NOP                                                                  ;A2876F;
    NOP                                                                  ;A28770;
    REP #$20                                                             ;A28771;
    LDA.W $4216                                                          ;A28773;
    STA.W $0FAA,X                                                        ;A28776;
    CLC                                                                  ;A28779;
    ADC.W $0FAE,X                                                        ;A2877A;
    STA.W $0FAE,X                                                        ;A2877D;
    INC.W $0FB0,X                                                        ;A28780;
    CMP.W $0FAC,X                                                        ;A28783;
    BMI .loop                                                            ;A28786;
    LDA.W $0FB0,X                                                        ;A28788;
    STA.L $7E7800,X                                                      ;A2878B;
    LDA.W #$0001                                                         ;A2878F;
    STA.L $7E7804,X                                                      ;A28792;
    STA.L $7E7808,X                                                      ;A28796;
    PLP                                                                  ;A2879A;
    RTS                                                                  ;A2879B;


MainAI_Boyon:
    LDX.W $0E54                                                          ;A2879C;
    LDA.L $7E780A,X                                                      ;A2879F;
    BNE .notJumping                                                      ;A287A3;
    JSR.W CalculateInitialBounceSpeed                                    ;A287A5;
    LDA.W #$0001                                                         ;A287A8;
    STA.L $7E780A,X                                                      ;A287AB;
    RTL                                                                  ;A287AF;


.notJumping:
    LDA.W $0FA8,X                                                        ;A287B0;
    STA.L $7E7806,X                                                      ;A287B3;
    JSR.W CheckIfSamusIsInProximity                                      ;A287B7;
    BNE .SamusInProximity                                                ;A287BA;
    LDA.L $7E7804,X                                                      ;A287BC;
    BEQ .bouncing                                                        ;A287C0;
    LDA.L $7E7808,X                                                      ;A287C2;
    BNE .return                                                          ;A287C6;
    LDA.W #$0001                                                         ;A287C8;
    STA.L $7E7808,X                                                      ;A287CB;
    JSR.W SetBoyonInstList                                               ;A287CF;
    BRA .return                                                          ;A287D2;


.SamusInProximity:
    LDA.W #$0000                                                         ;A287D4;
    STA.L $7E7804,X                                                      ;A287D7;
    STA.L $7E7808,X                                                      ;A287DB;
    LDA.W $0FB2,X                                                        ;A287DF;
    BNE .bouncing                                                        ;A287E2;
    LDA.W #$0001                                                         ;A287E4;
    STA.W $0FB2,X                                                        ;A287E7;
    JSR.W SetBoyonBouncingInstList                                       ;A287EA;

.bouncing:
    LDX.W $0E54                                                          ;A287ED;
    LDA.L $7E7806,X                                                      ;A287F0;
    STA.W $0FA8,X                                                        ;A287F4;
    LDA.L $7E7802,X                                                      ;A287F7;
    ASL A                                                                ;A287FB;
    TAX                                                                  ;A287FC;
    JSR.W (BoyonData_bounceFunctionPointers,X)                           ;A287FD;

.return:
    RTL                                                                  ;A28800;


Function_Boyon_Falling:
    LDX.W $0E54                                                          ;A28801;
    INC.W $0FB0,X                                                        ;A28804;
    LDY.W $0FB0,X                                                        ;A28807;
    SEP #$20                                                             ;A2880A;
    LDA.W BoyonData_speedTable,Y                                         ;A2880C;
    CPY.W #$0017                                                         ;A2880F;
    BMI .lessThan17                                                      ;A28812;
    LDA.B #$FF                                                           ;A28814;

.lessThan17:
    STA.W $4202                                                          ;A28816;
    LDA.W $0FA8,X                                                        ;A28819;
    STA.W $4203                                                          ;A2881C;
    NOP                                                                  ;A2881F;
    NOP                                                                  ;A28820;
    NOP                                                                  ;A28821;
    REP #$20                                                             ;A28822;
    LDA.W $4216                                                          ;A28824;
    STA.W $0FAA,X                                                        ;A28827;
    XBA                                                                  ;A2882A;
    AND.W #$00FF                                                         ;A2882B;
    CLC                                                                  ;A2882E;
    ADC.W $0F7E,X                                                        ;A2882F;
    STA.W $0F7E,X                                                        ;A28832;
    LDA.W $0FB0,X                                                        ;A28835;
    CMP.L $7E7800,X                                                      ;A28838;
    BMI .return                                                          ;A2883C;
    LDA.W #$0001                                                         ;A2883E;
    STA.L $7E7802,X                                                      ;A28841;
    LDA.W #$0001                                                         ;A28845;
    STA.L $7E7804,X                                                      ;A28848;
    STZ.W $0FB2,X                                                        ;A2884C;

.return:
    RTS                                                                  ;A2884F;


Function_Boyon_Jumping:
    LDX.W $0E54                                                          ;A28850;
    LDY.W $0FB0,X                                                        ;A28853;
    SEP #$20                                                             ;A28856;
    LDA.W BoyonData_speedTable,Y                                         ;A28858;
    CPY.W #$0017                                                         ;A2885B;
    BMI .lessThan17                                                      ;A2885E;
    LDA.B #$FF                                                           ;A28860;

.lessThan17:
    STA.W $4202                                                          ;A28862;
    LDA.W $0FA8,X                                                        ;A28865;
    STA.W $4203                                                          ;A28868;
    NOP                                                                  ;A2886B;
    NOP                                                                  ;A2886C;
    NOP                                                                  ;A2886D;
    REP #$20                                                             ;A2886E;
    LDA.W $4216                                                          ;A28870;
    STA.W $0FAA,X                                                        ;A28873;
    XBA                                                                  ;A28876;
    AND.W #$00FF                                                         ;A28877;
    EOR.W #$FFFF                                                         ;A2887A;
    INC A                                                                ;A2887D;
    CLC                                                                  ;A2887E;
    ADC.W $0F7E,X                                                        ;A2887F;
    STA.W $0F7E,X                                                        ;A28882;
    DEC.W $0FB0,X                                                        ;A28885;
    BMI .doneJumping                                                     ;A28888;
    BRA .return                                                          ;A2888A;


.doneJumping:
    LDA.W #$0000                                                         ;A2888C;
    STA.L $7E7802,X                                                      ;A2888F;

.return:
    RTS                                                                  ;A28893;


CheckIfSamusIsInProximity:
    LDX.W $0E54                                                          ;A28894;
    LDA.W $0FB6,X                                                        ;A28897;
    JSL.L IsSamusWithinAPixelColumnsOfEnemy                              ;A2889A;
    RTS                                                                  ;A2889E;


SetBoyonInstList:
    LDX.W $0E54                                                          ;A2889F;
    LDA.W #InstList_Boyon_Idle_0                                         ;A288A2;
    STA.W $0F92,X                                                        ;A288A5;
    LDA.W #$0001                                                         ;A288A8;
    STA.W $0F94,X                                                        ;A288AB;
    STZ.W $0F90,X                                                        ;A288AE;
    RTS                                                                  ;A288B1;


SetBoyonBouncingInstList:
    LDX.W $0E54                                                          ;A288B2;
    LDA.W #InstList_Boyon_Bouncing_0                                     ;A288B5;
    STA.W $0F92,X                                                        ;A288B8;
    LDA.W #$0001                                                         ;A288BB;
    STA.W $0F94,X                                                        ;A288BE;
    STZ.W $0F90,X                                                        ;A288C1;
    RTS                                                                  ;A288C4;


RTL_A288C5:
    RTL                                                                  ;A288C5;


Instruction_Boyon_88C6:
    LDX.W $0E54                                                          ;A288C6;
    LDA.W #$0000                                                         ;A288C9;
    STA.L $7E7804,X                                                      ;A288CC;
    LDA.W #$000E                                                         ;A288D0;
    JSL.L QueueSound_Lib2_Max6                                           ;A288D3;
    RTL                                                                  ;A288D7;


RTL_A288D8:
    RTL                                                                  ;A288D8;


RTL_A288D9:
    RTL                                                                  ;A288D9;


Spritemap_Boyon_Idle_0:
    dw $0001                                                             ;A288DA;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $100)

Spritemap_Boyon_Idle_1:
    dw $0001                                                             ;A288E1;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $102)

Spritemap_Boyon_Idle_2:
    dw $0001                                                             ;A288E8;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $104)

Spritemap_Boyon_Bouncing_0:
    dw $0001                                                             ;A288EF;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $106)

Spritemap_Boyon_Bouncing_1:
    dw $0001                                                             ;A288F6;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $108)

Spritemap_Boyon_Bouncing_2:
    dw $0001                                                             ;A288FD;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $10A)

Spritemap_Boyon_Bouncing_3:
    dw $0001                                                             ;A28904;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $10C)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_Boyon_A2890B:
    dw $0001                                                             ;A2890B;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $10E)
endif ; !FEATURE_KEEP_UNREFERENCED


Palette_Stoke:
    dw $3800,$3DB3,$292E,$1486,$1840,$3D92,$38CA,$1C61                   ;A28912;
    dw $24A7,$24A7,$2063,$1840,$0800,$0000,$0000,$0000                   ;A28922;

InstList_Stoke_MovingLeft_0:
    dw Instruction_Stoke_SetMovingLeft                                   ;A28932;

InstList_Stoke_MovingLeft_1:
    dw $0008,Spritemap_Stoke_MovingLeft_0                                ;A28934;
    dw $0010,Spritemap_Stoke_MovingLeft_1                                ;A28938;
    dw $0008,Spritemap_Stoke_MovingLeft_2                                ;A2893C;
    dw $0008,Spritemap_Stoke_MovingLeft_3                                ;A28940;
    dw Instruction_Common_GotoY                                          ;A28944;
    dw InstList_Stoke_MovingLeft_1                                       ;A28946;

InstList_Stoke_AttackingLeft:
    dw $0010,Spritemap_Stoke_MovingLeft_2                                ;A28948;
    dw Instruction_Stoke_SpawnProjectileWithDirectionInY,$0000           ;A2894C;
    dw $0010,Spritemap_Stoke_AttackingLeft                               ;A28950;
    dw Instruction_Common_GotoY                                          ;A28954;
    dw InstList_Stoke_MovingLeft_0                                       ;A28956;

InstList_Stoke_MovingRight_0:
    dw Instruction_Stoke_SetMovingRight                                  ;A28958;

InstList_Stoke_MovingRight_1:
    dw $0008,Spritemap_Stoke_MovingRight_0                               ;A2895A;
    dw $0010,Spritemap_Stoke_MovingRight_1                               ;A2895E;
    dw $0008,Spritemap_Stoke_MovingRight_2                               ;A28962;
    dw $0008,Spritemap_Stoke_MovingRight_3                               ;A28966;
    dw Instruction_Common_GotoY                                          ;A2896A;
    dw InstList_Stoke_MovingRight_1                                      ;A2896C;

InstList_Stoke_AttackingRight:
    dw $0010,Spritemap_Stoke_MovingRight_2                               ;A2896E;
    dw Instruction_Stoke_SpawnProjectileWithDirectionInY,$0001           ;A28972;
    dw $0010,Spritemap_Stoke_AttackingRight                              ;A28976;
    dw Instruction_Common_GotoY                                          ;A2897A;
    dw InstList_Stoke_MovingRight_0                                      ;A2897C;

Instruction_Stoke_SpawnProjectileWithDirectionInY:
    PHY                                                                  ;A2897E;
    LDA.W $0000,Y                                                        ;A2897F;
    LDX.W $0E54                                                          ;A28982;
    LDY.W #UNUSED_EnemyProjectile_Stoke_86DBF2                           ;A28985;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A28988;
    PLY                                                                  ;A2898C;
    INY                                                                  ;A2898D;
    INY                                                                  ;A2898E;
    RTL                                                                  ;A2898F;


Instruction_Stoke_SetMovingLeft:
    LDX.W $0E54                                                          ;A28990;
    LDA.W #Function_Stoke_MovingLeft                                     ;A28993;
    STA.W $0FB2,X                                                        ;A28996;
    STZ.W $0FB0,X                                                        ;A28999;
    RTL                                                                  ;A2899C;


Instruction_Stoke_SetMovingRight:
    LDX.W $0E54                                                          ;A2899D;
    LDA.W #Function_Stoke_MovingRight                                    ;A289A0;
    STA.W $0FB2,X                                                        ;A289A3;
    LDA.W #$0001                                                         ;A289A6;
    STA.W $0FB0,X                                                        ;A289A9;
    RTL                                                                  ;A289AC;


InitAI_Stoke:
    LDX.W $0E54                                                          ;A289AD;
    LDA.W #Spritemap_CommonA2_Nothing                                    ;A289B0;
    STA.W $0F8E,X                                                        ;A289B3;
    LDA.W $0FB6,X                                                        ;A289B6;
    ASL A                                                                ;A289B9;
    ASL A                                                                ;A289BA;
    ASL A                                                                ;A289BB;
    TAY                                                                  ;A289BC;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A289BD;
    STA.W $0FAA,X                                                        ;A289C0;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A289C3;
    STA.W $0FA8,X                                                        ;A289C6;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+4,Y                       ;A289C9;
    STA.W $0FAE,X                                                        ;A289CC;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+6,Y                       ;A289CF;
    STA.W $0FAC,X                                                        ;A289D2;
    JSR.W SetStokeMovingLeftInstList                                     ;A289D5;
    LDA.W #Function_Stoke_MovingLeft                                     ;A289D8;
    STA.W $0FB2,X                                                        ;A289DB;
    LDA.W $0FB4,X                                                        ;A289DE;
    STA.W $0FB0,X                                                        ;A289E1;
    BEQ .return                                                          ;A289E4;
    JSR.W SetStokeMovingRightInstList                                    ;A289E6;
    LDA.W #Function_Stoke_MovingRight                                    ;A289E9;
    STA.W $0FB2,X                                                        ;A289EC;

.return:
    RTL                                                                  ;A289EF;


MainAI_Stoke:
    LDX.W $0E54                                                          ;A289F0;
    JSR.W ($0FB2,X)                                                      ;A289F3;
    RTL                                                                  ;A289F6;


SetStokeMovingLeftInstList:
    LDX.W $0E54                                                          ;A289F7;
    LDA.W #$0001                                                         ;A289FA;
    STA.W $0F94,X                                                        ;A289FD;
    STZ.W $0F90,X                                                        ;A28A00;
    LDA.W #InstList_Stoke_MovingLeft_0                                   ;A28A03;
    STA.W $0F92,X                                                        ;A28A06;
    RTS                                                                  ;A28A09;


SetStokeAttackingLeftInstList:
    LDX.W $0E54                                                          ;A28A0A;
    LDA.W #$0001                                                         ;A28A0D;
    STA.W $0F94,X                                                        ;A28A10;
    STZ.W $0F90,X                                                        ;A28A13;
    LDA.W #InstList_Stoke_AttackingLeft                                  ;A28A16;
    STA.W $0F92,X                                                        ;A28A19;
    RTS                                                                  ;A28A1C;


SetStokeMovingRightInstList:
    LDX.W $0E54                                                          ;A28A1D;
    LDA.W #$0001                                                         ;A28A20;
    STA.W $0F94,X                                                        ;A28A23;
    STZ.W $0F90,X                                                        ;A28A26;
    LDA.W #InstList_Stoke_MovingRight_0                                  ;A28A29;
    STA.W $0F92,X                                                        ;A28A2C;
    RTS                                                                  ;A28A2F;


SetStokeAttackingRightInstList:
    LDX.W $0E54                                                          ;A28A30;
    LDA.W #$0001                                                         ;A28A33;
    STA.W $0F94,X                                                        ;A28A36;
    STZ.W $0F90,X                                                        ;A28A39;
    LDA.W #InstList_Stoke_AttackingRight                                 ;A28A3C;
    STA.W $0F92,X                                                        ;A28A3F;
    RTS                                                                  ;A28A42;


Function_Stoke_MovingLeft:
    LDX.W $0E54                                                          ;A28A43;
    LDA.W $0FAE,X                                                        ;A28A46;
    STA.B $14                                                            ;A28A49;
    LDA.W $0FAC,X                                                        ;A28A4B;
    STA.B $12                                                            ;A28A4E;
    JSR.W StokeMovement                                                  ;A28A50;
    JSR.W DecideWhetherToAttack                                          ;A28A53;
    BCC .return                                                          ;A28A56;
    JSR.W SetStokeAttackingLeftInstList                                  ;A28A58;

.return:
    RTS                                                                  ;A28A5B;


Function_Stoke_MovingRight:
    LDX.W $0E54                                                          ;A28A5C;
    LDA.W $0FAA,X                                                        ;A28A5F;
    STA.B $14                                                            ;A28A62;
    LDA.W $0FA8,X                                                        ;A28A64;
    STA.B $12                                                            ;A28A67;
    JSR.W StokeMovement                                                  ;A28A69;
    JSR.W DecideWhetherToAttack                                          ;A28A6C;
    BCC .return                                                          ;A28A6F;
    JSR.W SetStokeAttackingRightInstList                                 ;A28A71;

.return:
    RTS                                                                  ;A28A74;


RTS_A28A75:
    RTS                                                                  ;A28A75;


StokeMovement:
    LDX.W $0E54                                                          ;A28A76;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A28A79;
    BCC .notCollidedWithWall                                             ;A28A7D;
    JSR.W TurnStokeAround                                                ;A28A7F;
    BRA .return                                                          ;A28A82;


.notCollidedWithWall:
    LDA.W #$0002                                                         ;A28A84;
    STA.B $14                                                            ;A28A87;
    STZ.B $12                                                            ;A28A89;
    JSL.L CheckForVerticalSolidBlockCollision                            ;A28A8B;
    BCS .return                                                          ;A28A8F;
    JSR.W TurnStokeAround                                                ;A28A91;

.return:
    RTS                                                                  ;A28A94;


TurnStokeAround:
    LDX.W $0E54                                                          ;A28A95;
    JSR.W SetStokeMovingLeftInstList                                     ;A28A98;
    LDA.W $0FB0,X                                                        ;A28A9B;
    EOR.W #$0001                                                         ;A28A9E;
    BEQ .return                                                          ;A28AA1;
    JSR.W SetStokeMovingRightInstList                                    ;A28AA3;

.return:
    RTS                                                                  ;A28AA6;


DecideWhetherToAttack:
    LDX.W $0E54                                                          ;A28AA7;
    JSL.L GenerateRandomNumber                                           ;A28AAA;
    LDA.W $05E5                                                          ;A28AAE;
    CLC                                                                  ;A28AB1;
    ADC.W $0FA4,X                                                        ;A28AB2;
    AND.W #$00FF                                                         ;A28AB5;
    CMP.W #$0002                                                         ;A28AB8;
    BPL .returnNoAttack                                                  ;A28ABB;
    LDA.W #RTS_A28A75                                                    ;A28ABD;
    STA.W $0FB2,X                                                        ;A28AC0;
    SEC                                                                  ;A28AC3;
    BRA .return                                                          ;A28AC4;


.returnNoAttack:
    CLC                                                                  ;A28AC6;

.return:
    RTS                                                                  ;A28AC7;


RTL_A28AC8:
    RTL                                                                  ;A28AC8;


RTL_A28AC9:
    RTL                                                                  ;A28AC9;


Spritemap_Stoke_MovingLeft_0:
    dw $0002                                                             ;A28ACA;
    %spritemapEntry(1, $43FE, $F8, 0, 0, 2, 0, $101)
    %spritemapEntry(1, $43F6, $F8, 0, 0, 2, 0, $100)

Spritemap_Stoke_MovingLeft_1:
    dw $0003                                                             ;A28AD6;
    %spritemapEntry(0, $1FE, $F0, 0, 0, 2, 0, $10F)
    %spritemapEntry(1, $43FE, $F8, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $43F6, $F8, 0, 0, 2, 0, $103)

Spritemap_Stoke_MovingLeft_2:
    dw $0002                                                             ;A28AE7;
    %spritemapEntry(1, $43F6, $F8, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $43FE, $F8, 0, 0, 2, 0, $101)

Spritemap_Stoke_MovingLeft_3:
    dw $0002                                                             ;A28AF3;
    %spritemapEntry(1, $43FE, $F8, 0, 0, 2, 0, $101)
    %spritemapEntry(1, $43F6, $F8, 0, 0, 2, 0, $108)

Spritemap_Stoke_AttackingLeft:
    dw $0004                                                             ;A28AFF;
    %spritemapEntry(0, $1FE, $F0, 0, 0, 2, 0, $10E)
    %spritemapEntry(0, $1F6, $F0, 0, 0, 2, 0, $10D)
    %spritemapEntry(1, $43FE, $F8, 0, 0, 2, 0, $10B)
    %spritemapEntry(1, $43F6, $F8, 0, 0, 2, 0, $10A)

Spritemap_Stoke_MovingRight_0:
    dw $0002                                                             ;A28B15;
    %spritemapEntry(1, $43F2, $F8, 0, 1, 2, 0, $101)
    %spritemapEntry(1, $43FA, $F8, 0, 1, 2, 0, $100)

Spritemap_Stoke_MovingRight_1:
    dw $0003                                                             ;A28B21;
    %spritemapEntry(0, $1FA, $F0, 0, 1, 2, 0, $10F)
    %spritemapEntry(1, $43F2, $F8, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $43FA, $F8, 0, 1, 2, 0, $103)

Spritemap_Stoke_MovingRight_2:
    dw $0002                                                             ;A28B32;
    %spritemapEntry(1, $43FA, $F8, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $43F2, $F8, 0, 1, 2, 0, $101)

Spritemap_Stoke_MovingRight_3:
    dw $0002                                                             ;A28B3E;
    %spritemapEntry(1, $43F2, $F8, 0, 1, 2, 0, $101)
    %spritemapEntry(1, $43FA, $F8, 0, 1, 2, 0, $108)

Spritemap_Stoke_AttackingRight:
    dw $0004                                                             ;A28B4A;
    %spritemapEntry(0, $1FA, $F0, 0, 1, 2, 0, $10E)
    %spritemapEntry(0, $02, $F0, 0, 1, 2, 0, $10D)
    %spritemapEntry(1, $43F2, $F8, 0, 1, 2, 0, $10B)
    %spritemapEntry(1, $43FA, $F8, 0, 1, 2, 0, $10A)

Palette_MamaTurtle_BabyTurtle:
    dw $3800,$4B9C,$3694,$08E7,$0884,$42F7,$2A52,$19AD                   ;A28B60;
    dw $1129,$7FFF,$033B,$0216,$0113,$7FFF,$03FF,$000D                   ;A28B70;

InstList_BabyTurtle_CrawlingLeft:
    dw Instruction_BabyTurtle_Crawl                                      ;A28B80;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_0                           ;A28B82;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_1                           ;A28B86;
    dw Instruction_BabyTurtle_Crawl                                      ;A28B8A;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_2                           ;A28B8C;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_3                           ;A28B90;
    dw Instruction_BabyTurtle_Crawl                                      ;A28B94;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_0                           ;A28B96;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_1                           ;A28B9A;
    dw Instruction_BabyTurtle_Crawl                                      ;A28B9E;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_2                           ;A28BA0;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_3                           ;A28BA4;
    dw Instruction_BabyTurtle_Crawl                                      ;A28BA8;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_0                           ;A28BAA;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_1                           ;A28BAE;
    dw Instruction_BabyTurtle_Crawl                                      ;A28BB2;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_5                           ;A28BB4;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_6                           ;A28BB8;
    dw Instruction_BabyTurtle_Crawl                                      ;A28BBC;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_0                           ;A28BBE;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_4                           ;A28BC2;
    dw Instruction_BabyTurtle_Crawl                                      ;A28BC6;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_5                           ;A28BC8;
    dw $000A,Spritemap_BabyTurtle_FacingLeft_6                           ;A28BCC;
    dw Instruction_BabyTurtle_LoopOrTurnAroundIfMovedTooFar              ;A28BD0;

InstList_BabyTurtle_Spinning:
    dw $0001,Spritemap_BabyTurtle_FacingLeft_7                           ;A28BD2;
    dw Instruction_MamaTurtle_PlaySpinningSFX                            ;A28BD6;
    dw $0004,Spritemap_BabyTurtle_FacingLeft_7                           ;A28BD8;
    dw $0005,Spritemap_BabyTurtle_FacingLeft_8                           ;A28BDC;
    dw $0005,Spritemap_BabyTurtle_FacingLeft_9                           ;A28BE0;
    dw $0005,Spritemap_BabyTurtle_FacingLeft_A                           ;A28BE4;
    dw Instruction_BabyTurtle_Set_Spinning_Stoppable                     ;A28BE8;
    dw Instruction_Common_GotoY                                          ;A28BEA;
    dw InstList_BabyTurtle_Spinning                                      ;A28BEC;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_InstList_A28BEE:
    dw $0010,Spritemap_MamaTurtle_FacingLeft_3                           ;A28BEE;
    dw $0010,Spritemap_MamaTurtle_FacingLeft_4                           ;A28BF2;
    dw $0010,Spritemap_MamaTurtle_FacingLeft_5                           ;A28BF6;
    dw $0010,Spritemap_MamaTurtle_FacingLeft_6                           ;A28BFA;
    dw Instruction_Common_GotoY                                          ;A28BFE;
    dw UNUSED_InstList_A28BEE                                            ;A28C00;
endif ; !FEATURE_KEEP_UNREFERENCED

InstList_MamaTurtle_Spinning:
    dw $0001,Spritemap_MamaTurtle_FacingLeft_0                           ;A28C02;
    dw Instruction_MamaTurtle_PlaySpinningSFX                            ;A28C06;
    dw $0004,Spritemap_MamaTurtle_FacingLeft_0                           ;A28C08;
    dw $0005,Spritemap_MamaTurtle_FacingLeft_8                           ;A28C0C;
    dw $0005,Spritemap_MamaTurtle_FacingLeft_7                           ;A28C10;
    dw $0005,Spritemap_MamaTurtle_FacingLeft_8                           ;A28C14;
    dw Instruction_CommonA2_GotoY                                        ;A28C18;
    dw InstList_MamaTurtle_Spinning                                      ;A28C1A;

InstList_MamaTurtle_FacingLeft_EnterShell:
    dw $0020,Spritemap_MamaTurtle_FacingLeft_3                           ;A28C1C;
    dw $0005,Spritemap_MamaTurtle_FacingLeft_2                           ;A28C20;
    dw $0005,Spritemap_MamaTurtle_FacingLeft_1                           ;A28C24;
    dw Instruction_MamaTurtle_RiseToHoverRightwards                      ;A28C28;
    dw $7FFF,Spritemap_MamaTurtle_FacingLeft_0                           ;A28C2A;
    dw Instruction_Common_Sleep                                          ;A28C2E;

InstList_BabyTurtle_FacingLeft_Hiding:
    dw $0005,Spritemap_BabyTurtle_FacingLeft_4                           ;A28C30;
    dw $0005,Spritemap_BabyTurtle_FacingLeft_5                           ;A28C34;
    dw $0040,Spritemap_BabyTurtle_FacingLeft_7                           ;A28C38;
    dw Instruction_BabyTurtle_LeaveShell                                 ;A28C3C;
    dw $7FFF,Spritemap_BabyTurtle_FacingLeft_7                           ;A28C3E;
    dw Instruction_Common_Sleep                                          ;A28C42;

InstList_MamaTurtle_Asleep:
    dw $7FFF,Spritemap_MamaTurtle_FacingLeft_0                           ;A28C44;
    dw Instruction_Common_Sleep                                          ;A28C48;

InstList_MamaTurtle_FacingLeft_LeaveShell:
    dw $0010,Spritemap_MamaTurtle_FacingLeft_0                           ;A28C4A;
    dw $0005,Spritemap_MamaTurtle_FacingLeft_1                           ;A28C4E;
    dw $0005,Spritemap_MamaTurtle_FacingLeft_2                           ;A28C52;
    dw $0060,Spritemap_MamaTurtle_FacingLeft_3                           ;A28C56;
    dw Instruction_MamaTurtle_EnterShell                                 ;A28C5A;
    dw $7FFF,Spritemap_MamaTurtle_FacingLeft_3                           ;A28C5C;
    dw Instruction_Common_Sleep                                          ;A28C60;

InstList_BabyTurtle_FacingLeft_LeaveShell:
    dw $0005,Spritemap_BabyTurtle_FacingLeft_5                           ;A28C62;
    dw $002F,Spritemap_BabyTurtle_FacingLeft_4                           ;A28C66;
    dw Instruction_BabyTurtle_LeftShell                                  ;A28C6A;
    dw $002F,Spritemap_BabyTurtle_FacingLeft_4                           ;A28C6C;
    dw Instruction_Common_Sleep                                          ;A28C70;

InstList_BabyTurtle_CrawlingRight:
    dw Instruction_BabyTurtle_Crawl                                      ;A28C72;
    dw $000A,Spritemap_BabyTurtle_FacingRight_B                          ;A28C74;
    dw $000A,Spritemap_BabyTurtle_FacingRight_C                          ;A28C78;
    dw Instruction_BabyTurtle_Crawl                                      ;A28C7C;
    dw $000A,Spritemap_BabyTurtle_FacingRight_D                          ;A28C7E;
    dw $000A,Spritemap_BabyTurtle_FacingRight_E                          ;A28C82;
    dw Instruction_BabyTurtle_Crawl                                      ;A28C86;
    dw $000A,Spritemap_BabyTurtle_FacingRight_B                          ;A28C88;
    dw $000A,Spritemap_BabyTurtle_FacingRight_C                          ;A28C8C;
    dw Instruction_BabyTurtle_Crawl                                      ;A28C90;
    dw $000A,Spritemap_BabyTurtle_FacingRight_D                          ;A28C92;
    dw $000A,Spritemap_BabyTurtle_FacingRight_E                          ;A28C96;
    dw Instruction_BabyTurtle_Crawl                                      ;A28C9A;
    dw $000A,Spritemap_BabyTurtle_FacingRight_B                          ;A28C9C;
    dw $000A,Spritemap_BabyTurtle_FacingRight_C                          ;A28CA0;
    dw Instruction_BabyTurtle_Crawl                                      ;A28CA4;
    dw $000A,Spritemap_BabyTurtle_FacingRight_10                         ;A28CA6;
    dw $000A,Spritemap_BabyTurtle_FacingRight_11                         ;A28CAA;
    dw Instruction_BabyTurtle_Crawl                                      ;A28CAE;
    dw $000A,Spritemap_BabyTurtle_FacingRight_B                          ;A28CB0;
    dw $000A,Spritemap_BabyTurtle_FacingRight_F                          ;A28CB4;
    dw Instruction_BabyTurtle_Crawl                                      ;A28CB8;
    dw $000A,Spritemap_BabyTurtle_FacingRight_10                         ;A28CBA;
    dw $000A,Spritemap_BabyTurtle_FacingRight_11                         ;A28CBE;
    dw Instruction_BabyTurtle_LoopOrTurnAroundIfMovedTooFar              ;A28CC2;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_InstList_A28CC4:
    dw $0005,Spritemap_BabyTurtle_FacingRight_12                         ;A28CC4;
    dw $0005,Spritemap_BabyTurtle_FacingRight_13                         ;A28CC8;
    dw $0005,Spritemap_BabyTurtle_FacingRight_14                         ;A28CCC;
    dw $0005,Spritemap_BabyTurtle_FacingRight_15                         ;A28CD0;
    dw Instruction_Common_GotoY                                          ;A28CD4;
    dw UNUSED_InstList_A28CC4                                            ;A28CD6;

UNUSED_InstList_A28CD8:
    dw $0010,Spritemap_MamaTurtle_FacingRight_C                          ;A28CD8;
    dw $0010,Spritemap_MamaTurtle_FacingRight_D                          ;A28CDC;
    dw $0010,Spritemap_MamaTurtle_FacingRight_E                          ;A28CE0;
    dw $0010,Spritemap_MamaTurtle_FacingRight_F                          ;A28CE4;
    dw Instruction_Common_GotoY                                          ;A28CE8;
    dw UNUSED_InstList_A28CD8                                            ;A28CEA;

UNUSED_InstList_A28CEC:
    dw $0005,Spritemap_MamaTurtle_FacingRight_9                          ;A28CEC;
    dw $0005,Spritemap_MamaTurtle_FacingRight_11                         ;A28CF0;
    dw $0005,Spritemap_MamaTurtle_FacingRight_10                         ;A28CF4;
    dw $0005,Spritemap_MamaTurtle_FacingRight_11                         ;A28CF8;
    dw Instruction_CommonA2_GotoY                                        ;A28CFC;
    dw UNUSED_InstList_A28CEC                                            ;A28CFE;
endif ; !FEATURE_KEEP_UNREFERENCED

InstList_MamaTurtle_FacingRight_EnterShell:
    dw $0001,Spritemap_MamaTurtle_FacingRight_C                          ;A28D00;
    dw $0005,Spritemap_MamaTurtle_FacingRight_B                          ;A28D04;
    dw $0005,Spritemap_MamaTurtle_FacingRight_A                          ;A28D08;
    dw Instruction_MamaTurtle_RiseToHoverLeftwards                       ;A28D0C;
    dw $7FFF,Spritemap_MamaTurtle_FacingRight_9                          ;A28D0E;
    dw Instruction_Common_Sleep                                          ;A28D12;

InstList_BabyTurtle_FacingRight_Hiding:
    dw $0005,Spritemap_BabyTurtle_FacingRight_F                          ;A28D14;
    dw $0005,Spritemap_BabyTurtle_FacingRight_10                         ;A28D18;
    dw $0040,Spritemap_BabyTurtle_FacingRight_12                         ;A28D1C;
    dw Instruction_BabyTurtle_LeaveShell                                 ;A28D20;
    dw $7FFF,Spritemap_BabyTurtle_FacingRight_12                         ;A28D22;
    dw Instruction_Common_Sleep                                          ;A28D26;

InstList_MamaTurtle_FacingRight_LeaveShell:
    dw $0010,Spritemap_MamaTurtle_FacingRight_9                          ;A28D28;
    dw $0005,Spritemap_MamaTurtle_FacingRight_A                          ;A28D2C;
    dw $0005,Spritemap_MamaTurtle_FacingRight_B                          ;A28D30;
    dw $0060,Spritemap_MamaTurtle_FacingRight_C                          ;A28D34;
    dw Instruction_MamaTurtle_EnterShell                                 ;A28D38;
    dw $7FFF,Spritemap_MamaTurtle_FacingRight_C                          ;A28D3A;
    dw Instruction_Common_Sleep                                          ;A28D3E;

InstList_BabyTurtle_FacingRight_LeaveShell:
    dw $0005,Spritemap_BabyTurtle_FacingLeft_5                           ;A28D40;
    dw $002F,Spritemap_BabyTurtle_FacingLeft_4                           ;A28D44;
    dw Instruction_BabyTurtle_LeftShell                                  ;A28D48;
    dw $002F,Spritemap_BabyTurtle_FacingLeft_4                           ;A28D4A;
    dw Instruction_Common_Sleep                                          ;A28D4E;

BabyTurtleConstants_travelDistance:
    dw $0030                                                             ;A28D50; Max mini-tatori travel distance

MamaTurtleConstants:
  .asleepFlag:
    dw $0001                                                             ;A28D52; 1. Used as value to set asleep flag to
  .unknown:
    dw $0020                                                             ;A28D54; Unknown. Used as value for a bugged store operation
  .HoveringXAcceleration_subAcceleration:
    dw $F000                                                             ;A28D56; Hovering X acceleration
  .HoveringXAcceleration_acceleration:
    dw       $FFFF                                                       ;A28D58; Moving left
    dw $1000,$0000                                                       ;A28D5A; Moving right
  .maxHoveringXSpeed:
    dw $0003                                                             ;A28D5E; Max hovering X speed
  .peakYPosition:
    dw $01E8                                                             ;A28D60; Peak Y position
  .risingToPeakSpeed:
    dw $0007                                                             ;A28D62; Rising to peak speed
  .hoveringAtPeakPosition:
    dw $001E                                                             ;A28D64; Hovering at peak duration
  .maxFallingYSpeed:
    dw $0004                                                             ;A28D66; Max falling Y speed

BabyTurtleConstants_maxSpinningLeftVelocity:
    dw $FFFD                                                             ;A28D68; Mini-tatori max spinning left velocity

BabyTurtleConstants_maxSpinningRightVelocity:
    dw $0003                                                             ;A28D6A; Mini-tatori max spinning right velocity

InitAI_MamaTurtle:
    LDX.W $0E54                                                          ;A28D6C;
    LDA.W $0F86,X                                                        ;A28D6F;
    ORA.W #$2000                                                         ;A28D72;
    STA.W $0F86,X                                                        ;A28D75;
    LDA.W #Spritemap_CommonA2_Nothing                                    ;A28D78;
    STA.W $0F8E,X                                                        ;A28D7B;
    LDA.W #$0001                                                         ;A28D7E;
    STA.W $0F94,X                                                        ;A28D81;
    STZ.W $0F90,X                                                        ;A28D84;
    STZ.W $0F84,X                                                        ;A28D87;
    LDA.W #InstList_MamaTurtle_Asleep                                    ;A28D8A;
    STA.W $0F92,X                                                        ;A28D8D;
    LDA.W #Function_MamaTurtle_Initial                                   ;A28D90;
    STA.W $0FA8,X                                                        ;A28D93;
    LDA.W MamaTurtleConstants_asleepFlag                                 ;A28D96;
    STA.W $0FB2,X                                                        ;A28D99;
    RTL                                                                  ;A28D9C;


InitAI_BabyTurtle:
    LDX.W $0E54                                                          ;A28D9D;
    LDA.W $0F7A,X                                                        ;A28DA0;
    STA.W $0FAC,X                                                        ;A28DA3;
    LDA.W $0F7E,X                                                        ;A28DA6;
    SEC                                                                  ;A28DA9;
    SBC.W $0F84,X                                                        ;A28DAA;
    STA.W $0FAE,X                                                        ;A28DAD;
    LDA.W #Function_BabyTurtle_Crawling_NotCarryingSamus                 ;A28DB0;
    STA.W $0FA8,X                                                        ;A28DB3;
    LDA.W #$0001                                                         ;A28DB6;
    STA.W $0F94,X                                                        ;A28DB9;
    STZ.W $0F90,X                                                        ;A28DBC;
    LDY.W #InstList_BabyTurtle_CrawlingLeft                              ;A28DBF;
    LDA.W $0FB4,X                                                        ;A28DC2;
    STA.W $0FB0,X                                                        ;A28DC5;
    BMI .keepPointer                                                     ;A28DC8;
    LDY.W #InstList_BabyTurtle_CrawlingRight                             ;A28DCA;

.keepPointer:
    TYA                                                                  ;A28DCD;
    STA.W $0F92,X                                                        ;A28DCE;
    RTL                                                                  ;A28DD1;


MainAI_MamaTurtle:
    LDX.W $0E54                                                          ;A28DD2;
    JMP.W ($0FA8,X)                                                      ;A28DD5;


Function_MamaTurtle_Initial:
    LDA.W $0F96,X                                                        ;A28DD8;
    STA.W $0FD6,X                                                        ;A28DDB;
    STA.W $1016,X                                                        ;A28DDE;
    STA.W $1056,X                                                        ;A28DE1;
    STA.W $1096,X                                                        ;A28DE4;
    LDA.W $0F98,X                                                        ;A28DE7;
    STA.W $0FD8,X                                                        ;A28DEA;
    STA.W $1018,X                                                        ;A28DED;
    STA.W $1058,X                                                        ;A28DF0;
    STA.W $1098,X                                                        ;A28DF3;
    TXA                                                                  ;A28DF6;
    STA.W $0FEA,X                                                        ;A28DF7;
    STA.W $102A,X                                                        ;A28DFA;
    STA.W $106A,X                                                        ;A28DFD;
    STA.W $10AA,X                                                        ;A28E00;
    LDA.W #Function_MamaTurtle_Asleep                                    ;A28E03;
    STA.W $0FA8,X                                                        ;A28E06;

RTL_A28E09:
    RTL                                                                  ;A28E09;


Function_MamaTurtle_Asleep:
    LDA.W $0FB2,X                                                        ;A28E0A;
    BNE .asleep                                                          ;A28E0D;
    LDA.W #Function_MamaTurtle_LeaveShell                                ;A28E0F;
    STA.W $0FA8,X                                                        ;A28E12;
    LDA.W $0F86,X                                                        ;A28E15;
    AND.W #$FBFF                                                         ;A28E18;
    STA.W $0F86,X                                                        ;A28E1B;
    RTL                                                                  ;A28E1E;


.asleep:
    STZ.W $0F84,X                                                        ;A28E1F;
    LDA.W $0F7A,X                                                        ;A28E22;
    SEC                                                                  ;A28E25;
    SBC.W $0AF6                                                          ;A28E26;
    PHP                                                                  ;A28E29;
    BPL +                                                                ;A28E2A;
    EOR.W #$FFFF                                                         ;A28E2C;
    INC A                                                                ;A28E2F;

  + CMP.W #$0018                                                         ;A28E30;
    BPL .returnPLP                                                       ;A28E33;
    PLP                                                                  ;A28E35;
    BPL .SamusToTheRight                                                 ;A28E36;
    CLC                                                                  ;A28E38;
    ADC.W #$0018                                                         ;A28E39;

.SamusToTheRight:
    ASL A                                                                ;A28E3C;
    TAX                                                                  ;A28E3D;
    LDA.W SleepingMamaTurtleShellShape,X                                 ;A28E3E;
    LDX.W $0E54                                                          ;A28E41;
    EOR.W #$FFFF                                                         ;A28E44;
    INC A                                                                ;A28E47;
    STA.W $0F84,X                                                        ;A28E48;
    LDA.W $0F86,X                                                        ;A28E4B;
    ORA.W #$8000                                                         ;A28E4E;
    STA.W $0F86,X                                                        ;A28E51;
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A28E54;
    AND.W #$FFFF                                                         ;A28E58;
    BEQ .return                                                          ;A28E5B;
    LDA.W $0F7E,X                                                        ;A28E5D;
    SEC                                                                  ;A28E60;
    SBC.W $0F84,X                                                        ;A28E61;
    STA.B $12                                                            ;A28E64;
    LDA.W $0AFA                                                          ;A28E66;
    CLC                                                                  ;A28E69;
    ADC.W $0B00                                                          ;A28E6A;
    SEC                                                                  ;A28E6D;
    SBC.B $12                                                            ;A28E6E;
    BMI .return                                                          ;A28E70;
    EOR.W #$FFFF                                                         ;A28E72;
    INC A                                                                ;A28E75;
    CLC                                                                  ;A28E76;
    ADC.W $0B5C                                                          ;A28E77;
    STA.W $0B5C                                                          ;A28E7A;

.return:
    RTL                                                                  ;A28E7D;


.returnPLP:
    PLP                                                                  ;A28E7E;
    RTL                                                                  ;A28E7F;


SleepingMamaTurtleShellShape:
; Y pixel offsets from centre. Indexed by X distance from center
    dw $FFF0,$FFF0,$FFF0,$FFF0,$FFF1,$FFF1,$FFF1,$FFF1                   ;A28E80;
    dw $FFF1,$FFF2,$FFF3,$FFF3,$FFF4,$FFF5,$FFF6,$FFF7                   ;A28E90;
    dw $FFF8,$FFF9,$FFFA,$FFFB,$FFFC,$FFFC,$0000,$0000                   ;A28EA0;
    dw $FFF0,$FFF0,$FFF0,$FFF1,$FFF1,$FFF1,$FFF2,$FFF3                   ;A28EB0;
    dw $FFF4,$FFF5,$FFF6,$FFF7,$FFF8,$FFF9,$FFFA,$FFFB                   ;A28EC0;
    dw $FFFC,$FFFD,$FFFD,$FFFE,$0000,$0000,$0000,$0000                   ;A28ED0;

Function_MamaTurtle_LeaveShell:
    JSR.W MamaTurtle_vs_Samus_CollisionDetection                         ;A28EE0;
    LDA.W $05B5                                                          ;A28EE3;
    AND.W #$0001                                                         ;A28EE6;
    BNE .return                                                          ;A28EE9;
    PHX                                                                  ;A28EEB;
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A28EEC;
    PLX                                                                  ;A28EF0;
    AND.W #$FFFF                                                         ;A28EF1;
    BEQ .notTouchingSamusFromBelow                                       ;A28EF4;
    LDA.W $0B58                                                          ;A28EF6;
    SEC                                                                  ;A28EF9;
    SBC.W #$0001                                                         ;A28EFA;
    STA.W $0B58                                                          ;A28EFD;

.notTouchingSamusFromBelow:
    DEC.W $0F7E,X                                                        ;A28F00;
    STZ.B $12                                                            ;A28F03;
    LDA.W #$0010                                                         ;A28F05;
    STA.W $0F84,X                                                        ;A28F08;
    LDA.W $0F7E,X                                                        ;A28F0B;
    BIT.W #$0001                                                         ;A28F0E;
    BNE .odd                                                             ;A28F11;
    INC.W $0F7A,X                                                        ;A28F13;
    BRA +                                                                ;A28F16;


.odd:
    DEC.W $0F7A,X                                                        ;A28F18;

  + LDA.W #$0001                                                         ;A28F1B;
    STA.B $14                                                            ;A28F1E;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A28F20;
    BCS .return                                                          ;A28F24;
    LDA.W #InstList_MamaTurtle_FacingLeft_LeaveShell                     ;A28F26;
    STA.W $0F92,X                                                        ;A28F29;
    LDA.W #$0001                                                         ;A28F2C;
    STA.W $0F94,X                                                        ;A28F2F;
    LDA.W MamaTurtleConstants_unknown                                    ;A28F32;
    STA.W $0006,X                                                        ;A28F35;
    LDA.W #RTL_A28E09                                                    ;A28F38;
    STA.W $0FA8,X                                                        ;A28F3B;

.return:
    RTL                                                                  ;A28F3E;


Function_MamaTurtle_EnterShell:
    LDY.W #InstList_MamaTurtle_FacingLeft_EnterShell                     ;A28F3F;
    LDA.W $0F7A,X                                                        ;A28F42;
    SEC                                                                  ;A28F45;
    SBC.W $0AF6                                                          ;A28F46;
    BPL .keepLeft                                                        ;A28F49;
    LDY.W #InstList_MamaTurtle_FacingRight_EnterShell                    ;A28F4B;

.keepLeft:
    TYA                                                                  ;A28F4E;
    STA.W $0F92,X                                                        ;A28F4F;
    LDA.W #$0001                                                         ;A28F52;
    STA.W $0F94,X                                                        ;A28F55;
    LDA.W #RTL_A28E09                                                    ;A28F58;
    STA.W $0FA8,X                                                        ;A28F5B;
    RTL                                                                  ;A28F5E;


HandleSamusLandingOnHoveringTatori:
    PHX                                                                  ;A28F5F;
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A28F60;
    PLX                                                                  ;A28F64;
    AND.W #$FFFF                                                         ;A28F65;
    BEQ .return                                                          ;A28F68;
    LDA.W #Function_MamaTurtle_RisingToPeak                              ;A28F6A;
    STA.W $0FA8,X                                                        ;A28F6D;
    LDA.W $0B56                                                          ;A28F70;
    SEC                                                                  ;A28F73;
    SBC.L $7E7806,X                                                      ;A28F74;
    STA.W $0B56                                                          ;A28F78;
    LDA.W $0B58                                                          ;A28F7B;
    SBC.W $0FB0,X                                                        ;A28F7E;
    CMP.W #$FFF0                                                         ;A28F81;
    BPL +                                                                ;A28F84;
    LDA.W #$FFF0                                                         ;A28F86;

  + STA.W $0B58                                                          ;A28F89;

.return:
    RTS                                                                  ;A28F8C;


Function_MamaTurtle_RiseToHover:
    JSR.W MamaTurtle_vs_Samus_CollisionDetection                         ;A28F8D;
    LDA.W #$FFFF                                                         ;A28F90;
    STA.B $14                                                            ;A28F93;
    STZ.B $12                                                            ;A28F95;
    JSL.L MoveEnemyDownBy_14_12                                          ;A28F97;
    BCS .return                                                          ;A28F9B;
    PHX                                                                  ;A28F9D;
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A28F9E;
    PLX                                                                  ;A28FA2;
    AND.W #$FFFF                                                         ;A28FA3;
    BEQ .notTouchingSamusFromBelow                                       ;A28FA6;
    LDA.W $0B5C                                                          ;A28FA8;
    SEC                                                                  ;A28FAB;
    SBC.W #$0001                                                         ;A28FAC;
    STA.W $0B5C                                                          ;A28FAF;

.notTouchingSamusFromBelow:
    LDA.L $7E7800,X                                                      ;A28FB2;
    DEC A                                                                ;A28FB6;
    STA.L $7E7800,X                                                      ;A28FB7;
    BNE .return                                                          ;A28FBB;
    LDY.W #$0000                                                         ;A28FBD;
    LDA.W $0F7A,X                                                        ;A28FC0;
    SEC                                                                  ;A28FC3;
    SBC.W $0AF6                                                          ;A28FC4;
    BPL +                                                                ;A28FC7;
    LDY.W #$0004                                                         ;A28FC9;

  + LDA.W MamaTurtleConstants_HoveringXAcceleration_subAcceleration,Y    ;A28FCC;
    STA.L $7E7802,X                                                      ;A28FCF;
    LDA.W MamaTurtleConstants_HoveringXAcceleration_acceleration,Y       ;A28FD3;
    STA.L $7E7804,X                                                      ;A28FD6;
    LDA.W #$0000                                                         ;A28FDA;
    STA.W $0FB0,X                                                        ;A28FDD;
    STA.L $7E7806,X                                                      ;A28FE0;
    LDA.W #Function_MamaTurtle_Hovering                                  ;A28FE4;
    STA.W $0FA8,X                                                        ;A28FE7;

.return:
    RTL                                                                  ;A28FEA;


Function_MamaTurtle_Hovering:
    JSR.W MamaTurtle_vs_Samus_CollisionDetection                         ;A28FEB;
    LDA.W $0FB0,X                                                        ;A28FEE;
    STA.B $14                                                            ;A28FF1;
    LDA.L $7E7806,X                                                      ;A28FF3;
    STA.B $12                                                            ;A28FF7;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A28FF9;
    BCS .hitWall                                                         ;A28FFD;
    JSR.W HandleSamusLandingOnHoveringTatori                             ;A28FFF;
    LDA.L $7E7806,X                                                      ;A29002;
    CLC                                                                  ;A29006;
    ADC.L $7E7802,X                                                      ;A29007;
    STA.L $7E7806,X                                                      ;A2900B;
    LDA.W $0FB0,X                                                        ;A2900F;
    ADC.L $7E7804,X                                                      ;A29012;
    PHA                                                                  ;A29016;
    BPL +                                                                ;A29017;
    EOR.W #$FFFF                                                         ;A29019;
    INC A                                                                ;A2901C;

  + CMP.W MamaTurtleConstants_maxHoveringXSpeed                          ;A2901D;
    BMI .pullA                                                           ;A29020;
    PLA                                                                  ;A29022;
    LDY.W MamaTurtleConstants_maxHoveringXSpeed                          ;A29023;
    LDA.W $0FB0,X                                                        ;A29026;
    BIT.W #$8000                                                         ;A29029;
    BEQ +                                                                ;A2902C;
    LDA.W MamaTurtleConstants_maxHoveringXSpeed                          ;A2902E;
    EOR.W #$FFFF                                                         ;A29031;
    INC A                                                                ;A29034;
    TAY                                                                  ;A29035;

  + PHY                                                                  ;A29036;

.pullA:
    PLA                                                                  ;A29037;
    STA.W $0FB0,X                                                        ;A29038;
    RTL                                                                  ;A2903B;


.hitWall:
    LDA.L $7E7806,X                                                      ;A2903C;
    EOR.W #$FFFF                                                         ;A29040;
    INC A                                                                ;A29043;
    STA.L $7E7806,X                                                      ;A29044;
    LDA.W $0FB0,X                                                        ;A29048;
    ADC.W #$0000                                                         ;A2904B;
    EOR.W #$FFFF                                                         ;A2904E;
    INC A                                                                ;A29051;
    STA.W $0FB0,X                                                        ;A29052;
    LDA.L $7E7802,X                                                      ;A29055;
    EOR.W #$FFFF                                                         ;A29059;
    INC A                                                                ;A2905C;
    STA.L $7E7802,X                                                      ;A2905D;
    LDA.L $7E7804,X                                                      ;A29061;
    ADC.W #$0000                                                         ;A29065;
    EOR.W #$FFFF                                                         ;A29068;
    STA.L $7E7804,X                                                      ;A2906B;
    LDA.W #$0000                                                         ;A2906F;
    STA.W $183E                                                          ;A29072;
    LDA.W #$0010                                                         ;A29075;
    STA.W $1840                                                          ;A29078;
    LDA.W #$001B                                                         ;A2907B;
    JSL.L QueueSound_Lib2_Max6                                           ;A2907E;
    RTL                                                                  ;A29082;


Function_MamaTurtle_RisingToPeak:
    JSR.W MamaTurtle_vs_Samus_CollisionDetection                         ;A29083;
    LDA.W $0F7E,X                                                        ;A29086;
    CMP.W MamaTurtleConstants_peakYPosition                              ;A29089;
    BMI +                                                                ;A2908C;
    PHX                                                                  ;A2908E;
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A2908F;
    PLX                                                                  ;A29093;
    AND.W #$FFFF                                                         ;A29094;
    BEQ .notTouchingSamus                                                ;A29097;
    LDA.W $0F7E,X                                                        ;A29099;
    SEC                                                                  ;A2909C;
    SBC.W MamaTurtleConstants_risingToPeakSpeed                          ;A2909D;
    STA.W $0F7E,X                                                        ;A290A0;
    LDA.W $0B5C                                                          ;A290A3;
    SEC                                                                  ;A290A6;
    SBC.W MamaTurtleConstants_risingToPeakSpeed                          ;A290A7;
    STA.W $0B5C                                                          ;A290AA;
    RTL                                                                  ;A290AD;


  + LDA.W MamaTurtleConstants_hoveringAtPeakPosition                     ;A290AE;
    STA.L $7E7800,X                                                      ;A290B1;
    LDA.W #Function_MamaTurtle_HoveringAtPeak                            ;A290B5;

.merge:
    STA.W $0FA8,X                                                        ;A290B8;
    LDA.W #$0000                                                         ;A290BB;
    STA.L $7E780E,X                                                      ;A290BE;
    STA.L $7E7808,X                                                      ;A290C2;
    RTL                                                                  ;A290C6;


.notTouchingSamus:
    LDA.W #Function_MamaTurtle_Falling                                   ;A290C7;
    BRA .merge                                                           ;A290CA;


Function_MamaTurtle_HoveringAtPeak:
    JSR.W MamaTurtle_vs_Samus_CollisionDetection                         ;A290CC;
    LDA.L $7E7800,X                                                      ;A290CF;
    DEC A                                                                ;A290D3;
    STA.L $7E7800,X                                                      ;A290D4;
    BNE .return                                                          ;A290D8;
    LDA.W #Function_MamaTurtle_Falling                                   ;A290DA;
    STA.W $0FA8,X                                                        ;A290DD;

.return:
    RTL                                                                  ;A290E0;


Function_MamaTurtle_Falling:
    JSR.W MamaTurtle_vs_Samus_CollisionDetection                         ;A290E1;
    LDA.L $7E7808                                                        ;A290E4;
    CMP.W MamaTurtleConstants_maxFallingYSpeed                           ;A290E8;
    BPL .maxVelocity                                                     ;A290EB;
    LDA.L $7E780E,X                                                      ;A290ED;
    CLC                                                                  ;A290F1;
    ADC.W #$2000                                                         ;A290F2;
    STA.L $7E780E,X                                                      ;A290F5;
    LDA.L $7E7808,X                                                      ;A290F9;
    ADC.W #$0000                                                         ;A290FD;
    STA.L $7E7808,X                                                      ;A29100;

.maxVelocity:
    STZ.B $12                                                            ;A29104;
    LDA.L $7E7808,X                                                      ;A29106;
    STA.B $14                                                            ;A2910A;
    JSL.L MoveEnemyDownBy_14_12                                          ;A2910C;
    BCC .return                                                          ;A29110;
    LDY.W #InstList_MamaTurtle_FacingLeft_LeaveShell                     ;A29112;
    LDA.W $0FB0,X                                                        ;A29115;
    BMI .keepLeft                                                        ;A29118;
    LDY.W #InstList_MamaTurtle_FacingRight_LeaveShell                    ;A2911A;

.keepLeft:
    TYA                                                                  ;A2911D;
    STA.W $0F92,X                                                        ;A2911E;
    LDA.W #$0001                                                         ;A29121;
    STA.W $0F94,X                                                        ;A29124;
    LDA.W #RTL_A28E09                                                    ;A29127;
    STA.W $0FA8,X                                                        ;A2912A;

.return:
    RTL                                                                  ;A2912D;


MainAI_BabyTurtle:
    LDX.W $0E54                                                          ;A2912E;
    LDA.W $0FAA,X                                                        ;A29131;
    TAX                                                                  ;A29134;
    LDA.W #$0000                                                         ;A29135;
    STA.L $7E780C,X                                                      ;A29138;
    LDX.W $0E54                                                          ;A2913C;
    JMP.W ($0FA8,X)                                                      ;A2913F;


Function_BabyTurtle_Crawling_NotCarryingSamus:
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A29142;
    AND.W #$FFFF                                                         ;A29146;
    BEQ .return                                                          ;A29149;
    LDA.W #Function_BabyTurtle_Hiding_CarryingSamus                      ;A2914B;
    STA.W $0FA8,X                                                        ;A2914E;
    LDA.W #$0004                                                         ;A29151;
    STA.L $7E780A,X                                                      ;A29154;
    LDY.W #InstList_BabyTurtle_FacingLeft_Hiding                         ;A29158;
    LDA.W $0FB0,X                                                        ;A2915B;
    BMI .keepLeft                                                        ;A2915E;
    LDY.W #InstList_BabyTurtle_FacingRight_Hiding                        ;A29160;

.keepLeft:
    TYA                                                                  ;A29163;
    STA.W $0F92,X                                                        ;A29164;
    LDA.W #$0001                                                         ;A29167;
    STA.W $0F94,X                                                        ;A2916A;

.return:
    RTL                                                                  ;A2916D;


Function_BabyTurtle_Hiding_CarryingSamus:
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A2916E;
    AND.W #$FFFF                                                         ;A29172;
    BEQ .notTouchingSamus                                                ;A29175;
    LDA.W #$0004                                                         ;A29177;
    STA.L $7E780A,X                                                      ;A2917A;

.return:
    RTL                                                                  ;A2917E;


.notTouchingSamus:
    LDA.L $7E780A,X                                                      ;A2917F;
    DEC A                                                                ;A29183;
    STA.L $7E780A,X                                                      ;A29184;
    BNE .return                                                          ;A29188;
    LDA.W #Function_BabyTurtle_Hiding_NotCarryingSamus                   ;A2918A;
    STA.W $0FA8,X                                                        ;A2918D;
    LDA.W #$003C                                                         ;A29190;
    STA.L $7E7800,X                                                      ;A29193;
    RTL                                                                  ;A29197;


Function_BabyTurtle_Hiding_NotCarryingSamus:
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A29198;
    AND.W #$FFFF                                                         ;A2919C;
    BEQ .notTouchingSamus                                                ;A2919F;
    LDA.W #Function_BabyTurtle_Spinning_Unstoppable                      ;A291A1;
    STA.W $0FA8,X                                                        ;A291A4;
    LDA.W #InstList_BabyTurtle_Spinning                                  ;A291A7;
    STA.W $0F92,X                                                        ;A291AA;
    LDA.W #$0001                                                         ;A291AD;
    STA.W $0F94,X                                                        ;A291B0;
    LDA.W #$0001                                                         ;A291B3;
    STA.L $7E7808,X                                                      ;A291B6;
    LDA.W $0A1E                                                          ;A291BA;
    AND.W #$000F                                                         ;A291BD;
    LDY.W BabyTurtleConstants_maxSpinningLeftVelocity                    ;A291C0;
    CMP.W #$0008                                                         ;A291C3;
    BNE .keepLeft                                                        ;A291C6;
    LDY.W BabyTurtleConstants_maxSpinningRightVelocity                   ;A291C8;

.keepLeft:
    TYA                                                                  ;A291CB;
    STA.W $0FB0,X                                                        ;A291CC;
    RTL                                                                  ;A291CF;


.notTouchingSamus:
    LDA.L $7E7800,X                                                      ;A291D0;
    DEC A                                                                ;A291D4;
    STA.L $7E7800,X                                                      ;A291D5;
    BEQ .timerExpired                                                    ;A291D9;
    RTL                                                                  ;A291DB;


.timerExpired:
    LDY.W #InstList_BabyTurtle_CrawlingLeft                              ;A291DC;
    LDA.W $0FB0,X                                                        ;A291DF;
    BMI ..keepLeft                                                       ;A291E2;
    LDY.W #InstList_BabyTurtle_CrawlingRight                             ;A291E4;

..keepLeft:
    TYA                                                                  ;A291E7;
    STA.W $0F92,X                                                        ;A291E8;
    LDA.W #$0001                                                         ;A291EB;
    STA.W $0F94,X                                                        ;A291EE;
    LDA.W #Function_BabyTurtle_Crawling_NotCarryingSamus                 ;A291F1;
    STA.W $0FA8,X                                                        ;A291F4;
    RTL                                                                  ;A291F7;


Function_BabyTurtle_Spinning_Unstoppable:
    STZ.B $12                                                            ;A291F8;
    LDA.W $0FB0,X                                                        ;A291FA;
    STA.B $14                                                            ;A291FD;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A291FF;
    BCS .collidedWithWall                                                ;A29203;
    STZ.B $12                                                            ;A29205;
    LDA.L $7E7808,X                                                      ;A29207;
    STA.B $14                                                            ;A2920B;
    JSL.L MoveEnemyDownBy_14_12                                          ;A2920D;
    RTL                                                                  ;A29211;


.collidedWithWall:
    LDA.W $0FB0,X                                                        ;A29212;
    EOR.W #$FFFF                                                         ;A29215;
    INC A                                                                ;A29218;
    STA.W $0FB0,X                                                        ;A29219;
    RTL                                                                  ;A2921C;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_A2921D:
    LDY.W #InstList_BabyTurtle_CrawlingLeft                              ;A2921D;
    LDA.W $0FB0,X                                                        ;A29220;
    BMI .keepLeft                                                        ;A29223;
    LDY.W #InstList_BabyTurtle_CrawlingRight                             ;A29225;

.keepLeft:
    TYA                                                                  ;A29228;
    STA.W $0F92,X                                                        ;A29229;
    LDA.W #$0001                                                         ;A2922C;
    STA.W $0F94,X                                                        ;A2922F;
    LDA.W #Function_BabyTurtle_Crawling_NotCarryingSamus                 ;A29232;
    STA.W $0FA8,X                                                        ;A29235;
    RTL                                                                  ;A29238;
endif ; !FEATURE_KEEP_UNREFERENCED


Function_BabyTurtle_Spinning_Stoppable:
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A29239;
    AND.W #$FFFF                                                         ;A2923D;
    BEQ Function_BabyTurtle_Spinning_Unstoppable                         ;A29240;
    LDY.W #InstList_BabyTurtle_CrawlingLeft                              ;A29242;
    LDA.W $0FB0,X                                                        ;A29245;
    BMI .keepLeft                                                        ;A29248;
    LDY.W #InstList_BabyTurtle_CrawlingRight                             ;A2924A;

.keepLeft:
    TYA                                                                  ;A2924D;
    STA.W $0F92,X                                                        ;A2924E;
    LDA.W #$0001                                                         ;A29251;
    STA.W $0F94,X                                                        ;A29254;
    LDA.W #Function_BabyTurtle_Crawling_NotCarryingSamus                 ;A29257;
    STA.W $0FA8,X                                                        ;A2925A;
    RTL                                                                  ;A2925D;


Function_BabyTurtle_Crawling_CarryingSamus:
    LDX.W $0E54                                                          ;A2925E;
    LDA.W $0F84,X                                                        ;A29261;
    PHA                                                                  ;A29264;
    LDA.W $0FAA,X                                                        ;A29265;
    TAX                                                                  ;A29268;
    PLA                                                                  ;A29269;
    STA.L $7E780C,X                                                      ;A2926A;
    LDX.W $0E54                                                          ;A2926E;
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A29271;
    AND.W #$FFFF                                                         ;A29275;
    BNE .return                                                          ;A29278;
    LDA.W #Function_BabyTurtle_Crawling_NotCarryingSamus                 ;A2927A;
    STA.W $0FA8,X                                                        ;A2927D;

.return:
    RTL                                                                  ;A29280;


EnemyTouch_MamaTurtle:
    LDX.W $0E54                                                          ;A29281;
    LDA.W $0F86,X                                                        ;A29284;
    BIT.W #$8000                                                         ;A29287;
    BNE .return                                                          ;A2928A;
    JSL.L CommonA2_NormalEnemyTouchAI                                    ;A2928C;
    LDA.W #Function_MamaTurtle_Falling                                   ;A29290;
    STA.W $0FA8,X                                                        ;A29293;
    LDA.W #$0002                                                         ;A29296;
    STA.L $7E7808,X                                                      ;A29299;

.return:
    RTL                                                                  ;A2929D;


RTL_A2929E:
    RTL                                                                  ;A2929E;


EnemyTouch_BabyTurtle:
    LDX.W $0E54                                                          ;A2929F;
    LDA.W $0FA8,X                                                        ;A292A2;
    CMP.W #Function_BabyTurtle_Crawling_CarryingSamus                    ;A292A5;
    BNE +                                                                ;A292A8;
    RTL                                                                  ;A292AA;


  + LDA.W $0FB0,X                                                        ;A292AB;
    BMI .negative                                                        ;A292AE;
    LDA.W #InstList_BabyTurtle_CrawlingLeft                              ;A292B0;
    STA.W $0F92,X                                                        ;A292B3;
    LDA.W #$FFFF                                                         ;A292B6;
    BRA +                                                                ;A292B9;


.negative:
    LDA.W #InstList_BabyTurtle_CrawlingRight                             ;A292BB;
    STA.W $0F92,X                                                        ;A292BE;
    LDA.W #$0001                                                         ;A292C1;

  + STA.W $0FB0,X                                                        ;A292C4;
    LDA.W #$0001                                                         ;A292C7;
    STA.W $0F94,X                                                        ;A292CA;
    LDA.W $0F7A,X                                                        ;A292CD;
    CMP.W $0AF6                                                          ;A292D0;
    BPL .SamusToTheLeft                                                  ;A292D3;
    LDA.W $0AF6                                                          ;A292D5;
    SEC                                                                  ;A292D8;
    SBC.W $0AFE                                                          ;A292D9;
    SBC.W $0F82,X                                                        ;A292DC;
    BRA +                                                                ;A292DF;


.SamusToTheLeft:
    LDA.W $0AF6                                                          ;A292E1;
    CLC                                                                  ;A292E4;
    ADC.W $0AFE                                                          ;A292E5;
    ADC.W $0F82,X                                                        ;A292E8;

  + STA.W $0F7A,X                                                        ;A292EB;
    LDA.W #Function_BabyTurtle_Crawling_NotCarryingSamus                 ;A292EE;
    STA.W $0FA8,X                                                        ;A292F1;
    STZ.B $12                                                            ;A292F4;
    LDA.W $0FB0,X                                                        ;A292F6;
    STA.B $14                                                            ;A292F9;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A292FB; fallthrough to AwakenTurtle

AwakenTurtle:
    LDX.W $0E54                                                          ;A292FF;
    LDA.W $0FAA,X                                                        ;A29302;
    TAX                                                                  ;A29305;
    LDA.W $0FB2,X                                                        ;A29306;
    BEQ .return                                                          ;A29309;
    DEC.W $0FB2,X                                                        ;A2930B;

.return:
    RTL                                                                  ;A2930E;


EnemyShot_BabyTurtle:
    JSL.L NormalEnemyShotAI                                              ;A2930F;
    BRA AwakenTurtle                                                     ;A29313;


MamaTurtle_vs_Samus_CollisionDetection:
    LDA.W $0F7A                                                          ;A29315;
    SEC                                                                  ;A29318;
    SBC.W $0F82                                                          ;A29319;
    SEC                                                                  ;A2931C;
    SBC.W #$0008                                                         ;A2931D;
    STA.B $12                                                            ;A29320;
    LDA.W $0F7A                                                          ;A29322;
    CLC                                                                  ;A29325;
    ADC.W $0F82                                                          ;A29326;
    CLC                                                                  ;A29329;
    ADC.W #$0008                                                         ;A2932A;
    STA.B $14                                                            ;A2932D;
    LDA.W $0F7E                                                          ;A2932F;
    SEC                                                                  ;A29332;
    SBC.W $0F84                                                          ;A29333;
    CLC                                                                  ;A29336;
    ADC.W #$0004                                                         ;A29337;
    STA.B $16                                                            ;A2933A;
    LDA.W $0F7E                                                          ;A2933C;
    CLC                                                                  ;A2933F;
    ADC.W $0F84                                                          ;A29340;
    SEC                                                                  ;A29343;
    SBC.W #$0004                                                         ;A29344;
    STA.B $18                                                            ;A29347;
    LDA.W $0AF6                                                          ;A29349;
    SEC                                                                  ;A2934C;
    SBC.W $0AFE                                                          ;A2934D;
    DEC A                                                                ;A29350;
    CMP.B $14                                                            ;A29351;
    BPL .return                                                          ;A29353;
    LDA.W $0AF6                                                          ;A29355;
    CLC                                                                  ;A29358;
    ADC.W $0AFE                                                          ;A29359;
    CMP.B $12                                                            ;A2935C;
    BMI .return                                                          ;A2935E;
    LDA.W $0AFA                                                          ;A29360;
    SEC                                                                  ;A29363;
    SBC.W $0B00                                                          ;A29364;
    INC A                                                                ;A29367;
    CMP.B $18                                                            ;A29368;
    BPL .return                                                          ;A2936A;
    LDA.W $0AFA                                                          ;A2936C;
    CLC                                                                  ;A2936F;
    ADC.W $0B00                                                          ;A29370;
    CMP.B $16                                                            ;A29373;
    BMI .return                                                          ;A29375;
    LDA.W $18A8                                                          ;A29377;
    BNE .return                                                          ;A2937A;
    JSL.L NormalEnemyTouchAI                                             ;A2937C;

.return:
    RTS                                                                  ;A29380;


Instruction_BabyTurtle_Crawl:
    PHX                                                                  ;A29381;
    PHY                                                                  ;A29382;
    LDA.W #$0000                                                         ;A29383;
    STA.B $30                                                            ;A29386;
    LDX.W $0E54                                                          ;A29388;
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A2938B;
    AND.W #$FFFF                                                         ;A2938F;
    BEQ .notTouchingSamusFromBelow                                       ;A29392;
    LDA.W $0FB0,X                                                        ;A29394;
    CLC                                                                  ;A29397;
    ADC.W $0B58                                                          ;A29398;
    STA.W $0B58                                                          ;A2939B;
    LDA.W #$0001                                                         ;A2939E;
    STA.B $30                                                            ;A293A1;

.notTouchingSamusFromBelow:
    LDA.W $0F7E,X                                                        ;A293A3;
    STA.B $32                                                            ;A293A6;
    LDA.W $0FAE,X                                                        ;A293A8;
    STA.W $0F7E,X                                                        ;A293AB;
    STZ.B $12                                                            ;A293AE;
    LDA.W $0FB0,X                                                        ;A293B0;
    STA.B $14                                                            ;A293B3;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A293B5;
    LDA.W $0FAA,X                                                        ;A293B9;
    TAX                                                                  ;A293BC;
    LDA.W $0FA8,X                                                        ;A293BD;
    CMP.W #Function_MamaTurtle_Asleep                                    ;A293C0;
    BNE .return                                                          ;A293C3;
    LDX.W $0E54                                                          ;A293C5;
    PHX                                                                  ;A293C8;
    LDA.W $0FAA,X                                                        ;A293C9;
    TAX                                                                  ;A293CC;
    LDA.W $0F7A,X                                                        ;A293CD;
    PLX                                                                  ;A293D0;
    SEC                                                                  ;A293D1;
    SBC.W $0F7A,X                                                        ;A293D2;
    PHP                                                                  ;A293D5;
    BPL +                                                                ;A293D6;
    EOR.W #$FFFF                                                         ;A293D8;
    INC A                                                                ;A293DB;

  + CMP.W #$0018                                                         ;A293DC;
    BPL .notOnMama                                                       ;A293DF;
    PLP                                                                  ;A293E1;
    BPL .rightOfMama                                                     ;A293E2;
    CLC                                                                  ;A293E4;
    ADC.W #$0018                                                         ;A293E5;

.rightOfMama:
    ASL A                                                                ;A293E8;
    TAX                                                                  ;A293E9;
    LDA.W SleepingMamaTurtleShellShape,X                                 ;A293EA;

.merge:
    STA.B $14                                                            ;A293ED;
    STZ.B $12                                                            ;A293EF;
    LDX.W $0E54                                                          ;A293F1;
    JSL.L MoveEnemyDownBy_14_12                                          ;A293F4;
    LDA.B $30                                                            ;A293F8;
    BEQ .return                                                          ;A293FA;
    LDA.W $0F7E,X                                                        ;A293FC;
    SEC                                                                  ;A293FF;
    SBC.B $32                                                            ;A29400;
    CLC                                                                  ;A29402;
    ADC.W $0B5C                                                          ;A29403;
    STA.W $0B5C                                                          ;A29406;

.return:
    PLY                                                                  ;A29409;
    PLX                                                                  ;A2940A;
    RTL                                                                  ;A2940B;


.notOnMama:
    PLP                                                                  ;A2940C;
    LDA.W #$0001                                                         ;A2940D;
    BRA .merge                                                           ;A29410;


Instruction_BabyTurtle_LoopOrTurnAroundIfMovedTooFar:
    PHX                                                                  ;A29412;
    LDX.W $0E54                                                          ;A29413;
    LDA.W $0FAC,X                                                        ;A29416;
    SEC                                                                  ;A29419;
    SBC.W $0F7A,X                                                        ;A2941A;
    PHP                                                                  ;A2941D;
    BPL +                                                                ;A2941E;
    EOR.W #$FFFF                                                         ;A29420;
    INC A                                                                ;A29423;

  + CMP.W BabyTurtleConstants_travelDistance                             ;A29424;
    BMI .noTurn                                                          ;A29427;
    PLP                                                                  ;A29429;
    BMI .rightOfSpawn                                                    ;A2942A;
    LDA.W #$0001                                                         ;A2942C;
    BRA +                                                                ;A2942F;


.rightOfSpawn:
    LDA.W #$FFFF                                                         ;A29431;

  + STA.W $0FB0,X                                                        ;A29434;

.merge:
    LDY.W #InstList_BabyTurtle_CrawlingRight                             ;A29437;
    LDA.W $0FB0,X                                                        ;A2943A;
    BPL .return                                                          ;A2943D;
    LDY.W #InstList_BabyTurtle_CrawlingLeft                              ;A2943F;

.return:
    PLX                                                                  ;A29442;
    RTL                                                                  ;A29443;


.noTurn:
    PLP                                                                  ;A29444;
    BRA .merge                                                           ;A29445;


Instruction_MamaTurtle_EnterShell:
    LDX.W $0E54                                                          ;A29447;
    LDA.W #Function_MamaTurtle_EnterShell                                ;A2944A;
    STA.W $0FA8,X                                                        ;A2944D;
    RTL                                                                  ;A29450;


Instruction_MamaTurtle_RiseToHoverRightwards:
    LDX.W $0E54                                                          ;A29451;
    LDA.W #Function_MamaTurtle_RiseToHover                               ;A29454;
    STA.W $0FA8,X                                                        ;A29457;
    LDA.W #$FFFF                                                         ;A2945A;
    STA.W $0FB0,X                                                        ;A2945D;
    LDA.W #$0010                                                         ;A29460;
    STA.L $7E7800,X                                                      ;A29463;
    LDY.W #InstList_MamaTurtle_Spinning                                  ;A29467;
    RTL                                                                  ;A2946A;


Instruction_MamaTurtle_RiseToHoverLeftwards:
    LDX.W $0E54                                                          ;A2946B;
    LDA.W #Function_MamaTurtle_RiseToHover                               ;A2946E;
    STA.W $0FA8,X                                                        ;A29471;
    LDA.W #$0001                                                         ;A29474;
    STA.W $0FB0,X                                                        ;A29477;
    LDA.W #$0010                                                         ;A2947A;
    STA.L $7E7800,X                                                      ;A2947D;
    LDY.W #InstList_MamaTurtle_Spinning                                  ;A29481;
    RTL                                                                  ;A29484;


Instruction_BabyTurtle_LeaveShell:
    PHY                                                                  ;A29485;
    LDX.W $0E54                                                          ;A29486;
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A29489;
    AND.W #$FFFF                                                         ;A2948D;
    BEQ .returnPLY                                                       ;A29490;
    PLY                                                                  ;A29492;
    LDY.W #InstList_BabyTurtle_FacingLeft_LeaveShell                     ;A29493;
    LDA.W $0FB0,X                                                        ;A29496;
    BMI .return                                                          ;A29499;
    LDY.W #InstList_BabyTurtle_FacingRight_LeaveShell                    ;A2949B;

.return:
    RTL                                                                  ;A2949E;


.returnPLY:
    PLY                                                                  ;A2949F;
    RTL                                                                  ;A294A0;


Instruction_BabyTurtle_LeftShell:
    LDX.W $0E54                                                          ;A294A1;
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A294A4;
    AND.W #$FFFF                                                         ;A294A8;
    BEQ .notTouchingSamusFromBelow                                       ;A294AB;
    LDA.W #Function_BabyTurtle_Crawling_CarryingSamus                    ;A294AD;
    STA.W $0FA8,X                                                        ;A294B0;

.chooseDirection:
    LDY.W #InstList_BabyTurtle_CrawlingLeft                              ;A294B3;
    LDA.W $0FB0,X                                                        ;A294B6;
    BMI .return                                                          ;A294B9;
    LDY.W #InstList_BabyTurtle_CrawlingRight                             ;A294BB;

.return:
    RTL                                                                  ;A294BE;


.notTouchingSamusFromBelow:
    LDA.W #Function_BabyTurtle_Crawling_NotCarryingSamus                 ;A294BF;
    STA.W $0FA8,X                                                        ;A294C2;
    BRA .chooseDirection                                                 ;A294C5;


Instruction_BabyTurtle_Set_Spinning_Stoppable:
    LDX.W $0E54                                                          ;A294C7;
    LDA.W #Function_BabyTurtle_Spinning_Stoppable                        ;A294CA;
    STA.W $0FA8,X                                                        ;A294CD;
    RTL                                                                  ;A294D0;


Instruction_MamaTurtle_PlaySpinningSFX:
    LDA.W #$003A                                                         ;A294D1;
    JSL.L QueueSound_Lib2_Max6                                           ;A294D4;
    RTL                                                                  ;A294D8;


Spritemap_BabyTurtle_FacingLeft_0:
    dw $0001                                                             ;A294D9;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $104)

Spritemap_BabyTurtle_FacingLeft_1:
    dw $0001                                                             ;A294E0;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $106)

Spritemap_BabyTurtle_FacingLeft_2:
    dw $0001                                                             ;A294E7;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $108)

Spritemap_BabyTurtle_FacingLeft_3:
    dw $0001                                                             ;A294EE;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $10A)

Spritemap_BabyTurtle_FacingLeft_4:
    dw $0002                                                             ;A294F5;
    %spritemapEntry(0, $1F8, $FF, 0, 0, 2, 0, $14D)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $106)

Spritemap_BabyTurtle_FacingLeft_5:
    dw $0002                                                             ;A29501;
    %spritemapEntry(0, $1F8, $00, 0, 0, 2, 0, $14E)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $108)

Spritemap_BabyTurtle_FacingLeft_6:
    dw $0002                                                             ;A2950D;
    %spritemapEntry(0, $1F8, $FF, 0, 0, 2, 0, $14F)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $10A)

Spritemap_BabyTurtle_FacingLeft_7:
    dw $0001                                                             ;A29519;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $102)

Spritemap_BabyTurtle_FacingLeft_8:
    dw $0001                                                             ;A29520;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $100)

Spritemap_BabyTurtle_FacingLeft_9:
    dw $0001                                                             ;A29527;
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $102)

Spritemap_BabyTurtle_FacingLeft_A:
    dw $0001                                                             ;A2952E;
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $100)

Spritemap_MamaTurtle_FacingLeft_0:
    dw $0006                                                             ;A29535;
    %spritemapEntry(1, $4208, $00, 0, 0, 2, 0, $12A)
    %spritemapEntry(1, $43F8, $00, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $43E8, $00, 0, 0, 2, 0, $126)
    %spritemapEntry(1, $4208, $F0, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F0, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $43E8, $F0, 0, 0, 2, 0, $120)

Spritemap_MamaTurtle_FacingLeft_1:
    dw $000E                                                             ;A29555;
    %spritemapEntry(0, $08, $08, 0, 0, 2, 0, $14B)
    %spritemapEntry(0, $00, $08, 0, 0, 2, 0, $14A)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 0, $149)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 0, $148)
    %spritemapEntry(0, $1E8, $08, 0, 0, 2, 0, $157)
    %spritemapEntry(0, $1E8, $00, 0, 0, 2, 0, $147)
    %spritemapEntry(0, $10, $00, 0, 0, 2, 0, $12B)
    %spritemapEntry(0, $08, $00, 0, 0, 2, 0, $12A)
    %spritemapEntry(0, $00, $00, 0, 0, 2, 0, $129)
    %spritemapEntry(0, $1F8, $00, 0, 0, 2, 0, $128)
    %spritemapEntry(0, $1F0, $00, 0, 0, 2, 0, $127)
    %spritemapEntry(1, $4208, $F0, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F0, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $43E8, $F0, 0, 0, 2, 0, $120)

Spritemap_MamaTurtle_FacingLeft_2:
    dw $000E                                                             ;A2959D;
    %spritemapEntry(0, $08, $08, 0, 0, 2, 0, $15B)
    %spritemapEntry(0, $00, $08, 0, 0, 2, 0, $15A)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 0, $159)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 0, $158)
    %spritemapEntry(0, $1E8, $08, 0, 0, 2, 0, $156)
    %spritemapEntry(0, $1E8, $00, 0, 0, 2, 0, $146)
    %spritemapEntry(0, $10, $00, 0, 0, 2, 0, $12B)
    %spritemapEntry(0, $08, $00, 0, 0, 2, 0, $12A)
    %spritemapEntry(0, $00, $00, 0, 0, 2, 0, $129)
    %spritemapEntry(0, $1F8, $00, 0, 0, 2, 0, $128)
    %spritemapEntry(0, $1F0, $00, 0, 0, 2, 0, $127)
    %spritemapEntry(1, $4208, $F0, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F0, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $43E8, $F0, 0, 0, 2, 0, $120)

Spritemap_MamaTurtle_FacingLeft_3:
    dw $000B                                                             ;A295E5;
    %spritemapEntry(1, $4201, $01, 0, 0, 2, 0, $144)
    %spritemapEntry(1, $43F3, $00, 0, 0, 2, 0, $142)
    %spritemapEntry(1, $43E8, $01, 0, 0, 2, 0, $140)
    %spritemapEntry(1, $4208, $FB, 0, 0, 2, 0, $12A)
    %spritemapEntry(1, $420C, $01, 0, 0, 2, 0, $12E)
    %spritemapEntry(1, $43DD, $FA, 0, 0, 2, 0, $12C)
    %spritemapEntry(1, $43F8, $FB, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $43E8, $FB, 0, 0, 2, 0, $126)
    %spritemapEntry(1, $4208, $EB, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $EB, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $43E8, $EB, 0, 0, 2, 0, $120)

Spritemap_MamaTurtle_FacingLeft_4:
    dw $000B                                                             ;A2961E;
    %spritemapEntry(1, $4201, $00, 0, 0, 2, 0, $142)
    %spritemapEntry(1, $43EF, $01, 0, 0, 2, 0, $140)
    %spritemapEntry(1, $43EA, $00, 0, 0, 2, 0, $142)
    %spritemapEntry(1, $4208, $FA, 0, 0, 2, 0, $12A)
    %spritemapEntry(1, $420B, $01, 0, 0, 2, 0, $12E)
    %spritemapEntry(1, $43DD, $FB, 0, 0, 2, 0, $12C)
    %spritemapEntry(1, $43F8, $FA, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $43E8, $FA, 0, 0, 2, 0, $126)
    %spritemapEntry(1, $4208, $EA, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $EA, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $43E8, $EA, 0, 0, 2, 0, $120)

Spritemap_MamaTurtle_FacingLeft_5:
    dw $000B                                                             ;A29657;
    %spritemapEntry(1, $43FF, $01, 0, 0, 2, 0, $140)
    %spritemapEntry(1, $43F3, $00, 0, 0, 2, 0, $142)
    %spritemapEntry(1, $43EA, $01, 0, 0, 2, 0, $144)
    %spritemapEntry(1, $4208, $F9, 0, 0, 2, 0, $12A)
    %spritemapEntry(1, $420C, $01, 0, 0, 2, 0, $12E)
    %spritemapEntry(1, $43DD, $FC, 0, 0, 2, 0, $12C)
    %spritemapEntry(1, $43F8, $F9, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $43E8, $F9, 0, 0, 2, 0, $126)
    %spritemapEntry(1, $4208, $E9, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $E9, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $43E8, $E9, 0, 0, 2, 0, $120)

Spritemap_MamaTurtle_FacingLeft_6:
    dw $000B                                                             ;A29690;
    %spritemapEntry(1, $4201, $00, 0, 0, 2, 0, $142)
    %spritemapEntry(1, $43F3, $01, 0, 0, 2, 0, $144)
    %spritemapEntry(1, $43EA, $00, 0, 0, 2, 0, $142)
    %spritemapEntry(1, $4208, $FA, 0, 0, 2, 0, $12A)
    %spritemapEntry(1, $420D, $01, 0, 0, 2, 0, $12E)
    %spritemapEntry(1, $43DD, $FB, 0, 0, 2, 0, $12C)
    %spritemapEntry(1, $43F8, $FA, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $43E8, $FA, 0, 0, 2, 0, $126)
    %spritemapEntry(1, $4208, $EA, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $EA, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $43E8, $EA, 0, 0, 2, 0, $120)

Spritemap_MamaTurtle_FacingLeft_7:
    dw $0006                                                             ;A296C9;
    %spritemapEntry(1, $43E8, $00, 0, 1, 2, 0, $12A)
    %spritemapEntry(1, $43F8, $00, 0, 1, 2, 0, $128)
    %spritemapEntry(1, $4208, $00, 0, 1, 2, 0, $126)
    %spritemapEntry(1, $43E8, $F0, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F0, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $4208, $F0, 0, 1, 2, 0, $120)

Spritemap_MamaTurtle_FacingLeft_8:
    dw $0004                                                             ;A296E9;
    %spritemapEntry(1, $4200, $00, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $4200, $F0, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $43F0, $00, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 2, 0, $10C)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_MamaTurtle_FacingLeft_A296FF:
    dw $000A                                                             ;A296FF;
    %spritemapEntry(0, $00, $08, 0, 1, 2, 0, $15F)
    %spritemapEntry(0, $00, $00, 0, 1, 2, 0, $15E)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 0, $15F)
    %spritemapEntry(0, $1F8, $00, 0, 0, 2, 0, $15E)
    %spritemapEntry(1, $4206, $00, 0, 1, 2, 0, $140)
    %spritemapEntry(1, $43EA, $00, 0, 0, 2, 0, $140)
    %spritemapEntry(1, $4200, $FA, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $43F0, $FA, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $4200, $EA, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $43F0, $EA, 0, 0, 2, 0, $10C)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_BabyTurtle_FacingRight_B:
    dw $0001                                                             ;A29733;
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $104)

Spritemap_BabyTurtle_FacingRight_C:
    dw $0001                                                             ;A2973A;
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $106)

Spritemap_BabyTurtle_FacingRight_D:
    dw $0001                                                             ;A29741;
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $108)

Spritemap_BabyTurtle_FacingRight_E:
    dw $0001                                                             ;A29748;
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $10A)

Spritemap_BabyTurtle_FacingRight_F:
    dw $0002                                                             ;A2974F;
    %spritemapEntry(0, $00, $FF, 0, 1, 2, 0, $14D)
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $106)

Spritemap_BabyTurtle_FacingRight_10:
    dw $0002                                                             ;A2975B;
    %spritemapEntry(0, $00, $00, 0, 1, 2, 0, $14E)
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $108)

Spritemap_BabyTurtle_FacingRight_11:
    dw $0002                                                             ;A29767;
    %spritemapEntry(0, $00, $FF, 0, 1, 2, 0, $14F)
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $10A)

Spritemap_BabyTurtle_FacingRight_12:
    dw $0001                                                             ;A29773;
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $102)

Spritemap_BabyTurtle_FacingRight_13:
    dw $0001                                                             ;A2977A;
    %spritemapEntry(1, $43F8, $F8, 0, 1, 2, 0, $100)

Spritemap_BabyTurtle_FacingRight_14:
    dw $0001                                                             ;A29781;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $102)

Spritemap_BabyTurtle_FacingRight_15:
    dw $0001                                                             ;A29788;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $100)

Spritemap_MamaTurtle_FacingRight_9:
    dw $0006                                                             ;A2978F;
    %spritemapEntry(1, $43E8, $00, 0, 1, 2, 0, $12A)
    %spritemapEntry(1, $43F8, $00, 0, 1, 2, 0, $128)
    %spritemapEntry(1, $4208, $00, 0, 1, 2, 0, $126)
    %spritemapEntry(1, $43E8, $F0, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F0, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $4208, $F0, 0, 1, 2, 0, $120)

Spritemap_MamaTurtle_FacingRight_A:
    dw $000E                                                             ;A297AF;
    %spritemapEntry(0, $1F0, $08, 0, 1, 2, 0, $14B)
    %spritemapEntry(0, $1F8, $08, 0, 1, 2, 0, $14A)
    %spritemapEntry(0, $00, $08, 0, 1, 2, 0, $149)
    %spritemapEntry(0, $08, $08, 0, 1, 2, 0, $148)
    %spritemapEntry(0, $10, $08, 0, 1, 2, 0, $157)
    %spritemapEntry(0, $10, $00, 0, 1, 2, 0, $147)
    %spritemapEntry(0, $1E8, $00, 0, 1, 2, 0, $12B)
    %spritemapEntry(0, $1F0, $00, 0, 1, 2, 0, $12A)
    %spritemapEntry(0, $1F8, $00, 0, 1, 2, 0, $129)
    %spritemapEntry(0, $00, $00, 0, 1, 2, 0, $128)
    %spritemapEntry(0, $08, $00, 0, 1, 2, 0, $127)
    %spritemapEntry(1, $43E8, $F0, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F0, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $4208, $F0, 0, 1, 2, 0, $120)

Spritemap_MamaTurtle_FacingRight_B:
    dw $000E                                                             ;A297F7;
    %spritemapEntry(0, $1F0, $08, 0, 1, 2, 0, $15B)
    %spritemapEntry(0, $1F8, $08, 0, 1, 2, 0, $15A)
    %spritemapEntry(0, $00, $08, 0, 1, 2, 0, $159)
    %spritemapEntry(0, $08, $08, 0, 1, 2, 0, $158)
    %spritemapEntry(0, $10, $08, 0, 1, 2, 0, $156)
    %spritemapEntry(0, $10, $00, 0, 1, 2, 0, $146)
    %spritemapEntry(0, $1E8, $00, 0, 1, 2, 0, $12B)
    %spritemapEntry(0, $1F0, $00, 0, 1, 2, 0, $12A)
    %spritemapEntry(0, $1F8, $00, 0, 1, 2, 0, $129)
    %spritemapEntry(0, $00, $00, 0, 1, 2, 0, $128)
    %spritemapEntry(0, $08, $00, 0, 1, 2, 0, $127)
    %spritemapEntry(1, $43E8, $F0, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F0, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $4208, $F0, 0, 1, 2, 0, $120)

Spritemap_MamaTurtle_FacingRight_C:
    dw $000B                                                             ;A2983F;
    %spritemapEntry(1, $43EF, $01, 0, 1, 2, 0, $144)
    %spritemapEntry(1, $43FD, $00, 0, 1, 2, 0, $142)
    %spritemapEntry(1, $4208, $01, 0, 1, 2, 0, $140)
    %spritemapEntry(1, $43E8, $FB, 0, 1, 2, 0, $12A)
    %spritemapEntry(1, $43E4, $01, 0, 1, 2, 0, $12E)
    %spritemapEntry(1, $4213, $FA, 0, 1, 2, 0, $12C)
    %spritemapEntry(1, $43F8, $FB, 0, 1, 2, 0, $128)
    %spritemapEntry(1, $4208, $FB, 0, 1, 2, 0, $126)
    %spritemapEntry(1, $43E8, $EB, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $EB, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $4208, $EB, 0, 1, 2, 0, $120)

Spritemap_MamaTurtle_FacingRight_D:
    dw $000B                                                             ;A29878;
    %spritemapEntry(1, $43EF, $00, 0, 1, 2, 0, $142)
    %spritemapEntry(1, $4201, $01, 0, 1, 2, 0, $140)
    %spritemapEntry(1, $4206, $00, 0, 1, 2, 0, $142)
    %spritemapEntry(1, $43E8, $FA, 0, 1, 2, 0, $12A)
    %spritemapEntry(1, $43E5, $01, 0, 1, 2, 0, $12E)
    %spritemapEntry(1, $4213, $FB, 0, 1, 2, 0, $12C)
    %spritemapEntry(1, $43F8, $FA, 0, 1, 2, 0, $128)
    %spritemapEntry(1, $4208, $FA, 0, 1, 2, 0, $126)
    %spritemapEntry(1, $43E8, $EA, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $EA, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $4208, $EA, 0, 1, 2, 0, $120)

Spritemap_MamaTurtle_FacingRight_E:
    dw $000B                                                             ;A298B1;
    %spritemapEntry(1, $43F1, $01, 0, 1, 2, 0, $140)
    %spritemapEntry(1, $43FD, $00, 0, 1, 2, 0, $142)
    %spritemapEntry(1, $4206, $01, 0, 1, 2, 0, $144)
    %spritemapEntry(1, $43E8, $F9, 0, 1, 2, 0, $12A)
    %spritemapEntry(1, $43E4, $01, 0, 1, 2, 0, $12E)
    %spritemapEntry(1, $4213, $FC, 0, 1, 2, 0, $12C)
    %spritemapEntry(1, $43F8, $F9, 0, 1, 2, 0, $128)
    %spritemapEntry(1, $4208, $F9, 0, 1, 2, 0, $126)
    %spritemapEntry(1, $43E8, $E9, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $E9, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $4208, $E9, 0, 1, 2, 0, $120)

Spritemap_MamaTurtle_FacingRight_F:
    dw $000B                                                             ;A298EA;
    %spritemapEntry(1, $43EF, $00, 0, 1, 2, 0, $142)
    %spritemapEntry(1, $43FD, $01, 0, 1, 2, 0, $144)
    %spritemapEntry(1, $4206, $00, 0, 1, 2, 0, $142)
    %spritemapEntry(1, $43E8, $FA, 0, 1, 2, 0, $12A)
    %spritemapEntry(1, $43E3, $01, 0, 1, 2, 0, $12E)
    %spritemapEntry(1, $4213, $FB, 0, 1, 2, 0, $12C)
    %spritemapEntry(1, $43F8, $FA, 0, 1, 2, 0, $128)
    %spritemapEntry(1, $4208, $FA, 0, 1, 2, 0, $126)
    %spritemapEntry(1, $43E8, $EA, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $43F8, $EA, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $4208, $EA, 0, 1, 2, 0, $120)

Spritemap_MamaTurtle_FacingRight_10:
    dw $0006                                                             ;A29923;
    %spritemapEntry(1, $4208, $00, 0, 0, 2, 0, $12A)
    %spritemapEntry(1, $43F8, $00, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $43E8, $00, 0, 0, 2, 0, $126)
    %spritemapEntry(1, $4208, $F0, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $43F8, $F0, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $43E8, $F0, 0, 0, 2, 0, $120)

Spritemap_MamaTurtle_FacingRight_11:
    dw $0004                                                             ;A29943;
    %spritemapEntry(1, $43F0, $00, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $43F0, $F0, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $4200, $00, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $4200, $F0, 0, 1, 2, 0, $10C)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_MamaTurtle_FacingRight_A29959:
    dw $000A                                                             ;A29959;
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 0, $15F)
    %spritemapEntry(0, $1F8, $00, 0, 0, 2, 0, $15E)
    %spritemapEntry(0, $00, $08, 0, 1, 2, 0, $15F)
    %spritemapEntry(0, $00, $00, 0, 1, 2, 0, $15E)
    %spritemapEntry(1, $43EA, $00, 0, 0, 2, 0, $140)
    %spritemapEntry(1, $4206, $00, 0, 1, 2, 0, $140)
    %spritemapEntry(1, $43F0, $FA, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $4200, $FA, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $43F0, $EA, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $4200, $EA, 0, 1, 2, 0, $10C)
endif ; !FEATURE_KEEP_UNREFERENCED


Palette_Puyo:
    dw $3800,$4B9C,$2610,$0CC6,$0C63,$42F7,$2A52,$19AD                   ;A2998D;
    dw $0D29,$5617,$3D72,$1C48,$0C05,$033B,$0216,$0113                   ;A2999D;

InstList_Puyo_GroundedDropping_Fast:
    dw $0005,Spritemap_Puyo_0                                            ;A299AD;
    dw $0005,Spritemap_Puyo_1                                            ;A299B1;
    dw $0005,Spritemap_Puyo_2                                            ;A299B5;
    dw $0005,Spritemap_Puyo_1                                            ;A299B9;
    dw Instruction_Common_GotoY                                          ;A299BD;
    dw InstList_Puyo_GroundedDropping_Fast                               ;A299BF;

InstList_Puyo_GroundedDropping_Medium:
    dw $0008,Spritemap_Puyo_0                                            ;A299C1;
    dw $0008,Spritemap_Puyo_1                                            ;A299C5;
    dw $0008,Spritemap_Puyo_2                                            ;A299C9;
    dw $0008,Spritemap_Puyo_1                                            ;A299CD;
    dw Instruction_Common_GotoY                                          ;A299D1;
    dw InstList_Puyo_GroundedDropping_Medium                             ;A299D3;

InstList_Puyo_GroundedDropping_Slow:
    dw $000A,Spritemap_Puyo_0                                            ;A299D5;
    dw $000A,Spritemap_Puyo_1                                            ;A299D9;
    dw $000A,Spritemap_Puyo_2                                            ;A299DD;
    dw $000A,Spritemap_Puyo_1                                            ;A299E1;
    dw Instruction_Common_GotoY                                          ;A299E5;
    dw InstList_Puyo_GroundedDropping_Slow                               ;A299E7;

InstList_Puyo_HoppingRight_0_HoppingLeft_4:
    dw $0001,Spritemap_Puyo_7                                            ;A299E9;
    dw Instruction_Common_Sleep                                          ;A299ED;

InstList_Puyo_HoppingRight_1_HoppingLeft_3:
    dw $0001,Spritemap_Puyo_6                                            ;A299EF;
    dw Instruction_CommonA2_Sleep                                        ;A299F3;

InstList_Puyo_Hopping_2:
    dw $0001,Spritemap_Puyo_5                                            ;A299F5;
    dw Instruction_CommonA2_Sleep                                        ;A299F9;

InstList_Puyo_HoppingRight_3_HoppingLeft_1:
    dw $0001,Spritemap_Puyo_4                                            ;A299FB;
    dw Instruction_CommonA2_Sleep                                        ;A299FF;

InstList_Puyo_HoppingRight_4_HoppingLeft_0:
    dw $0001,Spritemap_Puyo_3                                            ;A29A01;
    dw Instruction_Common_Sleep                                          ;A29A05;

PuyoHopTable:
;        _____________________ 0: Jump height
;       |      _______________ 2: X speed. Unit of 1/100h px/frame
;       |     |      _________ 4: Y speed table index delta. Also used for dropping speed, unit of 1/100h px/frame
;       |     |     |      ___ 6: Airborne function
;       |     |     |     |
  .jumpHeight:
    dw $0010                                                             ;A29A07; 0: Normal - small hop
  .XSpeed:
    dw       $0140                                                       ;A29A09;
  .YSpeedTableIndexDelta:
    dw             $0200                                                 ;A29A0B;
  .airborneFunction:
    dw Function_Puyo_Airborne_Normal_ShortHop                            ;A29A0D;
    dw $0020,$0140,$0200                                                 ;A29A0F; 1: Normal - big hop
    dw Function_Puyo_Airborne_Normal_BigHop                              ;A29A15;
    dw $0020,$0270,$0300                                                 ;A29A17; 2: Unused. Normal - long hop
    dw Function_Puyo_Airborne_Normal_LongHop                             ;A29A1D;
    dw $0080,$0140,$0200                                                 ;A29A1F; 3: Giant hop
    dw Function_Puyo_Airborne_GiantHop                                   ;A29A25;
    dw $0000,$0000,$0100                                                 ;A29A27; 4: Dropping
    dw Function_Puyo_Airborne_Dropping                                   ;A29A2D;
    dw $0010,$0140,$01C0                                                 ;A29A2F; 5: Dropped - small hop
    dw Function_Puyo_Airborne_Dropped                                    ;A29A35;
    dw $0015,$0140,$01C0                                                 ;A29A37; 6: Dropped - big hop
    dw Function_Puyo_Airborne_Dropped                                    ;A29A3D;

InitAI_Puyo:
    LDX.W $0E54                                                          ;A29A3F;
    LDA.W #Spritemap_CommonA2_Nothing                                    ;A29A42;
    STA.W $0F8E,X                                                        ;A29A45;
    STZ.W $0FA8,X                                                        ;A29A48;
    LDA.W #InstList_Puyo_GroundedDropping_Fast                           ;A29A4B;
    JSR.W SetPuyoInstList                                                ;A29A4E;
    LDA.W #$0000                                                         ;A29A51;
    STA.L $7E7800,X                                                      ;A29A54;
    LDA.W #Function_Puyo_Grounded                                        ;A29A58;
    STA.W $0FAE,X                                                        ;A29A5B;
    LDA.W $0FB4,X                                                        ;A29A5E;
    STA.W $0FAC,X                                                        ;A29A61;
    LDA.W #$0000                                                         ;A29A64;
    STA.L $7E7808,X                                                      ;A29A67;
    RTL                                                                  ;A29A6B;


SetPuyoInstList:
    LDX.W $0E54                                                          ;A29A6C;
    STA.W $0F92,X                                                        ;A29A6F;
    LDA.W #$0001                                                         ;A29A72;
    STA.W $0F94,X                                                        ;A29A75;
    STZ.W $0F90,X                                                        ;A29A78;
    RTS                                                                  ;A29A7B;


RTS_A29A7C:
    RTS                                                                  ;A29A7C;


MainAI_Puyo:
    LDX.W $0E54                                                          ;A29A7D;
    JSR.W ($0FAE,X)                                                      ;A29A80;
    RTL                                                                  ;A29A83;


InitiateHop:
    LDA.L $7E7800,X                                                      ;A29A84;
    CMP.W #$0003                                                         ;A29A88;
    BPL .hop                                                             ;A29A8B;
    JSR.W Puyo_CheckIfSamusIsInProximity                                 ;A29A8D;
    LDA.L $7E7800,X                                                      ;A29A90;

.hop:
    JSR.W ChooseHopType                                                  ;A29A94;
    JSR.W Puyo_CalculateInitialHopSpeed                                  ;A29A97;
    RTS                                                                  ;A29A9A;


Puyo_CheckIfSamusIsInProximity:
    LDX.W $0E54                                                          ;A29A9B;
    LDA.W $0FB6,X                                                        ;A29A9E;
    JSL.L IsSamusWithinAPixelColumnsOfEnemy                              ;A29AA1;
    STA.L $7E7800,X                                                      ;A29AA5;
    RTS                                                                  ;A29AA9;


ChooseHopType:
    LDX.W $0E54                                                          ;A29AAA;
    LDA.W #$0001                                                         ;A29AAD;
    STA.L $7E7804,X                                                      ;A29AB0;
    JSL.L Get_SamusX_minus_EnemyX                                        ;A29AB4;
    BMI .checkInverted                                                   ;A29AB8;
    LDA.W #$0000                                                         ;A29ABA;
    STA.L $7E7804,X                                                      ;A29ABD;

.checkInverted:
    LDA.L $7E7808,X                                                      ;A29AC1;
    BEQ .notInverted                                                     ;A29AC5;
    LDA.L $7E780A,X                                                      ;A29AC7;
    STA.L $7E7804,X                                                      ;A29ACB;

.notInverted:
    LDA.W #$0000                                                         ;A29ACF;
    STA.L $7E7808,X                                                      ;A29AD2;
    JSR.W GetRandomNumber0_7                                             ;A29AD6;
    LDA.L $7E7800,X                                                      ;A29AD9;
    CMP.W #$0003                                                         ;A29ADD;
    BPL .greaterThan2                                                    ;A29AE0;
    CMP.W #$0000                                                         ;A29AE2;
    BNE .nonZeroHopType                                                  ;A29AE5;
    LDA.B $1C                                                            ;A29AE7;
    AND.W #$0001                                                         ;A29AE9;
    STA.B $1C                                                            ;A29AEC;

.nonZeroHopType:
    LDA.B $1C                                                            ;A29AEE;
    CMP.W #$0002                                                         ;A29AF0;
    BMI .greaterThan2                                                    ;A29AF3;
    LDA.W #$0002                                                         ;A29AF5;

.greaterThan2:
    ASL A                                                                ;A29AF8;
    ASL A                                                                ;A29AF9;
    ASL A                                                                ;A29AFA;
    STA.W $0FB2,X                                                        ;A29AFB;
    TAY                                                                  ;A29AFE;
    LDA.W PuyoHopTable_airborneFunction,Y                                ;A29AFF;
    STA.W $0FB0,X                                                        ;A29B02;
    RTS                                                                  ;A29B05;


GetRandomNumber0_7:
    LDX.W $0E54                                                          ;A29B06;
    JSL.L GenerateRandomNumber                                           ;A29B09;
    LDA.W $05E5                                                          ;A29B0D;
    CLC                                                                  ;A29B10;
    ADC.W $0FA4,X                                                        ;A29B11;
    AND.W #$0007                                                         ;A29B14;
    STA.B $1C                                                            ;A29B17;
    RTS                                                                  ;A29B19;


Puyo_CalculateInitialHopSpeed:
    LDX.W $0E54                                                          ;A29B1A;
    LDY.W $0FB2,X                                                        ;A29B1D;
    STZ.B $16                                                            ;A29B20;
    STZ.B $18                                                            ;A29B22;

.loop:
    LDA.B $16                                                            ;A29B24;
    CLC                                                                  ;A29B26;
    ADC.W PuyoHopTable_XSpeed,Y                                          ;A29B27;
    STA.B $16                                                            ;A29B2A;
    AND.W #$FF00                                                         ;A29B2C;
    XBA                                                                  ;A29B2F;
    ASL A                                                                ;A29B30;
    ASL A                                                                ;A29B31;
    ASL A                                                                ;A29B32;
    TAY                                                                  ;A29B33;
    LDA.B $18                                                            ;A29B34;
    CLC                                                                  ;A29B36;
    ADC.W CommonEnemySpeeds_QuadraticallyIncreasing+1,Y                  ;A29B37;
    STA.B $18                                                            ;A29B3A;
    LDY.W $0FB2,X                                                        ;A29B3C;
    LDA.W PuyoHopTable_jumpHeight,Y                                      ;A29B3F;
    XBA                                                                  ;A29B42;
    CMP.B $18                                                            ;A29B43;
    BPL .loop                                                            ;A29B45;
    LDA.B $16                                                            ;A29B47;
    STA.W $0FAA,X                                                        ;A29B49;
    LDA.W #$0000                                                         ;A29B4C;
    STA.L $7E7806,X                                                      ;A29B4F;
    LDA.B $16                                                            ;A29B53;
    LSR A                                                                ;A29B55;
    STA.L $7E780E,X                                                      ;A29B56;
    LSR A                                                                ;A29B5A;
    CLC                                                                  ;A29B5B;
    ADC.L $7E780E,X                                                      ;A29B5C;
    STA.L $7E780C,X                                                      ;A29B60;
    RTS                                                                  ;A29B64;


Function_Puyo_Grounded:
    DEC.W $0FAC,X                                                        ;A29B65;
    BPL .return                                                          ;A29B68;
    LDA.W #Function_Puyo_Airborne                                        ;A29B6A;
    STA.W $0FAE,X                                                        ;A29B6D;
    LDA.W $0FB4,X                                                        ;A29B70;
    STA.W $0FAC,X                                                        ;A29B73;
    LDA.W #$0001                                                         ;A29B76;
    STA.L $7E7802,X                                                      ;A29B79;
    JSR.W InitiateHop                                                    ;A29B7D;

.return:
    RTS                                                                  ;A29B80;


Function_Puyo_Airborne:
    LDX.W $0E54                                                          ;A29B81;
    JSR.W ($0FB0,X)                                                      ;A29B84;
    RTS                                                                  ;A29B87;


PuyoMovement:
    LDX.W $0E54                                                          ;A29B88;
    LDA.W $0FAA,X                                                        ;A29B8B;
    CMP.W #$4000                                                         ;A29B8E;
    BMI +                                                                ;A29B91;
    LDA.W #$4000                                                         ;A29B93;

  + AND.W #$FF00                                                         ;A29B96;
    XBA                                                                  ;A29B99;
    ASL A                                                                ;A29B9A;
    ASL A                                                                ;A29B9B;
    ASL A                                                                ;A29B9C;
    TAY                                                                  ;A29B9D;
    LDA.L $7E7806,X                                                      ;A29B9E;
    BEQ .notFalling                                                      ;A29BA2;
    DEY                                                                  ;A29BA4;
    DEY                                                                  ;A29BA5;
    DEY                                                                  ;A29BA6;
    DEY                                                                  ;A29BA7;

.notFalling:
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing+4,Y                  ;A29BA8;
    STA.B $12                                                            ;A29BAB;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing+6,Y                  ;A29BAD;
    STA.B $14                                                            ;A29BB0;
    CLC                                                                  ;A29BB2;
    JSL.L MoveEnemyDownBy_14_12                                          ;A29BB3;
    BCC .noCollision                                                     ;A29BB7;
    LDA.L $7E7806,X                                                      ;A29BB9;
    BNE .falling                                                         ;A29BBD;
    LDA.B $01                                                            ;A29BBF;
    STA.L $7E7808,X                                                      ;A29BC1;
    LDA.L $7E7804,X                                                      ;A29BC5;
    EOR.W #$0001                                                         ;A29BC9;
    STA.L $7E780A,X                                                      ;A29BCC;
    LDA.W #$0004                                                         ;A29BD0;
    STA.L $7E7800,X                                                      ;A29BD3;
    LDA.W #Function_Puyo_Airborne_Dropping                               ;A29BD7;
    STA.W $0FB0,X                                                        ;A29BDA;
    LDA.W #$0000                                                         ;A29BDD;
    STA.L $7E7802,X                                                      ;A29BE0;
    BRA .gotoReturn                                                      ;A29BE4;


.falling:
    LDA.W #Function_Puyo_Grounded                                        ;A29BE6;
    STA.W $0FAE,X                                                        ;A29BE9;
    LDA.W #$0000                                                         ;A29BEC;
    STA.L $7E7802,X                                                      ;A29BEF;

.gotoReturn:
    JMP .return                                                          ;A29BF3;


.noCollision:
    LDY.W $0FB2,X                                                        ;A29BF5;
    LDA.L $7E7806,X                                                      ;A29BF8;
    BNE ..falling                                                        ;A29BFC;
    JSR.W SetRisingInstList                                              ;A29BFE;
    LDA.W $0FAA,X                                                        ;A29C01;
    SEC                                                                  ;A29C04;
    SBC.W PuyoHopTable_YSpeedTableIndexDelta,Y                           ;A29C05;
    STA.W $0FAA,X                                                        ;A29C08;
    BRA +                                                                ;A29C0B;


..falling:
    JSR.W SetFallingInstList                                             ;A29C0D;
    LDA.W $0FAA,X                                                        ;A29C10;
    CLC                                                                  ;A29C13;
    ADC.W PuyoHopTable_YSpeedTableIndexDelta,Y                           ;A29C14;
    STA.W $0FAA,X                                                        ;A29C17;

  + BPL .positiveIndex                                                   ;A29C1A;
    LDA.W #$0001                                                         ;A29C1C;
    STA.L $7E7806,X                                                      ;A29C1F;
    STZ.W $0FAA,X                                                        ;A29C23;

.positiveIndex:
    LDY.W $0FB2,X                                                        ;A29C26;
    LDA.W PuyoHopTable_XSpeed,Y                                          ;A29C29;
    AND.W #$FF00                                                         ;A29C2C;
    XBA                                                                  ;A29C2F;
    STA.B $14                                                            ;A29C30;
    LDA.W PuyoHopTable_XSpeed,Y
    AND.W #$00FF
    XBA
    STA.B $12                                                            ;A29C32;
    LDA.L $7E7804,X                                                      ;A29C34;
    BEQ .moveRight                                                       ;A29C38;
    LDA.B $14                                                            ;A29C3A;
    EOR.W #$FFFF                                                         ;A29C3C;
    INC A                                                                ;A29C3F;
    STA.B $14                                                            ;A29C40;

.moveRight:
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A29C42;
    BCC .return                                                          ;A29C46;
    LDA.W #$0001                                                         ;A29C48;
    STA.L $7E7808,X                                                      ;A29C4B;
    LDA.L $7E7804,X                                                      ;A29C4F;
    EOR.W #$0001                                                         ;A29C53;
    STA.L $7E780A,X                                                      ;A29C56;
    LDA.W #$0000                                                         ;A29C5A;
    STA.L $7E7802,X                                                      ;A29C5D;
    LDA.W #$0004                                                         ;A29C61;
    STA.L $7E7800,X                                                      ;A29C64;
    LDA.W #Function_Puyo_Airborne_Dropping                               ;A29C68;
    STA.W $0FB0,X                                                        ;A29C6B;
    BRA .return                                                          ;A29C6E; >.<


.return:
    RTS                                                                  ;A29C70;


SetRisingInstList:
    LDX.W $0E54                                                          ;A29C71;
    LDA.L $7E7804,X                                                      ;A29C74;
    BNE .left                                                            ;A29C78;
    LDA.W $0FAA,X                                                        ;A29C7A;
    CMP.L $7E780C,X                                                      ;A29C7D;
    BPL .rightFrame0                                                     ;A29C81;
    CMP.L $7E780E,X                                                      ;A29C83;
    BPL .rightFrame1                                                     ;A29C87;
    BRA .rightFrame2                                                     ;A29C89;


.rightFrame0:
    LDA.W #InstList_Puyo_HoppingRight_0_HoppingLeft_4                    ;A29C8B;
    BRA .return                                                          ;A29C8E;


.rightFrame1:
    LDA.W #InstList_Puyo_HoppingRight_1_HoppingLeft_3                    ;A29C90;
    BRA .return                                                          ;A29C93;


.rightFrame2:
    LDA.W #InstList_Puyo_Hopping_2                                       ;A29C95;
    BRA .return                                                          ;A29C98;


.left:
    LDA.W $0FAA,X                                                        ;A29C9A;
    CMP.L $7E780C,X                                                      ;A29C9D;
    BPL .leftFrame0                                                      ;A29CA1;
    CMP.L $7E780E,X                                                      ;A29CA3;
    BPL .leftFrame1                                                      ;A29CA7;
    BRA .leftFrame2                                                      ;A29CA9;


.leftFrame0:
    LDA.W #InstList_Puyo_HoppingRight_4_HoppingLeft_0                    ;A29CAB;
    BRA .return                                                          ;A29CAE;


.leftFrame1:
    LDA.W #InstList_Puyo_HoppingRight_3_HoppingLeft_1                    ;A29CB0;
    BRA .return                                                          ;A29CB3;


.leftFrame2:
    LDA.W #InstList_Puyo_Hopping_2                                       ;A29CB5;
    BRA .return                                                          ;A29CB8;


.return:
    JSR.W SetPuyoInstList                                                ;A29CBA;
    RTS                                                                  ;A29CBD;


SetFallingInstList:
    LDX.W $0E54                                                          ;A29CBE;
    LDA.L $7E7804,X                                                      ;A29CC1;
    BNE .left                                                            ;A29CC5;
    LDA.W $0FAA,X                                                        ;A29CC7;
    CMP.L $7E780E,X                                                      ;A29CCA;
    BMI .rightFrame2                                                     ;A29CCE;
    CMP.L $7E780C,X                                                      ;A29CD0;
    BMI .rightFrame3                                                     ;A29CD4;
    BRA .rightFrame4                                                     ;A29CD6;


.rightFrame2:
    LDA.W #InstList_Puyo_Hopping_2                                       ;A29CD8;
    BRA .return                                                          ;A29CDB;


.rightFrame3:
    LDA.W #InstList_Puyo_HoppingRight_3_HoppingLeft_1                    ;A29CDD;
    BRA .return                                                          ;A29CE0;


.rightFrame4:
    LDA.W #InstList_Puyo_HoppingRight_4_HoppingLeft_0                    ;A29CE2;
    BRA .return                                                          ;A29CE5;


.left:
    LDA.W $0FAA,X                                                        ;A29CE7;
    CMP.L $7E780E,X                                                      ;A29CEA;
    BMI .leftFrame2                                                      ;A29CEE;
    CMP.L $7E780C,X                                                      ;A29CF0;
    BMI .leftFrame3                                                      ;A29CF4;
    BRA .leftFrame4                                                      ;A29CF6;


.leftFrame2:
    LDA.W #InstList_Puyo_Hopping_2                                       ;A29CF8;
    BRA .return                                                          ;A29CFB;


.leftFrame3:
    LDA.W #InstList_Puyo_HoppingRight_1_HoppingLeft_3                    ;A29CFD;
    BRA .return                                                          ;A29D00;


.leftFrame4:
    LDA.W #InstList_Puyo_HoppingRight_0_HoppingLeft_4                    ;A29D02;
    BRA .return                                                          ;A29D05;


.return:
    JSR.W SetPuyoInstList                                                ;A29D07;
    RTS                                                                  ;A29D0A;


Function_Puyo_Airborne_Normal_ShortHop:
    LDX.W $0E54                                                          ;A29D0B;
    JSR.W PuyoMovement                                                   ;A29D0E;
    LDA.L $7E7808,X                                                      ;A29D11;
    BNE .inverted                                                        ;A29D15;
    LDA.L $7E7802,X                                                      ;A29D17;
    BNE .return                                                          ;A29D1B;

.inverted:
    LDA.W #$0000                                                         ;A29D1D;
    STA.L $7E7802,X                                                      ;A29D20;
    LDA.W #InstList_Puyo_GroundedDropping_Slow                           ;A29D24;
    JSR.W SetPuyoInstList                                                ;A29D27;

.return:
    RTS                                                                  ;A29D2A;


Function_Puyo_Airborne_Normal_BigHop:
    LDX.W $0E54                                                          ;A29D2B;
    JSR.W PuyoMovement                                                   ;A29D2E;
    LDA.L $7E7808,X                                                      ;A29D31;
    BNE .inverted                                                        ;A29D35;
    LDA.L $7E7802,X                                                      ;A29D37;
    BNE .return                                                          ;A29D3B;

.inverted:
    LDA.W #$0000                                                         ;A29D3D;
    STA.L $7E7802,X                                                      ;A29D40;
    LDA.W #InstList_Puyo_GroundedDropping_Medium                         ;A29D44;
    JSR.W SetPuyoInstList                                                ;A29D47;

.return:
    RTS                                                                  ;A29D4A;


Function_Puyo_Airborne_Normal_LongHop:
    LDX.W $0E54                                                          ;A29D4B;
    JSR.W PuyoMovement                                                   ;A29D4E;
    LDA.L $7E7808,X                                                      ;A29D51;
    BNE .inverted                                                        ;A29D55;
    LDA.L $7E7802,X                                                      ;A29D57;
    BNE .return                                                          ;A29D5B;

.inverted:
    LDA.W #$0000                                                         ;A29D5D;
    STA.L $7E7802,X                                                      ;A29D60;
    LDA.W #InstList_Puyo_GroundedDropping_Fast                           ;A29D64;
    JSR.W SetPuyoInstList                                                ;A29D67;

.return:
    RTS                                                                  ;A29D6A;


Function_Puyo_Airborne_GiantHop:
    LDX.W $0E54                                                          ;A29D6B;
    JSR.W PuyoMovement                                                   ;A29D6E;
    LDA.L $7E7808,X                                                      ;A29D71;
    BNE .inverted                                                        ;A29D75;
    LDA.L $7E7802,X                                                      ;A29D77;
    BNE .return                                                          ;A29D7B;
    LDA.W #$0000                                                         ;A29D7D;
    STA.L $7E7800,X                                                      ;A29D80;
    LDA.W #Function_Puyo_Grounded                                        ;A29D84;
    STA.W $0FAE,X                                                        ;A29D87;

.inverted:
    LDA.W #$0000                                                         ;A29D8A;
    STA.L $7E7802,X                                                      ;A29D8D;
    LDA.W #InstList_Puyo_GroundedDropping_Slow                           ;A29D91;
    JSR.W SetPuyoInstList                                                ;A29D94;

.return:
    RTS                                                                  ;A29D97;


Function_Puyo_Airborne_Dropping:
    LDX.W $0E54                                                          ;A29D98;
    LDY.W $0FB2,X                                                        ;A29D9B;
    LDA.W PuyoHopTable_YSpeedTableIndexDelta,Y                           ;A29D9E;
    AND.W #$FF00                                                         ;A29DA1;
    XBA                                                                  ;A29DA4;
    STA.B $14                                                            ;A29DA5;
    LDA.W PuyoHopTable_YSpeedTableIndexDelta,Y                           ;A29DA7;
    AND.W #$00FF                                                         ;A29DAA;
    XBA                                                                  ;A29DAD;
    STA.B $12                                                            ;A29DAE;
    JSL.L MoveEnemyDownBy_14_12                                          ;A29DB0;
    BCC .return                                                          ;A29DB4;
    JSR.W GetRandomNumber0_7                                             ;A29DB6;
    LDA.B $1C                                                            ;A29DB9;
    AND.W #$0001                                                         ;A29DBB;
    CLC                                                                  ;A29DBE;
    ADC.W #$0005                                                         ;A29DBF;
    STA.L $7E7800,X                                                      ;A29DC2;
    LDA.W #Function_Puyo_Grounded                                        ;A29DC6;
    STA.W $0FAE,X                                                        ;A29DC9;

.return:
    RTS                                                                  ;A29DCC;


Function_Puyo_Airborne_Dropped:
    LDX.W $0E54                                                          ;A29DCD;
    JSR.W PuyoMovement                                                   ;A29DD0;
    LDA.L $7E7802,X                                                      ;A29DD3;
    BNE .return                                                          ;A29DD7;
    LDA.W #$0000                                                         ;A29DD9;
    STA.L $7E7802,X                                                      ;A29DDC;
    LDA.W #$0003                                                         ;A29DE0;
    STA.L $7E7800,X                                                      ;A29DE3;
    LDA.W #Function_Puyo_Grounded                                        ;A29DE7;
    STA.W $0FAE,X                                                        ;A29DEA;
    LDA.W #InstList_Puyo_GroundedDropping_Slow                           ;A29DED;
    JSR.W SetPuyoInstList                                                ;A29DF0;

.return:
    RTS                                                                  ;A29DF3;


RTL_A29DF4:
    RTL                                                                  ;A29DF4;


RTL_A29DF5:
    RTL                                                                  ;A29DF5;


Spritemap_Puyo_0:
    dw $0002                                                             ;A29DF6;
    %spritemapEntry(0, $00, $FC, 0, 1, 2, 0, $100)
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 0, $100)

Spritemap_Puyo_1:
    dw $0002                                                             ;A29E02;
    %spritemapEntry(0, $00, $FC, 0, 1, 2, 0, $101)
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 0, $101)

Spritemap_Puyo_2:
    dw $0002                                                             ;A29E0E;
    %spritemapEntry(0, $00, $FC, 0, 1, 2, 0, $102)
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 0, $102)

Spritemap_Puyo_3:
    dw $0002                                                             ;A29E1A;
    %spritemapEntry(0, $00, $FC, 0, 0, 2, 0, $108)
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 0, $107)

Spritemap_Puyo_4:
    dw $0003                                                             ;A29E26;
    %spritemapEntry(0, $04, $FC, 0, 0, 2, 0, $10B)
    %spritemapEntry(0, $1FC, $FC, 0, 0, 2, 0, $10A)
    %spritemapEntry(0, $1F4, $FC, 0, 0, 2, 0, $109)

Spritemap_Puyo_5:
    dw $0004                                                             ;A29E37;
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $10F)
    %spritemapEntry(0, $00, $FC, 0, 0, 2, 0, $10E)
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 0, $10D)
    %spritemapEntry(0, $1F0, $FC, 0, 0, 2, 0, $10C)

Spritemap_Puyo_6:
    dw $0003                                                             ;A29E4D;
    %spritemapEntry(0, $1F4, $FC, 0, 1, 2, 0, $10B)
    %spritemapEntry(0, $1FC, $FC, 0, 1, 2, 0, $10A)
    %spritemapEntry(0, $04, $FC, 0, 1, 2, 0, $109)

Spritemap_Puyo_7:
    dw $0002                                                             ;A29E5E;
    %spritemapEntry(0, $1F8, $FC, 0, 1, 2, 0, $108)
    %spritemapEntry(0, $00, $FC, 0, 1, 2, 0, $107)

Palette_Cacatac:
    dw $3800,$3F57,$2E4D,$00E2,$0060,$3AB0,$220B,$1166                   ;A29E6A;
    dw $0924,$57FF,$42F7,$2610,$158C,$017F,$0016,$300A                   ;A29E7A;

InstList_Cacatac_UpsideUp_Idling:
    dw Instruction_Cacatac_SetFunction_MovingLeftRight                   ;A29E8A;
    dw $0006,Spritemap_Cacatac_0                                         ;A29E8C;
    dw $0006,Spritemap_Cacatac_1                                         ;A29E90;
    dw $0006,Spritemap_Cacatac_2                                         ;A29E94;
    dw $0006,Spritemap_Cacatac_3                                         ;A29E98;
    dw $0006,Spritemap_Cacatac_4                                         ;A29E9C;
    dw $0006,Spritemap_Cacatac_5                                         ;A29EA0;
    dw $0006,Spritemap_Cacatac_6                                         ;A29EA4;
    dw $0006,Spritemap_Cacatac_7                                         ;A29EA8;
    dw Instruction_Common_GotoY                                          ;A29EAC;
    dw InstList_Cacatac_UpsideUp_Idling                                  ;A29EAE;

InstList_Cacatac_UpsideUp_Attacking:
    dw $0011,Spritemap_Cacatac_0                                         ;A29EB0;
    dw $0004,Spritemap_Cacatac_8                                         ;A29EB4;
    dw $0011,Spritemap_Cacatac_9                                         ;A29EB8;
    dw $0004,Spritemap_Cacatac_8                                         ;A29EBC;
    dw Instruction_Cacatac_PlaySpikesSFX                                 ;A29EC0;
    dw Instruction_Cacatac_SpawnSpikeProjectileWithParameterInY,$0000    ;A29EC2;
    dw Instruction_Cacatac_SpawnSpikeProjectileWithParameterInY,$000C    ;A29EC6;
    dw Instruction_Cacatac_SpawnSpikeProjectileWithParameterInY,$0002    ;A29ECA;
    dw Instruction_Cacatac_SpawnSpikeProjectileWithParameterInY,$000E    ;A29ECE;
    dw Instruction_Cacatac_SpawnSpikeProjectileWithParameterInY,$0004    ;A29ED2;
    dw Instruction_CommonA2_GotoY                                        ;A29ED6;
    dw InstList_Cacatac_UpsideUp_Idling                                  ;A29ED8;

InstList_Cacatac_UpsideDown_Idling_0:
    dw Instruction_Cacatac_SetFunction_MovingLeftRight                   ;A29EDA;

InstList_Cacatac_UpsideDown_Idling_1:
    dw $0006,Spritemap_Cacatac_A                                         ;A29EDC;
    dw $0006,Spritemap_Cacatac_B                                         ;A29EE0;
    dw $0006,Spritemap_Cacatac_C                                         ;A29EE4;
    dw $0006,Spritemap_Cacatac_D                                         ;A29EE8;
    dw $0006,Spritemap_Cacatac_E                                         ;A29EEC;
    dw $0006,Spritemap_Cacatac_F                                         ;A29EF0;
    dw $0006,Spritemap_Cacatac_10                                        ;A29EF4;
    dw $0006,Spritemap_Cacatac_11                                        ;A29EF8;
    dw Instruction_Common_GotoY                                          ;A29EFC;
    dw InstList_Cacatac_UpsideDown_Idling_1                              ;A29EFE;

InstList_Cacatac_UpsideDown_Attacking:
    dw $0011,Spritemap_Cacatac_A                                         ;A29F00;
    dw $0004,Spritemap_Cacatac_12                                        ;A29F04;
    dw $0011,Spritemap_Cacatac_13                                        ;A29F08;
    dw $0004,Spritemap_Cacatac_12                                        ;A29F0C;
    dw Instruction_Cacatac_PlaySpikesSFX                                 ;A29F10;
    dw Instruction_Cacatac_SpawnSpikeProjectileWithParameterInY,$0006    ;A29F12;
    dw Instruction_Cacatac_SpawnSpikeProjectileWithParameterInY,$0010    ;A29F16;
    dw Instruction_Cacatac_SpawnSpikeProjectileWithParameterInY,$0008    ;A29F1A;
    dw Instruction_Cacatac_SpawnSpikeProjectileWithParameterInY,$0012    ;A29F1E;
    dw Instruction_Cacatac_SpawnSpikeProjectileWithParameterInY,$000A    ;A29F22;
    dw Instruction_CommonA2_GotoY                                        ;A29F26;
    dw InstList_Cacatac_UpsideDown_Idling_0                              ;A29F28;

Instruction_Cacatac_PlaySpikesSFX:
    PHX                                                                  ;A29F2A;
    PHY                                                                  ;A29F2B;
    LDA.W #$0034                                                         ;A29F2C;
    JSL.L QueueSound_Lib2_Max6                                           ;A29F2F;
    PLY                                                                  ;A29F33;
    PLX                                                                  ;A29F34;
    RTL                                                                  ;A29F35;


CacatacMaxTravelDistances:
; Indexed by enemy parameter 2 low
    dw $0010,$0040,$0050,$0060,$0070,$0080                               ;A29F36;

CacatacFunctionPointers:
; Indexed by enemy parameter 1 low
    dw Function_Cacatac_MovingLeft                                       ;A29F42;
    dw Function_Cacatac_MovingRight                                      ;A29F44;
    dw RTS_A2A01B                                                        ;A29F46;

InitAI_Cacatac:
    LDX.W $0E54                                                          ;A29F48;
    LDA.W #Spritemap_CommonA2_Nothing                                    ;A29F4B;
    STA.W $0F8E,X                                                        ;A29F4E;
    LDA.W $0FB5,X                                                        ;A29F51;
    AND.W #$00FF                                                         ;A29F54;
    BEQ .upsideDown                                                      ;A29F57;
    JSR.W SetCacatacInstList_UpsideUp_Idling                             ;A29F59;
    BRA +                                                                ;A29F5C;


.upsideDown:
    JSR.W SetCacatacInstList_UpsideDown_Idling                           ;A29F5E;

  + LDA.W $0FB4,X                                                        ;A29F61;
    AND.W #$00FF                                                         ;A29F64;
    STA.W $0FB0,X                                                        ;A29F67;
    ASL A                                                                ;A29F6A;
    TAY                                                                  ;A29F6B;
    LDA.W CacatacFunctionPointers,Y                                      ;A29F6C;
    STA.W $0FB2,X                                                        ;A29F6F;
    LDA.W $0FB6,X                                                        ;A29F72;
    AND.W #$00FF                                                         ;A29F75;
    ASL A                                                                ;A29F78;
    TAY                                                                  ;A29F79;
    LDA.W $0F7A,X                                                        ;A29F7A;
    CLC                                                                  ;A29F7D;
    ADC.W CacatacMaxTravelDistances,Y                                    ;A29F7E;
    STA.L $7E7802,X                                                      ;A29F81;
    LDA.W $0F7A,X                                                        ;A29F85;
    SEC                                                                  ;A29F88;
    SBC.W CacatacMaxTravelDistances,Y                                    ;A29F89;
    STA.L $7E7800,X                                                      ;A29F8C;
    LDA.W $0FB7,X                                                        ;A29F90;
    AND.W #$00FF                                                         ;A29F93;
    ASL A                                                                ;A29F96;
    ASL A                                                                ;A29F97;
    ASL A                                                                ;A29F98;
    TAY                                                                  ;A29F99;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A29F9A;
    STA.W $0FAA,X                                                        ;A29F9D;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A29FA0;
    STA.W $0FA8,X                                                        ;A29FA3;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+4,Y                       ;A29FA6;
    STA.W $0FAE,X                                                        ;A29FA9;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+6,Y                       ;A29FAC;
    STA.W $0FAC,X                                                        ;A29FAF;
    RTL                                                                  ;A29FB2;


MainAI_Cacatac:
    LDX.W $0E54                                                          ;A29FB3;
    JSR.W ($0FB2,X)                                                      ;A29FB6;
    RTL                                                                  ;A29FB9;


Function_Cacatac_MovingLeft:
    LDX.W $0E54                                                          ;A29FBA;
    LDA.W $0F7C,X                                                        ;A29FBD;
    CLC                                                                  ;A29FC0;
    ADC.W $0FAC,X                                                        ;A29FC1;
    BCC +                                                                ;A29FC4;
    INC.W $0F7A,X                                                        ;A29FC6;

  + STA.W $0F7C,X                                                        ;A29FC9;
    LDA.W $0F7A,X                                                        ;A29FCC;
    CLC                                                                  ;A29FCF;
    ADC.W $0FAE,X                                                        ;A29FD0;
    STA.W $0F7A,X                                                        ;A29FD3;
    CMP.L $7E7800,X                                                      ;A29FD6;
    BPL .attack                                                          ;A29FDA;
    LDA.W #Function_Cacatac_MovingRight                                  ;A29FDC;
    STA.W $0FB2,X                                                        ;A29FDF;
    LDA.W #$0001                                                         ;A29FE2;
    STA.W $0FB0,X                                                        ;A29FE5;

.attack:
    JSR.W MaybeMakeCacatacAttack                                         ;A29FE8;
    RTS                                                                  ;A29FEB;


Function_Cacatac_MovingRight:
    LDX.W $0E54                                                          ;A29FEC;
    LDA.W $0F7C,X                                                        ;A29FEF;
    CLC                                                                  ;A29FF2;
    ADC.W $0FA8,X                                                        ;A29FF3;
    BCC +                                                                ;A29FF6;
    INC.W $0F7A,X                                                        ;A29FF8;

  + STA.W $0F7C,X                                                        ;A29FFB;
    LDA.W $0F7A,X                                                        ;A29FFE;
    CLC                                                                  ;A2A001;
    ADC.W $0FAA,X                                                        ;A2A002;
    STA.W $0F7A,X                                                        ;A2A005;
    CMP.L $7E7802,X                                                      ;A2A008;
    BMI .attack                                                          ;A2A00C;
    LDA.W #Function_Cacatac_MovingLeft                                   ;A2A00E;
    STA.W $0FB2,X                                                        ;A2A011;
    STZ.W $0FB0,X                                                        ;A2A014;

.attack:
    JSR.W MaybeMakeCacatacAttack                                         ;A2A017;
    RTS                                                                  ;A2A01A;


RTS_A2A01B:
    RTS                                                                  ;A2A01B;


MaybeMakeCacatacAttack:
    LDX.W $0E54                                                          ;A2A01C;
    JSL.L GenerateRandomNumber                                           ;A2A01F;
    LDA.W $05E5                                                          ;A2A023;
    CLC                                                                  ;A2A026;
    ADC.W $0FA4,X                                                        ;A2A027;
    AND.W #$00FF                                                         ;A2A02A;
    CMP.W #$0003                                                         ;A2A02D;
    BPL .return                                                          ;A2A030;
    LDA.W #RTS_A2A01B                                                    ;A2A032;
    STA.W $0FB2,X                                                        ;A2A035;
    LDA.W $0FB5,X                                                        ;A2A038;
    AND.W #$00FF                                                         ;A2A03B;
    BEQ .keepUpsideUp                                                    ;A2A03E;
    JSR.W SetCacatacInstList_UpsideUp_Attacking                          ;A2A040;
    BRA .return                                                          ;A2A043;


.keepUpsideUp:
    JSR.W SetCacatacInstList_UpsideDown_Attacking                        ;A2A045;

.return:
    RTS                                                                  ;A2A048;


SetCacatacInstList_UpsideUp_Idling:
    LDX.W $0E54                                                          ;A2A049;
    LDA.W #InstList_Cacatac_UpsideUp_Idling                              ;A2A04C;
    STA.W $0F92,X                                                        ;A2A04F;
    LDA.W #$0001                                                         ;A2A052;
    STA.W $0F94,X                                                        ;A2A055;
    STZ.W $0F90,X                                                        ;A2A058;
    RTS                                                                  ;A2A05B;


SetCacatacInstList_UpsideUp_Attacking:
    LDX.W $0E54                                                          ;A2A05C;
    LDA.W #InstList_Cacatac_UpsideUp_Attacking                           ;A2A05F;
    STA.W $0F92,X                                                        ;A2A062;
    LDA.W #$0001                                                         ;A2A065;
    STA.W $0F94,X                                                        ;A2A068;
    STZ.W $0F90,X                                                        ;A2A06B;
    RTS                                                                  ;A2A06E;


SetCacatacInstList_UpsideDown_Idling:
    LDX.W $0E54                                                          ;A2A06F;
    LDA.W #InstList_Cacatac_UpsideDown_Idling_0                          ;A2A072;
    STA.W $0F92,X                                                        ;A2A075;
    LDA.W #$0001                                                         ;A2A078;
    STA.W $0F94,X                                                        ;A2A07B;
    STZ.W $0F90,X                                                        ;A2A07E;
    RTS                                                                  ;A2A081;


SetCacatacInstList_UpsideDown_Attacking:
    LDX.W $0E54                                                          ;A2A082;
    LDA.W #InstList_Cacatac_UpsideDown_Attacking                         ;A2A085;
    STA.W $0F92,X                                                        ;A2A088;
    LDA.W #$0001                                                         ;A2A08B;
    STA.W $0F94,X                                                        ;A2A08E;
    STZ.W $0F90,X                                                        ;A2A091;
    RTS                                                                  ;A2A094;


Instruction_Cacatac_SetFunction_MovingLeftRight:
    LDA.W #Function_Cacatac_MovingLeft                                   ;A2A095;
    STA.W $0FB2,X                                                        ;A2A098;
    LDA.W $0FB0,X                                                        ;A2A09B;
    BEQ .return                                                          ;A2A09E;
    LDA.W #Function_Cacatac_MovingRight                                  ;A2A0A0;
    STA.W $0FB2,X                                                        ;A2A0A3;

.return:
    RTL                                                                  ;A2A0A6;


Instruction_Cacatac_SpawnSpikeProjectileWithParameterInY:
    PHY                                                                  ;A2A0A7;
    LDA.W $0000,Y                                                        ;A2A0A8;
    LDX.W $0E54                                                          ;A2A0AB;
    LDY.W #EnemyProjectile_Cacatac                                       ;A2A0AE;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A2A0B1;
    PLY                                                                  ;A2A0B5;
    INY                                                                  ;A2A0B6;
    INY                                                                  ;A2A0B7;
    RTL                                                                  ;A2A0B8;


RTL_A2A0B9:
    RTL                                                                  ;A2A0B9;


RTL_A2A0BA:
    RTL                                                                  ;A2A0BA;


Spritemap_Cacatac_0:
    dw $0006                                                             ;A2A0BB;
    %spritemapEntry(0, $00, $04, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $04, 0, 1, 2, 0, $10B)
    %spritemapEntry(0, $1F8, $04, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $1F4, $04, 0, 0, 2, 0, $10B)
    %spritemapEntry(0, $1FC, $EF, 0, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F7, 0, 0, 2, 0, $100)

Spritemap_Cacatac_1:
    dw $0006                                                             ;A2A0DB;
    %spritemapEntry(0, $1F8, $04, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $1F4, $05, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $00, $04, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $04, 0, 1, 2, 0, $10B)
    %spritemapEntry(0, $1FC, $F0, 0, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $100)

Spritemap_Cacatac_2:
    dw $0006                                                             ;A2A0FB;
    %spritemapEntry(0, $1FA, $05, 0, 0, 2, 0, $10D)
    %spritemapEntry(0, $1F4, $04, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $00, $04, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $04, 0, 1, 2, 0, $10B)
    %spritemapEntry(0, $1FC, $F0, 0, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $100)

Spritemap_Cacatac_3:
    dw $0006                                                             ;A2A11B;
    %spritemapEntry(0, $00, $05, 0, 1, 2, 0, $10B)
    %spritemapEntry(0, $1FA, $04, 0, 0, 2, 0, $10D)
    %spritemapEntry(0, $1F4, $04, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $04, $04, 0, 1, 2, 0, $10B)
    %spritemapEntry(0, $1FC, $F1, 0, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F9, 0, 0, 2, 0, $100)

Spritemap_Cacatac_4:
    dw $0006                                                             ;A2A13B;
    %spritemapEntry(0, $00, $04, 0, 1, 2, 0, $10B)
    %spritemapEntry(0, $04, $05, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $1FA, $04, 0, 0, 2, 0, $10D)
    %spritemapEntry(0, $1F4, $04, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $1FC, $F1, 0, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F9, 0, 0, 2, 0, $100)

Spritemap_Cacatac_5:
    dw $0006                                                             ;A2A15B;
    %spritemapEntry(0, $00, $05, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $04, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $1FA, $04, 0, 0, 2, 0, $10D)
    %spritemapEntry(0, $1F4, $04, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $1FC, $F0, 0, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $100)

Spritemap_Cacatac_6:
    dw $0006                                                             ;A2A17B;
    %spritemapEntry(0, $00, $04, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $04, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $1F8, $05, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $1F4, $04, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $1FC, $F0, 0, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $100)

Spritemap_Cacatac_7:
    dw $0006                                                             ;A2A19B;
    %spritemapEntry(0, $00, $04, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $04, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $1F8, $04, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $1F4, $05, 0, 0, 2, 0, $10B)
    %spritemapEntry(0, $1FC, $EF, 0, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F7, 0, 0, 2, 0, $100)

Spritemap_Cacatac_8:
    dw $000A                                                             ;A2A1BB;
    %spritemapEntry(0, $1FC, $ED, 0, 0, 2, 0, $11C)
    %spritemapEntry(0, $00, $04, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $04, 0, 1, 2, 0, $10B)
    %spritemapEntry(0, $1F8, $04, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $1F4, $04, 0, 0, 2, 0, $10B)
    %spritemapEntry(0, $04, $02, 0, 0, 2, 0, $10A)
    %spritemapEntry(0, $1FC, $02, 0, 0, 2, 0, $109)
    %spritemapEntry(0, $1F4, $02, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $43FC, $F2, 0, 0, 2, 0, $103)
    %spritemapEntry(1, $43F4, $F2, 0, 0, 2, 0, $102)

Spritemap_Cacatac_9:
    dw $000A                                                             ;A2A1EF;
    %spritemapEntry(0, $1FC, $E9, 0, 0, 2, 0, $11C)
    %spritemapEntry(0, $00, $04, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $04, 0, 1, 2, 0, $10B)
    %spritemapEntry(0, $1F8, $04, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $1F4, $04, 0, 0, 2, 0, $10B)
    %spritemapEntry(0, $04, $00, 0, 0, 2, 0, $11A)
    %spritemapEntry(0, $1FC, $00, 0, 0, 2, 0, $119)
    %spritemapEntry(0, $1F4, $00, 0, 0, 2, 0, $118)
    %spritemapEntry(1, $43FC, $F0, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $43F4, $F0, 0, 0, 2, 0, $105)

Spritemap_Cacatac_A:
    dw $0006                                                             ;A2A223;
    %spritemapEntry(0, $00, $F4, 1, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $F4, 1, 1, 2, 0, $10B)
    %spritemapEntry(0, $1F8, $F4, 1, 0, 2, 0, $10C)
    %spritemapEntry(0, $1F4, $F4, 1, 0, 2, 0, $10B)
    %spritemapEntry(0, $1FC, $09, 1, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F9, 1, 0, 2, 0, $100)

Spritemap_Cacatac_B:
    dw $0006                                                             ;A2A243;
    %spritemapEntry(0, $1F8, $F4, 1, 0, 2, 0, $10C)
    %spritemapEntry(0, $1F4, $F3, 1, 0, 2, 0, $10C)
    %spritemapEntry(0, $00, $F4, 1, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $F4, 1, 1, 2, 0, $10B)
    %spritemapEntry(0, $1FC, $08, 1, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F8, 1, 0, 2, 0, $100)

Spritemap_Cacatac_C:
    dw $0006                                                             ;A2A263;
    %spritemapEntry(0, $1FA, $F3, 1, 0, 2, 0, $10D)
    %spritemapEntry(0, $1F4, $F4, 1, 0, 2, 0, $10C)
    %spritemapEntry(0, $00, $F4, 1, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $F4, 1, 1, 2, 0, $10B)
    %spritemapEntry(0, $1FC, $08, 1, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F8, 1, 0, 2, 0, $100)

Spritemap_Cacatac_D:
    dw $0006                                                             ;A2A283;
    %spritemapEntry(0, $00, $F3, 1, 1, 2, 0, $10B)
    %spritemapEntry(0, $1FA, $F4, 1, 0, 2, 0, $10D)
    %spritemapEntry(0, $1F4, $F4, 1, 0, 2, 0, $10C)
    %spritemapEntry(0, $04, $F4, 1, 1, 2, 0, $10B)
    %spritemapEntry(0, $1FC, $07, 1, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F7, 1, 0, 2, 0, $100)

Spritemap_Cacatac_E:
    dw $0006                                                             ;A2A2A3;
    %spritemapEntry(0, $00, $F4, 1, 1, 2, 0, $10B)
    %spritemapEntry(0, $04, $F3, 1, 1, 2, 0, $10C)
    %spritemapEntry(0, $1FA, $F4, 1, 0, 2, 0, $10D)
    %spritemapEntry(0, $1F4, $F4, 1, 0, 2, 0, $10C)
    %spritemapEntry(0, $1FC, $07, 1, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F7, 1, 0, 2, 0, $100)

Spritemap_Cacatac_F:
    dw $0006                                                             ;A2A2C3;
    %spritemapEntry(0, $00, $F3, 1, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $F4, 1, 1, 2, 0, $10C)
    %spritemapEntry(0, $1FA, $F4, 1, 0, 2, 0, $10D)
    %spritemapEntry(0, $1F4, $F4, 1, 0, 2, 0, $10C)
    %spritemapEntry(0, $1FC, $08, 1, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F8, 1, 0, 2, 0, $100)

Spritemap_Cacatac_10:
    dw $0006                                                             ;A2A2E3;
    %spritemapEntry(0, $00, $F4, 1, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $F4, 1, 1, 2, 0, $10C)
    %spritemapEntry(0, $1F8, $F3, 1, 0, 2, 0, $10C)
    %spritemapEntry(0, $1F4, $F4, 1, 0, 2, 0, $10C)
    %spritemapEntry(0, $1FC, $08, 1, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F8, 1, 0, 2, 0, $100)

Spritemap_Cacatac_11:
    dw $0006                                                             ;A2A303;
    %spritemapEntry(0, $00, $F4, 1, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $F4, 1, 1, 2, 0, $10C)
    %spritemapEntry(0, $1F8, $F4, 1, 0, 2, 0, $10C)
    %spritemapEntry(0, $1F4, $F3, 1, 0, 2, 0, $10B)
    %spritemapEntry(0, $1FC, $09, 1, 0, 2, 0, $11C)
    %spritemapEntry(1, $43F8, $F9, 1, 0, 2, 0, $100)

Spritemap_Cacatac_12:
    dw $000A                                                             ;A2A323;
    %spritemapEntry(0, $1FC, $0B, 1, 0, 2, 0, $11C)
    %spritemapEntry(0, $00, $F4, 1, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $F4, 1, 1, 2, 0, $10B)
    %spritemapEntry(0, $1F8, $F4, 1, 0, 2, 0, $10C)
    %spritemapEntry(0, $1F4, $F4, 1, 0, 2, 0, $10B)
    %spritemapEntry(0, $04, $F6, 1, 0, 2, 0, $10A)
    %spritemapEntry(0, $1FC, $F6, 1, 0, 2, 0, $109)
    %spritemapEntry(0, $1F4, $F6, 1, 0, 2, 0, $108)
    %spritemapEntry(1, $43FC, $FE, 1, 0, 2, 0, $103)
    %spritemapEntry(1, $43F4, $FE, 1, 0, 2, 0, $102)

Spritemap_Cacatac_13:
    dw $000A                                                             ;A2A357;
    %spritemapEntry(0, $1FC, $0F, 1, 0, 2, 0, $11C)
    %spritemapEntry(0, $00, $F4, 1, 1, 2, 0, $10C)
    %spritemapEntry(0, $04, $F4, 1, 1, 2, 0, $10B)
    %spritemapEntry(0, $1F8, $F4, 1, 0, 2, 0, $10C)
    %spritemapEntry(0, $1F4, $F4, 1, 0, 2, 0, $10B)
    %spritemapEntry(0, $04, $F8, 1, 0, 2, 0, $11A)
    %spritemapEntry(0, $1FC, $F8, 1, 0, 2, 0, $119)
    %spritemapEntry(0, $1F4, $F8, 1, 0, 2, 0, $118)
    %spritemapEntry(1, $43FC, $00, 1, 0, 2, 0, $106)
    %spritemapEntry(1, $43F4, $00, 1, 0, 2, 0, $105)

Palette_Owtch:
    dw $3800,$4B9C,$2610,$0CC6,$0C63,$42F7,$2A52,$19AD                   ;A2A38B;
    dw $0D29,$5E59,$3D72,$2CEE,$1447,$033B,$0216,$0113                   ;A2A39B;

InstList_Owtch_MovingLeft_0:
    dw Instruction_Owtch_0                                               ;A2A3AB;

InstList_Owtch_MovingLeft_1:
    dw $0008,Spritemap_Owtch_0                                           ;A2A3AD;
    dw $0008,Spritemap_Owtch_1                                           ;A2A3B1;
    dw $0008,Spritemap_Owtch_2                                           ;A2A3B5;
    dw Instruction_Common_GotoY                                          ;A2A3B9;
    dw InstList_Owtch_MovingLeft_1                                       ;A2A3BB;

InstList_Owtch_MovingRight_0:
    dw Instruction_Owtch_1                                               ;A2A3BD;

InstList_Owtch_MovingRight_1:
    dw $0008,Spritemap_Owtch_2                                           ;A2A3BF;
    dw $0008,Spritemap_Owtch_1                                           ;A2A3C3;
    dw $0008,Spritemap_Owtch_0                                           ;A2A3C7;
    dw Instruction_Common_GotoY                                          ;A2A3CB;
    dw InstList_Owtch_MovingRight_1                                      ;A2A3CD;

OwtchConstants_initAIPointers:
    dw SetOwtchInitialInstListPointer_MovingLeft                         ;A2A3CF;
    dw SetOwtchInitialInstListPointer_MovingRight                        ;A2A3D1;

OwtchConstants_functionPointers:
    dw Function_Owtch_0_MovingLeft                                       ;A2A3D3;
    dw Function_Owtch_1_MovingRight                                      ;A2A3D5;
    dw Function_Owtch_2_Underground                                      ;A2A3D7;
    dw Function_Owtch_3_Sinking                                          ;A2A3D9;
    dw Function_Owtch_4_Rising                                           ;A2A3DB;

OwtchConstants_XDistanceRanges:
    dw $0010,$0020,$0030,$0040,$0050,$0060,$0070,$0080                   ;A2A3DD;

OwtchConstants_undergroundTimers:
    dw $001A,$0034,$004E,$0068,$0082,$009C                               ;A2A3ED;

InitAI_Owtch:
    LDX.W $0E54                                                          ;A2A3F9;
    LDA.W #Spritemap_CommonA2_Nothing                                    ;A2A3FC;
    STA.W $0F8E,X                                                        ;A2A3FF;
    LDA.W $0FB4,X                                                        ;A2A402;
    AND.W #$00FF                                                         ;A2A405;
    STA.W $0FB0,X                                                        ;A2A408;
    AND.W #$0001                                                         ;A2A40B;
    ASL A                                                                ;A2A40E;
    TAX                                                                  ;A2A40F;
    JSR.W (OwtchConstants_initAIPointers,X)                              ;A2A410;
    LDX.W $0E54                                                          ;A2A413;
    LDA.W $0FB6,X                                                        ;A2A416;
    AND.W #$00FF                                                         ;A2A419;
    ASL A                                                                ;A2A41C;
    ASL A                                                                ;A2A41D;
    ASL A                                                                ;A2A41E;
    TAY                                                                  ;A2A41F;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A2A420;
    STA.W $0FAA,X                                                        ;A2A423;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A2A426;
    STA.W $0FA8,X                                                        ;A2A429;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+4,Y                       ;A2A42C;
    STA.W $0FAE,X                                                        ;A2A42F;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+6,Y                       ;A2A432;
    STA.W $0FAC,X                                                        ;A2A435;
    LDA.W $0FB7,X                                                        ;A2A438;
    AND.W #$00FF                                                         ;A2A43B;
    ASL A                                                                ;A2A43E;
    TAY                                                                  ;A2A43F;
    LDA.W $0F7A,X                                                        ;A2A440;
    CLC                                                                  ;A2A443;
    ADC.W OwtchConstants_XDistanceRanges,Y                               ;A2A444;
    STA.L $7E7804,X                                                      ;A2A447;
    LDA.W $0F7A,X                                                        ;A2A44B;
    SEC                                                                  ;A2A44E;
    SBC.W OwtchConstants_XDistanceRanges,Y                               ;A2A44F;
    STA.L $7E7802,X                                                      ;A2A452;
    LDA.W $0FB5,X                                                        ;A2A456;
    AND.W #$00FF                                                         ;A2A459;
    ASL A                                                                ;A2A45C;
    TAY                                                                  ;A2A45D;
    LDA.W OwtchConstants_undergroundTimers,Y                             ;A2A45E;
    STA.L $7E7800,X                                                      ;A2A461;
    STZ.W $0FB2,X                                                        ;A2A465;
    LDA.W $0FB0,X                                                        ;A2A468;
    CMP.W #$0002                                                         ;A2A46B;
    BNE .return                                                          ;A2A46E;
    LDA.W #$0010                                                         ;A2A470;
    STA.W $0FB2,X                                                        ;A2A473;
    CLC                                                                  ;A2A476;
    ADC.W $0F7E,X                                                        ;A2A477;
    STA.W $0F7E,X                                                        ;A2A47A;

.return:
    RTL                                                                  ;A2A47D;


MainAI_Owtch:
    LDX.W $0E54                                                          ;A2A47E;
    LDA.W $0FB0,X                                                        ;A2A481;
    ASL A                                                                ;A2A484;
    TAX                                                                  ;A2A485;
    JSR.W (OwtchConstants_functionPointers,X)                            ;A2A486;
    RTL                                                                  ;A2A489;


SetOwtchInitialInstListPointer_MovingLeft:
    LDX.W $0E54                                                          ;A2A48A;
    LDA.W #InstList_Owtch_MovingLeft_0                                   ;A2A48D;
    STA.W $0F92,X                                                        ;A2A490;
    LDA.W #$0001                                                         ;A2A493;
    STA.W $0F94,X                                                        ;A2A496;
    STZ.W $0F90,X                                                        ;A2A499;
    RTS                                                                  ;A2A49C;


SetOwtchInitialInstListPointer_MovingRight:
    LDX.W $0E54                                                          ;A2A49D;
    LDA.W #InstList_Owtch_MovingRight_0                                  ;A2A4A0;
    STA.W $0F92,X                                                        ;A2A4A3;
    LDA.W #$0001                                                         ;A2A4A6;
    STA.W $0F94,X                                                        ;A2A4A9;
    STZ.W $0F90,X                                                        ;A2A4AC;
    RTS                                                                  ;A2A4AF;


Function_Owtch_0_MovingLeft:
    LDX.W $0E54                                                          ;A2A4B0;
    LDA.W $0F7C,X                                                        ;A2A4B3;
    CLC                                                                  ;A2A4B6;
    ADC.W $0FAC,X                                                        ;A2A4B7;
    BCC +                                                                ;A2A4BA;
    INC.W $0F7A,X                                                        ;A2A4BC;

  + STA.W $0F7C,X                                                        ;A2A4BF;
    LDA.W $0F7A,X                                                        ;A2A4C2;
    CLC                                                                  ;A2A4C5;
    ADC.W $0FAE,X                                                        ;A2A4C6;
    STA.W $0F7A,X                                                        ;A2A4C9;
    CMP.L $7E7802,X                                                      ;A2A4CC;
    BPL +                                                                ;A2A4D0;
    DEC.W $0FB0,X                                                        ;A2A4D2;

  + JSR.W MaybeMakeOwtchSink                                             ;A2A4D5;
    RTS                                                                  ;A2A4D8;


Function_Owtch_1_MovingRight:
    LDX.W $0E54                                                          ;A2A4D9;
    LDA.W $0F7C,X                                                        ;A2A4DC;
    CLC                                                                  ;A2A4DF;
    ADC.W $0FA8,X                                                        ;A2A4E0;
    BCC +                                                                ;A2A4E3;
    INC.W $0F7A,X                                                        ;A2A4E5;

  + STA.W $0F7C,X                                                        ;A2A4E8;
    LDA.W $0F7A,X                                                        ;A2A4EB;
    CLC                                                                  ;A2A4EE;
    ADC.W $0FAA,X                                                        ;A2A4EF;
    STA.W $0F7A,X                                                        ;A2A4F2;
    CMP.L $7E7804,X                                                      ;A2A4F5;
    BMI +                                                                ;A2A4F9;
    STZ.W $0FB0,X                                                        ;A2A4FB;

  + JSR.W MaybeMakeOwtchSink                                             ;A2A4FE;
    RTS                                                                  ;A2A501;


Function_Owtch_2_Underground:
    LDX.W $0E54                                                          ;A2A502;
    LDA.L $7E7800,X                                                      ;A2A505;
    DEC A                                                                ;A2A509;
    STA.L $7E7800,X                                                      ;A2A50A;
    BNE .return                                                          ;A2A50E;
    LDA.W #$0004                                                         ;A2A510;
    STA.W $0FB0,X                                                        ;A2A513;

.return:
    RTS                                                                  ;A2A516;


Function_Owtch_3_Sinking:
    LDX.W $0E54                                                          ;A2A517;
    INC.W $0F7E,X                                                        ;A2A51A;
    INC.W $0FB2,X                                                        ;A2A51D;
    LDA.W $0FB2,X                                                        ;A2A520;
    CMP.W #$0010                                                         ;A2A523;
    BMI .return                                                          ;A2A526;
    LDA.W #$0002                                                         ;A2A528;
    STA.W $0FB0,X                                                        ;A2A52B;
    LDA.W $0FB5,X                                                        ;A2A52E;
    AND.W #$00FF                                                         ;A2A531;
    ASL A                                                                ;A2A534;
    TAY                                                                  ;A2A535;
    LDA.W OwtchConstants_undergroundTimers,Y                             ;A2A536;
    STA.L $7E7800,X                                                      ;A2A539;

.return:
    RTS                                                                  ;A2A53D;


Function_Owtch_4_Rising:
    LDX.W $0E54                                                          ;A2A53E;
    DEC.W $0F7E,X                                                        ;A2A541;
    DEC.W $0FB2,X                                                        ;A2A544;
    BNE .return                                                          ;A2A547;
    LDA.W $05E6                                                          ;A2A549;
    AND.W #$0001                                                         ;A2A54C;
    STA.W $0FB0,X                                                        ;A2A54F;

.return:
    RTS                                                                  ;A2A552;


MaybeMakeOwtchSink:
    JSL.L GenerateRandomNumber                                           ;A2A553;
    LDA.W $05E5                                                          ;A2A557;
    CLC                                                                  ;A2A55A;
    ADC.W $0FA4,X                                                        ;A2A55B;
    AND.W #$00FF                                                         ;A2A55E;
    CMP.W #$0006                                                         ;A2A561;
    BPL .return                                                          ;A2A564;
    LDA.W #$0003                                                         ;A2A566;
    STA.W $0FB0,X                                                        ;A2A569;

.return:
    RTS                                                                  ;A2A56C;


Instruction_Owtch_0:
    STZ.W $0FB0,X                                                        ;A2A56D;
    RTL                                                                  ;A2A570;


Instruction_Owtch_1:
    LDA.W #$0001                                                         ;A2A571;
    STA.W $0FB0,X                                                        ;A2A574;
    RTL                                                                  ;A2A577;


RTL_A2A578:
    RTL                                                                  ;A2A578;


EnemyShot_Owtch:
    LDX.W $0E54                                                          ;A2A579;
    LDA.W $0FB0,X                                                        ;A2A57C;
    CMP.W #$0001                                                         ;A2A57F;
    BPL .return                                                          ;A2A582;
    JSL.L CommonA2_NormalEnemyShotAI                                     ;A2A584;

.return:
    RTL                                                                  ;A2A588;


Spritemap_Owtch_0:
    dw $0001                                                             ;A2A589;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $100)

Spritemap_Owtch_1:
    dw $0001                                                             ;A2A590;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $102)

Spritemap_Owtch_2:
    dw $0001                                                             ;A2A597;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $104)


Palette_Ship:
    dw $3800,$0295,$0190,$0403,$0001,$0211,$014D,$00C9                   ;A2A59E;
    dw $0024,$3BE0,$2680,$1580,$24C6,$1442,$0000,$0000                   ;A2A5AE;

InstList_ShipEntrancePad_Opening_0:
    dw $0010,Spritemap_Ship_C                                            ;A2A5BE;
    dw $0006,Spritemap_Ship_B                                            ;A2A5C2;
    dw $0006,Spritemap_Ship_2                                            ;A2A5C6;
    dw $0006,Spritemap_Ship_3                                            ;A2A5CA;
    dw $0013,Spritemap_Ship_4                                            ;A2A5CE;
    dw $0006,Spritemap_Ship_5                                            ;A2A5D2;
    dw $0006,Spritemap_Ship_6                                            ;A2A5D6;
    dw $0005,Spritemap_Ship_7                                            ;A2A5DA;
    dw $0004,Spritemap_Ship_8                                            ;A2A5DE;
    dw $0003,Spritemap_Ship_9                                            ;A2A5E2;

InstList_ShipEntrancePad_Opening_1:
    dw $0004,Spritemap_Ship_A                                            ;A2A5E6;
    dw Instruction_Common_GotoY                                          ;A2A5EA;
    dw InstList_ShipEntrancePad_Opening_1                                ;A2A5EC;

InstList_ShipEntrancePad_Closing:
    dw $0003,Spritemap_Ship_9                                            ;A2A5EE;
    dw $0004,Spritemap_Ship_8                                            ;A2A5F2;
    dw $0005,Spritemap_Ship_7                                            ;A2A5F6;
    dw $0006,Spritemap_Ship_6                                            ;A2A5FA;
    dw $0006,Spritemap_Ship_5                                            ;A2A5FE;
    dw $0013,Spritemap_Ship_4                                            ;A2A602;
    dw $0006,Spritemap_Ship_3                                            ;A2A606;
    dw $0006,Spritemap_Ship_B                                            ;A2A60A;

InstList_ShipEntrancePad_Closed:
    dw $0008,Spritemap_Ship_C                                            ;A2A60E;
    dw Instruction_Common_GotoY                                          ;A2A612;
    dw InstList_ShipEntrancePad_Closed                                   ;A2A614;

InstList_ShipTop:
    dw $0001,Spritemap_Ship_0                                            ;A2A616;
    dw Instruction_Common_Sleep                                          ;A2A61A;

InstList_ShipBottom:
    dw $0001,Spritemap_Ship_1                                            ;A2A61C;
    dw Instruction_CommonA2_Sleep                                        ;A2A620;

ShipBrakesMovementData:
; Y velocities, indexed by enemy $0FB0 in $A8D0
    dw $0001,$0001,$0001,$0001,$0001,$0001                               ;A2A622;
    dw $0000,$0000,$0000,$0000,$0000                                     ;A2A62E;
    dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF                               ;A2A638;

InitAI_ShipTop:
    LDX.W $0E54                                                          ;A2A644;
    LDA.W $0F86,X                                                        ;A2A647;
    ORA.W #$2400                                                         ;A2A64A;
    STA.W $0F86,X                                                        ;A2A64D;
    LDA.W #$0001                                                         ;A2A650;
    STA.W $0F94,X                                                        ;A2A653;
    STZ.W $0F90,X                                                        ;A2A656;
    LDA.W #InstList_ShipTop                                              ;A2A659;
    STA.W $0F92,X                                                        ;A2A65C;
    LDA.W #$0E00                                                         ;A2A65F;
    STA.W $0F96,X                                                        ;A2A662;
    LDA.W $0998                                                          ;A2A665;
    CMP.W #$0028                                                         ;A2A668;
    BEQ .demoTransition                                                  ;A2A66B;

.landingOnZebes:
    LDA.L $7ED914                                                        ;A2A66D;
    CMP.W #$0022                                                         ;A2A671;
    BNE .notLandingOnZebes                                               ;A2A674;
    LDA.W $0AFA                                                          ;A2A676;
    SEC                                                                  ;A2A679;
    SBC.W #$0011                                                         ;A2A67A;
    STA.W $0F7E,X                                                        ;A2A67D;
    LDA.W #Function_Ship_LandingOnZebes_Descending                       ;A2A680;
    STA.W $0FB2,X                                                        ;A2A683;
    BRA .merge                                                           ;A2A686;


.notLandingOnZebes:
    LDA.W $0F7E,X                                                        ;A2A688;
    SEC                                                                  ;A2A68B;
    SBC.W #$0019                                                         ;A2A68C;
    STA.W $0F7E,X                                                        ;A2A68F;
    STA.W $0FB0,X                                                        ;A2A692;
    LDA.W #Function_Ship_Idle_HandleLettingSamusEnter                    ;A2A695;
    STA.W $0FB2,X                                                        ;A2A698;
    BRA .merge                                                           ;A2A69B;


.demoTransition:
    LDA.W $1F55                                                          ;A2A69D;
    BNE .landingOnZebes                                                  ;A2A6A0;
    LDA.W #$0472                                                         ;A2A6A2;
    STA.W $0AFA                                                          ;A2A6A5;
    LDA.W $0F7E,X                                                        ;A2A6A8;
    SEC                                                                  ;A2A6AB;
    SBC.W #$0019                                                         ;A2A6AC;
    STA.W $0F7E,X                                                        ;A2A6AF;
    STA.W $0FB0,X                                                        ;A2A6B2;
    LDA.W #Function_Ship_SamusExiting_WaitForEntrancePadToOpen           ;A2A6B5;
    STA.W $0FB2,X                                                        ;A2A6B8;
    LDA.W #$0090                                                         ;A2A6BB;
    STA.W $0FA8                                                          ;A2A6BE;

.merge:
    LDY.W #PaletteFXObjects_GunshipGlow                                  ;A2A6C1;
    JSL.L Spawn_PaletteFXObject                                          ;A2A6C4;
    LDA.W #$0001                                                         ;A2A6C8;
    STA.W $0FAE,X                                                        ;A2A6CB;
    STZ.W $0FAC                                                          ;A2A6CE;
    RTL                                                                  ;A2A6D1;


InitAI_ShipBottomEntrance:
    LDX.W $0E54                                                          ;A2A6D2;
    LDA.W $0F86,X                                                        ;A2A6D5;
    ORA.W #$2400                                                         ;A2A6D8;
    STA.W $0F86,X                                                        ;A2A6DB;
    LDA.W #$0001                                                         ;A2A6DE;
    STA.W $0F94,X                                                        ;A2A6E1;
    STZ.W $0F90,X                                                        ;A2A6E4;
    LDA.W $0FB6,X                                                        ;A2A6E7;
    BEQ .shipBottom                                                      ;A2A6EA;
    LDA.W #InstList_ShipEntrancePad_Closed                               ;A2A6EC;
    STA.W $0F92,X                                                        ;A2A6EF;
    BRA +                                                                ;A2A6F2;


.shipBottom:
    LDA.W #InstList_ShipBottom                                           ;A2A6F4;
    STA.W $0F92,X                                                        ;A2A6F7;

  + LDA.W $0F58,X                                                        ;A2A6FA;
    STA.W $0F98,X                                                        ;A2A6FD;
    LDA.W #$0E00                                                         ;A2A700;
    STA.W $0F96,X                                                        ;A2A703;
    LDA.W $0FB6,X                                                        ;A2A706;
    BNE .entrancePad                                                     ;A2A709;
    LDA.L $7ED914                                                        ;A2A70B;
    CMP.W #$0022                                                         ;A2A70F;
    BNE .notLandingOnZebes                                               ;A2A712;
    LDA.W $0AFA                                                          ;A2A714;
    CLC                                                                  ;A2A717;
    ADC.W #$0017                                                         ;A2A718;
    STA.W $0F7E,X                                                        ;A2A71B;
    BRA .merge                                                           ;A2A71E;


.notLandingOnZebes:
    LDA.W $0F7E,X                                                        ;A2A720;
    CLC                                                                  ;A2A723;
    ADC.W #$000F                                                         ;A2A724;
    STA.W $0F7E,X                                                        ;A2A727;
    LDA.W #$0039                                                         ;A2A72A;
    STA.W $0FAE,X                                                        ;A2A72D;
    BRA .merge                                                           ;A2A730;


.entrancePad:
    LDA.W $0EFE,X                                                        ;A2A732;
    DEC A                                                                ;A2A735;
    STA.W $0F7E,X                                                        ;A2A736;
    LDA.W $0998                                                          ;A2A739;
    CMP.W #$0028                                                         ;A2A73C;
    BNE .merge                                                           ;A2A73F;
    LDA.W $1F55                                                          ;A2A741;
    BNE .merge                                                           ;A2A744;
    LDA.W #$0001                                                         ;A2A746;
    STA.W $0F94,X                                                        ;A2A749;
    LDA.W #InstList_ShipEntrancePad_Opening_0                            ;A2A74C;
    STA.W $0F92,X                                                        ;A2A74F;

.merge:
    LDA.W #RTL_A2A7D7                                                    ;A2A752;
    STA.W $0FB2,X                                                        ;A2A755;
    RTL                                                                  ;A2A758;


MainAI_ShipTop:
    LDX.W $0E54                                                          ;A2A759;
    DEC.W $0FEE,X                                                        ;A2A75C;
    BEQ .SFX                                                             ;A2A75F;
    BPL .noSFX                                                           ;A2A761;

.SFX:
    LDA.W #$004D                                                         ;A2A763;
    JSL.L QueueSound_Lib2_Max6                                           ;A2A766;
    LDA.W #$0038                                                         ;A2A76A;
    STA.W $0FEE,X                                                        ;A2A76D;

.noSFX:
    LDA.W $0FB2,X                                                        ;A2A770;
    CMP.W #Function_Ship_LandingOnZebes_WaitForShipEntranceToOpen        ;A2A773;
    BMI .function                                                        ;A2A776;
    CMP.W #Function_Ship_Liftoff_FireUpEngines_SpawnDustClouds           ;A2A778;
    BPL .function                                                        ;A2A77B;
    JSR.W ProcessShipHover                                               ;A2A77D;

.function:
    JMP.W ($0FB2,X)                                                      ;A2A780;


RTL_A2A783:
    RTL                                                                  ;A2A783;


ProcessShipHover:
    DEC.W $0FAE,X                                                        ;A2A784;
    BEQ .timerExpired                                                    ;A2A787;
    BPL .return                                                          ;A2A789;

.timerExpired:
    LDA.W $0FAC,X                                                        ;A2A78B;
    ASL A                                                                ;A2A78E;
    TAY                                                                  ;A2A78F;
    LDA.W .timer,Y                                                       ;A2A790;
    AND.W #$00FF                                                         ;A2A793;
    STA.W $0FAE,X                                                        ;A2A796;
    LDA.W .YVelocity,Y                                                   ;A2A799;
    AND.W #$00FF                                                         ;A2A79C;
    BIT.W #$0080                                                         ;A2A79F;
    BEQ +                                                                ;A2A7A2;
    ORA.W #$FF00                                                         ;A2A7A4;

  + STA.B $12                                                            ;A2A7A7;
    LDA.W $0F7E,X                                                        ;A2A7A9;
    CLC                                                                  ;A2A7AC;
    ADC.B $12                                                            ;A2A7AD;
    STA.W $0F7E,X                                                        ;A2A7AF;
    LDA.W $0FBE,X                                                        ;A2A7B2;
    CLC                                                                  ;A2A7B5;
    ADC.B $12                                                            ;A2A7B6;
    STA.W $0FBE,X                                                        ;A2A7B8;
    LDA.W $0FFE,X                                                        ;A2A7BB;
    CLC                                                                  ;A2A7BE;
    ADC.B $12                                                            ;A2A7BF;
    STA.W $0FFE,X                                                        ;A2A7C1;
    LDA.W $0FAC,X                                                        ;A2A7C4;
    INC A                                                                ;A2A7C7;
    AND.W #$0003                                                         ;A2A7C8;
    STA.W $0FAC,X                                                        ;A2A7CB;

.return:
    RTS                                                                  ;A2A7CE;

;        ______ Timer
;       |    __ Y velocity
;       |   |
  .timer:
    db $10                                                               ;A2A7CF;
  .YVelocity:
    db     $01                                                           ;A2A7D0;
    db $10,$FF
    db $10,$FF
    db $10,$01

RTL_A2A7D7:
    RTL                                                                  ;A2A7D7;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_Function_Ship_RiseToYPosition80_Descend:
    LDA.W $0AFA                                                          ;A2A7D8;
    SEC                                                                  ;A2A7DB;
    SBC.W #$0008                                                         ;A2A7DC;
    STA.W $0AFA                                                          ;A2A7DF;
    LDA.W $0FFE,X                                                        ;A2A7E2;
    SEC                                                                  ;A2A7E5;
    SBC.W #$0008                                                         ;A2A7E6;
    STA.W $0FFE,X                                                        ;A2A7E9;
    LDA.W $0FBE,X                                                        ;A2A7EC;
    SEC                                                                  ;A2A7EF;
    SBC.W #$0008                                                         ;A2A7F0;
    STA.W $0FBE,X                                                        ;A2A7F3;
    LDA.W $0F7E,X                                                        ;A2A7F6;
    SEC                                                                  ;A2A7F9;
    SBC.W #$0008                                                         ;A2A7FA;
    STA.W $0F7E,X                                                        ;A2A7FD;
    CMP.W #$0080                                                         ;A2A800;
    BPL .return                                                          ;A2A803;
    LDA.W #Function_Ship_LandingOnZebes_Descending                       ;A2A805;
    STA.W $0FB2,X                                                        ;A2A808;

.return:
    RTL                                                                  ;A2A80B;
endif ; !FEATURE_KEEP_UNREFERENCED


Function_Ship_LandingOnZebes_Descending:
    LDA.W $0F7E,X                                                        ;A2A80C;
    CMP.W #$0300                                                         ;A2A80F;
    BPL .slowDown                                                        ;A2A812;
    LDA.W $0AFC                                                          ;A2A814;
    CLC                                                                  ;A2A817;
    ADC.W #$8000                                                         ;A2A818;
    STA.W $0AFC                                                          ;A2A81B;
    LDA.W $0AFA                                                          ;A2A81E;
    ADC.W #$0004                                                         ;A2A821;
    STA.W $0AFA                                                          ;A2A824;
    LDA.W $1000,X                                                        ;A2A827;
    CLC                                                                  ;A2A82A;
    ADC.W #$8000                                                         ;A2A82B;
    STA.W $1000,X                                                        ;A2A82E;
    LDA.W $0FFE,X                                                        ;A2A831;
    ADC.W #$0004                                                         ;A2A834;
    STA.W $0FFE,X                                                        ;A2A837;
    LDA.W $0FC0,X                                                        ;A2A83A;
    CLC                                                                  ;A2A83D;
    ADC.W #$8000                                                         ;A2A83E;
    STA.W $0FC0,X                                                        ;A2A841;
    LDA.W $0FBE,X                                                        ;A2A844;
    ADC.W #$0004                                                         ;A2A847;
    STA.W $0FBE,X                                                        ;A2A84A;
    LDA.W $0F80,X                                                        ;A2A84D;
    CLC                                                                  ;A2A850;
    ADC.W #$8000                                                         ;A2A851;
    STA.W $0F80,X                                                        ;A2A854;
    LDA.W $0F7E,X                                                        ;A2A857;
    ADC.W #$0004                                                         ;A2A85A;
    STA.W $0F7E,X                                                        ;A2A85D;
    RTL                                                                  ;A2A860;


.slowDown:
    LDA.W $0AFC                                                          ;A2A861;
    CLC                                                                  ;A2A864;
    ADC.W #$8000                                                         ;A2A865;
    STA.W $0AFC                                                          ;A2A868;
    LDA.W $0AFA                                                          ;A2A86B;
    ADC.W #$0002                                                         ;A2A86E;
    STA.W $0AFA                                                          ;A2A871;
    LDA.W $1000,X                                                        ;A2A874;
    CLC                                                                  ;A2A877;
    ADC.W #$8000                                                         ;A2A878;
    STA.W $1000,X                                                        ;A2A87B;
    LDA.W $0FFE,X                                                        ;A2A87E;
    ADC.W #$0002                                                         ;A2A881;
    STA.W $0FFE,X                                                        ;A2A884;
    LDA.W $0FC0,X                                                        ;A2A887;
    CLC                                                                  ;A2A88A;
    ADC.W #$8000                                                         ;A2A88B;
    STA.W $0FC0,X                                                        ;A2A88E;
    LDA.W $0FBE,X                                                        ;A2A891;
    ADC.W #$0002                                                         ;A2A894;
    STA.W $0FBE,X                                                        ;A2A897;
    LDA.W $0F80,X                                                        ;A2A89A;
    CLC                                                                  ;A2A89D;
    ADC.W #$8000                                                         ;A2A89E;
    STA.W $0F80,X                                                        ;A2A8A1;
    LDA.W $0F7E,X                                                        ;A2A8A4;
    ADC.W #$0002                                                         ;A2A8A7;
    STA.W $0F7E,X                                                        ;A2A8AA;
    CMP.W #$045F                                                         ;A2A8AD;
    BMI .return                                                          ;A2A8B0;
    LDA.W #$045F                                                         ;A2A8B2;
    STA.W $0F7E,X                                                        ;A2A8B5;
    CLC                                                                  ;A2A8B8;
    ADC.W #$0028                                                         ;A2A8B9;
    STA.W $0FBE,X                                                        ;A2A8BC;
    LDA.W $0F7E,X                                                        ;A2A8BF;
    DEC A                                                                ;A2A8C2;
    STA.W $0FFE,X                                                        ;A2A8C3;
    LDA.W #Function_Ship_LandingOnZebes_ApplyBrakes                      ;A2A8C6;
    STA.W $0FB2,X                                                        ;A2A8C9;
    STZ.W $0FB0,X                                                        ;A2A8CC;

.return:
    RTL                                                                  ;A2A8CF;


Function_Ship_LandingOnZebes_ApplyBrakes:
    LDA.W $0FB0,X                                                        ;A2A8D0;
    ASL A                                                                ;A2A8D3;
    TAY                                                                  ;A2A8D4;
    LDA.W $0AFA                                                          ;A2A8D5;
    CLC                                                                  ;A2A8D8;
    ADC.W ShipBrakesMovementData,Y                                       ;A2A8D9;
    STA.W $0AFA                                                          ;A2A8DC;
    LDA.W $0FFE,X                                                        ;A2A8DF;
    CLC                                                                  ;A2A8E2;
    ADC.W ShipBrakesMovementData,Y                                       ;A2A8E3;
    STA.W $0FFE,X                                                        ;A2A8E6;
    LDA.W $0FBE,X                                                        ;A2A8E9;
    CLC                                                                  ;A2A8EC;
    ADC.W ShipBrakesMovementData,Y                                       ;A2A8ED;
    STA.W $0FBE,X                                                        ;A2A8F0;
    LDA.W $0F7E,X                                                        ;A2A8F3;
    CLC                                                                  ;A2A8F6;
    ADC.W ShipBrakesMovementData,Y                                       ;A2A8F7;
    STA.W $0F7E,X                                                        ;A2A8FA;
    LDA.W $0FB0,X                                                        ;A2A8FD;
    INC A                                                                ;A2A900;
    STA.W $0FB0,X                                                        ;A2A901;
    CMP.W #$0011                                                         ;A2A904;
    BMI .return                                                          ;A2A907;
    LDA.W #Function_Ship_LandingOnZebes_WaitForShipEntranceToOpen        ;A2A909;
    STA.W $0FB2,X                                                        ;A2A90C;
    LDA.W $0F7E,X                                                        ;A2A90F;
    STA.W $0FB0,X                                                        ;A2A912;
    LDA.W #$0001                                                         ;A2A915;
    STA.W $0FAE,X                                                        ;A2A918;
    STZ.W $0FAC                                                          ;A2A91B;
    LDA.W $0F7A,X                                                        ;A2A91E;
    INC A                                                                ;A2A921;
    STA.W $0AF6                                                          ;A2A922;
    STA.W $0B10                                                          ;A2A925;
    LDA.W #$0001                                                         ;A2A928;
    STA.W $1014,X                                                        ;A2A92B;
    LDA.W #InstList_ShipEntrancePad_Opening_0                            ;A2A92E;
    STA.W $1012,X                                                        ;A2A931;
    LDA.W #$0073                                                         ;A2A934;
    STA.W $0FA8                                                          ;A2A937;
    LDA.W #$0014                                                         ;A2A93A;
    JSL.L QueueSound_Lib3_Max6                                           ;A2A93D;

.return:
    RTL                                                                  ;A2A941;


Function_Ship_LandingOnZebes_WaitForShipEntranceToOpen:
    DEC.W $0FA8                                                          ;A2A942;
    BEQ .timerExpired                                                    ;A2A945;
    BPL .return                                                          ;A2A947;

.timerExpired:
    LDA.W #Function_Ship_LandingOnZebes_EjectSamus                       ;A2A949;
    STA.W $0FB2,X                                                        ;A2A94C;

.return:
    RTL                                                                  ;A2A94F;


Function_Ship_LandingOnZebes_EjectSamus:
    LDA.W $0FB0,X                                                        ;A2A950;
    SEC                                                                  ;A2A953;
    SBC.W #$001E                                                         ;A2A954;
    STA.B $12                                                            ;A2A957;
    LDA.W $0AFA                                                          ;A2A959;
    SEC                                                                  ;A2A95C;
    SBC.W #$0001                                                         ;A2A95D;
    STA.W $0AFA                                                          ;A2A960;
    CMP.B $12                                                            ;A2A963;
    BPL .return                                                          ;A2A965;
    LDA.W #Function_Ship_LandOnZebes_WaitForShipEntranceToClose_UnlockSamus ;A2A967;
    STA.W $0FB2,X                                                        ;A2A96A;
    LDA.W #$0001                                                         ;A2A96D;
    STA.W $1014,X                                                        ;A2A970;
    LDA.W #InstList_ShipEntrancePad_Closing                              ;A2A973;
    STA.W $1012,X                                                        ;A2A976;
    LDA.W #$0073                                                         ;A2A979;
    STA.W $0FA8                                                          ;A2A97C;
    LDA.W #$0015                                                         ;A2A97F;
    JSL.L QueueSound_Lib3_Max6                                           ;A2A982;

.return:
    RTL                                                                  ;A2A986;


Function_Ship_LandOnZebes_WaitForShipEntranceToClose_UnlockSamus:
    DEC.W $0FA8                                                          ;A2A987;
    BEQ .timerExpired                                                    ;A2A98A;
    BPL .return                                                          ;A2A98C;

.timerExpired:
    LDA.W #Function_Ship_Idle_HandleLettingSamusEnter                    ;A2A98E;
    STA.W $0FB2,X                                                        ;A2A991;
    LDA.W #SamusCurrentStateHandler_Normal                               ;A2A994;
    STA.W $0A42                                                          ;A2A997;
    LDA.W #SamusNewStateHandler_Normal                                   ;A2A99A;
    STA.W $0A44                                                          ;A2A99D;
    LDA.W #$0005                                                         ;A2A9A0;
    STA.L $7ED914                                                        ;A2A9A3;
    LDA.L $7ED8F8                                                        ;A2A9A7;
    ORA.W #$0001                                                         ;A2A9AB;
    STA.L $7ED8F8                                                        ;A2A9AE;
    STZ.W $078B                                                          ;A2A9B2;
    LDA.W $0952                                                          ;A2A9B5;
    JSL.L SaveToSRAM                                                     ;A2A9B8;

.return:
    RTL                                                                  ;A2A9BC;


Function_Ship_Idle_HandleLettingSamusEnter:
    LDA.W $0998                                                          ;A2A9BD;
    CMP.W #$0008                                                         ;A2A9C0;
    BNE .return                                                          ;A2A9C3;
    LDA.W $0A42                                                          ;A2A9C5;
    CMP.W #SamusCurrentStateHandler_Normal                               ;A2A9C8;
    BNE .return                                                          ;A2A9CB;
    LDA.W $0F7A,X                                                        ;A2A9CD;
    SEC                                                                  ;A2A9D0;
    SBC.W #$0008                                                         ;A2A9D1;
    CMP.W $0AF6                                                          ;A2A9D4;
    BPL .return                                                          ;A2A9D7;
    LDA.W $0F7A,X                                                        ;A2A9D9;
    CLC                                                                  ;A2A9DC;
    ADC.W #$0008                                                         ;A2A9DD;
    CMP.W $0AF6                                                          ;A2A9E0;
    BMI .return                                                          ;A2A9E3;
    LDA.W $0F7E,X                                                        ;A2A9E5;
    SEC                                                                  ;A2A9E8;
    SBC.W #$0040                                                         ;A2A9E9;
    CMP.W $0AFA                                                          ;A2A9EC;
    BPL .return                                                          ;A2A9EF;
    LDA.W $0F7E,X                                                        ;A2A9F1;
    CMP.W $0AFA                                                          ;A2A9F4;
    BMI .return                                                          ;A2A9F7;
    LDA.W $0A1F                                                          ;A2A9F9;
    AND.W #$00FF                                                         ;A2A9FC;
    BNE .return                                                          ;A2A9FF;
    LDA.B $8F                                                            ;A2AA01;
    BIT.W #$0400                                                         ;A2AA03;
    BNE .enterShip                                                       ;A2AA06;

.return:
    RTL                                                                  ;A2AA08;


.enterShip:
    LDA.W #Function_Ship_SamusEntering_WaitForEntrancePadToOpen          ;A2AA09;
    STA.W $0FB2,X                                                        ;A2AA0C;
    LDA.W $0AF6                                                          ;A2AA0F;
    CMP.W #$0480                                                         ;A2AA12;
    BEQ .skipMovingSamus                                                 ;A2AA15;
    LDA.W $0F7A,X                                                        ;A2AA17;
    STA.W $0AF6                                                          ;A2AA1A;
    STA.W $0B10                                                          ;A2AA1D;

.skipMovingSamus:
    JSL.L MakeSamusFaceForward                                           ;A2AA20;
    LDA.W #$001A                                                         ;A2AA24;
    JSL.L Run_Samus_Command                                              ;A2AA27;
    STZ.W $0E18                                                          ;A2AA2B;
    LDA.W $0F7E,X                                                        ;A2AA2E;
    DEC A                                                                ;A2AA31;
    STA.W $0FFE,X                                                        ;A2AA32;
    LDA.W #$0001                                                         ;A2AA35;
    STA.W $1014,X                                                        ;A2AA38;
    LDA.W #InstList_ShipEntrancePad_Opening_0                            ;A2AA3B;
    STA.W $1012,X                                                        ;A2AA3E;
    LDA.W #$0073                                                         ;A2AA41;
    STA.W $0FA8                                                          ;A2AA44;
    LDA.W #$0014                                                         ;A2AA47;
    JSL.L QueueSound_Lib3_Max6                                           ;A2AA4A;
    RTL                                                                  ;A2AA4E;


Function_Ship_SamusEntering_WaitForEntrancePadToOpen:
    DEC.W $0FA8                                                          ;A2AA4F;
    BEQ .timerExpired                                                    ;A2AA52;
    BPL .return                                                          ;A2AA54;

.timerExpired:
    LDA.W #Function_Ship_SamusEntering_LowerSamus                        ;A2AA56;
    STA.W $0FB2,X                                                        ;A2AA59;

.return:
    RTL                                                                  ;A2AA5C;


Function_Ship_SamusEntering_LowerSamus:
    LDA.W $0FB0,X                                                        ;A2AA5D;
    CLC                                                                  ;A2AA60;
    ADC.W #$0012                                                         ;A2AA61;
    STA.B $12                                                            ;A2AA64;
    LDA.W $0AFA                                                          ;A2AA66;
    CLC                                                                  ;A2AA69;
    ADC.W #$0002                                                         ;A2AA6A;
    STA.W $0AFA                                                          ;A2AA6D;
    CMP.B $12                                                            ;A2AA70;
    BMI .return                                                          ;A2AA72;
    LDA.W #Function_Ship_SamusEntering_WaitForEntrancePadToClose         ;A2AA74;
    STA.W $0FB2,X                                                        ;A2AA77;
    LDA.W #$0001                                                         ;A2AA7A;
    STA.W $1014,X                                                        ;A2AA7D;
    LDA.W #InstList_ShipEntrancePad_Closing                              ;A2AA80;
    STA.W $1012,X                                                        ;A2AA83;
    LDA.W #$0073                                                         ;A2AA86;
    STA.W $0FA8                                                          ;A2AA89;
    LDA.W #$0015                                                         ;A2AA8C;
    JSL.L QueueSound_Lib3_Max6                                           ;A2AA8F;

.return:
    RTL                                                                  ;A2AA93;


Function_Ship_SamusEntering_WaitForEntrancePadToClose:
    DEC.W $0FA8                                                          ;A2AA94;
    BEQ .timerExpired                                                    ;A2AA97;
    BPL .return                                                          ;A2AA99;

.timerExpired:
    LDA.W #Function_Ship_SamusEntered_LiftoffOrRestoreSamusEnergyAmmo    ;A2AA9B;
    STA.W $0FB2,X                                                        ;A2AA9E;

.return:
    RTL                                                                  ;A2AAA1;


Function_Ship_SamusEntered_LiftoffOrRestoreSamusEnergyAmmo:
    LDA.W #$000E                                                         ;A2AAA2;
    JSL.L CheckIfEvent_inA_HasHappened                                   ;A2AAA5;
    BCS .liftoff                                                         ;A2AAA9;
    LDA.W #$0002                                                         ;A2AAAB;
    JSL.L Restore_A_Energy_ToSamus                                       ;A2AAAE;
    LDA.W #$0002                                                         ;A2AAB2;
    JSL.L Restore_A_Missiles_ToSamus                                     ;A2AAB5;
    LDA.W #$0002                                                         ;A2AAB9;
    JSL.L Restore_A_SuperMissiles_ToSamus                                ;A2AABC;
    LDA.W #$0002                                                         ;A2AAC0;
    JSL.L Restore_A_PowerBombs_ToSamus                                   ;A2AAC3;
    LDA.W $09D6                                                          ;A2AAC7;
    CMP.W $09D4                                                          ;A2AACA;
    BMI .return                                                          ;A2AACD;
    LDA.W $09C2                                                          ;A2AACF;
    CMP.W $09C4                                                          ;A2AAD2;
    BMI .return                                                          ;A2AAD5;
    LDA.W $09C6                                                          ;A2AAD7;
    CMP.W $09C8                                                          ;A2AADA;
    BMI .return                                                          ;A2AADD;
    LDA.W $09CA                                                          ;A2AADF;
    CMP.W $09CC                                                          ;A2AAE2;
    BMI .return                                                          ;A2AAE5;
    LDA.W $09CE                                                          ;A2AAE7;
    CMP.W $09D0                                                          ;A2AAEA;
    BMI .return                                                          ;A2AAED;
    BRA .continue                                                        ;A2AAEF;

    LDA.B $8D                                                            ;A2AAF1;
    BIT.W #$8000                                                         ;A2AAF3;
    BEQ .continue                                                        ;A2AAF6;

.liftoff:
    LDA.W #Function_Ship_Liftoff_LoadDustCloudTiles                      ;A2AAF8;
    STA.W $0FB2,X                                                        ;A2AAFB;
    STZ.W $0FF2,X                                                        ;A2AAFE;
    STZ.W $0FF0,X                                                        ;A2AB01;
    STZ.W $0DEC                                                          ;A2AB04;
    STZ.W $0DEE                                                          ;A2AB07;
    STZ.W $0DF0                                                          ;A2AB0A;
    STZ.W $0DF2                                                          ;A2AB0D;
    LDA.W #$000A                                                         ;A2AB10;
    JSL.L Run_Samus_Command                                              ;A2AB13;
    RTL                                                                  ;A2AB17;


.continue:
    LDA.W #Function_Ship_SamusEntered_HandleSaveConfirmation             ;A2AB18;
    STA.W $0FB2,X                                                        ;A2AB1B;

.return:
    RTL                                                                  ;A2AB1E;


Function_Ship_SamusEntered_HandleSaveConfirmation:
    LDA.W #$001C                                                         ;A2AB1F;
    JSL.L MessageBox_Routine                                             ;A2AB22;
    CMP.W #$0002                                                         ;A2AB26;
    BEQ .selectedNo                                                      ;A2AB29;
    LDA.L $7ED8F8                                                        ;A2AB2B;
    ORA.W #$0001                                                         ;A2AB2F;
    STA.L $7ED8F8                                                        ;A2AB32;
    STZ.W $078B                                                          ;A2AB36;
    LDA.W $0952                                                          ;A2AB39;
    JSL.L SaveToSRAM                                                     ;A2AB3C;

.selectedNo:
    LDA.W #Function_Ship_SamusExiting_WaitForEntrancePadToOpen           ;A2AB40;
    STA.W $0FB2,X                                                        ;A2AB43;
    LDA.W #$0001                                                         ;A2AB46;
    STA.W $1014,X                                                        ;A2AB49;
    LDA.W #InstList_ShipEntrancePad_Opening_0                            ;A2AB4C;
    STA.W $1012,X                                                        ;A2AB4F;
    LDA.W #$0073                                                         ;A2AB52;
    STA.W $0FA8                                                          ;A2AB55;
    LDA.W #$0014                                                         ;A2AB58;
    JSL.L QueueSound_Lib3_Max6                                           ;A2AB5B;
    RTL                                                                  ;A2AB5F;


Function_Ship_SamusExiting_WaitForEntrancePadToOpen:
    DEC.W $0FA8                                                          ;A2AB60;
    BEQ .timerExpired                                                    ;A2AB63;
    BPL .return                                                          ;A2AB65;

.timerExpired:
    LDA.W #Function_Ship_SamusExiting_RaiseSamus                         ;A2AB67;
    STA.W $0FB2,X                                                        ;A2AB6A;

.return:
    RTL                                                                  ;A2AB6D;


Function_Ship_SamusExiting_RaiseSamus:
    LDA.W $0FB0,X                                                        ;A2AB6E;
    SEC                                                                  ;A2AB71;
    SBC.W #$001E                                                         ;A2AB72;
    STA.B $12                                                            ;A2AB75;
    LDA.W $0AFA                                                          ;A2AB77;
    SEC                                                                  ;A2AB7A;
    SBC.W #$0002                                                         ;A2AB7B;
    STA.W $0AFA                                                          ;A2AB7E;
    CMP.B $12                                                            ;A2AB81;
    BPL .return                                                          ;A2AB83;
    LDA.W #Function_Ship_SamusExiting_WaitForEntrancePadToClose          ;A2AB85;
    STA.W $0FB2,X                                                        ;A2AB88;
    LDA.W #$0001                                                         ;A2AB8B;
    STA.W $1014,X                                                        ;A2AB8E;
    LDA.W #InstList_ShipEntrancePad_Closing                              ;A2AB91;
    STA.W $1012,X                                                        ;A2AB94;
    LDA.W #$0073                                                         ;A2AB97;
    STA.W $0FA8                                                          ;A2AB9A;
    LDA.W #$0015                                                         ;A2AB9D;
    JSL.L QueueSound_Lib3_Max6                                           ;A2ABA0;

.return:
    RTL                                                                  ;A2ABA4;


Function_Ship_SamusExiting_WaitForEntrancePadToClose:
    DEC.W $0FA8                                                          ;A2ABA5;
    BEQ .timerExpired                                                    ;A2ABA8;
    BPL .return                                                          ;A2ABAA;

.timerExpired:
    LDA.W #Function_Ship_Idle_HandleLettingSamusEnter                    ;A2ABAC;
    STA.W $0FB2,X                                                        ;A2ABAF;
    LDA.W $0998                                                          ;A2ABB2;
    CMP.W #$0028                                                         ;A2ABB5;
    BPL .return                                                          ;A2ABB8;
    LDA.W #SamusCurrentStateHandler_Normal                               ;A2ABBA;
    STA.W $0A42                                                          ;A2ABBD;
    LDA.W #SamusNewStateHandler_Normal                                   ;A2ABC0;
    STA.W $0A44                                                          ;A2ABC3;

.return:
    RTL                                                                  ;A2ABC6;


Function_Ship_Liftoff_LoadDustCloudTiles:
    LDY.W $0DEC                                                          ;A2ABC7;
    PHX                                                                  ;A2ABCA;
    LDX.W $0330                                                          ;A2ABCB;
    LDA.W #$0400                                                         ;A2ABCE;
    STA.B $D0,X                                                          ;A2ABD1;
    INX                                                                  ;A2ABD3;
    INX                                                                  ;A2ABD4;
    LDA.W .src,Y                                                         ;A2ABD5;
    STA.B $D0,X                                                          ;A2ABD8;
    INX                                                                  ;A2ABDA;
    INX                                                                  ;A2ABDB;
    SEP #$20                                                             ;A2ABDC;
    LDA.B #$94                                                           ;A2ABDE;
    STA.B $D0,X                                                          ;A2ABE0;
    REP #$20                                                             ;A2ABE2;
    INX                                                                  ;A2ABE4;
    LDA.W .dest,Y                                                        ;A2ABE5;
    STA.B $D0,X                                                          ;A2ABE8;
    INX                                                                  ;A2ABEA;
    INX                                                                  ;A2ABEB;
    STX.W $0330                                                          ;A2ABEC;
    PLX                                                                  ;A2ABEF;
    LDA.W $0DEC                                                          ;A2ABF0;
    INC A                                                                ;A2ABF3;
    INC A                                                                ;A2ABF4;
    STA.W $0DEC                                                          ;A2ABF5;
    CMP.W #$000A                                                         ;A2ABF8;
    BMI .return                                                          ;A2ABFB;
    LDA.W #Function_Ship_Liftoff_FireUpEngines_SpawnDustClouds           ;A2ABFD;
    STA.W $0FB2,X                                                        ;A2AC00;
    STZ.W $0DEC                                                          ;A2AC03;

.return:
    RTL                                                                  ;A2AC06;


.src:
; Source addresses (bank $94)
    dw Tiles_GunshipLiftoffDustClouds                                    ;A2AC07;
    dw Tiles_GunshipLiftoffDustClouds+$400                               ;A2AC09;
    dw Tiles_GunshipLiftoffDustClouds+$800                               ;A2AC0B;
    dw Tiles_GunshipLiftoffDustClouds+$C00                               ;A2AC0D;
    dw Tiles_GunshipLiftoffDustClouds+$1000                              ;A2AC0F;

.dest:
; Destination VRAM addresses
    dw $7600,$7800,$7A00,$7C00,$7E00                                     ;A2AC11;

Function_Ship_Liftoff_FireUpEngines_SpawnDustClouds:
    LDA.W $0FF0,X                                                        ;A2AC1B;
    CMP.W #$0040                                                         ;A2AC1E;
    BPL .rumbleIntensifies                                               ;A2AC21;
    BIT.W #$0001                                                         ;A2AC23;
    BEQ +                                                                ;A2AC26;
    LDA.W $0AFA                                                          ;A2AC28;
    CLC                                                                  ;A2AC2B;
    ADC.W #$0001                                                         ;A2AC2C;
    STA.W $0AFA                                                          ;A2AC2F;
    STA.W $0B14                                                          ;A2AC32;
    BRA .merge                                                           ;A2AC35;


  + LDA.W $0AFA                                                          ;A2AC37;
    SEC                                                                  ;A2AC3A;
    SBC.W #$0001                                                         ;A2AC3B;
    STA.W $0AFA                                                          ;A2AC3E;
    STA.W $0B14                                                          ;A2AC41;
    BRA .merge                                                           ;A2AC44;


.rumbleIntensifies:
    BIT.W #$0001                                                         ;A2AC46;
    BEQ +                                                                ;A2AC49;
    LDA.W $0AFA                                                          ;A2AC4B;
    CLC                                                                  ;A2AC4E;
    ADC.W #$0002                                                         ;A2AC4F;
    STA.W $0AFA                                                          ;A2AC52;
    STA.W $0B14                                                          ;A2AC55;
    BRA .merge                                                           ;A2AC58;


  + LDA.W $0AFA                                                          ;A2AC5A;
    SEC                                                                  ;A2AC5D;
    SBC.W #$0002                                                         ;A2AC5E;
    STA.W $0AFA                                                          ;A2AC61;
    STA.W $0B14                                                          ;A2AC64;

.merge:
    LDA.W $0AFA                                                          ;A2AC67;
    SEC                                                                  ;A2AC6A;
    SBC.W #$0011                                                         ;A2AC6B;
    STA.W $0F7E,X                                                        ;A2AC6E;
    DEC A                                                                ;A2AC71;
    STA.W $0FFE,X                                                        ;A2AC72;
    LDA.W $0AFA                                                          ;A2AC75;
    CLC                                                                  ;A2AC78;
    ADC.W #$0017                                                         ;A2AC79;
    STA.W $0FBE,X                                                        ;A2AC7C;
    LDA.W $0FF0,X                                                        ;A2AC7F;
    INC A                                                                ;A2AC82;
    STA.W $0FF0,X                                                        ;A2AC83;
    CMP.W #$0080                                                         ;A2AC86;
    BMI .spawnDustClouds                                                 ;A2AC89;
    LDA.W #Function_Ship_Liftoff_SteadyRise                              ;A2AC8B;
    STA.W $0FB2,X                                                        ;A2AC8E;
    STZ.W $0FA8                                                          ;A2AC91;
    RTL                                                                  ;A2AC94;


.spawnDustClouds:
    CMP.W #$0040                                                         ;A2AC95;
    BNE .return                                                          ;A2AC98;
    LDA.W #$0000                                                         ;A2AC9A;
    LDY.W #EnemyProjectile_GunShipLiftoffDustClouds                      ;A2AC9D;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A2ACA0;
    LDA.W #$0002                                                         ;A2ACA4;
    LDY.W #EnemyProjectile_GunShipLiftoffDustClouds                      ;A2ACA7;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A2ACAA;
    LDA.W #$0004                                                         ;A2ACAE;
    LDY.W #EnemyProjectile_GunShipLiftoffDustClouds                      ;A2ACB1;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A2ACB4;
    LDA.W #$0006                                                         ;A2ACB8;
    LDY.W #EnemyProjectile_GunShipLiftoffDustClouds                      ;A2ACBB;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A2ACBE;
    LDA.W #$0008                                                         ;A2ACC2;
    LDY.W #EnemyProjectile_GunShipLiftoffDustClouds                      ;A2ACC5;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A2ACC8;
    LDA.W #$000A                                                         ;A2ACCC;
    LDY.W #EnemyProjectile_GunShipLiftoffDustClouds                      ;A2ACCF;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A2ACD2;

.return:
    RTL                                                                  ;A2ACD6;


Function_Ship_Liftoff_SteadyRise:
    LDA.W $0AFA                                                          ;A2ACD7;
    SEC                                                                  ;A2ACDA;
    SBC.W #$0002                                                         ;A2ACDB;
    STA.W $0AFA                                                          ;A2ACDE;
    LDA.W $0AFA                                                          ;A2ACE1;
    SEC                                                                  ;A2ACE4;
    SBC.W #$0011                                                         ;A2ACE5;
    STA.W $0F7E,X                                                        ;A2ACE8;
    DEC A                                                                ;A2ACEB;
    STA.W $0FFE,X                                                        ;A2ACEC;
    LDA.W $0AFA                                                          ;A2ACEF;
    CLC                                                                  ;A2ACF2;
    ADC.W #$0017                                                         ;A2ACF3;
    STA.W $0FBE,X                                                        ;A2ACF6;
    LDA.W $0F7E,X                                                        ;A2ACF9;
    CMP.W #$0380                                                         ;A2ACFC;
    BPL .return                                                          ;A2ACFF;
    LDA.W #Function_Ship_Liftoff_Accelerating_SetGameState               ;A2AD01;
    STA.W $0FB2,X                                                        ;A2AD04;
    LDA.W #$0200                                                         ;A2AD07;
    STA.W $0FF2,X                                                        ;A2AD0A;

.return:
    RTL                                                                  ;A2AD0D;


Function_Ship_Liftoff_Accelerating_SetGameState:
    JSL.L Function_Ship_Liftoff_Accelerating                             ;A2AD0E;
    LDA.W $0F7E,X                                                        ;A2AD12;
    CMP.W #$0100                                                         ;A2AD15;
    BPL .return                                                          ;A2AD18;
    LDA.W #Function_Ship_Liftoff_Accelerating                            ;A2AD1A;
    STA.W $0FB2,X                                                        ;A2AD1D;
    LDA.W #$0026                                                         ;A2AD20;
    STA.W $0998                                                          ;A2AD23;
    STZ.W $0723                                                          ;A2AD26;
    STZ.W $0725                                                          ;A2AD29;

.return:
    RTL                                                                  ;A2AD2C;


Function_Ship_Liftoff_Accelerating:
    LDA.W $0FF2,X                                                        ;A2AD2D;
    CLC                                                                  ;A2AD30;
    ADC.W #$0040                                                         ;A2AD31;
    STA.W $0FF2,X                                                        ;A2AD34;
    AND.W #$FF00                                                         ;A2AD37;
    CMP.W #$0A00                                                         ;A2AD3A;
    BMI +                                                                ;A2AD3D;
    LDA.W #$0900                                                         ;A2AD3F;
    STA.W $0FF2,X                                                        ;A2AD42;

  + LDA.W $0FF2,X                                                        ;A2AD45;
    XBA                                                                  ;A2AD48;
    PHA                                                                  ;A2AD49;
    AND.W #$FF00                                                         ;A2AD4A;
    STA.B $14                                                            ;A2AD4D;
    PLA                                                                  ;A2AD4F;
    AND.W #$00FF                                                         ;A2AD50;
    STA.B $12                                                            ;A2AD53;
    LDA.W $0AFC                                                          ;A2AD55;
    SEC                                                                  ;A2AD58;
    SBC.B $14                                                            ;A2AD59;
    STA.W $0AFC                                                          ;A2AD5B;
    LDA.W $0AFA                                                          ;A2AD5E;
    SBC.B $12                                                            ;A2AD61;
    STA.W $0AFA                                                          ;A2AD63;
    LDA.W $0AFA                                                          ;A2AD66;
    SEC                                                                  ;A2AD69;
    SBC.W #$0011                                                         ;A2AD6A;
    STA.W $0F7E,X                                                        ;A2AD6D;
    DEC A                                                                ;A2AD70;
    STA.W $0FFE,X                                                        ;A2AD71;
    LDA.W $0AFA                                                          ;A2AD74;
    CLC                                                                  ;A2AD77;
    ADC.W #$0017                                                         ;A2AD78;
    STA.W $0FBE,X                                                        ;A2AD7B;
    RTL                                                                  ;A2AD7E;


RTL_A2AD7F:
    RTL                                                                  ;A2AD7F;


RTL_A2AD80:
    RTL                                                                  ;A2AD80;


Spritemap_Ship_0:
    dw $0012                                                             ;A2AD81;
    %spritemapEntry(1, $4201, $FE, 0, 1, 3, 7, $120)
    %spritemapEntry(1, $4211, $FE, 0, 1, 3, 7, $10E)
    %spritemapEntry(1, $4221, $FE, 0, 1, 3, 7, $10C)
    %spritemapEntry(1, $4231, $FE, 0, 1, 3, 7, $10A)
    %spritemapEntry(1, $4241, $FE, 0, 1, 3, 7, $108)
    %spritemapEntry(1, $4201, $EE, 0, 1, 3, 7, $106)
    %spritemapEntry(1, $4211, $EE, 0, 1, 3, 7, $104)
    %spritemapEntry(1, $4221, $EE, 0, 1, 3, 7, $102)
    %spritemapEntry(1, $4231, $EE, 0, 1, 3, 7, $100)
    %spritemapEntry(1, $43F1, $FE, 0, 0, 3, 7, $120)
    %spritemapEntry(1, $43E1, $FE, 0, 0, 3, 7, $10E)
    %spritemapEntry(1, $43D1, $FE, 0, 0, 3, 7, $10C)
    %spritemapEntry(1, $43C1, $FE, 0, 0, 3, 7, $10A)
    %spritemapEntry(1, $43B1, $FE, 0, 0, 3, 7, $108)
    %spritemapEntry(1, $43F1, $EE, 0, 0, 3, 7, $106)
    %spritemapEntry(1, $43E1, $EE, 0, 0, 3, 7, $104)
    %spritemapEntry(1, $43D1, $EE, 0, 0, 3, 7, $102)
    %spritemapEntry(1, $43C1, $EE, 0, 0, 3, 7, $100)

Spritemap_Ship_1:
    dw $0022                                                             ;A2ADDD;
    %spritemapEntry(1, $4201, $06, 0, 1, 3, 7, $162)
    %spritemapEntry(1, $4211, $06, 0, 1, 3, 7, $160)
    %spritemapEntry(1, $4221, $06, 0, 1, 3, 7, $14E)
    %spritemapEntry(1, $4231, $06, 0, 1, 3, 7, $14C)
    %spritemapEntry(1, $4241, $06, 0, 1, 3, 7, $14A)
    %spritemapEntry(1, $4201, $F6, 0, 1, 3, 7, $148)
    %spritemapEntry(1, $4211, $F6, 0, 1, 3, 7, $146)
    %spritemapEntry(1, $4221, $F6, 0, 1, 3, 7, $144)
    %spritemapEntry(1, $4231, $F6, 0, 1, 3, 7, $142)
    %spritemapEntry(1, $4241, $F6, 0, 1, 3, 7, $140)
    %spritemapEntry(1, $4251, $F6, 0, 1, 3, 7, $12E)
    %spritemapEntry(1, $4201, $E6, 0, 1, 3, 7, $12C)
    %spritemapEntry(1, $4211, $E6, 0, 1, 3, 7, $12A)
    %spritemapEntry(1, $4221, $E6, 0, 1, 3, 7, $128)
    %spritemapEntry(1, $4231, $E6, 0, 1, 3, 7, $126)
    %spritemapEntry(1, $4241, $E6, 0, 1, 3, 7, $124)
    %spritemapEntry(1, $4251, $E6, 0, 1, 3, 7, $122)
    %spritemapEntry(1, $43F1, $06, 0, 0, 3, 7, $162)
    %spritemapEntry(1, $43E1, $06, 0, 0, 3, 7, $160)
    %spritemapEntry(1, $43D1, $06, 0, 0, 3, 7, $14E)
    %spritemapEntry(1, $43C1, $06, 0, 0, 3, 7, $14C)
    %spritemapEntry(1, $43B1, $06, 0, 0, 3, 7, $14A)
    %spritemapEntry(1, $43F1, $F6, 0, 0, 3, 7, $148)
    %spritemapEntry(1, $43E1, $F6, 0, 0, 3, 7, $146)
    %spritemapEntry(1, $43D1, $F6, 0, 0, 3, 7, $144)
    %spritemapEntry(1, $43C1, $F6, 0, 0, 3, 7, $142)
    %spritemapEntry(1, $43B1, $F6, 0, 0, 3, 7, $140)
    %spritemapEntry(1, $43A1, $F6, 0, 0, 3, 7, $12E)
    %spritemapEntry(1, $43F1, $E6, 0, 0, 3, 7, $12C)
    %spritemapEntry(1, $43E1, $E6, 0, 0, 3, 7, $12A)
    %spritemapEntry(1, $43D1, $E6, 0, 0, 3, 7, $128)
    %spritemapEntry(1, $43C1, $E6, 0, 0, 3, 7, $126)
    %spritemapEntry(1, $43B1, $E6, 0, 0, 3, 7, $124)
    %spritemapEntry(1, $43A1, $E6, 0, 0, 3, 7, $122)

Spritemap_Ship_2:
    dw $0004                                                             ;A2AE89;
    %spritemapEntry(0, $00, $F6, 0, 1, 3, 7, $165)
    %spritemapEntry(0, $08, $F6, 0, 1, 3, 7, $164)
    %spritemapEntry(0, $1F8, $F6, 0, 0, 3, 7, $165)
    %spritemapEntry(0, $1F0, $F6, 0, 0, 3, 7, $164)

Spritemap_Ship_3:
    dw $0004                                                             ;A2AE9F;
    %spritemapEntry(0, $00, $F4, 0, 1, 3, 7, $165)
    %spritemapEntry(0, $08, $F4, 0, 1, 3, 7, $164)
    %spritemapEntry(0, $1F8, $F4, 0, 0, 3, 7, $165)
    %spritemapEntry(0, $1F0, $F4, 0, 0, 3, 7, $164)

Spritemap_Ship_4:
    dw $0004                                                             ;A2AEB5;
    %spritemapEntry(0, $00, $F2, 0, 1, 3, 7, $165)
    %spritemapEntry(0, $08, $F3, 0, 1, 3, 7, $164)
    %spritemapEntry(0, $1F8, $F2, 0, 0, 3, 7, $165)
    %spritemapEntry(0, $1F0, $F3, 0, 0, 3, 7, $164)

Spritemap_Ship_5:
    dw $0008                                                             ;A2AECB;
    %spritemapEntry(0, $1F6, $F2, 0, 0, 3, 7, $165)
    %spritemapEntry(0, $1EE, $F3, 0, 0, 3, 7, $164)
    %spritemapEntry(0, $02, $F2, 0, 1, 3, 7, $165)
    %spritemapEntry(0, $0A, $F3, 0, 1, 3, 7, $164)
    %spritemapEntry(0, $00, $F5, 0, 1, 3, 7, $167)
    %spritemapEntry(0, $08, $F5, 0, 1, 3, 7, $166)
    %spritemapEntry(0, $1F8, $F5, 0, 0, 3, 7, $167)
    %spritemapEntry(0, $1F0, $F5, 0, 0, 3, 7, $166)

Spritemap_Ship_6:
    dw $0008                                                             ;A2AEF5;
    %spritemapEntry(0, $04, $F2, 0, 1, 3, 7, $165)
    %spritemapEntry(0, $0C, $F4, 0, 1, 3, 7, $164)
    %spritemapEntry(0, $1F4, $F2, 0, 0, 3, 7, $165)
    %spritemapEntry(0, $1EC, $F4, 0, 0, 3, 7, $164)
    %spritemapEntry(0, $00, $F4, 0, 1, 3, 7, $167)
    %spritemapEntry(0, $08, $F4, 0, 1, 3, 7, $166)
    %spritemapEntry(0, $1F8, $F4, 0, 0, 3, 7, $167)
    %spritemapEntry(0, $1F0, $F4, 0, 0, 3, 7, $166)

Spritemap_Ship_7:
    dw $0008                                                             ;A2AF1F;
    %spritemapEntry(0, $06, $F2, 0, 1, 3, 7, $165)
    %spritemapEntry(0, $0E, $F4, 0, 1, 3, 7, $164)
    %spritemapEntry(0, $1F2, $F2, 0, 0, 3, 7, $165)
    %spritemapEntry(0, $1EA, $F4, 0, 0, 3, 7, $164)
    %spritemapEntry(0, $00, $F3, 0, 1, 3, 7, $167)
    %spritemapEntry(0, $08, $F3, 0, 1, 3, 7, $166)
    %spritemapEntry(0, $1F8, $F3, 0, 0, 3, 7, $167)
    %spritemapEntry(0, $1F0, $F3, 0, 0, 3, 7, $166)

Spritemap_Ship_8:
    dw $0008                                                             ;A2AF49;
    %spritemapEntry(0, $08, $F2, 0, 1, 3, 7, $165)
    %spritemapEntry(0, $10, $F4, 0, 1, 3, 7, $164)
    %spritemapEntry(0, $1F0, $F2, 0, 0, 3, 7, $165)
    %spritemapEntry(0, $1E8, $F4, 0, 0, 3, 7, $164)
    %spritemapEntry(0, $00, $F3, 0, 1, 3, 7, $167)
    %spritemapEntry(0, $08, $F3, 0, 1, 3, 7, $166)
    %spritemapEntry(0, $1F8, $F3, 0, 0, 3, 7, $167)
    %spritemapEntry(0, $1F0, $F3, 0, 0, 3, 7, $166)

Spritemap_Ship_9:
    dw $0008                                                             ;A2AF73;
    %spritemapEntry(0, $0A, $F3, 0, 1, 3, 7, $165)
    %spritemapEntry(0, $12, $F6, 0, 1, 3, 7, $164)
    %spritemapEntry(0, $1EE, $F3, 0, 0, 3, 7, $165)
    %spritemapEntry(0, $1E6, $F6, 0, 0, 3, 7, $164)
    %spritemapEntry(0, $00, $F3, 0, 1, 3, 7, $167)
    %spritemapEntry(0, $08, $F3, 0, 1, 3, 7, $166)
    %spritemapEntry(0, $1F8, $F3, 0, 0, 3, 7, $167)
    %spritemapEntry(0, $1F0, $F3, 0, 0, 3, 7, $166)

Spritemap_Ship_A:
    dw $0008                                                             ;A2AF9D;
    %spritemapEntry(0, $0C, $F3, 0, 1, 3, 7, $165)
    %spritemapEntry(0, $14, $F6, 0, 1, 3, 7, $164)
    %spritemapEntry(0, $1EC, $F3, 0, 0, 3, 7, $165)
    %spritemapEntry(0, $1E4, $F6, 0, 0, 3, 7, $164)
    %spritemapEntry(0, $00, $F3, 0, 1, 3, 7, $167)
    %spritemapEntry(0, $08, $F3, 0, 1, 3, 7, $166)
    %spritemapEntry(0, $1F8, $F3, 0, 0, 3, 7, $167)
    %spritemapEntry(0, $1F0, $F3, 0, 0, 3, 7, $166)

Spritemap_Ship_B:
    dw $0004                                                             ;A2AFC7;
    %spritemapEntry(0, $00, $F7, 0, 1, 3, 7, $165)
    %spritemapEntry(0, $08, $F7, 0, 1, 3, 7, $164)
    %spritemapEntry(0, $1F8, $F7, 0, 0, 3, 7, $165)
    %spritemapEntry(0, $1F0, $F7, 0, 0, 3, 7, $164)

Spritemap_Ship_C:
    dw $0004                                                             ;A2AFDD;
    %spritemapEntry(0, $00, $F8, 0, 1, 3, 7, $165)
    %spritemapEntry(0, $08, $F8, 0, 1, 3, 7, $164)
    %spritemapEntry(0, $1F8, $F8, 0, 0, 3, 7, $165)
    %spritemapEntry(0, $1F0, $F8, 0, 0, 3, 7, $164)

Palette_Mellow:
    dw $3800,$72FA,$55B0,$2845,$1801,$6210,$496B,$38C6                   ;A2AFF3;
    dw $2C63,$2FEF,$030D,$0209,$0145,$183F,$1014,$080A                   ;A2B003;

InstList_Mellow_Mella_Menu:
    dw $0002,Spritemap_Mellow_Mella_Menu_0                               ;A2B013;
    dw $0002,Spritemap_Mellow_Mella_Menu_1                               ;A2B017;
    dw $0002,Spritemap_Mellow_Mella_Menu_2                               ;A2B01B;
    dw $0002,Spritemap_Mellow_Mella_Menu_3                               ;A2B01F;
    dw Instruction_Common_GotoY                                          ;A2B023;
    dw InstList_Mellow_Mella_Menu                                        ;A2B025;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_OldMovementData_A2B027:
    dw $0002,$FFFC,$FFFE,$0004,$0002,$FFFE,$0002,$0004                   ;A2B027;
    dw $0002,$FFFE,$FFFE,$0002,$FFFC,$FFFE,$0002,$0002                   ;A2B037;
    dw $FFFE,$FFFE,$0004,$0002,$FFFC,$FFFE,$0002,$FFFE                   ;A2B047;
    dw $FFFC,$FFFE,$0002,$0002,$FFFE,$0004,$0002,$FFFE                   ;A2B057;
    dw $FFFE,$0002                                                       ;A2B067;
endif ; !FEATURE_KEEP_UNREFERENCED

InitAI_Mellow_Mella_Menu:
    LDX.W $0E54                                                          ;A2B06B;
    STZ.W $0FB0,X                                                        ;A2B06E;
    LDA.W #Function_Flies_IdleMovement_ClockwiseCircle                   ;A2B071;
    STA.W $0FB2,X                                                        ;A2B074;
    LDA.W #InstList_Mellow_Mella_Menu                                    ;A2B077;
    STA.W $0F92,X                                                        ;A2B07A;
    LDA.W #Spritemap_CommonA2_Nothing                                    ;A2B07D;
    STA.W $0F8E,X                                                        ;A2B080;
    LDA.W #$0001                                                         ;A2B083;
    STA.W $0F94,X                                                        ;A2B086;
    LDA.W #Spritemap_CommonA2_Nothing                                    ;A2B089;
    STA.W $0F8E,X                                                        ;A2B08C;
    RTL                                                                  ;A2B08F;


MoveFlyAccordingToAngle:
    TXY                                                                  ;A2B090;
    LDX.W $0FB0,Y                                                        ;A2B091;
    LDA.L SineCosineTables_8bitSine_SignExtended-1,X                     ;A2B094;
    AND.W #$FF00                                                         ;A2B098;
    CLC                                                                  ;A2B09B;
    ADC.W $0F7C,Y                                                        ;A2B09C;
    STA.W $0F7C,Y                                                        ;A2B09F;
    LDA.L SineCosineTables_8bitSine_SignExtended,X                       ;A2B0A2;
    XBA                                                                  ;A2B0A6;
    BPL .lowByteX                                                        ;A2B0A7;
    ORA.W #$FF00                                                         ;A2B0A9;
    BRA +                                                                ;A2B0AC;


.lowByteX:
    AND.W #$00FF                                                         ;A2B0AE;

  + ADC.W $0F7A,Y                                                        ;A2B0B1;
    STA.W $0F7A,Y                                                        ;A2B0B4;
    LDA.L SineCosineTables_NegativeCosine_SignExtended-1,X               ;A2B0B7;
    AND.W #$FF00                                                         ;A2B0BB;
    CLC                                                                  ;A2B0BE;
    ADC.W $0F80,Y                                                        ;A2B0BF;
    STA.W $0F80,Y                                                        ;A2B0C2;
    LDA.L SineCosineTables_NegativeCosine_SignExtended,X                 ;A2B0C5;
    XBA                                                                  ;A2B0C9;
    BPL .lowByteY                                                        ;A2B0CA;
    ORA.W #$FF00                                                         ;A2B0CC;
    BRA +                                                                ;A2B0CF;


.lowByteY:
    AND.W #$00FF                                                         ;A2B0D1;

  + ADC.W $0F7E,Y                                                        ;A2B0D4;
    STA.W $0F7E,Y                                                        ;A2B0D7;
    TYX                                                                  ;A2B0DA;
    RTS                                                                  ;A2B0DB;


MoveFlyAccordingToVelocities:
    LDA.W $0FA9,X                                                        ;A2B0DC;
    AND.W #$FF00                                                         ;A2B0DF;
    CLC                                                                  ;A2B0E2;
    ADC.W $0F7C,X                                                        ;A2B0E3;
    STA.W $0F7C,X                                                        ;A2B0E6;
    LDA.W $0FAA,X                                                        ;A2B0E9;
    XBA                                                                  ;A2B0EC;
    BPL .lowByteX                                                        ;A2B0ED;
    ORA.W #$FF00                                                         ;A2B0EF;
    BRA +                                                                ;A2B0F2;


.lowByteX:
    AND.W #$00FF                                                         ;A2B0F4;

  + ADC.W $0F7A,X                                                        ;A2B0F7;
    STA.W $0F7A,X                                                        ;A2B0FA;
    LDA.W $0FAB,X                                                        ;A2B0FD;
    AND.W #$FF00                                                         ;A2B100;
    CLC                                                                  ;A2B103;
    ADC.W $0F80,X                                                        ;A2B104;
    STA.W $0F80,X                                                        ;A2B107;
    LDA.W $0FAC,X                                                        ;A2B10A;
    XBA                                                                  ;A2B10D;
    BPL .lowByteY                                                        ;A2B10E;
    ORA.W #$FF00                                                         ;A2B110;
    BRA +                                                                ;A2B113;


.lowByteY:
    AND.W #$00FF                                                         ;A2B115;

  + ADC.W $0F7E,X                                                        ;A2B118;
    STA.W $0F7E,X                                                        ;A2B11B;
    RTS                                                                  ;A2B11E;


MainAI_Mellow_Mella_Menu:
    JSL.L GenerateRandomNumber                                           ;A2B11F;
    LDX.W $0E54                                                          ;A2B123;
    JMP.W ($0FB2,X)                                                      ;A2B126;


SetFlyToAttackSamus:
    JSL.L CalculateAngleOfSamusFromEnemy                                 ;A2B129;
    ASL A                                                                ;A2B12D;
    TXY                                                                  ;A2B12E;
    TAX                                                                  ;A2B12F;
    LDA.L SineCosineTables_8bitSine_SignExtended,X                       ;A2B130;
    ASL A                                                                ;A2B134;
    STA.W $0FAA,Y                                                        ;A2B135;
    LDA.L SineCosineTables_NegativeCosine_SignExtended,X                 ;A2B138;
    ASL A                                                                ;A2B13C;
    ASL A                                                                ;A2B13D;
    STA.W $0FAC,Y                                                        ;A2B13E;
    LDA.W $0AFA                                                          ;A2B141;
    STA.W $0FAE,Y                                                        ;A2B144;
    LDA.W #Function_Flies_AttackSamus                                    ;A2B147;
    STA.W $0FB2,Y                                                        ;A2B14A;
    RTL                                                                  ;A2B14D;


Function_Flies_IdleMovement_ClockwiseCircle:
    LDA.W $0FA8,X                                                        ;A2B14E;
    BEQ .retreatTimerExpired                                             ;A2B151;
    DEC A                                                                ;A2B153;
    STA.W $0FA8,X                                                        ;A2B154;
    BRA .move                                                            ;A2B157;


.retreatTimerExpired:
    LDA.W #$0070                                                         ;A2B159;
    JSL.L CheckIfXDistanceBetweenEnemyAndSamusIsAtLeastA                 ;A2B15C;
    BCC SetFlyToAttackSamus                                              ;A2B160;

.move:
    JSR.W MoveFlyAccordingToAngle                                        ;A2B162;
    LDA.W $0FB0,X                                                        ;A2B165;
    CLC                                                                  ;A2B168;
    ADC.W #$0020                                                         ;A2B169;
    AND.W #$01FF                                                         ;A2B16C;
    STA.W $0FB0,X                                                        ;A2B16F;
    BEQ .antiClockwise                                                   ;A2B172;
    RTL                                                                  ;A2B174;


.antiClockwise:
    LDA.W #Function_Flies_IdleMovement_AntiClockwiseCircle               ;A2B175;
    STA.W $0FB2,X                                                        ;A2B178;
    RTL                                                                  ;A2B17B;


Function_Flies_IdleMovement_AntiClockwiseCircle:
    LDA.W $0FA8,X                                                        ;A2B17C;
    BEQ .retreatTimerExpired                                             ;A2B17F;
    DEC A                                                                ;A2B181;
    STA.W $0FA8,X                                                        ;A2B182;
    BRA .move                                                            ;A2B185;


.retreatTimerExpired:
    LDA.W #$0070                                                         ;A2B187;
    JSL.L CheckIfXDistanceBetweenEnemyAndSamusIsAtLeastA                 ;A2B18A;
    BCC SetFlyToAttackSamus                                              ;A2B18E;

.move:
    JSR.W MoveFlyAccordingToAngle                                        ;A2B190;
    LDA.W $0FB0,X                                                        ;A2B193;
    SEC                                                                  ;A2B196;
    SBC.W #$0020                                                         ;A2B197;
    AND.W #$01FF                                                         ;A2B19A;
    STA.W $0FB0,X                                                        ;A2B19D;
    BEQ .clockwise                                                       ;A2B1A0;
    RTL                                                                  ;A2B1A2;


.clockwise:
    LDA.W #Function_Flies_IdleMovement_ClockwiseCircle                   ;A2B1A3;
    STA.W $0FB2,X                                                        ;A2B1A6;
    RTL                                                                  ;A2B1A9;


Function_Flies_AttackSamus:
    JSR.W MoveFlyAccordingToVelocities                                   ;A2B1AA;
    INC.W $0FA8,X                                                        ;A2B1AD;
    BIT.W $0FAC,X                                                        ;A2B1B0;
    BPL .positiveYVelocity                                               ;A2B1B3;
    CMP.W $0FAE,X                                                        ;A2B1B5;
    BCC .aboveTarget                                                     ;A2B1B8;
    RTL                                                                  ;A2B1BA;


.positiveYVelocity:
    CMP.W $0FAE,X                                                        ;A2B1BB;
    BCS .aboveTarget                                                     ;A2B1BE;
    RTL                                                                  ;A2B1C0;


.aboveTarget:
    LDA.W $0FAC,X                                                        ;A2B1C1;
    EOR.W #$FFFF                                                         ;A2B1C4;
    INC A                                                                ;A2B1C7;
    STA.W $0FAC,X                                                        ;A2B1C8;
    LDA.W #Function_Flies_Retreat                                        ;A2B1CB;
    STA.W $0FB2,X                                                        ;A2B1CE;
    RTL                                                                  ;A2B1D1;


Function_Flies_Retreat:
    JSR.W MoveFlyAccordingToVelocities                                   ;A2B1D2;
    DEC.W $0FA8,X                                                        ;A2B1D5;
    BMI .retreatTimerExpired                                             ;A2B1D8;
    RTL                                                                  ;A2B1DA;


.retreatTimerExpired:
    LDA.W #$0018                                                         ;A2B1DB;
    STA.W $0FA8,X                                                        ;A2B1DE;
    LDA.W #Function_Flies_IdleMovement_ClockwiseCircle                   ;A2B1E1;
    STA.W $0FB2,X                                                        ;A2B1E4;
    RTL                                                                  ;A2B1E7;


Spritemap_Mellow_Mella_Menu_0:
    dw $0001                                                             ;A2B1E8;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $100)

Spritemap_Mellow_Mella_Menu_1:
    dw $0001                                                             ;A2B1EF;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $102)

Spritemap_Mellow_Mella_Menu_2:
    dw $0001                                                             ;A2B1F6;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $104)

Spritemap_Mellow_Mella_Menu_3:
    dw $0001                                                             ;A2B1FD;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $106)


UNUSED_FlySpritemapPointers_A2B204:
; referenced by enemy header
    dw Spritemap_Mellow_Mella_Menu_0                                     ;A2B204;
    dw Spritemap_Mellow_Mella_Menu_1                                     ;A2B206;
    dw Spritemap_Mellow_Mella_Menu_2                                     ;A2B208;
    dw Spritemap_Mellow_Mella_Menu_3                                     ;A2B20A;

Palette_Mella:
    dw $3800,$039F,$01BF,$000F,$0005,$021F,$015B,$00BA                   ;A2B20C;
    dw $0011,$4F72,$36AD,$1DC8,$0925,$7E1F,$5415,$280A                   ;A2B21C;

UNUSED_PointerToUnusedData_A2B22C:
    dw UNUSED_Data_A2B22E                                                ;A2B22C;

UNUSED_Data_A2B22E:
    dw $0000,$000E,$0001,$000B,$0002,$000A,$0003,$0009                   ;A2B22E;
    dw $FFFE                                                             ;A2B23E;

UNUSED_Spritemap_Mella_A2B240:
    dw $0001                                                             ;A2B240;
    %spritemapEntry(1, $43F8, $F4, 0, 0, 2, 0, $100)

UNUSED_Spritemap_Mella_A2B247:
    dw $0001                                                             ;A2B247;
    %spritemapEntry(1, $43F8, $F4, 0, 0, 2, 0, $102)

UNUSED_Spritemap_Mella_A2B24E:
    dw $0001                                                             ;A2B24E;
    %spritemapEntry(1, $43F8, $F4, 0, 0, 2, 0, $104)

UNUSED_Spritemap_Mella_A2B255:
    dw $0001                                                             ;A2B255;
    %spritemapEntry(1, $43F8, $F4, 0, 0, 2, 0, $106)

UNUSED_SpritemapPointers_Mella_A2B25C:
    dw UNUSED_Spritemap_Mella_A2B240                                     ;A2B25C;
    dw UNUSED_Spritemap_Mella_A2B247                                     ;A2B25E;
    dw UNUSED_Spritemap_Mella_A2B24E                                     ;A2B260;
    dw UNUSED_Spritemap_Mella_A2B255                                     ;A2B262;

Palette_Menu:
    dw $3800,$72FA,$55B0,$2845,$1801,$6210,$496B,$38C6                   ;A2B264;
    dw $2C63,$2F5A,$2294,$01AD,$0108,$7FFF,$56B5,$294A                   ;A2B274;

UNUSED_DataPointer_A2B284:
    dw UNUSED_Data_A2B286                                                ;A2B284;

UNUSED_Data_A2B286:
    dw $0000,$000E,$0001,$000B,$0002,$000A,$0003,$0009                   ;A2B286;
    dw $FFFE                                                             ;A2B296;

UNUSED_Spritemap_Menu_A2B298:
    dw $0001                                                             ;A2B298;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $100)

UNUSED_Spritemap_Menu_A2B29F:
    dw $0001                                                             ;A2B29F;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $102)

UNUSED_Spritemap_Menu_A2B2A6:
    dw $0001                                                             ;A2B2A6;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $104)

UNUSED_Spritemap_Menu_A2B2AD:
    dw $0001                                                             ;A2B2AD;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $106)

UNUSED_SpritemapPointers_Menu_A2B2B4:
    dw UNUSED_Spritemap_Menu_A2B298                                      ;A2B2B4;
    dw UNUSED_Spritemap_Menu_A2B29F                                      ;A2B2B6;
    dw UNUSED_Spritemap_Menu_A2B2A6                                      ;A2B2B8;
    dw UNUSED_Spritemap_Menu_A2B2AD                                      ;A2B2BA;

Palette_Multiviola:
    dw $3800,$02FF,$01BF,$000F,$0008,$01BF,$011B,$0015                   ;A2B2BC;
    dw $0011,$241F,$1C17,$142F,$0C47,$03E0,$02A0,$0140                   ;A2B2CC;

InstList_Multiviola:
    dw $000A,Spritemap_Multiviola_0                                      ;A2B2DC;
    dw $000A,Spritemap_Multiviola_1                                      ;A2B2E0;
    dw $000A,Spritemap_Multiviola_2                                      ;A2B2E4;
    dw $000A,Spritemap_Multiviola_3                                      ;A2B2E8;
    dw $000A,Spritemap_Multiviola_4                                      ;A2B2EC;
    dw $000A,Spritemap_Multiviola_5                                      ;A2B2F0;
    dw $000A,Spritemap_Multiviola_6                                      ;A2B2F4;
    dw $000A,Spritemap_Multiviola_7                                      ;A2B2F8;
    dw $000A,Spritemap_Multiviola_6                                      ;A2B2FC;
    dw $000A,Spritemap_Multiviola_5                                      ;A2B300;
    dw $000A,Spritemap_Multiviola_4                                      ;A2B304;
    dw $000A,Spritemap_Multiviola_3                                      ;A2B308;
    dw $000A,Spritemap_Multiviola_2                                      ;A2B30C;
    dw $000A,Spritemap_Multiviola_1                                      ;A2B310;
    dw Instruction_Common_GotoY                                          ;A2B314;
    dw InstList_Multiviola                                               ;A2B316;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_InstList_Multiviola_A2B318:
    dw $0002,UNUSED_Spritemap_Multiviola_A2B4E2                          ;A2B318;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B31C;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B4E2                          ;A2B320;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B324;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B4E9                          ;A2B328;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B32C;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B4E9                          ;A2B330;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B334;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B4F0                          ;A2B338;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B33C;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B4F0                          ;A2B340;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B344;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B4F7                          ;A2B348;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B34C;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B4F7                          ;A2B350;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B354;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B4F0                          ;A2B358;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B35C;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B4F0                          ;A2B360;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B364;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B4E9                          ;A2B368;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B36C;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B4E9                          ;A2B370;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B374;
    dw Instruction_Common_GotoY                                          ;A2B378;
    dw UNUSED_InstList_Multiviola_A2B318                                 ;A2B37A;

UNUSED_InstList_Multiviola_A2B37C:
    dw $0002,UNUSED_Spritemap_Multiviola_A2B4FE                          ;A2B37C;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B380;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B4FE                          ;A2B384;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B388;
    dw $0002,UNUSED_Spritemap_Multiviola_B2B505                          ;A2B38C;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B390;
    dw $0002,UNUSED_Spritemap_Multiviola_B2B505                          ;A2B394;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B398;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B50C                          ;A2B39C;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B3A0;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B50C                          ;A2B3A4;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B3A8;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B513                          ;A2B3AC;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B3B0;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B513                          ;A2B3B4;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B3B8;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B50C                          ;A2B3BC;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B3C0;
    dw $0002,UNUSED_Spritemap_Multiviola_A2B50C                          ;A2B3C4;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B3C8;
    dw $0002,UNUSED_Spritemap_Multiviola_B2B505                          ;A2B3CC;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B3D0;
    dw $0002,UNUSED_Spritemap_Multiviola_B2B505                          ;A2B3D4;
    dw $0001,Spritemap_Common_Nothing                                    ;A2B3D8;
    dw Instruction_Common_GotoY                                          ;A2B3DC;
    dw UNUSED_InstList_Multiviola_A2B37C                                 ;A2B3DE;
endif ; !FEATURE_KEEP_UNREFERENCED

InitAI_Multiviola:
    LDX.W $0E54                                                          ;A2B3E0;
    LDA.W $0FB4,X                                                        ;A2B3E3;
    STA.B $12                                                            ;A2B3E6;
    LDA.W $0FB6,X                                                        ;A2B3E8;
    AND.W #$00FF                                                         ;A2B3EB;
    STA.B $14                                                            ;A2B3EE;
    JSL.L Do_Some_Math_With_Sine_Cosine_Terrible_Label_Name              ;A2B3F0; ($16.$18, $1A.$1C) = ([$14] * |cos([$12] * pi / 80h)|, [$14] * |sin([$12] * pi / 80h)|)
    LDA.B $16                                                            ;A2B3F4;
    STA.W $0FAC,X                                                        ;A2B3F6;
    LDA.B $18                                                            ;A2B3F9;
    STA.W $0FAE,X                                                        ;A2B3FB;
    LDA.B $1A                                                            ;A2B3FE;
    STA.W $0FB0,X                                                        ;A2B400;
    LDA.B $1C                                                            ;A2B403;
    STA.W $0FB2,X                                                        ;A2B405;
    LDA.W #InstList_Multiviola                                           ;A2B408;
    STA.W $0F92,X                                                        ;A2B40B;
    RTL                                                                  ;A2B40E;


MainAI_Multiviola:
    LDX.W $0E54                                                          ;A2B40F;
    LDA.W $0FB4,X                                                        ;A2B412;
    STA.B $12                                                            ;A2B415;
    LDA.W $0FB6,X                                                        ;A2B417;
    AND.W #$00FF                                                         ;A2B41A;
    STA.B $14                                                            ;A2B41D;
    JSL.L Do_Some_Math_With_Sine_Cosine_Terrible_Label_Name              ;A2B41F; ($16.$18, $1A.$1C) = ([$14] * |cos([$12] * pi / 80h)|, [$14] * |sin([$12] * pi / 80h)|)
    LDA.B $16                                                            ;A2B423;
    STA.W $0FAC,X                                                        ;A2B425;
    LDA.B $18                                                            ;A2B428;
    STA.W $0FAE,X                                                        ;A2B42A;
    LDA.B $1A                                                            ;A2B42D;
    STA.W $0FB0,X                                                        ;A2B42F;
    LDA.B $1C                                                            ;A2B432;
    STA.W $0FB2,X                                                        ;A2B434;
    LDA.W $0FB4,X                                                        ;A2B437;
    CLC                                                                  ;A2B43A;
    ADC.W #$0040                                                         ;A2B43B;
    BIT.W #$0080                                                         ;A2B43E;
    BNE +                                                                ;A2B441;
    LDA.W $0FAC,X                                                        ;A2B443;
    EOR.W #$FFFF                                                         ;A2B446;
    STA.W $0FAC,X                                                        ;A2B449;
    LDA.W $0FAE,X                                                        ;A2B44C;
    EOR.W #$FFFF                                                         ;A2B44F;
    INC A                                                                ;A2B452;
    STA.W $0FAE,X                                                        ;A2B453;

  + LDA.W $0FAC,X                                                        ;A2B456;
    STA.B $14                                                            ;A2B459;
    LDA.W $0FAE,X                                                        ;A2B45B;
    STA.B $12                                                            ;A2B45E;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A2B460;
    BCC .notCollidedWithWall                                             ;A2B464;
    LDA.W $0FB4,X                                                        ;A2B466;
    EOR.W #$0040                                                         ;A2B469;
    STA.W $0FB4,X                                                        ;A2B46C;
    BRA .return                                                          ;A2B46F;


.notCollidedWithWall:
    LDA.W $0FB4,X                                                        ;A2B471;
    CLC                                                                  ;A2B474;
    ADC.W #$0080                                                         ;A2B475;
    BIT.W #$0080                                                         ;A2B478;
    BNE +                                                                ;A2B47B;
    LDA.W $0FB0,X                                                        ;A2B47D;
    EOR.W #$FFFF                                                         ;A2B480;
    STA.W $0FB0,X                                                        ;A2B483;
    LDA.W $0FB2,X                                                        ;A2B486;
    EOR.W #$FFFF                                                         ;A2B489;
    INC A                                                                ;A2B48C;
    STA.W $0FB2,X                                                        ;A2B48D;

  + LDA.W $0FB0,X                                                        ;A2B490;
    STA.B $14                                                            ;A2B493;
    LDA.W $0FB2,X                                                        ;A2B495;
    STA.B $12                                                            ;A2B498;
    JSL.L MoveEnemyDownBy_14_12                                          ;A2B49A;
    BCC .return                                                          ;A2B49E;
    LDA.W $0FB4,X                                                        ;A2B4A0;
    EOR.W #$00C0                                                         ;A2B4A3;
    STA.W $0FB4,X                                                        ;A2B4A6;

.return:
    RTL                                                                  ;A2B4A9;


Spritemap_Multiviola_0:
    dw $0001                                                             ;A2B4AA;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $100)

Spritemap_Multiviola_1:
    dw $0001                                                             ;A2B4B1;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $102)

Spritemap_Multiviola_2:
    dw $0001                                                             ;A2B4B8;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $104)

Spritemap_Multiviola_3:
    dw $0001                                                             ;A2B4BF;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $106)

Spritemap_Multiviola_4:
    dw $0001                                                             ;A2B4C6;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $108)

Spritemap_Multiviola_5:
    dw $0001                                                             ;A2B4CD;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $10A)

Spritemap_Multiviola_6:
    dw $0001                                                             ;A2B4D4;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $10C)

Spritemap_Multiviola_7:
    dw $0001                                                             ;A2B4DB;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $10E)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_Multiviola_A2B4E2:
    dw $0001                                                             ;A2B4E2;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $120)

UNUSED_Spritemap_Multiviola_A2B4E9:
    dw $0001                                                             ;A2B4E9;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $122)

UNUSED_Spritemap_Multiviola_A2B4F0:
    dw $0001                                                             ;A2B4F0;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $124)

UNUSED_Spritemap_Multiviola_A2B4F7:
    dw $0001                                                             ;A2B4F7;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $126)

UNUSED_Spritemap_Multiviola_A2B4FE:
    dw $0001                                                             ;A2B4FE;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $128)

UNUSED_Spritemap_Multiviola_B2B505:
    dw $0001                                                             ;A2B505;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $12A)

UNUSED_Spritemap_Multiviola_A2B50C:
    dw $0001                                                             ;A2B50C;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $12C)

UNUSED_Spritemap_Multiviola_A2B513:
    dw $0001                                                             ;A2B513;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $12E)
endif ; !FEATURE_KEEP_UNREFERENCED

InstList_Polyp:
    dw $0001,Spritemap_Polyp                                             ;A2B51A;
    dw Instruction_Common_Sleep                                          ;A2B51E;

PolypData_cooldownTimer:
    dw $0010,$0018,$0020,$0028,$0030,$0038,$0040,$0048                   ;A2B520;

PolypData_projectileInitialYSpeedTableIndex:
    dw $001C,$001D,$001E,$001F,$0020,$0021,$0022,$0023                   ;A2B530;
    dw $0024,$0025,$0026,$0027,$0028,$0029,$002A,$002B                   ;A2B540;

PolypData_projectileXVelocity:
    dw $0060,$0070,$0080,$0090,$00A0,$00B0,$00C0,$00D0                   ;A2B550;
    dw $FFA0,$FF90,$FF80,$FF70,$FF60,$FF50,$FF40,$FF30                   ;A2B560;

InitAI_Polyp:
    LDX.W $0E54                                                          ;A2B570;
    LDA.W #InstList_Polyp                                                ;A2B573;
    STA.W $0F92,X                                                        ;A2B576;
    LDA.W #$0001                                                         ;A2B579;
    STA.W $0F94,X                                                        ;A2B57C;
    STZ.W $0F90,X                                                        ;A2B57F;
    LDA.W #Function_Polyp_WaitForSamusToGetNear                          ;A2B582;
    STA.W $0FA8,X                                                        ;A2B585;
    LDA.W #$0011                                                         ;A2B588;
    STA.W $05E5                                                          ;A2B58B;
    RTL                                                                  ;A2B58E;


MainAI_Polyp:
    LDX.W $0E54                                                          ;A2B58F;
    JSR.W ($0FA8,X)                                                      ;A2B592;
    RTL                                                                  ;A2B595;


Function_Polyp_WaitForSamusToGetNear:
    LDX.W $0E54                                                          ;A2B596;
    LDA.W #$0040                                                         ;A2B599;
    JSL.L IsSamusWithinAPixelColumnsOfEnemy                              ;A2B59C;
    BEQ .return                                                          ;A2B5A0;
    LDA.W #$0040                                                         ;A2B5A2;
    JSL.L IsSamusWithingAPixelRowsOfEnemy                                ;A2B5A5;
    BEQ .return                                                          ;A2B5A9;
    LDA.W #Function_Polyp_ShootRock                                      ;A2B5AB;
    STA.W $0FA8,X                                                        ;A2B5AE;

.return:
    RTS                                                                  ;A2B5B1;


Function_Polyp_ShootRock:
    LDX.W $0E54                                                          ;A2B5B2;
    JSL.L GenerateRandomNumber                                           ;A2B5B5;
    AND.W #$001E                                                         ;A2B5B9;
    TAY                                                                  ;A2B5BC;
    LDA.W PolypData_projectileXVelocity,Y                                ;A2B5BD;
    STA.W $1995                                                          ;A2B5C0;
    JSL.L GenerateRandomNumber                                           ;A2B5C3;
    AND.W #$001E                                                         ;A2B5C7;
    TAY                                                                  ;A2B5CA;
    LDA.W PolypData_projectileInitialYSpeedTableIndex,Y                  ;A2B5CB;
    LDY.W #EnemyProjectile_LavaquakeRocks                                ;A2B5CE;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A2B5D1;
    LDA.W #Function_Polyp_Cooldown                                       ;A2B5D5;
    STA.W $0FA8,X                                                        ;A2B5D8;
    JSL.L GenerateRandomNumber                                           ;A2B5DB;
    AND.W #$000E                                                         ;A2B5DF;
    TAY                                                                  ;A2B5E2;
    LDA.W PolypData_cooldownTimer,Y                                      ;A2B5E3;
    STA.W $0FAA,X                                                        ;A2B5E6;
    RTS                                                                  ;A2B5E9;


Function_Polyp_Cooldown:
    LDX.W $0E54                                                          ;A2B5EA;
    DEC.W $0FAA,X                                                        ;A2B5ED;
    BPL .return                                                          ;A2B5F0;
    LDA.W #Function_Polyp_WaitForSamusToGetNear                          ;A2B5F2;
    STA.W $0FA8,X                                                        ;A2B5F5;

.return:
    RTS                                                                  ;A2B5F8;


RTL_B5FAF9:
    RTL                                                                  ;A2B5F9;


RTL_B5FAFA:
    RTL                                                                  ;A2B5FA;


Spritemap_Polyp:
    dw $0001                                                             ;A2B5FB;
    %spritemapEntry(0, $1FC, $FC, 0, 0, 2, 0, $10A)


InitAI_Rinka:
    LDX.W $0E54                                                          ;A2B602;
    LDA.W $0FB4,X                                                        ;A2B605;
    BEQ .notMBRoom                                                       ;A2B608;
    JSR.W SpawnMotherBrainsRoomRinka                                     ;A2B60A;
    LDA.L $7E783A                                                        ;A2B60D;
    LDA.W $0F86,X                                                        ;A2B611;
    ORA.W #$2C00                                                         ;A2B614;
    AND.W #$BFFF                                                         ;A2B617;
    STA.W $0F86,X                                                        ;A2B61A;
    BRA .propertiesSet                                                   ;A2B61D;

    LDA.W $0F86,X                                                        ;A2B61F; dead code
    ORA.W #$2C00                                                         ;A2B622;
    STA.W $0F86,X                                                        ;A2B625;
    BRA .propertiesSet                                                   ;A2B628;


.notMBRoom:
    LDA.W $0F86,X                                                        ;A2B62A;
    ORA.W #$6400                                                         ;A2B62D;
    AND.W #$F7FF                                                         ;A2B630;
    STA.W $0F86,X                                                        ;A2B633;

.propertiesSet:
    LDA.W #$0400                                                         ;A2B636;
    STA.W $0F96,X                                                        ;A2B639;
    BRA ResetRinka                                                       ;A2B63C;


RespawnRinka:
    LDA.W $0FB4,X                                                        ;A2B63E;
    BEQ .notMBRoom                                                       ;A2B641;
    JSR.W SpawnMotherBrainsRoomRinka                                     ;A2B643;

.notMBRoom:
    LDA.L $7E7020,X                                                      ;A2B646;
    STA.W $0F7A,X                                                        ;A2B64A;
    LDA.L $7E7022,X                                                      ;A2B64D;
    STA.W $0F7E,X                                                        ;A2B651; fallthrough to ResetRinka

ResetRinka:
    LDA.W #Function_Rinka_WaitingToFire                                  ;A2B654;
    STA.W $0FA8,X                                                        ;A2B657;
    LDA.W #$001A                                                         ;A2B65A;
    STA.W $0FB2,X                                                        ;A2B65D;
    STZ.W $0FAA,X                                                        ;A2B660;
    STZ.W $0FAC,X                                                        ;A2B663;
    LDA.W $0FB4,X                                                        ;A2B666;
    BNE .MBRoom                                                          ;A2B669;
    LDA.W #InstList_Rinka_NotMotherBrainsRoom_0                          ;A2B66B;
    STA.W $0F92,X                                                        ;A2B66E;
    LDA.W #$0001                                                         ;A2B671;
    STA.W $0F94,X                                                        ;A2B674;
    STZ.W $0F90,X                                                        ;A2B677;
    RTL                                                                  ;A2B67A;


.MBRoom:
    LDA.L $7E783A                                                        ;A2B67B;
    BEQ .MBPhase1                                                        ;A2B67F;
    LDA.W $0F86,X                                                        ;A2B681;
    ORA.W #$0200                                                         ;A2B684;
    STA.W $0F86,X                                                        ;A2B687;
    RTL                                                                  ;A2B68A;


.MBPhase1:
    LDA.W #InstList_Rinka_MotherBrainsRoom_0                             ;A2B68B;
    STA.W $0F92,X                                                        ;A2B68E;
    LDA.W #$0001                                                         ;A2B691;
    STA.W $0F94,X                                                        ;A2B694;
    STZ.W $0F90,X                                                        ;A2B697;
    RTL                                                                  ;A2B69A;


SpawnMotherBrainsRoomRinka:
    LDA.L $7E7020,X                                                      ;A2B69B;
    STA.B $12                                                            ;A2B69F;
    LDA.L $7E7022,X                                                      ;A2B6A1;
    STA.B $14                                                            ;A2B6A5;
    JSL.L CheckIfPositionIsOnScreen                                      ;A2B6A7;
    BCS +                                                                ;A2B6AB;
    JSR.W GetAvailabilityIndexOfEnemySpawnPosition                       ;A2B6AD;
    TAY                                                                  ;A2B6B0;
    PHX                                                                  ;A2B6B1;
    TAX                                                                  ;A2B6B2;
    LDA.L $7E87FE,X                                                      ;A2B6B3;
    LSR A                                                                ;A2B6B7;
    PLX                                                                  ;A2B6B8;
    BCS +                                                                ;A2B6B9;
    TYA                                                                  ;A2B6BB;
    STA.W $0FAE,X                                                        ;A2B6BC;
    PHX                                                                  ;A2B6BF;
    TAX                                                                  ;A2B6C0;
    LDA.W #$FFFF                                                         ;A2B6C1;
    STA.L $7E87FE,X                                                      ;A2B6C4;
    PLX                                                                  ;A2B6C8;
    RTS                                                                  ;A2B6C9;


  + LDY.W #$0000                                                         ;A2B6CA;

.loopOnScreen:
    LDA.W MotherBrainsRoomRinkaSpawnData_XPosition,Y                     ;A2B6CD;
    STA.B $12                                                            ;A2B6D0;
    LDA.W MotherBrainsRoomRinkaSpawnData_YPosition,Y                     ;A2B6D2;
    STA.B $14                                                            ;A2B6D5;
    JSL.L CheckIfPositionIsOnScreen                                      ;A2B6D7;
    BCS .next                                                            ;A2B6DB;
    PHX                                                                  ;A2B6DD;
    LDX.W MotherBrainsRoomRinkaSpawnData_spawnPointAvailabilityIndex,Y   ;A2B6DE;
    LDA.L $7E87FE,X                                                      ;A2B6E1;
    LSR A                                                                ;A2B6E5;
    PLX                                                                  ;A2B6E6;
    BCC .found                                                           ;A2B6E7;

.next:
    INY                                                                  ;A2B6E9;
    INY                                                                  ;A2B6EA;
    INY                                                                  ;A2B6EB;
    INY                                                                  ;A2B6EC;
    INY                                                                  ;A2B6ED;
    INY                                                                  ;A2B6EE;
    CPY.W #$0042                                                         ;A2B6EF;
    BMI .loopOnScreen                                                    ;A2B6F2;
    JMP.W .notFound                                                      ;A2B6F4;

    RTS                                                                  ;A2B6F7;


.found:
    LDA.B $12                                                            ;A2B6F8;
    STA.L $7E7020,X                                                      ;A2B6FA;
    STA.W $0F7A,X                                                        ;A2B6FE;
    LDA.B $14                                                            ;A2B701;
    STA.L $7E7022,X                                                      ;A2B703;
    STA.W $0F7E,X                                                        ;A2B707;
    PHX                                                                  ;A2B70A;
    LDX.W MotherBrainsRoomRinkaSpawnData_spawnPointAvailabilityIndex,Y   ;A2B70B;
    LDA.W #$FFFF                                                         ;A2B70E;
    STA.L $7E87FE,X                                                      ;A2B711;
    TXA                                                                  ;A2B715;
    PLX                                                                  ;A2B716;
    STA.W $0FAE,X                                                        ;A2B717;
    RTS                                                                  ;A2B71A;


.notFound:
    LDY.W #$0000                                                         ;A2B71B;

.loopAny:
    PHX                                                                  ;A2B71E;
    LDX.W MotherBrainsRoomRinkaSpawnData_spawnPointAvailabilityIndex,Y   ;A2B71F;
    LDA.L $7E87FE,X                                                      ;A2B722;
    PLX                                                                  ;A2B726;
    LSR A                                                                ;A2B727;
    BCC .spawn                                                           ;A2B728;
    INY                                                                  ;A2B72A;
    INY                                                                  ;A2B72B;
    INY                                                                  ;A2B72C;
    INY                                                                  ;A2B72D;
    INY                                                                  ;A2B72E;
    INY                                                                  ;A2B72F;
    CPY.W #$0042                                                         ;A2B730;
    BMI .loopAny                                                         ;A2B733;
    RTS                                                                  ;A2B735;


.spawn:
    LDA.W MotherBrainsRoomRinkaSpawnData_XPosition,Y                     ;A2B736;
    STA.L $7E7020,X                                                      ;A2B739;
    STA.W $0F7A,X                                                        ;A2B73D;
    LDA.W MotherBrainsRoomRinkaSpawnData_YPosition,Y                     ;A2B740;
    STA.L $7E7022,X                                                      ;A2B743;
    STA.W $0F7E,X                                                        ;A2B747;
    LDA.W MotherBrainsRoomRinkaSpawnData_spawnPointAvailabilityIndex,Y   ;A2B74A;
    STA.W $0FAE,X                                                        ;A2B74D;
    PHX                                                                  ;A2B750;
    TAX                                                                  ;A2B751;
    LDA.W #$FFFF                                                         ;A2B752;
    STA.L $7E87FE,X                                                      ;A2B755;
    PLX                                                                  ;A2B759;
    RTS                                                                  ;A2B75A;

MotherBrainsRoomRinkaSpawnData:
;        _______________ X position
;       |      _________ Y position
;       |     |      ___ Index into spawn point availability table + 2
;       |     |     |
  .XPosition:
    dw $03E7                                                             ;A2B75B;
  .YPosition:
    dw       $0026                                                       ;A2B75D;
  .spawnPointAvailabilityIndex:
    dw             $0002                                                 ;A2B75F;
    dw $03E7,$00A6,$0004
    dw $0337,$0036,$0006
    dw $0337,$00A6,$0008
    dw $0277,$001C,$000A
    dw $0277,$00B6,$000C
    dw $01B7,$0036,$000E
    dw $01B7,$00A6,$0010
    dw $00F7,$001C,$0012
    dw $00F7,$00B6,$0014
    dw $0080,$00A8,$0016

GetAvailabilityIndexOfEnemySpawnPosition:
    LDY.W #$0000                                                         ;A2B79D;

.loop:
    LDA.W MotherBrainsRoomRinkaSpawnData_XPosition,Y                     ;A2B7A0;
    CMP.L $7E7020,X                                                      ;A2B7A3;
    BNE .next                                                            ;A2B7A7;
    LDA.W MotherBrainsRoomRinkaSpawnData_YPosition,Y                     ;A2B7A9;
    CMP.L $7E7022,X                                                      ;A2B7AC;
    BEQ .found                                                           ;A2B7B0;

.next:
    TYA                                                                  ;A2B7B2;
    CLC                                                                  ;A2B7B3;
    ADC.W #$0006                                                         ;A2B7B4;
    TAY                                                                  ;A2B7B7;
    CMP.W #$0042                                                         ;A2B7B8;
    BMI .loop                                                            ;A2B7BB;
    LDY.W #$0000                                                         ;A2B7BD;

.found:
    LDA.W MotherBrainsRoomRinkaSpawnData_spawnPointAvailabilityIndex,Y   ;A2B7C0;
    RTS                                                                  ;A2B7C3;


MainAI_Rinka:
    LDX.W $0E54                                                          ;A2B7C4;
    LDA.W $0FB4,X                                                        ;A2B7C7;
    BEQ .function                                                        ;A2B7CA;
    LDA.L $7E783A                                                        ;A2B7CC;
    BEQ .function                                                        ;A2B7D0;
    JSR.W DecrementRinkaCounter                                          ;A2B7D2;
    JSR.W MarkRinkaSpawnPointAvailable                                   ;A2B7D5;
    JML.L RinkaDeath                                                     ;A2B7D8;


.function:
    JMP.W ($0FA8,X)                                                      ;A2B7DC;


Function_Rinka_Fire:
    DEC.W $0FB2,X                                                        ;A2B7DF;
    BPL Function_Rinka_Fire_return                                       ;A2B7E2;
    LDA.W #Function_Rinka_Moving                                         ;A2B7E4;
    STA.W $0FA8,X                                                        ;A2B7E7;
    LDA.W $0FB4,X                                                        ;A2B7EA;
    BEQ .notMBRoom                                                       ;A2B7ED;
    LDA.W $0F86,X                                                        ;A2B7EF;
    AND.W #$FBFF                                                         ;A2B7F2;
    STA.W $0F86,X                                                        ;A2B7F5;
    BRA +                                                                ;A2B7F8;


.notMBRoom:
    LDA.W $0F86,X                                                        ;A2B7FA;
    ORA.W #$0800                                                         ;A2B7FD;
    AND.W #$FBFF                                                         ;A2B800;
    STA.W $0F86,X                                                        ;A2B803;

  + LDA.W $0AF6                                                          ;A2B806;
    SEC                                                                  ;A2B809;
    SBC.W $0F7A,X                                                        ;A2B80A;
    STA.B $12                                                            ;A2B80D;
    LDA.W $0AFA                                                          ;A2B80F;
    SEC                                                                  ;A2B812;
    SBC.W $0F7E,X                                                        ;A2B813;
    STA.B $14                                                            ;A2B816;
    JSL.L CalculateAngleOf_12_14_Offset                                  ;A2B818;
    SEC                                                                  ;A2B81C;
    SBC.W #$0080                                                         ;A2B81D;
    EOR.W #$FFFF                                                         ;A2B820;
    INC A                                                                ;A2B823;
    AND.W #$00FF                                                         ;A2B824;
    STA.B $12                                                            ;A2B827;
    LDA.W #$0159                                                         ;A2B829;
    JSL.L Math_86C26C                                                    ;A2B82C;
    LDX.W $0E54                                                          ;A2B830;
    STA.W $0FAA,X                                                        ;A2B833;
    LDA.W #$0159                                                         ;A2B836;
    JSL.L Math_86C272                                                    ;A2B839;
    LDX.W $0E54                                                          ;A2B83D;
    STA.W $0FAC,X                                                        ;A2B840;

Function_Rinka_Fire_return:
    RTL                                                                  ;A2B843;


Function_Rinka_Killed:
    DEC.W $0FB2,X                                                        ;A2B844;
    BPL Function_Rinka_Fire_return                                       ;A2B847;
    LDA.W #$000A                                                         ;A2B849;
    STA.W $0F8C,X                                                        ;A2B84C;
    JMP.W RespawnRinka                                                   ;A2B84F;


Function_Rinka_WaitingToFire:
    JSL.L CheckIfRinkaIsOnScreen                                         ;A2B852;
    BCC Function_Rinka_Fire_return                                       ;A2B856;
    JMP.W DeleteAndRespawnRinka                                          ;A2B858;


Function_Rinka_Moving:
    JSL.L MoveEnemyAccordingToVelocity                                   ;A2B85B;
    JSL.L CheckIfRinkaIsOnScreen                                         ;A2B85F;
    BCC Function_Rinka_Fire_return                                       ;A2B863; fallthrough to DeleteAndRespawnRinka

DeleteAndRespawnRinka:
    LDA.W $0FB4,X                                                        ;A2B865;
    BEQ .notMBRoom                                                       ;A2B868;
    JSR.W MarkRinkaSpawnPointAvailable                                   ;A2B86A;
    LDA.L $7E783A                                                        ;A2B86D;
    BEQ .notMBRoom                                                       ;A2B871;
    JSR.W DecrementRinkaCounter                                          ;A2B873;
    JML.L DeleteEnemyAndAnyConnectedEnemies                              ;A2B876;


.notMBRoom:
    JSR.W DecrementRinkaCounter                                          ;A2B87A;
    JMP.W RespawnRinka                                                   ;A2B87D;


DecrementRinkaCounter:
    LDA.W $0FB4,X                                                        ;A2B880;
    BEQ .return                                                          ;A2B883;
    LDA.W $0F86,X                                                        ;A2B885;
    AND.W #$0100                                                         ;A2B888;
    BNE .return                                                          ;A2B88B;
    LDA.L $7E783C                                                        ;A2B88D;
    DEC A                                                                ;A2B891;
    BPL .storeRinkaCounter                                               ;A2B892;
    LDA.W #$0000                                                         ;A2B894;

.storeRinkaCounter:
    STA.L $7E783C                                                        ;A2B897;

.return:
    RTS                                                                  ;A2B89B;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_Rinka_A2B89C:
    LDA.W $0E44                                                          ;A2B89C;
    AND.W #$0003                                                         ;A2B89F;
    CMP.W $0FB4,X                                                        ;A2B8A2;
    BNE .setAsIntangible                                                 ;A2B8A5;
    LDA.W $0F86,X                                                        ;A2B8A7;
    AND.W #$FBFF                                                         ;A2B8AA;
    STA.W $0F86,X                                                        ;A2B8AD;
    RTS                                                                  ;A2B8B0;


.setAsIntangible:
    LDA.W $0F86,X                                                        ;A2B8B1;
    ORA.W #$0400                                                         ;A2B8B4;
    STA.W $0F86,X                                                        ;A2B8B7;
    RTS                                                                  ;A2B8BA;
endif ; !FEATURE_KEEP_UNREFERENCED


MarkRinkaSpawnPointAvailable:
    LDA.W $0FB4,X                                                        ;A2B8BB;
    BEQ .return                                                          ;A2B8BE;
    LDA.W $0FAE,X                                                        ;A2B8C0;
    BEQ .return                                                          ;A2B8C3;
    PHX                                                                  ;A2B8C5;
    TAX                                                                  ;A2B8C6;
    LDA.W #$0000                                                         ;A2B8C7;
    STA.L $7E87FE,X                                                      ;A2B8CA;
    PLX                                                                  ;A2B8CE;
    STA.W $0FAE,X                                                        ;A2B8CF;

.return:
    RTS                                                                  ;A2B8D2;


CheckIfRinkaIsOnScreen:
    LDA.W $0F7E,X                                                        ;A2B8D3;
    BMI .returnOffScreen                                                 ;A2B8D6;
    CLC                                                                  ;A2B8D8;
    ADC.W #$0010                                                         ;A2B8D9;
    SEC                                                                  ;A2B8DC;
    SBC.W $0915                                                          ;A2B8DD;
    BMI .returnOffScreen                                                 ;A2B8E0;
    CMP.W #$0100                                                         ;A2B8E2;
    BPL .returnOffScreen                                                 ;A2B8E5;
    LDA.W $0F7A,X                                                        ;A2B8E7;
    BMI .returnOffScreen                                                 ;A2B8EA;
    CLC                                                                  ;A2B8EC;
    ADC.W #$0010                                                         ;A2B8ED;
    SEC                                                                  ;A2B8F0;
    SBC.W $0911                                                          ;A2B8F1;
    BMI .returnOffScreen                                                 ;A2B8F4;
    CMP.W #$0120                                                         ;A2B8F6;
    BPL .returnOffScreen                                                 ;A2B8F9;
    CLC                                                                  ;A2B8FB;
    RTL                                                                  ;A2B8FC;


.returnOffScreen:
    SEC                                                                  ;A2B8FD;
    RTL                                                                  ;A2B8FE;


CheckIfPositionIsOnScreen:
    LDA.B $14                                                            ;A2B8FF;
    BMI .returnOffScreen                                                 ;A2B901;
    CLC                                                                  ;A2B903;
    ADC.W #$0000                                                         ;A2B904;
    SEC                                                                  ;A2B907;
    SBC.W $0915                                                          ;A2B908;
    BMI .returnOffScreen                                                 ;A2B90B;
    CMP.W #$00E0                                                         ;A2B90D;
    BPL .returnOffScreen                                                 ;A2B910;
    LDA.B $12                                                            ;A2B912;
    BMI .returnOffScreen                                                 ;A2B914;
    CLC                                                                  ;A2B916;
    ADC.W #$0000                                                         ;A2B917;
    SEC                                                                  ;A2B91A;
    SBC.W $0911                                                          ;A2B91B;
    BMI .returnOffScreen                                                 ;A2B91E;
    CMP.W #$0100                                                         ;A2B920;
    BPL .returnOffScreen                                                 ;A2B923;
    CLC                                                                  ;A2B925;
    RTL                                                                  ;A2B926;


.returnOffScreen:
    SEC                                                                  ;A2B927;
    RTL                                                                  ;A2B928;


FrozenAI_Rinka:
    JSL.L CheckIfRinkaIsOnScreen                                         ;A2B929;
    BCC .onScreen                                                        ;A2B92D;
    STZ.W $0F9E,X                                                        ;A2B92F;

.onScreen:
    JSL.L NormalEnemyFrozenAI                                            ;A2B932;
    LDA.L $7E783A                                                        ;A2B936;
    BNE .delete                                                          ;A2B93A;
    RTL                                                                  ;A2B93C;


.delete:
    JSR.W DecrementRinkaCounter                                          ;A2B93D;
    JSR.W MarkRinkaSpawnPointAvailable                                   ;A2B940;
    JML.L RinkaDeath                                                     ;A2B943;


EnemyTouch_Rinka:
    JSL.L NormalEnemyTouchAI_NoDeathCheck_External                       ;A2B947;
    BRA ContactReaction_Rinka_Common                                     ;A2B94B;


EnemyShot_Rinka:
    JSL.L NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic_External     ;A2B94D;
    BRA ContactReaction_Rinka_Common                                     ;A2B951;


PowerBombReaction_Rinka:
    LDA.W $0F86,X                                                        ;A2B953;
    AND.W #$0100                                                         ;A2B956;
    BEQ .notInvisible                                                    ;A2B959;
    RTL                                                                  ;A2B95B;


.notInvisible:
    JSL.L NormalEnemyPowerBombAI_NoDeathCheck_External                   ;A2B95C;

ContactReaction_Rinka_Common:
    LDA.W $0F8C,X                                                        ;A2B960;
    BEQ .dead                                                            ;A2B963;
    RTL                                                                  ;A2B965;


.dead:
    JSR.W DecrementRinkaCounter                                          ;A2B966;
    JSR.W MarkRinkaSpawnPointAvailable                                   ;A2B969;
    LDA.W $0FB4,X                                                        ;A2B96C;
    BNE .MBRoom                                                          ;A2B96F;
    LDA.W #$0000                                                         ;A2B971;
    JML.L RinkaDeath                                                     ;A2B974;


.MBRoom:
    LDA.W $0F86,X                                                        ;A2B978;
    ORA.W #$0500                                                         ;A2B97B;
    STA.W $0F86,X                                                        ;A2B97E;
    LDA.W $0F7A,X                                                        ;A2B981;
    STA.B $12                                                            ;A2B984;
    LDA.W $0F7E,X                                                        ;A2B986;
    STA.B $14                                                            ;A2B989;
    LDY.W #EnemyProjectile_MiscDust                                      ;A2B98B;
    LDA.W #$0003                                                         ;A2B98E;
    JSL.L SpawnEnemyProjectileY_ParameterA_RoomGraphics                  ;A2B991;
    LDA.W #Function_Rinka_Killed                                         ;A2B995;
    STA.W $0FA8,X                                                        ;A2B998;
    LDA.W #$0001                                                         ;A2B99B;
    STA.W $0FB2,X                                                        ;A2B99E;
    RTL                                                                  ;A2B9A1;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_Instruction_Rinka_GotoYIfCounterGreaterThan2_A2B9A2:
    LDA.L $7E783C                                                        ;A2B9A2;
    CMP.W #$0003                                                         ;A2B9A6;
    BPL .gotoY                                                           ;A2B9A9;
    INY                                                                  ;A2B9AB;
    INY                                                                  ;A2B9AC;
    RTL                                                                  ;A2B9AD;


.gotoY:
    LDA.W $0000,Y                                                        ;A2B9AE;
    TAY                                                                  ;A2B9B1;
    RTL                                                                  ;A2B9B2;
endif ; !FEATURE_KEEP_UNREFERENCED


Instruction_Rinka_SetAsIntangibleAndInvisible:
    LDA.W $0F86,X                                                        ;A2B9B3;
    ORA.W #$0500                                                         ;A2B9B6;
    STA.W $0F86,X                                                        ;A2B9B9;
    RTL                                                                  ;A2B9BC;


Instruction_Rinka_SetAsIntangibleInvisibleAndActiveOffScreen:
    LDA.W $0F86,X                                                        ;A2B9BD;
    ORA.W #$0D00                                                         ;A2B9C0;
    STA.W $0F86,X                                                        ;A2B9C3;
    RTL                                                                  ;A2B9C6;


Instruction_Rinka_FireRinka:
    LDA.W $0F86,X                                                        ;A2B9C7;
    AND.W #$FAFF                                                         ;A2B9CA;
    STA.W $0F86,X                                                        ;A2B9CD;
    LDA.W #Function_Rinka_Fire                                           ;A2B9D0;
    STA.W $0FA8,X                                                        ;A2B9D3;
    LDA.L $7E783C                                                        ;A2B9D6;
    INC A                                                                ;A2B9DA;
    STA.L $7E783C                                                        ;A2B9DB;
    RTL                                                                  ;A2B9DF;


InstList_Rinka_NotMotherBrainsRoom_0:
    dw Instruction_Rinka_SetAsIntangibleAndInvisible                     ;A2B9E0;
    dw $0040,Spritemap_Rinka_0                                           ;A2B9E2;
    dw Instruction_Rinka_FireRinka                                       ;A2B9E6;

InstList_Rinka_NotMotherBrainsRoom_1:
    dw $0010,Spritemap_Rinka_0                                           ;A2B9E8;
    dw $0008,Spritemap_Rinka_1                                           ;A2B9EC;
    dw $0007,Spritemap_Rinka_2                                           ;A2B9F0;
    dw $0006,Spritemap_Rinka_3                                           ;A2B9F4;
    dw $0005,Spritemap_Rinka_4                                           ;A2B9F8;
    dw $0006,Spritemap_Rinka_3                                           ;A2B9FC;
    dw $0007,Spritemap_Rinka_2                                           ;A2BA00;
    dw $0008,Spritemap_Rinka_1                                           ;A2BA04;
    dw Instruction_Common_GotoY                                          ;A2BA08;
    dw InstList_Rinka_NotMotherBrainsRoom_1                              ;A2BA0A;

InstList_Rinka_MotherBrainsRoom_0:
    dw Instruction_Rinka_SetAsIntangibleInvisibleAndActiveOffScreen      ;A2BA0C;
    dw $0040,Spritemap_Rinka_0                                           ;A2BA0E;
    dw Instruction_Rinka_FireRinka                                       ;A2BA12;

InstList_Rinka_MotherBrainsRoom_1:
    dw $0010,Spritemap_Rinka_0                                           ;A2BA14;
    dw $0008,Spritemap_Rinka_1                                           ;A2BA18;
    dw $0007,Spritemap_Rinka_2                                           ;A2BA1C;
    dw $0006,Spritemap_Rinka_3                                           ;A2BA20;
    dw $0005,Spritemap_Rinka_4                                           ;A2BA24;
    dw $0006,Spritemap_Rinka_3                                           ;A2BA28;
    dw $0007,Spritemap_Rinka_2                                           ;A2BA2C;
    dw $0008,Spritemap_Rinka_1                                           ;A2BA30;
    dw Instruction_Common_GotoY                                          ;A2BA34;
    dw InstList_Rinka_MotherBrainsRoom_1                                 ;A2BA36;

Spritemap_Rinka_0:
    dw $0001                                                             ;A2BA38;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $100)

Spritemap_Rinka_1:
    dw $0001                                                             ;A2BA3F;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $102)

Spritemap_Rinka_2:
    dw $0001                                                             ;A2BA46;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $104)

Spritemap_Rinka_3:
    dw $0001                                                             ;A2BA4D;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $106)

Spritemap_Rinka_4:
    dw $0001                                                             ;A2BA54;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 3, 0, $108)


Palette_Polyp_Rinka:
    dw $3800,$5739,$4273,$2DAD,$14C6,$19DA,$1174,$0D0F                   ;A2BA5B;
    dw $08AA,$0FDE,$02DF,$019F,$005F,$0037,$6FDF,$0006                   ;A2BA6B;

Palette_Rio:
    dw $3800,$2FFF,$1AF7,$014A,$0063,$275A,$0EB5,$0210                   ;A2BA7B;
    dw $01CE,$03E0,$02E0,$0200,$0100,$7F00,$6DE0,$54E0                   ;A2BA8B;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_InstList_Rio_Idle_A2BB9B:
    dw $0004,Spritemap_Rio_0                                             ;A2BA9B;
    dw $0004,Spritemap_Rio_1                                             ;A2BA9F;
    dw $0004,Spritemap_Rio_0                                             ;A2BAA3;
    dw $0004,Spritemap_Rio_1                                             ;A2BAA7;
    dw $0004,Spritemap_Rio_0                                             ;A2BAAB;
    dw $0004,Spritemap_Rio_1                                             ;A2BAAF;
    dw $0004,Spritemap_Rio_0                                             ;A2BAB3;
    dw $0004,Spritemap_Rio_1                                             ;A2BAB7;
    dw $0004,Spritemap_Rio_2                                             ;A2BABB;
    dw $0004,Spritemap_Rio_3                                             ;A2BABF;
    dw $0004,Spritemap_Rio_2                                             ;A2BAC3;
    dw $0004,Spritemap_Rio_3                                             ;A2BAC7;
    dw Instruction_Common_GotoY                                          ;A2BACB;
    dw UNUSED_InstList_Rio_Idle_A2BB9B                                   ;A2BACD;

UNUSED_InstList_Rio_Swooping_A2BACF:
    dw $0003,Spritemap_Rio_2                                             ;A2BACF;
    dw $0003,Spritemap_Rio_3                                             ;A2BAD3;
    dw $0003,Spritemap_Rio_4                                             ;A2BAD7;
    dw $0003,Spritemap_Rio_5                                             ;A2BADB;
    dw $0003,Spritemap_Rio_6                                             ;A2BADF;
    dw $0003,Spritemap_Rio_7                                             ;A2BAE3;
    dw $0003,Spritemap_Rio_6                                             ;A2BAE7;
    dw $0003,Spritemap_Rio_7                                             ;A2BAEB;
    dw $0003,Spritemap_Rio_6                                             ;A2BAEF;
    dw $0003,Spritemap_Rio_7                                             ;A2BAF3;
    dw $0003,Spritemap_Rio_6                                             ;A2BAF7;
    dw $0003,Spritemap_Rio_7                                             ;A2BAFB;
    dw $0003,Spritemap_Rio_6                                             ;A2BAFF;
    dw $0003,Spritemap_Rio_7                                             ;A2BB03;
    dw $0003,Spritemap_Rio_6                                             ;A2BB07;
    dw $0003,Spritemap_Rio_7                                             ;A2BB0B;
    dw $0003,Spritemap_Rio_6                                             ;A2BB0F;
    dw $0003,Spritemap_Rio_7                                             ;A2BB13;
    dw $0003,Spritemap_Rio_6                                             ;A2BB17;
    dw $0003,Spritemap_Rio_7                                             ;A2BB1B;
    dw $0003,Spritemap_Rio_6                                             ;A2BB1F;
    dw $0003,Spritemap_Rio_7                                             ;A2BB23;
    dw $0003,Spritemap_Rio_6                                             ;A2BB27;
    dw $0003,Spritemap_Rio_7                                             ;A2BB2B;
    dw $0003,Spritemap_Rio_6                                             ;A2BB2F;
    dw $0003,Spritemap_Rio_7                                             ;A2BB33;
    dw $0003,Spritemap_Rio_6                                             ;A2BB37;
    dw $0003,Spritemap_Rio_7                                             ;A2BB3B;
    dw $0003,Spritemap_Rio_6                                             ;A2BB3F;
    dw $0003,Spritemap_Rio_7                                             ;A2BB43;
    dw Instruction_Common_GotoY                                          ;A2BB47;
    dw UNUSED_InstList_Rio_Swooping_A2BACF                               ;A2BB49;
endif ; !FEATURE_KEEP_UNREFERENCED

InstList_Rio_Idle:
    dw $0004,Spritemap_Rio_0                                             ;A2BB4B;
    dw $0004,Spritemap_Rio_1                                             ;A2BB4F;

InstList_Rio_PostSwoopIdle:
    dw $0004,Spritemap_Rio_0                                             ;A2BB53;
    dw $0004,Spritemap_Rio_1                                             ;A2BB57;
    dw $0004,Spritemap_Rio_0                                             ;A2BB5B;
    dw $0004,Spritemap_Rio_1                                             ;A2BB5F;
    dw $0004,Spritemap_Rio_0                                             ;A2BB63;
    dw $0004,Spritemap_Rio_1                                             ;A2BB67;
    dw $0004,Spritemap_Rio_2                                             ;A2BB6B;
    dw $0004,Spritemap_Rio_3                                             ;A2BB6F;
    dw $0004,Spritemap_Rio_2                                             ;A2BB73;
    dw $0004,Spritemap_Rio_3                                             ;A2BB77;
    dw Instruction_Common_GotoY                                          ;A2BB7B;
    dw InstList_Rio_Idle                                                 ;A2BB7D;

InstList_Rio_Swooping_Part1:
    dw $0003,Spritemap_Rio_2                                             ;A2BB7F;
    dw $0003,Spritemap_Rio_3                                             ;A2BB83;
    dw $0003,Spritemap_Rio_4                                             ;A2BB87;
    dw $0003,Spritemap_Rio_5                                             ;A2BB8B;
    dw $0003,Spritemap_Rio_6                                             ;A2BB8F;
    dw Instruction_Rio_SetAnimationFinishedFlag                          ;A2BB93;
    dw Instruction_Common_Sleep                                          ;A2BB95;

InstList_Rio_Swooping_Part2:
    dw $0003,Spritemap_Rio_7                                             ;A2BB97;
    dw $0003,Spritemap_Rio_6                                             ;A2BB9B;
    dw Instruction_Common_GotoY                                          ;A2BB9F;
    dw InstList_Rio_Swooping_Part2                                       ;A2BBA1;

InstList_Rio_SwoopCooldown:
    dw $0003,Spritemap_Rio_6                                             ;A2BBA3;
    dw $0003,Spritemap_Rio_5                                             ;A2BBA7;
    dw $0003,Spritemap_Rio_4                                             ;A2BBAB;
    dw $0003,Spritemap_Rio_3                                             ;A2BBAF;
    dw $0003,Spritemap_Rio_2                                             ;A2BBB3;
    dw Instruction_Rio_SetAnimationFinishedFlag                          ;A2BBB7;
    dw Instruction_Common_Sleep                                          ;A2BBB9;

RioConstants_YVelocity:
    dw $0600                                                             ;A2BBBB;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_RioConstants_A2BBBD:
    dw $0680                                                             ;A2BBBD;
endif ; !FEATURE_KEEP_UNREFERENCED

RioConstants_XVelocity:
    dw $0180                                                             ;A2BBBF;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_RioConstants_A2BBC1:
    dw $0200                                                             ;A2BBC1;
endif ; !FEATURE_KEEP_UNREFERENCED

Instruction_Rio_SetAnimationFinishedFlag:
    LDX.W $0E54                                                          ;A2BBC3;
    LDA.W #$0001                                                         ;A2BBC6;
    STA.W $0FB0,X                                                        ;A2BBC9;
    RTL                                                                  ;A2BBCC;


InitAI_Rio:
    LDX.W $0E54                                                          ;A2BBCD;
    STZ.W $0FB0,X                                                        ;A2BBD0;
    STZ.W $0FB2,X                                                        ;A2BBD3;
    LDA.W #InstList_Rio_Idle                                             ;A2BBD6;
    STA.W $0F92,X                                                        ;A2BBD9;
    LDA.W #Function_Rio_WaitForSamusToGetNear                            ;A2BBDC;
    STA.W $0FAA,X                                                        ;A2BBDF;
    RTL                                                                  ;A2BBE2;


MainAI_Rio:
    JSL.L GenerateRandomNumber                                           ;A2BBE3;
    LDX.W $0E54                                                          ;A2BBE7;
    JMP.W ($0FAA,X)                                                      ;A2BBEA;


Function_Rio_WaitForSamusToGetNear:
    LDA.W #$00A0                                                         ;A2BBED;
    JSL.L CheckIfXDistanceBetweenEnemyAndSamusIsAtLeastA                 ;A2BBF0;
    BCC .SamusNear                                                       ;A2BBF4;
    RTL                                                                  ;A2BBF6;


.SamusNear:
    LDA.W RioConstants_YVelocity                                         ;A2BBF7;
    STA.W $0FAC,X                                                        ;A2BBFA;
    LDA.W RioConstants_XVelocity                                         ;A2BBFD;
    STA.W $0FAE,X                                                        ;A2BC00;
    LDA.W $0AF6                                                          ;A2BC03;
    CMP.W $0F7A,X                                                        ;A2BC06;
    BPL +                                                                ;A2BC09;
    LDA.W $0FAE,X                                                        ;A2BC0B;
    EOR.W #$FFFF                                                         ;A2BC0E;
    INC A                                                                ;A2BC11;
    STA.W $0FAE,X                                                        ;A2BC12;

  + LDA.W #InstList_Rio_Swooping_Part1                                   ;A2BC15;
    JSR.W SetRioInstList                                                 ;A2BC18;
    LDA.W #Function_Rio_Swoop_Descending                                 ;A2BC1B;
    STA.W $0FAA,X                                                        ;A2BC1E;
    JSL.L CheckIfEnemyCenterIsOnScreen                                   ;A2BC21;
    AND.W #$FFFF                                                         ;A2BC25;
    BNE .return                                                          ;A2BC28;
    LDA.W #$0065                                                         ;A2BC2A;
    JSL.L QueueSound_Lib2_Max6                                           ;A2BC2D;

.return:
    RTL                                                                  ;A2BC31;


Function_Rio_SwoopCooldown:
    LDA.W $0FB0,X                                                        ;A2BC32;
    BNE .finishedAnimation                                               ;A2BC35;
    RTL                                                                  ;A2BC37;


.finishedAnimation:
    STZ.W $0FB0,X                                                        ;A2BC38;
    LDA.W #InstList_Rio_PostSwoopIdle                                    ;A2BC3B;
    JSR.W SetRioInstList                                                 ;A2BC3E;
    LDA.W #Function_Rio_WaitForSamusToGetNear                            ;A2BC41;
    STA.W $0FAA,X                                                        ;A2BC44;
    RTL                                                                  ;A2BC47;


Function_Rio_Swoop_Descending:
    STZ.B $12                                                            ;A2BC48;
    STZ.B $14                                                            ;A2BC4A;
    LDA.W $0FAE,X                                                        ;A2BC4C;
    BPL +                                                                ;A2BC4F;
    DEC.B $14                                                            ;A2BC51;

  + STA.B $13                                                            ;A2BC53;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A2BC55;
    BCS .collidedHorizontally                                            ;A2BC59;
    STZ.B $12                                                            ;A2BC5B;
    STZ.B $14                                                            ;A2BC5D;
    LDA.W $0FAC,X                                                        ;A2BC5F;
    BPL +                                                                ;A2BC62;
    DEC.B $14                                                            ;A2BC64;

  + STA.B $13                                                            ;A2BC66;
    JSL.L MoveEnemyDownBy_14_12                                          ;A2BC68;
    BCS .collidedVertically                                              ;A2BC6C;
    LDA.W $0FAC,X                                                        ;A2BC6E;
    SEC                                                                  ;A2BC71;
    SBC.W #$001C                                                         ;A2BC72;
    STA.W $0FAC,X                                                        ;A2BC75;
    BMI .homing                                                          ;A2BC78;
    LDA.W $0FB0,X                                                        ;A2BC7A;
    BEQ .return                                                          ;A2BC7D;
    STZ.W $0FB0,X                                                        ;A2BC7F;
    LDA.W #InstList_Rio_Swooping_Part2                                   ;A2BC82;
    JSR.W SetRioInstList                                                 ;A2BC85;

.return:
    RTL                                                                  ;A2BC88;


.homing:
    LDA.W $0FAE,X                                                        ;A2BC89;
    STA.W $0FA8,X                                                        ;A2BC8C;
    STZ.W $0FAE,X                                                        ;A2BC8F;
    STZ.W $0FAC,X                                                        ;A2BC92;
    LDA.W #Function_Rio_Homing                                           ;A2BC95;
    STA.W $0FAA,X                                                        ;A2BC98;
    RTL                                                                  ;A2BC9B;


.collidedHorizontally:
    LDA.W $0FAE,X                                                        ;A2BC9C;
    EOR.W #$FFFF                                                         ;A2BC9F;
    INC A                                                                ;A2BCA2;
    STA.W $0FAE,X                                                        ;A2BCA3;

.collidedVertically:
    LDA.W $0FAC,X                                                        ;A2BCA6;
    EOR.W #$FFFF                                                         ;A2BCA9;
    INC A                                                                ;A2BCAC;
    STA.W $0FAC,X                                                        ;A2BCAD;
    LDA.W #Function_Rio_Swoop_Ascending                                  ;A2BCB0;
    STA.W $0FAA,X                                                        ;A2BCB3;
    RTL                                                                  ;A2BCB6;


Function_Rio_Swoop_Ascending:
    STZ.B $12                                                            ;A2BCB7;
    STZ.B $14                                                            ;A2BCB9;
    LDA.W $0FAE,X                                                        ;A2BCBB;
    BPL +                                                                ;A2BCBE;
    DEC.B $14                                                            ;A2BCC0;

  + STA.B $13                                                            ;A2BCC2;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A2BCC4;
    BCC .notCollidedWithWall                                             ;A2BCC8;
    LDA.W $0FAE,X                                                        ;A2BCCA;
    EOR.W #$FFFF                                                         ;A2BCCD;
    INC A                                                                ;A2BCD0;
    STA.W $0FAE,X                                                        ;A2BCD1;

.notCollidedWithWall:
    STZ.B $12                                                            ;A2BCD4;
    STZ.B $14                                                            ;A2BCD6;
    LDA.W $0FAC,X                                                        ;A2BCD8;
    BPL +                                                                ;A2BCDB;
    DEC.B $14                                                            ;A2BCDD;

  + STA.B $13                                                            ;A2BCDF;
    JSL.L MoveEnemyDownBy_14_12                                          ;A2BCE1;
    BCS .notCollidedWithBlock                                            ;A2BCE5;
    LDA.W $0FAC,X                                                        ;A2BCE7;
    SEC                                                                  ;A2BCEA;
    SBC.W #$001C                                                         ;A2BCEB;
    STA.W $0FAC,X                                                        ;A2BCEE;
    RTL                                                                  ;A2BCF1;


.notCollidedWithBlock:
    LDA.W #InstList_Rio_SwoopCooldown                                    ;A2BCF2;
    JSR.W SetRioInstList                                                 ;A2BCF5;
    LDA.W #Function_Rio_SwoopCooldown                                    ;A2BCF8;
    STA.W $0FAA,X                                                        ;A2BCFB;
    RTL                                                                  ;A2BCFE;


Function_Rio_Homing:
    LDA.W $0F7E,X                                                        ;A2BCFF;
    SEC                                                                  ;A2BD02;
    SBC.W $0AFA                                                          ;A2BD03;
    BPL .resumeSwoop                                                     ;A2BD06;
    JSL.L CalculateAngleOfSamusFromEnemy                                 ;A2BD08;
    TXY                                                                  ;A2BD0C;
    ASL A                                                                ;A2BD0D;
    TAX                                                                  ;A2BD0E;
    LDA.L SineCosineTables_8bitSine_SignExtended,X                       ;A2BD0F;
    STA.W $0FAE,Y                                                        ;A2BD13;
    LDA.L SineCosineTables_NegativeCosine_SignExtended,X                 ;A2BD16;
    STA.W $0FAC,Y                                                        ;A2BD1A;
    TYX                                                                  ;A2BD1D;
    STZ.B $12                                                            ;A2BD1E;
    STZ.B $14                                                            ;A2BD20;
    LDA.W $0FAE,X                                                        ;A2BD22;
    BPL +                                                                ;A2BD25;
    DEC.B $14                                                            ;A2BD27;

  + STA.B $13                                                            ;A2BD29;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A2BD2B;
    STZ.B $12                                                            ;A2BD2F;
    STZ.B $14                                                            ;A2BD31;
    LDA.W $0FAC,X                                                        ;A2BD33;
    BPL +                                                                ;A2BD36;
    DEC.B $14                                                            ;A2BD38;

  + STA.B $13                                                            ;A2BD3A;
    JSL.L MoveEnemyDownBy_14_12                                          ;A2BD3C;
    RTL                                                                  ;A2BD40;


.resumeSwoop:
    LDA.W $0FA8,X                                                        ;A2BD41;
    STA.W $0FAE,X                                                        ;A2BD44;
    LDA.W #$FFFF                                                         ;A2BD47;
    STA.W $0FAC,X                                                        ;A2BD4A;
    LDA.W #Function_Rio_Swoop_Ascending                                  ;A2BD4D;
    STA.W $0FAA,X                                                        ;A2BD50;
    RTL                                                                  ;A2BD53;


SetRioInstList:
    LDX.W $0E54                                                          ;A2BD54;
    CMP.W $0FB2,X                                                        ;A2BD57;
    BEQ .return                                                          ;A2BD5A;
    STA.W $0FB2,X                                                        ;A2BD5C;
    STA.W $0F92,X                                                        ;A2BD5F;
    LDA.W #$0001                                                         ;A2BD62;
    STA.W $0F94,X                                                        ;A2BD65;
    STZ.W $0F90,X                                                        ;A2BD68;

.return:
    RTS                                                                  ;A2BD6B;


Spritemap_Rio_0:
    dw $0004                                                             ;A2BD6C;
    %spritemapEntry(1, $1FF, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1FF, $00, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $100)

Spritemap_Rio_1:
    dw $0004                                                             ;A2BD82;
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1FF, $00, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $1FF, $F8, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $1F0, $F8, 1, 0, 2, 0, $104)

Spritemap_Rio_2:
    dw $0004                                                             ;A2BD98;
    %spritemapEntry(1, $1FF, $00, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $1FF, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $100)

Spritemap_Rio_3:
    dw $0004                                                             ;A2BDAE;
    %spritemapEntry(1, $1FF, $00, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $1FF, $F8, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $1F0, $F8, 1, 0, 2, 0, $104)

Spritemap_Rio_4:
    dw $0004                                                             ;A2BDC4;
    %spritemapEntry(1, $1FF, $00, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1FF, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $100)

Spritemap_Rio_5:
    dw $0004                                                             ;A2BDDA;
    %spritemapEntry(1, $1FF, $00, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1FF, $F8, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $1F0, $F8, 1, 0, 2, 0, $104)

Spritemap_Rio_6:
    dw $0004                                                             ;A2BDF0;
    %spritemapEntry(1, $1FF, $00, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1FF, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $100)

Spritemap_Rio_7:
    dw $0004                                                             ;A2BE06;
    %spritemapEntry(1, $1FF, $00, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1FF, $F8, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $1F0, $F8, 1, 0, 2, 0, $104)

Palette_Squeept:
    dw $3800,$021D,$0015,$0008,$0003,$00BD,$0013,$000E                   ;A2BE1C;
    dw $000B,$7FFF,$039C,$0237,$00D1,$03A0,$02C0,$05E0                   ;A2BE2C;

InstList_Squeept_Rising:
    dw $0001,Spritemap_Squeept_0                                         ;A2BE3C;
    dw Instruction_Common_Sleep                                          ;A2BE40;

InstList_Squeept_Flipping_Falling:
    dw $0001,Spritemap_Squeept_0                                         ;A2BE42;
    dw $0005,Spritemap_Squeept_1                                         ;A2BE46;
    dw $0009,Spritemap_Squeept_2                                         ;A2BE4A;
    dw $0007,Spritemap_Squeept_3                                         ;A2BE4E;
    dw $0003,Spritemap_Squeept_4                                         ;A2BE52;
    dw $000A,Spritemap_Squeept_5                                         ;A2BE56;
    dw $0001,Spritemap_Squeept_6                                         ;A2BE5A;
    dw Instruction_Squeept_SetAnimationFinishedFlag                      ;A2BE5E;
    dw Instruction_Common_Sleep                                          ;A2BE60;

InstList_Squeept_Flame_0:
    dw $0001,Spritemap_Squeept_7                                         ;A2BE62;
    dw $0001,Spritemap_CommonA2_Nothing                                  ;A2BE66;
    dw Instruction_Common_TimerInY,$0001                                 ;A2BE6A;

InstList_Squeept_Flame_1:
    dw $0001,Spritemap_Squeept_9                                         ;A2BE6E;
    dw $0001,Spritemap_CommonA2_Nothing                                  ;A2BE72;
    dw $0001,Spritemap_Squeept_8                                         ;A2BE76;
    dw $0001,Spritemap_CommonA2_Nothing                                  ;A2BE7A;
    dw Instruction_Common_DecrementTimer_GotoYIfNonZero_duplicate        ;A2BE7E;
    dw InstList_Squeept_Flame_1                                          ;A2BE80;
    dw Instruction_Common_GotoY                                          ;A2BE82;
    dw InstList_Squeept_Flame_0                                          ;A2BE84;

SqueeptInitialYVelocities:
; Unit 1/100h px/frame
    dw $F7FF,$F8FE,$F9BF,$FAFF                                           ;A2BE86;

Instruction_Squeept_SetAnimationFinishedFlag:
    LDX.W $0E54                                                          ;A2BE8E;
    LDA.W #$0001                                                         ;A2BE91;
    STA.L $7E7800,X                                                      ;A2BE94;
    RTL                                                                  ;A2BE98;


InitAI_Squeept:
    LDX.W $0E54                                                          ;A2BE99;
    LDA.W #$0000                                                         ;A2BE9C;
    STA.L $7E7800,X                                                      ;A2BE9F;
    STA.L $7E7802,X                                                      ;A2BEA3;
    LDA.W $0FB4,X                                                        ;A2BEA7;
    BMI .flame                                                           ;A2BEAA;
    LDA.W $0F7A,X                                                        ;A2BEAC;
    STA.W $0FAE,X                                                        ;A2BEAF;
    LDA.W $0F7E,X                                                        ;A2BEB2;
    STA.W $0FB0,X                                                        ;A2BEB5;
    LDA.W #InstList_Squeept_Rising                                       ;A2BEB8;
    STA.W $0F92,X                                                        ;A2BEBB;
    LDA.W #Function_Squeept_Jump                                         ;A2BEBE;
    STA.W $0FB2,X                                                        ;A2BEC1;
    RTL                                                                  ;A2BEC4;


.flame:
    LDA.W #InstList_Squeept_Flame_0                                      ;A2BEC5;
    STA.W $0F92,X                                                        ;A2BEC8;
    LDA.W #Function_Squeept_Flame                                        ;A2BECB;
    STA.W $0FB2,X                                                        ;A2BECE;
    RTL                                                                  ;A2BED1;


MainAI_Squeept:
    JSL.L GenerateRandomNumber                                           ;A2BED2;
    LDX.W $0E54                                                          ;A2BED6;
    JMP.W ($0FB2,X)                                                      ;A2BED9;


Function_Squeept_Flame:
    LDA.W $0F4C,X                                                        ;A2BEDC;
    BNE .notDead                                                         ;A2BEDF;
    LDA.W $0F86,X                                                        ;A2BEE1;
    ORA.W #$0200                                                         ;A2BEE4;
    STA.W $0F86,X                                                        ;A2BEE7;
    RTL                                                                  ;A2BEEA;


.notDead:
    LDA.W $0F5E,X                                                        ;A2BEEB;
    STA.W $0F9E,X                                                        ;A2BEEE;
    BEQ .frozen                                                          ;A2BEF1;
    BRA .invisible                                                       ;A2BEF3;


.frozen:
    BIT.W $0F6C,X                                                        ;A2BEF5;
    BMI .visible                                                         ;A2BEF8;

.invisible:
    LDA.W $0F86,X                                                        ;A2BEFA;
    ORA.W #$0100                                                         ;A2BEFD;
    STA.W $0F86,X                                                        ;A2BF00;
    RTL                                                                  ;A2BF03;


.visible:
    LDA.W $0F86,X                                                        ;A2BF04;
    AND.W #$FEFF                                                         ;A2BF07;
    STA.W $0F86,X                                                        ;A2BF0A;
    LDA.W $0F3E,X                                                        ;A2BF0D;
    STA.W $0F7E,X                                                        ;A2BF10;
    LDA.W $0F3E,X                                                        ;A2BF13; >_<
    STA.W $0F7E,X                                                        ;A2BF16;
    RTL                                                                  ;A2BF19;


Function_Squeept_Jump:
    LDA.W $05E6                                                          ;A2BF1A;
    AND.W #$0006                                                         ;A2BF1D;
    TAY                                                                  ;A2BF20;
    LDA.W SqueeptInitialYVelocities,Y                                    ;A2BF21;
    STA.W $0FAC,X                                                        ;A2BF24;
    LDA.W #Function_Squeept_Rising                                       ;A2BF27;
    STA.W $0FB2,X                                                        ;A2BF2A;
    LDA.W $0F86,X                                                        ;A2BF2D;
    ORA.W #$0800                                                         ;A2BF30;
    STA.W $0F86,X                                                        ;A2BF33;
    LDA.W #$000D                                                         ;A2BF36;
    JSL.L QueueSound_Lib2_Max6                                           ;A2BF39;
    RTL                                                                  ;A2BF3D;


Function_Squeept_Rising:
    LDA.W $0FAB,X                                                        ;A2BF3E;
    AND.W #$FF00                                                         ;A2BF41;
    CLC                                                                  ;A2BF44;
    ADC.W $0F80,X                                                        ;A2BF45;
    STA.W $0F80,X                                                        ;A2BF48;
    LDA.W $0FAC,X                                                        ;A2BF4B;
    XBA                                                                  ;A2BF4E;
    BPL .lowByte                                                         ;A2BF4F;
    ORA.W #$FF00                                                         ;A2BF51;
    BRA +                                                                ;A2BF54;


.lowByte:
    AND.W #$00FF                                                         ;A2BF56;

  + ADC.W $0F7E,X                                                        ;A2BF59;
    STA.W $0F7E,X                                                        ;A2BF5C;
    LDA.W $0FAC,X                                                        ;A2BF5F;
    CLC                                                                  ;A2BF62;
    ADC.W #$0048                                                         ;A2BF63;
    STA.W $0FAC,X                                                        ;A2BF66;
    CMP.W #$FC00                                                         ;A2BF69;
    BCS .maxHeight                                                       ;A2BF6C;
    RTL                                                                  ;A2BF6E;


.maxHeight:
    LDA.W #InstList_Squeept_Flipping_Falling                             ;A2BF6F;
    JSR.W SetSqueeptInstList                                             ;A2BF72;
    LDA.W #Function_Squeept_Flipping                                     ;A2BF75;
    STA.W $0FB2,X                                                        ;A2BF78;
    RTL                                                                  ;A2BF7B;


Function_Squeept_Flipping:
    LDA.W $0FAB,X                                                        ;A2BF7C;
    AND.W #$FF00                                                         ;A2BF7F;
    CLC                                                                  ;A2BF82;
    ADC.W $0F80,X                                                        ;A2BF83;
    STA.W $0F80,X                                                        ;A2BF86;
    LDA.W $0FAC,X                                                        ;A2BF89;
    XBA                                                                  ;A2BF8C;
    BPL .lowByte                                                         ;A2BF8D;
    ORA.W #$FF00                                                         ;A2BF8F;
    BRA +                                                                ;A2BF92;


.lowByte:
    AND.W #$00FF                                                         ;A2BF94;

  + ADC.W $0F7E,X                                                        ;A2BF97;
    STA.W $0F7E,X                                                        ;A2BF9A;
    LDA.W $0FAC,X                                                        ;A2BF9D;
    CLC                                                                  ;A2BFA0;
    ADC.W #$0048                                                         ;A2BFA1;
    STA.W $0FAC,X                                                        ;A2BFA4;
    LDA.L $7E7800,X                                                      ;A2BFA7;
    BNE .animationFinished                                               ;A2BFAB;
    RTL                                                                  ;A2BFAD;


.animationFinished:
    LDA.W #$0000                                                         ;A2BFAE;
    STA.L $7E7800,X                                                      ;A2BFB1;
    LDA.W #Function_Squeept_Falling                                      ;A2BFB5;
    STA.W $0FB2,X                                                        ;A2BFB8;
    RTL                                                                  ;A2BFBB;


Function_Squeept_Falling:
    LDA.W $0FAB,X                                                        ;A2BFBC;
    AND.W #$FF00                                                         ;A2BFBF;
    CLC                                                                  ;A2BFC2;
    ADC.W $0F80,X                                                        ;A2BFC3;
    STA.W $0F80,X                                                        ;A2BFC6;
    LDA.W $0FAC,X                                                        ;A2BFC9;
    XBA                                                                  ;A2BFCC;
    BPL .lowByte                                                         ;A2BFCD;
    ORA.W #$FF00                                                         ;A2BFCF;
    BRA +                                                                ;A2BFD2;


.lowByte:
    AND.W #$00FF                                                         ;A2BFD4;

  + ADC.W $0F7E,X                                                        ;A2BFD7;
    STA.W $0F7E,X                                                        ;A2BFDA;
    AND.W #$00F0                                                         ;A2BFDD;
    CMP.W #$00F0                                                         ;A2BFE0;
    BEQ .nextJump                                                        ;A2BFE3;
    LDA.W $0FAC,X                                                        ;A2BFE5;
    CLC                                                                  ;A2BFE8;
    ADC.W #$0048                                                         ;A2BFE9;
    STA.W $0FAC,X                                                        ;A2BFEC;
    RTL                                                                  ;A2BFEF;


.nextJump:
    LDA.W $0FAE,X                                                        ;A2BFF0;
    STA.W $0F7A,X                                                        ;A2BFF3;
    LDA.W $0FB0,X                                                        ;A2BFF6;
    STA.W $0F7E,X                                                        ;A2BFF9;
    LDA.W #InstList_Squeept_Rising                                       ;A2BFFC;
    JSR.W SetSqueeptInstList                                             ;A2BFFF;
    LDA.W #Function_Squeept_Jump                                         ;A2C002;
    STA.W $0FB2,X                                                        ;A2C005;
    LDA.W $0F86,X                                                        ;A2C008;
    AND.W #$F7FF                                                         ;A2C00B;
    STA.W $0F86,X                                                        ;A2C00E;
    RTL                                                                  ;A2C011;


SetSqueeptInstList:
    LDX.W $0E54                                                          ;A2C012;
    CMP.L $7E7802,X                                                      ;A2C015;
    BEQ .return                                                          ;A2C019;
    STA.L $7E7802,X                                                      ;A2C01B;
    STA.W $0F92,X                                                        ;A2C01F;
    LDA.W #$0001                                                         ;A2C022;
    STA.W $0F94,X                                                        ;A2C025;
    STZ.W $0F90,X                                                        ;A2C028;

.return:
    RTS                                                                  ;A2C02B;


Spritemap_Squeept_0:
    dw $0004                                                             ;A2C02C;
    %spritemapEntry(1, $1FF, $F3, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1FF, $03, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $1F0, $03, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F3, 0, 0, 2, 0, $100)

Spritemap_Squeept_1:
    dw $0004                                                             ;A2C042;
    %spritemapEntry(0, $07, $03, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $1F0, $03, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $1FF, $F3, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $1F0, $F3, 0, 0, 2, 0, $104)

Spritemap_Squeept_2:
    dw $0002                                                             ;A2C058;
    %spritemapEntry(1, $00, $F4, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1F0, $F4, 0, 0, 2, 0, $106)

Spritemap_Squeept_3:
    dw $0002                                                             ;A2C064;
    %spritemapEntry(1, $00, $F8, 1, 1, 2, 0, $106)
    %spritemapEntry(1, $1F0, $F8, 1, 0, 2, 0, $106)

Spritemap_Squeept_4:
    dw $0004                                                             ;A2C070;
    %spritemapEntry(0, $07, $EF, 1, 1, 2, 0, $10C)
    %spritemapEntry(0, $1F0, $EF, 1, 0, 2, 0, $10C)
    %spritemapEntry(1, $1FF, $F7, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $1F0, $F7, 1, 0, 2, 0, $104)

Spritemap_Squeept_5:
    dw $0004                                                             ;A2C086;
    %spritemapEntry(1, $1FF, $FC, 1, 1, 2, 0, $100)
    %spritemapEntry(1, $1FF, $EC, 1, 1, 2, 0, $102)
    %spritemapEntry(1, $1F0, $EC, 1, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $FC, 1, 0, 2, 0, $100)

Spritemap_Squeept_6:
    dw $0003                                                             ;A2C09C;
    %spritemapEntry(1, $1FF, $FC, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1F0, $FC, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $EC, 0, 0, 2, 0, $108)

Spritemap_Squeept_7:
    dw $0002                                                             ;A2C0AD;
    %spritemapEntry(0, $00, $04, 0, 1, 2, 0, $11C)
    %spritemapEntry(0, $1F9, $04, 0, 0, 2, 0, $11C)

Spritemap_Squeept_8:
    dw $0002                                                             ;A2C0B9;
    %spritemapEntry(0, $1FC, $0C, 0, 0, 2, 0, $11D)
    %spritemapEntry(0, $1FC, $04, 0, 0, 2, 0, $10D)

Spritemap_Squeept_9:
    dw $0002                                                             ;A2C0C5;
    %spritemapEntry(0, $1FC, $0C, 0, 0, 2, 0, $11E)
    %spritemapEntry(0, $1FC, $04, 0, 0, 2, 0, $10E)

Palette_Geruta:
    dw $3800,$4E7F,$3975,$0C0A,$0006,$45D8,$2D33,$1C8E                   ;A2C0D1;
    dw $102B,$5347,$5624,$5962,$5CA0,$1BBD,$0DFD,$009D                   ;A2C0E1;

InstList_Geruta_Main_Idle:
    dw Instruction_Geruta_SetFlamesYOffset_8_duplicate                   ;A2C0F1;
    dw $000D,Spritemap_Geruta_1                                          ;A2C0F3;
    dw $0012,Spritemap_Geruta_0                                          ;A2C0F7;
    dw $000D,Spritemap_Geruta_1                                          ;A2C0FB;
    dw $0012,Spritemap_Geruta_2                                          ;A2C0FF;
    dw Instruction_Common_GotoY                                          ;A2C103;
    dw InstList_Geruta_Main_Idle                                         ;A2C105;

InstList_Geruta_Main_Swoop_StartDescending:
    dw Instruction_Geruta_SetFlamesYOffset_8                             ;A2C107;
    dw $0001,Spritemap_Geruta_0                                          ;A2C109;
    dw Instruction_Geruta_SetFlamesYOffset_4                             ;A2C10D;
    dw $0001,Spritemap_Geruta_A                                          ;A2C10F;
    dw Instruction_Geruta_SetFlamesYOffset_0                             ;A2C113;
    dw $0001,Spritemap_Geruta_B                                          ;A2C115;
    dw Instruction_Geruta_SetFlamesYOffset_negative4                     ;A2C119;
    dw $0001,Spritemap_Geruta_C                                          ;A2C11B;
    dw Instruction_Geruta_SetFlamesYOffset_negativeC_duplicate           ;A2C11F;
    dw $0001,Spritemap_Geruta_D                                          ;A2C121;
    dw Instruction_Geruta_SetFlamesYOffset_negative10                    ;A2C125;
    dw $0001,Spritemap_Geruta_E                                          ;A2C127;
    dw Instruction_Geruta_SetFinishedSwoopStartAnimationFlag             ;A2C12B;
    dw Instruction_Common_Sleep                                          ;A2C12D;

InstList_Geruta_Main_Swoop_Descending:
    dw Instruction_Geruta_SetFlamesYOffset_negativeC                     ;A2C12F;
    dw $0006,Spritemap_Geruta_7                                          ;A2C131;
    dw $0005,Spritemap_Geruta_8                                          ;A2C135;
    dw $0008,Spritemap_Geruta_9                                          ;A2C139;
    dw $0006,Spritemap_Geruta_8                                          ;A2C13D;
    dw Instruction_Common_GotoY                                          ;A2C141;
    dw InstList_Geruta_Main_Swoop_Descending                             ;A2C143;

InstList_Geruta_Main_Swoop_StartAscending:
    dw Instruction_Geruta_SetFlamesYOffset_negative10                    ;A2C145;
    dw $0001,Spritemap_Geruta_E                                          ;A2C147;
    dw Instruction_Geruta_SetFlamesYOffset_negativeC_duplicate           ;A2C14B;
    dw $0001,Spritemap_Geruta_D                                          ;A2C14D;
    dw Instruction_Geruta_SetFlamesYOffset_negative4                     ;A2C151;
    dw $0001,Spritemap_Geruta_C                                          ;A2C153;
    dw Instruction_Geruta_SetFlamesYOffset_0                             ;A2C157;
    dw $0001,Spritemap_Geruta_B                                          ;A2C159;
    dw Instruction_Geruta_SetFlamesYOffset_4                             ;A2C15D;
    dw $0001,Spritemap_Geruta_A                                          ;A2C15F;
    dw Instruction_Geruta_SetFlamesYOffset_8                             ;A2C163;
    dw $0001,Spritemap_Geruta_0                                          ;A2C165;
    dw Instruction_Geruta_SetFlamesYOffset_8_duplicate                   ;A2C169;
    dw $0001,Spritemap_Geruta_1                                          ;A2C16B;
    dw Instruction_Geruta_SetFlamesYOffset_C                             ;A2C16F;
    dw $0001,Spritemap_Geruta_2                                          ;A2C171;
    dw Instruction_Geruta_SetFinishedSwoopStartAnimationFlag             ;A2C175;
    dw Instruction_Common_Sleep                                          ;A2C177;

InstList_Geruta_Main_Swoop_Ascending:
    dw Instruction_Geruta_SetFlamesYOffset_C_duplicate                   ;A2C179;
    dw $0006,Spritemap_Geruta_F                                          ;A2C17B;
    dw $0005,Spritemap_Geruta_10                                         ;A2C17F;
    dw $0008,Spritemap_Geruta_11                                         ;A2C183;
    dw $0006,Spritemap_Geruta_10                                         ;A2C187;
    dw Instruction_Common_GotoY                                          ;A2C18B;
    dw InstList_Geruta_Main_Swoop_Ascending                              ;A2C18D;

InstList_Geruta_Flames_Ascending:
    dw $0006,Spritemap_Geruta_4                                          ;A2C18F;
    dw $0005,Spritemap_Geruta_5                                          ;A2C193;
    dw $0008,Spritemap_Geruta_6                                          ;A2C197;
    dw $0006,Spritemap_Geruta_5                                          ;A2C19B;
    dw Instruction_Common_GotoY                                          ;A2C19F;
    dw InstList_Geruta_Flames_Ascending                                  ;A2C1A1;

InstList_Geruta_Flames_Descending:
    dw $0006,Spritemap_Geruta_12                                         ;A2C1A3;
    dw $0005,Spritemap_Geruta_13                                         ;A2C1A7;
    dw $0008,Spritemap_Geruta_14                                         ;A2C1AB;
    dw $0006,Spritemap_Geruta_13                                         ;A2C1AF;
    dw Instruction_Common_GotoY                                          ;A2C1B3;
    dw InstList_Geruta_Flames_Descending                                 ;A2C1B5;

UNSUED_GerutaConstants_A2C1B7:
    dw $0000,$000E,$000C,$000E,$0010                                     ;A2C1B7;

GerutaConstants_swoopYSpeeds:
    dw $0700,$05C0                                                       ;A2C1C1;

GerutaConstants_swoopXSpeed:
    dw $0100                                                             ;A2C1C5;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_GerutaConstants_maybeLeftoverSwoopXSpeed_A2C1C7:
    dw $0100                                                             ;A2C1C7;
endif ; !FEATURE_KEEP_UNREFERENCED

Instruction_Geruta_SetFinishedSwoopStartAnimationFlag:
    LDX.W $0E54                                                          ;A2C1C9;
    LDA.W #$0001                                                         ;A2C1CC;
    STA.L $7E7802,X                                                      ;A2C1CF;
    RTL                                                                  ;A2C1D3;


Instruction_Geruta_SetFlamesYOffset_8:
    LDX.W $0E54                                                          ;A2C1D4;
    LDA.W #$0008                                                         ;A2C1D7;
    STA.L $7E7804,X                                                      ;A2C1DA;
    RTL                                                                  ;A2C1DE;


Instruction_Geruta_SetFlamesYOffset_8_duplicate:
    LDX.W $0E54                                                          ;A2C1DF;
    LDA.W #$0008                                                         ;A2C1E2;
    STA.L $7E7804,X                                                      ;A2C1E5;
    RTL                                                                  ;A2C1E9;


Instruction_Geruta_SetFlamesYOffset_C:
    LDX.W $0E54                                                          ;A2C1EA;
    LDA.W #$000C                                                         ;A2C1ED;
    STA.L $7E7804,X                                                      ;A2C1F0;
    RTL                                                                  ;A2C1F4;


Instruction_Geruta_SetFlamesYOffset_negativeC:
    LDX.W $0E54                                                          ;A2C1F5;
    LDA.W #$FFF4                                                         ;A2C1F8;
    STA.L $7E7804,X                                                      ;A2C1FB;
    RTL                                                                  ;A2C1FF;


Instruction_Geruta_SetFlamesYOffset_4:
    LDX.W $0E54                                                          ;A2C200;
    LDA.W #$0004                                                         ;A2C203;
    STA.L $7E7804,X                                                      ;A2C206;
    RTL                                                                  ;A2C20A;


Instruction_Geruta_SetFlamesYOffset_0:
    LDX.W $0E54                                                          ;A2C20B;
    LDA.W #$0000                                                         ;A2C20E;
    STA.L $7E7804,X                                                      ;A2C211;
    RTL                                                                  ;A2C215;


Instruction_Geruta_SetFlamesYOffset_negative4:
    LDX.W $0E54                                                          ;A2C216;
    LDA.W #$FFFC                                                         ;A2C219;
    STA.L $7E7804,X                                                      ;A2C21C;
    RTL                                                                  ;A2C220;


Instruction_Geruta_SetFlamesYOffset_negativeC_duplicate:
    LDX.W $0E54                                                          ;A2C221;
    LDA.W #$FFF4                                                         ;A2C224;
    STA.L $7E7804,X                                                      ;A2C227;
    RTL                                                                  ;A2C22B;


Instruction_Geruta_SetFlamesYOffset_negative10:
    LDX.W $0E54                                                          ;A2C22C;
    LDA.W #$FFF0                                                         ;A2C22F;
    STA.L $7E7804,X                                                      ;A2C232;
    RTL                                                                  ;A2C236;


Instruction_Geruta_SetFlamesYOffset_C_duplicate:
    LDX.W $0E54                                                          ;A2C237;
    LDA.W #$000C                                                         ;A2C23A;
    STA.L $7E7804,X                                                      ;A2C23D;
    RTL                                                                  ;A2C241;


InitAI_Geruta:
    LDX.W $0E54                                                          ;A2C242;
    LDA.W #$0000                                                         ;A2C245;
    STA.L $7E7802,X                                                      ;A2C248;
    STA.L $7E7804,X                                                      ;A2C24C;
    LDA.W $0FB4,X                                                        ;A2C250;
    BMI .flames                                                          ;A2C253;
    LDA.W #InstList_Geruta_Main_Idle                                     ;A2C255;
    STA.L $7E7800,X                                                      ;A2C258;
    STA.W $0F92,X                                                        ;A2C25C;
    LDA.W #Function_Geruta_Idle                                          ;A2C25F;
    STA.W $0FB2,X                                                        ;A2C262;
    RTL                                                                  ;A2C265;


.flames:
    LDA.W #InstList_Geruta_Flames_Ascending                              ;A2C266;
    STA.L $7E7800,X                                                      ;A2C269;
    STA.W $0F92,X                                                        ;A2C26D;
    LDA.W #Function_Geruta_Flames                                        ;A2C270;
    STA.W $0FB2,X                                                        ;A2C273;
    RTL                                                                  ;A2C276;


MainAI_Geruta:
    JSL.L GenerateRandomNumber                                           ;A2C277;
    LDX.W $0E54                                                          ;A2C27B;
    JMP.W ($0FB2,X)                                                      ;A2C27E;


Function_Geruta_Flames:
    LDA.W $0F4C,X                                                        ;A2C281;
    BNE .notDead                                                         ;A2C284;
    LDA.W $0F86,X                                                        ;A2C286;
    ORA.W #$0200                                                         ;A2C289;
    STA.W $0F86,X                                                        ;A2C28C;
    RTL                                                                  ;A2C28F;


.notDead:
    LDA.W $0F5E,X                                                        ;A2C290;
    STA.W $0F9E,X                                                        ;A2C293;
    BEQ .notFrozen                                                       ;A2C296;
    BRA .frozen                                                          ;A2C298;

    RTL                                                                  ;A2C29A; >_<


.notFrozen:
    LDA.W $0F86,X                                                        ;A2C29B;
    AND.W #$FEFF                                                         ;A2C29E;
    STA.W $0F86,X                                                        ;A2C2A1;
    LDA.L $7E77C0,X                                                      ;A2C2A4;
    CMP.W #InstList_Geruta_Main_Idle                                     ;A2C2A8;
    BNE .swooping                                                        ;A2C2AB;

.frozen:
    LDA.W $0F86,X                                                        ;A2C2AD;
    ORA.W #$0100                                                         ;A2C2B0;
    STA.W $0F86,X                                                        ;A2C2B3;
    RTL                                                                  ;A2C2B6;


.swooping:
    LDA.W #InstList_Geruta_Flames_Ascending                              ;A2C2B7;
    STA.B $12                                                            ;A2C2BA;
    LDA.L $7E77C4,X                                                      ;A2C2BC;
    BPL +                                                                ;A2C2C0;
    LDA.W #InstList_Geruta_Flames_Descending                             ;A2C2C2;
    STA.B $12                                                            ;A2C2C5;

  + LDA.B $12                                                            ;A2C2C7;
    JSR.W SetGerutaInstList                                              ;A2C2C9;
    LDA.W $0F86,X                                                        ;A2C2CC;
    AND.W #$FEFF                                                         ;A2C2CF;
    STA.W $0F86,X                                                        ;A2C2D2;
    LDA.W $0F3A,X                                                        ;A2C2D5;
    STA.W $0F7A,X                                                        ;A2C2D8;
    LDA.W $0F3E,X                                                        ;A2C2DB;
    CLC                                                                  ;A2C2DE;
    ADC.L $7E77C4,X                                                      ;A2C2DF;
    STA.W $0F7E,X                                                        ;A2C2E3;
    RTL                                                                  ;A2C2E6;


Function_Geruta_Idle:
    LDA.W $05E5                                                          ;A2C2E7;
    AND.W #$0101                                                         ;A2C2EA;
    BEQ +                                                                ;A2C2ED;
    LDA.W #$00C0                                                         ;A2C2EF;
    JSL.L CheckIfXDistanceBetweenEnemyAndSamusIsAtLeastA                 ;A2C2F2;
    BCC .swoop                                                           ;A2C2F6;

  + LDA.L $7E7802,X                                                      ;A2C2F8;
    BEQ .return                                                          ;A2C2FC;
    LDA.W #$0000                                                         ;A2C2FE;
    STA.L $7E7802,X                                                      ;A2C301;
    LDA.W #InstList_Geruta_Main_Idle                                     ;A2C305;
    JSR.W SetGerutaInstList                                              ;A2C308;

.return:
    RTL                                                                  ;A2C30B;


.swoop:
    LDA.W $05E5                                                          ;A2C30C;
    LSR A                                                                ;A2C30F;
    AND.W #$0002                                                         ;A2C310;
    TAY                                                                  ;A2C313;
    LDA.W GerutaConstants_swoopYSpeeds,Y                                 ;A2C314;
    STA.W $0FA8,X                                                        ;A2C317;
    LDA.W GerutaConstants_swoopXSpeed                                    ;A2C31A;
    STA.W $0FAA,X                                                        ;A2C31D;
    LDA.W $0AF6                                                          ;A2C320;
    CMP.W $0F7A,X                                                        ;A2C323;
    BPL .SamusToTheLeft                                                  ;A2C326;
    LDA.W $0FAA,X                                                        ;A2C328;
    EOR.W #$FFFF                                                         ;A2C32B;
    INC A                                                                ;A2C32E;
    STA.W $0FAA,X                                                        ;A2C32F;

.SamusToTheLeft:
    LDA.W #InstList_Geruta_Main_Swoop_StartDescending                    ;A2C332;
    JSR.W SetGerutaInstList                                              ;A2C335;
    LDA.W #Function_Geruta_StartSwoop                                    ;A2C338;
    STA.W $0FB2,X                                                        ;A2C33B;
    RTL                                                                  ;A2C33E;


Function_Geruta_StartSwoop:
    LDA.L $7E7802,X                                                      ;A2C33F;
    BNE .finishedStartAnimation                                          ;A2C343;
    RTL                                                                  ;A2C345;


.finishedStartAnimation:
    LDA.W #$0000                                                         ;A2C346;
    STA.L $7E7802,X                                                      ;A2C349;
    LDA.W #InstList_Geruta_Main_Swoop_Descending                         ;A2C34D;
    JSR.W SetGerutaInstList                                              ;A2C350;
    LDA.W #Function_Geruta_Swoop_Descending                              ;A2C353;
    STA.W $0FB2,X                                                        ;A2C356;
    LDA.W #$0065                                                         ;A2C359;
    JSL.L QueueSound_Lib2_Max6                                           ;A2C35C;
    RTL                                                                  ;A2C360;


Function_Geruta_Swoop_Descending:
    STZ.B $12                                                            ;A2C361;
    STZ.B $14                                                            ;A2C363;
    LDA.W $0FAA,X                                                        ;A2C365;
    BPL +                                                                ;A2C368;
    DEC.B $14                                                            ;A2C36A;

  + STA.B $13                                                            ;A2C36C;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A2C36E;
    BCC .notCollidedWithWall                                             ;A2C372;
    LDA.W $0FAA,X                                                        ;A2C374;
    EOR.W #$FFFF                                                         ;A2C377;
    INC A                                                                ;A2C37A;
    STA.W $0FAA,X                                                        ;A2C37B;

.notCollidedWithWall:
    STZ.B $12                                                            ;A2C37E;
    STZ.B $14                                                            ;A2C380;
    LDA.W $0FA8,X                                                        ;A2C382;
    BPL +                                                                ;A2C385;
    DEC.B $14                                                            ;A2C387;

  + STA.B $13                                                            ;A2C389;
    JSL.L MoveEnemyDownBy_14_12                                          ;A2C38B;
    BCS .collidedWithBlock                                               ;A2C38F;
    LDA.W $0FA8,X                                                        ;A2C391;
    SEC                                                                  ;A2C394;
    SBC.W #$0030                                                         ;A2C395;
    STA.W $0FA8,X                                                        ;A2C398;
    BMI .collidedWithBlock                                               ;A2C39B;
    RTL                                                                  ;A2C39D;


.collidedWithBlock:
    LDA.W #$FFFF                                                         ;A2C39E;
    STA.W $0FA8,X                                                        ;A2C3A1;
    LDA.W #InstList_Geruta_Main_Swoop_StartAscending                     ;A2C3A4;
    JSR.W SetGerutaInstList                                              ;A2C3A7;
    LDA.W #Function_Geruta_Swoop_Ascending                               ;A2C3AA;
    STA.W $0FB2,X                                                        ;A2C3AD;
    RTL                                                                  ;A2C3B0;


Function_Geruta_Swoop_Ascending:
    STZ.B $12                                                            ;A2C3B1;
    STZ.B $14                                                            ;A2C3B3;
    LDA.W $0FAA,X                                                        ;A2C3B5;
    BPL +                                                                ;A2C3B8;
    DEC.B $14                                                            ;A2C3BA;

  + STA.B $13                                                            ;A2C3BC;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A2C3BE;
    BCC .notCollidedWithWall                                             ;A2C3C2;
    LDA.W $0FAA,X                                                        ;A2C3C4;
    EOR.W #$FFFF                                                         ;A2C3C7;
    INC A                                                                ;A2C3CA;
    STA.W $0FAA,X                                                        ;A2C3CB;

.notCollidedWithWall:
    STZ.B $12                                                            ;A2C3CE;
    STZ.B $14                                                            ;A2C3D0;
    LDA.W $0FA8,X                                                        ;A2C3D2;
    BPL +                                                                ;A2C3D5;
    DEC.B $14                                                            ;A2C3D7;

  + STA.B $13                                                            ;A2C3D9;
    JSL.L MoveEnemyDownBy_14_12                                          ;A2C3DB;
    BCS .collidedVertically                                              ;A2C3DF;
    LDA.W $0FA8,X                                                        ;A2C3E1;
    SEC                                                                  ;A2C3E4;
    SBC.W #$0030                                                         ;A2C3E5;
    STA.W $0FA8,X                                                        ;A2C3E8;
    LDA.L $7E7802,X                                                      ;A2C3EB;
    BEQ .return                                                          ;A2C3EF;
    LDA.W #$0000                                                         ;A2C3F1;
    STA.L $7E7802,X                                                      ;A2C3F4;
    LDA.W #InstList_Geruta_Main_Swoop_Ascending                          ;A2C3F8;
    JSR.W SetGerutaInstList                                              ;A2C3FB;

.return:
    RTL                                                                  ;A2C3FE;


.collidedVertically:
    LDA.W #Function_Geruta_FinishSwoop                                   ;A2C3FF;
    STA.W $0FB2,X                                                        ;A2C402;
    RTL                                                                  ;A2C405;


Function_Geruta_FinishSwoop:
    LDA.W #Function_Geruta_Idle                                          ;A2C406;
    STA.W $0FB2,X                                                        ;A2C409;
    RTL                                                                  ;A2C40C;


SetGerutaInstList:
    LDX.W $0E54                                                          ;A2C40D;
    CMP.L $7E7800,X                                                      ;A2C410;
    BEQ .return                                                          ;A2C414;
    STA.L $7E7800,X                                                      ;A2C416;
    STA.W $0F92,X                                                        ;A2C41A;
    LDA.W #$0001                                                         ;A2C41D;
    STA.W $0F94,X                                                        ;A2C420;
    STZ.W $0F90,X                                                        ;A2C423;

.return:
    RTS                                                                  ;A2C426;


Spritemap_Geruta_0:
    dw $0005                                                             ;A2C427;
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1FE, $02, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F1, $02, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $06, $F5, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1E9, $F5, 0, 0, 2, 0, $106)

Spritemap_Geruta_1:
    dw $0005                                                             ;A2C442;
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1FE, $04, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F1, $04, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $06, $F6, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1E9, $F6, 0, 0, 2, 0, $108)

Spritemap_Geruta_2:
    dw $0005                                                             ;A2C45D;
    %spritemapEntry(1, $06, $F7, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1E9, $F7, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1FE, $06, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F1, $06, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $104)

Spritemap_Geruta_3:
    dw $0005                                                             ;A2C478;
    %spritemapEntry(1, $1FE, $04, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F1, $04, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $06, $F6, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1E9, $F6, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $102)

Spritemap_Geruta_4:
    dw $0002                                                             ;A2C493;
    %spritemapEntry(0, $02, $FC, 0, 0, 2, 0, $10E)
    %spritemapEntry(0, $1F6, $FC, 0, 0, 2, 0, $10E)

Spritemap_Geruta_5:
    dw $0002                                                             ;A2C49F;
    %spritemapEntry(0, $02, $FC, 0, 0, 2, 0, $10F)
    %spritemapEntry(0, $1F6, $FC, 0, 0, 2, 0, $10F)

Spritemap_Geruta_6:
    dw $0002                                                             ;A2C4AB;
    %spritemapEntry(0, $02, $FC, 0, 0, 2, 0, $11E)
    %spritemapEntry(0, $1F6, $FC, 0, 0, 2, 0, $11E)

Spritemap_Geruta_7:
    dw $0005                                                             ;A2C4B7;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1FE, $EA, 1, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F1, $EA, 1, 0, 2, 0, $10C)
    %spritemapEntry(1, $06, $F8, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1E9, $F8, 0, 0, 2, 0, $10A)

Spritemap_Geruta_8:
    dw $0005                                                             ;A2C4D2;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1FE, $EA, 1, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F1, $EA, 1, 0, 2, 0, $10C)
    %spritemapEntry(1, $06, $F8, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1E9, $F8, 0, 0, 2, 0, $10A)

Spritemap_Geruta_9:
    dw $0005                                                             ;A2C4ED;
    %spritemapEntry(1, $1F8, $F8, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1FE, $EA, 1, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F1, $EA, 1, 0, 2, 0, $10C)
    %spritemapEntry(1, $06, $F8, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1E9, $F8, 0, 0, 2, 0, $10A)

Spritemap_Geruta_A:
    dw $0005                                                             ;A2C508;
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1FE, $FF, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F1, $FF, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $06, $F6, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1E9, $F6, 0, 0, 2, 0, $106)

Spritemap_Geruta_B:
    dw $0003                                                             ;A2C523;
    %spritemapEntry(1, $05, $F7, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1EA, $F7, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $100)

Spritemap_Geruta_C:
    dw $0005                                                             ;A2C534;
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $05, $F8, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1FE, $ED, 1, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F1, $ED, 1, 0, 2, 0, $10C)
    %spritemapEntry(1, $1EA, $F8, 0, 0, 2, 0, $10A)

Spritemap_Geruta_D:
    dw $0005                                                             ;A2C54F;
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1FE, $EA, 1, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F1, $EA, 1, 0, 2, 0, $10C)
    %spritemapEntry(1, $05, $F8, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1EA, $F8, 0, 0, 2, 0, $10A)

Spritemap_Geruta_E:
    dw $0005                                                             ;A2C56A;
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1FE, $E8, 1, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F1, $E8, 1, 0, 2, 0, $10C)
    %spritemapEntry(1, $05, $F8, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1EA, $F8, 0, 0, 2, 0, $10A)

Spritemap_Geruta_F:
    dw $0005                                                             ;A2C585;
    %spritemapEntry(1, $1FE, $06, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F1, $06, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $06, $F7, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1E9, $F7, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $104)

Spritemap_Geruta_10:
    dw $0005                                                             ;A2C5A0;
    %spritemapEntry(1, $1FE, $06, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F1, $06, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $06, $F7, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1E9, $F7, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $104)

Spritemap_Geruta_11:
    dw $0005                                                             ;A2C5BB;
    %spritemapEntry(1, $1FE, $06, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F1, $06, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $06, $F7, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1E9, $F7, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $104)

Spritemap_Geruta_12:
    dw $0002                                                             ;A2C5D6;
    %spritemapEntry(0, $02, $FC, 1, 0, 2, 0, $10E)
    %spritemapEntry(0, $1F6, $FC, 1, 0, 2, 0, $10E)

Spritemap_Geruta_13:
    dw $0002                                                             ;A2C5E2;
    %spritemapEntry(0, $02, $FC, 1, 0, 2, 0, $10F)
    %spritemapEntry(0, $1F6, $FC, 1, 0, 2, 0, $10F)

Spritemap_Geruta_14:
    dw $0002                                                             ;A2C5EE;
    %spritemapEntry(0, $02, $FC, 1, 0, 2, 0, $11E)
    %spritemapEntry(0, $1F6, $FC, 1, 0, 2, 0, $11E)

Palette_Holtz:
    dw $3800,$72FA,$55B0,$2845,$1801,$6210,$496B,$38C6                   ;A2C5FA;
    dw $2C63,$7D7F,$54D5,$384D,$2007,$021F,$1014,$080A                   ;A2C60A;

InstList_Holtz_Idle_0:
    dw Instruction_Holtz_HideFlames                                      ;A2C61A;

InstList_Holtz_Idle_1:
    dw $000B,Spritemap_Holtz_0                                           ;A2C61C;
    dw $000B,Spritemap_Holtz_1                                           ;A2C620;
    dw $000B,Spritemap_Holtz_2                                           ;A2C624;
    dw $000B,Spritemap_Holtz_1                                           ;A2C628;
    dw Instruction_Common_GotoY                                          ;A2C62C;
    dw InstList_Holtz_Idle_1                                             ;A2C62E;

InstList_Holtz_PrepareToSwoop:
    dw Instruction_Holtz_HideFlames                                      ;A2C630;
    dw $0003,Spritemap_Holtz_2                                           ;A2C632;
    dw $0003,Spritemap_Holtz_3                                           ;A2C636;
    dw $0003,Spritemap_Holtz_4                                           ;A2C63A;
    dw $0003,Spritemap_Holtz_5                                           ;A2C63E;
    dw $0002,Spritemap_Holtz_6                                           ;A2C642;
    dw $0001,Spritemap_Holtz_7                                           ;A2C646;
    dw $0002,Spritemap_Holtz_8                                           ;A2C64A;
    dw $0003,Spritemap_Holtz_9                                           ;A2C64E;
    dw $0003,Spritemap_Holtz_A                                           ;A2C652;
    dw Instruction_Holtz_SetAnimationFinishedFlag                        ;A2C656;
    dw Instruction_Common_Sleep                                          ;A2C658;

InstList_Holtz_Swoop_Descending:
    dw Instruction_Holtz_HideFlames                                      ;A2C65A;
    dw $0001,Spritemap_Holtz_A                                           ;A2C65C;
    dw Instruction_Common_Sleep                                          ;A2C660;

InstList_Holtz_Swoop_Ascending_Part1:
    dw Instruction_Holtz_HideFlames                                      ;A2C662;
    dw $0003,Spritemap_Holtz_A                                           ;A2C664;
    dw $0003,Spritemap_Holtz_9                                           ;A2C668;
    dw $0003,Spritemap_Holtz_B                                           ;A2C66C;
    dw Instruction_Holtz_SetAnimationFinishedFlag                        ;A2C670;
    dw Instruction_Common_Sleep                                          ;A2C672;

InstList_Holtz_Swoop_Part2_0:
    dw Instruction_Holtz_ShowFlames                                      ;A2C674;

InstList_Holtz_Swoop_Part2_1:
    dw $0002,Spritemap_Holtz_E                                           ;A2C676;
    dw $0002,Spritemap_Holtz_C                                           ;A2C67A;
    dw $0002,Spritemap_Holtz_D                                           ;A2C67E;
    dw Instruction_Common_GotoY                                          ;A2C682;
    dw InstList_Holtz_Swoop_Part2_1                                      ;A2C684;

InstList_Holtz_SwoopCooldown:
    dw Instruction_Holtz_ShowFlames                                      ;A2C686;
    dw $0003,Spritemap_Holtz_B                                           ;A2C688;
    dw $0003,Spritemap_Holtz_9                                           ;A2C68C;
    dw $0002,Spritemap_Holtz_8                                           ;A2C690;
    dw $0001,Spritemap_Holtz_7                                           ;A2C694;
    dw $0002,Spritemap_Holtz_6                                           ;A2C698;
    dw $0003,Spritemap_Holtz_5                                           ;A2C69C;
    dw $0001,Spritemap_Holtz_4                                           ;A2C6A0;
    dw $0001,Spritemap_Holtz_3                                           ;A2C6A4;
    dw $0001,Spritemap_Holtz_2                                           ;A2C6A8;
    dw Instruction_Holtz_SetAnimationFinishedFlag                        ;A2C6AC;
    dw Instruction_Common_Sleep                                          ;A2C6AE;

InstList_Holtz_Flames:
    dw $0006,Spritemap_Holtz_F                                           ;A2C6B0;
    dw $0004,Spritemap_Holtz_10                                          ;A2C6B4;
    dw $0003,Spritemap_Holtz_11                                          ;A2C6B8;
    dw Instruction_Common_GotoY                                          ;A2C6BC;
    dw InstList_Holtz_Flames                                             ;A2C6BE;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_HoltzConstants_A2C6C0:
    dw $0000,$0009,$000A,$000B,$000A                                     ;A2C6C0;
endif ; !FEATURE_KEEP_UNREFERENCED

HoltzConstants_initialYVelocity:
    dw $0700                                                             ;A2C6CA;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_HoltzConstants_A2C6CC:
    dw $0700                                                             ;A2C6CC;
endif ; !FEATURE_KEEP_UNREFERENCED

HoltzConstants_XSpeed:
    dw $0100                                                             ;A2C6CE;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_HoltzConstants_A2C6D0:
    dw $0100                                                             ;A2C6D0;
endif ; !FEATURE_KEEP_UNREFERENCED

Instruction_Holtz_SetAnimationFinishedFlag:
    LDX.W $0E54                                                          ;A2C6D2;
    LDA.W #$0001                                                         ;A2C6D5;
    STA.L $7E7802,X                                                      ;A2C6D8;
    RTL                                                                  ;A2C6DC;


Instruction_Holtz_HideFlames:
    LDX.W $0E54                                                          ;A2C6DD;
    LDA.W #$0000                                                         ;A2C6E0;
    STA.L $7E7804,X                                                      ;A2C6E3;
    RTL                                                                  ;A2C6E7;


Instruction_Holtz_ShowFlames:
    LDX.W $0E54                                                          ;A2C6E8;
    LDA.W #$0001                                                         ;A2C6EB;
    STA.L $7E7804,X                                                      ;A2C6EE;
    RTL                                                                  ;A2C6F2;


InitAI_Holtz:
    LDX.W $0E54                                                          ;A2C6F3;
    LDA.W #$0000                                                         ;A2C6F6;
    STA.L $7E7802,X                                                      ;A2C6F9;
    LDA.W $0FB4,X                                                        ;A2C6FD;
    BPL .idle                                                            ;A2C700;
    LDA.W #Function_Holtz_Flames                                         ;A2C702;
    STA.W $0FB2,X                                                        ;A2C705;
    LDA.W #InstList_Holtz_Flames                                         ;A2C708;
    STA.L $7E7800,X                                                      ;A2C70B;
    STA.W $0F92,X                                                        ;A2C70F;
    RTL                                                                  ;A2C712;


.idle:
    LDA.W #Function_Holtz_Idle                                           ;A2C713;
    STA.W $0FB2,X                                                        ;A2C716;
    LDA.W #InstList_Holtz_Idle_0                                         ;A2C719;
    STA.L $7E7800,X                                                      ;A2C71C;
    STA.W $0F92,X                                                        ;A2C720;
    RTL                                                                  ;A2C723;


MainAI_Holtz:
    JSL.L GenerateRandomNumber                                           ;A2C724;
    LDX.W $0E54                                                          ;A2C728;
    JMP.W ($0FB2,X)                                                      ;A2C72B;


Function_Holtz_Flames:
    LDA.W $0F4C,X                                                        ;A2C72E;
    BNE .notDead                                                         ;A2C731;
    LDA.W $0F86,X                                                        ;A2C733;
    ORA.W #$0200                                                         ;A2C736;
    STA.W $0F86,X                                                        ;A2C739;
    RTL                                                                  ;A2C73C;


.notDead:
    LDA.W $0F5E,X                                                        ;A2C73D;
    STA.W $0F9E,X                                                        ;A2C740;
    BEQ .frozen                                                          ;A2C743;
    BRA .invisible                                                       ;A2C745;


.frozen:
    LDA.L $7E77C4,X                                                      ;A2C747;
    BNE .visible                                                         ;A2C74B;

.invisible:
    LDA.W $0F86,X                                                        ;A2C74D;
    ORA.W #$0100                                                         ;A2C750;
    STA.W $0F86,X                                                        ;A2C753;
    RTL                                                                  ;A2C756;


.visible:
    LDA.W $0F86,X                                                        ;A2C757;
    AND.W #$FEFF                                                         ;A2C75A;
    STA.W $0F86,X                                                        ;A2C75D;
    LDA.W $0F3A,X                                                        ;A2C760;
    STA.W $0F7A,X                                                        ;A2C763;
    LDA.W $0F3E,X                                                        ;A2C766;
    CLC                                                                  ;A2C769;
    ADC.W #$000C                                                         ;A2C76A;
    STA.W $0F7E,X                                                        ;A2C76D;
    RTL                                                                  ;A2C770;


Function_Holtz_Idle:
    LDA.W $05E5                                                          ;A2C771;
    AND.W #$0101                                                         ;A2C774;
    BEQ .quarterChancestayIdle                                           ;A2C777;
    LDA.W #$0070                                                         ;A2C779;
    JSL.L CheckIfXDistanceBetweenEnemyAndSamusIsAtLeastA                 ;A2C77C;
    BCC .triggered                                                       ;A2C780;

.quarterChancestayIdle:
    LDA.W #$0000                                                         ;A2C782;
    STA.L $7E7802,X                                                      ;A2C785;
    LDA.W #InstList_Holtz_Idle_0                                         ;A2C789;
    JSR.W SetHoltzInstList                                               ;A2C78C;
    RTL                                                                  ;A2C78F;


.triggered:
    LDA.W HoltzConstants_initialYVelocity                                ;A2C790;
    STA.W $0FAC,X                                                        ;A2C793;
    LDA.W HoltzConstants_XSpeed                                          ;A2C796;
    STA.W $0FAE,X                                                        ;A2C799;
    LDA.W $0AF6                                                          ;A2C79C;
    CMP.W $0F7A,X                                                        ;A2C79F;
    BPL +                                                                ;A2C7A2;
    LDA.W $0FAE,X                                                        ;A2C7A4;
    EOR.W #$FFFF                                                         ;A2C7A7;
    INC A                                                                ;A2C7AA;
    STA.W $0FAE,X                                                        ;A2C7AB;

  + LDA.W #InstList_Holtz_PrepareToSwoop                                 ;A2C7AE;
    JSR.W SetHoltzInstList                                               ;A2C7B1;
    LDA.W #Function_Holtz_PrepareToSwoop                                 ;A2C7B4;
    STA.W $0FB2,X                                                        ;A2C7B7;
    RTL                                                                  ;A2C7BA;


Function_Holtz_PrepareToSwoop:
    LDA.L $7E7802,X                                                      ;A2C7BB;
    BNE .animationFinished                                               ;A2C7BF;
    RTL                                                                  ;A2C7C1;


.animationFinished:
    LDA.W #$0000                                                         ;A2C7C2;
    STA.L $7E7802,X                                                      ;A2C7C5;
    LDA.W #InstList_Holtz_Swoop_Descending                               ;A2C7C9;
    JSR.W SetHoltzInstList                                               ;A2C7CC;
    LDA.W #Function_Holtz_Swoop_Descending                               ;A2C7CF;
    STA.W $0FB2,X                                                        ;A2C7D2;
    RTL                                                                  ;A2C7D5;


Function_Holtz_Swoop_Descending:
    STZ.B $12                                                            ;A2C7D6;
    STZ.B $14                                                            ;A2C7D8;
    LDA.W $0FAE,X                                                        ;A2C7DA;
    BPL +                                                                ;A2C7DD;
    DEC.B $14                                                            ;A2C7DF;

  + STA.B $13                                                            ;A2C7E1;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A2C7E3;
    BCC .notCollidedWithWall                                             ;A2C7E7;
    LDA.W $0FAE,X                                                        ;A2C7E9;
    EOR.W #$FFFF                                                         ;A2C7EC;
    INC A                                                                ;A2C7EF;
    STA.W $0FAE,X                                                        ;A2C7F0;

.notCollidedWithWall:
    STZ.B $12                                                            ;A2C7F3;
    STZ.B $14                                                            ;A2C7F5;
    LDA.W $0FAC,X                                                        ;A2C7F7;
    BPL +                                                                ;A2C7FA;
    DEC.B $14                                                            ;A2C7FC;

  + STA.B $13                                                            ;A2C7FE;
    JSL.L MoveEnemyDownBy_14_12                                          ;A2C800;
    BCS .notCollidedWithBlock                                            ;A2C804;
    LDA.W $0FAC,X                                                        ;A2C806;
    SEC                                                                  ;A2C809;
    SBC.W #$0030                                                         ;A2C80A;
    STA.W $0FAC,X                                                        ;A2C80D;
    BMI .notCollidedWithBlock                                            ;A2C810;
    RTL                                                                  ;A2C812;


.notCollidedWithBlock:
    LDA.W #$FFFF                                                         ;A2C813;
    STA.W $0FAC,X                                                        ;A2C816;
    LDA.W #InstList_Holtz_Swoop_Ascending_Part1                          ;A2C819;
    JSR.W SetHoltzInstList                                               ;A2C81C;
    LDA.W #Function_Holtz_Swoop_Ascending                                ;A2C81F;
    STA.W $0FB2,X                                                        ;A2C822;
    LDA.W #$0064                                                         ;A2C825;
    JSL.L QueueSound_Lib2_Max6                                           ;A2C828;
    RTL                                                                  ;A2C82C;


Function_Holtz_Swoop_Ascending:
    STZ.B $12                                                            ;A2C82D;
    STZ.B $14                                                            ;A2C82F;
    LDA.W $0FAE,X                                                        ;A2C831;
    BPL +                                                                ;A2C834;
    DEC.B $14                                                            ;A2C836;

  + STA.B $13                                                            ;A2C838;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A2C83A;
    BCC .notCollidedWithWall                                             ;A2C83E;
    LDA.W $0FAE,X                                                        ;A2C840;
    EOR.W #$FFFF                                                         ;A2C843;
    INC A                                                                ;A2C846;
    STA.W $0FAE,X                                                        ;A2C847;

.notCollidedWithWall:
    STZ.B $12                                                            ;A2C84A;
    STZ.B $14                                                            ;A2C84C;
    LDA.W $0FAC,X                                                        ;A2C84E;
    BPL +                                                                ;A2C851;
    DEC.B $14                                                            ;A2C853;

  + STA.B $13                                                            ;A2C855;
    JSL.L MoveEnemyDownBy_14_12                                          ;A2C857;
    BCS .collidedVertically                                              ;A2C85B;
    LDA.W $0FAC,X                                                        ;A2C85D;
    SEC                                                                  ;A2C860;
    SBC.W #$0030                                                         ;A2C861;
    STA.W $0FAC,X                                                        ;A2C864;
    LDA.L $7E7802,X                                                      ;A2C867;
    BEQ .return                                                          ;A2C86B;
    LDA.W #$0000                                                         ;A2C86D;
    STA.L $7E7802,X                                                      ;A2C870;
    LDA.W #InstList_Holtz_Swoop_Part2_0                                  ;A2C874;
    JSR.W SetHoltzInstList                                               ;A2C877;

.return:
    RTL                                                                  ;A2C87A;


.collidedVertically:
    LDA.W #InstList_Holtz_SwoopCooldown                                  ;A2C87B;
    JSR.W SetHoltzInstList                                               ;A2C87E;
    LDA.W #Function_Holtz_SwoopCooldown                                  ;A2C881;
    STA.W $0FB2,X                                                        ;A2C884;
    RTL                                                                  ;A2C887;


Function_Holtz_SwoopCooldown:
    LDA.L $7E7802,X                                                      ;A2C888;
    BNE .animationFinished                                               ;A2C88C;
    RTL                                                                  ;A2C88E;


.animationFinished:
    LDA.W #$0000                                                         ;A2C88F;
    STA.L $7E7802,X                                                      ;A2C892;
    LDA.W #InstList_Holtz_SwoopCooldown                                  ;A2C896;
    JSR.W SetHoltzInstList                                               ;A2C899;
    LDA.W #Function_Holtz_Idle                                           ;A2C89C;
    STA.W $0FB2,X                                                        ;A2C89F;
    RTL                                                                  ;A2C8A2;


SetHoltzInstList:
    LDX.W $0E54                                                          ;A2C8A3;
    CMP.L $7E7800,X                                                      ;A2C8A6;
    BEQ .return                                                          ;A2C8AA;
    STA.L $7E7800,X                                                      ;A2C8AC;
    STA.W $0F92,X                                                        ;A2C8B0;
    LDA.W #$0001                                                         ;A2C8B3;
    STA.W $0F94,X                                                        ;A2C8B6;
    STZ.W $0F90,X                                                        ;A2C8B9;

.return:
    RTS                                                                  ;A2C8BC;


Spritemap_Holtz_0:
    dw $0004                                                             ;A2C8BD;
    %spritemapEntry(1, $1F8, $04, 0, 0, 2, 0, $126)
    %spritemapEntry(1, $08, $F4, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1F8, $F4, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1E8, $F4, 0, 0, 2, 0, $100)

Spritemap_Holtz_1:
    dw $0004                                                             ;A2C8D3;
    %spritemapEntry(1, $08, $F5, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1E8, $F5, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1F8, $F5, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $05, 0, 0, 2, 0, $128)

Spritemap_Holtz_2:
    dw $0004                                                             ;A2C8E9;
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $08, $F6, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1E8, $F6, 0, 0, 2, 0, $100)

Spritemap_Holtz_3:
    dw $0004                                                             ;A2C8FF;
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $08, $F6, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1E8, $F6, 0, 0, 2, 0, $100)

Spritemap_Holtz_4:
    dw $0004                                                             ;A2C915;
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $08, $F6, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1E8, $F6, 0, 0, 2, 0, $100)

Spritemap_Holtz_5:
    dw $0004                                                             ;A2C92B;
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $08, $F6, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1E8, $F6, 0, 0, 2, 0, $100)

Spritemap_Holtz_6:
    dw $0004                                                             ;A2C941;
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $08, $F6, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $1E8, $F6, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $120)

Spritemap_Holtz_7:
    dw $0004                                                             ;A2C957;
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $08, $F6, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $1E8, $F6, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $120)

Spritemap_Holtz_8:
    dw $0004                                                             ;A2C96D;
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $08, $F6, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1E8, $F6, 0, 0, 2, 0, $106)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $120)

Spritemap_Holtz_9:
    dw $0004                                                             ;A2C983;
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $08, $F6, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1E8, $F6, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $120)

Spritemap_Holtz_A:
    dw $0004                                                             ;A2C999;
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $08, $F6, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1E8, $F6, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $124)

Spritemap_Holtz_B:
    dw $0004                                                             ;A2C9AF;
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $08, $F6, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1E8, $F6, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $122)

Spritemap_Holtz_C:
    dw $0004                                                             ;A2C9C5;
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $08, $F6, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1E8, $F6, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $122)

Spritemap_Holtz_D:
    dw $0004                                                             ;A2C9DB;
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $08, $F6, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1E8, $F6, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $122)

Spritemap_Holtz_E:
    dw $0004                                                             ;A2C9F1;
    %spritemapEntry(1, $1F8, $06, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $08, $F6, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1E8, $F6, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $F6, 0, 0, 2, 0, $122)

Spritemap_Holtz_F:
    dw $0002                                                             ;A2CA07;
    %spritemapEntry(0, $04, $FC, 0, 1, 2, 0, $12A)
    %spritemapEntry(0, $1F4, $FC, 0, 0, 2, 0, $12A)

Spritemap_Holtz_10:
    dw $0002                                                             ;A2CA13;
    %spritemapEntry(0, $04, $FC, 0, 1, 2, 0, $12B)
    %spritemapEntry(0, $1F4, $FC, 0, 0, 2, 0, $12B)

Spritemap_Holtz_11:
    dw $0002                                                             ;A2CA1F;
    %spritemapEntry(0, $04, $FC, 0, 1, 2, 0, $12C)
    %spritemapEntry(0, $1F4, $FC, 0, 0, 2, 0, $12C)


Palette_Oum:
    dw $3800,$3F57,$2E4D,$00E2,$0060,$3AB0,$220B,$1166                   ;A2CA2B;
    dw $0924,$21B9,$1533,$0CCE,$0448,$03E0,$02A0,$0140                   ;A2CA3B;

InstList_Oum_FacingLeft_Idle:
    dw $0001,ExtendedSpritemap_Oum_FacingLeft_0                          ;A2CA4B;
    dw Instruction_Common_Sleep                                          ;A2CA4F;

InstList_Oum_FacingLeft_Attacking:
    dw $0010,ExtendedSpritemap_Oum_FacingLeft_0                          ;A2CA51;
    dw $0010,ExtendedSpritemap_Oum_FacingLeft_1                          ;A2CA55;
    dw Instruction_Oum_PlaySplashedOutOfWaterSFX                         ;A2CA59;
    dw $0010,ExtendedSpritemap_Oum_FacingLeft_2                          ;A2CA5B;
    dw $0002,ExtendedSpritemap_Oum_FacingLeft_3                          ;A2CA5F;
    dw $0003,ExtendedSpritemap_Oum_FacingLeft_4                          ;A2CA63;
    dw $0004,ExtendedSpritemap_Oum_FacingLeft_5                          ;A2CA67;
    dw $0002,ExtendedSpritemap_Oum_FacingLeft_6                          ;A2CA6B;
    dw $0003,ExtendedSpritemap_Oum_FacingLeft_7                          ;A2CA6F;
    dw $0001,ExtendedSpritemap_Oum_FacingLeft_6                          ;A2CA73;
    dw $0003,ExtendedSpritemap_Oum_FacingLeft_5                          ;A2CA77;
    dw $0002,ExtendedSpritemap_Oum_FacingLeft_4                          ;A2CA7B;
    dw $0001,ExtendedSpritemap_Oum_FacingLeft_3                          ;A2CA7F;
    dw $0012,ExtendedSpritemap_Oum_FacingLeft_2                          ;A2CA83;
    dw Instruction_Oum_SetAnimationFinishedFlag                          ;A2CA87;
    dw Instruction_CommonA2_Sleep                                        ;A2CA89;

InstList_Oum_FacingLeft_RollingForwards:
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_2                          ;A2CA8B;
    dw Instruction_Oum_SetAttackAllowingRotationFlag                     ;A2CA8F;
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_8                          ;A2CA91;
    dw Instruction_Oum_ResetAttackAllowingRotationFlag                   ;A2CA95;
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_9                          ;A2CA97;
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_A                          ;A2CA9B;
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_B                          ;A2CA9F;
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_C                          ;A2CAA3;
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_D                          ;A2CAA7;
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_E                          ;A2CAAB;
    dw Instruction_Common_GotoY                                          ;A2CAAF;
    dw InstList_Oum_FacingLeft_RollingForwards                           ;A2CAB1;

InstList_Oum_FacingLeft_RollingBackwards:
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_E                          ;A2CAB3;
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_D                          ;A2CAB7;
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_C                          ;A2CABB;
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_B                          ;A2CABF;
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_A                          ;A2CAC3;
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_9                          ;A2CAC7;
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_8                          ;A2CACB;
    dw Instruction_Oum_SetAttackAllowingRotationFlag                     ;A2CACF;
    dw $0007,ExtendedSpritemap_Oum_FacingLeft_2                          ;A2CAD1;
    dw Instruction_Oum_ResetAttackAllowingRotationFlag                   ;A2CAD5;
    dw Instruction_Common_GotoY                                          ;A2CAD7;
    dw InstList_Oum_FacingLeft_RollingBackwards                          ;A2CAD9;

InstList_Oum_FacingRight_Idle:
    dw $0001,ExtendedSpritemap_Oum_FacingRight_0                         ;A2CADB;
    dw Instruction_Common_Sleep                                          ;A2CADF;

InstList_Oum_FacingRight_Attacking:
    dw $0010,ExtendedSpritemap_Oum_FacingRight_0                         ;A2CAE1;
    dw $0010,ExtendedSpritemap_Oum_FacingRight_1                         ;A2CAE5;
    dw $0010,ExtendedSpritemap_Oum_FacingRight_2                         ;A2CAE9;
    dw Instruction_Oum_PlaySplashedOutOfWaterSFX                         ;A2CAED;
    dw $0002,ExtendedSpritemap_Oum_FacingRight_3                         ;A2CAEF;
    dw $0003,ExtendedSpritemap_Oum_FacingRight_4                         ;A2CAF3;
    dw $0004,ExtendedSpritemap_Oum_FacingRight_5                         ;A2CAF7;
    dw $0002,ExtendedSpritemap_Oum_FacingRight_6                         ;A2CAFB;
    dw $0003,ExtendedSpritemap_Oum_FacingRight_7                         ;A2CAFF;
    dw $0001,ExtendedSpritemap_Oum_FacingRight_6                         ;A2CB03;
    dw $0003,ExtendedSpritemap_Oum_FacingRight_5                         ;A2CB07;
    dw $0002,ExtendedSpritemap_Oum_FacingRight_4                         ;A2CB0B;
    dw $0001,ExtendedSpritemap_Oum_FacingRight_3                         ;A2CB0F;
    dw $0012,ExtendedSpritemap_Oum_FacingRight_2                         ;A2CB13;
    dw Instruction_Oum_SetAnimationFinishedFlag                          ;A2CB17;
    dw Instruction_CommonA2_Sleep                                        ;A2CB19;

InstList_Oum_FacingRight_RollingForwards:
    dw $0007,ExtendedSpritemap_Oum_FacingRight_2                         ;A2CB1B;
    dw Instruction_Oum_SetAttackAllowingRotationFlag                     ;A2CB1F;
    dw $0007,ExtendedSpritemap_Oum_FacingRight_8                         ;A2CB21;
    dw Instruction_Oum_ResetAttackAllowingRotationFlag                   ;A2CB25;
    dw $0007,ExtendedSpritemap_Oum_FacingRight_9                         ;A2CB27;
    dw $0007,ExtendedSpritemap_Oum_FacingRight_A                         ;A2CB2B;
    dw $0007,ExtendedSpritemap_Oum_FacingRight_B                         ;A2CB2F;
    dw $0007,ExtendedSpritemap_Oum_FacingRight_C                         ;A2CB33;
    dw $0007,ExtendedSpritemap_Oum_FacingRight_D                         ;A2CB37;
    dw $0007,ExtendedSpritemap_Oum_FacingRight_E                         ;A2CB3B;
    dw Instruction_Common_GotoY                                          ;A2CB3F;
    dw InstList_Oum_FacingRight_RollingForwards                          ;A2CB41;

InstList_Oum_FacingRight_RollingBackwards:
    dw $0007,ExtendedSpritemap_Oum_FacingRight_E                         ;A2CB43;
    dw $0007,ExtendedSpritemap_Oum_FacingRight_D                         ;A2CB47;
    dw $0007,ExtendedSpritemap_Oum_FacingRight_C                         ;A2CB4B;
    dw $0007,ExtendedSpritemap_Oum_FacingRight_B                         ;A2CB4F;
    dw $0007,ExtendedSpritemap_Oum_FacingRight_A                         ;A2CB53;
    dw $0007,ExtendedSpritemap_Oum_FacingRight_9                         ;A2CB57;
    dw $0007,ExtendedSpritemap_Oum_FacingRight_8                         ;A2CB5B;
    dw Instruction_Oum_SetAttackAllowingRotationFlag                     ;A2CB5F;
    dw $0007,ExtendedSpritemap_Oum_FacingRight_2                         ;A2CB61;
    dw Instruction_Oum_ResetAttackAllowingRotationFlag                   ;A2CB65;
    dw Instruction_Common_GotoY                                          ;A2CB67;
    dw InstList_Oum_FacingRight_RollingBackwards                         ;A2CB69;

Instruction_Oum_PlaySplashedOutOfWaterSFX:
    PHX                                                                  ;A2CB6B;
    PHY                                                                  ;A2CB6C;
    LDA.W #$000E                                                         ;A2CB6D;
    JSL.L QueueSound_Lib2_Max6                                           ;A2CB70;
    PLY                                                                  ;A2CB74;
    PLX                                                                  ;A2CB75;
    RTL                                                                  ;A2CB76;


InstListPointers_Oum:
    dw InstList_Oum_FacingRight_Idle                                     ;A2CB77;
    dw InstList_Oum_FacingLeft_Idle                                      ;A2CB79;
    dw InstList_Oum_FacingRight_RollingForwards                          ;A2CB7B;
    dw InstList_Oum_FacingLeft_RollingForwards                           ;A2CB7D;
    dw InstList_Oum_FacingRight_Attacking                                ;A2CB7F;
    dw InstList_Oum_FacingLeft_Attacking                                 ;A2CB81;
    dw InstList_Oum_FacingRight_RollingBackwards                         ;A2CB83;
    dw InstList_Oum_FacingLeft_RollingBackwards                          ;A2CB85;

ExtendedSpritemap_Oum_FacingLeft_0:
    dw $0001                                                             ;A2CB87;
    dw $0000,$0000                                                       ;A2CB89;
    dw Spritemap_Oum_FacingLeft_0                                        ;A2CB8D;
    dw Hitbox_Oum_FacingLeft_0                                           ;A2CB8F;

ExtendedSpritemap_Oum_FacingLeft_1:
    dw $0001                                                             ;A2CB91;
    dw $0000,$0000                                                       ;A2CB93;
    dw Spritemap_Oum_FacingLeft_1                                        ;A2CB97;
    dw Hitbox_Oum_FacingLeft_1                                           ;A2CB99;

ExtendedSpritemap_Oum_FacingLeft_2:
    dw $0001                                                             ;A2CB9B;
    dw $0000,$0000                                                       ;A2CB9D;
    dw Spritemap_Oum_FacingLeft_2                                        ;A2CBA1;
    dw Hitbox_Oum_FacingLeft_2                                           ;A2CBA3;

ExtendedSpritemap_Oum_FacingLeft_3:
    dw $0001                                                             ;A2CBA5;
    dw $0000,$0000                                                       ;A2CBA7;
    dw Spritemap_Oum_3                                                   ;A2CBAB;
    dw Hitbox_Oum_FacingLeft_3                                           ;A2CBAD;

ExtendedSpritemap_Oum_FacingLeft_4:
    dw $0001                                                             ;A2CBAF;
    dw $0000,$0000                                                       ;A2CBB1;
    dw Spritemap_Oum_FacingLeft_4                                        ;A2CBB5;
    dw Hitbox_Oum_FacingLeft_4                                           ;A2CBB7;

ExtendedSpritemap_Oum_FacingLeft_5:
    dw $0001                                                             ;A2CBB9;
    dw $0000,$0000                                                       ;A2CBBB;
    dw Spritemap_Oum_FacingLeft_5                                        ;A2CBBF;
    dw Hitbox_Oum_FacingLeft_5                                           ;A2CBC1;

ExtendedSpritemap_Oum_FacingLeft_6:
    dw $0001                                                             ;A2CBC3;
    dw $0000,$0000                                                       ;A2CBC5;
    dw Spritemap_Oum_FacingLeft_6                                        ;A2CBC9;
    dw Hitbox_Oum_FacingLeft_6                                           ;A2CBCB;

ExtendedSpritemap_Oum_FacingLeft_7:
    dw $0001                                                             ;A2CBCD;
    dw $0000,$0000                                                       ;A2CBCF;
    dw Spritemap_Oum_FacingLeft_7                                        ;A2CBD3;
    dw Hitbox_Oum_FacingLeft_7                                           ;A2CBD5;

ExtendedSpritemap_Oum_FacingLeft_8:
    dw $0001                                                             ;A2CBD7;
    dw $0000,$0000                                                       ;A2CBD9;
    dw Spritemap_Oum_FacingLeft_8                                        ;A2CBDD;
    dw Hitbox_Oum_FacingLeft_8                                           ;A2CBDF;

ExtendedSpritemap_Oum_FacingLeft_9:
    dw $0001                                                             ;A2CBE1;
    dw $0000,$0000                                                       ;A2CBE3;
    dw Spritemap_Oum_FacingLeft_9                                        ;A2CBE7;
    dw Hitbox_Oum_FacingLeft_9                                           ;A2CBE9;

ExtendedSpritemap_Oum_FacingLeft_A:
    dw $0001                                                             ;A2CBEB;
    dw $0000,$0000                                                       ;A2CBED;
    dw Spritemap_Oum_FacingLeft_A                                        ;A2CBF1;
    dw Hitbox_Oum_FacingLeft_A                                           ;A2CBF3;

ExtendedSpritemap_Oum_FacingLeft_B:
    dw $0001                                                             ;A2CBF5;
    dw $0000,$0000                                                       ;A2CBF7;
    dw Spritemap_Oum_FacingLeft_B                                        ;A2CBFB;
    dw Hitbox_Oum_FacingLeft_B                                           ;A2CBFD;

ExtendedSpritemap_Oum_FacingLeft_C:
    dw $0001                                                             ;A2CBFF;
    dw $0000,$0000                                                       ;A2CC01;
    dw Spritemap_Oum_FacingLeft_C                                        ;A2CC05;
    dw Hitbox_Oum_FacingLeft_C                                           ;A2CC07;

ExtendedSpritemap_Oum_FacingLeft_D:
    dw $0001                                                             ;A2CC09;
    dw $0000,$0000                                                       ;A2CC0B;
    dw Spritemap_Oum_FacingLeft_D                                        ;A2CC0F;
    dw Hitbox_Oum_FacingLeft_D                                           ;A2CC11;

ExtendedSpritemap_Oum_FacingLeft_E:
    dw $0001                                                             ;A2CC13;
    dw $0000,$0000                                                       ;A2CC15;
    dw Spritemap_Oum_FacingLeft_E                                        ;A2CC19;
    dw Hitbox_Oum_FacingLeft_E                                           ;A2CC1B;

ExtendedSpritemap_Oum_FacingRight_0:
    dw $0001                                                             ;A2CC1D;
    dw $0000,$0000                                                       ;A2CC1F;
    dw Spritemap_Oum_FacingRight_0                                       ;A2CC23;
    dw Hitbox_Oum_FacingRight_0                                          ;A2CC25;

ExtendedSpritemap_Oum_FacingRight_1:
    dw $0001                                                             ;A2CC27;
    dw $0000,$0000                                                       ;A2CC29;
    dw Spritemap_Oum_FacingRight_1                                       ;A2CC2D;
    dw Hitbox_Oum_FacingRight_1                                          ;A2CC2F;

ExtendedSpritemap_Oum_FacingRight_2:
    dw $0001                                                             ;A2CC31;
    dw $0000,$0000                                                       ;A2CC33;
    dw Spritemap_Oum_FacingRight_2                                       ;A2CC37;
    dw Hitbox_Oum_FacingRight_2                                          ;A2CC39;

ExtendedSpritemap_Oum_FacingRight_3:
    dw $0001                                                             ;A2CC3B;
    dw $0000,$0000                                                       ;A2CC3D;
    dw Spritemap_Oum_FacingRight_3                                       ;A2CC41;
    dw Hitbox_Oum_FacingRight_3                                          ;A2CC43;

ExtendedSpritemap_Oum_FacingRight_4:
    dw $0001                                                             ;A2CC45;
    dw $0000,$0000                                                       ;A2CC47;
    dw Spritemap_Oum_FacingRight_4                                       ;A2CC4B;
    dw Hitbox_Oum_FacingRight_4                                          ;A2CC4D;

ExtendedSpritemap_Oum_FacingRight_5:
    dw $0001                                                             ;A2CC4F;
    dw $0000,$0000                                                       ;A2CC51;
    dw Spritemap_Oum_FacingRight_5                                       ;A2CC55;
    dw Hitbox_Oum_FacingRight_5                                          ;A2CC57;

ExtendedSpritemap_Oum_FacingRight_6:
    dw $0001                                                             ;A2CC59;
    dw $0000,$0000                                                       ;A2CC5B;
    dw Spritemap_Oum_FacingRight_6                                       ;A2CC5F;
    dw Hitbox_Oum_FacingRight_6                                          ;A2CC61;

ExtendedSpritemap_Oum_FacingRight_7:
    dw $0001                                                             ;A2CC63;
    dw $0000,$0000                                                       ;A2CC65;
    dw Spritemap_Oum_FacingRight_7                                       ;A2CC69;
    dw Hitbox_Oum_FacingRight_7                                          ;A2CC6B;

ExtendedSpritemap_Oum_FacingRight_8:
    dw $0001                                                             ;A2CC6D;
    dw $0000,$0000                                                       ;A2CC6F;
    dw Spritemap_Oum_FacingRight_8                                       ;A2CC73;
    dw Hitbox_Oum_FacingRight_8                                          ;A2CC75;

ExtendedSpritemap_Oum_FacingRight_9:
    dw $0001                                                             ;A2CC77;
    dw $0000,$0000                                                       ;A2CC79;
    dw Spritemap_Oum_FacingRight_9                                       ;A2CC7D;
    dw Hitbox_Oum_FacingRight_9                                          ;A2CC7F;

ExtendedSpritemap_Oum_FacingRight_A:
    dw $0001                                                             ;A2CC81;
    dw $0000,$0000                                                       ;A2CC83;
    dw Spritemap_Oum_FacingRight_A                                       ;A2CC87;
    dw Hitbox_Oum_FacingRight_A                                          ;A2CC89;

ExtendedSpritemap_Oum_FacingRight_B:
    dw $0001                                                             ;A2CC8B;
    dw $0000,$0000                                                       ;A2CC8D;
    dw Spritemap_Oum_FacingRight_B                                       ;A2CC91;
    dw Hitbox_Oum_FacingRight_B                                          ;A2CC93;

ExtendedSpritemap_Oum_FacingRight_C:
    dw $0001                                                             ;A2CC95;
    dw $0000,$0000                                                       ;A2CC97;
    dw Spritemap_Oum_FacingRight_C                                       ;A2CC9B;
    dw Hitbox_Oum_FacingRight_C                                          ;A2CC9D;

ExtendedSpritemap_Oum_FacingRight_D:
    dw $0001                                                             ;A2CC9F;
    dw $0000,$0000                                                       ;A2CCA1;
    dw Spritemap_Oum_FacingRight_D                                       ;A2CCA5;
    dw Hitbox_Oum_FacingRight_D                                          ;A2CCA7;

ExtendedSpritemap_Oum_FacingRight_E:
    dw $0001                                                             ;A2CCA9;
    dw $0000,$0000                                                       ;A2CCAB;
    dw Spritemap_Oum_FacingRight_E                                       ;A2CCAF;
    dw Hitbox_Oum_FacingRight_E                                          ;A2CCB1;

Instruction_Oum_SetAnimationFinishedFlag:
    LDX.W $0E54                                                          ;A2CCB3;
    LDA.W #$0001                                                         ;A2CCB6;
    STA.L $7E7804,X                                                      ;A2CCB9;
    RTL                                                                  ;A2CCBD;


Instruction_Oum_SetAttackAllowingRotationFlag:
    LDX.W $0E54                                                          ;A2CCBE;
    LDA.W #$0001                                                         ;A2CCC1;
    STA.L $7E7806,X                                                      ;A2CCC4;
    RTL                                                                  ;A2CCC8;


Instruction_Oum_ResetAttackAllowingRotationFlag:
    LDX.W $0E54                                                          ;A2CCC9;
    LDA.W #$0000                                                         ;A2CCCC;
    STA.L $7E7806,X                                                      ;A2CCCF;
    RTL                                                                  ;A2CCD3;


InitAI_Oum:
    LDX.W $0E54                                                          ;A2CCD4;
    LDA.W #$0000                                                         ;A2CCD7;
    STA.W $0FAA,X                                                        ;A2CCDA;
    STA.W $0FAE,X                                                        ;A2CCDD;
    STA.L $7E7800,X                                                      ;A2CCE0;
    STA.L $7E7802,X                                                      ;A2CCE4;
    STA.L $7E7804,X                                                      ;A2CCE8;
    STA.L $7E7806,X                                                      ;A2CCEC;
    STA.L $7E7814,X                                                      ;A2CCF0;
    LDA.W #$0003                                                         ;A2CCF4;
    STA.W $0FB0,X                                                        ;A2CCF7;
    LDA.W #$0080                                                         ;A2CCFA;
    STA.W $0FAC,X                                                        ;A2CCFD;
    LDA.W #InstList_Oum_FacingLeft_Idle                                  ;A2CD00;
    STA.W $0F92,X                                                        ;A2CD03;
    LDA.W #Function_Oum_Idle                                             ;A2CD06;
    STA.W $0FA8,X                                                        ;A2CD09;
    LDA.W #Function_Oum_Falling                                          ;A2CD0C;
    STA.W $0FB2,X                                                        ;A2CD0F;
    RTL                                                                  ;A2CD12;


MainAI_Oum:
    LDX.W $0E54                                                          ;A2CD13;
    JSR.W CheckIfTouchingSamus_UpdatePreviousPositions                   ;A2CD16;
    JSR.W ($0FA8,X)                                                      ;A2CD19;
    JSR.W HandlePushingSamus                                             ;A2CD1C;
    JSR.W StopIfSamusIsPressingTowardsOum                                ;A2CD1F;
    RTL                                                                  ;A2CD22;


CheckIfTouchingSamus_UpdatePreviousPositions:
    JSR.W CheckIfTouchingSamus                                           ;A2CD23;
    LDA.W $0F7A,X                                                        ;A2CD26;
    STA.L $7E780C,X                                                      ;A2CD29;
    LDA.W $0F7E,X                                                        ;A2CD2D;
    STA.L $7E7810,X                                                      ;A2CD30;
    RTS                                                                  ;A2CD34;


HandlePushingSamus:
    LDA.W #$0000                                                         ;A2CD35;
    STA.L $7E7816,X                                                      ;A2CD38;
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A2CD3C;
    BEQ .notTouchingSamusFromBelow                                       ;A2CD40;
    LDA.W $0F7E,X                                                        ;A2CD42;
    SEC                                                                  ;A2CD45;
    SBC.L $7E7810,X                                                      ;A2CD46;
    STA.W $0B5C                                                          ;A2CD4A;

.notTouchingSamusFromBelow:
    LDA.L $7E7808,X                                                      ;A2CD4D;
    BEQ .return                                                          ;A2CD51;
    LDA.W $0F7A,X                                                        ;A2CD53;
    SEC                                                                  ;A2CD56;
    SBC.L $7E780C,X                                                      ;A2CD57;
    STA.B $12                                                            ;A2CD5B;
    BMI .movedLeft                                                       ;A2CD5D;
    LDA.L $7E780A,X                                                      ;A2CD5F;
    BNE .return                                                          ;A2CD63;
    BRA +                                                                ;A2CD65;


.movedLeft:
    LDA.L $7E780A,X                                                      ;A2CD67;
    BEQ .return                                                          ;A2CD6B;

  + LDA.W $0B58                                                          ;A2CD6D;
    CLC                                                                  ;A2CD70;
    ADC.B $12                                                            ;A2CD71;
    STA.W $0B58                                                          ;A2CD73;

.return:
    RTS                                                                  ;A2CD76;


StopIfSamusIsPressingTowardsOum:
    LDA.L $7E7808,X                                                      ;A2CD77;
    BEQ .return                                                          ;A2CD7B;
    LDA.W $0F7A,X                                                        ;A2CD7D;
    SEC                                                                  ;A2CD80;
    SBC.L $7E780C,X                                                      ;A2CD81;
    BEQ .stationary                                                      ;A2CD85;
    BMI .checkPressingRight                                              ;A2CD87;
    LDA.B $8B                                                            ;A2CD89;
    AND.W #$0200                                                         ;A2CD8B;
    BEQ .return                                                          ;A2CD8E;
    LDA.W #$0001                                                         ;A2CD90;
    STA.L $7E7816,X                                                      ;A2CD93;
    LDA.L $7E780C,X                                                      ;A2CD97;
    STA.W $0F7A,X                                                        ;A2CD9B;
    BRA .return                                                          ;A2CD9E;


.checkPressingRight:
    LDA.B $8B                                                            ;A2CDA0;
    AND.W #$0100                                                         ;A2CDA2;
    BEQ .return                                                          ;A2CDA5;
    LDA.W #$0001                                                         ;A2CDA7;
    STA.L $7E7816,X                                                      ;A2CDAA;
    LDA.L $7E780C,X                                                      ;A2CDAE;
    STA.W $0F7A,X                                                        ;A2CDB2;
    BRA .return                                                          ;A2CDB5;


.stationary:
    LDA.L $7E780A,X                                                      ;A2CDB7;
    BEQ .SamusIsToTheRight                                               ;A2CDBB;
    LDA.W $0FAE,X                                                        ;A2CDBD;
    BEQ .return                                                          ;A2CDC0;
    LDA.B $8B                                                            ;A2CDC2;
    AND.W #$0100                                                         ;A2CDC4;
    BEQ .return                                                          ;A2CDC7;
    BRA +                                                                ;A2CDC9;


.SamusIsToTheRight:
    LDA.W $0FAE,X                                                        ;A2CDCB;
    BNE .return                                                          ;A2CDCE;
    LDA.B $8B                                                            ;A2CDD0;
    AND.W #$0200                                                         ;A2CDD2;
    BEQ .return                                                          ;A2CDD5;

  + LDA.W #$0001                                                         ;A2CDD7;
    STA.L $7E7816,X                                                      ;A2CDDA;
    LDA.L $7E780C,X                                                      ;A2CDDE;
    STA.W $0F7A,X                                                        ;A2CDE2;

.return:
    RTS                                                                  ;A2CDE5;


Function_Oum_Idle:
    LDX.W $0E54                                                          ;A2CDE6;
    LDA.W $0FB0,X                                                        ;A2CDE9;
    BEQ .noBounce                                                        ;A2CDEC;
    JSR.W ($0FB2,X)                                                      ;A2CDEE;
    BRA .return                                                          ;A2CDF1;


.noBounce:
    LDA.W #$0000                                                         ;A2CDF3;
    STA.L $7E7800,X                                                      ;A2CDF6;
    JSL.L Get_SamusX_minus_EnemyX                                        ;A2CDFA;
    BPL .SamusToTheLeft                                                  ;A2CDFE;
    LDA.W #$0001                                                         ;A2CE00;
    STA.W $0FAE,X                                                        ;A2CE03;
    STA.L $7E7800,X                                                      ;A2CE06;

.SamusToTheLeft:
    JSR.W SetOumInstList                                                 ;A2CE0A;
    LDA.W #$0018                                                         ;A2CE0D;
    JSL.L IsSamusWithinAPixelColumnsOfEnemy                              ;A2CE10;
    BEQ .return                                                          ;A2CE14;
    LDA.L $7E7800,X                                                      ;A2CE16;
    ORA.W #$0002                                                         ;A2CE1A;
    STA.L $7E7800,X                                                      ;A2CE1D;
    JSR.W SetOumInstList                                                 ;A2CE21;
    LDA.W #Function_Oum_Rolling                                          ;A2CE24;
    STA.W $0FA8,X                                                        ;A2CE27;

.return:
    RTS                                                                  ;A2CE2A;


Function_Oum_Rolling:
    LDX.W $0E54                                                          ;A2CE2B;
    LDA.W $0FB0,X                                                        ;A2CE2E;
    BEQ .noBounce                                                        ;A2CE31;
    JSR.W ($0FB2,X)                                                      ;A2CE33;
    BRA .collidedWithBlock                                               ;A2CE36;


.noBounce:
    STZ.B $12                                                            ;A2CE38;
    LDA.W #$0001                                                         ;A2CE3A;
    STA.B $14                                                            ;A2CE3D;
    JSL.L MoveEnemyDownBy_14_12                                          ;A2CE3F;
    BCS .collidedWithBlock                                               ;A2CE43;
    STZ.W $0FAA,X                                                        ;A2CE45;
    LDA.W #Function_Oum_Falling                                          ;A2CE48;
    STA.W $0FB2,X                                                        ;A2CE4B;
    LDA.W #$0003                                                         ;A2CE4E;
    STA.W $0FB0,X                                                        ;A2CE51;

.collidedWithBlock:
    LDA.L $7E7816,X                                                      ;A2CE54;
    BEQ .notStopped                                                      ;A2CE58;
    JMP.W .return                                                        ;A2CE5A;


.notStopped:
    STZ.B $24                                                            ;A2CE5D;
    DEC.W $0FAC,X                                                        ;A2CE5F;
    BPL .noAttack                                                        ;A2CE62;
    STZ.W $0FAC,X                                                        ;A2CE64;
    LDA.W #$0020                                                         ;A2CE67;
    JSL.L IsSamusWithinAPixelColumnsOfEnemy                              ;A2CE6A;
    BEQ .noAttack                                                        ;A2CE6E;
    LDA.L $7E7806,X                                                      ;A2CE70;
    BEQ .noAttack                                                        ;A2CE74;
    LDA.W $0FB0,X                                                        ;A2CE76;
    BNE .noAttack                                                        ;A2CE79;
    LDA.W #$0000                                                         ;A2CE7B;
    STA.L $7E7800,X                                                      ;A2CE7E;
    STA.W $0FAE,X                                                        ;A2CE82;
    JSL.L Get_SamusX_minus_EnemyX                                        ;A2CE85;
    BPL .SamusToTheRight                                                 ;A2CE89;
    LDA.W #$0001                                                         ;A2CE8B;
    STA.L $7E7800,X                                                      ;A2CE8E;
    STA.W $0FAE,X                                                        ;A2CE92;

.SamusToTheRight:
    LDA.W #$0080                                                         ;A2CE95;
    STA.W $0FAC,X                                                        ;A2CE98;
    LDA.L $7E7800,X                                                      ;A2CE9B;
    AND.W #$0001                                                         ;A2CE9F;
    ORA.W #$0004                                                         ;A2CEA2;
    STA.L $7E7800,X                                                      ;A2CEA5;
    JSR.W SetOumInstList                                                 ;A2CEA9;
    LDA.W #Function_Oum_Attacking                                        ;A2CEAC;
    STA.W $0FA8,X                                                        ;A2CEAF;
    JMP.W .return                                                        ;A2CEB2;


.noAttack:
    LDA.W #$0080                                                         ;A2CEB5;
    TAY                                                                  ;A2CEB8;
    LDA.W $0FAE,X                                                        ;A2CEB9;
    BEQ .notLeft                                                         ;A2CEBC;
    INY                                                                  ;A2CEBE;
    INY                                                                  ;A2CEBF;
    INY                                                                  ;A2CEC0;
    INY                                                                  ;A2CEC1;

.notLeft:
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A2CEC2;
    STA.B $12                                                            ;A2CEC5;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A2CEC7;
    STA.B $14                                                            ;A2CECA;
    LDA.L $7E7808,X                                                      ;A2CECC;
    BEQ .noAdjustForSamus                                                ;A2CED0;
    LDA.W $0FAE,X                                                        ;A2CED2;
    CMP.L $7E780A,X                                                      ;A2CED5;
    BNE .noAdjustForSamus                                                ;A2CED9;
    LDA.W $0FAE,X                                                        ;A2CEDB;
    BEQ .right                                                           ;A2CEDE;
    LDA.B $14                                                            ;A2CEE0;
    SEC                                                                  ;A2CEE2;
    SBC.W #$0010                                                         ;A2CEE3;
    STA.B $14                                                            ;A2CEE6;
    BRA .noAdjustForSamus                                                ;A2CEE8;


.right:
    LDA.B $14                                                            ;A2CEEA;
    CLC                                                                  ;A2CEEC;
    ADC.W #$0010                                                         ;A2CEED;
    STA.B $14                                                            ;A2CEF0;

.noAdjustForSamus:
    JSL.L MoveEnemyRightBy_14_12_TreatSlopesAsWalls                      ;A2CEF2;
    BCC .notCollidedWithWall                                             ;A2CEF6;
    INC.B $24                                                            ;A2CEF8;

.notCollidedWithWall:
    LDA.L $7E7808,X                                                      ;A2CEFA;
    BEQ .noUnadjustForSamus                                              ;A2CEFE;
    LDA.W $0FAE,X                                                        ;A2CF00;
    CMP.L $7E780A,X                                                      ;A2CF03;
    BNE .noUnadjustForSamus                                              ;A2CF07;
    LDA.W $0FAE,X                                                        ;A2CF09;
    BEQ .movingRight                                                     ;A2CF0C;
    LDA.W $0F7A,X                                                        ;A2CF0E;
    CLC                                                                  ;A2CF11;
    ADC.W #$0010                                                         ;A2CF12;
    STA.W $0F7A,X                                                        ;A2CF15;
    BRA .noUnadjustForSamus                                              ;A2CF18;


.movingRight:
    LDA.W $0F7A,X                                                        ;A2CF1A;
    SEC                                                                  ;A2CF1D;
    SBC.W #$0010                                                         ;A2CF1E;
    STA.W $0F7A,X                                                        ;A2CF21;

.noUnadjustForSamus:
    LDA.B $24                                                            ;A2CF24;
    BEQ .return                                                          ;A2CF26;
    LDA.W $0FAE,X                                                        ;A2CF28;
    EOR.W #$0001                                                         ;A2CF2B;
    STA.W $0FAE,X                                                        ;A2CF2E;
    LDA.L $7E7800,X                                                      ;A2CF31;
    EOR.W #$0004                                                         ;A2CF35;
    STA.L $7E7800,X                                                      ;A2CF38;
    JSR.W SetOumInstList                                                 ;A2CF3C;

.return:
    RTS                                                                  ;A2CF3F;


Function_Oum_Attacking:
    LDX.W $0E54                                                          ;A2CF40;
    LDA.L $7E7804,X                                                      ;A2CF43;
    BEQ .return                                                          ;A2CF47;
    LDA.W #$0000                                                         ;A2CF49;
    STA.L $7E7804,X                                                      ;A2CF4C;
    LDA.L $7E7800,X                                                      ;A2CF50;
    SEC                                                                  ;A2CF54;
    SBC.W #$0002                                                         ;A2CF55;
    STA.L $7E7800,X                                                      ;A2CF58;
    JSR.W SetOumInstList                                                 ;A2CF5C;
    LDA.W #Function_Oum_Rolling                                          ;A2CF5F;
    STA.W $0FA8,X                                                        ;A2CF62;

.return:
    RTS                                                                  ;A2CF65;


Function_Oum_Falling:
    LDA.W $0FAA,X                                                        ;A2CF66;
    CLC                                                                  ;A2CF69;
    ADC.W #$0180                                                         ;A2CF6A;
    CMP.W #$4000                                                         ;A2CF6D;
    BMI +                                                                ;A2CF70;
    LDA.W #$4000                                                         ;A2CF72;

  + STA.W $0FAA,X                                                        ;A2CF75;
    AND.W #$FF00                                                         ;A2CF78;
    XBA                                                                  ;A2CF7B;
    ASL A                                                                ;A2CF7C;
    ASL A                                                                ;A2CF7D;
    ASL A                                                                ;A2CF7E;
    TAY                                                                  ;A2CF7F;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing,Y                    ;A2CF80;
    STA.B $12                                                            ;A2CF83;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing+2,Y                  ;A2CF85;
    STA.B $14                                                            ;A2CF88;
    JSL.L MoveEnemyDownBy_14_12                                          ;A2CF8A;
    BCC .return                                                          ;A2CF8E;
    DEC.W $0FB0,X                                                        ;A2CF90;
    LDA.W $0FAA,X                                                        ;A2CF93;
    SEC                                                                  ;A2CF96;
    SBC.W #$1000                                                         ;A2CF97;
    BPL .notNegative                                                     ;A2CF9A;
    STZ.W $0FB0,X                                                        ;A2CF9C;

.notNegative:
    STA.W $0FAA,X                                                        ;A2CF9F;
    LDA.W #Function_Oum_Rising                                           ;A2CFA2;
    STA.W $0FB2,X                                                        ;A2CFA5;

.return:
    RTS                                                                  ;A2CFA8;


Function_Oum_Rising:
    LDA.W $0FAA,X                                                        ;A2CFA9;
    SEC                                                                  ;A2CFAC;
    SBC.W #$0180                                                         ;A2CFAD;
    STA.W $0FAA,X                                                        ;A2CFB0;
    BPL .notNegative                                                     ;A2CFB3;
    STZ.W $0FAA,X                                                        ;A2CFB5;
    LDA.W #Function_Oum_Falling                                          ;A2CFB8;
    STA.W $0FB2,X                                                        ;A2CFBB;
    BRA .return                                                          ;A2CFBE;


.notNegative:
    AND.W #$FF00                                                         ;A2CFC0;
    XBA                                                                  ;A2CFC3;
    ASL A                                                                ;A2CFC4;
    ASL A                                                                ;A2CFC5;
    ASL A                                                                ;A2CFC6;
    TAY                                                                  ;A2CFC7;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing+4,Y                  ;A2CFC8;
    STA.B $12                                                            ;A2CFCB;
    LDA.W CommonEnemySpeeds_QuadraticallyIncreasing+6,Y                  ;A2CFCD;
    STA.B $14                                                            ;A2CFD0;
    JSL.L MoveEnemyDownBy_14_12                                          ;A2CFD2;

.return:
    RTS                                                                  ;A2CFD6;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_PlayKetchupBeamSFX_A2CFD7:
    LDA.W #$0063                                                         ;A2CFD7;
    JSL.L QueueSound_Lib2_Max6                                           ;A2CFDA;
    RTS                                                                  ;A2CFDE;
endif ; !FEATURE_KEEP_UNREFERENCED


SetOumInstList:
    LDA.L $7E7800,X                                                      ;A2CFDF;
    CMP.L $7E7802,X                                                      ;A2CFE3;
    BEQ .return                                                          ;A2CFE7;
    STA.L $7E7802,X                                                      ;A2CFE9;
    ASL A                                                                ;A2CFED;
    TAY                                                                  ;A2CFEE;
    LDA.W InstListPointers_Oum,Y                                         ;A2CFEF;
    STA.W $0F92,X                                                        ;A2CFF2;
    LDA.W #$0001                                                         ;A2CFF5;
    STA.W $0F94,X                                                        ;A2CFF8;
    STZ.W $0F90,X                                                        ;A2CFFB;

.return:
    RTS                                                                  ;A2CFFE;


CheckIfTouchingSamus:
    LDX.W $0E54                                                          ;A2CFFF;
    LDA.W #$0000                                                         ;A2D002;
    STA.L $7E7808,X                                                      ;A2D005;
    STA.L $7E780A,X                                                      ;A2D009;
    LDA.W #$0020                                                         ;A2D00D;
    JSL.L IsSamusWithingAPixelRowsOfEnemy                                ;A2D010;
    BEQ .return                                                          ;A2D014;
    LDA.W #$0018                                                         ;A2D016;
    JSL.L IsSamusWithinAPixelColumnsOfEnemy                              ;A2D019;
    BEQ .return                                                          ;A2D01D;
    LDA.W #$0001                                                         ;A2D01F;
    STA.L $7E7808,X                                                      ;A2D022;
    JSL.L Get_SamusX_minus_EnemyX                                        ;A2D026;
    BPL .return                                                          ;A2D02A;
    LDA.W #$0001                                                         ;A2D02C;
    STA.L $7E780A,X                                                      ;A2D02F;

.return:
    RTS                                                                  ;A2D033;


Hitbox_Oum_FacingLeft_0:
    dw $0002                                                             ;A2D034;
    dw $FFF0,$FFEF,$FFF8,$0010                                           ;A2D036;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D03E;
    dw EnemyShot_Oum                                                     ;A2D040;
    dw $FFF8,$FFEF,$000E,$0010                                           ;A2D042;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D04A;
    dw RTL_A2804C                                                        ;A2D04C;

Hitbox_Oum_FacingLeft_1:
    dw $0001                                                             ;A2D04E;
    dw $FFF0,$FFEF,$000E,$0010                                           ;A2D050;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D058;
    dw RTL_A2804C                                                        ;A2D05A;

Hitbox_Oum_FacingLeft_2:
    dw $0002                                                             ;A2D05C;
    dw $FFFF,$FFEF,$000E,$0010
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D066;
    dw RTL_A2804C                                                        ;A2D068;
    dw $FFEF,$FFEF,$0000,$0010                                           ;A2D06A;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D072;
    dw EnemyShot_Oum                                                     ;A2D074;

Hitbox_Oum_FacingLeft_3:
    dw $0002                                                             ;A2D076;
    dw $FFEC,$FFF8,$0000,$0008
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D080;
    dw EnemyShot_Oum                                                     ;A2D082;
    dw $0000,$FFEF,$000D,$0010                                           ;A2D084;
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D08C;
    dw RTL_A2804C                                                        ;A2D08E;

Hitbox_Oum_FacingLeft_4:
    dw $0002                                                             ;A2D090;
    dw $FFEA,$FFF8,$0000,$0007
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D09A;
    dw EnemyShot_Oum                                                     ;A2D09C;
    dw $0000,$FFEF,$000E,$0010                                           ;A2D09E;
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D0A6;
    dw RTL_A2804C                                                        ;A2D0A8;

Hitbox_Oum_FacingLeft_5:
    dw $0002                                                             ;A2D0AA;
    dw $FFE7,$FFF7,$0000,$0008
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D0B4;
    dw EnemyShot_Oum                                                     ;A2D0B6;
    dw $0000,$FFEE,$000E,$0010                                           ;A2D0B8;
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D0C0;
    dw RTL_A2804C                                                        ;A2D0C2;

Hitbox_Oum_FacingLeft_6:
    dw $0002                                                             ;A2D0C4;
    dw $FFE8,$FFF8,$0000,$0009
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D0CE;
    dw EnemyShot_Oum                                                     ;A2D0D0;
    dw $0000,$FFEE,$000F,$0010                                           ;A2D0D2;
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D0DA;
    dw RTL_A2804C                                                        ;A2D0DC;

Hitbox_Oum_FacingLeft_7:
    dw $0002                                                             ;A2D0DE;
    dw $FFE5,$FFF8,$0000,$0008
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D0E8;
    dw EnemyShot_Oum                                                     ;A2D0EA;
    dw $0000,$FFEE,$000F,$0010                                           ;A2D0EC;
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D0F4;
    dw RTL_A2804C                                                        ;A2D0F6;

Hitbox_Oum_FacingLeft_8:
    dw $0003                                                             ;A2D0F8;
    dw $FFF0,$0000,$0000,$0010
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D102;
    dw EnemyShot_Oum                                                     ;A2D104;
    dw $FFF0,$FFF0,$0000,$0000                                           ;A2D106;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D10E;
    dw RTL_A2804C                                                        ;A2D110;
    dw $0000,$FFF0,$000E,$0010                                           ;A2D112;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D11A;
    dw RTL_A2804C                                                        ;A2D11C;

Hitbox_Oum_FacingLeft_9:
    dw $0002                                                             ;A2D11E;
    dw $FFF1,$FFEF,$000F,$0000
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D128;
    dw RTL_A2804C                                                        ;A2D12A;
    dw $FFF1,$0000,$000F,$0010                                           ;A2D12C;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D134;
    dw EnemyShot_Oum                                                     ;A2D136;

Hitbox_Oum_FacingLeft_A:
    dw $0003                                                             ;A2D138;
    dw $FFF1,$FFEF,$0000,$0010
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D142;
    dw RTL_A2804C                                                        ;A2D144;
    dw $0000,$FFEF,$000F,$0000                                           ;A2D146;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D14E;
    dw RTL_A2804C                                                        ;A2D150;
    dw $0000,$0000,$000F,$0010                                           ;A2D152;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D15A;
    dw EnemyShot_Oum                                                     ;A2D15C;

Hitbox_Oum_FacingLeft_B:
    dw $0002                                                             ;A2D15E;
    dw $FFF0,$FFEF,$0000,$0010
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D168;
    dw RTL_A2804C                                                        ;A2D16A;
    dw $0000,$FFEF,$000F,$0010                                           ;A2D16C;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D174;
    dw EnemyShot_Oum                                                     ;A2D176;

Hitbox_Oum_FacingLeft_C:
    dw $0003                                                             ;A2D178;
    dw $FFF1,$FFEF,$0000,$0010
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D182;
    dw RTL_A2804C                                                        ;A2D184;
    dw $0000,$FFEF,$000F,$0000                                           ;A2D186;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D18E;
    dw EnemyShot_Oum                                                     ;A2D190;
    dw $0000,$0000,$000F,$0010                                           ;A2D192;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D19A;
    dw RTL_A2804C                                                        ;A2D19C;

Hitbox_Oum_FacingLeft_D:
    dw $0002                                                             ;A2D19E;
    dw $FFF0,$FFEE,$000F,$0000
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D1A8;
    dw EnemyShot_Oum                                                     ;A2D1AA;
    dw $FFF0,$0000,$000F,$0010                                           ;A2D1AC;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D1B4;
    dw RTL_A2804C                                                        ;A2D1B6;

Hitbox_Oum_FacingLeft_E:
    dw $0003                                                             ;A2D1B8;
    dw $FFF0,$0000,$0000,$0010
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D1C2;
    dw RTL_A2804C                                                        ;A2D1C4;
    dw $FFF0,$FFEF,$0000,$0000                                           ;A2D1C6;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D1CE;
    dw EnemyShot_Oum                                                     ;A2D1D0;
    dw $0000,$FFEF,$000E,$0010                                           ;A2D1D2;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D1DA;
    dw RTL_A2804C                                                        ;A2D1DC;

Hitbox_Oum_FacingRight_0:
    dw $0002                                                             ;A2D1DE;
    dw $FFF0,$FFEF,$0008,$0010
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D1E8;
    dw RTL_A2804C                                                        ;A2D1EA;
    dw $0008,$FFEF,$0010,$0010                                           ;A2D1EC;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D1F4;
    dw EnemyShot_Oum                                                     ;A2D1F6;

Hitbox_Oum_FacingRight_1:
    dw $0001                                                             ;A2D1F8;
    dw $FFF0,$FFEF,$0010,$0010
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D202;
    dw RTL_A2804C                                                        ;A2D204;

Hitbox_Oum_FacingRight_2:
    dw $0002                                                             ;A2D206;
    dw $FFF0,$FFEF,$0000,$0010
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D210;
    dw RTL_A2804C                                                        ;A2D212;
    dw $0000,$FFEF,$0010,$0010                                           ;A2D214;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D21C;
    dw EnemyShot_Oum                                                     ;A2D21E;

Hitbox_Oum_FacingRight_3:
    dw $0002                                                             ;A2D220;
    dw $FFF0,$FFEF,$0000,$0010
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D22A;
    dw RTL_A2804C                                                        ;A2D22C;
    dw $0000,$FFF8,$0014,$0008                                           ;A2D22E;
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D236;
    dw EnemyShot_Oum                                                     ;A2D238;

Hitbox_Oum_FacingRight_4:
    dw $0002                                                             ;A2D23A;
    dw $FFF0,$FFEF,$FFFF,$0010
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D244;
    dw RTL_A2804C                                                        ;A2D246;
    dw $0000,$FFF8,$0016,$0008                                           ;A2D248;
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D250;
    dw EnemyShot_Oum                                                     ;A2D252;

Hitbox_Oum_FacingRight_5:
    dw $0002                                                             ;A2D254;
    dw $FFF0,$FFEE,$0000,$0010
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D25E;
    dw RTL_A2804C                                                        ;A2D260;
    dw $0000,$FFF8,$0018,$0008                                           ;A2D262;
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D26A;
    dw EnemyShot_Oum                                                     ;A2D26C;

Hitbox_Oum_FacingRight_6:
    dw $0002                                                             ;A2D26E;
    dw $FFF1,$FFEF,$0000,$0010
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D278;
    dw RTL_A2804C                                                        ;A2D27A;
    dw $0000,$FFF8,$0018,$0008                                           ;A2D27C;
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D284;
    dw EnemyShot_Oum                                                     ;A2D286;

Hitbox_Oum_FacingRight_7:
    dw $0002                                                             ;A2D288;
    dw $FFF0,$FFEF,$0000,$0010
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D292;
    dw RTL_A2804C                                                        ;A2D294;
    dw $0000,$FFF8,$0019,$0008                                           ;A2D296;
    dw EnemyTouch_Oum_HurtsSamus                                         ;A2D29E;
    dw EnemyShot_Oum                                                     ;A2D2A0;

Hitbox_Oum_FacingRight_8:
    dw $0003                                                             ;A2D2A2;
    dw $FFF1,$FFF0,$0000,$0010
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D2AC;
    dw RTL_A2804C                                                        ;A2D2AE;
    dw $0000,$FFF0,$0010,$0000                                           ;A2D2B0;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D2B8;
    dw RTL_A2804C                                                        ;A2D2BA;
    dw $0000,$0000,$0010,$0010                                           ;A2D2BC;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D2C4;
    dw EnemyShot_Oum                                                     ;A2D2C6;

Hitbox_Oum_FacingRight_9:
    dw $0002                                                             ;A2D2C8;
    dw $FFF1,$FFEF,$000F,$0000
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D2D2;
    dw RTL_A2804C                                                        ;A2D2D4;
    dw $FFF1,$0000,$000F,$0010                                           ;A2D2D6;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D2DE;
    dw EnemyShot_Oum                                                     ;A2D2E0;

Hitbox_Oum_FacingRight_A:
    dw $0003                                                             ;A2D2E2;
    dw $FFF0,$0000,$0000,$0011
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D2EC;
    dw EnemyShot_Oum                                                     ;A2D2EE;
    dw $FFF0,$FFEF,$0000,$0000                                           ;A2D2F0;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D2F8;
    dw RTL_A2804C                                                        ;A2D2FA;
    dw $0000,$FFEF,$000E,$0011                                           ;A2D2FC;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D304;
    dw RTL_A2804C                                                        ;A2D306;

Hitbox_Oum_FacingRight_B:
    dw $0002                                                             ;A2D308;
    dw $FFF0,$FFEF,$0000,$0010
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D312;
    dw EnemyShot_Oum                                                     ;A2D314;
    dw $0000,$FFEF,$000E,$0010                                           ;A2D316;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D31E;
    dw RTL_A2804C                                                        ;A2D320;

Hitbox_Oum_FacingRight_C:
    dw $0003                                                             ;A2D322;
    dw $FFF0,$FFEF,$0000,$0000
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D32C;
    dw EnemyShot_Oum                                                     ;A2D32E;
    dw $FFF0,$0000,$0000,$0010                                           ;A2D330;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D338;
    dw RTL_A2804C                                                        ;A2D33A;
    dw $0000,$FFEF,$000E,$0010                                           ;A2D33C;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D344;
    dw RTL_A2804C                                                        ;A2D346;

Hitbox_Oum_FacingRight_D:
    dw $0002                                                             ;A2D348;
    dw $FFF0,$FFEF,$000F,$0000
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D352;
    dw EnemyShot_Oum                                                     ;A2D354;
    dw $FFF0,$0000,$000F,$0010                                           ;A2D356;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D35E;
    dw RTL_A2804C                                                        ;A2D360;

Hitbox_Oum_FacingRight_E:
    dw $0003                                                             ;A2D362;
    dw $FFF1,$FFEF,$0000,$0010
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D36C;
    dw RTL_A2804C                                                        ;A2D36E;
    dw $0000,$FFEF,$0010,$0000                                           ;A2D370;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D378;
    dw EnemyShot_Oum                                                     ;A2D37A;
    dw $0000,$0000,$0010,$0010                                           ;A2D37C;
    dw EnemyTouch_Oum_DoesNotHurtSamus                                   ;A2D384;
    dw RTL_A2804C                                                        ;A2D386;

EnemyTouch_Oum_HurtsSamus:
    JSL.L CommonA2_NormalEnemyTouchAI                                    ;A2D388;

EnemyTouch_Oum_DoesNotHurtSamus:
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A2D38C;
    BNE .return                                                          ;A2D390;
    LDX.W $0E54                                                          ;A2D392;
    LDA.W $0AF6                                                          ;A2D395;
    SEC                                                                  ;A2D398;
    SBC.W $0F7A,X                                                        ;A2D399;
    BMI .rightOfSamus                                                    ;A2D39C;
    LDA.W $0B58                                                          ;A2D39E;
    CLC                                                                  ;A2D3A1;
    ADC.W #$0004                                                         ;A2D3A2;
    STA.W $0B58                                                          ;A2D3A5;
    RTL                                                                  ;A2D3A8;


.rightOfSamus:
    LDA.W $0B58                                                          ;A2D3A9;
    CLC                                                                  ;A2D3AC;
    ADC.W #$FFFC                                                         ;A2D3AD;
    STA.W $0B58                                                          ;A2D3B0;

.return:
    RTL                                                                  ;A2D3B3;


EnemyShot_Oum:
    JSL.L NormalEnemyShotAI                                              ;A2D3B4;
    LDA.W #$0057                                                         ;A2D3B8;
    JSL.L QueueSound_Lib2_Max6                                           ;A2D3BB;
    RTL                                                                  ;A2D3BF;


Spritemap_Oum_FacingLeft_0:
    dw $0006                                                             ;A2D3C0;
    %spritemapEntry(0, $1F0, $00, 0, 0, 2, 0, $11E)
    %spritemapEntry(0, $1F0, $F8, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $00, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $100)

Spritemap_Oum_FacingLeft_1:
    dw $0006                                                             ;A2D3E0;
    %spritemapEntry(0, $1F0, $00, 0, 0, 2, 0, $11F)
    %spritemapEntry(0, $1F0, $F8, 0, 0, 2, 0, $10F)
    %spritemapEntry(1, $00, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $120)
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $100)

Spritemap_Oum_FacingLeft_2:
    dw $0007                                                             ;A2D400;
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $110)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 0, $131)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 0, $130)
    %spritemapEntry(0, $1F8, $F0, 0, 0, 2, 0, $101)
    %spritemapEntry(0, $1F0, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $00, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $102)

Spritemap_Oum_3:
    dw $0009                                                             ;A2D425;
    %spritemapEntry(0, $1EA, $FF, 0, 0, 2, 0, $12E)
    %spritemapEntry(0, $1F0, $00, 0, 0, 2, 0, $12F)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $110)
    %spritemapEntry(0, $1F8, $F0, 0, 0, 2, 0, $101)
    %spritemapEntry(0, $1F0, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 0, $131)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 0, $130)
    %spritemapEntry(1, $00, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $102)

Spritemap_Oum_FacingLeft_4:
    dw $0009                                                             ;A2D454;
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 0, $131)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 0, $130)
    %spritemapEntry(0, $1F8, $F0, 0, 0, 2, 0, $101)
    %spritemapEntry(0, $1F0, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(0, $1E8, $FE, 0, 0, 2, 0, $12E)
    %spritemapEntry(0, $1F0, $00, 0, 0, 2, 0, $12F)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $110)
    %spritemapEntry(1, $00, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $102)

Spritemap_Oum_FacingLeft_5:
    dw $000A                                                             ;A2D483;
    %spritemapEntry(0, $1F0, $00, 0, 0, 2, 0, $12F)
    %spritemapEntry(0, $1E3, $FE, 0, 0, 2, 0, $13E)
    %spritemapEntry(0, $1E9, $FF, 0, 0, 2, 0, $13F)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 0, $131)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 0, $130)
    %spritemapEntry(0, $1F8, $F0, 0, 0, 2, 0, $101)
    %spritemapEntry(0, $1F0, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $110)
    %spritemapEntry(1, $00, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $102)

Spritemap_Oum_FacingLeft_6:
    dw $000A                                                             ;A2D4B7;
    %spritemapEntry(0, $1F0, $00, 0, 0, 2, 0, $12F)
    %spritemapEntry(0, $1E2, $00, 0, 0, 2, 0, $13E)
    %spritemapEntry(0, $1E9, $00, 0, 0, 2, 0, $13F)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 0, $131)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 0, $130)
    %spritemapEntry(0, $1F8, $F0, 0, 0, 2, 0, $101)
    %spritemapEntry(0, $1F0, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $110)
    %spritemapEntry(1, $00, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $102)

Spritemap_Oum_FacingLeft_7:
    dw $000A                                                             ;A2D4EB;
    %spritemapEntry(0, $1F0, $00, 0, 0, 2, 0, $12F)
    %spritemapEntry(0, $1E0, $FF, 0, 0, 2, 0, $13E)
    %spritemapEntry(0, $1E8, $FF, 0, 0, 2, 0, $13F)
    %spritemapEntry(0, $1F8, $08, 0, 0, 2, 0, $131)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 0, $130)
    %spritemapEntry(0, $1F8, $F0, 0, 0, 2, 0, $101)
    %spritemapEntry(0, $1F0, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $110)
    %spritemapEntry(1, $00, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $102)

Spritemap_Oum_FacingLeft_8:
    dw $0004                                                             ;A2D51F;
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $104)
    %spritemapEntry(1, $00, $00, 0, 0, 2, 0, $128)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $126)
    %spritemapEntry(1, $1F0, $F0, 0, 0, 2, 0, $106)

Spritemap_Oum_FacingLeft_9:
    dw $0007                                                             ;A2D535;
    %spritemapEntry(0, $08, $08, 0, 0, 2, 0, $11B)
    %spritemapEntry(0, $08, $00, 0, 0, 2, 0, $10B)
    %spritemapEntry(0, $1F0, $08, 0, 0, 2, 0, $118)
    %spritemapEntry(0, $1F0, $00, 0, 0, 2, 0, $108)
    %spritemapEntry(1, $1F8, $00, 0, 0, 2, 0, $109)
    %spritemapEntry(1, $1F0, $F0, 1, 1, 2, 0, $122)
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $102)

Spritemap_Oum_FacingLeft_A:
    dw $0004                                                             ;A2D55A;
    %spritemapEntry(1, $1F0, $F0, 1, 1, 2, 0, $124)
    %spritemapEntry(1, $00, $F0, 0, 0, 2, 0, $10C)
    %spritemapEntry(1, $00, $00, 0, 0, 2, 0, $12C)
    %spritemapEntry(1, $1F0, $00, 0, 0, 2, 0, $12A)

Spritemap_Oum_FacingLeft_B:
    dw $0007                                                             ;A2D570;
    %spritemapEntry(0, $08, $F0, 1, 1, 2, 0, $130)
    %spritemapEntry(0, $00, $F0, 1, 1, 2, 0, $131)
    %spritemapEntry(0, $00, $08, 1, 1, 2, 0, $101)
    %spritemapEntry(0, $08, $08, 1, 1, 2, 0, $100)
    %spritemapEntry(1, $00, $F8, 1, 1, 2, 0, $110)
    %spritemapEntry(1, $1F0, $F0, 1, 1, 2, 0, $122)
    %spritemapEntry(1, $1F0, $00, 1, 1, 2, 0, $102)

Spritemap_Oum_FacingLeft_C:
    dw $0004                                                             ;A2D595;
    %spritemapEntry(1, $1F0, $00, 1, 1, 2, 0, $104)
    %spritemapEntry(1, $1F0, $F0, 1, 1, 2, 0, $128)
    %spritemapEntry(1, $00, $F0, 1, 1, 2, 0, $126)
    %spritemapEntry(1, $00, $00, 1, 1, 2, 0, $106)

Spritemap_Oum_FacingLeft_D:
    dw $0007                                                             ;A2D5AB;
    %spritemapEntry(0, $1F0, $F8, 1, 1, 2, 0, $10B)
    %spritemapEntry(0, $1F0, $F0, 1, 1, 2, 0, $11B)
    %spritemapEntry(0, $08, $F8, 1, 1, 2, 0, $108)
    %spritemapEntry(0, $08, $F0, 1, 1, 2, 0, $118)
    %spritemapEntry(1, $1F8, $F0, 1, 1, 2, 0, $109)
    %spritemapEntry(1, $00, $00, 0, 0, 2, 0, $122)
    %spritemapEntry(1, $1F0, $00, 1, 1, 2, 0, $102)

Spritemap_Oum_FacingLeft_E:
    dw $0004                                                             ;A2D5D0;
    %spritemapEntry(1, $00, $00, 0, 0, 2, 0, $124)
    %spritemapEntry(1, $1F0, $00, 1, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F0, $F0, 1, 1, 2, 0, $12C)
    %spritemapEntry(1, $00, $F0, 1, 1, 2, 0, $12A)

Spritemap_Oum_FacingRight_0:
    dw $0006                                                             ;A2D5E6;
    %spritemapEntry(0, $08, $00, 0, 1, 2, 0, $11E)
    %spritemapEntry(0, $08, $F8, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $1F0, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $00, $00, 0, 1, 2, 0, $120)
    %spritemapEntry(1, $1F0, $F0, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $00, $F0, 0, 1, 2, 0, $100)

Spritemap_Oum_FacingRight_1:
    dw $0006                                                             ;A2D606;
    %spritemapEntry(0, $08, $00, 0, 1, 2, 0, $11F)
    %spritemapEntry(0, $08, $F8, 0, 1, 2, 0, $10F)
    %spritemapEntry(1, $1F0, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $00, $00, 0, 1, 2, 0, $120)
    %spritemapEntry(1, $1F0, $F0, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $00, $F0, 0, 1, 2, 0, $100)

Spritemap_Oum_FacingRight_2:
    dw $0007                                                             ;A2D626;
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $110)
    %spritemapEntry(0, $00, $08, 0, 1, 2, 0, $131)
    %spritemapEntry(0, $08, $08, 0, 1, 2, 0, $130)
    %spritemapEntry(0, $00, $F0, 0, 1, 2, 0, $101)
    %spritemapEntry(0, $08, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1F0, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $1F0, $F0, 0, 1, 2, 0, $102)

Spritemap_Oum_FacingRight_3:
    dw $0009                                                             ;A2D64B;
    %spritemapEntry(0, $0E, $FF, 0, 1, 2, 0, $12E)
    %spritemapEntry(0, $08, $00, 0, 1, 2, 0, $12F)
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $110)
    %spritemapEntry(0, $00, $F0, 0, 1, 2, 0, $101)
    %spritemapEntry(0, $08, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(0, $00, $08, 0, 1, 2, 0, $131)
    %spritemapEntry(0, $08, $08, 0, 1, 2, 0, $130)
    %spritemapEntry(1, $1F0, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $1F0, $F0, 0, 1, 2, 0, $102)

Spritemap_Oum_FacingRight_4:
    dw $0009                                                             ;A2D67A;
    %spritemapEntry(0, $00, $08, 0, 1, 2, 0, $131)
    %spritemapEntry(0, $08, $08, 0, 1, 2, 0, $130)
    %spritemapEntry(0, $00, $F0, 0, 1, 2, 0, $101)
    %spritemapEntry(0, $08, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(0, $10, $FE, 0, 1, 2, 0, $12E)
    %spritemapEntry(0, $08, $00, 0, 1, 2, 0, $12F)
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $110)
    %spritemapEntry(1, $1F0, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $1F0, $F0, 0, 1, 2, 0, $102)

Spritemap_Oum_FacingRight_5:
    dw $000A                                                             ;A2D6A9;
    %spritemapEntry(0, $08, $00, 0, 1, 2, 0, $12F)
    %spritemapEntry(0, $15, $FE, 0, 1, 2, 0, $13E)
    %spritemapEntry(0, $0F, $FF, 0, 1, 2, 0, $13F)
    %spritemapEntry(0, $00, $08, 0, 1, 2, 0, $131)
    %spritemapEntry(0, $08, $08, 0, 1, 2, 0, $130)
    %spritemapEntry(0, $00, $F0, 0, 1, 2, 0, $101)
    %spritemapEntry(0, $08, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $110)
    %spritemapEntry(1, $1F0, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $1F0, $F0, 0, 1, 2, 0, $102)

Spritemap_Oum_FacingRight_6:
    dw $000A                                                             ;A2D6DD;
    %spritemapEntry(0, $08, $00, 0, 1, 2, 0, $12F)
    %spritemapEntry(0, $16, $00, 0, 1, 2, 0, $13E)
    %spritemapEntry(0, $0F, $00, 0, 1, 2, 0, $13F)
    %spritemapEntry(0, $00, $08, 0, 1, 2, 0, $131)
    %spritemapEntry(0, $08, $08, 0, 1, 2, 0, $130)
    %spritemapEntry(0, $00, $F0, 0, 1, 2, 0, $101)
    %spritemapEntry(0, $08, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $110)
    %spritemapEntry(1, $1F0, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $1F0, $F0, 0, 1, 2, 0, $102)

Spritemap_Oum_FacingRight_7:
    dw $000A                                                             ;A2D711;
    %spritemapEntry(0, $08, $00, 0, 1, 2, 0, $12F)
    %spritemapEntry(0, $18, $FF, 0, 1, 2, 0, $13E)
    %spritemapEntry(0, $10, $FF, 0, 1, 2, 0, $13F)
    %spritemapEntry(0, $00, $08, 0, 1, 2, 0, $131)
    %spritemapEntry(0, $08, $08, 0, 1, 2, 0, $130)
    %spritemapEntry(0, $00, $F0, 0, 1, 2, 0, $101)
    %spritemapEntry(0, $08, $F0, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $110)
    %spritemapEntry(1, $1F0, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $1F0, $F0, 0, 1, 2, 0, $102)

Spritemap_Oum_FacingRight_8:
    dw $0004                                                             ;A2D745;
    %spritemapEntry(1, $1F0, $F0, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $1F0, $00, 0, 1, 2, 0, $128)
    %spritemapEntry(1, $00, $00, 0, 1, 2, 0, $126)
    %spritemapEntry(1, $00, $F0, 0, 1, 2, 0, $106)

Spritemap_Oum_FacingRight_9:
    dw $0007                                                             ;A2D75B;
    %spritemapEntry(0, $1F0, $08, 0, 1, 2, 0, $11B)
    %spritemapEntry(0, $1F0, $00, 0, 1, 2, 0, $10B)
    %spritemapEntry(0, $08, $08, 0, 1, 2, 0, $118)
    %spritemapEntry(0, $08, $00, 0, 1, 2, 0, $108)
    %spritemapEntry(1, $1F8, $00, 0, 1, 2, 0, $109)
    %spritemapEntry(1, $00, $F0, 1, 0, 2, 0, $122)
    %spritemapEntry(1, $1F0, $F0, 0, 1, 2, 0, $102)

Spritemap_Oum_FacingRight_A:
    dw $0004                                                             ;A2D780;
    %spritemapEntry(1, $00, $F0, 1, 0, 2, 0, $124)
    %spritemapEntry(1, $1F0, $F0, 0, 1, 2, 0, $10C)
    %spritemapEntry(1, $1F0, $00, 0, 1, 2, 0, $12C)
    %spritemapEntry(1, $00, $00, 0, 1, 2, 0, $12A)

Spritemap_Oum_FacingRight_B:
    dw $0007                                                             ;A2D796;
    %spritemapEntry(0, $1F0, $F0, 1, 0, 2, 0, $130)
    %spritemapEntry(0, $1F8, $F0, 1, 0, 2, 0, $131)
    %spritemapEntry(0, $1F8, $08, 1, 0, 2, 0, $101)
    %spritemapEntry(0, $1F0, $08, 1, 0, 2, 0, $100)
    %spritemapEntry(1, $1F0, $F8, 1, 0, 2, 0, $110)
    %spritemapEntry(1, $00, $F0, 1, 0, 2, 0, $122)
    %spritemapEntry(1, $00, $00, 1, 0, 2, 0, $102)

Spritemap_Oum_FacingRight_C:
    dw $0004                                                             ;A2D7BB;
    %spritemapEntry(1, $00, $00, 1, 0, 2, 0, $104)
    %spritemapEntry(1, $00, $F0, 1, 0, 2, 0, $128)
    %spritemapEntry(1, $1F0, $F0, 1, 0, 2, 0, $126)
    %spritemapEntry(1, $1F0, $00, 1, 0, 2, 0, $106)

Spritemap_Oum_FacingRight_D:
    dw $0007                                                             ;A2D7D1;
    %spritemapEntry(0, $08, $F8, 1, 0, 2, 0, $10B)
    %spritemapEntry(0, $08, $F0, 1, 0, 2, 0, $11B)
    %spritemapEntry(0, $1F0, $F8, 1, 0, 2, 0, $108)
    %spritemapEntry(0, $1F0, $F0, 1, 0, 2, 0, $118)
    %spritemapEntry(1, $1F8, $F0, 1, 0, 2, 0, $109)
    %spritemapEntry(1, $1F0, $00, 0, 1, 2, 0, $122)
    %spritemapEntry(1, $00, $00, 1, 0, 2, 0, $102)

Spritemap_Oum_FacingRight_E:
    dw $0004                                                             ;A2D7F6;
    %spritemapEntry(1, $1F0, $00, 0, 1, 2, 0, $124)
    %spritemapEntry(1, $00, $00, 1, 0, 2, 0, $10C)
    %spritemapEntry(1, $00, $F0, 1, 0, 2, 0, $12C)
    %spritemapEntry(1, $1F0, $F0, 1, 0, 2, 0, $12A)

Palette_Choot:
    dw $3800,$4B9C,$2610,$0CC6,$0C63,$42F7,$2A52,$19AD                   ;A2D80C;
    dw $0D29,$5E59,$3D72,$2CEE,$1447,$033B,$0216,$0113                   ;A2D81C;

InstList_Choot_Idle:
    dw Instruction_Common_DisableOffScreenProcessing                     ;A2D82C;
    dw $0001,Spritemap_Choot_0                                           ;A2D82E;
    dw Instruction_Common_Sleep                                          ;A2D832;

InstList_Choot_Jumping:
    dw Instruction_Common_EnableOffScreenProcessing                      ;A2D834;
    dw $0008,Spritemap_Choot_1                                           ;A2D836;
    dw $0001,Spritemap_Choot_2                                           ;A2D83A;
    dw Instruction_Common_Sleep                                          ;A2D83E;

InstList_Choot_Falling:
    dw Instruction_Common_EnableOffScreenProcessing                      ;A2D840;
    dw $0008,Spritemap_Choot_1                                           ;A2D842;
    dw $0001,Spritemap_Choot_3                                           ;A2D846;
    dw Instruction_CommonA2_Sleep                                        ;A2D84A;

ChootFallingPatternData_0_Normal:
; X,Y offsets from a fixed point. Terminated by X = 8000h

; Pattern 0 - normal. X radius 11h, Y distance 1Eh, 73 frames
    dw $0000,$0000, $0001,$0001, $0002,$0001, $0003,$0002                ;A2D84C;
    dw $0004,$0002, $0005,$0002, $0006,$0003, $0007,$0003                ;A2D85C;
    dw $0008,$0003, $0009,$0003, $000A,$0003, $000B,$0003                ;A2D86C;
    dw $000C,$0003, $000C,$0003, $000D,$0003, $000D,$0003                ;A2D87C;
    dw $000D,$0003, $000E,$0003, $000E,$0003, $000E,$0003                ;A2D88C;
    dw $000F,$0003, $000F,$0003, $0010,$0003, $0010,$0003                ;A2D89C;
    dw $0010,$0003, $0010,$0003, $0011,$0003, $0011,$0003                ;A2D8AC;
    dw $0010,$0005, $000F,$0006, $000E,$0008, $000C,$0009                ;A2D8BC;
    dw $000B,$000A, $000A,$000C, $0008,$000D, $0007,$000E                ;A2D8CC;
    dw $0006,$000E, $0004,$000F, $0003,$0010, $0002,$0010                ;A2D8DC;
    dw $0001,$0011, $0000,$0011, $FFFF,$0011, $FFFE,$0012                ;A2D8EC;
    dw $FFFC,$0012, $FFFC,$0012, $FFFB,$0012, $FFFA,$0012                ;A2D8FC;
    dw $FFF9,$0012, $FFF8,$0012, $FFF7,$0012, $FFF7,$0012                ;A2D90C;
    dw $FFF7,$0012, $FFF6,$0012, $FFF6,$0012, $FFF5,$0012                ;A2D91C;
    dw $FFF5,$0012, $FFF4,$0012, $FFF4,$0012, $FFF4,$0012                ;A2D92C;
    dw $FFF3,$0012, $FFF3,$0012, $FFF3,$0012, $FFF4,$0014                ;A2D93C;
    dw $FFF5,$0016, $FFF6,$0017, $FFF7,$0019, $FFF9,$001A                ;A2D94C;
    dw $FFFA,$001B, $FFFB,$001C, $FFFD,$001D, $FFFE,$001E                ;A2D95C;
    dw $FFFF,$001F, $8000,$8000                                          ;A2D96C;

ChootFallingPatternData_0_Normal_YDistance:
    dw $001E                                                             ;A2D974;

ChootFallingPatternData_1_Wide:
; Pattern 1 - wide. X radius 20h, Y distance 1Ch, 73 frames
    dw $0000,$0000, $0003,$0000, $0005,$0001, $0007,$0001                ;A2D976;
    dw $0009,$0002, $000B,$0002, $000D,$0002, $000E,$0002                ;A2D986;
    dw $0010,$0003, $0012,$0003, $0013,$0003, $0015,$0003                ;A2D996;
    dw $0016,$0003, $0017,$0003, $0018,$0003, $0019,$0003                ;A2D9A6;
    dw $0019,$0003, $001A,$0003, $001B,$0003, $001C,$0003                ;A2D9B6;
    dw $001D,$0003, $001E,$0003, $001E,$0003, $001F,$0003                ;A2D9C6;
    dw $001F,$0003, $0020,$0003, $0020,$0003, $0020,$0003                ;A2D9D6;
    dw $001E,$0004, $001C,$0006, $001A,$0007, $0017,$0008                ;A2D9E6;
    dw $0015,$000A, $0013,$000B, $0010,$000C, $000E,$000C                ;A2D9F6;
    dw $000B,$000D, $0009,$000E, $0007,$000E, $0005,$000F                ;A2DA06;
    dw $0002,$000F, $0000,$0010, $FFFE,$0010, $FFFC,$0010                ;A2DA16;
    dw $FFFA,$0010, $FFF9,$0011, $FFF7,$0011, $FFF5,$0011                ;A2DA26;
    dw $FFF4,$0011, $FFF2,$0011, $FFF1,$0011, $FFF0,$0011                ;A2DA36;
    dw $FFF0,$0011, $FFEF,$0011, $FFEE,$0011, $FFED,$0011                ;A2DA46;
    dw $FFEC,$0011, $FFEB,$0011, $FFEA,$0011, $FFEA,$0011                ;A2DA56;
    dw $FFE9,$0011, $FFE8,$0011, $FFE8,$0011, $FFEA,$0013                ;A2DA66;
    dw $FFEC,$0014, $FFEE,$0016, $FFF0,$0017, $FFF2,$0018                ;A2DA76;
    dw $FFF5,$0019, $FFF7,$001A, $FFFA,$001B, $FFFC,$001C                ;A2DA86;
    dw $FFFE,$001D, $8000,$8000                                          ;A2DA96;

ChootFallingPatternData_1_Wide_YDistance:
    dw $001C                                                             ;A2DA9E;

ChootFallingPatternData_2_VeryWide:
; Pattern 2 - very wide. X radius 2Dh, Y distance 20h, 73 frames
    dw $0000,$0000, $0003,$0001, $0006,$0001, $0009,$0002                ;A2DAA0;
    dw $000C,$0002, $000F,$0003, $0011,$0003, $0014,$0003                ;A2DAB0;
    dw $0016,$0003, $0018,$0003, $001A,$0003, $001C,$0004                ;A2DAC0;
    dw $001E,$0004, $0020,$0004, $0022,$0004, $0023,$0004                ;A2DAD0;
    dw $0024,$0004, $0025,$0004, $0026,$0004, $0028,$0004                ;A2DAE0;
    dw $0029,$0004, $002A,$0004, $002A,$0004, $002B,$0004                ;A2DAF0;
    dw $002C,$0003, $002D,$0003, $002D,$0003, $002D,$0003                ;A2DB00;
    dw $002A,$0005, $0027,$0007, $0024,$0009, $0021,$000A                ;A2DB10;
    dw $001E,$000B, $001A,$000D, $0017,$000E, $0014,$000F                ;A2DB20;
    dw $0010,$000F, $000D,$0010, $000A,$0011, $0006,$0011                ;A2DB30;
    dw $0003,$0012, $0000,$0012, $FFFD,$0013, $FFFB,$0013                ;A2DB40;
    dw $FFF8,$0013, $FFF6,$0013, $FFF3,$0013, $FFF1,$0014                ;A2DB50;
    dw $FFEF,$0014, $FFED,$0014, $FFEB,$0014, $FFE9,$0014                ;A2DB60;
    dw $FFE8,$0014, $FFE7,$0014, $FFE5,$0014, $FFE4,$0014                ;A2DB70;
    dw $FFE3,$0014, $FFE2,$0014, $FFE1,$0013, $FFE0,$0013                ;A2DB80;
    dw $FFDF,$0013, $FFDE,$0013, $FFDE,$0013, $FFE1,$0015                ;A2DB90;
    dw $FFE4,$0017, $FFE7,$0018, $FFEA,$001A, $FFEE,$001B                ;A2DBA0;
    dw $FFF1,$001C, $FFF4,$001D, $FFF8,$001E, $FFFB,$001F                ;A2DBB0;
    dw $FFFE,$0020, $8000,$8000                                          ;A2DBC0;

ChootFallingPatternData_2_VeryWide_YDistance:
    dw $0020                                                             ;A2DBC8;

ChootFallingPatternData_3_Slow:
; Pattern 3 - slow. X radius 11h, Y distance 1Eh, 93 frames
    dw $0000,$0000, $0001,$0001, $0002,$0001, $0003,$0002                ;A2DBCA;
    dw $0004,$0002, $0005,$0002, $0006,$0003, $0007,$0003                ;A2DBDA;
    dw $0008,$0003, $0009,$0003, $000A,$0003, $000B,$0003                ;A2DBEA;
    dw $000C,$0003, $000C,$0003, $000D,$0003, $000D,$0003                ;A2DBFA;
    dw $000D,$0003, $000E,$0003, $000E,$0003, $000E,$0003                ;A2DC0A;
    dw $000F,$0003, $000F,$0003, $0010,$0003, $0010,$0003                ;A2DC1A;
    dw $0010,$0003, $0010,$0003, $0011,$0003, $0011,$0003                ;A2DC2A;
    dw $0011,$0003, $0011,$0003, $0011,$0003, $0011,$0003                ;A2DC3A;
    dw $0011,$0003, $0011,$0003, $0011,$0003, $0011,$0003                ;A2DC4A;
    dw $0011,$0003, $0011,$0003, $0010,$0005, $000F,$0006                ;A2DC5A;
    dw $000E,$0008, $000C,$0009, $000B,$000A, $000A,$000C                ;A2DC6A;
    dw $0008,$000D, $0007,$000E, $0006,$000E, $0004,$000F                ;A2DC7A;
    dw $0003,$0010, $0002,$0010, $0001,$0011, $0000,$0011                ;A2DC8A;
    dw $FFFF,$0011, $FFFE,$0012, $FFFC,$0012, $FFFC,$0012                ;A2DC9A;
    dw $FFFB,$0012, $FFFA,$0012, $FFF9,$0012, $FFF8,$0012                ;A2DCAA;
    dw $FFF7,$0012, $FFF7,$0012, $FFF7,$0012, $FFF6,$0012                ;A2DCBA;
    dw $FFF6,$0012, $FFF5,$0012, $FFF5,$0012, $FFF4,$0012                ;A2DCCA;
    dw $FFF4,$0012, $FFF4,$0012, $FFF3,$0012, $FFF3,$0012                ;A2DCDA;
    dw $FFF3,$0012, $FFF3,$0012, $FFF3,$0012, $FFF3,$0012                ;A2DCEA;
    dw $FFF3,$0012, $FFF3,$0012, $FFF3,$0012, $FFF3,$0012                ;A2DCFA;
    dw $FFF3,$0012, $FFF3,$0012, $FFF3,$0012, $FFF4,$0014                ;A2DD0A;
    dw $FFF5,$0016, $FFF6,$0017, $FFF7,$0019, $FFF9,$001A                ;A2DD1A;
    dw $FFFA,$001B, $FFFB,$001C, $FFFD,$001D, $FFFE,$001E                ;A2DD2A;
    dw $FFFF,$001F, $8000,$8000                                          ;A2DD3A;

ChootFallingPatternData_3_Slow_YDistance:
    dw $001E                                                             ;A2DD42;

ChootFallingPatternData_4_VerySlow:
; Pattern 4 - very slow. X radius 11h, Y distance 1Eh, 133 frames
    dw $0000,$0000, $0001,$0001, $0002,$0001, $0003,$0002                ;A2DD44;
    dw $0004,$0002, $0005,$0002, $0006,$0003, $0007,$0003                ;A2DD54;
    dw $0008,$0003, $0009,$0003, $000A,$0003, $000B,$0003                ;A2DD64;
    dw $000C,$0003, $000C,$0003, $000D,$0003, $000D,$0003                ;A2DD74;
    dw $000D,$0003, $000E,$0003, $000E,$0003, $000E,$0003                ;A2DD84;
    dw $000F,$0003, $000F,$0003, $0010,$0003, $0010,$0003                ;A2DD94;
    dw $0010,$0003, $0010,$0003, $0011,$0003, $0011,$0003                ;A2DDA4;
    dw $0011,$0003, $0011,$0003, $0011,$0003, $0011,$0003                ;A2DDB4;
    dw $0011,$0003, $0011,$0003, $0011,$0003, $0011,$0003                ;A2DDC4;
    dw $0011,$0003, $0011,$0003, $0011,$0003, $0011,$0003                ;A2DDD4;
    dw $0011,$0003, $0011,$0003, $0011,$0003, $0011,$0003                ;A2DDE4;
    dw $0011,$0003, $0011,$0003, $0011,$0003, $0011,$0003                ;A2DDF4;
    dw $0011,$0003, $0011,$0003, $0011,$0003, $0011,$0003                ;A2DE04;
    dw $0011,$0003, $0011,$0003, $0011,$0003, $0011,$0003                ;A2DE14;
    dw $0011,$0003, $0011,$0003, $0010,$0005, $000F,$0006                ;A2DE24;
    dw $000E,$0008, $000C,$0009, $000B,$000A, $000A,$000C                ;A2DE34;
    dw $0008,$000D, $0007,$000E, $0006,$000E, $0004,$000F                ;A2DE44;
    dw $0003,$0010, $0002,$0010, $0001,$0011, $0000,$0011                ;A2DE54;
    dw $FFFF,$0011, $FFFE,$0012, $FFFC,$0012, $FFFC,$0012                ;A2DE64;
    dw $FFFB,$0012, $FFFA,$0012, $FFF9,$0012, $FFF8,$0012                ;A2DE74;
    dw $FFF7,$0012, $FFF7,$0012, $FFF7,$0012, $FFF6,$0012                ;A2DE84;
    dw $FFF6,$0012, $FFF5,$0012, $FFF5,$0012, $FFF4,$0012                ;A2DE94;
    dw $FFF4,$0012, $FFF4,$0012, $FFF3,$0012, $FFF3,$0012                ;A2DEA4;
    dw $FFF3,$0012, $FFF3,$0012, $FFF3,$0012, $FFF3,$0012                ;A2DEB4;
    dw $FFF3,$0012, $FFF3,$0012, $FFF3,$0012, $FFF3,$0012                ;A2DEC4;
    dw $FFF3,$0012, $FFF3,$0012, $FFF3,$0012, $FFF3,$0012                ;A2DED4;
    dw $FFF3,$0012, $FFF3,$0012, $FFF3,$0012, $FFF3,$0012                ;A2DEE4;
    dw $FFF3,$0012, $FFF3,$0012, $FFF3,$0012, $FFF3,$0012                ;A2DEF4;
    dw $FFF3,$0012, $FFF3,$0012, $FFF3,$0012, $FFF3,$0012                ;A2DF04;
    dw $FFF3,$0012, $FFF3,$0012, $FFF3,$0012, $FFF3,$0012                ;A2DF14;
    dw $FFF3,$0012, $FFF3,$0012, $FFF3,$0012, $FFF4,$0014                ;A2DF24;
    dw $FFF5,$0016, $FFF6,$0017, $FFF7,$0019, $FFF9,$001A                ;A2DF34;
    dw $FFFA,$001B, $FFFB,$001C, $FFFD,$001D, $FFFE,$001E                ;A2DF44;
    dw $FFFF,$001F, $8000,$8000                                          ;A2DF54;

ChootFallingPatternData_4_VerySlow_YDistance:
    dw $001E                                                             ;A2DF5C;


ChootFallingPatternDataPointers:
; Last entries are garbage pointers
  .offsets:
    dw ChootFallingPatternData_0_Normal                                  ;A2DF5E;
    dw ChootFallingPatternData_1_Wide                                    ;A2DF60;
    dw ChootFallingPatternData_2_VeryWide                                ;A2DF62;
    dw ChootFallingPatternData_3_Slow                                    ;A2DF64;
    dw ChootFallingPatternData_4_VerySlow                                ;A2DF66;
    dw ChootFallingPatternDataPointers_offsets                           ;A2DF68;
  .YDistance:
    dw ChootFallingPatternData_0_Normal_YDistance                        ;A2DF6A;
    dw ChootFallingPatternData_1_Wide_YDistance                          ;A2DF6C;
    dw ChootFallingPatternData_2_VeryWide_YDistance                      ;A2DF6E;
    dw ChootFallingPatternData_3_Slow_YDistance                          ;A2DF70;
    dw ChootFallingPatternData_4_VerySlow_YDistance                      ;A2DF72;
    dw ChootFallingPatternDataPointers_offsets                           ;A2DF74;

InitAI_Choot:
    LDX.W $0E54                                                          ;A2DF76;
    LDA.W #InstList_Choot_Idle                                           ;A2DF79;
    JSR.W SetChootInstList                                               ;A2DF7C;
    LDA.W #Function_Choot_WaitForSamusToGetNear                          ;A2DF7F;
    STA.W $0FA8,X                                                        ;A2DF82;
    LDA.W $0F7A,X                                                        ;A2DF85;
    STA.L $7E7800,X                                                      ;A2DF88;
    LDA.W $0F7E,X                                                        ;A2DF8C;
    STA.L $7E7802,X                                                      ;A2DF8F;
    LDA.W $0FB5,X                                                        ;A2DF93;
    AND.W #$00FF                                                         ;A2DF96;
    ASL A                                                                ;A2DF99;
    TAY                                                                  ;A2DF9A;
    LDA.W ChootFallingPatternDataPointers_offsets,Y                      ;A2DF9B;
    STA.W $0FB0,X                                                        ;A2DF9E;
    LDA.W ChootFallingPatternDataPointers_YDistance,Y                    ;A2DFA1;
    TAY                                                                  ;A2DFA4;
    LDA.W $0000,Y                                                        ;A2DFA5;
    STA.W $0FB2,X                                                        ;A2DFA8;
    JSR.W CalculateChootJumpHeight                                       ;A2DFAB;
    JSR.W CalculateChootInitialJumpSpeed                                 ;A2DFAE;
    LDA.B $18                                                            ;A2DFB1; >_<
    LDA.L $7E7802,X                                                      ;A2DFB3;
    SEC                                                                  ;A2DFB7;
    SBC.B $12                                                            ;A2DFB8;
    STA.L $7E7806,X                                                      ;A2DFBA;
    LDA.L $7E7800,X                                                      ;A2DFBE;
    STA.L $7E7804,X                                                      ;A2DFC2;
    LDA.L $7E780C,X                                                      ;A2DFC6;
    STA.W $0FAA,X                                                        ;A2DFCA;
    RTL                                                                  ;A2DFCD;


CalculateChootJumpHeight:
    PHP                                                                  ;A2DFCE;
    SEP #$20                                                             ;A2DFCF;
    LDA.W $0FB4,X                                                        ;A2DFD1;
    STA.W $4202                                                          ;A2DFD4;
    LDA.W $0FB2,X                                                        ;A2DFD7;
    STA.W $4203                                                          ;A2DFDA;
    NOP                                                                  ;A2DFDD;
    NOP                                                                  ;A2DFDE;
    NOP                                                                  ;A2DFDF;
    REP #$20                                                             ;A2DFE0;
    LDA.W $4216                                                          ;A2DFE2;
    STA.B $12                                                            ;A2DFE5;
    PLP                                                                  ;A2DFE7;
    RTS                                                                  ;A2DFE8;


CalculateChootInitialJumpSpeed:
    STZ.B $14                                                            ;A2DFE9;
    STZ.B $16                                                            ;A2DFEB;
    STZ.B $18                                                            ;A2DFED;

.loop:
    LDA.B $18                                                            ;A2DFEF;
    CLC                                                                  ;A2DFF1;
    ADC.W #$0200                                                         ;A2DFF2;
    STA.B $18                                                            ;A2DFF5;
    AND.W #$FF00                                                         ;A2DFF7;
    XBA                                                                  ;A2DFFA;
    ASL A                                                                ;A2DFFB;
    ASL A                                                                ;A2DFFC;
    ASL A                                                                ;A2DFFD;
    TAY                                                                  ;A2DFFE;
    LDA.B $14                                                            ;A2DFFF;
    CLC                                                                  ;A2E001;
    ADC.W CommonEnemySpeeds_QuadraticallyIncreasing,Y                    ;A2E002;
    BCC +                                                                ;A2E005;
    INC.B $16                                                            ;A2E007;

  + STA.B $14                                                            ;A2E009;
    LDA.B $16                                                            ;A2E00B;
    CLC                                                                  ;A2E00D;
    ADC.W CommonEnemySpeeds_QuadraticallyIncreasing+2,Y                  ;A2E00E;
    STA.B $16                                                            ;A2E011;
    CMP.B $12                                                            ;A2E013;
    BMI .loop                                                            ;A2E015;
    LDA.B $18                                                            ;A2E017;
    STA.L $7E780C,X                                                      ;A2E019;
    RTS                                                                  ;A2E01D;


SetChootInstList:
    LDX.W $0E54                                                          ;A2E01E;
    STA.W $0F92,X                                                        ;A2E021;
    LDA.W #$0001                                                         ;A2E024;
    STA.W $0F94,X                                                        ;A2E027;
    STZ.W $0F90,X                                                        ;A2E02A;
    RTS                                                                  ;A2E02D;


MainAI_Choot:
    LDX.W $0E54                                                          ;A2E02E;
    JSR.W ($0FA8,X)                                                      ;A2E031;
    RTL                                                                  ;A2E034;


Function_Choot_WaitForSamusToGetNear:
    LDX.W $0E54                                                          ;A2E035;
    LDA.W #$0050                                                         ;A2E038;
    JSL.L IsSamusWithinAPixelColumnsOfEnemy                              ;A2E03B;
    BEQ .return                                                          ;A2E03F;
    LDA.W $0FB6,X                                                        ;A2E041;
    STA.L $7E780E,X                                                      ;A2E044;
    LDA.W #Function_Choot_PrepareToJump                                  ;A2E048;
    STA.W $0FA8,X                                                        ;A2E04B;

.return:
    RTS                                                                  ;A2E04E;


Function_Choot_PrepareToJump:
    LDX.W $0E54                                                          ;A2E04F;
    LDA.L $7E780E,X                                                      ;A2E052;
    DEC A                                                                ;A2E056;
    STA.L $7E780E,X                                                      ;A2E057;
    BPL .return                                                          ;A2E05B;
    LDA.W #InstList_Choot_Jumping                                        ;A2E05D;
    JSR.W SetChootInstList                                               ;A2E060;
    LDA.W #Function_Choot_Jumping                                        ;A2E063;
    STA.W $0FA8,X                                                        ;A2E066;

.return:
    RTS                                                                  ;A2E069;


Function_Choot_Jumping:
    LDX.W $0E54                                                          ;A2E06A;
    LDA.W $0FAA,X                                                        ;A2E06D;
    AND.W #$FF00                                                         ;A2E070;
    XBA                                                                  ;A2E073;
    ASL A                                                                ;A2E074;
    ASL A                                                                ;A2E075;
    ASL A                                                                ;A2E076;
    TAY                                                                  ;A2E077;
    LDA.W $0F80,X                                                        ;A2E078;
    CLC                                                                  ;A2E07B;
    ADC.W CommonEnemySpeeds_QuadraticallyIncreasing+4,Y                  ;A2E07C;
    BCC +                                                                ;A2E07F;
    INC.W $0F7E,X                                                        ;A2E081;

  + STA.W $0F80,X                                                        ;A2E084;
    LDA.W $0F7E,X                                                        ;A2E087;
    CLC                                                                  ;A2E08A;
    ADC.W CommonEnemySpeeds_QuadraticallyIncreasing+6,Y                  ;A2E08B;
    STA.W $0F7E,X                                                        ;A2E08E;
    LDA.W $0FAA,X                                                        ;A2E091;
    SEC                                                                  ;A2E094;
    SBC.W #$0200                                                         ;A2E095;
    STA.W $0FAA,X                                                        ;A2E098;
    BPL .return                                                          ;A2E09B;
    LDA.L $7E7804,X                                                      ;A2E09D;
    STA.W $0F7A,X                                                        ;A2E0A1;
    STA.L $7E7808,X                                                      ;A2E0A4;
    LDA.L $7E7806,X                                                      ;A2E0A8;
    STA.W $0F7E,X                                                        ;A2E0AC;
    STA.L $7E780A,X                                                      ;A2E0AF;
    STZ.W $0FAC,X                                                        ;A2E0B3;
    LDA.W $0FB4,X                                                        ;A2E0B6;
    AND.W #$00FF                                                         ;A2E0B9;
    DEC A                                                                ;A2E0BC;
    STA.W $0FAE,X                                                        ;A2E0BD;
    LDA.W #InstList_Choot_Falling                                        ;A2E0C0;
    JSR.W SetChootInstList                                               ;A2E0C3;
    LDA.W #Function_Choot_Falling                                        ;A2E0C6;
    STA.W $0FA8,X                                                        ;A2E0C9;

.return:
    RTS                                                                  ;A2E0CC;


Function_Choot_Falling:
    LDX.W $0E54                                                          ;A2E0CD;
    LDA.W $0FAC,X                                                        ;A2E0D0;
    AND.W #$FF00                                                         ;A2E0D3;
    XBA                                                                  ;A2E0D6;
    ASL A                                                                ;A2E0D7;
    ASL A                                                                ;A2E0D8;
    CLC                                                                  ;A2E0D9;
    ADC.W $0FB0,X                                                        ;A2E0DA;
    TAY                                                                  ;A2E0DD;
    LDA.W $0000,Y                                                        ;A2E0DE;
    CMP.W #$8000                                                         ;A2E0E1;
    BNE +                                                                ;A2E0E4;
    LDA.L $7E780A,X                                                      ;A2E0E6;
    CLC                                                                  ;A2E0EA;
    ADC.W $0FB2,X                                                        ;A2E0EB;
    STA.L $7E780A,X                                                      ;A2E0EE;
    STZ.W $0FAC,X                                                        ;A2E0F2;
    DEC.W $0FAE,X                                                        ;A2E0F5;
    BPL .return                                                          ;A2E0F8;
    LDA.L $7E780C,X                                                      ;A2E0FA;
    STA.W $0FAA,X                                                        ;A2E0FE;
    LDA.L $7E7800,X                                                      ;A2E101;
    STA.W $0F7A,X                                                        ;A2E105;
    STZ.W $0F7C,X                                                        ;A2E108;
    LDA.L $7E7802,X                                                      ;A2E10B;
    STA.W $0F7E,X                                                        ;A2E10F;
    STZ.W $0F80,X                                                        ;A2E112;
    LDA.W #InstList_Choot_Idle                                           ;A2E115;
    JSR.W SetChootInstList                                               ;A2E118;
    LDA.W #Function_Choot_WaitForSamusToGetNear                          ;A2E11B;
    STA.W $0FA8,X                                                        ;A2E11E;
    BRA .return                                                          ;A2E121;


  + LDA.L $7E7808,X                                                      ;A2E123;
    CLC                                                                  ;A2E127;
    ADC.W $0000,Y                                                        ;A2E128;
    STA.W $0F7A,X                                                        ;A2E12B;
    LDA.L $7E780A,X                                                      ;A2E12E;
    CLC                                                                  ;A2E132;
    ADC.W $0002,Y                                                        ;A2E133;
    STA.W $0F7E,X                                                        ;A2E136;
    LDA.W $0FAC,X                                                        ;A2E139;
    CLC                                                                  ;A2E13C;
    ADC.W #$0100                                                         ;A2E13D;
    STA.W $0FAC,X                                                        ;A2E140;

.return:
    RTS                                                                  ;A2E143;


RTL_A2E144:
    RTL                                                                  ;A2E144;


RTL_A2E145:
    RTL                                                                  ;A2E145;


Spritemap_Choot_0:
    dw $0004                                                             ;A2E146;
    %spritemapEntry(0, $1F0, $FC, 0, 1, 2, 0, $107)
    %spritemapEntry(0, $1F8, $FC, 0, 1, 2, 0, $106)
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $107)
    %spritemapEntry(0, $00, $FC, 0, 0, 2, 0, $106)

Spritemap_Choot_1:
    dw $0002                                                             ;A2E15C;
    %spritemapEntry(1, $43F0, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $4200, $F8, 0, 0, 2, 0, $102)

Spritemap_Choot_2:
    dw $0001                                                             ;A2E168;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $100)

Spritemap_Choot_3:
    dw $0002                                                             ;A2E16F;
    %spritemapEntry(1, $43F0, $F8, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $4200, $F8, 0, 0, 2, 0, $104)

Palette_GRipper:
    dw $3800,$4B9C,$3694,$0929,$0042,$3B18,$2A52,$19AD                   ;A2E17B;
    dw $116B,$7F5A,$7EC0,$6DE0,$54E0,$001D,$0014,$000A                   ;A2E18B;

InstList_GRipper_MovingLeft:
    dw $0008,Spritemap_GRipper_Ripper2_0                                 ;A2E19B;
    dw $0007,Spritemap_GRipper_Ripper2_1                                 ;A2E19F;
    dw $0008,Spritemap_GRipper_Ripper2_0                                 ;A2E1A3;
    dw $0007,Spritemap_GRipper_Ripper2_2                                 ;A2E1A7;
    dw Instruction_Common_GotoY                                          ;A2E1AB;
    dw InstList_GRipper_MovingLeft                                       ;A2E1AD;

InstList_GRipper_MovingRight:
    dw $0008,Spritemap_GRipper_Ripper2_3                                 ;A2E1AF;
    dw $0007,Spritemap_GRipper_Ripper2_4                                 ;A2E1B3;
    dw $0008,Spritemap_GRipper_Ripper2_3                                 ;A2E1B7;
    dw $0007,Spritemap_GRipper_Ripper2_5                                 ;A2E1BB;
    dw Instruction_Common_GotoY                                          ;A2E1BF;
    dw InstList_GRipper_MovingRight                                      ;A2E1C1;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_InstList_GRipper_FacingLeft_A2E1C3:
    dw $0010,Spritemap_GRipper_Ripper2_6                                 ;A2E1C3;
    dw Instruction_Common_GotoY                                          ;A2E1C7;
    dw UNUSED_InstList_GRipper_FacingLeft_A2E1C3                         ;A2E1C9;

UNUSED_InstList_GRipper_FacingRight_A2E1CB:
    dw $0010,Spritemap_GRipper_Ripper2_7                                 ;A2E1CB;
    dw Instruction_CommonA2_GotoY                                        ;A2E1CF;
    dw UNUSED_InstList_GRipper_FacingRight_A2E1CB                        ;A2E1D1;
endif ; !FEATURE_KEEP_UNREFERENCED

InitAI_GRipper:
    LDX.W $0E54                                                          ;A2E1D3;
    LDA.W $0F92,X                                                        ;A2E1D6;
    AND.W #$00FF                                                         ;A2E1D9;
    ASL A                                                                ;A2E1DC;
    ASL A                                                                ;A2E1DD;
    ASL A                                                                ;A2E1DE;
    STA.W $0FB0,X                                                        ;A2E1DF;
    TAY                                                                  ;A2E1E2;
    LDA.W $0F92,X                                                        ;A2E1E3;
    BIT.W #$FEFF                                                         ;A2E1E6;
    BEQ .negateSpeed                                                     ;A2E1E9;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A2E1EB;
    STA.W $0FAE,X                                                        ;A2E1EE;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A2E1F1;
    STA.W $0FAC,X                                                        ;A2E1F4;
    BRA +                                                                ;A2E1F7;


.negateSpeed:
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+4,Y                       ;A2E1F9;
    STA.W $0FAE,X                                                        ;A2E1FC;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+6,Y                       ;A2E1FF;
    STA.W $0FAC,X                                                        ;A2E202;

  + LDY.W #InstList_GRipper_MovingLeft                                   ;A2E205;
    LDA.W $0FAE,X                                                        ;A2E208;
    BMI .setMinMaxX                                                      ;A2E20B;
    LDY.W #InstList_GRipper_MovingRight                                  ;A2E20D;

.setMinMaxX:
    TYA                                                                  ;A2E210;
    STA.W $0F92,X                                                        ;A2E211;
    LDA.W $0FB4,X                                                        ;A2E214;
    STA.W $0FA8,X                                                        ;A2E217;
    LDA.W $0FB6,X                                                        ;A2E21A;
    STA.W $0FAA,X                                                        ;A2E21D;
    RTL                                                                  ;A2E220;


MainAI_GRipper:
    LDX.W $0E54                                                          ;A2E221;
    LDA.W $0FAC,X                                                        ;A2E224;
    STA.B $12                                                            ;A2E227;
    LDA.W $0FAE,X                                                        ;A2E229;
    STA.B $14                                                            ;A2E22C;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A2E22E;
    BCS .collidedWithWall                                                ;A2E232;
    JSR.W CheckIfGRipperMovedLeftTooFar                                  ;A2E234;
    BCS .collidedWithWall                                                ;A2E237;
    JSR.W CheckIfGRipperMovedRightTooFar                                 ;A2E239;
    BCS .collidedWithWall                                                ;A2E23C;
    RTL                                                                  ;A2E23E;


.collidedWithWall:
    LDX.W $0E54                                                          ;A2E23F;
    LDA.W $0FB0,X                                                        ;A2E242;
    TAY                                                                  ;A2E245;
    LDA.W $0FAE,X                                                        ;A2E246;
    BPL .movingLeft                                                      ;A2E249;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A2E24B;
    STA.W $0FAE,X                                                        ;A2E24E;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A2E251;
    STA.W $0FAC,X                                                        ;A2E254;
    LDY.W #InstList_GRipper_MovingRight                                  ;A2E257;
    BRA .setInstList                                                     ;A2E25A;


.movingLeft:
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+4,Y                       ;A2E25C;
    STA.W $0FAE,X                                                        ;A2E25F;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+6,Y                       ;A2E262;
    STA.W $0FAC,X                                                        ;A2E265;
    LDY.W #InstList_GRipper_MovingLeft                                   ;A2E268;

.setInstList:
    TYA                                                                  ;A2E26B;
    STA.W $0F92,X                                                        ;A2E26C;
    LDA.W #$0001                                                         ;A2E26F;
    STA.W $0F94,X                                                        ;A2E272;
    STZ.W $0F90,X                                                        ;A2E275;
    RTL                                                                  ;A2E278;


CheckIfGRipperMovedLeftTooFar:
    LDA.W $0FAE,X                                                        ;A2E279;
    BPL .notTooFar                                                       ;A2E27C;
    LDA.W $0F7A,X                                                        ;A2E27E;
    CMP.W $0FA8,X                                                        ;A2E281;
    BPL .notTooFar                                                       ;A2E284;
    SEC                                                                  ;A2E286;
    RTS                                                                  ;A2E287;


.notTooFar:
    CLC                                                                  ;A2E288;
    RTS                                                                  ;A2E289;


CheckIfGRipperMovedRightTooFar:
    LDA.W $0FAE,X                                                        ;A2E28A;
    BMI .notTooFar                                                       ;A2E28D;
    LDA.W $0F7A,X                                                        ;A2E28F;
    CMP.W $0FAA,X                                                        ;A2E292;
    BMI .notTooFar                                                       ;A2E295;
    SEC                                                                  ;A2E297;
    RTS                                                                  ;A2E298;


.notTooFar:
    CLC                                                                  ;A2E299;
    RTS                                                                  ;A2E29A;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_FrozenAI_GRipper_A2E29B:
    LDX.W $0E54                                                          ;A2E29B;
    JSL.L CommonA2_NormalEnemyFrozenAI                                   ;A2E29E;
    RTL                                                                  ;A2E2A2;
endif ; !FEATURE_KEEP_UNREFERENCED


RTL_A2E2A3:
    RTL                                                                  ;A2E2A3;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_EnemyShot_A2E2A4:
    JSL.L NormalEnemyShotAI                                              ;A2E2A4;
    LDX.W $0E54                                                          ;A2E2A8;
    LDA.W $0F9E,X                                                        ;A2E2AB;
    BEQ .return                                                          ;A2E2AE;
    LDY.W #Spritemap_GRipper_Ripper2_6                                   ;A2E2B0;
    LDA.W $0FAE,X                                                        ;A2E2B3;
    BMI +                                                                ;A2E2B6;
    LDY.W #Spritemap_GRipper_Ripper2_7                                   ;A2E2B8;

  + TYA                                                                  ;A2E2BB;
    STA.W $0F8E,X                                                        ;A2E2BC;

.return:
    RTL                                                                  ;A2E2BF;
endif ; !FEATURE_KEEP_UNREFERENCED


Palette_Ripper2:
    dw $3800,$021D,$0015,$0008,$0003,$00BD,$0013,$000E                   ;A2E2C0;
    dw $000B,$17BE,$1A9F,$0C53,$084B,$7EC0,$6DE0,$54E0                   ;A2E2D0;

InstList_Ripper2_MovingRight:
    dw $0008,Spritemap_GRipper_Ripper2_0                                 ;A2E2E0;
    dw $0007,Spritemap_GRipper_Ripper2_1                                 ;A2E2E4;
    dw $0008,Spritemap_GRipper_Ripper2_0                                 ;A2E2E8;
    dw $0007,Spritemap_GRipper_Ripper2_2                                 ;A2E2EC;
    dw Instruction_CommonA2_GotoY                                        ;A2E2F0;
    dw InstList_Ripper2_MovingRight                                      ;A2E2F2;

InstList_Ripper2_MovingLeft:
    dw $0008,Spritemap_GRipper_Ripper2_3                                 ;A2E2F4;
    dw $0007,Spritemap_GRipper_Ripper2_4                                 ;A2E2F8;
    dw $0008,Spritemap_GRipper_Ripper2_3                                 ;A2E2FC;
    dw $0007,Spritemap_GRipper_Ripper2_5                                 ;A2E300;
    dw Instruction_CommonA2_GotoY                                        ;A2E304;
    dw InstList_Ripper2_MovingLeft                                       ;A2E306;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_InstList_Ripper2_FacingLeft_A2E308:
    dw $0010,Spritemap_GRipper_Ripper2_6                                 ;A2E308;
    dw Instruction_Common_GotoY                                          ;A2E30C;
    dw UNUSED_InstList_Ripper2_FacingLeft_A2E308                         ;A2E30E;

UNUSED_InstList_Ripper2_FacingRight_A2E310:
    dw $0010,Spritemap_GRipper_Ripper2_7                                 ;A2E310;
    dw Instruction_Common_GotoY                                          ;A2E314;
    dw UNUSED_InstList_Ripper2_FacingRight_A2E310                        ;A2E316;
endif ; !FEATURE_KEEP_UNREFERENCED

InitAI_Ripper2:
    LDX.W $0E54                                                          ;A2E318;
    LDY.W #InstList_Ripper2_MovingRight                                  ;A2E31B;
    LDA.W $0FB6,X                                                        ;A2E31E;
    BEQ .keepLeft                                                        ;A2E321;
    LDY.W #InstList_Ripper2_MovingLeft                                   ;A2E323;

.keepLeft:
    TYA                                                                  ;A2E326;
    STA.W $0F92,X                                                        ;A2E327;
    LDA.W $0FB4,X                                                        ;A2E32A;
    ASL A                                                                ;A2E32D;
    ASL A                                                                ;A2E32E;
    ASL A                                                                ;A2E32F;
    STA.W $0FB0,X                                                        ;A2E330;
    TAY                                                                  ;A2E333;
    LDA.W $0FB6,X                                                        ;A2E334;
    BEQ +                                                                ;A2E337;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A2E339;
    STA.W $0FAE,X                                                        ;A2E33C;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A2E33F;
    STA.W $0FAC,X                                                        ;A2E342;
    RTL                                                                  ;A2E345;


  + LDA.W CommonEnemySpeeds_LinearlyIncreasing+4,Y                       ;A2E346;
    STA.W $0FAE,X                                                        ;A2E349;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+6,Y                       ;A2E34C;
    STA.W $0FAC,X                                                        ;A2E34F;
    RTL                                                                  ;A2E352;


MainAI_Ripper2:
    LDX.W $0E54                                                          ;A2E353;
    LDA.W $0FAC,X                                                        ;A2E356;
    STA.B $12                                                            ;A2E359;
    LDA.W $0FAE,X                                                        ;A2E35B;
    STA.B $14                                                            ;A2E35E;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A2E360;
    BCC .return                                                          ;A2E364;
    LDX.W $0E54                                                          ;A2E366;
    LDA.W $0FB0,X                                                        ;A2E369;
    TAY                                                                  ;A2E36C;
    LDA.W $0FAE,X                                                        ;A2E36D;
    BPL .movingLeft                                                      ;A2E370;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A2E372;
    STA.W $0FAE,X                                                        ;A2E375;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A2E378;
    STA.W $0FAC,X                                                        ;A2E37B;
    LDY.W #InstList_Ripper2_MovingLeft                                   ;A2E37E;
    BRA +                                                                ;A2E381;


.movingLeft:
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+4,Y                       ;A2E383;
    STA.W $0FAE,X                                                        ;A2E386;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+6,Y                       ;A2E389;
    STA.W $0FAC,X                                                        ;A2E38C;
    LDY.W #InstList_Ripper2_MovingRight                                  ;A2E38F;

  + TYA                                                                  ;A2E392;
    STA.W $0F92,X                                                        ;A2E393;
    LDA.W #$0001                                                         ;A2E396;
    STA.W $0F94,X                                                        ;A2E399;
    STZ.W $0F90,X                                                        ;A2E39C;

.return:
    RTL                                                                  ;A2E39F;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_FrozenAI_Ripper2_A2E3A0:
    LDX.W $0E54                                                          ;A2E3A0;
    JSL.L CommonA2_NormalEnemyFrozenAI                                   ;A2E3A3;
    RTL                                                                  ;A2E3A7;
endif ; !FEATURE_KEEP_UNREFERENCED


RTL_A2E3A8:
    RTL                                                                  ;A2E3A8;


EnemyShot_GRipper_Ripper2:
    JSL.L NormalEnemyShotAI                                              ;A2E3A9;
    LDX.W $0E54                                                          ;A2E3AD;
    LDA.W $0F9E,X                                                        ;A2E3B0;
    BEQ .return                                                          ;A2E3B3;
    LDY.W #Spritemap_GRipper_Ripper2_6                                   ;A2E3B5;
    LDA.W $0FAE,X                                                        ;A2E3B8;
    BMI .setSpritemap                                                    ;A2E3BB;
    LDY.W #Spritemap_GRipper_Ripper2_7                                   ;A2E3BD;

.setSpritemap:
    TYA                                                                  ;A2E3C0;
    STA.W $0F8E,X                                                        ;A2E3C1;

.return:
    RTL                                                                  ;A2E3C4;


Spritemap_GRipper_Ripper2_0:
    dw $0004                                                             ;A2E3C5;
    %spritemapEntry(0, $14, $FF, 0, 0, 2, 0, $119)
    %spritemapEntry(0, $0C, $FF, 0, 0, 2, 0, $118)
    %spritemapEntry(0, $1F4, $FD, 0, 0, 2, 0, $114)
    %spritemapEntry(1, $1FC, $F8, 0, 0, 2, 0, $105)

Spritemap_GRipper_Ripper2_1:
    dw $0003                                                             ;A2E3DB;
    %spritemapEntry(0, $0C, $FF, 0, 0, 2, 0, $11A)
    %spritemapEntry(0, $1F4, $FD, 0, 0, 2, 0, $107)
    %spritemapEntry(1, $1FC, $F8, 0, 0, 2, 0, $105)

Spritemap_GRipper_Ripper2_2:
    dw $0004                                                             ;A2E3EC;
    %spritemapEntry(0, $14, $FF, 0, 0, 2, 0, $109)
    %spritemapEntry(0, $0C, $FF, 0, 0, 2, 0, $108)
    %spritemapEntry(0, $1F4, $FD, 0, 0, 2, 0, $117)
    %spritemapEntry(1, $1FC, $F8, 0, 0, 2, 0, $105)

Spritemap_GRipper_Ripper2_3:
    dw $0004                                                             ;A2E402;
    %spritemapEntry(0, $1E4, $FF, 0, 1, 2, 0, $119)
    %spritemapEntry(0, $1EC, $FF, 0, 1, 2, 0, $118)
    %spritemapEntry(0, $04, $FD, 0, 1, 2, 0, $114)
    %spritemapEntry(1, $1F4, $F8, 0, 1, 2, 0, $105)

Spritemap_GRipper_Ripper2_4:
    dw $0003                                                             ;A2E418;
    %spritemapEntry(0, $1EC, $FF, 0, 1, 2, 0, $11A)
    %spritemapEntry(0, $04, $FD, 0, 1, 2, 0, $107)
    %spritemapEntry(1, $1F4, $F8, 0, 1, 2, 0, $105)

Spritemap_GRipper_Ripper2_5:
    dw $0004                                                             ;A2E429;
    %spritemapEntry(0, $1EC, $FF, 0, 1, 2, 0, $108)
    %spritemapEntry(0, $1E4, $FF, 0, 1, 2, 0, $109)
    %spritemapEntry(0, $04, $FD, 0, 1, 2, 0, $117)
    %spritemapEntry(1, $1F4, $F8, 0, 1, 2, 0, $105)

Spritemap_GRipper_Ripper2_6:
    dw $0002                                                             ;A2E43F;
    %spritemapEntry(0, $1F4, $FD, 0, 0, 2, 0, $114)
    %spritemapEntry(1, $1FC, $F8, 0, 0, 2, 0, $105)

Spritemap_GRipper_Ripper2_7:
    dw $0002                                                             ;A2E44B;
    %spritemapEntry(0, $04, $FD, 0, 1, 2, 0, $114)
    %spritemapEntry(1, $1F4, $F8, 0, 1, 2, 0, $105)


Palette_Ripper:
    dw $3800,$2F1F,$0932,$006A,$0003,$221C,$19B6,$1551                   ;A2E457;
    dw $10EC,$17BE,$189F,$0C53,$084B,$3BE0,$2680,$1580                   ;A2E467;

InstList_Ripper_MovingRight:
    dw $0008,Spritemap_Ripper_MovingRight_0                              ;A2E477;
    dw $0007,Spritemap_Ripper_MovingRight_1                              ;A2E47B;
    dw $0008,Spritemap_Ripper_MovingRight_0                              ;A2E47F;
    dw $0007,Spritemap_Ripper_MovingRight_2                              ;A2E483;
    dw Instruction_Common_GotoY                                          ;A2E487;
    dw InstList_Ripper_MovingRight                                       ;A2E489;

InstList_Ripper_MovingLeft:
    dw $0008,Spritemap_Ripper_MovingLeft_0                               ;A2E48B;
    dw $0007,Spritemap_Ripper_MovingLeft_1                               ;A2E48F;
    dw $0008,Spritemap_Ripper_MovingLeft_0                               ;A2E493;
    dw $0007,Spritemap_Ripper_MovingLeft_2                               ;A2E497;
    dw Instruction_Common_GotoY                                          ;A2E49B;
    dw InstList_Ripper_MovingLeft                                        ;A2E49D;

InitAI_Ripper:
    LDX.W $0E54                                                          ;A2E49F;
    LDY.W #InstList_Ripper_MovingRight                                   ;A2E4A2;
    LDA.W $0FB6,X                                                        ;A2E4A5;
    BNE .keepRight                                                       ;A2E4A8;
    LDY.W #InstList_Ripper_MovingLeft                                    ;A2E4AA;

.keepRight:
    TYA                                                                  ;A2E4AD;
    STA.W $0F92,X                                                        ;A2E4AE;
    LDA.W $0FB4,X                                                        ;A2E4B1;
    ASL A                                                                ;A2E4B4;
    ASL A                                                                ;A2E4B5;
    ASL A                                                                ;A2E4B6;
    STA.W $0FB0,X                                                        ;A2E4B7;
    TAY                                                                  ;A2E4BA;
    LDA.W $0FB6,X                                                        ;A2E4BB;
    BEQ +                                                                ;A2E4BE;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A2E4C0;
    STA.W $0FAE,X                                                        ;A2E4C3;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A2E4C6;
    STA.W $0FAC,X                                                        ;A2E4C9;
    RTL                                                                  ;A2E4CC;


  + LDA.W CommonEnemySpeeds_LinearlyIncreasing+4,Y                       ;A2E4CD;
    STA.W $0FAE,X                                                        ;A2E4D0;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+6,Y                       ;A2E4D3;
    STA.W $0FAC,X                                                        ;A2E4D6;
    RTL                                                                  ;A2E4D9;


MainAI_Ripper:
    LDX.W $0E54                                                          ;A2E4DA;
    LDA.W $0FAC,X                                                        ;A2E4DD;
    STA.B $12                                                            ;A2E4E0;
    LDA.W $0FAE,X                                                        ;A2E4E2;
    STA.B $14                                                            ;A2E4E5;
    JSL.L MoveEnemyRightBy_14_12_IgnoreSlopes                            ;A2E4E7;
    BCC .return                                                          ;A2E4EB;
    LDX.W $0E54                                                          ;A2E4ED;
    LDA.W $0FB0,X                                                        ;A2E4F0;
    TAY                                                                  ;A2E4F3;
    LDA.W $0FAE,X                                                        ;A2E4F4;
    BPL .movingLeft                                                      ;A2E4F7;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A2E4F9;
    STA.W $0FAE,X                                                        ;A2E4FC;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A2E4FF;
    STA.W $0FAC,X                                                        ;A2E502;
    LDY.W #InstList_Ripper_MovingRight                                   ;A2E505;
    BRA +                                                                ;A2E508;


.movingLeft:
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+4,Y                       ;A2E50A;
    STA.W $0FAE,X                                                        ;A2E50D;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+6,Y                       ;A2E510;
    STA.W $0FAC,X                                                        ;A2E513;
    LDY.W #InstList_Ripper_MovingLeft                                    ;A2E516;

  + TYA                                                                  ;A2E519;
    STA.W $0F92,X                                                        ;A2E51A;
    LDA.W #$0001                                                         ;A2E51D;
    STA.W $0F94,X                                                        ;A2E520;
    STZ.W $0F90,X                                                        ;A2E523;

.return:
    RTL                                                                  ;A2E526;


Spritemap_Ripper_MovingLeft_0:
    dw $0002                                                             ;A2E527;
    %spritemapEntry(0, $1F4, $FD, 0, 0, 3, 0, $110)
    %spritemapEntry(1, $43FC, $F8, 0, 0, 3, 0, $101)

Spritemap_Ripper_MovingLeft_1:
    dw $0002                                                             ;A2E533;
    %spritemapEntry(0, $1F4, $FD, 0, 0, 3, 0, $113)
    %spritemapEntry(1, $43FC, $F8, 0, 0, 3, 0, $101)

Spritemap_Ripper_MovingLeft_2:
    dw $0002                                                             ;A2E53F;
    %spritemapEntry(0, $1F4, $FD, 0, 0, 3, 0, $103)
    %spritemapEntry(1, $43FC, $F8, 0, 0, 3, 0, $101)

Spritemap_Ripper_MovingRight_0:
    dw $0002                                                             ;A2E54B;
    %spritemapEntry(0, $04, $FD, 0, 1, 3, 0, $110)
    %spritemapEntry(1, $43F4, $F8, 0, 1, 3, 0, $101)

Spritemap_Ripper_MovingRight_1:
    dw $0002                                                             ;A2E557;
    %spritemapEntry(0, $04, $FD, 0, 1, 3, 0, $103)
    %spritemapEntry(1, $43F4, $F8, 0, 1, 3, 0, $101)

Spritemap_Ripper_MovingRight_2:
    dw $0002                                                             ;A2E563;
    %spritemapEntry(0, $04, $FD, 0, 1, 3, 0, $113)
    %spritemapEntry(1, $43F4, $F8, 0, 1, 3, 0, $101)

SpritemapPointers_Ripper:
    dw Spritemap_Ripper_MovingLeft_0                                     ;A2E56F;
    dw Spritemap_Ripper_MovingLeft_1                                     ;A2E571;
    dw Spritemap_Ripper_MovingLeft_2                                     ;A2E573;
    dw Spritemap_Ripper_MovingRight_0                                    ;A2E575;
    dw Spritemap_Ripper_MovingRight_1                                    ;A2E577;
    dw Spritemap_Ripper_MovingRight_2                                    ;A2E579;

Palette_Dragon:
    dw $3800,$02FF,$01BF,$000F,$0008,$01BF,$011B,$00BA                   ;A2E57B;
    dw $0011,$5A5C,$41B4,$290D,$1065,$03FF,$0237,$00D1                   ;A2E58B;

InstList_Dragon_Idle_FacingLeft:
    dw $0001,Spritemap_Dragon_0                                          ;A2E59B;
    dw Instruction_CommonA2_Sleep                                        ;A2E59F;

InstList_Dragon_Wings_FacingLeft:
    dw $0005,Spritemap_Dragon_4                                          ;A2E5A1;
    dw $0005,Spritemap_Dragon_5                                          ;A2E5A5;
    dw Instruction_Common_GotoY                                          ;A2E5A9;
    dw InstList_Dragon_Wings_FacingLeft                                  ;A2E5AB;

InstList_Dragon_Idle_FacingRight:
    dw $0001,Spritemap_Dragon_6                                          ;A2E5AD;
    dw Instruction_Common_Sleep                                          ;A2E5B1;

InstList_Dragon_Wings_FacingRight:
    dw $0004,Spritemap_Dragon_A                                          ;A2E5B3;
    dw $0004,Spritemap_Dragon_B                                          ;A2E5B7;
    dw Instruction_Common_GotoY                                          ;A2E5BB;
    dw InstList_Dragon_Wings_FacingRight                                 ;A2E5BD;

InstList_Dragon_Attacking_FacingLeft:
    dw $001A,Spritemap_Dragon_1                                          ;A2E5BF;
    dw $0003,Spritemap_Dragon_2                                          ;A2E5C3;
    dw $0006,Spritemap_Dragon_3                                          ;A2E5C7;
    dw $0003,Spritemap_Dragon_2                                          ;A2E5CB;
    dw $0001,Spritemap_Dragon_1                                          ;A2E5CF;
    dw Instruction_Dragon_SetAnimationFinishedFlag                       ;A2E5D3;
    dw Instruction_CommonA2_Sleep                                        ;A2E5D5;

InstList_Dragon_Attacking_FacingRight:
    dw $001A,Spritemap_Dragon_7                                          ;A2E5D7;
    dw $0003,Spritemap_Dragon_8                                          ;A2E5DB;
    dw $0006,Spritemap_Dragon_9                                          ;A2E5DF;
    dw $0003,Spritemap_Dragon_8                                          ;A2E5E3;
    dw $0001,Spritemap_Dragon_7                                          ;A2E5E7;
    dw Instruction_Dragon_SetAnimationFinishedFlag                       ;A2E5EB;
    dw Instruction_CommonA2_Sleep                                        ;A2E5ED;

InstListPointers_Dragon:
    dw InstList_Dragon_Idle_FacingLeft                                   ;A2E5EF;
    dw InstList_Dragon_Idle_FacingRight                                  ;A2E5F1;
    dw InstList_Dragon_Wings_FacingLeft                                  ;A2E5F3;
    dw InstList_Dragon_Wings_FacingRight                                 ;A2E5F5;
    dw InstList_Dragon_Attacking_FacingLeft                              ;A2E5F7;
    dw InstList_Dragon_Attacking_FacingRight                             ;A2E5F9;

Instruction_Dragon_SetAnimationFinishedFlag:
    LDX.W $0E54                                                          ;A2E5FB;
    LDA.W #$0001                                                         ;A2E5FE;
    STA.L $7E7804,X                                                      ;A2E601;
    RTL                                                                  ;A2E605;


InitAI_Dragon:
    LDX.W $0E54                                                          ;A2E606;
    LDA.W #$0000                                                         ;A2E609;
    STA.L $7E7804,X                                                      ;A2E60C;
    LDA.W $0FB4,X                                                        ;A2E610;
    BEQ .idle                                                            ;A2E613;
    LDA.W #$0002                                                         ;A2E615;
    STA.L $7E7800,X                                                      ;A2E618;
    STA.L $7E7802,X                                                      ;A2E61C;
    LDA.W #InstList_Dragon_Wings_FacingLeft                              ;A2E620;
    STA.W $0F92,X                                                        ;A2E623;
    LDA.W $0F86,X                                                        ;A2E626;
    ORA.W #$0400                                                         ;A2E629;
    STA.W $0F86,X                                                        ;A2E62C;
    LDA.W #RTL_A2E781                                                    ;A2E62F;
    STA.W $0FB2,X                                                        ;A2E632;
    RTL                                                                  ;A2E635;


.idle:
    LDA.W #$0000                                                         ;A2E636;
    STA.L $7E7800,X                                                      ;A2E639;
    STA.L $7E7802,X                                                      ;A2E63D;
    LDA.W #InstList_Dragon_Idle_FacingLeft                               ;A2E641;
    STA.W $0F92,X                                                        ;A2E644;
    LDA.W #Function_Dragon_WaitToRise                                    ;A2E647;
    STA.W $0FB2,X                                                        ;A2E64A;
    RTL                                                                  ;A2E64D;


MainAI_Dragon:
    LDX.W $0E54                                                          ;A2E64E;
    JMP.W ($0FB2,X)                                                      ;A2E651;


Function_Dragon_WaitToRise:
    DEC.W $0FAE,X                                                        ;A2E654;
    BMI .timerExpired                                                    ;A2E657;
    RTL                                                                  ;A2E659;


.timerExpired:
    LDA.W #$0028                                                         ;A2E65A;
    STA.W $0FAE,X                                                        ;A2E65D;
    LDA.W #Function_Dragon_Rising                                        ;A2E660;
    STA.W $0FB2,X                                                        ;A2E663;
    JSL.L Get_SamusX_minus_EnemyX                                        ;A2E666;
    TAY                                                                  ;A2E66A;
    ROL.W $0FA8,X                                                        ;A2E66B;
    ROL A                                                                ;A2E66E;
    ROR.W $0FA8,X                                                        ;A2E66F;
    TYA                                                                  ;A2E672;
    SEP #$20                                                             ;A2E673;
    BIT.W $0FA9,X                                                        ;A2E675;
    BMI .facingLeft                                                      ;A2E678;
    LDA.L $7E7800,X                                                      ;A2E67A;
    ORA.B #$01                                                           ;A2E67E;
    STA.L $7E7800,X                                                      ;A2E680;
    LDA.L $7E7840,X                                                      ;A2E684;
    ORA.B #$01                                                           ;A2E688;
    STA.L $7E7840,X                                                      ;A2E68A;
    BRA +                                                                ;A2E68E;


.facingLeft:
    LDA.L $7E7800,X                                                      ;A2E690;
    AND.B #$FE                                                           ;A2E694;
    STA.L $7E7800,X                                                      ;A2E696;
    LDA.L $7E7840,X                                                      ;A2E69A;
    AND.B #$FE                                                           ;A2E69E;
    STA.L $7E7840,X                                                      ;A2E6A0;

  + REP #$20                                                             ;A2E6A4;
    JSR.W SetDragonInstList                                              ;A2E6A6;
    JSR.W SetDragonWingsInstList                                         ;A2E6A9;
    RTL                                                                  ;A2E6AC;


Function_Dragon_Rising:
    DEC.W $0FAE,X                                                        ;A2E6AD;
    BPL .timerNotExpired                                                 ;A2E6B0;
    LDA.L $7E7800,X                                                      ;A2E6B2;
    CLC                                                                  ;A2E6B6;
    ADC.W #$0004                                                         ;A2E6B7;
    STA.L $7E7800,X                                                      ;A2E6BA;
    LDA.W #$0003                                                         ;A2E6BE;
    STA.W $0FAE,X                                                        ;A2E6C1;
    LDA.W #Function_Dragon_Attacking                                     ;A2E6C4;
    STA.W $0FB2,X                                                        ;A2E6C7;

.timerNotExpired:
    LDA.W $0F80,X                                                        ;A2E6CA;
    SEC                                                                  ;A2E6CD;
    SBC.W #$3000                                                         ;A2E6CE;
    STA.W $0F80,X                                                        ;A2E6D1;
    LDA.W $0F7E,X                                                        ;A2E6D4;
    SBC.W #$0001                                                         ;A2E6D7;
    STA.W $0F7E,X                                                        ;A2E6DA;
    LDA.W $0FC0,X                                                        ;A2E6DD;
    SEC                                                                  ;A2E6E0;
    SBC.W #$3000                                                         ;A2E6E1;
    STA.W $0FC0,X                                                        ;A2E6E4;
    LDA.W $0FBE,X                                                        ;A2E6E7;
    SBC.W #$0001                                                         ;A2E6EA;
    STA.W $0FBE,X                                                        ;A2E6ED;
    RTL                                                                  ;A2E6F0;


Function_Dragon_Attacking:
    JSR.W SetDragonInstList                                              ;A2E6F1;
    LDA.L $7E7804,X                                                      ;A2E6F4;
    BEQ .return                                                          ;A2E6F8;
    LDA.W #$0000                                                         ;A2E6FA;
    STA.L $7E7804,X                                                      ;A2E6FD;
    LDA.W #$FFFF                                                         ;A2E701;
    STA.L $7E7802,X                                                      ;A2E704;
    LDY.W #EnemyProjectile_DragonFireball                                ;A2E708;
    JSL.L SpawnEnemyProjectileY_ParameterA_XGraphics                     ;A2E70B;
    LDA.W #$0061                                                         ;A2E70F;
    JSL.L QueueSound_Lib2_Max6                                           ;A2E712;
    DEC.W $0FAE,X                                                        ;A2E716;
    BNE .return                                                          ;A2E719;
    LDA.L $7E7800,X                                                      ;A2E71B;
    SEC                                                                  ;A2E71F;
    SBC.W #$0004                                                         ;A2E720;
    STA.L $7E7800,X                                                      ;A2E723;
    LDA.W #$0040                                                         ;A2E727;
    STA.W $0FAE,X                                                        ;A2E72A;
    LDA.W #Function_Dragon_WaitToSink                                    ;A2E72D;
    STA.W $0FB2,X                                                        ;A2E730;

.return:
    RTL                                                                  ;A2E733;


Function_Dragon_WaitToSink:
    DEC.W $0FAE,X                                                        ;A2E734;
    BNE .return                                                          ;A2E737;
    LDA.W #$0028                                                         ;A2E739;
    STA.W $0FAE,X                                                        ;A2E73C;
    LDA.W #Function_Dragon_Sinking                                       ;A2E73F;
    STA.W $0FB2,X                                                        ;A2E742;
    JSR.W SetDragonInstList                                              ;A2E745;

.return:
    RTL                                                                  ;A2E748;


Function_Dragon_Sinking:
    DEC.W $0FAE,X                                                        ;A2E749;
    BPL .timerNotExpired                                                 ;A2E74C;
    LDA.W #$0060                                                         ;A2E74E;
    STA.W $0FAE,X                                                        ;A2E751;
    LDA.W #Function_Dragon_WaitToRise                                    ;A2E754;
    STA.W $0FB2,X                                                        ;A2E757;

.timerNotExpired:
    LDA.W $0F80,X                                                        ;A2E75A;
    CLC                                                                  ;A2E75D;
    ADC.W #$3000                                                         ;A2E75E;
    STA.W $0F80,X                                                        ;A2E761;
    LDA.W $0F7E,X                                                        ;A2E764;
    ADC.W #$0001                                                         ;A2E767;
    STA.W $0F7E,X                                                        ;A2E76A;
    LDA.W $0FC0,X                                                        ;A2E76D;
    CLC                                                                  ;A2E770;
    ADC.W #$3000                                                         ;A2E771;
    STA.W $0FC0,X                                                        ;A2E774;
    LDA.W $0FBE,X                                                        ;A2E777;
    ADC.W #$0001                                                         ;A2E77A;
    STA.W $0FBE,X                                                        ;A2E77D;
    RTL                                                                  ;A2E780;


RTL_A2E781:
    RTL                                                                  ;A2E781;


SetDragonInstList:
    LDX.W $0E54                                                          ;A2E782;
    LDA.L $7E7800,X                                                      ;A2E785;
    CMP.L $7E7802,X                                                      ;A2E789;
    BEQ .return                                                          ;A2E78D;
    STA.L $7E7802,X                                                      ;A2E78F;
    ASL A                                                                ;A2E793;
    TAY                                                                  ;A2E794;
    LDA.W InstListPointers_Dragon,Y                                      ;A2E795;
    STA.W $0F92,X                                                        ;A2E798;
    LDA.W #$0001                                                         ;A2E79B;
    STA.W $0F94,X                                                        ;A2E79E;
    STZ.W $0F90,X                                                        ;A2E7A1;

.return:
    RTS                                                                  ;A2E7A4;


SetDragonWingsInstList:
    LDX.W $0E54                                                          ;A2E7A5;
    LDA.L $7E7840,X                                                      ;A2E7A8;
    CMP.L $7E7842,X                                                      ;A2E7AC;
    BEQ .return                                                          ;A2E7B0;
    STA.L $7E7842,X                                                      ;A2E7B2;
    ASL A                                                                ;A2E7B6;
    TAY                                                                  ;A2E7B7;
    LDA.W InstListPointers_Dragon,Y                                      ;A2E7B8;
    STA.W $0FD2,X                                                        ;A2E7BB;
    LDA.W #$0001                                                         ;A2E7BE;
    STA.W $0FD4,X                                                        ;A2E7C1;
    STZ.W $0FD0,X                                                        ;A2E7C4;

.return:
    RTS                                                                  ;A2E7C7;


EnemyTouch_Dragon:
    JSL.L CommonA2_NormalEnemyTouchAI                                    ;A2E7C8;
    BRA ContactReaction_Dragon_Common                                    ;A2E7CC;


EnemyShot_Dragon:
    JSL.L CommonA2_NormalEnemyShotAI                                     ;A2E7CE;
    BRA ContactReaction_Dragon_Common                                    ;A2E7D2;


PowerBombReaction_Dragon:
    JSL.L CommonA2_NormalEnemyPowerBombAI                                ;A2E7D4;
    BRA ContactReaction_Dragon_Common                                    ;A2E7D8; >.<


ContactReaction_Dragon_Common:
    LDX.W $0E54                                                          ;A2E7DA;
    LDA.W $0F8C,X                                                        ;A2E7DD;
    BNE .notDead                                                         ;A2E7E0;
    LDA.W $0FC6,X                                                        ;A2E7E2;
    ORA.W #$0200                                                         ;A2E7E5;
    STA.W $0FC6,X                                                        ;A2E7E8;
    BRA .return                                                          ;A2E7EB;


.notDead:
    LDA.W $0FA2,X                                                        ;A2E7ED;
    STA.W $0FE2,X                                                        ;A2E7F0;
    LDA.W $0FA0,X                                                        ;A2E7F3;
    STA.W $0FE0,X                                                        ;A2E7F6;
    LDA.W $0F9C,X                                                        ;A2E7F9;
    STA.W $0FDC,X                                                        ;A2E7FC;
    LDA.W $0F9E,X                                                        ;A2E7FF;
    STA.W $0FDE,X                                                        ;A2E802;
    LDA.W $0F8A,X                                                        ;A2E805;
    STA.W $0FCA,X                                                        ;A2E808;

.return:
    RTL                                                                  ;A2E80B;


Spritemap_Dragon_0:
    dw $0008                                                             ;A2E80C;
    %spritemapEntry(0, $08, $04, 0, 0, 2, 0, $11C)
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $1F0, $EC, 0, 0, 2, 0, $110)
    %spritemapEntry(0, $00, $04, 0, 0, 2, 0, $11D)
    %spritemapEntry(0, $1F8, $04, 0, 0, 2, 0, $10D)
    %spritemapEntry(1, $1F9, $0C, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $1F8, $F4, 0, 0, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $E4, 0, 0, 2, 0, $101)

Spritemap_Dragon_1:
    dw $0008                                                             ;A2E836;
    %spritemapEntry(0, $1F0, $E4, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $1F8, $E4, 0, 0, 2, 0, $103)
    %spritemapEntry(0, $08, $04, 0, 0, 2, 0, $11C)
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $00, $04, 0, 0, 2, 0, $11D)
    %spritemapEntry(0, $1F8, $04, 0, 0, 2, 0, $10D)
    %spritemapEntry(1, $1F9, $0C, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $1F8, $F4, 0, 0, 2, 0, $10A)

Spritemap_Dragon_2:
    dw $0008                                                             ;A2E860;
    %spritemapEntry(0, $1F0, $E5, 0, 0, 2, 0, $105)
    %spritemapEntry(1, $1F8, $E4, 0, 0, 2, 0, $106)
    %spritemapEntry(0, $08, $04, 0, 0, 2, 0, $11C)
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $00, $04, 0, 0, 2, 0, $11D)
    %spritemapEntry(0, $1F8, $04, 0, 0, 2, 0, $10D)
    %spritemapEntry(1, $1F9, $0C, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $1F8, $F4, 0, 0, 2, 0, $10A)

Spritemap_Dragon_3:
    dw $0008                                                             ;A2E88A;
    %spritemapEntry(0, $1F0, $E5, 0, 0, 2, 0, $115)
    %spritemapEntry(1, $1F8, $E4, 0, 0, 2, 0, $108)
    %spritemapEntry(0, $08, $04, 0, 0, 2, 0, $11C)
    %spritemapEntry(0, $08, $FC, 0, 0, 2, 0, $10C)
    %spritemapEntry(0, $00, $04, 0, 0, 2, 0, $11D)
    %spritemapEntry(0, $1F8, $04, 0, 0, 2, 0, $10D)
    %spritemapEntry(1, $1F9, $0C, 0, 0, 2, 0, $10E)
    %spritemapEntry(1, $1F8, $F4, 0, 0, 2, 0, $10A)

Spritemap_Dragon_4:
    dw $0001                                                             ;A2E8B4;
    %spritemapEntry(0, $04, $F4, 0, 0, 2, 0, $120)

Spritemap_Dragon_5:
    dw $0001                                                             ;A2E8BB;
    %spritemapEntry(0, $04, $F4, 0, 0, 2, 0, $121)

Spritemap_Dragon_6:
    dw $0008                                                             ;A2E8C2;
    %spritemapEntry(0, $1F0, $04, 0, 1, 2, 0, $11C)
    %spritemapEntry(0, $1F0, $FC, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $08, $EC, 0, 1, 2, 0, $110)
    %spritemapEntry(0, $1F8, $04, 0, 1, 2, 0, $11D)
    %spritemapEntry(0, $00, $04, 0, 1, 2, 0, $10D)
    %spritemapEntry(1, $1F7, $0C, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $1F8, $F4, 0, 1, 2, 0, $10A)
    %spritemapEntry(1, $1F8, $E4, 0, 1, 2, 0, $101)

Spritemap_Dragon_7:
    dw $0008                                                             ;A2E8EC;
    %spritemapEntry(0, $08, $E4, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1F8, $E4, 0, 1, 2, 0, $103)
    %spritemapEntry(0, $1F0, $04, 0, 1, 2, 0, $11C)
    %spritemapEntry(0, $1F0, $FC, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $1F8, $04, 0, 1, 2, 0, $11D)
    %spritemapEntry(0, $00, $04, 0, 1, 2, 0, $10D)
    %spritemapEntry(1, $1F7, $0C, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $1F8, $F4, 0, 1, 2, 0, $10A)

Spritemap_Dragon_8:
    dw $0008                                                             ;A2E916;
    %spritemapEntry(0, $08, $E5, 0, 1, 2, 0, $105)
    %spritemapEntry(1, $1F8, $E4, 0, 1, 2, 0, $106)
    %spritemapEntry(0, $1F0, $04, 0, 1, 2, 0, $11C)
    %spritemapEntry(0, $1F0, $FC, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $1F8, $04, 0, 1, 2, 0, $11D)
    %spritemapEntry(0, $00, $04, 0, 1, 2, 0, $10D)
    %spritemapEntry(1, $1F7, $0C, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $1F8, $F4, 0, 1, 2, 0, $10A)

Spritemap_Dragon_9:
    dw $0008                                                             ;A2E940;
    %spritemapEntry(0, $08, $E5, 0, 1, 2, 0, $115)
    %spritemapEntry(1, $1F8, $E4, 0, 1, 2, 0, $108)
    %spritemapEntry(0, $1F0, $04, 0, 1, 2, 0, $11C)
    %spritemapEntry(0, $1F0, $FC, 0, 1, 2, 0, $10C)
    %spritemapEntry(0, $1F8, $04, 0, 1, 2, 0, $11D)
    %spritemapEntry(0, $00, $04, 0, 1, 2, 0, $10D)
    %spritemapEntry(1, $1F7, $0C, 0, 1, 2, 0, $10E)
    %spritemapEntry(1, $1F8, $F4, 0, 1, 2, 0, $10A)

Spritemap_Dragon_A:
    dw $0001                                                             ;A2E96A;
    %spritemapEntry(0, $1F4, $F4, 0, 1, 2, 0, $120)

Spritemap_Dragon_B:
    dw $0001                                                             ;A2E971;
    %spritemapEntry(0, $1F4, $F4, 0, 1, 2, 0, $121)


Palette_Shutters:
    dw $3800,$4D1F,$38B6,$246E,$1448,$47FF,$2EFA,$1616                   ;A2E978;
    dw $0132,$6F39,$5A73,$41AD,$2D08,$1863,$7FFF,$0041                   ;A2E988;

InstList_Shutter_GrowthLevel0:
    dw $0001,Spritemap_Shutters_10px                                     ;A2E998;
    dw Instruction_Common_Sleep                                          ;A2E99C;

InstList_Shutter_GrowthLevel1:
    dw $0001,Spritemap_Shutters_20px                                     ;A2E99E;
    dw Instruction_Common_Sleep                                          ;A2E9A2;

InstList_Shutter_GrowthLevel2:
    dw $0001,Spritemap_Shutters_30px                                     ;A2E9A4;
    dw Instruction_CommonA2_Sleep                                        ;A2E9A8;

InstList_Shutter_GrowthLevel3:
    dw $0001,Spritemap_Shutters_40px                                     ;A2E9AA;
    dw Instruction_CommonA2_Sleep                                        ;A2E9AE;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_InstList_Shutter_ShrinkingLoop_A2E9B0:
    dw $0004,Spritemap_Shutters_40px                                     ;A2E9B0;
    dw $0004,UNUSED_Spritemap_Shutters_38px_A2ED85                       ;A2E9B4;
    dw $0004,Spritemap_Shutters_30px                                     ;A2E9B8;
    dw $0004,UNUSED_Spritemap_Shutters_28px_A2ED63                       ;A2E9BC;
    dw $0004,Spritemap_Shutters_20px                                     ;A2E9C0;
    dw $0004,UNUSED_Spritemap_Shutters_18px_A2ED4B                       ;A2E9C4;
    dw $0004,Spritemap_Shutters_10px                                     ;A2E9C8;
    dw $0004,UNUSED_Spritemap_Shutters_8px_A2ED38                        ;A2E9CC;
    dw Instruction_Common_GotoY                                          ;A2E9D0;
    dw UNUSED_InstList_Shutter_ShrinkingLoop_A2E9B0                      ;A2E9D2;
endif ; !FEATURE_KEEP_UNREFERENCED

InstList_ShutterHorizontal:
    dw $0001,Spritemap_Shutters_Horizontal                               ;A2E9D4;
    dw Instruction_Common_Sleep                                          ;A2E9D8;

InitAI_ShutterGrowing:
    LDX.W $0E54                                                          ;A2E9DA;
    LDA.W $0F88,X                                                        ;A2E9DD;
    ASL A                                                                ;A2E9E0;
    CLC                                                                  ;A2E9E1;
    ADC.W $0F92,X                                                        ;A2E9E2;
    ASL A                                                                ;A2E9E5;
    TAY                                                                  ;A2E9E6;
    LDA.W .functionPointers,Y                                            ;A2E9E7;
    STA.W $0FA8,X                                                        ;A2E9EA;
    LDA.W $0F88,X                                                        ;A2E9ED;
    BEQ .movingDown                                                      ;A2E9F0;
    LDA.W $0F7E,X                                                        ;A2E9F2;
    STA.W $0FAA,X                                                        ;A2E9F5;
    SEC                                                                  ;A2E9F8;
    SBC.W #$0008                                                         ;A2E9F9;
    STA.W $0FAC,X                                                        ;A2E9FC;
    SEC                                                                  ;A2E9FF;
    SBC.W #$0008                                                         ;A2EA00;
    STA.W $0FAE,X                                                        ;A2EA03;
    SEC                                                                  ;A2EA06;
    SBC.W #$0008                                                         ;A2EA07;
    STA.W $0FB0,X                                                        ;A2EA0A;
    BRA +                                                                ;A2EA0D;


.movingDown:
    LDA.W $0F7E,X                                                        ;A2EA0F;
    STA.W $0FAA,X                                                        ;A2EA12;
    CLC                                                                  ;A2EA15;
    ADC.W #$0008                                                         ;A2EA16;
    STA.W $0FAC,X                                                        ;A2EA19;
    CLC                                                                  ;A2EA1C;
    ADC.W #$0008                                                         ;A2EA1D;
    STA.W $0FAE,X                                                        ;A2EA20;
    CLC                                                                  ;A2EA23;
    ADC.W #$0008                                                         ;A2EA24;
    STA.W $0FB0,X                                                        ;A2EA27;

  + STZ.W $0F88,X                                                        ;A2EA2A;
    STZ.W $0FB2,X                                                        ;A2EA2D;
    LDA.W #InstList_Shutter_GrowthLevel0                                 ;A2EA30;
    STA.W $0F92,X                                                        ;A2EA33;
    LDA.W $0FB6,X                                                        ;A2EA36;
    AND.W #$00FF                                                         ;A2EA39;
    ASL A                                                                ;A2EA3C;
    ASL A                                                                ;A2EA3D;
    TAY                                                                  ;A2EA3E;
    LDA.W .YSpeed,Y                                                      ;A2EA3F;
    STA.L $7E7800,X                                                      ;A2EA42;
    LDA.W .YSubSpeed,Y                                                   ;A2EA46;
    STA.L $7E7802,X                                                      ;A2EA49;
    RTL                                                                  ;A2EA4D;


  .functionPointers:
    dw Function_ShutterGrowing_Initial_Downwards_WaitForTimer            ;A2EA4E;
    dw Func_ShutterGrowing_Initial_Downwards_WaitForSamusToGetNear       ;A2EA50;
    dw Function_ShutterGrowing_Initial_Upwards_WaitForTimer              ;A2EA52;
    dw Func_ShutterGrowing_Initial_Upwards_WaitForSamusToGetNear         ;A2EA54;

  .YSpeed:
    dw $0000                                                             ;A2EA56;
  .YSubSpeed:
    dw       $1000, $0000,$2000, $0000,$3000, $0000,$4000                ;A2EA58;
    dw $0000,$5000, $0000,$6000, $0000,$7000, $0000,$8000                ;A2EA66;
    dw $0000,$9000, $0000,$A000, $0000,$B000, $0000,$C000                ;A2EA76;
    dw $0000,$D000, $0000,$E000, $0000,$F000, $0001,$0000                ;A2EA86;
    dw $0001,$1000, $0001,$2000, $0001,$3000, $0001,$4000                ;A2EA96;
    dw $0001,$5000, $0001,$6000, $0001,$7000, $0001,$8000                ;A2EAA6;

MainAI_ShutterGrowing:
    LDX.W $0E54                                                          ;A2EAB6;
    JSR.W ($0FA8,X)                                                      ;A2EAB9;
    RTL                                                                  ;A2EABC;


Function_ShutterGrowing_Initial_Upwards_WaitForTimer:
    LDA.W $0FB4,X                                                        ;A2EABD;
    BEQ +                                                                ;A2EAC0;
    DEC A                                                                ;A2EAC2;
    STA.W $0FB4,X                                                        ;A2EAC3;
    RTS                                                                  ;A2EAC6;


  + JSR.W PlayGateOpeningClosingSFXIfOnScreen                            ;A2EAC7;
    LDA.W #Function_ShutterGrowing_Growing_Upwards                       ;A2EACA;
    STA.W $0FA8,X                                                        ;A2EACD;
    RTS                                                                  ;A2EAD0;


Func_ShutterGrowing_Initial_Upwards_WaitForSamusToGetNear:
    LDA.W $0FB4,X                                                        ;A2EAD1;
    JSL.L IsSamusWithinAPixelColumnsOfEnemy                              ;A2EAD4;
    AND.W #$FFFF                                                         ;A2EAD8;
    BEQ .return                                                          ;A2EADB;
    JSR.W PlayGateOpeningClosingSFXIfOnScreen                            ;A2EADD;
    LDA.W #Function_ShutterGrowing_Growing_Upwards                       ;A2EAE0;
    STA.W $0FA8,X                                                        ;A2EAE3;

.return:
    RTS                                                                  ;A2EAE6;


Func_ShutterGrowing_Initial_Downwards_WaitForSamusToGetNear:
    LDA.W $0FB4,X                                                        ;A2EAE7;
    JSL.L IsSamusWithinAPixelColumnsOfEnemy                              ;A2EAEA;
    AND.W #$FFFF                                                         ;A2EAEE;
    BEQ .return                                                          ;A2EAF1;
    JSR.W PlayGateOpeningClosingSFXIfOnScreen                            ;A2EAF3;
    LDA.W #Function_ShutterGrowing_Growing_Downwards                     ;A2EAF6;
    STA.W $0FA8,X                                                        ;A2EAF9;

.return:
    RTS                                                                  ;A2EAFC;


Function_ShutterGrowing_Initial_Downwards_WaitForTimer:
    LDA.W $0FB4,X                                                        ;A2EAFD;
    BEQ +                                                                ;A2EB00;
    DEC A                                                                ;A2EB02;
    STA.W $0FB4,X                                                        ;A2EB03;
    RTS                                                                  ;A2EB06;


  + JSR.W PlayGateOpeningClosingSFXIfOnScreen                            ;A2EB07;
    LDA.W #Function_ShutterGrowing_Growing_Downwards                     ;A2EB0A;
    STA.W $0FA8,X                                                        ;A2EB0D;
    RTS                                                                  ;A2EB10;


Function_ShutterGrowing_Growing_Downwards:
    LDA.W $0FB2,X                                                        ;A2EB11;
    ASL A                                                                ;A2EB14;
    TAX                                                                  ;A2EB15;
    JSR.W (.pointers,X)                                                  ;A2EB16;
    RTS                                                                  ;A2EB19;


.pointers:
    dw Function_ShutterGrowing_Growing_Downwards_GrowthLevel0            ;A2EB1A;
    dw Function_ShutterGrowing_Growing_Downwards_GrowthLevel1            ;A2EB1C;
    dw Function_ShutterGrowing_Growing_Downwards_GrowthLevel2            ;A2EB1E;
    dw Function_ShutterGrowing_Growing_Downwards_GrowthLevel3            ;A2EB20;
    dw RTS_A2EB24                                                        ;A2EB22;

RTS_A2EB24:
    RTS                                                                  ;A2EB24;


Function_ShutterGrowing_Growing_Downwards_GrowthLevel0:
    LDX.W $0E54                                                          ;A2EB25;
    LDA.W $0F80,X                                                        ;A2EB28;
    CLC                                                                  ;A2EB2B;
    ADC.L $7E7802,X                                                      ;A2EB2C;
    STA.W $0F80,X                                                        ;A2EB30;
    LDA.W $0F7E,X                                                        ;A2EB33;
    ADC.L $7E7800,X                                                      ;A2EB36;
    STA.W $0F7E,X                                                        ;A2EB3A;
    LDA.W $0FAA,X                                                        ;A2EB3D;
    CLC                                                                  ;A2EB40;
    ADC.W #$0010                                                         ;A2EB41;
    CMP.W $0F7E,X                                                        ;A2EB44;
    BPL .return                                                          ;A2EB47;
    SEC                                                                  ;A2EB49;
    SBC.W #$0007                                                         ;A2EB4A;
    STA.W $0F7E,X                                                        ;A2EB4D;
    INC.W $0FB2,X                                                        ;A2EB50;
    LDA.W #$0001                                                         ;A2EB53;
    STA.W $0F94,X                                                        ;A2EB56;
    LDA.W #InstList_Shutter_GrowthLevel1                                 ;A2EB59;
    STA.W $0F92,X                                                        ;A2EB5C;
    LDA.W #$0010                                                         ;A2EB5F;
    STA.W $0F84,X                                                        ;A2EB62;

.return:
    RTS                                                                  ;A2EB65;


Function_ShutterGrowing_Growing_Downwards_GrowthLevel1:
    LDX.W $0E54                                                          ;A2EB66;
    LDA.W $0F80,X                                                        ;A2EB69;
    CLC                                                                  ;A2EB6C;
    ADC.L $7E7802,X                                                      ;A2EB6D;
    STA.W $0F80,X                                                        ;A2EB71;
    LDA.W $0F7E,X                                                        ;A2EB74;
    ADC.L $7E7800,X                                                      ;A2EB77;
    STA.W $0F7E,X                                                        ;A2EB7B;
    LDA.W $0FAC,X                                                        ;A2EB7E;
    CLC                                                                  ;A2EB81;
    ADC.W #$0010                                                         ;A2EB82;
    CMP.W $0F7E,X                                                        ;A2EB85;
    BPL .return                                                          ;A2EB88;
    SEC                                                                  ;A2EB8A;
    SBC.W #$0007                                                         ;A2EB8B;
    STA.W $0F7E,X                                                        ;A2EB8E;
    INC.W $0FB2,X                                                        ;A2EB91;
    LDA.W #$0001                                                         ;A2EB94;
    STA.W $0F94,X                                                        ;A2EB97;
    LDA.W #InstList_Shutter_GrowthLevel2                                 ;A2EB9A;
    STA.W $0F92,X                                                        ;A2EB9D;
    LDA.W #$0018                                                         ;A2EBA0;
    STA.W $0F84,X                                                        ;A2EBA3;

.return:
    RTS                                                                  ;A2EBA6;


Function_ShutterGrowing_Growing_Downwards_GrowthLevel2:
    LDX.W $0E54                                                          ;A2EBA7;
    LDA.W $0F80,X                                                        ;A2EBAA;
    CLC                                                                  ;A2EBAD;
    ADC.L $7E7802,X                                                      ;A2EBAE;
    STA.W $0F80,X                                                        ;A2EBB2;
    LDA.W $0F7E,X                                                        ;A2EBB5;
    ADC.L $7E7800,X                                                      ;A2EBB8;
    STA.W $0F7E,X                                                        ;A2EBBC;
    LDA.W $0FAE,X                                                        ;A2EBBF;
    CLC                                                                  ;A2EBC2;
    ADC.W #$0010                                                         ;A2EBC3;
    CMP.W $0F7E,X                                                        ;A2EBC6;
    BPL .return                                                          ;A2EBC9;
    SEC                                                                  ;A2EBCB;
    SBC.W #$0007                                                         ;A2EBCC;
    STA.W $0F7E,X                                                        ;A2EBCF;
    INC.W $0FB2,X                                                        ;A2EBD2;
    LDA.W #$0001                                                         ;A2EBD5;
    STA.W $0F94,X                                                        ;A2EBD8;
    LDA.W #InstList_Shutter_GrowthLevel3                                 ;A2EBDB;
    STA.W $0F92,X                                                        ;A2EBDE;
    LDA.W #$0020                                                         ;A2EBE1;
    STA.W $0F84,X                                                        ;A2EBE4;

.return:
    RTS                                                                  ;A2EBE7;


Function_ShutterGrowing_Growing_Downwards_GrowthLevel3:
    LDX.W $0E54                                                          ;A2EBE8;
    LDA.W $0F80,X                                                        ;A2EBEB;
    CLC                                                                  ;A2EBEE;
    ADC.L $7E7802,X                                                      ;A2EBEF;
    STA.W $0F80,X                                                        ;A2EBF3;
    LDA.W $0F7E,X                                                        ;A2EBF6;
    ADC.L $7E7800,X                                                      ;A2EBF9;
    STA.W $0F7E,X                                                        ;A2EBFD;
    LDA.W $0FB0,X                                                        ;A2EC00;
    CLC                                                                  ;A2EC03;
    ADC.W #$0010                                                         ;A2EC04;
    CMP.W $0F7E,X                                                        ;A2EC07;
    BPL .return                                                          ;A2EC0A;
    STA.W $0F7E,X                                                        ;A2EC0C;
    INC.W $0FB2,X                                                        ;A2EC0F;

.return:
    RTS                                                                  ;A2EC12;


Function_ShutterGrowing_Growing_Upwards:
    LDA.W $0F7E,X                                                        ;A2EC13;
    STA.L $7E8800,X                                                      ;A2EC16;
    LDA.W $0FB2,X                                                        ;A2EC1A;
    ASL A                                                                ;A2EC1D;
    TAX                                                                  ;A2EC1E;
    JSR.W (.pointers,X)                                                  ;A2EC1F;
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A2EC22;
    BEQ .return                                                          ;A2EC26;
    LDA.W $0F7E,X                                                        ;A2EC28;
    SEC                                                                  ;A2EC2B;
    SBC.L $7E8800,X                                                      ;A2EC2C;
    BPL .return                                                          ;A2EC30;
    CLC                                                                  ;A2EC32;
    ADC.W $0B5C                                                          ;A2EC33;
    STA.W $0B5C                                                          ;A2EC36;

.return:
    RTS                                                                  ;A2EC39;


.pointers:
    dw Function_ShutterGrowing_Growing_Upwards_GrowthLevel0              ;A2EC3A;
    dw Function_ShutterGrowing_Growing_Upwards_GrowthLevel1              ;A2EC3C;
    dw Function_ShutterGrowing_Growing_Upwards_GrowthLevel2              ;A2EC3E;
    dw Function_ShutterGrowing_Growing_Upwards_GrowthLevel3              ;A2EC40;
    dw RTS_A2EC44                                                        ;A2EC42;

RTS_A2EC44:
    RTS                                                                  ;A2EC44;


Function_ShutterGrowing_Growing_Upwards_GrowthLevel0:
    LDX.W $0E54                                                          ;A2EC45;
    LDA.W $0F80,X                                                        ;A2EC48;
    SEC                                                                  ;A2EC4B;
    SBC.L $7E7802,X                                                      ;A2EC4C;
    STA.W $0F80,X                                                        ;A2EC50;
    LDA.W $0F7E,X                                                        ;A2EC53;
    SBC.L $7E7800,X                                                      ;A2EC56;
    STA.W $0F7E,X                                                        ;A2EC5A;
    LDA.W $0FAA,X                                                        ;A2EC5D;
    SEC                                                                  ;A2EC60;
    SBC.W #$0010                                                         ;A2EC61;
    CMP.W $0F7E,X                                                        ;A2EC64;
    BMI .return                                                          ;A2EC67;
    CLC                                                                  ;A2EC69;
    ADC.W #$0007                                                         ;A2EC6A;
    STA.W $0F7E,X                                                        ;A2EC6D;
    INC.W $0FB2,X                                                        ;A2EC70;
    LDA.W #$0001                                                         ;A2EC73;
    STA.W $0F94,X                                                        ;A2EC76;
    LDA.W #InstList_Shutter_GrowthLevel1                                 ;A2EC79;
    STA.W $0F92,X                                                        ;A2EC7C;
    LDA.W #$0010                                                         ;A2EC7F;
    STA.W $0F84,X                                                        ;A2EC82;

.return:
    RTS                                                                  ;A2EC85;


Function_ShutterGrowing_Growing_Upwards_GrowthLevel1:
    LDX.W $0E54                                                          ;A2EC86;
    LDA.W $0F80,X                                                        ;A2EC89;
    SEC                                                                  ;A2EC8C;
    SBC.L $7E7802,X                                                      ;A2EC8D;
    STA.W $0F80,X                                                        ;A2EC91;
    LDA.W $0F7E,X                                                        ;A2EC94;
    SBC.L $7E7800,X                                                      ;A2EC97;
    STA.W $0F7E,X                                                        ;A2EC9B;
    LDA.W $0FAC,X                                                        ;A2EC9E;
    SEC                                                                  ;A2ECA1;
    SBC.W #$0010                                                         ;A2ECA2;
    CMP.W $0F7E,X                                                        ;A2ECA5;
    BMI .return                                                          ;A2ECA8;
    CLC                                                                  ;A2ECAA;
    ADC.W #$0007                                                         ;A2ECAB;
    STA.W $0F7E,X                                                        ;A2ECAE;
    INC.W $0FB2,X                                                        ;A2ECB1;
    LDA.W #$0001                                                         ;A2ECB4;
    STA.W $0F94,X                                                        ;A2ECB7;
    LDA.W #InstList_Shutter_GrowthLevel2                                 ;A2ECBA;
    STA.W $0F92,X                                                        ;A2ECBD;
    LDA.W #$0018                                                         ;A2ECC0;
    STA.W $0F84,X                                                        ;A2ECC3;

.return:
    RTS                                                                  ;A2ECC6;


Function_ShutterGrowing_Growing_Upwards_GrowthLevel2:
    LDX.W $0E54                                                          ;A2ECC7;
    LDA.W $0F80,X                                                        ;A2ECCA;
    SEC                                                                  ;A2ECCD;
    SBC.L $7E7802,X                                                      ;A2ECCE;
    STA.W $0F80,X                                                        ;A2ECD2;
    LDA.W $0F7E,X                                                        ;A2ECD5;
    SBC.L $7E7800,X                                                      ;A2ECD8;
    STA.W $0F7E,X                                                        ;A2ECDC;
    LDA.W $0FAE,X                                                        ;A2ECDF;
    SEC                                                                  ;A2ECE2;
    SBC.W #$0010                                                         ;A2ECE3;
    CMP.W $0F7E,X                                                        ;A2ECE6;
    BMI .return                                                          ;A2ECE9;
    CLC                                                                  ;A2ECEB;
    ADC.W #$0007                                                         ;A2ECEC;
    STA.W $0F7E,X                                                        ;A2ECEF;
    INC.W $0FB2,X                                                        ;A2ECF2;
    LDA.W #$0001                                                         ;A2ECF5;
    STA.W $0F94,X                                                        ;A2ECF8;
    LDA.W #InstList_Shutter_GrowthLevel3                                 ;A2ECFB;
    STA.W $0F92,X                                                        ;A2ECFE;
    LDA.W #$0020                                                         ;A2ED01;
    STA.W $0F84,X                                                        ;A2ED04;

.return:
    RTS                                                                  ;A2ED07;


Function_ShutterGrowing_Growing_Upwards_GrowthLevel3:
    LDX.W $0E54                                                          ;A2ED08;
    LDA.W $0F80,X                                                        ;A2ED0B;
    SEC                                                                  ;A2ED0E;
    SBC.L $7E7802,X                                                      ;A2ED0F;
    STA.W $0F80,X                                                        ;A2ED13;
    LDA.W $0F7E,X                                                        ;A2ED16;
    SBC.L $7E7800,X                                                      ;A2ED19;
    STA.W $0F7E,X                                                        ;A2ED1D;
    LDA.W $0FB0,X                                                        ;A2ED20;
    SEC                                                                  ;A2ED23;
    SBC.W #$0010                                                         ;A2ED24;
    CMP.W $0F7E,X                                                        ;A2ED27;
    BMI .return                                                          ;A2ED2A;
    STA.W $0F7E,X                                                        ;A2ED2C;
    INC.W $0FB2,X                                                        ;A2ED2F;

.return:
    RTS                                                                  ;A2ED32;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_Load5_A2ED33:
    LDA.W #$0005                                                         ;A2ED33;
    RTL                                                                  ;A2ED36;
endif ; !FEATURE_KEEP_UNREFERENCED


RTL_A2ED37:
    RTL                                                                  ;A2ED37;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_Shutters_8px_A2ED38:
    dw $0002                                                             ;A2ED38;
    %spritemapEntry(0, $00, $FC, 0, 0, 2, 0, $101)
    %spritemapEntry(0, $1F8, $FC, 0, 0, 2, 0, $100)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_Shutters_10px:
    dw $0001                                                             ;A2ED44;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $100)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_Shutters_18px_A2ED4B:
    dw $0002                                                             ;A2ED4B;
    %spritemapEntry(1, $43F8, $FC, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43F8, $F4, 0, 0, 2, 0, $100)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_Shutters_20px:
    dw $0002                                                             ;A2ED57;
    %spritemapEntry(1, $43F8, $00, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43F8, $F0, 0, 0, 2, 0, $100)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_Shutters_28px_A2ED63:
    dw $0003                                                             ;A2ED63;
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43F8, $04, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43F8, $EC, 0, 0, 2, 0, $100)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_Shutters_30px:
    dw $0003                                                             ;A2ED74;
    %spritemapEntry(1, $43F8, $08, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43F8, $F8, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43F8, $E8, 0, 0, 2, 0, $100)

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Spritemap_Shutters_38px_A2ED85:
    dw $0004                                                             ;A2ED85;
    %spritemapEntry(1, $43F8, $0C, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43F8, $00, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43F8, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43F8, $E4, 0, 0, 2, 0, $100)
endif ; !FEATURE_KEEP_UNREFERENCED

Spritemap_Shutters_40px:
    dw $0004                                                             ;A2ED9B;
    %spritemapEntry(1, $43F8, $10, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43F8, $00, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43F8, $F0, 0, 0, 2, 0, $100)
    %spritemapEntry(1, $43F8, $E0, 0, 0, 2, 0, $100)

Spritemap_Shutters_Horizontal:
    dw $0004                                                             ;A2EDB1;
    %spritemapEntry(1, $1E0, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $10, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $00, $F8, 0, 0, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $102)


Palette_Kamer:
    dw $3800,$7F5A,$3BE0,$2680,$0920,$4F5A,$36B5,$2610                   ;A2EDC7;
    dw $1DCE,$5294,$39CE,$2108,$1084,$033B,$0216,$0113                   ;A2EDD7;

InstList_Kamer:
    dw $000A,Spritemap_Kamer_0                                           ;A2EDE7;
    dw $000A,Spritemap_Kamer_1                                           ;A2EDEB;
    dw $000A,Spritemap_Kamer_2                                           ;A2EDEF;
    dw $000A,Spritemap_Kamer_3                                           ;A2EDF3;
    dw Instruction_Common_GotoY                                          ;A2EDF7;
    dw InstList_Kamer                                                    ;A2EDF9;

KamerInitialFunctionPointers:
    dw Function_Shutter_Kamer_WaitForTimer                               ;A2EDFB;
    dw Function_Shutter_Kamer_WaitForSamusToGetNear                      ;A2EDFD;
    dw Function_Shutter_Kamer_Activate                                   ;A2EDFF;
    dw Function_Shutter_Kamer_GetEnemyIndex                              ;A2EE01;
    dw Function_Shutter_Kamer_GetEnemyIndex                              ;A2EE03;

InitAI_Kamer:
    LDX.W $0E54                                                          ;A2EE05;
    JSR.W Init_Shutter_Kamer_Common                                      ;A2EE08;
    LDA.W #InstList_Kamer                                                ;A2EE0B;
    STA.W $0F92,X                                                        ;A2EE0E;
    RTL                                                                  ;A2EE11;


InitAI_ShutterShootable_ShutterDestroyable:
    LDX.W $0E54                                                          ;A2EE12;
    JSR.W Init_Shutter_Kamer_Common                                      ;A2EE15;
    LDA.W #InstList_Shutter_GrowthLevel3                                 ;A2EE18;
    STA.W $0F92,X                                                        ;A2EE1B;
    RTL                                                                  ;A2EE1E;


Init_Shutter_Kamer_Common:
    LDA.W $0F92,X                                                        ;A2EE1F;
    AND.W #$00FF                                                         ;A2EE22;
    STA.L $7E7800,X                                                      ;A2EE25;
    ASL A                                                                ;A2EE29;
    ASL A                                                                ;A2EE2A;
    ASL A                                                                ;A2EE2B;
    TAY                                                                  ;A2EE2C;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A2EE2D;
    STA.W $0FAE,X                                                        ;A2EE30;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A2EE33;
    STA.W $0FAC,X                                                        ;A2EE36;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+4,Y                       ;A2EE39;
    STA.W $0FB2,X                                                        ;A2EE3C;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+6,Y                       ;A2EE3F;
    STA.W $0FB0,X                                                        ;A2EE42;
    LDA.W $0F93,X                                                        ;A2EE45;
    AND.W #$00FF                                                         ;A2EE48;
    STA.L $7E7802,X                                                      ;A2EE4B;
    STA.L $7E8000,X                                                      ;A2EE4F;
    LDA.W $0F88,X                                                        ;A2EE53;
    AND.W #$00FF                                                         ;A2EE56;
    STA.L $7E7804,X                                                      ;A2EE59;
    ASL A                                                                ;A2EE5D;
    ASL A                                                                ;A2EE5E;
    ASL A                                                                ;A2EE5F;
    ASL A                                                                ;A2EE60;
    STA.L $7E7810,X                                                      ;A2EE61;
    LDA.W $0F89,X                                                        ;A2EE65;
    AND.W #$00FF                                                         ;A2EE68;
    STA.L $7E7806,X                                                      ;A2EE6B;
    ASL A                                                                ;A2EE6F;
    ASL A                                                                ;A2EE70;
    ASL A                                                                ;A2EE71;
    ASL A                                                                ;A2EE72;
    STA.L $7E7812,X                                                      ;A2EE73;
    LDA.W $0FB4,X                                                        ;A2EE77;
    AND.W #$00FF                                                         ;A2EE7A;
    STA.L $7E7808,X                                                      ;A2EE7D;
    ASL A                                                                ;A2EE81;
    STA.L $7E780E,X                                                      ;A2EE82;
    LDA.W $0FB5,X                                                        ;A2EE86;
    AND.W #$00FF                                                         ;A2EE89;
    STA.L $7E780A,X                                                      ;A2EE8C;
    LDA.W $0FB6,X                                                        ;A2EE90;
    STA.L $7E780C,X                                                      ;A2EE93;
    STA.W $0FAA,X                                                        ;A2EE97;
    LDA.W $0F7E,X                                                        ;A2EE9A;
    STA.L $7E781E,X                                                      ;A2EE9D;
    CLC                                                                  ;A2EEA1;
    ADC.L $7E780A,X                                                      ;A2EEA2;
    STA.L $7E7820,X                                                      ;A2EEA6;
    LDA.L $7E7802,X                                                      ;A2EEAA;
    BNE .keep20                                                          ;A2EEAE;
    LDA.W $0F7E,X                                                        ;A2EEB0;
    STA.L $7E7820,X                                                      ;A2EEB3;
    SEC                                                                  ;A2EEB7;
    SBC.L $7E780A,X                                                      ;A2EEB8;
    STA.L $7E781E,X                                                      ;A2EEBC;

.keep20:
    LDA.W #Function_Shutter_Kamer_Initial                                ;A2EEC0;
    STA.W $0FA8,X                                                        ;A2EEC3;
    LDA.W #$0000                                                         ;A2EEC6;
    STA.W $0F88,X                                                        ;A2EEC9;
    STA.L $7E7814,X                                                      ;A2EECC;
    RTS                                                                  ;A2EED0;


MainAI_ShutterShootable_ShutterDestroyable_Kamer:
    LDX.W $0E54                                                          ;A2EED1;
    JSR.W ($0FA8,X)                                                      ;A2EED4;
    LDA.W $0FA8,X                                                        ;A2EED7;
    CMP.W #Function_Kamer_MovingUp                                       ;A2EEDA;
    BNE +                                                                ;A2EEDD;
    BRA .return                                                          ;A2EEDF;


  + LDA.W $0FA8,X                                                        ;A2EEE1;
    CMP.W #Function_Kamer_MovingDown                                     ;A2EEE4;
    BEQ .return                                                          ;A2EEE7;
    LDA.W $182C                                                          ;A2EEE9;
    AND.W $182E                                                          ;A2EEEC;
    AND.W $1830                                                          ;A2EEEF;
    AND.W $1832                                                          ;A2EEF2;
    CMP.W #$FFFF                                                         ;A2EEF5;
    BEQ .return                                                          ;A2EEF8;
    CMP.W $0E54                                                          ;A2EEFA;
    BNE .return                                                          ;A2EEFD;
    LDA.W $0A6E                                                          ;A2EEFF;
    BEQ .return                                                          ;A2EF02;
    JSL.L PowerBombReaction_ShutterShootable_ShutterDestroyable_Kamer    ;A2EF04;

.return:
    RTL                                                                  ;A2EF08;


Function_Shutter_Kamer_Initial:
    LDX.W $0E54                                                          ;A2EF09;
    LDA.L $7E780E,X                                                      ;A2EF0C;
    TAX                                                                  ;A2EF10;
    JSR.W (KamerInitialFunctionPointers,X)                               ;A2EF11;
    RTS                                                                  ;A2EF14;


Function_Shutter_Kamer_WaitForTimer:
    LDX.W $0E54                                                          ;A2EF15;
    DEC.W $0FAA,X                                                        ;A2EF18;
    BNE .return                                                          ;A2EF1B;
    LDA.L $7E780C,X                                                      ;A2EF1D;
    STA.W $0FAA,X                                                        ;A2EF21;
    JSR.W ActivateKamer                                                  ;A2EF24;

.return:
    RTS                                                                  ;A2EF27;


Function_Shutter_Kamer_WaitForSamusToGetNear:
    LDX.W $0E54                                                          ;A2EF28;
    LDA.L $7E780C,X                                                      ;A2EF2B;
    JSL.L IsSamusWithinAPixelColumnsOfEnemy                              ;A2EF2F;
    BEQ .return                                                          ;A2EF33;
    JSR.W ActivateKamer                                                  ;A2EF35;

.return:
    RTS                                                                  ;A2EF38;


Function_Shutter_Kamer_Activate:
    LDX.W $0E54                                                          ;A2EF39;
    JSR.W ActivateKamer                                                  ;A2EF3C;
    RTS                                                                  ;A2EF3F;


Function_Shutter_Kamer_GetEnemyIndex:
    LDX.W $0E54                                                          ;A2EF40;
    RTS                                                                  ;A2EF43;


ActivateKamer:
    LDA.W #Function_Kamer_MovingUp                                       ;A2EF44;
    STA.W $0FA8,X                                                        ;A2EF47;
    LDA.L $7E7802,X                                                      ;A2EF4A;
    BEQ .keepUp                                                          ;A2EF4E;
    LDA.W #Function_Kamer_MovingDown                                     ;A2EF50;
    STA.W $0FA8,X                                                        ;A2EF53;

.keepUp:
    JSR.W PlayGateOpeningClosingSFXIfOnScreen                            ;A2EF56;
    RTS                                                                  ;A2EF59;


PlayGateOpeningClosingSFXIfOnScreen:
    JSL.L CheckIfEnemyCenterIsOnScreen                                   ;A2EF5A;
    BNE .return                                                          ;A2EF5E;
    LDA.W #$000E                                                         ;A2EF60;
    JSL.L QueueSound_Lib3_Max6                                           ;A2EF63;

.return:
    RTS                                                                  ;A2EF67;


Function_Kamer_MovingUp:
    LDX.W $0E54                                                          ;A2EF68;
    LDA.W $0F7E,X                                                        ;A2EF6B;
    STA.L $7E781C,X                                                      ;A2EF6E;
    LDA.W #$0000                                                         ;A2EF72;
    STA.L $7E7814,X                                                      ;A2EF75;
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A2EF79;
    BEQ .notTouchingSamusFromBelow                                       ;A2EF7D;
    LDA.W #$0001                                                         ;A2EF7F;
    STA.L $7E7814,X                                                      ;A2EF82;

.notTouchingSamusFromBelow:
    LDA.W $0F80,X                                                        ;A2EF86;
    CLC                                                                  ;A2EF89;
    ADC.W $0FB0,X                                                        ;A2EF8A;
    BCC +                                                                ;A2EF8D;
    INC.W $0F7E,X                                                        ;A2EF8F;

  + STA.W $0F80,X                                                        ;A2EF92;
    LDA.W $0F7E,X                                                        ;A2EF95;
    CLC                                                                  ;A2EF98;
    ADC.W $0FB2,X                                                        ;A2EF99;
    STA.W $0F7E,X                                                        ;A2EF9C;
    LDA.L $7E7814,X                                                      ;A2EF9F;
    BEQ .notMovingSamus                                                  ;A2EFA3;
    LDA.W $0F7E,X                                                        ;A2EFA5;
    SEC                                                                  ;A2EFA8;
    SBC.L $7E781C,X                                                      ;A2EFA9;
    STA.W $0B5C                                                          ;A2EFAD;

.notMovingSamus:
    LDA.L $7E781E,X                                                      ;A2EFB0;
    CMP.W $0F7E,X                                                        ;A2EFB4;
    BMI .return                                                          ;A2EFB7;
    LDA.L $7E7810,X                                                      ;A2EFB9;
    CMP.W #$0FF0                                                         ;A2EFBD;
    BEQ .setFunction                                                     ;A2EFC0;
    STA.W $0FAA,X                                                        ;A2EFC2;
    LDA.W #Function_Kamer_StoppedMovingUp                                ;A2EFC5;
    STA.W $0FA8,X                                                        ;A2EFC8;
    BRA .return                                                          ;A2EFCB;


.setFunction:
    LDA.W #Function_Shutter_Kamer_GetEnemyIndex_duplicate                ;A2EFCD;
    STA.W $0FA8,X                                                        ;A2EFD0;

.return:
    RTS                                                                  ;A2EFD3;


Function_Kamer_MovingDown:
    LDX.W $0E54                                                          ;A2EFD4;
    LDA.W $0F7E,X                                                        ;A2EFD7;
    STA.L $7E781C,X                                                      ;A2EFDA;
    LDA.W #$0000                                                         ;A2EFDE;
    STA.L $7E7814,X                                                      ;A2EFE1;
    JSL.L CheckIfEnemyIsTouchingSamusFromBelow                           ;A2EFE5;
    BEQ .notTouchingSamusFromBelow                                       ;A2EFE9;
    LDA.W #$0001                                                         ;A2EFEB;
    STA.L $7E7814,X                                                      ;A2EFEE;

.notTouchingSamusFromBelow:
    LDA.W $0F80,X                                                        ;A2EFF2;
    CLC                                                                  ;A2EFF5;
    ADC.W $0FAC,X                                                        ;A2EFF6;
    BCC +                                                                ;A2EFF9;
    INC.W $0F7E,X                                                        ;A2EFFB;

  + STA.W $0F80,X                                                        ;A2EFFE;
    LDA.W $0F7E,X                                                        ;A2F001;
    CLC                                                                  ;A2F004;
    ADC.W $0FAE,X                                                        ;A2F005;
    STA.W $0F7E,X                                                        ;A2F008;
    LDA.L $7E7814,X                                                      ;A2F00B;
    BEQ .notMovingSamus                                                  ;A2F00F;
    LDA.W $0F7E,X                                                        ;A2F011;
    SEC                                                                  ;A2F014;
    SBC.L $7E781C,X                                                      ;A2F015;
    STA.W $0B5C                                                          ;A2F019;

.notMovingSamus:
    LDA.W $0F7E,X                                                        ;A2F01C;
    CMP.L $7E7820,X                                                      ;A2F01F;
    BMI .return                                                          ;A2F023;
    LDA.L $7E7812,X                                                      ;A2F025;
    CMP.W #$0FF0                                                         ;A2F029;
    BEQ .setFunction                                                     ;A2F02C;
    STA.W $0FAA,X                                                        ;A2F02E;
    LDA.W #Function_Kamer_StoppedMovingDown                              ;A2F031;
    STA.W $0FA8,X                                                        ;A2F034;
    BRA .return                                                          ;A2F037;


.setFunction:
    LDA.W #Function_Shutter_Kamer_GetEnemyIndex_duplicate                ;A2F039;
    STA.W $0FA8,X                                                        ;A2F03C;

.return:
    RTS                                                                  ;A2F03F;


Function_Kamer_StoppedMovingUp:
    LDX.W $0E54                                                          ;A2F040;
    DEC.W $0FAA,X                                                        ;A2F043;
    BPL .return                                                          ;A2F046;
    LDA.W #Function_Kamer_MovingDown                                     ;A2F048;
    STA.W $0FA8,X                                                        ;A2F04B;
    LDA.L $7E7808,X                                                      ;A2F04E;
    CMP.W #$0001                                                         ;A2F052;
    BNE .upwards                                                         ;A2F055;
    LDA.L $7E7802,X                                                      ;A2F057;
    BEQ .upwards                                                         ;A2F05B;
    LDA.W #Function_Shutter_Kamer_WaitForSamusToGetNear                  ;A2F05D;
    STA.W $0FA8,X                                                        ;A2F060;

.upwards:
    LDX.W $0E54                                                          ;A2F063;
    LDA.W $0F78,X                                                        ;A2F066;
    CMP.W #EnemyHeaders_Kamer2                                           ;A2F069;
    BEQ .return                                                          ;A2F06C;
    JSR.W PlayGateOpeningClosingSFXIfOnScreen                            ;A2F06E;

.return:
    RTS                                                                  ;A2F071;


Function_Kamer_StoppedMovingDown:
    LDX.W $0E54                                                          ;A2F072;
    DEC.W $0FAA,X                                                        ;A2F075;
    BPL .return                                                          ;A2F078;
    JSR.W PlayGateOpeningClosingSFXIfOnScreen                            ;A2F07A;
    LDA.W #Function_Kamer_MovingUp                                       ;A2F07D;
    STA.W $0FA8,X                                                        ;A2F080;
    LDA.L $7E7808,X                                                      ;A2F083;
    CMP.W #$0001                                                         ;A2F087;
    BNE .return                                                          ;A2F08A;
    LDA.L $7E7802,X                                                      ;A2F08C;
    BNE .return                                                          ;A2F090;
    LDA.W #Function_Shutter_Kamer_WaitForSamusToGetNear                  ;A2F092;
    STA.W $0FA8,X                                                        ;A2F095;

.return:
    RTS                                                                  ;A2F098;


Function_Shutter_Kamer_GetEnemyIndex_duplicate:
    LDX.W $0E54                                                          ;A2F099;
    RTS                                                                  ;A2F09C;


EnemyTouch_ShutterShootable_ShutterDestroyable_Kamer:
    JSL.L PowerBombReaction_ShutterShootable_ShutterDestroyable_Kamer    ;A2F09D;
    RTL                                                                  ;A2F0A1;


EnemyShot_ShutterShootable_Kamer:
    LDX.W $0E54                                                          ;A2F0A2;
    JSL.L PowerBombReaction_ShutterShootable_ShutterDestroyable_Kamer    ;A2F0A5;
    RTL                                                                  ;A2F0A9;


EnemyTouch_ShutterDestroyable:
    LDX.W $0E54                                                          ;A2F0AA;
    JSL.L NormalEnemyShotAI                                              ;A2F0AD;
    JSL.L PowerBombReaction_ShutterShootable_ShutterDestroyable_Kamer    ;A2F0B1;
    RTL                                                                  ;A2F0B5;


PowerBombReaction_ShutterShootable_ShutterDestroyable_Kamer:
    LDX.W $0E54                                                          ;A2F0B6;
    LDA.L $7E780E,X                                                      ;A2F0B9;
    CMP.W #$0006                                                         ;A2F0BD;
    BMI .nonShootable                                                    ;A2F0C0;
    CMP.W #$0008                                                         ;A2F0C2;
    BEQ .function8                                                       ;A2F0C5;
    LDA.L $7E7818,X                                                      ;A2F0C7;
    BNE .return                                                          ;A2F0CB;
    LDA.W #$0001                                                         ;A2F0CD;
    STA.L $7E7818,X                                                      ;A2F0D0;

.function8:
    LDA.W $0FA8,X                                                        ;A2F0D4;
    CMP.W #Function_Kamer_MovingUp                                       ;A2F0D7;
    BNE .notMovingUp                                                     ;A2F0DA;
    BRA .return                                                          ;A2F0DC;


.notMovingUp:
    LDA.W $0FA8,X                                                        ;A2F0DE;
    CMP.W #Function_Kamer_MovingDown                                     ;A2F0E1;
    BEQ .return                                                          ;A2F0E4;
    LDA.W #Function_Kamer_MovingUp                                       ;A2F0E6;
    STA.W $0FA8,X                                                        ;A2F0E9;
    LDA.L $7E8000,X                                                      ;A2F0EC;
    BEQ .upwards                                                         ;A2F0F0;
    LDA.W #Function_Kamer_MovingDown                                     ;A2F0F2;
    STA.W $0FA8,X                                                        ;A2F0F5;

.upwards:
    LDA.L $7E8000,X                                                      ;A2F0F8;
    EOR.W #$0001                                                         ;A2F0FC;
    STA.L $7E8000,X                                                      ;A2F0FF;

.nonShootable:
    JSR.W PlayGateOpeningClosingSFXIfOnScreen                            ;A2F103;

.return:
    RTL                                                                  ;A2F106;


InitialHorizontalShutterFunctionPointers:
    dw Function_HorizontalShutter_Initial_WaitForTimer                   ;A2F107;
    dw Function_HorizontalShutter_Initial_WaitForSamusToGetNear          ;A2F109;
    dw Function_HorizontalShutter_Initial_Activate                       ;A2F10B;
    dw Function_HorizontalShutter_Initial_Nothing                        ;A2F10D;
    dw Function_HorizontalShutter_Initial_Nothing                        ;A2F10F;

InitAI_ShutterHorizShootable:
    LDX.W $0E54                                                          ;A2F111;
    JSR.W InitializeHorizontalShutter                                    ;A2F114;
    LDA.W #InstList_ShutterHorizontal                                    ;A2F117;
    STA.W $0F92,X                                                        ;A2F11A;
    RTL                                                                  ;A2F11D;


InitializeHorizontalShutter:
    LDA.W $0F92,X                                                        ;A2F11E;
    AND.W #$00FF                                                         ;A2F121;
    STA.L $7E7800,X                                                      ;A2F124;
    ASL A                                                                ;A2F128;
    ASL A                                                                ;A2F129;
    ASL A                                                                ;A2F12A;
    TAY                                                                  ;A2F12B;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing,Y                         ;A2F12C;
    STA.W $0FAE,X                                                        ;A2F12F;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+2,Y                       ;A2F132;
    STA.W $0FAC,X                                                        ;A2F135;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+4,Y                       ;A2F138;
    STA.W $0FB2,X                                                        ;A2F13B;
    LDA.W CommonEnemySpeeds_LinearlyIncreasing+6,Y                       ;A2F13E;
    STA.W $0FB0,X                                                        ;A2F141;
    LDA.W $0F93,X                                                        ;A2F144;
    AND.W #$00FF                                                         ;A2F147;
    STA.L $7E7802,X                                                      ;A2F14A;
    EOR.W #$0001                                                         ;A2F14E;
    STA.L $7E8000,X                                                      ;A2F151;
    LDA.W $0F88,X                                                        ;A2F155;
    AND.W #$00FF                                                         ;A2F158;
    STA.L $7E7804,X                                                      ;A2F15B;
    ASL A                                                                ;A2F15F;
    ASL A                                                                ;A2F160;
    ASL A                                                                ;A2F161;
    ASL A                                                                ;A2F162;
    STA.L $7E7810,X                                                      ;A2F163;
    LDA.W $0F89,X                                                        ;A2F167;
    AND.W #$00FF                                                         ;A2F16A;
    STA.L $7E7806,X                                                      ;A2F16D;
    ASL A                                                                ;A2F171;
    ASL A                                                                ;A2F172;
    ASL A                                                                ;A2F173;
    ASL A                                                                ;A2F174;
    STA.L $7E7812,X                                                      ;A2F175;
    LDA.W $0FB4,X                                                        ;A2F179;
    AND.W #$00FF                                                         ;A2F17C;
    STA.L $7E7808,X                                                      ;A2F17F;
    ASL A                                                                ;A2F183;
    STA.L $7E780E,X                                                      ;A2F184;
    LDA.W $0FB5,X                                                        ;A2F188;
    AND.W #$00FF                                                         ;A2F18B;
    STA.L $7E780A,X                                                      ;A2F18E;
    LDA.W $0FB6,X                                                        ;A2F192;
    STA.L $7E780C,X                                                      ;A2F195;
    STA.W $0FAA,X                                                        ;A2F199;
    LDA.W $0F7A,X                                                        ;A2F19C;
    STA.L $7E7822,X                                                      ;A2F19F;
    CLC                                                                  ;A2F1A3;
    ADC.L $7E780A,X                                                      ;A2F1A4;
    STA.L $7E7824,X                                                      ;A2F1A8;
    LDA.L $7E7802,X                                                      ;A2F1AC;
    BNE .notLeftwards                                                    ;A2F1B0;
    LDA.W $0F7A,X                                                        ;A2F1B2;
    STA.L $7E7824,X                                                      ;A2F1B5;
    SEC                                                                  ;A2F1B9;
    SBC.L $7E780A,X                                                      ;A2F1BA;
    STA.L $7E7822,X                                                      ;A2F1BE;

.notLeftwards:
    LDA.W #Function_HorizontalShutter_Initial                            ;A2F1C2;
    STA.W $0FA8,X                                                        ;A2F1C5;
    LDA.W $0AF6                                                          ;A2F1C8;
    STA.L $7E782A,X                                                      ;A2F1CB;
    LDA.W #$0000                                                         ;A2F1CF;
    STA.W $0F88,X                                                        ;A2F1D2;
    STA.L $7E7814,X                                                      ;A2F1D5;
    STA.L $7E7816,X                                                      ;A2F1D9;
    RTS                                                                  ;A2F1DD;


MainAI_ShutterHorizShootable:
    LDX.W $0E54                                                          ;A2F1DE;
    JSR.W ($0FA8,X)                                                      ;A2F1E1;
    LDA.W $0FA8,X                                                        ;A2F1E4;
    CMP.W #Function_HorizontalShutter_MovingLeft                         ;A2F1E7;
    BNE .notMovingLeft                                                   ;A2F1EA;
    BRA +                                                                ;A2F1EC;


.notMovingLeft:
    LDA.W $0FA8,X                                                        ;A2F1EE;
    CMP.W #Function_HorizontalShutter_MovingRight                        ;A2F1F1;
    BEQ +                                                                ;A2F1F4;
    LDA.W $182C                                                          ;A2F1F6;
    AND.W $182E                                                          ;A2F1F9;
    AND.W $1830                                                          ;A2F1FC;
    AND.W $1832                                                          ;A2F1FF;
    CMP.W #$FFFF                                                         ;A2F202;
    BEQ +                                                                ;A2F205;
    CMP.W $0E54                                                          ;A2F207;
    BNE +                                                                ;A2F20A;
    LDA.W $0A6E                                                          ;A2F20C;
    BEQ +                                                                ;A2F20F;
    JSL.L PowerBombReaction_CommonReaction_HorizontalShutter             ;A2F211;

  + LDA.W $0AF6                                                          ;A2F215;
    STA.L $7E782A,X                                                      ;A2F218;
    LDA.W $0AF8                                                          ;A2F21C;
    STA.L $7E782C,X                                                      ;A2F21F;
    RTL                                                                  ;A2F223;


Function_HorizontalShutter_Initial:
    LDX.W $0E54                                                          ;A2F224;
    LDA.L $7E780E,X                                                      ;A2F227;
    TAX                                                                  ;A2F22B;
    JSR.W (InitialHorizontalShutterFunctionPointers,X)                   ;A2F22C;
    RTS                                                                  ;A2F22F;


Function_HorizontalShutter_Initial_WaitForTimer:
    LDX.W $0E54                                                          ;A2F230;
    DEC.W $0FAA,X                                                        ;A2F233;
    BNE .return                                                          ;A2F236;
    LDA.L $7E780C,X                                                      ;A2F238;
    STA.W $0FAA,X                                                        ;A2F23C;
    JSR.W ActivateHorizontalShutter                                      ;A2F23F;

.return:
    RTS                                                                  ;A2F242;


Function_HorizontalShutter_Initial_WaitForSamusToGetNear:
    LDX.W $0E54                                                          ;A2F243;
    LDA.L $7E780C,X                                                      ;A2F246;
    JSL.L IsSamusWithinAPixelColumnsOfEnemy                              ;A2F24A;
    BEQ .return                                                          ;A2F24E;
    JSR.W ActivateHorizontalShutter                                      ;A2F250;

.return:
    RTS                                                                  ;A2F253;


Function_HorizontalShutter_Initial_Activate:
    LDX.W $0E54                                                          ;A2F254;
    JSR.W ActivateHorizontalShutter                                      ;A2F257;
    RTS                                                                  ;A2F25A;


Function_HorizontalShutter_Initial_Nothing:
    LDX.W $0E54                                                          ;A2F25B;
    RTS                                                                  ;A2F25E;


ActivateHorizontalShutter:
    LDA.W #Function_HorizontalShutter_MovingLeft                         ;A2F25F;
    STA.W $0FA8,X                                                        ;A2F262;
    LDA.L $7E7802,X                                                      ;A2F265;
    BEQ .return                                                          ;A2F269;
    LDA.W #Function_HorizontalShutter_MovingRight                        ;A2F26B;
    STA.W $0FA8,X                                                        ;A2F26E;

.return:
    RTS                                                                  ;A2F271;


Function_HorizontalShutter_MovingLeft:
    LDX.W $0E54                                                          ;A2F272;
    LDA.W $0F7A,X                                                        ;A2F275;
    STA.L $7E781A,X                                                      ;A2F278;
    LDA.W #$0000                                                         ;A2F27C;
    STA.L $7E7826,X                                                      ;A2F27F;
    JSL.L CheckIfEnemyIsTouchingSamus                                    ;A2F283;
    BEQ .notTouchingSamus                                                ;A2F287;
    LDA.W $0AF6                                                          ;A2F289;
    CMP.W $0F7A,X                                                        ;A2F28C;
    BPL .notTouchingSamus                                                ;A2F28F;
    LDA.W #$0001                                                         ;A2F291;
    STA.L $7E7826,X                                                      ;A2F294;

.notTouchingSamus:
    CLC                                                                  ;A2F298;
    LDA.W $0F7C,X                                                        ;A2F299;
    ADC.W $0FB0,X                                                        ;A2F29C;
    STA.W $0F7C,X                                                        ;A2F29F;
    LDA.W $0F7A,X                                                        ;A2F2A2;
    ADC.W $0FB2,X                                                        ;A2F2A5;
    STA.W $0F7A,X                                                        ;A2F2A8;
    LDA.L $7E7826,X                                                      ;A2F2AB;
    BEQ .notMovingSamus                                                  ;A2F2AF;
    LDA.W $0FB0,X                                                        ;A2F2B1;
    STA.W $0B56                                                          ;A2F2B4;
    LDA.W $0FB2,X                                                        ;A2F2B7;
    STA.W $0B58                                                          ;A2F2BA;
    JSR.W EjectSamusIfPressingRight                                      ;A2F2BD;

.notMovingSamus:
    LDA.L $7E7822,X                                                      ;A2F2C0;
    CMP.W $0F7A,X                                                        ;A2F2C4;
    BMI .return                                                          ;A2F2C7;
    LDA.L $7E7810,X                                                      ;A2F2C9;
    CMP.W #$0FF0                                                         ;A2F2CD;
    BEQ +                                                                ;A2F2D0;
    STA.W $0FAA,X                                                        ;A2F2D2;
    LDA.W #Function_HorizontalShutter_StoppedMovingLeft                  ;A2F2D5;
    STA.W $0FA8,X                                                        ;A2F2D8;
    BRA .return                                                          ;A2F2DB;


  + LDA.W #EnemyTouch_ShutterHorizShootable                              ;A2F2DD;
    STA.W $0FA8,X                                                        ;A2F2E0;

.return:
    RTS                                                                  ;A2F2E3;


Function_HorizontalShutter_MovingRight:
    LDX.W $0E54                                                          ;A2F2E4;
    LDA.W $0F7A,X                                                        ;A2F2E7;
    STA.L $7E781A,X                                                      ;A2F2EA;
    LDA.W #$0000                                                         ;A2F2EE;
    STA.L $7E7826,X                                                      ;A2F2F1;
    JSL.L CheckIfEnemyIsTouchingSamus                                    ;A2F2F5;
    BEQ .notTouchingSamus                                                ;A2F2F9;
    LDA.W $0AF6                                                          ;A2F2FB;
    CMP.W $0F7A,X                                                        ;A2F2FE;
    BMI .notTouchingSamus                                                ;A2F301;
    LDA.W #$0001                                                         ;A2F303;
    STA.L $7E7826,X                                                      ;A2F306;

.notTouchingSamus:
    CLC                                                                  ;A2F30A;
    LDA.W $0F7C,X                                                        ;A2F30B;
    ADC.W $0FAC,X                                                        ;A2F30E;
    STA.W $0F7C,X                                                        ;A2F311;
    LDA.W $0F7A,X                                                        ;A2F314;
    ADC.W $0FAE,X                                                        ;A2F317;
    STA.W $0F7A,X                                                        ;A2F31A;
    LDA.L $7E7826,X                                                      ;A2F31D;
    BEQ .notMovingSamus                                                  ;A2F321;
    LDA.W $0FAC,X                                                        ;A2F323;
    STA.W $0B56                                                          ;A2F326;
    LDA.W $0FAE,X                                                        ;A2F329;
    STA.W $0B58                                                          ;A2F32C;
    JSR.W EjectSamusIfPressingLeft                                       ;A2F32F;

.notMovingSamus:
    LDA.W $0F7A,X                                                        ;A2F332;
    CMP.L $7E7824,X                                                      ;A2F335;
    BMI .return                                                          ;A2F339;
    LDA.L $7E7812,X                                                      ;A2F33B;
    CMP.W #$0FF0                                                         ;A2F33F;
    BEQ +                                                                ;A2F342;
    STA.W $0FAA,X                                                        ;A2F344;
    LDA.W #Function_HorizontalShutter_StoppedMovingRight                 ;A2F347;
    STA.W $0FA8,X                                                        ;A2F34A;
    BRA .return                                                          ;A2F34D;


  + LDA.W #EnemyTouch_ShutterHorizShootable                              ;A2F34F;
    STA.W $0FA8,X                                                        ;A2F352;

.return:
    RTS                                                                  ;A2F355;


EjectSamusIfPressingRight:
    LDA.L $7E7826,X                                                      ;A2F356;
    BEQ .return                                                          ;A2F35A;
    LDA.B $8B                                                            ;A2F35C;
    AND.W #$0100                                                         ;A2F35E;
    BEQ .return                                                          ;A2F361;
    LDA.W $0B58                                                          ;A2F363;
    CLC                                                                  ;A2F366;
    ADC.W #$FFFC                                                         ;A2F367;
    STA.W $0B58                                                          ;A2F36A;
    STZ.W $0B5A                                                          ;A2F36D;

.return:
    RTS                                                                  ;A2F370;


EjectSamusIfPressingLeft:
    LDA.L $7E7826,X                                                      ;A2F371;
    BEQ .return                                                          ;A2F375;
    LDA.B $8B                                                            ;A2F377;
    AND.W #$0200                                                         ;A2F379;
    BEQ .return                                                          ;A2F37C;
    LDA.W $0B58                                                          ;A2F37E;
    CLC                                                                  ;A2F381;
    ADC.W #$0004                                                         ;A2F382;
    STA.W $0B58                                                          ;A2F385;
    STZ.W $0B5A                                                          ;A2F388;

.return:
    RTS                                                                  ;A2F38B;


Function_HorizontalShutter_StoppedMovingLeft:
    LDX.W $0E54                                                          ;A2F38C;
    DEC.W $0FAA,X                                                        ;A2F38F;
    BPL .return                                                          ;A2F392;
    LDA.W #Function_HorizontalShutter_MovingRight                        ;A2F394;
    STA.W $0FA8,X                                                        ;A2F397;
    LDA.L $7E7808,X                                                      ;A2F39A;
    CMP.W #$0001                                                         ;A2F39E;
    BNE .return                                                          ;A2F3A1;
    LDA.L $7E7802,X                                                      ;A2F3A3;
    BEQ .return                                                          ;A2F3A7;
    LDA.W #Function_HorizontalShutter_Initial_WaitForSamusToGetNear      ;A2F3A9;
    STA.W $0FA8,X                                                        ;A2F3AC;

.return:
    RTS                                                                  ;A2F3AF;


Function_HorizontalShutter_StoppedMovingRight:
    LDX.W $0E54                                                          ;A2F3B0;
    DEC.W $0FAA,X                                                        ;A2F3B3;
    BPL .return                                                          ;A2F3B6;
    LDA.W #Function_HorizontalShutter_MovingLeft                         ;A2F3B8;
    STA.W $0FA8,X                                                        ;A2F3BB;
    LDA.L $7E7808,X                                                      ;A2F3BE;
    CMP.W #$0001                                                         ;A2F3C2;
    BNE .return                                                          ;A2F3C5;
    LDA.L $7E7802,X                                                      ;A2F3C7;
    BNE .return                                                          ;A2F3CB;
    LDA.W #Function_HorizontalShutter_Initial_WaitForSamusToGetNear      ;A2F3CD;
    STA.W $0FA8,X                                                        ;A2F3D0;

.return:
    RTS                                                                  ;A2F3D3;


EnemyTouch_ShutterHorizShootable:
    LDX.W $0E54                                                          ;A2F3D4;
    RTS                                                                  ;A2F3D7;


EnemyTouch_HorizShootableShutter:
    LDX.W $0E54                                                          ;A2F3D8;
    LDA.W $0FA8,X                                                        ;A2F3DB;
    CMP.W #EnemyTouch_ShutterHorizShootable                              ;A2F3DE;
    BNE .return                                                          ;A2F3E1;
    LDA.W $0AF6                                                          ;A2F3E3;
    CMP.W $0F7A,X                                                        ;A2F3E6;
    BPL .checkPressingLeft                                               ;A2F3E9;
    LDA.B $8B                                                            ;A2F3EB;
    AND.W #$0100                                                         ;A2F3ED;
    BEQ .return                                                          ;A2F3F0;
    LDA.W #$FFFC                                                         ;A2F3F2;
    STA.W $0B58                                                          ;A2F3F5;
    STZ.W $0B5A                                                          ;A2F3F8;
    BRA .return                                                          ;A2F3FB;


.checkPressingLeft:
    LDA.B $8B                                                            ;A2F3FD;
    AND.W #$0200                                                         ;A2F3FF;
    BEQ .return                                                          ;A2F402;
    LDA.W #$0004                                                         ;A2F404;
    STA.W $0B58                                                          ;A2F407;
    STZ.W $0B5A                                                          ;A2F40A;

.return:
    RTL                                                                  ;A2F40D;


EnemyShot_ShutterHorizShootable:
    LDX.W $0E54                                                          ;A2F40E;
    JSL.L NormalEnemyShotAI_NoDeathCheck_NoEnemyShotGraphic_External     ;A2F411;
    JSL.L PowerBombReaction_CommonReaction_HorizontalShutter             ;A2F415;
    RTL                                                                  ;A2F419;


PowerBombReaction_CommonReaction_HorizontalShutter:
    LDX.W $0E54                                                          ;A2F41A;
    LDA.L $7E780E,X                                                      ;A2F41D;
    CMP.W #$0006                                                         ;A2F421;
    BMI .return                                                          ;A2F424;
    CMP.W #$0008                                                         ;A2F426;
    BEQ .function8                                                       ;A2F429;
    LDA.L $7E7818,X                                                      ;A2F42B;
    BNE .return                                                          ;A2F42F;
    LDA.W #$0001                                                         ;A2F431;
    STA.L $7E7818,X                                                      ;A2F434;

.function8:
    LDA.W $0FA8,X                                                        ;A2F438;
    CMP.W #Function_HorizontalShutter_MovingLeft                         ;A2F43B;
    BNE .notMovingLeft                                                   ;A2F43E;
    BRA .return                                                          ;A2F440;


.notMovingLeft:
    LDA.W $0FA8,X                                                        ;A2F442;
    CMP.W #Function_HorizontalShutter_MovingRight                        ;A2F445;
    BEQ .return                                                          ;A2F448;
    LDA.L $7E8000,X                                                      ;A2F44A;
    EOR.W #$0001                                                         ;A2F44E;
    STA.L $7E8000,X                                                      ;A2F451;
    LDA.W #Function_HorizontalShutter_MovingLeft                         ;A2F455;
    STA.W $0FA8,X                                                        ;A2F458;
    LDA.L $7E8000,X                                                      ;A2F45B;
    BEQ .return                                                          ;A2F45F;
    LDA.W #Function_HorizontalShutter_MovingRight                        ;A2F461;
    STA.W $0FA8,X                                                        ;A2F464;

.return:
    RTL                                                                  ;A2F467;


Spritemap_Kamer_0:
    dw $0002                                                             ;A2F468;
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $100)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $100)

Spritemap_Kamer_1:
    dw $0002                                                             ;A2F474;
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $102)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $102)

Spritemap_Kamer_2:
    dw $0002                                                             ;A2F480;
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $104)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $104)

Spritemap_Kamer_3:
    dw $0002                                                             ;A2F48C;
    %spritemapEntry(1, $00, $F8, 0, 1, 2, 0, $106)
    %spritemapEntry(1, $1F0, $F8, 0, 0, 2, 0, $106)


Freespace_BankA2_F4B0:                                                   ;A2F498;
; $B50 bytes
