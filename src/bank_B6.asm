
org $B68000


Tiles_PauseScreen_BG1_BG2:
incbin "../data/Tiles_PauseScreen_BG1_BG2.bin" ; $4000 bytes

Tiles_Menu_PauseScreen_Sprites:
incbin "../data/Tiles_Menu_PauseScreen_Sprites.bin" ; $2000 bytes

Tilemap_BG2PauseScreen_BG2RoomSelectMap_0:
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E000;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E010;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E020;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E030;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E040;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E050;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E060;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E070;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E080;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E090;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E0A0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E0B0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E0C0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E0D0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E0E0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E0F0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E100;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E110;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E120;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E130;
    dw $68BF,$28BE,$28BE,$28BE,$28BE,$28BE,$28BE,$28BE                   ;B6E140;
    dw $68BE,$68BD,$2801,$2801,$2831,$2841,$2838,$283D                   ;B6E150;
    dw $2842,$2843,$2830,$2841,$2801,$2801,$28BD,$28BE                   ;B6E160;
    dw $28BE,$28BE,$28BE,$28BE,$28BE,$28BE,$28BE,$28BF                   ;B6E170;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E180;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E190;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E1A0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E1B0;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E1C0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E1D0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E1E0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E1F0;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E200;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E210;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E220;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E230;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E240;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E250;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E260;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E270;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E280;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E290;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E2A0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E2B0;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E2C0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E2D0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E2E0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E2F0;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E300;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E310;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E320;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E330;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E340;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E350;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E360;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E370;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E380;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E390;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E3A0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E3B0;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E3C0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E3D0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E3E0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E3F0;

Tilemap_BG2PauseScreen_BG2RoomSelectMap_1:
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E400;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E410;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E420;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E430;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E440;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E450;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E460;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E470;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E480;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E490;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E4A0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E4B0;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E4C0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E4D0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E4E0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E4F0;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E500;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E510;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E520;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E530;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E540;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E550;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E560;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E570;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E580;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E590;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E5A0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E5B0;
    dw $68CF,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E5C0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E5D0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$0812                   ;B6E5E0;
    dw $0812,$0812,$0812,$0812,$0812,$0812,$0812,$28CF                   ;B6E5F0;
    dw $E8BF,$A8BE,$A8BE,$A8BE,$A8BE,$A8BE,$A8BE,$A8BE                   ;B6E600;
    dw $A8BE,$A8BE,$A8BE,$A8BE,$A8BE,$A8BE,$A8BE,$A8BE                   ;B6E610;
    dw $A8BE,$A8BE,$A8BE,$A8BE,$A8BE,$A8BE,$A8BE,$A8BE                   ;B6E620;
    dw $A8BE,$A8BE,$A8BE,$A8BE,$A8BE,$A8BE,$A8BE,$A8BF                   ;B6E630;
    dw $2801,$2856,$2857,$2858,$2859,$2899,$289A,$289B                   ;B6E640;
    dw $289C,$289D,$687F,$2801,$28B8,$28B9,$28BA,$28BB                   ;B6E650;
    dw $2895,$2896,$2897,$6895,$2801,$287F,$2879,$287A                   ;B6E660;
    dw $287B,$287C,$287D,$2856,$285C,$285D,$2859,$2801                   ;B6E670;
    dw $2801,$2866,$2867,$2868,$2869,$28A9,$28AA,$28AB                   ;B6E680;
    dw $28AC,$28AD,$687F,$2801,$28C8,$28C9,$28CA,$28CB                   ;B6E690;
    dw $28A5,$28A6,$28A7,$28A8,$2801,$287F,$2889,$288A                   ;B6E6A0;
    dw $288B,$288C,$288D,$2866,$286C,$2887,$2869,$2801                   ;B6E6B0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E6C0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E6D0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E6E0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E6F0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E700;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E710;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E720;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E730;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E740;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E750;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E760;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E770;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E780;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E790;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E7A0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E7B0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E7C0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E7D0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E7E0;
    dw $2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801                   ;B6E7F0;

