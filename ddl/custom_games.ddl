// file .... custom_games.ddl

#redirect hash_6a0e0d16551bb601;

version hash_4676a87650b75b79 {
    // enums ..... 0 (0x0)
    // structs ... 11 (0xb)
    // header bit size .. 382576 (0x5d670)
    // header byte size . 47822 (0xbace)

    // bitSize: 0x78, members: 8
    struct hash_2c79abcce61676aa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x78, members: 8
    struct hash_20631b664715b1fa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x168, members: 9
    struct hash_27580df06d232ed1 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:5 talent[6];
        // offset: 0x70, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0xe8, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
        // offset: 0x160, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x110, members: 4
    struct hash_1489c97943984433 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 herogadget;
        // offset: 0x20, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0x98, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
    };

    // bitSize: 0x1ef8, members: 12
    struct hash_71e57d488b0eb24d {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1680(0x2d0 Byte(s)), array:0x10(hti:0xffff)
        hash_27580df06d232ed1 customclass[16];
        // offset: 0x16b0, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1eb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x1ec0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x1ed0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x1ee0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x1ef0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1ef1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1ef2, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1938, members: 8
    struct hash_31d8d99be94a78b7 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1100(0x220 Byte(s)), array:0x10(hti:0xffff)
        hash_1489c97943984433 customclass[16];
        // offset: 0x1130, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1930, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1931, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1932, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1388, members: 17
    struct cacloadoutlistcustomgames_s {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        int:4 equippedbubblegumpack;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0xe10(0x1c2 Byte(s)), array:0xa(hti:0xffff)
        hash_27580df06d232ed1 customclass[10];
        // offset: 0xe40, bitSize: 0x8(0x1 Byte(s))
        byte herogadget;
        // offset: 0xe48, bitSize: 0x500(0xa0 Byte(s)), array:0xa(hti:0xffff)
        string(16) customclassname[10];
        // offset: 0x1348, bitSize: 0x8(0x1 Byte(s))
        byte heroweapon;
        // offset: 0x1350, bitSize: 0x8(0x1 Byte(s))
        byte killstreak1;
        // offset: 0x1358, bitSize: 0x8(0x1 Byte(s))
        byte killstreak2;
        // offset: 0x1360, bitSize: 0x8(0x1 Byte(s))
        byte killstreak3;
        // offset: 0x1368, bitSize: 0x8(0x1 Byte(s))
        byte killstreak4;
        // offset: 0x1370, bitSize: 0x8(0x1 Byte(s))
        byte killstreak5;
        // offset: 0x1378, bitSize: 0x8(0x1 Byte(s))
        byte killstreak6;
        // offset: 0x1380, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1381, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1382, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x3c0, members: 1
    struct hash_5fba00041f77a729 {
        // offset: 0x0, bitSize: 0x3c0(0x78 Byte(s)), array:0x78(hti:0xffff)
        uint:2 weaponindex[120];
    };

    // bitSize: 0xf608, members: 438
    struct hash_2565a0443b27b26c {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0x80, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x98, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0xd8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0xe8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        uint:2 friendlyfiretype;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x120, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x188, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x190, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayers;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x1c8, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x258, bitSize: 0x800(0x100 Byte(s)), array:0x100(hti:0xffff)
        uint:2 restricteditems[256];
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0xa60, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        uint:3 randomobjectivelocations;
        // offset: 0xa70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0xaa0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0xab0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0xad0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0xb20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0xb30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0xb40, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0xb50, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0xb68, bitSize: 0xa500(0x14a0 Byte(s)), array:0x2c(hti:0xffff)
        hash_5fba00041f77a729 restrictedattachments[44];
        // offset: 0xb068, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0xb070, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0xb078, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0xb088, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0xb098, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0xb0a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0xb0a8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0xb0c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0xb0d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0xb0d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0xb0e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0xb0f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0xb108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0xb118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0xb128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0xb138, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0xb150, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0xb160, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0xb168, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0xb170, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0xb180, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0xb188, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0xb190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0xb1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0xb1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0xb1c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0xb1d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0xb1d8, bitSize: 0x10(0x2 Byte(s))
        uint:14 playersprintrecoverydelayoverridems;
        // offset: 0xb1e8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0xb1f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0xb200, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0xb208, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0xb220, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0xb230, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0xb240, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0xb250, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0xb260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0xb270, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0xb280, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0xb288, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0xb298, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0xb2a0, bitSize: 0x80(0x10 Byte(s)), array:0x10(hti:0xffff)
        uint:5 maxuniquerolesperteam[16];
        // offset: 0xb320, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0xb328, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0xb340, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0xb348, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0xb350, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0xb368, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0xb370, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0xb378, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0xb388, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0xb390, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0xb3a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0xb3b0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0xb3b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0xb3c8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0xb3d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0xb3d8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0xb3e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0xb3f0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0xb408, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0xb418, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0xb420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xb428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xb438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xb448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xb458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xb468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xb478, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xb488, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xb498, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xb4a0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xb4b0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xb4b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xb4c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xb4c8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xb4d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xb4d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xb4e8, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xb4f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xb500, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xb508, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xb510, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb518, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb520, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb528, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb538, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb548, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb560, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb568, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb578, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb580, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb588, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb598, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb5a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb5b8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb5c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xb5d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 startround;
        // offset: 0xb5d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xb5e0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xb5e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xb5f0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xb5f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xb600, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xb608, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xb620, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xb630, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xb638, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xb640, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xb650, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xb658, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xb660, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xb670, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xb678, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xb680, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xb688, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xb698, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xb6a0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xb6a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xb6b0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xb6c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xb6c8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xb6d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xb6e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xb6f0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xb6f8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0xb708, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xb720, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xb730, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xb740, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xb750, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xb758, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xb768, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xb778, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xb790, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xb798, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xb7a8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xb7b0, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xb7d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xb7d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xb7e0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xb7e8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xb7f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xb800, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xb818, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xb820, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xb828, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xb840, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xb850, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xb860, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xb870, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xb880, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xb888, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xb890, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xb8a0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xb8a8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xb8b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xb8b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xb8c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xb8c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xb8d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xb8d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xb8e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0xb8f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xb900, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xb918, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xb920, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xb930, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xb938, bitSize: 0x3a98(0x753 Byte(s)), array:0x3(hti:0xffff)
        cacloadoutlistcustomgames_s cacloadouts[3];
        // offset: 0xf3d0, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xf3d8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xf3e0, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0xf3e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0xf3f0, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0xf3f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0xf400, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0xf410, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0xf420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0xf428, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0xf440, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamcount;
        // offset: 0xf448, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0xf468, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0xf470, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0xf480, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0xf490, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0xf4a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0xf4b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0xf4c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0xf4d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0xf4e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0xf4e8, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0xf508, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0xf510, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0xf528, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0xf540, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0xf548, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0xf558, bitSize: 0x1
        bool delayplayer;
        // offset: 0xf559, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0xf55a, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0xf55b, bitSize: 0x1
        bool magic;
        // offset: 0xf55c, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0xf55d, bitSize: 0x1
        bool draftenabled;
        // offset: 0xf55e, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0xf55f, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0xf560, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0xf561, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0xf562, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0xf563, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0xf564, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0xf565, bitSize: 0x1
        bool allowdogs;
        // offset: 0xf566, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0xf567, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0xf568, bitSize: 0x1
        bool hash_6e051e440a6c3b91;
        // offset: 0xf569, bitSize: 0x1
        bool hash_612a91feb7ce6f9a;
        // offset: 0xf56a, bitSize: 0x1
        bool hardcoremode;
        // offset: 0xf56b, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0xf56c, bitSize: 0x1
        bool silentplant;
        // offset: 0xf56d, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0xf56e, bitSize: 0x1
        bool drafteveryround;
        // offset: 0xf56f, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0xf570, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0xf571, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0xf572, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0xf573, bitSize: 0x1
        bool kothmode;
        // offset: 0xf574, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0xf575, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0xf576, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0xf577, bitSize: 0x1
        bool decayprogress;
        // offset: 0xf578, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0xf579, bitSize: 0x1
        bool onlyexecution;
        // offset: 0xf57a, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0xf57b, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0xf57c, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0xf57d, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0xf57e, bitSize: 0x1
        bool hash_55a9555dfd9d0c6;
        // offset: 0xf57f, bitSize: 0x1
        bool usespawngroups;
        // offset: 0xf580, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0xf581, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0xf582, bitSize: 0x1
        bool platoonassignment;
        // offset: 0xf583, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0xf584, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0xf585, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0xf586, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0xf587, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0xf588, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0xf589, bitSize: 0x1
        bool hash_678c1d3307b1d73a;
        // offset: 0xf58a, bitSize: 0x1
        bool headshotsonly;
        // offset: 0xf58b, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0xf58c, bitSize: 0x1
        bool disablecontracts;
        // offset: 0xf58d, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0xf58e, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0xf58f, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0xf590, bitSize: 0x1
        bool hash_6138c30c393776de;
        // offset: 0xf591, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0xf592, bitSize: 0x1
        bool allowannouncer;
        // offset: 0xf593, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0xf594, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0xf595, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0xf596, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0xf597, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0xf598, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0xf599, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0xf59a, bitSize: 0x1
        bool neutralzone;
        // offset: 0xf59b, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0xf59c, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0xf59d, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0xf59e, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0xf59f, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0xf5a0, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0xf5a1, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0xf5a2, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0xf5a3, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0xf5a4, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0xf5a5, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0xf5a6, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0xf5a7, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0xf5a8, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0xf5a9, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0xf5aa, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0xf5ab, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0xf5ac, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0xf5ad, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0xf5ae, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0xf5af, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0xf5b0, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0xf5b1, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0xf5b2, bitSize: 0x1
        bool perksenabled;
        // offset: 0xf5b3, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0xf5b4, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0xf5b5, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0xf5b6, bitSize: 0x1
        bool robotshield;
        // offset: 0xf5b7, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0xf5b8, bitSize: 0x1
        bool disableattachments;
        // offset: 0xf5b9, bitSize: 0x1
        bool disablecompass;
        // offset: 0xf5ba, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0xf5bb, bitSize: 0x1
        bool escalationenabled;
        // offset: 0xf5bc, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0xf5bd, bitSize: 0x1
        bool hash_60a49038647cd9e7;
        // offset: 0xf5be, bitSize: 0x1
        bool disableclassselection;
        // offset: 0xf5bf, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0xf5c0, bitSize: 0x1
        bool autoteambalance;
        // offset: 0xf5c1, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0xf5c2, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0xf5c3, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0xf5c4, bitSize: 0x1
        bool allowprone;
        // offset: 0xf5c5, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0xf5c6, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0xf5c7, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0xf5c8, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0xf5c9, bitSize: 0x1
        bool multibomb;
        // offset: 0xf5ca, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0xf5cb, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0xf5cc, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0xf5cd, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0xf5ce, bitSize: 0x1
        bool deathcircle;
        // offset: 0xf5cf, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0xf5d0, bitSize: 0x1
        bool hash_5002b8a3b8882084;
        // offset: 0xf5d1, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0xf5d2, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0xf5d3, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0xf5d4, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0xf5d5, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0xf5d6, bitSize: 0x1
        bool deathpointloss;
        // offset: 0xf5d7, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0xf5d8, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0xf5d9, bitSize: 0x1
        bool rebootplayers;
        // offset: 0xf5da, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0xf5db, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0xf5dc, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0xf5dd, bitSize: 0x1
        bool allowspectating;
        // offset: 0xf5de, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0xf5df, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0xf5e0, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0xf5e1, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0xf5e2, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0xf5e3, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0xf5e4, bitSize: 0x1
        bool hash_3a8a97035505742;
        // offset: 0xf5e5, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0xf5e6, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0xf5e7, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0xf5e8, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0xf5e9, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0xf5ea, bitSize: 0x1
        bool disallowprone;
        // offset: 0xf5eb, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0xf5ec, bitSize: 0x1
        bool moveplayers;
        // offset: 0xf5ed, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0xf5ee, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0xf5ef, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0xf5f0, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0xf5f1, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0xf5f2, bitSize: 0x1
        bool zmdifficulty;
        // offset: 0xf5f3, bitSize: 0x1
        bool pvponly;
        // offset: 0xf5f4, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0xf5f5, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0xf5f6, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0xf5f7, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0xf5f8, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0xf5f9, bitSize: 0x1
        bool classicmode;
        // offset: 0xf5fa, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0xf5fb, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0xf5fc, bitSize: 0x1
        bool capdecay;
        // offset: 0xf5fd, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0xf5fe, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0xf5ff, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0xf600, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0xf601, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0xf602, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // bitSize: 0xf8f0, members: 9
    struct hash_5d6e6de9167f1a56 {
        // offset: 0x0, bitSize: 0x200(0x40 Byte(s))
        string(64) gamedescription;
        // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x220, bitSize: 0x80(0x10 Byte(s))
        string(16) gamename;
        // offset: 0x2a0, bitSize: 0x40(0x8 Byte(s))
        string(8) gametype;
        // offset: 0x2e0, bitSize: 0xf608(0x1ec1 Byte(s))
        hash_2565a0443b27b26c gametypesettings;
        // offset: 0xf8e8, bitSize: 0x1
        bool inuse;
        // offset: 0xf8e9, bitSize: 0x1
        bool downloaded;
        // offset: 0xf8ea, bitSize: 0x1
        bool isofficial;
    };

    // root: bitSize: 0x5d5c0, members: 2

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x5d5a0(0xbab4 Byte(s)), array:0x6(hti:0xffff)
    hash_5d6e6de9167f1a56 customgames[6];
};

version hash_2b9a8bdf49bd77cd {
    // enums ..... 0 (0x0)
    // structs ... 11 (0xb)
    // header bit size .. 382096 (0x5d490)
    // header byte size . 47762 (0xba92)

    // bitSize: 0x78, members: 8
    struct hash_2c79abcce61676aa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x78, members: 8
    struct hash_20631b664715b1fa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x168, members: 9
    struct hash_27580df06d232ed1 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:5 talent[6];
        // offset: 0x70, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0xe8, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
        // offset: 0x160, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x110, members: 4
    struct hash_1489c97943984433 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 herogadget;
        // offset: 0x20, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0x98, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
    };

    // bitSize: 0x1ef8, members: 12
    struct hash_71e57d488b0eb24d {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1680(0x2d0 Byte(s)), array:0x10(hti:0xffff)
        hash_27580df06d232ed1 customclass[16];
        // offset: 0x16b0, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1eb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x1ec0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x1ed0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x1ee0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x1ef0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1ef1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1ef2, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1938, members: 8
    struct hash_31d8d99be94a78b7 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1100(0x220 Byte(s)), array:0x10(hti:0xffff)
        hash_1489c97943984433 customclass[16];
        // offset: 0x1130, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1930, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1931, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1932, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1388, members: 17
    struct cacloadoutlistcustomgames_s {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        int:4 equippedbubblegumpack;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0xe10(0x1c2 Byte(s)), array:0xa(hti:0xffff)
        hash_27580df06d232ed1 customclass[10];
        // offset: 0xe40, bitSize: 0x8(0x1 Byte(s))
        byte herogadget;
        // offset: 0xe48, bitSize: 0x500(0xa0 Byte(s)), array:0xa(hti:0xffff)
        string(16) customclassname[10];
        // offset: 0x1348, bitSize: 0x8(0x1 Byte(s))
        byte heroweapon;
        // offset: 0x1350, bitSize: 0x8(0x1 Byte(s))
        byte killstreak1;
        // offset: 0x1358, bitSize: 0x8(0x1 Byte(s))
        byte killstreak2;
        // offset: 0x1360, bitSize: 0x8(0x1 Byte(s))
        byte killstreak3;
        // offset: 0x1368, bitSize: 0x8(0x1 Byte(s))
        byte killstreak4;
        // offset: 0x1370, bitSize: 0x8(0x1 Byte(s))
        byte killstreak5;
        // offset: 0x1378, bitSize: 0x8(0x1 Byte(s))
        byte killstreak6;
        // offset: 0x1380, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1381, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1382, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x3c0, members: 1
    struct hash_5fba00041f77a729 {
        // offset: 0x0, bitSize: 0x3c0(0x78 Byte(s)), array:0x78(hti:0xffff)
        uint:2 weaponindex[120];
    };

    // bitSize: 0xf5b8, members: 426
    struct hash_2565a0443b27b26c {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0x80, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x98, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0xd8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0xe8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        uint:2 friendlyfiretype;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x120, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x188, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x190, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayers;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x1c8, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x258, bitSize: 0x800(0x100 Byte(s)), array:0x100(hti:0xffff)
        uint:2 restricteditems[256];
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0xa60, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0xa70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0xaa0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0xab0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0xad0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0xb20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0xb30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0xb40, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0xb50, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0xb68, bitSize: 0xa500(0x14a0 Byte(s)), array:0x2c(hti:0xffff)
        hash_5fba00041f77a729 restrictedattachments[44];
        // offset: 0xb068, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0xb070, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0xb078, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0xb088, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0xb090, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0xb098, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0xb0b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0xb0c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0xb0c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0xb0d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0xb0e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0xb0f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0xb108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0xb118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0xb128, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0xb140, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0xb150, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0xb158, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0xb160, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0xb170, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0xb178, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0xb180, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0xb190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0xb1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0xb1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0xb1c0, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0xb1c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0xb1d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0xb1e0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0xb1e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0xb200, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0xb210, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0xb220, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0xb230, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0xb240, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0xb250, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0xb260, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0xb268, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0xb278, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0xb280, bitSize: 0x80(0x10 Byte(s)), array:0x10(hti:0xffff)
        uint:5 maxuniquerolesperteam[16];
        // offset: 0xb300, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0xb308, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0xb320, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0xb328, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0xb330, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0xb348, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0xb350, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0xb358, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0xb368, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0xb370, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0xb380, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0xb390, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0xb398, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0xb3a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0xb3b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0xb3b8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0xb3c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0xb3d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0xb3e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0xb3f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0xb400, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xb408, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xb418, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xb428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xb438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xb448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xb458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xb468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xb478, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xb480, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xb490, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xb498, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xb4a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xb4a8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xb4b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xb4b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xb4c8, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xb4d8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xb4e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xb4e8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xb4f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb4f8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb500, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb508, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb518, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb528, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb540, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb548, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb558, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb560, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb568, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb578, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb588, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb598, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb5a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xb5b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 startround;
        // offset: 0xb5b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xb5c0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xb5c8, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xb5d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xb5d8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xb5e0, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xb5e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xb600, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xb610, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xb618, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xb620, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xb630, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xb638, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xb640, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xb650, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xb658, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xb660, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xb668, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xb678, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xb680, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xb688, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xb690, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xb6a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xb6a8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xb6b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xb6c8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xb6d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xb6d8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xb6f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xb700, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xb710, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xb720, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xb728, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xb738, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xb748, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xb760, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xb768, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xb778, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xb780, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xb7a0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xb7a8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xb7b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xb7b8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xb7c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xb7d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xb7e8, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xb7f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xb7f8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xb810, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xb820, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xb830, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xb840, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xb850, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xb858, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xb860, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xb870, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xb878, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xb880, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xb888, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xb890, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xb898, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xb8a0, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xb8a8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xb8b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xb8b8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xb8d0, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xb8d8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xb8e8, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xb8f0, bitSize: 0x3a98(0x753 Byte(s)), array:0x3(hti:0xffff)
        cacloadoutlistcustomgames_s cacloadouts[3];
        // offset: 0xf388, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xf390, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xf398, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0xf3a0, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0xf3a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0xf3b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0xf3b8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0xf3c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0xf3d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0xf3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0xf3f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamcount;
        // offset: 0xf400, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0xf420, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0xf428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0xf438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0xf448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0xf458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0xf468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0xf478, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0xf488, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0xf498, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0xf4a0, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0xf4c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0xf4c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0xf4e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0xf4f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0xf500, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0xf510, bitSize: 0x1
        bool delayplayer;
        // offset: 0xf511, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0xf512, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0xf513, bitSize: 0x1
        bool magic;
        // offset: 0xf514, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0xf515, bitSize: 0x1
        bool draftenabled;
        // offset: 0xf516, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0xf517, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0xf518, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0xf519, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0xf51a, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0xf51b, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0xf51c, bitSize: 0x1
        bool allowdogs;
        // offset: 0xf51d, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0xf51e, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0xf51f, bitSize: 0x1
        bool hash_6e051e440a6c3b91;
        // offset: 0xf520, bitSize: 0x1
        bool hash_612a91feb7ce6f9a;
        // offset: 0xf521, bitSize: 0x1
        bool hardcoremode;
        // offset: 0xf522, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0xf523, bitSize: 0x1
        bool silentplant;
        // offset: 0xf524, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0xf525, bitSize: 0x1
        bool drafteveryround;
        // offset: 0xf526, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0xf527, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0xf528, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0xf529, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0xf52a, bitSize: 0x1
        bool kothmode;
        // offset: 0xf52b, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0xf52c, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0xf52d, bitSize: 0x1
        bool decayprogress;
        // offset: 0xf52e, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0xf52f, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0xf530, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0xf531, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0xf532, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0xf533, bitSize: 0x1
        bool hash_55a9555dfd9d0c6;
        // offset: 0xf534, bitSize: 0x1
        bool usespawngroups;
        // offset: 0xf535, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0xf536, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0xf537, bitSize: 0x1
        bool platoonassignment;
        // offset: 0xf538, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0xf539, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0xf53a, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0xf53b, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0xf53c, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0xf53d, bitSize: 0x1
        bool hash_678c1d3307b1d73a;
        // offset: 0xf53e, bitSize: 0x1
        bool headshotsonly;
        // offset: 0xf53f, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0xf540, bitSize: 0x1
        bool disablecontracts;
        // offset: 0xf541, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0xf542, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0xf543, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0xf544, bitSize: 0x1
        bool hash_6138c30c393776de;
        // offset: 0xf545, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0xf546, bitSize: 0x1
        bool allowannouncer;
        // offset: 0xf547, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0xf548, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0xf549, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0xf54a, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0xf54b, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0xf54c, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0xf54d, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0xf54e, bitSize: 0x1
        bool neutralzone;
        // offset: 0xf54f, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0xf550, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0xf551, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0xf552, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0xf553, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0xf554, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0xf555, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0xf556, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0xf557, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0xf558, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0xf559, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0xf55a, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0xf55b, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0xf55c, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0xf55d, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0xf55e, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0xf55f, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0xf560, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0xf561, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0xf562, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0xf563, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0xf564, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0xf565, bitSize: 0x1
        bool perksenabled;
        // offset: 0xf566, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0xf567, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0xf568, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0xf569, bitSize: 0x1
        bool robotshield;
        // offset: 0xf56a, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0xf56b, bitSize: 0x1
        bool disableattachments;
        // offset: 0xf56c, bitSize: 0x1
        bool disablecompass;
        // offset: 0xf56d, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0xf56e, bitSize: 0x1
        bool escalationenabled;
        // offset: 0xf56f, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0xf570, bitSize: 0x1
        bool hash_60a49038647cd9e7;
        // offset: 0xf571, bitSize: 0x1
        bool disableclassselection;
        // offset: 0xf572, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0xf573, bitSize: 0x1
        bool autoteambalance;
        // offset: 0xf574, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0xf575, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0xf576, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0xf577, bitSize: 0x1
        bool allowprone;
        // offset: 0xf578, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0xf579, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0xf57a, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0xf57b, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0xf57c, bitSize: 0x1
        bool multibomb;
        // offset: 0xf57d, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0xf57e, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0xf57f, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0xf580, bitSize: 0x1
        bool deathcircle;
        // offset: 0xf581, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0xf582, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0xf583, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0xf584, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0xf585, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0xf586, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0xf587, bitSize: 0x1
        bool deathpointloss;
        // offset: 0xf588, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0xf589, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0xf58a, bitSize: 0x1
        bool rebootplayers;
        // offset: 0xf58b, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0xf58c, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0xf58d, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0xf58e, bitSize: 0x1
        bool allowspectating;
        // offset: 0xf58f, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0xf590, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0xf591, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0xf592, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0xf593, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0xf594, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0xf595, bitSize: 0x1
        bool hash_3a8a97035505742;
        // offset: 0xf596, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0xf597, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0xf598, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0xf599, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0xf59a, bitSize: 0x1
        bool disallowprone;
        // offset: 0xf59b, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0xf59c, bitSize: 0x1
        bool moveplayers;
        // offset: 0xf59d, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0xf59e, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0xf59f, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0xf5a0, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0xf5a1, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0xf5a2, bitSize: 0x1
        bool zmdifficulty;
        // offset: 0xf5a3, bitSize: 0x1
        bool pvponly;
        // offset: 0xf5a4, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0xf5a5, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0xf5a6, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0xf5a7, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0xf5a8, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0xf5a9, bitSize: 0x1
        bool classicmode;
        // offset: 0xf5aa, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0xf5ab, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0xf5ac, bitSize: 0x1
        bool capdecay;
        // offset: 0xf5ad, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0xf5ae, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0xf5af, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0xf5b0, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0xf5b1, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0xf5b2, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // bitSize: 0xf8a0, members: 9
    struct hash_5d6e6de9167f1a56 {
        // offset: 0x0, bitSize: 0x200(0x40 Byte(s))
        string(64) gamedescription;
        // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x220, bitSize: 0x80(0x10 Byte(s))
        string(16) gamename;
        // offset: 0x2a0, bitSize: 0x40(0x8 Byte(s))
        string(8) gametype;
        // offset: 0x2e0, bitSize: 0xf5b8(0x1eb7 Byte(s))
        hash_2565a0443b27b26c gametypesettings;
        // offset: 0xf898, bitSize: 0x1
        bool inuse;
        // offset: 0xf899, bitSize: 0x1
        bool downloaded;
        // offset: 0xf89a, bitSize: 0x1
        bool isofficial;
    };

    // root: bitSize: 0x5d3e0, members: 2

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x5d3c0(0xba78 Byte(s)), array:0x6(hti:0xffff)
    hash_5d6e6de9167f1a56 customgames[6];
};

version hash_ee8d55d159a5f285 {
    // enums ..... 0 (0x0)
    // structs ... 11 (0xb)
    // header bit size .. 382096 (0x5d490)
    // header byte size . 47762 (0xba92)

    // bitSize: 0x78, members: 8
    struct hash_2c79abcce61676aa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x78, members: 8
    struct hash_20631b664715b1fa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x168, members: 9
    struct hash_27580df06d232ed1 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:5 talent[6];
        // offset: 0x70, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0xe8, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
        // offset: 0x160, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x110, members: 4
    struct hash_1489c97943984433 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 herogadget;
        // offset: 0x20, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0x98, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
    };

    // bitSize: 0x1ef8, members: 12
    struct hash_71e57d488b0eb24d {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1680(0x2d0 Byte(s)), array:0x10(hti:0xffff)
        hash_27580df06d232ed1 customclass[16];
        // offset: 0x16b0, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1eb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x1ec0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x1ed0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x1ee0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x1ef0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1ef1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1ef2, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1938, members: 8
    struct hash_31d8d99be94a78b7 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1100(0x220 Byte(s)), array:0x10(hti:0xffff)
        hash_1489c97943984433 customclass[16];
        // offset: 0x1130, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1930, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1931, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1932, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1388, members: 17
    struct cacloadoutlistcustomgames_s {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        int:4 equippedbubblegumpack;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0xe10(0x1c2 Byte(s)), array:0xa(hti:0xffff)
        hash_27580df06d232ed1 customclass[10];
        // offset: 0xe40, bitSize: 0x8(0x1 Byte(s))
        byte herogadget;
        // offset: 0xe48, bitSize: 0x500(0xa0 Byte(s)), array:0xa(hti:0xffff)
        string(16) customclassname[10];
        // offset: 0x1348, bitSize: 0x8(0x1 Byte(s))
        byte heroweapon;
        // offset: 0x1350, bitSize: 0x8(0x1 Byte(s))
        byte killstreak1;
        // offset: 0x1358, bitSize: 0x8(0x1 Byte(s))
        byte killstreak2;
        // offset: 0x1360, bitSize: 0x8(0x1 Byte(s))
        byte killstreak3;
        // offset: 0x1368, bitSize: 0x8(0x1 Byte(s))
        byte killstreak4;
        // offset: 0x1370, bitSize: 0x8(0x1 Byte(s))
        byte killstreak5;
        // offset: 0x1378, bitSize: 0x8(0x1 Byte(s))
        byte killstreak6;
        // offset: 0x1380, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1381, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1382, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x3c0, members: 1
    struct hash_5fba00041f77a729 {
        // offset: 0x0, bitSize: 0x3c0(0x78 Byte(s)), array:0x78(hti:0xffff)
        uint:2 weaponindex[120];
    };

    // bitSize: 0xf5b8, members: 425
    struct hash_2565a0443b27b26c {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0x80, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x98, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0xd8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0xe8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        uint:2 friendlyfiretype;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x120, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x188, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x190, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayers;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x1c8, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x258, bitSize: 0x800(0x100 Byte(s)), array:0x100(hti:0xffff)
        uint:2 restricteditems[256];
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0xa60, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0xa70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0xaa0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0xab0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0xad0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0xb20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0xb30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0xb40, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0xb50, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0xb68, bitSize: 0xa500(0x14a0 Byte(s)), array:0x2c(hti:0xffff)
        hash_5fba00041f77a729 restrictedattachments[44];
        // offset: 0xb068, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0xb070, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0xb078, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0xb088, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0xb090, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0xb098, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0xb0b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0xb0c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0xb0c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0xb0d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0xb0e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0xb0f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0xb108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0xb118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0xb128, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0xb140, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0xb150, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0xb158, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0xb160, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0xb170, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0xb178, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0xb180, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0xb190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0xb1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0xb1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0xb1c0, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0xb1c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0xb1d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0xb1e0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0xb1e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0xb200, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0xb210, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0xb220, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0xb230, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0xb240, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0xb250, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0xb260, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0xb268, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0xb278, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0xb280, bitSize: 0x80(0x10 Byte(s)), array:0x10(hti:0xffff)
        uint:5 maxuniquerolesperteam[16];
        // offset: 0xb300, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0xb308, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0xb320, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0xb328, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0xb330, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0xb348, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0xb350, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0xb358, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0xb368, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0xb370, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0xb380, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0xb390, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0xb398, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0xb3a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0xb3b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0xb3b8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0xb3c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0xb3d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0xb3e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0xb3f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0xb400, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xb408, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xb418, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xb428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xb438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xb448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xb458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xb468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xb478, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xb480, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xb490, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xb498, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xb4a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xb4a8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xb4b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xb4b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xb4c8, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xb4d8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xb4e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xb4e8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xb4f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb4f8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb500, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb508, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb518, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb528, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb540, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb548, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb558, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb560, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb568, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb578, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb588, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb598, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb5a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xb5b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 startround;
        // offset: 0xb5b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xb5c0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xb5c8, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xb5d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xb5d8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xb5e0, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xb5e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xb600, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xb610, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xb618, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xb620, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xb630, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xb638, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xb640, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xb650, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xb658, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xb660, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xb668, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xb678, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xb680, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xb688, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xb690, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xb6a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xb6a8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xb6b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xb6c8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xb6d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xb6d8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xb6f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xb700, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xb710, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xb720, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xb728, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xb738, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xb748, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xb760, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xb768, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xb778, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xb780, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xb7a0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xb7a8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xb7b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xb7b8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xb7c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xb7d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xb7e8, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xb7f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xb7f8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xb810, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xb820, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xb830, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xb840, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xb850, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xb858, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xb860, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xb870, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xb878, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xb880, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xb888, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xb890, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xb898, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xb8a0, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xb8a8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xb8b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xb8b8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xb8d0, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xb8d8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xb8e8, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xb8f0, bitSize: 0x3a98(0x753 Byte(s)), array:0x3(hti:0xffff)
        cacloadoutlistcustomgames_s cacloadouts[3];
        // offset: 0xf388, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xf390, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xf398, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0xf3a0, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0xf3a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0xf3b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0xf3b8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0xf3c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0xf3d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0xf3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0xf3f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamcount;
        // offset: 0xf400, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0xf420, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0xf428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0xf438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0xf448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0xf458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0xf468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0xf478, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0xf488, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0xf498, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0xf4a0, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0xf4c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0xf4c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0xf4e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0xf4f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0xf500, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0xf510, bitSize: 0x1
        bool shownextzoneobjective;
        // offset: 0xf511, bitSize: 0x1
        bool delayplayer;
        // offset: 0xf512, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0xf513, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0xf514, bitSize: 0x1
        bool magic;
        // offset: 0xf515, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0xf516, bitSize: 0x1
        bool draftenabled;
        // offset: 0xf517, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0xf518, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0xf519, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0xf51a, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0xf51b, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0xf51c, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0xf51d, bitSize: 0x1
        bool allowdogs;
        // offset: 0xf51e, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0xf51f, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0xf520, bitSize: 0x1
        bool hash_6e051e440a6c3b91;
        // offset: 0xf521, bitSize: 0x1
        bool hash_612a91feb7ce6f9a;
        // offset: 0xf522, bitSize: 0x1
        bool hardcoremode;
        // offset: 0xf523, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0xf524, bitSize: 0x1
        bool silentplant;
        // offset: 0xf525, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0xf526, bitSize: 0x1
        bool drafteveryround;
        // offset: 0xf527, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0xf528, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0xf529, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0xf52a, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0xf52b, bitSize: 0x1
        bool kothmode;
        // offset: 0xf52c, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0xf52d, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0xf52e, bitSize: 0x1
        bool decayprogress;
        // offset: 0xf52f, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0xf530, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0xf531, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0xf532, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0xf533, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0xf534, bitSize: 0x1
        bool hash_55a9555dfd9d0c6;
        // offset: 0xf535, bitSize: 0x1
        bool usespawngroups;
        // offset: 0xf536, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0xf537, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0xf538, bitSize: 0x1
        bool platoonassignment;
        // offset: 0xf539, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0xf53a, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0xf53b, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0xf53c, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0xf53d, bitSize: 0x1
        bool hash_678c1d3307b1d73a;
        // offset: 0xf53e, bitSize: 0x1
        bool headshotsonly;
        // offset: 0xf53f, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0xf540, bitSize: 0x1
        bool disablecontracts;
        // offset: 0xf541, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0xf542, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0xf543, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0xf544, bitSize: 0x1
        bool hash_6138c30c393776de;
        // offset: 0xf545, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0xf546, bitSize: 0x1
        bool allowannouncer;
        // offset: 0xf547, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0xf548, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0xf549, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0xf54a, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0xf54b, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0xf54c, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0xf54d, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0xf54e, bitSize: 0x1
        bool neutralzone;
        // offset: 0xf54f, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0xf550, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0xf551, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0xf552, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0xf553, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0xf554, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0xf555, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0xf556, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0xf557, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0xf558, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0xf559, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0xf55a, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0xf55b, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0xf55c, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0xf55d, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0xf55e, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0xf55f, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0xf560, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0xf561, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0xf562, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0xf563, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0xf564, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0xf565, bitSize: 0x1
        bool perksenabled;
        // offset: 0xf566, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0xf567, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0xf568, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0xf569, bitSize: 0x1
        bool robotshield;
        // offset: 0xf56a, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0xf56b, bitSize: 0x1
        bool disableattachments;
        // offset: 0xf56c, bitSize: 0x1
        bool disablecompass;
        // offset: 0xf56d, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0xf56e, bitSize: 0x1
        bool escalationenabled;
        // offset: 0xf56f, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0xf570, bitSize: 0x1
        bool hash_60a49038647cd9e7;
        // offset: 0xf571, bitSize: 0x1
        bool disableclassselection;
        // offset: 0xf572, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0xf573, bitSize: 0x1
        bool autoteambalance;
        // offset: 0xf574, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0xf575, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0xf576, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0xf577, bitSize: 0x1
        bool allowprone;
        // offset: 0xf578, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0xf579, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0xf57a, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0xf57b, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0xf57c, bitSize: 0x1
        bool multibomb;
        // offset: 0xf57d, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0xf57e, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0xf57f, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0xf580, bitSize: 0x1
        bool deathcircle;
        // offset: 0xf581, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0xf582, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0xf583, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0xf584, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0xf585, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0xf586, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0xf587, bitSize: 0x1
        bool deathpointloss;
        // offset: 0xf588, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0xf589, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0xf58a, bitSize: 0x1
        bool rebootplayers;
        // offset: 0xf58b, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0xf58c, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0xf58d, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0xf58e, bitSize: 0x1
        bool allowspectating;
        // offset: 0xf58f, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0xf590, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0xf591, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0xf592, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0xf593, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0xf594, bitSize: 0x1
        bool hash_3a8a97035505742;
        // offset: 0xf595, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0xf596, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0xf597, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0xf598, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0xf599, bitSize: 0x1
        bool disallowprone;
        // offset: 0xf59a, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0xf59b, bitSize: 0x1
        bool moveplayers;
        // offset: 0xf59c, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0xf59d, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0xf59e, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0xf59f, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0xf5a0, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0xf5a1, bitSize: 0x1
        bool zmdifficulty;
        // offset: 0xf5a2, bitSize: 0x1
        bool pvponly;
        // offset: 0xf5a3, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0xf5a4, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0xf5a5, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0xf5a6, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0xf5a7, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0xf5a8, bitSize: 0x1
        bool classicmode;
        // offset: 0xf5a9, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0xf5aa, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0xf5ab, bitSize: 0x1
        bool capdecay;
        // offset: 0xf5ac, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0xf5ad, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0xf5ae, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0xf5af, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0xf5b0, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0xf5b1, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // bitSize: 0xf8a0, members: 9
    struct hash_5d6e6de9167f1a56 {
        // offset: 0x0, bitSize: 0x200(0x40 Byte(s))
        string(64) gamedescription;
        // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x220, bitSize: 0x80(0x10 Byte(s))
        string(16) gamename;
        // offset: 0x2a0, bitSize: 0x40(0x8 Byte(s))
        string(8) gametype;
        // offset: 0x2e0, bitSize: 0xf5b8(0x1eb7 Byte(s))
        hash_2565a0443b27b26c gametypesettings;
        // offset: 0xf898, bitSize: 0x1
        bool inuse;
        // offset: 0xf899, bitSize: 0x1
        bool downloaded;
        // offset: 0xf89a, bitSize: 0x1
        bool isofficial;
    };

    // root: bitSize: 0x5d3e0, members: 2

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x5d3c0(0xba78 Byte(s)), array:0x6(hti:0xffff)
    hash_5d6e6de9167f1a56 customgames[6];
};

version hash_1955f91242dc307d {
    // enums ..... 0 (0x0)
    // structs ... 11 (0xb)
    // header bit size .. 382096 (0x5d490)
    // header byte size . 47762 (0xba92)

    // bitSize: 0x78, members: 8
    struct hash_2c79abcce61676aa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x78, members: 8
    struct hash_20631b664715b1fa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x168, members: 9
    struct hash_27580df06d232ed1 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:5 talent[6];
        // offset: 0x70, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0xe8, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
        // offset: 0x160, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x110, members: 4
    struct hash_1489c97943984433 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 herogadget;
        // offset: 0x20, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0x98, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
    };

    // bitSize: 0x1ef8, members: 12
    struct hash_71e57d488b0eb24d {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1680(0x2d0 Byte(s)), array:0x10(hti:0xffff)
        hash_27580df06d232ed1 customclass[16];
        // offset: 0x16b0, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1eb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x1ec0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x1ed0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x1ee0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x1ef0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1ef1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1ef2, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1938, members: 8
    struct hash_31d8d99be94a78b7 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1100(0x220 Byte(s)), array:0x10(hti:0xffff)
        hash_1489c97943984433 customclass[16];
        // offset: 0x1130, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1930, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1931, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1932, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1388, members: 17
    struct cacloadoutlistcustomgames_s {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        int:4 equippedbubblegumpack;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0xe10(0x1c2 Byte(s)), array:0xa(hti:0xffff)
        hash_27580df06d232ed1 customclass[10];
        // offset: 0xe40, bitSize: 0x8(0x1 Byte(s))
        byte herogadget;
        // offset: 0xe48, bitSize: 0x500(0xa0 Byte(s)), array:0xa(hti:0xffff)
        string(16) customclassname[10];
        // offset: 0x1348, bitSize: 0x8(0x1 Byte(s))
        byte heroweapon;
        // offset: 0x1350, bitSize: 0x8(0x1 Byte(s))
        byte killstreak1;
        // offset: 0x1358, bitSize: 0x8(0x1 Byte(s))
        byte killstreak2;
        // offset: 0x1360, bitSize: 0x8(0x1 Byte(s))
        byte killstreak3;
        // offset: 0x1368, bitSize: 0x8(0x1 Byte(s))
        byte killstreak4;
        // offset: 0x1370, bitSize: 0x8(0x1 Byte(s))
        byte killstreak5;
        // offset: 0x1378, bitSize: 0x8(0x1 Byte(s))
        byte killstreak6;
        // offset: 0x1380, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1381, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1382, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x3c0, members: 1
    struct hash_5fba00041f77a729 {
        // offset: 0x0, bitSize: 0x3c0(0x78 Byte(s)), array:0x78(hti:0xffff)
        uint:2 weaponindex[120];
    };

    // bitSize: 0xf5b8, members: 427
    struct hash_2565a0443b27b26c {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0x80, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x98, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0xd8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0xe8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        uint:2 friendlyfiretype;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x120, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x188, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x190, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayers;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x1c8, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x258, bitSize: 0x800(0x100 Byte(s)), array:0x100(hti:0xffff)
        uint:2 restricteditems[256];
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0xa60, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0xa70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0xaa0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0xab0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0xad0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0xb20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0xb30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0xb40, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0xb50, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0xb68, bitSize: 0xa500(0x14a0 Byte(s)), array:0x2c(hti:0xffff)
        hash_5fba00041f77a729 restrictedattachments[44];
        // offset: 0xb068, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0xb070, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0xb078, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0xb088, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0xb090, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0xb098, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0xb0b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0xb0c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0xb0c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0xb0d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0xb0e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0xb0f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0xb108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0xb118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0xb128, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0xb140, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0xb150, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0xb158, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0xb160, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0xb170, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0xb178, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0xb180, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0xb190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0xb1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0xb1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0xb1c0, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0xb1c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0xb1d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0xb1e0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0xb1e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0xb200, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0xb210, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0xb220, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0xb230, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0xb240, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0xb250, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0xb260, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0xb268, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0xb278, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0xb280, bitSize: 0x80(0x10 Byte(s)), array:0x10(hti:0xffff)
        uint:5 maxuniquerolesperteam[16];
        // offset: 0xb300, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0xb308, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0xb320, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0xb328, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0xb330, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0xb348, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0xb350, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0xb358, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0xb368, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0xb370, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0xb380, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0xb390, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0xb398, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0xb3a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0xb3b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0xb3b8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0xb3c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0xb3d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0xb3e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0xb3f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0xb400, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xb408, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xb418, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xb428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xb438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xb448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xb458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xb468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xb478, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xb480, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xb490, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xb498, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xb4a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xb4a8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xb4b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xb4b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xb4c8, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xb4d8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xb4e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xb4e8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xb4f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb4f8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb500, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb508, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb518, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb528, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb540, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb548, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb558, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb560, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb568, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb578, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb588, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb598, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb5a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xb5b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 startround;
        // offset: 0xb5b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xb5c0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xb5c8, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xb5d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xb5d8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xb5e0, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xb5e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xb600, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xb610, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xb618, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xb620, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xb630, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xb638, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xb640, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xb650, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xb658, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xb660, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xb668, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xb678, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xb680, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xb688, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xb690, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xb6a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xb6a8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xb6b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xb6c8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xb6d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xb6d8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xb6f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xb700, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xb710, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xb720, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xb728, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xb738, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xb748, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xb760, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xb768, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xb778, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xb780, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xb7a0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xb7a8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xb7b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xb7b8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xb7c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xb7d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xb7e8, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xb7f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xb7f8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xb810, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xb820, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xb830, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xb840, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xb850, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xb858, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xb860, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xb870, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xb878, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xb880, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xb888, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xb890, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xb898, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xb8a0, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xb8a8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xb8b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xb8b8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xb8d0, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xb8d8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xb8e8, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xb8f0, bitSize: 0x3a98(0x753 Byte(s)), array:0x3(hti:0xffff)
        cacloadoutlistcustomgames_s cacloadouts[3];
        // offset: 0xf388, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xf390, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xf398, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0xf3a0, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0xf3a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0xf3b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0xf3b8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0xf3c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0xf3d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0xf3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0xf3f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamcount;
        // offset: 0xf400, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0xf420, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0xf428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0xf438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0xf448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0xf458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0xf468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0xf478, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0xf488, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0xf498, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0xf4a0, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0xf4c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0xf4c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0xf4e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0xf4f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0xf500, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0xf510, bitSize: 0x1
        bool delayplayer;
        // offset: 0xf511, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0xf512, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0xf513, bitSize: 0x1
        bool magic;
        // offset: 0xf514, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0xf515, bitSize: 0x1
        bool draftenabled;
        // offset: 0xf516, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0xf517, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0xf518, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0xf519, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0xf51a, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0xf51b, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0xf51c, bitSize: 0x1
        bool allowdogs;
        // offset: 0xf51d, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0xf51e, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0xf51f, bitSize: 0x1
        bool hash_6e051e440a6c3b91;
        // offset: 0xf520, bitSize: 0x1
        bool hash_612a91feb7ce6f9a;
        // offset: 0xf521, bitSize: 0x1
        bool hardcoremode;
        // offset: 0xf522, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0xf523, bitSize: 0x1
        bool silentplant;
        // offset: 0xf524, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0xf525, bitSize: 0x1
        bool drafteveryround;
        // offset: 0xf526, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0xf527, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0xf528, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0xf529, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0xf52a, bitSize: 0x1
        bool kothmode;
        // offset: 0xf52b, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0xf52c, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0xf52d, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0xf52e, bitSize: 0x1
        bool decayprogress;
        // offset: 0xf52f, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0xf530, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0xf531, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0xf532, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0xf533, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0xf534, bitSize: 0x1
        bool hash_55a9555dfd9d0c6;
        // offset: 0xf535, bitSize: 0x1
        bool usespawngroups;
        // offset: 0xf536, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0xf537, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0xf538, bitSize: 0x1
        bool platoonassignment;
        // offset: 0xf539, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0xf53a, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0xf53b, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0xf53c, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0xf53d, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0xf53e, bitSize: 0x1
        bool hash_678c1d3307b1d73a;
        // offset: 0xf53f, bitSize: 0x1
        bool headshotsonly;
        // offset: 0xf540, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0xf541, bitSize: 0x1
        bool disablecontracts;
        // offset: 0xf542, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0xf543, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0xf544, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0xf545, bitSize: 0x1
        bool hash_6138c30c393776de;
        // offset: 0xf546, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0xf547, bitSize: 0x1
        bool allowannouncer;
        // offset: 0xf548, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0xf549, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0xf54a, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0xf54b, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0xf54c, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0xf54d, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0xf54e, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0xf54f, bitSize: 0x1
        bool neutralzone;
        // offset: 0xf550, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0xf551, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0xf552, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0xf553, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0xf554, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0xf555, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0xf556, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0xf557, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0xf558, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0xf559, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0xf55a, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0xf55b, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0xf55c, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0xf55d, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0xf55e, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0xf55f, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0xf560, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0xf561, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0xf562, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0xf563, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0xf564, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0xf565, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0xf566, bitSize: 0x1
        bool perksenabled;
        // offset: 0xf567, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0xf568, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0xf569, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0xf56a, bitSize: 0x1
        bool robotshield;
        // offset: 0xf56b, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0xf56c, bitSize: 0x1
        bool disableattachments;
        // offset: 0xf56d, bitSize: 0x1
        bool disablecompass;
        // offset: 0xf56e, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0xf56f, bitSize: 0x1
        bool escalationenabled;
        // offset: 0xf570, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0xf571, bitSize: 0x1
        bool hash_60a49038647cd9e7;
        // offset: 0xf572, bitSize: 0x1
        bool disableclassselection;
        // offset: 0xf573, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0xf574, bitSize: 0x1
        bool autoteambalance;
        // offset: 0xf575, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0xf576, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0xf577, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0xf578, bitSize: 0x1
        bool allowprone;
        // offset: 0xf579, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0xf57a, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0xf57b, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0xf57c, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0xf57d, bitSize: 0x1
        bool multibomb;
        // offset: 0xf57e, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0xf57f, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0xf580, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0xf581, bitSize: 0x1
        bool deathcircle;
        // offset: 0xf582, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0xf583, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0xf584, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0xf585, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0xf586, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0xf587, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0xf588, bitSize: 0x1
        bool deathpointloss;
        // offset: 0xf589, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0xf58a, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0xf58b, bitSize: 0x1
        bool rebootplayers;
        // offset: 0xf58c, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0xf58d, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0xf58e, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0xf58f, bitSize: 0x1
        bool allowspectating;
        // offset: 0xf590, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0xf591, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0xf592, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0xf593, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0xf594, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0xf595, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0xf596, bitSize: 0x1
        bool hash_3a8a97035505742;
        // offset: 0xf597, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0xf598, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0xf599, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0xf59a, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0xf59b, bitSize: 0x1
        bool disallowprone;
        // offset: 0xf59c, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0xf59d, bitSize: 0x1
        bool moveplayers;
        // offset: 0xf59e, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0xf59f, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0xf5a0, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0xf5a1, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0xf5a2, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0xf5a3, bitSize: 0x1
        bool zmdifficulty;
        // offset: 0xf5a4, bitSize: 0x1
        bool pvponly;
        // offset: 0xf5a5, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0xf5a6, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0xf5a7, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0xf5a8, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0xf5a9, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0xf5aa, bitSize: 0x1
        bool classicmode;
        // offset: 0xf5ab, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0xf5ac, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0xf5ad, bitSize: 0x1
        bool capdecay;
        // offset: 0xf5ae, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0xf5af, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0xf5b0, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0xf5b1, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0xf5b2, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0xf5b3, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // bitSize: 0xf8a0, members: 9
    struct hash_5d6e6de9167f1a56 {
        // offset: 0x0, bitSize: 0x200(0x40 Byte(s))
        string(64) gamedescription;
        // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x220, bitSize: 0x80(0x10 Byte(s))
        string(16) gamename;
        // offset: 0x2a0, bitSize: 0x40(0x8 Byte(s))
        string(8) gametype;
        // offset: 0x2e0, bitSize: 0xf5b8(0x1eb7 Byte(s))
        hash_2565a0443b27b26c gametypesettings;
        // offset: 0xf898, bitSize: 0x1
        bool inuse;
        // offset: 0xf899, bitSize: 0x1
        bool downloaded;
        // offset: 0xf89a, bitSize: 0x1
        bool isofficial;
    };

    // root: bitSize: 0x5d3e0, members: 2

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x5d3c0(0xba78 Byte(s)), array:0x6(hti:0xffff)
    hash_5d6e6de9167f1a56 customgames[6];
};

version hash_b60e2826582ad138 {
    // enums ..... 0 (0x0)
    // structs ... 11 (0xb)
    // header bit size .. 382192 (0x5d4f0)
    // header byte size . 47774 (0xba9e)

    // bitSize: 0x78, members: 8
    struct hash_2c79abcce61676aa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x78, members: 8
    struct hash_20631b664715b1fa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x168, members: 9
    struct hash_27580df06d232ed1 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:5 talent[6];
        // offset: 0x70, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0xe8, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
        // offset: 0x160, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x110, members: 4
    struct hash_1489c97943984433 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 herogadget;
        // offset: 0x20, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0x98, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
    };

    // bitSize: 0x1ef8, members: 12
    struct hash_71e57d488b0eb24d {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1680(0x2d0 Byte(s)), array:0x10(hti:0xffff)
        hash_27580df06d232ed1 customclass[16];
        // offset: 0x16b0, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1eb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x1ec0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x1ed0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x1ee0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x1ef0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1ef1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1ef2, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1938, members: 8
    struct hash_31d8d99be94a78b7 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1100(0x220 Byte(s)), array:0x10(hti:0xffff)
        hash_1489c97943984433 customclass[16];
        // offset: 0x1130, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1930, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1931, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1932, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1388, members: 17
    struct cacloadoutlistcustomgames_s {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        int:4 equippedbubblegumpack;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0xe10(0x1c2 Byte(s)), array:0xa(hti:0xffff)
        hash_27580df06d232ed1 customclass[10];
        // offset: 0xe40, bitSize: 0x8(0x1 Byte(s))
        byte herogadget;
        // offset: 0xe48, bitSize: 0x500(0xa0 Byte(s)), array:0xa(hti:0xffff)
        string(16) customclassname[10];
        // offset: 0x1348, bitSize: 0x8(0x1 Byte(s))
        byte heroweapon;
        // offset: 0x1350, bitSize: 0x8(0x1 Byte(s))
        byte killstreak1;
        // offset: 0x1358, bitSize: 0x8(0x1 Byte(s))
        byte killstreak2;
        // offset: 0x1360, bitSize: 0x8(0x1 Byte(s))
        byte killstreak3;
        // offset: 0x1368, bitSize: 0x8(0x1 Byte(s))
        byte killstreak4;
        // offset: 0x1370, bitSize: 0x8(0x1 Byte(s))
        byte killstreak5;
        // offset: 0x1378, bitSize: 0x8(0x1 Byte(s))
        byte killstreak6;
        // offset: 0x1380, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1381, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1382, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x3c0, members: 1
    struct hash_5fba00041f77a729 {
        // offset: 0x0, bitSize: 0x3c0(0x78 Byte(s)), array:0x78(hti:0xffff)
        uint:2 weaponindex[120];
    };

    // bitSize: 0xf5c8, members: 430
    struct hash_2565a0443b27b26c {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0x80, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x98, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0xd8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0xe8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        uint:2 friendlyfiretype;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x120, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x188, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x190, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayers;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x1c8, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x258, bitSize: 0x800(0x100 Byte(s)), array:0x100(hti:0xffff)
        uint:2 restricteditems[256];
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0xa60, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0xa70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0xaa0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0xab0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0xad0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0xb20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0xb30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0xb40, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0xb50, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0xb68, bitSize: 0xa500(0x14a0 Byte(s)), array:0x2c(hti:0xffff)
        hash_5fba00041f77a729 restrictedattachments[44];
        // offset: 0xb068, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0xb070, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0xb078, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0xb088, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0xb098, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0xb0a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0xb0a8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0xb0c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0xb0d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0xb0d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0xb0e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0xb0f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0xb108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0xb118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0xb128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0xb138, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0xb150, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0xb160, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0xb168, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0xb170, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0xb180, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0xb188, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0xb190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0xb1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0xb1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0xb1c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0xb1d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0xb1d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0xb1e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0xb1f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0xb1f8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0xb210, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0xb220, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0xb230, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0xb240, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0xb250, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0xb260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0xb270, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0xb278, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0xb288, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0xb290, bitSize: 0x80(0x10 Byte(s)), array:0x10(hti:0xffff)
        uint:5 maxuniquerolesperteam[16];
        // offset: 0xb310, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0xb318, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0xb330, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0xb338, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0xb340, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0xb358, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0xb360, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0xb368, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0xb378, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0xb380, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0xb390, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0xb3a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0xb3a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0xb3b8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0xb3c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0xb3c8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0xb3d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0xb3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0xb3f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0xb408, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0xb410, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xb418, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xb428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xb438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xb448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xb458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xb468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xb478, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xb488, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xb490, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xb4a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xb4a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xb4b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xb4b8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xb4c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xb4c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xb4d8, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xb4e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xb4f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xb4f8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xb500, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb508, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb510, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb518, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb528, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb538, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb550, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb558, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb568, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb570, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb578, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb588, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb598, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb5a8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb5b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xb5c0, bitSize: 0x8(0x1 Byte(s))
        uint:5 startround;
        // offset: 0xb5c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xb5d0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xb5d8, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xb5e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xb5e8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xb5f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xb5f8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xb610, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xb620, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xb628, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xb630, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xb640, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xb648, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xb650, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xb660, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xb668, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xb670, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xb678, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xb688, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xb690, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xb698, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xb6a0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xb6b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xb6b8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xb6c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xb6d8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xb6e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xb6e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xb700, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xb710, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xb720, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xb730, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xb738, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xb748, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xb758, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xb770, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xb778, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xb788, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xb790, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xb7b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xb7b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xb7c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xb7c8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xb7d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xb7e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xb7f8, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xb800, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xb808, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xb820, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xb830, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xb840, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xb850, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xb860, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xb868, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xb870, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xb880, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xb888, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xb890, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xb898, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xb8a0, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xb8a8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xb8b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xb8b8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xb8c0, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xb8c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xb8e0, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xb8e8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xb8f8, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xb900, bitSize: 0x3a98(0x753 Byte(s)), array:0x3(hti:0xffff)
        cacloadoutlistcustomgames_s cacloadouts[3];
        // offset: 0xf398, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xf3a0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xf3a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0xf3b0, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0xf3b8, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0xf3c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0xf3c8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0xf3d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0xf3e8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0xf3f0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0xf408, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamcount;
        // offset: 0xf410, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0xf430, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0xf438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0xf448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0xf458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0xf468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0xf478, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0xf488, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0xf498, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0xf4a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0xf4b0, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0xf4d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0xf4d8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0xf4f0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0xf508, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0xf510, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0xf520, bitSize: 0x1
        bool delayplayer;
        // offset: 0xf521, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0xf522, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0xf523, bitSize: 0x1
        bool magic;
        // offset: 0xf524, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0xf525, bitSize: 0x1
        bool draftenabled;
        // offset: 0xf526, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0xf527, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0xf528, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0xf529, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0xf52a, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0xf52b, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0xf52c, bitSize: 0x1
        bool allowdogs;
        // offset: 0xf52d, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0xf52e, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0xf52f, bitSize: 0x1
        bool hash_6e051e440a6c3b91;
        // offset: 0xf530, bitSize: 0x1
        bool hash_612a91feb7ce6f9a;
        // offset: 0xf531, bitSize: 0x1
        bool hardcoremode;
        // offset: 0xf532, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0xf533, bitSize: 0x1
        bool silentplant;
        // offset: 0xf534, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0xf535, bitSize: 0x1
        bool drafteveryround;
        // offset: 0xf536, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0xf537, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0xf538, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0xf539, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0xf53a, bitSize: 0x1
        bool kothmode;
        // offset: 0xf53b, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0xf53c, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0xf53d, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0xf53e, bitSize: 0x1
        bool decayprogress;
        // offset: 0xf53f, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0xf540, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0xf541, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0xf542, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0xf543, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0xf544, bitSize: 0x1
        bool hash_55a9555dfd9d0c6;
        // offset: 0xf545, bitSize: 0x1
        bool usespawngroups;
        // offset: 0xf546, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0xf547, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0xf548, bitSize: 0x1
        bool platoonassignment;
        // offset: 0xf549, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0xf54a, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0xf54b, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0xf54c, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0xf54d, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0xf54e, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0xf54f, bitSize: 0x1
        bool hash_678c1d3307b1d73a;
        // offset: 0xf550, bitSize: 0x1
        bool headshotsonly;
        // offset: 0xf551, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0xf552, bitSize: 0x1
        bool disablecontracts;
        // offset: 0xf553, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0xf554, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0xf555, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0xf556, bitSize: 0x1
        bool hash_6138c30c393776de;
        // offset: 0xf557, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0xf558, bitSize: 0x1
        bool allowannouncer;
        // offset: 0xf559, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0xf55a, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0xf55b, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0xf55c, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0xf55d, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0xf55e, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0xf55f, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0xf560, bitSize: 0x1
        bool neutralzone;
        // offset: 0xf561, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0xf562, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0xf563, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0xf564, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0xf565, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0xf566, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0xf567, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0xf568, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0xf569, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0xf56a, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0xf56b, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0xf56c, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0xf56d, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0xf56e, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0xf56f, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0xf570, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0xf571, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0xf572, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0xf573, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0xf574, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0xf575, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0xf576, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0xf577, bitSize: 0x1
        bool perksenabled;
        // offset: 0xf578, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0xf579, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0xf57a, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0xf57b, bitSize: 0x1
        bool robotshield;
        // offset: 0xf57c, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0xf57d, bitSize: 0x1
        bool disableattachments;
        // offset: 0xf57e, bitSize: 0x1
        bool disablecompass;
        // offset: 0xf57f, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0xf580, bitSize: 0x1
        bool escalationenabled;
        // offset: 0xf581, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0xf582, bitSize: 0x1
        bool hash_60a49038647cd9e7;
        // offset: 0xf583, bitSize: 0x1
        bool disableclassselection;
        // offset: 0xf584, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0xf585, bitSize: 0x1
        bool autoteambalance;
        // offset: 0xf586, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0xf587, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0xf588, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0xf589, bitSize: 0x1
        bool allowprone;
        // offset: 0xf58a, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0xf58b, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0xf58c, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0xf58d, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0xf58e, bitSize: 0x1
        bool multibomb;
        // offset: 0xf58f, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0xf590, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0xf591, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0xf592, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0xf593, bitSize: 0x1
        bool deathcircle;
        // offset: 0xf594, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0xf595, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0xf596, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0xf597, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0xf598, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0xf599, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0xf59a, bitSize: 0x1
        bool deathpointloss;
        // offset: 0xf59b, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0xf59c, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0xf59d, bitSize: 0x1
        bool rebootplayers;
        // offset: 0xf59e, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0xf59f, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0xf5a0, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0xf5a1, bitSize: 0x1
        bool allowspectating;
        // offset: 0xf5a2, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0xf5a3, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0xf5a4, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0xf5a5, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0xf5a6, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0xf5a7, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0xf5a8, bitSize: 0x1
        bool hash_3a8a97035505742;
        // offset: 0xf5a9, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0xf5aa, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0xf5ab, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0xf5ac, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0xf5ad, bitSize: 0x1
        bool disallowprone;
        // offset: 0xf5ae, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0xf5af, bitSize: 0x1
        bool moveplayers;
        // offset: 0xf5b0, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0xf5b1, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0xf5b2, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0xf5b3, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0xf5b4, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0xf5b5, bitSize: 0x1
        bool zmdifficulty;
        // offset: 0xf5b6, bitSize: 0x1
        bool pvponly;
        // offset: 0xf5b7, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0xf5b8, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0xf5b9, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0xf5ba, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0xf5bb, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0xf5bc, bitSize: 0x1
        bool classicmode;
        // offset: 0xf5bd, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0xf5be, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0xf5bf, bitSize: 0x1
        bool capdecay;
        // offset: 0xf5c0, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0xf5c1, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0xf5c2, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0xf5c3, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0xf5c4, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0xf5c5, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // bitSize: 0xf8b0, members: 9
    struct hash_5d6e6de9167f1a56 {
        // offset: 0x0, bitSize: 0x200(0x40 Byte(s))
        string(64) gamedescription;
        // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x220, bitSize: 0x80(0x10 Byte(s))
        string(16) gamename;
        // offset: 0x2a0, bitSize: 0x40(0x8 Byte(s))
        string(8) gametype;
        // offset: 0x2e0, bitSize: 0xf5c8(0x1eb9 Byte(s))
        hash_2565a0443b27b26c gametypesettings;
        // offset: 0xf8a8, bitSize: 0x1
        bool inuse;
        // offset: 0xf8a9, bitSize: 0x1
        bool downloaded;
        // offset: 0xf8aa, bitSize: 0x1
        bool isofficial;
    };

    // root: bitSize: 0x5d440, members: 2

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x5d420(0xba84 Byte(s)), array:0x6(hti:0xffff)
    hash_5d6e6de9167f1a56 customgames[6];
};

version hash_ea771c83c5ee33d3 {
    // enums ..... 0 (0x0)
    // structs ... 11 (0xb)
    // header bit size .. 382192 (0x5d4f0)
    // header byte size . 47774 (0xba9e)

    // bitSize: 0x78, members: 8
    struct hash_2c79abcce61676aa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x78, members: 8
    struct hash_20631b664715b1fa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x168, members: 9
    struct hash_27580df06d232ed1 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:5 talent[6];
        // offset: 0x70, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0xe8, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
        // offset: 0x160, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x110, members: 4
    struct hash_1489c97943984433 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 herogadget;
        // offset: 0x20, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0x98, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
    };

    // bitSize: 0x1ef8, members: 12
    struct hash_71e57d488b0eb24d {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1680(0x2d0 Byte(s)), array:0x10(hti:0xffff)
        hash_27580df06d232ed1 customclass[16];
        // offset: 0x16b0, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1eb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x1ec0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x1ed0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x1ee0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x1ef0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1ef1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1ef2, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1938, members: 8
    struct hash_31d8d99be94a78b7 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1100(0x220 Byte(s)), array:0x10(hti:0xffff)
        hash_1489c97943984433 customclass[16];
        // offset: 0x1130, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1930, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1931, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1932, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1388, members: 17
    struct cacloadoutlistcustomgames_s {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        int:4 equippedbubblegumpack;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0xe10(0x1c2 Byte(s)), array:0xa(hti:0xffff)
        hash_27580df06d232ed1 customclass[10];
        // offset: 0xe40, bitSize: 0x8(0x1 Byte(s))
        byte herogadget;
        // offset: 0xe48, bitSize: 0x500(0xa0 Byte(s)), array:0xa(hti:0xffff)
        string(16) customclassname[10];
        // offset: 0x1348, bitSize: 0x8(0x1 Byte(s))
        byte heroweapon;
        // offset: 0x1350, bitSize: 0x8(0x1 Byte(s))
        byte killstreak1;
        // offset: 0x1358, bitSize: 0x8(0x1 Byte(s))
        byte killstreak2;
        // offset: 0x1360, bitSize: 0x8(0x1 Byte(s))
        byte killstreak3;
        // offset: 0x1368, bitSize: 0x8(0x1 Byte(s))
        byte killstreak4;
        // offset: 0x1370, bitSize: 0x8(0x1 Byte(s))
        byte killstreak5;
        // offset: 0x1378, bitSize: 0x8(0x1 Byte(s))
        byte killstreak6;
        // offset: 0x1380, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1381, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1382, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x3c0, members: 1
    struct hash_5fba00041f77a729 {
        // offset: 0x0, bitSize: 0x3c0(0x78 Byte(s)), array:0x78(hti:0xffff)
        uint:2 weaponindex[120];
    };

    // bitSize: 0xf5c8, members: 431
    struct hash_2565a0443b27b26c {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0x80, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x98, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0xd8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0xe8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        uint:2 friendlyfiretype;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x120, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x188, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x190, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayers;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x1c8, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x258, bitSize: 0x800(0x100 Byte(s)), array:0x100(hti:0xffff)
        uint:2 restricteditems[256];
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0xa60, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0xa70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0xaa0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0xab0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0xad0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0xb20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0xb30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0xb40, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0xb50, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0xb68, bitSize: 0xa500(0x14a0 Byte(s)), array:0x2c(hti:0xffff)
        hash_5fba00041f77a729 restrictedattachments[44];
        // offset: 0xb068, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0xb070, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0xb078, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0xb088, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0xb098, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0xb0a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0xb0a8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0xb0c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0xb0d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0xb0d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0xb0e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0xb0f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0xb108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0xb118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0xb128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0xb138, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0xb150, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0xb160, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0xb168, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0xb170, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0xb180, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0xb188, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0xb190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0xb1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0xb1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0xb1c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0xb1d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0xb1d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0xb1e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0xb1f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0xb1f8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0xb210, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0xb220, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0xb230, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0xb240, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0xb250, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0xb260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0xb270, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0xb278, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0xb288, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0xb290, bitSize: 0x80(0x10 Byte(s)), array:0x10(hti:0xffff)
        uint:5 maxuniquerolesperteam[16];
        // offset: 0xb310, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0xb318, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0xb330, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0xb338, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0xb340, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0xb358, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0xb360, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0xb368, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0xb378, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0xb380, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0xb390, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0xb3a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0xb3a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0xb3b8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0xb3c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0xb3c8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0xb3d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0xb3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0xb3f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0xb408, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0xb410, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xb418, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xb428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xb438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xb448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xb458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xb468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xb478, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xb488, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xb490, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xb4a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xb4a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xb4b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xb4b8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xb4c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xb4c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xb4d8, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xb4e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xb4f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xb4f8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xb500, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb508, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb510, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb518, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb528, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb538, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb550, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb558, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb568, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb570, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb578, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb588, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb598, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb5a8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb5b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xb5c0, bitSize: 0x8(0x1 Byte(s))
        uint:5 startround;
        // offset: 0xb5c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xb5d0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xb5d8, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xb5e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xb5e8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xb5f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xb5f8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xb610, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xb620, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xb628, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xb630, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xb640, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xb648, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xb650, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xb660, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xb668, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xb670, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xb678, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xb688, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xb690, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xb698, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xb6a0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xb6b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xb6b8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xb6c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xb6d8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xb6e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xb6e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xb700, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xb710, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xb720, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xb730, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xb738, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xb748, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xb758, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xb770, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xb778, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xb788, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xb790, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xb7b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xb7b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xb7c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xb7c8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xb7d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xb7e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xb7f8, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xb800, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xb808, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xb820, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xb830, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xb840, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xb850, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xb860, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xb868, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xb870, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xb880, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xb888, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xb890, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xb898, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xb8a0, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xb8a8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xb8b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xb8b8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xb8c0, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xb8c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xb8e0, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xb8e8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xb8f8, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xb900, bitSize: 0x3a98(0x753 Byte(s)), array:0x3(hti:0xffff)
        cacloadoutlistcustomgames_s cacloadouts[3];
        // offset: 0xf398, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xf3a0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xf3a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0xf3b0, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0xf3b8, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0xf3c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0xf3c8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0xf3d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0xf3e8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0xf3f0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0xf408, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamcount;
        // offset: 0xf410, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0xf430, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0xf438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0xf448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0xf458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0xf468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0xf478, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0xf488, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0xf498, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0xf4a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0xf4b0, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0xf4d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0xf4d8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0xf4f0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0xf508, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0xf510, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0xf520, bitSize: 0x1
        bool delayplayer;
        // offset: 0xf521, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0xf522, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0xf523, bitSize: 0x1
        bool magic;
        // offset: 0xf524, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0xf525, bitSize: 0x1
        bool draftenabled;
        // offset: 0xf526, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0xf527, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0xf528, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0xf529, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0xf52a, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0xf52b, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0xf52c, bitSize: 0x1
        bool allowdogs;
        // offset: 0xf52d, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0xf52e, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0xf52f, bitSize: 0x1
        bool hash_6e051e440a6c3b91;
        // offset: 0xf530, bitSize: 0x1
        bool hash_612a91feb7ce6f9a;
        // offset: 0xf531, bitSize: 0x1
        bool hardcoremode;
        // offset: 0xf532, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0xf533, bitSize: 0x1
        bool silentplant;
        // offset: 0xf534, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0xf535, bitSize: 0x1
        bool drafteveryround;
        // offset: 0xf536, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0xf537, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0xf538, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0xf539, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0xf53a, bitSize: 0x1
        bool kothmode;
        // offset: 0xf53b, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0xf53c, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0xf53d, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0xf53e, bitSize: 0x1
        bool decayprogress;
        // offset: 0xf53f, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0xf540, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0xf541, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0xf542, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0xf543, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0xf544, bitSize: 0x1
        bool hash_55a9555dfd9d0c6;
        // offset: 0xf545, bitSize: 0x1
        bool usespawngroups;
        // offset: 0xf546, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0xf547, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0xf548, bitSize: 0x1
        bool platoonassignment;
        // offset: 0xf549, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0xf54a, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0xf54b, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0xf54c, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0xf54d, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0xf54e, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0xf54f, bitSize: 0x1
        bool hash_678c1d3307b1d73a;
        // offset: 0xf550, bitSize: 0x1
        bool headshotsonly;
        // offset: 0xf551, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0xf552, bitSize: 0x1
        bool disablecontracts;
        // offset: 0xf553, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0xf554, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0xf555, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0xf556, bitSize: 0x1
        bool hash_6138c30c393776de;
        // offset: 0xf557, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0xf558, bitSize: 0x1
        bool allowannouncer;
        // offset: 0xf559, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0xf55a, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0xf55b, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0xf55c, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0xf55d, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0xf55e, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0xf55f, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0xf560, bitSize: 0x1
        bool neutralzone;
        // offset: 0xf561, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0xf562, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0xf563, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0xf564, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0xf565, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0xf566, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0xf567, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0xf568, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0xf569, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0xf56a, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0xf56b, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0xf56c, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0xf56d, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0xf56e, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0xf56f, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0xf570, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0xf571, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0xf572, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0xf573, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0xf574, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0xf575, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0xf576, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0xf577, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0xf578, bitSize: 0x1
        bool perksenabled;
        // offset: 0xf579, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0xf57a, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0xf57b, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0xf57c, bitSize: 0x1
        bool robotshield;
        // offset: 0xf57d, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0xf57e, bitSize: 0x1
        bool disableattachments;
        // offset: 0xf57f, bitSize: 0x1
        bool disablecompass;
        // offset: 0xf580, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0xf581, bitSize: 0x1
        bool escalationenabled;
        // offset: 0xf582, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0xf583, bitSize: 0x1
        bool hash_60a49038647cd9e7;
        // offset: 0xf584, bitSize: 0x1
        bool disableclassselection;
        // offset: 0xf585, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0xf586, bitSize: 0x1
        bool autoteambalance;
        // offset: 0xf587, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0xf588, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0xf589, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0xf58a, bitSize: 0x1
        bool allowprone;
        // offset: 0xf58b, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0xf58c, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0xf58d, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0xf58e, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0xf58f, bitSize: 0x1
        bool multibomb;
        // offset: 0xf590, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0xf591, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0xf592, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0xf593, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0xf594, bitSize: 0x1
        bool deathcircle;
        // offset: 0xf595, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0xf596, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0xf597, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0xf598, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0xf599, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0xf59a, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0xf59b, bitSize: 0x1
        bool deathpointloss;
        // offset: 0xf59c, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0xf59d, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0xf59e, bitSize: 0x1
        bool rebootplayers;
        // offset: 0xf59f, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0xf5a0, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0xf5a1, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0xf5a2, bitSize: 0x1
        bool allowspectating;
        // offset: 0xf5a3, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0xf5a4, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0xf5a5, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0xf5a6, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0xf5a7, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0xf5a8, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0xf5a9, bitSize: 0x1
        bool hash_3a8a97035505742;
        // offset: 0xf5aa, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0xf5ab, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0xf5ac, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0xf5ad, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0xf5ae, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0xf5af, bitSize: 0x1
        bool disallowprone;
        // offset: 0xf5b0, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0xf5b1, bitSize: 0x1
        bool moveplayers;
        // offset: 0xf5b2, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0xf5b3, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0xf5b4, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0xf5b5, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0xf5b6, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0xf5b7, bitSize: 0x1
        bool zmdifficulty;
        // offset: 0xf5b8, bitSize: 0x1
        bool pvponly;
        // offset: 0xf5b9, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0xf5ba, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0xf5bb, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0xf5bc, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0xf5bd, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0xf5be, bitSize: 0x1
        bool classicmode;
        // offset: 0xf5bf, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0xf5c0, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0xf5c1, bitSize: 0x1
        bool capdecay;
        // offset: 0xf5c2, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0xf5c3, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0xf5c4, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0xf5c5, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0xf5c6, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0xf5c7, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // bitSize: 0xf8b0, members: 9
    struct hash_5d6e6de9167f1a56 {
        // offset: 0x0, bitSize: 0x200(0x40 Byte(s))
        string(64) gamedescription;
        // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x220, bitSize: 0x80(0x10 Byte(s))
        string(16) gamename;
        // offset: 0x2a0, bitSize: 0x40(0x8 Byte(s))
        string(8) gametype;
        // offset: 0x2e0, bitSize: 0xf5c8(0x1eb9 Byte(s))
        hash_2565a0443b27b26c gametypesettings;
        // offset: 0xf8a8, bitSize: 0x1
        bool inuse;
        // offset: 0xf8a9, bitSize: 0x1
        bool downloaded;
        // offset: 0xf8aa, bitSize: 0x1
        bool isofficial;
    };

    // root: bitSize: 0x5d440, members: 2

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x5d420(0xba84 Byte(s)), array:0x6(hti:0xffff)
    hash_5d6e6de9167f1a56 customgames[6];
};

version hash_e3ce375ebeed6d21 {
    // enums ..... 0 (0x0)
    // structs ... 11 (0xb)
    // header bit size .. 382480 (0x5d610)
    // header byte size . 47810 (0xbac2)

    // bitSize: 0x78, members: 8
    struct hash_2c79abcce61676aa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x78, members: 8
    struct hash_20631b664715b1fa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x168, members: 9
    struct hash_27580df06d232ed1 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:5 talent[6];
        // offset: 0x70, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0xe8, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
        // offset: 0x160, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x110, members: 4
    struct hash_1489c97943984433 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 herogadget;
        // offset: 0x20, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0x98, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
    };

    // bitSize: 0x1ef8, members: 12
    struct hash_71e57d488b0eb24d {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1680(0x2d0 Byte(s)), array:0x10(hti:0xffff)
        hash_27580df06d232ed1 customclass[16];
        // offset: 0x16b0, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1eb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x1ec0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x1ed0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x1ee0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x1ef0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1ef1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1ef2, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1938, members: 8
    struct hash_31d8d99be94a78b7 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1100(0x220 Byte(s)), array:0x10(hti:0xffff)
        hash_1489c97943984433 customclass[16];
        // offset: 0x1130, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1930, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1931, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1932, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1388, members: 17
    struct cacloadoutlistcustomgames_s {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        int:4 equippedbubblegumpack;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0xe10(0x1c2 Byte(s)), array:0xa(hti:0xffff)
        hash_27580df06d232ed1 customclass[10];
        // offset: 0xe40, bitSize: 0x8(0x1 Byte(s))
        byte herogadget;
        // offset: 0xe48, bitSize: 0x500(0xa0 Byte(s)), array:0xa(hti:0xffff)
        string(16) customclassname[10];
        // offset: 0x1348, bitSize: 0x8(0x1 Byte(s))
        byte heroweapon;
        // offset: 0x1350, bitSize: 0x8(0x1 Byte(s))
        byte killstreak1;
        // offset: 0x1358, bitSize: 0x8(0x1 Byte(s))
        byte killstreak2;
        // offset: 0x1360, bitSize: 0x8(0x1 Byte(s))
        byte killstreak3;
        // offset: 0x1368, bitSize: 0x8(0x1 Byte(s))
        byte killstreak4;
        // offset: 0x1370, bitSize: 0x8(0x1 Byte(s))
        byte killstreak5;
        // offset: 0x1378, bitSize: 0x8(0x1 Byte(s))
        byte killstreak6;
        // offset: 0x1380, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1381, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1382, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x3c0, members: 1
    struct hash_5fba00041f77a729 {
        // offset: 0x0, bitSize: 0x3c0(0x78 Byte(s)), array:0x78(hti:0xffff)
        uint:2 weaponindex[120];
    };

    // bitSize: 0xf5f8, members: 435
    struct hash_2565a0443b27b26c {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0x80, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x98, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0xd8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0xe8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        uint:2 friendlyfiretype;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x120, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x188, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x190, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayers;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x1c8, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x258, bitSize: 0x800(0x100 Byte(s)), array:0x100(hti:0xffff)
        uint:2 restricteditems[256];
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0xa60, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0xa70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0xaa0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0xab0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0xad0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0xb20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0xb30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0xb40, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0xb50, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0xb68, bitSize: 0xa500(0x14a0 Byte(s)), array:0x2c(hti:0xffff)
        hash_5fba00041f77a729 restrictedattachments[44];
        // offset: 0xb068, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0xb070, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0xb078, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0xb088, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0xb098, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0xb0a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0xb0a8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0xb0c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0xb0d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0xb0d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0xb0e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0xb0f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0xb108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0xb118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0xb128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0xb138, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0xb150, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0xb160, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0xb168, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0xb170, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0xb180, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0xb188, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0xb190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0xb1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0xb1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0xb1c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0xb1d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0xb1d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0xb1e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0xb1f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0xb1f8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0xb210, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0xb220, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0xb230, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0xb240, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0xb250, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0xb260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0xb270, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0xb278, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0xb288, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0xb290, bitSize: 0x80(0x10 Byte(s)), array:0x10(hti:0xffff)
        uint:5 maxuniquerolesperteam[16];
        // offset: 0xb310, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0xb318, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0xb330, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0xb338, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0xb340, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0xb358, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0xb360, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0xb368, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0xb378, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0xb380, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0xb390, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0xb3a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0xb3a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0xb3b8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0xb3c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0xb3c8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0xb3d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0xb3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0xb3f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0xb408, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0xb410, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xb418, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xb428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xb438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xb448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xb458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xb468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xb478, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xb488, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xb490, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xb4a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xb4a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xb4b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xb4b8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xb4c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xb4c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xb4d8, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xb4e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xb4f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xb4f8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xb500, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb508, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb510, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb518, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb528, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb538, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb550, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb558, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb568, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb570, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb578, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb588, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb598, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb5a8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb5b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xb5c0, bitSize: 0x8(0x1 Byte(s))
        uint:5 startround;
        // offset: 0xb5c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xb5d0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xb5d8, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xb5e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xb5e8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xb5f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xb5f8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xb610, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xb620, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xb628, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xb630, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xb640, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xb648, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xb650, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xb660, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xb668, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xb670, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xb678, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xb688, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xb690, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xb698, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xb6a0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xb6b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xb6b8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xb6c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xb6d8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xb6e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xb6e8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0xb6f8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xb710, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xb720, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xb730, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xb740, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xb748, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xb758, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xb768, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xb780, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xb788, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xb798, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xb7a0, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xb7c0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xb7c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xb7d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xb7d8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xb7e8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xb7f0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xb808, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xb810, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xb818, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xb830, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xb840, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xb850, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xb860, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xb870, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xb878, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xb880, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xb890, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xb898, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xb8a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xb8a8, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xb8b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xb8b8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xb8c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xb8c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xb8d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0xb8e8, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xb8f0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xb908, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xb910, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xb920, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xb928, bitSize: 0x3a98(0x753 Byte(s)), array:0x3(hti:0xffff)
        cacloadoutlistcustomgames_s cacloadouts[3];
        // offset: 0xf3c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xf3c8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xf3d0, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0xf3d8, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0xf3e0, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0xf3e8, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0xf3f0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0xf400, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0xf410, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0xf418, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0xf430, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamcount;
        // offset: 0xf438, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0xf458, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0xf460, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0xf470, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0xf480, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0xf490, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0xf4a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0xf4b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0xf4c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0xf4d0, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0xf4d8, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0xf4f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0xf500, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0xf518, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0xf530, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0xf538, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0xf548, bitSize: 0x1
        bool delayplayer;
        // offset: 0xf549, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0xf54a, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0xf54b, bitSize: 0x1
        bool magic;
        // offset: 0xf54c, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0xf54d, bitSize: 0x1
        bool draftenabled;
        // offset: 0xf54e, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0xf54f, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0xf550, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0xf551, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0xf552, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0xf553, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0xf554, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0xf555, bitSize: 0x1
        bool allowdogs;
        // offset: 0xf556, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0xf557, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0xf558, bitSize: 0x1
        bool hash_6e051e440a6c3b91;
        // offset: 0xf559, bitSize: 0x1
        bool hash_612a91feb7ce6f9a;
        // offset: 0xf55a, bitSize: 0x1
        bool hardcoremode;
        // offset: 0xf55b, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0xf55c, bitSize: 0x1
        bool silentplant;
        // offset: 0xf55d, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0xf55e, bitSize: 0x1
        bool drafteveryround;
        // offset: 0xf55f, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0xf560, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0xf561, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0xf562, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0xf563, bitSize: 0x1
        bool kothmode;
        // offset: 0xf564, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0xf565, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0xf566, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0xf567, bitSize: 0x1
        bool decayprogress;
        // offset: 0xf568, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0xf569, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0xf56a, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0xf56b, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0xf56c, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0xf56d, bitSize: 0x1
        bool hash_55a9555dfd9d0c6;
        // offset: 0xf56e, bitSize: 0x1
        bool usespawngroups;
        // offset: 0xf56f, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0xf570, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0xf571, bitSize: 0x1
        bool platoonassignment;
        // offset: 0xf572, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0xf573, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0xf574, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0xf575, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0xf576, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0xf577, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0xf578, bitSize: 0x1
        bool hash_678c1d3307b1d73a;
        // offset: 0xf579, bitSize: 0x1
        bool headshotsonly;
        // offset: 0xf57a, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0xf57b, bitSize: 0x1
        bool disablecontracts;
        // offset: 0xf57c, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0xf57d, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0xf57e, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0xf57f, bitSize: 0x1
        bool hash_6138c30c393776de;
        // offset: 0xf580, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0xf581, bitSize: 0x1
        bool allowannouncer;
        // offset: 0xf582, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0xf583, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0xf584, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0xf585, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0xf586, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0xf587, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0xf588, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0xf589, bitSize: 0x1
        bool neutralzone;
        // offset: 0xf58a, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0xf58b, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0xf58c, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0xf58d, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0xf58e, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0xf58f, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0xf590, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0xf591, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0xf592, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0xf593, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0xf594, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0xf595, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0xf596, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0xf597, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0xf598, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0xf599, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0xf59a, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0xf59b, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0xf59c, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0xf59d, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0xf59e, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0xf59f, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0xf5a0, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0xf5a1, bitSize: 0x1
        bool perksenabled;
        // offset: 0xf5a2, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0xf5a3, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0xf5a4, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0xf5a5, bitSize: 0x1
        bool robotshield;
        // offset: 0xf5a6, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0xf5a7, bitSize: 0x1
        bool disableattachments;
        // offset: 0xf5a8, bitSize: 0x1
        bool disablecompass;
        // offset: 0xf5a9, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0xf5aa, bitSize: 0x1
        bool escalationenabled;
        // offset: 0xf5ab, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0xf5ac, bitSize: 0x1
        bool hash_60a49038647cd9e7;
        // offset: 0xf5ad, bitSize: 0x1
        bool disableclassselection;
        // offset: 0xf5ae, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0xf5af, bitSize: 0x1
        bool autoteambalance;
        // offset: 0xf5b0, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0xf5b1, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0xf5b2, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0xf5b3, bitSize: 0x1
        bool allowprone;
        // offset: 0xf5b4, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0xf5b5, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0xf5b6, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0xf5b7, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0xf5b8, bitSize: 0x1
        bool multibomb;
        // offset: 0xf5b9, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0xf5ba, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0xf5bb, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0xf5bc, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0xf5bd, bitSize: 0x1
        bool deathcircle;
        // offset: 0xf5be, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0xf5bf, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0xf5c0, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0xf5c1, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0xf5c2, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0xf5c3, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0xf5c4, bitSize: 0x1
        bool deathpointloss;
        // offset: 0xf5c5, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0xf5c6, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0xf5c7, bitSize: 0x1
        bool rebootplayers;
        // offset: 0xf5c8, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0xf5c9, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0xf5ca, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0xf5cb, bitSize: 0x1
        bool allowspectating;
        // offset: 0xf5cc, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0xf5cd, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0xf5ce, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0xf5cf, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0xf5d0, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0xf5d1, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0xf5d2, bitSize: 0x1
        bool hash_3a8a97035505742;
        // offset: 0xf5d3, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0xf5d4, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0xf5d5, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0xf5d6, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0xf5d7, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0xf5d8, bitSize: 0x1
        bool disallowprone;
        // offset: 0xf5d9, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0xf5da, bitSize: 0x1
        bool moveplayers;
        // offset: 0xf5db, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0xf5dc, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0xf5dd, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0xf5de, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0xf5df, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0xf5e0, bitSize: 0x1
        bool zmdifficulty;
        // offset: 0xf5e1, bitSize: 0x1
        bool pvponly;
        // offset: 0xf5e2, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0xf5e3, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0xf5e4, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0xf5e5, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0xf5e6, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0xf5e7, bitSize: 0x1
        bool classicmode;
        // offset: 0xf5e8, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0xf5e9, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0xf5ea, bitSize: 0x1
        bool capdecay;
        // offset: 0xf5eb, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0xf5ec, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0xf5ed, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0xf5ee, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0xf5ef, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0xf5f0, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // bitSize: 0xf8e0, members: 9
    struct hash_5d6e6de9167f1a56 {
        // offset: 0x0, bitSize: 0x200(0x40 Byte(s))
        string(64) gamedescription;
        // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x220, bitSize: 0x80(0x10 Byte(s))
        string(16) gamename;
        // offset: 0x2a0, bitSize: 0x40(0x8 Byte(s))
        string(8) gametype;
        // offset: 0x2e0, bitSize: 0xf5f8(0x1ebf Byte(s))
        hash_2565a0443b27b26c gametypesettings;
        // offset: 0xf8d8, bitSize: 0x1
        bool inuse;
        // offset: 0xf8d9, bitSize: 0x1
        bool downloaded;
        // offset: 0xf8da, bitSize: 0x1
        bool isofficial;
    };

    // root: bitSize: 0x5d560, members: 2

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x5d540(0xbaa8 Byte(s)), array:0x6(hti:0xffff)
    hash_5d6e6de9167f1a56 customgames[6];
};

version hash_9935b96e07832d9e {
    // enums ..... 0 (0x0)
    // structs ... 11 (0xb)
    // header bit size .. 382480 (0x5d610)
    // header byte size . 47810 (0xbac2)

    // bitSize: 0x78, members: 8
    struct hash_2c79abcce61676aa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x78, members: 8
    struct hash_20631b664715b1fa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x168, members: 9
    struct hash_27580df06d232ed1 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:5 talent[6];
        // offset: 0x70, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0xe8, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
        // offset: 0x160, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x110, members: 4
    struct hash_1489c97943984433 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 herogadget;
        // offset: 0x20, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0x98, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
    };

    // bitSize: 0x1ef8, members: 12
    struct hash_71e57d488b0eb24d {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1680(0x2d0 Byte(s)), array:0x10(hti:0xffff)
        hash_27580df06d232ed1 customclass[16];
        // offset: 0x16b0, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1eb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x1ec0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x1ed0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x1ee0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x1ef0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1ef1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1ef2, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1938, members: 8
    struct hash_31d8d99be94a78b7 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1100(0x220 Byte(s)), array:0x10(hti:0xffff)
        hash_1489c97943984433 customclass[16];
        // offset: 0x1130, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1930, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1931, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1932, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1388, members: 17
    struct cacloadoutlistcustomgames_s {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        int:4 equippedbubblegumpack;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0xe10(0x1c2 Byte(s)), array:0xa(hti:0xffff)
        hash_27580df06d232ed1 customclass[10];
        // offset: 0xe40, bitSize: 0x8(0x1 Byte(s))
        byte herogadget;
        // offset: 0xe48, bitSize: 0x500(0xa0 Byte(s)), array:0xa(hti:0xffff)
        string(16) customclassname[10];
        // offset: 0x1348, bitSize: 0x8(0x1 Byte(s))
        byte heroweapon;
        // offset: 0x1350, bitSize: 0x8(0x1 Byte(s))
        byte killstreak1;
        // offset: 0x1358, bitSize: 0x8(0x1 Byte(s))
        byte killstreak2;
        // offset: 0x1360, bitSize: 0x8(0x1 Byte(s))
        byte killstreak3;
        // offset: 0x1368, bitSize: 0x8(0x1 Byte(s))
        byte killstreak4;
        // offset: 0x1370, bitSize: 0x8(0x1 Byte(s))
        byte killstreak5;
        // offset: 0x1378, bitSize: 0x8(0x1 Byte(s))
        byte killstreak6;
        // offset: 0x1380, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1381, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1382, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x3c0, members: 1
    struct hash_5fba00041f77a729 {
        // offset: 0x0, bitSize: 0x3c0(0x78 Byte(s)), array:0x78(hti:0xffff)
        uint:2 weaponindex[120];
    };

    // bitSize: 0xf5f8, members: 436
    struct hash_2565a0443b27b26c {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0x80, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x98, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0xd8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0xe8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        uint:2 friendlyfiretype;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x120, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x188, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x190, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayers;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x1c8, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x258, bitSize: 0x800(0x100 Byte(s)), array:0x100(hti:0xffff)
        uint:2 restricteditems[256];
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0xa60, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        uint:3 randomobjectivelocations;
        // offset: 0xa70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0xaa0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0xab0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0xad0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0xb20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0xb30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0xb40, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0xb50, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0xb68, bitSize: 0xa500(0x14a0 Byte(s)), array:0x2c(hti:0xffff)
        hash_5fba00041f77a729 restrictedattachments[44];
        // offset: 0xb068, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0xb070, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0xb078, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0xb088, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0xb098, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0xb0a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0xb0a8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0xb0c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0xb0d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0xb0d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0xb0e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0xb0f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0xb108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0xb118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0xb128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0xb138, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0xb150, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0xb160, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0xb168, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0xb170, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0xb180, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0xb188, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0xb190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0xb1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0xb1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0xb1c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0xb1d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0xb1d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0xb1e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0xb1f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0xb1f8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0xb210, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0xb220, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0xb230, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0xb240, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0xb250, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0xb260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0xb270, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0xb278, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0xb288, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0xb290, bitSize: 0x80(0x10 Byte(s)), array:0x10(hti:0xffff)
        uint:5 maxuniquerolesperteam[16];
        // offset: 0xb310, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0xb318, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0xb330, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0xb338, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0xb340, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0xb358, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0xb360, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0xb368, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0xb378, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0xb380, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0xb390, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0xb3a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0xb3a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0xb3b8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0xb3c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0xb3c8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0xb3d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0xb3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0xb3f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0xb408, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0xb410, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xb418, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xb428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xb438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xb448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xb458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xb468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xb478, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xb488, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xb490, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xb4a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xb4a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xb4b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xb4b8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xb4c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xb4c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xb4d8, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xb4e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xb4f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xb4f8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xb500, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb508, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb510, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb518, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb528, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb538, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb550, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb558, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb568, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb570, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb578, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb588, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb598, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb5a8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb5b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xb5c0, bitSize: 0x8(0x1 Byte(s))
        uint:5 startround;
        // offset: 0xb5c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xb5d0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xb5d8, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xb5e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xb5e8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xb5f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xb5f8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xb610, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xb620, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xb628, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xb630, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xb640, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xb648, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xb650, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xb660, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xb668, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xb670, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xb678, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xb688, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xb690, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xb698, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xb6a0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xb6b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xb6b8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xb6c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xb6d8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xb6e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xb6e8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0xb6f8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xb710, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xb720, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xb730, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xb740, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xb748, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xb758, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xb768, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xb780, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xb788, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xb798, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xb7a0, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xb7c0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xb7c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xb7d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xb7d8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xb7e8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xb7f0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xb808, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xb810, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xb818, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xb830, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xb840, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xb850, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xb860, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xb870, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xb878, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xb880, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xb890, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xb898, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xb8a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xb8a8, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xb8b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xb8b8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xb8c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xb8c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xb8d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0xb8e8, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xb8f0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xb908, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xb910, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xb920, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xb928, bitSize: 0x3a98(0x753 Byte(s)), array:0x3(hti:0xffff)
        cacloadoutlistcustomgames_s cacloadouts[3];
        // offset: 0xf3c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xf3c8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xf3d0, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0xf3d8, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0xf3e0, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0xf3e8, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0xf3f0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0xf400, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0xf410, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0xf418, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0xf430, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamcount;
        // offset: 0xf438, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0xf458, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0xf460, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0xf470, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0xf480, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0xf490, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0xf4a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0xf4b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0xf4c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0xf4d0, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0xf4d8, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0xf4f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0xf500, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0xf518, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0xf530, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0xf538, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0xf548, bitSize: 0x1
        bool delayplayer;
        // offset: 0xf549, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0xf54a, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0xf54b, bitSize: 0x1
        bool magic;
        // offset: 0xf54c, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0xf54d, bitSize: 0x1
        bool draftenabled;
        // offset: 0xf54e, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0xf54f, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0xf550, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0xf551, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0xf552, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0xf553, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0xf554, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0xf555, bitSize: 0x1
        bool allowdogs;
        // offset: 0xf556, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0xf557, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0xf558, bitSize: 0x1
        bool hash_6e051e440a6c3b91;
        // offset: 0xf559, bitSize: 0x1
        bool hash_612a91feb7ce6f9a;
        // offset: 0xf55a, bitSize: 0x1
        bool hardcoremode;
        // offset: 0xf55b, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0xf55c, bitSize: 0x1
        bool silentplant;
        // offset: 0xf55d, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0xf55e, bitSize: 0x1
        bool drafteveryround;
        // offset: 0xf55f, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0xf560, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0xf561, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0xf562, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0xf563, bitSize: 0x1
        bool kothmode;
        // offset: 0xf564, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0xf565, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0xf566, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0xf567, bitSize: 0x1
        bool decayprogress;
        // offset: 0xf568, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0xf569, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0xf56a, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0xf56b, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0xf56c, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0xf56d, bitSize: 0x1
        bool hash_55a9555dfd9d0c6;
        // offset: 0xf56e, bitSize: 0x1
        bool usespawngroups;
        // offset: 0xf56f, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0xf570, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0xf571, bitSize: 0x1
        bool platoonassignment;
        // offset: 0xf572, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0xf573, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0xf574, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0xf575, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0xf576, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0xf577, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0xf578, bitSize: 0x1
        bool hash_678c1d3307b1d73a;
        // offset: 0xf579, bitSize: 0x1
        bool headshotsonly;
        // offset: 0xf57a, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0xf57b, bitSize: 0x1
        bool disablecontracts;
        // offset: 0xf57c, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0xf57d, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0xf57e, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0xf57f, bitSize: 0x1
        bool hash_6138c30c393776de;
        // offset: 0xf580, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0xf581, bitSize: 0x1
        bool allowannouncer;
        // offset: 0xf582, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0xf583, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0xf584, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0xf585, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0xf586, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0xf587, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0xf588, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0xf589, bitSize: 0x1
        bool neutralzone;
        // offset: 0xf58a, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0xf58b, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0xf58c, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0xf58d, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0xf58e, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0xf58f, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0xf590, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0xf591, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0xf592, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0xf593, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0xf594, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0xf595, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0xf596, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0xf597, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0xf598, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0xf599, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0xf59a, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0xf59b, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0xf59c, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0xf59d, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0xf59e, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0xf59f, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0xf5a0, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0xf5a1, bitSize: 0x1
        bool perksenabled;
        // offset: 0xf5a2, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0xf5a3, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0xf5a4, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0xf5a5, bitSize: 0x1
        bool robotshield;
        // offset: 0xf5a6, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0xf5a7, bitSize: 0x1
        bool disableattachments;
        // offset: 0xf5a8, bitSize: 0x1
        bool disablecompass;
        // offset: 0xf5a9, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0xf5aa, bitSize: 0x1
        bool escalationenabled;
        // offset: 0xf5ab, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0xf5ac, bitSize: 0x1
        bool hash_60a49038647cd9e7;
        // offset: 0xf5ad, bitSize: 0x1
        bool disableclassselection;
        // offset: 0xf5ae, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0xf5af, bitSize: 0x1
        bool autoteambalance;
        // offset: 0xf5b0, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0xf5b1, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0xf5b2, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0xf5b3, bitSize: 0x1
        bool allowprone;
        // offset: 0xf5b4, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0xf5b5, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0xf5b6, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0xf5b7, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0xf5b8, bitSize: 0x1
        bool multibomb;
        // offset: 0xf5b9, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0xf5ba, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0xf5bb, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0xf5bc, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0xf5bd, bitSize: 0x1
        bool deathcircle;
        // offset: 0xf5be, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0xf5bf, bitSize: 0x1
        bool hash_5002b8a3b8882084;
        // offset: 0xf5c0, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0xf5c1, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0xf5c2, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0xf5c3, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0xf5c4, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0xf5c5, bitSize: 0x1
        bool deathpointloss;
        // offset: 0xf5c6, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0xf5c7, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0xf5c8, bitSize: 0x1
        bool rebootplayers;
        // offset: 0xf5c9, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0xf5ca, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0xf5cb, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0xf5cc, bitSize: 0x1
        bool allowspectating;
        // offset: 0xf5cd, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0xf5ce, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0xf5cf, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0xf5d0, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0xf5d1, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0xf5d2, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0xf5d3, bitSize: 0x1
        bool hash_3a8a97035505742;
        // offset: 0xf5d4, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0xf5d5, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0xf5d6, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0xf5d7, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0xf5d8, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0xf5d9, bitSize: 0x1
        bool disallowprone;
        // offset: 0xf5da, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0xf5db, bitSize: 0x1
        bool moveplayers;
        // offset: 0xf5dc, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0xf5dd, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0xf5de, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0xf5df, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0xf5e0, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0xf5e1, bitSize: 0x1
        bool zmdifficulty;
        // offset: 0xf5e2, bitSize: 0x1
        bool pvponly;
        // offset: 0xf5e3, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0xf5e4, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0xf5e5, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0xf5e6, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0xf5e7, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0xf5e8, bitSize: 0x1
        bool classicmode;
        // offset: 0xf5e9, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0xf5ea, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0xf5eb, bitSize: 0x1
        bool capdecay;
        // offset: 0xf5ec, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0xf5ed, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0xf5ee, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0xf5ef, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0xf5f0, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0xf5f1, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // bitSize: 0xf8e0, members: 9
    struct hash_5d6e6de9167f1a56 {
        // offset: 0x0, bitSize: 0x200(0x40 Byte(s))
        string(64) gamedescription;
        // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x220, bitSize: 0x80(0x10 Byte(s))
        string(16) gamename;
        // offset: 0x2a0, bitSize: 0x40(0x8 Byte(s))
        string(8) gametype;
        // offset: 0x2e0, bitSize: 0xf5f8(0x1ebf Byte(s))
        hash_2565a0443b27b26c gametypesettings;
        // offset: 0xf8d8, bitSize: 0x1
        bool inuse;
        // offset: 0xf8d9, bitSize: 0x1
        bool downloaded;
        // offset: 0xf8da, bitSize: 0x1
        bool isofficial;
    };

    // root: bitSize: 0x5d560, members: 2

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x5d540(0xbaa8 Byte(s)), array:0x6(hti:0xffff)
    hash_5d6e6de9167f1a56 customgames[6];
};

version hash_5354159219ca6cac {
    // enums ..... 0 (0x0)
    // structs ... 11 (0xb)
    // header bit size .. 382576 (0x5d670)
    // header byte size . 47822 (0xbace)

    // bitSize: 0x78, members: 8
    struct hash_2c79abcce61676aa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x78, members: 8
    struct hash_20631b664715b1fa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x168, members: 9
    struct hash_27580df06d232ed1 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:5 talent[6];
        // offset: 0x70, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0xe8, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
        // offset: 0x160, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x110, members: 4
    struct hash_1489c97943984433 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 herogadget;
        // offset: 0x20, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0x98, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
    };

    // bitSize: 0x1ef8, members: 12
    struct hash_71e57d488b0eb24d {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1680(0x2d0 Byte(s)), array:0x10(hti:0xffff)
        hash_27580df06d232ed1 customclass[16];
        // offset: 0x16b0, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1eb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x1ec0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x1ed0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x1ee0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x1ef0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1ef1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1ef2, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1938, members: 8
    struct hash_31d8d99be94a78b7 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1100(0x220 Byte(s)), array:0x10(hti:0xffff)
        hash_1489c97943984433 customclass[16];
        // offset: 0x1130, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1930, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1931, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1932, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1388, members: 17
    struct cacloadoutlistcustomgames_s {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        int:4 equippedbubblegumpack;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0xe10(0x1c2 Byte(s)), array:0xa(hti:0xffff)
        hash_27580df06d232ed1 customclass[10];
        // offset: 0xe40, bitSize: 0x8(0x1 Byte(s))
        byte herogadget;
        // offset: 0xe48, bitSize: 0x500(0xa0 Byte(s)), array:0xa(hti:0xffff)
        string(16) customclassname[10];
        // offset: 0x1348, bitSize: 0x8(0x1 Byte(s))
        byte heroweapon;
        // offset: 0x1350, bitSize: 0x8(0x1 Byte(s))
        byte killstreak1;
        // offset: 0x1358, bitSize: 0x8(0x1 Byte(s))
        byte killstreak2;
        // offset: 0x1360, bitSize: 0x8(0x1 Byte(s))
        byte killstreak3;
        // offset: 0x1368, bitSize: 0x8(0x1 Byte(s))
        byte killstreak4;
        // offset: 0x1370, bitSize: 0x8(0x1 Byte(s))
        byte killstreak5;
        // offset: 0x1378, bitSize: 0x8(0x1 Byte(s))
        byte killstreak6;
        // offset: 0x1380, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1381, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1382, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x3c0, members: 1
    struct hash_5fba00041f77a729 {
        // offset: 0x0, bitSize: 0x3c0(0x78 Byte(s)), array:0x78(hti:0xffff)
        uint:2 weaponindex[120];
    };

    // bitSize: 0xf608, members: 437
    struct hash_2565a0443b27b26c {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0x80, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x98, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0xd8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0xe8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        uint:2 friendlyfiretype;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x120, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x188, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x190, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayers;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x1c8, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x258, bitSize: 0x800(0x100 Byte(s)), array:0x100(hti:0xffff)
        uint:2 restricteditems[256];
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0xa60, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        uint:3 randomobjectivelocations;
        // offset: 0xa70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0xaa0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0xab0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0xad0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0xb20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0xb30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0xb40, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0xb50, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0xb68, bitSize: 0xa500(0x14a0 Byte(s)), array:0x2c(hti:0xffff)
        hash_5fba00041f77a729 restrictedattachments[44];
        // offset: 0xb068, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0xb070, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0xb078, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0xb088, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0xb098, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0xb0a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0xb0a8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0xb0c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0xb0d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0xb0d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0xb0e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0xb0f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0xb108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0xb118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0xb128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0xb138, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0xb150, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0xb160, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0xb168, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0xb170, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0xb180, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0xb188, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0xb190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0xb1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0xb1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0xb1c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0xb1d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0xb1d8, bitSize: 0x10(0x2 Byte(s))
        int:15 playersprintrecoverydelayoverridems;
        // offset: 0xb1e8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0xb1f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0xb200, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0xb208, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0xb220, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0xb230, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0xb240, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0xb250, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0xb260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0xb270, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0xb280, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0xb288, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0xb298, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0xb2a0, bitSize: 0x80(0x10 Byte(s)), array:0x10(hti:0xffff)
        uint:5 maxuniquerolesperteam[16];
        // offset: 0xb320, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0xb328, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0xb340, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0xb348, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0xb350, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0xb368, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0xb370, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0xb378, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0xb388, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0xb390, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0xb3a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0xb3b0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0xb3b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0xb3c8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0xb3d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0xb3d8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0xb3e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0xb3f0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0xb408, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0xb418, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0xb420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xb428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xb438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xb448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xb458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xb468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xb478, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xb488, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xb498, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xb4a0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xb4b0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xb4b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xb4c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xb4c8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xb4d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xb4d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xb4e8, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xb4f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xb500, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xb508, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xb510, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb518, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb520, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb528, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb538, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb548, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb560, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb568, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb578, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb580, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb588, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb598, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb5a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb5b8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb5c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xb5d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 startround;
        // offset: 0xb5d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xb5e0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xb5e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xb5f0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xb5f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xb600, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xb608, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xb620, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xb630, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xb638, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xb640, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xb650, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xb658, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xb660, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xb670, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xb678, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xb680, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xb688, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xb698, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xb6a0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xb6a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xb6b0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xb6c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xb6c8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xb6d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xb6e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xb6f0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xb6f8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0xb708, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xb720, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xb730, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xb740, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xb750, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xb758, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xb768, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xb778, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xb790, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xb798, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xb7a8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xb7b0, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xb7d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xb7d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xb7e0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xb7e8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xb7f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xb800, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xb818, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xb820, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xb828, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xb840, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xb850, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xb860, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xb870, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xb880, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xb888, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xb890, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xb8a0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xb8a8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xb8b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xb8b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xb8c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xb8c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xb8d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xb8d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xb8e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0xb8f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xb900, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xb918, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xb920, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xb930, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xb938, bitSize: 0x3a98(0x753 Byte(s)), array:0x3(hti:0xffff)
        cacloadoutlistcustomgames_s cacloadouts[3];
        // offset: 0xf3d0, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xf3d8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xf3e0, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0xf3e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0xf3f0, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0xf3f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0xf400, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0xf410, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0xf420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0xf428, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0xf440, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamcount;
        // offset: 0xf448, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0xf468, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0xf470, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0xf480, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0xf490, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0xf4a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0xf4b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0xf4c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0xf4d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0xf4e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0xf4e8, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0xf508, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0xf510, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0xf528, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0xf540, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0xf548, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0xf558, bitSize: 0x1
        bool delayplayer;
        // offset: 0xf559, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0xf55a, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0xf55b, bitSize: 0x1
        bool magic;
        // offset: 0xf55c, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0xf55d, bitSize: 0x1
        bool draftenabled;
        // offset: 0xf55e, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0xf55f, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0xf560, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0xf561, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0xf562, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0xf563, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0xf564, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0xf565, bitSize: 0x1
        bool allowdogs;
        // offset: 0xf566, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0xf567, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0xf568, bitSize: 0x1
        bool hash_6e051e440a6c3b91;
        // offset: 0xf569, bitSize: 0x1
        bool hash_612a91feb7ce6f9a;
        // offset: 0xf56a, bitSize: 0x1
        bool hardcoremode;
        // offset: 0xf56b, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0xf56c, bitSize: 0x1
        bool silentplant;
        // offset: 0xf56d, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0xf56e, bitSize: 0x1
        bool drafteveryround;
        // offset: 0xf56f, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0xf570, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0xf571, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0xf572, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0xf573, bitSize: 0x1
        bool kothmode;
        // offset: 0xf574, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0xf575, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0xf576, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0xf577, bitSize: 0x1
        bool decayprogress;
        // offset: 0xf578, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0xf579, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0xf57a, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0xf57b, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0xf57c, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0xf57d, bitSize: 0x1
        bool hash_55a9555dfd9d0c6;
        // offset: 0xf57e, bitSize: 0x1
        bool usespawngroups;
        // offset: 0xf57f, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0xf580, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0xf581, bitSize: 0x1
        bool platoonassignment;
        // offset: 0xf582, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0xf583, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0xf584, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0xf585, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0xf586, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0xf587, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0xf588, bitSize: 0x1
        bool hash_678c1d3307b1d73a;
        // offset: 0xf589, bitSize: 0x1
        bool headshotsonly;
        // offset: 0xf58a, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0xf58b, bitSize: 0x1
        bool disablecontracts;
        // offset: 0xf58c, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0xf58d, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0xf58e, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0xf58f, bitSize: 0x1
        bool hash_6138c30c393776de;
        // offset: 0xf590, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0xf591, bitSize: 0x1
        bool allowannouncer;
        // offset: 0xf592, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0xf593, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0xf594, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0xf595, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0xf596, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0xf597, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0xf598, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0xf599, bitSize: 0x1
        bool neutralzone;
        // offset: 0xf59a, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0xf59b, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0xf59c, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0xf59d, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0xf59e, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0xf59f, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0xf5a0, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0xf5a1, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0xf5a2, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0xf5a3, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0xf5a4, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0xf5a5, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0xf5a6, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0xf5a7, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0xf5a8, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0xf5a9, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0xf5aa, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0xf5ab, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0xf5ac, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0xf5ad, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0xf5ae, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0xf5af, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0xf5b0, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0xf5b1, bitSize: 0x1
        bool perksenabled;
        // offset: 0xf5b2, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0xf5b3, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0xf5b4, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0xf5b5, bitSize: 0x1
        bool robotshield;
        // offset: 0xf5b6, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0xf5b7, bitSize: 0x1
        bool disableattachments;
        // offset: 0xf5b8, bitSize: 0x1
        bool disablecompass;
        // offset: 0xf5b9, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0xf5ba, bitSize: 0x1
        bool escalationenabled;
        // offset: 0xf5bb, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0xf5bc, bitSize: 0x1
        bool hash_60a49038647cd9e7;
        // offset: 0xf5bd, bitSize: 0x1
        bool disableclassselection;
        // offset: 0xf5be, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0xf5bf, bitSize: 0x1
        bool autoteambalance;
        // offset: 0xf5c0, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0xf5c1, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0xf5c2, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0xf5c3, bitSize: 0x1
        bool allowprone;
        // offset: 0xf5c4, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0xf5c5, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0xf5c6, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0xf5c7, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0xf5c8, bitSize: 0x1
        bool multibomb;
        // offset: 0xf5c9, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0xf5ca, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0xf5cb, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0xf5cc, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0xf5cd, bitSize: 0x1
        bool deathcircle;
        // offset: 0xf5ce, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0xf5cf, bitSize: 0x1
        bool hash_5002b8a3b8882084;
        // offset: 0xf5d0, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0xf5d1, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0xf5d2, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0xf5d3, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0xf5d4, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0xf5d5, bitSize: 0x1
        bool deathpointloss;
        // offset: 0xf5d6, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0xf5d7, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0xf5d8, bitSize: 0x1
        bool rebootplayers;
        // offset: 0xf5d9, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0xf5da, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0xf5db, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0xf5dc, bitSize: 0x1
        bool allowspectating;
        // offset: 0xf5dd, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0xf5de, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0xf5df, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0xf5e0, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0xf5e1, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0xf5e2, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0xf5e3, bitSize: 0x1
        bool hash_3a8a97035505742;
        // offset: 0xf5e4, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0xf5e5, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0xf5e6, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0xf5e7, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0xf5e8, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0xf5e9, bitSize: 0x1
        bool disallowprone;
        // offset: 0xf5ea, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0xf5eb, bitSize: 0x1
        bool moveplayers;
        // offset: 0xf5ec, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0xf5ed, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0xf5ee, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0xf5ef, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0xf5f0, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0xf5f1, bitSize: 0x1
        bool zmdifficulty;
        // offset: 0xf5f2, bitSize: 0x1
        bool pvponly;
        // offset: 0xf5f3, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0xf5f4, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0xf5f5, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0xf5f6, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0xf5f7, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0xf5f8, bitSize: 0x1
        bool classicmode;
        // offset: 0xf5f9, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0xf5fa, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0xf5fb, bitSize: 0x1
        bool capdecay;
        // offset: 0xf5fc, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0xf5fd, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0xf5fe, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0xf5ff, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0xf600, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0xf601, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // bitSize: 0xf8f0, members: 9
    struct hash_5d6e6de9167f1a56 {
        // offset: 0x0, bitSize: 0x200(0x40 Byte(s))
        string(64) gamedescription;
        // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x220, bitSize: 0x80(0x10 Byte(s))
        string(16) gamename;
        // offset: 0x2a0, bitSize: 0x40(0x8 Byte(s))
        string(8) gametype;
        // offset: 0x2e0, bitSize: 0xf608(0x1ec1 Byte(s))
        hash_2565a0443b27b26c gametypesettings;
        // offset: 0xf8e8, bitSize: 0x1
        bool inuse;
        // offset: 0xf8e9, bitSize: 0x1
        bool downloaded;
        // offset: 0xf8ea, bitSize: 0x1
        bool isofficial;
    };

    // root: bitSize: 0x5d5c0, members: 2

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x5d5a0(0xbab4 Byte(s)), array:0x6(hti:0xffff)
    hash_5d6e6de9167f1a56 customgames[6];
};

version hash_6e6295e3ab4d766 {
    // enums ..... 0 (0x0)
    // structs ... 11 (0xb)
    // header bit size .. 382576 (0x5d670)
    // header byte size . 47822 (0xbace)

    // bitSize: 0x78, members: 8
    struct hash_2c79abcce61676aa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x78, members: 8
    struct hash_20631b664715b1fa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x168, members: 9
    struct hash_27580df06d232ed1 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:5 talent[6];
        // offset: 0x70, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0xe8, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
        // offset: 0x160, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x110, members: 4
    struct hash_1489c97943984433 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 herogadget;
        // offset: 0x20, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0x98, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
    };

    // bitSize: 0x1ef8, members: 12
    struct hash_71e57d488b0eb24d {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1680(0x2d0 Byte(s)), array:0x10(hti:0xffff)
        hash_27580df06d232ed1 customclass[16];
        // offset: 0x16b0, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1eb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x1ec0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x1ed0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x1ee0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x1ef0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1ef1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1ef2, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1938, members: 8
    struct hash_31d8d99be94a78b7 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1100(0x220 Byte(s)), array:0x10(hti:0xffff)
        hash_1489c97943984433 customclass[16];
        // offset: 0x1130, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1930, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1931, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1932, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1388, members: 17
    struct cacloadoutlistcustomgames_s {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        int:4 equippedbubblegumpack;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0xe10(0x1c2 Byte(s)), array:0xa(hti:0xffff)
        hash_27580df06d232ed1 customclass[10];
        // offset: 0xe40, bitSize: 0x8(0x1 Byte(s))
        byte herogadget;
        // offset: 0xe48, bitSize: 0x500(0xa0 Byte(s)), array:0xa(hti:0xffff)
        string(16) customclassname[10];
        // offset: 0x1348, bitSize: 0x8(0x1 Byte(s))
        byte heroweapon;
        // offset: 0x1350, bitSize: 0x8(0x1 Byte(s))
        byte killstreak1;
        // offset: 0x1358, bitSize: 0x8(0x1 Byte(s))
        byte killstreak2;
        // offset: 0x1360, bitSize: 0x8(0x1 Byte(s))
        byte killstreak3;
        // offset: 0x1368, bitSize: 0x8(0x1 Byte(s))
        byte killstreak4;
        // offset: 0x1370, bitSize: 0x8(0x1 Byte(s))
        byte killstreak5;
        // offset: 0x1378, bitSize: 0x8(0x1 Byte(s))
        byte killstreak6;
        // offset: 0x1380, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1381, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1382, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x3c0, members: 1
    struct hash_5fba00041f77a729 {
        // offset: 0x0, bitSize: 0x3c0(0x78 Byte(s)), array:0x78(hti:0xffff)
        uint:2 weaponindex[120];
    };

    // bitSize: 0xf608, members: 437
    struct hash_2565a0443b27b26c {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0x80, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x98, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0xd8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0xe8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        uint:2 friendlyfiretype;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x120, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x188, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x190, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayers;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x1c8, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x258, bitSize: 0x800(0x100 Byte(s)), array:0x100(hti:0xffff)
        uint:2 restricteditems[256];
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0xa60, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        uint:3 randomobjectivelocations;
        // offset: 0xa70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0xaa0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0xab0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0xad0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0xb20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0xb30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0xb40, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0xb50, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0xb68, bitSize: 0xa500(0x14a0 Byte(s)), array:0x2c(hti:0xffff)
        hash_5fba00041f77a729 restrictedattachments[44];
        // offset: 0xb068, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0xb070, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0xb078, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0xb088, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0xb098, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0xb0a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0xb0a8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0xb0c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0xb0d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0xb0d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0xb0e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0xb0f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0xb108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0xb118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0xb128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0xb138, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0xb150, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0xb160, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0xb168, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0xb170, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0xb180, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0xb188, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0xb190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0xb1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0xb1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0xb1c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0xb1d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0xb1d8, bitSize: 0x10(0x2 Byte(s))
        uint:14 playersprintrecoverydelayoverridems;
        // offset: 0xb1e8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0xb1f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0xb200, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0xb208, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0xb220, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0xb230, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0xb240, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0xb250, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0xb260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0xb270, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0xb280, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0xb288, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0xb298, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0xb2a0, bitSize: 0x80(0x10 Byte(s)), array:0x10(hti:0xffff)
        uint:5 maxuniquerolesperteam[16];
        // offset: 0xb320, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0xb328, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0xb340, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0xb348, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0xb350, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0xb368, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0xb370, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0xb378, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0xb388, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0xb390, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0xb3a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0xb3b0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0xb3b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0xb3c8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0xb3d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0xb3d8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0xb3e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0xb3f0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0xb408, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0xb418, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0xb420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xb428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xb438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xb448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xb458, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xb468, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xb478, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xb488, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xb498, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xb4a0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xb4b0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xb4b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xb4c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xb4c8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xb4d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xb4d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xb4e8, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xb4f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xb500, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xb508, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xb510, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb518, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb520, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb528, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb538, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb548, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb560, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb568, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb578, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb580, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb588, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb598, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb5a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb5b8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb5c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xb5d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 startround;
        // offset: 0xb5d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xb5e0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xb5e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xb5f0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xb5f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xb600, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xb608, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xb620, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xb630, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xb638, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xb640, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xb650, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xb658, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xb660, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xb670, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xb678, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xb680, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xb688, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xb698, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xb6a0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xb6a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xb6b0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xb6c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xb6c8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xb6d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xb6e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xb6f0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xb6f8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0xb708, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xb720, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xb730, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xb740, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xb750, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xb758, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xb768, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xb778, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xb790, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xb798, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xb7a8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xb7b0, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xb7d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xb7d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xb7e0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xb7e8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xb7f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xb800, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xb818, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xb820, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xb828, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xb840, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xb850, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xb860, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xb870, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xb880, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xb888, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xb890, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xb8a0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xb8a8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xb8b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xb8b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xb8c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xb8c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xb8d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xb8d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xb8e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0xb8f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xb900, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xb918, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xb920, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xb930, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xb938, bitSize: 0x3a98(0x753 Byte(s)), array:0x3(hti:0xffff)
        cacloadoutlistcustomgames_s cacloadouts[3];
        // offset: 0xf3d0, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xf3d8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xf3e0, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0xf3e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0xf3f0, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0xf3f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0xf400, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0xf410, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0xf420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0xf428, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0xf440, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamcount;
        // offset: 0xf448, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0xf468, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0xf470, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0xf480, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0xf490, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0xf4a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0xf4b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0xf4c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0xf4d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0xf4e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0xf4e8, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0xf508, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0xf510, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0xf528, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0xf540, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0xf548, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0xf558, bitSize: 0x1
        bool delayplayer;
        // offset: 0xf559, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0xf55a, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0xf55b, bitSize: 0x1
        bool magic;
        // offset: 0xf55c, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0xf55d, bitSize: 0x1
        bool draftenabled;
        // offset: 0xf55e, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0xf55f, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0xf560, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0xf561, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0xf562, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0xf563, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0xf564, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0xf565, bitSize: 0x1
        bool allowdogs;
        // offset: 0xf566, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0xf567, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0xf568, bitSize: 0x1
        bool hash_6e051e440a6c3b91;
        // offset: 0xf569, bitSize: 0x1
        bool hash_612a91feb7ce6f9a;
        // offset: 0xf56a, bitSize: 0x1
        bool hardcoremode;
        // offset: 0xf56b, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0xf56c, bitSize: 0x1
        bool silentplant;
        // offset: 0xf56d, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0xf56e, bitSize: 0x1
        bool drafteveryround;
        // offset: 0xf56f, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0xf570, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0xf571, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0xf572, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0xf573, bitSize: 0x1
        bool kothmode;
        // offset: 0xf574, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0xf575, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0xf576, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0xf577, bitSize: 0x1
        bool decayprogress;
        // offset: 0xf578, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0xf579, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0xf57a, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0xf57b, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0xf57c, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0xf57d, bitSize: 0x1
        bool hash_55a9555dfd9d0c6;
        // offset: 0xf57e, bitSize: 0x1
        bool usespawngroups;
        // offset: 0xf57f, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0xf580, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0xf581, bitSize: 0x1
        bool platoonassignment;
        // offset: 0xf582, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0xf583, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0xf584, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0xf585, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0xf586, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0xf587, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0xf588, bitSize: 0x1
        bool hash_678c1d3307b1d73a;
        // offset: 0xf589, bitSize: 0x1
        bool headshotsonly;
        // offset: 0xf58a, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0xf58b, bitSize: 0x1
        bool disablecontracts;
        // offset: 0xf58c, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0xf58d, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0xf58e, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0xf58f, bitSize: 0x1
        bool hash_6138c30c393776de;
        // offset: 0xf590, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0xf591, bitSize: 0x1
        bool allowannouncer;
        // offset: 0xf592, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0xf593, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0xf594, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0xf595, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0xf596, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0xf597, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0xf598, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0xf599, bitSize: 0x1
        bool neutralzone;
        // offset: 0xf59a, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0xf59b, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0xf59c, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0xf59d, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0xf59e, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0xf59f, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0xf5a0, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0xf5a1, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0xf5a2, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0xf5a3, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0xf5a4, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0xf5a5, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0xf5a6, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0xf5a7, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0xf5a8, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0xf5a9, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0xf5aa, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0xf5ab, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0xf5ac, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0xf5ad, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0xf5ae, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0xf5af, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0xf5b0, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0xf5b1, bitSize: 0x1
        bool perksenabled;
        // offset: 0xf5b2, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0xf5b3, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0xf5b4, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0xf5b5, bitSize: 0x1
        bool robotshield;
        // offset: 0xf5b6, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0xf5b7, bitSize: 0x1
        bool disableattachments;
        // offset: 0xf5b8, bitSize: 0x1
        bool disablecompass;
        // offset: 0xf5b9, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0xf5ba, bitSize: 0x1
        bool escalationenabled;
        // offset: 0xf5bb, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0xf5bc, bitSize: 0x1
        bool hash_60a49038647cd9e7;
        // offset: 0xf5bd, bitSize: 0x1
        bool disableclassselection;
        // offset: 0xf5be, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0xf5bf, bitSize: 0x1
        bool autoteambalance;
        // offset: 0xf5c0, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0xf5c1, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0xf5c2, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0xf5c3, bitSize: 0x1
        bool allowprone;
        // offset: 0xf5c4, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0xf5c5, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0xf5c6, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0xf5c7, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0xf5c8, bitSize: 0x1
        bool multibomb;
        // offset: 0xf5c9, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0xf5ca, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0xf5cb, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0xf5cc, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0xf5cd, bitSize: 0x1
        bool deathcircle;
        // offset: 0xf5ce, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0xf5cf, bitSize: 0x1
        bool hash_5002b8a3b8882084;
        // offset: 0xf5d0, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0xf5d1, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0xf5d2, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0xf5d3, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0xf5d4, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0xf5d5, bitSize: 0x1
        bool deathpointloss;
        // offset: 0xf5d6, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0xf5d7, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0xf5d8, bitSize: 0x1
        bool rebootplayers;
        // offset: 0xf5d9, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0xf5da, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0xf5db, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0xf5dc, bitSize: 0x1
        bool allowspectating;
        // offset: 0xf5dd, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0xf5de, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0xf5df, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0xf5e0, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0xf5e1, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0xf5e2, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0xf5e3, bitSize: 0x1
        bool hash_3a8a97035505742;
        // offset: 0xf5e4, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0xf5e5, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0xf5e6, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0xf5e7, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0xf5e8, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0xf5e9, bitSize: 0x1
        bool disallowprone;
        // offset: 0xf5ea, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0xf5eb, bitSize: 0x1
        bool moveplayers;
        // offset: 0xf5ec, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0xf5ed, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0xf5ee, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0xf5ef, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0xf5f0, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0xf5f1, bitSize: 0x1
        bool zmdifficulty;
        // offset: 0xf5f2, bitSize: 0x1
        bool pvponly;
        // offset: 0xf5f3, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0xf5f4, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0xf5f5, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0xf5f6, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0xf5f7, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0xf5f8, bitSize: 0x1
        bool classicmode;
        // offset: 0xf5f9, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0xf5fa, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0xf5fb, bitSize: 0x1
        bool capdecay;
        // offset: 0xf5fc, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0xf5fd, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0xf5fe, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0xf5ff, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0xf600, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0xf601, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // bitSize: 0xf8f0, members: 9
    struct hash_5d6e6de9167f1a56 {
        // offset: 0x0, bitSize: 0x200(0x40 Byte(s))
        string(64) gamedescription;
        // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x220, bitSize: 0x80(0x10 Byte(s))
        string(16) gamename;
        // offset: 0x2a0, bitSize: 0x40(0x8 Byte(s))
        string(8) gametype;
        // offset: 0x2e0, bitSize: 0xf608(0x1ec1 Byte(s))
        hash_2565a0443b27b26c gametypesettings;
        // offset: 0xf8e8, bitSize: 0x1
        bool inuse;
        // offset: 0xf8e9, bitSize: 0x1
        bool downloaded;
        // offset: 0xf8ea, bitSize: 0x1
        bool isofficial;
    };

    // root: bitSize: 0x5d5c0, members: 2

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x5d5a0(0xbab4 Byte(s)), array:0x6(hti:0xffff)
    hash_5d6e6de9167f1a56 customgames[6];
};

