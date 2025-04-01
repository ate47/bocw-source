// file .... mp_loadouts_external.ddl

#redirect hash_681190908763d1e5;

version hash_bc0742d9af7acd56 {
    // enums ..... 0 (0x0)
    // structs ... 1 (0x1)
    // header bit size .. 59232 (0xe760)
    // header byte size . 7404 (0x1cec)

    // root: bitSize: 0xe6b0, members: 2

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe690(0x1cd2 Byte(s)), array:0x1cd2(hti:0xffff)
    byte dummy[7378];
};

version hash_e559c99a76bc6ce2 {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 38232 (0x9558)
    // header byte size . 4779 (0x12ab)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x28, members: 2
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x20(0x4 Byte(s)), array:0x20(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x34, array:0x34(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2010, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1800(0x300 Byte(s)), array:0x20(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[32];
        // offset: 0x1810, bitSize: 0x800(0x100 Byte(s)), array:0x20(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[32];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:6 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:6 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x8718, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x86d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x86e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x86f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x8700, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x8710, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0x94a0, members: 19
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x480(0x90 Byte(s)), array:0x6(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0xf28, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xfa8, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x8b70, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0x93f0, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0x9430, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x9440, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x9450, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x9460, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x9470, bitSize: 0x28(0x5 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0x9498, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x9499, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x949a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0x949b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x9480, members: 15
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x480(0x90 Byte(s)), array:0x6(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0xf08, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xf88, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x8b50, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0x93d0, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0x9410, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x9420, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x9430, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x9440, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x9450, bitSize: 0x28(0x5 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0x9478, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x20
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_digital_gambit_01, // 0x1
        wristaccessory_t9_s1_digital_inteculo_01, // 0x2
        wristaccessory_t9_s1_analog_brawler_01, // 0x3
        hash_1ccdff0ebb3ad612, // 0x4
        wristaccessory_t9_s1_analog_kremlin, // 0x5
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x6
        hash_25142303752f4324, // 0x7
        hash_25142503752f468a, // 0x8
        wristaccessory_t9_s1_analog_retroren_02, // 0x9
        wristaccessory_default, // 0xa
        wristaccessory_t9_s1_digital_kazuya_01, // 0xb
        wristaccessory_t9_s1_digital_diver, // 0xc
        wristaccessory_t9_s1_analog_bope_01, // 0xd
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0xe
        wristaccessory_t9_s1_analog_aviator_02, // 0xf
        wristaccessory_t9_s1_analog_horex_01, // 0x10
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x11
        hash_4fee76d1114701af, // 0x12
        wristaccessory_t9_s1_bracelet_skull_01, // 0x13
        wristaccessory_t9_s1_bracelet_01, // 0x14
        hash_575c967cd59c9145, // 0x15
        wristaccessory_t9_s1_analog_origin_01, // 0x16
        wristaccessory_t9_s1_analog_private_eye_03, // 0x17
        wristaccessory_t9_s1_analog_private_eye_02, // 0x18
        wristaccessory_t9_s1_analog_private_eye_01, // 0x19
        hash_636c300390323486, // 0x1a
        wristaccessory_t9_s1_digital_rank_01, // 0x1b
        hash_708a99620b81ea23, // 0x1c
        hash_708a9a620b81ebd6, // 0x1d
        wristaccessory_t9_s1_digital_compass_01, // 0x1e
        wristaccessory_t9_s1_digital_first_spy_01 // 0x1f
    };

    // idx 0x3 members: 0x34
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_132, // 0x6
        execution_133, // 0x7
        execution_130, // 0x8
        execution_136, // 0x9
        execution_135, // 0xa
        execution_129, // 0xb
        execution_124, // 0xc
        execution_127, // 0xd
        execution_126, // 0xe
        execution_121, // 0xf
        execution_120, // 0x10
        execution_123, // 0x11
        execution_099, // 0x12
        execution_029, // 0x13
        execution_020, // 0x14
        execution_021, // 0x15
        execution_022, // 0x16
        execution_024, // 0x17
        execution_025, // 0x18
        execution_026, // 0x19
        execution_027, // 0x1a
        execution_038, // 0x1b
        execution_033, // 0x1c
        execution_031, // 0x1d
        execution_030, // 0x1e
        execution_037, // 0x1f
        execution_036, // 0x20
        execution_034, // 0x21
        execution_007, // 0x22
        execution_004, // 0x23
        execution_005, // 0x24
        execution_002, // 0x25
        execution_003, // 0x26
        execution_001, // 0x27
        execution_010, // 0x28
        execution_013, // 0x29
        execution_015, // 0x2a
        execution_014, // 0x2b
        execution_017, // 0x2c
        execution_016, // 0x2d
        execution_018, // 0x2e
        execution_064, // 0x2f
        execution_066, // 0x30
        execution_062, // 0x31
        execution_048, // 0x32
        execution_051 // 0x33
    };

    // idx 0x4 members: 0x6
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_2db2176ba3a5b081, // 0x2
        hash_32a6681c2a6114e8, // 0x3
        hash_3be2180eba09e101, // 0x4
        hash_6b8377c83507a7f9 // 0x5
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x94a8, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x9480(0x1290 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0x94a0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_91637876552a2b52 {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 38232 (0x9558)
    // header byte size . 4779 (0x12ab)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x28, members: 2
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x20(0x4 Byte(s)), array:0x20(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x34, array:0x34(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2010, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1800(0x300 Byte(s)), array:0x20(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[32];
        // offset: 0x1810, bitSize: 0x800(0x100 Byte(s)), array:0x20(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[32];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x8718, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x86d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x86e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x86f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x8700, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x8710, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0x94a0, members: 19
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x480(0x90 Byte(s)), array:0x6(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0xf28, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xfa8, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x8b70, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0x93f0, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0x9430, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x9440, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x9450, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x9460, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x9470, bitSize: 0x28(0x5 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0x9498, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x9499, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x949a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0x949b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x9480, members: 15
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x480(0x90 Byte(s)), array:0x6(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0xf08, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xf88, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x8b50, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0x93d0, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0x9410, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x9420, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x9430, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x9440, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x9450, bitSize: 0x28(0x5 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0x9478, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x20
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_digital_gambit_01, // 0x1
        wristaccessory_t9_s1_digital_inteculo_01, // 0x2
        wristaccessory_t9_s1_analog_brawler_01, // 0x3
        hash_1ccdff0ebb3ad612, // 0x4
        wristaccessory_t9_s1_analog_kremlin, // 0x5
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x6
        hash_25142303752f4324, // 0x7
        hash_25142503752f468a, // 0x8
        wristaccessory_t9_s1_analog_retroren_02, // 0x9
        wristaccessory_default, // 0xa
        wristaccessory_t9_s1_digital_kazuya_01, // 0xb
        wristaccessory_t9_s1_digital_diver, // 0xc
        wristaccessory_t9_s1_analog_bope_01, // 0xd
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0xe
        wristaccessory_t9_s1_analog_aviator_02, // 0xf
        wristaccessory_t9_s1_analog_horex_01, // 0x10
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x11
        hash_4fee76d1114701af, // 0x12
        wristaccessory_t9_s1_bracelet_skull_01, // 0x13
        wristaccessory_t9_s1_bracelet_01, // 0x14
        hash_575c967cd59c9145, // 0x15
        wristaccessory_t9_s1_analog_origin_01, // 0x16
        wristaccessory_t9_s1_analog_private_eye_03, // 0x17
        wristaccessory_t9_s1_analog_private_eye_02, // 0x18
        wristaccessory_t9_s1_analog_private_eye_01, // 0x19
        hash_636c300390323486, // 0x1a
        wristaccessory_t9_s1_digital_rank_01, // 0x1b
        hash_708a99620b81ea23, // 0x1c
        hash_708a9a620b81ebd6, // 0x1d
        wristaccessory_t9_s1_digital_compass_01, // 0x1e
        wristaccessory_t9_s1_digital_first_spy_01 // 0x1f
    };

    // idx 0x3 members: 0x34
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_132, // 0x6
        execution_133, // 0x7
        execution_130, // 0x8
        execution_136, // 0x9
        execution_135, // 0xa
        execution_129, // 0xb
        execution_124, // 0xc
        execution_127, // 0xd
        execution_126, // 0xe
        execution_121, // 0xf
        execution_120, // 0x10
        execution_123, // 0x11
        execution_099, // 0x12
        execution_029, // 0x13
        execution_020, // 0x14
        execution_021, // 0x15
        execution_022, // 0x16
        execution_024, // 0x17
        execution_025, // 0x18
        execution_026, // 0x19
        execution_027, // 0x1a
        execution_038, // 0x1b
        execution_033, // 0x1c
        execution_031, // 0x1d
        execution_030, // 0x1e
        execution_037, // 0x1f
        execution_036, // 0x20
        execution_034, // 0x21
        execution_007, // 0x22
        execution_004, // 0x23
        execution_005, // 0x24
        execution_002, // 0x25
        execution_003, // 0x26
        execution_001, // 0x27
        execution_010, // 0x28
        execution_013, // 0x29
        execution_015, // 0x2a
        execution_014, // 0x2b
        execution_017, // 0x2c
        execution_016, // 0x2d
        execution_018, // 0x2e
        execution_064, // 0x2f
        execution_066, // 0x30
        execution_062, // 0x31
        execution_048, // 0x32
        execution_051 // 0x33
    };

    // idx 0x4 members: 0x6
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_2db2176ba3a5b081, // 0x2
        hash_32a6681c2a6114e8, // 0x3
        hash_3be2180eba09e101, // 0x4
        hash_6b8377c83507a7f9 // 0x5
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x94a8, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x9480(0x1290 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0x94a0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_97665b21ea163959 {
    // enums ..... 5 (0x5)
    // structs ... 19 (0x13)
    // header bit size .. 35976 (0x8c88)
    // header byte size . 4497 (0x1191)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x28, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x1d, array:0x1d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x38, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x2b, array:0x2b(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2010, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1800(0x300 Byte(s)), array:0x20(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[32];
        // offset: 0x1810, bitSize: 0x800(0x100 Byte(s)), array:0x20(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[32];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x320, members: 14
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:6 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:6 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x2f8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
        // offset: 0x300, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x308, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x318, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x6c8, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x320(0x64 Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3a0, bitSize: 0x320(0x64 Byte(s))
        mploadoutweapon primary;
        // offset: 0x6c0, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x6c1, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x7e50, members: 9
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s))
        charactercontext charactercontext;
        // offset: 0x48, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa48, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xac8, bitSize: 0x7348(0xe69 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x7e10, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x7e20, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x7e30, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x7e40, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
    };

    // bitSize: 0x8bd8, members: 18
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s))
        charactercontext charactercontext;
        // offset: 0x48, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x68, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa68, bitSize: 0x480(0x90 Byte(s)), array:0x6(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0xee8, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xf68, bitSize: 0x7348(0xe69 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x82b0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0x8b30, bitSize: 0x38(0x7 Byte(s))
        execution execution;
        // offset: 0x8b68, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x8b78, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x8b88, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x8b98, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x8ba8, bitSize: 0x28(0x5 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0x8bd0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x8bd1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x8bd2, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x8bb0, members: 13
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s))
        charactercontext charactercontext;
        // offset: 0x48, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa48, bitSize: 0x480(0x90 Byte(s)), array:0x6(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0xec8, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xf48, bitSize: 0x7348(0xe69 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x8290, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0x8b10, bitSize: 0x38(0x7 Byte(s))
        execution execution;
        // offset: 0x8b48, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x8b58, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x8b68, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x8b78, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x8b88, bitSize: 0x28(0x5 Byte(s))
        wristaccessory wristaccessory;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x1d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_digital_gambit_01, // 0x1
        wristaccessory_t9_s1_digital_inteculo_01, // 0x2
        wristaccessory_t9_s1_analog_brawler_01, // 0x3
        hash_1ccdff0ebb3ad612, // 0x4
        wristaccessory_t9_s1_analog_kremlin, // 0x5
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x6
        hash_25142303752f4324, // 0x7
        hash_25142503752f468a, // 0x8
        wristaccessory_t9_s1_analog_retroren_02, // 0x9
        wristaccessory_default, // 0xa
        wristaccessory_t9_s1_digital_kazuya_01, // 0xb
        wristaccessory_t9_s1_digital_diver, // 0xc
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0xd
        wristaccessory_t9_s1_analog_aviator_02, // 0xe
        wristaccessory_t9_s1_analog_horex_01, // 0xf
        hash_4fee76d1114701af, // 0x10
        wristaccessory_t9_s1_bracelet_skull_01, // 0x11
        wristaccessory_t9_s1_bracelet_01, // 0x12
        hash_575c967cd59c9145, // 0x13
        wristaccessory_t9_s1_analog_origin_01, // 0x14
        wristaccessory_t9_s1_analog_private_eye_03, // 0x15
        wristaccessory_t9_s1_analog_private_eye_02, // 0x16
        wristaccessory_t9_s1_analog_private_eye_01, // 0x17
        wristaccessory_t9_s1_digital_rank_01, // 0x18
        hash_708a99620b81ea23, // 0x19
        hash_708a9a620b81ebd6, // 0x1a
        wristaccessory_t9_s1_digital_compass_01, // 0x1b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x1c
    };

    // idx 0x3 members: 0x2b
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_132, // 0x6
        execution_133, // 0x7
        execution_130, // 0x8
        execution_136, // 0x9
        execution_135, // 0xa
        execution_129, // 0xb
        execution_124, // 0xc
        execution_127, // 0xd
        execution_126, // 0xe
        execution_121, // 0xf
        execution_120, // 0x10
        execution_123, // 0x11
        execution_099, // 0x12
        execution_029, // 0x13
        execution_020, // 0x14
        execution_021, // 0x15
        execution_022, // 0x16
        execution_024, // 0x17
        execution_025, // 0x18
        execution_026, // 0x19
        execution_038, // 0x1a
        execution_033, // 0x1b
        execution_030, // 0x1c
        execution_037, // 0x1d
        execution_036, // 0x1e
        execution_034, // 0x1f
        execution_007, // 0x20
        execution_004, // 0x21
        execution_005, // 0x22
        execution_002, // 0x23
        execution_001, // 0x24
        execution_014, // 0x25
        execution_017, // 0x26
        execution_018, // 0x27
        execution_066, // 0x28
        execution_062, // 0x29
        execution_048 // 0x2a
    };

    // idx 0x4 members: 0x6
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_2db2176ba3a5b081, // 0x2
        hash_32a6681c2a6114e8, // 0x3
        hash_3be2180eba09e101, // 0x4
        hash_6b8377c83507a7f9 // 0x5
    };

    // root: bitSize: 0x8bd8, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x8bb0(0x1176 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0x8bd0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_fe6206933cb62e7b {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 38632 (0x96e8)
    // header byte size . 4829 (0x12dd)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x38, members: 2
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x30(0x6 Byte(s)), array:0x30(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x34, array:0x34(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2010, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1800(0x300 Byte(s)), array:0x20(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[32];
        // offset: 0x1810, bitSize: 0x800(0x100 Byte(s)), array:0x20(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[32];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x8718, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x86d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x86e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x86f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x8700, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x8710, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0x9630, members: 19
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x600(0xc0 Byte(s)), array:0x8(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x10a8, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1128, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x8cf0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0x9570, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0x95b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x95c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x95d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x95e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x95f0, bitSize: 0x38(0x7 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0x9628, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x9629, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x962a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0x962b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x9610, members: 15
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x600(0xc0 Byte(s)), array:0x8(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1088, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1108, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x8cd0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0x9550, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0x9590, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x95a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x95b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x95c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x95d0, bitSize: 0x38(0x7 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0x9608, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x30
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        hash_41a46fee8bc2760, // 0x2
        hash_7b121e8fbe28e9a, // 0x3
        hash_f6d0fcf3180888b, // 0x4
        wristaccessory_t9_s1_digital_gambit_01, // 0x5
        wristaccessory_t9_s1_digital_inteculo_01, // 0x6
        wristaccessory_t9_s1_analog_brawler_01, // 0x7
        hash_1ccdff0ebb3ad612, // 0x8
        wristaccessory_t9_s1_analog_kremlin, // 0x9
        hash_207799341b37ad9e, // 0xa
        hash_20c87151807db74c, // 0xb
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0xc
        hash_23148a03a29fc4f8, // 0xd
        hash_25142303752f4324, // 0xe
        hash_25142503752f468a, // 0xf
        wristaccessory_t9_s1_analog_retroren_02, // 0x10
        wristaccessory_default, // 0x11
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x12
        hash_2f024205461e5edc, // 0x13
        wristaccessory_t9_s1_digital_kazuya_01, // 0x14
        hash_308ad8f9fd396d92, // 0x15
        wristaccessory_t9_s1_digital_diver, // 0x16
        wristaccessory_t9_s1_analog_bope_01, // 0x17
        hash_428539254336fec6, // 0x18
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x19
        wristaccessory_t9_s1_analog_aviator_02, // 0x1a
        wristaccessory_t9_s1_analog_horex_01, // 0x1b
        wristaccessory_t9_s1_analog_fancy, // 0x1c
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x1d
        hash_4fee76d1114701af, // 0x1e
        wristaccessory_t9_s1_bracelet_skull_01, // 0x1f
        wristaccessory_t9_s1_bracelet_01, // 0x20
        hash_55edd980d9d7fb58, // 0x21
        hash_575c967cd59c9145, // 0x22
        wristaccessory_t9_s1_analog_origin_01, // 0x23
        hash_6047ab0d37583ce5, // 0x24
        hash_6203a09a99728e2d, // 0x25
        wristaccessory_t9_s1_analog_private_eye_03, // 0x26
        wristaccessory_t9_s1_analog_private_eye_02, // 0x27
        wristaccessory_t9_s1_analog_private_eye_01, // 0x28
        hash_636c300390323486, // 0x29
        hash_6a1b78ca53c4838e, // 0x2a
        wristaccessory_t9_s1_digital_rank_01, // 0x2b
        hash_708a99620b81ea23, // 0x2c
        hash_708a9a620b81ebd6, // 0x2d
        wristaccessory_t9_s1_digital_compass_01, // 0x2e
        wristaccessory_t9_s1_digital_first_spy_01 // 0x2f
    };

    // idx 0x3 members: 0x34
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_132, // 0x6
        execution_133, // 0x7
        execution_130, // 0x8
        execution_136, // 0x9
        execution_135, // 0xa
        execution_129, // 0xb
        execution_124, // 0xc
        execution_127, // 0xd
        execution_126, // 0xe
        execution_121, // 0xf
        execution_120, // 0x10
        execution_123, // 0x11
        execution_099, // 0x12
        execution_029, // 0x13
        execution_020, // 0x14
        execution_021, // 0x15
        execution_022, // 0x16
        execution_024, // 0x17
        execution_025, // 0x18
        execution_026, // 0x19
        execution_027, // 0x1a
        execution_038, // 0x1b
        execution_033, // 0x1c
        execution_031, // 0x1d
        execution_030, // 0x1e
        execution_037, // 0x1f
        execution_036, // 0x20
        execution_034, // 0x21
        execution_007, // 0x22
        execution_004, // 0x23
        execution_005, // 0x24
        execution_002, // 0x25
        execution_003, // 0x26
        execution_001, // 0x27
        execution_010, // 0x28
        execution_013, // 0x29
        execution_015, // 0x2a
        execution_014, // 0x2b
        execution_017, // 0x2c
        execution_016, // 0x2d
        execution_018, // 0x2e
        execution_064, // 0x2f
        execution_066, // 0x30
        execution_062, // 0x31
        execution_048, // 0x32
        execution_051 // 0x33
    };

    // idx 0x4 members: 0x8
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3be2180eba09e101, // 0x5
        hash_6147e2b835fc3454, // 0x6
        hash_6b8377c83507a7f9 // 0x7
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x9638, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x9610(0x12c2 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0x9630, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_6ba81c8d3b215841 {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 38632 (0x96e8)
    // header byte size . 4829 (0x12dd)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x38, members: 2
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x30(0x6 Byte(s)), array:0x30(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x34, array:0x34(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2010, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1800(0x300 Byte(s)), array:0x20(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[32];
        // offset: 0x1810, bitSize: 0x800(0x100 Byte(s)), array:0x20(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[32];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x8718, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x86d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x86e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x86f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x8700, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x8710, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0x9630, members: 19
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x600(0xc0 Byte(s)), array:0x8(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x10a8, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1128, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x8cf0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0x9570, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0x95b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x95c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x95d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x95e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x95f0, bitSize: 0x38(0x7 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0x9628, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x9629, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x962a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0x962b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x9610, members: 15
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x600(0xc0 Byte(s)), array:0x8(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1088, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1108, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x8cd0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0x9550, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0x9590, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x95a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x95b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x95c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x95d0, bitSize: 0x38(0x7 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0x9608, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x30
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        hash_41a46fee8bc2760, // 0x2
        hash_7b121e8fbe28e9a, // 0x3
        hash_f6d0fcf3180888b, // 0x4
        wristaccessory_t9_s1_digital_gambit_01, // 0x5
        wristaccessory_t9_s1_digital_inteculo_01, // 0x6
        wristaccessory_t9_s1_analog_brawler_01, // 0x7
        hash_1ccdff0ebb3ad612, // 0x8
        wristaccessory_t9_s1_analog_kremlin, // 0x9
        hash_207799341b37ad9e, // 0xa
        hash_20c87151807db74c, // 0xb
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0xc
        hash_23148a03a29fc4f8, // 0xd
        hash_25142303752f4324, // 0xe
        hash_25142503752f468a, // 0xf
        wristaccessory_t9_s1_analog_retroren_02, // 0x10
        wristaccessory_default, // 0x11
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x12
        hash_2f024205461e5edc, // 0x13
        wristaccessory_t9_s1_digital_kazuya_01, // 0x14
        hash_308ad8f9fd396d92, // 0x15
        wristaccessory_t9_s1_digital_diver, // 0x16
        wristaccessory_t9_s1_analog_bope_01, // 0x17
        hash_428539254336fec6, // 0x18
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x19
        wristaccessory_t9_s1_analog_aviator_02, // 0x1a
        wristaccessory_t9_s1_analog_horex_01, // 0x1b
        wristaccessory_t9_s1_analog_fancy, // 0x1c
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x1d
        hash_4fee76d1114701af, // 0x1e
        wristaccessory_t9_s1_bracelet_skull_01, // 0x1f
        wristaccessory_t9_s1_bracelet_01, // 0x20
        hash_55edd980d9d7fb58, // 0x21
        hash_575c967cd59c9145, // 0x22
        wristaccessory_t9_s1_analog_origin_01, // 0x23
        hash_6047ab0d37583ce5, // 0x24
        hash_6203a09a99728e2d, // 0x25
        wristaccessory_t9_s1_analog_private_eye_03, // 0x26
        wristaccessory_t9_s1_analog_private_eye_02, // 0x27
        wristaccessory_t9_s1_analog_private_eye_01, // 0x28
        hash_6a1b78ca53c4838e, // 0x29
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x2a
        wristaccessory_t9_s1_digital_rank_01, // 0x2b
        hash_708a99620b81ea23, // 0x2c
        hash_708a9a620b81ebd6, // 0x2d
        wristaccessory_t9_s1_digital_compass_01, // 0x2e
        wristaccessory_t9_s1_digital_first_spy_01 // 0x2f
    };

    // idx 0x3 members: 0x34
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_132, // 0x6
        execution_133, // 0x7
        execution_130, // 0x8
        execution_136, // 0x9
        execution_135, // 0xa
        execution_129, // 0xb
        execution_124, // 0xc
        execution_127, // 0xd
        execution_126, // 0xe
        execution_121, // 0xf
        execution_120, // 0x10
        execution_123, // 0x11
        execution_099, // 0x12
        execution_029, // 0x13
        execution_020, // 0x14
        execution_021, // 0x15
        execution_022, // 0x16
        execution_024, // 0x17
        execution_025, // 0x18
        execution_026, // 0x19
        execution_027, // 0x1a
        execution_038, // 0x1b
        execution_033, // 0x1c
        execution_031, // 0x1d
        execution_030, // 0x1e
        execution_037, // 0x1f
        execution_036, // 0x20
        execution_034, // 0x21
        execution_007, // 0x22
        execution_004, // 0x23
        execution_005, // 0x24
        execution_002, // 0x25
        execution_003, // 0x26
        execution_001, // 0x27
        execution_010, // 0x28
        execution_013, // 0x29
        execution_015, // 0x2a
        execution_014, // 0x2b
        execution_017, // 0x2c
        execution_016, // 0x2d
        execution_018, // 0x2e
        execution_064, // 0x2f
        execution_066, // 0x30
        execution_062, // 0x31
        execution_048, // 0x32
        execution_051 // 0x33
    };

    // idx 0x4 members: 0x8
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3be2180eba09e101, // 0x5
        hash_6147e2b835fc3454, // 0x6
        hash_6b8377c83507a7f9 // 0x7
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x9638, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x9610(0x12c2 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0x9630, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_e9cb0f94c6682cd6 {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 38632 (0x96e8)
    // header byte size . 4829 (0x12dd)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x38, members: 2
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x30(0x6 Byte(s)), array:0x30(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x35, array:0x35(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2010, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1800(0x300 Byte(s)), array:0x20(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[32];
        // offset: 0x1810, bitSize: 0x800(0x100 Byte(s)), array:0x20(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[32];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x8718, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x86d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x86e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x86f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x8700, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x8710, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0x9630, members: 19
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x600(0xc0 Byte(s)), array:0x8(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x10a8, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1128, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x8cf0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0x9570, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0x95b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x95c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x95d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x95e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x95f0, bitSize: 0x38(0x7 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0x9628, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x9629, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x962a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0x962b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x9610, members: 15
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x600(0xc0 Byte(s)), array:0x8(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1088, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1108, bitSize: 0x7bc8(0xf79 Byte(s)), array:0x11(hti:0xffff)
        mploadout customclass[17];
        // offset: 0x8cd0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0x9550, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0x9590, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x95a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x95b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x95c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x95d0, bitSize: 0x38(0x7 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0x9608, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x30
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        hash_41a46fee8bc2760, // 0x2
        hash_7b121e8fbe28e9a, // 0x3
        hash_f6d0fcf3180888b, // 0x4
        wristaccessory_t9_s1_digital_gambit_01, // 0x5
        wristaccessory_t9_s1_digital_inteculo_01, // 0x6
        wristaccessory_t9_s1_analog_brawler_01, // 0x7
        hash_1ccdff0ebb3ad612, // 0x8
        wristaccessory_t9_s1_analog_kremlin, // 0x9
        hash_207799341b37ad9e, // 0xa
        hash_20c87151807db74c, // 0xb
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0xc
        hash_23148a03a29fc4f8, // 0xd
        hash_25142303752f4324, // 0xe
        hash_25142503752f468a, // 0xf
        wristaccessory_t9_s1_analog_retroren_02, // 0x10
        wristaccessory_default, // 0x11
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x12
        hash_2f024205461e5edc, // 0x13
        wristaccessory_t9_s1_digital_kazuya_01, // 0x14
        hash_308ad8f9fd396d92, // 0x15
        wristaccessory_t9_s1_digital_diver, // 0x16
        wristaccessory_t9_s1_analog_bope_01, // 0x17
        hash_428539254336fec6, // 0x18
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x19
        wristaccessory_t9_s1_analog_aviator_02, // 0x1a
        wristaccessory_t9_s1_analog_horex_01, // 0x1b
        wristaccessory_t9_s1_analog_fancy, // 0x1c
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x1d
        hash_4fee76d1114701af, // 0x1e
        wristaccessory_t9_s1_bracelet_skull_01, // 0x1f
        wristaccessory_t9_s1_bracelet_01, // 0x20
        hash_55edd980d9d7fb58, // 0x21
        hash_575c967cd59c9145, // 0x22
        wristaccessory_t9_s1_analog_origin_01, // 0x23
        hash_6047ab0d37583ce5, // 0x24
        hash_6203a09a99728e2d, // 0x25
        wristaccessory_t9_s1_analog_private_eye_03, // 0x26
        wristaccessory_t9_s1_analog_private_eye_02, // 0x27
        wristaccessory_t9_s1_analog_private_eye_01, // 0x28
        hash_6a1b78ca53c4838e, // 0x29
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x2a
        wristaccessory_t9_s1_digital_rank_01, // 0x2b
        hash_708a99620b81ea23, // 0x2c
        hash_708a9a620b81ebd6, // 0x2d
        wristaccessory_t9_s1_digital_compass_01, // 0x2e
        wristaccessory_t9_s1_digital_first_spy_01 // 0x2f
    };

    // idx 0x3 members: 0x35
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_132, // 0x6
        execution_133, // 0x7
        execution_130, // 0x8
        execution_136, // 0x9
        execution_137, // 0xa
        execution_135, // 0xb
        execution_129, // 0xc
        execution_124, // 0xd
        execution_127, // 0xe
        execution_126, // 0xf
        execution_121, // 0x10
        execution_120, // 0x11
        execution_123, // 0x12
        execution_099, // 0x13
        execution_029, // 0x14
        execution_020, // 0x15
        execution_021, // 0x16
        execution_022, // 0x17
        execution_024, // 0x18
        execution_025, // 0x19
        execution_026, // 0x1a
        execution_027, // 0x1b
        execution_038, // 0x1c
        execution_033, // 0x1d
        execution_031, // 0x1e
        execution_030, // 0x1f
        execution_037, // 0x20
        execution_036, // 0x21
        execution_034, // 0x22
        execution_007, // 0x23
        execution_004, // 0x24
        execution_005, // 0x25
        execution_002, // 0x26
        execution_003, // 0x27
        execution_001, // 0x28
        execution_010, // 0x29
        execution_013, // 0x2a
        execution_015, // 0x2b
        execution_014, // 0x2c
        execution_017, // 0x2d
        execution_016, // 0x2e
        execution_018, // 0x2f
        execution_064, // 0x30
        execution_066, // 0x31
        execution_062, // 0x32
        execution_048, // 0x33
        execution_051 // 0x34
    };

    // idx 0x4 members: 0x8
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3be2180eba09e101, // 0x5
        hash_6147e2b835fc3454, // 0x6
        hash_6b8377c83507a7f9 // 0x7
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x9638, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x9610(0x12c2 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0x9630, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_a2fcbe3be69ab732 {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 58984 (0xe668)
    // header byte size . 7373 (0x1ccd)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x68, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x5c, array:0x5c(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x35, array:0x35(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xcfe8, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xcfa0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xcfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xcfc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xcfd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xcfe0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xe5b0, members: 19
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1228, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x12a8, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd740, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4c0, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0xe500, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe510, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe520, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe530, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe540, bitSize: 0x68(0xd Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5a8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xe5a9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xe5aa, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xe5ab, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xe590, members: 15
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1208, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1288, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd720, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4a0, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0xe4e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe4f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe500, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe510, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe520, bitSize: 0x68(0xd Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe588, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x5c
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_esports_rokkr_sy, // 0x5
        wristaccessory_t9_esports_rokkr_pc, // 0x6
        wristaccessory_t9_esports_rokkr_ms, // 0x7
        wristaccessory_t9_s2_analog_necro_king, // 0x8
        wristaccessory_t9_s2_digital_sforce, // 0x9
        wristaccessory_t9_s1_digital_gambit_01, // 0xa
        wristaccessory_t9_s1_digital_inteculo_01, // 0xb
        wristaccessory_t9_s1_analog_brawler_01, // 0xc
        hash_1ccdff0ebb3ad612, // 0xd
        wristaccessory_t9_s2_analog_jungle_aviator, // 0xe
        wristaccessory_t9_s1_analog_kremlin, // 0xf
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x10
        wristaccessory_t9_s2_analog_mortal, // 0x11
        wristaccessory_t9_esports_empire_ms, // 0x12
        wristaccessory_t9_esports_empire_pc, // 0x13
        wristaccessory_t9_esports_empire_sy, // 0x14
        hash_25142303752f4324, // 0x15
        hash_25142503752f468a, // 0x16
        wristaccessory_t9_s1_analog_retroren_02, // 0x17
        wristaccessory_default, // 0x18
        wristaccessory_t9_esports_royalravens_ms, // 0x19
        wristaccessory_t9_esports_royalravens_pc, // 0x1a
        wristaccessory_t9_esports_royalravens_sy, // 0x1b
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x1c
        wristaccessory_t9_s2_digital_mini_map, // 0x1d
        wristaccessory_t9_s1_digital_kazuya_01, // 0x1e
        wristaccessory_t9_s1_digital_diver, // 0x1f
        wristaccessory_t9_esports_thieves_ms, // 0x20
        wristaccessory_t9_esports_thieves_pc, // 0x21
        wristaccessory_t9_esports_thieves_sy, // 0x22
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x23
        wristaccessory_t9_s2_analog_naval_warfare, // 0x24
        wristaccessory_t9_esports_subliners_pc, // 0x25
        wristaccessory_t9_esports_subliners_sy, // 0x26
        wristaccessory_t9_esports_subliners_ms, // 0x27
        wristaccessory_t9_s2_analog_dark_aether, // 0x28
        wristaccessory_t9_s2_analog_mayan, // 0x29
        wristaccessory_t9_s1_analog_bope_01, // 0x2a
        wristaccessory_t9_esports_ultra_ms, // 0x2b
        wristaccessory_t9_esports_ultra_sy, // 0x2c
        wristaccessory_t9_esports_ultra_pc, // 0x2d
        wristaccessory_t9_s2_analog_paratroop, // 0x2e
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x2f
        wristaccessory_t9_s1_analog_aviator_02, // 0x30
        wristaccessory_t9_s1_analog_horex_01, // 0x31
        wristaccessory_t9_s1_analog_fancy, // 0x32
        wristaccessory_t9_esports_optic_ms, // 0x33
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x34
        wristaccessory_t9_esports_optic_sy, // 0x35
        wristaccessory_t9_esports_optic_pc, // 0x36
        wristaccessory_t9_s2_analog_rebel, // 0x37
        wristaccessory_t9_s2_analog_white_tiger, // 0x38
        wristaccessory_t9_s2_analog_caiman, // 0x39
        hash_4fee76d1114701af, // 0x3a
        wristaccessory_t9_s2_analog_broken_fancy, // 0x3b
        hash_511c7fa835d89891, // 0x3c
        wristaccessory_t9_s1_bracelet_skull_01, // 0x3d
        wristaccessory_t9_s1_bracelet_01, // 0x3e
        hash_575c967cd59c9145, // 0x3f
        wristaccessory_t9_esports_surge_sy, // 0x40
        wristaccessory_t9_esports_surge_pc, // 0x41
        wristaccessory_t9_esports_surge_ms, // 0x42
        wristaccessory_t9_esports_faze_ms, // 0x43
        wristaccessory_t9_esports_faze_pc, // 0x44
        wristaccessory_t9_esports_faze_sy, // 0x45
        wristaccessory_t9_s1_analog_origin_01, // 0x46
        wristaccessory_t9_esports_mutineers_pc, // 0x47
        wristaccessory_t9_esports_mutineers_sy, // 0x48
        wristaccessory_t9_esports_mutineers_ms, // 0x49
        wristaccessory_t9_s1_analog_private_eye_03, // 0x4a
        wristaccessory_t9_s1_analog_private_eye_02, // 0x4b
        wristaccessory_t9_s1_analog_private_eye_01, // 0x4c
        wristaccessory_t9_esports_guerillas_sy, // 0x4d
        wristaccessory_t9_esports_guerillas_pc, // 0x4e
        wristaccessory_t9_esports_guerillas_ms, // 0x4f
        wristaccessory_t9_s2_digital_river_slasher, // 0x50
        wristaccessory_t9_s2_bracelet_lure, // 0x51
        wristaccessory_t9_s2_analog_cold_hearted, // 0x52
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x53
        wristaccessory_t9_s1_digital_rank_01, // 0x54
        wristaccessory_t9_s2_digital_jade, // 0x55
        hash_708a99620b81ea23, // 0x56
        hash_708a9a620b81ebd6, // 0x57
        wristaccessory_t9_s2_analog_black_silver, // 0x58
        wristaccessory_t9_s2_analog_black_gold, // 0x59
        wristaccessory_t9_s1_digital_compass_01, // 0x5a
        wristaccessory_t9_s1_digital_first_spy_01 // 0x5b
    };

    // idx 0x3 members: 0x35
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_132, // 0x6
        execution_133, // 0x7
        execution_130, // 0x8
        execution_136, // 0x9
        execution_135, // 0xa
        execution_129, // 0xb
        execution_124, // 0xc
        execution_127, // 0xd
        execution_126, // 0xe
        execution_121, // 0xf
        execution_120, // 0x10
        execution_123, // 0x11
        execution_201, // 0x12
        execution_099, // 0x13
        execution_029, // 0x14
        execution_020, // 0x15
        execution_021, // 0x16
        execution_022, // 0x17
        execution_024, // 0x18
        execution_025, // 0x19
        execution_026, // 0x1a
        execution_027, // 0x1b
        execution_038, // 0x1c
        execution_033, // 0x1d
        execution_031, // 0x1e
        execution_030, // 0x1f
        execution_037, // 0x20
        execution_036, // 0x21
        execution_034, // 0x22
        execution_007, // 0x23
        execution_004, // 0x24
        execution_005, // 0x25
        execution_002, // 0x26
        execution_003, // 0x27
        execution_001, // 0x28
        execution_010, // 0x29
        execution_013, // 0x2a
        execution_015, // 0x2b
        execution_014, // 0x2c
        execution_017, // 0x2d
        execution_016, // 0x2e
        execution_018, // 0x2f
        execution_064, // 0x30
        execution_066, // 0x31
        execution_062, // 0x32
        execution_048, // 0x33
        execution_051 // 0x34
    };

    // idx 0x4 members: 0xa
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0xe5b8, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe590(0x1cb2 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0xe5b0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_ec4bbce5bb5efe5a {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 58984 (0xe668)
    // header byte size . 7373 (0x1ccd)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x68, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x5d, array:0x5d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x37, array:0x37(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xcfe8, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xcfa0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xcfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xcfc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xcfd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xcfe0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xe5b0, members: 19
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1228, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x12a8, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd740, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4c0, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0xe500, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe510, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe520, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe530, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe540, bitSize: 0x68(0xd Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5a8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xe5a9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xe5aa, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xe5ab, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xe590, members: 15
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1208, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1288, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd720, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4a0, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0xe4e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe4f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe500, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe510, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe520, bitSize: 0x68(0xd Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe588, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x5d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_esports_rokkr_sy, // 0x5
        wristaccessory_t9_esports_rokkr_pc, // 0x6
        wristaccessory_t9_esports_rokkr_ms, // 0x7
        wristaccessory_t9_s2_analog_necro_king, // 0x8
        wristaccessory_t9_s2_digital_sforce, // 0x9
        wristaccessory_t9_s1_digital_gambit_01, // 0xa
        wristaccessory_t9_s1_digital_inteculo_01, // 0xb
        wristaccessory_t9_s1_analog_brawler_01, // 0xc
        hash_1ccdff0ebb3ad612, // 0xd
        wristaccessory_t9_s2_analog_jungle_aviator, // 0xe
        wristaccessory_t9_s1_analog_kremlin, // 0xf
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x10
        wristaccessory_t9_s2_analog_mortal, // 0x11
        wristaccessory_t9_esports_empire_ms, // 0x12
        wristaccessory_t9_esports_empire_pc, // 0x13
        wristaccessory_t9_esports_empire_sy, // 0x14
        hash_25142303752f4324, // 0x15
        hash_25142503752f468a, // 0x16
        wristaccessory_t9_s1_analog_retroren_02, // 0x17
        wristaccessory_default, // 0x18
        wristaccessory_t9_esports_royalravens_ms, // 0x19
        wristaccessory_t9_esports_royalravens_pc, // 0x1a
        wristaccessory_t9_esports_royalravens_sy, // 0x1b
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x1c
        wristaccessory_t9_s2_digital_mini_map, // 0x1d
        wristaccessory_t9_s1_digital_kazuya_01, // 0x1e
        wristaccessory_t9_s2_digital_mayan, // 0x1f
        wristaccessory_t9_s1_digital_diver, // 0x20
        wristaccessory_t9_esports_thieves_ms, // 0x21
        wristaccessory_t9_esports_thieves_pc, // 0x22
        wristaccessory_t9_esports_thieves_sy, // 0x23
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x24
        wristaccessory_t9_s2_analog_naval_warfare, // 0x25
        wristaccessory_t9_esports_subliners_pc, // 0x26
        wristaccessory_t9_esports_subliners_sy, // 0x27
        wristaccessory_t9_esports_subliners_ms, // 0x28
        wristaccessory_t9_s2_analog_dark_aether, // 0x29
        wristaccessory_t9_s2_analog_mayan, // 0x2a
        wristaccessory_t9_s1_analog_bope_01, // 0x2b
        wristaccessory_t9_esports_ultra_ms, // 0x2c
        wristaccessory_t9_esports_ultra_sy, // 0x2d
        wristaccessory_t9_esports_ultra_pc, // 0x2e
        wristaccessory_t9_s2_analog_paratroop, // 0x2f
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x30
        wristaccessory_t9_s1_analog_aviator_02, // 0x31
        wristaccessory_t9_s1_analog_horex_01, // 0x32
        wristaccessory_t9_s1_analog_fancy, // 0x33
        wristaccessory_t9_esports_optic_ms, // 0x34
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x35
        wristaccessory_t9_esports_optic_sy, // 0x36
        wristaccessory_t9_esports_optic_pc, // 0x37
        wristaccessory_t9_s2_analog_rebel, // 0x38
        wristaccessory_t9_s2_analog_white_tiger, // 0x39
        wristaccessory_t9_s2_analog_caiman, // 0x3a
        hash_4fee76d1114701af, // 0x3b
        wristaccessory_t9_s2_analog_broken_fancy, // 0x3c
        hash_511c7fa835d89891, // 0x3d
        wristaccessory_t9_s1_bracelet_skull_01, // 0x3e
        wristaccessory_t9_s1_bracelet_01, // 0x3f
        hash_575c967cd59c9145, // 0x40
        wristaccessory_t9_esports_surge_sy, // 0x41
        wristaccessory_t9_esports_surge_pc, // 0x42
        wristaccessory_t9_esports_surge_ms, // 0x43
        wristaccessory_t9_esports_faze_ms, // 0x44
        wristaccessory_t9_esports_faze_pc, // 0x45
        wristaccessory_t9_esports_faze_sy, // 0x46
        wristaccessory_t9_s1_analog_origin_01, // 0x47
        wristaccessory_t9_esports_mutineers_pc, // 0x48
        wristaccessory_t9_esports_mutineers_sy, // 0x49
        wristaccessory_t9_esports_mutineers_ms, // 0x4a
        wristaccessory_t9_s1_analog_private_eye_03, // 0x4b
        wristaccessory_t9_s1_analog_private_eye_02, // 0x4c
        wristaccessory_t9_s1_analog_private_eye_01, // 0x4d
        wristaccessory_t9_esports_guerillas_sy, // 0x4e
        wristaccessory_t9_esports_guerillas_pc, // 0x4f
        wristaccessory_t9_esports_guerillas_ms, // 0x50
        wristaccessory_t9_s2_digital_river_slasher, // 0x51
        wristaccessory_t9_s2_bracelet_lure, // 0x52
        wristaccessory_t9_s2_analog_cold_hearted, // 0x53
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x54
        wristaccessory_t9_s1_digital_rank_01, // 0x55
        wristaccessory_t9_s2_digital_jade, // 0x56
        hash_708a99620b81ea23, // 0x57
        hash_708a9a620b81ebd6, // 0x58
        wristaccessory_t9_s2_analog_black_silver, // 0x59
        wristaccessory_t9_s2_analog_black_gold, // 0x5a
        wristaccessory_t9_s1_digital_compass_01, // 0x5b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x5c
    };

    // idx 0x3 members: 0x37
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_138, // 0x6
        execution_139, // 0x7
        execution_132, // 0x8
        execution_133, // 0x9
        execution_130, // 0xa
        execution_136, // 0xb
        execution_135, // 0xc
        execution_129, // 0xd
        execution_124, // 0xe
        execution_127, // 0xf
        execution_126, // 0x10
        execution_121, // 0x11
        execution_120, // 0x12
        execution_123, // 0x13
        execution_201, // 0x14
        execution_099, // 0x15
        execution_029, // 0x16
        execution_020, // 0x17
        execution_021, // 0x18
        execution_022, // 0x19
        execution_024, // 0x1a
        execution_025, // 0x1b
        execution_026, // 0x1c
        execution_027, // 0x1d
        execution_038, // 0x1e
        execution_033, // 0x1f
        execution_031, // 0x20
        execution_030, // 0x21
        execution_037, // 0x22
        execution_036, // 0x23
        execution_034, // 0x24
        execution_007, // 0x25
        execution_004, // 0x26
        execution_005, // 0x27
        execution_002, // 0x28
        execution_003, // 0x29
        execution_001, // 0x2a
        execution_010, // 0x2b
        execution_013, // 0x2c
        execution_015, // 0x2d
        execution_014, // 0x2e
        execution_017, // 0x2f
        execution_016, // 0x30
        execution_018, // 0x31
        execution_064, // 0x32
        execution_066, // 0x33
        execution_062, // 0x34
        execution_048, // 0x35
        execution_051 // 0x36
    };

    // idx 0x4 members: 0xa
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0xe5b8, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe590(0x1cb2 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0xe5b0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_2ce31c0460e60e55 {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 58984 (0xe668)
    // header byte size . 7373 (0x1ccd)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x68, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x5d, array:0x5d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 2
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x38(0x7 Byte(s)), array:0x38(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xcfe8, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xcfa0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xcfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xcfc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xcfd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xcfe0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xe5b0, members: 19
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1228, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x12a8, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd740, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4c0, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0xe500, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe510, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe520, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe530, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe540, bitSize: 0x68(0xd Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5a8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xe5a9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xe5aa, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xe5ab, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xe590, members: 15
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1208, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1288, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd720, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4a0, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0xe4e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe4f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe500, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe510, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe520, bitSize: 0x68(0xd Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe588, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x5d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_esports_rokkr_sy, // 0x5
        wristaccessory_t9_esports_rokkr_pc, // 0x6
        wristaccessory_t9_esports_rokkr_ms, // 0x7
        wristaccessory_t9_s2_analog_necro_king, // 0x8
        wristaccessory_t9_s2_digital_sforce, // 0x9
        wristaccessory_t9_s1_digital_gambit_01, // 0xa
        wristaccessory_t9_s1_digital_inteculo_01, // 0xb
        wristaccessory_t9_s1_analog_brawler_01, // 0xc
        hash_1ccdff0ebb3ad612, // 0xd
        wristaccessory_t9_s2_analog_jungle_aviator, // 0xe
        wristaccessory_t9_s1_analog_kremlin, // 0xf
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x10
        wristaccessory_t9_s2_analog_mortal, // 0x11
        wristaccessory_t9_esports_empire_ms, // 0x12
        wristaccessory_t9_esports_empire_pc, // 0x13
        wristaccessory_t9_esports_empire_sy, // 0x14
        hash_25142303752f4324, // 0x15
        hash_25142503752f468a, // 0x16
        wristaccessory_t9_s1_analog_retroren_02, // 0x17
        wristaccessory_default, // 0x18
        wristaccessory_t9_esports_royalravens_ms, // 0x19
        wristaccessory_t9_esports_royalravens_pc, // 0x1a
        wristaccessory_t9_esports_royalravens_sy, // 0x1b
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x1c
        wristaccessory_t9_s2_digital_mini_map, // 0x1d
        wristaccessory_t9_s1_digital_kazuya_01, // 0x1e
        wristaccessory_t9_s2_digital_mayan, // 0x1f
        wristaccessory_t9_s1_digital_diver, // 0x20
        wristaccessory_t9_esports_thieves_ms, // 0x21
        wristaccessory_t9_esports_thieves_pc, // 0x22
        wristaccessory_t9_esports_thieves_sy, // 0x23
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x24
        wristaccessory_t9_s2_analog_naval_warfare, // 0x25
        wristaccessory_t9_esports_subliners_pc, // 0x26
        wristaccessory_t9_esports_subliners_sy, // 0x27
        wristaccessory_t9_esports_subliners_ms, // 0x28
        wristaccessory_t9_s2_analog_dark_aether, // 0x29
        wristaccessory_t9_s2_analog_mayan, // 0x2a
        wristaccessory_t9_s1_analog_bope_01, // 0x2b
        wristaccessory_t9_esports_ultra_ms, // 0x2c
        wristaccessory_t9_esports_ultra_sy, // 0x2d
        wristaccessory_t9_esports_ultra_pc, // 0x2e
        wristaccessory_t9_s2_analog_paratroop, // 0x2f
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x30
        wristaccessory_t9_s1_analog_aviator_02, // 0x31
        wristaccessory_t9_s1_analog_horex_01, // 0x32
        wristaccessory_t9_s1_analog_fancy, // 0x33
        wristaccessory_t9_esports_optic_ms, // 0x34
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x35
        wristaccessory_t9_esports_optic_sy, // 0x36
        wristaccessory_t9_esports_optic_pc, // 0x37
        wristaccessory_t9_s2_analog_rebel, // 0x38
        wristaccessory_t9_s2_analog_white_tiger, // 0x39
        wristaccessory_t9_s2_analog_caiman, // 0x3a
        hash_4fee76d1114701af, // 0x3b
        wristaccessory_t9_s2_analog_broken_fancy, // 0x3c
        hash_511c7fa835d89891, // 0x3d
        wristaccessory_t9_s1_bracelet_skull_01, // 0x3e
        wristaccessory_t9_s1_bracelet_01, // 0x3f
        hash_575c967cd59c9145, // 0x40
        wristaccessory_t9_esports_surge_sy, // 0x41
        wristaccessory_t9_esports_surge_pc, // 0x42
        wristaccessory_t9_esports_surge_ms, // 0x43
        wristaccessory_t9_esports_faze_ms, // 0x44
        wristaccessory_t9_esports_faze_pc, // 0x45
        wristaccessory_t9_esports_faze_sy, // 0x46
        wristaccessory_t9_s1_analog_origin_01, // 0x47
        wristaccessory_t9_esports_mutineers_pc, // 0x48
        wristaccessory_t9_esports_mutineers_sy, // 0x49
        wristaccessory_t9_esports_mutineers_ms, // 0x4a
        wristaccessory_t9_s1_analog_private_eye_03, // 0x4b
        wristaccessory_t9_s1_analog_private_eye_02, // 0x4c
        wristaccessory_t9_s1_analog_private_eye_01, // 0x4d
        wristaccessory_t9_esports_guerillas_sy, // 0x4e
        wristaccessory_t9_esports_guerillas_pc, // 0x4f
        wristaccessory_t9_esports_guerillas_ms, // 0x50
        wristaccessory_t9_s2_digital_river_slasher, // 0x51
        wristaccessory_t9_s2_bracelet_lure, // 0x52
        wristaccessory_t9_s2_analog_cold_hearted, // 0x53
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x54
        wristaccessory_t9_s1_digital_rank_01, // 0x55
        wristaccessory_t9_s2_digital_jade, // 0x56
        hash_708a99620b81ea23, // 0x57
        hash_708a9a620b81ebd6, // 0x58
        wristaccessory_t9_s2_analog_black_silver, // 0x59
        wristaccessory_t9_s2_analog_black_gold, // 0x5a
        wristaccessory_t9_s1_digital_compass_01, // 0x5b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x5c
    };

    // idx 0x3 members: 0x38
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_138, // 0x6
        execution_139, // 0x7
        execution_132, // 0x8
        execution_133, // 0x9
        execution_130, // 0xa
        execution_136, // 0xb
        execution_135, // 0xc
        execution_129, // 0xd
        execution_124, // 0xe
        execution_127, // 0xf
        execution_126, // 0x10
        execution_121, // 0x11
        execution_120, // 0x12
        execution_123, // 0x13
        execution_201, // 0x14
        execution_099, // 0x15
        execution_029, // 0x16
        execution_020, // 0x17
        execution_021, // 0x18
        execution_022, // 0x19
        execution_024, // 0x1a
        execution_025, // 0x1b
        execution_026, // 0x1c
        execution_027, // 0x1d
        execution_038, // 0x1e
        execution_033, // 0x1f
        execution_031, // 0x20
        execution_030, // 0x21
        execution_037, // 0x22
        execution_036, // 0x23
        execution_034, // 0x24
        execution_007, // 0x25
        execution_004, // 0x26
        execution_005, // 0x27
        execution_002, // 0x28
        execution_003, // 0x29
        execution_001, // 0x2a
        execution_010, // 0x2b
        execution_013, // 0x2c
        execution_015, // 0x2d
        execution_014, // 0x2e
        execution_017, // 0x2f
        execution_016, // 0x30
        execution_018, // 0x31
        execution_064, // 0x32
        execution_066, // 0x33
        execution_062, // 0x34
        execution_048, // 0x35
        execution_058, // 0x36
        execution_051 // 0x37
    };

    // idx 0x4 members: 0xa
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0xe5b8, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe590(0x1cb2 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0xe5b0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_4f6784fa1a14596b {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 58992 (0xe670)
    // header byte size . 7374 (0x1cce)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x68, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x5d, array:0x5d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x48, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x39, array:0x39(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xcfe8, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xcfa0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xcfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xcfc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xcfd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xcfe0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xe5b8, members: 19
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1228, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x12a8, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd740, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4c0, bitSize: 0x48(0x9 Byte(s))
        execution execution;
        // offset: 0xe508, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe518, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe528, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe538, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe548, bitSize: 0x68(0xd Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5b0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xe5b1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xe5b2, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xe5b3, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xe598, members: 15
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1208, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1288, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd720, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4a0, bitSize: 0x48(0x9 Byte(s))
        execution execution;
        // offset: 0xe4e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe4f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe508, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe518, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe528, bitSize: 0x68(0xd Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe590, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x5d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_esports_rokkr_sy, // 0x5
        wristaccessory_t9_esports_rokkr_pc, // 0x6
        wristaccessory_t9_esports_rokkr_ms, // 0x7
        wristaccessory_t9_s2_analog_necro_king, // 0x8
        wristaccessory_t9_s2_digital_sforce, // 0x9
        wristaccessory_t9_s1_digital_gambit_01, // 0xa
        wristaccessory_t9_s1_digital_inteculo_01, // 0xb
        wristaccessory_t9_s1_analog_brawler_01, // 0xc
        hash_1ccdff0ebb3ad612, // 0xd
        wristaccessory_t9_s2_analog_jungle_aviator, // 0xe
        wristaccessory_t9_s1_analog_kremlin, // 0xf
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x10
        wristaccessory_t9_s2_analog_mortal, // 0x11
        wristaccessory_t9_esports_empire_ms, // 0x12
        wristaccessory_t9_esports_empire_pc, // 0x13
        wristaccessory_t9_esports_empire_sy, // 0x14
        hash_25142303752f4324, // 0x15
        hash_25142503752f468a, // 0x16
        wristaccessory_t9_s1_analog_retroren_02, // 0x17
        wristaccessory_default, // 0x18
        wristaccessory_t9_esports_royalravens_ms, // 0x19
        wristaccessory_t9_esports_royalravens_pc, // 0x1a
        wristaccessory_t9_esports_royalravens_sy, // 0x1b
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x1c
        wristaccessory_t9_s2_digital_mini_map, // 0x1d
        wristaccessory_t9_s1_digital_kazuya_01, // 0x1e
        wristaccessory_t9_s2_digital_mayan, // 0x1f
        wristaccessory_t9_s1_digital_diver, // 0x20
        wristaccessory_t9_esports_thieves_ms, // 0x21
        wristaccessory_t9_esports_thieves_pc, // 0x22
        wristaccessory_t9_esports_thieves_sy, // 0x23
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x24
        wristaccessory_t9_s2_analog_naval_warfare, // 0x25
        wristaccessory_t9_esports_subliners_pc, // 0x26
        wristaccessory_t9_esports_subliners_sy, // 0x27
        wristaccessory_t9_esports_subliners_ms, // 0x28
        wristaccessory_t9_s2_analog_dark_aether, // 0x29
        wristaccessory_t9_s2_analog_mayan, // 0x2a
        wristaccessory_t9_s1_analog_bope_01, // 0x2b
        wristaccessory_t9_esports_ultra_ms, // 0x2c
        wristaccessory_t9_esports_ultra_sy, // 0x2d
        wristaccessory_t9_esports_ultra_pc, // 0x2e
        wristaccessory_t9_s2_analog_paratroop, // 0x2f
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x30
        wristaccessory_t9_s1_analog_aviator_02, // 0x31
        wristaccessory_t9_s1_analog_horex_01, // 0x32
        wristaccessory_t9_s1_analog_fancy, // 0x33
        wristaccessory_t9_esports_optic_ms, // 0x34
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x35
        wristaccessory_t9_esports_optic_sy, // 0x36
        wristaccessory_t9_esports_optic_pc, // 0x37
        wristaccessory_t9_s2_analog_rebel, // 0x38
        wristaccessory_t9_s2_analog_white_tiger, // 0x39
        wristaccessory_t9_s2_analog_caiman, // 0x3a
        hash_4fee76d1114701af, // 0x3b
        wristaccessory_t9_s2_analog_broken_fancy, // 0x3c
        hash_511c7fa835d89891, // 0x3d
        wristaccessory_t9_s1_bracelet_skull_01, // 0x3e
        wristaccessory_t9_s1_bracelet_01, // 0x3f
        hash_575c967cd59c9145, // 0x40
        wristaccessory_t9_esports_surge_sy, // 0x41
        wristaccessory_t9_esports_surge_pc, // 0x42
        wristaccessory_t9_esports_surge_ms, // 0x43
        wristaccessory_t9_esports_faze_ms, // 0x44
        wristaccessory_t9_esports_faze_pc, // 0x45
        wristaccessory_t9_esports_faze_sy, // 0x46
        wristaccessory_t9_s1_analog_origin_01, // 0x47
        wristaccessory_t9_esports_mutineers_pc, // 0x48
        wristaccessory_t9_esports_mutineers_sy, // 0x49
        wristaccessory_t9_esports_mutineers_ms, // 0x4a
        wristaccessory_t9_s1_analog_private_eye_03, // 0x4b
        wristaccessory_t9_s1_analog_private_eye_02, // 0x4c
        wristaccessory_t9_s1_analog_private_eye_01, // 0x4d
        wristaccessory_t9_esports_guerillas_sy, // 0x4e
        wristaccessory_t9_esports_guerillas_pc, // 0x4f
        wristaccessory_t9_esports_guerillas_ms, // 0x50
        wristaccessory_t9_s2_digital_river_slasher, // 0x51
        wristaccessory_t9_s2_bracelet_lure, // 0x52
        wristaccessory_t9_s2_analog_cold_hearted, // 0x53
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x54
        wristaccessory_t9_s1_digital_rank_01, // 0x55
        wristaccessory_t9_s2_digital_jade, // 0x56
        hash_708a99620b81ea23, // 0x57
        hash_708a9a620b81ebd6, // 0x58
        wristaccessory_t9_s2_analog_black_silver, // 0x59
        wristaccessory_t9_s2_analog_black_gold, // 0x5a
        wristaccessory_t9_s1_digital_compass_01, // 0x5b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x5c
    };

    // idx 0x3 members: 0x39
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_138, // 0x6
        execution_139, // 0x7
        execution_132, // 0x8
        execution_133, // 0x9
        execution_130, // 0xa
        execution_136, // 0xb
        execution_135, // 0xc
        execution_129, // 0xd
        execution_124, // 0xe
        execution_127, // 0xf
        execution_126, // 0x10
        execution_121, // 0x11
        execution_120, // 0x12
        execution_123, // 0x13
        execution_201, // 0x14
        execution_099, // 0x15
        execution_029, // 0x16
        execution_020, // 0x17
        execution_021, // 0x18
        execution_022, // 0x19
        execution_024, // 0x1a
        execution_025, // 0x1b
        execution_026, // 0x1c
        execution_027, // 0x1d
        execution_038, // 0x1e
        execution_033, // 0x1f
        execution_031, // 0x20
        execution_030, // 0x21
        execution_037, // 0x22
        execution_036, // 0x23
        execution_034, // 0x24
        execution_007, // 0x25
        execution_004, // 0x26
        execution_005, // 0x27
        execution_002, // 0x28
        execution_003, // 0x29
        execution_001, // 0x2a
        execution_010, // 0x2b
        execution_013, // 0x2c
        execution_015, // 0x2d
        execution_014, // 0x2e
        execution_017, // 0x2f
        execution_016, // 0x30
        execution_018, // 0x31
        execution_064, // 0x32
        execution_066, // 0x33
        execution_062, // 0x34
        execution_048, // 0x35
        execution_040, // 0x36
        execution_058, // 0x37
        execution_051 // 0x38
    };

    // idx 0x4 members: 0xa
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0xe5c0, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe598(0x1cb3 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0xe5b8, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_d1bb56a4ebef28c0 {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 59024 (0xe690)
    // header byte size . 7378 (0x1cd2)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6a, array:0x6a(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x50, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x47, array:0x47(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xcfe8, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xcfa0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xcfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xcfc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xcfd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xcfe0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xe5d8, members: 20
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xab0, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1230, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x12b0, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd748, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4c8, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xe518, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe528, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe538, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe548, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe558, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5d0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xe5d1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xe5d2, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xe5d3, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xe5b8, members: 16
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xa90, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1210, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1290, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd728, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4a8, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xe4f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe508, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe518, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe528, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe538, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5b0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x6a
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s2_analog_420, // 0x24
        wristaccessory_t9_s2_digital_mini_map, // 0x25
        wristaccessory_t9_s1_digital_kazuya_01, // 0x26
        wristaccessory_t9_s2_digital_mayan, // 0x27
        wristaccessory_t9_s1_digital_diver, // 0x28
        wristaccessory_t9_esports_thieves_ms, // 0x29
        wristaccessory_t9_esports_thieves_pc, // 0x2a
        wristaccessory_t9_esports_thieves_sy, // 0x2b
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2c
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2d
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2e
        wristaccessory_t9_esports_subliners_pc, // 0x2f
        wristaccessory_t9_esports_subliners_sy, // 0x30
        wristaccessory_t9_esports_subliners_ms, // 0x31
        wristaccessory_t9_s2_analog_dark_aether, // 0x32
        wristaccessory_t9_s2_analog_mayan, // 0x33
        wristaccessory_t9_s1_analog_bope_01, // 0x34
        wristaccessory_t9_esports_ultra_ms, // 0x35
        wristaccessory_t9_esports_ultra_sy, // 0x36
        wristaccessory_t9_esports_ultra_pc, // 0x37
        wristaccessory_t9_s2_analog_paratroop, // 0x38
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x39
        wristaccessory_t9_s1_analog_aviator_02, // 0x3a
        wristaccessory_t9_s1_analog_horex_01, // 0x3b
        wristaccessory_t9_s1_analog_fancy, // 0x3c
        wristaccessory_t9_esports_optic_ms, // 0x3d
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3e
        wristaccessory_t9_esports_optic_sy, // 0x3f
        wristaccessory_t9_esports_optic_pc, // 0x40
        wristaccessory_t9_s2_analog_rebel, // 0x41
        wristaccessory_t9_s2_analog_white_tiger, // 0x42
        wristaccessory_t9_s2_analog_caiman, // 0x43
        hash_4fee76d1114701af, // 0x44
        wristaccessory_t9_s2_analog_broken_fancy, // 0x45
        hash_511c7fa835d89891, // 0x46
        wristaccessory_t9_s1_bracelet_skull_01, // 0x47
        wristaccessory_t9_s3_digital_big_joke, // 0x48
        wristaccessory_t9_s1_bracelet_01, // 0x49
        hash_575c967cd59c9145, // 0x4a
        wristaccessory_t9_esports_surge_sy, // 0x4b
        wristaccessory_t9_esports_surge_pc, // 0x4c
        wristaccessory_t9_esports_surge_ms, // 0x4d
        wristaccessory_t9_esports_faze_ms, // 0x4e
        wristaccessory_t9_esports_faze_pc, // 0x4f
        wristaccessory_t9_esports_faze_sy, // 0x50
        wristaccessory_t9_s1_analog_origin_01, // 0x51
        wristaccessory_t9_esports_mutineers_pc, // 0x52
        wristaccessory_t9_esports_mutineers_sy, // 0x53
        wristaccessory_t9_esports_mutineers_ms, // 0x54
        wristaccessory_t9_s1_analog_private_eye_03, // 0x55
        wristaccessory_t9_s1_analog_private_eye_02, // 0x56
        wristaccessory_t9_s1_analog_private_eye_01, // 0x57
        wristaccessory_t9_esports_guerillas_sy, // 0x58
        wristaccessory_t9_esports_guerillas_pc, // 0x59
        wristaccessory_t9_esports_guerillas_ms, // 0x5a
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5b
        wristaccessory_t9_s2_digital_river_slasher, // 0x5c
        wristaccessory_t9_s2_bracelet_lure, // 0x5d
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5e
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x5f
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x60
        wristaccessory_t9_s1_digital_rank_01, // 0x61
        wristaccessory_t9_s2_digital_jade, // 0x62
        hash_708a99620b81ea23, // 0x63
        hash_708a9a620b81ebd6, // 0x64
        wristaccessory_t9_s2_analog_black_silver, // 0x65
        wristaccessory_t9_s3_digital_death_touch, // 0x66
        wristaccessory_t9_s2_analog_black_gold, // 0x67
        wristaccessory_t9_s1_digital_compass_01, // 0x68
        wristaccessory_t9_s1_digital_first_spy_01 // 0x69
    };

    // idx 0x3 members: 0x47
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_117, // 0x5
        execution_110, // 0x6
        execution_111, // 0x7
        execution_112, // 0x8
        execution_118, // 0x9
        execution_101, // 0xa
        execution_100, // 0xb
        execution_108, // 0xc
        execution_138, // 0xd
        execution_139, // 0xe
        execution_132, // 0xf
        execution_133, // 0x10
        execution_130, // 0x11
        execution_136, // 0x12
        execution_137, // 0x13
        execution_135, // 0x14
        execution_129, // 0x15
        execution_124, // 0x16
        execution_127, // 0x17
        execution_126, // 0x18
        execution_121, // 0x19
        execution_120, // 0x1a
        execution_123, // 0x1b
        execution_201, // 0x1c
        execution_202, // 0x1d
        execution_086, // 0x1e
        execution_084, // 0x1f
        execution_099, // 0x20
        execution_029, // 0x21
        execution_020, // 0x22
        execution_021, // 0x23
        execution_022, // 0x24
        execution_024, // 0x25
        execution_025, // 0x26
        execution_026, // 0x27
        execution_027, // 0x28
        execution_038, // 0x29
        execution_033, // 0x2a
        execution_031, // 0x2b
        execution_030, // 0x2c
        execution_037, // 0x2d
        execution_036, // 0x2e
        execution_034, // 0x2f
        execution_009, // 0x30
        execution_007, // 0x31
        execution_004, // 0x32
        execution_005, // 0x33
        execution_002, // 0x34
        execution_003, // 0x35
        execution_001, // 0x36
        execution_010, // 0x37
        execution_013, // 0x38
        execution_015, // 0x39
        execution_014, // 0x3a
        execution_017, // 0x3b
        execution_016, // 0x3c
        execution_018, // 0x3d
        execution_064, // 0x3e
        execution_066, // 0x3f
        execution_062, // 0x40
        execution_069, // 0x41
        execution_048, // 0x42
        execution_040, // 0x43
        execution_058, // 0x44
        execution_051, // 0x45
        hash_7f66c55f0f1308c2 // 0x46
    };

    // idx 0x4 members: 0xa
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0xe5e0, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe5b8(0x1cb7 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0xe5d8, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_4c56145d8288ca4f {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 59024 (0xe690)
    // header byte size . 7378 (0x1cd2)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6b, array:0x6b(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x50, members: 2
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x48(0x9 Byte(s)), array:0x48(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xcfe8, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xcfa0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xcfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xcfc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xcfd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xcfe0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xe5d8, members: 20
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xab0, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1230, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x12b0, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd748, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4c8, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xe518, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe528, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe538, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe548, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe558, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5d0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xe5d1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xe5d2, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xe5d3, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xe5b8, members: 16
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xa90, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1210, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1290, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd728, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4a8, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xe4f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe508, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe518, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe528, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe538, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5b0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x6b
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s3_analog_rebel_fighter, // 0x24
        wristaccessory_t9_s2_analog_420, // 0x25
        wristaccessory_t9_s2_digital_mini_map, // 0x26
        wristaccessory_t9_s1_digital_kazuya_01, // 0x27
        wristaccessory_t9_s2_digital_mayan, // 0x28
        wristaccessory_t9_s1_digital_diver, // 0x29
        wristaccessory_t9_esports_thieves_ms, // 0x2a
        wristaccessory_t9_esports_thieves_pc, // 0x2b
        wristaccessory_t9_esports_thieves_sy, // 0x2c
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2d
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2e
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2f
        wristaccessory_t9_esports_subliners_pc, // 0x30
        wristaccessory_t9_esports_subliners_sy, // 0x31
        wristaccessory_t9_esports_subliners_ms, // 0x32
        wristaccessory_t9_s2_analog_dark_aether, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x61
        wristaccessory_t9_s1_digital_rank_01, // 0x62
        wristaccessory_t9_s2_digital_jade, // 0x63
        hash_708a99620b81ea23, // 0x64
        hash_708a9a620b81ebd6, // 0x65
        wristaccessory_t9_s2_analog_black_silver, // 0x66
        wristaccessory_t9_s3_digital_death_touch, // 0x67
        wristaccessory_t9_s2_analog_black_gold, // 0x68
        wristaccessory_t9_s1_digital_compass_01, // 0x69
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6a
    };

    // idx 0x3 members: 0x48
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_117, // 0x5
        execution_110, // 0x6
        execution_111, // 0x7
        execution_112, // 0x8
        execution_118, // 0x9
        execution_101, // 0xa
        execution_100, // 0xb
        execution_108, // 0xc
        execution_138, // 0xd
        execution_139, // 0xe
        execution_132, // 0xf
        execution_133, // 0x10
        execution_130, // 0x11
        execution_136, // 0x12
        execution_137, // 0x13
        execution_135, // 0x14
        execution_129, // 0x15
        execution_124, // 0x16
        execution_127, // 0x17
        execution_126, // 0x18
        execution_121, // 0x19
        execution_120, // 0x1a
        execution_123, // 0x1b
        execution_201, // 0x1c
        execution_202, // 0x1d
        execution_203, // 0x1e
        execution_086, // 0x1f
        execution_084, // 0x20
        execution_099, // 0x21
        execution_029, // 0x22
        execution_020, // 0x23
        execution_021, // 0x24
        execution_022, // 0x25
        execution_024, // 0x26
        execution_025, // 0x27
        execution_026, // 0x28
        execution_027, // 0x29
        execution_038, // 0x2a
        execution_033, // 0x2b
        execution_031, // 0x2c
        execution_030, // 0x2d
        execution_037, // 0x2e
        execution_036, // 0x2f
        execution_034, // 0x30
        execution_009, // 0x31
        execution_007, // 0x32
        execution_004, // 0x33
        execution_005, // 0x34
        execution_002, // 0x35
        execution_003, // 0x36
        execution_001, // 0x37
        execution_010, // 0x38
        execution_013, // 0x39
        execution_015, // 0x3a
        execution_014, // 0x3b
        execution_017, // 0x3c
        execution_016, // 0x3d
        execution_018, // 0x3e
        execution_064, // 0x3f
        execution_066, // 0x40
        execution_062, // 0x41
        execution_069, // 0x42
        execution_048, // 0x43
        execution_040, // 0x44
        execution_058, // 0x45
        execution_051, // 0x46
        hash_7f66c55f0f1308c2 // 0x47
    };

    // idx 0x4 members: 0xa
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0xe5e0, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe5b8(0x1cb7 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0xe5d8, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_62c9c007b9b79ea8 {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 59024 (0xe690)
    // header byte size . 7378 (0x1cd2)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6b, array:0x6b(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x50, members: 2
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x48(0x9 Byte(s)), array:0x48(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0x178, members: 10
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x18, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0x58, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x98, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0xd8, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x170, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0xeb0, members: 1
    struct hash_7de705fac54227d2 {
        // offset: 0x0, bitSize: 0xeb0(0x1d6 Byte(s)), array:0xa(hti:0xffff)
        weaponvariant variant[10];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_b52214733d52361;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xcfe8, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xcfa0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xcfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xcfc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xcfd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xcfe0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xe5d8, members: 20
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xab0, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1230, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x12b0, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd748, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4c8, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xe518, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe528, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe538, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe548, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe558, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5d0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xe5d1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xe5d2, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xe5d3, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xe5b8, members: 16
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xa90, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1210, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1290, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd728, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4a8, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xe4f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe508, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe518, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe528, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe538, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5b0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x6b
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s3_analog_rebel_fighter, // 0x24
        wristaccessory_t9_s2_analog_420, // 0x25
        wristaccessory_t9_s2_digital_mini_map, // 0x26
        wristaccessory_t9_s1_digital_kazuya_01, // 0x27
        wristaccessory_t9_s2_digital_mayan, // 0x28
        wristaccessory_t9_s1_digital_diver, // 0x29
        wristaccessory_t9_esports_thieves_ms, // 0x2a
        wristaccessory_t9_esports_thieves_pc, // 0x2b
        wristaccessory_t9_esports_thieves_sy, // 0x2c
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2d
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2e
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2f
        wristaccessory_t9_esports_subliners_pc, // 0x30
        wristaccessory_t9_esports_subliners_sy, // 0x31
        wristaccessory_t9_esports_subliners_ms, // 0x32
        wristaccessory_t9_s2_analog_dark_aether, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x61
        wristaccessory_t9_s1_digital_rank_01, // 0x62
        wristaccessory_t9_s2_digital_jade, // 0x63
        hash_708a99620b81ea23, // 0x64
        hash_708a9a620b81ebd6, // 0x65
        wristaccessory_t9_s2_analog_black_silver, // 0x66
        wristaccessory_t9_s3_digital_death_touch, // 0x67
        wristaccessory_t9_s2_analog_black_gold, // 0x68
        wristaccessory_t9_s1_digital_compass_01, // 0x69
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6a
    };

    // idx 0x3 members: 0x48
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_117, // 0x5
        execution_110, // 0x6
        execution_111, // 0x7
        execution_112, // 0x8
        execution_118, // 0x9
        execution_101, // 0xa
        execution_100, // 0xb
        execution_108, // 0xc
        execution_138, // 0xd
        execution_139, // 0xe
        execution_132, // 0xf
        execution_133, // 0x10
        execution_130, // 0x11
        execution_136, // 0x12
        execution_137, // 0x13
        execution_135, // 0x14
        execution_129, // 0x15
        execution_124, // 0x16
        execution_127, // 0x17
        execution_126, // 0x18
        execution_121, // 0x19
        execution_120, // 0x1a
        execution_123, // 0x1b
        execution_201, // 0x1c
        execution_202, // 0x1d
        execution_203, // 0x1e
        execution_086, // 0x1f
        execution_084, // 0x20
        execution_099, // 0x21
        execution_029, // 0x22
        execution_020, // 0x23
        execution_021, // 0x24
        execution_022, // 0x25
        execution_024, // 0x26
        execution_025, // 0x27
        execution_026, // 0x28
        execution_027, // 0x29
        execution_038, // 0x2a
        execution_033, // 0x2b
        execution_031, // 0x2c
        execution_030, // 0x2d
        execution_037, // 0x2e
        execution_036, // 0x2f
        execution_034, // 0x30
        execution_009, // 0x31
        execution_007, // 0x32
        execution_004, // 0x33
        execution_005, // 0x34
        execution_002, // 0x35
        execution_003, // 0x36
        execution_001, // 0x37
        execution_010, // 0x38
        execution_013, // 0x39
        execution_015, // 0x3a
        execution_014, // 0x3b
        execution_017, // 0x3c
        execution_016, // 0x3d
        execution_018, // 0x3e
        execution_064, // 0x3f
        execution_066, // 0x40
        execution_062, // 0x41
        execution_069, // 0x42
        execution_048, // 0x43
        execution_040, // 0x44
        execution_058, // 0x45
        execution_051, // 0x46
        hash_7f66c55f0f1308c2 // 0x47
    };

    // idx 0x4 members: 0xa
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0xe5e0, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe5b8(0x1cb7 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0xe5d8, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_4843de9aae9d727b {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 59024 (0xe690)
    // header byte size . 7378 (0x1cd2)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6c, array:0x6c(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x50, members: 2
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x48(0x9 Byte(s)), array:0x48(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0x178, members: 10
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x18, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0x58, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x98, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0xd8, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x170, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0xeb0, members: 1
    struct hash_7de705fac54227d2 {
        // offset: 0x0, bitSize: 0xeb0(0x1d6 Byte(s)), array:0xa(hti:0xffff)
        weaponvariant variant[10];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_b52214733d52361;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xcfe8, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xcfa0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xcfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xcfc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xcfd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xcfe0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xe5d8, members: 20
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xab0, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1230, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x12b0, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd748, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4c8, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xe518, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe528, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe538, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe548, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe558, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5d0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xe5d1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xe5d2, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xe5d3, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xe5b8, members: 16
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xa90, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1210, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1290, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd728, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4a8, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xe4f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe508, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe518, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe528, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe538, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5b0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x6c
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s3_analog_rebel_fighter, // 0x24
        wristaccessory_t9_s2_analog_420, // 0x25
        wristaccessory_t9_s2_digital_mini_map, // 0x26
        wristaccessory_t9_s1_digital_kazuya_01, // 0x27
        wristaccessory_t9_s2_digital_mayan, // 0x28
        wristaccessory_t9_s1_digital_diver, // 0x29
        wristaccessory_t9_esports_thieves_ms, // 0x2a
        wristaccessory_t9_esports_thieves_pc, // 0x2b
        wristaccessory_t9_esports_thieves_sy, // 0x2c
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2d
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2e
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2f
        wristaccessory_t9_esports_subliners_pc, // 0x30
        wristaccessory_t9_esports_subliners_sy, // 0x31
        wristaccessory_t9_esports_subliners_ms, // 0x32
        wristaccessory_t9_s2_analog_dark_aether, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x61
        wristaccessory_t9_s1_digital_rank_01, // 0x62
        wristaccessory_t9_s2_digital_jade, // 0x63
        hash_708a99620b81ea23, // 0x64
        hash_708a9a620b81ebd6, // 0x65
        wristaccessory_t9_s3_analog_zombie_naga, // 0x66
        wristaccessory_t9_s2_analog_black_silver, // 0x67
        wristaccessory_t9_s3_digital_death_touch, // 0x68
        wristaccessory_t9_s2_analog_black_gold, // 0x69
        wristaccessory_t9_s1_digital_compass_01, // 0x6a
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6b
    };

    // idx 0x3 members: 0x48
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_117, // 0x5
        execution_110, // 0x6
        execution_111, // 0x7
        execution_112, // 0x8
        execution_118, // 0x9
        execution_101, // 0xa
        execution_100, // 0xb
        execution_108, // 0xc
        execution_138, // 0xd
        execution_139, // 0xe
        execution_132, // 0xf
        execution_133, // 0x10
        execution_130, // 0x11
        execution_136, // 0x12
        execution_137, // 0x13
        execution_135, // 0x14
        execution_129, // 0x15
        execution_124, // 0x16
        execution_127, // 0x17
        execution_126, // 0x18
        execution_121, // 0x19
        execution_120, // 0x1a
        execution_123, // 0x1b
        execution_201, // 0x1c
        execution_202, // 0x1d
        execution_203, // 0x1e
        execution_086, // 0x1f
        execution_084, // 0x20
        execution_099, // 0x21
        execution_029, // 0x22
        execution_020, // 0x23
        execution_021, // 0x24
        execution_022, // 0x25
        execution_024, // 0x26
        execution_025, // 0x27
        execution_026, // 0x28
        execution_027, // 0x29
        execution_038, // 0x2a
        execution_033, // 0x2b
        execution_031, // 0x2c
        execution_030, // 0x2d
        execution_037, // 0x2e
        execution_036, // 0x2f
        execution_034, // 0x30
        execution_009, // 0x31
        execution_007, // 0x32
        execution_004, // 0x33
        execution_005, // 0x34
        execution_002, // 0x35
        execution_003, // 0x36
        execution_001, // 0x37
        execution_010, // 0x38
        execution_013, // 0x39
        execution_015, // 0x3a
        execution_014, // 0x3b
        execution_017, // 0x3c
        execution_016, // 0x3d
        execution_018, // 0x3e
        execution_064, // 0x3f
        execution_066, // 0x40
        execution_062, // 0x41
        execution_069, // 0x42
        execution_048, // 0x43
        execution_040, // 0x44
        execution_058, // 0x45
        execution_051, // 0x46
        hash_7f66c55f0f1308c2 // 0x47
    };

    // idx 0x4 members: 0xa
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0xe5e0, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe5b8(0x1cb7 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0xe5d8, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_d8f3d1171c77731b {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 59024 (0xe690)
    // header byte size . 7378 (0x1cd2)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6d, array:0x6d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x50, members: 2
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x48(0x9 Byte(s)), array:0x48(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0x178, members: 10
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x18, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0x58, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x98, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0xd8, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x170, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0xeb0, members: 1
    struct hash_7de705fac54227d2 {
        // offset: 0x0, bitSize: 0xeb0(0x1d6 Byte(s)), array:0xa(hti:0xffff)
        weaponvariant variant[10];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_b52214733d52361;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xcfe8, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xcfa0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xcfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xcfc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xcfd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xcfe0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xe5d8, members: 20
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xab0, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1230, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x12b0, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd748, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4c8, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xe518, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe528, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe538, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe548, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe558, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5d0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xe5d1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xe5d2, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xe5d3, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xe5b8, members: 16
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xa90, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1210, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1290, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd728, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4a8, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xe4f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe508, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe518, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe528, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe538, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5b0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x6d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s3_analog_rebel_fighter, // 0x24
        wristaccessory_t9_s2_analog_420, // 0x25
        wristaccessory_t9_s2_digital_mini_map, // 0x26
        wristaccessory_t9_s1_digital_kazuya_01, // 0x27
        wristaccessory_t9_s2_digital_mayan, // 0x28
        wristaccessory_t9_s1_digital_diver, // 0x29
        wristaccessory_t9_esports_thieves_ms, // 0x2a
        wristaccessory_t9_esports_thieves_pc, // 0x2b
        wristaccessory_t9_esports_thieves_sy, // 0x2c
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2d
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2e
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2f
        wristaccessory_t9_esports_subliners_pc, // 0x30
        wristaccessory_t9_esports_subliners_sy, // 0x31
        wristaccessory_t9_esports_subliners_ms, // 0x32
        wristaccessory_t9_s2_analog_dark_aether, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x61
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x62
        wristaccessory_t9_s1_digital_rank_01, // 0x63
        wristaccessory_t9_s2_digital_jade, // 0x64
        hash_708a99620b81ea23, // 0x65
        hash_708a9a620b81ebd6, // 0x66
        wristaccessory_t9_s3_analog_zombie_naga, // 0x67
        wristaccessory_t9_s2_analog_black_silver, // 0x68
        wristaccessory_t9_s3_digital_death_touch, // 0x69
        wristaccessory_t9_s2_analog_black_gold, // 0x6a
        wristaccessory_t9_s1_digital_compass_01, // 0x6b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6c
    };

    // idx 0x3 members: 0x48
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_117, // 0x5
        execution_110, // 0x6
        execution_111, // 0x7
        execution_112, // 0x8
        execution_118, // 0x9
        execution_101, // 0xa
        execution_100, // 0xb
        execution_108, // 0xc
        execution_138, // 0xd
        execution_139, // 0xe
        execution_132, // 0xf
        execution_133, // 0x10
        execution_130, // 0x11
        execution_136, // 0x12
        execution_137, // 0x13
        execution_135, // 0x14
        execution_129, // 0x15
        execution_124, // 0x16
        execution_127, // 0x17
        execution_126, // 0x18
        execution_121, // 0x19
        execution_120, // 0x1a
        execution_123, // 0x1b
        execution_201, // 0x1c
        execution_202, // 0x1d
        execution_203, // 0x1e
        execution_086, // 0x1f
        execution_084, // 0x20
        execution_099, // 0x21
        execution_029, // 0x22
        execution_020, // 0x23
        execution_021, // 0x24
        execution_022, // 0x25
        execution_024, // 0x26
        execution_025, // 0x27
        execution_026, // 0x28
        execution_027, // 0x29
        execution_038, // 0x2a
        execution_033, // 0x2b
        execution_031, // 0x2c
        execution_030, // 0x2d
        execution_037, // 0x2e
        execution_036, // 0x2f
        execution_034, // 0x30
        execution_009, // 0x31
        execution_007, // 0x32
        execution_004, // 0x33
        execution_005, // 0x34
        execution_002, // 0x35
        execution_003, // 0x36
        execution_001, // 0x37
        execution_010, // 0x38
        execution_013, // 0x39
        execution_015, // 0x3a
        execution_014, // 0x3b
        execution_017, // 0x3c
        execution_016, // 0x3d
        execution_018, // 0x3e
        execution_064, // 0x3f
        execution_066, // 0x40
        execution_062, // 0x41
        execution_069, // 0x42
        execution_048, // 0x43
        execution_040, // 0x44
        execution_058, // 0x45
        execution_051, // 0x46
        hash_7f66c55f0f1308c2 // 0x47
    };

    // idx 0x4 members: 0xa
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0xe5e0, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe5b8(0x1cb7 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0xe5d8, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_3952d5aa3ceb998a {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 59024 (0xe690)
    // header byte size . 7378 (0x1cd2)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6d, array:0x6d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x50, members: 2
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x48(0x9 Byte(s)), array:0x48(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0x178, members: 10
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x18, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0x58, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x98, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0xd8, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x170, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0xeb0, members: 1
    struct hash_7de705fac54227d2 {
        // offset: 0x0, bitSize: 0xeb0(0x1d6 Byte(s)), array:0xa(hti:0xffff)
        weaponvariant variant[10];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_21f27cf6b4dae6b3;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xc0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x100, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x140, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xcfe8, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb08, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xcfa0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xcfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xcfc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xcfd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xcfe0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xe5d8, members: 20
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xa8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xab0, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1230, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x12b0, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd748, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4c8, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xe518, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe528, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe538, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe548, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe558, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5d0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xe5d1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xe5d2, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xe5d3, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xe5b8, members: 16
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x88, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xa90, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1210, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1290, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd728, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe4a8, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xe4f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe508, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe518, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe528, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe538, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe5b0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x6d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s3_analog_rebel_fighter, // 0x24
        wristaccessory_t9_s2_analog_420, // 0x25
        wristaccessory_t9_s2_digital_mini_map, // 0x26
        wristaccessory_t9_s1_digital_kazuya_01, // 0x27
        wristaccessory_t9_s2_digital_mayan, // 0x28
        wristaccessory_t9_s1_digital_diver, // 0x29
        wristaccessory_t9_esports_thieves_ms, // 0x2a
        wristaccessory_t9_esports_thieves_pc, // 0x2b
        wristaccessory_t9_esports_thieves_sy, // 0x2c
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2d
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2e
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2f
        wristaccessory_t9_esports_subliners_pc, // 0x30
        wristaccessory_t9_esports_subliners_sy, // 0x31
        wristaccessory_t9_esports_subliners_ms, // 0x32
        wristaccessory_t9_s2_analog_dark_aether, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x61
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x62
        wristaccessory_t9_s1_digital_rank_01, // 0x63
        wristaccessory_t9_s2_digital_jade, // 0x64
        hash_708a99620b81ea23, // 0x65
        hash_708a9a620b81ebd6, // 0x66
        wristaccessory_t9_s3_analog_zombie_naga, // 0x67
        wristaccessory_t9_s2_analog_black_silver, // 0x68
        wristaccessory_t9_s3_digital_death_touch, // 0x69
        wristaccessory_t9_s2_analog_black_gold, // 0x6a
        wristaccessory_t9_s1_digital_compass_01, // 0x6b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6c
    };

    // idx 0x3 members: 0x48
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_117, // 0x5
        execution_110, // 0x6
        execution_111, // 0x7
        execution_112, // 0x8
        execution_118, // 0x9
        execution_101, // 0xa
        execution_100, // 0xb
        execution_108, // 0xc
        execution_138, // 0xd
        execution_139, // 0xe
        execution_132, // 0xf
        execution_133, // 0x10
        execution_130, // 0x11
        execution_136, // 0x12
        execution_137, // 0x13
        execution_135, // 0x14
        execution_129, // 0x15
        execution_124, // 0x16
        execution_127, // 0x17
        execution_126, // 0x18
        execution_121, // 0x19
        execution_120, // 0x1a
        execution_123, // 0x1b
        execution_201, // 0x1c
        execution_202, // 0x1d
        execution_203, // 0x1e
        execution_086, // 0x1f
        execution_084, // 0x20
        execution_099, // 0x21
        execution_029, // 0x22
        execution_020, // 0x23
        execution_021, // 0x24
        execution_022, // 0x25
        execution_024, // 0x26
        execution_025, // 0x27
        execution_026, // 0x28
        execution_027, // 0x29
        execution_038, // 0x2a
        execution_033, // 0x2b
        execution_031, // 0x2c
        execution_030, // 0x2d
        execution_037, // 0x2e
        execution_036, // 0x2f
        execution_034, // 0x30
        execution_009, // 0x31
        execution_007, // 0x32
        execution_004, // 0x33
        execution_005, // 0x34
        execution_002, // 0x35
        execution_003, // 0x36
        execution_001, // 0x37
        execution_010, // 0x38
        execution_013, // 0x39
        execution_015, // 0x3a
        execution_014, // 0x3b
        execution_017, // 0x3c
        execution_016, // 0x3d
        execution_018, // 0x3e
        execution_064, // 0x3f
        execution_066, // 0x40
        execution_062, // 0x41
        execution_069, // 0x42
        execution_048, // 0x43
        execution_040, // 0x44
        execution_058, // 0x45
        execution_051, // 0x46
        hash_7f66c55f0f1308c2 // 0x47
    };

    // idx 0x4 members: 0xa
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0xe5e0, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe5b8(0x1cb7 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0xe5d8, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_1c9b1fc9b92d1a5b {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 59240 (0xe768)
    // header byte size . 7405 (0x1ced)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6d, array:0x6d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x58, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x49, array:0x49(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2818, members: 6
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
        // offset: 0x2810, bitSize: 0x1
        bool hash_47f87dceb703a2b4;
    };

    // bitSize: 0x48, members: 4
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
        // offset: 0x40, bitSize: 0x1
        bool hash_1d33f21d5494465;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0x178, members: 10
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x18, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0x58, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x98, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0xd8, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x170, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0xeb0, members: 1
    struct hash_7de705fac54227d2 {
        // offset: 0x0, bitSize: 0xeb0(0x1d6 Byte(s)), array:0xa(hti:0xffff)
        weaponvariant variant[10];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_21f27cf6b4dae6b3;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xc0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x100, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x140, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xcff8, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa98, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb18, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xcfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xcfc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xcfd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xcfe0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xcff0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xe6b0, members: 20
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xac0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1300, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1380, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd818, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe598, bitSize: 0x58(0xb Byte(s))
        execution execution;
        // offset: 0xe5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe600, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe610, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe620, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe630, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe6a8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xe6a9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xe6aa, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xe6ab, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xe690, members: 16
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xaa0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x12e0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1360, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd7f8, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe578, bitSize: 0x58(0xb Byte(s))
        execution execution;
        // offset: 0xe5d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe600, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe610, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe688, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x6d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s2_analog_420, // 0x24
        wristaccessory_t9_s2_digital_mini_map, // 0x25
        wristaccessory_t9_s1_digital_kazuya_01, // 0x26
        wristaccessory_t9_s2_digital_mayan, // 0x27
        wristaccessory_t9_s1_digital_diver, // 0x28
        wristaccessory_t9_esports_thieves_ms, // 0x29
        wristaccessory_t9_esports_thieves_pc, // 0x2a
        wristaccessory_t9_esports_thieves_sy, // 0x2b
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2c
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2d
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2e
        wristaccessory_t9_esports_subliners_pc, // 0x2f
        wristaccessory_t9_esports_subliners_sy, // 0x30
        wristaccessory_t9_esports_subliners_ms, // 0x31
        wristaccessory_t9_s2_analog_dark_aether, // 0x32
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x61
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x62
        wristaccessory_t9_s1_digital_rank_01, // 0x63
        wristaccessory_t9_s2_digital_jade, // 0x64
        hash_708a99620b81ea23, // 0x65
        hash_708a9a620b81ebd6, // 0x66
        wristaccessory_t9_s3_analog_zombie_naga, // 0x67
        wristaccessory_t9_s2_analog_black_silver, // 0x68
        wristaccessory_t9_s3_digital_death_touch, // 0x69
        wristaccessory_t9_s2_analog_black_gold, // 0x6a
        wristaccessory_t9_s1_digital_compass_01, // 0x6b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6c
    };

    // idx 0x3 members: 0x49
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_173, // 0x5
        execution_117, // 0x6
        execution_110, // 0x7
        execution_111, // 0x8
        execution_112, // 0x9
        execution_118, // 0xa
        execution_101, // 0xb
        execution_100, // 0xc
        execution_108, // 0xd
        execution_138, // 0xe
        execution_139, // 0xf
        execution_132, // 0x10
        execution_133, // 0x11
        execution_130, // 0x12
        execution_136, // 0x13
        execution_137, // 0x14
        execution_135, // 0x15
        execution_129, // 0x16
        execution_124, // 0x17
        execution_127, // 0x18
        execution_126, // 0x19
        execution_121, // 0x1a
        execution_120, // 0x1b
        execution_123, // 0x1c
        execution_201, // 0x1d
        execution_202, // 0x1e
        execution_203, // 0x1f
        execution_086, // 0x20
        execution_084, // 0x21
        execution_099, // 0x22
        execution_029, // 0x23
        execution_020, // 0x24
        execution_021, // 0x25
        execution_022, // 0x26
        execution_024, // 0x27
        execution_025, // 0x28
        execution_026, // 0x29
        execution_027, // 0x2a
        execution_038, // 0x2b
        execution_033, // 0x2c
        execution_031, // 0x2d
        execution_030, // 0x2e
        execution_037, // 0x2f
        execution_036, // 0x30
        execution_034, // 0x31
        execution_009, // 0x32
        execution_007, // 0x33
        execution_004, // 0x34
        execution_005, // 0x35
        execution_002, // 0x36
        execution_003, // 0x37
        execution_001, // 0x38
        execution_010, // 0x39
        execution_013, // 0x3a
        execution_015, // 0x3b
        execution_014, // 0x3c
        execution_017, // 0x3d
        execution_016, // 0x3e
        execution_018, // 0x3f
        execution_064, // 0x40
        execution_066, // 0x41
        execution_062, // 0x42
        execution_069, // 0x43
        execution_048, // 0x44
        execution_040, // 0x45
        execution_058, // 0x46
        execution_051, // 0x47
        hash_7f66c55f0f1308c2 // 0x48
    };

    // idx 0x4 members: 0xb
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_677f13ab4aa620fe, // 0x9
        hash_6b8377c83507a7f9 // 0xa
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0xe6b8, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe690(0x1cd2 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0xe6b0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_24346e09efc85985 {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 59240 (0xe768)
    // header byte size . 7405 (0x1ced)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6d, array:0x6d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x58, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x4a, array:0x4a(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2818, members: 6
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
        // offset: 0x2810, bitSize: 0x1
        bool hash_47f87dceb703a2b4;
    };

    // bitSize: 0x48, members: 4
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
        // offset: 0x40, bitSize: 0x1
        bool hash_1d33f21d5494465;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0x178, members: 10
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x18, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0x58, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x98, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0xd8, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x170, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0xeb0, members: 1
    struct hash_7de705fac54227d2 {
        // offset: 0x0, bitSize: 0xeb0(0x1d6 Byte(s)), array:0xa(hti:0xffff)
        weaponvariant variant[10];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_21f27cf6b4dae6b3;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xc0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x100, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x140, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xcff8, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa98, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb18, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xcfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xcfc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xcfd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xcfe0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xcff0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xe6b0, members: 20
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xac0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1300, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1380, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd818, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe598, bitSize: 0x58(0xb Byte(s))
        execution execution;
        // offset: 0xe5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe600, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe610, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe620, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe630, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe6a8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xe6a9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xe6aa, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xe6ab, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xe690, members: 16
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xaa0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x12e0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1360, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd7f8, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe578, bitSize: 0x58(0xb Byte(s))
        execution execution;
        // offset: 0xe5d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe600, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe610, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe688, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x6d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s2_analog_420, // 0x24
        wristaccessory_t9_s2_digital_mini_map, // 0x25
        wristaccessory_t9_s1_digital_kazuya_01, // 0x26
        wristaccessory_t9_s2_digital_mayan, // 0x27
        wristaccessory_t9_s1_digital_diver, // 0x28
        wristaccessory_t9_esports_thieves_ms, // 0x29
        wristaccessory_t9_esports_thieves_pc, // 0x2a
        wristaccessory_t9_esports_thieves_sy, // 0x2b
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2c
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2d
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2e
        wristaccessory_t9_esports_subliners_pc, // 0x2f
        wristaccessory_t9_esports_subliners_sy, // 0x30
        wristaccessory_t9_esports_subliners_ms, // 0x31
        wristaccessory_t9_s2_analog_dark_aether, // 0x32
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x61
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x62
        wristaccessory_t9_s1_digital_rank_01, // 0x63
        wristaccessory_t9_s2_digital_jade, // 0x64
        hash_708a99620b81ea23, // 0x65
        hash_708a9a620b81ebd6, // 0x66
        wristaccessory_t9_s3_analog_zombie_naga, // 0x67
        wristaccessory_t9_s2_analog_black_silver, // 0x68
        wristaccessory_t9_s3_digital_death_touch, // 0x69
        wristaccessory_t9_s2_analog_black_gold, // 0x6a
        wristaccessory_t9_s1_digital_compass_01, // 0x6b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6c
    };

    // idx 0x3 members: 0x4a
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_173, // 0x5
        execution_117, // 0x6
        execution_110, // 0x7
        execution_111, // 0x8
        execution_112, // 0x9
        execution_118, // 0xa
        execution_101, // 0xb
        execution_100, // 0xc
        execution_108, // 0xd
        execution_138, // 0xe
        execution_139, // 0xf
        execution_132, // 0x10
        execution_133, // 0x11
        execution_130, // 0x12
        execution_136, // 0x13
        execution_137, // 0x14
        execution_135, // 0x15
        execution_129, // 0x16
        execution_124, // 0x17
        execution_127, // 0x18
        execution_126, // 0x19
        execution_121, // 0x1a
        execution_120, // 0x1b
        execution_123, // 0x1c
        execution_201, // 0x1d
        execution_202, // 0x1e
        execution_203, // 0x1f
        execution_086, // 0x20
        execution_084, // 0x21
        execution_099, // 0x22
        execution_029, // 0x23
        execution_020, // 0x24
        execution_021, // 0x25
        execution_022, // 0x26
        execution_023, // 0x27
        execution_024, // 0x28
        execution_025, // 0x29
        execution_026, // 0x2a
        execution_027, // 0x2b
        execution_038, // 0x2c
        execution_033, // 0x2d
        execution_031, // 0x2e
        execution_030, // 0x2f
        execution_037, // 0x30
        execution_036, // 0x31
        execution_034, // 0x32
        execution_009, // 0x33
        execution_007, // 0x34
        execution_004, // 0x35
        execution_005, // 0x36
        execution_002, // 0x37
        execution_003, // 0x38
        execution_001, // 0x39
        execution_010, // 0x3a
        execution_013, // 0x3b
        execution_015, // 0x3c
        execution_014, // 0x3d
        execution_017, // 0x3e
        execution_016, // 0x3f
        execution_018, // 0x40
        execution_064, // 0x41
        execution_066, // 0x42
        execution_062, // 0x43
        execution_069, // 0x44
        execution_048, // 0x45
        execution_040, // 0x46
        execution_058, // 0x47
        execution_051, // 0x48
        hash_7f66c55f0f1308c2 // 0x49
    };

    // idx 0x4 members: 0xb
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_677f13ab4aa620fe, // 0x9
        hash_6b8377c83507a7f9 // 0xa
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0xe6b8, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe690(0x1cd2 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0xe6b0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_30822eec2e0f1f7c {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 59240 (0xe768)
    // header byte size . 7405 (0x1ced)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6d, array:0x6d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x58, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x4b, array:0x4b(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2818, members: 6
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
        // offset: 0x2810, bitSize: 0x1
        bool hash_47f87dceb703a2b4;
    };

    // bitSize: 0x48, members: 4
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
        // offset: 0x40, bitSize: 0x1
        bool hash_1d33f21d5494465;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0x178, members: 10
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x18, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0x58, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x98, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0xd8, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x170, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0xeb0, members: 1
    struct hash_7de705fac54227d2 {
        // offset: 0x0, bitSize: 0xeb0(0x1d6 Byte(s)), array:0xa(hti:0xffff)
        weaponvariant variant[10];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_21f27cf6b4dae6b3;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xc0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x100, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x140, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xcff8, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa98, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb18, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xcfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xcfc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xcfd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xcfe0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xcff0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xe6b0, members: 20
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xac0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1300, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1380, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd818, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe598, bitSize: 0x58(0xb Byte(s))
        execution execution;
        // offset: 0xe5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe600, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe610, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe620, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe630, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe6a8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xe6a9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xe6aa, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xe6ab, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xe690, members: 16
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xaa0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x12e0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1360, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd7f8, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe578, bitSize: 0x58(0xb Byte(s))
        execution execution;
        // offset: 0xe5d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe600, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe610, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe688, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x6d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s2_analog_420, // 0x24
        wristaccessory_t9_s2_digital_mini_map, // 0x25
        wristaccessory_t9_s1_digital_kazuya_01, // 0x26
        wristaccessory_t9_s2_digital_mayan, // 0x27
        wristaccessory_t9_s1_digital_diver, // 0x28
        wristaccessory_t9_esports_thieves_ms, // 0x29
        wristaccessory_t9_esports_thieves_pc, // 0x2a
        wristaccessory_t9_esports_thieves_sy, // 0x2b
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2c
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2d
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2e
        wristaccessory_t9_esports_subliners_pc, // 0x2f
        wristaccessory_t9_esports_subliners_sy, // 0x30
        wristaccessory_t9_esports_subliners_ms, // 0x31
        wristaccessory_t9_s2_analog_dark_aether, // 0x32
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x61
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x62
        wristaccessory_t9_s1_digital_rank_01, // 0x63
        wristaccessory_t9_s2_digital_jade, // 0x64
        hash_708a99620b81ea23, // 0x65
        hash_708a9a620b81ebd6, // 0x66
        wristaccessory_t9_s3_analog_zombie_naga, // 0x67
        wristaccessory_t9_s2_analog_black_silver, // 0x68
        wristaccessory_t9_s3_digital_death_touch, // 0x69
        wristaccessory_t9_s2_analog_black_gold, // 0x6a
        wristaccessory_t9_s1_digital_compass_01, // 0x6b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6c
    };

    // idx 0x3 members: 0x4b
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_173, // 0x5
        execution_117, // 0x6
        execution_110, // 0x7
        execution_111, // 0x8
        execution_112, // 0x9
        execution_118, // 0xa
        execution_101, // 0xb
        execution_100, // 0xc
        execution_108, // 0xd
        execution_138, // 0xe
        execution_139, // 0xf
        execution_132, // 0x10
        execution_133, // 0x11
        execution_130, // 0x12
        execution_136, // 0x13
        execution_137, // 0x14
        execution_135, // 0x15
        execution_129, // 0x16
        execution_124, // 0x17
        execution_127, // 0x18
        execution_126, // 0x19
        execution_121, // 0x1a
        execution_120, // 0x1b
        execution_123, // 0x1c
        execution_201, // 0x1d
        execution_202, // 0x1e
        execution_203, // 0x1f
        execution_086, // 0x20
        execution_084, // 0x21
        execution_099, // 0x22
        execution_029, // 0x23
        execution_020, // 0x24
        execution_021, // 0x25
        execution_022, // 0x26
        execution_023, // 0x27
        execution_024, // 0x28
        execution_025, // 0x29
        execution_026, // 0x2a
        execution_027, // 0x2b
        execution_038, // 0x2c
        execution_033, // 0x2d
        execution_032, // 0x2e
        execution_031, // 0x2f
        execution_030, // 0x30
        execution_037, // 0x31
        execution_036, // 0x32
        execution_034, // 0x33
        execution_009, // 0x34
        execution_007, // 0x35
        execution_004, // 0x36
        execution_005, // 0x37
        execution_002, // 0x38
        execution_003, // 0x39
        execution_001, // 0x3a
        execution_010, // 0x3b
        execution_013, // 0x3c
        execution_015, // 0x3d
        execution_014, // 0x3e
        execution_017, // 0x3f
        execution_016, // 0x40
        execution_018, // 0x41
        execution_064, // 0x42
        execution_066, // 0x43
        execution_062, // 0x44
        execution_069, // 0x45
        execution_048, // 0x46
        execution_040, // 0x47
        execution_058, // 0x48
        execution_051, // 0x49
        hash_7f66c55f0f1308c2 // 0x4a
    };

    // idx 0x4 members: 0xb
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_677f13ab4aa620fe, // 0x9
        hash_6b8377c83507a7f9 // 0xa
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0xe6b8, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe690(0x1cd2 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0xe6b0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_3b6b669fec2a6acc {
    // enums ..... 6 (0x6)
    // structs ... 19 (0x13)
    // header bit size .. 59240 (0xe768)
    // header byte size . 7405 (0x1ced)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6d, array:0x6d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x58, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x4c, array:0x4c(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2818, members: 6
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
        // offset: 0x2810, bitSize: 0x1
        bool hash_47f87dceb703a2b4;
    };

    // bitSize: 0x48, members: 4
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
        // offset: 0x40, bitSize: 0x1
        bool hash_1d33f21d5494465;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0x178, members: 10
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x18, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0x58, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x98, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0xd8, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x170, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0xeb0, members: 1
    struct hash_7de705fac54227d2 {
        // offset: 0x0, bitSize: 0xeb0(0x1d6 Byte(s)), array:0xa(hti:0xffff)
        weaponvariant variant[10];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_21f27cf6b4dae6b3;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xc0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x100, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x140, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xcff8, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa98, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0xb18, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xcfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xcfc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xcfd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xcfe0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xcff0, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xe6b0, members: 20
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xac0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1300, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1380, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd818, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe598, bitSize: 0x58(0xb Byte(s))
        execution execution;
        // offset: 0xe5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe600, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe610, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe620, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe630, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe6a8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xe6a9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xe6aa, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xe6ab, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xe690, members: 16
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xaa0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x12e0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1360, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd7f8, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xe578, bitSize: 0x58(0xb Byte(s))
        execution execution;
        // offset: 0xe5d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xe5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xe5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xe600, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xe610, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xe688, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0x6d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s2_analog_420, // 0x24
        wristaccessory_t9_s2_digital_mini_map, // 0x25
        wristaccessory_t9_s1_digital_kazuya_01, // 0x26
        wristaccessory_t9_s2_digital_mayan, // 0x27
        wristaccessory_t9_s1_digital_diver, // 0x28
        wristaccessory_t9_esports_thieves_ms, // 0x29
        wristaccessory_t9_esports_thieves_pc, // 0x2a
        wristaccessory_t9_esports_thieves_sy, // 0x2b
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2c
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2d
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2e
        wristaccessory_t9_esports_subliners_pc, // 0x2f
        wristaccessory_t9_esports_subliners_sy, // 0x30
        wristaccessory_t9_esports_subliners_ms, // 0x31
        wristaccessory_t9_s2_analog_dark_aether, // 0x32
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x61
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x62
        wristaccessory_t9_s1_digital_rank_01, // 0x63
        wristaccessory_t9_s2_digital_jade, // 0x64
        hash_708a99620b81ea23, // 0x65
        hash_708a9a620b81ebd6, // 0x66
        wristaccessory_t9_s3_analog_zombie_naga, // 0x67
        wristaccessory_t9_s2_analog_black_silver, // 0x68
        wristaccessory_t9_s3_digital_death_touch, // 0x69
        wristaccessory_t9_s2_analog_black_gold, // 0x6a
        wristaccessory_t9_s1_digital_compass_01, // 0x6b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6c
    };

    // idx 0x3 members: 0x4c
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_173, // 0x5
        execution_117, // 0x6
        execution_110, // 0x7
        execution_111, // 0x8
        execution_112, // 0x9
        execution_118, // 0xa
        execution_101, // 0xb
        execution_100, // 0xc
        execution_108, // 0xd
        execution_138, // 0xe
        execution_139, // 0xf
        execution_132, // 0x10
        execution_133, // 0x11
        execution_130, // 0x12
        execution_136, // 0x13
        execution_137, // 0x14
        execution_135, // 0x15
        execution_129, // 0x16
        execution_124, // 0x17
        execution_127, // 0x18
        execution_126, // 0x19
        execution_121, // 0x1a
        execution_120, // 0x1b
        execution_123, // 0x1c
        execution_039bc, // 0x1d
        execution_201, // 0x1e
        execution_202, // 0x1f
        execution_203, // 0x20
        execution_086, // 0x21
        execution_084, // 0x22
        execution_099, // 0x23
        execution_029, // 0x24
        execution_020, // 0x25
        execution_021, // 0x26
        execution_022, // 0x27
        execution_023, // 0x28
        execution_024, // 0x29
        execution_025, // 0x2a
        execution_026, // 0x2b
        execution_027, // 0x2c
        execution_038, // 0x2d
        execution_033, // 0x2e
        execution_032, // 0x2f
        execution_031, // 0x30
        execution_030, // 0x31
        execution_037, // 0x32
        execution_036, // 0x33
        execution_034, // 0x34
        execution_009, // 0x35
        execution_007, // 0x36
        execution_004, // 0x37
        execution_005, // 0x38
        execution_002, // 0x39
        execution_003, // 0x3a
        execution_001, // 0x3b
        execution_010, // 0x3c
        execution_013, // 0x3d
        execution_015, // 0x3e
        execution_014, // 0x3f
        execution_017, // 0x40
        execution_016, // 0x41
        execution_018, // 0x42
        execution_064, // 0x43
        execution_066, // 0x44
        execution_062, // 0x45
        execution_069, // 0x46
        execution_048, // 0x47
        execution_040, // 0x48
        execution_058, // 0x49
        execution_051, // 0x4a
        hash_7f66c55f0f1308c2 // 0x4b
    };

    // idx 0x4 members: 0xb
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_677f13ab4aa620fe, // 0x9
        hash_6b8377c83507a7f9 // 0xa
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0xe6b8, members: 4

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xe690(0x1cd2 Byte(s))
    hash_7dc6a8bfa8184f33 cacloadouts;
    // offset: 0xe6b0, bitSize: 0x1
    bool loadoutinitialized;
};