Tilemap_EquipmentScreen:
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E800;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E810;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E820;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E830;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E840;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E850;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E860;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E870;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E880;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E890;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E8A0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E8B0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E8C0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E8D0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E8E0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E8F0;
    dw $0000,$3D4C,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E900;
    dw $0000,$0000,$0000,$0000,$2800,$2800,$2800,$2800                   ;B6E910;
    dw $2800,$2800,$2800,$2800,$2800,$2800,$2800,$2800                   ;B6E920;
    dw $2800,$2800,$2800,$2800,$2800,$2800,$2800,$0800                   ;B6E930;
    dw $0000,$3D5C,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E940;
    dw $0000,$28BE,$28BE,$68BD,$2801,$293A,$293B,$293C                   ;B6E950;
    dw $293D,$293E,$293F,$2801,$28BD,$28BE,$28BE,$0000                   ;B6E960;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E970;
    dw $0000,$1D5C,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E980;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E990;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E9A0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E9B0;
    dw $0000,$1D5C,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E9C0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$25B3                   ;B6E9D0;
    dw $65B3,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E9E0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6E9F0;
    dw $0000,$1D5C,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EA00;
    dw $0000,$0000,$0000,$0000,$25BC,$25BD,$25BE,$25C3                   ;B6EA10;
    dw $65C3,$65BE,$65BD,$65BC,$3941,$3942,$3942,$3943                   ;B6EA20;
    dw $28F6,$28F7,$28F8,$7943,$3942,$3942,$7941,$0000                   ;B6EA30;
    dw $0000,$1D5C,$3941,$3942,$3943,$0D07,$0D08,$0D09                   ;B6EA40;
    dw $0D0A,$7943,$3942,$7941,$25CC,$25CD,$25CE,$25D3                   ;B6EA50;
    dw $65D3,$65CE,$65CD,$65CC,$3940,$0CFF,$0D00,$0D01                   ;B6EA60;
    dw $0D02,$0D03,$0D04,$0D05,$0CD4,$0CD4,$7940,$0000                   ;B6EA70;
    dw $0000,$1D5C,$3940,$2801,$2801,$2801,$2801,$2801                   ;B6EA80;
    dw $2801,$2801,$2801,$7940,$25DC,$25DD,$25EC,$25ED                   ;B6EA90;
    dw $257C,$257D,$257E,$257F,$7954,$0CFF,$0CD0,$0CD1                   ;B6EAA0;
    dw $0CD2,$0CD3,$0D03,$0D04,$0D05,$0CD4,$7940,$0000                   ;B6EAB0;
    dw $0000,$1D5C,$3940,$2801,$2801,$2801,$2801,$2801                   ;B6EAC0;
    dw $2801,$2801,$2801,$7940,$25F0,$25F1,$25FC,$25FD                   ;B6EAD0;
    dw $65FD,$65FC,$65F1,$65F0,$B941,$B942,$B942,$B942                   ;B6EAE0;
    dw $B942,$B942,$B942,$B942,$B942,$B942,$F941,$0000                   ;B6EAF0;
    dw $0000,$1D6C,$3D6F,$1CFC,$1CFC,$1CFC,$1CFC,$3CFE                   ;B6EB00;
    dw $2801,$2801,$2801,$7940,$2570,$2571,$2572,$2573                   ;B6EB10;
    dw $2574,$6572,$6571,$6570,$3941,$3942,$3942,$3943                   ;B6EB20;
    dw $29B0,$29B1,$29B2,$7943,$3942,$3942,$7941,$0000                   ;B6EB30;
    dw $0000,$0000,$B941,$B942,$B942,$B942,$B942,$B942                   ;B6EB40;
    dw $B942,$B942,$B942,$F941,$2580,$2581,$2594,$2583                   ;B6EB50;
    dw $2584,$2578,$2586,$2587,$3940,$08FF,$0920,$0921                   ;B6EB60;
    dw $0922,$0923,$0917,$0918,$090F,$091F,$7940,$0000                   ;B6EB70;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EB80;
    dw $0000,$0000,$0000,$0000,$2590,$2591,$25A4,$25A5                   ;B6EB90;
    dw $65A5,$2588,$2596,$2597,$7954,$08FF,$08D5,$08D6                   ;B6EBA0;
    dw $08D7,$08D4,$08D4,$08D4,$08D4,$08D4,$7940,$0800                   ;B6EBB0;
    dw $0000,$0000,$0000,$3941,$3943,$38F9,$38FA,$38FB                   ;B6EBC0;
    dw $7943,$7941,$0000,$2945,$25A0,$25A1,$25B4,$25B5                   ;B6EBD0;
    dw $65B5,$65B4,$25A6,$25A7,$3940,$08FF,$0910,$0911                   ;B6EBE0;
    dw $0912,$0913,$0914,$0915,$0916,$08D4,$7940,$0800                   ;B6EBF0;
    dw $0000,$0000,$0000,$3940,$08FF,$08D8,$08D9,$08DA                   ;B6EC00;
    dw $08E7,$7940,$3945,$2955,$0000,$25C9,$25C4,$25C5                   ;B6EC10;
    dw $65C5,$65C4,$0000,$0000,$3940,$08FF,$08E0,$08E1                   ;B6EC20;
    dw $08E2,$08E3,$08E4,$08E5,$08E6,$08D4,$7940,$0800                   ;B6EC30;
    dw $0000,$0000,$0000,$3940,$08FF,$08DB,$08DC,$08D4                   ;B6EC40;
    dw $08D4,$3954,$3955,$0000,$0000,$0000,$25D4,$25D5                   ;B6EC50;
    dw $65D5,$65D4,$0000,$0000,$B941,$B942,$B942,$B942                   ;B6EC60;
    dw $B942,$B942,$B942,$B942,$B942,$B942,$F941,$0800                   ;B6EC70;
    dw $0000,$0000,$0000,$3940,$08FF,$08DD,$08DE,$08DF                   ;B6EC80;
    dw $08D4,$7940,$0000,$0000,$0000,$0000,$25B6,$25B7                   ;B6EC90;
    dw $65B7,$65B6,$0000,$0000,$3941,$3942,$3942,$3943                   ;B6ECA0;
    dw $2CA0,$2CA1,$2CA2,$7943,$3942,$3942,$7941,$0800                   ;B6ECB0;
    dw $0000,$0000,$0000,$3940,$08FF,$08E8,$08E9,$08EA                   ;B6ECC0;
    dw $08EB,$7940,$0000,$0000,$0000,$0000,$25C6,$25C7                   ;B6ECD0;
    dw $65C7,$65C6,$0000,$0000,$3940,$0CFF,$0D30,$0D31                   ;B6ECE0;
    dw $0D32,$0D33,$0D34,$0D35,$0D36,$0CD4,$7940,$0000                   ;B6ECF0;
    dw $0000,$0000,$0000,$3940,$08FF,$08EC,$08ED,$08EE                   ;B6ED00;
    dw $08EF,$7940,$0000,$0000,$0000,$0000,$25D6,$05D7                   ;B6ED10;
    dw $45D7,$65D6,$0000,$0000,$3940,$0CFF,$0CF0,$0CF1                   ;B6ED20;
    dw $0CF2,$0CF3,$0CF4,$0CF5,$0CD4,$0CD4,$7940,$0000                   ;B6ED30;
    dw $0000,$0000,$0000,$B941,$B942,$B942,$B942,$B942                   ;B6ED40;
    dw $B942,$F941,$0000,$0000,$0000,$0000,$258F,$0000                   ;B6ED50;
    dw $0000,$658F,$0000,$F955,$F954,$0CFF,$0D24,$0D25                   ;B6ED60;
    dw $0D26,$0D27,$0D28,$0D29,$0D2A,$0D2B,$7940,$0000                   ;B6ED70;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6ED80;
    dw $0000,$0000,$0000,$0000,$258E,$259E,$259F,$0000                   ;B6ED90;
    dw $0000,$659F,$25EE,$259D,$B941,$B942,$B942,$B942                   ;B6EDA0;
    dw $B942,$B942,$B942,$B942,$B942,$B942,$F941,$0000                   ;B6EDB0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EDC0;
    dw $0000,$0000,$0000,$0000,$25AD,$25AE,$25AF,$0000                   ;B6EDD0;
    dw $0000,$65AF,$25FE,$65AD,$0000,$0000,$0000,$0000                   ;B6EDE0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EDF0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EE00;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EE10;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EE20;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EE30;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EE40;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EE50;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EE60;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EE70;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EE80;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EE90;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EEA0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EEB0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EEC0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EED0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EEE0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EEF0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EF00;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EF10;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EF20;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EF30;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EF40;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EF50;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EF60;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EF70;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EF80;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EF90;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EFA0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EFB0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EFC0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EFD0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EFE0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6EFF0;

