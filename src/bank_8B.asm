
org $8B8000


Setup_PPU_TitleSequence:
    PHP                                                                  ;8B8000;
    SEP #$30                                                             ;8B8001;
    LDA.B #$80                                                           ;8B8003;
    STA.W $2100                                                          ;8B8005;
    STA.B $51                                                            ;8B8008;
    LDA.B #$03                                                           ;8B800A;
    STA.W $2101                                                          ;8B800C;
    STA.B $52                                                            ;8B800F;
    LDA.B #$07                                                           ;8B8011;
    STA.W $2105                                                          ;8B8013;
    STA.B $55                                                            ;8B8016;
    LDA.B #$80                                                           ;8B8018;
    STA.W $211A                                                          ;8B801A;
    STA.B $5F                                                            ;8B801D;
    LDA.B #$00                                                           ;8B801F;
    STA.B $58                                                            ;8B8021;
    STA.W $2107                                                          ;8B8023;
    STZ.B $59                                                            ;8B8026;
    STZ.W $2108                                                          ;8B8028;
    STZ.B $5A                                                            ;8B802B;
    STZ.W $2109                                                          ;8B802D;
    STZ.B $5C                                                            ;8B8030;
    STZ.W $210A                                                          ;8B8032;
    STZ.B $5D                                                            ;8B8035;
    STZ.W $210B                                                          ;8B8037;
    STZ.B $5E                                                            ;8B803A;
    STZ.W $210C                                                          ;8B803C;
    LDA.B #$10                                                           ;8B803F;
    STA.W $212C                                                          ;8B8041;
    STA.B $69                                                            ;8B8044;
    STZ.W $212D                                                          ;8B8046;
    STZ.B $6B                                                            ;8B8049;
    STZ.W $212E                                                          ;8B804B;
    STZ.B $6C                                                            ;8B804E;
    STZ.W $2115                                                          ;8B8050;
    STZ.W $2130                                                          ;8B8053;
    STZ.B $6E                                                            ;8B8056;
    STZ.W $2131                                                          ;8B8058;
    STZ.B $71                                                            ;8B805B;
    LDA.B #$E0                                                           ;8B805D;
    STA.W $2132                                                          ;8B805F;
    LDA.B #$00                                                           ;8B8062;
    STA.W $2133                                                          ;8B8064;
    STA.B $77                                                            ;8B8067;
    REP #$30                                                             ;8B8069;
    LDA.W #$0000                                                         ;8B806B;
    LDX.W #$3000                                                         ;8B806E;
    LDY.W #$07FE                                                         ;8B8071;
    JSL.L WriteYBytesOfATo_7E0000_X_16bit                                ;8B8074;
    STZ.W $0590                                                          ;8B8078;
    STZ.W $099E                                                          ;8B807B;
    STZ.W $0723                                                          ;8B807E;
    STZ.W $0725                                                          ;8B8081;
    STZ.W $0729                                                          ;8B8084;
    STZ.W $072B                                                          ;8B8087;
    STZ.W $072D                                                          ;8B808A;
    STZ.W $072F                                                          ;8B808D;
    STZ.W $0731                                                          ;8B8090;
    STZ.W $073D                                                          ;8B8093;
    STZ.W $073F                                                          ;8B8096;
    STZ.W $0741                                                          ;8B8099;
    STZ.W $0743                                                          ;8B809C;
    STZ.W $0745                                                          ;8B809F;
    STZ.W $0751                                                          ;8B80A2;
    STZ.W $0753                                                          ;8B80A5;
    STZ.W $0755                                                          ;8B80A8;
    STZ.W $0757                                                          ;8B80AB;
    STZ.W $0759                                                          ;8B80AE;
    STZ.W $09D6                                                          ;8B80B1;
    STZ.W $09D8                                                          ;8B80B4;
    STZ.W $198D                                                          ;8B80B7;
    LDA.W #$0100                                                         ;8B80BA;
    STA.W $198F                                                          ;8B80BD;
    STZ.W $1991                                                          ;8B80C0;
    STZ.W $1993                                                          ;8B80C3;
    STZ.W $1995                                                          ;8B80C6;
    STZ.W $1997                                                          ;8B80C9;
    STZ.W $1999                                                          ;8B80CC;
    STZ.W $199B                                                          ;8B80CF;
    STZ.W $199D                                                          ;8B80D2;
    STZ.W $199F                                                          ;8B80D5;
    PLP                                                                  ;8B80D8;
    RTS                                                                  ;8B80D9;


Setup_PPU_Intro:
    PHP                                                                  ;8B80DA;
    SEP #$30                                                             ;8B80DB;
    LDA.B #$80                                                           ;8B80DD;
    STA.W $2100                                                          ;8B80DF;
    STA.B $51                                                            ;8B80E2;
    LDA.B #$03                                                           ;8B80E4;
    STA.W $2101                                                          ;8B80E6;
    STA.B $52                                                            ;8B80E9;
    LDA.B #$09                                                           ;8B80EB;
    STA.W $2105                                                          ;8B80ED;
    STA.B $55                                                            ;8B80F0;
    LDA.B #$00                                                           ;8B80F2;
    STA.W $211A                                                          ;8B80F4;
    STA.B $5F                                                            ;8B80F7;
    LDA.B #$50                                                           ;8B80F9;
    STA.B $58                                                            ;8B80FB;
    STA.W $2107                                                          ;8B80FD;
    LDA.B #$48                                                           ;8B8100;
    STA.B $59                                                            ;8B8102;
    STA.W $2108                                                          ;8B8104;
    LDA.B #$4C                                                           ;8B8107;
    STA.B $5A                                                            ;8B8109;
    STA.W $2109                                                          ;8B810B;
    STZ.B $5C                                                            ;8B810E;
    STZ.W $210A                                                          ;8B8110;
    STZ.B $5D                                                            ;8B8113;
    STZ.W $210B                                                          ;8B8115;
    LDA.B #$04                                                           ;8B8118;
    STA.B $5E                                                            ;8B811A;
    STA.W $210C                                                          ;8B811C;
    LDA.B #$04                                                           ;8B811F;
    STA.W $212C                                                          ;8B8121;
    STA.B $69                                                            ;8B8124;
    STZ.W $212D                                                          ;8B8126;
    STZ.B $6B                                                            ;8B8129;
    STZ.W $212E                                                          ;8B812B;
    STZ.B $6C                                                            ;8B812E;
    STZ.W $2115                                                          ;8B8130;
    STZ.W $2130                                                          ;8B8133;
    STZ.B $6E                                                            ;8B8136;
    STZ.W $2131                                                          ;8B8138;
    STZ.B $71                                                            ;8B813B;
    LDA.B #$E0                                                           ;8B813D;
    STA.W $2132                                                          ;8B813F;
    LDA.B #$00                                                           ;8B8142;
    STA.W $2133                                                          ;8B8144;
    STA.B $77                                                            ;8B8147;
    STZ.B $6F                                                            ;8B8149;
    STZ.B $72                                                            ;8B814B;
    LDA.B #$20                                                           ;8B814D;
    STA.B $74                                                            ;8B814F;
    LDA.B #$40                                                           ;8B8151;
    STA.B $75                                                            ;8B8153;
    LDA.B #$80                                                           ;8B8155;
    STA.B $76                                                            ;8B8157;
    STZ.B $57                                                            ;8B8159;
    REP #$30                                                             ;8B815B;
    LDA.W #$002F                                                         ;8B815D;
    LDX.W #$3000                                                         ;8B8160;
    LDY.W #$07FE                                                         ;8B8163;
    JSL.L WriteYBytesOfATo_7E0000_X_16bit                                ;8B8166;
    STZ.W $0590                                                          ;8B816A;
    STZ.W $198D                                                          ;8B816D;
    LDA.W #$0100                                                         ;8B8170;
    STA.W $198F                                                          ;8B8173;
    STZ.W $1991                                                          ;8B8176;
    STZ.W $1993                                                          ;8B8179;
    STZ.W $1995                                                          ;8B817C;
    STZ.W $1997                                                          ;8B817F;
    STZ.W $1999                                                          ;8B8182;
    STZ.W $199B                                                          ;8B8185;
    STZ.W $199D                                                          ;8B8188;
    STZ.W $199F                                                          ;8B818B;
    STZ.W $1982                                                          ;8B818E;
    STZ.B $B5                                                            ;8B8191;
    STZ.B $B7                                                            ;8B8193;
    STZ.B $B9                                                            ;8B8195;
    STZ.B $BB                                                            ;8B8197;
    PLP                                                                  ;8B8199;
    RTS                                                                  ;8B819A;


Setup_PPU_CeresCutscene:
    PHP                                                                  ;8B819B;
    SEP #$30                                                             ;8B819C;
    LDA.B #$80                                                           ;8B819E;
    STA.W $2100                                                          ;8B81A0;
    STA.B $51                                                            ;8B81A3;
    LDA.B #$03                                                           ;8B81A5;
    STA.W $2101                                                          ;8B81A7;
    STA.B $52                                                            ;8B81AA;
    LDA.B #$07                                                           ;8B81AC;
    STA.W $2105                                                          ;8B81AE;
    STA.B $55                                                            ;8B81B1;
    LDA.B #$80                                                           ;8B81B3;
    STA.W $211A                                                          ;8B81B5;
    STA.B $5F                                                            ;8B81B8;
    LDA.B #$00                                                           ;8B81BA;
    STA.B $58                                                            ;8B81BC;
    STA.W $2107                                                          ;8B81BE;
    STZ.B $59                                                            ;8B81C1;
    STZ.W $2108                                                          ;8B81C3;
    STZ.B $5A                                                            ;8B81C6;
    STZ.W $2109                                                          ;8B81C8;
    STZ.B $5C                                                            ;8B81CB;
    STZ.W $210A                                                          ;8B81CD;
    STZ.B $5D                                                            ;8B81D0;
    STZ.W $210B                                                          ;8B81D2;
    STZ.B $5E                                                            ;8B81D5;
    STZ.W $210C                                                          ;8B81D7;
    LDA.B #$11                                                           ;8B81DA;
    STA.W $212C                                                          ;8B81DC;
    STA.B $69                                                            ;8B81DF;
    LDA.B #$00                                                           ;8B81E1;
    STA.W $212D                                                          ;8B81E3;
    STA.B $6B                                                            ;8B81E6;
    STZ.W $212E                                                          ;8B81E8;
    STZ.B $6C                                                            ;8B81EB;
    STZ.W $2115                                                          ;8B81ED;
    STZ.W $2130                                                          ;8B81F0;
    STZ.B $6E                                                            ;8B81F3;
    STZ.W $2131                                                          ;8B81F5;
    STZ.B $71                                                            ;8B81F8;
    LDA.B #$E0                                                           ;8B81FA;
    STA.W $2132                                                          ;8B81FC;
    STZ.B $6F                                                            ;8B81FF;
    STZ.B $72                                                            ;8B8201;
    LDA.B #$20                                                           ;8B8203;
    STA.B $74                                                            ;8B8205;
    LDA.B #$40                                                           ;8B8207;
    STA.B $75                                                            ;8B8209;
    LDA.B #$80                                                           ;8B820B;
    STA.B $76                                                            ;8B820D;
    STZ.B $57                                                            ;8B820F;
    REP #$30                                                             ;8B8211;
    STZ.W $1991                                                          ;8B8213;
    STZ.W $1993                                                          ;8B8216;
    STZ.W $1995                                                          ;8B8219;
    STZ.W $1997                                                          ;8B821C;
    STZ.W $1999                                                          ;8B821F;
    STZ.W $199B                                                          ;8B8222;
    STZ.W $199D                                                          ;8B8225;
    STZ.W $199F                                                          ;8B8228;
    STZ.W $1982                                                          ;8B822B;
    PLP                                                                  ;8B822E;
    RTS                                                                  ;8B822F;


Setup_PPU_SamusGoesToZebesCutscene:
    PHP                                                                  ;8B8230;
    SEP #$30                                                             ;8B8231;
    LDA.B #$80                                                           ;8B8233;
    STA.W $2100                                                          ;8B8235;
    STA.B $51                                                            ;8B8238;
    LDA.B #$03                                                           ;8B823A;
    STA.W $2101                                                          ;8B823C;
    STA.B $52                                                            ;8B823F;
    LDA.B #$01                                                           ;8B8241;
    STA.W $2105                                                          ;8B8243;
    STA.B $55                                                            ;8B8246;
    LDA.B #$00                                                           ;8B8248;
    STA.W $211A                                                          ;8B824A;
    STA.B $5F                                                            ;8B824D;
    LDA.B #$5C                                                           ;8B824F;
    STA.B $58                                                            ;8B8251;
    STA.W $2107                                                          ;8B8253;
    STZ.B $59                                                            ;8B8256;
    STZ.W $2108                                                          ;8B8258;
    STZ.B $5A                                                            ;8B825B;
    STZ.W $2109                                                          ;8B825D;
    STZ.B $5C                                                            ;8B8260;
    STZ.W $210A                                                          ;8B8262;
    LDA.B #$06                                                           ;8B8265;
    STA.B $5D                                                            ;8B8267;
    STA.W $210B                                                          ;8B8269;
    STZ.B $5E                                                            ;8B826C;
    STZ.W $210C                                                          ;8B826E;
    LDA.B #$11                                                           ;8B8271;
    STA.W $212C                                                          ;8B8273;
    STA.B $69                                                            ;8B8276;
    STZ.W $212D                                                          ;8B8278;
    STZ.B $6B                                                            ;8B827B;
    STZ.B $60                                                            ;8B827D;
    STZ.B $61                                                            ;8B827F;
    STZ.B $62                                                            ;8B8281;
    STZ.B $6C                                                            ;8B8283;
    STZ.B $6D                                                            ;8B8285;
    STZ.B $6F                                                            ;8B8287;
    STZ.B $72                                                            ;8B8289;
    REP #$30                                                             ;8B828B;
    STZ.B $B1                                                            ;8B828D;
    STZ.B $B3                                                            ;8B828F;
    PLP                                                                  ;8B8291;
    RTS                                                                  ;8B8292;


Setup_PPU_ZebesDestruction:
    PHP                                                                  ;8B8293;
    SEP #$30                                                             ;8B8294;
    LDA.B #$80                                                           ;8B8296;
    STA.W $2100                                                          ;8B8298;
    STA.B $51                                                            ;8B829B;
    LDA.B #$A3                                                           ;8B829D;
    STA.W $2101                                                          ;8B829F;
    STA.B $52                                                            ;8B82A2;
    LDA.B #$07                                                           ;8B82A4;
    STA.W $2105                                                          ;8B82A6;
    STA.B $55                                                            ;8B82A9;
    LDA.B #$00                                                           ;8B82AB;
    STA.W $211A                                                          ;8B82AD;
    STA.B $5F                                                            ;8B82B0;
    LDA.B #$00                                                           ;8B82B2;
    STA.B $58                                                            ;8B82B4;
    STA.W $2107                                                          ;8B82B6;
    STZ.B $59                                                            ;8B82B9;
    STZ.W $2108                                                          ;8B82BB;
    STZ.B $5A                                                            ;8B82BE;
    STZ.W $2109                                                          ;8B82C0;
    STZ.B $5C                                                            ;8B82C3;
    STZ.W $210A                                                          ;8B82C5;
    STZ.B $5D                                                            ;8B82C8;
    STZ.W $210B                                                          ;8B82CA;
    STZ.B $5E                                                            ;8B82CD;
    STZ.W $210C                                                          ;8B82CF;
    LDA.B #$11                                                           ;8B82D2;
    STA.W $212C                                                          ;8B82D4;
    STA.B $69                                                            ;8B82D7;
    STZ.W $212D                                                          ;8B82D9;
    STZ.B $6B                                                            ;8B82DC;
    STZ.W $212E                                                          ;8B82DE;
    STZ.B $6C                                                            ;8B82E1;
    STZ.W $2115                                                          ;8B82E3;
    STZ.W $2130                                                          ;8B82E6;
    STZ.B $6E                                                            ;8B82E9;
    STZ.W $2131                                                          ;8B82EB;
    STZ.B $71                                                            ;8B82EE;
    STZ.B $6F                                                            ;8B82F0;
    STZ.B $72                                                            ;8B82F2;
    LDA.B #$E0                                                           ;8B82F4;
    STA.W $2132                                                          ;8B82F6;
    LDA.B #$00                                                           ;8B82F9;
    STA.W $2133                                                          ;8B82FB;
    STA.B $77                                                            ;8B82FE;
    LDA.B #$20                                                           ;8B8300;
    STA.B $74                                                            ;8B8302;
    LDA.B #$40                                                           ;8B8304;
    STA.B $75                                                            ;8B8306;
    LDA.B #$80                                                           ;8B8308;
    STA.B $76                                                            ;8B830A;
    REP #$30                                                             ;8B830C;
    STZ.W $0590                                                          ;8B830E;
    STZ.W $0723                                                          ;8B8311;
    STZ.W $0725                                                          ;8B8314;
    STZ.W $198D                                                          ;8B8317;
    LDA.W #$0100                                                         ;8B831A;
    STA.W $198F                                                          ;8B831D;
    STZ.W $1991                                                          ;8B8320;
    STZ.W $1993                                                          ;8B8323;
    STZ.W $1995                                                          ;8B8326;
    STZ.W $1997                                                          ;8B8329;
    STZ.W $1999                                                          ;8B832C;
    STZ.W $199B                                                          ;8B832F;
    STZ.W $199D                                                          ;8B8332;
    STZ.W $199F                                                          ;8B8335;
    PLP                                                                  ;8B8338;
    RTS                                                                  ;8B8339;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_Setup_PPU_ZebesDestructionSpaceView_8B833A:
    PHP                                                                  ;8B833A;
    SEP #$30                                                             ;8B833B;
    LDA.B #$80                                                           ;8B833D;
    STA.W $2100                                                          ;8B833F;
    STA.B $51                                                            ;8B8342;
    LDA.B #$02                                                           ;8B8344;
    STA.W $2101                                                          ;8B8346;
    STA.B $52                                                            ;8B8349;
    LDA.B #$01                                                           ;8B834B;
    STA.W $2105                                                          ;8B834D;
    STA.B $55                                                            ;8B8350;
    STZ.W $211A                                                          ;8B8352;
    STZ.B $5F                                                            ;8B8355;
    LDA.B #$70                                                           ;8B8357;
    STA.B $58                                                            ;8B8359;
    STA.W $2107                                                          ;8B835B;
    LDA.B #$78                                                           ;8B835E;
    STA.B $59                                                            ;8B8360;
    STA.W $2108                                                          ;8B8362;
    STZ.B $5A                                                            ;8B8365;
    STZ.W $2109                                                          ;8B8367;
    STZ.B $5C                                                            ;8B836A;
    STZ.W $210A                                                          ;8B836C;
    LDA.B #$44                                                           ;8B836F;
    STA.B $5D                                                            ;8B8371;
    STA.W $210B                                                          ;8B8373;
    STZ.B $5E                                                            ;8B8376;
    STZ.W $210C                                                          ;8B8378;
    LDA.B #$10                                                           ;8B837B;
    STA.W $212C                                                          ;8B837D;
    STA.B $69                                                            ;8B8380;
    STZ.W $212D                                                          ;8B8382;
    STZ.B $6B                                                            ;8B8385;
    STZ.W $212E                                                          ;8B8387;
    STZ.B $6C                                                            ;8B838A;
    STZ.W $2115                                                          ;8B838C;
    STZ.W $2130                                                          ;8B838F;
    STZ.B $6E                                                            ;8B8392;
    STZ.W $2131                                                          ;8B8394;
    STZ.B $71                                                            ;8B8397;
    LDA.B #$E0                                                           ;8B8399;
    STA.W $2132                                                          ;8B839B;
    STZ.B $6F                                                            ;8B839E;
    STZ.B $72                                                            ;8B83A0;
    LDA.B #$20                                                           ;8B83A2;
    STA.B $74                                                            ;8B83A4;
    LDA.B #$40                                                           ;8B83A6;
    STA.B $75                                                            ;8B83A8;
    LDA.B #$80                                                           ;8B83AA;
    STA.B $76                                                            ;8B83AC;
    STZ.B $57                                                            ;8B83AE;
    REP #$30                                                             ;8B83B0;
    STZ.W $1991                                                          ;8B83B2;
    STZ.W $1993                                                          ;8B83B5;
    STZ.W $1995                                                          ;8B83B8;
    STZ.W $1997                                                          ;8B83BB;
    STZ.W $1999                                                          ;8B83BE;
    STZ.W $199B                                                          ;8B83C1;
    STZ.W $199D                                                          ;8B83C4;
    STZ.W $199F                                                          ;8B83C7;
    STZ.W $1982                                                          ;8B83CA;
    STZ.B $B5                                                            ;8B83CD;
    STZ.B $B7                                                            ;8B83CF;
    PLP                                                                  ;8B83D1;
    RTS                                                                  ;8B83D2;
endif ; !FEATURE_KEEP_UNREFERENCED


Setup_PPU_Credits:
    PHP                                                                  ;8B83D3;
    SEP #$30                                                             ;8B83D4;
    LDA.B #$80                                                           ;8B83D6;
    STA.W $2100                                                          ;8B83D8;
    STA.B $51                                                            ;8B83DB;
    LDA.B #$00                                                           ;8B83DD;
    STA.W $2101                                                          ;8B83DF;
    STA.B $52                                                            ;8B83E2;
    LDA.B #$01                                                           ;8B83E4;
    STA.W $2105                                                          ;8B83E6;
    STA.B $55                                                            ;8B83E9;
    LDA.B #$00                                                           ;8B83EB;
    STA.W $211A                                                          ;8B83ED;
    STA.B $5F                                                            ;8B83F0;
    LDA.B #$48                                                           ;8B83F2;
    STA.B $58                                                            ;8B83F4;
    STA.W $2107                                                          ;8B83F6;
    LDA.B #$4C                                                           ;8B83F9;
    STA.B $59                                                            ;8B83FB;
    STA.W $2108                                                          ;8B83FD;
    LDA.B #$24                                                           ;8B8400;
    STA.B $5A                                                            ;8B8402;
    STA.W $2109                                                          ;8B8404;
    STZ.B $5C                                                            ;8B8407;
    STZ.W $210A                                                          ;8B8409;
    LDA.B #$54                                                           ;8B840C;
    STA.B $5D                                                            ;8B840E;
    STA.W $210B                                                          ;8B8410;
    LDA.B #$02                                                           ;8B8413;
    STA.B $5E                                                            ;8B8415;
    STA.W $210C                                                          ;8B8417;
    LDA.B #$01                                                           ;8B841A;
    STA.W $212C                                                          ;8B841C;
    STA.B $69                                                            ;8B841F;
    STZ.W $212D                                                          ;8B8421;
    STZ.B $6B                                                            ;8B8424;
    STZ.B $60                                                            ;8B8426;
    STZ.B $61                                                            ;8B8428;
    STZ.B $62                                                            ;8B842A;
    STZ.B $6C                                                            ;8B842C;
    STZ.B $6D                                                            ;8B842E;
    STZ.B $6F                                                            ;8B8430;
    STZ.B $72                                                            ;8B8432;
    LDA.B #$20                                                           ;8B8434;
    STA.B $74                                                            ;8B8436;
    LDA.B #$40                                                           ;8B8438;
    STA.B $75                                                            ;8B843A;
    LDA.B #$80                                                           ;8B843C;
    STA.B $76                                                            ;8B843E;
    REP #$30                                                             ;8B8440;
    STZ.W $0590                                                          ;8B8442;
    LDA.W #$0100                                                         ;8B8445;
    STA.W $211B                                                          ;8B8448;
    STA.B $78                                                            ;8B844B;
    STZ.W $211C                                                          ;8B844D;
    STZ.B $7A                                                            ;8B8450;
    STZ.W $211D                                                          ;8B8452;
    STZ.B $7C                                                            ;8B8455;
    STA.W $211E                                                          ;8B8457;
    STA.B $7E                                                            ;8B845A;
    LDA.W #$0080                                                         ;8B845C;
    STA.W $211F                                                          ;8B845F;
    STA.B $80                                                            ;8B8462;
    STA.W $2120                                                          ;8B8464;
    STA.B $82                                                            ;8B8467;
    STZ.W $198D                                                          ;8B8469;
    LDA.W #$0001                                                         ;8B846C;
    STA.W $198F                                                          ;8B846F;
    STZ.B $B1                                                            ;8B8472;
    STZ.B $B3                                                            ;8B8474;
    STZ.B $B5                                                            ;8B8476;
    STZ.B $B7                                                            ;8B8478;
    STZ.W $1991                                                          ;8B847A;
    STZ.W $1993                                                          ;8B847D;
    STZ.W $1995                                                          ;8B8480;
    STZ.W $1997                                                          ;8B8483;
    PLP                                                                  ;8B8486;
    RTS                                                                  ;8B8487;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_ModifyMode7TransformAndBG1PosWithController_8B8488:
    PHP                                                                  ;8B8488;
    REP #$30                                                             ;8B8489;
    LDA.B $8B                                                            ;8B848B;
    BIT.W #$0200                                                         ;8B848D;
    BEQ .checkRight                                                      ;8B8490;
    LDA.W $1993                                                          ;8B8492;
    CLC                                                                  ;8B8495;
    ADC.W #$0002                                                         ;8B8496;
    STA.W $1993                                                          ;8B8499;

.checkRight:
    LDA.B $8B                                                            ;8B849C;
    BIT.W #$0100                                                         ;8B849E;
    BEQ .checkUp                                                         ;8B84A1;
    LDA.W $1993                                                          ;8B84A3;
    SEC                                                                  ;8B84A6;
    SBC.W #$0002                                                         ;8B84A7;
    STA.W $1993                                                          ;8B84AA;

.checkUp:
    LDA.B $8B                                                            ;8B84AD;
    BIT.W #$0800                                                         ;8B84AF;
    BEQ .checkDown                                                       ;8B84B2;
    LDA.W $1997                                                          ;8B84B4;
    CLC                                                                  ;8B84B7;
    ADC.W #$0002                                                         ;8B84B8;
    STA.W $1997                                                          ;8B84BB;

.checkDown:
    LDA.B $8B                                                            ;8B84BE;
    BIT.W #$0400                                                         ;8B84C0;
    BEQ .checkLR                                                         ;8B84C3;
    LDA.W $1997                                                          ;8B84C5;
    SEC                                                                  ;8B84C8;
    SBC.W #$0002                                                         ;8B84C9;
    STA.W $1997                                                          ;8B84CC;

.checkLR:
    LDA.B $8B                                                            ;8B84CF;
    BIT.W #$0010                                                         ;8B84D1;
    BNE .pressingR                                                       ;8B84D4;
    BIT.W #$0020                                                         ;8B84D6;
    BEQ .checkB                                                          ;8B84D9;
    LDA.W $198D                                                          ;8B84DB;
    DEC A                                                                ;8B84DE;
    AND.W #$00FF                                                         ;8B84DF;
    STA.W $198D                                                          ;8B84E2;
    BRA .checkB                                                          ;8B84E5;


.pressingR:
    LDA.W $198D                                                          ;8B84E7;
    INC A                                                                ;8B84EA;
    AND.W #$00FF                                                         ;8B84EB;
    STA.W $198D                                                          ;8B84EE;

.checkB:
    LDA.B $8B                                                            ;8B84F1;
    BIT.W #$8000                                                         ;8B84F3;
    BNE .zoomOut                                                         ;8B84F6;
    BIT.W #$0040                                                         ;8B84F8;
    BNE .zoomIn                                                          ;8B84FB;
    PLP                                                                  ;8B84FD;
    RTS                                                                  ;8B84FE;


.zoomOut:
    LDA.W $198F                                                          ;8B84FF;
    CMP.W #$7000                                                         ;8B8502;
    BPL .return                                                          ;8B8505;
    INC A                                                                ;8B8507;
    STA.W $198F                                                          ;8B8508;
    BRA .return                                                          ;8B850B;


.zoomIn:
    LDA.W $198F                                                          ;8B850D;
    BEQ .return                                                          ;8B8510;
    DEC A                                                                ;8B8512;
    STA.W $198F                                                          ;8B8513;

.return:
    PLP                                                                  ;8B8516;
    RTS                                                                  ;8B8517;
endif ; !FEATURE_KEEP_UNREFERENCED


HandleMode7TransformMatrixAndBG1Position_NoRotation:
    PHP                                                                  ;8B8518;
    REP #$30                                                             ;8B8519;
    LDA.W $198F                                                          ;8B851B;
    STA.B $78                                                            ;8B851E;
    STA.B $7E                                                            ;8B8520;
    STZ.B $7A                                                            ;8B8522;
    STZ.B $7C                                                            ;8B8524;
    LDA.W $1993                                                          ;8B8526;
    STA.B $B1                                                            ;8B8529;
    LDA.W $1997                                                          ;8B852B;
    STA.B $B3                                                            ;8B852E;
    PLP                                                                  ;8B8530;
    RTS                                                                  ;8B8531;


HandleMode7TransformMatrixAndBG1Position:
    PHP                                                                  ;8B8532;
    REP #$30                                                             ;8B8533;
    LDA.W $198D                                                          ;8B8535;
    CLC                                                                  ;8B8538;
    ADC.W #$0040                                                         ;8B8539;
    AND.W #$00FF                                                         ;8B853C;
    ASL A                                                                ;8B853F;
    TAX                                                                  ;8B8540;
    LDA.L SineCosineTables_8bitSine_SignExtended,X                       ;8B8541;
    STA.B $26                                                            ;8B8545;
    LDA.W $198F                                                          ;8B8547;
    STA.B $28                                                            ;8B854A;
    JSR.W Multiplication_16bitSigned_8B858F                              ;8B854C;
    SEP #$20                                                             ;8B854F;
    LDA.B $2A                                                            ;8B8551;
    XBA                                                                  ;8B8553;
    LDA.B $2D                                                            ;8B8554;
    REP #$20                                                             ;8B8556;
    STA.B $78                                                            ;8B8558;
    STA.B $7E                                                            ;8B855A;
    LDA.W $198D                                                          ;8B855C;
    AND.W #$00FF                                                         ;8B855F;
    ASL A                                                                ;8B8562;
    TAX                                                                  ;8B8563;
    LDA.L SineCosineTables_8bitSine_SignExtended,X                       ;8B8564;
    STA.B $26                                                            ;8B8568;
    LDA.W $198F                                                          ;8B856A;
    STA.B $28                                                            ;8B856D;
    JSR.W Multiplication_16bitSigned_8B858F                              ;8B856F;
    SEP #$20                                                             ;8B8572;
    LDA.B $2A                                                            ;8B8574;
    XBA                                                                  ;8B8576;
    LDA.B $2D                                                            ;8B8577;
    REP #$20                                                             ;8B8579;
    STA.B $7A                                                            ;8B857B;
    EOR.W #$FFFF                                                         ;8B857D;
    INC A                                                                ;8B8580;
    STA.B $7C                                                            ;8B8581;
    LDA.W $1993                                                          ;8B8583;
    STA.B $B1                                                            ;8B8586;
    LDA.W $1997                                                          ;8B8588;
    STA.B $B3                                                            ;8B858B;
    PLP                                                                  ;8B858D;
    RTS                                                                  ;8B858E;


Multiplication_16bitSigned_8B858F:
    PHP                                                                  ;8B858F;
    REP #$30                                                             ;8B8590;
    LDA.B $26                                                            ;8B8592;
    BPL .leftPositive                                                    ;8B8594;
    EOR.W #$FFFF                                                         ;8B8596;
    INC A                                                                ;8B8599;
    STA.B $26                                                            ;8B859A;
    LDA.B $28                                                            ;8B859C;
    BMI +                                                                ;8B859E;
    JSR.W Multiplication_16bitUnsigned_8B85EE                            ;8B85A0;
    LDA.B $2C                                                            ;8B85A3;
    EOR.W #$FFFF                                                         ;8B85A5;
    CLC                                                                  ;8B85A8;
    ADC.W #$0001                                                         ;8B85A9;
    STA.B $2C                                                            ;8B85AC;
    LDA.B $2A                                                            ;8B85AE;
    EOR.W #$FFFF                                                         ;8B85B0;
    ADC.W #$0000                                                         ;8B85B3;
    STA.B $2A                                                            ;8B85B6;
    PLP                                                                  ;8B85B8;
    RTS                                                                  ;8B85B9;


  + EOR.W #$FFFF                                                         ;8B85BA;
    INC A                                                                ;8B85BD;
    STA.B $28                                                            ;8B85BE;
    JSR.W Multiplication_16bitUnsigned_8B85EE                            ;8B85C0;
    PLP                                                                  ;8B85C3;
    RTS                                                                  ;8B85C4;


.leftPositiveRightNegative:
    EOR.W #$FFFF                                                         ;8B85C5;
    INC A                                                                ;8B85C8;
    STA.B $28                                                            ;8B85C9;
    JSR.W Multiplication_16bitUnsigned_8B85EE                            ;8B85CB;
    LDA.B $2C                                                            ;8B85CE;
    EOR.W #$FFFF                                                         ;8B85D0;
    CLC                                                                  ;8B85D3;
    ADC.W #$0001                                                         ;8B85D4;
    STA.B $2C                                                            ;8B85D7;
    LDA.B $2A                                                            ;8B85D9;
    EOR.W #$FFFF                                                         ;8B85DB;
    ADC.W #$0000                                                         ;8B85DE;
    STA.B $2A                                                            ;8B85E1;
    PLP                                                                  ;8B85E3;
    RTS                                                                  ;8B85E4;


.leftPositive:
    LDA.B $28                                                            ;8B85E5;
    BMI .leftPositiveRightNegative                                       ;8B85E7;
    JSR.W Multiplication_16bitUnsigned_8B85EE                            ;8B85E9;
    PLP                                                                  ;8B85EC;
    RTS                                                                  ;8B85ED;


Multiplication_16bitUnsigned_8B85EE:
    PHP                                                                  ;8B85EE;
    SEP #$30                                                             ;8B85EF;
    LDA.B $26                                                            ;8B85F1;
    STA.W $4202                                                          ;8B85F3;
    LDA.B $28                                                            ;8B85F6;
    STA.W $4203                                                          ;8B85F8;
    NOP                                                                  ;8B85FB;
    NOP                                                                  ;8B85FC;
    NOP                                                                  ;8B85FD;
    LDA.W $4216                                                          ;8B85FE;
    STA.B $2C                                                            ;8B8601;
    LDA.W $4217                                                          ;8B8603;
    STA.B $2D                                                            ;8B8606;
    LDA.B $27                                                            ;8B8608;
    STA.W $4202                                                          ;8B860A;
    LDA.B $28                                                            ;8B860D;
    STA.W $4203                                                          ;8B860F;
    NOP                                                                  ;8B8612;
    NOP                                                                  ;8B8613;
    NOP                                                                  ;8B8614;
    LDA.W $4216                                                          ;8B8615;
    STA.B $2E                                                            ;8B8618;
    LDA.W $4217                                                          ;8B861A;
    STA.B $2F                                                            ;8B861D;
    LDA.B $26                                                            ;8B861F;
    STA.W $4202                                                          ;8B8621;
    LDA.B $29                                                            ;8B8624;
    STA.W $4203                                                          ;8B8626;
    NOP                                                                  ;8B8629;
    NOP                                                                  ;8B862A;
    NOP                                                                  ;8B862B;
    LDA.W $4216                                                          ;8B862C;
    STA.B $30                                                            ;8B862F;
    LDA.W $4217                                                          ;8B8631;
    STA.B $31                                                            ;8B8634;
    LDA.B $27                                                            ;8B8636;
    STA.W $4202                                                          ;8B8638;
    LDA.B $29                                                            ;8B863B;
    STA.W $4203                                                          ;8B863D;
    NOP                                                                  ;8B8640;
    NOP                                                                  ;8B8641;
    NOP                                                                  ;8B8642;
    REP #$20                                                             ;8B8643;
    LDA.W $4216                                                          ;8B8645;
    STA.B $2A                                                            ;8B8648;
    LDA.B $2E                                                            ;8B864A;
    CLC                                                                  ;8B864C;
    ADC.B $30                                                            ;8B864D;
    STA.B $2E                                                            ;8B864F;
    SEP #$20                                                             ;8B8651;
    LDA.B $2E                                                            ;8B8653;
    CLC                                                                  ;8B8655;
    ADC.B $2D                                                            ;8B8656;
    STA.B $2D                                                            ;8B8658;
    LDA.B $2F                                                            ;8B865A;
    ADC.B $2A                                                            ;8B865C;
    STA.B $2A                                                            ;8B865E;
    BCC .return                                                          ;8B8660;
    INC.B $2B                                                            ;8B8662;

.return:
    PLP                                                                  ;8B8664;
    RTS                                                                  ;8B8665;


Handle_Fading_In_from_Bank8B:
    JSL.L HandleFadingIn                                                 ;8B8666;
    RTS                                                                  ;8B866A;


Activate_TileSequence_BlueLight:
    PHP                                                                  ;8B866B;
    SEP #$20                                                             ;8B866C;
    STZ.B $6F                                                            ;8B866E;
    LDA.B #$81                                                           ;8B8670;
    STA.B $72                                                            ;8B8672;
    LDA.B #$38                                                           ;8B8674;
    STA.B $74                                                            ;8B8676;
    LDA.B #$58                                                           ;8B8678;
    STA.B $75                                                            ;8B867A;
    LDA.B #$80                                                           ;8B867C;
    STA.B $76                                                            ;8B867E;
    PLP                                                                  ;8B8680;
    RTS                                                                  ;8B8681;


Deactivate_TileSequence_BlueLight:
    PHP                                                                  ;8B8682;
    SEP #$20                                                             ;8B8683;
    STZ.B $6F                                                            ;8B8685;
    STZ.B $72                                                            ;8B8687;
    LDA.B #$20                                                           ;8B8689;
    STA.B $74                                                            ;8B868B;
    LDA.B #$40                                                           ;8B868D;
    STA.B $75                                                            ;8B868F;
    LDA.B #$80                                                           ;8B8691;
    STA.B $76                                                            ;8B8693;
    PLP                                                                  ;8B8695;
    RTS                                                                  ;8B8696;


Debug_DisplayVersionInfo:
    RTS                                                                  ;8B8697;

    PHP                                                                  ;8B8698;
    REP #$30                                                             ;8B8699;
    LDX.W $0590                                                          ;8B869B;
    LDY.W #$0000                                                         ;8B869E;

.loopVersionString:
    LDA.W .versionStringOAMEntryXpos,Y                                   ;8B86A1;
    AND.W #$00FF                                                         ;8B86A4;
    STA.W $0370,X                                                        ;8B86A7;
    LDA.W #$00CC                                                         ;8B86AA;
    STA.W $0371,X                                                        ;8B86AD;
    PHY                                                                  ;8B86B0;
    LDA.W Debug_VersionString,Y                                          ;8B86B1;
    AND.W #$00FF                                                         ;8B86B4;
    BEQ .done                                                            ;8B86B7;
    CMP.W #$002E                                                         ;8B86B9;
    BEQ .decimalPoint                                                    ;8B86BC;
    SEC                                                                  ;8B86BE;
    SBC.W #$0030                                                         ;8B86BF;
    ASL A                                                                ;8B86C2;
    TAY                                                                  ;8B86C3;
    LDA.W .versionStringOAMEntryTileNumbersAttributes,Y                  ;8B86C4;
    STA.W $0372,X                                                        ;8B86C7;
    BRA .next                                                            ;8B86CA;


.decimalPoint:
    LDA.W #$39F3                                                         ;8B86CC;
    STA.W $0372,X                                                        ;8B86CF;

.next:
    PLY                                                                  ;8B86D2;
    TXA                                                                  ;8B86D3;
    CLC                                                                  ;8B86D4;
    ADC.W #$0004                                                         ;8B86D5;
    TAX                                                                  ;8B86D8;
    INY                                                                  ;8B86D9;
    BRA .loopVersionString                                               ;8B86DA;


.done:
    PLY                                                                  ;8B86DC;
    STX.W $0590                                                          ;8B86DD;
    LDA.L DebugConst_DisableAudio                                        ;8B86E0;
    BEQ .versionNumber                                                   ;8B86E4;
    LDA.W #$00B4                                                         ;8B86E6;
    STA.W $0370,X                                                        ;8B86E9;
    LDA.W #$00C4                                                         ;8B86EC;
    STA.W $0371,X                                                        ;8B86EF;
    LDA.W #$39E2                                                         ;8B86F2;
    STA.W $0372,X                                                        ;8B86F5;
    TXA                                                                  ;8B86F8;
    CLC                                                                  ;8B86F9;
    ADC.W #$0004                                                         ;8B86FA;
    TAX                                                                  ;8B86FD;

.versionNumber:
    LDA.L ROM_HEADER_version&$00FFFF                                     ;8B86FE;
    PHA                                                                  ;8B8702;
    AND.W #$000F                                                         ;8B8703;
    ASL A                                                                ;8B8706;
    STA.B $12                                                            ;8B8707;
    PLA                                                                  ;8B8709;
    AND.W #$00F0                                                         ;8B870A;
    LSR A                                                                ;8B870D;
    LSR A                                                                ;8B870E;
    LSR A                                                                ;8B870F;
    TAY                                                                  ;8B8710;
    LDA.W #$00E8                                                         ;8B8711;
    STA.W $0370,X                                                        ;8B8714;
    LDA.W #$00CC                                                         ;8B8717;
    STA.W $0371,X                                                        ;8B871A;
    LDA.W .versionStringOAMEntryTileNumbersAttributes,Y                  ;8B871D;
    STA.W $0372,X                                                        ;8B8720;
    LDA.W #$00F0                                                         ;8B8723;
    STA.W $0374,X                                                        ;8B8726;
    LDA.W #$00CC                                                         ;8B8729;
    STA.W $0375,X                                                        ;8B872C;
    LDY.B $12                                                            ;8B872F;
    LDA.W .versionStringOAMEntryTileNumbersAttributes,Y                  ;8B8731;
    STA.W $0376,X                                                        ;8B8734;
    TXA                                                                  ;8B8737;
    CLC                                                                  ;8B8738;
    ADC.W #$0008                                                         ;8B8739;
    TAX                                                                  ;8B873C;
    LDY.W #$0000                                                         ;8B873D;

.loopVer:
    LDA.W .VerOAMEntryXpos,Y                                             ;8B8740;
    STA.W $0370,X                                                        ;8B8743;
    LDA.W #$00CC                                                         ;8B8746;
    STA.W $0371,X                                                        ;8B8749;
    LDA.W .VerOAMEntryTileNumbersAttributes,Y                            ;8B874C;
    STA.W $0372,X                                                        ;8B874F;
    TXA                                                                  ;8B8752;
    CLC                                                                  ;8B8753;
    ADC.W #$0004                                                         ;8B8754;
    TAX                                                                  ;8B8757;
    INY                                                                  ;8B8758;
    INY                                                                  ;8B8759;
    CPY.W #$0006                                                         ;8B875A;
    BMI .loopVer                                                         ;8B875D;
    STX.W $0590                                                          ;8B875F;
    PLP                                                                  ;8B8762;
    RTS                                                                  ;8B8763;


.versionStringOAMEntryXpos:
    db $80,$88,$90,$98,$A0,$A8,$B0,$B8,$C0,$C8,$D0,$D8,$E0,$E8,$F0,$F8   ;8B8764;

.VerOAMEntryXpos:
    dw $0074,$006C,$0064                                                 ;8B8774;

.VerOAMEntryTileNumbersAttributes:
    dw $31F2,$31F1,$31F0                                                 ;8B877A;

.versionStringOAMEntryTileNumbersAttributes:
; '0123456789ABCDEF'
    dw $39F4,$39F5,$39F6,$39F7,$39F8,$39F9,$39FA,$39FB                   ;8B8780;
    dw $39FC,$39FD,$39D0,$39D1,$39D2,$39D3,$39D4,$39D5                   ;8B8790;

CinematicBGObjects_Update32x30CinematicBGTilemap:
    PHP                                                                  ;8B87A0;
    REP #$30                                                             ;8B87A1;
    LDA.B $55                                                            ;8B87A3;
    AND.W #$00FF                                                         ;8B87A5;
    CMP.W #$0007                                                         ;8B87A8;
    BEQ .return                                                          ;8B87AB;
    LDX.W $0330                                                          ;8B87AD;
    LDA.W #$0780                                                         ;8B87B0;
    STA.B $D0,X                                                          ;8B87B3;
    INX                                                                  ;8B87B5;
    INX                                                                  ;8B87B6;
    LDA.W #$3000                                                         ;8B87B7;
    STA.B $D0,X                                                          ;8B87BA;
    INX                                                                  ;8B87BC;
    INX                                                                  ;8B87BD;
    SEP #$20                                                             ;8B87BE;
    LDA.B #$7E                                                           ;8B87C0;
    STA.B $D0,X                                                          ;8B87C2;
    REP #$20                                                             ;8B87C4;
    INX                                                                  ;8B87C6;
    LDA.W $19F5                                                          ;8B87C7;
    STA.B $D0,X                                                          ;8B87CA;
    INX                                                                  ;8B87CC;
    INX                                                                  ;8B87CD;
    STX.W $0330                                                          ;8B87CE;

.return:
    PLP                                                                  ;8B87D1;
    RTS                                                                  ;8B87D2;


CinematicBGObjects_UpdateSamusEyesTilemap:
    PHP                                                                  ;8B87D3;
    REP #$30                                                             ;8B87D4;
    LDA.B $55                                                            ;8B87D6;
    AND.W #$00FF                                                         ;8B87D8;
    CMP.W #$0007                                                         ;8B87DB;
    BEQ .return                                                          ;8B87DE;
    LDX.W $0330                                                          ;8B87E0;
    LDA.W #$0080                                                         ;8B87E3;
    STA.B $D0,X                                                          ;8B87E6;
    INX                                                                  ;8B87E8;
    INX                                                                  ;8B87E9;
    LDA.W #$3B40                                                         ;8B87EA;
    STA.B $D0,X                                                          ;8B87ED;
    INX                                                                  ;8B87EF;
    INX                                                                  ;8B87F0;
    SEP #$20                                                             ;8B87F1;
    LDA.B #$7E                                                           ;8B87F3;
    STA.B $D0,X                                                          ;8B87F5;
    REP #$20                                                             ;8B87F7;
    INX                                                                  ;8B87F9;
    LDA.W #$49A0                                                         ;8B87FA;
    STA.B $D0,X                                                          ;8B87FD;
    INX                                                                  ;8B87FF;
    INX                                                                  ;8B8800;
    STX.W $0330                                                          ;8B8801;

.return:
    PLP                                                                  ;8B8804;
    RTS                                                                  ;8B8805;


CinematicBGObjects_Update32x32CinematicBGTilemap:
    PHP                                                                  ;8B8806;
    REP #$30                                                             ;8B8807;
    LDA.B $55                                                            ;8B8809;
    AND.W #$00FF                                                         ;8B880B;
    CMP.W #$0007                                                         ;8B880E;
    BEQ .return                                                          ;8B8811;
    LDX.W $0330                                                          ;8B8813;
    LDA.W #$0800                                                         ;8B8816;
    STA.B $D0,X                                                          ;8B8819;
    INX                                                                  ;8B881B;
    INX                                                                  ;8B881C;
    LDA.W #$3000                                                         ;8B881D;
    STA.B $D0,X                                                          ;8B8820;
    INX                                                                  ;8B8822;
    INX                                                                  ;8B8823;
    SEP #$20                                                             ;8B8824;
    LDA.B #$7E                                                           ;8B8826;
    STA.B $D0,X                                                          ;8B8828;
    REP #$20                                                             ;8B882A;
    INX                                                                  ;8B882C;
    LDA.W $19F5                                                          ;8B882D;
    STA.B $D0,X                                                          ;8B8830;
    INX                                                                  ;8B8832;
    INX                                                                  ;8B8833;
    STX.W $0330                                                          ;8B8834;

.return:
    PLP                                                                  ;8B8837;
    RTS                                                                  ;8B8838;


CinematicBGObjects_ProcessIndirectInstruction:
    PHP                                                                  ;8B8839;
    REP #$30                                                             ;8B883A;
    PHX                                                                  ;8B883C;
    PHY                                                                  ;8B883D;
    LDY.W $19B5,X                                                        ;8B883E;
    LDA.W $0000,Y                                                        ;8B8841;
    STA.B $1C                                                            ;8B8844;
    JMP.W ($001C)                                                        ;8B8846;


IndirectInstructionFunction_Nothing:
    PLY                                                                  ;8B8849;
    PLX                                                                  ;8B884A;
    PLP                                                                  ;8B884B;
    RTS                                                                  ;8B884C;


IndirectInstructionFunction_DrawTextCharacter:
    LDA.W $1BA1                                                          ;8B884D;
    BNE .toggleFlag                                                      ;8B8850;
    LDA.W #$0001                                                         ;8B8852;
    STA.W $1BA1                                                          ;8B8855;
    BRA .drawText                                                        ;8B8858;


.toggleFlag:
    STZ.W $1BA1                                                          ;8B885A;

.drawText:
    JSR.W Spawn_TextGlowObject                                           ;8B885D;
    PHY                                                                  ;8B8860;
    LDY.W $19CD,X                                                        ;8B8861;
    LDX.W #$001E                                                         ;8B8864;
    LDA.W $0006,Y                                                        ;8B8867;
    BMI .pointer                                                         ;8B886A;
    LDA.W $0008,Y                                                        ;8B886C;
    AND.W #$00FF                                                         ;8B886F;
    ASL A                                                                ;8B8872;
    ASL A                                                                ;8B8873;
    ASL A                                                                ;8B8874;
    STA.W $1A7D,X                                                        ;8B8875;
    LDA.W $0009,Y                                                        ;8B8878;
    AND.W #$00FF                                                         ;8B887B;
    ASL A                                                                ;8B887E;
    ASL A                                                                ;8B887F;
    ASL A                                                                ;8B8880;
    SEC                                                                  ;8B8881;
    SBC.W #$0008                                                         ;8B8882;
    STA.W $1A9D,X                                                        ;8B8885;
    BRA .merge                                                           ;8B8888;


.pointer:
    LDA.W #$0008                                                         ;8B888A;
    STA.W $1A7D,X                                                        ;8B888D;
    LDA.W $0003,Y                                                        ;8B8890;
    AND.W #$00FF                                                         ;8B8893;
    INC A                                                                ;8B8896;
    INC A                                                                ;8B8897;
    ASL A                                                                ;8B8898;
    ASL A                                                                ;8B8899;
    ASL A                                                                ;8B889A;
    SEC                                                                  ;8B889B;
    SBC.W #$0008                                                         ;8B889C;
    STA.W $1A9D,X                                                        ;8B889F;

.merge:
    LDA.W $0004,Y                                                        ;8B88A2;
    CMP.W #IndirectInstructions_IntroText_Space                          ;8B88A5;
    BEQ .fallthrough                                                     ;8B88A8;
    LDA.W $1BA1                                                          ;8B88AA;
    BEQ .fallthrough                                                     ;8B88AD;
    LDA.W #$000D                                                         ;8B88AF;
    JSL.L QueueSound_Lib3_Max6                                           ;8B88B2;

.fallthrough:
    PLY                                                                  ;8B88B6;

IndirectInstructionFunction_DrawTextToTilemap:
    JSR.W CinematicBGObjects_X_16_TilemapOffsetForTile_12_13             ;8B88B7;
    LDA.W $0002,Y                                                        ;8B88BA;
    AND.W #$00FF                                                         ;8B88BD;
    STA.W $0012                                                          ;8B88C0;
    STA.W $0018                                                          ;8B88C3;
    LDA.W $0003,Y                                                        ;8B88C6;
    AND.W #$00FF                                                         ;8B88C9;
    STA.W $0014                                                          ;8B88CC;

.loop:
    LDA.W $0004,Y                                                        ;8B88CF;
    STA.L $7E3000,X                                                      ;8B88D2;
    INY                                                                  ;8B88D6;
    INY                                                                  ;8B88D7;
    INX                                                                  ;8B88D8;
    INX                                                                  ;8B88D9;
    DEC.W $0012                                                          ;8B88DA;
    BEQ +                                                                ;8B88DD;
    BRA .loop                                                            ;8B88DF;


  + LDA.W $0018                                                          ;8B88E1;
    STA.W $0012                                                          ;8B88E4;
    DEC.W $0014                                                          ;8B88E7;
    BEQ .return                                                          ;8B88EA;
    LDA.W $0016                                                          ;8B88EC;
    CLC                                                                  ;8B88EF;
    ADC.W #$0040                                                         ;8B88F0;
    STA.W $0016                                                          ;8B88F3;
    TAX                                                                  ;8B88F6;
    BRA .loop                                                            ;8B88F7;


.return:
    PLY                                                                  ;8B88F9;
    PLX                                                                  ;8B88FA;
    PLP                                                                  ;8B88FB;
    RTS                                                                  ;8B88FC;


IndirectInstructionFunction_DrawSamusEyesToTilemap:
    JSR.W CinematicBGObjects_X_16_TilemapOffsetForTile_12_13             ;8B88FD;
    LDA.W $0002,Y                                                        ;8B8900;
    AND.W #$00FF                                                         ;8B8903;
    STA.W $0012                                                          ;8B8906;
    STA.W $0018                                                          ;8B8909;
    LDA.W $0003,Y                                                        ;8B890C;
    AND.W #$00FF                                                         ;8B890F;
    STA.W $0014                                                          ;8B8912;

.loops:
    LDA.W $0004,Y                                                        ;8B8915;
    STA.L $7E3800,X                                                      ;8B8918;
    INY                                                                  ;8B891C;
    INY                                                                  ;8B891D;
    INX                                                                  ;8B891E;
    INX                                                                  ;8B891F;
    DEC.W $0012                                                          ;8B8920;
    BEQ +                                                                ;8B8923;
    BRA .loops                                                           ;8B8925;


  + LDA.W $0018                                                          ;8B8927;
    STA.W $0012                                                          ;8B892A;
    DEC.W $0014                                                          ;8B892D;
    BEQ .return                                                          ;8B8930;
    LDA.W $0016                                                          ;8B8932;
    CLC                                                                  ;8B8935;
    ADC.W #$0040                                                         ;8B8936;
    STA.W $0016                                                          ;8B8939;
    TAX                                                                  ;8B893C;
    BRA .loops                                                           ;8B893D;


.return:
    PLY                                                                  ;8B893F;
    PLX                                                                  ;8B8940;
    PLP                                                                  ;8B8941;
    RTS                                                                  ;8B8942;


CinematicBGObjects_X_16_TilemapOffsetForTile_12_13:
    LDA.W $0012                                                          ;8B8943;
    AND.W #$00FF                                                         ;8B8946;
    ASL A                                                                ;8B8949;
    STA.W $0014                                                          ;8B894A;
    SEP #$20                                                             ;8B894D;
    LDA.B #$40                                                           ;8B894F;
    STA.W $4202                                                          ;8B8951;
    LDA.W $0013                                                          ;8B8954;
    STA.W $4203                                                          ;8B8957;
    NOP                                                                  ;8B895A;
    NOP                                                                  ;8B895B;
    NOP                                                                  ;8B895C;
    REP #$20                                                             ;8B895D;
    LDA.W $4216                                                          ;8B895F;
    CLC                                                                  ;8B8962;
    ADC.W $0014                                                          ;8B8963;
    STA.W $0016                                                          ;8B8966;
    TAX                                                                  ;8B8969;
    RTS                                                                  ;8B896A;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_CinematicBGObjects_IndirectInstructionFunction_8B896B:
    JSR.W UNUSED_CinematicBGObjects_Mode7TilemapOffsetForTile_8B8A2C     ;8B896B;
    LDA.W $0002,Y                                                        ;8B896E;
    AND.W #$00FF                                                         ;8B8971;
    STA.W $0012                                                          ;8B8974;
    LDA.W $0003,Y                                                        ;8B8977;
    AND.W #$00FF                                                         ;8B897A;
    STA.W $0014                                                          ;8B897D;
    TYA                                                                  ;8B8980;
    CLC                                                                  ;8B8981;
    ADC.W #$0004                                                         ;8B8982;
    TAY                                                                  ;8B8985;
    LDX.W $0334                                                          ;8B8986;

.loop:
    LDA.W #$0080                                                         ;8B8989;
    STA.W $02D0,X                                                        ;8B898C;
    TYA                                                                  ;8B898F;
    STA.W $02D1,X                                                        ;8B8990;
    LDA.W #$008B                                                         ;8B8993;
    STA.W $02D3,X                                                        ;8B8996;
    LDA.W $0012                                                          ;8B8999;
    STA.W $02D4,X                                                        ;8B899C;
    LDA.W $0016                                                          ;8B899F;
    STA.W $02D6,X                                                        ;8B89A2;
    LDA.W #$0000                                                         ;8B89A5;
    STA.W $02D8,X                                                        ;8B89A8;
    TXA                                                                  ;8B89AB;
    CLC                                                                  ;8B89AC;
    ADC.W #$0009                                                         ;8B89AD;
    TAX                                                                  ;8B89B0;
    TYA                                                                  ;8B89B1;
    CLC                                                                  ;8B89B2;
    ADC.W $0012                                                          ;8B89B3;
    TAY                                                                  ;8B89B6;
    LDA.W $0016                                                          ;8B89B7;
    CLC                                                                  ;8B89BA;
    ADC.W #$0080                                                         ;8B89BB;
    STA.W $0016                                                          ;8B89BE;
    DEC.W $0014                                                          ;8B89C1;
    BEQ .return                                                          ;8B89C4;
    BRA .loop                                                            ;8B89C6;


.return:
    STX.W $0334                                                          ;8B89C8;
    PLY                                                                  ;8B89CB;
    PLX                                                                  ;8B89CC;
    PLP                                                                  ;8B89CD;
    RTS                                                                  ;8B89CE;


UNUSED_CinematicBGObjects_IndirectInstructionFunction_8B89CF:
    JSR.W UNUSED_CinematicBGObjects_Mode7TilemapOffsetForTile_8B8A2C     ;8B89CF;
    LDA.W $0002,Y                                                        ;8B89D2;
    AND.W #$00FF                                                         ;8B89D5;
    STA.W $0012                                                          ;8B89D8;
    LDA.W $0003,Y                                                        ;8B89DB;
    AND.W #$00FF                                                         ;8B89DE;
    STA.W $0014                                                          ;8B89E1;
    TYA                                                                  ;8B89E4;
    CLC                                                                  ;8B89E5;
    ADC.W #$0004                                                         ;8B89E6;
    TAY                                                                  ;8B89E9;
    LDX.W $0334                                                          ;8B89EA;

.loop:
    LDA.W #$0080                                                         ;8B89ED;
    STA.W $02D0,X                                                        ;8B89F0;
    TYA                                                                  ;8B89F3;
    STA.W $02D1,X                                                        ;8B89F4;
    LDA.W #$008B                                                         ;8B89F7;
    STA.W $02D3,X                                                        ;8B89FA;
    LDA.W $0014                                                          ;8B89FD;
    STA.W $02D4,X                                                        ;8B8A00;
    LDA.W $0016                                                          ;8B8A03;
    STA.W $02D6,X                                                        ;8B8A06;
    LDA.W #$0002                                                         ;8B8A09;
    STA.W $02D8,X                                                        ;8B8A0C;
    TXA                                                                  ;8B8A0F;
    CLC                                                                  ;8B8A10;
    ADC.W #$0009                                                         ;8B8A11;
    TAX                                                                  ;8B8A14;
    TYA                                                                  ;8B8A15;
    CLC                                                                  ;8B8A16;
    ADC.W $0014                                                          ;8B8A17;
    TAY                                                                  ;8B8A1A;
    INC.W $0016                                                          ;8B8A1B;
    DEC.W $0012                                                          ;8B8A1E;
    BEQ .return                                                          ;8B8A21;
    BRA .loop                                                            ;8B8A23;


.return:
    STX.W $0334                                                          ;8B8A25;
    PLY                                                                  ;8B8A28;
    PLX                                                                  ;8B8A29;
    PLP                                                                  ;8B8A2A;
    RTS                                                                  ;8B8A2B;


UNUSED_CinematicBGObjects_Mode7TilemapOffsetForTile_8B8A2C:
    LDA.W $0012                                                          ;8B8A2C;
    AND.W #$00FF                                                         ;8B8A2F;
    STA.W $0014                                                          ;8B8A32;
    SEP #$20                                                             ;8B8A35;
    LDA.B #$80                                                           ;8B8A37;
    STA.W $4202                                                          ;8B8A39;
    LDA.W $0013                                                          ;8B8A3C;
    STA.W $4203                                                          ;8B8A3F;
    NOP                                                                  ;8B8A42;
    NOP                                                                  ;8B8A43;
    NOP                                                                  ;8B8A44;
    REP #$20                                                             ;8B8A45;
    LDA.W $4216                                                          ;8B8A47;
    CLC                                                                  ;8B8A4A;
    ADC.W $0014                                                          ;8B8A4B;
    STA.W $0016                                                          ;8B8A4E;
    RTS                                                                  ;8B8A51;
endif ; !FEATURE_KEEP_UNREFERENCED


Calculate_SamusPosition_InRotatingElevatorRoom:
    PHP                                                                  ;8B8A52;
    PHB                                                                  ;8B8A53;
    PHK                                                                  ;8B8A54;
    PLB                                                                  ;8B8A55;
    REP #$30                                                             ;8B8A56;
    LDA.W $0AF6                                                          ;8B8A58;
    SEC                                                                  ;8B8A5B;
    SBC.B $80                                                            ;8B8A5C;
    STA.B $22                                                            ;8B8A5E;
    LDA.B $82                                                            ;8B8A60;
    SEC                                                                  ;8B8A62;
    SBC.W $0AFA                                                          ;8B8A63;
    STA.B $24                                                            ;8B8A66;
    LDA.B $22                                                            ;8B8A68;
    STA.B $26                                                            ;8B8A6A;
    LDA.B $78                                                            ;8B8A6C;
    STA.B $28                                                            ;8B8A6E;
    JSR.W Multiplication_16bitSigned_8B858F                              ;8B8A70;
    SEP #$20                                                             ;8B8A73;
    LDA.B $2A                                                            ;8B8A75;
    XBA                                                                  ;8B8A77;
    LDA.B $2D                                                            ;8B8A78;
    REP #$20                                                             ;8B8A7A;
    STA.B $1A                                                            ;8B8A7C;
    LDA.B $7A                                                            ;8B8A7E;
    STA.B $26                                                            ;8B8A80;
    LDA.B $24                                                            ;8B8A82;
    STA.B $28                                                            ;8B8A84;
    JSR.W Multiplication_16bitSigned_8B858F                              ;8B8A86;
    SEP #$20                                                             ;8B8A89;
    LDA.B $2A                                                            ;8B8A8B;
    XBA                                                                  ;8B8A8D;
    LDA.B $2D                                                            ;8B8A8E;
    REP #$20                                                             ;8B8A90;
    CLC                                                                  ;8B8A92;
    ADC.B $1A                                                            ;8B8A93;
    STA.B $1A                                                            ;8B8A95;
    LDA.B $80                                                            ;8B8A97;
    CLC                                                                  ;8B8A99;
    ADC.B $1A                                                            ;8B8A9A;
    STA.W $0AF6                                                          ;8B8A9C;
    LDA.B $7C                                                            ;8B8A9F;
    STA.B $26                                                            ;8B8AA1;
    LDA.B $22                                                            ;8B8AA3;
    STA.B $28                                                            ;8B8AA5;
    JSR.W Multiplication_16bitSigned_8B858F                              ;8B8AA7;
    SEP #$20                                                             ;8B8AAA;
    LDA.B $2A                                                            ;8B8AAC;
    XBA                                                                  ;8B8AAE;
    LDA.B $2D                                                            ;8B8AAF;
    REP #$20                                                             ;8B8AB1;
    STA.B $1A                                                            ;8B8AB3;
    LDA.B $78                                                            ;8B8AB5;
    STA.B $26                                                            ;8B8AB7;
    LDA.B $24                                                            ;8B8AB9;
    STA.B $28                                                            ;8B8ABB;
    JSR.W Multiplication_16bitSigned_8B858F                              ;8B8ABD;
    SEP #$20                                                             ;8B8AC0;
    LDA.B $2A                                                            ;8B8AC2;
    XBA                                                                  ;8B8AC4;
    LDA.B $2D                                                            ;8B8AC5;
    REP #$20                                                             ;8B8AC7;
    CLC                                                                  ;8B8AC9;
    ADC.B $1A                                                            ;8B8ACA;
    STA.B $1A                                                            ;8B8ACC;
    LDA.B $82                                                            ;8B8ACE;
    SEC                                                                  ;8B8AD0;
    SBC.B $1A                                                            ;8B8AD1;
    STA.W $0AFA                                                          ;8B8AD3;
    PLB                                                                  ;8B8AD6;
    PLP                                                                  ;8B8AD7;
    RTL                                                                  ;8B8AD8;


Calculate_ProjectilePosition_InRotatingElevatorRoom:
    PHP                                                                  ;8B8AD9;
    PHB                                                                  ;8B8ADA;
    PHK                                                                  ;8B8ADB;
    PLB                                                                  ;8B8ADC;
    REP #$30                                                             ;8B8ADD;
    LDA.W $0B64,X                                                        ;8B8ADF;
    SEC                                                                  ;8B8AE2;
    SBC.B $80                                                            ;8B8AE3;
    STA.B $22                                                            ;8B8AE5;
    LDA.B $82                                                            ;8B8AE7;
    SEC                                                                  ;8B8AE9;
    SBC.W $0B78,X                                                        ;8B8AEA;
    STA.B $24                                                            ;8B8AED;
    LDA.B $22                                                            ;8B8AEF;
    STA.B $26                                                            ;8B8AF1;
    LDA.B $78                                                            ;8B8AF3;
    STA.B $28                                                            ;8B8AF5;
    JSR.W Multiplication_16bitSigned_8B858F                              ;8B8AF7;
    SEP #$20                                                             ;8B8AFA;
    LDA.B $2A                                                            ;8B8AFC;
    XBA                                                                  ;8B8AFE;
    LDA.B $2D                                                            ;8B8AFF;
    REP #$20                                                             ;8B8B01;
    STA.B $1A                                                            ;8B8B03;
    LDA.B $7A                                                            ;8B8B05;
    STA.B $26                                                            ;8B8B07;
    LDA.B $24                                                            ;8B8B09;
    STA.B $28                                                            ;8B8B0B;
    JSR.W Multiplication_16bitSigned_8B858F                              ;8B8B0D;
    SEP #$20                                                             ;8B8B10;
    LDA.B $2A                                                            ;8B8B12;
    XBA                                                                  ;8B8B14;
    LDA.B $2D                                                            ;8B8B15;
    REP #$20                                                             ;8B8B17;
    CLC                                                                  ;8B8B19;
    ADC.B $1A                                                            ;8B8B1A;
    STA.B $1A                                                            ;8B8B1C;
    LDA.B $80                                                            ;8B8B1E;
    CLC                                                                  ;8B8B20;
    ADC.B $1A                                                            ;8B8B21;
    SEC                                                                  ;8B8B23;
    SBC.W $0911                                                          ;8B8B24;
    STA.B $14                                                            ;8B8B27;
    LDA.B $7C                                                            ;8B8B29;
    STA.B $26                                                            ;8B8B2B;
    LDA.B $22                                                            ;8B8B2D;
    STA.B $28                                                            ;8B8B2F;
    JSR.W Multiplication_16bitSigned_8B858F                              ;8B8B31;
    SEP #$20                                                             ;8B8B34;
    LDA.B $2A                                                            ;8B8B36;
    XBA                                                                  ;8B8B38;
    LDA.B $2D                                                            ;8B8B39;
    REP #$20                                                             ;8B8B3B;
    STA.B $1A                                                            ;8B8B3D;
    LDA.B $78                                                            ;8B8B3F;
    STA.B $26                                                            ;8B8B41;
    LDA.B $24                                                            ;8B8B43;
    STA.B $28                                                            ;8B8B45;
    JSR.W Multiplication_16bitSigned_8B858F                              ;8B8B47;
    SEP #$20                                                             ;8B8B4A;
    LDA.B $2A                                                            ;8B8B4C;
    XBA                                                                  ;8B8B4E;
    LDA.B $2D                                                            ;8B8B4F;
    REP #$20                                                             ;8B8B51;
    CLC                                                                  ;8B8B53;
    ADC.B $1A                                                            ;8B8B54;
    STA.B $1A                                                            ;8B8B56;
    LDA.B $82                                                            ;8B8B58;
    SEC                                                                  ;8B8B5A;
    SBC.B $1A                                                            ;8B8B5B;
    SEC                                                                  ;8B8B5D;
    SBC.W $0915                                                          ;8B8B5E;
    STA.B $12                                                            ;8B8B61;
    PLB                                                                  ;8B8B63;
    PLP                                                                  ;8B8B64;
    RTL                                                                  ;8B8B65;


Calculate_CeresSteamPosition_InRotatingElevatorRoom:
    PHP                                                                  ;8B8B66;
    PHB                                                                  ;8B8B67;
    PHK                                                                  ;8B8B68;
    PLB                                                                  ;8B8B69;
    REP #$30                                                             ;8B8B6A;
    LDA.B $12                                                            ;8B8B6C;
    SEC                                                                  ;8B8B6E;
    SBC.B $80                                                            ;8B8B6F;
    STA.B $22                                                            ;8B8B71;
    LDA.B $82                                                            ;8B8B73;
    SEC                                                                  ;8B8B75;
    SBC.B $14                                                            ;8B8B76;
    STA.B $24                                                            ;8B8B78;
    LDA.B $22                                                            ;8B8B7A;
    STA.B $26                                                            ;8B8B7C;
    LDA.B $78                                                            ;8B8B7E;
    STA.B $28                                                            ;8B8B80;
    JSR.W Multiplication_16bitSigned_8B858F                              ;8B8B82;
    SEP #$20                                                             ;8B8B85;
    LDA.B $2A                                                            ;8B8B87;
    XBA                                                                  ;8B8B89;
    LDA.B $2D                                                            ;8B8B8A;
    REP #$20                                                             ;8B8B8C;
    STA.B $1A                                                            ;8B8B8E;
    LDA.B $7A                                                            ;8B8B90;
    STA.B $26                                                            ;8B8B92;
    LDA.B $24                                                            ;8B8B94;
    STA.B $28                                                            ;8B8B96;
    JSR.W Multiplication_16bitSigned_8B858F                              ;8B8B98;
    SEP #$20                                                             ;8B8B9B;
    LDA.B $2A                                                            ;8B8B9D;
    XBA                                                                  ;8B8B9F;
    LDA.B $2D                                                            ;8B8BA0;
    REP #$20                                                             ;8B8BA2;
    CLC                                                                  ;8B8BA4;
    ADC.B $1A                                                            ;8B8BA5;
    STA.B $1A                                                            ;8B8BA7;
    LDA.B $80                                                            ;8B8BA9;
    CLC                                                                  ;8B8BAB;
    ADC.B $1A                                                            ;8B8BAC;
    STA.B $12                                                            ;8B8BAE;
    LDA.B $7C                                                            ;8B8BB0;
    STA.B $26                                                            ;8B8BB2;
    LDA.B $22                                                            ;8B8BB4;
    STA.B $28                                                            ;8B8BB6;
    JSR.W Multiplication_16bitSigned_8B858F                              ;8B8BB8;
    SEP #$20                                                             ;8B8BBB;
    LDA.B $2A                                                            ;8B8BBD;
    XBA                                                                  ;8B8BBF;
    LDA.B $2D                                                            ;8B8BC0;
    REP #$20                                                             ;8B8BC2;
    STA.B $1A                                                            ;8B8BC4;
    LDA.B $78                                                            ;8B8BC6;
    STA.B $26                                                            ;8B8BC8;
    LDA.B $24                                                            ;8B8BCA;
    STA.B $28                                                            ;8B8BCC;
    JSR.W Multiplication_16bitSigned_8B858F                              ;8B8BCE;
    SEP #$20                                                             ;8B8BD1;
    LDA.B $2A                                                            ;8B8BD3;
    XBA                                                                  ;8B8BD5;
    LDA.B $2D                                                            ;8B8BD6;
    REP #$20                                                             ;8B8BD8;
    CLC                                                                  ;8B8BDA;
    ADC.B $1A                                                            ;8B8BDB;
    STA.B $1A                                                            ;8B8BDD;
    LDA.B $82                                                            ;8B8BDF;
    SEC                                                                  ;8B8BE1;
    SBC.B $1A                                                            ;8B8BE2;
    STA.B $14                                                            ;8B8BE4;
    PLB                                                                  ;8B8BE6;
    PLP                                                                  ;8B8BE7;
    RTL                                                                  ;8B8BE8;


PaletteCrossFading_CopyCurrentPalettesToFadingPalettes:
    PHP                                                                  ;8B8BE9;
    PHB                                                                  ;8B8BEA;
    SEP #$30                                                             ;8B8BEB;
    LDA.B #$7F                                                           ;8B8BED;
    PHA                                                                  ;8B8BEF;
    PLB                                                                  ;8B8BF0;
    REP #$30                                                             ;8B8BF1;
    LDY.W #$0100                                                         ;8B8BF3;
    LDX.W #$0000                                                         ;8B8BF6;

.loop:
    LDA.L $7EC000,X                                                      ;8B8BF9;
    STA.L $7E2200,X                                                      ;8B8BFD;
    INX                                                                  ;8B8C01;
    INX                                                                  ;8B8C02;
    DEY                                                                  ;8B8C03;
    BNE .loop                                                            ;8B8C04;
    PLB                                                                  ;8B8C06;
    PLP                                                                  ;8B8C07;
    RTS                                                                  ;8B8C08;


PaletteCrossFading_DecomposePaletteDataForFading:
    PHP                                                                  ;8B8C09;
    PHB                                                                  ;8B8C0A;
    SEP #$30                                                             ;8B8C0B;
    LDA.B #$7F                                                           ;8B8C0D;
    PHA                                                                  ;8B8C0F;
    PLB                                                                  ;8B8C10;
    REP #$30                                                             ;8B8C11;
    LDX.W #$0000                                                         ;8B8C13;
    LDY.W #$0100                                                         ;8B8C16;

.loop:
    LDA.L $7E2200,X                                                      ;8B8C19;
    STA.B $12                                                            ;8B8C1D;
    AND.W #$001F                                                         ;8B8C1F;
    XBA                                                                  ;8B8C22;
    STA.L $7E2400,X                                                      ;8B8C23;
    XBA                                                                  ;8B8C27;
    ASL A                                                                ;8B8C28;
    ASL A                                                                ;8B8C29;
    ASL A                                                                ;8B8C2A;
    STA.L $7E2A00,X                                                      ;8B8C2B;
    LDA.B $12                                                            ;8B8C2F;
    AND.W #$03E0                                                         ;8B8C31;
    ASL A                                                                ;8B8C34;
    ASL A                                                                ;8B8C35;
    ASL A                                                                ;8B8C36;
    STA.L $7E2600,X                                                      ;8B8C37;
    XBA                                                                  ;8B8C3B;
    ASL A                                                                ;8B8C3C;
    ASL A                                                                ;8B8C3D;
    ASL A                                                                ;8B8C3E;
    STA.L $7E2C00,X                                                      ;8B8C3F;
    LDA.B $12                                                            ;8B8C43;
    AND.W #$7C00                                                         ;8B8C45;
    LSR A                                                                ;8B8C48;
    LSR A                                                                ;8B8C49;
    STA.L $7E2800,X                                                      ;8B8C4A;
    XBA                                                                  ;8B8C4E;
    ASL A                                                                ;8B8C4F;
    ASL A                                                                ;8B8C50;
    ASL A                                                                ;8B8C51;
    STA.L $7E2E00,X                                                      ;8B8C52;
    INX                                                                  ;8B8C56;
    INX                                                                  ;8B8C57;
    DEY                                                                  ;8B8C58;
    BNE .loop                                                            ;8B8C59;
    PLB                                                                  ;8B8C5B;
    PLP                                                                  ;8B8C5C;
    RTS                                                                  ;8B8C5D;


PaletteCrossFading_ClearYColorsStartingFromColorIndexX:
    PHP                                                                  ;8B8C5E;
    PHB                                                                  ;8B8C5F;
    SEP #$20                                                             ;8B8C60;
    LDA.B #$7F                                                           ;8B8C62;
    PHA                                                                  ;8B8C64;
    PLB                                                                  ;8B8C65;
    REP #$30                                                             ;8B8C66;

.loop:
    LDA.W #$0000                                                         ;8B8C68;
    STA.L $7E2200,X                                                      ;8B8C6B;
    STA.L $7E2400,X                                                      ;8B8C6F;
    STA.L $7E2600,X                                                      ;8B8C73;
    STA.L $7E2800,X                                                      ;8B8C77;
    INX                                                                  ;8B8C7B;
    INX                                                                  ;8B8C7C;
    DEY                                                                  ;8B8C7D;
    BNE .loop                                                            ;8B8C7E;
    PLB                                                                  ;8B8C80;
    PLP                                                                  ;8B8C81;
    RTS                                                                  ;8B8C82;


PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX:
    PHP                                                                  ;8B8C83;

.loop:
    LDA.L $7E2400,X                                                      ;8B8C84;
    SEC                                                                  ;8B8C88;
    SBC.L $7E2A00,X                                                      ;8B8C89;
    STA.L $7E2400,X                                                      ;8B8C8D;
    LDA.L $7E2600,X                                                      ;8B8C91;
    SEC                                                                  ;8B8C95;
    SBC.L $7E2C00,X                                                      ;8B8C96;
    STA.L $7E2600,X                                                      ;8B8C9A;
    LDA.L $7E2800,X                                                      ;8B8C9E;
    SEC                                                                  ;8B8CA2;
    SBC.L $7E2E00,X                                                      ;8B8CA3;
    STA.L $7E2800,X                                                      ;8B8CA7;
    INX                                                                  ;8B8CAB;
    INX                                                                  ;8B8CAC;
    DEY                                                                  ;8B8CAD;
    BNE .loop                                                            ;8B8CAE;
    PLP                                                                  ;8B8CB0;
    RTS                                                                  ;8B8CB1;


PaletteCrossFading_FadeInYColorsStartingFromColorIndexX:
    PHP                                                                  ;8B8CB2;

.loop:
    LDA.L $7E2400,X                                                      ;8B8CB3;
    CLC                                                                  ;8B8CB7;
    ADC.L $7E2A00,X                                                      ;8B8CB8;
    AND.W #$1FFF                                                         ;8B8CBC;
    STA.L $7E2400,X                                                      ;8B8CBF;
    LDA.L $7E2600,X                                                      ;8B8CC3;
    CLC                                                                  ;8B8CC7;
    ADC.L $7E2C00,X                                                      ;8B8CC8;
    AND.W #$1FFF                                                         ;8B8CCC;
    STA.L $7E2600,X                                                      ;8B8CCF;
    LDA.L $7E2800,X                                                      ;8B8CD3;
    CLC                                                                  ;8B8CD7;
    ADC.L $7E2E00,X                                                      ;8B8CD8;
    AND.W #$1FFF                                                         ;8B8CDC;
    STA.L $7E2800,X                                                      ;8B8CDF;
    INX                                                                  ;8B8CE3;
    INX                                                                  ;8B8CE4;
    DEY                                                                  ;8B8CE5;
    BNE .loop                                                            ;8B8CE6;
    PLP                                                                  ;8B8CE8;
    RTS                                                                  ;8B8CE9;


PaletteCrossFading_ComposeFadingPalettes:
    PHP                                                                  ;8B8CEA;
    LDX.W #$0000                                                         ;8B8CEB;
    LDY.W #$0100                                                         ;8B8CEE;

.loop:
    LDA.L $7E2400,X                                                      ;8B8CF1;
    XBA                                                                  ;8B8CF5;
    AND.W #$001F                                                         ;8B8CF6;
    STA.B $12                                                            ;8B8CF9;
    LDA.L $7E2600,X                                                      ;8B8CFB;
    LSR A                                                                ;8B8CFF;
    LSR A                                                                ;8B8D00;
    LSR A                                                                ;8B8D01;
    AND.W #$03E0                                                         ;8B8D02;
    ORA.B $12                                                            ;8B8D05;
    STA.B $12                                                            ;8B8D07;
    LDA.L $7E2800,X                                                      ;8B8D09;
    ASL A                                                                ;8B8D0D;
    ASL A                                                                ;8B8D0E;
    AND.W #$7C00                                                         ;8B8D0F;
    ORA.B $12                                                            ;8B8D12;
    STA.L $7E2000,X                                                      ;8B8D14;
    STA.L $7EC000,X                                                      ;8B8D18;
    INX                                                                  ;8B8D1C;
    INX                                                                  ;8B8D1D;
    DEY                                                                  ;8B8D1E;
    BNE .loop                                                            ;8B8D1F;
    PLP                                                                  ;8B8D21;
    RTS                                                                  ;8B8D22;


LoadTextIntroTiles:
    PHP
    SEP #$30
    LDA.B #$7F
    STA.B $02
    REP #$30
    PHX
    PHY
    LDY.W #$0000
    LDX.W #$0000

.loop:
    LDA.B [$00],Y
    CMP.W #$002F
    BEQ .space
    ORA.W #$2000
    STA.L $7E3600,X
    BRA .next


.space:
    LDA.W #$3029
    STA.L $7E3600,X

.next:
    INY
    INY
    INX
    INX
    CPX.B $12
    BMI .loop
    PLY
    PLX
    PLP
    RTS


LoadTextIntroBottomHalfTiles:
    PHP
    SEP #$30
    LDA.B #$7F
    STA.B $02
    REP #$30
    PHX
    PHY
    LDY.W #$0000
    LDX.W #$0000

.loop:
    LDA.B [$00],Y
    CMP.W #$002F
    BEQ .space
    ORA.W #$2000
    STA.L $7E3680,X
    BRA .next


.space:
    LDA.W #$3029
    STA.L $7E3680,X

.next:
    INY
    INY
    INX
    INX
    CPX.B $12
    BMI .loop
    PLY
    PLX
    PLP
    RTS


TransferGermanFrenchTextTilesToVRAM:
    PHP
    REP #$30
    PHX                                                                  ;8B8DE6;
    LDX.W $0330                                                          ;8B8DE7;
    LDA.W #$0100                                                         ;8B8DEA;
    STA.B $D0,X                                                          ;8B8DED;
    INX                                                                  ;8B8DEF;
    INX                                                                  ;8B8DF0;
    LDA.W #$3600                                                         ;8B8DF1;
    STA.B $D0,X                                                          ;8B8DF4;
    INX                                                                  ;8B8DF6;
    INX                                                                  ;8B8DF7;
    SEP #$20                                                             ;8B8DF8;
    LDA.B #$7E                                                           ;8B8DFA;
    STA.B $D0,X                                                          ;8B8DFC;
    REP #$20                                                             ;8B8DFE;
    INX                                                                  ;8B8E00;
    LDA.W #$4F00                                                         ;8B8E01;
    STA.B $D0,X                                                          ;8B8E04;
    INX                                                                  ;8B8E06;
    INX                                                                  ;8B8E07;
    STX.W $0330                                                          ;8B8E08;
    PLX                                                                  ;8B8E0B;
    PLP
    RTS                                                                  ;8B8E0C;


HandleSamusDuringIntro:
    LDA.W $1A57                                                          ;8B8E0D;
    BEQ .return                                                          ;8B8E10;
    JSL.L SamusCurrentStateHandler                                       ;8B8E12;
    JSL.L SamusNewStateHandler                                           ;8B8E16;
    LDA.W $18A8                                                          ;8B8E1A;
    BEQ .handleKnockback                                                 ;8B8E1D;
    DEC A                                                                ;8B8E1F;
    STA.W $18A8                                                          ;8B8E20;

.handleKnockback:
    LDA.W $18AA                                                          ;8B8E23;
    BEQ .return                                                          ;8B8E26;
    DEC A                                                                ;8B8E28;
    STA.W $18AA                                                          ;8B8E29;

.return:
    RTS                                                                  ;8B8E2C;


DrawIntroSprites:
    LDA.W $1A57                                                          ;8B8E2D;
    BEQ .noSamus                                                         ;8B8E30;
    BMI .samusPriority                                                   ;8B8E32;
    JSR.W Draw_CinematicSpriteObjects_IntroTitleSequence                 ;8B8E34;
    JSL.L DrawSamusAndProjectiles                                        ;8B8E37;
    JSL.L DrawProjectiles                                                ;8B8E3B;
    BRA .return                                                          ;8B8E3F;


.samusPriority:
    JSL.L DrawSamusAndProjectiles                                        ;8B8E41;
    JSL.L DrawProjectiles                                                ;8B8E45;
    JSR.W Draw_CinematicSpriteObjects_IntroTitleSequence                 ;8B8E49;
    BRA .return                                                          ;8B8E4C;


.noSamus:
    JSR.W Draw_CinematicSpriteObjects_IntroTitleSequence                 ;8B8E4E;

.return:
    RTS                                                                  ;8B8E51;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_CalculateXYComponentsOfRadiusAAngleY_8B8E52:
    PHP                                                                  ;8B8E52;
    REP #$30                                                             ;8B8E53;
    PHX                                                                  ;8B8E55;
    STA.B $18                                                            ;8B8E56;
    TYA                                                                  ;8B8E58;
    STA.B $1A                                                            ;8B8E59;
    CMP.W #$0080                                                         ;8B8E5B;
    BPL +                                                                ;8B8E5E;
    ASL A                                                                ;8B8E60;
    TAX                                                                  ;8B8E61;
    JSR.W UNUSED_Math_8B8EA3                                             ;8B8E62;
    BRA .storeXComponent                                                 ;8B8E65;


  + SEC                                                                  ;8B8E67;
    SBC.W #$0080                                                         ;8B8E68;
    AND.W #$00FF                                                         ;8B8E6B;
    ASL A                                                                ;8B8E6E;
    TAX                                                                  ;8B8E6F;
    JSR.W UNUSED_Math_8B8EA3                                             ;8B8E70;
    EOR.W #$FFFF                                                         ;8B8E73;
    INC A                                                                ;8B8E76;

.storeXComponent:
    STA.B $14                                                            ;8B8E77;
    LDA.B $1A                                                            ;8B8E79;
    SEC                                                                  ;8B8E7B;
    SBC.W #$0040                                                         ;8B8E7C;
    AND.W #$00FF                                                         ;8B8E7F;
    CMP.W #$0080                                                         ;8B8E82;
    BPL +                                                                ;8B8E85;
    ASL A                                                                ;8B8E87;
    TAX                                                                  ;8B8E88;
    JSR.W UNUSED_Math_8B8EA3                                             ;8B8E89;
    BRA .storeYComponent                                                 ;8B8E8C;


  + SEC                                                                  ;8B8E8E;
    SBC.W #$0080                                                         ;8B8E8F;
    AND.W #$00FF                                                         ;8B8E92;
    ASL A                                                                ;8B8E95;
    TAX                                                                  ;8B8E96;
    JSR.W UNUSED_Math_8B8EA3                                             ;8B8E97;
    EOR.W #$FFFF                                                         ;8B8E9A;
    INC A                                                                ;8B8E9D;

.storeYComponent:
    STA.B $16                                                            ;8B8E9E;
    PLX                                                                  ;8B8EA0;
    PLP                                                                  ;8B8EA1;
    RTS                                                                  ;8B8EA2;


UNUSED_Math_8B8EA3:
    SEP #$20                                                             ;8B8EA3;
    LDA.L SineCosineTables_8bitSine_SignExtended,X                       ;8B8EA5;
    STA.W $4202                                                          ;8B8EA9;
    LDA.B $18                                                            ;8B8EAC;
    STA.W $4203                                                          ;8B8EAE;
    NOP                                                                  ;8B8EB1;
    NOP                                                                  ;8B8EB2;
    NOP                                                                  ;8B8EB3;
    REP #$20                                                             ;8B8EB4;
    LDA.W $4216                                                          ;8B8EB6;
    XBA                                                                  ;8B8EB9;
    AND.W #$00FF                                                         ;8B8EBA;
    STA.B $12                                                            ;8B8EBD;
    SEP #$20                                                             ;8B8EBF;
    LDA.L SineCosineTables_8bitSine_SignExtended+1,X                     ;8B8EC1;
    STA.W $4202                                                          ;8B8EC5;
    LDA.B $18                                                            ;8B8EC8;
    STA.W $4203                                                          ;8B8ECA;
    NOP                                                                  ;8B8ECD;
    NOP                                                                  ;8B8ECE;
    NOP                                                                  ;8B8ECF;
    REP #$20                                                             ;8B8ED0;
    LDA.W $4216                                                          ;8B8ED2;
    CLC                                                                  ;8B8ED5;
    ADC.B $12                                                            ;8B8ED6;
    RTS                                                                  ;8B8ED8;
endif ; !FEATURE_KEEP_UNREFERENCED


MoveUnusedSpritesOffScreen:
    PHP                                                                  ;8B8ED9;
    REP #$30                                                             ;8B8EDA;
    LDA.W $0590                                                          ;8B8EDC;
    CMP.W #$0200                                                         ;8B8EDF;
    BPL .return                                                          ;8B8EE2;
    LSR A                                                                ;8B8EE4;
    LSR A                                                                ;8B8EE5;
    PHA                                                                  ;8B8EE6;
    AND.W #$0007                                                         ;8B8EE7;
    ASL A                                                                ;8B8EEA;
    TAY                                                                  ;8B8EEB;
    PLA                                                                  ;8B8EEC;
    LSR A                                                                ;8B8EED;
    LSR A                                                                ;8B8EEE;
    TAX                                                                  ;8B8EEF;
    LDA.W $0570,X                                                        ;8B8EF0;
    ORA.W .Xpos,Y                                                        ;8B8EF3;
    STA.W $0570,X                                                        ;8B8EF6;
    CPX.W #$001E                                                         ;8B8EF9;
    BPL .setXpos                                                         ;8B8EFC;
    INX                                                                  ;8B8EFE;
    INX                                                                  ;8B8EFF;

.loop:
    LDA.W #$5555                                                         ;8B8F00;
    STA.W $0570,X                                                        ;8B8F03;
    INX                                                                  ;8B8F06;
    INX                                                                  ;8B8F07;
    CPX.W #$0020                                                         ;8B8F08;
    BMI .loop                                                            ;8B8F0B;

.setXpos:
    LDA.W $0590                                                          ;8B8F0D;
    LSR A                                                                ;8B8F10;
    STA.B $12                                                            ;8B8F11;
    LSR A                                                                ;8B8F13;
    ADC.B $12                                                            ;8B8F14;
    CLC                                                                  ;8B8F16;
    ADC.W #.moveAllSprites                                               ;8B8F17;
    STA.B $12                                                            ;8B8F1A;
    LDA.W #$0080                                                         ;8B8F1C;
    SEP #$30                                                             ;8B8F1F;
    JMP.W ($0012)                                                        ;8B8F21;


.return:
    PLP                                                                  ;8B8F24;
    RTS                                                                  ;8B8F25;


.Xpos:                                                                   ;8B8F26;
    dw $5555 ; Sprites 0..7 high X position bits
    dw $5554 ; Sprites 1..7 high X position bits
    dw $5550 ; Sprites 2..7 high X position bits
    dw $5540 ; Sprites 3..7 high X position bits
    dw $5500 ; Sprites 4..7 high X position bits
    dw $5400 ; Sprites 5..7 high X position bits
    dw $5000 ; Sprites 6..7 high X position bits
    dw $4000 ; Sprites 7 high X position bit

.moveAllSprites:
    STA.W $0370                                                          ;8B8F36;
    STA.W $0374                                                          ;8B8F39;
    STA.W $0378                                                          ;8B8F3C;
    STA.W $037C                                                          ;8B8F3F;
    STA.W $0380                                                          ;8B8F42;
    STA.W $0384                                                          ;8B8F45;
    STA.W $0388                                                          ;8B8F48;
    STA.W $038C                                                          ;8B8F4B;
    STA.W $0390                                                          ;8B8F4E;
    STA.W $0394                                                          ;8B8F51;
    STA.W $0398                                                          ;8B8F54;
    STA.W $039C                                                          ;8B8F57;
    STA.W $03A0                                                          ;8B8F5A;
    STA.W $03A4                                                          ;8B8F5D;
    STA.W $03A8                                                          ;8B8F60;
    STA.W $03AC                                                          ;8B8F63;
    STA.W $03B0                                                          ;8B8F66;
    STA.W $03B4                                                          ;8B8F69;
    STA.W $03B8                                                          ;8B8F6C;
    STA.W $03BC                                                          ;8B8F6F;
    STA.W $03C0                                                          ;8B8F72;
    STA.W $03C4                                                          ;8B8F75;
    STA.W $03C8                                                          ;8B8F78;
    STA.W $03CC                                                          ;8B8F7B;
    STA.W $03D0                                                          ;8B8F7E;
    STA.W $03D4                                                          ;8B8F81;
    STA.W $03D8                                                          ;8B8F84;
    STA.W $03DC                                                          ;8B8F87;
    STA.W $03E0                                                          ;8B8F8A;
    STA.W $03E4                                                          ;8B8F8D;
    STA.W $03E8                                                          ;8B8F90;
    STA.W $03EC                                                          ;8B8F93;
    STA.W $03F0                                                          ;8B8F96;
    STA.W $03F4                                                          ;8B8F99;
    STA.W $03F8                                                          ;8B8F9C;
    STA.W $03FC                                                          ;8B8F9F;
    STA.W $0400                                                          ;8B8FA2;
    STA.W $0404                                                          ;8B8FA5;
    STA.W $0408                                                          ;8B8FA8;
    STA.W $040C                                                          ;8B8FAB;
    STA.W $0410                                                          ;8B8FAE;
    STA.W $0414                                                          ;8B8FB1;
    STA.W $0418                                                          ;8B8FB4;
    STA.W $041C                                                          ;8B8FB7;
    STA.W $0420                                                          ;8B8FBA;
    STA.W $0424                                                          ;8B8FBD;
    STA.W $0428                                                          ;8B8FC0;
    STA.W $042C                                                          ;8B8FC3;
    STA.W $0430                                                          ;8B8FC6;
    STA.W $0434                                                          ;8B8FC9;
    STA.W $0438                                                          ;8B8FCC;
    STA.W $043C                                                          ;8B8FCF;
    STA.W $0440                                                          ;8B8FD2;
    STA.W $0444                                                          ;8B8FD5;
    STA.W $0448                                                          ;8B8FD8;
    STA.W $044C                                                          ;8B8FDB;
    STA.W $0450                                                          ;8B8FDE;
    STA.W $0454                                                          ;8B8FE1;
    STA.W $0458                                                          ;8B8FE4;
    STA.W $045C                                                          ;8B8FE7;
    STA.W $0460                                                          ;8B8FEA;
    STA.W $0464                                                          ;8B8FED;
    STA.W $0468                                                          ;8B8FF0;
    STA.W $046C                                                          ;8B8FF3;
    STA.W $0470                                                          ;8B8FF6;
    STA.W $0474                                                          ;8B8FF9;
    STA.W $0478                                                          ;8B8FFC;
    STA.W $047C                                                          ;8B8FFF;
    STA.W $0480                                                          ;8B9002;
    STA.W $0484                                                          ;8B9005;
    STA.W $0488                                                          ;8B9008;
    STA.W $048C                                                          ;8B900B;
    STA.W $0490                                                          ;8B900E;
    STA.W $0494                                                          ;8B9011;
    STA.W $0498                                                          ;8B9014;
    STA.W $049C                                                          ;8B9017;
    STA.W $04A0                                                          ;8B901A;
    STA.W $04A4                                                          ;8B901D;
    STA.W $04A8                                                          ;8B9020;
    STA.W $04AC                                                          ;8B9023;
    STA.W $04B0                                                          ;8B9026;
    STA.W $04B4                                                          ;8B9029;
    STA.W $04B8                                                          ;8B902C;
    STA.W $04BC                                                          ;8B902F;
    STA.W $04C0                                                          ;8B9032;
    STA.W $04C4                                                          ;8B9035;
    STA.W $04C8                                                          ;8B9038;
    STA.W $04CC                                                          ;8B903B;
    STA.W $04D0                                                          ;8B903E;
    STA.W $04D4                                                          ;8B9041;
    STA.W $04D8                                                          ;8B9044;
    STA.W $04DC                                                          ;8B9047;
    STA.W $04E0                                                          ;8B904A;
    STA.W $04E4                                                          ;8B904D;
    STA.W $04E8                                                          ;8B9050;
    STA.W $04EC                                                          ;8B9053;
    STA.W $04F0                                                          ;8B9056;
    STA.W $04F4                                                          ;8B9059;
    STA.W $04F8                                                          ;8B905C;
    STA.W $04FC                                                          ;8B905F;
    STA.W $0500                                                          ;8B9062;
    STA.W $0504                                                          ;8B9065;
    STA.W $0508                                                          ;8B9068;
    STA.W $050C                                                          ;8B906B;
    STA.W $0510                                                          ;8B906E;
    STA.W $0514                                                          ;8B9071;
    STA.W $0518                                                          ;8B9074;
    STA.W $051C                                                          ;8B9077;
    STA.W $0520                                                          ;8B907A;
    STA.W $0524                                                          ;8B907D;
    STA.W $0528                                                          ;8B9080;
    STA.W $052C                                                          ;8B9083;
    STA.W $0530                                                          ;8B9086;
    STA.W $0534                                                          ;8B9089;
    STA.W $0538                                                          ;8B908C;
    STA.W $053C                                                          ;8B908F;
    STA.W $0540                                                          ;8B9092;
    STA.W $0544                                                          ;8B9095;
    STA.W $0548                                                          ;8B9098;
    STA.W $054C                                                          ;8B909B;
    STA.W $0550                                                          ;8B909E;
    STA.W $0554                                                          ;8B90A1;
    STA.W $0558                                                          ;8B90A4;
    STA.W $055C                                                          ;8B90A7;
    STA.W $0560                                                          ;8B90AA;
    STA.W $0564                                                          ;8B90AD;
    STA.W $0568                                                          ;8B90B0;
    STA.W $056C                                                          ;8B90B3;
    PLP                                                                  ;8B90B6;
    RTS                                                                  ;8B90B7;


AdvanceFastScreenFadeOut:
    PHP                                                                  ;8B90B8;
    SEP #$30                                                             ;8B90B9;
    LDA.B $51                                                            ;8B90BB;
    AND.B #$0F                                                           ;8B90BD;
    BEQ .return                                                          ;8B90BF;
    SEC                                                                  ;8B90C1;
    SBC.W $0725                                                          ;8B90C2;
    BEQ .forcedBlank                                                     ;8B90C5;
    BMI .forcedBlank                                                     ;8B90C7;
    STA.B $51                                                            ;8B90C9;
    PLP                                                                  ;8B90CB;
    CLC                                                                  ;8B90CC;
    RTS                                                                  ;8B90CD;


.forcedBlank:
    LDA.B #$80                                                           ;8B90CE;
    STA.B $51                                                            ;8B90D0;

.return:
    PLP                                                                  ;8B90D2;
    SEC                                                                  ;8B90D3;
    RTS                                                                  ;8B90D4;


AdvanceSlowScreenFadeOut:
    PHP                                                                  ;8B90D5;
    SEP #$30                                                             ;8B90D6;
    DEC.W $0723                                                          ;8B90D8;
    BEQ .checkBrightness                                                 ;8B90DB;
    BPL .returnFading                                                    ;8B90DD;

.checkBrightness:
    LDA.B $51                                                            ;8B90DF;
    AND.B #$0F                                                           ;8B90E1;
    BEQ .done                                                            ;8B90E3;
    DEC A                                                                ;8B90E5;
    BEQ .zeroBrightness                                                  ;8B90E6;
    STA.B $51                                                            ;8B90E8;
    LDA.W $0725                                                          ;8B90EA;
    STA.W $0723                                                          ;8B90ED;

.returnFading:
    PLP                                                                  ;8B90F0;
    CLC                                                                  ;8B90F1;
    RTS                                                                  ;8B90F2;


.zeroBrightness:
    LDA.B #$80                                                           ;8B90F3;
    STA.B $51                                                            ;8B90F5;
    STZ.W $0723                                                          ;8B90F7;
    STZ.W $0725                                                          ;8B90FA;

.done:
    PLP                                                                  ;8B90FD;
    SEC                                                                  ;8B90FE;
    RTS                                                                  ;8B90FF;


AdvanceFastScreenFadeIn:
    PHP                                                                  ;8B9100;
    SEP #$30                                                             ;8B9101;
    LDA.B $51                                                            ;8B9103;
    CLC                                                                  ;8B9105;
    ADC.W $0725                                                          ;8B9106;
    AND.B #$1F                                                           ;8B9109;
    CMP.B #$0F                                                           ;8B910B;
    BPL .disableForcedBlank                                              ;8B910D;
    STA.B $51                                                            ;8B910F;
    PLP                                                                  ;8B9111;
    CLC                                                                  ;8B9112;
    RTS                                                                  ;8B9113;


.disableForcedBlank:
    LDA.B #$0F                                                           ;8B9114;
    STA.B $51                                                            ;8B9116;
    PLP                                                                  ;8B9118;
    SEC                                                                  ;8B9119;
    RTS                                                                  ;8B911A;


AdvanceSlowScreenFadeIn:
    PHP                                                                  ;8B911B;
    SEP #$30                                                             ;8B911C;
    DEC.W $0723                                                          ;8B911E;
    BEQ .checkBrightness                                                 ;8B9121;
    BPL .fading                                                          ;8B9123;

.checkBrightness:
    LDA.B $51                                                            ;8B9125;
    INC A                                                                ;8B9127;
    AND.B #$1F                                                           ;8B9128;
    CMP.B #$0F                                                           ;8B912A;
    BPL .maxBrightness                                                   ;8B912C;
    STA.B $51                                                            ;8B912E;
    LDA.W $0725                                                          ;8B9130;
    STA.W $0723                                                          ;8B9133;

.fading:
    PLP                                                                  ;8B9136;
    CLC                                                                  ;8B9137;
    RTS                                                                  ;8B9138;


.maxBrightness:
    LDA.B #$0F                                                           ;8B9139;
    STA.B $51                                                            ;8B913B;
    STZ.W $0723                                                          ;8B913D;
    STZ.W $0725                                                          ;8B9140;
    PLP                                                                  ;8B9143;
    SEC                                                                  ;8B9144;
    RTS                                                                  ;8B9145;


Initialise_IO_Registers_and_Display_Nintendo_Logo:
    PHP                                                                  ;8B9146;
    PHB                                                                  ;8B9147;
    PHK                                                                  ;8B9148;
    PLB                                                                  ;8B9149;
    SEP #$30                                                             ;8B914A;
    LDA.B #$8F                                                           ;8B914C;
    STA.W $2100                                                          ;8B914E;
    STA.B $51                                                            ;8B9151;
    REP #$30                                                             ;8B9153;
    STZ.W $0590                                                          ;8B9155;
    JSL.L ClearHighOAM                                                   ;8B9158;
    JSL.L Finalise_OAM                                                   ;8B915C;
    STZ.W $071D                                                          ;8B9160;
    STZ.W $071F                                                          ;8B9163;
    STZ.W $0721                                                          ;8B9166;
    SEP #$20                                                             ;8B9169;
    LDA.B #$01                                                           ;8B916B;
    STA.W $4200                                                          ;8B916D;
    STA.B $84                                                            ;8B9170;
    STZ.W $4201                                                          ;8B9172;
    STZ.W $4202                                                          ;8B9175;
    STZ.W $4203                                                          ;8B9178;
    STZ.W $4204                                                          ;8B917B;
    STZ.W $4205                                                          ;8B917E;
    STZ.W $4206                                                          ;8B9181;
    STZ.W $4207                                                          ;8B9184;
    STZ.W $4208                                                          ;8B9187;
    STZ.W $4209                                                          ;8B918A;
    STZ.W $420A                                                          ;8B918D;
    STZ.W $420B                                                          ;8B9190;
    STZ.W $420C                                                          ;8B9193;
    STZ.B $85                                                            ;8B9196;
    LDA.B #$01                                                           ;8B9198;
    STA.W $420D                                                          ;8B919A;
    STA.B $86                                                            ;8B919D;
    LDA.B #$03                                                           ;8B919F;
    STA.W $2101                                                          ;8B91A1;
    STA.B $52                                                            ;8B91A4;
    STZ.W $2102                                                          ;8B91A6;
    STZ.B $53                                                            ;8B91A9;
    LDA.B #$80                                                           ;8B91AB;
    STA.W $2103                                                          ;8B91AD;
    STA.B $54                                                            ;8B91B0;
    STZ.W $2104                                                          ;8B91B2;
    STZ.W $2104                                                          ;8B91B5;
    LDA.B #$01                                                           ;8B91B8;
    STA.W $2105                                                          ;8B91BA;
    STA.B $55                                                            ;8B91BD;
    STZ.W $2106                                                          ;8B91BF;
    STZ.B $57                                                            ;8B91C2;
    STZ.W $2107                                                          ;8B91C4;
    STZ.B $58                                                            ;8B91C7;
    STZ.W $2108                                                          ;8B91C9;
    STZ.B $59                                                            ;8B91CC;
    STZ.W $2109                                                          ;8B91CE;
    STZ.B $5A                                                            ;8B91D1;
    STZ.W $210A                                                          ;8B91D3;
    STZ.B $5C                                                            ;8B91D6;
    STZ.W $210B                                                          ;8B91D8;
    STZ.B $5D                                                            ;8B91DB;
    STZ.W $210C                                                          ;8B91DD;
    STZ.B $5E                                                            ;8B91E0;
    STZ.W $210D                                                          ;8B91E2;
    STZ.W $210D                                                          ;8B91E5;
    STZ.W $210E                                                          ;8B91E8;
    STZ.W $210E                                                          ;8B91EB;
    STZ.W $210F                                                          ;8B91EE;
    STZ.W $210F                                                          ;8B91F1;
    STZ.W $2110                                                          ;8B91F4;
    STZ.W $2110                                                          ;8B91F7;
    STZ.W $2111                                                          ;8B91FA;
    STZ.W $2111                                                          ;8B91FD;
    STZ.W $2112                                                          ;8B9200;
    STZ.W $2112                                                          ;8B9203;
    STZ.W $2113                                                          ;8B9206;
    STZ.W $2113                                                          ;8B9209;
    STZ.W $2114                                                          ;8B920C;
    STZ.W $2114                                                          ;8B920F;
    STZ.W $2115                                                          ;8B9212;
    STZ.W $211A                                                          ;8B9215;
    STZ.B $5F                                                            ;8B9218;
    STZ.W $211B                                                          ;8B921A;
    STZ.W $211C                                                          ;8B921D;
    STZ.W $211D                                                          ;8B9220;
    STZ.W $211E                                                          ;8B9223;
    STZ.W $211F                                                          ;8B9226;
    STZ.W $2120                                                          ;8B9229;
    STZ.W $2123                                                          ;8B922C;
    STZ.B $60                                                            ;8B922F;
    STZ.W $2124                                                          ;8B9231;
    STZ.B $61                                                            ;8B9234;
    STZ.W $2125                                                          ;8B9236;
    STZ.B $62                                                            ;8B9239;
    STZ.W $2126                                                          ;8B923B;
    STZ.B $63                                                            ;8B923E;
    STZ.W $2127                                                          ;8B9240;
    STZ.B $64                                                            ;8B9243;
    STZ.W $2128                                                          ;8B9245;
    STZ.B $65                                                            ;8B9248;
    STZ.W $2129                                                          ;8B924A;
    STZ.B $66                                                            ;8B924D;
    STZ.W $212A                                                          ;8B924F;
    STZ.B $67                                                            ;8B9252;
    STZ.W $212B                                                          ;8B9254;
    STZ.B $68                                                            ;8B9257;
    LDA.B #$10                                                           ;8B9259;
    STA.W $212C                                                          ;8B925B;
    STA.B $69                                                            ;8B925E;
    STZ.W $212E                                                          ;8B9260;
    STZ.B $6C                                                            ;8B9263;
    STZ.W $212D                                                          ;8B9265;
    STZ.B $6B                                                            ;8B9268;
    STZ.W $212F                                                          ;8B926A;
    STZ.B $6D                                                            ;8B926D;
    STZ.W $2130                                                          ;8B926F;
    STZ.B $6E                                                            ;8B9272;
    STZ.W $2131                                                          ;8B9274;
    STZ.B $71                                                            ;8B9277;
    LDA.B #$E0                                                           ;8B9279;
    STA.W $2132                                                          ;8B927B;
    LDA.B #$20                                                           ;8B927E;
    STA.B $74                                                            ;8B9280;
    LDA.B #$40                                                           ;8B9282;
    STA.B $75                                                            ;8B9284;
    LDA.B #$80                                                           ;8B9286;
    STA.B $76                                                            ;8B9288;
    LDA.B #$00                                                           ;8B928A;
    STA.W $2133                                                          ;8B928C;
    STA.B $77                                                            ;8B928F;
    REP #$20                                                             ;8B9291;
    LDA.W #Tiles_Title_Sprite>>8&$FF00                                   ;8B9293;
    STA.B $48                                                            ;8B9296;
    LDA.W #Tiles_Title_Sprite                                            ;8B9298;
    STA.B $47                                                            ;8B929B;
    JSL.L Decompression_HardcodedDestination                             ;8B929D;
    dl $7F5000                                                           ;8B92A1;
    SEP #$30                                                             ;8B92A4;
    LDA.B #$00                                                           ;8B92A6;
    STA.W $2116                                                          ;8B92A8;
    LDA.B #$60                                                           ;8B92AB;
    STA.W $2117                                                          ;8B92AD;
    LDA.B #$80                                                           ;8B92B0;
    STA.W $2115                                                          ;8B92B2;
    JSL.L SetupHDMATransfer                                              ;8B92B5;
    db $01,$01,$18                                                       ;8B92B9;
    dl $7F5000                                                           ;8B92BC;
    dw $4000                                                             ;8B92BF;
    LDA.B #$02                                                           ;8B92C1;
    STA.W $420B                                                          ;8B92C3;
    LDA.B #$80                                                           ;8B92C6;
    STA.B $51                                                            ;8B92C8;
    REP #$30                                                             ;8B92CA;
    LDX.W #$0000                                                         ;8B92CC;

.loop:
    LDA.L Palettes_TitleScreen,X                                         ;8B92CF;
    STA.L $7EC000,X                                                      ;8B92D3;
    INX                                                                  ;8B92D7;
    INX                                                                  ;8B92D8;
    CPX.W #$0200                                                         ;8B92D9;
    BMI .loop                                                            ;8B92DC;
    JSL.L EnableNMI                                                      ;8B92DE;
    LDA.W #$0001                                                         ;8B92E2;
    STA.W $0723                                                          ;8B92E5;
    STA.W $0725                                                          ;8B92E8;

.fadeIn:
    JSL.L ClearHighOAM                                                   ;8B92EB;
    STZ.W $0590                                                          ;8B92EF;
    JSR.W AddNintendoBootLogoSpritemapToOAM                              ;8B92F2;
    JSR.W AdvanceFastScreenFadeIn                                        ;8B92F5;
    BCS .maxBrightness                                                   ;8B92F8;
    JSL.L Finalise_OAM                                                   ;8B92FA;
    JSL.L WaitForNMI                                                     ;8B92FE;
    BRA .fadeIn                                                          ;8B9302;


.maxBrightness:
    JSL.L Finalise_OAM                                                   ;8B9304;
    JSL.L WaitForNMI                                                     ;8B9308;
    LDA.W #$0078                                                         ;8B930C;
    STA.W $0DE2                                                          ;8B930F;

.loopNintendoLogo:
    JSL.L ClearHighOAM                                                   ;8B9312;
    STZ.W $0590                                                          ;8B9316;
    JSR.W AddNintendoBootLogoSpritemapToOAM                              ;8B9319;
    DEC.W $0DE2                                                          ;8B931C;
    BEQ .timerExpired                                                    ;8B931F;
    JSL.L Finalise_OAM                                                   ;8B9321;
    JSL.L WaitForNMI                                                     ;8B9325;
    BRA .loopNintendoLogo                                                ;8B9329;


.timerExpired:
    JSL.L Finalise_OAM                                                   ;8B932B;
    JSL.L WaitForNMI                                                     ;8B932F;
    LDA.W #$0001                                                         ;8B9333;
    STA.W $0723                                                          ;8B9336;
    STA.W $0725                                                          ;8B9339;

.loopFadeOut:
    JSL.L ClearHighOAM                                                   ;8B933C;
    STZ.W $0590                                                          ;8B9340;
    JSR.W AddNintendoBootLogoSpritemapToOAM                              ;8B9343;
    JSR.W AdvanceFastScreenFadeOut                                       ;8B9346;
    BCS .zeroBrightness                                                  ;8B9349;
    JSL.L Finalise_OAM                                                   ;8B934B;
    JSL.L WaitForNMI                                                     ;8B934F;
    BRA .loopFadeOut                                                     ;8B9353;


.zeroBrightness:
    JSL.L Finalise_OAM                                                   ;8B9355;
    JSL.L WaitForNMI                                                     ;8B9359;
    SEP #$30                                                             ;8B935D;
    LDA.B #$8F                                                           ;8B935F;
    STA.W $2100                                                          ;8B9361;
    STA.B $51                                                            ;8B9364;
    REP #$30                                                             ;8B9366;
    PLB                                                                  ;8B9368;
    PLP                                                                  ;8B9369;
    RTL                                                                  ;8B936A;


AddNintendoBootLogoSpritemapToOAM:
    PHP                                                                  ;8B936B;
    REP #$30                                                             ;8B936C;
    PHB                                                                  ;8B936E;
    PEA.W TitleSequenceSpritemaps_NintendoBootLogo>>8&$FF00              ;8B936F;
    PLB                                                                  ;8B9372;
    PLB                                                                  ;8B9373;
    LDY.W #TitleSequenceSpritemaps_NintendoBootLogo                      ;8B9374;
    STZ.B $16                                                            ;8B9377;
    LDA.W #$0080                                                         ;8B9379;
    STA.B $14                                                            ;8B937C;
    LDA.W #$0070                                                         ;8B937E;
    STA.B $12                                                            ;8B9381;
    JSL.L AddSpritemapToOAM                                              ;8B9383;
    PLB                                                                  ;8B9387;
    PLP                                                                  ;8B9388;
    RTS                                                                  ;8B9389;


Spawn_CinematicSpriteObject_Y:
    PHP                                                                  ;8B938A;
    REP #$30                                                             ;8B938B;
    PHX                                                                  ;8B938D;
    STA.W $1B9D                                                          ;8B938E;
    TYX                                                                  ;8B9391;
    LDY.W #$001E                                                         ;8B9392;

.loop:
    LDA.W $1B1D,Y                                                        ;8B9395;
    BEQ SpawnCinematicSpriteObject_XToIndexY                             ;8B9398;
    DEY                                                                  ;8B939A;
    DEY                                                                  ;8B939B;
    BPL .loop                                                            ;8B939C;
    PLX                                                                  ;8B939E;
    PLP                                                                  ;8B939F;
    SEC                                                                  ;8B93A0;
    RTS                                                                  ;8B93A1;


Spawn_CinematicSpriteObject_YToIndex12:
    PHP                                                                  ;8B93A2;
    REP #$30                                                             ;8B93A3;
    PHX                                                                  ;8B93A5;
    STA.W $1B9D                                                          ;8B93A6;
    TYX                                                                  ;8B93A9;
    LDY.B $12                                                            ;8B93AA;

SpawnCinematicSpriteObject_XToIndexY:
    REP #$30                                                             ;8B93AC;
    LDA.W $0002,X                                                        ;8B93AE;
    STA.W $1B3D,Y                                                        ;8B93B1;
    LDA.W $0004,X                                                        ;8B93B4;
    STA.W $1B1D,Y                                                        ;8B93B7;
    LDA.W #$0001                                                         ;8B93BA;
    STA.W $1B5D,Y                                                        ;8B93BD;
    LDA.W #$0000                                                         ;8B93C0;
    STA.W $1A5D,Y                                                        ;8B93C3;
    LDA.W #$0000                                                         ;8B93C6;
    STA.W $1B7D,Y                                                        ;8B93C9;
    STA.W $1ADD,Y                                                        ;8B93CC;
    STA.W $1AFD,Y                                                        ;8B93CF;
    JSR.W ($0000,X)                                                      ;8B93D2;
    PLX                                                                  ;8B93D5;
    PLP                                                                  ;8B93D6;
    CLC                                                                  ;8B93D7;
    RTS                                                                  ;8B93D8;


RTS_8B93D9:
    RTS                                                                  ;8B93D9;


Clear_CinematicSpriteObjects:
    PHP                                                                  ;8B93DA;
    REP #$30                                                             ;8B93DB;
    LDX.W #$001E                                                         ;8B93DD;
    LDA.W #$0000                                                         ;8B93E0;

.loop:
    STA.W $1B1D,X                                                        ;8B93E3;
    STA.W $1A5D,X                                                        ;8B93E6;
    DEX                                                                  ;8B93E9;
    DEX                                                                  ;8B93EA;
    BPL .loop                                                            ;8B93EB;
    PLP                                                                  ;8B93ED;
    RTS                                                                  ;8B93EE;


Handle_CinematicSpriteObjects:
    PHP                                                                  ;8B93EF;
    REP #$30                                                             ;8B93F0;
    LDX.W #$001E                                                         ;8B93F2;

.loop:
    STX.W $1A59                                                          ;8B93F5;
    LDA.W $1B1D,X                                                        ;8B93F8;
    BEQ .next                                                            ;8B93FB;
    JSR.W Process_CinematicSpriteObjects_InstList                        ;8B93FD;
    LDX.W $1A59                                                          ;8B9400;

.next:
    DEX                                                                  ;8B9403;
    DEX                                                                  ;8B9404;
    BPL .loop                                                            ;8B9405;
    PLP                                                                  ;8B9407;
    RTS                                                                  ;8B9408;


Process_CinematicSpriteObjects_InstList:
    JSR.W ($1B3D,X)                                                      ;8B9409;
    LDX.W $1A59                                                          ;8B940C;
    DEC.W $1B5D,X                                                        ;8B940F;
    BNE .return                                                          ;8B9412;
    LDY.W $1B1D,X                                                        ;8B9414;

.loop:
    LDA.W $0000,Y                                                        ;8B9417;
    BPL +                                                                ;8B941A;
    STA.B $12                                                            ;8B941C;
    INY                                                                  ;8B941E;
    INY                                                                  ;8B941F;
    PEA.W .loop-1                                                        ;8B9420;
    JMP.W ($0012)                                                        ;8B9423;


  + STA.W $1B5D,X                                                        ;8B9426;
    LDA.W $0002,Y                                                        ;8B9429;
    STA.W $1A5D,X                                                        ;8B942C;
    TYA                                                                  ;8B942F;
    CLC                                                                  ;8B9430;
    ADC.W #$0004                                                         ;8B9431;
    STA.W $1B1D,X                                                        ;8B9434;

.return:
    RTS                                                                  ;8B9437;


CinematicSpriteObject_Instruction_Delete:
    REP #$30                                                             ;8B9438;
    STZ.W $1A5D,X                                                        ;8B943A;
    STZ.W $1B1D,X                                                        ;8B943D;
    PLA                                                                  ;8B9440;
    RTS                                                                  ;8B9441;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_CinematicSpriteObject_Instruction_Sleep_8B9442:
    REP #$30                                                             ;8B9442;
    DEY                                                                  ;8B9444;
    DEY                                                                  ;8B9445;
    TYA                                                                  ;8B9446;
    STA.W $1B1D,X                                                        ;8B9447;
    PLA                                                                  ;8B944A;
    RTS                                                                  ;8B944B;
endif ; !FEATURE_KEEP_UNREFERENCED


CinematicSpriteObject_Instruction_PreInstructionY:
    REP #$30                                                             ;8B944C;
    LDA.W $0000,Y                                                        ;8B944E;
    STA.W $1B3D,X                                                        ;8B9451;
    INY                                                                  ;8B9454;
    INY                                                                  ;8B9455;
    RTS                                                                  ;8B9456;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_CinematicSpriteObject_Inst_ClearPreInstruction_8B9457:
    REP #$30                                                             ;8B9457;
    LDA.W #.return                                                       ;8B9459;
    STA.W $1B3D,X                                                        ;8B945C;

  .return:
    RTS                                                                  ;8B945F;
endif ; !FEATURE_KEEP_UNREFERENCED


CinematicSpriteObject_Inst_CallExternalFunctionY_8B9460:
    REP #$30                                                             ;8B9460;
    LDA.W $0000,Y                                                        ;8B9462;
    STA.W $0012                                                          ;8B9465;
    LDA.W $0001,Y                                                        ;8B9468;
    STA.W $0013                                                          ;8B946B;
    PHY                                                                  ;8B946E;
    JSL.L .externalFunction                                              ;8B946F;
    PLY                                                                  ;8B9473;
    LDX.W $1A59                                                          ;8B9474;
    INY                                                                  ;8B9477;
    INY                                                                  ;8B9478;
    INY                                                                  ;8B9479;
    RTS                                                                  ;8B947A;


.externalFunction:
    JML.W [$0012]                                                        ;8B947B;


CinematicSpriteObject_Inst_CallExternalFunctionYWithA_8B947E:
    REP #$30                                                             ;8B947E;
    LDA.W $0000,Y                                                        ;8B9480;
    STA.W $0012                                                          ;8B9483;
    LDA.W $0001,Y                                                        ;8B9486;
    STA.W $0013                                                          ;8B9489;
    LDA.W $0003,Y                                                        ;8B948C;
    PHY                                                                  ;8B948F;
    JSL.L .externalFunction                                              ;8B9490;
    PLY                                                                  ;8B9494;
    LDX.W $1A59                                                          ;8B9495;
    TYA                                                                  ;8B9498;
    CLC                                                                  ;8B9499;
    ADC.W #$0005                                                         ;8B949A;
    TAY                                                                  ;8B949D;
    RTS                                                                  ;8B949E;


.externalFunction:
    JML.W [$0012]                                                        ;8B949F;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_CinematicSpriteObject_Inst_GotoY_8B94A2:
    REP #$30                                                             ;8B94A2;
    STY.W $0012                                                          ;8B94A4;
    DEY                                                                  ;8B94A7;
    LDA.W $0000,Y                                                        ;8B94A8;
    XBA                                                                  ;8B94AB;
    BMI .highByte                                                        ;8B94AC;
    AND.W #$00FF                                                         ;8B94AE;
    BRA +                                                                ;8B94B1;


.highByte:
    ORA.W #$FF00                                                         ;8B94B3;

  + CLC                                                                  ;8B94B6;
    ADC.W $0012                                                          ;8B94B7;
    TAY                                                                  ;8B94BA;
    RTS                                                                  ;8B94BB;
endif ; !FEATURE_KEEP_UNREFERENCED


CinematicSpriteObject_Instruction_GotoY:
    REP #$30                                                             ;8B94BC;
    LDA.W $0000,Y                                                        ;8B94BE;
    TAY                                                                  ;8B94C1;
    RTS                                                                  ;8B94C2;


CinematicSpriteObject_Inst_DecrementTimer_GotoYIfNonZero:
    REP #$30                                                             ;8B94C3;
    DEC.W $1B7D,X                                                        ;8B94C5;
    BNE CinematicSpriteObject_Instruction_GotoY                          ;8B94C8;
    INY                                                                  ;8B94CA;
    INY                                                                  ;8B94CB;
    RTS                                                                  ;8B94CC;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_CinematicSpriteObject_Inst_DecTimer_GotoY_8B94CD:
    REP #$30                                                             ;8B94CD;
    DEC.W $1B7D,X                                                        ;8B94CF;
    BNE UNUSED_CinematicSpriteObject_Inst_GotoY_8B94A2                   ;8B94D2;
    INY                                                                  ;8B94D4;
    RTS                                                                  ;8B94D5;
endif ; !FEATURE_KEEP_UNREFERENCED


CinematicSpriteObject_Instruction_TimerInY:
    REP #$30                                                             ;8B94D6;
    LDA.W $0000,Y                                                        ;8B94D8;
    STA.W $1B7D,X                                                        ;8B94DB;
    INY                                                                  ;8B94DE;
    INY                                                                  ;8B94DF;
    RTS                                                                  ;8B94E0;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_REP30RTS_8B94E1:
    REP #$30                                                             ;8B94E1;
    RTS                                                                  ;8B94E3;
endif ; !FEATURE_KEEP_UNREFERENCED


Spawn_Mode7Objects:
    PHP                                                                  ;8B94E4;
    REP #$30                                                             ;8B94E5;
    PHX                                                                  ;8B94E7;
    STA.W $19B3                                                          ;8B94E8;
    TYX                                                                  ;8B94EB;
    LDY.W #$0002                                                         ;8B94EC;

.loop:
    LDA.W $19A1,Y                                                        ;8B94EF;
    BEQ .spawn                                                           ;8B94F2;
    DEY                                                                  ;8B94F4;
    DEY                                                                  ;8B94F5;
    BPL .loop                                                            ;8B94F6;
    PLX                                                                  ;8B94F8;
    PLP                                                                  ;8B94F9;
    SEC                                                                  ;8B94FA;
    RTS                                                                  ;8B94FB;


.spawn:
    REP #$30                                                             ;8B94FC;
    LDA.W $0002,X                                                        ;8B94FE;
    STA.W $19A5,Y                                                        ;8B9501;
    LDA.W $0004,X                                                        ;8B9504;
    STA.W $19A1,Y                                                        ;8B9507;
    LDA.W #$0001                                                         ;8B950A;
    STA.W $19A9,Y                                                        ;8B950D;
    LDA.W #$0000                                                         ;8B9510;
    STA.W $19AD,Y                                                        ;8B9513;
    JSR.W ($0000,X)                                                      ;8B9516;
    PLX                                                                  ;8B9519;
    PLP                                                                  ;8B951A;
    CLC                                                                  ;8B951B;
    RTS                                                                  ;8B951C;


Handle_Mode7Objects:
    PHP                                                                  ;8B951D;
    REP #$30                                                             ;8B951E;
    LDX.W #$0002                                                         ;8B9520;

.loop:
    STX.W $19B1                                                          ;8B9523;
    LDA.W $19A1,X                                                        ;8B9526;
    BEQ .next                                                            ;8B9529;
    JSR.W Process_Mode7Objects_InstList                                  ;8B952B;
    LDX.W $19B1                                                          ;8B952E;

.next:
    DEX                                                                  ;8B9531;
    DEX                                                                  ;8B9532;
    BPL .loop                                                            ;8B9533;
    PLP                                                                  ;8B9535;
    RTS                                                                  ;8B9536;


Process_Mode7Objects_InstList:
    JSR.W ($19A5,X)                                                      ;8B9537;
    LDX.W $19B1                                                          ;8B953A;
    DEC.W $19A9,X                                                        ;8B953D;
    BNE .return                                                          ;8B9540;
    LDY.W $19A1,X                                                        ;8B9542;

.loop:
    LDA.W $0000,Y                                                        ;8B9545;
    BPL .timer                                                           ;8B9548;
    STA.B $12                                                            ;8B954A;
    INY                                                                  ;8B954C;
    INY                                                                  ;8B954D;
    PEA.W .loop-1                                                        ;8B954E;
    JMP.W ($0012)                                                        ;8B9551;


.timer:
    STA.W $19A9,X                                                        ;8B9554;
    PHY                                                                  ;8B9557;
    PHX                                                                  ;8B9558;
    LDX.W $0002,Y                                                        ;8B9559;
    JSL.L QueueMode7Transfers                                            ;8B955C;
    PLX                                                                  ;8B9560;
    PLY                                                                  ;8B9561;
    TYA                                                                  ;8B9562;
    CLC                                                                  ;8B9563;
    ADC.W #$0004                                                         ;8B9564;
    STA.W $19A1,X                                                        ;8B9567;

.return:
    RTS                                                                  ;8B956A;


Mode7Objects_Instruction_Delete:
    REP #$30                                                             ;8B956B;
    STZ.W $19A1,X                                                        ;8B956D;
    PLA                                                                  ;8B9570;
    RTS                                                                  ;8B9571;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_Mode7Objects_Instruction_PreInstructionY_8B9572:
    REP #$30                                                             ;8B9572;
    LDA.W $0000,Y                                                        ;8B9574;
    STA.W $19A5,X                                                        ;8B9577;
    INY                                                                  ;8B957A;
    INY                                                                  ;8B957B;
    RTS                                                                  ;8B957C;


UNUSED_Mode7Objects_Instruction_ClearPreInstruction_8B957D:
    REP #$30                                                             ;8B957D;
    LDA.W #.return                                                       ;8B957F;
    STA.W $19A5,X                                                        ;8B9582;

  .return:
    RTS                                                                  ;8B9585;
endif ; !FEATURE_KEEP_UNREFERENCED


Mode7Objects_Instruction_GotoY:
    REP #$30                                                             ;8B9586;
    LDA.W $0000,Y                                                        ;8B9588;
    TAY                                                                  ;8B958B;
    RTS                                                                  ;8B958C;


Mode7Objects_Instruction_DecrementTimer_GotoYIfNonZero:
    REP #$30                                                             ;8B958D;
    DEC.W $19AD,X                                                        ;8B958F;
    BNE Mode7Objects_Instruction_GotoY                                   ;8B9592;
    INY                                                                  ;8B9594;
    INY                                                                  ;8B9595;
    RTS                                                                  ;8B9596;


Mode7Objects_Instruction_TimerInY:
    REP #$30                                                             ;8B9597;
    LDA.W $0000,Y                                                        ;8B9599;
    STA.W $19AD,X                                                        ;8B959C;
    INY                                                                  ;8B959F;
    INY                                                                  ;8B95A0;
    RTS                                                                  ;8B95A1;


Enable_CinematicBGObjects:
    PHP                                                                  ;8B95A2;
    REP #$30                                                             ;8B95A3;
    LDA.W #$8000                                                         ;8B95A5;
    TSB.W $19F1                                                          ;8B95A8;
    PLP                                                                  ;8B95AB;
    RTL                                                                  ;8B95AC;


Disable_CinematicBGObjects:
    PHP                                                                  ;8B95AD;
    REP #$30                                                             ;8B95AE;
    LDA.W #$8000                                                         ;8B95B0;
    TRB.W $19F1                                                          ;8B95B3;
    PLP                                                                  ;8B95B6;
    RTL                                                                  ;8B95B7;


Enable_CinematicBGTilemap_Updates:
    PHP                                                                  ;8B95B8;
    REP #$30                                                             ;8B95B9;
    LDA.W #$8000                                                         ;8B95BB;
    TSB.W $19F3                                                          ;8B95BE;
    PLP                                                                  ;8B95C1;
    RTL                                                                  ;8B95C2;


Disable_CinematicBGTilemap_Updates:
    PHP                                                                  ;8B95C3;
    REP #$30                                                             ;8B95C4;
    LDA.W #$8000                                                         ;8B95C6;
    TRB.W $19F3                                                          ;8B95C9;
    PLP                                                                  ;8B95CC;
    RTL                                                                  ;8B95CD;


Clear_CinematicBGObjects_CinematicBGTilemap:
    PHP                                                                  ;8B95CE;
    REP #$30                                                             ;8B95CF;
    PHX                                                                  ;8B95D1;
    LDX.W #$07FE                                                         ;8B95D2;

.loopTilemap:
    STA.L $7E3000,X                                                      ;8B95D5;
    DEX                                                                  ;8B95D9;
    DEX                                                                  ;8B95DA;
    BPL .loopTilemap                                                     ;8B95DB;
    LDX.W #$0006                                                         ;8B95DD;

.loopObjects:
    STZ.W $19B5,X                                                        ;8B95E0;
    STZ.W $19CD,X                                                        ;8B95E3;
    DEX                                                                  ;8B95E6;
    DEX                                                                  ;8B95E7;
    BPL .loopObjects                                                     ;8B95E8;
    STZ.W $1BA1                                                          ;8B95EA;
    PLX                                                                  ;8B95ED;
    PLP                                                                  ;8B95EE;
    RTL                                                                  ;8B95EF;


Spawn_CinematicBGObject:
    PHP                                                                  ;8B95F0;
    REP #$30                                                             ;8B95F1;
    PHX                                                                  ;8B95F3;
    STA.W $19F5                                                          ;8B95F4;
    TYX                                                                  ;8B95F7;
    LDY.W #$0006                                                         ;8B95F8;

.loop:
    LDA.W $19CD,Y                                                        ;8B95FB;
    BEQ .spawn                                                           ;8B95FE;
    DEY                                                                  ;8B9600;
    DEY                                                                  ;8B9601;
    BPL .loop                                                            ;8B9602;
    PLX                                                                  ;8B9604;
    PLP                                                                  ;8B9605;
    SEC                                                                  ;8B9606;
    RTS                                                                  ;8B9607;


.spawn:
    REP #$30                                                             ;8B9608;
    LDA.W $0002,X                                                        ;8B960A;
    STA.W $19D5,Y                                                        ;8B960D;
    LDA.W $0004,X                                                        ;8B9610;
    STA.W $19CD,Y                                                        ;8B9613;
    LDA.W #$0001                                                         ;8B9616;
    STA.W $19DD,Y                                                        ;8B9619;
    LDA.W #$0000                                                         ;8B961C;
    STA.W $19B5,Y                                                        ;8B961F;
    LDA.W #$0000                                                         ;8B9622;
    STA.W $19E5,Y                                                        ;8B9625;
    JSR.W ($0000,X)                                                      ;8B9628;
    PLX                                                                  ;8B962B;
    PLP                                                                  ;8B962C;
    CLC                                                                  ;8B962D;
    RTS                                                                  ;8B962E;


Handle_CinematicBGObjects:
    PHP                                                                  ;8B962F;
    REP #$30                                                             ;8B9630;
    BIT.W $19F1                                                          ;8B9632;
    BPL .return                                                          ;8B9635;
    LDX.W #$0006                                                         ;8B9637;

.loop:
    STX.W $19ED                                                          ;8B963A;
    LDA.W $19CD,X                                                        ;8B963D;
    BEQ .next                                                            ;8B9640;
    JSR.W Process_CinematicBGObject_InstList                             ;8B9642;
    LDX.W $19ED                                                          ;8B9645;

.next:
    DEX                                                                  ;8B9648;
    DEX                                                                  ;8B9649;
    BPL .loop                                                            ;8B964A;
    BIT.W $19F3                                                          ;8B964C;
    BPL .updateEyes                                                      ;8B964F;
    JSR.W CinematicBGObjects_Update32x30CinematicBGTilemap               ;8B9651;

.updateEyes:
    JSR.W CinematicBGObjects_UpdateSamusEyesTilemap                      ;8B9654;

.return:
    PLP                                                                  ;8B9657;
    RTS                                                                  ;8B9658;


Handle_CinematicBGObjectsWithoutEyes:
    PHP
    REP #$30
    BIT.W $19F1
    BPL .return
    LDX.W #$0006

.loop:
    STX.W $19ED
    LDA.W $19CD,X
    BEQ .next
    JSR.W Process_CinematicBGObject_InstList
    LDX.W $19ED

.next:
    DEX
    DEX
    BPL .loop
    BIT.W $19F3
    BPL .return
    JSR.W CinematicBGObjects_Update32x30CinematicBGTilemap

.return:
    PLP
    RTS


Process_CinematicBGObject_InstList:
    JSR.W ($19D5,X)                                                      ;8B9659;
    PHB                                                                  ;8B965C;
    PEA.W $8C00                                                          ;8B965D;
    PLB                                                                  ;8B9660;
    PLB                                                                  ;8B9661;
    LDX.W $19ED                                                          ;8B9662;
    DEC.W $19DD,X                                                        ;8B9665;
    BNE .return                                                          ;8B9668;
    LDY.W $19CD,X                                                        ;8B966A;

.loop:
    LDA.W $0000,Y                                                        ;8B966D;
    BPL .timer                                                           ;8B9670;
    STA.B $12                                                            ;8B9672;
    INY                                                                  ;8B9674;
    INY                                                                  ;8B9675;
    PEA.W .loop-1                                                        ;8B9676;
    JMP.W ($0012)                                                        ;8B9679;


.timer:
    STA.W $19DD,X                                                        ;8B967C;
    LDA.W $0002,Y                                                        ;8B967F;
    STA.W $0012                                                          ;8B9682;
    LDA.W $0004,Y                                                        ;8B9685;
    STA.W $19B5,X                                                        ;8B9688;
    JSR.W CinematicBGObjects_ProcessIndirectInstruction                  ;8B968B;
    TYA                                                                  ;8B968E;
    CLC                                                                  ;8B968F;
    ADC.W #$0006                                                         ;8B9690;
    STA.W $19CD,X                                                        ;8B9693;

.return:
    PLB                                                                  ;8B9696;
    RTS                                                                  ;8B9697;


CinematicBGObject_Instruction_Delete:
    REP #$30                                                             ;8B9698;
    STZ.W $19B5,X                                                        ;8B969A;
    STZ.W $19CD,X                                                        ;8B969D;
    PLA                                                                  ;8B96A0;
    PLB                                                                  ;8B96A1;
    RTS                                                                  ;8B96A2;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_CinematicBGObject_Instruction_Sleep_8B96A3:
    REP #$30                                                             ;8B96A3;
    DEY                                                                  ;8B96A5;
    DEY                                                                  ;8B96A6;
    TYA                                                                  ;8B96A7;
    STA.W $19CD,X                                                        ;8B96A8;
    PLA                                                                  ;8B96AB;
    PLB                                                                  ;8B96AC;
    RTS                                                                  ;8B96AD;


UNUSED_CinematicBGObject_Instruction_PreInstructionY_8B96AE:
    REP #$30                                                             ;8B96AE;
    LDA.W $0000,Y                                                        ;8B96B0;
    STA.W $19D5,X                                                        ;8B96B3;
    INY                                                                  ;8B96B6;
    INY                                                                  ;8B96B7;
    RTS                                                                  ;8B96B8;


UNUSED_CinematicBGObject_Inst_ClearPreInstruction_8B96B9:
    REP #$30                                                             ;8B96B9;
    LDA.W #.return                                                       ;8B96BB;
    STA.W $19D5,X                                                        ;8B96BE;

  .return:
    RTS                                                                  ;8B96C1;


UNUSED_CinematicBGObjects_Inst_CallExternalFunction_8B96C2:
    REP #$30                                                             ;8B96C2;
    LDA.W $0000,Y                                                        ;8B96C4;
    STA.W $0012                                                          ;8B96C7;
    LDA.W $0001,Y                                                        ;8B96CA;
    STA.W $0013                                                          ;8B96CD;
    PHY                                                                  ;8B96D0;
    JSL.L .externalFunction                                              ;8B96D1;
    PLY                                                                  ;8B96D5;
    LDX.W $19ED                                                          ;8B96D6;
    INY                                                                  ;8B96D9;
    INY                                                                  ;8B96DA;
    INY                                                                  ;8B96DB;
    RTS                                                                  ;8B96DC;


.externalFunction:
    JML.W [$0012]                                                        ;8B96DD;


UNUSED_CinematicBGObjects_Inst_CallExternalFunction_8B96E0:
    REP #$30                                                             ;8B96E0;
    LDA.W $0000,Y                                                        ;8B96E2;
    STA.W $0012                                                          ;8B96E5;
    LDA.W $0001,Y                                                        ;8B96E8;
    STA.W $0013                                                          ;8B96EB;
    LDA.W $0003,Y                                                        ;8B96EE;
    PHY                                                                  ;8B96F1;
    JSL.L .externalFunction                                              ;8B96F2;
    PLY                                                                  ;8B96F6;
    LDX.W $19ED                                                          ;8B96F7;
    TYA                                                                  ;8B96FA;
    CLC                                                                  ;8B96FB;
    ADC.W #$0005                                                         ;8B96FC;
    TAY                                                                  ;8B96FF;
    RTS                                                                  ;8B9700;


.externalFunction:
    JML.W [$0012]                                                        ;8B9701;


UNUSED_CinematicBGObjects_Inst_GotoY_8B9704:
    REP #$30                                                             ;8B9704;
    STY.W $0012                                                          ;8B9706;
    DEY                                                                  ;8B9709;
    LDA.W $0000,Y                                                        ;8B970A;
    XBA                                                                  ;8B970D;
    BMI .highByte                                                        ;8B970E;
    AND.W #$00FF                                                         ;8B9710;
    BRA +                                                                ;8B9713;


.highByte:
    ORA.W #$FF00                                                         ;8B9715;

  + CLC                                                                  ;8B9718;
    ADC.W $0012                                                          ;8B9719;
    TAY                                                                  ;8B971C;
    RTS                                                                  ;8B971D;
endif ; !FEATURE_KEEP_UNREFERENCED


CinematicBGObject_Instruction_GotoY:
    REP #$30                                                             ;8B971E;
    LDA.W $0000,Y                                                        ;8B9720;
    TAY                                                                  ;8B9723;
    RTS                                                                  ;8B9724;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_CinematicBGObjects_Inst_DecrementTimer_GotoY_8B9724:
    REP #$30                                                             ;8B9725;
    DEC.W $19E5,X                                                        ;8B9727;
    BNE CinematicBGObject_Instruction_GotoY                              ;8B972A;
    INY                                                                  ;8B972C;
    INY                                                                  ;8B972D;
    RTS                                                                  ;8B972E;


UNUSED_CinematicBGObjects_Inst_DecrementTimer_GotoY_8B972F:
    REP #$30                                                             ;8B972F;
    DEC.W $19E5,X                                                        ;8B9731;
    BNE UNUSED_CinematicBGObjects_Inst_GotoY_8B9704                      ;8B9734;
    INY                                                                  ;8B9736;
    RTS                                                                  ;8B9737;


UNUSED_CinematicBGObjects_Inst_TimerInY_8B9738:
    REP #$30                                                             ;8B9738;
    LDA.W $0000,Y                                                        ;8B973A;
    STA.W $19E5,X                                                        ;8B973D;
    INY                                                                  ;8B9740;
    INY                                                                  ;8B9741;
    RTS                                                                  ;8B9742;


UNUSED_REP30RTS_8B9743:
    REP #$30                                                             ;8B9743;
    RTS                                                                  ;8B9745;
endif ; !FEATURE_KEEP_UNREFERENCED


Draw_CinematicSpriteObjects_IntroTitleSequence:
    PHP                                                                  ;8B9746;
    REP #$30                                                             ;8B9747;
    PHB                                                                  ;8B9749;
    LDX.W #$001E                                                         ;8B974A;

.loop:
    LDA.W $1A5D,X                                                        ;8B974D;
    BEQ .next                                                            ;8B9750;
    PEA.W $8C00                                                          ;8B9752;
    PLB                                                                  ;8B9755;
    PLB                                                                  ;8B9756;
    LDY.W $1A5D,X                                                        ;8B9757;
    LDA.W $1ABD,X                                                        ;8B975A;
    STA.B $16                                                            ;8B975D;
    LDA.W $1A7D,X                                                        ;8B975F;
    SEC                                                                  ;8B9762;
    SBC.W $0911                                                          ;8B9763;
    STA.B $14                                                            ;8B9766;
    LDA.W $1A9D,X                                                        ;8B9768;
    SEC                                                                  ;8B976B;
    SBC.W $0915                                                          ;8B976C;
    STA.B $12                                                            ;8B976F;
    BIT.W #$FF00                                                         ;8B9771;
    BNE +                                                                ;8B9774;
    CLC                                                                  ;8B9776;
    ADC.W #$0080                                                         ;8B9777;
    CMP.W #$01FF                                                         ;8B977A;
    BCS .next                                                            ;8B977D;
    JSL.L AddSpritemapToOAM                                              ;8B977F;
    BRA .next                                                            ;8B9783;


  + CLC                                                                  ;8B9785;
    ADC.W #$0080                                                         ;8B9786;
    CMP.W #$01FF                                                         ;8B9789;
    BCS .next                                                            ;8B978C;
    JSL.L AddSpritemapToOAM_Offscreen                                    ;8B978E;

.next:
    DEX                                                                  ;8B9792;
    DEX                                                                  ;8B9793;
    BPL .loop                                                            ;8B9794;
    PLB                                                                  ;8B9796;
    PLP                                                                  ;8B9797;
    RTS                                                                  ;8B9798;


Draw_CinematicSpriteObjects_EndingCredits:
    PHP                                                                  ;8B9799;
    REP #$30                                                             ;8B979A;
    PHB                                                                  ;8B979C;
    LDX.W #$001E                                                         ;8B979D;

.loop:
    LDA.W $1A5D,X                                                        ;8B97A0;
    BEQ .next                                                            ;8B97A3;
    PEA.W $8C00                                                          ;8B97A5;
    PLB                                                                  ;8B97A8;
    PLB                                                                  ;8B97A9;
    LDY.W $1A5D,X                                                        ;8B97AA;
    LDA.W $1ABD,X                                                        ;8B97AD;
    STA.B $16                                                            ;8B97B0;
    LDA.W $1A7D,X                                                        ;8B97B2;
    SEC                                                                  ;8B97B5;
    SBC.W $0911                                                          ;8B97B6;
    STA.B $14                                                            ;8B97B9;
    LDA.W $1A9D,X                                                        ;8B97BB;
    SEC                                                                  ;8B97BE;
    SBC.W $0915                                                          ;8B97BF;
    STA.B $12                                                            ;8B97C2;
    BIT.W #$FF00                                                         ;8B97C4;
    BNE +                                                                ;8B97C7;
    CLC                                                                  ;8B97C9;
    ADC.W #$0080                                                         ;8B97CA;
    CMP.W #$01FF                                                         ;8B97CD;
    BCS .next                                                            ;8B97D0;
    JSL.L AddSpritemapToOAM                                              ;8B97D2;
    BRA .next                                                            ;8B97D6;


  + CLC                                                                  ;8B97D8;
    ADC.W #$0080                                                         ;8B97D9;
    CMP.W #$01FF                                                         ;8B97DC;
    BCS .next                                                            ;8B97DF;
    JSL.L AddSpritemapToOAM_Offscreen                                    ;8B97E1;

.next:
    DEX                                                                  ;8B97E5;
    DEX                                                                  ;8B97E6;
    BPL .loop                                                            ;8B97E7;
    PLB                                                                  ;8B97E9;
    LDA.W $1F51                                                          ;8B97EA;
    CMP.W #CinematicFunc_Ending_ZebesDestruction2_CrossFade_FadingIn     ;8B97ED;
    BPL .return                                                          ;8B97F0;
    JSR.W MoveUnusedSpritesOffScreen                                     ;8B97F2;

.return:
    PLP                                                                  ;8B97F5;
    RTS                                                                  ;8B97F6;


Spawn_TextGlowObject:
    PHX                                                                  ;8B97F7;
    LDX.W #$000E                                                         ;8B97F8;

.loop:
    LDA.W $19F7,X                                                        ;8B97FB;
    BEQ .spawn                                                           ;8B97FE;
    DEX                                                                  ;8B9800;
    DEX                                                                  ;8B9801;
    BPL .loop                                                            ;8B9802;
    PLX                                                                  ;8B9804;
    RTS                                                                  ;8B9805;


.spawn:
    TYA                                                                  ;8B9806;
    STA.W $19F7,X                                                        ;8B9807;
    LDA.W #$0001                                                         ;8B980A;
    STA.W $1A07,X                                                        ;8B980D;
    LDA.B $12                                                            ;8B9810;
    AND.W #$00FF                                                         ;8B9812;
    STA.W $1A17,X                                                        ;8B9815;
    LDA.B $13                                                            ;8B9818;
    AND.W #$00FF                                                         ;8B981A;
    STA.W $1A27,X                                                        ;8B981D;
    LDA.W #$0000                                                         ;8B9820;
    STA.W $1A37,X                                                        ;8B9823;
    PLX                                                                  ;8B9826;
    RTS                                                                  ;8B9827;


Handle_TextGlowObject:
    PHP                                                                  ;8B9828;
    REP #$30                                                             ;8B9829;
    PHB                                                                  ;8B982B;
    PEA.W $8C00                                                          ;8B982C;
    PLB                                                                  ;8B982F;
    PLB                                                                  ;8B9830;
    LDX.W #$000E                                                         ;8B9831;

.loop:
    STX.W $1A47                                                          ;8B9834;
    LDA.W $19F7,X                                                        ;8B9837;
    BEQ .next                                                            ;8B983A;
    JSR.W Process_TextGlowObject                                         ;8B983C;
    LDX.W $1A47                                                          ;8B983F;

.next:
    DEX                                                                  ;8B9842;
    DEX                                                                  ;8B9843;
    BPL .loop                                                            ;8B9844;
    PLB                                                                  ;8B9846;
    PLP                                                                  ;8B9847;
    RTS                                                                  ;8B9848;


Process_TextGlowObject:
    LDX.W $1A47                                                          ;8B9849;
    DEC.W $1A07,X                                                        ;8B984C;
    BEQ +                                                                ;8B984F;
    RTS                                                                  ;8B9851;


  + LDA.W $1A37,X                                                        ;8B9852;
    STA.B $1C                                                            ;8B9855;
    LDY.W $19F7,X                                                        ;8B9857;
    LDA.W $1A17,X                                                        ;8B985A;
    AND.W #$00FF                                                         ;8B985D;
    ASL A                                                                ;8B9860;
    STA.W $0014                                                          ;8B9861;
    SEP #$20                                                             ;8B9864;
    LDA.B #$40                                                           ;8B9866;
    STA.W $4202                                                          ;8B9868;
    LDA.W $1A27,X                                                        ;8B986B;
    STA.W $4203                                                          ;8B986E;
    NOP                                                                  ;8B9871;
    NOP                                                                  ;8B9872;
    NOP                                                                  ;8B9873;
    REP #$20                                                             ;8B9874;
    LDA.W $4216                                                          ;8B9876;
    CLC                                                                  ;8B9879;
    ADC.W $0014                                                          ;8B987A;
    STA.W $0016                                                          ;8B987D;
    TAX                                                                  ;8B9880;
    LDA.W $0002,Y                                                        ;8B9881;
    AND.W #$00FF                                                         ;8B9884;
    STA.W $0012                                                          ;8B9887;
    STA.W $0018                                                          ;8B988A;
    LDA.W $0003,Y                                                        ;8B988D;
    AND.W #$00FF                                                         ;8B9890;
    STA.W $0014                                                          ;8B9893;

.loop:
    LDA.L $7E3000,X                                                      ;8B9896;
    AND.W #$E3FF                                                         ;8B989A;
    ORA.B $1C                                                            ;8B989D;
    STA.L $7E3000,X                                                      ;8B989F;
    INY                                                                  ;8B98A3;
    INY                                                                  ;8B98A4;
    INX                                                                  ;8B98A5;
    INX                                                                  ;8B98A6;
    DEC.W $0012                                                          ;8B98A7;
    BEQ +                                                                ;8B98AA;
    BRA .loop                                                            ;8B98AC;


  + LDA.W $0018                                                          ;8B98AE;
    STA.W $0012                                                          ;8B98B1;
    DEC.W $0014                                                          ;8B98B4;
    BEQ +                                                                ;8B98B7;
    LDA.W $0016                                                          ;8B98B9;
    CLC                                                                  ;8B98BC;
    ADC.W #$0040                                                         ;8B98BD;
    STA.W $0016                                                          ;8B98C0;
    TAX                                                                  ;8B98C3;
    BRA .loop                                                            ;8B98C4;


  + LDX.W $1A47                                                          ;8B98C6;
    LDA.W $1A37,X                                                        ;8B98C9;
    CMP.W #$0C00                                                         ;8B98CC;
    BEQ .return                                                          ;8B98CF;
    CLC                                                                  ;8B98D1;
    ADC.W #$0400                                                         ;8B98D2;
    STA.W $1A37,X                                                        ;8B98D5;
    LDA.W #$0005                                                         ;8B98D8;
    STA.W $1A07,X                                                        ;8B98DB;
    RTS                                                                  ;8B98DE;


.return:
    STZ.W $19F7,X                                                        ;8B98DF;
    RTS                                                                  ;8B98E2;


Enable_CreditsObject:
    PHP                                                                  ;8B98E3;
    REP #$30                                                             ;8B98E4;
    LDA.W #$8000                                                         ;8B98E6;
    TSB.W $19FF                                                          ;8B98E9;
    PLP                                                                  ;8B98EC;
    RTS                                                                  ;8B98ED;


Disable_CreditsObject:
    PHP                                                                  ;8B98EE;
    REP #$30                                                             ;8B98EF;
    LDA.W #$8000                                                         ;8B98F1;
    TRB.W $19FF                                                          ;8B98F4;
    PLP                                                                  ;8B98F7;
    RTS                                                                  ;8B98F8;


Clear_CreditsObject_CinematicBGTilemapInA:
    PHP                                                                  ;8B98F9;
    REP #$30                                                             ;8B98FA;
    PHX                                                                  ;8B98FC;
    LDX.W #$07FE                                                         ;8B98FD;

.loop:
    STA.L $7E3000,X                                                      ;8B9900;
    DEX                                                                  ;8B9904;
    DEX                                                                  ;8B9905;
    BPL .loop                                                            ;8B9906;
    LDA.W #$0000                                                         ;8B9908;
    STA.W $1A01                                                          ;8B990B;
    STZ.W $19F7                                                          ;8B990E;
    STZ.W $19F9                                                          ;8B9911;
    STZ.W $19FB                                                          ;8B9914;
    STZ.W $19FD                                                          ;8B9917;
    LDA.W #$4800                                                         ;8B991A;
    STA.W $19F5                                                          ;8B991D;
    STZ.W $1A03                                                          ;8B9920;
    STZ.W $1991                                                          ;8B9923;
    STZ.W $1993                                                          ;8B9926;
    STZ.W $1995                                                          ;8B9929;
    STZ.W $1997                                                          ;8B992C;
    PLX                                                                  ;8B992F;
    PLP                                                                  ;8B9930;
    RTS                                                                  ;8B9931;


Spawn_CreditsObject:
    PHP                                                                  ;8B9932;
    REP #$30                                                             ;8B9933;
    PHX                                                                  ;8B9935;
    TYX                                                                  ;8B9936;
    LDA.W $0002,X                                                        ;8B9937;
    STA.W $19FD                                                          ;8B993A;
    LDA.W $0004,X                                                        ;8B993D;
    STA.W $19F7                                                          ;8B9940;
    LDA.W #$0001                                                         ;8B9943;
    STA.W $19F9                                                          ;8B9946;
    LDA.W #$0000                                                         ;8B9949;
    STA.W $19FB                                                          ;8B994C;
    JSR.W ($0000,X)                                                      ;8B994F;
    PLX                                                                  ;8B9952;
    PLP                                                                  ;8B9953;
    RTS                                                                  ;8B9954;


Handle_CreditsObject:
    PHP                                                                  ;8B9955;
    REP #$30                                                             ;8B9956;
    BIT.W $19FF                                                          ;8B9958;
    BPL .return                                                          ;8B995B;
    LDA.W $19F7                                                          ;8B995D;
    BEQ .updateTilemap                                                   ;8B9960;
    JSR.W Process_CreditsObject_InstList                                 ;8B9962;

.updateTilemap:
    JSR.W CinematicBGObjects_Update32x32CinematicBGTilemap               ;8B9965;

.return:
    PLP                                                                  ;8B9968;
    RTS                                                                  ;8B9969;


Process_CreditsObject_InstList:
    LDX.W #$0000                                                         ;8B996A;
    JSR.W ($19FD,X)                                                      ;8B996D;
    PHB                                                                  ;8B9970;
    PEA.W $8C00                                                          ;8B9971;
    PLB                                                                  ;8B9974;
    PLB                                                                  ;8B9975;
    LDA.W $1995                                                          ;8B9976;
    CLC                                                                  ;8B9979;
    ADC.W #$9800                                                         ;8B997A;
    STA.W $1995                                                          ;8B997D;
    LDA.W $1997                                                          ;8B9980;
    ADC.W #$0000                                                         ;8B9983;
    STA.W $1997                                                          ;8B9986;
    SEC                                                                  ;8B9989;
    SBC.W $1A03                                                          ;8B998A;
    CMP.W #$0008                                                         ;8B998D;
    BMI .return                                                          ;8B9990;
    LDA.W $1997                                                          ;8B9992;
    STA.W $1A03                                                          ;8B9995;
    LDY.W $19F7                                                          ;8B9998;

.loop:
    LDA.W $0000,Y                                                        ;8B999B;
    BPL .copyRow                                                         ;8B999E;
    STA.B $12                                                            ;8B99A0;
    INY                                                                  ;8B99A2;
    INY                                                                  ;8B99A3;
    PEA.W .loop-1                                                        ;8B99A4;
    JMP.W ($0012)                                                        ;8B99A7;


.copyRow:
    JSR.W Copy_CreditsRow_ToCinematicBGTilemap                           ;8B99AA;
    LDA.W $1A01                                                          ;8B99AD;
    INC A                                                                ;8B99B0;
    AND.W #$001F                                                         ;8B99B1;
    STA.W $1A01                                                          ;8B99B4;
    TYA                                                                  ;8B99B7;
    CLC                                                                  ;8B99B8;
    ADC.W #$0004                                                         ;8B99B9;
    STA.W $19F7                                                          ;8B99BC;

.return:
    PLB                                                                  ;8B99BF;
    RTS                                                                  ;8B99C0;


Copy_CreditsRow_ToCinematicBGTilemap:
    PHP                                                                  ;8B99C1;
    REP #$30                                                             ;8B99C2;
    LDA.W #$7F00                                                         ;8B99C4;
    STA.B $01                                                            ;8B99C7;
    STZ.B $00                                                            ;8B99C9;
    PHY                                                                  ;8B99CB;
    SEP #$20                                                             ;8B99CC;
    LDA.B #$40                                                           ;8B99CE;
    STA.W $4202                                                          ;8B99D0;
    LDA.W $1A01                                                          ;8B99D3;
    STA.W $4203                                                          ;8B99D6;
    NOP                                                                  ;8B99D9;
    NOP                                                                  ;8B99DA;
    NOP                                                                  ;8B99DB;
    REP #$20                                                             ;8B99DC;
    LDA.W $4216                                                          ;8B99DE;
    TAX                                                                  ;8B99E1;
    LDA.W #$001F                                                         ;8B99E2;
    STA.W $0014                                                          ;8B99E5;
    LDA.W $0002,Y                                                        ;8B99E8;
    TAY                                                                  ;8B99EB;

.loop:
    LDA.B [$00],Y                                                        ;8B99EC;
    STA.L $7E3000,X                                                      ;8B99EE;
    INX                                                                  ;8B99F2;
    INX                                                                  ;8B99F3;
    INY                                                                  ;8B99F4;
    INY                                                                  ;8B99F5;
    DEC.W $0014                                                          ;8B99F6;
    BPL .loop                                                            ;8B99F9;
    PLY                                                                  ;8B99FB;
    PLP                                                                  ;8B99FC;
    RTS                                                                  ;8B99FD;


Instruction_CreditsObject_Delete:
    REP #$30                                                             ;8B99FE;
    STZ.W $19F7                                                          ;8B9A00;
    PLA                                                                  ;8B9A03;
    PLB                                                                  ;8B9A04;
    RTS                                                                  ;8B9A05;


Instruction_CreditsObject_GotoY:
    REP #$30                                                             ;8B9A06;
    LDA.W $0000,Y                                                        ;8B9A08;
    TAY                                                                  ;8B9A0B;
    RTS                                                                  ;8B9A0C;


Instruction_CreditsObject_DecrementTimer_GotoYIfNonZero:
    REP #$30                                                             ;8B9A0D;
    DEC.W $19FB                                                          ;8B9A0F;
    BNE Instruction_CreditsObject_GotoY                                  ;8B9A12;
    INY                                                                  ;8B9A14;
    INY                                                                  ;8B9A15;
    RTS                                                                  ;8B9A16;


Instruction_CreditsObject_TimerInY:
    REP #$30                                                             ;8B9A17;
    LDA.W $0000,Y                                                        ;8B9A19;
    STA.W $19FB                                                          ;8B9A1C;
    INY                                                                  ;8B9A1F;
    INY                                                                  ;8B9A20;
    RTS                                                                  ;8B9A21;


GameState1_TitleSequence:
    PHP                                                                  ;8B9A22;
    PHB                                                                  ;8B9A23;
    PHK                                                                  ;8B9A24;
    PLB                                                                  ;8B9A25;
    REP #$30                                                             ;8B9A26;
    PEA.W .manualReturn-1                                                ;8B9A28;
    JMP.W ($1F51)                                                        ;8B9A2B;


.manualReturn:
    JSR.W Handle_CinematicSpriteObjects                                  ;8B9A2E;
    JSR.W Handle_Mode7Objects                                            ;8B9A31;
    JSL.L PaletteFXObject_Handler                                        ;8B9A34;
    JSR.W Draw_CinematicSpriteObjects_IntroTitleSequence                 ;8B9A38;
    JSR.W SkipToTitleScreenCheck                                         ;8B9A3B;
    JSR.W SkipToTitleScreenHandler                                       ;8B9A3E;
    JSR.W HandleMode7TransformMatrixAndBG1Position_NoRotation            ;8B9A41;
    PLB                                                                  ;8B9A44;
    PLP                                                                  ;8B9A45;
    RTL                                                                  ;8B9A46;


RTS_8B9A47:
    RTS                                                                  ;8B9A47;


SkipToTitleScreenCheck:
    LDA.W $1F51                                                          ;8B9A48;
    CMP.W #RTS_8B9F28                                                    ;8B9A4B;
    BPL .return                                                          ;8B9A4E;
    LDA.B $8F                                                            ;8B9A50;
    BIT.W #$9080                                                         ;8B9A52;
    BEQ .return                                                          ;8B9A55;
    LDA.W $1A53                                                          ;8B9A57;
    BNE .return                                                          ;8B9A5A;
    LDA.W #$0001                                                         ;8B9A5C;
    STA.W $1A53                                                          ;8B9A5F;
    STZ.W $0723                                                          ;8B9A62;
    LDA.W #$0002                                                         ;8B9A65;
    STA.W $0725                                                          ;8B9A68;

.return:
    RTS                                                                  ;8B9A6B;


SkipToTitleScreenHandler:
    PHP                                                                  ;8B9A6C;
    REP #$30                                                             ;8B9A6D;
    LDA.W $1A53                                                          ;8B9A6F;
    BEQ .return                                                          ;8B9A72;
    ASL A                                                                ;8B9A74;
    TAX                                                                  ;8B9A75;
    JSR.W (.pointers,X)                                                  ;8B9A76;

.return:
    PLP                                                                  ;8B9A79;
    RTS                                                                  ;8B9A7A;


.pointers:
    dw $0000                                                             ;8B9A7B;
    dw SkipToTitleScreenHandler_1_FadeOut                                ;8B9A7D;
    dw SkipToTitleScreenHandler_2_PrepareTitleScreen                     ;8B9A7F;
    dw SkipToTitleScreenHandler_3_FadeIn                                 ;8B9A81;

SkipToTitleScreenHandler_1_FadeOut:
    JSR.W AdvanceFastScreenFadeOut                                       ;8B9A83;
    BCC .return                                                          ;8B9A86;
    LDA.W #$0002                                                         ;8B9A88;
    STA.W $1A53                                                          ;8B9A8B;
    LDA.W #RTS_8B9F28                                                    ;8B9A8E;
    STA.W $1F51                                                          ;8B9A91;
    LDA.W #$0006                                                         ;8B9A94;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8B9A97;

.return:
    RTS                                                                  ;8B9A9B;


SkipToTitleScreenHandler_2_PrepareTitleScreen:
    JSR.W Clear_CinematicSpriteObjects                                   ;8B9A9C;
    LDY.W #CinematicSpriteObjectDefinitions_TitleSequence_SuperMetroidLogoImmediate ;8B9A9F;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8B9AA2;
    LDY.W #CinematicSpriteObjectDefinitions_TitleSequence_NintendoCopyrightImmediate ;8B9AA5;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8B9AA8;
    STZ.W $0723                                                          ;8B9AAB;
    LDA.W #$0002                                                         ;8B9AAE;
    STA.W $0725                                                          ;8B9AB1;
    LDA.W #$0100                                                         ;8B9AB4;
    STA.W $198F                                                          ;8B9AB7;
    STZ.W $1993                                                          ;8B9ABA;
    STZ.W $1991                                                          ;8B9ABD;
    STZ.W $1997                                                          ;8B9AC0;
    STZ.W $1995                                                          ;8B9AC3;
    STZ.W $199B                                                          ;8B9AC6;
    STZ.W $1999                                                          ;8B9AC9;
    STZ.W $199F                                                          ;8B9ACC;
    STZ.W $199D                                                          ;8B9ACF;
    LDA.W #$0003                                                         ;8B9AD2;
    STA.W $1A53                                                          ;8B9AD5;
    LDX.W #$0100                                                         ;8B9AD8;

.loop:
    LDA.L Palettes_TitleScreen,X                                         ;8B9ADB;
    STA.L $7EC000,X                                                      ;8B9ADF;
    INX                                                                  ;8B9AE3;
    INX                                                                  ;8B9AE4;
    CPX.W #$0200                                                         ;8B9AE5;
    BMI .loop                                                            ;8B9AE8;
    LDA.W #$7FFF                                                         ;8B9AEA;
    STA.L $7EC192                                                        ;8B9AED;
    LDA.W #$7D80                                                         ;8B9AF1;
    STA.L $7EC194                                                        ;8B9AF4;
    JSL.L Clear_PaletteFXObjects                                         ;8B9AF8;
    LDY.W #PaletteFXObjects_TitleScreenBabyMetroidTubeLight              ;8B9AFC;
    JSL.L Spawn_PaletteFXObject                                          ;8B9AFF;
    LDY.W #PaletteFXObjects_TitleScreenFlickeringDisplays                ;8B9B03;
    JSL.L Spawn_PaletteFXObject                                          ;8B9B06;
    JSR.W Deactivate_TileSequence_BlueLight                              ;8B9B0A;
    SEP #$20                                                             ;8B9B0D;
    LDA.B #$11                                                           ;8B9B0F;
    STA.B $69                                                            ;8B9B11;
    REP #$20                                                             ;8B9B13;
    JSL.L Spawn_TitleSequenceGradient_HDMAObjects                        ;8B9B15;
    RTS                                                                  ;8B9B19;


InitFunction_CinematicSpriteObject_SuperMetroidLogoImmediate:
    LDA.W #$0080                                                         ;8B9B1A;
    STA.W $1A7D,Y                                                        ;8B9B1D;
    LDA.W #$0030                                                         ;8B9B20;
    STA.W $1A9D,Y                                                        ;8B9B23;
    LDA.W #$0400                                                         ;8B9B26;
    STA.W $1ABD,Y                                                        ;8B9B29;
    RTS                                                                  ;8B9B2C;


if !FEATURE_KEEP_UNREFERENCED
InitFunction_CinematicSpriteObject_UnusedNintendoBootLogoImm:
    LDA.W #$0080                                                         ;8B9B2D;
    STA.W $1A7D,Y                                                        ;8B9B30;
    LDA.W #$0051                                                         ;8B9B33;
    STA.W $1A9D,Y                                                        ;8B9B36;
    LDA.W #$0000                                                         ;8B9B39;
    STA.W $1ABD,Y                                                        ;8B9B3C;
    RTS                                                                  ;8B9B3F;
endif ; !FEATURE_KEEP_UNREFERENCED


InitFunc_CinematicSpriteObject_NintendoCopyrightImmediate:
    LDA.W #$0080                                                         ;8B9B40;
    STA.W $1A7D,Y                                                        ;8B9B43;
    LDA.W #$00C4                                                         ;8B9B46;
    STA.W $1A9D,Y                                                        ;8B9B49;
    LDA.W #$0800                                                         ;8B9B4C;
    STA.W $1ABD,Y                                                        ;8B9B4F;
    RTS                                                                  ;8B9B52;


SkipToTitleScreenHandler_3_FadeIn:
    JSR.W AdvanceFastScreenFadeIn                                        ;8B9B53;
    BCC .return                                                          ;8B9B56;
    STZ.W $1A53                                                          ;8B9B58;
    LDA.W #$02D0                                                         ;8B9B5B;
    STA.W $1F53                                                          ;8B9B5E;
    LDA.W #CinematicFunction_TitleScreen                                 ;8B9B61;
    STA.W $1F51                                                          ;8B9B64;

.return:
    RTS                                                                  ;8B9B67;


CinematicFunction_LoadTitleSequence:
    JSL.L Load_Title_Sequence_Graphics                                   ;8B9B68;
    LDA.W #$FF03                                                         ;8B9B6C;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8B9B6F;
    LDA.W #RTS_8B9A47                                                    ;8B9B73;
    STA.W $1F51                                                          ;8B9B76;
    LDY.W #CinematicSpriteObjectDefinitions_TitleSequence_1994ScrollingText ;8B9B79;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8B9B7C;
    LDA.W #$0005                                                         ;8B9B7F;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8B9B82;
    RTS                                                                  ;8B9B86;


Load_Title_Sequence_Graphics:
    PHP                                                                  ;8B9B87;
    PHB                                                                  ;8B9B88;
    PHK                                                                  ;8B9B89;
    PLB                                                                  ;8B9B8A;
    REP #$30                                                             ;8B9B8B;
    JSR.W Setup_PPU_TitleSequence                                        ;8B9B8D;
    STZ.B $AB                                                            ;8B9B90;
    STZ.B $A7                                                            ;8B9B92;
    LDX.W #$0000                                                         ;8B9B94;

.loopTitleScreenPalette:
    LDA.L Palettes_TitleScreen,X                                         ;8B9B97;
    STA.L $7EC000,X                                                      ;8B9B9B;
    INX                                                                  ;8B9B9F;
    INX                                                                  ;8B9BA0;
    CPX.W #$0200                                                         ;8B9BA1;
    BMI .loopTitleScreenPalette                                          ;8B9BA4;
    LDA.W #Tiles_Title_Background_Mode7>>8&$FF00                         ;8B9BA6;
    STA.B $48                                                            ;8B9BA9;
    LDA.W #Tiles_Title_Background_Mode7                                  ;8B9BAB;
    STA.B $47                                                            ;8B9BAE;
    JSL.L Decompression_HardcodedDestination                             ;8B9BB0;
    dl $7F0000                                                           ;8B9BB4;
    LDA.W #Title_Mode7_Tilemap>>8&$FF00                                  ;8B9BB7;
    STA.B $48                                                            ;8B9BBA;
    LDA.W #Title_Mode7_Tilemap                                           ;8B9BBC;
    STA.B $47                                                            ;8B9BBF;
    JSL.L Decompression_HardcodedDestination                             ;8B9BC1;
    dl $7F4000                                                           ;8B9BC5;
    LDA.W #Tiles_Title_Sprite>>8&$FF00                                   ;8B9BC8;
    STA.B $48                                                            ;8B9BCB;
    LDA.W #Tiles_Title_Sprite                                            ;8B9BCD;
    STA.B $47                                                            ;8B9BD0;
    JSL.L Decompression_HardcodedDestination                             ;8B9BD2;
    dl $7F5000                                                           ;8B9BD6;
    LDA.W #Tiles_Baby_Metroid_Mode7>>8&$FF00                             ;8B9BD9;
    STA.B $48                                                            ;8B9BDC;
    LDA.W #Tiles_Baby_Metroid_Mode7                                      ;8B9BDE;
    STA.B $47                                                            ;8B9BE1;
    JSL.L Decompression_HardcodedDestination                             ;8B9BE3;
    dl $7F9000                                                           ;8B9BE7;
    SEP #$30                                                             ;8B9BEA;
    LDA.B #$00                                                           ;8B9BEC;
    STA.W $2116                                                          ;8B9BEE;
    LDA.B #$00                                                           ;8B9BF1;
    STA.W $2117                                                          ;8B9BF3;
    LDA.B #$80                                                           ;8B9BF6;
    STA.W $2115                                                          ;8B9BF8;
    JSL.L SetupHDMATransfer                                              ;8B9BFB;
    db $01,$00,$19                                                       ;8B9BFF;
    dl $7F0000                                                           ;8B9C02;
    dw $4000                                                             ;8B9C05;
    LDA.B #$02                                                           ;8B9C07;
    STA.W $420B                                                          ;8B9C09;
    REP #$10                                                             ;8B9C0C;
    STZ.W $2115                                                          ;8B9C0E;
    STZ.W $2116                                                          ;8B9C11;
    STZ.W $2117                                                          ;8B9C14;
    LDX.W #$4000                                                         ;8B9C17;
    LDA.B #$FF                                                           ;8B9C1A;

.loop:
    STA.W $2118                                                          ;8B9C1C;
    DEX                                                                  ;8B9C1F;
    BNE .loop                                                            ;8B9C20;
    SEP #$10                                                             ;8B9C22;
    LDA.B #$00                                                           ;8B9C24;
    STA.W $2116                                                          ;8B9C26;
    LDA.B #$00                                                           ;8B9C29;
    STA.W $2117                                                          ;8B9C2B;
    LDA.B #$00                                                           ;8B9C2E;
    STA.W $2115                                                          ;8B9C30;
    JSL.L SetupHDMATransfer                                              ;8B9C33;
    db $01,$00,$18                                                       ;8B9C37;
    dl $7F4000                                                           ;8B9C3A;
    dw $1000                                                             ;8B9C3D;
    LDA.B #$02                                                           ;8B9C3F;
    STA.W $420B                                                          ;8B9C41;
    LDA.B #$00                                                           ;8B9C44;
    STA.W $2116                                                          ;8B9C46;
    LDA.B #$60                                                           ;8B9C49;
    STA.W $2117                                                          ;8B9C4B;
    LDA.B #$80                                                           ;8B9C4E;
    STA.W $2115                                                          ;8B9C50;
    JSL.L SetupHDMATransfer                                              ;8B9C53;
    db $01,$01,$18                                                       ;8B9C57;
    dl $7F5000                                                           ;8B9C5A;
    dw $4000                                                             ;8B9C5D;
    LDA.B #$02                                                           ;8B9C5F;
    STA.W $420B                                                          ;8B9C61;
    REP #$30                                                             ;8B9C64;
    LDA.W #$0100                                                         ;8B9C66;
    STA.W $211B                                                          ;8B9C69;
    STA.B $78                                                            ;8B9C6C;
    STZ.W $211C                                                          ;8B9C6E;
    STZ.B $7A                                                            ;8B9C71;
    STZ.W $211D                                                          ;8B9C73;
    STZ.B $7C                                                            ;8B9C76;
    STA.W $211E                                                          ;8B9C78;
    STA.B $7E                                                            ;8B9C7B;
    LDA.W #$0080                                                         ;8B9C7D;
    STA.W $211F                                                          ;8B9C80;
    STA.B $80                                                            ;8B9C83;
    STA.W $2120                                                          ;8B9C85;
    STA.B $82                                                            ;8B9C88;
    JSL.L EnableNMI                                                      ;8B9C8A;
    LDA.W #$0001                                                         ;8B9C8E;
    STA.W $0723                                                          ;8B9C91;
    STA.W $0725                                                          ;8B9C94;
    JSL.L Enable_HDMAObjects                                             ;8B9C97;
    JSL.L Enable_PaletteFXObjects                                        ;8B9C9B;
    LDA.W #$0000                                                         ;8B9C9F;
    STA.W $1982                                                          ;8B9CA2;
    LDY.W #PaletteFXObjects_TitleScreenBabyMetroidTubeLight              ;8B9CA5;
    JSL.L Spawn_PaletteFXObject                                          ;8B9CA8;
    LDY.W #PaletteFXObjects_TitleScreenFlickeringDisplays                ;8B9CAC;
    JSL.L Spawn_PaletteFXObject                                          ;8B9CAF;
    LDY.W #Mode7Object_TitleSequenceBabyMetroid                          ;8B9CB3;
    JSR.W Spawn_Mode7Objects                                             ;8B9CB6;
    PLB                                                                  ;8B9CB9;
    PLP                                                                  ;8B9CBA;
    RTL                                                                  ;8B9CBB;


InitFunc_CinematicSpriteObject_1994ScrollingText:
    LDA.W #$0081                                                         ;8B9CBC;
    STA.W $1A7D,Y                                                        ;8B9CBF;
    LDA.W #$0070                                                         ;8B9CC2;
    STA.W $1A9D,Y                                                        ;8B9CC5;
    LDA.W #$0200                                                         ;8B9CC8;
    STA.W $1ABD,Y                                                        ;8B9CCB;
    RTS                                                                  ;8B9CCE;


PreInstruction_CinematicSpriteObject_1994ScrollingText:
    SEP #$20                                                             ;8B9CCF;
    LDA.B #$0F                                                           ;8B9CD1;
    STA.B $51                                                            ;8B9CD3;
    REP #$20                                                             ;8B9CD5;
    LDA.W #RTS_8B93D9                                                    ;8B9CD7;
    STA.W $1B3D,X                                                        ;8B9CDA;
    RTS                                                                  ;8B9CDD;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_REP20RTS_8B9CDE:
    REP #$20                                                             ;8B9CDE;
    RTS                                                                  ;8B9CE0;
endif ; !FEATURE_KEEP_UNREFERENCED


Instruction_TriggerTitleSequenceScene0:
    SEP #$20                                                             ;8B9CE1;
    LDA.B #$11                                                           ;8B9CE3;
    STA.B $69                                                            ;8B9CE5;
    REP #$20                                                             ;8B9CE7;
    LDA.W #CinematicFunction_TitleSequenceScene0_PanningLeft_Lower       ;8B9CE9;
    STA.W $1F51                                                          ;8B9CEC;
    LDA.W #$0048                                                         ;8B9CEF;
    STA.W $198F                                                          ;8B9CF2;
    LDA.W #$013B                                                         ;8B9CF5;
    STA.W $1993                                                          ;8B9CF8;
    STZ.W $1991                                                          ;8B9CFB;
    LDA.W #$00E1                                                         ;8B9CFE;
    STA.W $1997                                                          ;8B9D01;
    STZ.W $1995                                                          ;8B9D04;
    LDA.W #$FFFE                                                         ;8B9D07;
    STA.W $199B                                                          ;8B9D0A;
    LDA.W #$4000                                                         ;8B9D0D;
    STA.W $1999                                                          ;8B9D10;
    JSR.W Activate_TileSequence_BlueLight                                ;8B9D13;
    RTS                                                                  ;8B9D16;


CinematicFunction_TitleSequenceScene0_PanningLeft_Lower:
    LDA.W $1991                                                          ;8B9D17;
    CLC                                                                  ;8B9D1A;
    ADC.W $1999                                                          ;8B9D1B;
    STA.W $1991                                                          ;8B9D1E;
    LDA.W $1993                                                          ;8B9D21;
    ADC.W $199B                                                          ;8B9D24;
    STA.W $1993                                                          ;8B9D27;
    CMP.W #$FFF9                                                         ;8B9D2A;
    BPL .titleScreenCheck                                                ;8B9D2D;
    SEP #$20                                                             ;8B9D2F;
    LDA.B #$10                                                           ;8B9D31;
    STA.B $69                                                            ;8B9D33;
    REP #$20                                                             ;8B9D35;
    LDA.W #RTS_8B9A47                                                    ;8B9D37;
    STA.W $1F51                                                          ;8B9D3A;
    LDY.W #CinematicSpriteObjectDefinitions_TitleSequence_NintendoScrollingText ;8B9D3D;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8B9D40;
    JSR.W Deactivate_TileSequence_BlueLight                              ;8B9D43;

.titleScreenCheck:
    JSR.W SkipToTitleScreenCheck                                         ;8B9D46;
    RTS                                                                  ;8B9D49;


InitFunc_CinematicSpriteObject_NintendoScrollingText:
    LDA.W #$0081                                                         ;8B9D4A;
    STA.W $1A7D,Y                                                        ;8B9D4D;
    LDA.W #$0070                                                         ;8B9D50;
    STA.W $1A9D,Y                                                        ;8B9D53;
    LDA.W #$0200                                                         ;8B9D56;
    STA.W $1ABD,Y                                                        ;8B9D59;
    RTS                                                                  ;8B9D5C;


Instruction_TriggerTitleSequenceScene1:
    SEP #$20                                                             ;8B9D5D;
    LDA.B #$11                                                           ;8B9D5F;
    STA.B $69                                                            ;8B9D61;
    REP #$20                                                             ;8B9D63;
    LDA.W #CinematicFunction_TitleSequenceScene1_PanningLeft_Upper       ;8B9D65;
    STA.W $1F51                                                          ;8B9D68;
    LDA.W #$0060                                                         ;8B9D6B;
    STA.W $198F                                                          ;8B9D6E;
    LDA.W #$002C                                                         ;8B9D71;
    STA.W $1993                                                          ;8B9D74;
    STZ.W $1991                                                          ;8B9D77;
    LDA.W #$FF65                                                         ;8B9D7A;
    STA.W $1997                                                          ;8B9D7D;
    STZ.W $1995                                                          ;8B9D80;
    LDA.W #$FFFE                                                         ;8B9D83;
    STA.W $199B                                                          ;8B9D86;
    LDA.W #$4000                                                         ;8B9D89;
    STA.W $1999                                                          ;8B9D8C;
    RTS                                                                  ;8B9D8F;


CinematicFunction_TitleSequenceScene1_PanningLeft_Upper:
    LDA.W $1991                                                          ;8B9D90;
    CLC                                                                  ;8B9D93;
    ADC.W $1999                                                          ;8B9D94;
    STA.W $1991                                                          ;8B9D97;
    LDA.W $1993                                                          ;8B9D9A;
    ADC.W $199B                                                          ;8B9D9D;
    STA.W $1993                                                          ;8B9DA0;
    CMP.W #$FF50                                                         ;8B9DA3;
    BPL .titleScreenCheck                                                ;8B9DA6;
    SEP #$20                                                             ;8B9DA8;
    LDA.B #$10                                                           ;8B9DAA;
    STA.B $69                                                            ;8B9DAC;
    REP #$20                                                             ;8B9DAE;
    LDA.W #RTS_8B9A47                                                    ;8B9DB0;
    STA.W $1F51                                                          ;8B9DB3;
    LDY.W #CinematicSpriteObjectDefinitions_TitleSequence_PresentsScrollingText ;8B9DB6;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8B9DB9;
    JSR.W Deactivate_TileSequence_BlueLight                              ;8B9DBC;

.titleScreenCheck:
    JSR.W SkipToTitleScreenCheck                                         ;8B9DBF;
    RTS                                                                  ;8B9DC2;


InitFunc_CinematicSpriteObject_PresentsScrollingText:
    LDA.W #$0081                                                         ;8B9DC3;
    STA.W $1A7D,Y                                                        ;8B9DC6;
    LDA.W #$0070                                                         ;8B9DC9;
    STA.W $1A9D,Y                                                        ;8B9DCC;
    LDA.W #$0200                                                         ;8B9DCF;
    STA.W $1ABD,Y                                                        ;8B9DD2;
    RTS                                                                  ;8B9DD5;


Instruction_TriggerTitleSequenceScene2:
    SEP #$20                                                             ;8B9DD6;
    LDA.B #$11                                                           ;8B9DD8;
    STA.B $69                                                            ;8B9DDA;
    REP #$20                                                             ;8B9DDC;
    LDA.W #CinematicFunction_TitleSequenceScene2_PanningDown             ;8B9DDE;
    STA.W $1F51                                                          ;8B9DE1;
    LDA.W #$0060                                                         ;8B9DE4;
    STA.W $198F                                                          ;8B9DE7;
    LDA.W #$FF4F                                                         ;8B9DEA;
    STA.W $1993                                                          ;8B9DED;
    STZ.W $1991                                                          ;8B9DF0;
    LDA.W #$FF60                                                         ;8B9DF3;
    STA.W $1997                                                          ;8B9DF6;
    STZ.W $1995                                                          ;8B9DF9;
    STZ.W $199B                                                          ;8B9DFC;
    STZ.W $1999                                                          ;8B9DFF;
    LDA.W #$0001                                                         ;8B9E02;
    STA.W $199F                                                          ;8B9E05;
    LDA.W #$C000                                                         ;8B9E08;
    STA.W $199D                                                          ;8B9E0B;
    JSR.W Activate_TileSequence_BlueLight                                ;8B9E0E;
    RTS                                                                  ;8B9E11;


CinematicFunction_TitleSequenceScene2_PanningDown:
    LDA.W $1995                                                          ;8B9E12;
    CLC                                                                  ;8B9E15;
    ADC.W $199D                                                          ;8B9E16;
    STA.W $1995                                                          ;8B9E19;
    LDA.W $1997                                                          ;8B9E1C;
    ADC.W $199F                                                          ;8B9E1F;
    STA.W $1997                                                          ;8B9E22;
    CMP.W #$00A3                                                         ;8B9E25;
    BMI .titleScreenCheck                                                ;8B9E28;
    SEP #$20                                                             ;8B9E2A;
    LDA.B #$10                                                           ;8B9E2C;
    STA.B $69                                                            ;8B9E2E;
    REP #$20                                                             ;8B9E30;
    LDA.W #RTS_8B9A47                                                    ;8B9E32;
    STA.W $1F51                                                          ;8B9E35;
    LDY.W #CinematicSpriteObjectDefinitions_TitleSequence_Metroid3ScrollingText ;8B9E38;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8B9E3B;
    JSR.W Deactivate_TileSequence_BlueLight                              ;8B9E3E;

.titleScreenCheck:
    JSR.W SkipToTitleScreenCheck                                         ;8B9E41;
    RTS                                                                  ;8B9E44;


InitFunc_CinematicSpriteObject_Metroid3ScrollingText:
    LDA.W #$0081                                                         ;8B9E45;
    STA.W $1A7D,Y                                                        ;8B9E48;
    LDA.W #$0070                                                         ;8B9E4B;
    STA.W $1A9D,Y                                                        ;8B9E4E;
    LDA.W #$0200                                                         ;8B9E51;
    STA.W $1ABD,Y                                                        ;8B9E54;
    RTS                                                                  ;8B9E57;


Instruction_TriggerTitleSequenceScene3:
    SEP #$20                                                             ;8B9E58;
    LDA.B #$11                                                           ;8B9E5A;
    STA.B $69                                                            ;8B9E5C;
    REP #$20                                                             ;8B9E5E;
    LDA.W #CinematicFunction_TitleSequenceScene3_ZoomingOut              ;8B9E60;
    STA.W $1F51                                                          ;8B9E63;
    LDA.W #$0043                                                         ;8B9E66;
    STA.W $198F                                                          ;8B9E69;
    STZ.W $1993                                                          ;8B9E6C;
    STZ.W $1991                                                          ;8B9E6F;
    STZ.W $1997                                                          ;8B9E72;
    STZ.W $1995                                                          ;8B9E75;
    STZ.W $199B                                                          ;8B9E78;
    STZ.W $1999                                                          ;8B9E7B;
    STZ.W $199F                                                          ;8B9E7E;
    STZ.W $199D                                                          ;8B9E81;
    PHY                                                                  ;8B9E84;
    JSL.L Spawn_TitleSequenceGradient_HDMAObjects                        ;8B9E85;
    PLY                                                                  ;8B9E89;
    RTS                                                                  ;8B9E8A;


CinematicFunction_TitleSequenceScene3_ZoomingOut:
    LDA.W $05B6                                                          ;8B9E8B;
    BIT.W #$0001                                                         ;8B9E8E;
    BNE .return                                                          ;8B9E91;
    LDA.W $198F                                                          ;8B9E93;
    CMP.W #$0100                                                         ;8B9E96;
    BPL .finish                                                          ;8B9E99;
    INC A                                                                ;8B9E9B;
    STA.W $198F                                                          ;8B9E9C;

.return:
    RTS                                                                  ;8B9E9F;


.finish:
    LDA.W #$0100                                                         ;8B9EA0;
    STA.W $198F                                                          ;8B9EA3;
    LDA.W #RTS_8B9F28                                                    ;8B9EA6;
    STA.W $1F51                                                          ;8B9EA9;
    LDY.W #CinematicSpriteObjectDefinitions_TitleSequence_SuperMetroidTitleLogo_FadeIn ;8B9EAC;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8B9EAF;
    RTS                                                                  ;8B9EB2;


InitFunc_CinematicSpriteObject_SuperMetroidTitleLogo_FadeIn:
    LDA.W #$0080                                                         ;8B9EB3;
    STA.W $1A7D,Y                                                        ;8B9EB6;
    LDA.W #$0030                                                         ;8B9EB9;
    STA.W $1A9D,Y                                                        ;8B9EBC;
    LDA.W #$0400                                                         ;8B9EBF;
    STA.W $1ABD,Y                                                        ;8B9EC2;
    LDY.W #PaletteFXObjects_FadeInSuperMetroidTitleLogo                  ;8B9EC5;
    JSL.L Spawn_PaletteFXObject                                          ;8B9EC8;
    RTS                                                                  ;8B9ECC;


Instruction_FadeInNintendoCopyright:
    PHY                                                                  ;8B9ECD;
    LDY.W #CinematicSpriteObjectDefinitions_TitleSequence_NintendoCopyright_FadeIn ;8B9ECE;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8B9ED1;
    PLY                                                                  ;8B9ED4;
    RTS                                                                  ;8B9ED5;


if !FEATURE_KEEP_UNREFERENCED
InitFunc_CinematicSpriteObject_UnusedNintendoBootLogo_FadeIn:
    LDA.W #$0080                                                         ;8B9ED6;
    STA.W $1A7D,Y                                                        ;8B9ED9;
    LDA.W #$0051                                                         ;8B9EDC;
    STA.W $1A9D,Y                                                        ;8B9EDF;
    LDA.W #$0200                                                         ;8B9EE2;
    STA.W $1ABD,Y                                                        ;8B9EE5;
    LDY.W #PaletteFXObjects_FadeInNintendoBootLogoForUnusedCode          ;8B9EE8;
    JSL.L Spawn_PaletteFXObject                                          ;8B9EEB;
    RTS                                                                  ;8B9EEF;
endif ; !FEATURE_KEEP_UNREFERENCED


Instruction_UsePalette0_FadeInNintendoCopyright:
    LDA.W #$0000                                                         ;8B9EF0;
    STA.W $1ABD,X                                                        ;8B9EF3;
    PHY                                                                  ;8B9EF6;
    LDY.W #CinematicSpriteObjectDefinitions_TitleSequence_NintendoCopyright_FadeIn ;8B9EF7;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8B9EFA;
    PLY                                                                  ;8B9EFD;
    RTS                                                                  ;8B9EFE;


InitFunc_CinematicSpriteObject_NintendoCopyright_FadeIn:
    LDA.W #$0080                                                         ;8B9EFF;
    STA.W $1A7D,Y                                                        ;8B9F02;
    LDA.W #$00C4                                                         ;8B9F05;
    STA.W $1A9D,Y                                                        ;8B9F08;
    LDA.W #$0800                                                         ;8B9F0B;
    STA.W $1ABD,Y                                                        ;8B9F0E;
    LDY.W #PaletteFXObjects_FadeInNintendoCopyright                      ;8B9F11;
    JSL.L Spawn_PaletteFXObject                                          ;8B9F14;
    RTS                                                                  ;8B9F18;


Instruction_StartDemoCountdown:
    PHY                                                                  ;8B9F19;
    LDA.W #$02D0                                                         ;8B9F1A;
    STA.W $1F53                                                          ;8B9F1D;
    LDA.W #CinematicFunction_TitleScreen                                 ;8B9F20;
    STA.W $1F51                                                          ;8B9F23;
    PLY                                                                  ;8B9F26;
    RTS                                                                  ;8B9F27;


RTS_8B9F28:
    RTS                                                                  ;8B9F28;


CinematicFunction_TitleScreen:
    DEC.W $1F53                                                          ;8B9F29;
    BEQ .demo                                                            ;8B9F2C;
    BPL .notDemo                                                         ;8B9F2E;

.demo:
    LDA.W #CinematicFunction_TransitionToDemos                           ;8B9F30;
    STA.W $1F51                                                          ;8B9F33;
    BRA .transition                                                      ;8B9F36;


.notDemo:
    LDA.B $8F                                                            ;8B9F38;
    BIT.W #$9080                                                         ;8B9F3A;
    BEQ .merge                                                           ;8B9F3D;
    LDA.W #CinematicFunction_TransitionToFileSelectMenu                  ;8B9F3F;
    STA.W $1F51                                                          ;8B9F42;

.transition:
    LDA.W #$0002                                                         ;8B9F45;
    STA.W $0723                                                          ;8B9F48;
    STA.W $0725                                                          ;8B9F4B;

.merge:
    JSR.W Debug_DisplayVersionInfo                                       ;8B9F4E;
    RTS                                                                  ;8B9F51;


CinematicFunction_TransitionToFileSelectMenu:
    JSR.W Debug_DisplayVersionInfo                                       ;8B9F52;
    JSR.W AdvanceSlowScreenFadeOut                                       ;8B9F55;
    BCC .return                                                          ;8B9F58;
    JSL.L EnableNMI                                                      ;8B9F5A;
    SEP #$20                                                             ;8B9F5E;
    LDA.B #$01                                                           ;8B9F60;
    STA.B $55                                                            ;8B9F62;
    REP #$20                                                             ;8B9F64;
    STZ.W $0723                                                          ;8B9F66;
    STZ.W $0725                                                          ;8B9F69;
    STZ.B $B5                                                            ;8B9F6C;
    STZ.B $B9                                                            ;8B9F6E;
    STZ.B $B7                                                            ;8B9F70;
    STZ.B $BB                                                            ;8B9F72;
    STZ.W $198D                                                          ;8B9F74;
    LDA.W #CinematicFunction_LoadTitleSequence                           ;8B9F77;
    STA.W $1F51                                                          ;8B9F7A;
    JSL.L Disable_PaletteFXObjects                                       ;8B9F7D;
    JSL.L Clear_PaletteFXObjects                                         ;8B9F81;
    LDA.W #$1C1F                                                         ;8B9F85;
    DEC A                                                                ;8B9F88;
    DEC A                                                                ;8B9F89;
    SEC                                                                  ;8B9F8A;
    SBC.W #$198D                                                         ;8B9F8B;
    TAX                                                                  ;8B9F8E;

.loopClearNonGameplayRAM:
    STZ.W $198D,X                                                        ;8B9F8F;
    DEX                                                                  ;8B9F92;
    DEX                                                                  ;8B9F93;
    BPL .loopClearNonGameplayRAM                                         ;8B9F94;
    LDX.W #$01FE                                                         ;8B9F96;
    LDA.W #$0000                                                         ;8B9F99;

.loopClearGradient:
    STA.L $7E9800,X                                                      ;8B9F9C;
    DEX                                                                  ;8B9FA0;
    DEX                                                                  ;8B9FA1;
    BPL .loopClearGradient                                               ;8B9FA2;
    LDA.W #$0004                                                         ;8B9FA4;
    STA.W $0998                                                          ;8B9FA7;
    STZ.W $0DE2                                                          ;8B9FAA;

.return:
    RTS                                                                  ;8B9FAD;


CinematicFunction_TransitionToDemos:
    JSR.W Debug_DisplayVersionInfo                                       ;8B9FAE;
    JSR.W AdvanceSlowScreenFadeOut                                       ;8B9FB1;
    BCC .return                                                          ;8B9FB4;
    JSL.L EnableNMI                                                      ;8B9FB6;
    SEP #$20                                                             ;8B9FBA;
    LDA.B #$01                                                           ;8B9FBC;
    STA.B $55                                                            ;8B9FBE;
    REP #$20                                                             ;8B9FC0;
    STZ.W $0723                                                          ;8B9FC2;
    STZ.W $0725                                                          ;8B9FC5;
    STZ.B $B5                                                            ;8B9FC8;
    STZ.B $B9                                                            ;8B9FCA;
    STZ.B $B7                                                            ;8B9FCC;
    STZ.B $BB                                                            ;8B9FCE;
    STZ.W $198D                                                          ;8B9FD0;
    LDA.W #CinematicFunction_LoadTitleSequence                           ;8B9FD3;
    STA.W $1F51                                                          ;8B9FD6;
    JSL.L Disable_PaletteFXObjects                                       ;8B9FD9;
    JSL.L Clear_PaletteFXObjects                                         ;8B9FDD;
    LDA.W #$1C1F                                                         ;8B9FE1;
    DEC A                                                                ;8B9FE4;
    DEC A                                                                ;8B9FE5;
    SEC                                                                  ;8B9FE6;
    SBC.W #$198D                                                         ;8B9FE7;
    TAX                                                                  ;8B9FEA;

.loopClearNonGameplayRAM:
    STZ.W $198D,X                                                        ;8B9FEB;
    DEX                                                                  ;8B9FEE;
    DEX                                                                  ;8B9FEF;
    BPL .loopClearNonGameplayRAM                                         ;8B9FF0;
    LDX.W #$01FE                                                         ;8B9FF2;
    LDA.W #$0000                                                         ;8B9FF5;

.loopClearGradient:
    STA.L $7E9800,X                                                      ;8B9FF8;
    DEX                                                                  ;8B9FFC;
    DEX                                                                  ;8B9FFD;
    BPL .loopClearGradient                                               ;8B9FFE;
    LDA.W #$0028                                                         ;8BA000;
    STA.W $0998                                                          ;8BA003;
    STZ.W $1F57                                                          ;8BA006;

.return:
    RTS                                                                  ;8BA009;


Configure_TitleScreen_GradientHDMATable:
    PHP                                                                  ;8BA00A;
    PHB                                                                  ;8BA00B;
    PHK                                                                  ;8BA00C;
    PLB                                                                  ;8BA00D;
    REP #$30                                                             ;8BA00E;
    LDA.W $198F                                                          ;8BA010;
    AND.W #$00F0                                                         ;8BA013;
    LSR A                                                                ;8BA016;
    LSR A                                                                ;8BA017;
    LSR A                                                                ;8BA018;
    TAX                                                                  ;8BA019;
    LDA.L TitleSequenceHDMATables,X                                      ;8BA01A;
    TAY                                                                  ;8BA01E;
    PHB                                                                  ;8BA01F;
    PEA.W $8C00                                                          ;8BA020;
    PLB                                                                  ;8BA023;
    PLB                                                                  ;8BA024;
    LDX.W #$0000                                                         ;8BA025;

.loop:
    LDA.W $0000,Y                                                        ;8BA028;
    STA.L $7E9800,X                                                      ;8BA02B;
    BEQ .return                                                          ;8BA02F;
    INY                                                                  ;8BA031;
    INY                                                                  ;8BA032;
    INX                                                                  ;8BA033;
    INX                                                                  ;8BA034;
    BRA .loop                                                            ;8BA035;


.return:
    PLB                                                                  ;8BA037;
    PLB                                                                  ;8BA038;
    PLP                                                                  ;8BA039;
    RTL                                                                  ;8BA03A;


RTL_8BA03B:
    RTL                                                                  ;8BA03B;


RTL_8BA03C:
    RTL                                                                  ;8BA03C;


InstList_CinematicSpriteObject_1994ScrollingText:
    dw $0018,$0000                                                       ;8BA03D;
    dw $0006,TitleSequenceSpritemaps_1                                   ;8BA041;
    dw $0006,TitleSequenceSpritemaps_19                                  ;8BA045;
    dw $0006,TitleSequenceSpritemaps_199                                 ;8BA049;
    dw $0024,TitleSequenceSpritemaps_1994                                ;8BA04D;
    dw Instruction_TriggerTitleSequenceScene0                            ;8BA051;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BA053;

InstList_CinematicSpriteObject_NintendoScrollingText:
    dw $0006,TitleSequenceSpritemaps_N                                   ;8BA055;
    dw $0006,TitleSequenceSpritemaps_NI                                  ;8BA059;
    dw $0006,TitleSequenceSpritemaps_NIN                                 ;8BA05D;
    dw $0006,TitleSequenceSpritemaps_NINT                                ;8BA061;
    dw $0006,TitleSequenceSpritemaps_NINTE                               ;8BA065;
    dw $0006,TitleSequenceSpritemaps_NINTEN                              ;8BA069;
    dw $0006,TitleSequenceSpritemaps_NINTEND                             ;8BA06D;
    dw $0024,TitleSequenceSpritemaps_NINTENDO                            ;8BA071;
    dw Instruction_TriggerTitleSequenceScene1                            ;8BA075;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BA077;

InstList_CinematicSpriteObject_PresentsScrollingText:
    dw $0006,TitleSequenceSpritemaps_P                                   ;8BA079;
    dw $0006,TitleSequenceSpritemaps_PR                                  ;8BA07D;
    dw $0006,TitleSequenceSpritemaps_PRE                                 ;8BA081;
    dw $0006,TitleSequenceSpritemaps_PRES                                ;8BA085;
    dw $0006,TitleSequenceSpritemaps_PRESE                               ;8BA089;
    dw $0006,TitleSequenceSpritemaps_PRESEN                              ;8BA08D;
    dw $0006,TitleSequenceSpritemaps_PRESENT                             ;8BA091;
    dw $0024,TitleSequenceSpritemaps_PRESENTS                            ;8BA095;
    dw Instruction_TriggerTitleSequenceScene2                            ;8BA099;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BA09B;

InstList_CinematicSpriteObject_Metroid3ScrollingText:
    dw $0006,TitleSequenceSpritemaps_M                                   ;8BA09D;
    dw $0006,TitleSequenceSpritemaps_ME                                  ;8BA0A1;
    dw $0006,TitleSequenceSpritemaps_MET                                 ;8BA0A5;
    dw $0006,TitleSequenceSpritemaps_METR                                ;8BA0A9;
    dw $0006,TitleSequenceSpritemaps_METRO                               ;8BA0AD;
    dw $0006,TitleSequenceSpritemaps_METROI                              ;8BA0B1;
    dw $0006,TitleSequenceSpritemaps_METROID                             ;8BA0B5;
    dw $0006,TitleSequenceSpritemaps_METROID_                            ;8BA0B9;
    dw $0060,TitleSequenceSpritemaps_METROID3                            ;8BA0BD;
    dw Instruction_TriggerTitleSequenceScene3                            ;8BA0C1;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BA0C3;

InstList_CinematicSpriteObject_SuperMetroidTitleLogo_FadeIn:
    dw $0020,TitleSequenceSpritemaps_SuperMetroidTitleLogo               ;8BA0C5;
    dw Instruction_FadeInNintendoCopyright                               ;8BA0C9;

InstList_CinematicSpriteObject_SuperMetroidTitleLogo_Immediate:
    dw $0001,TitleSequenceSpritemaps_SuperMetroidTitleLogo               ;8BA0CB;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BA0CF;
    dw InstList_CinematicSpriteObject_SuperMetroidTitleLogo_Immediate    ;8BA0D1;

if !FEATURE_KEEP_UNREFERENCED
InstList_CinematicSpriteObject_UnusedNintendoBootLogo_FadeIn:
    dw $0020,TitleSequenceSpritemaps_NintendoBootLogo                    ;8BA0D3;
    dw Instruction_UsePalette0_FadeInNintendoCopyright                   ;8BA0D7;

InstList_CinematicSpriteObject_UnusedNintendoBootLogo_Immediate:
    dw $0001,TitleSequenceSpritemaps_NintendoBootLogo                    ;8BA0D9;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BA0DD;
    dw InstList_CinematicSpriteObject_UnusedNintendoBootLogo_Immediate   ;8BA0DF;
endif ; !FEATURE_KEEP_UNREFERENCED

InstList_CinematicSpriteObject_NintendoCopyright_FadeIn:
    dw $0020,TitleSequenceSpritemaps_NintendoCopyright                   ;8BA0E1;
    dw Instruction_StartDemoCountdown                                    ;8BA0E5;

InstList_CinematicSpriteObject_NintendoCopyright_Immediate:
    dw $0001,TitleSequenceSpritemaps_NintendoCopyright                   ;8BA0E7;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BA0EB;
    dw InstList_CinematicSpriteObject_NintendoCopyright_Immediate        ;8BA0ED;

CinematicSpriteObjectDefinitions_TitleSequence:
  .1994ScrollingText:
    dw InitFunc_CinematicSpriteObject_1994ScrollingText                  ;8BA0EF;
    dw PreInstruction_CinematicSpriteObject_1994ScrollingText            ;8BA0F1;
    dw InstList_CinematicSpriteObject_1994ScrollingText                  ;8BA0F3;
  .NintendoScrollingText:
    dw InitFunc_CinematicSpriteObject_NintendoScrollingText              ;8BA0F5;
    dw RTS_8B93D9                                                        ;8BA0F7;
    dw InstList_CinematicSpriteObject_NintendoScrollingText              ;8BA0F9;
  .PresentsScrollingText:
    dw InitFunc_CinematicSpriteObject_PresentsScrollingText              ;8BA0FB;
    dw RTS_8B93D9                                                        ;8BA0FD;
    dw InstList_CinematicSpriteObject_PresentsScrollingText              ;8BA0FF;
  .Metroid3ScrollingText:
    dw InitFunc_CinematicSpriteObject_Metroid3ScrollingText              ;8BA101;
    dw RTS_8B93D9                                                        ;8BA103;
    dw InstList_CinematicSpriteObject_Metroid3ScrollingText              ;8BA105;
  .SuperMetroidTitleLogo_FadeIn:
    dw InitFunc_CinematicSpriteObject_SuperMetroidTitleLogo_FadeIn       ;8BA107;
    dw RTS_8B93D9                                                        ;8BA109;
    dw InstList_CinematicSpriteObject_SuperMetroidTitleLogo_FadeIn       ;8BA10B;
if !FEATURE_KEEP_UNREFERENCED
  .UnusedNintendoBootLogo_FadeIn:
    dw InitFunc_CinematicSpriteObject_UnusedNintendoBootLogo_FadeIn      ;8BA10D;
    dw RTS_8B93D9                                                        ;8BA10F;
    dw InstList_CinematicSpriteObject_UnusedNintendoBootLogo_FadeIn      ;8BA111;
endif ; !FEATURE_KEEP_UNREFERENCED
  .NintendoCopyright_FadeIn:
    dw InitFunc_CinematicSpriteObject_NintendoCopyright_FadeIn           ;8BA113;
    dw RTS_8B93D9                                                        ;8BA115;
    dw InstList_CinematicSpriteObject_NintendoCopyright_FadeIn           ;8BA117;
  .SuperMetroidLogoImmediate:
    dw InitFunction_CinematicSpriteObject_SuperMetroidLogoImmediate      ;8BA119;
    dw RTS_8B93D9                                                        ;8BA11B;
    dw InstList_CinematicSpriteObject_SuperMetroidTitleLogo_Immediate    ;8BA11D;
if !FEATURE_KEEP_UNREFERENCED
  .UnusedNintendoBootLogoImm:
    dw InitFunction_CinematicSpriteObject_UnusedNintendoBootLogoImm      ;8BA11F;
    dw RTS_8B93D9                                                        ;8BA121;
    dw InstList_CinematicSpriteObject_UnusedNintendoBootLogo_Immediate   ;8BA123;
endif ; !FEATURE_KEEP_UNREFERENCED
  .NintendoCopyrightImmediate:
    dw InitFunc_CinematicSpriteObject_NintendoCopyrightImmediate         ;8BA125;
    dw RTS_8B93D9                                                        ;8BA127;
    dw InstList_CinematicSpriteObject_NintendoCopyright_Immediate        ;8BA129;

Mode7Object_InstList_TitleSequenceBabyMetroid_0:
    dw Instruction_LoadBabyMetroid_Colors0                               ;8BA12B;
    dw Mode7Objects_Instruction_TimerInY,$0002                           ;8BA12D;

Mode7Object_InstList_TitleSequenceBabyMetroid_1:
    dw $000A,Mode7TransferData_TitleSequenceBabyMetroid_0                ;8BA131;
    dw $000A,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA135;
    dw $000A,Mode7TransferData_TitleSequenceBabyMetroid_2                ;8BA139;
    dw $000A,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA13D;
    dw Mode7Objects_Instruction_DecrementTimer_GotoYIfNonZero            ;8BA141;
    dw Mode7Object_InstList_TitleSequenceBabyMetroid_1                   ;8BA143;
    dw Instruction_PlayBabyMetroid_Cry1                                  ;8BA145;
    dw Instruction_LoadBabyMetroid_Colors1                               ;8BA147;
    dw $0006,Mode7TransferData_TitleSequenceBabyMetroid_0                ;8BA149;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA14D;
    dw $0005,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA14F;
    dw Instruction_LoadBabyMetroid_Colors3                               ;8BA153;
    dw $0004,Mode7TransferData_TitleSequenceBabyMetroid_2                ;8BA155;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA159;
    dw $0003,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA15B;
    dw Instruction_LoadBabyMetroid_Colors1                               ;8BA15F;
    dw $0002,Mode7TransferData_TitleSequenceBabyMetroid_0                ;8BA161;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA165;
    dw $0003,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA167;
    dw Instruction_LoadBabyMetroid_Colors3                               ;8BA16B;
    dw $0004,Mode7TransferData_TitleSequenceBabyMetroid_2                ;8BA16D;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA171;
    dw $0005,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA173;
    dw Instruction_LoadBabyMetroid_Colors1                               ;8BA177;
    dw $0006,Mode7TransferData_TitleSequenceBabyMetroid_0                ;8BA179;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA17D;
    dw $0007,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA17F;
    dw Instruction_LoadBabyMetroid_Colors3                               ;8BA183;
    dw $0008,Mode7TransferData_TitleSequenceBabyMetroid_2                ;8BA185;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA189;
    dw $0009,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA18B;
    dw Instruction_LoadBabyMetroid_Colors0                               ;8BA18F;
    dw Mode7Objects_Instruction_TimerInY,$0004                           ;8BA191;

Mode7Object_InstList_TitleSequenceBabyMetroid_2:
    dw $000A,Mode7TransferData_TitleSequenceBabyMetroid_0                ;8BA195;
    dw $000A,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA199;
    dw $000A,Mode7TransferData_TitleSequenceBabyMetroid_2                ;8BA19D;
    dw $000A,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA1A1;
    dw Mode7Objects_Instruction_DecrementTimer_GotoYIfNonZero            ;8BA1A5;
    dw Mode7Object_InstList_TitleSequenceBabyMetroid_2                   ;8BA1A7;
    dw Instruction_PlayBabyMetroid_Cry2                                  ;8BA1A9;
    dw Instruction_LoadBabyMetroid_Colors1                               ;8BA1AB;
    dw $0006,Mode7TransferData_TitleSequenceBabyMetroid_0                ;8BA1AD;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA1B1;
    dw $0005,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA1B3;
    dw Instruction_LoadBabyMetroid_Colors3                               ;8BA1B7;
    dw $0004,Mode7TransferData_TitleSequenceBabyMetroid_2                ;8BA1B9;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA1BD;
    dw $0003,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA1BF;
    dw Instruction_LoadBabyMetroid_Colors1                               ;8BA1C3;
    dw $0002,Mode7TransferData_TitleSequenceBabyMetroid_0                ;8BA1C5;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA1C9;
    dw $0003,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA1CB;
    dw Instruction_LoadBabyMetroid_Colors3                               ;8BA1CF;
    dw $0004,Mode7TransferData_TitleSequenceBabyMetroid_2                ;8BA1D1;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA1D5;
    dw $0005,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA1D7;
    dw Instruction_LoadBabyMetroid_Colors1                               ;8BA1DB;
    dw $0006,Mode7TransferData_TitleSequenceBabyMetroid_0                ;8BA1DD;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA1E1;
    dw $0007,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA1E3;
    dw Instruction_LoadBabyMetroid_Colors3                               ;8BA1E7;
    dw $0008,Mode7TransferData_TitleSequenceBabyMetroid_2                ;8BA1E9;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA1ED;
    dw $0009,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA1EF;
    dw Instruction_LoadBabyMetroid_Colors0                               ;8BA1F3;
    dw Mode7Objects_Instruction_TimerInY                                 ;8BA1F5;
    dw $0003                                                             ;8BA1F7;

Mode7Object_InstList_TitleSequenceBabyMetroid_3:
    dw $000A,Mode7TransferData_TitleSequenceBabyMetroid_0                ;8BA1F9;
    dw $000A,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA1FD;
    dw $000A,Mode7TransferData_TitleSequenceBabyMetroid_2                ;8BA201;
    dw $000A,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA205;
    dw Mode7Objects_Instruction_DecrementTimer_GotoYIfNonZero            ;8BA209;
    dw Mode7Object_InstList_TitleSequenceBabyMetroid_3                   ;8BA20B;
    dw Instruction_PlayBabyMetroid_Cry3                                  ;8BA20D;
    dw Instruction_LoadBabyMetroid_Colors1                               ;8BA20F;
    dw $0006,Mode7TransferData_TitleSequenceBabyMetroid_0                ;8BA211;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA215;
    dw $0005,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA217;
    dw Instruction_LoadBabyMetroid_Colors3                               ;8BA21B;
    dw $0004,Mode7TransferData_TitleSequenceBabyMetroid_2                ;8BA21D;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA221;
    dw $0003,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA223;
    dw Instruction_LoadBabyMetroid_Colors1                               ;8BA227;
    dw $0002,Mode7TransferData_TitleSequenceBabyMetroid_0                ;8BA229;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA22D;
    dw $0003,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA22F;
    dw Instruction_LoadBabyMetroid_Colors3                               ;8BA233;
    dw $0004,Mode7TransferData_TitleSequenceBabyMetroid_2                ;8BA235;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA239;
    dw $0005,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA23B;
    dw Instruction_LoadBabyMetroid_Colors1                               ;8BA23F;
    dw $0006,Mode7TransferData_TitleSequenceBabyMetroid_0                ;8BA241;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA245;
    dw $0007,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA247;
    dw Instruction_LoadBabyMetroid_Colors3                               ;8BA24B;
    dw $0008,Mode7TransferData_TitleSequenceBabyMetroid_2                ;8BA24D;
    dw Instruction_LoadBabyMetroid_Colors2                               ;8BA251;
    dw $0009,Mode7TransferData_TitleSequenceBabyMetroid_1                ;8BA253;
    dw Mode7Objects_Instruction_GotoY                                    ;8BA257;
    dw Mode7Object_InstList_TitleSequenceBabyMetroid_0                   ;8BA259;

Instruction_PlayBabyMetroid_Cry1:
    LDA.W #$0023                                                         ;8BA25B;
    JSL.L QueueSound_Lib3_Max6                                           ;8BA25E;
    RTS                                                                  ;8BA262;


Instruction_PlayBabyMetroid_Cry2:
    LDA.W #$0026                                                         ;8BA263;
    JSL.L QueueSound_Lib3_Max6                                           ;8BA266;
    RTS                                                                  ;8BA26A;


Instruction_PlayBabyMetroid_Cry3:
    LDA.W #$0027                                                         ;8BA26B;
    JSL.L QueueSound_Lib3_Max6                                           ;8BA26E;
    RTS                                                                  ;8BA272;


Instruction_LoadBabyMetroid_Colors0:
    PHX                                                                  ;8BA273;
    LDX.W #$001E                                                         ;8BA274;

.loop:
    LDA.W TitleSequenceBabyMetroid_Colors_0,X                            ;8BA277;
    STA.L $7EC060,X                                                      ;8BA27A;
    DEX                                                                  ;8BA27E;
    DEX                                                                  ;8BA27F;
    BPL .loop                                                            ;8BA280;
    PLX                                                                  ;8BA282;
    RTS                                                                  ;8BA283;


Instruction_LoadBabyMetroid_Colors1:
    PHX                                                                  ;8BA284;
    LDX.W #$001E                                                         ;8BA285;

.loop:
    LDA.W TitleSequenceBabyMetroid_Colors_1,X                            ;8BA288;
    STA.L $7EC060,X                                                      ;8BA28B;
    DEX                                                                  ;8BA28F;
    DEX                                                                  ;8BA290;
    BPL .loop                                                            ;8BA291;
    PLX                                                                  ;8BA293;
    RTS                                                                  ;8BA294;


Instruction_LoadBabyMetroid_Colors2:
    PHX                                                                  ;8BA295;
    LDX.W #$001E                                                         ;8BA296;

.loop:
    LDA.W TitleSequenceBabyMetroid_Colors_2,X                            ;8BA299;
    STA.L $7EC060,X                                                      ;8BA29C;
    DEX                                                                  ;8BA2A0;
    DEX                                                                  ;8BA2A1;
    BPL .loop                                                            ;8BA2A2;
    PLX                                                                  ;8BA2A4;
    RTS                                                                  ;8BA2A5;


Instruction_LoadBabyMetroid_Colors3:
    PHX                                                                  ;8BA2A6;
    LDX.W #$001E                                                         ;8BA2A7;

.loop:
    LDA.W TitleSequenceBabyMetroid_Colors_3,X                            ;8BA2AA;
    STA.L $7EC060,X                                                      ;8BA2AD;
    DEX                                                                  ;8BA2B1;
    DEX                                                                  ;8BA2B2;
    BPL .loop                                                            ;8BA2B3;
    PLX                                                                  ;8BA2B5;
    RTS                                                                  ;8BA2B6;


; Game over baby metroid palettes are in bank $82
TitleSequenceBabyMetroid_Colors_0:
    db $00,$10,$F5,$6B,$41,$2E,$A1,$2D,$01,$2D,$5F,$5E,$3F,$18,$14,$10   ;8BA2B7;
    db $0A,$08,$04,$04,$9F,$4F,$D8,$3E,$12,$2E,$70,$6F,$FF,$7F,$E0,$5E   ;8BA2C7;

TitleSequenceBabyMetroid_Colors_1:
    db $00,$38,$F5,$6B,$E1,$06,$41,$06,$A1,$05,$5F,$5E,$3F,$18,$14,$10   ;8BA2D7;
    db $0A,$08,$04,$04,$9F,$4F,$D8,$3E,$12,$2E,$70,$6F,$FF,$7F,$E0,$5E   ;8BA2E7;

TitleSequenceBabyMetroid_Colors_2:
    db $00,$38,$F8,$77,$44,$13,$A4,$12,$04,$12,$BF,$6A,$9F,$24,$77,$1C   ;8BA2F7;
    db $6D,$14,$67,$10,$FF,$5B,$38,$4B,$72,$3A,$D3,$7B,$FF,$7F,$43,$6B   ;8BA307;

TitleSequenceBabyMetroid_Colors_3:
    db $00,$38,$FB,$7F,$A7,$1F,$07,$1F,$67,$1E,$1F,$77,$FF,$30,$DA,$28   ;8BA317;
    db $D0,$20,$CA,$1C,$FF,$67,$9B,$57,$D5,$46,$D6,$7B,$FF,$7F,$A6,$77   ;8BA327;

Mode7TransferData_TitleSequenceBabyMetroid_0:
    db $C0                                                               ;8BA337; Control. C0h = write to VRAM tiles
    dl $7F9000                                                           ;8BA338; Source address
    dw $0100,$3800                                                       ;8BA33B; Size, Destination address (VRAM)
    db $80,$00                                                           ;8BA33F; VRAM address increment mode

Mode7TransferData_TitleSequenceBabyMetroid_1:
    db $C0                                                               ;8BA341; Control. C0h = write to VRAM tiles
    dl $7F9100                                                           ;8BA342; Source address
    dw $0100,$3800                                                       ;8BA345; Size, Destination address (VRAM)
    db $80,$00                                                           ;8BA349; VRAM address increment mode

Mode7TransferData_TitleSequenceBabyMetroid_2:
    db $C0                                                               ;8BA34B; Control. C0h = write to VRAM tiles
    dl $7F9200                                                           ;8BA34C; Source address
    dw $0100,$3800                                                       ;8BA34F; Size, Destination address (VRAM)
    db $80,$00                                                           ;8BA353; VRAM address increment mode

Mode7Object_TitleSequenceBabyMetroid:
    dw RTS_8B93D9                                                        ;8BA355;
    dw RTS_8B93D9                                                        ;8BA357;
    dw Mode7Object_InstList_TitleSequenceBabyMetroid_0                   ;8BA359;

GameState_1E_22_25_Intro_CeresGoesBoom_SamusGoesToZebes_8B:
    PHP                                                                  ;8BA35B;
    PHB                                                                  ;8BA35C;
    PHK                                                                  ;8BA35D;
    PLB                                                                  ;8BA35E;
    REP #$30                                                             ;8BA35F;
    PEA.W .manualReturn-1                                                ;8BA361;
    JMP.W ($1F51)                                                        ;8BA364;


.manualReturn:
    LDA.W $1B9F                                                          ;8BA367;
    BMI +                                                                ;8BA36A;
    INC A                                                                ;8BA36C;
    STA.W $1B9F                                                          ;8BA36D;

  + INC.W $1A51                                                          ;8BA370;
    JSR.W HandleSamusDuringIntro                                         ;8BA373;
    JSR.W Handle_CinematicSpriteObjects                                  ;8BA376;
    JSR.W Handle_Mode7Objects                                            ;8BA379;
    JSR.W Handle_CinematicBGObjects                                      ;8BA37C;
    JSR.W Handle_TextGlowObject                                          ;8BA37F;
    JSL.L PaletteFXObject_Handler                                        ;8BA382;
    JSR.W DrawIntroSprites                                               ;8BA386;
    JSR.W HandleMode7TransformMatrixAndBG1Position                       ;8BA389;
    PLB                                                                  ;8BA38C;
    PLP                                                                  ;8BA38D;
    RTL                                                                  ;8BA38E;


RTS_8BA38F:
    RTS                                                                  ;8BA38F;


RTS_8BA390:
    RTS                                                                  ;8BA390;


CinematicFunction_Nothing:
    JSR.W RTS_BackgroundFLickeringEffect                                 ;8BA391;
    RTS                                                                  ;8BA394;


CinematicFunction_Intro_Initial:
    JSR.W Setup_PPU_Intro                                                ;8BA395;
    STZ.B $AB                                                            ;8BA398;
    STZ.B $A7                                                            ;8BA39A;
    STZ.W $079F                                                          ;8BA39C;
    LDA.W #$0010                                                         ;8BA39F;
    STA.W $07A5                                                          ;8BA3A2;
    STA.W $07A7                                                          ;8BA3A5;
    JSL.L InitializeSamus                                                ;8BA3A8;
    JSL.L Update_Beam_Tiles_and_Palette                                  ;8BA3AC;
    LDA.W #$0384                                                         ;8BA3B0;
    STA.W $09C8                                                          ;8BA3B3;
    STA.W $09C6                                                          ;8BA3B6;
    STZ.W $1A57                                                          ;8BA3B9;
    LDA.W #SamusDrawingHandler_Default                                   ;8BA3BC;
    STA.W $0A5C                                                          ;8BA3BF;
    JSR.W Reset_Button_Assignments_to_Default                            ;8BA3C2;
    STZ.W $18A8                                                          ;8BA3C5;
    STZ.W $18AA                                                          ;8BA3C8;
    LDA.W #$1C1F                                                         ;8BA3CB;
    DEC A                                                                ;8BA3CE;
    DEC A                                                                ;8BA3CF;
    SEC                                                                  ;8BA3D0;
    SBC.W #$198D                                                         ;8BA3D1;
    TAX                                                                  ;8BA3D4;

.loopClearNonGameplayRAM:
    STZ.W $198D,X                                                        ;8BA3D5;
    DEX                                                                  ;8BA3D8;
    DEX                                                                  ;8BA3D9;
    BPL .loopClearNonGameplayRAM                                         ;8BA3DA;
    LDX.W #$0000                                                         ;8BA3DC;

.loopPalettes:
    LDA.L Palettes_Intro,X                                               ;8BA3DF;
    STA.L $7EC000,X                                                      ;8BA3E3;
    INX                                                                  ;8BA3E7;
    INX                                                                  ;8BA3E8;
    CPX.W #$0200                                                         ;8BA3E9;
    BMI .loopPalettes                                                    ;8BA3EC;
    LDA.W #Tiles_Intro_BG1_BG2>>8&$FF00                                  ;8BA3EE;
    STA.B $48                                                            ;8BA3F1;
    LDA.W #Tiles_Intro_BG1_BG2                                           ;8BA3F3;
    STA.B $47                                                            ;8BA3F6;
    JSL.L Decompression_HardcodedDestination                             ;8BA3F8;
    dl $7F0000                                                           ;8BA3FC;
    LDA.W #Tiles_Font1_BG3>>8&$FF00                                      ;8BA3FF;
    STA.B $48                                                            ;8BA402;
    LDA.W #Tiles_Font1_BG3                                               ;8BA404;
    STA.B $47                                                            ;8BA407;
    JSL.L Decompression_HardcodedDestination                             ;8BA409;
    dl $7F8000                                                           ;8BA40D;
    LDA.W #Intro_BG2_SamusHead_Tilemap>>8&$FF00                          ;8BA410;
    STA.B $48                                                            ;8BA413;
    LDA.W #Intro_BG2_SamusHead_Tilemap                                   ;8BA415;
    STA.B $47                                                            ;8BA418;
    JSL.L Decompression_HardcodedDestination                             ;8BA41A;
    dl $7F9000                                                           ;8BA41E;
    LDA.W #Intro_BG1_MotherBrainsRoom_Tilemap>>8&$FF00                   ;8BA421;
    STA.B $48                                                            ;8BA424;
    LDA.W #Intro_BG1_MotherBrainsRoom_Tilemap                            ;8BA426;
    STA.B $47                                                            ;8BA429;
    JSL.L Decompression_HardcodedDestination                             ;8BA42B;
    dl $7F9800                                                           ;8BA42F;
    LDA.W #Tiles_Intro_Sprite>>8&$FF00                                   ;8BA432;
    STA.B $48                                                            ;8BA435;
    LDA.W #Tiles_Intro_Sprite                                            ;8BA437;
    STA.B $47                                                            ;8BA43A;
    JSL.L Decompression_HardcodedDestination                             ;8BA43C;
    dl $7FB800                                                           ;8BA440;
    LDA.W #Intro_BG3_TheLastMetroidIsInCaptivity_Tilemap>>8&$FF00        ;8BA443;
    STA.B $48                                                            ;8BA446;
    LDA.W #Intro_BG3_TheLastMetroidIsInCaptivity_Tilemap                 ;8BA448;
    STA.B $47                                                            ;8BA44B;
    JSL.L Decompression_HardcodedDestination                             ;8BA44D;
    dl $7FE000                                                           ;8BA451;
    SEP #$30                                                             ;8BA454;
    LDA.B #$00                                                           ;8BA456;
    STA.W $2116                                                          ;8BA458;
    LDA.B #$00                                                           ;8BA45B;
    STA.W $2117                                                          ;8BA45D;
    LDA.B #$80                                                           ;8BA460;
    STA.W $2115                                                          ;8BA462;
    JSL.L SetupHDMATransfer                                              ;8BA465;
    db $01,$01,$18                                                       ;8BA469;
    dl $7F0000                                                           ;8BA46C;
    dw $8000                                                             ;8BA46F;
    LDA.B #$02                                                           ;8BA471;
    STA.W $420B                                                          ;8BA473;
    LDA.B #$00                                                           ;8BA476;
    STA.W $2116                                                          ;8BA478;
    LDA.B #$40                                                           ;8BA47B;
    STA.W $2117                                                          ;8BA47D;
    LDA.B #$80                                                           ;8BA480;
    STA.W $2115                                                          ;8BA482;
    JSL.L SetupHDMATransfer                                              ;8BA485;
    db $01,$01,$18                                                       ;8BA489;
    dl $7F8000                                                           ;8BA48C;
    dw $0D00                                                             ;8BA48F;
    LDA.B #$02                                                           ;8BA491;
    STA.W $420B                                                          ;8BA493;
    LDA.B #$00                                                           ;8BA496;
    STA.W $2116                                                          ;8BA498;
    LDA.B #$48                                                           ;8BA49B;
    STA.W $2117                                                          ;8BA49D;
    LDA.B #$80                                                           ;8BA4A0;
    STA.W $2115                                                          ;8BA4A2;
    JSL.L SetupHDMATransfer                                              ;8BA4A5;
    db $01,$01,$18                                                       ;8BA4A9;
    dl $7F9000                                                           ;8BA4AC;
    dw $0800                                                             ;8BA4AF;
    LDA.B #$02                                                           ;8BA4B1;
    STA.W $420B                                                          ;8BA4B3;
    LDA.B #$00                                                           ;8BA4B6;
    STA.W $2116                                                          ;8BA4B8;
    LDA.B #$4C                                                           ;8BA4BB;
    STA.W $2117                                                          ;8BA4BD;
    LDA.B #$80                                                           ;8BA4C0;
    STA.W $2115                                                          ;8BA4C2;
    JSL.L SetupHDMATransfer                                              ;8BA4C5;
    db $01,$01,$18                                                       ;8BA4C9;
    dl $7FE000                                                           ;8BA4CC;
    dw $0800                                                             ;8BA4CF;
    LDA.B #$02                                                           ;8BA4D1;
    STA.W $420B                                                          ;8BA4D3;
    LDA.B #$00                                                           ;8BA4D6;
    STA.W $2116                                                          ;8BA4D8;
    LDA.B #$50                                                           ;8BA4DB;
    STA.W $2117                                                          ;8BA4DD;
    LDA.B #$80                                                           ;8BA4E0;
    STA.W $2115                                                          ;8BA4E2;
    JSL.L SetupHDMATransfer                                              ;8BA4E5;
    db $01,$01,$18                                                       ;8BA4E9;
    dl $7F9800                                                           ;8BA4EC;
    dw $2000                                                             ;8BA4EF;
    LDA.B #$02                                                           ;8BA4F1;
    STA.W $420B                                                          ;8BA4F3;
    LDA.B #$00                                                           ;8BA4F6;
    STA.W $2116                                                          ;8BA4F8;
    LDA.B #$60                                                           ;8BA4FB;
    STA.W $2117                                                          ;8BA4FD;
    LDA.B #$80                                                           ;8BA500;
    STA.W $2115                                                          ;8BA502;
    JSL.L SetupHDMATransfer                                              ;8BA505;
    db $01,$01,$18                                                       ;8BA509;
    dl Tiles_Standard_Sprite_0                                           ;8BA50C;
    dw $2000                                                             ;8BA50F;
    LDA.B #$02                                                           ;8BA511;
    STA.W $420B                                                          ;8BA513;
    LDA.B #$00                                                           ;8BA516;
    STA.W $2116                                                          ;8BA518;
    LDA.B #$6E                                                           ;8BA51B;
    STA.W $2117                                                          ;8BA51D;
    LDA.B #$80                                                           ;8BA520;
    STA.W $2115                                                          ;8BA522;
    JSL.L SetupHDMATransfer                                              ;8BA525;
    db $01,$01,$18                                                       ;8BA529;
    dl $7FB800                                                           ;8BA52C;
    dw $2400                                                             ;8BA52F;
    LDA.B #$02                                                           ;8BA531;
    STA.W $420B                                                          ;8BA533;
    REP #$30                                                             ;8BA536;
    LDA.W #Tiles_Font2_BG3>>8&$FF00                                      ;8BA538;
    STA.B $48                                                            ;8BA53B;
    LDA.W #Tiles_Font2_BG3                                               ;8BA53D;
    STA.B $47                                                            ;8BA540;
    JSL.L Decompression_HardcodedDestination                             ;8BA542;
    dl $7FA000                                                           ;8BA546;
    JSL.L EnableNMI                                                      ;8BA549;
    LDA.W #$0003                                                         ;8BA54D;
    STA.W $0723                                                          ;8BA550;
    STA.W $0725                                                          ;8BA553;
    JSL.L Enable_HDMAObjects                                             ;8BA556;
    JSL.L Clear_PaletteFXObjects                                         ;8BA55A;
    JSL.L Enable_PaletteFXObjects                                        ;8BA55E;
    STZ.W $078D                                                          ;8BA562;
    STZ.W $0911                                                          ;8BA565;
    STZ.W $0915                                                          ;8BA568;
    STZ.W $1BA3                                                          ;8BA56B;
    LDX.W #$07FE                                                         ;8BA56E;

.loopSamusHead:
    LDA.L $7F9000,X                                                      ;8BA571;
    STA.L $7E3800,X                                                      ;8BA575;
    DEX                                                                  ;8BA579;
    DEX                                                                  ;8BA57A;
    BPL .loopSamusHead                                                   ;8BA57B;
    LDA.W $09E2
    BNE .frenchText
    LDX.W #$00FE

.loopGermanText:
    LDA.L InitialIntroGermanTextTilemap,X
    STA.L $7E3000,X
    DEX
    DEX
    BPL .loopGermanText
    BRA .music


.frenchText:
    LDX.W #$00FE                                                         ;8BA57D;

.loopFrenchText:
    LDA.L InitialIntroFrenchTextTilemap,X                                ;8BA580;
    STA.L $7E3000,X                                                      ;8BA584;
    DEX                                                                  ;8BA588;
    DEX                                                                  ;8BA589;
    BPL .loopFrenchText                                                  ;8BA58A;

.music:
    LDA.W #$FFFF                                                         ;8BA58C;
    STA.W $1B9F                                                          ;8BA58F;
    LDA.W #CinematicFunction_Intro_WaitForMusicQueue_FadeIn              ;8BA592;
    STA.W $1F51                                                          ;8BA595;
    LDA.W #$0000                                                         ;8BA598;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BA59B;
    LDA.W #$FF3F                                                         ;8BA59F;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BA5A2;
    RTS                                                                  ;8BA5A6;


CinematicFunction_Intro_WaitForMusicQueue_FadeIn:
    JSL.L CheckIfMusicIsQueued                                           ;8BA5A7;
    BCS .return                                                          ;8BA5AB;
    LDA.W #CinematicFunction_Intro_HandleDrawingInitialText_Wait60f      ;8BA5AD;
    STA.W $1F51                                                          ;8BA5B0;
    LDA.W #$0002                                                         ;8BA5B3;
    STA.W $0723                                                          ;8BA5B6;
    STA.W $0725                                                          ;8BA5B9;

.return:
    RTS                                                                  ;8BA5BC;


CinematicFunction_Intro_HandleDrawingInitialText_Wait60f:
    JSR.W AdvanceSlowScreenFadeIn                                        ;8BA5BD;
    BCC .return                                                          ;8BA5C0;
    LDA.W #CinematicFunction_Intro_PlayTheLastMetroidMusicFor200Frames   ;8BA5C2;
    STA.W $1F51                                                          ;8BA5C5;
    LDA.W #$003C                                                         ;8BA5C8;
    STA.W $1A49                                                          ;8BA5CB;
    LDX.W $0330                                                          ;8BA5D3;
    LDA.W #$0100                                                         ;8BA5D6;
    STA.B $D0,X                                                          ;8BA5D9;
    INX                                                                  ;8BA5DB;
    INX                                                                  ;8BA5DC;
    LDA.W #$3000                                                         ;8BA5DD;
    STA.B $D0,X                                                          ;8BA5E0;
    INX                                                                  ;8BA5E2;
    INX                                                                  ;8BA5E3;
    SEP #$20                                                             ;8BA5E4;
    LDA.B #$7E                                                           ;8BA5E6;
    STA.B $D0,X                                                          ;8BA5E8;
    REP #$20                                                             ;8BA5EA;
    INX                                                                  ;8BA5EC;
    LDA.W #$4EE0                                                         ;8BA5ED;
    STA.B $D0,X                                                          ;8BA5F0;
    INX                                                                  ;8BA5F2;
    INX                                                                  ;8BA5F3;
    STX.W $0330                                                          ;8BA5F4;

.return:
    RTS                                                                  ;8BA5F7;


CinematicFunction_Intro_PlayTheLastMetroidMusicFor200Frames:
    DEC.W $1A49                                                          ;8BA5F8;
    BEQ .timerExpired                                                    ;8BA5FB;
    BPL .return                                                          ;8BA5FD;

.timerExpired:
    LDA.W #CinematicFunction_Intro_PlayGalaxyIsAtPeaceMusic              ;8BA5FF;
    STA.W $1F51                                                          ;8BA602;
    LDA.W #$00C8                                                         ;8BA605;
    STA.W $1A49                                                          ;8BA608;
    LDA.W #$0005                                                         ;8BA60B;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BA60E;

.return:
    RTS                                                                  ;8BA612;


CinematicFunction_Intro_PlayGalaxyIsAtPeaceMusic:
    DEC.W $1A49                                                          ;8BA613;
    BEQ .timerExpired                                                    ;8BA616;
    BPL .return                                                          ;8BA618;

.timerExpired:
    LDA.W #$0000                                                         ;8BA61A;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BA61D;
    LDA.W #$FF42                                                         ;8BA621;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BA624;
    LDA.W #$0005                                                         ;8BA628;
    LDY.W #$000E                                                         ;8BA62B;
    JSL.L QueueMusicDataOrTrack_YFrameDelay                              ;8BA62E;
    LDA.W #CinematicFunction_Intro_WaitForMusicQueue_HandleDrawingGermanText_WaitFor240Frames ;8BA632;
    STA.W $1F51                                                          ;8BA635;
    LDA.W $09E2
    BNE .return
    LDX.W #$00FE

.loopGermanText:
    LDA.L InitialIntroGermanAdditionalTextTilemap,X
    STA.L $7E3000,X
    DEX
    DEX
    BPL .loopGermanText

.return:
    RTS                                                                  ;8BA638;


CinematicFunction_Intro_WaitForMusicQueue_HandleDrawingGermanText_WaitFor240Frames:
    JSL.L CheckIfMusicIsQueued                                           ;8BA639;
    BCS .return                                                          ;8BA63D;
    LDA.W #CinematicFunction_Intro_FadeOut                               ;8BA63F;
    STA.W $1F51                                                          ;8BA642;
    LDA.W #$00F0                                                         ;8BA645;
    STA.W $1A49                                                          ;8BA648;
    LDA.W $09E2
    BNE .return
    LDX.W $0330
    LDA.W #$0100
    STA.B $D0,X
    INX
    INX
    LDA #$3000
    STA.B $D0,X
    INX
    INX
    SEP #$20
    LDA #$7E
    STA.B $D0,X
    REP #$20
    INX
    LDA #$4EE0
    STA $D0,X
    INX
    INX
    STX $0330

.return:
    RTS                                                                  ;8BA64B;


CinematicFunction_Intro_FadeOut:
    DEC.W $1A49                                                          ;8BA64C;
    BEQ .timerExpired                                                    ;8BA64F;
    BPL .return                                                          ;8BA651;

.timerExpired:
    LDA.W #CinematicFunction_Intro_WaitForFadeOut                        ;8BA653;
    STA.W $1F51                                                          ;8BA656;
    LDA.W #$0002                                                         ;8BA659;
    STA.W $0723                                                          ;8BA65C;
    STA.W $0725                                                          ;8BA65F;

.return:
    RTS                                                                  ;8BA662;


CinematicFunction_Intro_WaitForFadeOut:
    JSR.W AdvanceSlowScreenFadeOut                                       ;8BA663;
    BCC .return                                                          ;8BA666;
    LDA.W #CinematicFunction_Intro_SetupIntroTextPage1                   ;8BA668;
    STA.W $1F51                                                          ;8BA66B;

.return:
    RTS                                                                  ;8BA66E;


CinematicFunction_Intro_SetupIntroTextPage1:
    REP #$30                                                             ;8BA66F;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BA671;
    SEP #$30                                                             ;8BA674;
    LDA.B #$00                                                           ;8BA676;
    STA.W $2116                                                          ;8BA678;
    LDA.B #$4F                                                           ;8BA67B;
    STA.W $2117                                                          ;8BA67D;
    LDA.B #$80                                                           ;8BA680;
    STA.W $2115                                                          ;8BA682;
    JSL.L SetupHDMATransfer                                              ;8BA685;
    db $01,$01,$18                                                       ;8BA689;
    dl $7E3600                                                           ;8BA68C;
    dw $0100                                                             ;8BA68F;
    LDA.B #$02                                                           ;8BA691;
    STA.W $420B                                                          ;8BA693;
    LDA.B #$16                                                           ;8BA696;
    STA.W $212C                                                          ;8BA698;
    STA.B $69                                                            ;8BA69B;
    REP #$30                                                             ;8BA69D;
    LDA.W #$002F                                                         ;8BA69F;
    JSL.L Clear_CinematicBGObjects_CinematicBGTilemap                    ;8BA6A2;
    JSL.L Enable_CinematicBGObjects                                      ;8BA6A6;
    JSL.L Enable_CinematicBGTilemap_Updates                              ;8BA6AA;
    LDA.W #$4C00                                                         ;8BA6AE;
    STA.W $19F5                                                          ;8BA6B1;
    LDX.W #$00FE                                                         ;8BA6B4;
    LDA.W #$3C29                                                         ;8BA6B7;

.loopTopBottomMargins:
    STA.L $7E3000,X                                                      ;8BA6BA;
    STA.L $7E3700,X                                                      ;8BA6BE;
    DEX                                                                  ;8BA6C2;
    DEX                                                                  ;8BA6C3;
    BPL .loopTopBottomMargins                                            ;8BA6C4;
    LDA.W #$1C29                                                         ;8BA6DC;
    STA.L $7E371E                                                        ;8BA6DF;
    STA.L $7E3720                                                        ;8BA6E3;
    JSR.W BlankOut_GermanFrenchText_Tiles
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextCaret               ;8BA6E7;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BA6EA;
    LDA.W #$007F                                                         ;8BA6ED;
    STA.W $1A49                                                          ;8BA6F0;
    LDY.W #CinematicSpriteObjectDefinitions_SamusBlinking                ;8BA6F3;
    LDA.W #$4C00                                                         ;8BA6F6;
    JSR.W Spawn_CinematicBGObject                                        ;8BA6F9;
    LDA.W #$0008                                                         ;8BA6FC;
    STA.W $1997                                                          ;8BA6FF;
    STA.B $B7                                                            ;8BA702;
    STA.B $BB                                                            ;8BA704;
    JSR.W Clear_EnglishText_Tilemap                                      ;8BA706;
    JSR.W RestIntroTextCaret                                             ;8BA709;
    LDA.W #$0000                                                         ;8BA70C;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BA70F;
    LDA.W #$FF36                                                         ;8BA713;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BA716;
    LDA.W #$0005                                                         ;8BA71A;
    LDY.W #$000E                                                         ;8BA71D;
    JSL.L QueueMusicDataOrTrack_YFrameDelay                              ;8BA720;
    LDA.W #CineFunc_Intro_WaitForMusicQueue_FadeIn_SpawnIntroTextPage1   ;8BA724;
    STA.W $1F51                                                          ;8BA727;
    RTS                                                                  ;8BA72A;


CineFunc_Intro_WaitForMusicQueue_FadeIn_SpawnIntroTextPage1:
    JSL.L CheckIfMusicIsQueued                                           ;8BA82B;
    BCS .return                                                          ;8BA82F;
    LDA.W #CinematicFunction_Intro_WaitForFadeIn                         ;8BA831;
    STA.W $1F51                                                          ;8BA834;
    LDA.W #$0002                                                         ;8BA837;
    STA.W $0723                                                          ;8BA83A;
    STA.W $0725                                                          ;8BA83D;
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextPage1               ;8BA840;
    LDA.W #$4C00                                                         ;8BA843;
    JSR.W Spawn_CinematicBGObject                                        ;8BA846;

.return:
    RTS                                                                  ;8BA849;


CinematicFunction_Intro_WaitForFadeIn:
    JSR.W AdvanceSlowScreenFadeIn                                        ;8BA84A;
    BCC .return                                                          ;8BA84D;
    LDA.W #CinematicFunction_Nothing                                     ;8BA84F;
    STA.W $1F51                                                          ;8BA852;

.return:
    RTS                                                                  ;8BA855;


Clear_EnglishText_Tilemap:
    PHX                                                                  ;8BA856;
    LDX.W #$0100                                                         ;8BA857;
    LDA.W #$002F                                                         ;8BA85A;

.loop:
    STA.L $7E3000,X                                                      ;8BA85D;
    INX                                                                  ;8BA861;
    INX                                                                  ;8BA862;
    CPX.W #$0600                                                         ;8BA863;
    BMI .loop                                                            ;8BA866;
    PLX                                                                  ;8BA868;
    RTS                                                                  ;8BA869;


BlankOut_GermanFrenchText_Tiles:
    PHP                                                                  ;8BA86A;
    REP #$30                                                             ;8BA86B;
    PHX                                                                  ;8BA86D;
    LDX.W #$00FE
    LDA.W #$3C29

.loop:
    STA.L $7E3600,X
    DEX
    DEX
    BPL .loop
    PLX                                                                  ;8BA8BE;
    PLP                                                                  ;8BA8BF;
    RTS                                                                  ;8BA8C0;


InitFunction_CinematicSpriteObject_IntroTextCaret:
    LDA.W #$0008                                                         ;8BA8C1;
    STA.W $1A7D,Y                                                        ;8BA8C4;
    LDA.W #$0018                                                         ;8BA8C7;
    STA.W $1A9D,Y                                                        ;8BA8CA;
    LDA.W #$0C00                                                         ;8BA8CD;
    STA.W $1ABD,Y                                                        ;8BA8D0;
    RTS                                                                  ;8BA8D3;


RTS_8BA8D4:
    RTS                                                                  ;8BA8D4;


InitFunction_CinematicSpriteObject_MetroidEgg:
    LDA.W #$0070                                                         ;8BA8D5;
    STA.W $1A7D,Y                                                        ;8BA8D8;
    LDA.W #$009B                                                         ;8BA8DB;
    STA.W $1A9D,Y                                                        ;8BA8DE;
    LDA.W #$0E00                                                         ;8BA8E1;
    STA.W $1ABD,Y                                                        ;8BA8E4;
    RTS                                                                  ;8BA8E7;


PreInstruction_CinematicSpriteObject_MetroidEgg:
    LDA.W $0AF6                                                          ;8BA8E8;
    CMP.W #$00A9                                                         ;8BA8EB;
    BPL .return                                                          ;8BA8EE;
    LDA.W #$0001                                                         ;8BA8F0;
    STA.W $1B5D,X                                                        ;8BA8F3;
    LDA.W #InstList_MetroidEggHatching_0                                 ;8BA8F6;
    STA.W $1B1D,X                                                        ;8BA8F9;
    LDA.W #RTS_8B93D9                                                    ;8BA8FC;
    STA.W $1B3D,X                                                        ;8BA8FF;

.return:
    RTS                                                                  ;8BA902;


PreInstruction_MetroidEgg_DeleteAfterCrossFade:
    LDA.W $1A4B                                                          ;8BA903;
    BNE .return                                                          ;8BA906;
    LDA.W #$0001                                                         ;8BA908;
    STA.W $1B5D,X                                                        ;8BA90B;
    LDA.W #InstList_CinematicSpriteObject_Delete                         ;8BA90E;
    STA.W $1B1D,X                                                        ;8BA911;
    STZ.W $1A57                                                          ;8BA914;

.return:
    RTS                                                                  ;8BA917;


Instruction_SpawnMetroidEggParticles:
    PHY                                                                  ;8BA918;
    LDA.W #$0000                                                         ;8BA919;
    LDY.W #CinematicSpriteObjectDefinitions_MetroidEggParticle1          ;8BA91C;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BA91F;
    LDA.W #$0001                                                         ;8BA922;
    LDY.W #CinematicSpriteObjectDefinitions_MetroidEggParticle2          ;8BA925;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BA928;
    LDA.W #$0002                                                         ;8BA92B;
    LDY.W #CinematicSpriteObjectDefinitions_MetroidEggParticle3          ;8BA92E;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BA931;
    LDA.W #$0003                                                         ;8BA934;
    LDY.W #CinematicSpriteObjectDefinitions_MetroidEggParticle4          ;8BA937;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BA93A;
    LDA.W #$0004                                                         ;8BA93D;
    LDY.W #CinematicSpriteObjectDefinitions_MetroidEggParticle5          ;8BA940;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BA943;
    LDA.W #$0005                                                         ;8BA946;
    LDY.W #CinematicSpriteObjectDefinitions_MetroidEggParticle6          ;8BA949;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BA94C;
    LDA.W #$000B                                                         ;8BA94F;
    JSL.L QueueSound_Lib2_Max6                                           ;8BA952;
    PLY                                                                  ;8BA956;
    RTS                                                                  ;8BA957;


InitFunction_CinematicSpriteObject_MetroidEggParticles:
    LDA.W $1B9D                                                          ;8BA958;
    STA.W $1B7D,Y                                                        ;8BA95B;
    ASL A                                                                ;8BA95E;
    ASL A                                                                ;8BA95F;
    TAX                                                                  ;8BA960;
    LDA.W .Xposition,X                                                   ;8BA961;
    CLC                                                                  ;8BA964;
    ADC.W #$0010                                                         ;8BA965;
    STA.W $1A7D,Y                                                        ;8BA968;
    LDA.W .Yposition,X                                                   ;8BA96B;
    CLC                                                                  ;8BA96E;
    ADC.W #$003B                                                         ;8BA96F;
    STA.W $1A9D,Y                                                        ;8BA972;
    LDA.W #$0E00                                                         ;8BA975;
    STA.W $1ABD,Y                                                        ;8BA978;
    RTS                                                                  ;8BA97B;

;        _________ X position - 10h
;       |      ___ Y position - 3Bh
;       |     |
.Xposition:
    dw $005C                                                             ;8BA97C;
.Yposition:
    dw       $0058                                                       ;8BA97E;
    dw $0063,$0058
    dw $0059,$005D
    dw $0060,$005B
    dw $0066,$005E
    dw $0063,$0060


PreInstruction_CinematicSpriteObject_MetroidEggParticle:
    LDA.W $1B7D,X                                                        ;8BA994;
    AND.W #$00FF                                                         ;8BA997;
    ASL A                                                                ;8BA99A;
    ASL A                                                                ;8BA99B;
    TAY                                                                  ;8BA99C;
    LDA.W $1ADD,X                                                        ;8BA99D;
    CLC                                                                  ;8BA9A0;
    ADC.W .Xvelocities+2,Y                                               ;8BA9A1;
    STA.W $1ADD,X                                                        ;8BA9A4;
    LDA.W $1A7D,X                                                        ;8BA9A7;
    ADC.W .Xvelocities,Y                                                 ;8BA9AA;
    STA.W $1A7D,X                                                        ;8BA9AD;
    LDA.W $1B7D,X                                                        ;8BA9B0;
    XBA                                                                  ;8BA9B3;
    AND.W #$00FF                                                         ;8BA9B4;
    ASL A                                                                ;8BA9B7;
    ASL A                                                                ;8BA9B8;
    TAY                                                                  ;8BA9B9;
    LDA.W $1AFD,X                                                        ;8BA9BA;
    CLC                                                                  ;8BA9BD;
    ADC.W .Yvelocities+2,Y                                               ;8BA9BE;
    STA.W $1AFD,X                                                        ;8BA9C1;
    LDA.W $1A9D,X                                                        ;8BA9C4;
    ADC.W .Yvelocities,Y                                                 ;8BA9C7;
    STA.W $1A9D,X                                                        ;8BA9CA;
    CMP.W #$00A8                                                         ;8BA9CD;
    BMI .lessThanA8                                                      ;8BA9D0;
    LDA.W #$0001                                                         ;8BA9D2;
    STA.W $1B5D,X                                                        ;8BA9D5;
    LDA.W #InstList_CinematicSpriteObject_Delete                         ;8BA9D8;
    STA.W $1B1D,X                                                        ;8BA9DB;
    RTS                                                                  ;8BA9DE;


.lessThanA8:
    LDA.W $1B7D,X                                                        ;8BA9DF;
    CLC                                                                  ;8BA9E2;
    ADC.W #$0100                                                         ;8BA9E3;
    STA.W $1B7D,X                                                        ;8BA9E6;
    RTS                                                                  ;8BA9E9;


.Xvelocities:
; Indexed by [cinematic sprite object index] * 4
    dw $FFFF,$4000, $0000,$4000, $FFFF,$8000, $FFFF,$2000                 ;8BA9EA;
    dw $0000,$8000, $0000,$2000                                           ;8BA9FA;

.Yvelocities:
; Indexed by [cinematic sprite object index] * 4
    dw $FFFE,$0000, $FFFE,$C000, $FFFE,$A000, $FFFE,$8000                 ;8BAA02;
    dw $FFFE,$6000, $FFFE,$4000, $FFFE,$2000, $FFFF,$0000                 ;8BAA12;
    dw $FFFF,$C000, $FFFF,$A000, $FFFF,$8000, $FFFF,$6000                 ;8BAA22;
    dw $FFFF,$4000, $FFFF,$2000, $0000,$0000, $0000,$2000                 ;8BAA32;
    dw $0000,$4000, $0000,$6000, $0000,$8000, $0000,$A000                 ;8BAA42;
    dw $0000,$C000, $0000,$E000, $0001,$0000, $0001,$2000                 ;8BAA52;
    dw $0001,$4000, $0001,$6000, $0001,$8000, $0001,$A000                 ;8BAA62;
    dw $0001,$C000, $0001,$E000, $0002,$0000, $0002,$2000                 ;8BAA72;
    dw $0002,$4000, $0002,$6000, $0002,$8000, $0002,$A000                 ;8BAA82;
    dw $0002,$C000, $0002,$E000                                           ;8BAA92;


InitFunction_CinematicSpriteObject_MetroidEggSlimeDrops:
    LDA.W $1B9D                                                          ;8BAA9A;
    STA.W $1B7D,Y                                                        ;8BAA9D;
    LDA.W $1A97                                                          ;8BAAA0;
    STA.W $1A7D,Y                                                        ;8BAAA3;
    LDA.W $1AB7                                                          ;8BAAA6;
    STA.W $1A9D,Y                                                        ;8BAAA9;
    LDA.W #$0E00                                                         ;8BAAAC;
    STA.W $1ABD,Y                                                        ;8BAAAF;
    RTS                                                                  ;8BAAB2;


PreInstruction_CinematicSpriteObject_MetroidEggSlimeDrops:
    LDA.W $1B7D,X                                                        ;8BAAB3;
    AND.W #$00FF                                                         ;8BAAB6;
    ASL A                                                                ;8BAAB9;
    ASL A                                                                ;8BAABA;
    TAY                                                                  ;8BAABB;
    LDA.W $1ADD,X                                                        ;8BAABC;
    CLC                                                                  ;8BAABF;
    ADC.W .Xvelocities+2,Y                                               ;8BAAC0;
    STA.W $1ADD,X                                                        ;8BAAC3;
    LDA.W $1A7D,X                                                        ;8BAAC6;
    ADC.W .Xvelocities,Y                                                 ;8BAAC9;
    STA.W $1A7D,X                                                        ;8BAACC;
    LDA.W $1B7D,X                                                        ;8BAACF;
    BIT.W #$0001                                                         ;8BAAD2;
    BNE .nonZero                                                         ;8BAAD5;
    XBA                                                                  ;8BAAD7;
    AND.W #$00FF                                                         ;8BAAD8;
    ASL A                                                                ;8BAADB;
    ASL A                                                                ;8BAADC;
    TAY                                                                  ;8BAADD;
    LDA.W $1AFD,X                                                        ;8BAADE;
    CLC                                                                  ;8BAAE1;
    ADC.W .YvelocitiesEven+2,Y                                           ;8BAAE2;
    STA.W $1AFD,X                                                        ;8BAAE5;
    LDA.W $1A9D,X                                                        ;8BAAE8;
    ADC.W .YvelocitiesEven,Y                                             ;8BAAEB;
    STA.W $1A9D,X                                                        ;8BAAEE;
    CMP.W #$00A8                                                         ;8BAAF1;
    BMI .notHitGround                                                    ;8BAAF4;
    BRA +                                                                ;8BAAF6;


.nonZero:
    XBA                                                                  ;8BAAF8;
    AND.W #$00FF                                                         ;8BAAF9;
    ASL A                                                                ;8BAAFC;
    ASL A                                                                ;8BAAFD;
    TAY                                                                  ;8BAAFE;
    LDA.W $1AFD,X                                                        ;8BAAFF;
    CLC                                                                  ;8BAB02;
    ADC.W .YvelocitiesOdd+2,Y                                            ;8BAB03;
    STA.W $1AFD,X                                                        ;8BAB06;
    LDA.W $1A9D,X                                                        ;8BAB09;
    ADC.W .YvelocitiesOdd,Y                                              ;8BAB0C;
    STA.W $1A9D,X                                                        ;8BAB0F;
    CMP.W #$00A8                                                         ;8BAB12;
    BMI .notHitGround                                                    ;8BAB15;

  + LDA.W #$0001                                                         ;8BAB17;
    STA.W $1B5D,X                                                        ;8BAB1A;
    LDA.W #InstList_MetroidEggParticle_HitGround                         ;8BAB1D;
    STA.W $1B1D,X                                                        ;8BAB20;
    LDA.W #RTS_8B93D9                                                    ;8BAB23;
    STA.W $1B3D,X                                                        ;8BAB26;
    RTS                                                                  ;8BAB29;


.notHitGround:
    LDA.W $1B7D,X                                                        ;8BAB2A;
    CLC                                                                  ;8BAB2D;
    ADC.W #$0100                                                         ;8BAB2E;
    STA.W $1B7D,X                                                        ;8BAB31;
    RTS                                                                  ;8BAB34;


.Xvelocities:
; Indexed by [cinematic sprite object index] * 4
    dw $FFFF,$0000, $FFFF,$8000, $0001,$0000, $0000,$8000                ;8BAB35;
    dw $FFFF,$8000                                                       ;8BAB45;

.YvelocitiesOdd:
; for odd index slime drops. Indexed by [cinematic sprite object counter] * 4
    dw $FFFE,$0000, $FFFE,$C000, $FFFE,$A000, $FFFE,$8000                ;8BAB49;
    dw $FFFE,$6000, $FFFE,$4000, $FFFE,$2000, $FFFF,$0000                ;8BAB59;
    dw $FFFF,$C000, $FFFF,$A000, $FFFF,$8000, $FFFF,$6000                ;8BAB69;
    dw $FFFF,$4000, $FFFF,$2000, $0000,$0000, $0000,$2000                ;8BAB79;
    dw $0000,$4000, $0000,$6000, $0000,$8000, $0000,$A000                ;8BAB89;
    dw $0000,$C000, $0000,$E000, $0001,$0000, $0001,$2000                ;8BAB99;
    dw $0001,$4000, $0001,$6000, $0001,$8000, $0001,$A000                ;8BABA9;
    dw $0001,$C000, $0001,$E000, $0002,$0000, $0002,$2000                ;8BABB9;
    dw $0002,$4000, $0002,$6000, $0002,$8000, $0002,$A000                ;8BABC9;
    dw $0002,$C000, $0002,$E000, $0003,$0000, $0003,$2000                ;8BABD9;
    dw $0003,$4000, $0003,$6000, $0003,$8000, $0003,$A000                ;8BABE9;
    dw $0003,$C000, $0003,$E000, $0004,$0000, $0004,$2000                ;8BABF9;
    dw $0004,$4000, $0004,$6000, $0004,$8000, $0004,$A000                ;8BAB09;
    dw $0004,$C000, $0004,$E000, $0005,$0000, $0005,$2000                ;8BAC19;
    dw $0005,$4000, $0005,$6000, $0005,$8000, $0005,$A000                ;8BAC29;
    dw $0005,$C000, $0005,$E000                                          ;8BAC39;

.YvelocitiesEven:
;  for even index slime drops. Indexed by [cinematic sprite object counter] * 4
    dw $FFFD,$0000, $FFFD,$C000, $FFFD,$A000, $FFFD,$8000                ;8BAC41;
    dw $FFFD,$6000, $FFFD,$4000, $FFFD,$2000, $FFFE,$0000                ;8BAC51;
    dw $FFFE,$C000, $FFFE,$A000, $FFFE,$8000, $FFFE,$6000                ;8BAC61;
    dw $FFFE,$4000, $FFFE,$2000, $FFFF,$0000, $FFFF,$C000                ;8BAC71;
    dw $FFFF,$A000, $FFFF,$8000, $FFFF,$6000, $FFFF,$4000                ;8BAC81;
    dw $FFFF,$2000, $0000,$0000, $0000,$2000, $0000,$4000                ;8BAC91;
    dw $0000,$6000, $0000,$8000, $0000,$A000, $0000,$C000                ;8BACA1;
    dw $0000,$E000, $0001,$0000, $0001,$2000, $0001,$4000                ;8BACB1;
    dw $0001,$6000, $0001,$8000, $0001,$A000, $0001,$C000                ;8BACC1;
    dw $0001,$E000, $0002,$0000, $0002,$2000, $0002,$4000                ;8BACD1;
    dw $0002,$6000, $0002,$8000, $0002,$A000, $0002,$C000                ;8BACE1;
    dw $0002,$E000, $0003,$0000, $0003,$2000, $0003,$4000                ;8BACF1;
    dw $0003,$6000, $0003,$8000, $0003,$A000, $0003,$C000                ;8BAC01;
    dw $0003,$E000, $0004,$0000, $0004,$2000, $0004,$4000                ;8BAD11;
    dw $0004,$6000, $0004,$8000, $0004,$A000, $0004,$C000                ;8BAD21;
    dw $0004,$E000, $0005,$0000, $0005,$2000, $0005,$4000                ;8BAD31;
    dw $0005,$6000, $0005,$8000, $0005,$A000, $0005,$C000                ;8BAD41;
    dw $0005,$E000                                                       ;8BAD51;

InitFunction_CinematicSpriteObject_BabyMetroidBeingDelivered:
    LDA.W #$0054                                                         ;8BAD55;
    STA.W $1A7D,Y                                                        ;8BAD58;
    LDA.W #$008B                                                         ;8BAD5B;
    STA.W $1A9D,Y                                                        ;8BAD5E;
    LDA.W #$0C00                                                         ;8BAD61;
    STA.W $1ABD,Y                                                        ;8BAD64;
    RTS                                                                  ;8BAD67;


PreInst_CinematicSpriteObject_BabyMetroidBeingDelivered:
    LDA.W $1A4B                                                          ;8BAD68;
    BNE .crossFading                                                     ;8BAD6B;
    LDA.W #$0001                                                         ;8BAD6D;
    STA.W $1B5D,X                                                        ;8BAD70;
    LDA.W #InstList_CinematicSpriteObject_Delete                         ;8BAD73;
    STA.W $1B1D,X                                                        ;8BAD76;
    RTS                                                                  ;8BAD79;


.crossFading:
    LDA.W $1A49                                                          ;8BAD7A;
    BIT.W #$0003                                                         ;8BAD7D;
    BNE .return                                                          ;8BAD80;
    LDA.W $1993                                                          ;8BAD82;
    BEQ .return                                                          ;8BAD85;
    DEC A                                                                ;8BAD87;
    STA.W $1993                                                          ;8BAD88;
    LDA.W $1A7D,X                                                        ;8BAD8B;
    INC A                                                                ;8BAD8E;
    STA.W $1A7D,X                                                        ;8BAD8F;

.return:
    RTS                                                                  ;8BAD92;


InitFunction_CinematicSpriteObject_BabyMetroidBeingExamined:
    LDA.W #$0070                                                         ;8BAD93;
    STA.W $1A7D,Y                                                        ;8BAD96;
    LDA.W #$006F                                                         ;8BAD99;
    STA.W $1A9D,Y                                                        ;8BAD9C;
    LDA.W #$0C00                                                         ;8BAD9F;
    STA.W $1ABD,Y                                                        ;8BADA2;
    RTS                                                                  ;8BADA5;


PreInst_CinematicSpriteObject_BabyMetroidBeingExamined:
    LDA.W $1A4B                                                          ;8BADA6;
    BNE .crossFading                                                     ;8BADA9;
    LDA.W #$0001                                                         ;8BADAB;
    STA.W $1B5D,X                                                        ;8BADAE;
    LDA.W #InstList_CinematicSpriteObject_Delete                         ;8BADB1;
    STA.W $1B1D,X                                                        ;8BADB4;
    RTS                                                                  ;8BADB7;


.crossFading:
    LDA.W $1A49                                                          ;8BADB8;
    BIT.W #$0003                                                         ;8BADBB;
    BNE .return                                                          ;8BADBE;
    LDA.W $1997                                                          ;8BADC0;
    CMP.W #$0008                                                         ;8BADC3;
    BPL .return                                                          ;8BADC6;
    INC A                                                                ;8BADC8;
    STA.W $1997                                                          ;8BADC9;
    LDA.W $1A9D,X                                                        ;8BADCC;
    DEC A                                                                ;8BADCF;
    STA.W $1A9D,X                                                        ;8BADD0;

.return:
    RTS                                                                  ;8BADD3;


Instruction_SetCaretToBlink:
    LDA.W #InstList_IntroTextCaret_Blink                                 ;8BADD4;
    STA.W $1B3B                                                          ;8BADD7;
    LDA.W #$0001                                                         ;8BADDA;
    STA.W $1B7B                                                          ;8BADDD;
    RTS                                                                  ;8BADE0;


PlaceIntroTextCaretOffScreen:
    LDA.W #$0008                                                         ;8BADE1;
    STA.W $1A9B                                                          ;8BADE4;
    LDA.W #$00F8                                                         ;8BADE7;
    STA.W $1ABB                                                          ;8BADEA;
    RTS                                                                  ;8BADED;


RestIntroTextCaret:
    LDA.W #$0008                                                         ;8BADEE;
    STA.W $1A9B                                                          ;8BADF1;
    LDA.W #$0018                                                         ;8BADF4;
    STA.W $1ABB                                                          ;8BADF7;
    LDA.W #InstList_CinematicSpriteObject_IntroTextCaret                 ;8BADFA;
    STA.W $1B3B                                                          ;8BADFD;
    LDA.W #$0001                                                         ;8BAE00;
    STA.W $1B7B                                                          ;8BAE03;
    RTS                                                                  ;8BAE06;


InitFunc_CinematicSpriteObject_IntroTextNextPageArrow:
    LDA.W #$0080                                                         ;8BAE07;
    STA.W $1A7D,Y                                                        ;8BAE0A;
    LDA.W #$00D8                                                         ;8BAE0D;
    STA.W $1A9D,Y                                                        ;8BAE10;
    LDA.W #$0C00                                                         ;8BAE13;
    STA.W $1ABD,Y                                                        ;8BAE16;
    RTS                                                                  ;8BAE19;


PreInst_CinematicSpriteObject_IntroTextNextPageArrow:
    LDA.W $1BA3                                                          ;8BAE1A;
    CMP.W #$003B                                                         ;8BAE1D;
    BNE +                                                                ;8BAE20;
    LDA.W #$0001                                                         ;8BAE22;
    STA.W $1B5D,X                                                        ;8BAE25;
    LDA.W #InstList_IntroTextNextPageArrow_Blink                         ;8BAE28;
    STA.W $1B1D,X                                                        ;8BAE2B;

  + LDA.W $1A4B                                                          ;8BAE2E;
    CMP.W #$007F                                                         ;8BAE31;
    BNE .return                                                          ;8BAE34;
    LDA.W #$0001                                                         ;8BAE36;
    STA.W $1B5D,X                                                        ;8BAE39;
    LDA.W #InstList_CinematicSpriteObject_Delete                         ;8BAE3C;
    STA.W $1B1D,X                                                        ;8BAE3F;

.return:
    RTS                                                                  ;8BAE42;


Instruction_HandleCreatingText_Page1:
    STZ.W $1BA1                                                          ;8BAE43;
    PHB                                                                  ;8BAE4B;
    PEA.W $8B00                                                          ;8BAE4C;
    PLB                                                                  ;8BAE4F;
    PLB                                                                  ;8BAE50;
    PHY                                                                  ;8BAE51;
    LDY.W #Mode7Objects_IntroText_Page1_Subpage1                         ;8BAE52;
    JSR.W Spawn_Mode7Objects                                             ;8BAE55;
    PLY                                                                  ;8BAE58;
    PLB                                                                  ;8BAE59;
    RTS                                                                  ;8BAE5A;


Instruction_SpawnBlinkingMarkers_WaitForInput_Page1:
    JSR.W Instruction_SetCaretToBlink                                    ;8BAE5B;
    LDA.W $09E2                                                          ;8BAE5E;
    BEQ .waitForInput                                                    ;8BAE61;
    PHB                                                                  ;8BAE63;
    PEA.W $8B00                                                          ;8BAE64;
    PLB                                                                  ;8BAE67;
    PLB                                                                  ;8BAE68;
    PHY                                                                  ;8BAE69;
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextNextPageArrow       ;8BAE6A;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BAE6D;
    PLY                                                                  ;8BAE70;
    PLB                                                                  ;8BAE71;
    LDA.W #CinematicFunction_Intro_WaitForInput_SetupMotherBrainFight    ;8BAE72;
    STA.W $1F51                                                          ;8BAE75;
    RTS                                                                  ;8BAE78;


.waitForInput:
    PHB
    PEA.W $8B00
    PLB
    PLB
    PHY
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextNextPageArrow
    JSR.W Spawn_CinematicSpriteObject_Y
    PLY
    PHY
    LDY.W #Mode7Objects_IntroText_Page1_Subpage2
    JSR.W Spawn_Mode7Objects
    PLY
    PLB
    RTS


Instruction_HandleCreatingText_Page2:
    STZ.W $1BA1                                                          ;8BAE79;
    PHB                                                                  ;8BAE81;
    PEA.W $8B00                                                          ;8BAE82;
    PLB                                                                  ;8BAE85;
    PLB                                                                  ;8BAE86;
    PHY                                                                  ;8BAE87;
    LDY.W #Mode7Objects_IntroText_Page2_Subpage1                         ;8BAE88;
    JSR.W Spawn_Mode7Objects                                             ;8BAE8B;
    PLY                                                                  ;8BAE8E;
    PLB                                                                  ;8BAE8F;
    RTS                                                                  ;8BAE90;


Instruction_SpawnBlinkingMarkers_WaitForInput_Page2:
    JSR.W Instruction_SetCaretToBlink                                    ;8BAE91;
    LDA.W $09E2                                                          ;8BAE94;
    BEQ .germanText                                                      ;8BAE97;
    PHB                                                                  ;8BAE99;
    PEA.W $8B00                                                          ;8BAE9A;
    PLB                                                                  ;8BAE9D;
    PLB                                                                  ;8BAE9E;
    PHY                                                                  ;8BAE9F;
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextNextPageArrow       ;8BAEA0;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BAEA3;
    PLY                                                                  ;8BAEA6;
    PLB
    LDA.W #CinematicFunc_Intro_WaitForInput_SetupBabyMetroidDiscovery    ;8BAEB1;
    STA.W $1F51                                                          ;8BAEB4;
    RTS                                                                  ;8BAEB7;


.germanText:
    PHB
    PEA.W $8B00
    PLB
    PLB
    PHY
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextNextPageArrow
    JSR.W Spawn_CinematicSpriteObject_Y
    PLY
    PHY                                                                  ;8BAEA7;
    LDY.W #Mode7Objects_IntroText_Page2_Subpage2                         ;8BAEA8;
    JSR.W Spawn_Mode7Objects                                             ;8BAEAB;
    PLY                                                                  ;8BAEAE;
    PLB                                                                  ;8BAEAF;
    RTS                                                                  ;8BAEB0;


CinematicFunction_Intro_WaitForInput_SetupMotherBrainFight:
    LDA.W $1BA3                                                          ;8BAEB8;
    BEQ .timerExpired                                                    ;8BAEBB;
    DEC A                                                                ;8BAEBD;
    STA.W $1BA3                                                          ;8BAEBE;
    RTS                                                                  ;8BAEC1;


.timerExpired:
    LDA.B $8F                                                            ;8BAEC2;
    BNE .newInputs                                                       ;8BAEC4;
    RTS                                                                  ;8BAEC6;


.newInputs:
    SEP #$20                                                             ;8BAEC7;
    LDA.B #$50                                                           ;8BAEC9;
    STA.B $58                                                            ;8BAECB;
    REP #$20                                                             ;8BAECD;
    LDA.W #$0002                                                         ;8BAECF;
    STA.W $0A1C                                                          ;8BAED2;
    JSL.L InitializeSamusPose_1                                          ;8BAED5;
    JSL.L Set_Samus_AnimationFrame_if_PoseChanged                        ;8BAED9;
    LDA.W $0A20                                                          ;8BAEDD;
    STA.W $0A24                                                          ;8BAEE0;
    LDA.W $0A22                                                          ;8BAEE3;
    STA.W $0A26                                                          ;8BAEE6;
    LDA.W $0A1C                                                          ;8BAEE9;
    STA.W $0A20                                                          ;8BAEEC;
    LDA.W $0A1E                                                          ;8BAEEF;
    STA.W $0A22                                                          ;8BAEF2;
    LDA.W #$009B                                                         ;8BAEF5;
    STA.W $0AF6                                                          ;8BAEF8;
    STA.W $0B10                                                          ;8BAEFB;
    LDA.W #$0073                                                         ;8BAEFE;
    STA.W $0AFA                                                          ;8BAF01;
    STA.W $0B14                                                          ;8BAF04;
    STZ.W $1993                                                          ;8BAF07;
    LDA.W #$007F                                                         ;8BAF0A;
    STA.W $1A4B                                                          ;8BAF0D;
    LDY.W #CinematicSpriteObjectDefinitions_IntroMotherBrain             ;8BAF10;
    STZ.B $12                                                            ;8BAF13;
    JSR.W Spawn_CinematicSpriteObject_YToIndex12                         ;8BAF15;
    LDY.W #CinematicSpriteObjectDefinitions_RinkaSpawner                 ;8BAF18;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BAF1B;
    LDX.W #$0000                                                         ;8BAF1E;

.loopLevelData:
    LDA.L LevelData_OldMotherBrainRoomFromCutscene,X                     ;8BAF21;
    STA.L $7F0002,X                                                      ;8BAF25;
    INX                                                                  ;8BAF29;
    INX                                                                  ;8BAF2A;
    CPX.W #$01C0                                                         ;8BAF2B;
    BMI .loopLevelData                                                   ;8BAF2E;
    LDX.W #$0000                                                         ;8BAF30;
    LDA.W #$0000                                                         ;8BAF33;

.loopBTS:
    STA.L $7F6402,X                                                      ;8BAF36;
    INX                                                                  ;8BAF3A;
    INX                                                                  ;8BAF3B;
    CPX.W #$0200                                                         ;8BAF3C;
    BMI .loopBTS                                                         ;8BAF3F;
    LDA.W #$0001                                                         ;8BAF41;
    STA.W $09D2                                                          ;8BAF44;
    LDA.W #SamusCurrentStateHandler_Demo                                 ;8BAF47;
    STA.W $0A42                                                          ;8BAF4A;
    LDA.W #SamusNewStateHandler_IntroDemo                                ;8BAF4D;
    STA.W $0A44                                                          ;8BAF50;
    JSL.L Clear_DemoInput_RAM                                            ;8BAF53;
    JSL.L Enable_DemoInput                                               ;8BAF57;
    LDY.W #DemoInputObjects_Intro_OldMotherBrainFight                    ;8BAF5B;
    JSL.L Load_DemoInputObject                                           ;8BAF5E;
    LDA.W #$FFFF                                                         ;8BAF62;
    STA.W $1A57                                                          ;8BAF65;
    JMP.W Setup_Intro_CrossFade_Into_SamusGameplay                       ;8BAF68;

    RTS                                                                  ;8BAF6B;


CinematicFunc_Intro_WaitForInput_SetupBabyMetroidDiscovery:
    LDA.W $1BA3                                                          ;8BAF6C;
    BEQ .timerExpired                                                    ;8BAF6F;
    DEC A                                                                ;8BAF71;
    STA.W $1BA3                                                          ;8BAF72;
    RTS                                                                  ;8BAF75;


.timerExpired:
    LDA.B $8F                                                            ;8BAF76;
    BNE .newInputs                                                       ;8BAF78;
    RTS                                                                  ;8BAF7A;


.newInputs:
    SEP #$20                                                             ;8BAF7B;
    LDA.B #$54                                                           ;8BAF7D;
    STA.B $58                                                            ;8BAF7F;
    REP #$20                                                             ;8BAF81;
    LDA.W #$0020                                                         ;8BAF83;
    STA.W $07A5                                                          ;8BAF86;
    LDA.W #$0010                                                         ;8BAF89;
    STA.W $07A7                                                          ;8BAF8C;
    LDA.W #$0002                                                         ;8BAF8F;
    STA.W $0A1C                                                          ;8BAF92;
    JSL.L InitializeSamusPose_1                                          ;8BAF95;
    JSL.L Set_Samus_AnimationFrame_if_PoseChanged                        ;8BAF99;
    LDA.W $0A20                                                          ;8BAF9D;
    STA.W $0A24                                                          ;8BAFA0;
    LDA.W $0A22                                                          ;8BAFA3;
    STA.W $0A26                                                          ;8BAFA6;
    LDA.W $0A1C                                                          ;8BAFA9;
    STA.W $0A20                                                          ;8BAFAC;
    LDA.W $0A1E                                                          ;8BAFAF;
    STA.W $0A22                                                          ;8BAFB2;
    LDA.W #$0178                                                         ;8BAFB5;
    STA.W $0AF6                                                          ;8BAFB8;
    STA.W $0B10                                                          ;8BAFBB;
    LDA.W #$0093                                                         ;8BAFBE;
    STA.W $0AFA                                                          ;8BAFC1;
    STA.W $0B14                                                          ;8BAFC4;
    STZ.W $1993                                                          ;8BAFC7;
    LDA.W #$007F                                                         ;8BAFCA;
    STA.W $1A4B                                                          ;8BAFCD;
    LDY.W #CinematicSpriteObjectDefinitions_MetroidEgg                   ;8BAFD0;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BAFD3;
    LDY.W #CinematicSpriteObjectDefinitions_ConfusedBabyMetroid          ;8BAFD6;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BAFD9;
    STZ.W $1B9F                                                          ;8BAFDC;
    LDX.W #$0000                                                         ;8BAFDF;

.loopLevelData:
    LDA.L LevelData_RoomWithBabyMetroidHatchingFromCutscene,X            ;8BAFE2;
    STA.L $7F0002,X                                                      ;8BAFE6;
    INX                                                                  ;8BAFEA;
    INX                                                                  ;8BAFEB;
    CPX.W #$0300                                                         ;8BAFEC;
    BMI .loopLevelData                                                   ;8BAFEF;
    STZ.W $09D2                                                          ;8BAFF1;
    LDA.W #SamusCurrentStateHandler_Demo                                 ;8BAFF4;
    STA.W $0A42                                                          ;8BAFF7;
    LDA.W #SamusNewStateHandler_IntroDemo                                ;8BAFFA;
    STA.W $0A44                                                          ;8BAFFD;
    JSL.L Clear_DemoInput_RAM                                            ;8BB000;
    JSL.L Enable_DemoInput                                               ;8BB004;
    LDY.W #DemoInputObjects_Intro_BabyMetroidDiscovery                   ;8BB008;
    JSL.L Load_DemoInputObject                                           ;8BB00B;
    LDA.W #$0001                                                         ;8BB00F;
    STA.W $1A57                                                          ;8BB012;
    BRA Setup_Intro_CrossFade_Into_SamusGameplay                         ;8BB015;

    RTS                                                                  ;8BB017;


Setup_Intro_CrossFade_Into_SamusGameplay:
    SEP #$20                                                             ;8BB018;
    LDA.B #$06                                                           ;8BB01A;
    STA.B $69                                                            ;8BB01C;
    LDA.B #$11                                                           ;8BB01E;
    STA.B $6B                                                            ;8BB020;
    LDA.B #$02                                                           ;8BB022;
    STA.B $6F                                                            ;8BB024;
    STZ.B $72                                                            ;8BB026;
    JSL.L SpawnIntroCutsceneCrossFade_HDMAObject                         ;8BB028;
    REP #$20                                                             ;8BB02C;
    JSR.W PlaceIntroTextCaretOffScreen                                   ;8BB02E;
    LDA.W #CinematicFunction_Intro_CrossFadeToSamusGameplay              ;8BB031;
    STA.W $1F51                                                          ;8BB034;
    LDX.W #$0000                                                         ;8BB037;

.loopPalettes:
    LDA.L Palettes_Intro,X                                               ;8BB03A;
    STA.L $7E2200,X                                                      ;8BB03E;
    INX                                                                  ;8BB042;
    INX                                                                  ;8BB043;
    CPX.W #$0200                                                         ;8BB044;
    BMI .loopPalettes                                                    ;8BB047;
    JSR.W PaletteCrossFading_DecomposePaletteDataForFading               ;8BB049;
    LDX.W #$0028                                                         ;8BB04C;
    LDY.W #$0003                                                         ;8BB04F;
    JSR.W PaletteCrossFading_ClearYColorsStartingFromColorIndexX         ;8BB052;
    LDX.W #$00E0                                                         ;8BB055;
    LDY.W #$0010                                                         ;8BB058;
    JSR.W PaletteCrossFading_ClearYColorsStartingFromColorIndexX         ;8BB05B;
    LDX.W #$0180                                                         ;8BB05E;
    LDY.W #$0020                                                         ;8BB061;
    JSR.W PaletteCrossFading_ClearYColorsStartingFromColorIndexX         ;8BB064;
    LDX.W #$01E0                                                         ;8BB067;
    LDY.W #$0010                                                         ;8BB06A;
    JSR.W PaletteCrossFading_ClearYColorsStartingFromColorIndexX         ;8BB06D;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BB070;
    RTS                                                                  ;8BB073;


Instruction_HandleCreatingText_Page3:
    STZ.W $1BA1                                                          ;8BB074;
    PHB                                                                  ;8BB07C;
    PEA.W $8B00                                                          ;8BB07D;
    PLB                                                                  ;8BB080;
    PLB                                                                  ;8BB081;
    PHY                                                                  ;8BB082;
    LDY.W #Mode7Objects_IntroText_Page3_Subpage1                         ;8BB083;
    JSR.W Spawn_Mode7Objects                                             ;8BB086;
    PLY                                                                  ;8BB089;
    PLB                                                                  ;8BB08A;
    RTS                                                                  ;8BB08B;


Instruction_SpawnBlinkingMarkers_WaitForInput_Page3:
    JSR.W Instruction_SetCaretToBlink                                    ;8BB08C;
    LDA.W $09E2                                                          ;8BB08F;
    BEQ .waitForInput                                                    ;8BB092;
    PHB                                                                  ;8BB094;
    PEA.W $8B00                                                          ;8BB095;
    PLB                                                                  ;8BB098;
    PLB                                                                  ;8BB099;
    PHY                                                                  ;8BB09A;
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextNextPageArrow       ;8BB09B;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BB09E;
    PLY                                                                  ;8BB0A1;
    PLB
    LDA.W #CinematicFunc_Intro_WaitForInput_SetupBabyMetroidDelivery     ;8BB0AC;
    STA.W $1F51                                                          ;8BB0AF;
    RTS                                                                  ;8BB0B2;


.waitForInput:
    PHB
    PEA.W $8B00
    PLB
    PLB
    PHY
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextNextPageArrow
    JSR.W Spawn_CinematicSpriteObject_Y
    PLY
    PHY                                                                  ;8BB0A2;
    LDY.W #Mode7Objects_IntroText_Page3_Subpage2                         ;8BB0A3;
    JSR.W Spawn_Mode7Objects                                             ;8BB0A6;
    PLY                                                                  ;8BB0A9;
    PLB                                                                  ;8BB0AA;
    RTS                                                                  ;8BB0AB;


Instruction_HandleCreatingText_Page4:
    STZ.W $1BA1                                                          ;8BB0B3;
    PHB                                                                  ;8BB0BB;
    PEA.W $8B00                                                          ;8BB0BC;
    PLB                                                                  ;8BB0BF;
    PLB                                                                  ;8BB0C0;
    PHY                                                                  ;8BB0C1;
    LDY.W #Mode7Objects_IntroText_Page4_Subpage1                         ;8BB0C2;
    JSR.W Spawn_Mode7Objects                                             ;8BB0C5;
    PLY                                                                  ;8BB0C8;
    PLB                                                                  ;8BB0C9;
    RTS                                                                  ;8BB0CA;


Instruction_SpawnBlinkingMarkers_WaitForInput_Page4:
    JSR.W Instruction_SetCaretToBlink                                    ;8BB0CB;
    PHB                                                                  ;8BB0D3;
    PEA.W $8B00                                                          ;8BB0D4;
    PLB                                                                  ;8BB0D7;
    PLB                                                                  ;8BB0D8;
    PHY                                                                  ;8BB0D9;
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextNextPageArrow       ;8BB0DA;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BB0DD;
    PLY                                                                  ;8BB0E0;
    PHY                                                                  ;8BB0E1;
    LDY.W #Mode7Objects_IntroText_Page4_Subpage2                         ;8BB0E2;
    JSR.W Spawn_Mode7Objects                                             ;8BB0E5;
    PLY                                                                  ;8BB0E8;
    PLB                                                                  ;8BB0E9;
    RTS                                                                  ;8BB0EA;


CinematicFunc_Intro_WaitForInput_SetupBabyMetroidDelivery:
    LDA.W $1BA3                                                          ;8BB0F2;
    BEQ .timerExpired                                                    ;8BB0F5;
    DEC A                                                                ;8BB0F7;
    STA.W $1BA3                                                          ;8BB0F8;
    RTS                                                                  ;8BB0FB;


.timerExpired:
    LDA.B $8F                                                            ;8BB0FC;
    BEQ .return                                                          ;8BB0FE;
    SEP #$20                                                             ;8BB100;
    LDA.B #$58                                                           ;8BB102;
    STA.B $58                                                            ;8BB104;
    REP #$20                                                             ;8BB106;
    LDA.W #$0020                                                         ;8BB108;
    STA.W $1993                                                          ;8BB10B;
    LDA.W #$0008                                                         ;8BB10E;
    STA.W $1997                                                          ;8BB111;
    LDA.W #$007F                                                         ;8BB114;
    STA.W $1A4B                                                          ;8BB117;
    LDY.W #CinematicSpriteObjectDefinitions_BabyMetroidBeingDelivered    ;8BB11A;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BB11D;
    BRA SetupIntroCrossFadeIntoScientistCutscene                         ;8BB120;


.return:
    RTS                                                                  ;8BB122;


CinematicFunc_Intro_WaitForInput_SetupBabyMetroidExamined:
    LDA.W $1BA3                                                          ;8BB123;
    BEQ .timerExpired                                                    ;8BB126;
    DEC A                                                                ;8BB128;
    STA.W $1BA3                                                          ;8BB129;
    RTS                                                                  ;8BB12C;


.timerExpired:
    LDA.B $8F                                                            ;8BB12D;
    BEQ .return                                                          ;8BB12F;
    SEP #$20                                                             ;8BB131;
    LDA.B #$5C                                                           ;8BB133;
    STA.B $58                                                            ;8BB135;
    REP #$20                                                             ;8BB137;
    STZ.W $1993                                                          ;8BB139;
    LDA.W #$FFE8                                                         ;8BB13C;
    STA.W $1997                                                          ;8BB13F;
    LDA.W #$007F                                                         ;8BB142;
    STA.W $1A4B                                                          ;8BB145;
    LDY.W #CinematicSpriteObjectDefinitions_BabyMetroidBeingExamined     ;8BB148;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BB14B;
    BRA SetupIntroCrossFadeIntoScientistCutscene                         ;8BB14E;


.return:
    RTS                                                                  ;8BB150;


SetupIntroCrossFadeIntoScientistCutscene:
    SEP #$20                                                             ;8BB151;
    LDA.B #$06                                                           ;8BB153;
    STA.B $69                                                            ;8BB155;
    LDA.B #$11                                                           ;8BB157;
    STA.B $6B                                                            ;8BB159;
    LDA.B #$02                                                           ;8BB15B;
    STA.B $6F                                                            ;8BB15D;
    STZ.B $72                                                            ;8BB15F;
    JSL.L SpawnIntroCutsceneCrossFade_HDMAObject                         ;8BB161;
    REP #$20                                                             ;8BB165;
    JSR.W PlaceIntroTextCaretOffScreen                                   ;8BB167;
    LDA.W #CinematicFunction_Intro_CrossFadeToScientistCutscene          ;8BB16A;
    STA.W $1F51                                                          ;8BB16D;
    LDX.W #$0000                                                         ;8BB170;

.loop:
    LDA.L Palettes_Intro,X                                               ;8BB173;
    STA.L $7E2200,X                                                      ;8BB177;
    INX                                                                  ;8BB17B;
    INX                                                                  ;8BB17C;
    CPX.W #$0200                                                         ;8BB17D;
    BMI .loop                                                            ;8BB180;
    JSR.W PaletteCrossFading_DecomposePaletteDataForFading               ;8BB182;
    LDX.W #$0040                                                         ;8BB185;
    LDY.W #$0010                                                         ;8BB188;
    JSR.W PaletteCrossFading_ClearYColorsStartingFromColorIndexX         ;8BB18B;
    LDX.W #$01C0                                                         ;8BB18E;
    LDY.W #$0009                                                         ;8BB191;
    JSR.W PaletteCrossFading_ClearYColorsStartingFromColorIndexX         ;8BB194;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BB197;
    RTS                                                                  ;8BB19A;


Instruction_HandleCreatingText_Page5:
    STZ.W $1BA1                                                          ;8BB19B;
    PHB                                                                  ;8BB1A3;
    PEA.W $8B00                                                          ;8BB1A4;
    PLB                                                                  ;8BB1A7;
    PLB                                                                  ;8BB1A8;
    PHY                                                                  ;8BB1A9;
    LDY.W #Mode7Objects_IntroJaanText_Page5_Subpage1                     ;8BB1AA;
    JSR.W Spawn_Mode7Objects                                             ;8BB1AD;
    PLY                                                                  ;8BB1B0;
    PLB                                                                  ;8BB1B1;
    RTS                                                                  ;8BB1B2;


Instruction_SpawnBlinkingMarkers_WaitForInput_Page5:
    JSR.W Instruction_SetCaretToBlink                                    ;8BB1B3;
    LDA.W $09E2                                                          ;8BB1B6;
    BEQ .waitForInput                                                    ;8BB1B9;
    PHB                                                                  ;8BB1BB;
    PEA.W $8B00                                                          ;8BB1BC;
    PLB                                                                  ;8BB1BF;
    PLB                                                                  ;8BB1C0;
    PHY                                                                  ;8BB1C1;
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextNextPageArrow       ;8BB1C2;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BB1C5;
    PLY                                                                  ;8BB1C8;
    PLB
    LDA.W #CinematicFunction_Intro_WaitForInput_ClearText                ;8BB1D3;
    STA.W $1F51                                                          ;8BB1D6;
    RTS                                                                  ;8BB1D9;


.waitForInput:
    PHB
    PEA.W $8B00
    PLB
    PLB
    PHY
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextNextPageArrow
    JSR.W Spawn_CinematicSpriteObject_Y
    PLY
    PHY                                                                  ;8BB1C9;
    LDY.W #Mode7Objects_IntroText_Page5_Subpage2                         ;8BB1CA;
    JSR.W Spawn_Mode7Objects                                             ;8BB1CD;
    PLY                                                                  ;8BB1D0;
    PLB                                                                  ;8BB1D1;
    RTS                                                                  ;8BB1D2;


CinematicFunction_Intro_WaitForInput_ClearText:
    JSR.W RTS_BackgroundFLickeringEffect                                 ;8BB1DA;
    LDA.W $1BA3                                                          ;8BB1DD;
    BEQ .timerExpired                                                    ;8BB1E0;
    DEC A                                                                ;8BB1E2;
    STA.W $1BA3                                                          ;8BB1E3;
    RTS                                                                  ;8BB1E6;


.timerExpired:
    LDA.B $8F                                                            ;8BB1E7;
    BEQ .return                                                          ;8BB1E9;
    LDA.W #$007F                                                         ;8BB1EB;
    STA.W $1A4B                                                          ;8BB1EE;
    LDA.W $09E2                                                          ;8BB1F1;
    BEQ CinematicFunction_Intro_Page6                                    ;8BB1F4;
    LDA.W #CinematicFunction_Intro_Page6                                 ;8BB1F6;
    STA.W $1F51                                                          ;8BB1F9;
    JSL.L Disable_CinematicBGTilemap_Updates                             ;8BB1FC;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BB200;
    JSR.W TransferGermanFrenchTextTilesToVRAM                            ;8BB203;

.return:
    RTS                                                                  ;8BB206;


CinematicFunction_Intro_Page6:
    JSL.L Enable_CinematicBGTilemap_Updates                              ;8BB207;
    JSR.W Clear_EnglishText_Tilemap                                      ;8BB20B;
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextPage6               ;8BB20E;
    LDA.W #$4C00                                                         ;8BB211;
    JSR.W Spawn_CinematicBGObject                                        ;8BB214;
    LDA.W #RTS_8BA390                                                    ;8BB217;
    STA.W $1F51                                                          ;8BB21A;
    JSR.W RestIntroTextCaret                                             ;8BB21D;
    LDA.W #$0000                                                         ;8BB220;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BB223;
    RTS                                                                  ;8BB227;


Instruction_HandleCreatingText_Page6:
    STZ.W $1BA1                                                          ;8BB228;
    PHB                                                                  ;8BB230;
    PEA.W $8B00                                                          ;8BB231;
    PLB                                                                  ;8BB234;
    PLB                                                                  ;8BB235;
    PHY                                                                  ;8BB236;
    LDY.W #Mode7Objects_IntroText_Page6                                  ;8BB237;
    JSR.W Spawn_Mode7Objects                                             ;8BB23A;
    PLY                                                                  ;8BB23D;
    PLB                                                                  ;8BB23E;
    RTS                                                                  ;8BB23F;


Instruction_FinishIntro:
    LDA.W #CinematicFunction_Intro_Finish                                ;8BB240;
    STA.W $1F51                                                          ;8BB243;
    LDA.W #$0001                                                         ;8BB246;
    STA.W $0723                                                          ;8BB249;
    STA.W $0725                                                          ;8BB24C;
    RTS                                                                  ;8BB24F;


CinematicFunction_Intro_CrossFadeToSamusGameplay:
    LDA.W $1A49                                                          ;8BB250;
    BIT.W #$0003                                                         ;8BB253;
    BNE .decTimer                                                        ;8BB256;
    LDX.W #$0000                                                         ;8BB258;
    LDY.W #$0014                                                         ;8BB25B;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BB25E;
    LDX.W #$0060                                                         ;8BB261;
    LDY.W #$0010                                                         ;8BB264;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BB267;
    LDX.W #$01D2                                                         ;8BB26A;
    LDY.W #$0006                                                         ;8BB26D;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BB270;
    LDX.W #$0028                                                         ;8BB273;
    LDY.W #$0003                                                         ;8BB276;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BB279;
    LDX.W #$00E0                                                         ;8BB27C;
    LDY.W #$0010                                                         ;8BB27F;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BB282;
    LDX.W #$0180                                                         ;8BB285;
    LDY.W #$0020                                                         ;8BB288;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BB28B;
    LDX.W #$01E0                                                         ;8BB28E;
    LDY.W #$0010                                                         ;8BB291;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BB294;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BB297;

.decTimer:
    DEC.W $1A49                                                          ;8BB29A;
    BPL .return                                                          ;8BB29D;
    SEP #$20                                                             ;8BB29F;
    LDA.B #$15                                                           ;8BB2A1;
    STA.B $69                                                            ;8BB2A3;
    STZ.B $6B                                                            ;8BB2A5;
    STZ.B $6F                                                            ;8BB2A7;
    REP #$20                                                             ;8BB2A9;
    LDX.W #$0100                                                         ;8BB2AB;
    LDA.W #$002F                                                         ;8BB2AE;

.loop:
    STA.L $7E3000,X                                                      ;8BB2B1;
    INX                                                                  ;8BB2B5;
    INX                                                                  ;8BB2B6;
    CPX.W #$0600                                                         ;8BB2B7;
    BMI .loop                                                            ;8BB2BA;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BB2BC;
    LDA.W #CinematicFunction_Nothing                                     ;8BB2BF;
    STA.W $1F51                                                          ;8BB2C2;
    LDA.W $1A57                                                          ;8BB2C5;
    BPL .return                                                          ;8BB2C8;
    LDY.W #PaletteFXObjects_OldMotherBrainFightBackgroundLights          ;8BB2CA;
    JSL.L Spawn_PaletteFXObject                                          ;8BB2CD;

.return:
    RTS                                                                  ;8BB2D1;


CinematicFunction_Intro_CrossFadeToScientistCutscene:
    LDA.W $1A49                                                          ;8BB2D2;
    BIT.W #$0003                                                         ;8BB2D5;
    BNE .decTimer                                                        ;8BB2D8;
    LDX.W #$0000                                                         ;8BB2DA;
    LDY.W #$0014                                                         ;8BB2DD;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BB2E0;
    LDX.W #$0060                                                         ;8BB2E3;
    LDY.W #$0010                                                         ;8BB2E6;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BB2E9;
    LDX.W #$01D2                                                         ;8BB2EC;
    LDY.W #$0006                                                         ;8BB2EF;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BB2F2;
    LDX.W #$0040                                                         ;8BB2F5;
    LDY.W #$0010                                                         ;8BB2F8;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BB2FB;
    LDX.W #$01C0                                                         ;8BB2FE;
    LDY.W #$0009                                                         ;8BB301;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BB304;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BB307;

.decTimer:
    DEC.W $1A49                                                          ;8BB30A;
    BPL .return                                                          ;8BB30D;
    SEP #$20                                                             ;8BB30F;
    LDA.B #$15                                                           ;8BB311;
    STA.B $69                                                            ;8BB313;
    STZ.B $6B                                                            ;8BB315;
    STZ.B $6F                                                            ;8BB317;
    REP #$20                                                             ;8BB319;
    LDX.W #$0100                                                         ;8BB31B;
    LDA.W #$002F                                                         ;8BB31E;

.loopEnglishText:
    STA.L $7E3000,X                                                      ;8BB321;
    INX                                                                  ;8BB325;
    INX                                                                  ;8BB326;
    CPX.W #$0600                                                         ;8BB327;
    BMI .loopEnglishText                                                 ;8BB32A;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BB32C;
    LDA.W #CinematicFunction_Nothing                                     ;8BB32F;
    STA.W $1F51                                                          ;8BB332;

.return:
    RTS                                                                  ;8BB335;


Instruction_StartIntroPage2:
    LDA.W #CinematicFunction_Intro_Page2                                 ;8BB336;
    STA.W $1F51                                                          ;8BB339;
    BRA ClearGermanFrenchTextTiles_DisableCinematicBGTilemapUpdates      ;8BB33C;


Instruction_StartIntroPage3:
    LDA.W #CinematicFunction_Intro_Page3                                 ;8BB33E;
    STA.W $1F51                                                          ;8BB341;
    BRA ClearGermanFrenchTextTiles_DisableCinematicBGTilemapUpdates      ;8BB344;


Instruction_StartIntroPage4:
    LDA.W #CinematicFunction_Intro_Page4                                 ;8BB346;
    STA.W $1F51                                                          ;8BB349;
    BRA ClearGermanFrenchTextTiles_DisableCinematicBGTilemapUpdates      ;8BB34C;


Instruction_StartIntroPage5:
    LDA.W #CinematicFunction_Intro_Page5                                 ;8BB34E;
    STA.W $1F51                                                          ;8BB351;

ClearGermanFrenchTextTiles_DisableCinematicBGTilemapUpdates:
    JSL.L Disable_CinematicBGTilemap_Updates                             ;8BB354;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BB358;
    JSR.W TransferGermanFrenchTextTilesToVRAM                            ;8BB35B;
    RTS                                                                  ;8BB35E;


CinematicFunction_Intro_Page2:
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextPage2               ;8BB35F;
    LDA.W #$4C00                                                         ;8BB362;
    JSR.W Spawn_CinematicBGObject                                        ;8BB365;
    LDA.W #CinematicFunction_Intro_CrossFadeFromSamusGameplay            ;8BB368;
    STA.W $1F51                                                          ;8BB36B;
    BRA Setup_Intro_CrossFade_Into_Text                                  ;8BB36E;


CinematicFunction_Intro_Page3:
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextPage3               ;8BB370;
    LDA.W #$4C00                                                         ;8BB373;
    JSR.W Spawn_CinematicBGObject                                        ;8BB376;
    LDA.W #CinematicFunction_Intro_CrossFadeFromSamusGameplay            ;8BB379;
    STA.W $1F51                                                          ;8BB37C;
    BRA Setup_Intro_CrossFade_Into_Text                                  ;8BB37F;


CinematicFunction_Intro_Page4:
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextPage4               ;8BB381;
    LDA.W #$4C00                                                         ;8BB384;
    JSR.W Spawn_CinematicBGObject                                        ;8BB387;
    LDA.W #CinematicFunction_Intro_CrossFadeFromScientistCutscene        ;8BB38A;
    STA.W $1F51                                                          ;8BB38D;
    BRA Setup_Intro_CrossFade_Into_Text                                  ;8BB390;


CinematicFunction_Intro_Page5:
    LDY.W #CinematicSpriteObjectDefinitions_IntroTextPage5               ;8BB392;
    LDA.W #$4C00                                                         ;8BB395;
    JSR.W Spawn_CinematicBGObject                                        ;8BB398;
    LDA.W #CinematicFunction_Intro_CrossFadeFromScientistCutscene        ;8BB39B;
    STA.W $1F51                                                          ;8BB39E;

Setup_Intro_CrossFade_Into_Text:
    SEP #$20                                                             ;8BB3A1;
    LDA.B #$06                                                           ;8BB3A3;
    STA.B $69                                                            ;8BB3A5;
    LDA.B #$11                                                           ;8BB3A7;
    STA.B $6B                                                            ;8BB3A9;
    LDA.B #$02                                                           ;8BB3AB;
    STA.B $6F                                                            ;8BB3AD;
    STZ.B $72                                                            ;8BB3AF;
    REP #$20                                                             ;8BB3B1;
    LDX.W #$0000                                                         ;8BB3B3;

.loopPalettes:
    LDA.L Palettes_Intro,X                                               ;8BB3B6;
    STA.L $7E2200,X                                                      ;8BB3BA;
    INX                                                                  ;8BB3BE;
    INX                                                                  ;8BB3BF;
    CPX.W #$0200                                                         ;8BB3C0;
    BMI .loopPalettes                                                    ;8BB3C3;
    JSR.W PaletteCrossFading_DecomposePaletteDataForFading               ;8BB3C5;
    LDX.W #$0000                                                         ;8BB3C8;
    LDY.W #$0010                                                         ;8BB3CB;
    JSR.W PaletteCrossFading_ClearYColorsStartingFromColorIndexX         ;8BB3CE;
    LDX.W #$0060                                                         ;8BB3D1;
    LDY.W #$0010                                                         ;8BB3D4;
    JSR.W PaletteCrossFading_ClearYColorsStartingFromColorIndexX         ;8BB3D7;
    LDX.W #$01D2                                                         ;8BB3DA;
    LDY.W #$0006                                                         ;8BB3DD;
    JSR.W PaletteCrossFading_ClearYColorsStartingFromColorIndexX         ;8BB3E0;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BB3E3;
    LDA.W #$007F                                                         ;8BB3E6;
    STA.W $1A49                                                          ;8BB3E9;
    JSL.L Enable_CinematicBGTilemap_Updates                              ;8BB3EC;
    JSR.W RestIntroTextCaret                                             ;8BB3F0;
    RTS                                                                  ;8BB3F3;


CinematicFunction_Intro_CrossFadeFromSamusGameplay:
    LDA.W $1A4B                                                          ;8BB3F4;
    BIT.W #$0003                                                         ;8BB3F7;
    BNE .decTimer                                                        ;8BB3FA;
    LDX.W #$0000                                                         ;8BB3FC;
    LDY.W #$0010                                                         ;8BB3FF;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BB402;
    LDX.W #$0060                                                         ;8BB405;
    LDY.W #$0010                                                         ;8BB408;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BB40B;
    LDX.W #$01D2                                                         ;8BB40E;
    LDY.W #$0006                                                         ;8BB411;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BB414;
    LDX.W #$0028                                                         ;8BB417;
    LDY.W #$0003                                                         ;8BB41A;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BB41D;
    LDX.W #$00E0                                                         ;8BB420;
    LDY.W #$0010                                                         ;8BB423;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BB426;
    LDX.W #$0180                                                         ;8BB429;
    LDY.W #$0020                                                         ;8BB42C;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BB42F;
    LDX.W #$01E0                                                         ;8BB432;
    LDY.W #$0010                                                         ;8BB435;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BB438;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BB43B;

.decTimer:
    DEC.W $1A4B                                                          ;8BB43E;
    BPL .return                                                          ;8BB441;
    SEP #$20                                                             ;8BB443;
    LDA.B #$16                                                           ;8BB445;
    STA.B $69                                                            ;8BB447;
    STZ.B $6B                                                            ;8BB449;
    STZ.B $6F                                                            ;8BB44B;
    STZ.B $72                                                            ;8BB44D;
    REP #$20                                                             ;8BB44F;
    LDA.W #CinematicFunction_Nothing                                     ;8BB451;
    STA.W $1F51                                                          ;8BB454;

.return:
    RTS                                                                  ;8BB457;


CinematicFunction_Intro_CrossFadeFromScientistCutscene:
    LDA.W $1A4B                                                          ;8BB458;
    BIT.W #$0003                                                         ;8BB45B;
    BNE .decTimer                                                        ;8BB45E;
    LDX.W #$0000                                                         ;8BB460;
    LDY.W #$0010                                                         ;8BB463;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BB466;
    LDX.W #$0060                                                         ;8BB469;
    LDY.W #$0010                                                         ;8BB46C;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BB46F;
    LDX.W #$01D2                                                         ;8BB472;
    LDY.W #$0006                                                         ;8BB475;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BB478;
    LDX.W #$0040                                                         ;8BB47B;
    LDY.W #$0010                                                         ;8BB47E;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BB481;
    LDX.W #$01C0                                                         ;8BB484;
    LDY.W #$0009                                                         ;8BB487;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BB48A;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BB48D;

.decTimer:
    DEC.W $1A4B                                                          ;8BB490;
    BPL .return                                                          ;8BB493;
    SEP #$20                                                             ;8BB495;
    LDA.B #$16                                                           ;8BB497;
    STA.B $69                                                            ;8BB499;
    STZ.B $6B                                                            ;8BB49B;
    STZ.B $6F                                                            ;8BB49D;
    STZ.B $72                                                            ;8BB49F;
    REP #$20                                                             ;8BB4A1;
    LDX.W #$0000                                                         ;8BB4A3;

.loopPalettes:
    LDA.L Palettes_Intro_CrossFade,X                                     ;8BB4A6;
    STA.L $7EC1C0,X                                                      ;8BB4AA;
    INX                                                                  ;8BB4AE;
    INX                                                                  ;8BB4AF;
    CPX.W #$000E                                                         ;8BB4B0;
    BMI .loopPalettes                                                    ;8BB4B3;
    LDA.W #CinematicFunction_Nothing                                     ;8BB4B5;
    STA.W $1F51                                                          ;8BB4B8;

.return:
    RTS                                                                  ;8BB4BB;


PreInstruction_CinematicBGObject_SamusBlinking:
    LDA.W $1F51                                                          ;8BB4BC;
    CMP.W #CinematicFunction_Intro_Page6                                 ;8BB4BF;
    BEQ .notPage6                                                        ;8BB4C2;
    CMP.W #RTS_8BA390                                                    ;8BB4C4;
    BNE .return                                                          ;8BB4C7;

.notPage6:
    LDA.W #CinematicBGObjectInstLists_SamusBlinkingPage6                 ;8BB4C9;
    STA.W $19CD,X                                                        ;8BB4CC;
    LDA.W #$0001                                                         ;8BB4CF;
    STA.W $19DD,X                                                        ;8BB4D2;
    LDA.W #RTS_8B93D9                                                    ;8BB4D5;
    STA.W $19D5,X                                                        ;8BB4D8;

.return:
    RTS                                                                  ;8BB4DB;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_CinematicBGObject_8BB4DC:
    LDA.W $1B3B                                                          ;8BB4DC;
    CMP.W #InstList_IntroTextCaret_Blink                                 ;8BB4DF;
    BMI .return                                                          ;8BB4E2;
    LDA.W #$0001                                                         ;8BB4E4;
    STA.W $19DD,X                                                        ;8BB4E7;

.return:
    RTS                                                                  ;8BB4EA;
endif


RTS_BackgroundFLickeringEffect:
    RTS                                                                  ;8BB710;

    LDA.W $05B6                                                          ;8BB711;
    BIT.W #$0001                                                         ;8BB714;
    BEQ .enableBG2                                                       ;8BB717;
    SEP #$20                                                             ;8BB719;
    LDA.B $69                                                            ;8BB71B;
    AND.B #$FD                                                           ;8BB71D;
    STA.B $69                                                            ;8BB71F;
    REP #$20                                                             ;8BB721;
    RTS                                                                  ;8BB723;


.enableBG2:
    SEP #$20                                                             ;8BB724;
    LDA.B $69                                                            ;8BB726;
    ORA.B #$02                                                           ;8BB728;
    STA.B $69                                                            ;8BB72A;
    REP #$20                                                             ;8BB72C;
    RTS                                                                  ;8BB72E;


CinematicFunction_Intro_Finish:
    JSL.L HandleFadingOut                                                ;8BB72F;
    SEP #$20                                                             ;8BB733;
    LDA.B $51                                                            ;8BB735;
    CMP.B #$80                                                           ;8BB737;
    BNE .return                                                          ;8BB739;
    JSL.L EnableNMI                                                      ;8BB73B;
    REP #$20                                                             ;8BB73F;
    STZ.W $0723                                                          ;8BB741;
    STZ.W $0725                                                          ;8BB744;
    STZ.B $B5                                                            ;8BB747;
    STZ.B $B9                                                            ;8BB749;
    STZ.B $B7                                                            ;8BB74B;
    STZ.B $BB                                                            ;8BB74D;
    STZ.W $198D                                                          ;8BB74F;
    LDA.W #$1C1F                                                         ;8BB752;
    DEC A                                                                ;8BB755;
    DEC A                                                                ;8BB756;
    SEC                                                                  ;8BB757;
    SBC.W #$198D                                                         ;8BB758;
    TAX                                                                  ;8BB75B;

.loop:
    STZ.W $198D,X                                                        ;8BB75C;
    DEX                                                                  ;8BB75F;
    DEX                                                                  ;8BB760;
    BPL .loop                                                            ;8BB761;
    LDA.W #CinematicFunction_FlyToCeres_Initial                          ;8BB763;
    STA.W $1F51                                                          ;8BB766;
    JSR.W Recover_Previous_Button_Assignments                            ;8BB769;
    STZ.W $09C8                                                          ;8BB76C;
    STZ.W $09C6                                                          ;8BB76F;

.return:
    RTS                                                                  ;8BB772;


InitFunction_CinematicSpriteObject_IntroMotherBrain:
    LDA.W #$0038                                                         ;8BB773;
    STA.W $1A7D,Y                                                        ;8BB776;
    LDA.W #$006F                                                         ;8BB779;
    STA.W $1A9D,Y                                                        ;8BB77C;
    LDA.W #$0E00                                                         ;8BB77F;
    STA.W $1ABD,Y                                                        ;8BB782;
    RTS                                                                  ;8BB785;


PreInstruction_CinematicSpriteObject_IntroMotherBrain:
    JSR.W IntroMotherBrain_HurtFlashHandling                             ;8BB786;
    LDY.W #$0008                                                         ;8BB789;

.loop:
    LDA.W $0C18,Y                                                        ;8BB78C;
    AND.W #$0FFF                                                         ;8BB78F;
    CMP.W #$0100                                                         ;8BB792;
    BEQ .missile                                                         ;8BB795;
    DEY                                                                  ;8BB797;
    DEY                                                                  ;8BB798;
    BPL .loop                                                            ;8BB799;
    RTS                                                                  ;8BB79B;


.missile:
    LDA.W $0B64,Y                                                        ;8BB79C;
    CMP.W #$0054                                                         ;8BB79F;
    BPL .return                                                          ;8BB7A2;
    PHX                                                                  ;8BB7A4;
    TYX                                                                  ;8BB7A5;
    JSL.L Kill_Projectile                                                ;8BB7A6;
    PLX                                                                  ;8BB7AA;
    LDA.W #$0008                                                         ;8BB7AB;
    STA.W $1ADD,X                                                        ;8BB7AE;
    LDA.W $1B7D,X                                                        ;8BB7B1;
    INC A                                                                ;8BB7B4;
    STA.W $1B7D,X                                                        ;8BB7B5;
    CMP.W #$0004                                                         ;8BB7B8;
    BNE .return                                                          ;8BB7BB;
    STZ.W $1B7D,X                                                        ;8BB7BD;
    LDA.W #PreInstruction_IntroMotherBrain_Exploding                     ;8BB7C0;
    STA.W $1B3D,X                                                        ;8BB7C3;
    LDA.W #$0000                                                         ;8BB7C6;
    LDY.W #CinematicSpriteObjectDefs_IntroMotherBrainExplosion_Small     ;8BB7C9;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BB7CC;
    LDA.W #$0001                                                         ;8BB7CF;
    LDY.W #CinematicSpriteObjectDefs_IntroMotherBrainExplosion_Small     ;8BB7D2;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BB7D5;
    LDA.W #$0002                                                         ;8BB7D8;
    LDY.W #CinematicSpriteObjectDefs_IntroMotherBrainExplosion_Small     ;8BB7DB;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BB7DE;
    LDA.W #$0000                                                         ;8BB7E1;
    LDY.W #CinematicSpriteObjectDefs_IntroMotherBrainExplosion_Big       ;8BB7E4;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BB7E7;
    LDA.W #$0001                                                         ;8BB7EA;
    LDY.W #CinematicSpriteObjectDefs_IntroMotherBrainExplosion_Big       ;8BB7ED;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BB7F0;
    LDA.W #$0002                                                         ;8BB7F3;
    LDY.W #CinematicSpriteObjectDefs_IntroMotherBrainExplosion_Big       ;8BB7F6;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BB7F9;
    LDA.W #$0003                                                         ;8BB7FC;
    LDY.W #CinematicSpriteObjectDefs_IntroMotherBrainExplosion_Big       ;8BB7FF;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BB802;
    LDA.W #$0004                                                         ;8BB805;
    LDY.W #CinematicSpriteObjectDefs_IntroMotherBrainExplosion_Big       ;8BB808;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BB80B;

.return:
    RTS                                                                  ;8BB80E;


PreInstruction_IntroMotherBrain_Exploding:
    JSR.W IntroMotherBrain_HurtFlashHandling                             ;8BB80F;
    JSR.W IntroMotherBrain_ScreenShaking                                 ;8BB812;
    LDA.W $1B7D,X                                                        ;8BB815;
    INC A                                                                ;8BB818;
    STA.W $1B7D,X                                                        ;8BB819;
    CMP.W #$0080                                                         ;8BB81C;
    BMI .return                                                          ;8BB81F;
    LDA.W #$0001                                                         ;8BB821;
    STA.W $1B5D,X                                                        ;8BB824;
    LDA.W #InstList_IntroMotherBrain_StartPage2_0                        ;8BB827;
    STA.W $1B1D,X                                                        ;8BB82A;

.return:
    RTS                                                                  ;8BB82D;


PreInstruction_IntroMotherBrain_CrossFading:
    JSR.W IntroMotherBrain_ScreenShaking                                 ;8BB82E;
    LDA.W $1A4B                                                          ;8BB831;
    BNE .return                                                          ;8BB834;
    LDA.W #$0001                                                         ;8BB836;
    STA.W $1B5D,X                                                        ;8BB839;
    LDA.W #InstList_CinematicSpriteObject_Delete                         ;8BB83C;
    STA.W $1B1D,X                                                        ;8BB83F;
    STZ.W $1A57                                                          ;8BB842;

.return:
    RTS                                                                  ;8BB845;


IntroMotherBrain_HurtFlashHandling:
    LDA.W $1ADD,X                                                        ;8BB846;
    BEQ .return                                                          ;8BB849;
    BIT.W #$0001                                                         ;8BB84B;
    BNE +                                                                ;8BB84E;
    PHX                                                                  ;8BB850;
    LDX.W #$001E                                                         ;8BB851;
    LDA.W #$7FFF                                                         ;8BB854;

.loopWhitePalette:
    STA.L $7EC1E0,X                                                      ;8BB857;
    DEX                                                                  ;8BB85B;
    DEX                                                                  ;8BB85C;
    BPL .loopWhitePalette                                                ;8BB85D;
    PLX                                                                  ;8BB85F;
    BRA .decFlashTimer                                                   ;8BB860;


  + PHX                                                                  ;8BB862;
    LDX.W #$001E                                                         ;8BB863;

.loopPalette:
    LDA.L Palettes_Intro_MotherBrain,X                                   ;8BB866;
    STA.L $7EC1E0,X                                                      ;8BB86A;
    DEX                                                                  ;8BB86E;
    DEX                                                                  ;8BB86F;
    BPL .loopPalette                                                     ;8BB870;
    PLX                                                                  ;8BB872;

.decFlashTimer:
    DEC.W $1ADD,X                                                        ;8BB873;

.return:
    RTS                                                                  ;8BB876;


IntroMotherBrain_ScreenShaking:
    LDA.W $1A51                                                          ;8BB877;
    BIT.W #$0001                                                         ;8BB87A;
    BNE .subtract4                                                       ;8BB87D;
    LDA.W $1997                                                          ;8BB87F;
    CLC                                                                  ;8BB882;
    ADC.W #$0004                                                         ;8BB883;
    STA.W $1997                                                          ;8BB886;
    BRA .return                                                          ;8BB889;


.subtract4:
    LDA.W $1997                                                          ;8BB88B;
    SEC                                                                  ;8BB88E;
    SBC.W #$0004                                                         ;8BB88F;
    STA.W $1997                                                          ;8BB892;

.return:
    RTS                                                                  ;8BB895;


InitFunction_CinematicSpriteObject_IntroRinka:
    LDA.W $1B9D                                                          ;8BB896;
    STA.W $1B7D,Y                                                        ;8BB899;
    ASL A                                                                ;8BB89C;
    TAX                                                                  ;8BB89D;
    LDA.W .Xposition,X                                                   ;8BB89E;
    STA.W $1A7D,Y                                                        ;8BB8A1;
    LDA.W .Yposition,X                                                   ;8BB8A4;
    SEC                                                                  ;8BB8A7;
    SBC.W #$0008                                                         ;8BB8A8;
    STA.W $1A9D,Y                                                        ;8BB8AB;
    LDA.W #$0E00                                                         ;8BB8AE;
    STA.W $1ABD,Y                                                        ;8BB8B1;
    RTS                                                                  ;8BB8B4;


.Xposition:
    dw $0070,$00C0,$0080,$00E8                                           ;8BB8B5;

.Yposition:
    dw $0050,$0040,$0038,$0058                                           ;8BB8BD;

Instruction_StartMoving_IntroRinka:
    LDA.W $1B7D,X                                                        ;8BB8C5;
    BNE .missesSamus                                                     ;8BB8C8;
    LDA.W #PreInstruction_IntroRinka_Moving_HitsSamus                    ;8BB8CA;
    STA.W $1B3D,X                                                        ;8BB8CD;
    RTS                                                                  ;8BB8D0;


.missesSamus:
    LDA.W #PreInstruction_IntroRinka_Moving_MissesSamus                  ;8BB8D1;
    STA.W $1B3D,X                                                        ;8BB8D4;
    RTS                                                                  ;8BB8D7;


PreInstruction_IntroRinka_Moving_HitsSamus:
    LDA.W $1ADD,X                                                        ;8BB8D8;
    CLC                                                                  ;8BB8DB;
    ADC.W #$8000                                                         ;8BB8DC;
    STA.W $1ADD,X                                                        ;8BB8DF;
    LDA.W $1A7D,X                                                        ;8BB8E2;
    ADC.W #$0000                                                         ;8BB8E5;
    STA.W $1A7D,X                                                        ;8BB8E8;
    LDA.W $1AFD,X                                                        ;8BB8EB;
    CLC                                                                  ;8BB8EE;
    ADC.W #$8000                                                         ;8BB8EF;
    STA.W $1AFD,X                                                        ;8BB8F2;
    LDA.W $1A9D,X                                                        ;8BB8F5;
    ADC.W #$0000                                                         ;8BB8F8;
    STA.W $1A9D,X                                                        ;8BB8FB;
    LDA.W $0AF6                                                          ;8BB8FE;
    SEC                                                                  ;8BB901;
    SBC.W #$0005                                                         ;8BB902;
    STA.B $12                                                            ;8BB905;
    LDA.W $1A7D,X                                                        ;8BB907;
    CLC                                                                  ;8BB90A;
    ADC.W #$0008                                                         ;8BB90B;
    CMP.B $12                                                            ;8BB90E;
    BMI .exploding                                                       ;8BB910;
    LDA.W #$000B                                                         ;8BB912;
    STA.W $18A8                                                          ;8BB915;
    LDA.W #$000B                                                         ;8BB918;
    STA.W $18AA                                                          ;8BB91B;
    LDA.W #$0001                                                         ;8BB91E;
    STA.W $0A54                                                          ;8BB921;
    BRA .delete                                                          ;8BB924;


.exploding:
    LDA.W $1B3D                                                          ;8BB926;
    CMP.W #PreInstruction_IntroMotherBrain_Exploding                     ;8BB929;
    BNE .return                                                          ;8BB92C;

.delete:
    LDA.W #$0001                                                         ;8BB92E;
    STA.W $1B5D,X                                                        ;8BB931;
    LDA.W #InstList_CinematicSpriteObject_Delete                         ;8BB934;
    STA.W $1B1D,X                                                        ;8BB937;

.return:
    RTS                                                                  ;8BB93A;


PreInstruction_IntroRinka_Moving_MissesSamus:
    LDA.W $1B7D,X                                                        ;8BB93B;
    ASL A                                                                ;8BB93E;
    TAY                                                                  ;8BB93F;
    LDA.W $1ADD,X                                                        ;8BB940;
    CLC                                                                  ;8BB943;
    ADC.W #$8000                                                         ;8BB944;
    STA.W $1ADD,X                                                        ;8BB947;
    LDA.W $1A7D,X                                                        ;8BB94A;
    ADC.W .Xvelocities,Y                                                 ;8BB94D;
    STA.W $1A7D,X                                                        ;8BB950;
    LDA.W $1AFD,X                                                        ;8BB953;
    CLC                                                                  ;8BB956;
    ADC.W #$8000                                                         ;8BB957;
    STA.W $1AFD,X                                                        ;8BB95A;
    LDA.W $1A9D,X                                                        ;8BB95D;
    ADC.W #$0000                                                         ;8BB960;
    STA.W $1A9D,X                                                        ;8BB963;
    CMP.W #$0010                                                         ;8BB966;
    BMI .delete                                                          ;8BB969;
    CMP.W #$00D0                                                         ;8BB96B;
    BPL .delete                                                          ;8BB96E;
    LDA.W $1B3D                                                          ;8BB970;
    CMP.W #PreInstruction_IntroMotherBrain_Exploding                     ;8BB973;
    BNE .return                                                          ;8BB976;

.delete:
    LDA.W #$0001                                                         ;8BB978;
    STA.W $1B5D,X                                                        ;8BB97B;
    LDA.W #InstList_CinematicSpriteObject_Delete                         ;8BB97E;
    STA.W $1B1D,X                                                        ;8BB981;

.return:
    RTS                                                                  ;8BB984;


.Xvelocities:
    dw $0000,$FFFF,$0000,$FFFF                                           ;8BB985;

InitFunc_CinematicSpriteObject_IntroMotherBrainExplosion_Big:
    LDA.W $1B9D                                                          ;8BB98D;
    STA.W $1B7D,Y                                                        ;8BB990;
    ASL A                                                                ;8BB993;
    TAX                                                                  ;8BB994;
    LDA.W #$0038                                                         ;8BB995;
    CLC                                                                  ;8BB998;
    ADC.W .Xposition,X                                                   ;8BB999;
    STA.W $1A7D,Y                                                        ;8BB99C;
    LDA.W #$006F                                                         ;8BB99F;
    CLC                                                                  ;8BB9A2;
    ADC.W .Yposition,X                                                   ;8BB9A3;
    STA.W $1A9D,Y                                                        ;8BB9A6;
    LDA.W .instructionTimer,X                                            ;8BB9A9;
    STA.W $1B5D,Y                                                        ;8BB9AC;
    LDA.W #$0A00                                                         ;8BB9AF;
    STA.W $1ABD,Y                                                        ;8BB9B2;
    RTS                                                                  ;8BB9B5;


.Xposition:
    dw $0000,$0010,$FFF0,$FFF8,$0008                                     ;8BB9B6;

.Yposition:
    dw $0000,$FFF0,$0008,$FFF0,$0008                                     ;8BB9C0;

.instructionTimer:
    dw $0001,$0010,$0020,$0030,$0040                                     ;8BB9CA;

InitFunc_CineSpriteObject_IntroMotherBrainExplosion_Small:
    LDA.W $1B9D                                                          ;8BB9D4;
    STA.W $1B7D,Y                                                        ;8BB9D7;
    ASL A                                                                ;8BB9DA;
    TAX                                                                  ;8BB9DB;
    LDA.W #$0038                                                         ;8BB9DC;
    CLC                                                                  ;8BB9DF;
    ADC.W .Xposition,X                                                   ;8BB9E0;
    STA.W $1A7D,Y                                                        ;8BB9E3;
    LDA.W #$006F                                                         ;8BB9E6;
    CLC                                                                  ;8BB9E9;
    ADC.W .Yposition,X                                                   ;8BB9EA;
    STA.W $1A9D,Y                                                        ;8BB9ED;
    LDA.W .instructionTimer,X                                            ;8BB9F0;
    STA.W $1B5D,Y                                                        ;8BB9F3;
    LDA.W #$0A00                                                         ;8BB9F6;
    STA.W $1ABD,Y                                                        ;8BB9F9;
    RTS                                                                  ;8BB9FC;

.Xposition:
    dw $0010,$FFF0,$FFF0                                                 ;8BB9FD;

.Yposition:
    dw $0000,$0004,$FFF8                                                 ;8BBA03;

.instructionTimer:
    dw $0001,$0008,$0010                                                 ;8BBA09;


PreInst_CinematicSpriteObject_IntroMotherBrainExplosion:
    LDA.W $1A4B                                                          ;8BBA0F;
    BNE .return                                                          ;8BBA12;
    LDA.W #$0001                                                         ;8BBA14;
    STA.W $1B5D,X                                                        ;8BBA17;
    LDA.W #InstList_CinematicSpriteObject_Delete                         ;8BBA1A;
    STA.W $1B1D,X                                                        ;8BBA1D;

.return:
    RTS                                                                  ;8BBA20;


Instruction_Spawn_IntroRinkas_0_1:
    PHY                                                                  ;8BBA21;
    LDA.W #$0000                                                         ;8BBA22;
    LDY.W #CinematicSpriteObjectDefinitions_IntroRinka                   ;8BBA25;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BBA28;
    LDA.W #$0001                                                         ;8BBA2B;
    LDY.W #CinematicSpriteObjectDefinitions_IntroRinka                   ;8BBA2E;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BBA31;
    PLY                                                                  ;8BBA34;
    RTS                                                                  ;8BBA35;


Instruction_Spawn_IntroRinkas_2_3:
    PHY                                                                  ;8BBA36;
    LDA.W #$0002                                                         ;8BBA37;
    LDY.W #CinematicSpriteObjectDefinitions_IntroRinka                   ;8BBA3A;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BBA3D;
    LDA.W #$0003                                                         ;8BBA40;
    LDY.W #CinematicSpriteObjectDefinitions_IntroRinka                   ;8BBA43;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BBA46;
    PLY                                                                  ;8BBA49;
    RTS                                                                  ;8BBA4A;


InitFunction_CinematicSpriteObject_ConfusedBabyMetroid:
    LDA.W #$0070                                                         ;8BBA4B;
    STA.W $1A7D,Y                                                        ;8BBA4E;
    LDA.W #$009B                                                         ;8BBA51;
    STA.W $1A9D,Y                                                        ;8BBA54;
    LDA.W #$0E00                                                         ;8BBA57;
    STA.W $1ABD,Y                                                        ;8BBA5A;
    RTS                                                                  ;8BBA5D;


PreInstruction_CinematicSpriteObject_ConfusedBabyMetroid:
    LDA.W $1B1F,X                                                        ;8BBA5E;
    CMP.W #InstList_MetroidEggHatching_2                                 ;8BBA61;
    BMI .return                                                          ;8BBA64;
    LDA.W #PreInstruction_ConfusedBabyMetroid_Hatched                    ;8BBA66;
    STA.W $1B3D,X                                                        ;8BBA69;
    STZ.W $1A4D                                                          ;8BBA6C;
    STZ.W $1A4F                                                          ;8BBA6F;

.return:
    RTS                                                                  ;8BBA72;


PreInstruction_ConfusedBabyMetroid_Hatched:
    LDA.W $1A9D,X                                                        ;8BBA73;
    CMP.W #$0091                                                         ;8BBA76;
    BNE +                                                                ;8BBA79;
    LDA.W #$0000                                                         ;8BBA7B;
    LDY.W #CinematicSpriteObjectDefinitions_MetroidEggSlimeDrops         ;8BBA7E;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BBA81;
    LDA.W #$0001                                                         ;8BBA84;
    LDY.W #CinematicSpriteObjectDefinitions_MetroidEggSlimeDrops         ;8BBA87;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BBA8A;
    LDA.W #$0002                                                         ;8BBA8D;
    LDY.W #CinematicSpriteObjectDefinitions_MetroidEggSlimeDrops         ;8BBA90;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BBA93;
    LDA.W #$0003                                                         ;8BBA96;
    LDY.W #CinematicSpriteObjectDefinitions_MetroidEggSlimeDrops         ;8BBA99;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BBA9C;
    LDA.W #$0023                                                         ;8BBA9F;
    JSL.L QueueSound_Lib3_Max6                                           ;8BBAA2;

  + LDA.W $0AFA                                                          ;8BBAA6;
    SEC                                                                  ;8BBAA9;
    SBC.W #$0020                                                         ;8BBAAA;
    CMP.W $1A9D,X                                                        ;8BBAAD;
    BMI +                                                                ;8BBAB0;
    LDA.W $1A4F                                                          ;8BBAB2;
    CMP.W #$0220                                                         ;8BBAB5;
    BPL .setYVelocity                                                    ;8BBAB8;
    CLC                                                                  ;8BBABA;
    ADC.W #$0020                                                         ;8BBABB;
    STA.W $1A4F                                                          ;8BBABE;
    BRA .setYVelocity                                                    ;8BBAC1;


  + LDA.W $1A4F                                                          ;8BBAC3;
    CMP.W #$FDE1                                                         ;8BBAC6;
    BMI .setYVelocity                                                    ;8BBAC9;
    SEC                                                                  ;8BBACB;
    SBC.W #$0020                                                         ;8BBACC;
    STA.W $1A4F                                                          ;8BBACF;

.setYVelocity:
    LDA.W $1A4F                                                          ;8BBAD2;
    XBA                                                                  ;8BBAD5;
    PHA                                                                  ;8BBAD6;
    AND.W #$FF00                                                         ;8BBAD7;
    STA.B $14                                                            ;8BBADA;
    PLA                                                                  ;8BBADC;
    AND.W #$00FF                                                         ;8BBADD;
    BIT.W #$0080                                                         ;8BBAE0;
    BEQ +                                                                ;8BBAE3;
    ORA.W #$FF00                                                         ;8BBAE5;

  + STA.B $12                                                            ;8BBAE8;
    LDA.W $1AFD,X                                                        ;8BBAEA;
    CLC                                                                  ;8BBAED;
    ADC.B $14                                                            ;8BBAEE;
    STA.W $1AFD,X                                                        ;8BBAF0;
    LDA.W $1A9D,X                                                        ;8BBAF3;
    ADC.B $12                                                            ;8BBAF6;
    STA.W $1A9D,X                                                        ;8BBAF8;
    LDA.W $1A4F                                                          ;8BBAFB;
    BMI .return                                                          ;8BBAFE;
    LDA.W #$0080                                                         ;8BBB00;
    STA.W $1A4D                                                          ;8BBB03;
    LDA.W #PreInstruction_ConfusedBabyMetroid_Idling                     ;8BBB06;
    STA.W $1B3D,X                                                        ;8BBB09;

.return:
    RTS                                                                  ;8BBB0C;


PreInstruction_ConfusedBabyMetroid_Idling:
    DEC.W $1A4D                                                          ;8BBB0D;
    BEQ .timerExpired                                                    ;8BBB10;
    BPL .return                                                          ;8BBB12;

.timerExpired:
    LDA.W #PreInstruction_ConfusedBabyMetroid_Dancing                    ;8BBB14;
    STA.W $1B3D,X                                                        ;8BBB17;
    STZ.W $1A4D                                                          ;8BBB1A;
    STZ.W $1A4F                                                          ;8BBB1D;
    STZ.W $1B7D,X                                                        ;8BBB20;

.return:
    RTS                                                                  ;8BBB23;


PreInstruction_ConfusedBabyMetroid_Dancing:
    LDA.W $1A4B                                                          ;8BBB24;
    BNE .timerExpired                                                    ;8BBB27;
    LDA.W #$0001                                                         ;8BBB29;
    STA.W $1B5D,X                                                        ;8BBB2C;
    LDA.W #InstList_CinematicSpriteObject_Delete                         ;8BBB2F;
    STA.W $1B1D,X                                                        ;8BBB32;
    STZ.W $1A57                                                          ;8BBB35;
    RTS                                                                  ;8BBB38;


.timerExpired:
    LDA.W $1B7D,X                                                        ;8BBB39;
    CMP.W #$0080                                                         ;8BBB3C;
    BPL +                                                                ;8BBB3F;
    INC A                                                                ;8BBB41;
    STA.W $1B7D,X                                                        ;8BBB42;
    BIT.W #$003F                                                         ;8BBB45;
    BNE +                                                                ;8BBB48;
    LDA.W #$0023                                                         ;8BBB4A;
    JSL.L QueueSound_Lib3_Max6                                           ;8BBB4D;

  + LDA.W $0AF6                                                          ;8BBB51;
    CMP.W $1A7D,X                                                        ;8BBB54;
    BMI .checkXposition                                                  ;8BBB57;
    LDA.W $1A4D                                                          ;8BBB59;
    CMP.W #$0280                                                         ;8BBB5C;
    BPL +                                                                ;8BBB5F;
    CLC                                                                  ;8BBB61;
    ADC.W #$0020                                                         ;8BBB62;
    STA.W $1A4D                                                          ;8BBB65;
    BRA +                                                                ;8BBB68;


.checkXposition:
    LDA.W $1A4D                                                          ;8BBB6A;
    CMP.W #$FD81                                                         ;8BBB6D;
    BMI +                                                                ;8BBB70;
    SEC                                                                  ;8BBB72;
    SBC.W #$0020                                                         ;8BBB73;
    STA.W $1A4D                                                          ;8BBB76;

  + LDA.W $1A4D                                                          ;8BBB79;
    XBA                                                                  ;8BBB7C;
    PHA                                                                  ;8BBB7D;
    AND.W #$FF00                                                         ;8BBB7E;
    STA.B $14                                                            ;8BBB81;
    PLA                                                                  ;8BBB83;
    AND.W #$00FF                                                         ;8BBB84;
    BIT.W #$0080                                                         ;8BBB87;
    BEQ +                                                                ;8BBB8A;
    ORA.W #$FF00                                                         ;8BBB8C;

  + STA.B $12                                                            ;8BBB8F;
    BPL .positive                                                        ;8BBB91;
    LDA.W #$0001                                                         ;8BBB93;
    STA.W $1A57                                                          ;8BBB96;
    BRA .setXposition                                                    ;8BBB99;


.positive:
    LDA.W #$FFFF                                                         ;8BBB9B;
    STA.W $1A57                                                          ;8BBB9E;

.setXposition:
    LDA.W $1ADD,X                                                        ;8BBBA1;
    CLC                                                                  ;8BBBA4;
    ADC.B $14                                                            ;8BBBA5;
    STA.W $1ADD,X                                                        ;8BBBA7;
    LDA.W $1A7D,X                                                        ;8BBBAA;
    ADC.B $12                                                            ;8BBBAD;
    STA.W $1A7D,X                                                        ;8BBBAF;
    LDA.W $0AFA                                                          ;8BBBB2;
    SEC                                                                  ;8BBBB5;
    SBC.W #$0008                                                         ;8BBBB6;
    CMP.W $1A9D,X                                                        ;8BBBB9;
    BMI .checkY                                                          ;8BBBBC;
    LDA.W $1A4F                                                          ;8BBBBE;
    CMP.W #$0220                                                         ;8BBBC1;
    BPL .setYvelocity                                                    ;8BBBC4;
    CLC                                                                  ;8BBBC6;
    ADC.W #$0020                                                         ;8BBBC7;
    STA.W $1A4F                                                          ;8BBBCA;
    BRA .setYvelocity                                                    ;8BBBCD;


.checkY:
    LDA.W $1A4F                                                          ;8BBBCF;
    CMP.W #$FDE1                                                         ;8BBBD2;
    BMI .setYvelocity                                                    ;8BBBD5;
    SEC                                                                  ;8BBBD7;
    SBC.W #$0020                                                         ;8BBBD8;
    STA.W $1A4F                                                          ;8BBBDB;

.setYvelocity:
    LDA.W $1A4F                                                          ;8BBBDE;
    XBA                                                                  ;8BBBE1;
    PHA                                                                  ;8BBBE2;
    AND.W #$FF00                                                         ;8BBBE3;
    STA.B $14                                                            ;8BBBE6;
    PLA                                                                  ;8BBBE8;
    AND.W #$00FF                                                         ;8BBBE9;
    BIT.W #$0080                                                         ;8BBBEC;
    BEQ .setYposition                                                    ;8BBBEF;
    ORA.W #$FF00                                                         ;8BBBF1;

.setYposition:
    STA.B $12                                                            ;8BBBF4;
    LDA.W $1AFD,X                                                        ;8BBBF6;
    CLC                                                                  ;8BBBF9;
    ADC.B $14                                                            ;8BBBFA;
    STA.W $1AFD,X                                                        ;8BBBFC;
    LDA.W $1A9D,X                                                        ;8BBBFF;
    ADC.B $12                                                            ;8BBC02;
    STA.W $1A9D,X                                                        ;8BBC04;
    RTS                                                                  ;8BBC07;


Reset_Button_Assignments_to_Default:
    LDA.W #$0800                                                         ;8BBC08;
    STA.W $09AA                                                          ;8BBC0B;
    LDA.W #$0400                                                         ;8BBC0E;
    STA.W $09AC                                                          ;8BBC11;
    LDA.W #$0200                                                         ;8BBC14;
    STA.W $09AE                                                          ;8BBC17;
    LDA.W #$0100                                                         ;8BBC1A;
    STA.W $09B0                                                          ;8BBC1D;
    LDA.W $09B2                                                          ;8BBC20;
    STA.W $0D82                                                          ;8BBC23;
    LDA.W $09B4                                                          ;8BBC26;
    STA.W $0D84                                                          ;8BBC29;
    LDA.W $09B6                                                          ;8BBC2C;
    STA.W $0D86                                                          ;8BBC2F;
    LDA.W $09B8                                                          ;8BBC32;
    STA.W $0D88                                                          ;8BBC35;
    LDA.W $09BA                                                          ;8BBC38;
    STA.W $0D8A                                                          ;8BBC3B;
    LDA.W $09BC                                                          ;8BBC3E;
    STA.W $0D8C                                                          ;8BBC41;
    LDA.W $09BE                                                          ;8BBC44;
    STA.W $0D8E                                                          ;8BBC47;
    LDA.W #$0040                                                         ;8BBC4A;
    STA.W $09B2                                                          ;8BBC4D;
    LDA.W #$0080                                                         ;8BBC50;
    STA.W $09B4                                                          ;8BBC53;
    LDA.W #$8000                                                         ;8BBC56;
    STA.W $09B6                                                          ;8BBC59;
    LDA.W #$4000                                                         ;8BBC5C;
    STA.W $09B8                                                          ;8BBC5F;
    LDA.W #$2000                                                         ;8BBC62;
    STA.W $09BA                                                          ;8BBC65;
    LDA.W #$0020                                                         ;8BBC68;
    STA.W $09BC                                                          ;8BBC6B;
    LDA.W #$0010                                                         ;8BBC6E;
    STA.W $09BE                                                          ;8BBC71;
    RTS                                                                  ;8BBC74;


Recover_Previous_Button_Assignments:
    LDA.W $0D82                                                          ;8BBC75;
    STA.W $09B2                                                          ;8BBC78;
    LDA.W $0D84                                                          ;8BBC7B;
    STA.W $09B4                                                          ;8BBC7E;
    LDA.W $0D86                                                          ;8BBC81;
    STA.W $09B6                                                          ;8BBC84;
    LDA.W $0D88                                                          ;8BBC87;
    STA.W $09B8                                                          ;8BBC8A;
    LDA.W $0D8A                                                          ;8BBC8D;
    STA.W $09BA                                                          ;8BBC90;
    LDA.W $0D8C                                                          ;8BBC93;
    STA.W $09BC                                                          ;8BBC96;
    LDA.W $0D8E                                                          ;8BBC99;
    STA.W $09BE                                                          ;8BBC9C;
    RTS                                                                  ;8BBC9F;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_Instruction_LoadIntroText_NonExistent:
endif ; !FEATURE_KEEP_UNREFERENCED


Instruction_EnableCinematicBGTilemapUpdates:
    RTS                                                                  ;8BB51D;


Instruction_LoadIntroTextPage1:
    PHY                                                                  ;8BB51E;
    LDA.L Palettes_Intro_nonExistentIntroText1                           ;8BB523;
    STA.L $7EC022                                                        ;8BB527;
    LDA.L Palettes_Intro_nonExistentIntroText2                           ;8BB52B;
    STA.L $7EC024                                                        ;8BB52F;
    LDA.L Palettes_Intro_nonExistentIntroText3                           ;8BB533;
    STA.L $7EC026                                                        ;8BB537;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BB53B;
    LDA.W $09E2
    BNE .french
    LDA.W #$A000
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles
    BRA .return


.french:
    LDA.W #$A800
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles

.return:
    PLY                                                                  ;8BB54D;
    RTS                                                                  ;8BB54E;


Instruction_EnableCinematicBGTilemapUpdates_duplicate:
    JSL.L Enable_CinematicBGTilemap_Updates                              ;8BB54F;
    RTS                                                                  ;8BB553;


Instruction_LoadIntroTextPage1_Subpage2:
    LDA.B $8F
    BEQ .return
    LDA.W #InstList_EnableCinematicBGTilemapUpdates_Page1DoneInput
    STA.W $19A1,X
    LDA.W #$0001
    STA.W $19A9,X
    LDA.W #RTS_8B93D9
    STA.W $19A5,X
    JSR.W BlankOut_GermanFrenchText_Tiles
    LDA.W #$A100
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles
    LDA.W #$003C
    STA.W $1BA3

.return:
    RTS


Instruction_EnableCinematicBGTilemapUpdates_Page1DoneInput:
    JSL.L Enable_CinematicBGTilemap_Updates
    LDA.W #CinematicFunction_Intro_WaitForInput_SetupMotherBrainFight
    STA.W $1F51
    RTS


Instruction_LoadIntroTextPage2_Subpage1:
    PHY                                                                  ;8BB554;
    LDA.L Palettes_Intro_nonExistentIntroText1                           ;8BB559;
    STA.L $7EC022                                                        ;8BB55D;
    LDA.L Palettes_Intro_nonExistentIntroText2                           ;8BB561;
    STA.L $7EC024                                                        ;8BB565;
    LDA.L Palettes_Intro_nonExistentIntroText3                           ;8BB569;
    STA.L $7EC026                                                        ;8BB56D;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BB571;
    LDA.W $09E2
    BNE .french
    LDA.W #$A240
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles
    BRA .return


.french:
    LDA.W #$AA40
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles

.return:
    PLY                                                                  ;8BB583;
    RTS                                                                  ;8BB584;


Instruction_LoadIntroTextPage2_Subpage2:
    LDA.B $8F                                                            ;8BB585;
    BEQ .return                                                          ;8BB587;
    LDA.W #InstList_EnableCinematicBGTilemapUpdates_Page2DoneInput       ;8BB589;
    STA.W $19A1,X                                                        ;8BB58C;
    LDA.W #$0001                                                         ;8BB58F;
    STA.W $19A9,X                                                        ;8BB592;
    LDA.W #RTS_8B93D9                                                    ;8BB595;
    STA.W $19A5,X                                                        ;8BB598;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BB59F;
    LDA.W #$A340
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles
    LDA.W #$003C                                                         ;8BB5B1;
    STA.W $1BA3                                                          ;8BB5B4;

.return:
    RTS                                                                  ;8BB5B7;


Instruction_EnableCinematicBGTilemapUpdates_Page2DoneInput:
    JSL.L Enable_CinematicBGTilemap_Updates                              ;8BB5B8;
    LDA.W #CinematicFunc_Intro_WaitForInput_SetupBabyMetroidDiscovery    ;8BB5BC;
    STA.W $1F51                                                          ;8BB5BF;
    RTS                                                                  ;8BB5C2;


Instruction_LoadIntroTextPage3_Subpage1:
    PHY                                                                  ;8BB5C3;
    LDA.L Palettes_Intro_nonExistentIntroText1                           ;8BB5C8;
    STA.L $7EC022                                                        ;8BB5CC;
    LDA.L Palettes_Intro_nonExistentIntroText2                           ;8BB5D0;
    STA.L $7EC024                                                        ;8BB5D4;
    LDA.L Palettes_Intro_nonExistentIntroText3                           ;8BB5D8;
    STA.L $7EC026                                                        ;8BB5DC;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BB5E0;
    LDA.W $09E2
    BNE .french
    LDA.W #$A480
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles
    BRA .return


.french:
    LDA.W #$AC80
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles

.return:
    PLY                                                                  ;8BB5EC;
    RTS                                                                  ;8BB5ED;


PreInstruction_LoadIntroTextPage3_Subpage2:
    LDA.B $8F                                                            ;8BB5EE;
    BEQ .return                                                          ;8BB5F0;
    LDA.W #InstList_EnableCinematicBGTilemapUpdates_Page3DoneInput       ;8BB5F2;
    STA.W $19A1,X                                                        ;8BB5F5;
    LDA.W #$0001                                                         ;8BB5F8;
    STA.W $19A9,X                                                        ;8BB5FB;
    LDA.W #RTS_8B93D9                                                    ;8BB5FE;
    STA.W $19A5,X                                                        ;8BB601;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BB608;
    LDA.W #$A580
    STA.B $00
    LDA.W #$0080
    STA.B $12
    JSR.W LoadTextIntroTiles
    LDA.W #$003C                                                         ;8BB614;
    STA.W $1BA3                                                          ;8BB617;

.return:
    RTS                                                                  ;8BB61A;


Instruction_EnableCinematicBGTilemapUpdates_Page3DoneInput:
    JSL.L Enable_CinematicBGTilemap_Updates                              ;8BB61B;
    LDA.W #CinematicFunc_Intro_WaitForInput_SetupBabyMetroidDelivery     ;8BB61F;
    STA.W $1F51                                                          ;8BB622;
    RTS                                                                  ;8BB625;


Instruction_LoadIntroTextPage4_Subpage1:
    PHY                                                                  ;8BB626;
    LDA.L Palettes_Intro_nonExistentIntroText1                           ;8BB62B;
    STA.L $7EC022                                                        ;8BB62F;
    LDA.L Palettes_Intro_nonExistentIntroText2                           ;8BB633;
    STA.L $7EC024                                                        ;8BB637;
    LDA.L Palettes_Intro_nonExistentIntroText3                           ;8BB63B;
    STA.L $7EC026                                                        ;8BB63F;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BB643;
    LDA.W $09E2
    BNE .french
    LDA.W #$A680
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles
    BRA .return


.french:
    LDA.W #$AE80
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles

.return:
    PLY                                                                  ;8BB655;
    RTS                                                                  ;8BB656;


PreInstruction_LoadIntroTextPage4_Subpage2:
    LDA.B $8F                                                            ;8BB657;
    BEQ .return                                                          ;8BB659;
    LDA.W #InstList_EnableCinematicBGTilemapUpdates_Page4DoneInput       ;8BB65B;
    STA.W $19A1,X                                                        ;8BB65E;
    LDA.W #$0001                                                         ;8BB661;
    STA.W $19A9,X                                                        ;8BB664;
    LDA.W #RTS_8B93D9                                                    ;8BB667;
    STA.W $19A5,X                                                        ;8BB66A;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BB671;
    LDA.W $09E2
    BNE .french
    LDA.W #$A780
    STA.B $00
    LDA.W #$0080
    STA.B $12
    JSR.W LoadTextIntroTiles
    BRA .timer


.french:
    LDA.W #$AF80
    STA.B $00
    LDA.W #$0080
    STA.B $12
    JSR.W LoadTextIntroTiles
    LDA.W #$B800
    STA.B $00
    LDA.W #$0080
    STA.B $12
    JSR.W LoadTextIntroBottomHalfTiles

.timer:
    LDA.W #$003C                                                         ;8BB683;
    STA.W $1BA3                                                          ;8BB686;

.return:
    RTS                                                                  ;8BB689;


Instruction_EnableCinematicBGTilemapUpdates_Page4DoneInput:
    JSL.L Enable_CinematicBGTilemap_Updates                              ;8BB68A;
    LDA.W #CinematicFunc_Intro_WaitForInput_SetupBabyMetroidExamined     ;8BB68E;
    STA.W $1F51                                                          ;8BB691;
    RTS                                                                  ;8BB694;


Instruction_LoadIntroTextPage5_Subpage1:
    PHY                                                                  ;8BB695;
    LDA.L Palettes_Intro_nonExistentIntroText1                           ;8BB69A;
    STA.L $7EC022                                                        ;8BB69E;
    LDA.L Palettes_Intro_nonExistentIntroText2                           ;8BB6A2;
    STA.L $7EC024                                                        ;8BB6A6;
    LDA.L Palettes_Intro_nonExistentIntroText3                           ;8BB6AA;
    STA.L $7EC026                                                        ;8BB6AE;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BB6B2;
    LDA.W $09E2
    BNE .french
    LDA.W #$B0C0
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles
    BRA .return


.french:
    LDA.W #$B8C0
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles

.return:
    PLY                                                                  ;8BB6BE;
    RTS                                                                  ;8BB6BF;


PreInstruction_LoadIntroTextPage5_Subpage2:
    LDA.B $8F                                                            ;8BB6C0;
    BEQ .return                                                          ;8BB6C2;
    LDA.W #InstList_EnableCinematicBGTilemapUpdates_Page5DoneInput       ;8BB6C4;
    STA.W $19A1,X                                                        ;8BB6C7;
    LDA.W #$0001                                                         ;8BB6CA;
    STA.W $19A9,X                                                        ;8BB6CD;
    LDA.W #RTS_8B93D9                                                    ;8BB6D0;
    STA.W $19A5,X                                                        ;8BB6D3;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BB6DA;
    LDA.W #$B1C0
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles
    LDA.W #$003C                                                         ;8BB6E6;
    STA.W $1BA3                                                          ;8BB6E9;

.return:
    RTS                                                                  ;8BB6EC;


Instruction_EnableCinematicBGTilemapUpdates_Page5DoneInput:
    JSL.L Enable_CinematicBGTilemap_Updates                              ;8BB6ED;
    LDA.W #CinematicFunction_Intro_WaitForInput_ClearText                ;8BB6F1;
    STA.W $1F51                                                          ;8BB6F4;
    RTS                                                                  ;8BB6F7;


Instruction_LoadIntroTextPage6:
    PHY                                                                  ;8BB6F8;
    JSR.W BlankOut_GermanFrenchText_Tiles                                ;8BB6FD;
    LDA.W $09E2
    BNE .french
    LDA.W #$B300
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles
    BRA .return


.french:
    LDA.W #$BB00
    STA.B $00
    LDA.W #$0100
    STA.B $12
    JSR.W LoadTextIntroTiles

.return:
    PLY                                                                  ;8BB709;
    RTS                                                                  ;8BB70A;


Instruction_EnableCinematicBGTilemapUpdates_Page6DoneInput:
    JSL.L Enable_CinematicBGTilemap_Updates                              ;8BB70B;
    RTS                                                                  ;8BB70F;


CinematicFunction_FlyToCeres_Initial:
    JSR.W Setup_PPU_CeresCutscene                                        ;8BBCA0;
    JSR.W Clear_CinematicSpriteObjects                                   ;8BBCA3;
    STZ.B $AB                                                            ;8BBCA6;
    STZ.B $A7                                                            ;8BBCA8;
    LDX.W #$0000                                                         ;8BBCAA;

.loopPalettes:
    LDA.L Palettes_SpaceGunshipCeres,X                                   ;8BBCAD;
    STA.L $7EC000,X                                                      ;8BBCB1;
    INX                                                                  ;8BBCB5;
    INX                                                                  ;8BBCB6;
    CPX.W #$0200                                                         ;8BBCB7;
    BMI .loopPalettes                                                    ;8BBCBA;
    LDA.W #Tiles_Gunship_Ceres_Mode7>>8&$FF00                            ;8BBCBC;
    STA.B $48                                                            ;8BBCBF;
    LDA.W #Tiles_Gunship_Ceres_Mode7                                     ;8BBCC1;
    STA.B $47                                                            ;8BBCC4;
    JSL.L Decompression_HardcodedDestination                             ;8BBCC6;
    dl $7F0000                                                           ;8BBCCA;
    LDA.W #Gunship_Ceres_Tilemap>>8&$FF00                                ;8BBCCD;
    STA.B $48                                                            ;8BBCD0;
    LDA.W #Gunship_Ceres_Tilemap                                         ;8BBCD2;
    STA.B $47                                                            ;8BBCD5;
    JSL.L Decompression_HardcodedDestination                             ;8BBCD7;
    dl $7F4000                                                           ;8BBCDB;
    LDA.W #Tiles_Space_Ceres>>8&$FF00                                    ;8BBCDE;
    STA.B $48                                                            ;8BBCE1;
    LDA.W #Tiles_Space_Ceres                                             ;8BBCE3;
    STA.B $47                                                            ;8BBCE6;
    JSL.L Decompression_HardcodedDestination                             ;8BBCE8;
    dl $7F5000                                                           ;8BBCEC;
    SEP #$30                                                             ;8BBCEF;
    LDA.B #$00                                                           ;8BBCF1;
    STA.W $2116                                                          ;8BBCF3;
    LDA.B #$00                                                           ;8BBCF6;
    STA.W $2117                                                          ;8BBCF8;
    LDA.B #$80                                                           ;8BBCFB;
    STA.W $2115                                                          ;8BBCFD;
    JSL.L SetupHDMATransfer                                              ;8BBD00;
    db $01,$00,$19                                                       ;8BBD04;
    dl $7F0000                                                           ;8BBD07;
    dw $4000                                                             ;8BBD0A;
    LDA.B #$02                                                           ;8BBD0C;
    STA.W $420B                                                          ;8BBD0E;
    REP #$10                                                             ;8BBD11;
    STZ.W $2115                                                          ;8BBD13;
    STZ.W $2116                                                          ;8BBD16;
    STZ.W $2117                                                          ;8BBD19;
    LDX.W #$4000                                                         ;8BBD1C;
    LDA.B #$8C                                                           ;8BBD1F;

.loop:
    STA.W $2118                                                          ;8BBD21;
    DEX                                                                  ;8BBD24;
    BNE .loop                                                            ;8BBD25;
    SEP #$10                                                             ;8BBD27;
    LDA.B #$00                                                           ;8BBD29;
    STA.W $2116                                                          ;8BBD2B;
    LDA.B #$00                                                           ;8BBD2E;
    STA.W $2117                                                          ;8BBD30;
    LDA.B #$00                                                           ;8BBD33;
    STA.W $2115                                                          ;8BBD35;
    JSL.L SetupHDMATransfer                                              ;8BBD38;
    db $01,$00,$18                                                       ;8BBD3C;
    dl $7F4000                                                           ;8BBD3F;
    dw $0300                                                             ;8BBD42;
    LDA.B #$02                                                           ;8BBD44;
    STA.W $420B                                                          ;8BBD46;
    LDA.B #$00                                                           ;8BBD49;
    STA.W $2116                                                          ;8BBD4B;
    LDA.B #$60                                                           ;8BBD4E;
    STA.W $2117                                                          ;8BBD50;
    LDA.B #$80                                                           ;8BBD53;
    STA.W $2115                                                          ;8BBD55;
    JSL.L SetupHDMATransfer                                              ;8BBD58;
    db $01,$01,$18                                                       ;8BBD5C;
    dl $7F5000                                                           ;8BBD5F;
    dw $4000                                                             ;8BBD62;
    LDA.B #$02                                                           ;8BBD64;
    STA.W $420B                                                          ;8BBD66;
    REP #$30                                                             ;8BBD69;
    LDA.W #$0100                                                         ;8BBD6B;
    STA.W $211B                                                          ;8BBD6E;
    STA.B $78                                                            ;8BBD71;
    STZ.W $211C                                                          ;8BBD73;
    STZ.B $7A                                                            ;8BBD76;
    STZ.W $211D                                                          ;8BBD78;
    STZ.B $7C                                                            ;8BBD7B;
    STA.W $211E                                                          ;8BBD7D;
    STA.B $7E                                                            ;8BBD80;
    LDA.W #$0038                                                         ;8BBD82;
    STA.W $211F                                                          ;8BBD85;
    STA.B $80                                                            ;8BBD88;
    LDA.W #$0018                                                         ;8BBD8A;
    STA.W $2120                                                          ;8BBD8D;
    STA.B $82                                                            ;8BBD90;
    LDA.W #$FFB8                                                         ;8BBD92;
    STA.W $1993                                                          ;8BBD95;
    LDA.W #$FF98                                                         ;8BBD98;
    STA.W $1997                                                          ;8BBD9B;
    LDA.W #$00E0                                                         ;8BBD9E;
    STA.W $198D                                                          ;8BBDA1;
    LDA.W #$0200                                                         ;8BBDA4;
    STA.W $198F                                                          ;8BBDA7;
    JSL.L Clear_PaletteFXObjects                                         ;8BBDAA;
    JSL.L Enable_PaletteFXObjects                                        ;8BBDAE;
    LDA.W #$0000                                                         ;8BBDB2;
    JSL.L Clear_CinematicBGObjects_CinematicBGTilemap                    ;8BBDB5;
    LDA.W #$5C00                                                         ;8BBDB9;
    STA.W $19F5                                                          ;8BBDBC;
    JSL.L EnableNMI                                                      ;8BBDBF;
    LDY.W #CinematicSpriteObjectDefinitions_CeresStars                   ;8BBDC3;
    LDA.W #$0000                                                         ;8BBDC6;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BBDC9;
    LDA.W #CinematicFunction_FlyToCeres_WaitForMusicQueue_EnableDisplay  ;8BBDCC;
    STA.W $1F51                                                          ;8BBDCF;
    LDA.W #$FF2D                                                         ;8BBDD2;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BBDD5;
    LDA.W #$0005                                                         ;8BBDD9;
    LDY.W #$000E                                                         ;8BBDDC;
    JSL.L QueueMusicDataOrTrack_YFrameDelay                              ;8BBDDF;
    RTS                                                                  ;8BBDE3;


CinematicFunction_FlyToCeres_WaitForMusicQueue_EnableDisplay:
    JSL.L CheckIfMusicIsQueued                                           ;8BBDE4;
    BCS .return                                                          ;8BBDE8;
    SEP #$20                                                             ;8BBDEA;
    LDA.B #$0F                                                           ;8BBDEC;
    STA.B $51                                                            ;8BBDEE;
    REP #$20                                                             ;8BBDF0;
    LDA.W #CinematicFunction_FlyToCeres_FlyingIntoCamera                 ;8BBDF2;
    STA.W $1F51                                                          ;8BBDF5;

.return:
    RTS                                                                  ;8BBDF8;


CinematicFunction_FlyToCeres_FlyingIntoCamera:
    LDA.W $198F                                                          ;8BBDF9;
    CMP.W #$0020                                                         ;8BBDFC;
    BMI .zoomLessThan20                                                  ;8BBDFF;
    SEC                                                                  ;8BBE01;
    SBC.W #$0013                                                         ;8BBE02;
    STA.W $198F                                                          ;8BBE05;
    RTS                                                                  ;8BBE08;


.zoomLessThan20:
    SEP #$20                                                             ;8BBE09;
    STZ.B $6F                                                            ;8BBE0B;
    LDA.B #$31                                                           ;8BBE0D;
    STA.B $72                                                            ;8BBE0F;
    LDA.B #$3F                                                           ;8BBE11;
    STA.B $74                                                            ;8BBE13;
    LDA.B #$5F                                                           ;8BBE15;
    STA.B $75                                                            ;8BBE17;
    LDA.B #$9F                                                           ;8BBE19;
    STA.B $76                                                            ;8BBE1B;
    REP #$20                                                             ;8BBE1D;
    JSR.W Clear_CinematicSpriteObjects                                   ;8BBE1F;
    LDX.W #.transferData                                                 ;8BBE22;
    JSL.L QueueMode7Transfers                                            ;8BBE25;
    LDA.W #$FFE0                                                         ;8BBE29;
    STA.W $1993                                                          ;8BBE2C;
    LDA.W #$FF80                                                         ;8BBE2F;
    STA.W $1997                                                          ;8BBE32;
    LDA.W #$0020                                                         ;8BBE35;
    STA.W $198D                                                          ;8BBE38;
    LDY.W #CinematicSpriteObjectDefs_CeresExplosionLargeAsteroids        ;8BBE3B;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BBE3E;
    LDY.W #CinematicSpriteObjectDefinitions_CeresUnderAttack             ;8BBE41;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BBE44;
    LDY.W #CinematicSpriteObjectDefinitions_CeresSmallAsteroids          ;8BBE47;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BBE4A;
    LDY.W #CinematicSpriteObjectDefinitions_CeresPurpleSpaceVortex       ;8BBE4D;
    LDA.W #$0001                                                         ;8BBE50;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BBE53;
    LDY.W #CinematicSpriteObjectDefinitions_CeresStars                   ;8BBE56;
    LDA.W #$0001                                                         ;8BBE59;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BBE5C;
    LDA.W #CinematicFunction_FlyToCeres_FlyingIntoCeres                  ;8BBE5F;
    STA.W $1F51                                                          ;8BBE62;
    LDY.W #PaletteFXObjects_CutsceneGunshipEngineFlicker                 ;8BBE65;
    JSL.L Spawn_PaletteFXObject                                          ;8BBE68;
    LDY.W #PaletteFXObjects_CutsceneCeresNavigationLights_SpriteCeres    ;8BBE6C;
    JSL.L Spawn_PaletteFXObject                                          ;8BBE6F;
    RTS                                                                  ;8BBE73;


.transferData:
    db $80                                                               ;8BBE74; Control. 80h = write to VRAM tilemap
    dl $7F4300                                                           ;8BBE75; Source address
    dw $0300,$0000                                                       ;8BBE78; Size, Destination address (VRAM)
    db $00, $00                                                          ;8BBE7C; VRAM address increment mode

InitFunction_CinematicSpriteObject_CeresStars:
    LDA.W $1B9D                                                          ;8BBE7E;
    BNE .nonZero                                                         ;8BBE81;
    LDA.W #$FB80                                                         ;8BBE83;
    STA.W $1B7D,Y                                                        ;8BBE86;
    LDA.W #$0070                                                         ;8BBE89;
    STA.W $1A7D,Y                                                        ;8BBE8C;
    LDA.W #$0057                                                         ;8BBE8F;
    STA.W $1A9D,Y                                                        ;8BBE92;
    LDA.W #$0800                                                         ;8BBE95;
    STA.W $1ABD,Y                                                        ;8BBE98;
    RTS                                                                  ;8BBE9B;


.nonZero:
    LDA.W #PreInstruction_CinematicSpriteObject_CeresPurpleSpaceVortex   ;8BBE9C;
    STA.W $1B3D,Y                                                        ;8BBE9F;
    LDA.W #$FFE0                                                         ;8BBEA2;
    STA.W $1A7D,Y                                                        ;8BBEA5;
    LDA.W #$0057                                                         ;8BBEA8;
    STA.W $1A9D,Y                                                        ;8BBEAB;
    LDA.W #$0800                                                         ;8BBEAE;
    STA.W $1ABD,Y                                                        ;8BBEB1;
    RTS                                                                  ;8BBEB4;


PreInstruction_CinematicSpriteObject_CeresStars:
    LDA.W $1F51                                                          ;8BBEB5;
    CMP.W #CinematicFunction_FlyToCeres_FlyingIntoCamera                 ;8BBEB8;
    BEQ .flyingIntoCamera                                                ;8BBEBB;
    RTS                                                                  ;8BBEBD;


.flyingIntoCamera:
    LDA.W $1B7D,X                                                        ;8BBEBE;
    CLC                                                                  ;8BBEC1;
    ADC.W #$0099                                                         ;8BBEC2;
    STA.W $1B7D,X                                                        ;8BBEC5;
    XBA                                                                  ;8BBEC8;
    PHA                                                                  ;8BBEC9;
    AND.W #$FF00                                                         ;8BBECA;
    STA.B $14                                                            ;8BBECD;
    PLA                                                                  ;8BBECF;
    AND.W #$00FF                                                         ;8BBED0;
    BIT.W #$0080                                                         ;8BBED3;
    BEQ +                                                                ;8BBED6;
    ORA.W #$FF00                                                         ;8BBED8;

  + STA.B $12                                                            ;8BBEDB;
    LDA.W $1AFD,X                                                        ;8BBEDD;
    CLC                                                                  ;8BBEE0;
    ADC.B $14                                                            ;8BBEE1;
    STA.W $1AFD,X                                                        ;8BBEE3;
    LDA.W $1A9D,X                                                        ;8BBEE6;
    ADC.B $12                                                            ;8BBEE9;
    STA.W $1A9D,X                                                        ;8BBEEB;
    LDA.W $1ADD,X                                                        ;8BBEEE;
    CLC                                                                  ;8BBEF1;
    ADC.B $14                                                            ;8BBEF2;
    STA.W $1ADD,X                                                        ;8BBEF4;
    LDA.W $1A7D,X                                                        ;8BBEF7;
    ADC.B $12                                                            ;8BBEFA;
    STA.W $1A7D,X                                                        ;8BBEFC;
    LDA.W $1991                                                          ;8BBEFF;
    CLC                                                                  ;8BBF02;
    ADC.B $14                                                            ;8BBF03;
    STA.W $1991                                                          ;8BBF05;
    LDA.W $1993                                                          ;8BBF08;
    ADC.B $12                                                            ;8BBF0B;
    STA.W $1993                                                          ;8BBF0D;
    LDA.W $1995                                                          ;8BBF10;
    CLC                                                                  ;8BBF13;
    ADC.B $14                                                            ;8BBF14;
    STA.W $1995                                                          ;8BBF16;
    LDA.W $1997                                                          ;8BBF19;
    ADC.B $12                                                            ;8BBF1C;
    STA.W $1997                                                          ;8BBF1E;
    RTS                                                                  ;8BBF21;


InitFunc_CinematicSpriteObject_CeresExplosionLargeAsteroids:
    LDA.W #$0050                                                         ;8BBF22;
    STA.W $1A7D,Y                                                        ;8BBF25;
    LDA.W #$009F                                                         ;8BBF28;
    STA.W $1A9D,Y                                                        ;8BBF2B;
    LDA.W #$0800                                                         ;8BBF2E;
    STA.W $1ABD,Y                                                        ;8BBF31;
    RTS                                                                  ;8BBF34;


PreInst_CinematicSpriteObject_CeresExplosionLargeAsteroids:
    LDA.W $1ADD,X                                                        ;8BBF35;
    CLC                                                                  ;8BBF38;
    ADC.W #$4CC0                                                         ;8BBF39;
    STA.W $1ADD,X                                                        ;8BBF3C;
    LDA.W $1A7D,X                                                        ;8BBF3F;
    ADC.W #$0000                                                         ;8BBF42;
    AND.W #$01FF                                                         ;8BBF45;
    STA.W $1A7D,X                                                        ;8BBF48;
    RTS                                                                  ;8BBF4B;


InitFunction_CinematicSpriteObject_CeresUnderAttack:
    LDA.W #$0074                                                         ;8BBF4C;
    STA.W $1A7D,Y                                                        ;8BBF4F;
    LDA.W #$00A0                                                         ;8BBF52;
    STA.W $1A9D,Y                                                        ;8BBF55;
    LDA.W #$0C00                                                         ;8BBF58;
    STA.W $1ABD,Y                                                        ;8BBF5B;
    RTS                                                                  ;8BBF5E;


PreInstruction_CinematicSpriteObject_CeresUnderAttack:
    LDA.W $1ADD,X                                                        ;8BBF5F;
    CLC                                                                  ;8BBF62;
    ADC.W #$1330                                                         ;8BBF63;
    STA.W $1ADD,X                                                        ;8BBF66;
    LDA.W $1A7D,X                                                        ;8BBF69;
    ADC.W #$0000                                                         ;8BBF6C;
    AND.W #$01FF                                                         ;8BBF6F;
    STA.W $1A7D,X                                                        ;8BBF72;
    RTS                                                                  ;8BBF75;


InitFunction_CinematicSpriteObject_CeresSmallAsteroid:
    LDA.W #$0080                                                         ;8BBF76;
    STA.W $1A7D,Y                                                        ;8BBF79;
    LDA.W #$0060                                                         ;8BBF7C;
    STA.W $1A9D,Y                                                        ;8BBF7F;
    LDA.W #$0800                                                         ;8BBF82;
    STA.W $1ABD,Y                                                        ;8BBF85;
    RTS                                                                  ;8BBF88;


PreInstruction_CinematicSpriteObject_CeresSmallAsteroid:
    LDA.W $1ADD,X                                                        ;8BBF89;
    CLC                                                                  ;8BBF8C;
    ADC.W #$0990                                                         ;8BBF8D;
    STA.W $1ADD,X                                                        ;8BBF90;
    LDA.W $1A7D,X                                                        ;8BBF93;
    ADC.W #$0000                                                         ;8BBF96;
    AND.W #$01FF                                                         ;8BBF99;
    STA.W $1A7D,X                                                        ;8BBF9C;
    RTS                                                                  ;8BBF9F;


InitFunction_CinematicSpriteObject_CeresPurpleSpaceVortex:
    LDA.W $1B9D                                                          ;8BBFA0;
    BNE .nonZero                                                         ;8BBFA3;
    LDA.W #$0070                                                         ;8BBFA5;
    STA.W $1A7D,Y                                                        ;8BBFA8;
    LDA.W #RTS_8BBFD9                                                    ;8BBFAB;
    STA.W $1B3D,Y                                                        ;8BBFAE;
    BRA +                                                                ;8BBFB1;


.nonZero:
    LDA.W #$00E0                                                         ;8BBFB3;
    STA.W $1A7D,Y                                                        ;8BBFB6;

  + LDA.W #$0057                                                         ;8BBFB9;
    STA.W $1A9D,Y                                                        ;8BBFBC;
    LDA.W #$0800                                                         ;8BBFBF;
    STA.W $1ABD,Y                                                        ;8BBFC2;
    RTS                                                                  ;8BBFC5;


PreInstruction_CinematicSpriteObject_CeresPurpleSpaceVortex:
    LDA.W $1ADD,X                                                        ;8BBFC6;
    SEC                                                                  ;8BBFC9;
    SBC.W #$2000                                                         ;8BBFCA;
    STA.W $1ADD,X                                                        ;8BBFCD;
    LDA.W $1A7D,X                                                        ;8BBFD0;
    SBC.W #$0000                                                         ;8BBFD3;
    STA.W $1A7D,X                                                        ;8BBFD6;

RTS_8BBFD9:
    RTS                                                                  ;8BBFD9;


CinematicFunction_FlyToCeres_FlyingIntoCeres:
    SEP #$20                                                             ;8BBFDA;
    LDA.B $74                                                            ;8BBFDC;
    SEC                                                                  ;8BBFDE;
    SBC.B #$01                                                           ;8BBFDF;
    STA.B $74                                                            ;8BBFE1;
    CMP.B #$20                                                           ;8BBFE3;
    BPL .color1                                                          ;8BBFE5;
    LDA.B #$20                                                           ;8BBFE7;
    STA.B $74                                                            ;8BBFE9;

.color1:
    LDA.B $75                                                            ;8BBFEB;
    SEC                                                                  ;8BBFED;
    SBC.B #$01                                                           ;8BBFEE;
    STA.B $75                                                            ;8BBFF0;
    CMP.B #$40                                                           ;8BBFF2;
    BPL .color2                                                          ;8BBFF4;
    LDA.B #$40                                                           ;8BBFF6;
    STA.B $75                                                            ;8BBFF8;

.color2:
    LDA.B $76                                                            ;8BBFFA;
    SEC                                                                  ;8BBFFC;
    SBC.B #$01                                                           ;8BBFFD;
    STA.B $76                                                            ;8BBFFF;
    CMP.B #$80                                                           ;8BC001;
    BPL .zoomLessThanC00                                                 ;8BC003;
    LDA.B #$80                                                           ;8BC005;
    STA.B $76                                                            ;8BC007;

.zoomLessThanC00:
    REP #$20                                                             ;8BC009;
    LDA.W $1991                                                          ;8BC00B;
    SEC                                                                  ;8BC00E;
    SBC.W #$2660                                                         ;8BC00F;
    STA.W $1991                                                          ;8BC012;
    LDA.W $1993                                                          ;8BC015;
    SBC.W #$0000                                                         ;8BC018;
    STA.W $1993                                                          ;8BC01B;
    LDA.W $198F                                                          ;8BC01E;
    CMP.W #$0C00                                                         ;8BC021;
    BPL .zoomLessThan2000                                                ;8BC024;
    CLC                                                                  ;8BC026;
    ADC.W #$0013                                                         ;8BC027;
    STA.W $198F                                                          ;8BC02A;
    RTS                                                                  ;8BC02D;


.zoomLessThan2000:
    LDA.W $198F                                                          ;8BC02E;
    CMP.W #$2000                                                         ;8BC031;
    BPL +                                                                ;8BC034;
    CLC                                                                  ;8BC036;
    ADC.W #$0026                                                         ;8BC037;
    STA.W $198F                                                          ;8BC03A;
    RTS                                                                  ;8BC03D;


  + SEP #$20                                                             ;8BC03E;
    LDA.B #$11                                                           ;8BC040;
    STA.B $69                                                            ;8BC042;
    LDA.B #$01                                                           ;8BC044;
    STA.B $55                                                            ;8BC046;
    LDA.B #$00                                                           ;8BC048;
    STA.B $5F                                                            ;8BC04A;
    LDA.B #$5C                                                           ;8BC04C;
    STA.B $58                                                            ;8BC04E;
    LDA.B #$06                                                           ;8BC050;
    STA.B $5D                                                            ;8BC052;
    REP #$20                                                             ;8BC054;
    LDA.W #$0100                                                         ;8BC056;
    STA.W $198F                                                          ;8BC059;
    STZ.W $198D                                                          ;8BC05C;
    STZ.W $1991                                                          ;8BC05F;
    STZ.W $1993                                                          ;8BC062;
    STZ.W $1995                                                          ;8BC065;
    STZ.W $1997                                                          ;8BC068;
    JSL.L Enable_CinematicBGObjects                                      ;8BC06B;
    JSL.L Enable_CinematicBGTilemap_Updates                              ;8BC06F;
    LDY.W #CinematicSpriteObjectDefinitions_SpaceColony                  ;8BC073;
    LDA.W #$5C00                                                         ;8BC076;
    JSR.W Spawn_CinematicBGObject                                        ;8BC079;
    LDA.W #RTS_8BA38F                                                    ;8BC07C;
    STA.W $1F51                                                          ;8BC07F;
    RTS                                                                  ;8BC082;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_InitFunc_CinematicSpriteObject_SpaceColonyText_8BC083:
    LDA.W #$007C                                                         ;8BC083;
    STA.W $1A7D,Y                                                        ;8BC086;
    LDA.W #$00BA                                                         ;8BC089;
    STA.W $1A9D,Y                                                        ;8BC08C;
    LDA.W #$0000                                                         ;8BC08F;
    STA.W $1ABD,Y                                                        ;8BC092;
    RTS                                                                  ;8BC095;
endif ; !FEATURE_KEEP_UNREFERENCED


Instruction_SkipNextInstructionIfGermanText:
    LDA.W $09E2                                                          ;8BC096;
    BNE .return                                                          ;8BC099;
    TYA                                                                  ;8BC09B;
    CLC                                                                  ;8BC09C;
    ADC.W #$0010                                                         ;8BC09D;
    TAY                                                                  ;8BC0A0;

.return:
    RTS                                                                  ;8BC0A1;


Instruction_FinishFlyToCeres:
    LDA.W #CinematicFunction_FlyToCeres_Finish                           ;8BC0A2;
    STA.W $1F51                                                          ;8BC0A5;
    LDA.W #$0001                                                         ;8BC0A8;
    STA.W $0723                                                          ;8BC0AB;
    STA.W $0725                                                          ;8BC0AE;
    RTS                                                                  ;8BC0B1;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_InitFunc_CineSpriteObject_SpaceColonyFrenchText_8BC0B2:
    LDA.W #$007C                                                         ;8BC0B2;
    STA.W $1A7D,Y                                                        ;8BC0B5;
    LDA.W #$00CC                                                         ;8BC0B8;
    STA.W $1A9D,Y                                                        ;8BC0BB;
    LDA.W #$0000                                                         ;8BC0BE;
    STA.W $1ABD,Y                                                        ;8BC0C1;
    RTS                                                                  ;8BC0C4;
endif ; !FEATURE_KEEP_UNREFERENCED


CinematicFunction_FlyToCeres_Finish:
    JSL.L HandleFadingOut                                                ;8BC0C5;
    SEP #$20                                                             ;8BC0C9;
    LDA.B $51                                                            ;8BC0CB;
    CMP.B #$80                                                           ;8BC0CD;
    BNE .return                                                          ;8BC0CF;
    JSL.L EnableNMI                                                      ;8BC0D1;
    REP #$20                                                             ;8BC0D5;
    STZ.W $0723                                                          ;8BC0D7;
    STZ.W $0725                                                          ;8BC0DA;
    STZ.B $B5                                                            ;8BC0DD;
    STZ.B $B9                                                            ;8BC0DF;
    STZ.B $B7                                                            ;8BC0E1;
    STZ.B $BB                                                            ;8BC0E3;
    STZ.W $198D                                                          ;8BC0E5;
    LDA.W #$1C1F                                                         ;8BC0E8;
    DEC A                                                                ;8BC0EB;
    DEC A                                                                ;8BC0EC;
    SEC                                                                  ;8BC0ED;
    SBC.W #$198D                                                         ;8BC0EE;
    TAX                                                                  ;8BC0F1;

.loop:
    STZ.W $198D,X                                                        ;8BC0F2;
    DEX                                                                  ;8BC0F5;
    DEX                                                                  ;8BC0F6;
    BPL .loop                                                            ;8BC0F7;
    LDA.W #CinematicFunction_FlyToCeres_StartGameAtCeres                 ;8BC0F9;
    STA.W $1F51                                                          ;8BC0FC;

.return:
    RTS                                                                  ;8BC0FF;


CinematicFunction_FlyToCeres_StartGameAtCeres:
    LDA.W #$001F                                                         ;8BC100;
    STA.L $7ED914                                                        ;8BC103;
    STA.W $0998                                                          ;8BC107;
    LDA.W #$0006                                                         ;8BC10A;
    STA.W $079F                                                          ;8BC10D;
    STZ.W $078B                                                          ;8BC110;
    LDA.W $0952                                                          ;8BC113;
    JSL.L SaveToSRAM                                                     ;8BC116;
    RTS                                                                  ;8BC11A;


CinematicFunction_CeresGoesBoom_Initial:
    LDX.W #$0008                                                         ;8BC11B;

.wait:
    JSL.L WaitForNMI                                                     ;8BC11E;
    DEX                                                                  ;8BC122;
    BPL .wait                                                            ;8BC123;
    JSR.W Setup_PPU_CeresCutscene                                        ;8BC125;
    LDA.W #$1C1F                                                         ;8BC128;
    DEC A                                                                ;8BC12B;
    DEC A                                                                ;8BC12C;
    SEC                                                                  ;8BC12D;
    SBC.W #$198D                                                         ;8BC12E;
    TAX                                                                  ;8BC131;

.loop:
    STZ.W $198D,X                                                        ;8BC132;
    DEX                                                                  ;8BC135;
    DEX                                                                  ;8BC136;
    BPL .loop                                                            ;8BC137;
    STZ.W $078D                                                          ;8BC139;
    STZ.W $0911                                                          ;8BC13C;
    STZ.W $0915                                                          ;8BC13F;
    LDX.W #$0000                                                         ;8BC142;

.loopPalettes:
    LDA.L Palettes_SpaceGunshipCeres,X                                   ;8BC145;
    STA.L $7EC000,X                                                      ;8BC149;
    INX                                                                  ;8BC14D;
    INX                                                                  ;8BC14E;
    CPX.W #$0200                                                         ;8BC14F;
    BMI .loopPalettes                                                    ;8BC152;
    LDA.W #Tiles_Gunship_Ceres_Mode7>>8&$FF00                            ;8BC154;
    STA.B $48                                                            ;8BC157;
    LDA.W #Tiles_Gunship_Ceres_Mode7                                     ;8BC159;
    STA.B $47                                                            ;8BC15C;
    JSL.L Decompression_HardcodedDestination                             ;8BC15E;
    dl $7F0000                                                           ;8BC162;
    LDA.W #Gunship_Ceres_Tilemap>>8&$FF00                                ;8BC165;
    STA.B $48                                                            ;8BC168;
    LDA.W #Gunship_Ceres_Tilemap                                         ;8BC16A;
    STA.B $47                                                            ;8BC16D;
    JSL.L Decompression_HardcodedDestination                             ;8BC16F;
    dl $7F4000                                                           ;8BC173;
    LDA.W #Tiles_Space_Ceres>>8&$FF00                                    ;8BC176;
    STA.B $48                                                            ;8BC179;
    LDA.W #Tiles_Space_Ceres                                             ;8BC17B;
    STA.B $47                                                            ;8BC17E;
    JSL.L Decompression_HardcodedDestination                             ;8BC180;
    dl $7F5000                                                           ;8BC184;
    SEP #$30                                                             ;8BC187;
    LDA.B #$00                                                           ;8BC189;
    STA.W $2116                                                          ;8BC18B;
    LDA.B #$00                                                           ;8BC18E;
    STA.W $2117                                                          ;8BC190;
    LDA.B #$80                                                           ;8BC193;
    STA.W $2115                                                          ;8BC195;
    JSL.L SetupHDMATransfer                                              ;8BC198;
    db $01,$00,$19                                                       ;8BC19C;
    dl $7F0000                                                           ;8BC19F;
    dw $4000                                                             ;8BC1A2;
    LDA.B #$02                                                           ;8BC1A4;
    STA.W $420B                                                          ;8BC1A6;
    REP #$10                                                             ;8BC1A9;
    STZ.W $2115                                                          ;8BC1AB;
    STZ.W $2116                                                          ;8BC1AE;
    STZ.W $2117                                                          ;8BC1B1;
    LDX.W #$4000                                                         ;8BC1B4;
    LDA.B #$8C                                                           ;8BC1B7;

.loopVRAM:
    STA.W $2118                                                          ;8BC1B9;
    DEX                                                                  ;8BC1BC;
    BNE .loopVRAM                                                        ;8BC1BD;
    SEP #$10                                                             ;8BC1BF;
    LDA.B #$00                                                           ;8BC1C1;
    STA.W $2116                                                          ;8BC1C3;
    LDA.B #$00                                                           ;8BC1C6;
    STA.W $2117                                                          ;8BC1C8;
    LDA.B #$00                                                           ;8BC1CB;
    STA.W $2115                                                          ;8BC1CD;
    JSL.L SetupHDMATransfer                                              ;8BC1D0;
    db $01,$00,$18                                                       ;8BC1D4;
    dl $7F4600                                                           ;8BC1D7;
    dw $0600                                                             ;8BC1DA;
    LDA.B #$02                                                           ;8BC1DC;
    STA.W $420B                                                          ;8BC1DE;
    LDA.B #$00                                                           ;8BC1E1;
    STA.W $2116                                                          ;8BC1E3;
    LDA.B #$60                                                           ;8BC1E6;
    STA.W $2117                                                          ;8BC1E8;
    LDA.B #$80                                                           ;8BC1EB;
    STA.W $2115                                                          ;8BC1ED;
    JSL.L SetupHDMATransfer                                              ;8BC1F0;
    db $01,$01,$18                                                       ;8BC1F4;
    dl $7F5000                                                           ;8BC1F7;
    dw $4000                                                             ;8BC1FA;
    LDA.B #$02                                                           ;8BC1FC;
    STA.W $420B                                                          ;8BC1FE;
    LDA.B #$00                                                           ;8BC201;
    STA.W $2116                                                          ;8BC203;
    LDA.B #$60                                                           ;8BC206;
    STA.W $2117                                                          ;8BC208;
    LDA.B #$80                                                           ;8BC20B;
    STA.W $2115                                                          ;8BC20D;
    JSL.L SetupHDMATransfer                                              ;8BC210;
    db $01,$01,$18                                                       ;8BC214;
    dl Tiles_Standard_Sprite_0                                           ;8BC217;
    dw $1A00                                                             ;8BC21A;
    LDA.B #$02                                                           ;8BC21C;
    STA.W $420B                                                          ;8BC21E;
    REP #$30                                                             ;8BC221;
    LDA.W #$0100                                                         ;8BC223;
    STA.W $211B                                                          ;8BC226;
    STA.B $78                                                            ;8BC229;
    STZ.W $211C                                                          ;8BC22B;
    STZ.B $7A                                                            ;8BC22E;
    STZ.W $211D                                                          ;8BC230;
    STZ.B $7C                                                            ;8BC233;
    STA.W $211E                                                          ;8BC235;
    STA.B $7E                                                            ;8BC238;
    LDA.W #$0034                                                         ;8BC23A;
    STA.W $211F                                                          ;8BC23D;
    STA.B $80                                                            ;8BC240;
    LDA.W #$0030                                                         ;8BC242;
    STA.W $2120                                                          ;8BC245;
    STA.B $82                                                            ;8BC248;
    LDA.W #$FFD4                                                         ;8BC24A;
    STA.W $1993                                                          ;8BC24D;
    LDA.W #$FF90                                                         ;8BC250;
    STA.W $1997                                                          ;8BC253;
    STZ.W $198D                                                          ;8BC256;
    LDA.W #$0100                                                         ;8BC259;
    STA.W $198F                                                          ;8BC25C;
    JSL.L Disable_HDMAObjects                                            ;8BC25F;
    JSL.L Wait_End_VBlank_Clear_HDMA                                     ;8BC263;
    JSL.L Clear_PaletteFXObjects                                         ;8BC267;
    JSL.L Enable_PaletteFXObjects                                        ;8BC26B;
    LDA.W #$002F                                                         ;8BC26F;
    JSL.L Clear_CinematicBGObjects_CinematicBGTilemap                    ;8BC272;
    LDA.W #$0000                                                         ;8BC276;
    STA.W $19F5                                                          ;8BC279;
    LDY.W #CinematicSpriteObjectDefs_CeresUnderAttackLargeAsteroids      ;8BC27C;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC27F;
    LDY.W #CinematicSpriteObjectDefinitions_CeresSmallAsteroids          ;8BC282;
    LDA.W #$0002                                                         ;8BC285;
    STA.B $12                                                            ;8BC288;
    JSR.W Spawn_CinematicSpriteObject_YToIndex12                         ;8BC28A;
    LDY.W #CinematicSpriteObjectDefinitions_CeresPurpleSpaceVortex       ;8BC28D;
    STZ.B $12                                                            ;8BC290;
    LDA.W #$0000                                                         ;8BC292;
    JSR.W Spawn_CinematicSpriteObject_YToIndex12                         ;8BC295;
    LDY.W #CinematicSpriteObjectDefinitions_CeresExplosionSpawner        ;8BC298;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC29B;
    LDY.W #PaletteFXObjects_CutsceneCeresNavigationLights_BGCeres        ;8BC29E;
    JSL.L Spawn_PaletteFXObject                                          ;8BC2A1;
    JSL.L EnableNMI                                                      ;8BC2A5;
    LDA.W #$0001                                                         ;8BC2A9;
    STA.W $0723                                                          ;8BC2AC;
    STA.W $0725                                                          ;8BC2AF;
    LDA.W #CinematicFunction_CeresGoesBoom_WaitForMusicQueue             ;8BC2B2;
    STA.W $1F51                                                          ;8BC2B5;
    LDA.W #$0000                                                         ;8BC2B8;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BC2BB;
    LDA.W #$FF2D                                                         ;8BC2BF;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BC2C2;
    LDA.W $0998                                                          ;8BC2C6;
    CMP.W #$0025                                                         ;8BC2C9;
    BNE .notState25                                                      ;8BC2CC;
    LDA.W #$0008                                                         ;8BC2CE;
    LDY.W #$000E                                                         ;8BC2D1;
    JSL.L QueueMusicDataOrTrack_YFrameDelay                              ;8BC2D4;
    RTS                                                                  ;8BC2D8;


.notState25:
    LDA.W #$0007                                                         ;8BC2D9;
    LDY.W #$000E                                                         ;8BC2DC;
    JSL.L QueueMusicDataOrTrack_YFrameDelay                              ;8BC2DF;
    RTS                                                                  ;8BC2E3;


CinematicFunction_CeresGoesBoom_WaitForMusicQueue:
    JSL.L CheckIfMusicIsQueued                                           ;8BC2E4;
    BCS .return                                                          ;8BC2E8;
    LDA.W #CinematicFunction_CeresGoesBoom_SmallCeresExplosion_FadingIn  ;8BC2EA;
    STA.W $1F51                                                          ;8BC2ED;

.return:
    RTS                                                                  ;8BC2F0;


CinematicFunction_CeresGoesBoom_SmallCeresExplosion_FadingIn:
    LDA.W $1995                                                          ;8BC2F1;
    CLC                                                                  ;8BC2F4;
    ADC.W #$1330                                                         ;8BC2F5;
    STA.W $1995                                                          ;8BC2F8;
    LDA.W $1997                                                          ;8BC2FB;
    ADC.W #$0000                                                         ;8BC2FE;
    STA.W $1997                                                          ;8BC301;
    LDA.W $1991                                                          ;8BC304;
    SEC                                                                  ;8BC307;
    SBC.W #$4CC0                                                         ;8BC308;
    STA.W $1991                                                          ;8BC30B;
    LDA.W $1993                                                          ;8BC30E;
    SBC.W #$0000                                                         ;8BC311;
    STA.W $1993                                                          ;8BC314;
    LDA.W $198F                                                          ;8BC317;
    CLC                                                                  ;8BC31A;
    ADC.W #$0001                                                         ;8BC31B;
    STA.W $198F                                                          ;8BC31E;
    JSL.L HandleFadingIn                                                 ;8BC321;
    SEP #$20                                                             ;8BC325;
    LDA.B $51                                                            ;8BC327;
    CMP.B #$0F                                                           ;8BC329;
    BNE .return                                                          ;8BC32B;
    REP #$20                                                             ;8BC32D;
    STZ.W $0723                                                          ;8BC32F;
    STZ.W $0725                                                          ;8BC332;
    LDA.W #CinematicFunction_CeresGoesBoom_CeresExplosions               ;8BC335;
    STA.W $1F51                                                          ;8BC338;
    LDA.W #$0001                                                         ;8BC33B;
    STA.W $1A49                                                          ;8BC33E;
    STZ.W $1A4B                                                          ;8BC341;

.return:
    RTS                                                                  ;8BC344;


CinematicFunction_CeresGoesBoom_CeresExplosions:
    LDA.W $1995                                                          ;8BC345;
    CLC                                                                  ;8BC348;
    ADC.W #$1330                                                         ;8BC349;
    STA.W $1995                                                          ;8BC34C;
    LDA.W $1997                                                          ;8BC34F;
    ADC.W #$0000                                                         ;8BC352;
    STA.W $1997                                                          ;8BC355;
    LDA.W $1991                                                          ;8BC358;
    SEC                                                                  ;8BC35B;
    SBC.W #$4CC0                                                         ;8BC35C;
    STA.W $1991                                                          ;8BC35F;
    LDA.W $1993                                                          ;8BC362;
    SBC.W #$0000                                                         ;8BC365;
    STA.W $1993                                                          ;8BC368;
    LDA.W $198F                                                          ;8BC36B;
    CMP.W #$0240                                                         ;8BC36E;
    BPL +                                                                ;8BC371;
    CLC                                                                  ;8BC373;
    ADC.W #$0001                                                         ;8BC374;
    STA.W $198F                                                          ;8BC377;
    RTS                                                                  ;8BC37A;


  + LDA.W $1993                                                          ;8BC37B;
    EOR.W #$FFFF                                                         ;8BC37E;
    INC A                                                                ;8BC381;
    CLC                                                                  ;8BC382;
    ADC.B $80                                                            ;8BC383;
    STA.W $0CE2                                                          ;8BC385;
    LDA.W $1997                                                          ;8BC388;
    EOR.W #$FFFF                                                         ;8BC38B;
    INC A                                                                ;8BC38E;
    CLC                                                                  ;8BC38F;
    ADC.B $82                                                            ;8BC390;
    STA.W $0CE4                                                          ;8BC392;
    PHX                                                                  ;8BC395;
    PHY                                                                  ;8BC396;
    PHP                                                                  ;8BC397;
    PHB                                                                  ;8BC398;
    JSL.L Enable_HDMAObjects                                             ;8BC399;
    JSL.L Spawn_PowerBombExplosion                                       ;8BC39D;
    PLB                                                                  ;8BC3A1;
    PLP                                                                  ;8BC3A2;
    PLY                                                                  ;8BC3A3;
    PLX                                                                  ;8BC3A4;
    SEP #$20                                                             ;8BC3A5;
    LDA.B #$10                                                           ;8BC3A7;
    STA.B $6F                                                            ;8BC3A9;
    LDA.B #$37                                                           ;8BC3AB;
    STA.B $72                                                            ;8BC3AD;
    REP #$20                                                             ;8BC3AF;
    LDA.W #$0300                                                         ;8BC3B1;
    STA.W $198F                                                          ;8BC3B4;
    LDA.W #$0000                                                         ;8BC3B7;
    LDY.W #CinematicSpriteObjectDefinitions_CeresFinalExplosion          ;8BC3BA;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC3BD;
    LDA.W $0998                                                          ;8BC3C0;
    CMP.W #$0025                                                         ;8BC3C3;
    BNE .notState25                                                      ;8BC3C6;
    LDX.W #.mode7TransferData_clearCeresUpperHalf                        ;8BC3C8;
    JSL.L QueueMode7Transfers                                            ;8BC3CB;
    BRA .clearCeresLowerHalf                                             ;8BC3CF;


.notState25:
    LDX.W #.mode7TransferData_frontOfGunship                             ;8BC3D1;
    JSL.L QueueMode7Transfers                                            ;8BC3D4;

.clearCeresLowerHalf:
    LDX.W #.mode7TransferData_clearCeresLowerHalf                        ;8BC3D8;
    JSL.L QueueMode7Transfers                                            ;8BC3DB;
    LDA.W #CinematicFunction_CeresGoesBoom_GunshipFlyingAway             ;8BC3DF;
    STA.W $1F51                                                          ;8BC3E2;
    RTS                                                                  ;8BC3E5;


.mode7TransferData_frontOfGunship:
    db $80                                                               ;8BC3E6; Control. 80h = write to VRAM tilemap
    dl $7F4000                                                           ;8BC3E7; Source address
    dw $0300,$0000                                                       ;8BC3EA; Size, Destination address (VRAM)
    db $00, $00                                                          ;8BC3EE; VRAM address increment mode

.mode7TransferData_clearCeresLowerHalf:
    db $80                                                               ;8BC3F0; Control. 80h = write to VRAM tilemap
    dl $7F4C00                                                           ;8BC3F1; Source address
    dw $0300,$0300                                                       ;8BC3F4; Size, Destination address (VRAM)
    db $00, $00                                                          ;8BC3F8; VRAM address increment mode

.mode7TransferData_clearCeresUpperHalf:
    db $80                                                               ;8BC3FA; Control. 80h = write to VRAM tilemap
    dl $7F4C00                                                           ;8BC3FB; Source address
    dw $0300,$0000                                                       ;8BC3FE; Size, Destination address (VRAM)
    db $00, $00                                                          ;8BC402; VRAM address increment mode

Instruction_SpawnCeresExplosions1:
    PHY                                                                  ;8BC404;
    LDA.W #$0000                                                         ;8BC405;
    LDY.W #CinematicSpriteObjectDefinitions_CeresExplosion1              ;8BC408;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC40B;
    LDA.W #$0001                                                         ;8BC40E;
    LDY.W #CinematicSpriteObjectDefinitions_CeresExplosion1              ;8BC411;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC414;
    LDA.W #$0002                                                         ;8BC417;
    LDY.W #CinematicSpriteObjectDefinitions_CeresExplosion1              ;8BC41A;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC41D;
    LDA.W #$0003                                                         ;8BC420;
    LDY.W #CinematicSpriteObjectDefinitions_CeresExplosion1              ;8BC423;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC426;
    LDA.W #$0004                                                         ;8BC429;
    LDY.W #CinematicSpriteObjectDefinitions_CeresExplosion1              ;8BC42C;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC42F;
    PLY                                                                  ;8BC432;
    RTS                                                                  ;8BC433;


InitFunction_CinematicSpriteObject_CeresExplosion1:
    LDA.W $1B9D                                                          ;8BC434;
    STA.W $1B7D,Y                                                        ;8BC437;
    ASL A                                                                ;8BC43A;
    TAX                                                                  ;8BC43B;
    LDA.W .timer,X                                                       ;8BC43C;
    STA.W $1B5D,Y                                                        ;8BC43F;
    LDA.W $1993                                                          ;8BC442;
    EOR.W #$FFFF                                                         ;8BC445;
    INC A                                                                ;8BC448;
    CLC                                                                  ;8BC449;
    ADC.B $80                                                            ;8BC44A;
    CLC                                                                  ;8BC44C;
    ADC.W .Xoffset,X                                                     ;8BC44D;
    STA.W $1A7D,Y                                                        ;8BC450;
    LDA.W $1997                                                          ;8BC453;
    EOR.W #$FFFF                                                         ;8BC456;
    INC A                                                                ;8BC459;
    CLC                                                                  ;8BC45A;
    ADC.B $82                                                            ;8BC45B;
    CLC                                                                  ;8BC45D;
    ADC.W .Yoffset,X                                                     ;8BC45E;
    STA.W $1A9D,Y                                                        ;8BC461;
    LDA.W #$0A00                                                         ;8BC464;
    STA.W $1ABD,Y                                                        ;8BC467;
    RTS                                                                  ;8BC46A;

.timer:
    dw $0001,$0010,$0020,$0030,$0040                                     ;8BC46B;
.Xoffset:
    dw $0010,$FFF0,$0010,$FFF0,$0000                                     ;8BC475;
.Yoffset:
    dw $FFF0,$0010,$0010,$FFF0,$0000                                     ;8BC47F;


PreInst_CeresExplosionSpawner_SpawnExplosion2EveryCFrames:
    LDA.W $1F51                                                          ;8BC489;
    CMP.W #CinematicFunction_CeresGoesBoom_GunshipFlyingAway             ;8BC48C;
    BNE .notGunshipFlyingAway                                            ;8BC48F;
    LDA.W #RTS_8B93D9                                                    ;8BC491;
    STA.W $1B3D,X                                                        ;8BC494;
    RTS                                                                  ;8BC497;


.notGunshipFlyingAway:
    DEC.W $1A49                                                          ;8BC498;
    BEQ .spawn                                                           ;8BC49B;
    BPL .return                                                          ;8BC49D;

.spawn:
    LDA.W $1A4B                                                          ;8BC49F;
    LDY.W #CinematicSpriteObjectDefinitions_CeresExplosion2              ;8BC4A2;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC4A5;
    LDA.W #$000C                                                         ;8BC4A8;
    STA.W $1A49                                                          ;8BC4AB;
    LDA.W $1A4B                                                          ;8BC4AE;
    INC A                                                                ;8BC4B1;
    AND.W #$0007                                                         ;8BC4B2;
    STA.W $1A4B                                                          ;8BC4B5;

.return:
    RTS                                                                  ;8BC4B8;


InitFunction_CinematicSpriteObject_CeresExplosion2:
    LDA.W $1B9D                                                          ;8BC4B9;
    STA.W $1B7D,Y                                                        ;8BC4BC;
    ASL A                                                                ;8BC4BF;
    ASL A                                                                ;8BC4C0;
    TAX                                                                  ;8BC4C1;
    LDA.W $1993                                                          ;8BC4C2;
    EOR.W #$FFFF                                                         ;8BC4C5;
    INC A                                                                ;8BC4C8;
    CLC                                                                  ;8BC4C9;
    ADC.B $80                                                            ;8BC4CA;
    CLC                                                                  ;8BC4CC;
    ADC.W .Xoffset,X                                                     ;8BC4CD;
    STA.W $1A7D,Y                                                        ;8BC4D0;
    LDA.W $1997                                                          ;8BC4D3;
    EOR.W #$FFFF                                                         ;8BC4D6;
    INC A                                                                ;8BC4D9;
    CLC                                                                  ;8BC4DA;
    ADC.B $82                                                            ;8BC4DB;
    CLC                                                                  ;8BC4DD;
    ADC.W .Yoffset,X                                                     ;8BC4DE;
    STA.W $1A9D,Y                                                        ;8BC4E1;
    LDA.W #$0A00                                                         ;8BC4E4;
    STA.W $1ABD,Y                                                        ;8BC4E7;
    RTS                                                                  ;8BC4EA;

  .Xoffset:
    dw $000E                                                             ;8BC4EB;
  .Yoffset:
    dw       $FFF8                                                       ;8BC4ED;
    dw $0008,$000C
    dw $FFF0,$000C
    dw $FFF8,$FFF2
    dw $0000,$0000
    dw $0010,$000E
    dw $FFF4,$0004
    dw $FFF8,$FFF0


RTS_8BC50B:
    RTS                                                                  ;8BC50B;


Instruction_SpawnCeresExplosions3:
    PHY                                                                  ;8BC50C;
    LDA.W #$0000                                                         ;8BC50D;
    LDY.W #CinematicSpriteObjectDefinitions_CeresExplosion3              ;8BC510;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC513;
    LDA.W #$0001                                                         ;8BC516;
    LDY.W #CinematicSpriteObjectDefinitions_CeresExplosion3              ;8BC519;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC51C;
    LDA.W #$0002                                                         ;8BC51F;
    LDY.W #CinematicSpriteObjectDefinitions_CeresExplosion3              ;8BC522;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC525;
    LDA.W #$0003                                                         ;8BC528;
    LDY.W #CinematicSpriteObjectDefinitions_CeresExplosion3              ;8BC52B;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC52E;
    PLY                                                                  ;8BC531;
    RTS                                                                  ;8BC532;


InitFunction_CinematicSpriteObject_CeresExplosion3:
    LDA.W $1B9D                                                          ;8BC533;
    STA.W $1B7D,Y                                                        ;8BC536;
    ASL A                                                                ;8BC539;
    TAX                                                                  ;8BC53A;
    LDA.W .timer,X                                                       ;8BC53B;
    STA.W $1B5D,Y                                                        ;8BC53E;
    LDA.W $1993                                                          ;8BC541;
    EOR.W #$FFFF                                                         ;8BC544;
    INC A                                                                ;8BC547;
    CLC                                                                  ;8BC548;
    ADC.B $80                                                            ;8BC549;
    CLC                                                                  ;8BC54B;
    ADC.W .Xoffset,X                                                     ;8BC54C;
    STA.W $1A7D,Y                                                        ;8BC54F;
    LDA.W $1997                                                          ;8BC552;
    EOR.W #$FFFF                                                         ;8BC555;
    INC A                                                                ;8BC558;
    CLC                                                                  ;8BC559;
    ADC.B $82                                                            ;8BC55A;
    CLC                                                                  ;8BC55C;
    ADC.W .Yoffset,X                                                     ;8BC55D;
    STA.W $1A9D,Y                                                        ;8BC560;
    LDA.W #$0A00                                                         ;8BC563;
    STA.W $1ABD,Y                                                        ;8BC566;
    RTS                                                                  ;8BC569;

  .timer:
    dw $0001,$0004,$0008,$0010                                           ;8BC56A;
  .Xoffset:
    dw $0008,$000C,$FFF8,$FFF4                                           ;8BC572;
  .Yoffset:
    dw $FFFC,$0008,$FFF6,$000C                                           ;8BC57A;


PreInstruction_CinematicSpriteObject_CeresExplosion:
    LDA.W $1AFD,X                                                        ;8BC582;
    SEC                                                                  ;8BC585;
    SBC.W #$1330                                                         ;8BC586;
    STA.W $1AFD,X                                                        ;8BC589;
    LDA.W $1A9D,X                                                        ;8BC58C;
    SBC.W #$0000                                                         ;8BC58F;
    STA.W $1A9D,X                                                        ;8BC592;
    LDA.W $1ADD,X                                                        ;8BC595;
    CLC                                                                  ;8BC598;
    ADC.W #$4CC0                                                         ;8BC599;
    STA.W $1ADD,X                                                        ;8BC59C;
    LDA.W $1A7D,X                                                        ;8BC59F;
    ADC.W #$0000                                                         ;8BC5A2;
    STA.W $1A7D,X                                                        ;8BC5A5;
    RTS                                                                  ;8BC5A8;


InitFunction_CinematicSpriteObject_CeresFinalExplosion:
    LDA.W $1993                                                          ;8BC5A9;
    EOR.W #$FFFF                                                         ;8BC5AC;
    INC A                                                                ;8BC5AF;
    CLC                                                                  ;8BC5B0;
    ADC.B $80                                                            ;8BC5B1;
    STA.W $1A7D,Y                                                        ;8BC5B3;
    LDA.W $1997                                                          ;8BC5B6;
    EOR.W #$FFFF                                                         ;8BC5B9;
    INC A                                                                ;8BC5BC;
    CLC                                                                  ;8BC5BD;
    ADC.B $82                                                            ;8BC5BE;
    STA.W $1A9D,Y                                                        ;8BC5C0;
    LDA.W #$0A00                                                         ;8BC5C3;
    STA.W $1ABD,Y                                                        ;8BC5C6;
    RTS                                                                  ;8BC5C9;


CinematicFunction_CeresGoesBoom_GunshipFlyingAway:
    SEP #$20                                                             ;8BC5CA;
    LDA.B #$10                                                           ;8BC5CC;
    STA.B $6F                                                            ;8BC5CE;
    LDA.B #$37                                                           ;8BC5D0;
    STA.B $72                                                            ;8BC5D2;
    REP #$20                                                             ;8BC5D4;
    LDA.W $1991                                                          ;8BC5D6;
    CLC                                                                  ;8BC5D9;
    ADC.W #$8000                                                         ;8BC5DA;
    STA.W $1991                                                          ;8BC5DD;
    LDA.W $1993                                                          ;8BC5E0;
    ADC.W #$0004                                                         ;8BC5E3;
    STA.W $1993                                                          ;8BC5E6;
    LDA.W $198D                                                          ;8BC5E9;
    DEC A                                                                ;8BC5EC;
    AND.W #$00FF                                                         ;8BC5ED;
    STA.W $198D                                                          ;8BC5F0;
    LDA.W $198F                                                          ;8BC5F3;
    CMP.W #$0010                                                         ;8BC5F6;
    BMI .zoomLessThan10                                                  ;8BC5F9;
    SEC                                                                  ;8BC5FB;
    SBC.W #$0013                                                         ;8BC5FC;
    STA.W $198F                                                          ;8BC5FF;
    RTS                                                                  ;8BC602;


.zoomLessThan10:
    LDA.W #CinematicFunction_CeresGoesBoom_WaitC0Frames                  ;8BC603;
    STA.W $1F51                                                          ;8BC606;
    LDA.W #$0099                                                         ;8BC609;
    STA.W $1A49                                                          ;8BC60C;
    RTS                                                                  ;8BC60F;


CinematicFunction_CeresGoesBoom_WaitC0Frames:
    DEC.W $1A49                                                          ;8BC610;
    BEQ .timerExpired                                                    ;8BC613;
    BPL .return                                                          ;8BC615;

.timerExpired:
    LDA.W #$0001                                                         ;8BC617;
    STA.W $0723                                                          ;8BC61A;
    STA.W $0725                                                          ;8BC61D;
    LDA.W #CinematicFunction_CeresGoesBoom_FadeOut                       ;8BC620;
    STA.W $1F51                                                          ;8BC623;

.return:
    RTS                                                                  ;8BC626;


CinematicFunction_CeresGoesBoom_FadeOut:
    JSL.L HandleFadingOut                                                ;8BC627;
    SEP #$20                                                             ;8BC62B;
    LDA.B $51                                                            ;8BC62D;
    CMP.B #$80                                                           ;8BC62F;
    BNE .return                                                          ;8BC631;
    JSL.L EnableNMI                                                      ;8BC633;
    REP #$20                                                             ;8BC637;
    STZ.W $0723                                                          ;8BC639;
    STZ.W $0725                                                          ;8BC63C;
    LDA.W $0998                                                          ;8BC63F;
    CMP.W #$0025                                                         ;8BC642;
    BEQ .gameState25                                                     ;8BC645;
    LDA.W #CinematicFunction_FlyToZebes_Initial                          ;8BC647;
    STA.W $1F51                                                          ;8BC64A;
    RTS                                                                  ;8BC64D;


.gameState25:
    LDA.W #$0000                                                         ;8BC64E;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BC651;
    STZ.W $09D2                                                          ;8BC655;
    STZ.W $0A04                                                          ;8BC658;
    STZ.W $18A8                                                          ;8BC65B;
    STZ.W $18AA                                                          ;8BC65E;
    JSL.L Wait_End_VBlank_Clear_HDMA                                     ;8BC661;
    JSL.L DisableHVCounterInterrupts                                     ;8BC665;
    STZ.W $1982                                                          ;8BC669;
    SEP #$20                                                             ;8BC66C;
    STZ.B $6E                                                            ;8BC66E;
    STZ.B $71                                                            ;8BC670;
    LDA.B #$10                                                           ;8BC672;
    STA.B $69                                                            ;8BC674;
    STZ.B $6B                                                            ;8BC676;
    STZ.B $6C                                                            ;8BC678;
    STZ.B $6D                                                            ;8BC67A;
    LDA.B #$09                                                           ;8BC67C;
    STA.B $55                                                            ;8BC67E;
    REP #$20                                                             ;8BC680;
    STZ.W $0DE2                                                          ;8BC682;
    STZ.W $0727                                                          ;8BC685;
    LDX.W #$00FE                                                         ;8BC688;

.loop:
    STZ.W $1A8D,X                                                        ;8BC68B;
    DEX                                                                  ;8BC68E;
    DEX                                                                  ;8BC68F;
    BPL .loop                                                            ;8BC690;
    LDA.W #$0019                                                         ;8BC692;
    STA.W $0998                                                          ;8BC695;

.return:
    RTS                                                                  ;8BC698;


CinematicFunction_FlyToZebes_Initial:
    JSR.W Setup_PPU_SamusGoesToZebesCutscene                             ;8BC699;
    LDA.W #$1C1F                                                         ;8BC69C;
    DEC A                                                                ;8BC69F;
    DEC A                                                                ;8BC6A0;
    SEC                                                                  ;8BC6A1;
    SBC.W #$198D                                                         ;8BC6A2;
    TAX                                                                  ;8BC6A5;

.loop:
    STZ.W $198D,X                                                        ;8BC6A6;
    DEX                                                                  ;8BC6A9;
    DEX                                                                  ;8BC6AA;
    BPL .loop                                                            ;8BC6AB;
    LDA.W #Zebes_Tilemap>>8&$FF00                                        ;8BC6AD;
    STA.B $48                                                            ;8BC6B0;
    LDA.W #Zebes_Tilemap                                                 ;8BC6B2;
    STA.B $47                                                            ;8BC6B5;
    JSL.L Decompression_HardcodedDestination                             ;8BC6B7;
    dl $7F9000                                                           ;8BC6BB;
    LDA.W #Tiles_Zebes>>8&$FF00                                          ;8BC6BE;
    STA.B $48                                                            ;8BC6C1;
    LDA.W #Tiles_Zebes                                                   ;8BC6C3;
    STA.B $47                                                            ;8BC6C6;
    JSL.L Decompression_HardcodedDestination                             ;8BC6C8;
    dl $7F5000                                                           ;8BC6CC;
    SEP #$30                                                             ;8BC6CF;
    LDA.B #$00                                                           ;8BC6D1;
    STA.W $2116                                                          ;8BC6D3;
    LDA.B #$00                                                           ;8BC6D6;
    STA.W $2117                                                          ;8BC6D8;
    LDA.B #$00                                                           ;8BC6DB;
    STA.W $2115                                                          ;8BC6DD;
    JSL.L SetupHDMATransfer                                              ;8BC6E0;
    db $01,$00,$18                                                       ;8BC6E4;
    dl $7F4300                                                           ;8BC6E7;
    dw $0300                                                             ;8BC6EA;
    LDA.B #$02                                                           ;8BC6EC;
    STA.W $420B                                                          ;8BC6EE;
    LDA.B #$00                                                           ;8BC6F1;
    STA.W $2116                                                          ;8BC6F3;
    LDA.B #$5C                                                           ;8BC6F6;
    STA.W $2117                                                          ;8BC6F8;
    LDA.B #$80                                                           ;8BC6FB;
    STA.W $2115                                                          ;8BC6FD;
    JSL.L SetupHDMATransfer                                              ;8BC700;
    db $01,$01,$18                                                       ;8BC704;
    dl $7F9000                                                           ;8BC707;
    dw $0800                                                             ;8BC70A;
    LDA.B #$02                                                           ;8BC70C;
    STA.W $420B                                                          ;8BC70E;
    LDA.B #$00                                                           ;8BC711;
    STA.W $2116                                                          ;8BC713;
    LDA.B #$60                                                           ;8BC716;
    STA.W $2117                                                          ;8BC718;
    LDA.B #$80                                                           ;8BC71B;
    STA.W $2115                                                          ;8BC71D;
    JSL.L SetupHDMATransfer                                              ;8BC720;
    db $01,$01,$18                                                       ;8BC724;
    dl $7F5000                                                           ;8BC727;
    dw $4000                                                             ;8BC72A;
    LDA.B #$02                                                           ;8BC72C;
    STA.W $420B                                                          ;8BC72E;
    REP #$30                                                             ;8BC731;
    LDA.W #$0100                                                         ;8BC733;
    STA.W $211B                                                          ;8BC736;
    STA.B $78                                                            ;8BC739;
    STZ.W $211C                                                          ;8BC73B;
    STZ.B $7A                                                            ;8BC73E;
    STZ.W $211D                                                          ;8BC740;
    STZ.B $7C                                                            ;8BC743;
    STA.W $211E                                                          ;8BC745;
    STA.B $7E                                                            ;8BC748;
    LDA.W #$0038                                                         ;8BC74A;
    STA.W $211F                                                          ;8BC74D;
    STA.B $80                                                            ;8BC750;
    LDA.W #$0018                                                         ;8BC752;
    STA.W $2120                                                          ;8BC755;
    STA.B $82                                                            ;8BC758;
    STZ.W $1993                                                          ;8BC75A;
    STZ.W $1997                                                          ;8BC75D;
    STZ.W $198D                                                          ;8BC760;
    LDA.W #$0100                                                         ;8BC763;
    STA.W $198F                                                          ;8BC766;
    JSL.L Disable_HDMAObjects                                            ;8BC769;
    JSL.L Wait_End_VBlank_Clear_HDMA                                     ;8BC76D;
    JSL.L Clear_PaletteFXObjects                                         ;8BC771;
    JSL.L Enable_PaletteFXObjects                                        ;8BC775;
    SEP #$20                                                             ;8BC779;
    LDA.B #$81                                                           ;8BC77B;
    STA.B $57                                                            ;8BC77D;
    REP #$20                                                             ;8BC77F;
    LDY.W #PaletteFXObjects_CutsceneGunshipEngineFlicker                 ;8BC781;
    JSL.L Spawn_PaletteFXObject                                          ;8BC784;
    LDA.W #CinematicFunction_FlyToZebes_FadingIn                         ;8BC788;
    STA.W $1F51                                                          ;8BC78B;
    JSL.L EnableNMI                                                      ;8BC78E;
    LDA.W #$0001                                                         ;8BC792;
    STA.W $0723                                                          ;8BC795;
    STA.W $0725                                                          ;8BC798;
    RTS                                                                  ;8BC79B;


CinematicFunction_FlyToZebes_FadingIn:
    LDA.W $1A51                                                          ;8BC79C;
    BIT.W #$0003                                                         ;8BC79F;
    BNE .fadeIn                                                          ;8BC7A2;
    SEP #$20                                                             ;8BC7A4;
    LDA.B $57                                                            ;8BC7A6;
    SEC                                                                  ;8BC7A8;
    SBC.B #$10                                                           ;8BC7A9;
    STA.B $57                                                            ;8BC7AB;
    REP #$20                                                             ;8BC7AD;

.fadeIn:
    JSL.L HandleFadingIn                                                 ;8BC7AF;
    SEP #$20                                                             ;8BC7B3;
    LDA.B $51                                                            ;8BC7B5;
    CMP.B #$0F                                                           ;8BC7B7;
    BNE .return                                                          ;8BC7B9;
    REP #$20                                                             ;8BC7BB;
    STZ.W $0723                                                          ;8BC7BD;
    STZ.W $0725                                                          ;8BC7C0;
    LDA.W #CinematicFunction_FlyToZebes_MosaicTransition                 ;8BC7C3;
    STA.W $1F51                                                          ;8BC7C6;

.return:
    RTS                                                                  ;8BC7C9;


CinematicFunction_FlyToZebes_MosaicTransition:
    LDA.W $1A51                                                          ;8BC7CA;
    BIT.W #$0003                                                         ;8BC7CD;
    BNE .return                                                          ;8BC7D0;
    SEP #$20                                                             ;8BC7D2;
    LDA.B $57                                                            ;8BC7D4;
    SEC                                                                  ;8BC7D6;
    SBC.B #$10                                                           ;8BC7D7;
    STA.B $57                                                            ;8BC7D9;
    BIT.B #$F0                                                           ;8BC7DB;
    BEQ .nonZeroMosaicBlockSize                                          ;8BC7DD;
    REP #$20                                                             ;8BC7DF;
    RTS                                                                  ;8BC7E1;


.nonZeroMosaicBlockSize:
    SEP #$20                                                             ;8BC7E2;
    LDA.B #$07                                                           ;8BC7E4;
    STA.B $55                                                            ;8BC7E6;
    LDA.B #$80                                                           ;8BC7E8;
    STA.B $5F                                                            ;8BC7EA;
    LDA.B #$00                                                           ;8BC7EC;
    STA.B $58                                                            ;8BC7EE;
    STZ.B $5D                                                            ;8BC7F0;
    LDA.B #$11                                                           ;8BC7F2;
    STA.B $69                                                            ;8BC7F4;
    REP #$20                                                             ;8BC7F6;
    LDA.W #$0080                                                         ;8BC7F8;
    STA.W $1993                                                          ;8BC7FB;
    LDA.W #$FF98                                                         ;8BC7FE;
    STA.W $1997                                                          ;8BC801;
    LDA.W #$0020                                                         ;8BC804;
    STA.W $198D                                                          ;8BC807;
    LDA.W #$0100                                                         ;8BC80A;
    STA.W $198F                                                          ;8BC80D;
    LDY.W #CinematicSpriteObjectDefinitions_Zebes                        ;8BC810;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC813;
    LDY.W #CinematicSpriteObjectDefinitions_ZebesStars2                  ;8BC816;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC819;
    LDY.W #CinematicSpriteObjectDefinitions_ZebesStars3                  ;8BC81C;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC81F;
    LDY.W #CinematicSpriteObjectDefinitions_ZebesStars4                  ;8BC822;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC825;
    LDY.W #CinematicSpriteObjectDefinitions_ZebesStars5                  ;8BC828;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC82B;
    LDY.W #CinematicSpriteObjectDefinitions_PlanetZebesText              ;8BC82E;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC831;
    LDA.W #RTS_8BA38F                                                    ;8BC834;
    STA.W $1F51                                                          ;8BC837;

.return:
    RTS                                                                  ;8BC83A;


InitFunction_CinematicSpriteObject_Zebes:
    LDA.W #$0088                                                         ;8BC83B;
    STA.W $1A7D,Y                                                        ;8BC83E;
    LDA.W #$006F                                                         ;8BC841;
    STA.W $1A9D,Y                                                        ;8BC844;
    LDA.W #$0E00                                                         ;8BC847;
    STA.W $1ABD,Y                                                        ;8BC84A;
    RTS                                                                  ;8BC84D;


PreInstruction_CinematicSpriteObject_Zebes:
    LDA.W $1F51                                                          ;8BC84E;
    CMP.W #RTS_8BCADE                                                    ;8BC851;
    BNE .return                                                          ;8BC854;
    LDA.W #PreInstruction_Zebes_SlideSceneAway                           ;8BC856;
    STA.W $1B3D,X                                                        ;8BC859;

.return:
    RTS                                                                  ;8BC85C;


PreInstruction_Zebes_SlideSceneAway:
    LDA.W $1B7D,X                                                        ;8BC85D;
    CLC                                                                  ;8BC860;
    ADC.W #$0040                                                         ;8BC861;
    STA.W $1B7D,X                                                        ;8BC864;
    XBA                                                                  ;8BC867;
    PHA                                                                  ;8BC868;
    AND.W #$FF00                                                         ;8BC869;
    STA.B $14                                                            ;8BC86C;
    PLA                                                                  ;8BC86E;
    AND.W #$00FF                                                         ;8BC86F;
    STA.B $12                                                            ;8BC872;
    LDA.W $1AFD,X                                                        ;8BC874;
    SEC                                                                  ;8BC877;
    SBC.B $14                                                            ;8BC878;
    STA.W $1AFD,X                                                        ;8BC87A;
    LDA.W $1A9D,X                                                        ;8BC87D;
    SBC.B $12                                                            ;8BC880;
    STA.W $1A9D,X                                                        ;8BC882;
    CMP.W #$FF80                                                         ;8BC885;
    BPL .return                                                          ;8BC888;
    LDA.W #$0001                                                         ;8BC88A;
    STA.W $1B5D,X                                                        ;8BC88D;
    LDA.W #InstList_CinematicSpriteObject_Delete                         ;8BC890;
    STA.W $1B1D,X                                                        ;8BC893;

.return:
    RTS                                                                  ;8BC896;


if !FEATURE_KEEP_UNREFERENCED
UNUSED_InitFunction_CinematicSpriteObject_ZebesStars1_8BC897:
    LDA.W #$0080                                                         ;8BC897;
    STA.W $1A7D,Y                                                        ;8BC89A;
    LDA.W #$007F                                                         ;8BC89D;
    STA.W $1A9D,Y                                                        ;8BC8A0;
    LDA.W #$0800                                                         ;8BC8A3;
    STA.W $1ABD,Y                                                        ;8BC8A6;
    RTS                                                                  ;8BC8A9;
endif ; !FEATURE_KEEP_UNREFERENCED


PreInstruction_CinematicSpriteObject_ZebesStars5:
    LDA.W $1F51                                                          ;8BC8AA;
    CMP.W #RTS_8BCADE                                                    ;8BC8AD;
    BNE .return                                                          ;8BC8B0;
    LDA.W #PreInstruction_ZebesStars5_SlideSceneAway                     ;8BC8B2;
    STA.W $1B3D,X                                                        ;8BC8B5;

.return:
    RTS                                                                  ;8BC8B8;


PreInstruction_ZebesStars5_SlideSceneAway:
    LDA.W $1B7D,X                                                        ;8BC8B9;
    CLC                                                                  ;8BC8BC;
    ADC.W #$0020                                                         ;8BC8BD;
    STA.W $1B7D,X                                                        ;8BC8C0;
    XBA                                                                  ;8BC8C3;
    PHA                                                                  ;8BC8C4;
    AND.W #$FF00                                                         ;8BC8C5;
    STA.B $14                                                            ;8BC8C8;
    PLA                                                                  ;8BC8CA;
    AND.W #$00FF                                                         ;8BC8CB;
    STA.B $12                                                            ;8BC8CE;
    LDA.W $1AFD,X                                                        ;8BC8D0;
    SEC                                                                  ;8BC8D3;
    SBC.B $14                                                            ;8BC8D4;
    STA.W $1AFD,X                                                        ;8BC8D6;
    LDA.W $1A9D,X                                                        ;8BC8D9;
    SBC.B $12                                                            ;8BC8DC;
    STA.W $1A9D,X                                                        ;8BC8DE;
    CMP.W #$FF80                                                         ;8BC8E1;
    BPL .return                                                          ;8BC8E4;
    LDA.W #$0001                                                         ;8BC8E6;
    STA.W $1B5D,X                                                        ;8BC8E9;
    LDA.W #InstList_CinematicSpriteObject_Delete                         ;8BC8EC;
    STA.W $1B1D,X                                                        ;8BC8EF;
    LDA.W #CinematicFunction_FlyToZebes_LoadGameData                     ;8BC8F2;
    STA.W $1F51                                                          ;8BC8F5;

.return:
    RTS                                                                  ;8BC8F8;


PreInstruction_CinematicSpriteObject_ZebesStars_2_3_4:
    LDA.W $1F51                                                          ;8BC8F9;
    CMP.W #RTS_8BCADE                                                    ;8BC8FC;
    BNE .return                                                          ;8BC8FF;
    LDA.W #PreInstruction_ZebesStars_2_3_4_SlideSceneAway                ;8BC901;
    STA.W $1B3D,X                                                        ;8BC904;

.return:
    RTS                                                                  ;8BC907;


PreInstruction_ZebesStars_2_3_4_SlideSceneAway:
    LDA.W $1B7D,X                                                        ;8BC908;
    CLC                                                                  ;8BC90B;
    ADC.W #$0020                                                         ;8BC90C;
    STA.W $1B7D,X                                                        ;8BC90F;
    XBA                                                                  ;8BC912;
    PHA                                                                  ;8BC913;
    AND.W #$FF00                                                         ;8BC914;
    STA.B $14                                                            ;8BC917;
    PLA                                                                  ;8BC919;
    AND.W #$00FF                                                         ;8BC91A;
    STA.B $12                                                            ;8BC91D;
    LDA.W $1AFD,X                                                        ;8BC91F;
    SEC                                                                  ;8BC922;
    SBC.B $14                                                            ;8BC923;
    STA.W $1AFD,X                                                        ;8BC925;
    LDA.W $1A9D,X                                                        ;8BC928;
    SBC.B $12                                                            ;8BC92B;
    STA.W $1A9D,X                                                        ;8BC92D;
    CMP.W #$FF80                                                         ;8BC930;
    BPL .return                                                          ;8BC933;
    LDA.W #$0001                                                         ;8BC935;
    STA.W $1B5D,X                                                        ;8BC938;
    LDA.W #InstList_CinematicSpriteObject_Delete                         ;8BC93B;
    STA.W $1B1D,X                                                        ;8BC93E;

.return:
    RTS                                                                  ;8BC941;


InitFunction_CinematicSpriteObject_ZebesStars2:
    NOP                                                                  ;8BC942; >_<
    LDA.W #$0030                                                         ;8BC943;
    STA.W $1A7D,Y                                                        ;8BC946;
    LDA.W #$002F                                                         ;8BC949;
    STA.W $1A9D,Y                                                        ;8BC94C;
    LDA.W #$0800                                                         ;8BC94F;
    STA.W $1ABD,Y                                                        ;8BC952;
    RTS                                                                  ;8BC955;


InitFunction_CinematicSpriteObject_ZebesStars3:
    NOP                                                                  ;8BC956; >_<
    LDA.W #$00D0                                                         ;8BC957;
    STA.W $1A7D,Y                                                        ;8BC95A;
    LDA.W #$002F                                                         ;8BC95D;
    STA.W $1A9D,Y                                                        ;8BC960;
    LDA.W #$0800                                                         ;8BC963;
    STA.W $1ABD,Y                                                        ;8BC966;
    RTS                                                                  ;8BC969;


InitFunction_CinematicSpriteObject_ZebesStars4:
    NOP                                                                  ;8BC96A; >_<
    LDA.W #$0030                                                         ;8BC96B;
    STA.W $1A7D,Y                                                        ;8BC96E;
    LDA.W #$00CF                                                         ;8BC971;
    STA.W $1A9D,Y                                                        ;8BC974;
    LDA.W #$0800                                                         ;8BC977;
    STA.W $1ABD,Y                                                        ;8BC97A;
    RTS                                                                  ;8BC97D;


InitFunction_CinematicSpriteObject_ZebesStars5:
    NOP                                                                  ;8BC97E; >_<
    LDA.W #$00D0                                                         ;8BC97F;
    STA.W $1A7D,Y                                                        ;8BC982;
    LDA.W #$00CF                                                         ;8BC985;
    STA.W $1A9D,Y                                                        ;8BC988;
    LDA.W #$0800                                                         ;8BC98B;
    STA.W $1ABD,Y                                                        ;8BC98E;
    RTS                                                                  ;8BC991;


InitFunction_CinematicSpriteObject_PlanetZebesText:
    LDA.W #$0080                                                         ;8BC992;
    STA.W $1A7D,Y                                                        ;8BC995;
    LDA.W #$00BA                                                         ;8BC998;
    STA.W $1A9D,Y                                                        ;8BC99B;
    LDA.W #$0000                                                         ;8BC99E;
    STA.W $1ABD,Y                                                        ;8BC9A1;
    RTS                                                                  ;8BC9A4;


Instruction_FadeInPlanetZebesText:
    PHY                                                                  ;8BC9A5;
    LDY.W #PaletteFXObjects_FadeInPlanetZebesText                        ;8BC9A6;
    JSL.L Spawn_PaletteFXObject                                          ;8BC9A9;
    PLY                                                                  ;8BC9AD;
    RTS                                                                  ;8BC9AE;


Instruction_SpawnPlanetZebesFrenchTextIfNeeded:
    LDA.W $09E2                                                          ;8BC9AF;
    BEQ .return                                                          ;8BC9B2;
    PHY                                                                  ;8BC9B4;
    LDY.W #CinematicSpriteObjectDefinitions_PlanetZebesFrenchText        ;8BC9B5;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BC9B8;
    PLY                                                                  ;8BC9BB;

.return:
    RTS                                                                  ;8BC9BC;


Instruction_FadeOutPlanetZebesText:
    PHY                                                                  ;8BC9BD;
    LDY.W #PaletteFXObjects_FadeOutPlanetZebesText                       ;8BC9BE;
    JSL.L Spawn_PaletteFXObject                                          ;8BC9C1;
    PLY                                                                  ;8BC9C5;
    RTS                                                                  ;8BC9C6;


Instruction_StartFlyingToZebes:
    LDA.W #$003E                                                         ;8BC9C7;
    STA.W $1993                                                          ;8BC9CA;
    LDA.W #$FF90                                                         ;8BC9CD;
    STA.W $1997                                                          ;8BC9D0;
    LDA.W #$0020                                                         ;8BC9D3;
    STA.W $198D                                                          ;8BC9D6;
    LDA.W #$0010                                                         ;8BC9D9;
    STA.W $198F                                                          ;8BC9DC;
    LDA.W #CinematicFunction_FlyToZebes_FlyingToZebes_DriftingRight      ;8BC9DF;
    STA.W $1F51                                                          ;8BC9E2;
    RTS                                                                  ;8BC9E5;


InitFunction_CinematicSpriteObject_PlanetZebesFrenchText:
    LDA.W #$0080                                                         ;8BC9E6;
    STA.W $1A7D,Y                                                        ;8BC9E9;
    LDA.W #$00CC                                                         ;8BC9EC;
    STA.W $1A9D,Y                                                        ;8BC9EF;
    LDA.W #$0000                                                         ;8BC9F2;
    STA.W $1ABD,Y                                                        ;8BC9F5;
    RTS                                                                  ;8BC9F8;


CinematicFunction_FlyToZebes_FlyingToZebes_DriftingRight:
    LDA.W $1995                                                          ;8BC9F9;
    CLC                                                                  ;8BC9FC;
    ADC.W #$2660                                                         ;8BC9FD;
    STA.W $1995                                                          ;8BCA00;
    LDA.W $1997                                                          ;8BCA03;
    ADC.W #$0000                                                         ;8BCA06;
    STA.W $1997                                                          ;8BCA09;
    LDA.W $1991                                                          ;8BCA0C;
    SEC                                                                  ;8BCA0F;
    SBC.W #$9990                                                         ;8BCA10;
    STA.W $1991                                                          ;8BCA13;
    LDA.W $1993                                                          ;8BCA16;
    SBC.W #$0000                                                         ;8BCA19;
    STA.W $1993                                                          ;8BCA1C;
    LDA.W $198F                                                          ;8BCA1F;
    CMP.W #$0480                                                         ;8BCA22;
    BPL .zoomLessThan480                                                 ;8BCA25;
    CLC                                                                  ;8BCA27;
    ADC.W #$0005                                                         ;8BCA28;
    STA.W $198F                                                          ;8BCA2B;
    RTS                                                                  ;8BCA2E;


.zoomLessThan480:
    LDA.W #CinematicFunction_FlyToZebes_FlyingToZebes_TurningLeft        ;8BCA2F;
    STA.W $1F51                                                          ;8BCA32;
    RTS                                                                  ;8BCA35;


CinematicFunction_FlyToZebes_FlyingToZebes_TurningLeft:
    LDA.W $1995                                                          ;8BCA36;
    CLC                                                                  ;8BCA39;
    ADC.W #$2660                                                         ;8BCA3A;
    STA.W $1995                                                          ;8BCA3D;
    LDA.W $1997                                                          ;8BCA40;
    ADC.W #$0000                                                         ;8BCA43;
    STA.W $1997                                                          ;8BCA46;
    LDA.W $1991                                                          ;8BCA49;
    SEC                                                                  ;8BCA4C;
    SBC.W #$9990                                                         ;8BCA4D;
    STA.W $1991                                                          ;8BCA50;
    LDA.W $1993                                                          ;8BCA53;
    SBC.W #$0000                                                         ;8BCA56;
    STA.W $1993                                                          ;8BCA59;
    CMP.W #$FF80                                                         ;8BCA5C;
    BMI .finished                                                        ;8BCA5F;
    LDA.W $198F                                                          ;8BCA61;
    CLC                                                                  ;8BCA64;
    ADC.W #$0013                                                         ;8BCA65;
    STA.W $198F                                                          ;8BCA68;
    LDA.W $198D                                                          ;8BCA6B;
    CMP.W #$00E0                                                         ;8BCA6E;
    BEQ .return                                                          ;8BCA71;
    SEC                                                                  ;8BCA73;
    SBC.W #$0001                                                         ;8BCA74;
    AND.W #$00FF                                                         ;8BCA77;
    STA.W $198D                                                          ;8BCA7A;

.return:
    RTS                                                                  ;8BCA7D;


.finished:
    LDA.W #CinematicFunction_FlyToZebes_FlyingToZebes_DriftingLeft       ;8BCA7E;
    STA.W $1F51                                                          ;8BCA81;
    RTS                                                                  ;8BCA84;


CinematicFunction_FlyToZebes_FlyingToZebes_DriftingLeft:
    LDA.W $1995                                                          ;8BCA85;
    CLC                                                                  ;8BCA88;
    ADC.W #$2660                                                         ;8BCA89;
    STA.W $1995                                                          ;8BCA8C;
    LDA.W $1997                                                          ;8BCA8F;
    ADC.W #$0000                                                         ;8BCA92;
    STA.W $1997                                                          ;8BCA95;
    LDA.W $1991                                                          ;8BCA98;
    CLC                                                                  ;8BCA9B;
    ADC.W #$2660                                                         ;8BCA9C;
    STA.W $1991                                                          ;8BCA9F;
    LDA.W $1993                                                          ;8BCAA2;
    ADC.W #$0000                                                         ;8BCAA5;
    STA.W $1993                                                          ;8BCAA8;
    LDA.W $198F                                                          ;8BCAAB;
    CMP.W #$2000                                                         ;8BCAAE;
    BPL .zoomLessThan2000                                                ;8BCAB1;
    CLC                                                                  ;8BCAB3;
    ADC.W #$0026                                                         ;8BCAB4;
    STA.W $198F                                                          ;8BCAB7;
    RTS                                                                  ;8BCABA;


.zoomLessThan2000:
    SEP #$20                                                             ;8BCABB;
    LDA.B #$10                                                           ;8BCABD;
    STA.B $69                                                            ;8BCABF;
    REP #$20                                                             ;8BCAC1;
    LDA.W #CinematicFunction_FlyToZebes_HoldOnSceneFor40Frames           ;8BCAC3;
    STA.W $1F51                                                          ;8BCAC6;
    LDA.W #$0040                                                         ;8BCAC9;
    STA.W $1A49                                                          ;8BCACC;
    RTS                                                                  ;8BCACF;


CinematicFunction_FlyToZebes_HoldOnSceneFor40Frames:
    DEC.W $1A49                                                          ;8BCAD0;
    BEQ .timerExpired                                                    ;8BCAD3;
    BPL .return                                                          ;8BCAD5;

.timerExpired:
    LDA.W #RTS_8BCADE                                                    ;8BCAD7;
    STA.W $1F51                                                          ;8BCADA;

.return:
    RTS                                                                  ;8BCADD;


RTS_8BCADE:
    RTS                                                                  ;8BCADE;


CinematicFunction_FlyToZebes_LoadGameData:
    SEP #$20                                                             ;8BCADF;
    LDA.B #$80                                                           ;8BCAE1;
    STA.B $51                                                            ;8BCAE3;
    REP #$20                                                             ;8BCAE5;
    LDA.W #$1C1F                                                         ;8BCAE7;
    DEC A                                                                ;8BCAEA;
    DEC A                                                                ;8BCAEB;
    SEC                                                                  ;8BCAEC;
    SBC.W #$198D                                                         ;8BCAED;
    TAX                                                                  ;8BCAF0;

.loop:
    STZ.W $198D,X                                                        ;8BCAF1;
    DEX                                                                  ;8BCAF4;
    DEX                                                                  ;8BCAF5;
    BPL .loop                                                            ;8BCAF6;
    LDA.W #$0006                                                         ;8BCAF8;
    STA.W $0998                                                          ;8BCAFB;
    LDA.W $09C4                                                          ;8BCAFE;
    STA.W $09C2                                                          ;8BCB01;
    RTS                                                                  ;8BCB04;


InstList_CinematicSpriteObject_IntroMotherBrain:
    dw $0010,IntroCeresExplosionSpritemaps_MotherBrainFrame1             ;8BCB05;
    dw $0010,IntroCeresExplosionSpritemaps_MotherBrainFrame2             ;8BCB09;
    dw $0010,IntroCeresExplosionSpritemaps_MotherBrainFrame3             ;8BCB0D;
    dw $0010,IntroCeresExplosionSpritemaps_MotherBrainFrame2             ;8BCB11;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCB15;
    dw InstList_CinematicSpriteObject_IntroMotherBrain                   ;8BCB17;

InstList_IntroMotherBrain_StartPage2_0:
    dw Instruction_StartIntroPage2                                       ;8BCB19;
    dw CinematicSpriteObject_Instruction_PreInstructionY                 ;8BCB1B;
    dw PreInstruction_IntroMotherBrain_CrossFading                       ;8BCB1D;

InstList_IntroMotherBrain_StartPage2_1:
    dw $0010,IntroCeresExplosionSpritemaps_MotherBrainFrame1             ;8BCB1F;
    dw $0010,IntroCeresExplosionSpritemaps_MotherBrainFrame2             ;8BCB23;
    dw $0010,IntroCeresExplosionSpritemaps_MotherBrainFrame3             ;8BCB27;
    dw $0010,IntroCeresExplosionSpritemaps_MotherBrainFrame2             ;8BCB2B;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCB2F;
    dw InstList_IntroMotherBrain_StartPage2_1                            ;8BCB31;

InstList_CinematicSpriteObject_MetroidEgg:
    dw $0005,IntroCeresExplosionSpritemaps_MetroidEggHatchingFrame1      ;8BCB33;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCB37;
    dw InstList_CinematicSpriteObject_MetroidEgg                         ;8BCB39;

InstList_MetroidEggHatching_0:
    dw $0020,IntroCeresExplosionSpritemaps_MetroidEggHatchingFrame1      ;8BCB3B;
    dw CinematicSpriteObject_Instruction_TimerInY,$0004                  ;8BCB3F;

InstList_MetroidEggHatching_1:
    dw $0005,IntroCeresExplosionSpritemaps_MetroidEggHatchingFrame1      ;8BCB43;
    dw $0005,IntroCeresExplosionSpritemaps_MetroidEggHatchingFrame2      ;8BCB47;
    dw $0005,IntroCeresExplosionSpritemaps_MetroidEggHatchingFrame1      ;8BCB4B;
    dw $0005,IntroCeresExplosionSpritemaps_MetroidEggHatchingFrame3      ;8BCB4F;
    dw CinematicSpriteObject_Inst_DecrementTimer_GotoYIfNonZero          ;8BCB53;
    dw InstList_MetroidEggHatching_1                                     ;8BCB55;
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggHatchingFrame1      ;8BCB57;
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggHatchingFrame4      ;8BCB5B;
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggHatchingFrame5      ;8BCB5F;
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggHatchingFrame6      ;8BCB63;
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggHatchingFrame7      ;8BCB67;
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggHatchingFrame8      ;8BCB6B;
    dw $0050,IntroCeresExplosionSpritemaps_MetroidEggHatchingFrame9      ;8BCB6F;
    dw Instruction_SpawnMetroidEggParticles                              ;8BCB73;
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggHatchedFrame1       ;8BCB75;

InstList_MetroidEggHatching_2:
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggHatchedFrame2       ;8BCB79;
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggHatchedFrame3       ;8BCB7D;
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggHatchedFrame4       ;8BCB81;
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggHatchedFrame5       ;8BCB85;
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggHatchedFrame6       ;8BCB89;
    dw $0140,IntroCeresExplosionSpritemaps_MetroidEggHatchedFrame7       ;8BCB8D;
    dw Instruction_StartIntroPage3                                       ;8BCB91;
    dw CinematicSpriteObject_Instruction_PreInstructionY                 ;8BCB93;
    dw PreInstruction_MetroidEgg_DeleteAfterCrossFade                    ;8BCB95;

InstList_MetroidEggHatching_3:
    dw $0050,IntroCeresExplosionSpritemaps_MetroidEggHatchedFrame7       ;8BCB97;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCB9B;
    dw InstList_MetroidEggHatching_3                                     ;8BCB9D;

InstList_CinematicSpriteObject_BabyMetroidBeingDelivered_0:
    dw CinematicSpriteObject_Instruction_TimerInY,$000A                  ;8BCB9F;

InstList_CinematicSpriteObject_BabyMetroidBeingDelivered_1:
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidDeliveredFrame1    ;8BCBA3;
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidDeliveredFrame2    ;8BCBA7;
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidDeliveredFrame3    ;8BCBAB;
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidDeliveredFrame2    ;8BCBAF;
    dw CinematicSpriteObject_Inst_DecrementTimer_GotoYIfNonZero          ;8BCBB3;
    dw InstList_CinematicSpriteObject_BabyMetroidBeingDelivered_1        ;8BCBB5;
    dw Instruction_StartIntroPage4                                       ;8BCBB7;

InstList_CinematicSpriteObject_BabyMetroidBeingDelivered_2:
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidDeliveredFrame1    ;8BCBB9;
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidDeliveredFrame2    ;8BCBBD;
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidDeliveredFrame3    ;8BCBC1;
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidDeliveredFrame2    ;8BCBC5;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCBC9;
    dw InstList_CinematicSpriteObject_BabyMetroidBeingDelivered_2        ;8BCBCB;

InstList_CinematicSpriteObject_BabyMetroidBeingExamined_0:
    dw CinematicSpriteObject_Instruction_TimerInY,$000A                  ;8BCBCD;

InstList_CinematicSpriteObject_BabyMetroidBeingExamined_1:
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidExaminedFrame1     ;8BCBD1;
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidExaminedFrame2     ;8BCBD5;
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidExaminedFrame3     ;8BCBD9;
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidExaminedFrame2     ;8BCBDD;
    dw CinematicSpriteObject_Inst_DecrementTimer_GotoYIfNonZero          ;8BCBE1;
    dw InstList_CinematicSpriteObject_BabyMetroidBeingExamined_1         ;8BCBE3;
    dw Instruction_StartIntroPage5                                       ;8BCBE5;

InstList_CinematicSpriteObject_BabyMetroidBeingExamined_2:
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidExaminedFrame1     ;8BCBE7;
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidExaminedFrame2     ;8BCBEB;
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidExaminedFrame3     ;8BCBEF;
    dw $0008,IntroCeresExplosionSpritemaps_BabyMetroidExaminedFrame2     ;8BCBF3;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCBF7;
    dw InstList_CinematicSpriteObject_BabyMetroidBeingExamined_2         ;8BCBF9;

InstList_CinematicSpriteObject_IntroTextCaret:
    dw $0005,IntroCeresExplosionSpritemaps_BlinkingTypewriterBlock       ;8BCBFB;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCBFF;
    dw InstList_CinematicSpriteObject_IntroTextCaret                     ;8BCC01;

InstList_IntroTextCaret_Blink:
    dw $0004,IntroCeresExplosionSpritemaps_BlinkingTypewriterBlock       ;8BCC03;
    dw $0004,$0000                                                       ;8BCC07;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCC0B;
    dw InstList_IntroTextCaret_Blink                                     ;8BCC0D;

InstList_CinematicSpriteObject_IntroTextNextPageArrow:
    dw $000A,IntroCeresExplosionSpritemaps_IntroTextNextPageArrowFrame1  ;8BCC0F;
    dw $000A,IntroCeresExplosionSpritemaps_IntroTextNextPageArrowFrame2  ;8BCC13;
    dw $000A,IntroCeresExplosionSpritemaps_IntroTextNextPageArrowFrame3  ;8BCC17;
    dw $000A,IntroCeresExplosionSpritemaps_IntroTextNextPageArrowFrame2  ;8BCC1B;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCC1F;
    dw InstList_CinematicSpriteObject_IntroTextNextPageArrow             ;8BCC21;

InstList_IntroTextNextPageArrow_Blink:
    dw $003C,$0000                                                       ;8BCC23;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCC27;
    dw InstList_CinematicSpriteObject_IntroTextNextPageArrow             ;8BCC29;

InstList_CinematicSpriteObject_ConfusedBabyMetroid:
    dw $000A,IntroCeresExplosionSpritemaps_ConfusedBabyMetroidFrame1     ;8BCC2B;
    dw $000A,IntroCeresExplosionSpritemaps_ConfusedBabyMetroidFrame2     ;8BCC2F;
    dw $000A,IntroCeresExplosionSpritemaps_ConfusedBabyMetroidFrame3     ;8BCC33;
    dw $000A,IntroCeresExplosionSpritemaps_ConfusedBabyMetroidFrame2     ;8BCC37;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCC3B;
    dw InstList_CinematicSpriteObject_ConfusedBabyMetroid                ;8BCC3D;

InstList_CinematicSpriteObject_CeresUnderAttackLargeAsteroid:
    dw $000A,SpaceSpritemaps_CeresUnderAttackLargeAsteroids              ;8BCC3F;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCC43;
    dw InstList_CinematicSpriteObject_CeresUnderAttackLargeAsteroid      ;8BCC45;

InstList_CinematicSpriteObject_CeresUnderAttack:
    dw $000A,SpaceSpritemaps_CeresUnderAttack                            ;8BCC47;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCC4B;
    dw InstList_CinematicSpriteObject_CeresUnderAttack                   ;8BCC4D;

InstList_CinematicSpriteObject_CeresSmallAsteroids:
    dw $000A,SpaceSpritemaps_CeresSmallAsteroids                         ;8BCC4F;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCC53;
    dw InstList_CinematicSpriteObject_CeresSmallAsteroids                ;8BCC55;

InstList_CinematicSpriteObject_CeresPurpleSpaceVortext:
    dw $0001,SpaceSpritemaps_CeresPurpleVortexFrame1                     ;8BCC57;
    dw $0001,SpaceSpritemaps_CeresPurpleVortexFrame2                     ;8BCC5B;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCC5F;
    dw InstList_CinematicSpriteObject_CeresPurpleSpaceVortext            ;8BCC61;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_InstList_CinematicSpriteObject_SpaceColonyText_8BCC63:
; CinematicSpriteObjectDefinitions_SpaceColony is used instead
    dw $0100,$0000                                                       ;8BCC63;
    dw $000A,UNUSED_SpaceSpritemaps_S_8C92AA                             ;8BCC67;
    dw $000A,UNUSED_SpaceSpritemaps_SP_8C92B1                            ;8BCC6B;
    dw $000A,UNUSED_SpaceSpritemaps_SPA_8C92BD                           ;8BCC6F;
    dw $000A,UNUSED_SpaceSpritemaps_SPAC_8C92CE                          ;8BCC73;
    dw $000A,UNUSED_SpaceSpritemaps_SPACE_8C92E4                         ;8BCC77;
    dw $000A,UNUSED_SpaceSpritemaps_SPACEC_8C92FF                        ;8BCC7B;
    dw $000A,UNUSED_SpaceSpritemaps_SPACECO_8C931F                       ;8BCC7F;
    dw $000A,UNUSED_SpaceSpritemaps_SPACECOL_8C9344                      ;8BCC83;
    dw $000A,UNUSED_SpaceSpritemaps_SPACECOLO_9C936E                     ;8BCC87;
    dw $000A,UNUSED_SpaceSpritemaps_SPACECOLON_8C939D                    ;8BCC8B;
    dw $000A,UNUSED_SpaceSpritemaps_SPACECOLONY_8C921F                   ;8BCC8F;
    dw Instruction_SkipNextInstructionIfGermanText                       ;8BCC93;
    dw $0080,UNUSED_SpaceSpritemaps_SPACECOLONY_8C921F                   ;8BCC95;
    dw Instruction_FinishFlyToCeres                                      ;8BCC99;

UNUSED_InstList_CinematicSpriteObject_SpaceColonyText_8BCC9B:
    dw $0001,UNUSED_SpaceSpritemaps_SPACECOLONY_8C921F                   ;8BCC9B;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCC9F;
    dw UNUSED_InstList_CinematicSpriteObject_SpaceColonyText_8BCC9B      ;8BCCA1;

UNUSED_InstList_CineSpriteObject_SpaceColonyFrenchText_8BCCA3:
    dw $000A,UNUSED_SpaceSpritemaps_FrenchText_SPACECOLONY_8C9258         ;8BCCA3;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCCA7;
    dw UNUSED_InstList_CineSpriteObject_SpaceColonyFrenchText_8BCCA3     ;8BCCA9;
endif ; !FEATURE_KEEP_UNREFERENCED

InstList_CinematicSpriteObject_Zebes:
    dw $000A,SpaceSpritemaps_Zebes                                       ;8BCCAB;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCCAF;
    dw InstList_CinematicSpriteObject_Zebes                              ;8BCCB1;

if !FEATURE_KEEP_UNREFERENCED
InstList_CinematicSpriteObject_ZebesStars1:
    dw $000A,UNUSED_SpaceSpritemaps_ZebesStars1_8C96CB                   ;8BCCB3;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCCB7;
    dw InstList_CinematicSpriteObject_ZebesStars1                        ;8BCCB9;
endif ; !FEATURE_KEEP_UNREFERENCED

InstList_CinematicSpriteObject_PlanetZebesText:
    dw $0033,$0000                                                       ;8BCCBB;
    dw Instruction_FadeInPlanetZebesText                                 ;8BCCBF;
    dw $0019,SpaceSpritemaps_PlanetZebes                                 ;8BCCC1;
    dw Instruction_SpawnPlanetZebesFrenchTextIfNeeded                    ;8BCCC5;
    dw $0099,SpaceSpritemaps_PlanetZebes                                 ;8BCCC7;
    dw Instruction_FadeOutPlanetZebesText                                ;8BCCCB;
    dw $0060,SpaceSpritemaps_PlanetZebes                                 ;8BCCCD;
    dw Instruction_StartFlyingToZebes                                    ;8BCCD1;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BCCD3;

InstList_CinematicSpriteObject_PlanetZebesFrenchText:
    dw $0099,SpaceSpritemaps_FrenchText_PlanetZebes                      ;8BCCD5;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BCCD9;

InstList_CinematicSpriteObject_CeresExplosion1:
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame1        ;8BCCDB;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame2        ;8BCCDF;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame3        ;8BCCE3;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame4        ;8BCCE7;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame5        ;8BCCEB;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame6        ;8BCCEF;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BCCF3;

InstList_CinematicSpriteObject_CeresExplosion2_0:
    dw CinematicSpriteObject_Instruction_TimerInY,$0006                  ;8BCCF5;

InstList_CinematicSpriteObject_CeresExplosion2_1:
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame1        ;8BCCF9;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame2        ;8BCCFD;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame3        ;8BCD01;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame4        ;8BCD05;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame5        ;8BCD09;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame6        ;8BCD0D;
    dw $0010,$0000                                                       ;8BCD11;
    dw CinematicSpriteObject_Inst_DecrementTimer_GotoYIfNonZero          ;8BCD15;
    dw InstList_CinematicSpriteObject_CeresExplosion2_1                  ;8BCD17;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BCD19;

InstList_CinematicSpriteObject_CeresExplosion3_0:
    dw CinematicSpriteObject_Instruction_TimerInY,$0007                  ;8BCD1B;

InstList_CinematicSpriteObject_CeresExplosion3_1:
    dw $0005,SpaceSpritemaps_CeresExplosionFrame1                        ;8BCD1F;
    dw $0005,SpaceSpritemaps_CeresExplosionFrame2                        ;8BCD23;
    dw $0005,SpaceSpritemaps_CeresExplosionFrame3                        ;8BCD27;
    dw $0005,SpaceSpritemaps_CeresExplosionFrame4                        ;8BCD2B;
    dw $0008,$0000                                                       ;8BCD2F;
    dw CinematicSpriteObject_Inst_DecrementTimer_GotoYIfNonZero          ;8BCD33;
    dw InstList_CinematicSpriteObject_CeresExplosion3_1                  ;8BCD35;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BCD37;

InstList_CinematicSpriteObject_MetroidEggParticle1:
    dw $0001,IntroCeresExplosionSpritemaps_MetroidEggsParticle1          ;8BCD39;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCD3D;
    dw InstList_CinematicSpriteObject_MetroidEggParticle1                ;8BCD3F;

InstList_CinematicSpriteObject_MetroidEggParticle2:
    dw $0001,IntroCeresExplosionSpritemaps_MetroidEggsParticle2          ;8BCD41;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCD45;
    dw InstList_CinematicSpriteObject_MetroidEggParticle2                ;8BCD47;

InstList_CinematicSpriteObject_MetroidEggParticle3:
    dw $0001,IntroCeresExplosionSpritemaps_MetroidEggsParticle3          ;8BCD49;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCD4D;
    dw InstList_CinematicSpriteObject_MetroidEggParticle3                ;8BCD4F;

InstList_CinematicSpriteObject_MetroidEggParticle4:
    dw $0001,IntroCeresExplosionSpritemaps_MetroidEggsParticle4          ;8BCD51;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCD55;
    dw InstList_CinematicSpriteObject_MetroidEggParticle4                ;8BCD57;

InstList_CinematicSpriteObject_MetroidEggParticle5:
    dw $0001,IntroCeresExplosionSpritemaps_MetroidEggsParticle5          ;8BCD59;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCD5D;
    dw InstList_CinematicSpriteObject_MetroidEggParticle5                ;8BCD5F;

InstList_CinematicSpriteObject_MetroidEggParticle6:
    dw $0001,IntroCeresExplosionSpritemaps_MetroidEggsParticle6          ;8BCD61;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCD65;
    dw InstList_CinematicSpriteObject_MetroidEggParticle6                ;8BCD67;

InstList_CinematicSpriteObject_MetroidEggSlimeDrops:
    dw $0001,IntroCeresExplosionSpritemaps_MetroidEggsSlimeDropsFrame1   ;8BCD69;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCD6D;
    dw InstList_CinematicSpriteObject_MetroidEggSlimeDrops               ;8BCD6F;

InstList_MetroidEggParticle_HitGround:
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggsSlimeDropsFrame2   ;8BCD71;
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggsSlimeDropsFrame3   ;8BCD75;
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggsSlimeDropsFrame4   ;8BCD79;
    dw $000A,IntroCeresExplosionSpritemaps_MetroidEggsSlimeDropsFrame5   ;8BCD7D;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BCD81;

InstList_CinematicSpriteObject_ZebesStars2:
    dw $000A,SpaceSpritemaps_ZebesStars2                                 ;8BCD83;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCD87;
    dw InstList_CinematicSpriteObject_ZebesStars2                        ;8BCD89;

InstList_CinematicSpriteObject_ZebesStars3:
    dw $000A,SpaceSpritemaps_ZebesStars3                                 ;8BCD8B;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCD8F;
    dw InstList_CinematicSpriteObject_ZebesStars3                        ;8BCD91;

InstList_CinematicSpriteObject_ZebesStars4:
    dw $000A,SpaceSpritemaps_ZebesStars4                                 ;8BCD93;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCD97;
    dw InstList_CinematicSpriteObject_ZebesStars4                        ;8BCD99;

InstList_CinematicSpriteObject_ZebesStars5:
    dw $000A,SpaceSpritemaps_ZebesStars5                                 ;8BCD9B;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCD9F;
    dw InstList_CinematicSpriteObject_ZebesStars5                        ;8BCDA1;

InstList_CinematicSpriteObject_CeresStars:
    dw $000A,SpaceSpritemaps_CeresStars                                  ;8BCDA3;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCDA7;
    dw InstList_CinematicSpriteObject_CeresStars                         ;8BCDA9;

InstList_CinematicSpriteObject_IntroMotherBrainExplosion_Big:
    dw $0006,SpaceSpritemaps_IntroMotherBrainExplosionBigFrame1          ;8BCDAB;
    dw $0006,SpaceSpritemaps_IntroMotherBrainExplosionBigFrame2          ;8BCDAF;
    dw $0006,SpaceSpritemaps_IntroMotherBrainExplosionBigFrame3          ;8BCDB3;
    dw $0006,SpaceSpritemaps_IntroMotherBrainExplosionBigFrame4          ;8BCDB7;
    dw $0006,SpaceSpritemaps_IntroMotherBrainExplosionBigFrame5          ;8BCDBB;
    dw $0006,SpaceSpritemaps_IntroMotherBrainExplosionBigFrame6          ;8BCDBF;
    dw $0010,$0000                                                       ;8BCDC3;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCDC7;
    dw InstList_CinematicSpriteObject_IntroMotherBrainExplosion_Big      ;8BCDC9;

InstList_CineSpriteObject_IntroMotherBrainExplosion_Small:
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame1        ;8BCDCB;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame2        ;8BCDCF;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame3        ;8BCDD3;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame4        ;8BCDD7;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame5        ;8BCDDB;
    dw $0003,SpaceSpritemaps_IntroMotherBrainExplosionSmallFrame6        ;8BCDDF;
    dw $0010,$0000                                                       ;8BCDE3;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCDE7;
    dw InstList_CineSpriteObject_IntroMotherBrainExplosion_Small         ;8BCDE9;

InstList_CinematicSpriteObject_IntroRinka_0:
    dw $000A,IntroCeresExplosionSpritemaps_RinkaFrame1                   ;8BCDEB;
    dw $000A,IntroCeresExplosionSpritemaps_RinkaFrame2                   ;8BCDEF;
    dw $000A,IntroCeresExplosionSpritemaps_RinkaFrame3                   ;8BCDF3;
    dw Instruction_StartMoving_IntroRinka                                ;8BCDF7;

InstList_CinematicSpriteObject_IntroRinka_1:
    dw $000A,IntroCeresExplosionSpritemaps_RinkaFrame2                   ;8BCDF9;
    dw $000A,IntroCeresExplosionSpritemaps_RinkaFrame1                   ;8BCDFD;
    dw $000A,IntroCeresExplosionSpritemaps_RinkaFrame2                   ;8BCE01;
    dw $000A,IntroCeresExplosionSpritemaps_RinkaFrame3                   ;8BCE05;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCE09;
    dw InstList_CinematicSpriteObject_IntroRinka_1                       ;8BCE0B;

InstList_CinematicSpriteObject_RinkaSpawner:
    dw $004A,$0000                                                       ;8BCE0D;
    dw Instruction_Spawn_IntroRinkas_0_1                                 ;8BCE11;
    dw $0080,$0000                                                       ;8BCE13;
    dw Instruction_Spawn_IntroRinkas_2_3                                 ;8BCE17;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BCE19;

InstList_CinematicSpriteObject_CeresFinalExplosion:
    dw $0005,SpaceSpritemaps_CeresFinalExplosionFrame1                   ;8BCE1B;
    dw $0005,SpaceSpritemaps_CeresFinalExplosionFrame2                   ;8BCE1F;
    dw $0005,SpaceSpritemaps_CeresFinalExplosionFrame3                   ;8BCE23;
    dw $0005,SpaceSpritemaps_CeresFinalExplosionFrame4                   ;8BCE27;
    dw $0005,SpaceSpritemaps_CeresFinalExplosionFrame5                   ;8BCE2B;
    dw $0005,SpaceSpritemaps_CeresFinalExplosionFrame6                   ;8BCE2F;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BCE33;

InstList_CinematicSpriteObject_CeresExplosionSpawner:
    dw $0080,$0000                                                       ;8BCE35;
    dw Instruction_SpawnCeresExplosions1                                 ;8BCE39;
    dw $0050,$0000                                                       ;8BCE3B;
    dw CinematicSpriteObject_Instruction_PreInstructionY                 ;8BCE3F;
    dw PreInst_CeresExplosionSpawner_SpawnExplosion2EveryCFrames         ;8BCE41;
    dw $0040,$0000                                                       ;8BCE43;
    dw Instruction_SpawnCeresExplosions3                                 ;8BCE47;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BCE49;

InstList_CinematicSpriteObject_CeresExplosionLargeAsteroids:
    dw $000A,SpaceSpritemaps_CeresExplosionLargeAsteroids                ;8BCE4B;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BCE4F;
    dw InstList_CinematicSpriteObject_CeresExplosionLargeAsteroids       ;8BCE51;

InstList_CinematicSpriteObject_Delete:
    dw CinematicSpriteObject_Instruction_Delete                          ;8BCE53;

CinematicSpriteObjectDefinitions_IntroMotherBrain:
    dw InitFunction_CinematicSpriteObject_IntroMotherBrain               ;8BCE55;
    dw PreInstruction_CinematicSpriteObject_IntroMotherBrain             ;8BCE57;
    dw InstList_CinematicSpriteObject_IntroMotherBrain                   ;8BCE59;

CinematicSpriteObjectDefinitions_MetroidEgg:
    dw InitFunction_CinematicSpriteObject_MetroidEgg                     ;8BCE5B;
    dw PreInstruction_CinematicSpriteObject_MetroidEgg                   ;8BCE5D;
    dw InstList_CinematicSpriteObject_MetroidEgg                         ;8BCE5F;

CinematicSpriteObjectDefinitions_BabyMetroidBeingDelivered:
    dw InitFunction_CinematicSpriteObject_BabyMetroidBeingDelivered      ;8BCE61;
    dw PreInst_CinematicSpriteObject_BabyMetroidBeingDelivered           ;8BCE63;
    dw InstList_CinematicSpriteObject_BabyMetroidBeingDelivered_0        ;8BCE65;

CinematicSpriteObjectDefinitions_BabyMetroidBeingExamined:
    dw InitFunction_CinematicSpriteObject_BabyMetroidBeingExamined       ;8BCE67;
    dw PreInst_CinematicSpriteObject_BabyMetroidBeingExamined            ;8BCE69;
    dw InstList_CinematicSpriteObject_BabyMetroidBeingExamined_0         ;8BCE6B;

CinematicSpriteObjectDefinitions_IntroTextCaret:
    dw InitFunction_CinematicSpriteObject_IntroTextCaret                 ;8BCE6D;
    dw RTS_8BA8D4                                                        ;8BCE6F;
    dw InstList_CinematicSpriteObject_IntroTextCaret                     ;8BCE71;

CinematicSpriteObjectDefinitions_IntroTextNextPageArrow:
    dw InitFunc_CinematicSpriteObject_IntroTextNextPageArrow             ;8BCE73;
    dw PreInst_CinematicSpriteObject_IntroTextNextPageArrow              ;8BCE75;
    dw InstList_CinematicSpriteObject_IntroTextNextPageArrow             ;8BCE77;

CinematicSpriteObjectDefinitions_ConfusedBabyMetroid:
    dw InitFunction_CinematicSpriteObject_ConfusedBabyMetroid            ;8BCE79;
    dw PreInstruction_CinematicSpriteObject_ConfusedBabyMetroid          ;8BCE7B;
    dw InstList_CinematicSpriteObject_ConfusedBabyMetroid                ;8BCE7D;

CinematicSpriteObjectDefs_CeresUnderAttackLargeAsteroids:
    dw InitFunc_CinematicSpriteObject_CeresExplosionLargeAsteroids       ;8BCE7F;
    dw PreInst_CinematicSpriteObject_CeresExplosionLargeAsteroids        ;8BCE81;
    dw InstList_CinematicSpriteObject_CeresUnderAttackLargeAsteroid      ;8BCE83;

CinematicSpriteObjectDefinitions_CeresUnderAttack:
    dw InitFunction_CinematicSpriteObject_CeresUnderAttack               ;8BCE85;
    dw PreInstruction_CinematicSpriteObject_CeresUnderAttack             ;8BCE87;
    dw InstList_CinematicSpriteObject_CeresUnderAttack                   ;8BCE89;

CinematicSpriteObjectDefinitions_CeresSmallAsteroids:
    dw InitFunction_CinematicSpriteObject_CeresSmallAsteroid             ;8BCE8B;
    dw PreInstruction_CinematicSpriteObject_CeresSmallAsteroid           ;8BCE8D;
    dw InstList_CinematicSpriteObject_CeresSmallAsteroids                ;8BCE8F;

CinematicSpriteObjectDefinitions_CeresPurpleSpaceVortex:
    dw InitFunction_CinematicSpriteObject_CeresPurpleSpaceVortex         ;8BCE91;
    dw PreInstruction_CinematicSpriteObject_CeresPurpleSpaceVortex       ;8BCE93;
    dw InstList_CinematicSpriteObject_CeresPurpleSpaceVortext            ;8BCE95;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_CinematicSpriteObjectDefs_SpaceColonyText_8BCE97:
    dw UNUSED_InitFunc_CinematicSpriteObject_SpaceColonyText_8BC083      ;8BCE97;
    dw RTS_8B93D9                                                        ;8BCE99;
    dw UNUSED_InstList_CinematicSpriteObject_SpaceColonyText_8BCC63      ;8BCE9B;

UNUSED_CinematicSpriteObjectDefs_SpaceColonyFrenchText_8BCE9D:
    dw UNUSED_InitFunc_CineSpriteObject_SpaceColonyFrenchText_8BC0B2     ;8BCE9D;
    dw RTS_8B93D9                                                        ;8BCE9F;
    dw UNUSED_InstList_CineSpriteObject_SpaceColonyFrenchText_8BCCA3     ;8BCEA1;
endif ; !FEATURE_KEEP_UNREFERENCED

CinematicSpriteObjectDefinitions_Zebes:
    dw InitFunction_CinematicSpriteObject_Zebes                          ;8BCEA3;
    dw PreInstruction_CinematicSpriteObject_Zebes                        ;8BCEA5;
    dw InstList_CinematicSpriteObject_Zebes                              ;8BCEA7;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_CinematicSpriteObjectDefinitions_ZebesStars1_8BCEA9:
    dw UNUSED_InitFunction_CinematicSpriteObject_ZebesStars1_8BC897      ;8BCEA9;
    dw PreInstruction_CinematicSpriteObject_ZebesStars5                  ;8BCEAB;
    dw InstList_CinematicSpriteObject_ZebesStars1                        ;8BCEAD;
endif ; !FEATURE_KEEP_UNREFERENCED

CinematicSpriteObjectDefinitions_PlanetZebesText:
    dw InitFunction_CinematicSpriteObject_PlanetZebesText                ;8BCEAF;
    dw RTS_8B93D9                                                        ;8BCEB1;
    dw InstList_CinematicSpriteObject_PlanetZebesText                    ;8BCEB3;

CinematicSpriteObjectDefinitions_PlanetZebesFrenchText:
    dw InitFunction_CinematicSpriteObject_PlanetZebesFrenchText          ;8BCEB5;
    dw RTS_8B93D9                                                        ;8BCEB7;
    dw InstList_CinematicSpriteObject_PlanetZebesFrenchText              ;8BCEB9;

CinematicSpriteObjectDefinitions_CeresExplosion1:
    dw InitFunction_CinematicSpriteObject_CeresExplosion1                ;8BCEBB;
    dw PreInstruction_CinematicSpriteObject_CeresExplosion               ;8BCEBD;
    dw InstList_CinematicSpriteObject_CeresExplosion1                    ;8BCEBF;

CinematicSpriteObjectDefinitions_CeresExplosion2:
    dw InitFunction_CinematicSpriteObject_CeresExplosion2                ;8BCEC1;
    dw PreInstruction_CinematicSpriteObject_CeresExplosion               ;8BCEC3;
    dw InstList_CinematicSpriteObject_CeresExplosion2_0                  ;8BCEC5;

CinematicSpriteObjectDefinitions_CeresExplosion3:
    dw InitFunction_CinematicSpriteObject_CeresExplosion3                ;8BCEC7;
    dw PreInstruction_CinematicSpriteObject_CeresExplosion               ;8BCEC9;
    dw InstList_CinematicSpriteObject_CeresExplosion3_0                  ;8BCECB;

CinematicSpriteObjectDefinitions_MetroidEggParticle1:
    dw InitFunction_CinematicSpriteObject_MetroidEggParticles            ;8BCECD;
    dw PreInstruction_CinematicSpriteObject_MetroidEggParticle           ;8BCECF;
    dw InstList_CinematicSpriteObject_MetroidEggParticle1                ;8BCED1;

CinematicSpriteObjectDefinitions_MetroidEggParticle2:
    dw InitFunction_CinematicSpriteObject_MetroidEggParticles            ;8BCED3;
    dw PreInstruction_CinematicSpriteObject_MetroidEggParticle           ;8BCED5;
    dw InstList_CinematicSpriteObject_MetroidEggParticle2                ;8BCED7;

CinematicSpriteObjectDefinitions_MetroidEggParticle3:
    dw InitFunction_CinematicSpriteObject_MetroidEggParticles            ;8BCED9;
    dw PreInstruction_CinematicSpriteObject_MetroidEggParticle           ;8BCEDB;
    dw InstList_CinematicSpriteObject_MetroidEggParticle3                ;8BCEDD;

CinematicSpriteObjectDefinitions_MetroidEggParticle4:
    dw InitFunction_CinematicSpriteObject_MetroidEggParticles            ;8BCEDF;
    dw PreInstruction_CinematicSpriteObject_MetroidEggParticle           ;8BCEE1;
    dw InstList_CinematicSpriteObject_MetroidEggParticle4                ;8BCEE3;

CinematicSpriteObjectDefinitions_MetroidEggParticle5:
    dw InitFunction_CinematicSpriteObject_MetroidEggParticles            ;8BCEE5;
    dw PreInstruction_CinematicSpriteObject_MetroidEggParticle           ;8BCEE7;
    dw InstList_CinematicSpriteObject_MetroidEggParticle5                ;8BCEE9;

CinematicSpriteObjectDefinitions_MetroidEggParticle6:
    dw InitFunction_CinematicSpriteObject_MetroidEggParticles            ;8BCEEB;
    dw PreInstruction_CinematicSpriteObject_MetroidEggParticle           ;8BCEED;
    dw InstList_CinematicSpriteObject_MetroidEggParticle6                ;8BCEEF;

CinematicSpriteObjectDefinitions_MetroidEggSlimeDrops:
    dw InitFunction_CinematicSpriteObject_MetroidEggSlimeDrops           ;8BCEF1;
    dw PreInstruction_CinematicSpriteObject_MetroidEggSlimeDrops         ;8BCEF3;
    dw InstList_CinematicSpriteObject_MetroidEggSlimeDrops               ;8BCEF5;

CinematicSpriteObjectDefinitions_ZebesStars2:
    dw InitFunction_CinematicSpriteObject_ZebesStars2                    ;8BCEF7;
    dw PreInstruction_CinematicSpriteObject_ZebesStars_2_3_4             ;8BCEF9;
    dw InstList_CinematicSpriteObject_ZebesStars2                        ;8BCEFB;

CinematicSpriteObjectDefinitions_ZebesStars3:
    dw InitFunction_CinematicSpriteObject_ZebesStars3                    ;8BCEFD;
    dw PreInstruction_CinematicSpriteObject_ZebesStars_2_3_4             ;8BCEFF;
    dw InstList_CinematicSpriteObject_ZebesStars3                        ;8BCF01;

CinematicSpriteObjectDefinitions_ZebesStars4:
    dw InitFunction_CinematicSpriteObject_ZebesStars4                    ;8BCF03;
    dw PreInstruction_CinematicSpriteObject_ZebesStars_2_3_4             ;8BCF05;
    dw InstList_CinematicSpriteObject_ZebesStars4                        ;8BCF07;

CinematicSpriteObjectDefinitions_ZebesStars5:
    dw InitFunction_CinematicSpriteObject_ZebesStars5                    ;8BCF09;
    dw PreInstruction_CinematicSpriteObject_ZebesStars5                  ;8BCF0B;
    dw InstList_CinematicSpriteObject_ZebesStars5                        ;8BCF0D;

CinematicSpriteObjectDefinitions_CeresStars:
    dw InitFunction_CinematicSpriteObject_CeresStars                     ;8BCF0F;
    dw PreInstruction_CinematicSpriteObject_CeresStars                   ;8BCF11;
    dw InstList_CinematicSpriteObject_CeresStars                         ;8BCF13;

CinematicSpriteObjectDefs_IntroMotherBrainExplosion_Big:
    dw InitFunc_CinematicSpriteObject_IntroMotherBrainExplosion_Big      ;8BCF15;
    dw PreInst_CinematicSpriteObject_IntroMotherBrainExplosion           ;8BCF17;
    dw InstList_CinematicSpriteObject_IntroMotherBrainExplosion_Big      ;8BCF19;

CinematicSpriteObjectDefs_IntroMotherBrainExplosion_Small:
    dw InitFunc_CineSpriteObject_IntroMotherBrainExplosion_Small         ;8BCF1B;
    dw PreInst_CinematicSpriteObject_IntroMotherBrainExplosion           ;8BCF1D;
    dw InstList_CineSpriteObject_IntroMotherBrainExplosion_Small         ;8BCF1F;

CinematicSpriteObjectDefinitions_IntroRinka:
    dw InitFunction_CinematicSpriteObject_IntroRinka                     ;8BCF21;
    dw RTS_8B93D9                                                        ;8BCF23;
    dw InstList_CinematicSpriteObject_IntroRinka_0                       ;8BCF25;

CinematicSpriteObjectDefinitions_RinkaSpawner:
    dw RTS_8B93D9                                                        ;8BCF27;
    dw RTS_8B93D9                                                        ;8BCF29;
    dw InstList_CinematicSpriteObject_RinkaSpawner                       ;8BCF2B;

CinematicSpriteObjectDefinitions_CeresFinalExplosion:
    dw InitFunction_CinematicSpriteObject_CeresFinalExplosion            ;8BCF2D;
    dw PreInstruction_CinematicSpriteObject_CeresExplosion               ;8BCF2F;
    dw InstList_CinematicSpriteObject_CeresFinalExplosion                ;8BCF31;

CinematicSpriteObjectDefinitions_CeresExplosionSpawner:
    dw RTS_8B93D9                                                        ;8BCF33;
    dw RTS_8B93D9                                                        ;8BCF35;
    dw InstList_CinematicSpriteObject_CeresExplosionSpawner              ;8BCF37;

CinematicSpriteObjectDefs_CeresExplosionLargeAsteroids:
    dw InitFunc_CinematicSpriteObject_CeresExplosionLargeAsteroids       ;8BCF39;
    dw PreInst_CinematicSpriteObject_CeresExplosionLargeAsteroids        ;8BCF3B;
    dw InstList_CinematicSpriteObject_CeresExplosionLargeAsteroids       ;8BCF3D;

CinematicSpriteObjectDefinitions_IntroTextPage1:
    dw RTS_8B93D9                                                        ;8BCF3F;
    dw RTS_8B93D9                                                        ;8BCF41;
    dw CinematicBGObjectInstLists_IntroTextPage1                         ;8BCF43;

CinematicSpriteObjectDefinitions_IntroTextPage2:
    dw RTS_8B93D9                                                        ;8BCF45;
    dw RTS_8B93D9                                                        ;8BCF47;
    dw CinematicBGObjectInstLists_IntroTextPage2                         ;8BCF49;

CinematicSpriteObjectDefinitions_IntroTextPage3:
    dw RTS_8B93D9                                                        ;8BCF4B;
    dw RTS_8B93D9                                                        ;8BCF4D;
    dw CinematicBGObjectInstLists_IntroTextPage3                         ;8BCF4F;

CinematicSpriteObjectDefinitions_IntroTextPage4:
    dw RTS_8B93D9                                                        ;8BCF51;
    dw RTS_8B93D9                                                        ;8BCF53;
    dw CinematicBGObjectInstLists_IntroTextPage4                         ;8BCF55;

CinematicSpriteObjectDefinitions_IntroTextPage5:
    dw RTS_8B93D9                                                        ;8BCF57;
    dw RTS_8B93D9                                                        ;8BCF59;
    dw CinematicBGObjectInstLists_IntroTextPage5                         ;8BCF5B;

CinematicSpriteObjectDefinitions_IntroTextPage6:
    dw RTS_8B93D9                                                        ;8BCF5D;
    dw RTS_8B93D9                                                        ;8BCF5F;
    dw CinematicBGObjectInstLists_IntroTextPage6                         ;8BCF61;

CinematicSpriteObjectDefinitions_SamusBlinking:
    dw RTS_8B93D9                                                        ;8BCF63;
    dw PreInstruction_CinematicBGObject_SamusBlinking                    ;8BCF65;
    dw CinematicBGObjectInstLists_SamusBlinking                          ;8BCF67;

CinematicSpriteObjectDefinitions_SpaceColony:
    dw RTS_8B93D9                                                        ;8BCF69;
    dw RTS_8B93D9                                                        ;8BCF6B;
    dw CinematicBGObjectInstLists_SpaceColony                            ;8BCF6D;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_CinematicSpriteObjectDefs_IntroTextPage1_8BCF6F:
    dw RTS_8B93D9                                                        ;8BCF6F;
    dw RTS_8B93D9                                                        ;8BCF71;
    dw CinematicBGObjectInstLists_IntroTextPage1                         ;8BCF73;
endif ; !FEATURE_KEEP_UNREFERENCED


; Format:
;     dddd,nnnn
;     tttt,bbbb
;     tttt,bbbb
;     ...
; where
;     d: Japanese text tiles destination offset ($7E:4000 + d)
;     n: Number of characters
;     t: Top Japanese text tiles source offset ($7F:A000 + t)
;     b: Bottom Japanese text tiles source offset ($7F:A000 + b)
IntroJapanTextData_Page1_TopLine:                                        ;8BCF75;
; 私が メトロイドの存在を知ったのは (I learnt of the metroids' existence)
    dw $0040,$0011
    dw $0A60,$0B60
    dw $04E0,$0150
    dw $0EF0,$0EF0
    dw $0E00,$0F00
    dw $0E10,$0F10
    dw $0E20,$0F20
    dw $0E30,$0F30
    dw $0F70,$0F10
    dw $0280,$0380
    dw $0C70,$0D70
    dw $0C80,$0D80
    dw $04C0,$05C0
    dw $08E0,$09E0
    dw $0EF0,$0760
    dw $00F0,$01F0
    dw $0280,$0380
    dw $0290,$0390

IntroJapanTextData_Page1_BottomLine:                                     ;8BCFBD;
; 惑星ゼーベスでの戦いの時だった (it was during the battle on planet Zebes)
    dw $01C0,$000F
    dw $0680,$0780
    dw $0690,$0790
    dw $0E80,$0F80
    dw $0650,$0750
    dw $0E40,$0F40
    dw $0E60,$0F60
    dw $04F0,$0320
    dw $0280,$0380
    dw $08F0,$09F0
    dw $0010,$0110
    dw $0280,$0380
    dw $0C90,$0D90
    dw $05E0,$01F0
    dw $0EF0,$0760
    dw $00F0,$01F0

IntroJapanTextData_Page2_Subpage1_TopLine:                               ;8BCFFD;
; その後 私は惑星ＳＲ３８８へ メトロイドを (after that, I, to planet SR388, with the metroid)
    dw $0020,$0015
    dw $00E0,$01E0
    dw $0280,$0380
    dw $0A20,$0B20
    dw $0EF0,$0EF0
    dw $0A60,$0B60
    dw $0290,$0390
    dw $0680,$0780
    dw $0690,$0790
    dw $0660,$07E0
    dw $0670,$0770
    dw $06E0,$07E0
    dw $06F0,$07F0
    dw $06F0,$07F0
    dw $02C0,$03C0
    dw $0EF0,$0EF0
    dw $0E00,$0F00
    dw $0E10,$0F10
    dw $0E20,$0F20
    dw $0E30,$0F30
    dw $0F70,$0F10
    dw $04C0,$05C0

IntroJapanTextData_Page2_Subpage1_BottomLine:                            ;8BD055;
; 壊滅させるために向った (headed there to destroy it)
    dw $01A0,$000B
    dw $0A30,$0B30
    dw $0A40,$0B40
    dw $00A0,$01A0
    dw $00D0,$01D0
    dw $0480,$0580
    dw $00F0,$01F0
    dw $0410,$0510
    dw $0250,$0350
    dw $0A50,$0B50
    dw $0EF0,$0760
    dw $00F0,$01F0

IntroJapanTextData_Page2_Subpage2_TopLine:                               ;8BD085;
; そこで 唯一の生き残りであるベビーメトロイド (there, the only baby metroid left alive)
    dw $0010,$0016
    dw $00E0,$01E0
    dw $0090,$0190
    dw $04F0,$0320
    dw $0EF0,$0EF0
    dw $0A70,$0B70
    dw $0A80,$0B80
    dw $0280,$0380
    dw $0A90,$0B90
    dw $0060,$0160
    dw $0AA0,$0BA0
    dw $0470,$0570
    dw $04F0,$0320
    dw $0000,$0100
    dw $0480,$0580
    dw $0E40,$0F40
    dw $0E50,$0F50
    dw $0650,$0750
    dw $0E00,$0F00
    dw $0E10,$0F10
    dw $0E20,$0F20
    dw $0E30,$0F30
    dw $0F70,$0F10

IntroJapanTextData_Page2_Subpage2_BottomLine:                            ;8BD0E1;
; を捕獲した (I captured)
    dw $0190,$0005
    dw $04C0,$05C0
    dw $06A0,$07A0
    dw $06B0,$07B0
    dw $00B0,$01B0
    dw $00F0,$01F0

IntroJapanTextData_Page3_Subpage1:                                       ;8BD0F9;
; 正確にはベビーメトロイドがついて来たと言うべきだ (rather, I should say the metroid followed me)
    dw $0000,$0018
    dw $06C0,$07C0
    dw $06D0,$07D0
    dw $0250,$0350
    dw $0290,$0390
    dw $0E40,$0F40
    dw $0E50,$0F50
    dw $0650,$0750
    dw $0E00,$0F00
    dw $0E10,$0F10
    dw $0E20,$0F20
    dw $0E30,$0F30
    dw $0F70,$0F10
    dw $04E0,$0150
    dw $0210,$0310
    dw $0010,$0110
    dw $0220,$0320
    dw $0A00,$0B00
    dw $00F0,$01F0
    dw $0230,$0330
    dw $0A10,$0B10
    dw $0020,$0120
    dw $0E40,$0F40
    dw $0060,$0160
    dw $05E0,$01F0

IntroJapanTextData_Page3_Subpage2:                                       ;8BD15D;
; 生まれてすぐ目に入った私を母親だと思った様だ (when it was born, it seemed to think that I, whom it immediately noticed, was its mother)
    dw $0010,$0016
    dw $0A90,$0B90
    dw $02E0,$03E0
    dw $0490,$0590
    dw $0220,$0320
    dw $00C0,$01C0
    dw $05F0,$0170
    dw $0AD0,$0BD0
    dw $0250,$0350
    dw $0CB0,$0DB0
    dw $0EF0,$0760
    dw $00F0,$01F0
    dw $0A60,$0B60
    dw $04C0,$05C0
    dw $08A0,$09A0
    dw $08B0,$09B0
    dw $05E0,$01F0
    dw $0230,$0330
    dw $08C0,$09C0
    dw $0EF0,$0760
    dw $00F0,$01F0
    dw $0C50,$0D50
    dw $05E0,$01F0

IntroJapanTextData_Page4_Subpage1_TopLine:                               ;8BD1B9;
; そのベビーメトロイドを私はスペースコロニーの (I went to a space colony with this baby metroid)
    dw $0010,$0016
    dw $00E0,$01E0
    dw $0280,$0380
    dw $0E40,$0F40
    dw $0E50,$0F50
    dw $0650,$0750
    dw $0E00,$0F00
    dw $0E10,$0F10
    dw $0E20,$0F20
    dw $0E30,$0F30
    dw $0F70,$0F10
    dw $04C0,$05C0
    dw $0A60,$0B60
    dw $0290,$0390
    dw $0E60,$0F60
    dw $0E70,$0F40
    dw $0650,$0750
    dw $0E60,$0F60
    dw $0E90,$0F90
    dw $0E20,$0F20
    dw $0EA0,$0FA0
    dw $0650,$0750
    dw $0280,$0380

IntroJapanTextData_Page4_Subpage1_BottomLine:                            ;8BD215;
; 宇宙科学アカデミーへと持ち込んだ (the Space Science Academy)
    dw $0190,$0010
    dw $0CE0,$0DE0
    dw $0CF0,$0DF0
    dw $0C20,$0D20
    dw $0C30,$0D30
    dw $0610,$0710
    dw $0620,$0720
    dw $0630,$0730
    dw $0640,$0740
    dw $0650,$0750
    dw $02C0,$03C0
    dw $0230,$0330
    dw $0C60,$0D60
    dw $0200,$0300
    dw $08D0,$09D0
    dw $04D0,$05D0
    dw $05E0,$01F0

IntroJapanTextData_Page4_Subpage2_TopLine:                               ;8BD259;
; メトロイドの優れた特性を宇宙の未来に (with the metroid's amazing special powers, for the future of space)
    dw $0030,$0012
    dw $0E00,$0F00
    dw $0E10,$0F10
    dw $0E20,$0F20
    dw $0E30,$0F30
    dw $0F70,$0F10
    dw $0280,$0380
    dw $0AB0,$0BB0
    dw $0490,$0590
    dw $00F0,$01F0
    dw $0CC0,$0DC0
    dw $0CD0,$0DD0
    dw $04C0,$05C0
    dw $0CE0,$0DE0
    dw $0CF0,$0DF0
    dw $0280,$0380
    dw $0CA0,$0DA0
    dw $0A00,$0B00
    dw $0250,$0350

IntroJapanTextData_Page4_Subpage2_BottomLine:                            ;8BD2A5;
; 役立たせるために・・・ (in order to harness it...)
    dw $01B0,$000B
    dw $0800,$0900
    dw $0810,$0910
    dw $00F0,$01F0
    dw $00D0,$01D0
    dw $0480,$0580
    dw $00F0,$01F0
    dw $0410,$0510
    dw $0250,$0350
    dw $0EF0,$0600
    dw $0EF0,$0600
    dw $0EF0,$0600

IntroJapanTextData_Page5_Subpage1:                                       ;8BD2D5;
; 研究は順調に進みつつあった (research was continuing smoothly)
    dw $0050,$000D
    dw $0860,$0960
    dw $0870,$0970
    dw $0290,$0390
    dw $0840,$0940
    dw $0850,$0950
    dw $0250,$0350
    dw $0C40,$0D40
    dw $02F0,$03F0
    dw $0210,$0310
    dw $0210,$0310
    dw $0000,$0100
    dw $0EF0,$0760
    dw $00F0,$01F0

IntroJapanTextData_Page5_Subpage2:                                       ;8BD30D;
; そんなある日スペースコロニーから突然連絡が入った (one day I got a sudden transmission from the space colony)
    dw $0000,$0018
    dw $00E0,$01E0
    dw $04D0,$05D0
    dw $0240,$0340
    dw $0000,$0100
    dw $0480,$0580
    dw $0AC0,$0BC0
    dw $0E60,$0F60
    dw $0E70,$0F40
    dw $0650,$0750
    dw $0E60,$0F60
    dw $0E90,$0F90
    dw $0E20,$0F20
    dw $0EA0,$0FA0
    dw $0650,$0750
    dw $0050,$0150
    dw $0460,$0560
    dw $0880,$0980
    dw $0890,$0990
    dw $0820,$0920
    dw $0830,$0930
    dw $04E0,$0150
    dw $0CB0,$0DB0
    dw $0EF0,$0760
    dw $00F0,$01F0

IntroJapanTextData_Page6:                                                ;8BD371;
; 非常事態だ (it's an emergency)
    dw $0090,$0005
    dw $0AE0,$0BE0
    dw $0AF0,$0BF0
    dw $0C00,$0D00
    dw $0C10,$0D10
    dw $05E0,$01F0

InstList_Mode7Object_Page1_Subpage1:
    dw Instruction_LoadIntroTextPage1                                    ;8BD389;
    dw $0001,Mode7_Transfer_Data                                         ;8BD38B;
    dw Instruction_EnableCinematicBGTilemapUpdates_duplicate             ;8BD38F;
    dw Mode7Objects_Instruction_Delete                                   ;8BD391;

InstList_Mode7Object_Page1_Subpage2:
    dw $0001,Mode7_Transfer_Data
    dw Mode7Objects_Instruction_GotoY
    dw InstList_Mode7Object_Page1_Subpage2

InstList_EnableCinematicBGTilemapUpdates_Page1DoneInput:
    dw Instruction_EnableCinematicBGTilemapUpdates_Page1DoneInput
    dw Mode7Objects_Instruction_Delete

InstList_Mode7Object_Page2_Subpage1:
    dw Instruction_LoadIntroTextPage2_Subpage1                           ;8BD393;
    dw $0001,Mode7_Transfer_Data                                         ;8BD395;
    dw Instruction_EnableCinematicBGTilemapUpdates_duplicate             ;8BD399;
    dw Mode7Objects_Instruction_Delete                                   ;8BD39B;

InstList_Mode7Object_Page2_Subpage2:
    dw $0001,Mode7_Transfer_Data                                         ;8BD39D;
    dw Mode7Objects_Instruction_GotoY                                    ;8BD3A1;
    dw InstList_Mode7Object_Page2_Subpage2                               ;8BD3A3;

InstList_EnableCinematicBGTilemapUpdates_Page2DoneInput:
    dw Instruction_EnableCinematicBGTilemapUpdates_Page2DoneInput        ;8BD3A5;
    dw Mode7Objects_Instruction_Delete                                   ;8BD3A7;

InstList_Mode7Object_Page3_Subpage1:
    dw Instruction_LoadIntroTextPage3_Subpage1                           ;8BD3A9;
    dw $0001,Mode7_Transfer_Data                                         ;8BD3AB;
    dw Instruction_EnableCinematicBGTilemapUpdates_duplicate             ;8BD3AF;
    dw Mode7Objects_Instruction_Delete                                   ;8BD3B1;

InstList_Mode7Object_Page3_Subpage2:
    dw $0001,Mode7_Transfer_Data                                         ;8BD3B3;
    dw Mode7Objects_Instruction_GotoY                                    ;8BD3B7;
    dw InstList_Mode7Object_Page3_Subpage2                               ;8BD3B9;

InstList_EnableCinematicBGTilemapUpdates_Page3DoneInput:
    dw Instruction_EnableCinematicBGTilemapUpdates_Page3DoneInput        ;8BD3BB;
    dw Mode7Objects_Instruction_Delete                                   ;8BD3BD;

InstList_Mode7Object_Page4_Subpage1:
    dw Instruction_LoadIntroTextPage4_Subpage1                           ;8BD3BF;
    dw $0001,Mode7_Transfer_Data                                         ;8BD3C1;
    dw Instruction_EnableCinematicBGTilemapUpdates_duplicate             ;8BD3C5;
    dw Mode7Objects_Instruction_Delete                                   ;8BD3C7;

InstList_Mode7Object_Page4_Subpage2:
    dw $0001,Mode7_Transfer_Data                                         ;8BD3C9;
    dw Mode7Objects_Instruction_GotoY                                    ;8BD3CD;
    dw InstList_Mode7Object_Page4_Subpage2                               ;8BD3CF;

InstList_EnableCinematicBGTilemapUpdates_Page4DoneInput:
    dw Instruction_EnableCinematicBGTilemapUpdates_Page4DoneInput        ;8BD3D1;
    dw Mode7Objects_Instruction_Delete                                   ;8BD3D3;

InstList_Mode7Object_Page5_Subpage1:
    dw Instruction_LoadIntroTextPage5_Subpage1                           ;8BD3D5;
    dw $0001,Mode7_Transfer_Data                                         ;8BD3D7;
    dw Instruction_EnableCinematicBGTilemapUpdates_duplicate             ;8BD3DB;
    dw Mode7Objects_Instruction_Delete                                   ;8BD3DD;

InstList_Mode7Object_Page5_Subpage2:
    dw $0001,Mode7_Transfer_Data                                         ;8BD3DF;
    dw Mode7Objects_Instruction_GotoY                                    ;8BD3E3;
    dw InstList_Mode7Object_Page5_Subpage2                               ;8BD3E5;

InstList_EnableCinematicBGTilemapUpdates_Page5DoneInput:
    dw Instruction_EnableCinematicBGTilemapUpdates_Page5DoneInput        ;8BD3E7;
    dw Mode7Objects_Instruction_Delete                                   ;8BD3E9;

InstList_Mode7Object_Page6:
    dw Instruction_LoadIntroTextPage6                                    ;8BD3EB;
    dw $0001,Mode7_Transfer_Data                                         ;8BD3ED;
    dw Instruction_EnableCinematicBGTilemapUpdates_Page6DoneInput        ;8BD3F1;
    dw Mode7Objects_Instruction_Delete                                   ;8BD3F3;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_InstList_Mode7Object_D43D_8BD3F5:
    dw UNUSED_Instruction_LoadIntroText_NonExistent                      ;8BD3F5;
    dw $0001,Mode7_Transfer_Data                                         ;8BD3F7;
    dw Instruction_EnableCinematicBGTilemapUpdates                       ;8BD3FB;
    dw Mode7Objects_Instruction_Delete                                   ;8BD3FD;
endif ; !FEATURE_KEEP_UNREFERENCED

Mode7_Transfer_Data:
    db $00,$00                                                           ;8BD3FF;

Mode7Objects_IntroText_Page1_Subpage1:
    dw RTS_8B93D9                                                        ;8BD401;
    dw RTS_8B93D9                                                        ;8BD403;
    dw InstList_Mode7Object_Page1_Subpage1                               ;8BD405;

Mode7Objects_IntroText_Page1_Subpage2:
    dw RTS_8B93D9
    dw Instruction_LoadIntroTextPage1_Subpage2
    dw InstList_Mode7Object_Page1_Subpage2

Mode7Objects_IntroText_Page2_Subpage1:
    dw RTS_8B93D9                                                        ;8BD407;
    dw RTS_8B93D9                                                        ;8BD409;
    dw InstList_Mode7Object_Page2_Subpage1                               ;8BD40B;

Mode7Objects_IntroText_Page2_Subpage2:
    dw RTS_8B93D9                                                        ;8BD40D;
    dw Instruction_LoadIntroTextPage2_Subpage2                           ;8BD40F;
    dw InstList_Mode7Object_Page2_Subpage2                               ;8BD411;

Mode7Objects_IntroText_Page3_Subpage1:
    dw RTS_8B93D9                                                        ;8BD413;
    dw RTS_8B93D9                                                        ;8BD415;
    dw InstList_Mode7Object_Page3_Subpage1                               ;8BD417;

Mode7Objects_IntroText_Page3_Subpage2:
    dw RTS_8B93D9                                                        ;8BD419;
    dw PreInstruction_LoadIntroTextPage3_Subpage2                        ;8BD41B;
    dw InstList_Mode7Object_Page3_Subpage2                               ;8BD41D;

Mode7Objects_IntroText_Page4_Subpage1:
    dw RTS_8B93D9                                                        ;8BD41F;
    dw RTS_8B93D9                                                        ;8BD421;
    dw InstList_Mode7Object_Page4_Subpage1                               ;8BD423;

Mode7Objects_IntroText_Page4_Subpage2:
    dw RTS_8B93D9                                                        ;8BD425;
    dw PreInstruction_LoadIntroTextPage4_Subpage2                        ;8BD427;
    dw InstList_Mode7Object_Page4_Subpage2                               ;8BD429;

Mode7Objects_IntroJaanText_Page5_Subpage1:
    dw RTS_8B93D9                                                        ;8BD42B;
    dw RTS_8B93D9                                                        ;8BD42D;
    dw InstList_Mode7Object_Page5_Subpage1                               ;8BD42F;

Mode7Objects_IntroText_Page5_Subpage2:
    dw RTS_8B93D9                                                        ;8BD431;
    dw PreInstruction_LoadIntroTextPage5_Subpage2                        ;8BD433;
    dw InstList_Mode7Object_Page5_Subpage2                               ;8BD435;

Mode7Objects_IntroText_Page6:
    dw RTS_8B93D9                                                        ;8BD437;
    dw RTS_8B93D9                                                        ;8BD439;
    dw InstList_Mode7Object_Page6                                        ;8BD43B;

if !FEATURE_KEEP_UNREFERENCED
UNUSED_Mode7Objects_8BD43D:
    dw RTS_8B93D9                                                        ;8BD43D;
    dw RTS_8B93D9                                                        ;8BD43F;
    dw UNUSED_InstList_Mode7Object_D43D_8BD3F5                           ;8BD441;
endif ; !FEATURE_KEEP_UNREFERENCED

GameState27_EndingAndCredits:
    PHP                                                                  ;8BD443;
    PHB                                                                  ;8BD444;
    PHK                                                                  ;8BD445;
    PLB                                                                  ;8BD446;
    REP #$30                                                             ;8BD447;
    PEA.W .manualReturn-1                                                ;8BD449;
    JMP.W ($1F51)                                                        ;8BD44C;


.manualReturn:
    LDA.W $1B9F                                                          ;8BD44F;
    BMI .zeroTimer                                                       ;8BD452;
    INC A                                                                ;8BD454;
    STA.W $1B9F                                                          ;8BD455;

.zeroTimer:
    INC.W $1A51                                                          ;8BD458;
    JSR.W Handle_CinematicSpriteObjects                                  ;8BD45B;
    JSR.W HandleFinalScreen_CinematicBGObjects                           ;8BD45E;
    JSR.W Handle_CreditsObject                                           ;8BD461;
    JSL.L PaletteFXObject_Handler                                        ;8BD464;
    JSR.W Draw_CinematicSpriteObjects_EndingCredits                      ;8BD468;
    JSR.W Handle_ShootingStars                                           ;8BD46B;
    JSR.W HandleMode7TransformMatrixAndBG1Position                       ;8BD46E;
    PLB                                                                  ;8BD471;
    PLP                                                                  ;8BD472;
    RTL                                                                  ;8BD473;


HandleFinalScreen_CinematicBGObjects:
    LDA.W $1F51                                                          ;8BD474;
    CMP.W #CinematicFunction_PostCredits_FadeFromWhite                   ;8BD477;
    BMI .return                                                          ;8BD47A;
    JSR.W Handle_CinematicBGObjectsWithoutEyes                           ;8BD47C;

.return:
    RTS                                                                  ;8BD47F;


CinematicFunction_Ending_Setup:
    STZ.B $AB                                                            ;8BD480;
    STZ.B $A7                                                            ;8BD482;
    LDX.W #$0008                                                         ;8BD484;

.wait8Frames:
    JSL.L WaitForNMI                                                     ;8BD487;
    DEX                                                                  ;8BD48B;
    BPL .wait8Frames                                                     ;8BD48C;
    JSR.W Setup_PPU_ZebesDestruction                                     ;8BD48E;
    LDA.W #$1C1F                                                         ;8BD491;
    DEC A                                                                ;8BD494;
    DEC A                                                                ;8BD495;
    SEC                                                                  ;8BD496;
    SBC.W #$198D                                                         ;8BD497;
    TAX                                                                  ;8BD49A;

.loopClearRAM:
    STZ.W $198D,X                                                        ;8BD49B;
    DEX                                                                  ;8BD49E;
    DEX                                                                  ;8BD49F;
    BPL .loopClearRAM                                                    ;8BD4A0;
    LDX.W #$0000                                                         ;8BD4A2;

.loopPalettes:
    LDA.L Palettes_CloudSpritesInZebesExplosionScene,X                   ;8BD4A5;
    STA.L $7EC000,X                                                      ;8BD4A9;
    INX                                                                  ;8BD4AD;
    INX                                                                  ;8BD4AE;
    CPX.W #$0200                                                         ;8BD4AF;
    BMI .loopPalettes                                                    ;8BD4B2;
    LDA.W #Tiles_Zebes_Being_Zoomed_Out_during_Zebes_Explosion_Mode7>>8&$FF00 ;8BD4B4;
    STA.B $48                                                            ;8BD4B7;
    LDA.W #Tiles_Zebes_Being_Zoomed_Out_during_Zebes_Explosion_Mode7     ;8BD4B9;
    STA.B $47                                                            ;8BD4BC;
    JSL.L Decompression_HardcodedDestination                             ;8BD4BE;
    dl $7F0000                                                           ;8BD4C2;
    LDA.W #Tiles_Yellow_Clouds_during_Zebes_Explosion>>8&$FF00           ;8BD4C5;
    STA.B $48                                                            ;8BD4C8;
    LDA.W #Tiles_Yellow_Clouds_during_Zebes_Explosion                    ;8BD4CA;
    STA.B $47                                                            ;8BD4CD;
    JSL.L Decompression_HardcodedDestination                             ;8BD4CF;
    dl $7F4000                                                           ;8BD4D3;
    LDA.W #InterleavedTilesTilemap_ZebesBeingZoomedOutExplosion_Mode7>>8&$FF00 ;8BD4D6;
    STA.B $48                                                            ;8BD4D9;
    LDA.W #InterleavedTilesTilemap_ZebesBeingZoomedOutExplosion_Mode7    ;8BD4DB;
    STA.B $47                                                            ;8BD4DE;
    JSL.L Decompression_HardcodedDestination                             ;8BD4E0;
    dl $7F8000                                                           ;8BD4E4;
    SEP #$30                                                             ;8BD4E7;
    LDA.B #$00                                                           ;8BD4E9;
    STA.W $2116                                                          ;8BD4EB;
    LDA.B #$00                                                           ;8BD4EE;
    STA.W $2117                                                          ;8BD4F0;
    LDA.B #$80                                                           ;8BD4F3;
    STA.W $2115                                                          ;8BD4F5;
    JSL.L SetupHDMATransfer                                              ;8BD4F8;
    db $01,$01,$18                                                       ;8BD4FC;
    dl $7F8000                                                           ;8BD4FF;
    dw $4000                                                             ;8BD502;
    LDA.B #$02                                                           ;8BD504;
    STA.W $420B                                                          ;8BD506;
    LDA.B #$00                                                           ;8BD509;
    STA.W $2116                                                          ;8BD50B;
    LDA.B #$20                                                           ;8BD50E;
    STA.W $2117                                                          ;8BD510;
    LDA.B #$80                                                           ;8BD513;
    STA.W $2115                                                          ;8BD515;
    JSL.L SetupHDMATransfer                                              ;8BD518;
    db $01,$01,$18                                                       ;8BD51C;
    dl $7F8000                                                           ;8BD51F;
    dw $4000                                                             ;8BD522;
    LDA.B #$02                                                           ;8BD524;
    STA.W $420B                                                          ;8BD526;
    LDA.B #$00                                                           ;8BD529;
    STA.W $2116                                                          ;8BD52B;
    LDA.B #$60                                                           ;8BD52E;
    STA.W $2117                                                          ;8BD530;
    LDA.B #$80                                                           ;8BD533;
    STA.W $2115                                                          ;8BD535;
    JSL.L SetupHDMATransfer                                              ;8BD538;
    db $01,$01,$18                                                       ;8BD53C;
    dl $7F4000                                                           ;8BD53F;
    dw $4000                                                             ;8BD542;
    LDA.B #$02                                                           ;8BD544;
    STA.W $420B                                                          ;8BD546;
    LDA.B #$00                                                           ;8BD549;
    STA.W $2116                                                          ;8BD54B;
    LDA.B #$00                                                           ;8BD54E;
    STA.W $2117                                                          ;8BD550;
    LDA.B #$80                                                           ;8BD553;
    STA.W $2115                                                          ;8BD555;
    JSL.L SetupHDMATransfer                                              ;8BD558;
    db $01,$00,$19                                                       ;8BD55C;
    dl $7F0000                                                           ;8BD55F;
    dw $4000                                                             ;8BD562;
    LDA.B #$02                                                           ;8BD564;
    STA.W $420B                                                          ;8BD566;
    REP #$30                                                             ;8BD569;
    LDA.W #Tiles_Zebes_Explosion>>8&$FF00                                ;8BD56B;
    STA.B $48                                                            ;8BD56E;
    LDA.W #Tiles_Zebes_Explosion                                         ;8BD570;
    STA.B $47                                                            ;8BD573;
    JSL.L Decompression_HardcodedDestination                             ;8BD575;
    dl $7F8000                                                           ;8BD579;
    LDA.W #Tiles_Gunship_Ceres_Mode7>>8&$FF00                            ;8BD57C;
    STA.B $48                                                            ;8BD57F;
    LDA.W #Tiles_Gunship_Ceres_Mode7                                     ;8BD581;
    STA.B $47                                                            ;8BD584;
    JSL.L Decompression_HardcodedDestination                             ;8BD586;
    dl $7F0000                                                           ;8BD58A;
    LDA.W #Gunship_Ceres_Tilemap>>8&$FF00                                ;8BD58D;
    STA.B $48                                                            ;8BD590;
    LDA.W #Gunship_Ceres_Tilemap                                         ;8BD592;
    STA.B $47                                                            ;8BD595;
    JSL.L Decompression_HardcodedDestination                             ;8BD597;
    dl $7F4000                                                           ;8BD59B;
    LDX.W #$0300                                                         ;8BD59E;
    LDA.W #$8C8C                                                         ;8BD5A1;

.loopTilemap:
    STA.L $7F4000,X                                                      ;8BD5A4;
    INX                                                                  ;8BD5A8;
    INX                                                                  ;8BD5A9;
    CPX.W #$4000                                                         ;8BD5AA;
    BMI .loopTilemap                                                     ;8BD5AD;
    LDA.W #Wide_Part_of_Zebes_Explosion_Tilemap>>8&$FF00                 ;8BD5AF;
    STA.B $48                                                            ;8BD5B2;
    LDA.W #Wide_Part_of_Zebes_Explosion_Tilemap                          ;8BD5B4;
    STA.B $47                                                            ;8BD5B7;
    JSL.L Decompression_HardcodedDestination                             ;8BD5B9;
    dl $7FE000                                                           ;8BD5BD;
    LDA.W #Concentric_Wide_Part_of_Zebes_Explosion_Tilemap>>8&$FF00      ;8BD5C0;
    STA.B $48                                                            ;8BD5C3;
    LDA.W #Concentric_Wide_Part_of_Zebes_Explosion_Tilemap               ;8BD5C5;
    STA.B $47                                                            ;8BD5C8;
    JSL.L Decompression_HardcodedDestination                             ;8BD5CA;
    dl $7FE800                                                           ;8BD5CE;
    LDA.W #Eclipse_of_Zebes_during_Explosion_Tilemap>>8&$FF00            ;8BD5D1;
    STA.B $48                                                            ;8BD5D4;
    LDA.W #Eclipse_of_Zebes_during_Explosion_Tilemap                     ;8BD5D6;
    STA.B $47                                                            ;8BD5D9;
    JSL.L Decompression_HardcodedDestination                             ;8BD5DB;
    dl $7FF000                                                           ;8BD5DF;
    LDA.W #Blank_BG2_Tilemap>>8&$FF00                                    ;8BD5E2;
    STA.B $48                                                            ;8BD5E5;
    LDA.W #Blank_BG2_Tilemap                                             ;8BD5E7;
    STA.B $47                                                            ;8BD5EA;
    JSL.L Decompression_HardcodedDestination                             ;8BD5EC;
    dl $7FF800                                                           ;8BD5F0;
    LDA.W #Tiles_Font3_Background>>8&$FF00                               ;8BD5F3;
    STA.B $48                                                            ;8BD5F6;
    LDA.W #Tiles_Font3_Background                                        ;8BD5F8;
    STA.B $47                                                            ;8BD5FB;
    JSL.L Decompression_HardcodedDestination                             ;8BD5FD;
    dl $7EA000                                                           ;8BD601;
    LDA.W #InterleavedTilesTilemap_GreyCloudsDuringZebesExplosion_Mode7>>8&$FF00 ;8BD604;
    STA.B $48                                                            ;8BD607;
    LDA.W #InterleavedTilesTilemap_GreyCloudsDuringZebesExplosion_Mode7  ;8BD609;
    STA.B $47                                                            ;8BD60C;
    JSL.L Decompression_HardcodedDestination                             ;8BD60E;
    dl $7E2000                                                           ;8BD612;
    LDA.W #InterleavedTilesTilemap_BigZebesDuringZebesExplosion_Mode7>>8&$FF00 ;8BD615;
    STA.B $48                                                            ;8BD618;
    LDA.W #InterleavedTilesTilemap_BigZebesDuringZebesExplosion_Mode7    ;8BD61A;
    STA.B $47                                                            ;8BD61D;
    JSL.L Decompression_HardcodedDestination                             ;8BD61F;
    dl $7E6000                                                           ;8BD623;
    LDA.W #$0100                                                         ;8BD626;
    STA.W $211B                                                          ;8BD629;
    STA.B $78                                                            ;8BD62C;
    STZ.W $211C                                                          ;8BD62E;
    STZ.B $7A                                                            ;8BD631;
    STZ.W $211D                                                          ;8BD633;
    STZ.B $7C                                                            ;8BD636;
    STA.W $211E                                                          ;8BD638;
    STA.B $7E                                                            ;8BD63B;
    LDA.W #$0080                                                         ;8BD63D;
    STA.W $211F                                                          ;8BD640;
    STA.B $80                                                            ;8BD643;
    STA.W $2120                                                          ;8BD645;
    STA.B $82                                                            ;8BD648;
    LDA.W #$0020                                                         ;8BD64A;
    STA.W $198D                                                          ;8BD64D;
    LDA.W #$0040                                                         ;8BD650;
    STA.W $198F                                                          ;8BD653;
    LDA.W #$0000                                                         ;8BD656;
    STA.W $1993                                                          ;8BD659;
    STA.W $1997                                                          ;8BD65C;
    STZ.W $078D                                                          ;8BD65F;
    STZ.W $0911                                                          ;8BD662;
    STZ.W $0915                                                          ;8BD665;
    JSL.L Clear_PaletteFXObjects                                         ;8BD668;
    JSL.L Enable_PaletteFXObjects                                        ;8BD66C;
    JSL.L EnableNMI                                                      ;8BD670;
    STZ.W $1A05                                                          ;8BD674;
    SEP #$20                                                             ;8BD677;
    LDA.B #$11                                                           ;8BD679;
    STA.B $69                                                            ;8BD67B;
    LDA.B #$01                                                           ;8BD67D;
    STA.B $6B                                                            ;8BD67F;
    LDA.B #$02                                                           ;8BD681;
    STA.B $6F                                                            ;8BD683;
    LDA.B #$11                                                           ;8BD685;
    STA.B $72                                                            ;8BD687;
    REP #$20                                                             ;8BD689;
    LDA.W #$0000                                                         ;8BD68B;
    LDY.W #CinematicSpriteObjectDefinitions_Right                        ;8BD68E;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BD691;
    LDA.W #$0000                                                         ;8BD694;
    LDY.W #CinematicSpriteObjectDefinitions_Left                         ;8BD697;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BD69A;
    LDA.W #$0001                                                         ;8BD69D;
    LDY.W #CinematicSpriteObjectDefinitions_Right                        ;8BD6A0;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BD6A3;
    LDA.W #$0001                                                         ;8BD6A6;
    LDY.W #CinematicSpriteObjectDefinitions_Left                         ;8BD6A9;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BD6AC;
    STZ.W $0723                                                          ;8BD6AF;
    LDA.W #$0002                                                         ;8BD6B2;
    STA.W $0725                                                          ;8BD6B5;
    LDA.W #CinematicFunction_Ending_WaitForMusicToChange                 ;8BD6B8;
    STA.W $1F51                                                          ;8BD6BB;
    LDA.W #$0000                                                         ;8BD6BE;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BD6C1;
    LDA.W #$FF33                                                         ;8BD6C5;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BD6C8;
    LDA.W #$0005                                                         ;8BD6CC;
    LDY.W #$000E                                                         ;8BD6CF;
    JSL.L QueueMusicDataOrTrack_YFrameDelay                              ;8BD6D2;
    RTS                                                                  ;8BD6D6;


CinematicFunction_Ending_WaitForMusicToChange:
    JSL.L CheckIfMusicIsQueued                                           ;8BD6D7;
    BCS .return                                                          ;8BD6DB;
    LDY.W #PaletteFXObjects_ExplodingZebesLava                           ;8BD6DD;
    JSL.L Spawn_PaletteFXObject                                          ;8BD6E0;
    LDY.W #PaletteFXObjects_FadeOutExplodingZebesCrust                   ;8BD6E4;
    JSL.L Spawn_PaletteFXObject                                          ;8BD6E7;
    LDA.W #CinematicFunc_Ending_ZebesDestruction0_CloudsOnSide_FadingIn  ;8BD6EB;
    STA.W $1F51                                                          ;8BD6EE;

.return:
    RTS                                                                  ;8BD6F1;


CinematicFunc_Ending_ZebesDestruction0_CloudsOnSide_FadingIn:
    JSR.W CinematicFunction_Ending_ZebesDestruction0_CloudsOnSide        ;8BD6F2;
    JSR.W AdvanceFastScreenFadeIn                                        ;8BD6F5;
    BCC .return                                                          ;8BD6F8;
    LDA.W #CinematicFunction_Ending_ZebesDestruction0_CloudsOnSide       ;8BD6FA;
    STA.W $1F51                                                          ;8BD6FD;

.return:
    RTS                                                                  ;8BD700;


CinematicFunction_Ending_ZebesDestruction0_CloudsOnSide:
    LDA.W $1A51                                                          ;8BD701;
    BIT.W #$0001                                                         ;8BD704;
    BNE .zoomOut                                                         ;8BD707;
    LDA.W $198D                                                          ;8BD709;
    SEC                                                                  ;8BD70C;
    SBC.W #$0001                                                         ;8BD70D;
    AND.W #$00FF                                                         ;8BD710;
    STA.W $198D                                                          ;8BD713;

.zoomOut:
    LDA.W $198F                                                          ;8BD716;
    CLC                                                                  ;8BD719;
    ADC.W #$0003                                                         ;8BD71A;
    STA.W $198F                                                          ;8BD71D;
    CMP.W #$0180                                                         ;8BD720;
    BMI .return                                                          ;8BD723;
    JSR.W AdvanceFastScreenFadeOut                                       ;8BD725;
    BCC .return                                                          ;8BD728;
    LDA.W #CineFunc_Ending_ZebesDestruction1_CloudsOnTopBottom_Setup     ;8BD72A;
    STA.W $1F51                                                          ;8BD72D;

.return:
    RTS                                                                  ;8BD730;


CineFunc_Ending_ZebesDestruction1_CloudsOnTopBottom_Setup:
    SEP #$30                                                             ;8BD731;
    LDA.B #$00                                                           ;8BD733;
    STA.W $2116                                                          ;8BD735;
    LDA.B #$00                                                           ;8BD738;
    STA.W $2117                                                          ;8BD73A;
    LDA.B #$80                                                           ;8BD73D;
    STA.W $2115                                                          ;8BD73F;
    JSL.L SetupHDMATransfer                                              ;8BD742;
    db $01,$01,$18                                                       ;8BD746;
    dl $7E2000                                                           ;8BD749;
    dw $4000                                                             ;8BD74C;
    LDA.B #$02                                                           ;8BD74E;
    STA.W $420B                                                          ;8BD750;
    LDA.B #$00                                                           ;8BD753;
    STA.W $2116                                                          ;8BD755;
    LDA.B #$20                                                           ;8BD758;
    STA.W $2117                                                          ;8BD75A;
    LDA.B #$80                                                           ;8BD75D;
    STA.W $2115                                                          ;8BD75F;
    JSL.L SetupHDMATransfer                                              ;8BD762;
    db $01,$01,$18                                                       ;8BD766;
    dl $7E2000                                                           ;8BD769;
    dw $4000                                                             ;8BD76C;
    LDA.B #$02                                                           ;8BD76E;
    STA.W $420B                                                          ;8BD770;
    REP #$30                                                             ;8BD773;
    LDA.W #Tiles_Grey_Clouds_during_Zebes_Explosion_Mode7>>8&$FF00       ;8BD775;
    STA.B $48                                                            ;8BD778;
    LDA.W #Tiles_Grey_Clouds_during_Zebes_Explosion_Mode7                ;8BD77A;
    STA.B $47                                                            ;8BD77D;
    JSL.L Decompression_HardcodedDestination                             ;8BD77F;
    dl $7E2000                                                           ;8BD783;
    SEP #$30                                                             ;8BD786;
    LDA.B #$00                                                           ;8BD788;
    STA.W $2116                                                          ;8BD78A;
    LDA.B #$00                                                           ;8BD78D;
    STA.W $2117                                                          ;8BD78F;
    LDA.B #$80                                                           ;8BD792;
    STA.W $2115                                                          ;8BD794;
    JSL.L SetupHDMATransfer                                              ;8BD797;
    db $01,$00,$19                                                       ;8BD79B;
    dl $7E2000                                                           ;8BD79E;
    dw $4000                                                             ;8BD7A1;
    LDA.B #$02                                                           ;8BD7A3;
    STA.W $420B                                                          ;8BD7A5;
    REP #$30                                                             ;8BD7A8;
    JSL.L Clear_PaletteFXObjects                                         ;8BD7AA;
    JSR.W Clear_CinematicSpriteObjects                                   ;8BD7AE;
    LDY.W #PaletteFXObjects_FadeOutExplodingZebesGreyClouds              ;8BD7B1;
    JSL.L Spawn_PaletteFXObject                                          ;8BD7B4;
    LDA.W #$0000                                                         ;8BD7B8;
    LDY.W #CinematicSpriteObjectDefinitions_YellowClouds_Top_TopHalf     ;8BD7BB;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BD7BE;
    LDA.W #$0000                                                         ;8BD7C1;
    LDY.W #CinematicSpriteObjectDefinitions_Top_BottomHalf               ;8BD7C4;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BD7C7;
    LDA.W #$0000                                                         ;8BD7CA;
    LDY.W #CinematicSpriteObjectDefinitions_Bottom_TopHalf               ;8BD7CD;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BD7D0;
    LDA.W #$0000                                                         ;8BD7D3;
    LDY.W #CinematicSpriteObjectDefinitions_Bottom_BottomHalf            ;8BD7D6;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BD7D9;
    LDA.W #$0020                                                         ;8BD7DC;
    STA.W $198D                                                          ;8BD7DF;
    LDA.W #$0040                                                         ;8BD7E2;
    STA.W $198F                                                          ;8BD7E5;
    LDA.W #$0000                                                         ;8BD7E8;
    STA.W $1993                                                          ;8BD7EB;
    STA.W $1997                                                          ;8BD7EE;
    LDA.W #CineFunc_Ending_ZebesDestruction1_CloudsOnTopBottom_FadingIn  ;8BD7F1;
    STA.W $1F51                                                          ;8BD7F4;
    RTS                                                                  ;8BD7F7;


CineFunc_Ending_ZebesDestruction1_CloudsOnTopBottom_FadingIn:
    JSR.W CinematicFunction_Ending_ZebesDestruction1_CloudsOnTopBottom   ;8BD7F8;
    JSR.W AdvanceFastScreenFadeIn                                        ;8BD7FB;
    BCC .return                                                          ;8BD7FE;
    LDA.W #CinematicFunction_Ending_ZebesDestruction1_CloudsOnTopBottom  ;8BD800;
    STA.W $1F51                                                          ;8BD803;

.return:
    RTS                                                                  ;8BD806;


CinematicFunction_Ending_ZebesDestruction1_CloudsOnTopBottom:
    LDA.W $1A51                                                          ;8BD807;
    BIT.W #$0001                                                         ;8BD80A;
    BNE +                                                                ;8BD80D;
    LDA.W $198D                                                          ;8BD80F;
    SEC                                                                  ;8BD812;
    SBC.W #$0001                                                         ;8BD813;
    AND.W #$00FF                                                         ;8BD816;
    STA.W $198D                                                          ;8BD819;

  + LDA.W $198F                                                          ;8BD81C;
    CLC                                                                  ;8BD81F;
    ADC.W #$0003                                                         ;8BD820;
    STA.W $198F                                                          ;8BD823;
    CMP.W #$0180                                                         ;8BD826;
    BMI .return                                                          ;8BD829;
    JSR.W AdvanceFastScreenFadeOut                                       ;8BD82B;
    BCC .return                                                          ;8BD82E;
    LDA.W #CinematicFunc_Ending_ZebesDestruction2_CrossFade_Setup        ;8BD830;
    STA.W $1F51                                                          ;8BD833;

.return:
    RTS                                                                  ;8BD836;


CinematicFunc_Ending_ZebesDestruction2_CrossFade_Setup:
    SEP #$30                                                             ;8BD837;
    LDA.B #$00                                                           ;8BD839;
    STA.W $2116                                                          ;8BD83B;
    LDA.B #$00                                                           ;8BD83E;
    STA.W $2117                                                          ;8BD840;
    LDA.B #$80                                                           ;8BD843;
    STA.W $2115                                                          ;8BD845;
    JSL.L SetupHDMATransfer                                              ;8BD848;
    db $01,$01,$18                                                       ;8BD84C;
    dl $7E6000                                                           ;8BD84F;
    dw $4000                                                             ;8BD852;
    LDA.B #$02                                                           ;8BD854;
    STA.W $420B                                                          ;8BD856;
    LDA.B #$00                                                           ;8BD859;
    STA.W $2116                                                          ;8BD85B;
    LDA.B #$20                                                           ;8BD85E;
    STA.W $2117                                                          ;8BD860;
    LDA.B #$80                                                           ;8BD863;
    STA.W $2115                                                          ;8BD865;
    JSL.L SetupHDMATransfer                                              ;8BD868;
    db $01,$01,$18                                                       ;8BD86C;
    dl $7E6000                                                           ;8BD86F;
    dw $4000                                                             ;8BD872;
    LDA.B #$02                                                           ;8BD874;
    STA.W $420B                                                          ;8BD876;
    REP #$30                                                             ;8BD879;
    LDA.W #Tiles_Big_Zebes_during_Zebes_Explosion>>8&$FF00               ;8BD87B;
    STA.B $48                                                            ;8BD87E;
    LDA.W #Tiles_Big_Zebes_during_Zebes_Explosion                        ;8BD880;
    STA.B $47                                                            ;8BD883;
    JSL.L Decompression_HardcodedDestination                             ;8BD885;
    dl $7E6000                                                           ;8BD889;
    SEP #$30                                                             ;8BD88C;
    LDA.B #$00                                                           ;8BD88E;
    STA.W $2116                                                          ;8BD890;
    LDA.B #$00                                                           ;8BD893;
    STA.W $2117                                                          ;8BD895;
    LDA.B #$80                                                           ;8BD898;
    STA.W $2115                                                          ;8BD89A;
    JSL.L SetupHDMATransfer                                              ;8BD89D;
    db $01,$00,$19                                                       ;8BD8A1;
    dl $7E6000                                                           ;8BD8A4;
    dw $4000                                                             ;8BD8A7;
    LDA.B #$02                                                           ;8BD8A9;
    STA.W $420B                                                          ;8BD8AB;
    LDA.B #$00                                                           ;8BD8AE;
    STA.W $2116                                                          ;8BD8B0;
    LDA.B #$40                                                           ;8BD8B3;
    STA.W $2117                                                          ;8BD8B5;
    LDA.B #$80                                                           ;8BD8B8;
    STA.W $2115                                                          ;8BD8BA;
    JSL.L SetupHDMATransfer                                              ;8BD8BD;
    db $01,$01,$18                                                       ;8BD8C1;
    dl $7F8000                                                           ;8BD8C4;
    dw $6000                                                             ;8BD8C7;
    LDA.B #$02                                                           ;8BD8C9;
    STA.W $420B                                                          ;8BD8CB;
    LDA.B #$00                                                           ;8BD8CE;
    STA.W $2116                                                          ;8BD8D0;
    LDA.B #$70                                                           ;8BD8D3;
    STA.W $2117                                                          ;8BD8D5;
    LDA.B #$80                                                           ;8BD8D8;
    STA.W $2115                                                          ;8BD8DA;
    JSL.L SetupHDMATransfer                                              ;8BD8DD;
    db $01,$01,$18                                                       ;8BD8E1;
    dl $7FE000                                                           ;8BD8E4;
    dw $0800                                                             ;8BD8E7;
    LDA.B #$02                                                           ;8BD8E9;
    STA.W $420B                                                          ;8BD8EB;
    LDA.B #$00                                                           ;8BD8EE;
    STA.W $2116                                                          ;8BD8F0;
    LDA.B #$74                                                           ;8BD8F3;
    STA.W $2117                                                          ;8BD8F5;
    LDA.B #$80                                                           ;8BD8F8;
    STA.W $2115                                                          ;8BD8FA;
    JSL.L SetupHDMATransfer                                              ;8BD8FD;
    db $01,$01,$18                                                       ;8BD901;
    dl $7FE800                                                           ;8BD904;
    dw $0800                                                             ;8BD907;
    LDA.B #$02                                                           ;8BD909;
    STA.W $420B                                                          ;8BD90B;
    LDA.B #$00                                                           ;8BD90E;
    STA.W $2116                                                          ;8BD910;
    LDA.B #$78                                                           ;8BD913;
    STA.W $2117                                                          ;8BD915;
    LDA.B #$80                                                           ;8BD918;
    STA.W $2115                                                          ;8BD91A;
    JSL.L SetupHDMATransfer                                              ;8BD91D;
    db $01,$01,$18                                                       ;8BD921;
    dl $7FF000                                                           ;8BD924;
    dw $0800                                                             ;8BD927;
    LDA.B #$02                                                           ;8BD929;
    STA.W $420B                                                          ;8BD92B;
    LDA.B #$00                                                           ;8BD92E;
    STA.W $2116                                                          ;8BD930;
    LDA.B #$7C                                                           ;8BD933;
    STA.W $2117                                                          ;8BD935;
    LDA.B #$80                                                           ;8BD938;
    STA.W $2115                                                          ;8BD93A;
    JSL.L SetupHDMATransfer                                              ;8BD93D;
    db $01,$01,$18                                                       ;8BD941;
    dl $7FF800                                                           ;8BD944;
    dw $0800                                                             ;8BD947;
    LDA.B #$02                                                           ;8BD949;
    STA.W $420B                                                          ;8BD94B;
    LDA.B #$00                                                           ;8BD94E;
    STA.W $2116                                                          ;8BD950;
    LDA.B #$50                                                           ;8BD953;
    STA.W $2117                                                          ;8BD955;
    LDA.B #$80                                                           ;8BD958;
    STA.W $2115                                                          ;8BD95A;
    JSL.L SetupHDMATransfer                                              ;8BD95D;
    db $01,$01,$18                                                       ;8BD961;
    dl $7EA000                                                           ;8BD964;
    dw $1000                                                             ;8BD967;
    LDA.B #$02                                                           ;8BD969;
    STA.W $420B                                                          ;8BD96B;
    LDA.B #$02                                                           ;8BD96E;
    STA.B $52                                                            ;8BD970;
    REP #$30                                                             ;8BD972;
    JSL.L Clear_PaletteFXObjects                                         ;8BD974;
    JSR.W Clear_CinematicSpriteObjects                                   ;8BD978;
    LDX.W #$0100                                                         ;8BD97B;

.loopPalettes:
    LDA.L Palettes_ZebesExplosionScene,X                                 ;8BD97E;
    STA.L $7EC000,X                                                      ;8BD982;
    INX                                                                  ;8BD986;
    INX                                                                  ;8BD987;
    CPX.W #$0200                                                         ;8BD988;
    BMI .loopPalettes                                                    ;8BD98B;
    LDY.W #CinematicSpriteObjectDefinitions_ExplodingZebes_Zebes         ;8BD98D;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BD990;
    LDY.W #CinematicSpriteObjectDefinitions_ExplodingZebes_Lava          ;8BD993;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BD996;
    LDY.W #CinematicSpriteObjectDefinitions_ExplodingZebes_PurpleGlow    ;8BD999;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BD99C;
    LDY.W #CinematicSpriteObjectDefinitions_ExplodingZebes_Stars         ;8BD99F;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BD9A2;
    STZ.W $198D                                                          ;8BD9A5;
    LDA.W #$0040                                                         ;8BD9A8;
    STA.W $198F                                                          ;8BD9AB;
    LDA.W #$0100                                                         ;8BD9AE;
    STA.B $78                                                            ;8BD9B1;
    STZ.B $7A                                                            ;8BD9B3;
    STZ.B $7C                                                            ;8BD9B5;
    STA.B $7E                                                            ;8BD9B7;
    LDA.W #$0080                                                         ;8BD9B9;
    STA.B $80                                                            ;8BD9BC;
    STA.B $82                                                            ;8BD9BE;
    STZ.W $1993                                                          ;8BD9C0;
    STZ.W $1997                                                          ;8BD9C3;
    SEP #$20                                                             ;8BD9C6;
    LDA.B #$01                                                           ;8BD9C8;
    STA.B $69                                                            ;8BD9CA;
    LDA.B #$10                                                           ;8BD9CC;
    STA.B $6B                                                            ;8BD9CE;
    LDA.B #$02                                                           ;8BD9D0;
    STA.B $6F                                                            ;8BD9D2;
    LDA.B #$21                                                           ;8BD9D4;
    STA.B $72                                                            ;8BD9D6;
    REP #$20                                                             ;8BD9D8;
    JSR.W PaletteCrossFading_CopyCurrentPalettesToFadingPalettes         ;8BD9DA;
    JSR.W PaletteCrossFading_DecomposePaletteDataForFading               ;8BD9DD;
    LDX.W #$01A0                                                         ;8BD9E0;
    LDY.W #$0010                                                         ;8BD9E3;
    JSR.W PaletteCrossFading_ClearYColorsStartingFromColorIndexX         ;8BD9E6;
    LDX.W #$01E0                                                         ;8BD9E9;
    LDY.W #$0010                                                         ;8BD9EC;
    JSR.W PaletteCrossFading_ClearYColorsStartingFromColorIndexX         ;8BD9EF;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BD9F2;
    LDA.W #$003F                                                         ;8BD9F5;
    STA.W $1A49                                                          ;8BD9F8;
    LDA.W #CinematicFunc_Ending_ZebesDestruction2_CrossFade_FadingIn     ;8BD9FB;
    STA.W $1F51                                                          ;8BD9FE;
    RTS                                                                  ;8BDA01;


CinematicFunc_Ending_ZebesDestruction2_CrossFade_FadingIn:
    JSR.W CinematicFunction_Ending_ZebesDestruction2_CrossFade           ;8BDA02;
    JSR.W AdvanceFastScreenFadeIn                                        ;8BDA05;
    BCC .return                                                          ;8BDA08;
    LDA.W #$0002                                                         ;8BDA0A;
    STA.W $0723                                                          ;8BDA0D;
    STA.W $0725                                                          ;8BDA10;
    LDA.W #CinematicFunction_Ending_ZebesDestruction2_CrossFade          ;8BDA13;
    STA.W $1F51                                                          ;8BDA16;

.return:
    RTS                                                                  ;8BDA19;


CinematicFunction_Ending_ZebesDestruction2_CrossFade:
    LDA.W $198F                                                          ;8BDA1A;
    CLC                                                                  ;8BDA1D;
    ADC.W #$0004                                                         ;8BDA1E;
    STA.W $198F                                                          ;8BDA21;
    LDA.W $1A49                                                          ;8BDA24;
    BIT.W #$0001                                                         ;8BDA27;
    BNE .decTimer                                                        ;8BDA2A;
    LDX.W #$00E0                                                         ;8BDA2C;
    LDY.W #$0010                                                         ;8BDA2F;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BDA32;
    LDX.W #$01A0                                                         ;8BDA35;
    LDY.W #$0010                                                         ;8BDA38;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BDA3B;
    LDX.W #$01E0                                                         ;8BDA3E;
    LDY.W #$0010                                                         ;8BDA41;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BDA44;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BDA47;

.decTimer:
    DEC.W $1A49                                                          ;8BDA4A;
    BMI .setupLoop                                                       ;8BDA4D;
    JMP.W .return                                                        ;8BDA4F;


.setupLoop:
    LDX.W #$0000                                                         ;8BDA52;

.loopPalettes:
    LDA.L Palettes_ZebesExplosionScene,X                                 ;8BDA55;
    STA.L $7EC000,X                                                      ;8BDA59;
    INX                                                                  ;8BDA5D;
    INX                                                                  ;8BDA5E;
    CPX.W #$0100                                                         ;8BDA5F;
    BMI .loopPalettes                                                    ;8BDA62;
    SEP #$20                                                             ;8BDA64;
    STZ.B $5F                                                            ;8BDA66;
    LDA.B #$70                                                           ;8BDA68;
    STA.B $58                                                            ;8BDA6A;
    LDA.B #$78                                                           ;8BDA6C;
    STA.B $59                                                            ;8BDA6E;
    STZ.B $5A                                                            ;8BDA70;
    STZ.B $5C                                                            ;8BDA72;
    LDA.B #$44                                                           ;8BDA74;
    STA.B $5D                                                            ;8BDA76;
    STZ.B $5E                                                            ;8BDA78;
    LDA.B #$10                                                           ;8BDA7A;
    STA.B $69                                                            ;8BDA7C;
    STZ.B $6B                                                            ;8BDA7E;
    STZ.B $6C                                                            ;8BDA80;
    STZ.B $6D                                                            ;8BDA82;
    STZ.B $6E                                                            ;8BDA84;
    STZ.B $71                                                            ;8BDA86;
    STZ.B $6F                                                            ;8BDA88;
    STZ.B $72                                                            ;8BDA8A;
    LDA.B #$E0                                                           ;8BDA8C;
    STA.W $2132                                                          ;8BDA8E;
    LDA.B #$20                                                           ;8BDA91;
    STA.B $74                                                            ;8BDA93;
    LDA.B #$40                                                           ;8BDA95;
    STA.B $75                                                            ;8BDA97;
    LDA.B #$80                                                           ;8BDA99;
    STA.B $76                                                            ;8BDA9B;
    STZ.B $57                                                            ;8BDA9D;
    REP #$20                                                             ;8BDA9F;
    STZ.W $1991                                                          ;8BDAA1;
    STZ.W $1993                                                          ;8BDAA4;
    STZ.W $1995                                                          ;8BDAA7;
    STZ.W $1997                                                          ;8BDAAA;
    STZ.W $1999                                                          ;8BDAAD;
    STZ.W $199B                                                          ;8BDAB0;
    STZ.W $199D                                                          ;8BDAB3;
    STZ.W $199F                                                          ;8BDAB6;
    STZ.W $1982                                                          ;8BDAB9;
    STZ.B $B5                                                            ;8BDABC;
    STZ.B $B7                                                            ;8BDABE;
    STZ.W $0723                                                          ;8BDAC0;
    LDA.W #$0002                                                         ;8BDAC3;
    STA.W $0725                                                          ;8BDAC6;
    LDA.W #CinematicFunc_Ending_SpaceView_LoadGunshipBG                  ;8BDAC9;
    STA.W $1F51                                                          ;8BDACC;
    STZ.W $1A49                                                          ;8BDACF;

.return:
    RTS                                                                  ;8BDAD2;


CinematicFunc_Ending_SpaceView_LoadGunshipBG:
    LDA.W $1A49                                                          ;8BDAD3;
    CMP.W #$0008                                                         ;8BDAD6;
    BPL .timerGreaterThan7                                               ;8BDAD9;
    ASL A                                                                ;8BDADB;
    TAX                                                                  ;8BDADC;
    LDY.W $0334                                                          ;8BDADD;
    LDA.W #$00C0                                                         ;8BDAE0;
    STA.W $02D0,Y                                                        ;8BDAE3;
    LDA.W .sourceAddresses,X                                             ;8BDAE6;
    STA.W $02D1,Y                                                        ;8BDAE9;
    LDA.W #$007F                                                         ;8BDAEC;
    STA.W $02D3,Y                                                        ;8BDAEF;
    LDA.W #$0800                                                         ;8BDAF2;
    STA.W $02D4,Y                                                        ;8BDAF5;
    LDA.W .destinationAddresses,X                                        ;8BDAF8;
    STA.W $02D6,Y                                                        ;8BDAFB;
    LDA.W #$0080                                                         ;8BDAFE;
    STA.W $02D8,Y                                                        ;8BDB01;
    TYA                                                                  ;8BDB04;
    CLC                                                                  ;8BDB05;
    ADC.W #$0009                                                         ;8BDB06;
    STA.W $0334                                                          ;8BDB09;
    BRA +                                                                ;8BDB0C;


.timerGreaterThan7:
    ASL A                                                                ;8BDB0E;
    TAX                                                                  ;8BDB0F;
    LDY.W $0334                                                          ;8BDB10;
    LDA.W #$0080                                                         ;8BDB13;
    STA.W $02D0,Y                                                        ;8BDB16;
    LDA.W .sourceAddresses,X                                             ;8BDB19;
    STA.W $02D1,Y                                                        ;8BDB1C;
    LDA.W #$007F                                                         ;8BDB1F;
    STA.W $02D3,Y                                                        ;8BDB22;
    LDA.W #$0800                                                         ;8BDB25;
    STA.W $02D4,Y                                                        ;8BDB28;
    LDA.W .destinationAddresses,X                                        ;8BDB2B;
    STA.W $02D6,Y                                                        ;8BDB2E;
    LDA.W #$0000                                                         ;8BDB31;
    STA.W $02D8,Y                                                        ;8BDB34;
    TYA                                                                  ;8BDB37;
    CLC                                                                  ;8BDB38;
    ADC.W #$0009                                                         ;8BDB39;
    STA.W $0334                                                          ;8BDB3C;

  + LDA.W $1A49                                                          ;8BDB3F;
    INC A                                                                ;8BDB42;
    STA.W $1A49                                                          ;8BDB43;
    CMP.W #$0010                                                         ;8BDB46;
    BMI .return                                                          ;8BDB49;
    SEP #$20                                                             ;8BDB4B;
    LDA.B #$01                                                           ;8BDB4D;
    STA.B $55                                                            ;8BDB4F;
    REP #$20                                                             ;8BDB51;
    STZ.W $1A49                                                          ;8BDB53;
    LDA.W #RTS_8BDB9D                                                    ;8BDB56;
    STA.W $1F51                                                          ;8BDB59;

.return:
    RTS                                                                  ;8BDB5C;

.sourceAddresses:                                                        
    dw $0000,$0800,$1000,$1800,$2000,$2800,$3000,$3800                   ;8BDB5D; Tiles source addresses (bank $7F)
    dw $4000,$4800,$5000,$5800,$6000,$6800,$7000,$7800                   ;8BDB6D; Tilemap source addresses (bank $7F)
.destinationAddresses:
    dw $0000,$0800,$1000,$1800,$2000,$2800,$3000,$3800                   ;8BDB7D; Tiles destination addresses (VRAM)
    dw $0000,$0800,$1000,$1800,$2000,$2800,$3000,$3800                   ;8BDB8D; Tilemap destination addresses (VRAM)


RTS_8BDB9D:
    RTS                                                                  ;8BDB9D;


CinematicFunc_Ending_SpaceView_ChangeMusic:
    DEC.W $1A49                                                          ;8BDB9E;
    BEQ .changeMusic                                                     ;8BDBA1;
    BPL .return                                                          ;8BDBA3;

.changeMusic:
    LDA.W #$0000                                                         ;8BDBA5;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BDBA8;
    LDA.W #$FF3C                                                         ;8BDBAC;
    JSL.L QueueMusicDataOrTrack_8FrameDelay                              ;8BDBAF;
    LDA.W #$0005                                                         ;8BDBB3;
    LDY.W #$000E                                                         ;8BDBB6;
    JSL.L QueueMusicDataOrTrack_YFrameDelay                              ;8BDBB9;
    LDA.W #CinematicFunc_Ending_SpaceView_GunshipEmergence_Setup         ;8BDBBD;
    STA.W $1F51                                                          ;8BDBC0;

.return:
    RTS                                                                  ;8BDBC3;


CinematicFunc_Ending_SpaceView_GunshipEmergence_Setup:
    JSL.L CheckIfMusicIsQueued                                           ;8BDBC4;
    BCC .noMusicQueued                                                   ;8BDBC8;
    RTS                                                                  ;8BDBCA;


.noMusicQueued:
    SEP #$20                                                             ;8BDBCB;
    LDA.B #$07                                                           ;8BDBCD;
    STA.B $55                                                            ;8BDBCF;
    LDA.B #$80                                                           ;8BDBD1;
    STA.B $5F                                                            ;8BDBD3;
    LDA.B #$11                                                           ;8BDBD5;
    STA.B $69                                                            ;8BDBD7;
    STZ.B $6B                                                            ;8BDBD9;
    STZ.B $6F                                                            ;8BDBDB;
    LDA.B #$30                                                           ;8BDBDD;
    STA.B $72                                                            ;8BDBDF;
    LDA.B #$3F                                                           ;8BDBE1;
    STA.B $74                                                            ;8BDBE3;
    LDA.B #$5F                                                           ;8BDBE5;
    STA.B $75                                                            ;8BDBE7;
    LDA.B #$9F                                                           ;8BDBE9;
    STA.B $76                                                            ;8BDBEB;
    LDA.B #$00                                                           ;8BDBED;
    STA.B $58                                                            ;8BDBEF;
    LDA.B #$00                                                           ;8BDBF1;
    STA.B $5D                                                            ;8BDBF3;
    REP #$20                                                             ;8BDBF5;
    LDA.W #$0000                                                         ;8BDBF7;
    STA.L $7EC000                                                        ;8BDBFA;
    STA.L $7EC020                                                        ;8BDBFE;
    STA.L $7EC100                                                        ;8BDC02;
    LDY.W #PaletteFXObjects_ZebesExplosionPlanetAfterglow                ;8BDC06;
    JSL.L Spawn_PaletteFXObject                                          ;8BDC09;
    LDY.W #PaletteFXObjects_GunshipEmergineFromZebesExplosion            ;8BDC0D;
    JSL.L Spawn_PaletteFXObject                                          ;8BDC10;
    LDA.W #$0038                                                         ;8BDC14;
    STA.B $80                                                            ;8BDC17;
    LDA.W #$0018                                                         ;8BDC19;
    STA.B $82                                                            ;8BDC1C;
    LDA.W #$FFB8                                                         ;8BDC1E;
    STA.W $1993                                                          ;8BDC21;
    LDA.W #$FF98                                                         ;8BDC24;
    STA.W $1997                                                          ;8BDC27;
    LDA.W #$0C00                                                         ;8BDC2A;
    STA.W $198F                                                          ;8BDC2D;
    LDA.W #$FF90                                                         ;8BDC30;
    STA.W $198D                                                          ;8BDC33;
    LDA.W #$0001                                                         ;8BDC36;
    STA.W $1A49                                                          ;8BDC39;
    LDA.W #$00C0                                                         ;8BDC3C;
    STA.W $1A4B                                                          ;8BDC3F;
    STZ.W $1A4D                                                          ;8BDC42;
    LDA.W #CinematicFunc_Ending_SpaceView_GunshipEmergence_SpinningFast  ;8BDC45;
    STA.W $1F51                                                          ;8BDC48;
    RTS                                                                  ;8BDC4B;


FadeOut_ZebesExplosion_AfterGlow:
    PHP                                                                  ;8BDC4C;
    REP #$30                                                             ;8BDC4D;
    DEC.W $1A49                                                          ;8BDC4F;
    BEQ .timerExpired                                                    ;8BDC52;
    BPL .return                                                          ;8BDC54;

.timerExpired:
    SEP #$20                                                             ;8BDC56;
    LDA.B $74                                                            ;8BDC58;
    SEC                                                                  ;8BDC5A;
    SBC.B #$01                                                           ;8BDC5B;
    STA.B $74                                                            ;8BDC5D;
    CMP.B #$20                                                           ;8BDC5F;
    BPL +                                                                ;8BDC61;
    LDA.B #$20                                                           ;8BDC63;
    STA.B $74                                                            ;8BDC65;

  + LDA.B $75                                                            ;8BDC67;
    SEC                                                                  ;8BDC69;
    SBC.B #$01                                                           ;8BDC6A;
    STA.B $75                                                            ;8BDC6C;
    CMP.B #$40                                                           ;8BDC6E;
    BPL +                                                                ;8BDC70;
    LDA.B #$40                                                           ;8BDC72;
    STA.B $75                                                            ;8BDC74;

  + LDA.B $76                                                            ;8BDC76;
    SEC                                                                  ;8BDC78;
    SBC.B #$01                                                           ;8BDC79;
    STA.B $76                                                            ;8BDC7B;
    CMP.B #$80                                                           ;8BDC7D;
    BPL .checkColors                                                     ;8BDC7F;
    LDA.B #$80                                                           ;8BDC81;
    STA.B $76                                                            ;8BDC83;

.checkColors:
    LDA.B $74                                                            ;8BDC85;
    CMP.B #$20                                                           ;8BDC87;
    BNE .setTimer                                                        ;8BDC89;
    LDA.B $75                                                            ;8BDC8B;
    CMP.B #$40                                                           ;8BDC8D;
    BNE .setTimer                                                        ;8BDC8F;
    LDA.B $76                                                            ;8BDC91;
    CMP.B #$80                                                           ;8BDC93;
    BNE .setTimer                                                        ;8BDC95;
    STZ.B $6F                                                            ;8BDC97;
    STZ.B $72                                                            ;8BDC99;

.setTimer:
    REP #$20                                                             ;8BDC9B;
    LDA.W #$0006                                                         ;8BDC9D;
    STA.W $1A49                                                          ;8BDCA0;

.return:
    PLP                                                                  ;8BDCA3;
    RTS                                                                  ;8BDCA4;


CinematicFunc_Ending_SpaceView_GunshipEmergence_SpinningFast:
    LDA.W $1A4B                                                          ;8BDCA5;
    BEQ .fadeOutAfterGlow                                                ;8BDCA8;
    DEC A                                                                ;8BDCAA;
    STA.W $1A4B                                                          ;8BDCAB;
    BRA .timerExpired                                                    ;8BDCAE;


.fadeOutAfterGlow:
    JSR.W FadeOut_ZebesExplosion_AfterGlow                               ;8BDCB0;

.timerExpired:
    LDA.W $198D                                                          ;8BDCB3;
    SEC                                                                  ;8BDCB6;
    SBC.W #$0004                                                         ;8BDCB7;
    AND.W #$00FF                                                         ;8BDCBA;
    STA.W $198D                                                          ;8BDCBD;
    LDA.W $1A4D                                                          ;8BDCC0;
    ASL A                                                                ;8BDCC3;
    ASL A                                                                ;8BDCC4;
    TAX                                                                  ;8BDCC5;
    LDA.W $1991                                                          ;8BDCC6;
    CLC                                                                  ;8BDCC9;
    ADC.W .shakingXVelocities+2,X                                        ;8BDCCA;
    STA.W $1991                                                          ;8BDCCD;
    LDA.W $1993                                                          ;8BDCD0;
    ADC.W .shakingXVelocities,X                                          ;8BDCD3;
    STA.W $1993                                                          ;8BDCD6;
    LDA.W $1A4D                                                          ;8BDCD9;
    INC A                                                                ;8BDCDC;
    AND.W #$000F                                                         ;8BDCDD;
    STA.W $1A4D                                                          ;8BDCE0;
    LDA.W $198F                                                          ;8BDCE3;
    SEC                                                                  ;8BDCE6;
    SBC.W #$0008                                                         ;8BDCE7;
    STA.W $198F                                                          ;8BDCEA;
    CMP.W #$05B0                                                         ;8BDCED;
    BPL .return                                                          ;8BDCF0;
    LDA.W #$0001                                                         ;8BDCF2;
    STA.W $1A4B                                                          ;8BDCF5;
    STZ.W $1A4D                                                          ;8BDCF8;
    LDA.W #CinematicFunc_Ending_SpaceView_GunshipEmergence_SpinningSlow  ;8BDCFB;
    STA.W $1F51                                                          ;8BDCFE;

.return:
    RTS                                                                  ;8BDD01;


.shakingXVelocities:
    dw $0000,$8000, $0000,$8000, $0000,$8000, $0000,$8000                ;8BDD02;
    dw $FFFF,$8000, $FFFF,$8000, $0000,$8000, $0000,$8000                ;8BDD12;
    dw $0000,$8000, $0000,$8000, $FFFF,$8000, $FFFF,$8000                ;8BDD22;
    dw $0000,$8000, $0000,$8000, $FFFF,$8000, $FFFF,$8000                ;8BDD32;

CinematicFunc_Ending_SpaceView_GunshipEmergence_SpinningSlow:
    JSR.W FadeOut_ZebesExplosion_AfterGlow                               ;8BDD42;
    LDA.W $198D                                                          ;8BDD45;
    CMP.W #$00E0                                                         ;8BDD48;
    BEQ .notE0                                                           ;8BDD4B;
    SEC                                                                  ;8BDD4D;
    SBC.W #$0002                                                         ;8BDD4E;
    AND.W #$00FF                                                         ;8BDD51;
    STA.W $198D                                                          ;8BDD54;

.notE0:
    LDA.W $1A4D                                                          ;8BDD57;
    ASL A                                                                ;8BDD5A;
    ASL A                                                                ;8BDD5B;
    TAX                                                                  ;8BDD5C;
    LDA.W $1991                                                          ;8BDD5D;
    CLC                                                                  ;8BDD60;
    ADC.W .shakingXVelocities+2,X                                        ;8BDD61;
    STA.W $1991                                                          ;8BDD64;
    LDA.W $1993                                                          ;8BDD67;
    ADC.W .shakingXVelocities,X                                          ;8BDD6A;
    STA.W $1993                                                          ;8BDD6D;
    LDA.W $1A4D                                                          ;8BDD70;
    INC A                                                                ;8BDD73;
    AND.W #$0007                                                         ;8BDD74;
    STA.W $1A4D                                                          ;8BDD77;
    LDA.W $198F                                                          ;8BDD7A;
    SEC                                                                  ;8BDD7D;
    SBC.W #$0003                                                         ;8BDD7E;
    STA.W $198F                                                          ;8BDD81;
    CMP.W #$04A0                                                         ;8BDD84;
    BPL .return                                                          ;8BDD87;
    LDA.W #CinematicFunc_Ending_SpaceView_GunshipEmergence_FlyToCamera   ;8BDD89;
    STA.W $1F51                                                          ;8BDD8C;
    LDA.W #$8000                                                         ;8BDD8F;
    STA.W $1A4D                                                          ;8BDD92;
    STZ.W $1A4B                                                          ;8BDD95;
    LDA.W #$000F                                                         ;8BDD98;
    JSL.L CheckIfEvent_inA_HasHappened                                   ;8BDD9B;
    BCC .return                                                          ;8BDD9F;
    LDY.W #CinematicSpriteObjectDefinitions_CrittersEscape               ;8BDDA1;
    LDA.W #$0004                                                         ;8BDDA4;
    STA.B $12                                                            ;8BDDA7;
    JSR.W Spawn_CinematicSpriteObject_YToIndex12                         ;8BDDA9;

.return:
    RTS                                                                  ;8BDDAC;

.shakingXVelocities:
    dw $0001,$4000,$0001,$4000,$0001,$4000,$FFFE,$C000                   ;8BDDAD;
    dw $FFFE,$C000,$0001,$4000,$0001,$4000,$FFFE,$C000                   ;8BDDBD;


CinematicFunc_Ending_SpaceView_GunshipEmergence_FlyToCamera:
    JSR.W FadeOut_ZebesExplosion_AfterGlow                               ;8BDDCD;
    LDA.W $1A4D                                                          ;8BDDD0;
    SEC                                                                  ;8BDDD3;
    SBC.W #$0133                                                         ;8BDDD4;
    STA.W $1A4D                                                          ;8BDDD7;
    LDA.W $1A4B                                                          ;8BDDDA;
    SBC.W #$0000                                                         ;8BDDDD;
    STA.W $1A4B                                                          ;8BDDE0;
    LDA.W $1991                                                          ;8BDDE3;
    CLC                                                                  ;8BDDE6;
    ADC.W $1A4D                                                          ;8BDDE7;
    STA.W $1991                                                          ;8BDDEA;
    LDA.W $1993                                                          ;8BDDED;
    ADC.W $1A4B                                                          ;8BDDF0;
    STA.W $1993                                                          ;8BDDF3;
    LDA.W $198F                                                          ;8BDDF6;
    CMP.W #$0200                                                         ;8BDDF9;
    BPL +                                                                ;8BDDFC;
    LDA.W $1A51                                                          ;8BDDFE;
    BIT.W #$0003                                                         ;8BDE01;
    BNE +                                                                ;8BDE04;
    LDA.W $198D                                                          ;8BDE06;
    CMP.W #$0010                                                         ;8BDE09;
    BEQ +                                                                ;8BDE0C;
    CLC                                                                  ;8BDE0E;
    ADC.W #$0002                                                         ;8BDE0F;
    AND.W #$00FF                                                         ;8BDE12;
    STA.W $198D                                                          ;8BDE15;

  + LDA.W $198F                                                          ;8BDE18;
    CMP.W #$0020                                                         ;8BDE1B;
    BMI .zoomLessThan20                                                  ;8BDE1E;
    SEC                                                                  ;8BDE20;
    SBC.W #$0005                                                         ;8BDE21;
    STA.W $198F                                                          ;8BDE24;
    RTS                                                                  ;8BDE27;


.zoomLessThan20:
    LDY.W #CinematicSpriteObjectDefinitions_TheOperationWas              ;8BDE28;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BDE2B;
    LDA.W #RTS_8BDE63                                                    ;8BDE2E;
    STA.W $1F51                                                          ;8BDE31;
    LDX.W #$001E                                                         ;8BDE34;

.loopPalette:
    LDA.W .greyGunshipPalette,X                                          ;8BDE37;
    STA.L $7EC0A0,X                                                      ;8BDE3A;
    DEX                                                                  ;8BDE3E;
    DEX                                                                  ;8BDE3F;
    BPL .loopPalette                                                     ;8BDE40;
    RTS                                                                  ;8BDE42;

.greyGunshipPalette:
    dw $0000,$6F7B,$4A52,$1CE7,$0000,$5AD6,$4A52,$35AD                   ;8BDE43;
    dw $2529,$7FFF,$56B5,$294A,$4210,$2D6B,$18C6,$7FFF                   ;8BDE53;


RTS_8BDE63:
    RTS                                                                  ;8BDE63;


CinematicFunction_Ending_SpaceView_GunshipEmergence_Credits:
    LDA.W #$0001                                                         ;8BDE64;
    STA.W $0725                                                          ;8BDE67;
    JSR.W AdvanceFastScreenFadeOut                                       ;8BDE6A;
    BCC .return                                                          ;8BDE6D;
    JSL.L EnableNMI                                                      ;8BDE6F;
    STZ.W $0723                                                          ;8BDE73;
    STZ.W $0725                                                          ;8BDE76;
    LDA.W #CinematicFunction_Credits_Setup                               ;8BDE79;
    STA.W $1F51                                                          ;8BDE7C;

.return:
    RTS                                                                  ;8BDE7F;


CinematicFunction_Credits_Setup:
    JSR.W Setup_PPU_Credits                                              ;8BDE80;
    JSR.W Clear_CinematicSpriteObjects                                   ;8BDE83;
    JSL.L Clear_PaletteFXObjects                                         ;8BDE86;
    LDX.W #$0000                                                         ;8BDE8A;

.loopPalettes:
    LDA.L Palettes_Credits,X                                             ;8BDE8D;
    STA.L $7EC000,X                                                      ;8BDE91;
    INX                                                                  ;8BDE95;
    INX                                                                  ;8BDE96;
    CPX.W #$0100                                                         ;8BDE97;
    BMI .loopPalettes                                                    ;8BDE9A;
    LDA.W #Tiles_Samus_Waiting_for_Credits_to_End>>8&$FF00               ;8BDE9C;
    STA.B $48                                                            ;8BDE9F;
    LDA.W #Tiles_Samus_Waiting_for_Credits_to_End                        ;8BDEA1;
    STA.B $47                                                            ;8BDEA4;
    JSL.L Decompression_HardcodedDestination                             ;8BDEA6;
    dl $7F0000                                                           ;8BDEAA;
    LDA.W #Tiles_PostCredits_SuitlessSamus>>8&$FF00                      ;8BDEAD;
    STA.B $48                                                            ;8BDEB0;
    LDA.W #Tiles_PostCredits_SuitlessSamus                               ;8BDEB2;
    STA.B $47                                                            ;8BDEB5;
    JSL.L Decompression_HardcodedDestination                             ;8BDEB7;
    dl $7E2000                                                           ;8BDEBB;
    LDA.W #Tiles_PostCredits_Samus_Shooting_the_Screen>>8&$FF00          ;8BDEBE;
    STA.B $48                                                            ;8BDEC1;
    LDA.W #Tiles_PostCredits_Samus_Shooting_the_Screen                   ;8BDEC3;
    STA.B $47                                                            ;8BDEC6;
    JSL.L Decompression_HardcodedDestination                             ;8BDEC8;
    dl $7E6000                                                           ;8BDECC;
    LDA.W #Tiles_Font3_Background>>8&$FF00                               ;8BDECF;
    STA.B $48                                                            ;8BDED2;
    LDA.W #Tiles_Font3_Background                                        ;8BDED4;
    STA.B $47                                                            ;8BDED7;
    JSL.L Decompression_HardcodedDestination                             ;8BDED9;
    dl $7FC000                                                           ;8BDEDD;
    LDA.W #Samus_Waiting_for_Credits_to_End_Tilemap>>8&$FF00             ;8BDEE0;
    STA.B $48                                                            ;8BDEE3;
    LDA.W #Samus_Waiting_for_Credits_to_End_Tilemap                      ;8BDEE5;
    STA.B $47                                                            ;8BDEE8;
    JSL.L Decompression_HardcodedDestination                             ;8BDEEA;
    dl $7FE000                                                           ;8BDEEE;
    LDA.W #InterleavedTilesTilemapPostCreditsSamusBeamMode7>>8&$FF00     ;8BDEF1;
    STA.B $48                                                            ;8BDEF4;
    LDA.W #InterleavedTilesTilemapPostCreditsSamusBeamMode7              ;8BDEF6;
    STA.B $47                                                            ;8BDEF9;
    JSL.L Decompression_HardcodedDestination                             ;8BDEFB;
    dl $7F4000                                                           ;8BDEFF;
    LDA.W #Tiles_PostCredits_Samus_Transformation_Effect>>8&$FF00        ;8BDF02;
    STA.B $48                                                            ;8BDF05;
    LDA.W #Tiles_PostCredits_Samus_Transformation_Effect                 ;8BDF07;
    STA.B $47                                                            ;8BDF0A;
    JSL.L Decompression_HardcodedDestination                             ;8BDF0C;
    dl $7FE800                                                           ;8BDF10;
    LDA.W #PostCredits_Samus_Transformation_Effect_Tilemap>>8&$FF00      ;8BDF13;
    STA.B $48                                                            ;8BDF16;
    LDA.W #PostCredits_Samus_Transformation_Effect_Tilemap               ;8BDF18;
    STA.B $47                                                            ;8BDF1B;
    JSL.L Decompression_HardcodedDestination                             ;8BDF1D;
    dl $7FF000                                                           ;8BDF21;
    SEP #$30                                                             ;8BDF24;
    LDA.B #$00                                                           ;8BDF26;
    STA.W $2116                                                          ;8BDF28;
    LDA.B #$20                                                           ;8BDF2B;
    STA.W $2117                                                          ;8BDF2D;
    LDA.B #$80                                                           ;8BDF30;
    STA.W $2115                                                          ;8BDF32;
    JSL.L SetupHDMATransfer                                              ;8BDF35;
    db $01,$01,$18                                                       ;8BDF39;
    dl $7FE800                                                           ;8BDF3C;
    dw $0100                                                             ;8BDF3F;
    LDA.B #$02                                                           ;8BDF41;
    STA.W $420B                                                          ;8BDF43;
    LDA.B #$00                                                           ;8BDF46;
    STA.W $2116                                                          ;8BDF48;
    LDA.B #$24                                                           ;8BDF4B;
    STA.W $2117                                                          ;8BDF4D;
    LDA.B #$80                                                           ;8BDF50;
    STA.W $2115                                                          ;8BDF52;
    JSL.L SetupHDMATransfer                                              ;8BDF55;
    db $01,$01,$18                                                       ;8BDF59;
    dl $7FF000                                                           ;8BDF5C;
    dw $0800                                                             ;8BDF5F;
    LDA.B #$02                                                           ;8BDF61;
    STA.W $420B                                                          ;8BDF63;
    LDA.B #$00                                                           ;8BDF66;
    STA.W $2116                                                          ;8BDF68;
    LDA.B #$40                                                           ;8BDF6B;
    STA.W $2117                                                          ;8BDF6D;
    LDA.B #$80                                                           ;8BDF70;
    STA.W $2115                                                          ;8BDF72;
    JSL.L SetupHDMATransfer                                              ;8BDF75;
    db $01,$01,$18                                                       ;8BDF79;
    dl $7FC000                                                           ;8BDF7C;
    dw $1000                                                             ;8BDF7F;
    LDA.B #$02                                                           ;8BDF81;
    STA.W $420B                                                          ;8BDF83;
    LDA.B #$00                                                           ;8BDF86;
    STA.W $2116                                                          ;8BDF88;
    LDA.B #$60                                                           ;8BDF8B;
    STA.W $2117                                                          ;8BDF8D;
    LDA.B #$80                                                           ;8BDF90;
    STA.W $2115                                                          ;8BDF92;
    JSL.L SetupHDMATransfer                                              ;8BDF95;
    db $01,$01,$18                                                       ;8BDF99;
    dl $7E6000                                                           ;8BDF9C;
    dw $4000                                                             ;8BDF9F;
    LDA.B #$02                                                           ;8BDFA1;
    STA.W $420B                                                          ;8BDFA3;
    LDA.B #$00                                                           ;8BDFA6;
    STA.W $2116                                                          ;8BDFA8;
    LDA.B #$50                                                           ;8BDFAB;
    STA.W $2117                                                          ;8BDFAD;
    LDA.B #$80                                                           ;8BDFB0;
    STA.W $2115                                                          ;8BDFB2;
    JSL.L SetupHDMATransfer                                              ;8BDFB5;
    db $01,$01,$18                                                       ;8BDFB9;
    dl $7F0000                                                           ;8BDFBC;
    dw $2000                                                             ;8BDFBF;
    LDA.B #$02                                                           ;8BDFC1;
    STA.W $420B                                                          ;8BDFC3;
    LDA.B #$00                                                           ;8BDFC6;
    STA.W $2116                                                          ;8BDFC8;
    LDA.B #$4C                                                           ;8BDFCB;
    STA.W $2117                                                          ;8BDFCD;
    LDA.B #$80                                                           ;8BDFD0;
    STA.W $2115                                                          ;8BDFD2;
    JSL.L SetupHDMATransfer                                              ;8BDFD5;
    db $01,$01,$18                                                       ;8BDFD9;
    dl $7FE000                                                           ;8BDFDC;
    dw $0800                                                             ;8BDFDF;
    LDA.B #$02                                                           ;8BDFE1;
    STA.W $420B                                                          ;8BDFE3;
    REP #$30                                                             ;8BDFE6;
    LDA.W #Tiles_PostCredits_SuperMetroid_Icon>>8&$FF00                  ;8BDFE8;
    STA.B $48                                                            ;8BDFEB;
    LDA.W #Tiles_PostCredits_SuperMetroid_Icon                           ;8BDFED;
    STA.B $47                                                            ;8BDFF0;
    JSL.L Decompression_HardcodedDestination                             ;8BDFF2;
    dl $7E6000                                                           ;8BDFF6;
    LDA.W #PostCredits_SuperMetroid_Icon_Tilemap>>8&$FF00                ;8BDFF9;
    STA.B $48                                                            ;8BDFFC;
    LDA.W #PostCredits_SuperMetroid_Icon_Tilemap                         ;8BDFFE;
    STA.B $47                                                            ;8BE001;
    JSL.L Decompression_HardcodedDestination                             ;8BE003;
    dl $7E8000                                                           ;8BE007;
    LDA.W $09E0                                                          ;8BE00A;
    CMP.W #$0003                                                         ;8BE00D;
    BPL .gameTimeOver3                                                   ;8BE010;
    SEP #$30                                                             ;8BE012;
    LDA.B #$00                                                           ;8BE014;
    STA.W $2116                                                          ;8BE016;
    LDA.B #$00                                                           ;8BE019;
    STA.W $2117                                                          ;8BE01B;
    LDA.B #$80                                                           ;8BE01E;
    STA.W $2115                                                          ;8BE020;
    JSL.L SetupHDMATransfer                                              ;8BE023;
    db $01,$01,$18                                                       ;8BE027;
    dl $7E2000                                                           ;8BE02A;
    dw $4000                                                             ;8BE02D;
    LDA.B #$02                                                           ;8BE02F;
    STA.W $420B                                                          ;8BE031;
    BRA +                                                                ;8BE034;


.gameTimeOver3:
    SEP #$30                                                             ;8BE036;
    LDA.B #$00                                                           ;8BE038;
    STA.W $2116                                                          ;8BE03A;
    LDA.B #$00                                                           ;8BE03D;
    STA.W $2117                                                          ;8BE03F;
    LDA.B #$80                                                           ;8BE042;
    STA.W $2115                                                          ;8BE044;
    JSL.L SetupHDMATransfer                                              ;8BE047;
    db $01,$01,$18                                                       ;8BE04B;
    dl $7F0000                                                           ;8BE04E;
    dw $4000                                                             ;8BE051;
    LDA.B #$02                                                           ;8BE053;
    STA.W $420B                                                          ;8BE055;

  + REP #$30                                                             ;8BE058;
    LDA.W #$0100                                                         ;8BE05A;
    STA.W $211B                                                          ;8BE05D;
    STA.B $78                                                            ;8BE060;
    STZ.W $211C                                                          ;8BE062;
    STZ.B $7A                                                            ;8BE065;
    STZ.W $211D                                                          ;8BE067;
    STZ.B $7C                                                            ;8BE06A;
    STA.W $211E                                                          ;8BE06C;
    STA.B $7E                                                            ;8BE06F;
    LDA.W #$0068                                                         ;8BE071;
    STA.W $211F                                                          ;8BE074;
    STA.B $80                                                            ;8BE077;
    LDA.W #$0070                                                         ;8BE079;
    STA.W $2120                                                          ;8BE07C;
    STA.B $82                                                            ;8BE07F;
    LDA.W #$FFF8                                                         ;8BE081;
    STA.W $1993                                                          ;8BE084;
    LDA.W #$FFE8                                                         ;8BE087;
    STA.W $1997                                                          ;8BE08A;
    STZ.W $198D                                                          ;8BE08D;
    LDA.W #$0900                                                         ;8BE090;
    STA.W $198F                                                          ;8BE093;
    JSL.L EnableNMI                                                      ;8BE096;
    SEP #$20                                                             ;8BE09A;
    LDA.B #$0F                                                           ;8BE09C;
    STA.B $51                                                            ;8BE09E;
    REP #$20                                                             ;8BE0A0;
    STZ.W $0911                                                          ;8BE0A2;
    STZ.W $0915                                                          ;8BE0A5;
    JSL.L Enable_HDMAObjects                                             ;8BE0A8;
    LDX.W #$01FE                                                         ;8BE0AC;
    LDA.W #$0000                                                         ;8BE0AF;

.loop:
    STA.L $7E9800,X                                                      ;8BE0B2;
    DEX                                                                  ;8BE0B6;
    DEX                                                                  ;8BE0B7;
    BPL .loop                                                            ;8BE0B8;
    JSR.W Initialize_ShootingStars                                       ;8BE0BA;
    LDA.W #Credits_Tilemap>>8&$FF00                                      ;8BE0BD;
    STA.B $48                                                            ;8BE0C0;
    LDA.W #Credits_Tilemap                                               ;8BE0C2;
    STA.B $47                                                            ;8BE0C5;
    JSL.L Decompression_HardcodedDestination                             ;8BE0C7;
    dl $7F0000                                                           ;8BE0CB;
    LDA.W #$004F                                                         ;8BE0CE;
    JSL.L Clear_CinematicBGObjects_CinematicBGTilemap                    ;8BE0D1;
    LDA.W #$004F                                                         ;8BE0D5;
    JSR.W Clear_CreditsObject_CinematicBGTilemapInA                      ;8BE0D8;
    JSR.W Enable_CreditsObject                                           ;8BE0DB;
    LDA.W #$0003                                                         ;8BE0DE;
    STA.W $0723                                                          ;8BE0E1;
    STA.W $0725                                                          ;8BE0E4;
    LDY.W #CreditsObjectDefinition                                       ;8BE0E7;
    JSR.W Spawn_CreditsObject                                            ;8BE0EA;
    LDA.W #RTS_8BDB9D                                                    ;8BE0ED;
    STA.W $1F51                                                          ;8BE0F0;
    RTS                                                                  ;8BE0F3;


CinematicFunction_PostCredits_BlankScreen:
    DEC.W $1A49                                                          ;8BE0F4;
    BEQ .timerExpired                                                    ;8BE0F7;
    BPL .return                                                          ;8BE0F9;

.timerExpired:
    LDA.W #CinematicFunction_PostCredits_FadeInShootingStars             ;8BE0FB;
    STA.W $1F51                                                          ;8BE0FE;
    LDA.W #$0078                                                         ;8BE101;
    STA.W $1A49                                                          ;8BE104;
    SEP #$20                                                             ;8BE107;
    LDA.B #$10                                                           ;8BE109;
    STA.B $69                                                            ;8BE10B;
    REP #$20                                                             ;8BE10D;

.return:
    RTS                                                                  ;8BE10F;


CinematicFunction_PostCredits_FadeInShootingStars:
    JSL.L HandleFadingIn                                                 ;8BE110;
    SEP #$20                                                             ;8BE114;
    LDA.B $51                                                            ;8BE116;
    CMP.B #$0F                                                           ;8BE118;
    BEQ .fadedIn                                                         ;8BE11A;
    REP #$20                                                             ;8BE11C;
    RTS                                                                  ;8BE11E;


.fadedIn:
    SEP #$20                                                             ;8BE11F;
    LDA.B #$02                                                           ;8BE121;
    STA.B $69                                                            ;8BE123;
    LDA.B #$10                                                           ;8BE125;
    STA.B $6B                                                            ;8BE127;
    LDA.B #$02                                                           ;8BE129;
    STA.B $6F                                                            ;8BE12B;
    LDA.B #$22                                                           ;8BE12D;
    STA.B $72                                                            ;8BE12F;
    REP #$20                                                             ;8BE131;
    STZ.W $0723                                                          ;8BE133;
    STZ.W $0725                                                          ;8BE136;
    JSR.W PaletteCrossFading_CopyCurrentPalettesToFadingPalettes         ;8BE139;
    JSR.W PaletteCrossFading_DecomposePaletteDataForFading               ;8BE13C;
    LDX.W #$0040                                                         ;8BE13F;
    LDY.W #$0010                                                         ;8BE142;
    JSR.W PaletteCrossFading_ClearYColorsStartingFromColorIndexX         ;8BE145;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BE148;
    LDA.W #$0020                                                         ;8BE14B;
    STA.W $1A49                                                          ;8BE14E;
    LDA.W #CinematicFunction_PostCredits_FadeInSamus                     ;8BE151;
    STA.W $1F51                                                          ;8BE154;
    RTS                                                                  ;8BE157;


CinematicFunction_PostCredits_FadeInSamus:
    LDX.W #$0040                                                         ;8BE158;
    LDY.W #$0010                                                         ;8BE15B;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BE15E;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BE161;
    DEC.W $1A49                                                          ;8BE164;
    BEQ .timerExpired                                                    ;8BE167;
    BPL .return                                                          ;8BE169;

.timerExpired:
    SEP #$20                                                             ;8BE16B;
    LDA.B #$12                                                           ;8BE16D;
    STA.B $69                                                            ;8BE16F;
    LDA.B #$04                                                           ;8BE171;
    STA.B $6B                                                            ;8BE173;
    LDA.B #$02                                                           ;8BE175;
    STA.B $6F                                                            ;8BE177;
    LDA.B #$02                                                           ;8BE179;
    STA.B $72                                                            ;8BE17B;
    REP #$20                                                             ;8BE17D;
    LDA.W #$0084                                                         ;8BE17F;
    STA.W $1A49                                                          ;8BE182;
    LDA.W #CinematicFunction_PostCredits_WavySamus                       ;8BE185;
    STA.W $1F51                                                          ;8BE188;
    JSL.L Spawn_WavySamus_HDMAObject                                     ;8BE18B;

.return:
    RTS                                                                  ;8BE18F;


CinematicFunction_PostCredits_WavySamus:
    LDA.B $BB                                                            ;8BE190;
    CLC                                                                  ;8BE192;
    ADC.W #$0002                                                         ;8BE193;
    STA.B $BB                                                            ;8BE196;
    DEC.W $1A49                                                          ;8BE198;
    BEQ .timerExpired                                                    ;8BE19B;
    BPL .return                                                          ;8BE19D;

.timerExpired:
    LDX.W #$0000                                                         ;8BE19F;

.loopTilemap:
    LDA.L Tilemap_PostCredits_DeeRForCe,X                                ;8BE1A2;
    STA.L $7E3240,X                                                      ;8BE1A6;
    INX                                                                  ;8BE1AA;
    INX                                                                  ;8BE1AB;
    CPX.W #$0240                                                         ;8BE1AC;
    BMI .loopTilemap                                                     ;8BE1AF;
    JSR.W CinematicBGObjects_Update32x32CinematicBGTilemap               ;8BE1B1;
    SEP #$20                                                             ;8BE1B4;
    LDA.B #$01                                                           ;8BE1B6;
    STA.B $69                                                            ;8BE1B8;
    STZ.B $6B                                                            ;8BE1BA;
    STZ.B $6F                                                            ;8BE1BC;
    STZ.B $72                                                            ;8BE1BE;
    REP #$20                                                             ;8BE1C0;
    LDA.W #$0084                                                         ;8BE1C2;
    STA.W $1A49                                                          ;8BE1C5;
    LDA.W #CinematicFunction_PostCredits_DeerForce                       ;8BE1C8;
    STA.W $1F51                                                          ;8BE1CB;
    STZ.W $0D9C                                                          ;8BE1CE;

.return:
    RTS                                                                  ;8BE1D1;


CinematicFunction_PostCredits_DeerForce:
    DEC.W $1A49                                                          ;8BE1D2;
    BEQ .decTimer                                                        ;8BE1D5;
    JMP.W .return                                                        ;8BE1D7;


.decTimer:
    LDA.W #$007F                                                         ;8BE1DA;
    STA.W $1A49                                                          ;8BE1DD;
    LDA.W $09E0                                                          ;8BE1E0;
    CMP.W #$0003                                                         ;8BE1E3;
    BMI .bestEnding                                                      ;8BE1E6;
    CMP.W #$000A                                                         ;8BE1E8;
    BMI .mediocreEnding                                                  ;8BE1EB;
    LDY.W #CinematicSpriteObjectDefs_SuitedSamus_Idle_Head_Helmet        ;8BE1ED;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE1F0;
    LDY.W #CinematicSpriteObjectDefinitions_SuitedSamus_Idle_Body        ;8BE1F3;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE1F6;
    LDA.W #CinematicFunction_PostCredits_IdleSamus1                      ;8BE1F9;
    STA.W $1F51                                                          ;8BE1FC;
    SEP #$20                                                             ;8BE1FF;
    LDA.B #$10                                                           ;8BE201;
    STA.B $69                                                            ;8BE203;
    STZ.B $6B                                                            ;8BE205;
    STZ.B $6F                                                            ;8BE207;
    STZ.B $72                                                            ;8BE209;
    REP #$20                                                             ;8BE20B;
    BRA .return                                                          ;8BE20D;


.mediocreEnding:
    JSR.W PaletteCrossFading_CopyCurrentPalettesToFadingPalettes         ;8BE20F;
    JSR.W PaletteCrossFading_DecomposePaletteDataForFading               ;8BE212;
    LDY.W #CinematicSpriteObjectDefinitions_SuitedSamus_Idle_Head        ;8BE215;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE218;
    LDY.W #CinematicSpriteObjectDefinitions_SuitedSamus_Idle_Body        ;8BE21B;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE21E;
    LDX.W #$01C0                                                         ;8BE221;
    LDY.W #$0010                                                         ;8BE224;
    JSR.W PaletteCrossFading_ClearYColorsStartingFromColorIndexX         ;8BE227;
    BRA .notWorstEnding                                                  ;8BE22A;


.bestEnding:
    JSR.W PaletteCrossFading_CopyCurrentPalettesToFadingPalettes         ;8BE22C;
    JSR.W PaletteCrossFading_DecomposePaletteDataForFading               ;8BE22F;
    LDY.W #CinematicSpriteObjectDefinitions_SuitlessSamus_Idle           ;8BE232;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE235;
    LDY.W #CinematicSpriteObjectDefinitions_SuitlessSamus_Idle_Legs      ;8BE238;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE23B;

.notWorstEnding:
    LDX.W #$01A0                                                         ;8BE23E;
    LDY.W #$0010                                                         ;8BE241;
    JSR.W PaletteCrossFading_ClearYColorsStartingFromColorIndexX         ;8BE244;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BE247;
    SEP #$20                                                             ;8BE24A;
    LDA.B #$02                                                           ;8BE24C;
    STA.B $69                                                            ;8BE24E;
    LDA.B #$10                                                           ;8BE250;
    STA.B $6B                                                            ;8BE252;
    LDA.B #$02                                                           ;8BE254;
    STA.B $6F                                                            ;8BE256;
    LDA.B #$22                                                           ;8BE258;
    STA.B $72                                                            ;8BE25A;
    REP #$20                                                             ;8BE25C;
    LDA.W #CinematicFunc_PostCredits_IdleSamus_1_CrossFadeOutSamusSuit   ;8BE25E;
    STA.W $1F51                                                          ;8BE261;

.return:
    RTS                                                                  ;8BE264;


CinematicFunc_PostCredits_IdleSamus_1_CrossFadeOutSamusSuit:
    LDA.W $1A49                                                          ;8BE265;
    BIT.W #$0003                                                         ;8BE268;
    BNE CinematicFunction_PostCredits_IdleSamus1                         ;8BE26B;
    LDX.W #$0040                                                         ;8BE26D;
    LDY.W #$0010                                                         ;8BE270;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BE273;
    LDA.W $09E0                                                          ;8BE276;
    CMP.W #$0003                                                         ;8BE279;
    BMI .lessThan3                                                       ;8BE27C;
    LDX.W #$01C0                                                         ;8BE27E;
    LDY.W #$0010                                                         ;8BE281;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BE284;

.lessThan3:
    LDX.W #$01A0                                                         ;8BE287;
    LDY.W #$0010                                                         ;8BE28A;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BE28D;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BE290; fallthrough to CinematicFunction_PostCredits_IdleSamus1

CinematicFunction_PostCredits_IdleSamus1:
    LDA.W $1A49                                                          ;8BE293;
    DEC A                                                                ;8BE296;
    STA.W $1A49                                                          ;8BE297;
    CMP.W #$0041                                                         ;8BE29A;
    BPL .return                                                          ;8BE29D;
    LDX.W #$023E                                                         ;8BE29F;
    LDA.W #$004F                                                         ;8BE2A2;

.loopTilemap9:
    STA.L $7E3240,X                                                      ;8BE2A5;
    DEX                                                                  ;8BE2A9;
    DEX                                                                  ;8BE2AA;
    BPL .loopTilemap9                                                    ;8BE2AB;
    LDX.W #$0000                                                         ;8BE2AD;

.loopTilemapC:
    LDA.L Tilemap_PostCredits_1994Nintendo,X                             ;8BE2B0;
    STA.L $7E3300,X                                                      ;8BE2B4;
    INX                                                                  ;8BE2B8;
    INX                                                                  ;8BE2B9;
    CPX.W #$0080                                                         ;8BE2BA;
    BMI .loopTilemapC                                                    ;8BE2BD;
    JSR.W CinematicBGObjects_Update32x32CinematicBGTilemap               ;8BE2BF;
    SEP #$20                                                             ;8BE2C2;
    LDA.B #$01                                                           ;8BE2C4;
    STA.B $69                                                            ;8BE2C6;
    STZ.B $6B                                                            ;8BE2C8;
    STZ.B $6F                                                            ;8BE2CA;
    STZ.B $72                                                            ;8BE2CC;
    REP #$20                                                             ;8BE2CE;
    LDA.W #$0084                                                         ;8BE2D0;
    STA.W $1A4B                                                          ;8BE2D3;
    LDA.W #CinematicFunction_PostCredits_1994Nintendo                    ;8BE2D6;
    STA.W $1F51                                                          ;8BE2D9;

.return:
    RTS                                                                  ;8BE2DC;


CinematicFunction_PostCredits_1994Nintendo:
    DEC.W $1A4B                                                          ;8BE2DD;
    BEQ .timerExpired                                                    ;8BE2E0;
    BPL .return                                                          ;8BE2E2;

.timerExpired:
    LDA.W $09E0                                                          ;8BE2E4;
    CMP.W #$0003                                                         ;8BE2E7;
    BMI .gameTimeOver10                                                  ;8BE2EA;
    CMP.W #$000A                                                         ;8BE2EC;
    BMI .gameTimeOver10                                                  ;8BE2EF;
    LDA.W #CinematicFunction_PostCredits_IdleSamus2                      ;8BE2F1;
    STA.W $1F51                                                          ;8BE2F4;
    BRA .return                                                          ;8BE2F7;


.gameTimeOver10:
    SEP #$20                                                             ;8BE2F9;
    LDA.B #$02                                                           ;8BE2FB;
    STA.B $69                                                            ;8BE2FD;
    LDA.B #$10                                                           ;8BE2FF;
    STA.B $6B                                                            ;8BE301;
    LDA.B #$02                                                           ;8BE303;
    STA.B $6F                                                            ;8BE305;
    LDA.B #$22                                                           ;8BE307;
    STA.B $72                                                            ;8BE309;
    REP #$20                                                             ;8BE30B;
    LDA.W #CinematicFunc_PostCredits_IdleSamus2_CrossFadeOutSamusSuit    ;8BE30D;
    STA.W $1F51                                                          ;8BE310;

.return:
    RTS                                                                  ;8BE313;


CinematicFunc_PostCredits_IdleSamus2_CrossFadeOutSamusSuit:
    LDA.W $1A49                                                          ;8BE314;
    BIT.W #$0003                                                         ;8BE317;
    BNE CinematicFunction_PostCredits_IdleSamus2                         ;8BE31A;
    LDX.W #$0040                                                         ;8BE31C;
    LDY.W #$0010                                                         ;8BE31F;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BE322;
    LDA.W $09E0                                                          ;8BE325;
    CMP.W #$0003                                                         ;8BE328;
    BMI .gameTimeUnder3                                                  ;8BE32B;
    LDX.W #$01C0                                                         ;8BE32D;
    LDY.W #$0010                                                         ;8BE330;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BE333;

.gameTimeUnder3:
    LDX.W #$01A0                                                         ;8BE336;
    LDY.W #$0010                                                         ;8BE339;
    JSR.W PaletteCrossFading_FadeInYColorsStartingFromColorIndexX        ;8BE33C;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BE33F;

CinematicFunction_PostCredits_IdleSamus2:
    DEC.W $1A49                                                          ;8BE342;
    BPL .return                                                          ;8BE345;
    SEP #$20                                                             ;8BE347;
    LDA.B #$10                                                           ;8BE349;
    STA.B $69                                                            ;8BE34B;
    STZ.B $6B                                                            ;8BE34D;
    STZ.B $6F                                                            ;8BE34F;
    STZ.B $72                                                            ;8BE351;
    LDA.B #$07                                                           ;8BE353;
    STA.B $55                                                            ;8BE355;
    LDA.B #$80                                                           ;8BE357;
    STA.B $5F                                                            ;8BE359;
    LDA.B #$00                                                           ;8BE35B;
    STA.B $58                                                            ;8BE35D;
    STZ.B $5D                                                            ;8BE35F;
    REP #$20                                                             ;8BE361;
    LDA.W #RTS_8BDB9D                                                    ;8BE363;
    STA.W $1F51                                                          ;8BE366;
    STZ.W $1A4D                                                          ;8BE369;
    LDA.W $09E0                                                          ;8BE36C;
    CMP.W #$0003                                                         ;8BE36F;
    BMI .bestEnding                                                      ;8BE372;
    CMP.W #$000A                                                         ;8BE374;
    BMI .mediocreEnding                                                  ;8BE377;
    LDY.W #CinematicSpriteObjectDefinitions_ThumbsUp_Head_Helmet         ;8BE379;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE37C;
    LDY.W #CinematicSpriteObjectDefinitions_ThumbsUp_Arm                 ;8BE37F;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE382;
    LDY.W #CinematicSpriteObjectDefinitions_ThumbsUp_Body                ;8BE385;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE388;
    BRA .return                                                          ;8BE38B;


.mediocreEnding:
    LDY.W #CinematicSpriteObjectDefinitions_ThumbsUp_Head                ;8BE38D;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE390;
    LDY.W #CinematicSpriteObjectDefinitions_ThumbsUp_Arm                 ;8BE393;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE396;
    LDY.W #CinematicSpriteObjectDefinitions_ThumbsUp_Body                ;8BE399;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE39C;
    BRA .return                                                          ;8BE39F;


.bestEnding:
    LDY.W #CinematicSpriteObjectDefs_SuitlessSamus_LettingHairDown       ;8BE3A1;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE3A4;
    LDY.W #CinematicSpriteObjectDefs_SuitlessSamus_LettingHairDown_Legs  ;8BE3A7;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE3AA;

.return:
    RTS                                                                  ;8BE3AD;


CinematicFunction_PostCredits_SamusShootsScreen:
    LDA.W $1A4D                                                          ;8BE3AE;
    BEQ .timerExpired                                                    ;8BE3B1;
    DEC A                                                                ;8BE3B3;
    STA.W $1A4D                                                          ;8BE3B4;
    LDX.W #$0180                                                         ;8BE3B7;
    LDY.W #$0010                                                         ;8BE3BA;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BE3BD;
    LDA.W $1A49                                                          ;8BE3C0;
    BEQ .timerExpired                                                    ;8BE3C3;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BE3C5;

.timerExpired:
    LDA.W $1A49                                                          ;8BE3C8;
    BEQ .transitionPalette                                               ;8BE3CB;
    DEC A                                                                ;8BE3CD;
    STA.W $1A49                                                          ;8BE3CE;
    BRA +                                                                ;8BE3D1;


.transitionPalette:
    JSR.W TransitionSamusPaletteToBlack                                  ;8BE3D3;

  + LDA.W $198D                                                          ;8BE3D6;
    SEC                                                                  ;8BE3D9;
    SBC.W #$0008                                                         ;8BE3DA;
    AND.W #$00FF                                                         ;8BE3DD;
    STA.W $198D                                                          ;8BE3E0;
    LDA.W $198F                                                          ;8BE3E3;
    SEC                                                                  ;8BE3E6;
    SBC.W #$0040                                                         ;8BE3E7;
    STA.W $198F                                                          ;8BE3EA;
    CMP.W #$0018                                                         ;8BE3ED;
    BMI .zoomGreaterThan18                                               ;8BE3F0;
    RTS                                                                  ;8BE3F2;


.zoomGreaterThan18:
    LDA.W #$0018                                                         ;8BE3F3;
    STA.W $198F                                                          ;8BE3F6;
    LDA.W #CinematicFunction_PostCredits_FadeToWhite                     ;8BE3F9;
    STA.W $1F51                                                          ;8BE3FC;
    LDA.W #$0084                                                         ;8BE3FF;
    STA.W $1A49                                                          ;8BE402;
    STZ.W $1A4D                                                          ;8BE405;
    RTS                                                                  ;8BE408;


TransitionSamusPaletteToBlack:
    LDA.W $1A4F                                                          ;8BE409;
    BEQ .return                                                          ;8BE40C;
    DEC A                                                                ;8BE40E;
    STA.W $1A4F                                                          ;8BE40F;
    LDX.W #$01E0                                                         ;8BE412;
    LDY.W #$0010                                                         ;8BE415;
    JSR.W PaletteCrossFading_FadeOutYColorsStartingFromColorIndexX       ;8BE418;
    JSR.W PaletteCrossFading_ComposeFadingPalettes                       ;8BE41B;

.return:
    RTS                                                                  ;8BE41E;


TransferPostCreditsSuperMetroidIconToVRAM:
    LDA.W $1A4F                                                          ;8BE41F;
    BNE .return                                                          ;8BE422;
    LDA.W $1A4D                                                          ;8BE424;
    CMP.W #$0006                                                         ;8BE427;
    BMI .loading                                                         ;8BE42A;

.return:
    RTS                                                                  ;8BE42C;


.loading:
    ASL A                                                                ;8BE42D;
    ASL A                                                                ;8BE42E;
    ASL A                                                                ;8BE42F;
    TAY                                                                  ;8BE430;
    LDX.W $0330                                                          ;8BE431;
    LDA.W .size,Y                                                        ;8BE434;
    STA.B $D0,X                                                          ;8BE437;
    INX                                                                  ;8BE439;
    INX                                                                  ;8BE43A;
    LDA.W .source,Y                                                      ;8BE43B;
    STA.B $D0,X                                                          ;8BE43E;
    INX                                                                  ;8BE440;
    INX                                                                  ;8BE441;
    SEP #$20                                                             ;8BE442;
    LDA.W .source+2,Y                                                    ;8BE444;
    STA.B $D0,X                                                          ;8BE447;
    REP #$20                                                             ;8BE449;
    INX                                                                  ;8BE44B;
    LDA.W .destination,Y                                                 ;8BE44C;
    STA.B $D0,X                                                          ;8BE44F;
    INX                                                                  ;8BE451;
    INX                                                                  ;8BE452;
    STX.W $0330                                                          ;8BE453;
    INC.W $1A4D                                                          ;8BE456;
    RTS                                                                  ;8BE459;


  .size:
    dw $0800                                                             ;8BE45A; Item percentage French text
  .source:
    dl $7FD000                                                           ;8BE45C;
    db $00                                                               ;8BE45F;
  .destination:
    dw $4800                                                             ;8BE460;
    dw $0800                                                             ;8BE462; Super Metroid icon tiles
    dl $7E6000                                                           ;8BE464;
    db $00                                                               ;8BE467;
    dw $6000                                                             ;8BE468;
    dw $0800                                                             ;8BE46A;
    dl $7E6800                                                           ;8BE46C;
    db $00                                                               ;8BE46F;
    dw $6400                                                             ;8BE470;
    dw $0800                                                             ;8BE472;
    dl $7E7000                                                           ;8BE474;
    db $00                                                               ;8BE477;
    dw $6800                                                             ;8BE478;
    dw $0800                                                             ;8BE47A;
    dl $7E7800                                                           ;8BE47C;
    db $00                                                               ;8BE47F;
    dw $6C00                                                             ;8BE480;
    dw $0800                                                             ;8BE482; Super Metroid icon tilemap
    dl $7E8000                                                           ;8BE484;
    db $00                                                               ;8BE487;
    dw $5400                                                             ;8BE488;

CinematicFunction_PostCredits_FadeToWhite:
    JSR.W TransitionSamusPaletteToBlack                                  ;8BE48A;
    JSR.W TransferPostCreditsSuperMetroidIconToVRAM                      ;8BE48D;
    DEC.W $1A49                                                          ;8BE490;
    BEQ .timerExpired                                                    ;8BE493;
    RTS                                                                  ;8BE495;


.timerExpired:
    SEP #$20                                                             ;8BE496;
    LDA.B #$01                                                           ;8BE498;
    STA.B $55                                                            ;8BE49A;
    LDA.B #$11                                                           ;8BE49C;
    STA.B $69                                                            ;8BE49E;
    STZ.B $6B                                                            ;8BE4A0;
    STZ.B $6F                                                            ;8BE4A2;
    LDA.B #$31                                                           ;8BE4A4;
    STA.B $72                                                            ;8BE4A6;
    LDA.B #$3F                                                           ;8BE4A8;
    STA.B $74                                                            ;8BE4AA;
    LDA.B #$5F                                                           ;8BE4AC;
    STA.B $75                                                            ;8BE4AE;
    LDA.B #$9F                                                           ;8BE4B0;
    STA.B $76                                                            ;8BE4B2;
    STZ.B $5F                                                            ;8BE4B4;
    LDA.B #$4E                                                           ;8BE4B6;
    STA.B $58                                                            ;8BE4B8;
    LDA.B #$54                                                           ;8BE4BA;
    STA.B $5D                                                            ;8BE4BC;
    REP #$20                                                             ;8BE4BE;
    LDX.W #$0180                                                         ;8BE4C0;

.loopPalettes:
    LDA.L Palettes_PostCredits,X                                         ;8BE4C3;
    STA.L $7EC000,X                                                      ;8BE4C7;
    INX                                                                  ;8BE4CB;
    INX                                                                  ;8BE4CC;
    CPX.W #$01A0                                                         ;8BE4CD;
    BMI .loopPalettes                                                    ;8BE4D0;
    STZ.W $1993                                                          ;8BE4D2;
    STZ.W $1997                                                          ;8BE4D5;
    LDA.W #CinematicFunction_PostCredits_FadeFromWhite                   ;8BE4D8;
    STA.W $1F51                                                          ;8BE4DB;
    LDA.W #$0020                                                         ;8BE4DE;
    STA.W $1A49                                                          ;8BE4E1;
    JSL.L Enable_CinematicBGObjects                                      ;8BE4E4;
    JSL.L Enable_CinematicBGTilemap_Updates                              ;8BE4E8;
    LDA.W #$4C00                                                         ;8BE4EC;
    STA.W $19F5                                                          ;8BE4EF;
    LDX.W #$007E                                                         ;8BE4F2;
    LDA.W #$004F                                                         ;8BE4F5;

.loopTilemap:
    STA.L $7E3300,X                                                      ;8BE4F8;
    DEX                                                                  ;8BE4FC;
    DEX                                                                  ;8BE4FD;
    BPL .loopTilemap                                                     ;8BE4FE;
    JSR.W CinematicBGObjects_Update32x32CinematicBGTilemap               ;8BE500;
    RTS                                                                  ;8BE503;


CinematicFunction_PostCredits_FadeFromWhite:
    SEP #$20                                                             ;8BE504;
    LDA.B $74                                                            ;8BE506;
    SEC                                                                  ;8BE508;
    SBC.B #$01                                                           ;8BE509;
    STA.B $74                                                            ;8BE50B;
    CMP.B #$20                                                           ;8BE50D;
    BPL +                                                                ;8BE50F;
    LDA.B #$20                                                           ;8BE511;
    STA.B $74                                                            ;8BE513;

  + LDA.B $75                                                            ;8BE515;
    SEC                                                                  ;8BE517;
    SBC.B #$01                                                           ;8BE518;
    STA.B $75                                                            ;8BE51A;
    CMP.B #$40                                                           ;8BE51C;
    BPL +                                                                ;8BE51E;
    LDA.B #$40                                                           ;8BE520;
    STA.B $75                                                            ;8BE522;

  + LDA.B $76                                                            ;8BE524;
    SEC                                                                  ;8BE526;
    SBC.B #$01                                                           ;8BE527;
    STA.B $76                                                            ;8BE529;
    CMP.B #$80                                                           ;8BE52B;
    BPL +                                                                ;8BE52D;
    LDA.B #$80                                                           ;8BE52F;
    STA.B $76                                                            ;8BE531;

  + REP #$20                                                             ;8BE533;
    DEC.W $1A49                                                          ;8BE535;
    BEQ .timerExpired                                                    ;8BE538;
    BPL .return                                                          ;8BE53A;

.timerExpired:
    LDA.W #RTS_8BE7BA                                                    ;8BE53C;
    STA.W $1F51                                                          ;8BE53F;
    LDA.W #$5000                                                         ;8BE542;
    STA.W $19F5                                                          ;8BE545;
    JSR.W CinematicBGObjects_Update32x32CinematicBGTilemap               ;8BE548;
    LDA.W #$0100                                                         ;8BE54B;
    STA.W $0911                                                          ;8BE54E;
    STA.W $0915                                                          ;8BE551;
    LDY.W #CinematicSpriteObjectDefinitions_SuperMetroidIcon_S_TopHalf   ;8BE554;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE557;
    LDY.W #CinematicSpriteObjectDefs_SuperMetroidIcon_S_BottomHalf       ;8BE55A;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE55D;
    LDY.W #CinematicSpriteObjectDefs_SuperMetroidIcon_Circle_TopHalf     ;8BE560;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE563;
    LDY.W #CinematicSpriteObjectDefs_SuperMetroidIcon_Circle_BottomHalf  ;8BE566;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BE569;
    LDX.W #$001E                                                         ;8BE56C;
    LDA.W #$0000                                                         ;8BE56F;

.loopBGPalette:
    STA.L $7EC020,X                                                      ;8BE572;
    DEX                                                                  ;8BE576;
    DEX                                                                  ;8BE577;
    BPL .loopBGPalette                                                   ;8BE578;
    LDX.W #$001E                                                         ;8BE57A;

.loopSpirtePalette:
    LDA.L Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_0,X         ;8BE57D;
    STA.L $7EC1E0,X                                                      ;8BE581;
    DEX                                                                  ;8BE585;
    DEX                                                                  ;8BE586;
    BPL .loopSpirtePalette                                               ;8BE587;

.return:
    RTS                                                                  ;8BE589;


CinematicFunction_PostCredits_GreyOutSuperMetroidIcon:
    PHX                                                                  ;8BE58A;
    PHY                                                                  ;8BE58B;
    PHB                                                                  ;8BE58C;
    LDA.W $1A49                                                          ;8BE58D;
    ASL A                                                                ;8BE590;
    ASL A                                                                ;8BE591;
    TAX                                                                  ;8BE592;
    LDA.W .spritePalette,X                                               ;8BE593;
    PHA                                                                  ;8BE596;
    LDA.W .BGPalette,X                                                   ;8BE597;
    TAY                                                                  ;8BE59A;
    PEA.W $8C00                                                          ;8BE59B;
    PLB                                                                  ;8BE59E;
    PLB                                                                  ;8BE59F;
    LDX.W #$001E                                                         ;8BE5A0;

.loopBGPalette:
    LDA.W $0000,Y                                                        ;8BE5A3;
    STA.L $7EC020,X                                                      ;8BE5A6;
    DEY                                                                  ;8BE5AA;
    DEY                                                                  ;8BE5AB;
    DEX                                                                  ;8BE5AC;
    DEX                                                                  ;8BE5AD;
    BPL .loopBGPalette                                                   ;8BE5AE;
    PLY                                                                  ;8BE5B0;
    LDX.W #$001E                                                         ;8BE5B1;

.loopSpritePalette:
    LDA.W $0000,Y                                                        ;8BE5B4;
    STA.L $7EC1E0,X                                                      ;8BE5B7;
    DEY                                                                  ;8BE5BB;
    DEY                                                                  ;8BE5BC;
    DEX                                                                  ;8BE5BD;
    DEX                                                                  ;8BE5BE;
    BPL .loopSpritePalette                                               ;8BE5BF;
    LDA.W $1A49                                                          ;8BE5C1;
    INC A                                                                ;8BE5C4;
    STA.W $1A49                                                          ;8BE5C5;
    CMP.W #$0010                                                         ;8BE5C8;
    BMI .return                                                          ;8BE5CB;
    LDA.W #RTS_8BE7BA                                                    ;8BE5CD;
    STA.W $1F51                                                          ;8BE5D0;
    JSR.W Clear_CinematicSpriteObjects                                   ;8BE5D3;
    PLB                                                                  ;8BE5D6;
    LDY.W #CinematicBGObjectDefinitions_PostCredits_ItemPercentage       ;8BE5D7;
    LDA.W #$4C00                                                         ;8BE5DA;
    JSR.W Spawn_CinematicBGObject                                        ;8BE5DD;
    PLY                                                                  ;8BE5E0;
    PLX                                                                  ;8BE5E1;
    RTS                                                                  ;8BE5E2;


.return:
    PLB                                                                  ;8BE5E3;
    PLY                                                                  ;8BE5E4;
    PLX                                                                  ;8BE5E5;
    RTS                                                                  ;8BE5E6;

; Pointers to (the last colour of) increasingly grey palettes
  .BGPalette:
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_10                 ;8BE5E7; These pointers read the list backwards :(
  .spritePalette:
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_1              ;8BE5E9;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_F                  ;8BE5EB;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_2              ;8BE5ED;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_E                  ;8BE5EF;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_3              ;8BE5F1;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_D                  ;8BE5F3;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_4              ;8BE5F5;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_C                  ;8BE5F7;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_5              ;8BE5F9;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_B                  ;8BE5FB;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_6              ;8BE5FD;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_A                  ;8BE5FF;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_7              ;8BE601;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_9                  ;8BE603;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_8              ;8BE605;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_8                  ;8BE607;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_9              ;8BE609;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_7                  ;8BE60B;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_A              ;8BE60D;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_6                  ;8BE60F;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_B              ;8BE611;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_5                  ;8BE613;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_C              ;8BE615;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_4                  ;8BE617;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_D              ;8BE619;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_3                  ;8BE61B;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_E              ;8BE61D;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_2                  ;8BE61F;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_F              ;8BE621;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_BG_1                  ;8BE623;
    dw Palettes_EndingSuperMetroidIconFadingToGrey_Sprite_10             ;8BE625;

Instruction_DrawItemPercentageCount:
    PHP                                                                  ;8BE627;
    PHB                                                                  ;8BE628;
    PHK                                                                  ;8BE629;
    PLB                                                                  ;8BE62A;
    REP #$30                                                             ;8BE62B;
    PHX                                                                  ;8BE62D;
    PHY                                                                  ;8BE62E;
    LDX.W #$0008                                                         ;8BE62F;
    STZ.B $12                                                            ;8BE632;

.loopTanks:
    LDA.W .tankValuesEnergy,X                                            ;8BE634;
    TAY                                                                  ;8BE637;
    LDA.W $0000,Y                                                        ;8BE638;
    STA.W $4204                                                          ;8BE63B;
    SEP #$20                                                             ;8BE63E;
    LDA.W .tankValuesEnergyDivisor,X                                     ;8BE640;
    STA.W $4206                                                          ;8BE643;
    NOP                                                                  ;8BE646;
    NOP                                                                  ;8BE647;
    NOP                                                                  ;8BE648;
    NOP                                                                  ;8BE649;
    NOP                                                                  ;8BE64A;
    NOP                                                                  ;8BE64B;
    NOP                                                                  ;8BE64C;
    REP #$20                                                             ;8BE64D;
    LDA.W $4214                                                          ;8BE64F;
    CLC                                                                  ;8BE652;
    ADC.B $12                                                            ;8BE653;
    STA.B $12                                                            ;8BE655;
    DEX                                                                  ;8BE657;
    DEX                                                                  ;8BE658;
    BPL .loopTanks                                                       ;8BE659;
    LDX.W #$0014                                                         ;8BE65B;

.loopItems:
    LDA.W $09A4                                                          ;8BE65E;
    BIT.W .itemBits,X                                                    ;8BE661;
    BEQ .nextItem                                                        ;8BE664;
    INC.B $12                                                            ;8BE666;

.nextItem:
    DEX                                                                  ;8BE668;
    DEX                                                                  ;8BE669;
    BPL .loopItems                                                       ;8BE66A;
    LDX.W #$0008                                                         ;8BE66C;

.loopBeams:
    LDA.W $09A8                                                          ;8BE66F;
    BIT.W .beamBits,X                                                    ;8BE672;
    BEQ .nextBeam                                                        ;8BE675;
    INC.B $12                                                            ;8BE677;

.nextBeam:
    DEX                                                                  ;8BE679;
    DEX                                                                  ;8BE67A;
    BPL .loopBeams                                                       ;8BE67B;
    LDA.B $12                                                            ;8BE67D;
    STA.W $4204                                                          ;8BE67F;
    SEP #$20                                                             ;8BE682;
    LDA.B #$0A                                                           ;8BE684;
    STA.W $4206                                                          ;8BE686;
    NOP                                                                  ;8BE689;
    NOP                                                                  ;8BE68A;
    NOP                                                                  ;8BE68B;
    NOP                                                                  ;8BE68C;
    NOP                                                                  ;8BE68D;
    NOP                                                                  ;8BE68E;
    NOP                                                                  ;8BE68F;
    REP #$20                                                             ;8BE690;
    LDA.W $4214                                                          ;8BE692;
    STA.W $4204                                                          ;8BE695;
    LDA.W $4216                                                          ;8BE698;
    STA.B $16                                                            ;8BE69B;
    SEP #$20                                                             ;8BE69D;
    LDA.B #$0A                                                           ;8BE69F;
    STA.W $4206                                                          ;8BE6A1;
    NOP                                                                  ;8BE6A4;
    NOP                                                                  ;8BE6A5;
    NOP                                                                  ;8BE6A6;
    NOP                                                                  ;8BE6A7;
    NOP                                                                  ;8BE6A8;
    NOP                                                                  ;8BE6A9;
    NOP                                                                  ;8BE6AA;
    REP #$20                                                             ;8BE6AB;
    LDA.W $4214                                                          ;8BE6AD;
    STA.B $12                                                            ;8BE6B0;
    LDA.W $4216                                                          ;8BE6B2;
    STA.B $14                                                            ;8BE6B5;
    LDA.B $12                                                            ;8BE6B7;
    BEQ +                                                                ;8BE6B9;
    ASL A                                                                ;8BE6BB;
    ASL A                                                                ;8BE6BC;
    TAY                                                                  ;8BE6BD;
    LDA.W TilemapValuesForDecimalDigits_topHalf,Y                        ;8BE6BE;
    STA.L $7E339C                                                        ;8BE6C1;
    LDA.W TilemapValuesForDecimalDigits_bottomHalf,Y                     ;8BE6C5;
    STA.L $7E33DC                                                        ;8BE6C8;

  + LDA.B $14                                                            ;8BE6CC;
    BNE +                                                                ;8BE6CE;
    LDA.B $12                                                            ;8BE6D0;
    BEQ .unitsOnly                                                       ;8BE6D2;
    LDA.B $14                                                            ;8BE6D4;

  + ASL A                                                                ;8BE6D6;
    ASL A                                                                ;8BE6D7;
    TAY                                                                  ;8BE6D8;
    LDA.W TilemapValuesForDecimalDigits_topHalf,Y                        ;8BE6D9;
    STA.L $7E339E                                                        ;8BE6DC;
    LDA.W TilemapValuesForDecimalDigits_bottomHalf,Y                     ;8BE6E0;
    STA.L $7E33DE                                                        ;8BE6E3;

.unitsOnly:
    LDA.B $16                                                            ;8BE6E7;
    ASL A                                                                ;8BE6E9;
    ASL A                                                                ;8BE6EA;
    TAY                                                                  ;8BE6EB;
    LDA.W TilemapValuesForDecimalDigits_topHalf,Y                        ;8BE6EC;
    STA.L $7E33A0                                                        ;8BE6EF;
    LDA.W TilemapValuesForDecimalDigits_bottomHalf,Y                     ;8BE6F3;
    STA.L $7E33E0                                                        ;8BE6F6;
    LDA.W #$386A                                                         ;8BE6FA;
    STA.L $7E33A2                                                        ;8BE6FD;
    LDA.W #$387A                                                         ;8BE701;
    STA.L $7E33E2                                                        ;8BE704;
    PLY                                                                  ;8BE708;
    PLX                                                                  ;8BE709;
    PLB                                                                  ;8BE70A;
    PLP                                                                  ;8BE70B;
    RTS                                                                  ;8BE70C;


.tankValuesEnergy:
    dw $09C4                                                             ;8BE70D;
.tankValuesReserve:
    dw $09D4                                                             ;8BE70F;
.tankValuesMissiles:
    dw $09C8                                                             ;8BE711;
.tankValuesSuperMissiles:
    dw $09CC                                                             ;8BE713;
.tankValuesPowerBombs:
    dw $09D0                                                             ;8BE715;

.tankValuesEnergyDivisor:
    dw $0064                                                             ;8BE717;
.tankValuesReserveDivisor:
    dw $0064                                                             ;8BE719;
.tankValuesMissilesDivisor:
    dw $0005                                                             ;8BE71B;
.tankValuesSuperMissilesDivisor:
    dw $0005                                                             ;8BE71D;
.tankValuesPowerBombsDivisor:
    dw $0005                                                             ;8BE71F;

.itemBits:
    dw $0001,$0020,$0004,$1000,$0002,$0008,$0100,$0200                   ;8BE721;
    dw $2000,$4000,$8000                                                 ;8BE731;

.beamBits:
    dw $0001,$0002,$0004,$0008,$1000                                     ;8BE737;


TilemapValuesForDecimalDigits:
  .topHalf:
    dw $3860                                                             ;8BE741;
  .bottomHalf:                                                           ;8BE743;
    dw       $3870 ; 0
    dw $3861,$3871 ; 1
    dw $3862,$3872 ; 2
    dw $3863,$3873 ; 3
    dw $3864,$3874 ; 4
    dw $3865,$3875 ; 5
    dw $3866,$3876 ; 6
    dw $3867,$3877 ; 7
    dw $3868,$3878 ; 8
    dw $3869,$3879 ; 9

Instruction_DrawItemPercentageFrenchText:
    PHX                                                                  ;8BE769;
    LDA.W $09E2                                                          ;8BE76A;
    BEQ .germanText                                                      ;8BE76D;
    LDX.W #$007E                                                         ;8BE76F;

.loop:
    LDA.L Tilemap_PostCredits_ItemPercentageFrenchText,X                 ;8BE772;
    STA.L $7E35C0,X                                                      ;8BE776;
    DEX                                                                  ;8BE77A;
    DEX                                                                  ;8BE77B;
    BPL .loop                                                            ;8BE77C;

.return:
    PLX                                                                  ;8BE77E;
    RTS                                                                  ;8BE77F;


.germanText
    LDX.W #$00FE

.loopGermanText:
    LDA.L Tilemap_PostCredits_ItemPercentageGermanText,X
    STA.L $7E35C0,X
    DEX
    DEX
    BPL .loopGermanText
    PLX
    RTS


Instruction_ClearItemPercentageFrenchText:
    PHX                                                                  ;8BE780;
    LDX.W #$00FE                                                         ;8BE781;
    LDA.W #$004F                                                         ;8BE784;

.loop:
    STA.L $7E35C0,X                                                      ;8BE787;
    DEX                                                                  ;8BE78B;
    DEX                                                                  ;8BE78C;
    BPL .loop                                                            ;8BE78D;
    LDA.W #CinematicFunction_PostCredits_ScrollItemPercentageDown        ;8BE78F;
    STA.W $1F51                                                          ;8BE792;
    PLX                                                                  ;8BE795;
    RTS                                                                  ;8BE796;


CinematicFunction_PostCredits_ScrollItemPercentageDown:
    LDA.W $1997                                                          ;8BE797;
    SEC                                                                  ;8BE79A;
    SBC.W #$0002                                                         ;8BE79B;
    STA.W $1997                                                          ;8BE79E;
    CMP.W #$FFB1                                                         ;8BE7A1;
    BPL .return                                                          ;8BE7A4;
    LDY.W #CinematicBGObjectDefinitions_PostCredits_SeeYouNextMission    ;8BE7A6;
    LDA.W #$4C00                                                         ;8BE7A9;
    JSR.W Spawn_CinematicBGObject                                        ;8BE7AC;
    LDA.W #RTS_8BE7BA                                                    ;8BE7AF;
    STA.W $1F51                                                          ;8BE7B2;
    JSL.L Write_supermetroid_ToSRAM                                      ;8BE7B5;

.return:
    RTS                                                                  ;8BE7B9;


RTS_8BE7BA:
    RTS                                                                  ;8BE7BA;


Initialize_ShootingStars:
    PHP                                                                  ;8BE7BB;
    REP #$30                                                             ;8BE7BC;
    LDY.W #$0E0C                                                         ;8BE7BE;
    LDX.W #$0000                                                         ;8BE7C1;
    STX.B $12                                                            ;8BE7C4;

.loop:
    PHX                                                                  ;8BE7C6;
    TXA                                                                  ;8BE7C7;
    STA.W $0000,Y                                                        ;8BE7C8;
    ASL A                                                                ;8BE7CB;
    ASL A                                                                ;8BE7CC;
    ASL A                                                                ;8BE7CD;
    TAX                                                                  ;8BE7CE;
    LDA.W #$0000                                                         ;8BE7CF;
    STA.W $000C,Y                                                        ;8BE7D2;
    STA.W $000E,Y                                                        ;8BE7D5;
    LDA.W ShootingStar_Table_delay,X                                     ;8BE7D8;
    BEQ .zero                                                            ;8BE7DB;
    STA.W $000A,Y                                                        ;8BE7DD;
    LDA.W $0000,Y                                                        ;8BE7E0;
    ORA.W #$8000                                                         ;8BE7E3;
    STA.W $0000,Y                                                        ;8BE7E6;
    BRA +                                                                ;8BE7E9;


.zero:
    LDA.W #$0020                                                         ;8BE7EB;
    STA.W $000A,Y                                                        ;8BE7EE;

  + PLX                                                                  ;8BE7F1;
    LDA.W #$0080                                                         ;8BE7F2;
    STA.W $0002,Y                                                        ;8BE7F5;
    STA.W $0006,Y                                                        ;8BE7F8;
    LDA.W #$0000                                                         ;8BE7FB;
    STA.W $0004,Y                                                        ;8BE7FE;
    STA.W $0008,Y                                                        ;8BE801;
    TYA                                                                  ;8BE804;
    CLC                                                                  ;8BE805;
    ADC.W #$0010                                                         ;8BE806;
    TAY                                                                  ;8BE809;
    INX                                                                  ;8BE80A;
    CPX.W #$0028                                                         ;8BE80B;
    BMI .loop                                                            ;8BE80E;
    PLP                                                                  ;8BE810;
    RTS                                                                  ;8BE811;


Handle_ShootingStars:
    PHP                                                                  ;8BE812;
    REP #$30                                                             ;8BE813;
    LDA.W $1A05                                                          ;8BE815;
    BNE .loopSetup                                                       ;8BE818;
    PLP                                                                  ;8BE81A;
    RTS                                                                  ;8BE81B;


.loopSetup:
    LDA.W #$0028                                                         ;8BE81C;
    STA.B $16                                                            ;8BE81F;
    LDY.W #$0E0C                                                         ;8BE821;
    BRA .loopProcess                                                     ;8BE824;


.delay:
    LDA.W $000A,Y                                                        ;8BE826;
    DEC A                                                                ;8BE829;
    STA.W $000A,Y                                                        ;8BE82A;
    BPL .gotoNextProcess                                                 ;8BE82D;
    LDA.W #$0020                                                         ;8BE82F;
    STA.W $000A,Y                                                        ;8BE832;
    LDA.W $0000,Y                                                        ;8BE835;
    AND.W #$00FF                                                         ;8BE838;
    STA.W $0000,Y                                                        ;8BE83B;

.gotoNextProcess:
    JMP.W .nextProcess                                                   ;8BE83E;


.loopProcess:
    LDA.W $0000,Y                                                        ;8BE841;
    BMI .delay                                                           ;8BE844;
    PHA                                                                  ;8BE846;
    AND.W #$FF00                                                         ;8BE847;
    CMP.W #$0400                                                         ;8BE84A;
    BMI .lessThan4                                                       ;8BE84D;
    PLA                                                                  ;8BE84F;
    AND.W #$00FF                                                         ;8BE850;
    ASL A                                                                ;8BE853;
    ASL A                                                                ;8BE854;
    ASL A                                                                ;8BE855;
    TAX                                                                  ;8BE856;
    LDA.W $000C,Y                                                        ;8BE857;
    CLC                                                                  ;8BE85A;
    ADC.W ShootingStar_Table_Xaccel,X                                    ;8BE85B;
    CLC                                                                  ;8BE85E;
    ADC.W ShootingStar_Table_Xaccel,X                                    ;8BE85F;
    STA.W $000C,Y                                                        ;8BE862;
    LDA.W $000E,Y                                                        ;8BE865;
    CLC                                                                  ;8BE868;
    ADC.W ShootingStar_Table_Yaccel,X                                    ;8BE869;
    CLC                                                                  ;8BE86C;
    ADC.W ShootingStar_Table_Yaccel,X                                    ;8BE86D;
    STA.W $000E,Y                                                        ;8BE870;
    BRA +                                                                ;8BE873;


.lessThan4:
    PLA                                                                  ;8BE875;
    AND.W #$00FF                                                         ;8BE876;
    ASL A                                                                ;8BE879;
    ASL A                                                                ;8BE87A;
    ASL A                                                                ;8BE87B;
    TAX                                                                  ;8BE87C;
    LDA.W $000C,Y                                                        ;8BE87D;
    CLC                                                                  ;8BE880;
    ADC.W ShootingStar_Table_Xaccel,X                                    ;8BE881;
    STA.W $000C,Y                                                        ;8BE884;
    LDA.W $000E,Y                                                        ;8BE887;
    CLC                                                                  ;8BE88A;
    ADC.W ShootingStar_Table_Yaccel,X                                    ;8BE88B;
    STA.W $000E,Y                                                        ;8BE88E;

  + LDA.W $000C,Y                                                        ;8BE891;
    PHA                                                                  ;8BE894;
    XBA                                                                  ;8BE895;
    AND.W #$00FF                                                         ;8BE896;
    BIT.W #$0080                                                         ;8BE899;
    BEQ +                                                                ;8BE89C;
    ORA.W #$FF00                                                         ;8BE89E;

  + STA.B $12                                                            ;8BE8A1;
    PLA                                                                  ;8BE8A3;
    XBA                                                                  ;8BE8A4;
    AND.W #$FF00                                                         ;8BE8A5;
    STA.B $14                                                            ;8BE8A8;
    LDA.W $0004,Y                                                        ;8BE8AA;
    CLC                                                                  ;8BE8AD;
    ADC.B $14                                                            ;8BE8AE;
    STA.W $0004,Y                                                        ;8BE8B0;
    LDA.W $0002,Y                                                        ;8BE8B3;
    ADC.B $12                                                            ;8BE8B6;
    STA.W $0002,Y                                                        ;8BE8B8;
    LDA.W $000E,Y                                                        ;8BE8BB;
    PHA                                                                  ;8BE8BE;
    XBA                                                                  ;8BE8BF;
    AND.W #$00FF                                                         ;8BE8C0;
    BIT.W #$0080                                                         ;8BE8C3;
    BEQ +                                                                ;8BE8C6;
    ORA.W #$FF00                                                         ;8BE8C8;

  + STA.B $12                                                            ;8BE8CB;
    PLA                                                                  ;8BE8CD;
    XBA                                                                  ;8BE8CE;
    AND.W #$FF00                                                         ;8BE8CF;
    STA.B $14                                                            ;8BE8D2;
    LDA.W $0008,Y                                                        ;8BE8D4;
    CLC                                                                  ;8BE8D7;
    ADC.B $14                                                            ;8BE8D8;
    STA.W $0008,Y                                                        ;8BE8DA;
    LDA.W $0006,Y                                                        ;8BE8DD;
    ADC.B $12                                                            ;8BE8E0;
    STA.W $0006,Y                                                        ;8BE8E2;

.nextProcess:
    TYA                                                                  ;8BE8E5;
    CLC                                                                  ;8BE8E6;
    ADC.W #$0010                                                         ;8BE8E7;
    TAY                                                                  ;8BE8EA;
    DEC.B $16                                                            ;8BE8EB;
    BEQ .loopDrawSetup                                                   ;8BE8ED;
    JMP.W .loopProcess                                                   ;8BE8EF;


.loopDrawSetup:
    LDA.W #$0028                                                         ;8BE8F2;
    STA.B $16                                                            ;8BE8F5;
    LDX.W $0590                                                          ;8BE8F7;
    LDY.W #$0E0C                                                         ;8BE8FA;

.loopDraw:
    LDA.W $0000,Y                                                        ;8BE8FD;
    BMI .nextDraw                                                        ;8BE900;
    LDA.W $0002,Y                                                        ;8BE902;
    BIT.W #$FF00                                                         ;8BE905;
    BNE .offScreen                                                       ;8BE908;
    SEC                                                                  ;8BE90A;
    SBC.W #$0004                                                         ;8BE90B;
    BIT.W #$FF00                                                         ;8BE90E;
    BNE .offScreen                                                       ;8BE911;
    STA.W $0370,X                                                        ;8BE913;
    LDA.W $0006,Y                                                        ;8BE916;
    BIT.W #$FF00                                                         ;8BE919;
    BNE .offScreen                                                       ;8BE91C;
    SEC                                                                  ;8BE91E;
    SBC.W #$0004                                                         ;8BE91F;
    BIT.W #$FF00                                                         ;8BE922;
    BNE .offScreen                                                       ;8BE925;
    STA.W $0371,X                                                        ;8BE927;
    LDA.W $000A,Y                                                        ;8BE92A;
    DEC A                                                                ;8BE92D;
    STA.W $000A,Y                                                        ;8BE92E;
    BEQ .timerExpired                                                    ;8BE931;
    BPL .nonZero                                                         ;8BE933;

.timerExpired:
    PHX                                                                  ;8BE935;
    LDA.W $0000,Y                                                        ;8BE936;
    PHA                                                                  ;8BE939;
    AND.W #$00FF                                                         ;8BE93A;
    ASL A                                                                ;8BE93D;
    ASL A                                                                ;8BE93E;
    ASL A                                                                ;8BE93F;
    TAX                                                                  ;8BE940;
    LDA.W ShootingStar_Table_timer,X                                     ;8BE941;
    STA.W $000A,Y                                                        ;8BE944;
    PLA                                                                  ;8BE947;
    CLC                                                                  ;8BE948;
    ADC.W #$0200                                                         ;8BE949;
    STA.W $0000,Y                                                        ;8BE94C;
    PLX                                                                  ;8BE94F;

.nonZero:
    LDA.W $0000,Y                                                        ;8BE950;
    BIT.W #$FF00                                                         ;8BE953;
    BEQ .nextDraw                                                        ;8BE956;
    PHY                                                                  ;8BE958;
    XBA                                                                  ;8BE959;
    AND.W #$00FF                                                         ;8BE95A;
    TAY                                                                  ;8BE95D;
    LDA.W .tilemapValues,Y                                               ;8BE95E;
    STA.W $0372,X                                                        ;8BE961;
    PLY                                                                  ;8BE964;
    TXA                                                                  ;8BE965;
    CLC                                                                  ;8BE966;
    ADC.W #$0004                                                         ;8BE967;
    TAX                                                                  ;8BE96A;

.nextDraw:
    TYA                                                                  ;8BE96B;
    CLC                                                                  ;8BE96C;
    ADC.W #$0010                                                         ;8BE96D;
    TAY                                                                  ;8BE970;
    DEC.B $16                                                            ;8BE971;
    BEQ .return                                                          ;8BE973;
    JMP.W .loopDraw                                                      ;8BE975;


.return:
    STX.W $0590                                                          ;8BE978;
    PLP                                                                  ;8BE97B;
    RTS                                                                  ;8BE97C;


.offScreen:
    LDA.W #$0020                                                         ;8BE97D;
    STA.W $000A,Y                                                        ;8BE980;
    LDA.W #$0080                                                         ;8BE983;
    STA.W $0002,Y                                                        ;8BE986;
    STA.W $0006,Y                                                        ;8BE989;
    LDA.W #$0000                                                         ;8BE98C;
    STA.W $0004,Y                                                        ;8BE98F;
    STA.W $0008,Y                                                        ;8BE992;
    STA.W $000C,Y                                                        ;8BE995;
    STA.W $000E,Y                                                        ;8BE998;
    LDA.W $0000,Y                                                        ;8BE99B;
    AND.W #$00FF                                                         ;8BE99E;
    STA.W $0000,Y                                                        ;8BE9A1;
    JMP.W .nextDraw                                                      ;8BE9A4;


.tilemapValues:
; Tile number and attributes, indexed by animation frame
    dw $0000,$09F0,$09F1,$09F2,$09F3,$09F3,$09F3,$09F3                   ;8BE9A7;
    dw $09F3,$09F3,$09F3,$09F3,$09F3,$09F3,$09F3,$09F3                   ;8BE9B7;
    dw $09F3,$09F3,$09F3,$09F3                                           ;8BE9C7;

ShootingStar_Table_Xaccel:
    dw $0010                                                             ;8BE9CF;

ShootingStar_Table_Yaccel:
    dw       $FFF0                                                       ;8BE9D1;

ShootingStar_Table_timer:
    dw             $0006                                                 ;8BE9D3;

ShootingStar_Table_delay:
    dw                   $0008,$000C,$FFFF,$0006,$0000                   ;8BE9D5;
    dw $000D,$FFF6,$0006,$0006,$0008,$FFF0,$0006,$0000
    dw $0002,$FFF2,$0006,$0008,$0010,$FFF8,$0006,$0000
    dw $0002,$FFFF,$0F00,$0000,$0001,$FFFE,$0F00,$0000
    dw $0000,$FFFD,$0F00,$0000,$0002,$FFFB,$0020,$0004
    dw $000F,$0010,$0006,$0008,$0002,$0009,$0008,$0000
    dw $000C,$0008,$0006,$0000,$0010,$0004,$0006,$0008
    dw $0008,$000C,$0008,$0000,$0002,$0008,$0008,$0000
    dw $0002,$0004,$0F00,$0000,$0002,$0001,$0F00,$0000
    dw $FFF3,$000D,$0004,$0008,$FFF2,$0008,$0004,$0000
    dw $FFF9,$000E,$0006,$0000,$FFFB,$0010,$0004,$0008
    dw $FFFC,$0005,$0020,$0000,$FFFE,$0003,$0F00,$0000
    dw $FFFE,$0004,$0F00,$0000,$FFFD,$0001,$0F00,$0000
    dw $FFF4,$0002,$0004,$0000,$FFFA,$0005,$0020,$0000
    dw $FFFD,$0008,$0020,$0000,$FFF2,$FFF7,$0004,$0008
    dw $FFF8,$FFF4,$0004,$0000,$FFFA,$FFF2,$0006,$0000
    dw $FFF4,$FFF0,$0004,$0008,$FFF8,$FFFC,$0020,$0000
    dw $FFFD,$FFFA,$0020,$0000,$FFF9,$FFF8,$0020,$0000
    dw $FFFE,$FFFD,$0F00,$0000,$FFFC,$FFFC,$0F00,$0000
    dw $FFF8,$FFFE,$0F00,$0000,$FFF8,$FFFC,$0F00,$0000

InstList_CinematicSpriteObjects_ExplodingZebes_Zebes_0:
    dw CinematicSpriteObject_Instruction_TimerInY,$0005                  ;8BEB0F;

InstList_CinematicSpriteObjects_ExplodingZebes_Zebes_1:
    dw $000B,EndingSequenceSpritemaps_ExplodingPlanetZebesFrame1         ;8BEB13;
    dw $000B,EndingSequenceSpritemaps_ExplodingPlanetZebesFrame2         ;8BEB17;
    dw $000B,EndingSequenceSpritemaps_ExplodingPlanetZebesFrame3         ;8BEB1B;
    dw $000B,EndingSequenceSpritemaps_ExplodingPlanetZebesFrame4         ;8BEB1F;
    dw CinematicSpriteObject_Inst_DecrementTimer_GotoYIfNonZero          ;8BEB23;
    dw InstList_CinematicSpriteObjects_ExplodingZebes_Zebes_1            ;8BEB25;
    dw Instruction_FadeOutZoomedOutExplodingZebes                        ;8BEB27;
    dw $001D,EndingSequenceSpritemaps_ExplodingPlanetZebesFrame5         ;8BEB29;
    dw $001D,EndingSequenceSpritemaps_ExplodingPlanetZebesFrame6         ;8BEB2D;
    dw $001D,EndingSequenceSpritemaps_ExplodingPlanetZebesFrame7         ;8BEB31;
    dw $001D,EndingSequenceSpritemaps_ExplodingPlanetZebesFrame8         ;8BEB35;
    dw Instruction_CineSpriteObjectSpawnZebesExplosionSilhouette         ;8BEB39;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BEB3B;

InstList_CinematicSpriteObjects_ExplodingZebes_PurpleGlow:
    dw $000D,EndingSequenceSpritemaps_ExplodingPlanetZebesGlow           ;8BEB3D;
    dw $000D,EndingSequenceSpritemaps_ZebesSupernovaPart1                ;8BEB41;
    dw $000D,EndingSequenceSpritemaps_ZebesSupernovaPart2                ;8BEB45;
    dw $000D,EndingSequenceSpritemaps_ZebesSupernovaPart1                ;8BEB49;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEB4D;
    dw InstList_CinematicSpriteObjects_ExplodingZebes_PurpleGlow         ;8BEB4F;

InstList_CinematicSpriteObjects_ExplodingZebes_Stars:
    dw $0010,EndingSequenceSpritemaps_ZebesBoomStarryBackground          ;8BEB51;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEB55;
    dw InstList_CinematicSpriteObjects_ExplodingZebes_Stars              ;8BEB57;

InstList_CinematicSpriteObjects_ExplodingZebes_Lava_0:
    dw $009C,$0000                                                       ;8BEB59;

InstList_CinematicSpriteObjects_ExplodingZebes_Lava_1:
    dw $0008,EndingSequenceSpritemaps_ExplodingPlanetZebesCoreFrame1     ;8BEB5D;
    dw $0008,EndingSequenceSpritemaps_ExplodingPlanetZebesCoreFrame2     ;8BEB61;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEB65;
    dw InstList_CinematicSpriteObjects_ExplodingZebes_Lava_1             ;8BEB67;

InstList_CinematicSpriteObjects_ExplodingZebes_Silhouette:
    dw $0008,EndingSequenceSpritemaps_ZebesSupernovaPart3                ;8BEB69;
    dw Instruction_CinematicSpriteObject_StartZebesExplosion             ;8BEB6D;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BEB6F;

InstList_CinematicSpriteObjects_ExplodingZebes_Stars_Right:
    dw $0090,EndingSequenceSpritemaps_ZebesBoomStarryBackground          ;8BEB71;
    dw Instruction_ZebesExplosionFinale                                  ;8BEB75;
    dw $014C,EndingSequenceSpritemaps_ZebesBoomStarryBackground          ;8BEB77;
    dw Instruction_EndZebesExplosion                                     ;8BEB7B;
    dw CinematicSpriteObject_Instruction_PreInstructionY                 ;8BEB7D;
    dw Instruction_CinematicSpriteObject_ZebesExplosion_Stars_Left       ;8BEB7F;

InstList_CinematicSpriteObjects_ExplodingZebes_Stars_Left:
    dw $0010,EndingSequenceSpritemaps_ZebesBoomStarryBackground          ;8BEB81;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEB85;
    dw InstList_CinematicSpriteObjects_ExplodingZebes_Stars_Left         ;8BEB87;

InstList_CinematicSpriteObjects_ExplodingZebes_AfterGlow:
    dw $0010,EndingSequenceSpritemaps_ZebesSupernovaPart4                ;8BEB89;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEB8D;
    dw InstList_CinematicSpriteObjects_ExplodingZebes_AfterGlow          ;8BEB8F;

InstList_CinematicSpriteObjects_TheOperationWas_0:
    dw $0006,EndingSequenceSpritemaps_T                                  ;8BEB91;
    dw $0006,EndingSequenceSpritemaps_TH                                 ;8BEB95;
    dw $000C,EndingSequenceSpritemaps_THE                                ;8BEB99;
    dw $0006,EndingSequenceSpritemaps_THEO                               ;8BEB9D;
    dw $0006,EndingSequenceSpritemaps_THEOP                              ;8BEBA1;
    dw $0006,EndingSequenceSpritemaps_THEOPE                             ;8BEBA5;
    dw $0006,EndingSequenceSpritemaps_THEOPER                            ;8BEBA9;
    dw $0006,EndingSequenceSpritemaps_THEOPERA                           ;8BEBAD;
    dw $0006,EndingSequenceSpritemaps_THEOPERAT                          ;8BEBB1;
    dw $0006,EndingSequenceSpritemaps_THEOPERATI                         ;8BEBB5;
    dw $0006,EndingSequenceSpritemaps_THEOPERATIO                        ;8BEBB9;
    dw $000C,EndingSequenceSpritemaps_THEOPERATION                       ;8BEBBD;
    dw $0006,EndingSequenceSpritemaps_THEOPERATIONW                      ;8BEBC1;
    dw $0006,EndingSequenceSpritemaps_THEOPERATIONWA                     ;8BEBC5;
    dw $000C,EndingSequenceSpritemaps_THEOPERATIONWAS                    ;8BEBC9;
    dw Instruction_CinematicSpriteObject_SpawnCompletedSuccessfully      ;8BEBCD;

InstList_CinematicSpriteObjects_TheOperationWas_1:
    dw $000F,EndingSequenceSpritemaps_THEOPERATIONWAS                    ;8BEBCF;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEBD3;
    dw InstList_CinematicSpriteObjects_TheOperationWas_1                 ;8BEBD5;

InstList_CinematicSpriteObjects_CompletedSuccessfully_0:
    dw $0006,EndingSequenceSpritemaps_C_ompleted                         ;8BEBD7;
    dw $0006,EndingSequenceSpritemaps_CO                                 ;8BEBDB;
    dw $0006,EndingSequenceSpritemaps_COM                                ;8BEBDF;
    dw $0006,EndingSequenceSpritemaps_COMP                               ;8BEBE3;
    dw $0006,EndingSequenceSpritemaps_COMPL                              ;8BEBE7;
    dw $0006,EndingSequenceSpritemaps_COMPLE                             ;8BEBEB;
    dw $0006,EndingSequenceSpritemaps_COMPLET                            ;8BEBEF;
    dw $0006,EndingSequenceSpritemaps_COMPLETE                           ;8BEBF3;
    dw $000C,EndingSequenceSpritemaps_COMPLETED                          ;8BEBF7;
    dw $0006,EndingSequenceSpritemaps_COMPLETEDS                         ;8BEBFB;
    dw $0006,EndingSequenceSpritemaps_COMPLETEDSU                        ;8BEBFF;
    dw $0006,EndingSequenceSpritemaps_COMPLETEDSUC                       ;8BEC03;
    dw $0006,EndingSequenceSpritemaps_COMPLETEDSUCC                      ;8BEC07;
    dw $0006,EndingSequenceSpritemaps_COMPLETEDSUCCE                     ;8BEC0B;
    dw $0006,EndingSequenceSpritemaps_COMPLETEDSUCCES                    ;8BEC0F;
    dw $0006,EndingSequenceSpritemaps_COMPLETEDSUCCESS                   ;8BEC13;
    dw $0006,EndingSequenceSpritemaps_COMPLETEDSUCCESSF                  ;8BEC17;
    dw $0006,EndingSequenceSpritemaps_COMPLETEDSUCCESSFU                 ;8BEC1B;
    dw $0006,EndingSequenceSpritemaps_COMPLETEDSUCCESSFUL                ;8BEC1F;
    dw $0006,EndingSequenceSpritemaps_COMPLETEDSUCCESSFULL               ;8BEC23;
    dw $000C,EndingSequenceSpritemaps_COMPLETEDSUCCESSFULLY              ;8BEC27;
    dw Instruction_CinematicSpriteObject_SpawnClearTime                  ;8BEC2B;

InstList_CinematicSpriteObjects_CompletedSuccessfully_1:
    dw $0008,EndingSequenceSpritemaps_COMPLETEDSUCCESSFULLY              ;8BEC2D;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEC31;
    dw InstList_CinematicSpriteObjects_CompletedSuccessfully_1           ;8BEC33;

InstList_CinematicSpriteObjects_ClearTime_0:
    dw $0006,EndingSequenceSpritemaps_C_lear                             ;8BEC35;
    dw $0006,EndingSequenceSpritemaps_CL                                 ;8BEC39;
    dw $0006,EndingSequenceSpritemaps_CLE                                ;8BEC3D;
    dw $0006,EndingSequenceSpritemaps_CLEA                               ;8BEC41;
    dw $000C,EndingSequenceSpritemaps_CLEAR                              ;8BEC45;
    dw $0006,EndingSequenceSpritemaps_CLEART                             ;8BEC49;
    dw $0006,EndingSequenceSpritemaps_CLEARTI                            ;8BEC4D;
    dw $0006,EndingSequenceSpritemaps_CLEARTIM                           ;8BEC51;
    dw $000C,EndingSequenceSpritemaps_CLEARTIME                          ;8BEC55;
    dw Instruction_CineSpriteObject_SpawnClearTime_Hours_TensDigit       ;8BEC59;
    dw $0006,EndingSequenceSpritemaps_CLEARTIME                          ;8BEC5B;
    dw Instruction_CineSpriteObject_SpawnClearTime_Hours_OnesDigit       ;8BEC5F;
    dw $0006,EndingSequenceSpritemaps_CLEARTIME                          ;8BEC61;
    dw Instruction_CinematicSpriteObject_SpawnClearTime_Colon            ;8BEC65;
    dw $0006,EndingSequenceSpritemaps_CLEARTIME                          ;8BEC67;
    dw Inst_CineSpriteObject_SpawnClearTime_Minutes_TensDigit            ;8BEC6B;
    dw $0006,EndingSequenceSpritemaps_CLEARTIME                          ;8BEC6D;
    dw Inst_CineSpriteObject_SpawnClearTime_Minutes_OnesDigit            ;8BEC71;
    dw $0080,EndingSequenceSpritemaps_CLEARTIME                          ;8BEC73;
    dw Instruction_CinematicSpriteObject_TransitionToCredits             ;8BEC77;

InstList_CinematicSpriteObjects_ClearTime_1:
    dw $000F,EndingSequenceSpritemaps_CLEARTIME                          ;8BEC79;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEC7D;
    dw InstList_CinematicSpriteObjects_ClearTime_1                       ;8BEC7F;

InstList_ClearTimeDigit_0:
    dw $0008,EndingSequenceSpritemaps_0                                  ;8BEC81;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEC85;
    dw InstList_ClearTimeDigit_0                                         ;8BEC87;

InstList_ClearTimeDigit_1:
    dw $0008,EndingSequenceSpritemaps_1                                  ;8BEC89;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEC8D;
    dw InstList_ClearTimeDigit_1                                         ;8BEC8F;

InstList_ClearTimeDigit_2:
    dw $0008,EndingSequenceSpritemaps_2                                  ;8BEC91;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEC95;
    dw InstList_ClearTimeDigit_2                                         ;8BEC97;

InstList_ClearTimeDigit_3:
    dw $0008,EndingSequenceSpritemaps_3                                  ;8BEC99;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEC9D;
    dw InstList_ClearTimeDigit_3                                         ;8BEC9F;

InstList_ClearTimeDigit_4:
    dw $0008,EndingSequenceSpritemaps_4                                  ;8BECA1;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BECA5;
    dw InstList_ClearTimeDigit_4                                         ;8BECA7;

InstList_ClearTimeDigit_5:
    dw $0008,EndingSequenceSpritemaps_5                                  ;8BECA9;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BECAD;
    dw InstList_ClearTimeDigit_5                                         ;8BECAF;

InstList_ClearTimeDigit_6:
    dw $0008,EndingSequenceSpritemaps_6                                  ;8BECB1;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BECB5;
    dw InstList_ClearTimeDigit_6                                         ;8BECB7;

InstList_ClearTimeDigit_7:
    dw $0008,EndingSequenceSpritemaps_7                                  ;8BECB9;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BECBD;
    dw InstList_ClearTimeDigit_7                                         ;8BECBF;

InstList_ClearTimeDigit_8:
    dw $0008,EndingSequenceSpritemaps_8                                  ;8BECC1;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BECC5;
    dw InstList_ClearTimeDigit_8                                         ;8BECC7;

InstList_ClearTimeDigit_9:
    dw $0008,EndingSequenceSpritemaps_9                                  ;8BECC9;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BECCD;
    dw InstList_ClearTimeDigit_9                                         ;8BECCF;

InstList_CinematicSpriteObject_ClearTime_Colon:
    dw $0008,EndingSequenceSpritemaps_Colon                              ;8BECD1;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BECD5;
    dw InstList_CinematicSpriteObject_ClearTime_Colon                    ;8BECD7;

InstList_CinematicSpriteObject_CrittersEscape:
    dw $0001,EndingSequenceSpritemaps_CrittersEscapePodFrame1            ;8BECD9;
    dw $0001,EndingSequenceSpritemaps_CrittersEscapePodFrame2            ;8BECDD;
    dw $0001,EndingSequenceSpritemaps_CrittersEscapePodFrame3            ;8BECE1;
    dw $0001,EndingSequenceSpritemaps_CrittersEscapePodFrame4            ;8BECE5;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BECE9;
    dw InstList_CinematicSpriteObject_CrittersEscape                     ;8BECEB;

InstList_CinematicSpriteObject_YellowClouds_Top_TopHalf:
    dw $0001,EndingSequenceSpritemaps_EndingCutsceneTopCloudsPattern     ;8BECED;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BECF1;
    dw InstList_CinematicSpriteObject_YellowClouds_Top_TopHalf           ;8BECF3;

InstList_CinematicSpriteObject_YellowClouds_Top_BottomHalf:
    dw $0001,EndingSequenceSpritemaps_EndingCutsceneTopCloudsEdge        ;8BECF5;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BECF9;
    dw InstList_CinematicSpriteObject_YellowClouds_Top_BottomHalf        ;8BECFB;

InstList_CinematicSpriteObject_YellowClouds_Bottom_TopHalf:
    dw $0001,EndingSequenceSpritemaps_EndingCutsceneBottomCloudsEdge     ;8BECFD;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BED01;
    dw InstList_CinematicSpriteObject_YellowClouds_Bottom_TopHalf        ;8BED03;

InstList_CineSpriteObject_YellowClouds_Bottom_BottomHalf:
    dw $0001,EndingSequenceSpritemaps_EndingCutsceneBottomCloudsPattern  ;8BED05;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BED09;
    dw InstList_CineSpriteObject_YellowClouds_Bottom_BottomHalf          ;8BED0B;

InstList_CinematicSpriteObject_YellowClouds_Right:
    dw $0001,EndingSequenceSpritemaps_EndingCutsceneRightClouds          ;8BED0D;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BED11;
    dw InstList_CinematicSpriteObject_YellowClouds_Right                 ;8BED13;

InstList_CinematicSpriteObject_YellowClouds_Left:
    dw $0001,EndingSequenceSpritemaps_EndingCutsceneLeftClouds           ;8BED15;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BED19;
    dw InstList_CinematicSpriteObject_YellowClouds_Left                  ;8BED1B;

InstList_CinematicSpriteObject_SuitlessSamus_Idle:
    dw $0080,EndingSequenceSpritemaps_SuitlessSamusStandingArmsStraight  ;8BED1D;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BED21;
    dw InstList_CinematicSpriteObject_SuitlessSamus_Idle                 ;8BED23;

InstList_CinematicSpriteObject_SuitlessSamus_Idle_Legs:
    dw $0080,EndingSequenceSpritemaps_SuitlessSamusLowerBody             ;8BED25;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BED29;
    dw InstList_CinematicSpriteObject_SuitlessSamus_Idle_Legs            ;8BED2B;

InstList_CinematicSpriteObject_SuitlessSamus_LettingHairDown:
    dw $0048,EndingSequenceSpritemaps_SuitlessSamusStandingArmsStraight  ;8BED2D;
    dw $0006,EndingSequenceSpritemaps_SuitlessSamusOpeningHairFrame1     ;8BED31;
    dw $0008,EndingSequenceSpritemaps_SuitlessSamusOpeningHairFrame2     ;8BED35;
    dw $0008,EndingSequenceSpritemaps_SuitlessSamusOpeningHairFrame3     ;8BED39;
    dw $0019,EndingSequenceSpritemaps_SuitlessSamusOpeningHairFrame4     ;8BED3D;
    dw $0008,EndingSequenceSpritemaps_SuitlessSamusOpeningHairFrame5     ;8BED41;
    dw $0007,EndingSequenceSpritemaps_SuitlessSamusOpeningHairFrame6     ;8BED45;
    dw $000C,EndingSequenceSpritemaps_SuitlessSamusOpeningHairFrame7     ;8BED49;
    dw $0008,EndingSequenceSpritemaps_SuitlessSamusOpeningHairFrame8     ;8BED4D;
    dw $0026,EndingSequenceSpritemaps_SuitlessSamusStanding              ;8BED51;
    dw Instruction_CinematicSpriteObject_SpawnSuitlessSamusJump          ;8BED55;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BED57;

InstList_CineSpriteObject_SuitlessSamus_LettingHairDown_Legs:
    dw $0048,EndingSequenceSpritemaps_SuitlessSamusLowerBody             ;8BED59;
    dw $0006,EndingSequenceSpritemaps_SuitlessSamusLowerBody             ;8BED5D;
    dw $0008,EndingSequenceSpritemaps_SuitlessSamusLowerBody             ;8BED61;
    dw $0008,EndingSequenceSpritemaps_SuitlessSamusLowerBody             ;8BED65;
    dw $0019,EndingSequenceSpritemaps_SuitlessSamusLowerBody             ;8BED69;
    dw $0008,EndingSequenceSpritemaps_SuitlessSamusLowerBody             ;8BED6D;
    dw $0007,EndingSequenceSpritemaps_SuitlessSamusLowerBody             ;8BED71;
    dw $000C,EndingSequenceSpritemaps_SuitlessSamusLowerBody             ;8BED75;
    dw $0008,EndingSequenceSpritemaps_SuitlessSamusLowerBody             ;8BED79;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BED7D;

InstList_CinematicSpriteObject_SuitlessSamus_Jump_0:
    dw $0026,EndingSequenceSpritemaps_SuitlessSamusStanding              ;8BED7F;
    dw $0008,EndingSequenceSpritemaps_SuitlessSamusPreparingToJump       ;8BED83;
    dw Instruction_CinematicSpriteObject_MakeEndingSamusJump             ;8BED87;
    dw CinematicSpriteObject_Instruction_PreInstructionY                 ;8BED89;
    dw Inst_CineSpriteObject_SpawnSuitlessSamus_LettingHairDown          ;8BED8B;

InstList_CinematicSpriteObject_SuitlessSamus_Jump_1:
    dw $0030,EndingSequenceSpritemaps_SuitlessSamusJumping               ;8BED8D;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BED91;
    dw InstList_CinematicSpriteObject_SuitlessSamus_Jump_1               ;8BED93;

InstList_Samus_Jump_Falling:
    dw $000A,EndingSequenceSpritemaps_SamusFalling                       ;8BED95;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BED99;
    dw InstList_Samus_Jump_Falling                                       ;8BED9B;

InstList_Samus_Jump_Landed:
    dw $0008,EndingSequenceSpritemaps_SamusLanding                       ;8BED9D;
    dw $000C,EndingSequenceSpritemaps_SamusLanded                        ;8BEDA1;
    dw $0026,EndingSequenceSpritemaps_SamusShooting                      ;8BEDA5;
    dw Instruction_CinematicSpriteObject_SamusShootsScreen               ;8BEDA9;
    dw $0066,EndingSequenceSpritemaps_SamusShooting                      ;8BEDAB;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BEDAF;

InstList_CinematicSpriteObject_SuitedSamus_Idle_Body:
    dw $000A,EndingSequenceSpritemaps_LargeSamusFromEndingStanding       ;8BEDB1;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEDB5;
    dw InstList_CinematicSpriteObject_SuitedSamus_Idle_Body              ;8BEDB7;

InstList_CinematicSpriteObject_SuitedSamus_Idle_Head_Helmet:
    dw $000A,EndingSequenceSpritemaps_SamusHeadWithHelmetFromEnding      ;8BEDB9;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEDBD;
    dw InstList_CinematicSpriteObject_SuitedSamus_Idle_Head_Helmet       ;8BEDBF;

InstList_CinematicSpriteObject_SuitedSamus_Head:
    dw $000A,EndingSequenceSpritemaps_SamusHeadFromEndingFrame1          ;8BEDC1;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEDC5;
    dw InstList_CinematicSpriteObject_SuitedSamus_Head                   ;8BEDC7;

InstList_CinematicSpriteObject_SuitedSamus_ThumbsUp_Body:
    dw $0033,EndingSequenceSpritemaps_LargeSamusFromEndingStanding       ;8BEDC9;
    dw $00D0,EndingSequenceSpritemaps_HeadlessArmlessSuitedSamus         ;8BEDCD;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BEDD1;

InstList_CinematicSpriteObject_SuitedSamus_ThumbsUp_Arm:
    dw $0033,$0000                                                       ;8BEDD3;
    dw $0006,EndingSequenceSpritemaps_SamusArmFromEndingFrame1           ;8BEDD7;
    dw $0006,EndingSequenceSpritemaps_SamusArmFromEndingFrame2           ;8BEDDB;
    dw $0004,EndingSequenceSpritemaps_SamusArmFromEndingFrame3           ;8BEDDF;
    dw $0003,EndingSequenceSpritemaps_SamusArmFromEndingFrame4           ;8BEDE3;
    dw $0002,EndingSequenceSpritemaps_SamusArmFromEndingFrame5           ;8BEDE7;
    dw $0019,EndingSequenceSpritemaps_SamusArmFromEndingFrame6           ;8BEDEB;
    dw $0006,EndingSequenceSpritemaps_SamusArmFromEndingFrame7           ;8BEDEF;
    dw $0033,EndingSequenceSpritemaps_SamusArmFromEndingFrame8           ;8BEDF3;
    dw $0004,EndingSequenceSpritemaps_SamusArmFromEndingFrame6           ;8BEDF7;
    dw $0004,EndingSequenceSpritemaps_SamusArmFromEndingFrame5           ;8BEDFB;
    dw $0004,EndingSequenceSpritemaps_SamusArmFromEndingFrame4           ;8BEDFF;
    dw $0004,EndingSequenceSpritemaps_SamusArmFromEndingFrame3           ;8BEE03;
    dw $0059,EndingSequenceSpritemaps_SamusArmFromEndingFrame2           ;8BEE07;
    dw Instruction_CinematicSpriteObject_SpawnSuitedSamusJump            ;8BEE0B;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BEE0D;

InstList_CineSpriteObject_SuitedSamus_ThumbsUp_Head_Helmet:
    dw $0103,EndingSequenceSpritemaps_SamusHeadWithHelmetFromEnding      ;8BEE0F;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BEE13;

InstList_CinematicSpriteObject_SuitedSamus_ThumbsUp_Head:
    dw $0066,EndingSequenceSpritemaps_SamusHeadFromEndingFrame1          ;8BEE15;
    dw $0004,EndingSequenceSpritemaps_SamusHeadFromEndingFrame2          ;8BEE19;
    dw $0004,EndingSequenceSpritemaps_SamusHeadFromEndingFrame3          ;8BEE1D;
    dw $0095,EndingSequenceSpritemaps_SamusHeadFromEndingFrame4          ;8BEE21;
    dw CinematicSpriteObject_Instruction_Delete                          ;8BEE25;

InstList_CinematicSpriteObject_SuitedSamus_Jump_Body_0:
    dw Instruction_CineSpriteObject_PositionSuitedHeadToPrepareJump      ;8BEE27;
    dw $0008,EndingSequenceSpritemaps_LargeSamusFromEndingPreparingToJump ;8BEE29;
    dw Instruction_CinematicSpriteObject_PositionSamusHeadToJump         ;8BEE2D;
    dw Instruction_CinematicSpriteObject_MakeEndingSamusJump             ;8BEE2F;
    dw CinematicSpriteObject_Instruction_PreInstructionY                 ;8BEE31;
    dw Inst_CineSpriteObject_SpawnSuitlessSamus_LettingHairDown          ;8BEE33;

InstList_CinematicSpriteObject_SuitedSamus_Jump_Body_1:
    dw $0005,EndingSequenceSpritemaps_LargeSamusFromEndingJumping        ;8BEE35;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEE39;
    dw InstList_CinematicSpriteObject_SuitedSamus_Jump_Body_1            ;8BEE3B;

InstList_CineSpriteObject_SuitedSamus_Jump_Head_Helmet_0:
    dw $0008,EndingSequenceSpritemaps_LargeSamusHelmetFromEndingFrame1   ;8BEE3D;
    dw CinematicSpriteObject_Instruction_PreInstructionY                 ;8BEE41;
    dw PreInst_CinematicSpriteObject_SuitedSamus_Jump_Head_Jumping       ;8BEE43;

InstList_CineSpriteObject_SuitedSamus_Jump_Head_Helmet_1:
    dw $0005,EndingSequenceSpritemaps_LargeSamusHelmetFromEndingFrame2   ;8BEE45;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEE49;
    dw InstList_CineSpriteObject_SuitedSamus_Jump_Head_Helmet_1          ;8BEE4B;

InstList_CinematicSpriteObject_SuitedSamus_Jump_Head_0:
    dw $0008,EndingSequenceSpritemaps_JumpingSamusHeadFromEnding         ;8BEE4D;
    dw CinematicSpriteObject_Instruction_PreInstructionY                 ;8BEE51;
    dw PreInst_CinematicSpriteObject_SuitedSamus_Jump_Head_Jumping       ;8BEE53;

InstList_CinematicSpriteObject_SuitedSamus_Jump_Head_1:
    dw $0005,EndingSequenceSpritemaps_JumpingSamusHeadFromEnding         ;8BEE55;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEE59;
    dw InstList_CinematicSpriteObject_SuitedSamus_Jump_Head_1            ;8BEE5B;

InstList_CinematicSpriteObject_SuperMetroidIcon_S_TopHalf:
    dw $000A,EndingSequenceSpritemaps_ScrewAttackSymbolUpperPart         ;8BEE5D;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEE61;
    dw InstList_CinematicSpriteObject_SuperMetroidIcon_S_TopHalf         ;8BEE63;

InstList_CinematicSpriteObject_SuperMetroidIcon_S_BottomHalf:
    dw $000A,EndingSequenceSpritemaps_ScrewAttackSymbolLowerPart         ;8BEE65;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEE69;
    dw InstList_CinematicSpriteObject_SuperMetroidIcon_S_BottomHalf      ;8BEE6B;

InstList_CineSpriteObject_SuperMetroidIcon_Circle_TopHalf_0:
    dw $004C,$0000                                                       ;8BEE6D;
    dw $0004,EndingSequenceSpritemaps_ScrewAttackSymbolRightWrapFrame1   ;8BEE71;
    dw $0004,EndingSequenceSpritemaps_ScrewAttackSymbolRightWrapFrame2   ;8BEE75;
    dw $0033,EndingSequenceSpritemaps_ScrewAttackSymbolRightWrapFrame3   ;8BEE79;
    dw Instruction_GreyOutSuperMetroidIcon                               ;8BEE7D;

InstList_CineSpriteObject_SuperMetroidIcon_Circle_TopHalf_1:
    dw $0005,EndingSequenceSpritemaps_ScrewAttackSymbolRightWrapFrame3   ;8BEE7F;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEE83;
    dw InstList_CineSpriteObject_SuperMetroidIcon_Circle_TopHalf_1       ;8BEE85;

InstList_CineSpriteObject_SuperMetroidIcon_Circle_BotHalf_0:
    dw $004C,$0000                                                       ;8BEE87;
    dw $0004,EndingSequenceSpritemaps_ScrewAttackSymbolLeftWrapFrame1    ;8BEE8B;
    dw $0004,EndingSequenceSpritemaps_ScrewAttackSymbolLeftWrapFrame2    ;8BEE8F;

InstList_CineSpriteObject_SuperMetroidIcon_Circle_BotHalf_1:
    dw $0004,EndingSequenceSpritemaps_ScrewAttackSymbolLeftWrapFrame3    ;8BEE93;
    dw CinematicSpriteObject_Instruction_GotoY                           ;8BEE97;
    dw InstList_CineSpriteObject_SuperMetroidIcon_Circle_BotHalf_1       ;8BEE99;

InstList_CinematicSpriteObject_Delete_duplicate:
    dw CinematicSpriteObject_Instruction_Delete                          ;8BEE9B;

CinematicSpriteObjectDefinitions_ExplodingZebes_Zebes:
    dw InitFunction_CinematicSpriteObject_ExplodingZebes_Palette7        ;8BEE9D;
    dw RTS_8B93D9                                                        ;8BEE9F;
    dw InstList_CinematicSpriteObjects_ExplodingZebes_Zebes_0            ;8BEEA1;

CinematicSpriteObjectDefinitions_ExplodingZebes_PurpleGlow:
    dw InitFunction_CinematicSpriteObject_ExplodingZebes_Palette7        ;8BEEA3;
    dw PreInst_CineSpriteObj_ExplodingZebes_PurpleGlow_Stars_Lava        ;8BEEA5;
    dw InstList_CinematicSpriteObjects_ExplodingZebes_PurpleGlow         ;8BEEA7;

CinematicSpriteObjectDefinitions_ExplodingZebes_Stars:
    dw InitFunction_CinematicSpriteObject_ExplodingZebes_Palette7        ;8BEEA9;
    dw PreInst_CineSpriteObj_ExplodingZebes_PurpleGlow_Stars_Lava        ;8BEEAB;
    dw InstList_CinematicSpriteObjects_ExplodingZebes_Stars              ;8BEEAD;

CinematicSpriteObjectDefinitions_ExplodingZebes_Lava:
    dw InitFunction_CinematicSpriteObject_ExplodingZebes_Palette5        ;8BEEAF;
    dw PreInst_CineSpriteObj_ExplodingZebes_PurpleGlow_Stars_Lava        ;8BEEB1;
    dw InstList_CinematicSpriteObjects_ExplodingZebes_Lava_0             ;8BEEB3;

CinematicSpriteObjectDefinitions_ZebesExplosion_Silhouette:
    dw InitFunction_CinematicSpriteObject_ExplodingZebes_Palette5        ;8BEEB5;
    dw RTS_8B93D9                                                        ;8BEEB7;
    dw InstList_CinematicSpriteObjects_ExplodingZebes_Silhouette         ;8BEEB9;

CinematicSpriteObjectDefinitions_ZebesExplosion_Stars_Right:
    dw InitFunction_CinematicSpriteObject_ExplodingZebes_Palette7        ;8BEEBB;
    dw RTS_8B93D9                                                        ;8BEEBD;
    dw InstList_CinematicSpriteObjects_ExplodingZebes_Stars_Right        ;8BEEBF;

CinematicSpriteObjectDefinitions_ZebesExplosion_AfterGlow:
    dw InitFunction_CinematicSpriteObject_ZebesExplosion_AfterGlow       ;8BEEC1;
    dw PreInstruction_CineSpriteObject_ZebesExplosion_AfterGlow          ;8BEEC3;
    dw InstList_CinematicSpriteObjects_ExplodingZebes_AfterGlow          ;8BEEC5;

CinematicSpriteObjectDefinitions_TheOperationWas:
    dw InitFunc_CineSpriteObj_TheOperationWasCompletedSuccessfully       ;8BEEC7;
    dw PreInstruction_CinematicSpriteObject_Text                         ;8BEEC9;
    dw InstList_CinematicSpriteObjects_TheOperationWas_0                 ;8BEECB;

CinematicSpriteObjectDefinitions_CompletedSuccessfully:
    dw InitFunc_CineSpriteObj_TheOperationWasCompletedSuccessfully       ;8BEECD;
    dw PreInstruction_CinematicSpriteObject_Text                         ;8BEECF;
    dw InstList_CinematicSpriteObjects_CompletedSuccessfully_0           ;8BEED1;

CinematicSpriteObjectDefinitions_YellowClouds_Top_TopHalf:
    dw InitFunction_CinematicSpriteObject_YellowClouds_Top_TopHalf       ;8BEED3;
    dw PreInstruction_CinematicSpriteObject_YellowClouds_Top             ;8BEED5;
    dw InstList_CinematicSpriteObject_YellowClouds_Top_TopHalf           ;8BEED7;

CinematicSpriteObjectDefinitions_Top_BottomHalf:
    dw InitFunction_CineSpriteObject_YellowClouds_Top_BottomHalf         ;8BEED9;
    dw PreInstruction_CinematicSpriteObject_YellowClouds_Top             ;8BEEDB;
    dw InstList_CinematicSpriteObject_YellowClouds_Top_BottomHalf        ;8BEEDD;

CinematicSpriteObjectDefinitions_Bottom_TopHalf:
    dw InitFunction_CineSpriteObject_YellowClouds_Bottom_TopHalf         ;8BEEDF;
    dw PreInstruction_CinematicSpriteObject_YellowClouds_Bottom          ;8BEEE1;
    dw InstList_CinematicSpriteObject_YellowClouds_Bottom_TopHalf        ;8BEEE3;

CinematicSpriteObjectDefinitions_Bottom_BottomHalf:
    dw InitFunction_CineSpriteObject_YellowClouds_Bottom_BottomHalf      ;8BEEE5;
    dw PreInstruction_CinematicSpriteObject_YellowClouds_Bottom          ;8BEEE7;
    dw InstList_CineSpriteObject_YellowClouds_Bottom_BottomHalf          ;8BEEE9;

CinematicSpriteObjectDefinitions_Right:
    dw InitFunction_CinematicSpriteObject_YellowClouds_Right             ;8BEEEB;
    dw PreInstruction_CinematicSpriteObject_YellowClouds_Right           ;8BEEED;
    dw InstList_CinematicSpriteObject_YellowClouds_Right                 ;8BEEEF;

CinematicSpriteObjectDefinitions_Left:
    dw InitFunction_CinematicSpriteObject_YellowClouds_Left              ;8BEEF1;
    dw PreInstruction_CinematicSpriteObject_YellowClouds_Left            ;8BEEF3;
    dw InstList_CinematicSpriteObject_YellowClouds_Left                  ;8BEEF5;

CinematicSpriteObjectDefinitions_ZebesExplosion_Stars_Left:
    dw InitFunction_CinematicSpriteObject_ZebesExplosion_Stars_Left      ;8BEEF7;
    dw Instruction_CinematicSpriteObject_ZebesExplosion_Stars_Left       ;8BEEF9;
    dw InstList_CinematicSpriteObjects_ExplodingZebes_Stars_Left         ;8BEEFB;

CinematicSpriteObjectDefinitions_ClearTime:
    dw InitFunction_CinematicSpriteObject_ClearTime                      ;8BEEFD;
    dw PreInstruction_CinematicSpriteObject_Text                         ;8BEEFF;
    dw InstList_CinematicSpriteObjects_ClearTime_0                       ;8BEF01;

CinematicSpriteObjectDefinitions_ClearTime_Hours_TensDigit:
    dw InitFunction_CinematicSpriteObject_ClearTime_Hours_TensDigit      ;8BEF03;
    dw PreInstruction_CinematicSpriteObject_Text                         ;8BEF05;
    dw InstList_ClearTimeDigit_0                                         ;8BEF07;

CinematicSpriteObjectDefinitions_ClearTime_Hours_OnesDigit:
    dw InitFunction_CinematicSpriteObject_ClearTime_Hours_OnesDigit      ;8BEF09;
    dw PreInstruction_CinematicSpriteObject_Text                         ;8BEF0B;
    dw InstList_ClearTimeDigit_0                                         ;8BEF0D;

CinematicSpriteObjectDefinitions_ClearTime_Colon:
    dw InitFunction_CinematicSpriteObject_ClearTime_Colon                ;8BEF0F;
    dw PreInstruction_CinematicSpriteObject_Text                         ;8BEF11;
    dw InstList_CinematicSpriteObject_ClearTime_Colon                    ;8BEF13;

CinematicSpriteObjectDefinitions_ClearTime_Minutes_TensDigit:
    dw InitFunction_CineSpriteObject_ClearTime_Minutes_TensDigit         ;8BEF15;
    dw PreInstruction_CinematicSpriteObject_Text                         ;8BEF17;
    dw InstList_ClearTimeDigit_0                                         ;8BEF19;

CinematicSpriteObjectDefinitions_ClearTime_Minutes_OnesDigit:
    dw InitFunction_CineSpriteObject_ClearTime_Minutes_OnesDigit         ;8BEF1B;
    dw PreInstruction_CinematicSpriteObject_Text                         ;8BEF1D;
    dw InstList_ClearTimeDigit_0                                         ;8BEF1F;

CinematicSpriteObjectDefinitions_CrittersEscape:
    dw InitFunction_CinematicSpriteObject_CrittersEscape                 ;8BEF21;
    dw PreInstruction_CinematicSpriteObject_CrittersEscape               ;8BEF23;
    dw InstList_CinematicSpriteObject_CrittersEscape                     ;8BEF25;

CinematicSpriteObjectDefinitions_SuitlessSamus_Idle:
    dw InitFunction_CinematicSpriteObject_SuitlessSamus                  ;8BEF27;
    dw PreInstruction_CinematicSpriteObject_Samus_Idle                   ;8BEF29;
    dw InstList_CinematicSpriteObject_SuitlessSamus_Idle                 ;8BEF2B;

CinematicSpriteObjectDefinitions_SuitlessSamus_Idle_Legs:
    dw InitFunction_CinematicSpriteObject_SuitlessSamus                  ;8BEF2D;
    dw PreInstruction_CinematicSpriteObject_Samus_Idle                   ;8BEF2F;
    dw InstList_CinematicSpriteObject_SuitlessSamus_Idle_Legs            ;8BEF31;

CinematicSpriteObjectDefs_SuitlessSamus_LettingHairDown:
    dw InitFunction_CinematicSpriteObject_SuitlessSamus                  ;8BEF33;
    dw RTS_8BF51C                                                        ;8BEF35;
    dw InstList_CinematicSpriteObject_SuitlessSamus_LettingHairDown      ;8BEF37;

CinematicSpriteObjectDefs_SuitlessSamus_LettingHairDown_Legs:
    dw InitFunction_CinematicSpriteObject_SuitlessSamus                  ;8BEF39;
    dw RTS_8B93D9                                                        ;8BEF3B;
    dw InstList_CineSpriteObject_SuitlessSamus_LettingHairDown_Legs      ;8BEF3D;

CinematicSpriteObjectDefinitions_SuitlessSamus_Jump:
    dw InitFunction_CinematicSpriteObject_SuitlessSamus                  ;8BEF3F;
    dw RTS_8B93D9                                                        ;8BEF41;
    dw InstList_CinematicSpriteObject_SuitlessSamus_Jump_0               ;8BEF43;

CinematicSpriteObjectDefinitions_SuitedSamus_Idle_Body:
    dw InitFunction_CinematicSpriteObject_SuitedSamus_Body_Arm           ;8BEF45;
    dw PreInstruction_CinematicSpriteObject_Samus_Idle                   ;8BEF47;
    dw InstList_CinematicSpriteObject_SuitedSamus_Idle_Body              ;8BEF49;

CinematicSpriteObjectDefs_SuitedSamus_Idle_Head_Helmet:
    dw InitFunction_CinematicSpriteObject_SuitedSamus_Head_Helmet        ;8BEF4B;
    dw PreInstruction_CinematicSpriteObject_Samus_Idle                   ;8BEF4D;
    dw InstList_CinematicSpriteObject_SuitedSamus_Idle_Head_Helmet       ;8BEF4F;

CinematicSpriteObjectDefinitions_SuitedSamus_Idle_Head:
    dw InitFunction_CinematicSpriteObject_SuitedSamus_Head               ;8BEF51;
    dw PreInstruction_CinematicSpriteObject_Samus_Idle                   ;8BEF53;
    dw InstList_CinematicSpriteObject_SuitedSamus_Head                   ;8BEF55;

CinematicSpriteObjectDefinitions_ThumbsUp_Body:
    dw InitFunction_CinematicSpriteObject_SuitedSamus_Body_Arm           ;8BEF57;
    dw RTS_8B93D9                                                        ;8BEF59;
    dw InstList_CinematicSpriteObject_SuitedSamus_ThumbsUp_Body          ;8BEF5B;

CinematicSpriteObjectDefinitions_ThumbsUp_Arm:
    dw InitFunction_CinematicSpriteObject_SuitedSamus_Body_Arm           ;8BEF5D;
    dw RTS_8B93D9                                                        ;8BEF5F;
    dw InstList_CinematicSpriteObject_SuitedSamus_ThumbsUp_Arm           ;8BEF61;

CinematicSpriteObjectDefinitions_ThumbsUp_Head_Helmet:
    dw InitFunction_CinematicSpriteObject_SuitedSamus_Head_Helmet        ;8BEF63;
    dw RTS_8B93D9                                                        ;8BEF65;
    dw InstList_CineSpriteObject_SuitedSamus_ThumbsUp_Head_Helmet        ;8BEF67;

CinematicSpriteObjectDefinitions_ThumbsUp_Head:
    dw InitFunction_CinematicSpriteObject_SuitedSamus_Head               ;8BEF69;
    dw RTS_8B93D9                                                        ;8BEF6B;
    dw InstList_CinematicSpriteObject_SuitedSamus_ThumbsUp_Head          ;8BEF6D;

CinematicSpriteObjectDefinitions_Jump_Body:
    dw InitFunction_CinematicSpriteObject_SuitedSamus_Body_Arm           ;8BEF6F;
    dw RTS_8B93D9                                                        ;8BEF71;
    dw InstList_CinematicSpriteObject_SuitedSamus_Jump_Body_0            ;8BEF73;

CinematicSpriteObjectDefinitions_Jump_Head_Helmet:
    dw InitFunction_CinematicSpriteObject_SuitedSamus_Head_Helmet        ;8BEF75;
    dw RTS_8B93D9                                                        ;8BEF77;
    dw InstList_CineSpriteObject_SuitedSamus_Jump_Head_Helmet_0          ;8BEF79;

CinematicSpriteObjectDefinitions_Jump_Head:
    dw InitFunction_CinematicSpriteObject_SuitedSamus_Head               ;8BEF7B;
    dw RTS_8B93D9                                                        ;8BEF7D;
    dw InstList_CinematicSpriteObject_SuitedSamus_Jump_Head_0            ;8BEF7F;

CinematicSpriteObjectDefinitions_SuperMetroidIcon_S_TopHalf:
    dw InitFunction_CineSpriteObject_SuperMetroidIcon_S_TopHalf          ;8BEF81;
    dw PreInstruction_CineSpriteObject_SuperMetroidIcon_S_TopHalf        ;8BEF83;
    dw InstList_CinematicSpriteObject_SuperMetroidIcon_S_TopHalf         ;8BEF85;

CinematicSpriteObjectDefs_SuperMetroidIcon_S_BottomHalf:
    dw InitFunction_CineSpriteObject_SuperMetroidIcon_S_BottomHalf       ;8BEF87;
    dw Instruction_CineSpriteObject_SuperMetroidIcon_S_BottomHalf        ;8BEF89;
    dw InstList_CinematicSpriteObject_SuperMetroidIcon_S_BottomHalf      ;8BEF8B;

CinematicSpriteObjectDefs_SuperMetroidIcon_Circle_TopHalf:
    dw InitFunc_CineSpriteObject_SuperMetroidIcon_Circle_TopHalf         ;8BEF8D;
    dw RTS_8B93D9                                                        ;8BEF8F;
    dw InstList_CineSpriteObject_SuperMetroidIcon_Circle_TopHalf_0       ;8BEF91;

CinematicSpriteObjectDefs_SuperMetroidIcon_Circle_BottomHalf:
    dw InitFunc_CineSpriteObject_SuperMetroidIcon_Circle_BottomHalf      ;8BEF93;
    dw RTS_8B93D9                                                        ;8BEF95;
    dw InstList_CineSpriteObject_SuperMetroidIcon_Circle_BotHalf_0       ;8BEF97;

InitFunction_CinematicSpriteObject_CrittersEscape:
    LDA.W #$0080                                                         ;8BEF99;
    STA.W $1A9D,Y                                                        ;8BEF9C;
    LDA.W #$0080                                                         ;8BEF9F;
    STA.W $1A7D,Y                                                        ;8BEFA2;
    LDA.W #$0E00                                                         ;8BEFA5;
    STA.W $1ABD,Y                                                        ;8BEFA8;
    LDA.W #$0104                                                         ;8BEFAB;
    STA.W $1B7D,Y                                                        ;8BEFAE;
    RTS                                                                  ;8BEFB1;


PreInstruction_CinematicSpriteObject_CrittersEscape:
    LDA.W $1AFD,X                                                        ;8BEFB2;
    CLC                                                                  ;8BEFB5;
    ADC.W #$0080                                                         ;8BEFB6;
    STA.W $1AFD,X                                                        ;8BEFB9;
    LDA.W $1A9D,X                                                        ;8BEFBC;
    ADC.W #$0000                                                         ;8BEFBF;
    STA.W $1A9D,X                                                        ;8BEFC2;
    LDA.W $1ADD,X                                                        ;8BEFC5;
    CLC                                                                  ;8BEFC8;
    ADC.W #$0000                                                         ;8BEFC9;
    STA.W $1ADD,X                                                        ;8BEFCC;
    LDA.W $1A7D,X                                                        ;8BEFCF;
    ADC.W #$0001                                                         ;8BEFD2;
    STA.W $1A7D,X                                                        ;8BEFD5;
    CMP.W #$0110                                                         ;8BEFD8;
    BMI .return                                                          ;8BEFDB;
    LDA.W #$0001                                                         ;8BEFDD;
    STA.W $1B5D,X                                                        ;8BEFE0;
    LDA.W #InstList_CinematicSpriteObject_Delete_duplicate               ;8BEFE3;
    STA.W $1B1D,X                                                        ;8BEFE6;

.return:
    RTS                                                                  ;8BEFE9;


InitFunction_CinematicSpriteObject_ExplodingZebes_Palette7:
    LDA.W #$0080                                                         ;8BEFEA;
    STA.W $1A7D,Y                                                        ;8BEFED;

CommonInit_ExplodingZebes_Palette7:
    LDA.W #$0080                                                         ;8BEFF0;
    STA.W $1A9D,Y                                                        ;8BEFF3;
    LDA.W #$0E00                                                         ;8BEFF6;
    STA.W $1ABD,Y                                                        ;8BEFF9;
    RTS                                                                  ;8BEFFC;


InitFunction_CinematicSpriteObject_ZebesExplosion_Stars_Left:
    LDA.W #$FF80                                                         ;8BEFFD;
    STA.W $1A7D,Y                                                        ;8BF000;
    BRA CommonInit_ExplodingZebes_Palette7                               ;8BF003;


InitFunction_CinematicSpriteObject_ExplodingZebes_Palette5:
    LDA.W #$0080                                                         ;8BF005;
    STA.W $1A7D,Y                                                        ;8BF008;
    LDA.W #$0080                                                         ;8BF00B;
    STA.W $1A9D,Y                                                        ;8BF00E;
    LDA.W #$0A00                                                         ;8BF011;
    STA.W $1ABD,Y                                                        ;8BF014;
    RTS                                                                  ;8BF017;


InitFunction_CinematicSpriteObject_ZebesExplosion_AfterGlow:
    LDA.W #$0080                                                         ;8BF018;
    STA.W $1A7D,Y                                                        ;8BF01B;
    LDA.W #$0080                                                         ;8BF01E;
    STA.W $1A9D,Y                                                        ;8BF021;
    LDA.W #$0C00                                                         ;8BF024;
    STA.W $1ABD,Y                                                        ;8BF027;
    RTS                                                                  ;8BF02A;


InitFunc_CineSpriteObj_TheOperationWasCompletedSuccessfully:
    LDA.W #$0080                                                         ;8BF02B;
    STA.W $1A7D,Y                                                        ;8BF02E;
    LDA.W #$0060                                                         ;8BF031;
    STA.W $1A9D,Y                                                        ;8BF034;
    LDA.W #$0400                                                         ;8BF037;
    STA.W $1ABD,Y                                                        ;8BF03A;
    RTS                                                                  ;8BF03D;


InitFunction_CinematicSpriteObject_ClearTime:
    LDA.W #$0080                                                         ;8BF03E;
    STA.W $1A7D,Y                                                        ;8BF041;
    LDA.W #$00A0                                                         ;8BF044;
    STA.W $1A9D,Y                                                        ;8BF047;
    LDA.W #$0200                                                         ;8BF04A;
    STA.W $1ABD,Y                                                        ;8BF04D;
    RTS                                                                  ;8BF050;


CommonInit_ClearTime:
    LDA.W #$00A0                                                         ;8BF051;
    STA.W $1A9D,Y                                                        ;8BF054;
    LDA.W #$0000                                                         ;8BF057;
    STA.W $1ABD,Y                                                        ;8BF05A;
    RTS                                                                  ;8BF05D;


InitFunction_CinematicSpriteObject_ClearTime_Hours_TensDigit:
    LDA.W $0DEC                                                          ;8BF05E;
    JSR.W CinematicSpriteObject_InstListPointer_PlusA_Times8             ;8BF061;
    LDA.W #$009C                                                         ;8BF064;
    STA.W $1A7D,Y                                                        ;8BF067;
    JMP.W CommonInit_ClearTime                                           ;8BF06A;


InitFunction_CinematicSpriteObject_ClearTime_Hours_OnesDigit:
    LDA.W $0DEE                                                          ;8BF06D;
    JSR.W CinematicSpriteObject_InstListPointer_PlusA_Times8             ;8BF070;
    LDA.W #$00A4                                                         ;8BF073;
    STA.W $1A7D,Y                                                        ;8BF076;
    JMP.W CommonInit_ClearTime                                           ;8BF079;


InitFunction_CinematicSpriteObject_ClearTime_Colon:
    LDA.W #$00AC                                                         ;8BF07C;
    STA.W $1A7D,Y                                                        ;8BF07F;
    JMP.W CommonInit_ClearTime                                           ;8BF082;


InitFunction_CineSpriteObject_ClearTime_Minutes_TensDigit:
    LDA.W $0DF0                                                          ;8BF085;
    JSR.W CinematicSpriteObject_InstListPointer_PlusA_Times8             ;8BF088;
    LDA.W #$00B4                                                         ;8BF08B;
    STA.W $1A7D,Y                                                        ;8BF08E;
    JMP.W CommonInit_ClearTime                                           ;8BF091;


InitFunction_CineSpriteObject_ClearTime_Minutes_OnesDigit:
    LDA.W $0DF2                                                          ;8BF094;
    JSR.W CinematicSpriteObject_InstListPointer_PlusA_Times8             ;8BF097;
    LDA.W #$00BC                                                         ;8BF09A;
    STA.W $1A7D,Y                                                        ;8BF09D;
    JMP.W CommonInit_ClearTime                                           ;8BF0A0;


CinematicSpriteObject_InstListPointer_PlusA_Times8:
    ASL A                                                                ;8BF0A3;
    ASL A                                                                ;8BF0A4;
    ASL A                                                                ;8BF0A5;
    STA.B $12                                                            ;8BF0A6;
    LDA.W $1B1D,Y                                                        ;8BF0A8;
    CLC                                                                  ;8BF0AB;
    ADC.B $12                                                            ;8BF0AC;
    STA.W $1B1D,Y                                                        ;8BF0AE;
    RTS                                                                  ;8BF0B1;


InitFunction_CinematicSpriteObject_YellowClouds_Top_TopHalf:
    LDA.W #$FFA0                                                         ;8BF0B2;
    STA.W $1A9D,Y                                                        ;8BF0B5;

CommonInit_YellowClouds_TopBottom:
    LDA.W $1B9D                                                          ;8BF0B8;
    BEQ .noInitParam                                                     ;8BF0BB;
    LDA.W #$0180                                                         ;8BF0BD;
    STA.W $1A7D,Y                                                        ;8BF0C0;
    LDA.W #$0A00                                                         ;8BF0C3;
    STA.W $1ABD,Y                                                        ;8BF0C6;
    LDA.W $1B1D,Y                                                        ;8BF0C9;
    CLC                                                                  ;8BF0CC;
    ADC.W #$0004                                                         ;8BF0CD;
    STA.W $1B1D,Y                                                        ;8BF0D0;
    RTS                                                                  ;8BF0D3;


.noInitParam:
    LDA.W #$0080                                                         ;8BF0D4;
    STA.W $1A7D,Y                                                        ;8BF0D7;
    LDA.W #$0A00                                                         ;8BF0DA;
    STA.W $1ABD,Y                                                        ;8BF0DD;
    RTS                                                                  ;8BF0E0;


InitFunction_CineSpriteObject_YellowClouds_Top_BottomHalf:
    LDA.W #$FFE0                                                         ;8BF0E1;
    STA.W $1A9D,Y                                                        ;8BF0E4;
    BRA CommonInit_YellowClouds_TopBottom                                ;8BF0E7;


InitFunction_CineSpriteObject_YellowClouds_Bottom_TopHalf:
    LDA.W #$0120                                                         ;8BF0E9;
    STA.W $1A9D,Y                                                        ;8BF0EC;
    BRA CommonInit_YellowClouds_TopBottom                                ;8BF0EF;


InitFunction_CineSpriteObject_YellowClouds_Bottom_BottomHalf:
    LDA.W #$0160                                                         ;8BF0F1;
    STA.W $1A9D,Y                                                        ;8BF0F4;
    BRA CommonInit_YellowClouds_TopBottom                                ;8BF0F7;


InitFunction_CinematicSpriteObject_YellowClouds_Right:
    LDA.W #$0140                                                         ;8BF0F9;
    STA.W $1A7D,Y                                                        ;8BF0FC;
    LDA.W $1B9D                                                          ;8BF0FF;
    BEQ .noInitParam                                                     ;8BF102;
    LDA.W #$01C0                                                         ;8BF104;
    STA.W $1A9D,Y                                                        ;8BF107;
    LDA.W #$0A00                                                         ;8BF10A;
    STA.W $1ABD,Y                                                        ;8BF10D;
    RTS                                                                  ;8BF110;


.noInitParam:
    LDA.W #$00C0                                                         ;8BF111;
    STA.W $1A9D,Y                                                        ;8BF114;
    LDA.W #$0A00                                                         ;8BF117;
    STA.W $1ABD,Y                                                        ;8BF11A;
    RTS                                                                  ;8BF11D;


InitFunction_CinematicSpriteObject_YellowClouds_Left:
    LDA.W #$FFC0                                                         ;8BF11E;
    STA.W $1A7D,Y                                                        ;8BF121;
    LDA.W $1B9D                                                          ;8BF124;
    BEQ .noInitParam                                                     ;8BF127;
    LDA.W #$FF40                                                         ;8BF129;
    STA.W $1A9D,Y                                                        ;8BF12C;
    LDA.W #$0A00                                                         ;8BF12F;
    STA.W $1ABD,Y                                                        ;8BF132;
    RTS                                                                  ;8BF135;


.noInitParam:
    LDA.W #$0040                                                         ;8BF136;
    STA.W $1A9D,Y                                                        ;8BF139;
    LDA.W #$0A00                                                         ;8BF13C;
    STA.W $1ABD,Y                                                        ;8BF13F;
    RTS                                                                  ;8BF142;


InitFunction_CinematicSpriteObject_SuitlessSamus:
    LDA.W #$0078                                                         ;8BF143;
    STA.W $1A7D,Y                                                        ;8BF146;
    LDA.W #$0088                                                         ;8BF149;
    STA.W $1A9D,Y                                                        ;8BF14C;
    LDA.W #$0A00                                                         ;8BF14F;
    STA.W $1ABD,Y                                                        ;8BF152;
    RTS                                                                  ;8BF155;


InitFunction_CinematicSpriteObject_SuitedSamus_Body_Arm:
    LDA.W #$0078                                                         ;8BF156;
    STA.W $1A7D,Y                                                        ;8BF159;
    LDA.W #$0098                                                         ;8BF15C;
    STA.W $1A9D,Y                                                        ;8BF15F;
    LDA.W #$0C00                                                         ;8BF162;
    STA.W $1ABD,Y                                                        ;8BF165;
    RTS                                                                  ;8BF168;


InitFunction_CinematicSpriteObject_SuitedSamus_Head_Helmet:
    LDA.W #$007C                                                         ;8BF169;
    STA.W $1A7D,Y                                                        ;8BF16C;
    LDA.W #$006C                                                         ;8BF16F;
    STA.W $1A9D,Y                                                        ;8BF172;
    LDA.W #$0C00                                                         ;8BF175;
    STA.W $1ABD,Y                                                        ;8BF178;
    RTS                                                                  ;8BF17B;


InitFunction_CinematicSpriteObject_SuitedSamus_Head:
    LDA.W #$0079                                                         ;8BF17C;
    STA.W $1A7D,Y                                                        ;8BF17F;
    LDA.W #$006B                                                         ;8BF182;
    STA.W $1A9D,Y                                                        ;8BF185;
    LDA.W #$0A00                                                         ;8BF188;
    STA.W $1ABD,Y                                                        ;8BF18B;
    RTS                                                                  ;8BF18E;


InitFunction_CineSpriteObject_SuperMetroidIcon_S_TopHalf:
    LDA.W #$0212                                                         ;8BF18F;
    STA.W $1A7D,Y                                                        ;8BF192;
    LDA.W #$00E7                                                         ;8BF195;
    STA.W $1A9D,Y                                                        ;8BF198;
    LDA.W #$0E00                                                         ;8BF19B;
    STA.W $1ABD,Y                                                        ;8BF19E;
    LDA.W #$0008                                                         ;8BF1A1;
    STA.W $1B7D,Y                                                        ;8BF1A4;
    RTS                                                                  ;8BF1A7;


InitFunction_CineSpriteObject_SuperMetroidIcon_S_BottomHalf:
    LDA.W #$00F6                                                         ;8BF1A8;
    STA.W $1A7D,Y                                                        ;8BF1AB;
    LDA.W #$0207                                                         ;8BF1AE;
    STA.W $1A9D,Y                                                        ;8BF1B1;
    LDA.W #$0E00                                                         ;8BF1B4;
    STA.W $1ABD,Y                                                        ;8BF1B7;
    LDA.W #$0008                                                         ;8BF1BA;
    STA.W $1B7D,Y                                                        ;8BF1BD;
    RTS                                                                  ;8BF1C0;


InitFunc_CineSpriteObject_SuperMetroidIcon_Circle_TopHalf:
    LDA.W #$0181                                                         ;8BF1C1;
    STA.W $1A7D,Y                                                        ;8BF1C4;
    LDA.W #$016E                                                         ;8BF1C7;
    STA.W $1A9D,Y                                                        ;8BF1CA;
    LDA.W #$0E00                                                         ;8BF1CD;
    STA.W $1ABD,Y                                                        ;8BF1D0;
    RTS                                                                  ;8BF1D3;


InitFunc_CineSpriteObject_SuperMetroidIcon_Circle_BottomHalf:
    LDA.W #$0187                                                         ;8BF1D4;
    STA.W $1A7D,Y                                                        ;8BF1D7;
    LDA.W #$0180                                                         ;8BF1DA;
    STA.W $1A9D,Y                                                        ;8BF1DD;
    LDA.W #$0E00                                                         ;8BF1E0;
    STA.W $1ABD,Y                                                        ;8BF1E3;
    RTS                                                                  ;8BF1E6;


PreInstruction_CineSpriteObject_SuperMetroidIcon_S_TopHalf:
    LDA.W $1A9D,X                                                        ;8BF1E7;
    CLC                                                                  ;8BF1EA;
    ADC.W $1B7D,X                                                        ;8BF1EB;
    STA.W $1A9D,X                                                        ;8BF1EE;
    LDA.W $1A7D,X                                                        ;8BF1F1;
    SEC                                                                  ;8BF1F4;
    SBC.W $1B7D,X                                                        ;8BF1F5;
    STA.W $1A7D,X                                                        ;8BF1F8;
    CMP.W #$018B                                                         ;8BF1FB;
    BPL +                                                                ;8BF1FE;
    LDA.W #$018A                                                         ;8BF200;
    STA.W $1A7D,X                                                        ;8BF203;
    LDA.W #$016F                                                         ;8BF206;
    STA.W $1A9D,X                                                        ;8BF209;
    LDA.W #RTS_8B93D9                                                    ;8BF20C;
    STA.W $1B3D,X                                                        ;8BF20F;
    PHY                                                                  ;8BF212;
    LDY.W #PaletteFXObjects_PostCreditsSuperMetroidIcon                  ;8BF213;
    JSL.L Spawn_PaletteFXObject                                          ;8BF216;
    PLY                                                                  ;8BF21A;
    RTS                                                                  ;8BF21B;


  + LDA.W $1B7D,X                                                        ;8BF21C;
    CLC                                                                  ;8BF21F;
    ADC.W #$0002                                                         ;8BF220;
    STA.W $1B7D,X                                                        ;8BF223;
    RTS                                                                  ;8BF226;


Instruction_CineSpriteObject_SuperMetroidIcon_S_BottomHalf:
    LDA.W $1A9D,X                                                        ;8BF227;
    SEC                                                                  ;8BF22A;
    SBC.W $1B7D,X                                                        ;8BF22B;
    STA.W $1A9D,X                                                        ;8BF22E;
    LDA.W $1A7D,X                                                        ;8BF231;
    CLC                                                                  ;8BF234;
    ADC.W $1B7D,X                                                        ;8BF235;
    STA.W $1A7D,X                                                        ;8BF238;
    CMP.W #$017E                                                         ;8BF23B;
    BMI +                                                                ;8BF23E;
    LDA.W #$017E                                                         ;8BF240;
    STA.W $1A7D,X                                                        ;8BF243;
    LDA.W #$017F                                                         ;8BF246;
    STA.W $1A9D,X                                                        ;8BF249;
    LDA.W #RTS_8B93D9                                                    ;8BF24C;
    STA.W $1B3D,X                                                        ;8BF24F;
    RTS                                                                  ;8BF252;


  + LDA.W $1B7D,X                                                        ;8BF253;
    CLC                                                                  ;8BF256;
    ADC.W #$0002                                                         ;8BF257;
    STA.W $1B7D,X                                                        ;8BF25A;
    RTS                                                                  ;8BF25D;


Instruction_GreyOutSuperMetroidIcon:
    SEP #$20                                                             ;8BF25E;
    LDA.B #$03                                                           ;8BF260;
    STA.B $69                                                            ;8BF262;
    LDA.B #$10                                                           ;8BF264;
    STA.B $6B                                                            ;8BF266;
    LDA.B #$02                                                           ;8BF268;
    STA.B $6F                                                            ;8BF26A;
    LDA.B #$22                                                           ;8BF26C;
    STA.B $72                                                            ;8BF26E;
    LDA.B #$64                                                           ;8BF270;
    STA.B $5D                                                            ;8BF272;
    LDA.B #$54                                                           ;8BF274;
    STA.B $59                                                            ;8BF276;
    REP #$20                                                             ;8BF278;
    STZ.W $1A49                                                          ;8BF27A;
    LDA.W #CinematicFunction_PostCredits_GreyOutSuperMetroidIcon         ;8BF27D;
    STA.W $1F51                                                          ;8BF280;
    RTS                                                                  ;8BF283;


Instruction_FadeOutZoomedOutExplodingZebes:
    PHY                                                                  ;8BF284;
    LDY.W #PaletteFXObjects_FadeOutZoomedOutExplodingZebes               ;8BF285;
    JSL.L Spawn_PaletteFXObject                                          ;8BF288;
    LDA.W #$0001                                                         ;8BF28C;
    STA.L $7EC1FC                                                        ;8BF28F;
    PLY                                                                  ;8BF293;
    RTS                                                                  ;8BF294;


Instruction_CineSpriteObjectSpawnZebesExplosionSilhouette:
    PHY                                                                  ;8BF295;
    LDY.W #CinematicSpriteObjectDefinitions_ZebesExplosion_Silhouette    ;8BF296;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BF299;
    LDA.W #$7FFF                                                         ;8BF29C;
    STA.L $7EC000                                                        ;8BF29F;
    PLY                                                                  ;8BF2A3;
    RTS                                                                  ;8BF2A4;


PreInst_CineSpriteObj_ExplodingZebes_PurpleGlow_Stars_Lava:
    LDA.W $1B3B                                                          ;8BF2A5;
    BNE .return                                                          ;8BF2A8;
    LDA.W #$0001                                                         ;8BF2AA;
    STA.W $1B5D,X                                                        ;8BF2AD;
    LDA.W #InstList_CinematicSpriteObject_Delete_duplicate               ;8BF2B0;
    STA.W $1B1D,X                                                        ;8BF2B3;

.return:
    RTS                                                                  ;8BF2B6;


Instruction_CinematicSpriteObject_StartZebesExplosion:
    PHY                                                                  ;8BF2B7;
    SEP #$20                                                             ;8BF2B8;
    LDA.B #$11                                                           ;8BF2BA;
    STA.B $69                                                            ;8BF2BC;
    LDA.B #$02                                                           ;8BF2BE;
    STA.B $6B                                                            ;8BF2C0;
    LDA.B #$02                                                           ;8BF2C2;
    STA.B $6F                                                            ;8BF2C4;
    LDA.B #$11                                                           ;8BF2C6;
    STA.B $72                                                            ;8BF2C8;
    LDA.B #$7C                                                           ;8BF2CA;
    STA.B $59                                                            ;8BF2CC;
    REP #$20                                                             ;8BF2CE;
    LDY.W #CinematicSpriteObjectDefinitions_ZebesExplosion_Stars_Right   ;8BF2D0;
    STZ.B $12                                                            ;8BF2D3;
    JSR.W Spawn_CinematicSpriteObject_YToIndex12                         ;8BF2D5;
    LDY.W #CinematicSpriteObjectDefinitions_ZebesExplosion_Stars_Left    ;8BF2D8;
    LDA.W #$0002                                                         ;8BF2DB;
    STA.B $12                                                            ;8BF2DE;
    JSR.W Spawn_CinematicSpriteObject_YToIndex12                         ;8BF2E0;
    LDY.W #PaletteFXObjects_WidePartOfZebesExplosion_Foreground          ;8BF2E3;
    JSL.L Spawn_PaletteFXObject                                          ;8BF2E6;
    LDY.W #PaletteFXObjects_WhiteOutSpaceDuringZebesExplosion            ;8BF2EA;
    JSL.L Spawn_PaletteFXObject                                          ;8BF2ED;
    LDY.W #PaletteFXObjects_WidePartOfZebesExplosion_Background          ;8BF2F1;
    JSL.L Spawn_PaletteFXObject                                          ;8BF2F4;
    PLY                                                                  ;8BF2F8;
    RTS                                                                  ;8BF2F9;


Instruction_ZebesExplosionFinale:
    PHY                                                                  ;8BF2FA;
    SEP #$20                                                             ;8BF2FB;
    LDA.B #$03                                                           ;8BF2FD;
    STA.B $69                                                            ;8BF2FF;
    LDA.B #$12                                                           ;8BF301;
    STA.B $6B                                                            ;8BF303;
    LDA.B #$02                                                           ;8BF305;
    STA.B $6F                                                            ;8BF307;
    LDA.B #$33                                                           ;8BF309;
    STA.B $72                                                            ;8BF30B;
    LDA.B #$74                                                           ;8BF30D;
    STA.B $58                                                            ;8BF30F;
    LDA.B #$78                                                           ;8BF311;
    STA.B $59                                                            ;8BF313;
    REP #$20                                                             ;8BF315;
    LDY.W #PaletteFXObjects_ZebesExplosionFinale                         ;8BF317;
    JSL.L Spawn_PaletteFXObject                                          ;8BF31A;
    LDY.W #CinematicSpriteObjectDefinitions_ZebesExplosion_AfterGlow     ;8BF31E;
    LDA.W #$0006                                                         ;8BF321;
    STA.B $12                                                            ;8BF324;
    JSR.W Spawn_CinematicSpriteObject_YToIndex12                         ;8BF326;
    PLY                                                                  ;8BF329;
    RTS                                                                  ;8BF32A;


Instruction_EndZebesExplosion:
    PHY                                                                  ;8BF32B;
    SEP #$20                                                             ;8BF32C;
    STZ.B $69                                                            ;8BF32E;
    STZ.B $6B                                                            ;8BF330;
    REP #$20                                                             ;8BF332;
    LDA.W #$7FFF                                                         ;8BF334;
    STA.L $7EC000                                                        ;8BF337;
    STA.L $7EC100                                                        ;8BF33B;
    PHX                                                                  ;8BF33F;
    LDX.W #$001E                                                         ;8BF340;

.loop:
    STA.L $7EC020,X                                                      ;8BF343;
    DEX                                                                  ;8BF347;
    DEX                                                                  ;8BF348;
    BPL .loop                                                            ;8BF349;
    PLX                                                                  ;8BF34B;
    LDA.W #CinematicFunc_Ending_SpaceView_ChangeMusic                    ;8BF34C;
    STA.W $1F51                                                          ;8BF34F;
    LDA.W #$0078                                                         ;8BF352;
    STA.W $1A49                                                          ;8BF355;
    PLY                                                                  ;8BF358;
    RTS                                                                  ;8BF359;


Instruction_CinematicSpriteObject_ZebesExplosion_Stars_Left:
    LDA.W $1F51                                                          ;8BF35A;
    CMP.W #CinematicFunc_Ending_SpaceView_GunshipEmergence_SpinningFast  ;8BF35D;
    BNE .return                                                          ;8BF360;
    LDA.W #PreInst_CineSpriteObject_ZebesExplosion_Stars_Left_Moving     ;8BF362;
    STA.W $1B3D,X                                                        ;8BF365;
    LDA.W #$4000                                                         ;8BF368;
    STA.W $1AFD,X                                                        ;8BF36B;
    LDA.W #$0000                                                         ;8BF36E;
    STA.W $1B7D,X                                                        ;8BF371;

.return:
    RTS                                                                  ;8BF374;


PreInst_CineSpriteObject_ZebesExplosion_Stars_Left_Moving:
    LDA.W $1AFD,X                                                        ;8BF375;
    CLC                                                                  ;8BF378;
    ADC.W #$FFE0                                                         ;8BF379;
    STA.W $1AFD,X                                                        ;8BF37C;
    LDA.W $1B7D,X                                                        ;8BF37F;
    ADC.W #$FFFF                                                         ;8BF382;
    STA.W $1B7D,X                                                        ;8BF385;
    LDA.W $1ADD,X                                                        ;8BF388;
    CLC                                                                  ;8BF38B;
    ADC.W $1AFD,X                                                        ;8BF38C;
    STA.W $1ADD,X                                                        ;8BF38F;
    LDA.W $1A7D,X                                                        ;8BF392;
    ADC.W $1B7D,X                                                        ;8BF395;
    STA.W $1A7D,X                                                        ;8BF398; fallthrough to PreInstruction_CineSpriteObject_ZebesExplosion_AfterGlow

PreInstruction_CineSpriteObject_ZebesExplosion_AfterGlow:
    LDA.W $1F51                                                          ;8BF39B;
    CMP.W #RTS_8BDE63                                                    ;8BF39E;
    BNE .return                                                          ;8BF3A1;
    LDA.W #$0001                                                         ;8BF3A3;
    STA.W $1B5D,X                                                        ;8BF3A6;
    LDA.W #InstList_CinematicSpriteObject_Delete_duplicate               ;8BF3A9;
    STA.W $1B1D,X                                                        ;8BF3AC;

.return:
    RTS                                                                  ;8BF3AF;


Instruction_CinematicSpriteObject_SpawnCompletedSuccessfully:
    PHY                                                                  ;8BF3B0;
    LDY.W #CinematicSpriteObjectDefinitions_CompletedSuccessfully        ;8BF3B1;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BF3B4;
    PLY                                                                  ;8BF3B7;
    RTS                                                                  ;8BF3B8;


PreInstruction_CinematicSpriteObject_Text:
    LDA.W $1F51                                                          ;8BF3B9;
    CMP.W #CinematicFunction_Credits_Setup                               ;8BF3BC;
    BNE .return                                                          ;8BF3BF;
    LDA.W #$0001                                                         ;8BF3C1;
    STA.W $1B5D,X                                                        ;8BF3C4;
    LDA.W #InstList_CinematicSpriteObject_Delete_duplicate               ;8BF3C7;
    STA.W $1B1D,X                                                        ;8BF3CA;

.return:
    RTS                                                                  ;8BF3CD;


Instruction_CinematicSpriteObject_SpawnClearTime:
    PHY                                                                  ;8BF3CE;
    LDY.W #CinematicSpriteObjectDefinitions_ClearTime                    ;8BF3CF;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BF3D2;
    LDA.W $09E0                                                          ;8BF3D5;
    STA.W $4204                                                          ;8BF3D8;
    SEP #$20                                                             ;8BF3DB;
    LDA.B #$0A                                                           ;8BF3DD;
    STA.W $4206                                                          ;8BF3DF;
    NOP                                                                  ;8BF3E2;
    NOP                                                                  ;8BF3E3;
    NOP                                                                  ;8BF3E4;
    NOP                                                                  ;8BF3E5;
    NOP                                                                  ;8BF3E6;
    NOP                                                                  ;8BF3E7;
    NOP                                                                  ;8BF3E8;
    REP #$20                                                             ;8BF3E9;
    LDA.W $4214                                                          ;8BF3EB;
    STA.W $0DEC                                                          ;8BF3EE;
    LDA.W $4216                                                          ;8BF3F1;
    STA.W $0DEE                                                          ;8BF3F4;
    LDA.W $09DE                                                          ;8BF3F7;
    STA.W $4204                                                          ;8BF3FA;
    SEP #$20                                                             ;8BF3FD;
    LDA.B #$0A                                                           ;8BF3FF;
    STA.W $4206                                                          ;8BF401;
    NOP                                                                  ;8BF404;
    NOP                                                                  ;8BF405;
    NOP                                                                  ;8BF406;
    NOP                                                                  ;8BF407;
    NOP                                                                  ;8BF408;
    NOP                                                                  ;8BF409;
    NOP                                                                  ;8BF40A;
    REP #$20                                                             ;8BF40B;
    LDA.W $4214                                                          ;8BF40D;
    STA.W $0DF0                                                          ;8BF410;
    LDA.W $4216                                                          ;8BF413;
    STA.W $0DF2                                                          ;8BF416;
    PLY                                                                  ;8BF419;
    RTS                                                                  ;8BF41A;


Instruction_CineSpriteObject_SpawnClearTime_Hours_TensDigit:
    PHY                                                                  ;8BF41B;
    LDY.W #CinematicSpriteObjectDefinitions_ClearTime_Hours_TensDigit    ;8BF41C;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BF41F;
    PLY                                                                  ;8BF422;
    RTS                                                                  ;8BF423;


Instruction_CineSpriteObject_SpawnClearTime_Hours_OnesDigit:
    PHY                                                                  ;8BF424;
    LDY.W #CinematicSpriteObjectDefinitions_ClearTime_Hours_OnesDigit    ;8BF425;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BF428;
    PLY                                                                  ;8BF42B;
    RTS                                                                  ;8BF42C;


Instruction_CinematicSpriteObject_SpawnClearTime_Colon:
    PHY                                                                  ;8BF42D;
    LDY.W #CinematicSpriteObjectDefinitions_ClearTime_Colon              ;8BF42E;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BF431;
    PLY                                                                  ;8BF434;
    RTS                                                                  ;8BF435;


Inst_CineSpriteObject_SpawnClearTime_Minutes_TensDigit:
    PHY                                                                  ;8BF436;
    LDY.W #CinematicSpriteObjectDefinitions_ClearTime_Minutes_TensDigit  ;8BF437;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BF43A;
    PLY                                                                  ;8BF43D;
    RTS                                                                  ;8BF43E;


Inst_CineSpriteObject_SpawnClearTime_Minutes_OnesDigit:
    PHY                                                                  ;8BF43F;
    LDY.W #CinematicSpriteObjectDefinitions_ClearTime_Minutes_OnesDigit  ;8BF440;
    JSR.W Spawn_CinematicSpriteObject_Y                                  ;8BF443;
    PLY                                                                  ;8BF446;
    RTS                                                                  ;8BF447;


Instruction_CinematicSpriteObject_TransitionToCredits:
    STZ.W $0723                                                          ;8BF448;
    STZ.W $0725                                                          ;8BF44B;
    LDA.W #CinematicFunction_Ending_SpaceView_GunshipEmergence_Credits   ;8BF44E;
    STA.W $1F51                                                          ;8BF451;
    RTS                                                                  ;8BF454;


PreInstruction_CinematicSpriteObject_YellowClouds_Top:
    LDA.W $198F                                                          ;8BF455;
    CMP.W #$00B0                                                         ;8BF458;
    BPL .return                                                          ;8BF45B;
    LDA.W #PreInstruction_CinematicSpriteObject_YellowClouds_Top_Moving  ;8BF45D;
    STA.W $1B3D,X                                                        ;8BF460;

.return:
    RTS                                                                  ;8BF463;


PreInstruction_CinematicSpriteObject_YellowClouds_Top_Moving:
    LDA.W $1AFD,X                                                        ;8BF464;
    CLC                                                                  ;8BF467;
    ADC.W #$0000                                                         ;8BF468;
    STA.W $1AFD,X                                                        ;8BF46B;
    LDA.W $1A9D,X                                                        ;8BF46E;
    ADC.W #$0001                                                         ;8BF471;
    STA.W $1A9D,X                                                        ;8BF474;
    RTS                                                                  ;8BF477;


PreInstruction_CinematicSpriteObject_YellowClouds_Bottom:
    LDA.W $198F                                                          ;8BF478;
    CMP.W #$00B0                                                         ;8BF47B;
    BPL .return                                                          ;8BF47E;
    LDA.W #PreInstruction_CineSpriteObject_YellowClouds_Bottom_Moving    ;8BF480;
    STA.W $1B3D,X                                                        ;8BF483;

.return:
    RTS                                                                  ;8BF486;


PreInstruction_CineSpriteObject_YellowClouds_Bottom_Moving:
    LDA.W $1AFD,X                                                        ;8BF487;
    SEC                                                                  ;8BF48A;
    SBC.W #$0000                                                         ;8BF48B;
    STA.W $1AFD,X                                                        ;8BF48E;
    LDA.W $1A9D,X                                                        ;8BF491;
    SBC.W #$0001                                                         ;8BF494;
    STA.W $1A9D,X                                                        ;8BF497;
    RTS                                                                  ;8BF49A;


PreInstruction_CinematicSpriteObject_YellowClouds_Right:
    LDA.W $198F                                                          ;8BF49B;
    CMP.W #$0038                                                         ;8BF49E;
    BMI .return                                                          ;8BF4A1;
    LDA.W #PreInstruction_CineSpriteObject_YellowClouds_Right_Moving     ;8BF4A3;
    STA.W $1B3D,X                                                        ;8BF4A6;

.return:
    RTS                                                                  ;8BF4A9;


PreInstruction_CineSpriteObject_YellowClouds_Right_Moving:
    LDA.W $1AFD,X                                                        ;8BF4AA;
    SEC                                                                  ;8BF4AD;
    SBC.W #$0000                                                         ;8BF4AE;
    STA.W $1AFD,X                                                        ;8BF4B1;
    LDA.W $1A9D,X                                                        ;8BF4B4;
    SBC.W #$0002                                                         ;8BF4B7;
    STA.W $1A9D,X                                                        ;8BF4BA;
    LDA.W $1ADD,X                                                        ;8BF4BD;
    SEC                                                                  ;8BF4C0;
    SBC.W #$0000                                                         ;8BF4C1;
    STA.W $1ADD,X                                                        ;8BF4C4;
    LDA.W $1A7D,X                                                        ;8BF4C7;
    SBC.W #$0001                                                         ;8BF4CA;
    STA.W $1A7D,X                                                        ;8BF4CD;
    RTS                                                                  ;8BF4D0;


PreInstruction_CinematicSpriteObject_YellowClouds_Left:
    LDA.W $198F                                                          ;8BF4D1;
    CMP.W #$0038                                                         ;8BF4D4;
    BMI .return                                                          ;8BF4D7;
    LDA.W #PreInstruction_CineSpriteObject_YellowClouds_Left_Moving      ;8BF4D9;
    STA.W $1B3D,X                                                        ;8BF4DC;

.return:
    RTS                                                                  ;8BF4DF;


PreInstruction_CineSpriteObject_YellowClouds_Left_Moving:
    LDA.W $1AFD,X                                                        ;8BF4E0;
    CLC                                                                  ;8BF4E3;
    ADC.W #$0000                                                         ;8BF4E4;
    STA.W $1AFD,X                                                        ;8BF4E7;
    LDA.W $1A9D,X                                                        ;8BF4EA;
    ADC.W #$0002                                                         ;8BF4ED;
    STA.W $1A9D,X                                                        ;8BF4F0;
    LDA.W $1ADD,X                                                        ;8BF4F3;
    CLC                                                                  ;8BF4F6;
    ADC.W #$0000                                                         ;8BF4F7;
    STA.W $1ADD,X                                                        ;8BF4FA;
    LDA.W $1A7D,X                                                        ;8BF4FD;
    ADC.W #$0001                                                         ;8BF500;
    STA.W $1A7D,X                                                        ;8BF503;
    RTS                                                                  ;8BF506;


PreInstruction_CinematicSpriteObject_Samus_Idle:
    LDA.W $1F51                                                          ;8BF507;
    CMP.W #RTS_8BDB9D                                                    ;8BF50A;
    BNE .return                                                          ;8BF50D;
    LDA.W #$0001                                                         ;8BF50F;
    STA.W $1B5D,X                                                        ;8BF512;
    LDA.W #InstList_CinematicSpriteObject_Delete_duplicate               ;8BF515;
    STA.W $1B1D,X                                                        ;8BF518;

.return:
    RTS                                                                  ;8BF51B;


RTS_8BF51C:
    RTS                                                                  ;8BF51C;


Instruction_CinematicSpriteObject_SpawnSuitlessSamusJump:
    PHY                                                                  ;8BF51D;
    LDY.W #CinematicSpriteObjectDefinitions_SuitlessSamus_Jump           ;8BF51E;
    STZ.B $12                                                            ;8BF521;
    JSR.W Spawn_CinematicSpriteObject_YToIndex12                         ;8BF523;
    PLY                                                                  ;8BF526;
    RTS                                                                  ;8BF527;


Inst_CineSpriteObject_SpawnSuitlessSamus_LettingHairDown:
    JSR.W MoveJumpingEndingSamus                                         ;8BF528;
    LDA.W $1A9D,X                                                        ;8BF52B;
    CMP.W #$FFB0                                                         ;8BF52E;
    BPL .return                                                          ;8BF531;
    SEP #$20                                                             ;8BF533;
    LDA.B #$03                                                           ;8BF535;
    STA.B $52                                                            ;8BF537;
    REP #$20                                                             ;8BF539;
    LDA.W #$0001                                                         ;8BF53B;
    STA.W $1B5D,X                                                        ;8BF53E;
    LDA.W #InstList_Samus_Jump_Falling                                   ;8BF541;
    STA.W $1B1D,X                                                        ;8BF544;
    LDA.W #PreInstruction_CinematicSpriteObject_Samus_Jump_Falling       ;8BF547;
    STA.W $1B3D,X                                                        ;8BF54A;
    LDA.W #$0C00                                                         ;8BF54D;
    STA.W $1ABD,X                                                        ;8BF550;

.return:
    RTS                                                                  ;8BF553;


Instruction_CinematicSpriteObject_SpawnSuitedSamusJump:
    PHY                                                                  ;8BF554;
    LDA.W $09E0                                                          ;8BF555;
    CMP.W #$000A                                                         ;8BF558;
    BMI .gameTimeUnder10                                                 ;8BF55B;
    LDY.W #CinematicSpriteObjectDefinitions_Jump_Head_Helmet             ;8BF55D;
    LDA.W #$0002                                                         ;8BF560;
    STA.B $12                                                            ;8BF563;
    JSR.W Spawn_CinematicSpriteObject_YToIndex12                         ;8BF565;
    BRA +                                                                ;8BF568;


.gameTimeUnder10:
    LDY.W #CinematicSpriteObjectDefinitions_Jump_Head                    ;8BF56A;
    LDA.W #$0002                                                         ;8BF56D;
    STA.B $12                                                            ;8BF570;
    JSR.W Spawn_CinematicSpriteObject_YToIndex12                         ;8BF572;

  + LDY.W #CinematicSpriteObjectDefinitions_Jump_Body                    ;8BF575;
    STZ.B $12                                                            ;8BF578;
    JSR.W Spawn_CinematicSpriteObject_YToIndex12                         ;8BF57A;
    PLY                                                                  ;8BF57D;
    RTS                                                                  ;8BF57E;


PreInst_CinematicSpriteObject_SuitedSamus_Jump_Head_Jumping:
    JSR.W MoveJumpingEndingSamus                                         ;8BF57F;
    LDA.W $1A9D,X                                                        ;8BF582;
    CMP.W #$FFB0                                                         ;8BF585;
    BPL .return                                                          ;8BF588;
    LDA.W #$0001                                                         ;8BF58A;
    STA.W $1B5D,X                                                        ;8BF58D;
    LDA.W #InstList_CinematicSpriteObject_Delete_duplicate               ;8BF590;
    STA.W $1B1D,X                                                        ;8BF593;

.return:
    RTS                                                                  ;8BF596;


Instruction_CineSpriteObject_PositionSuitedHeadToPrepareJump:
    LDA.W $09E0                                                          ;8BF597;
    CMP.W #$000A                                                         ;8BF59A;
    BMI .gameTimeUnder10                                                 ;8BF59D;
    LDA.W #$0076                                                         ;8BF59F;
    STA.W $1A7F,X                                                        ;8BF5A2;
    LDA.W #$0078                                                         ;8BF5A5;
    STA.W $1A9F,X                                                        ;8BF5A8;
    BRA .return                                                          ;8BF5AB;


.gameTimeUnder10:
    LDA.W #$0078                                                         ;8BF5AD;
    STA.W $1A7F,X                                                        ;8BF5B0;
    LDA.W #$0078                                                         ;8BF5B3;
    STA.W $1A9F,X                                                        ;8BF5B6;

.return:
    RTS                                                                  ;8BF5B9;


Instruction_CinematicSpriteObject_PositionSamusHeadToJump:
    LDA.W $09E0                                                          ;8BF5BA;
    CMP.W #$000A                                                         ;8BF5BD;
    BMI .gameTimeUnder10                                                 ;8BF5C0;
    LDA.W #$0078                                                         ;8BF5C2;
    STA.W $1A7F,X                                                        ;8BF5C5;
    LDA.W #$0072                                                         ;8BF5C8;
    STA.W $1A9F,X                                                        ;8BF5CB;
    BRA .return                                                          ;8BF5CE;


.gameTimeUnder10:
    LDA.W #$0079                                                         ;8BF5D0;
    STA.W $1A7F,X                                                        ;8BF5D3;
    LDA.W #$0074                                                         ;8BF5D6;
    STA.W $1A9F,X                                                        ;8BF5D9;

.return:
    RTS                                                                  ;8BF5DC;


PreInstruction_CinematicSpriteObject_Samus_Jump_Falling:
    JSR.W TransferPostCreditsSamusBeamToVRAM                             ;8BF5DD;
    JSR.W MoveJumpingEndingSamus                                         ;8BF5E0;
    LDA.W $1A9D,X                                                        ;8BF5E3;
    CMP.W #$0088                                                         ;8BF5E6;
    BMI .return                                                          ;8BF5E9;
    LDA.W #$0088                                                         ;8BF5EB;
    STA.W $1A9D,X                                                        ;8BF5EE;
    LDA.W #$0001                                                         ;8BF5F1;
    STA.W $1B5D,X                                                        ;8BF5F4;
    LDA.W #InstList_Samus_Jump_Landed                                    ;8BF5F7;
    STA.W $1B1D,X                                                        ;8BF5FA;
    LDA.W #RTS_8B93D9                                                    ;8BF5FD;
    STA.W $1B3D,X                                                        ;8BF600;

.return:
    RTS                                                                  ;8BF603;


Instruction_CinematicSpriteObject_SamusShootsScreen:
    PHX                                                                  ;8BF604;
    PHY                                                                  ;8BF605;
    LDA.W #$0E00                                                         ;8BF606;
    STA.W $1ABD,X                                                        ;8BF609;
    LDA.W #CinematicFunction_PostCredits_SamusShootsScreen               ;8BF60C;
    STA.W $1F51                                                          ;8BF60F;
    SEP #$20                                                             ;8BF612;
    LDA.B #$11                                                           ;8BF614;
    STA.B $69                                                            ;8BF616;
    LDA.B #$10                                                           ;8BF618;
    STA.B $6B                                                            ;8BF61A;
    LDA.B #$02                                                           ;8BF61C;
    STA.B $6F                                                            ;8BF61E;
    LDA.B #$81                                                           ;8BF620;
    STA.B $72                                                            ;8BF622;
    REP #$20                                                             ;8BF624;
    LDA.W #$FFFC                                                         ;8BF626;
    STA.W $1993                                                          ;8BF629;
    LDA.W #$FFF8                                                         ;8BF62C;
    STA.W $1997                                                          ;8BF62F;
    LDA.W #$0010                                                         ;8BF632;
    STA.W $1A49                                                          ;8BF635;
    LDA.W #$0020                                                         ;8BF638;
    STA.W $1A4D                                                          ;8BF63B;
    STA.W $1A4F                                                          ;8BF63E;
    JSR.W PaletteCrossFading_CopyCurrentPalettesToFadingPalettes         ;8BF641;
    JSR.W PaletteCrossFading_DecomposePaletteDataForFading               ;8BF644;
    LDA.W #$0022                                                         ;8BF647;
    JSL.L QueueSound                                                     ;8BF64A;
    PLY                                                                  ;8BF64E;
    PLX                                                                  ;8BF64F;
    RTS                                                                  ;8BF650;


Instruction_CinematicSpriteObject_MakeEndingSamusJump:
    STZ.W $0B2C                                                          ;8BF651;
    LDA.W #$FFED                                                         ;8BF654;
    STA.W $0B2E                                                          ;8BF657;
    RTS                                                                  ;8BF65A;


MoveJumpingEndingSamus:
    LDA.W $0B2C                                                          ;8BF65B;
    CLC                                                                  ;8BF65E;
    ADC.W #$4330                                                         ;8BF65F;
    STA.W $0B2C                                                          ;8BF662;
    LDA.W $0B2E                                                          ;8BF665;
    ADC.W #$0000                                                         ;8BF668;
    STA.W $0B2E                                                          ;8BF66B;
    LDA.W $1AFD,X                                                        ;8BF66E;
    CLC                                                                  ;8BF671;
    ADC.W $0B2C                                                          ;8BF672;
    STA.W $1AFD,X                                                        ;8BF675;
    LDA.W $1A9D,X                                                        ;8BF678;
    ADC.W $0B2E                                                          ;8BF67B;
    STA.W $1A9D,X                                                        ;8BF67E;
    RTS                                                                  ;8BF681;


TransferPostCreditsSamusBeamToVRAM:
    PHX                                                                  ;8BF682;
    PHY                                                                  ;8BF683;
    LDA.W $1A4D                                                          ;8BF684;
    CMP.W #$0010                                                         ;8BF687;
    BPL .return                                                          ;8BF68A;
    ASL A                                                                ;8BF68C;
    TAY                                                                  ;8BF68D;
    LDX.W $0330                                                          ;8BF68E;
    LDA.W #$0800                                                         ;8BF691;
    STA.B $D0,X                                                          ;8BF694;
    INX                                                                  ;8BF696;
    INX                                                                  ;8BF697;
    LDA.W .sourceAddresses,Y                                             ;8BF698;
    STA.B $D0,X                                                          ;8BF69B;
    INX                                                                  ;8BF69D;
    INX                                                                  ;8BF69E;
    SEP #$20                                                             ;8BF69F;
    LDA.B #$7F                                                           ;8BF6A1;
    STA.B $D0,X                                                          ;8BF6A3;
    REP #$20                                                             ;8BF6A5;
    INX                                                                  ;8BF6A7;
    LDA.W .VRAMAddresses,Y                                               ;8BF6A8;
    STA.B $D0,X                                                          ;8BF6AB;
    INX                                                                  ;8BF6AD;
    INX                                                                  ;8BF6AE;
    STX.W $0330                                                          ;8BF6AF;
    INC.W $1A4D                                                          ;8BF6B2;

.return:
    PLY                                                                  ;8BF6B5;
    PLX                                                                  ;8BF6B6;
    RTS                                                                  ;8BF6B7;


.sourceAddresses:
    db $00,$40,$00,$48,$00,$50,$00,$58,$00,$60,$00,$68,$00,$70,$00,$78   ;8BF6B8;
    db $00,$80,$00,$88,$00,$90,$00,$98,$00,$A0,$00,$A8,$00,$B0,$00,$B8   ;8BF6C8;

.VRAMAddresses:
    db $00,$00,$00,$04,$00,$08,$00,$0C,$00,$10,$00,$14,$00,$18,$00,$1C   ;8BF6D8;
    db $00,$20,$00,$24,$00,$28,$00,$2C,$00,$30,$00,$34,$00,$38,$00,$3C   ;8BF6E8;

CreditsObjectDefinition:
    dw RTS_8B93D9                                                        ;8BF6F8;
    dw RTS_8B93D9                                                        ;8BF6FA;
    dw InstList_Credits_Start                                            ;8BF6FC;

Instruction_EndCredits:
    PHP                                                                  ;8BF6FE;
    PHB                                                                  ;8BF6FF;
    PHK                                                                  ;8BF700;
    PLB                                                                  ;8BF701;
    REP #$30                                                             ;8BF702;
    PHX                                                                  ;8BF704;
    PHY                                                                  ;8BF705;
    JSR.W Disable_CreditsObject                                          ;8BF706;
    LDX.W #$0008                                                         ;8BF709;

.loop:
    LDA.L Palettes_PostCredits,X                                         ;8BF70C;
    STA.L $7EC000,X                                                      ;8BF710;
    INX                                                                  ;8BF714;
    INX                                                                  ;8BF715;
    CPX.W #$0200                                                         ;8BF716;
    BMI .loop                                                            ;8BF719;
    SEP #$20                                                             ;8BF71B;
    STZ.B $69                                                            ;8BF71D;
    LDA.B #$80                                                           ;8BF71F;
    STA.B $51                                                            ;8BF721;
    REP #$20                                                             ;8BF723;
    STZ.W $0723                                                          ;8BF725;
    STZ.W $0725                                                          ;8BF728;
    STZ.W $1995                                                          ;8BF72B;
    STZ.W $1997                                                          ;8BF72E;
    LDA.W #$0001                                                         ;8BF731;
    STA.W $1A05                                                          ;8BF734;
    LDA.W #CinematicFunction_PostCredits_BlankScreen                     ;8BF737;
    STA.W $1F51                                                          ;8BF73A;
    LDA.W #$003C                                                         ;8BF73D;
    STA.W $1A49                                                          ;8BF740;
    PLY                                                                  ;8BF743;
    PLX                                                                  ;8BF744;
    PLB                                                                  ;8BF745;
    PLP                                                                  ;8BF746;
    RTS                                                                  ;8BF747;


CinematicBGObjectDefinitions_PostCredits_SeeYouNextMission:
    dw RTS_8B93D9                                                        ;8BF748;
    dw RTS_8B93D9                                                        ;8BF74A;
    dw CinematicBGObjectInstLists_Ending_SeeYouNextMission               ;8BF74C;

CinematicBGObjectDefinitions_PostCredits_ItemPercentage:
    dw RTS_8B93D9                                                        ;8BF74E;
    dw RTS_8B93D9                                                        ;8BF750;
    dw CinematicBGObjectInstLists_Ending_ItemPercentage                  ;8BF752;

Debug_VersionString:
; '03.30.10.00'
    db $30,$33,$2E,$33,$30,$2E,$31,$30,$2E,$30,$30,$00                   ;8BF754;

Freespace_Bank8B_F6E8:                                                   ;8BF760;
; $918 bytes