Palettes_PauseScreen:
    dw $0000,$02DF,$01D7,$00AC,$5EBB,$3DB3,$292E,$1486                   ;B6F000;
    dw $6318,$48FB,$7FFF,$0000,$6318,$44E5,$7FFF,$0000                   ;B6F010;
    dw $2003,$0BB1,$1EA9,$0145,$0000,$3DB3,$292E,$1486                   ;B6F020;
    dw $6318,$5EF7,$0000,$0000,$6318,$02DF,$7FFF,$0000                   ;B6F030;
    dw $2003,$48FB,$7FF4,$001F,$0000,$7FFF,$0156,$001F                   ;B6F040;
    dw $2413,$559D,$0000,$02DF,$4408,$7FFF,$5EF7,$318C                   ;B6F050;
    dw $0000,$44E5,$7FF4,$001F,$0000,$4A52,$318C,$5EF7                   ;B6F060;
    dw $1CE7,$2870,$1CE7,$4A52,$4408,$7FFF,$5EF7,$318C                   ;B6F070;
    dw $0000,$272A,$559D,$1816,$0000,$7FFF,$4A52,$6318                   ;B6F080;
    dw $6318,$6318,$48FB,$6318,$6318,$0000,$7FFF,$6318                   ;B6F090;
    dw $0000,$72B2,$71C7,$4463,$6318,$6318,$6318,$6318                   ;B6F0A0;
    dw $6318,$6318,$2884,$6318,$7000,$0000,$7FFF,$6318                   ;B6F0B0;
    dw $0000,$6318,$6318,$6318,$0000,$739C,$0156,$6E7A                   ;B6F0C0;
    dw $0000,$0000,$0000,$039E,$4408,$7FFF,$5EF7,$318C                   ;B6F0D0;
    dw $0000,$7FFF,$4A52,$318C,$0000,$739C,$318C,$739C                   ;B6F0E0;
    dw $739C,$739C,$0000,$4A52,$4408,$7FFF,$6318,$6318                   ;B6F0F0;
    dw $3800,$7FFF,$4BFF,$13FF,$129F,$111F,$0CB5,$046A                   ;B6F100;
    dw $0000,$3DB3,$292E,$48FB,$1849,$44E5,$7FFF,$0000                   ;B6F110;
    dw $3800,$7FFF,$4BFF,$13FF,$129F,$111F,$0CB5,$046A                   ;B6F120;
    dw $0000,$1085,$0C64,$1447,$0823,$1442,$2108,$0000                   ;B6F130;
    dw $3800,$200D,$000A,$2C02,$4E73,$7FFF,$039F,$001F                   ;B6F140;
    dw $0000,$559D,$001D,$039F,$7FFF,$0000,$0000,$023F                   ;B6F150;
    dw $3800,$200D,$000A,$2C02,$4E73,$7FFF,$039F,$001F                   ;B6F160;
    dw $0000,$559D,$001D,$039F,$7FFF,$0000,$0000,$023F                   ;B6F170;
    dw $3800,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6F180;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6F190;
    dw $3800,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6F1A0;
    dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000                   ;B6F1B0;
    dw $3800,$0CE0,$08A0,$0040,$18C5,$1062,$0C41,$0421                   ;B6F1C0;
    dw $0CE7,$0887,$0027,$0025,$0023,$0001,$1CE7,$0000                   ;B6F1D0;
    dw $3800,$2FE0,$1A80,$0120,$6B37,$4588,$2D05,$1062                   ;B6F1E0;
    dw $37FF,$1E3F,$047F,$0456,$004C,$0023,$7FFF,$0000                   ;B6F1F0;

Freespace_BankB6_F200:                                                   ;B6F200;
; $E00 bytes
