// file .... cp_utility.ddl

#redirect hash_32205446f0a39c12;

version hash_e33a17ff22952a92 {
    // enums ..... 5 (0x5)
    // structs ... 5 (0x5)
    // header bit size .. 848 (0x350)
    // header byte size . 106 (0x6a)

    // bitSize: 0x18, members: 4
    struct hash_25508de9fa29a5d5 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte challengevalue;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        byte statvalue;
        // offset: 0x10, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x8, members: 4
    struct bitstat {
        // offset: 0x0, bitSize: 0x1
        bool challengevalue;
        // offset: 0x1, bitSize: 0x1
        bool statvalue;
        // offset: 0x2, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x10, members: 4
    struct hash_3666d1e81cd3a605 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengevalue;
        // offset: 0x8, bitSize: 0x1
        bool statvalue;
        // offset: 0x9, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x218, members: 48
    struct globalstats {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2ab499ed268510cc;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_432f14f446ec4fcc;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3449b16b901d6430;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_10c5fdaff9918dbb;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_6250c6257b578975;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_205258067ba85bbb;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_207bfcb27d3d2ac5;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 cp_dark;
        // offset: 0x50, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_2e2dc95b9f81e3fd;
        // offset: 0x68, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_ar;
        // offset: 0x80, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_sg;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5e17e7422df19173;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_516959939015770b;
        // offset: 0xa8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_22e14d246f6dfe19;
        // offset: 0xb0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5846fb59bec18f77;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_1ae186bfc1a1ec13;
        // offset: 0xc8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_37786130643e63d0;
        // offset: 0xd0, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_25dbb27e95661965;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3ad1164ca20fa4af;
        // offset: 0xe8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_lmg;
        // offset: 0x100, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_smg;
        // offset: 0x118, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_397cbd8ba6842423;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_40fb0ec1661625f4;
        // offset: 0x128, bitSize: 0x8(0x1 Byte(s))
        bitstat cp_proficient_yamantau;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_a52c89604d483c1;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_7af2992eebf41338;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_57693240f81b6777;
        // offset: 0x150, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_a8df4bf1b167949;
        // offset: 0x158, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_7d8bd0cf90d899a4;
        // offset: 0x168, bitSize: 0x8(0x1 Byte(s))
        bitstat cp_dark_prisoner;
        // offset: 0x170, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_348c77b0d1f60503;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36d0e0af1bd1b8c7;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36bacb4a6c637824;
        // offset: 0x188, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_206e7871ca1d3dbe;
        // offset: 0x198, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2fe1208e904dc380;
        // offset: 0x1a0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36445583f679a898;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3d9eacd5207117df;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_1b921321a962d6a6;
        // offset: 0x1b8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2a7a0008a3c3e07d;
        // offset: 0x1c0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_66d228fbcd074f42;
        // offset: 0x1c8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_40745959404663d3;
        // offset: 0x1d0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_76803ad04be840f8;
        // offset: 0x1d8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_6cf378bf26dccb10;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_7aecba645ac8f6af;
        // offset: 0x1e8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_e4a452d4c328555;
        // offset: 0x1f0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2e8136ca701b3dad;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_46955261f659bca1;
        // offset: 0x200, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_62a55a4c32087c2d;
    };

    // idx 0x0 members: 0xa
    enum hash_5190cca2e3bca610 {
        river_raid_game, // 0x0
        fishing_game, // 0x1
        boxing_game, // 0x2
        pitfall_game, // 0x3
        enduro_game, // 0x4
        kaboom_game, // 0x5
        pitfall_2_game, // 0x6
        grand_prix_game, // 0x7
        chopper_command_game, // 0x8
        barnstorming_game // 0x9
    };

    // idx 0x1 members: 0x5
    enum hash_2100329c22656398 {
        hash_11484ae12865f8c9, // 0x0
        hash_165afba597307403, // 0x1
        hash_1bcbed68b6504458, // 0x2
        hash_2423208923ced64e, // 0x3
        hash_7a524b2fff5dad2c // 0x4
    };

    // idx 0x2 members: 0x2
    enum hash_3499ffef0e97af77 {
        hash_38712d5dfff8ad31, // 0x0
        hash_5e8b1deaf714af9b // 0x1
    };

    // idx 0x3 members: 0x4
    enum hash_5c8ce23f0edd13df {
        village, // 0x0
        rat_tunnels, // 0x1
        sniper_overlook, // 0x2
        caves // 0x3
    };

    // idx 0x4 members: 0x7
    enum hash_73afe20ada571b1a {
        hash_f9ee0df7af7bf0c, // 0x0
        memory_1_disobey, // 0x1
        memory_4, // 0x2
        hash_4a1e9d19df428406, // 0x3
        memory_3_disobey, // 0x4
        memory_2_obey, // 0x5
        memory_2_disobey // 0x6
    };

    // root: bitSize: 0x2a0, members: 10

    // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
    uint64 player_xuid;
    // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
    uint:3 hash_37c8f16eedbbcfbb;
    // offset: 0x48, bitSize: 0x20(0x4 Byte(s))
    int design_version;
    // offset: 0x68, bitSize: 0x218(0x43 Byte(s))
    globalstats playerstatslist;
    // offset: 0x280, bitSize: 0x4, array:0x4(hti:0x3)
    bool hash_5ac2b710366d831[hash_5c8ce23f0edd13df];
    // offset: 0x284, bitSize: 0x5, array:0x5(hti:0x1)
    bool hash_3c02989079cbd05c[hash_2100329c22656398];
    // offset: 0x289, bitSize: 0xa, array:0xa(hti:0x0)
    bool hash_4bc6f04ed9a574bc[hash_5190cca2e3bca610];
    // offset: 0x293, bitSize: 0x7, array:0x7(hti:0x4)
    bool hash_15134f1ecf5353a[hash_73afe20ada571b1a];
    // offset: 0x29a, bitSize: 0x2, array:0x2(hti:0x2)
    bool hash_4450cbdb180d702[hash_3499ffef0e97af77];
};

version hash_94492a1536c0d0b7 {
    // enums ..... 1 (0x1)
    // structs ... 4 (0x4)
    // header bit size .. 672 (0x2a0)
    // header byte size . 84 (0x54)

    // bitSize: 0x10, members: 4
    struct hash_25508de9fa29a5d5 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte statvalue;
        // offset: 0x8, bitSize: 0x1
        bool challengevalue;
        // offset: 0x9, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x8, members: 4
    struct bitstat {
        // offset: 0x0, bitSize: 0x1
        bool challengevalue;
        // offset: 0x1, bitSize: 0x1
        bool statvalue;
        // offset: 0x2, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x178, members: 41
    struct globalstats {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2ab499ed268510cc;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3449b16b901d6430;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_10c5fdaff9918dbb;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_6250c6257b578975;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_205258067ba85bbb;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_207bfcb27d3d2ac5;
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 hash_2e2dc95b9f81e3fd;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_ar;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_sg;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5e17e7422df19173;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_516959939015770b;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_22e14d246f6dfe19;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5846fb59bec18f77;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_37786130643e63d0;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3ad1164ca20fa4af;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_lmg;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_smg;
        // offset: 0xb0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_397cbd8ba6842423;
        // offset: 0xb8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_40fb0ec1661625f4;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        bitstat cp_proficient_yamantau;
        // offset: 0xc8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_7af2992eebf41338;
        // offset: 0xd0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_57693240f81b6777;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_a8df4bf1b167949;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        bitstat cp_dark_prisoner;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_348c77b0d1f60503;
        // offset: 0xf0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36d0e0af1bd1b8c7;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36bacb4a6c637824;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2fe1208e904dc380;
        // offset: 0x108, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36445583f679a898;
        // offset: 0x110, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3d9eacd5207117df;
        // offset: 0x118, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_1b921321a962d6a6;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2a7a0008a3c3e07d;
        // offset: 0x128, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_66d228fbcd074f42;
        // offset: 0x130, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_40745959404663d3;
        // offset: 0x138, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_76803ad04be840f8;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_6cf378bf26dccb10;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_7aecba645ac8f6af;
        // offset: 0x150, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_e4a452d4c328555;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2e8136ca701b3dad;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_46955261f659bca1;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 hash_62a55a4c32087c2d;
    };

    // idx 0x0 members: 0xa
    enum hash_5190cca2e3bca610 {
        river_raid_game, // 0x0
        fishing_game, // 0x1
        boxing_game, // 0x2
        pitfall_game, // 0x3
        enduro_game, // 0x4
        kaboom_game, // 0x5
        pitfall_2_game, // 0x6
        grand_prix_game, // 0x7
        chopper_command_game, // 0x8
        barnstorming_game // 0x9
    };

    // root: bitSize: 0x1f0, members: 6

    // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
    uint64 player_xuid;
    // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
    uint:3 hash_37c8f16eedbbcfbb;
    // offset: 0x48, bitSize: 0x20(0x4 Byte(s))
    int design_version;
    // offset: 0x68, bitSize: 0x178(0x2f Byte(s))
    globalstats playerstatslist;
    // offset: 0x1e0, bitSize: 0xa, array:0xa(hti:0x0)
    bool hash_4bc6f04ed9a574bc[hash_5190cca2e3bca610];
};

version hash_4bca6dc2b82f1f2a {
    // enums ..... 1 (0x1)
    // structs ... 5 (0x5)
    // header bit size .. 784 (0x310)
    // header byte size . 98 (0x62)

    // bitSize: 0x10, members: 4
    struct hash_25508de9fa29a5d5 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte statvalue;
        // offset: 0x8, bitSize: 0x1
        bool challengevalue;
        // offset: 0x9, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x8, members: 4
    struct bitstat {
        // offset: 0x0, bitSize: 0x1
        bool challengevalue;
        // offset: 0x1, bitSize: 0x1
        bool statvalue;
        // offset: 0x2, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x10, members: 4
    struct hash_3666d1e81cd3a605 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengevalue;
        // offset: 0x8, bitSize: 0x1
        bool statvalue;
        // offset: 0x9, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x1e8, members: 48
    struct globalstats {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2ab499ed268510cc;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_432f14f446ec4fcc;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3449b16b901d6430;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_10c5fdaff9918dbb;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_6250c6257b578975;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_205258067ba85bbb;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_207bfcb27d3d2ac5;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 cp_dark;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 hash_2e2dc95b9f81e3fd;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_ar;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_sg;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5e17e7422df19173;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_516959939015770b;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_22e14d246f6dfe19;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5846fb59bec18f77;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_1ae186bfc1a1ec13;
        // offset: 0xb0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_37786130643e63d0;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_25dbb27e95661965;
        // offset: 0xc8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3ad1164ca20fa4af;
        // offset: 0xd0, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_lmg;
        // offset: 0xe0, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_smg;
        // offset: 0xf0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_397cbd8ba6842423;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_40fb0ec1661625f4;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        bitstat cp_proficient_yamantau;
        // offset: 0x108, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_a52c89604d483c1;
        // offset: 0x118, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_7af2992eebf41338;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_57693240f81b6777;
        // offset: 0x128, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_a8df4bf1b167949;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_7d8bd0cf90d899a4;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        bitstat cp_dark_prisoner;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_348c77b0d1f60503;
        // offset: 0x150, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36d0e0af1bd1b8c7;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36bacb4a6c637824;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_206e7871ca1d3dbe;
        // offset: 0x170, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2fe1208e904dc380;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36445583f679a898;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3d9eacd5207117df;
        // offset: 0x188, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_1b921321a962d6a6;
        // offset: 0x190, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2a7a0008a3c3e07d;
        // offset: 0x198, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_66d228fbcd074f42;
        // offset: 0x1a0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_40745959404663d3;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_76803ad04be840f8;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_6cf378bf26dccb10;
        // offset: 0x1b8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_7aecba645ac8f6af;
        // offset: 0x1c0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_e4a452d4c328555;
        // offset: 0x1c8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2e8136ca701b3dad;
        // offset: 0x1d0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_46955261f659bca1;
        // offset: 0x1d8, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 hash_62a55a4c32087c2d;
    };

    // idx 0x0 members: 0xa
    enum hash_5190cca2e3bca610 {
        river_raid_game, // 0x0
        fishing_game, // 0x1
        boxing_game, // 0x2
        pitfall_game, // 0x3
        enduro_game, // 0x4
        kaboom_game, // 0x5
        pitfall_2_game, // 0x6
        grand_prix_game, // 0x7
        chopper_command_game, // 0x8
        barnstorming_game // 0x9
    };

    // root: bitSize: 0x260, members: 6

    // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
    uint64 player_xuid;
    // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
    uint:3 hash_37c8f16eedbbcfbb;
    // offset: 0x48, bitSize: 0x20(0x4 Byte(s))
    int design_version;
    // offset: 0x68, bitSize: 0x1e8(0x3d Byte(s))
    globalstats playerstatslist;
    // offset: 0x250, bitSize: 0xa, array:0xa(hti:0x0)
    bool hash_4bc6f04ed9a574bc[hash_5190cca2e3bca610];
};

version hash_f6f657b3e43f83ef {
    // enums ..... 3 (0x3)
    // structs ... 5 (0x5)
    // header bit size .. 792 (0x318)
    // header byte size . 99 (0x63)

    // bitSize: 0x10, members: 4
    struct hash_25508de9fa29a5d5 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte statvalue;
        // offset: 0x8, bitSize: 0x1
        bool challengevalue;
        // offset: 0x9, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x8, members: 4
    struct bitstat {
        // offset: 0x0, bitSize: 0x1
        bool challengevalue;
        // offset: 0x1, bitSize: 0x1
        bool statvalue;
        // offset: 0x2, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x10, members: 4
    struct hash_3666d1e81cd3a605 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengevalue;
        // offset: 0x8, bitSize: 0x1
        bool statvalue;
        // offset: 0x9, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x1e8, members: 48
    struct globalstats {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2ab499ed268510cc;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_432f14f446ec4fcc;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3449b16b901d6430;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_10c5fdaff9918dbb;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_6250c6257b578975;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_205258067ba85bbb;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_207bfcb27d3d2ac5;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 cp_dark;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 hash_2e2dc95b9f81e3fd;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_ar;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_sg;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5e17e7422df19173;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_516959939015770b;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_22e14d246f6dfe19;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5846fb59bec18f77;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_1ae186bfc1a1ec13;
        // offset: 0xb0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_37786130643e63d0;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_25dbb27e95661965;
        // offset: 0xc8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3ad1164ca20fa4af;
        // offset: 0xd0, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_lmg;
        // offset: 0xe0, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_smg;
        // offset: 0xf0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_397cbd8ba6842423;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_40fb0ec1661625f4;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        bitstat cp_proficient_yamantau;
        // offset: 0x108, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_a52c89604d483c1;
        // offset: 0x118, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_7af2992eebf41338;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_57693240f81b6777;
        // offset: 0x128, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_a8df4bf1b167949;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_7d8bd0cf90d899a4;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        bitstat cp_dark_prisoner;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_348c77b0d1f60503;
        // offset: 0x150, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36d0e0af1bd1b8c7;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36bacb4a6c637824;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_206e7871ca1d3dbe;
        // offset: 0x170, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2fe1208e904dc380;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36445583f679a898;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3d9eacd5207117df;
        // offset: 0x188, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_1b921321a962d6a6;
        // offset: 0x190, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2a7a0008a3c3e07d;
        // offset: 0x198, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_66d228fbcd074f42;
        // offset: 0x1a0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_40745959404663d3;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_76803ad04be840f8;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_6cf378bf26dccb10;
        // offset: 0x1b8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_7aecba645ac8f6af;
        // offset: 0x1c0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_e4a452d4c328555;
        // offset: 0x1c8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2e8136ca701b3dad;
        // offset: 0x1d0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_46955261f659bca1;
        // offset: 0x1d8, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 hash_62a55a4c32087c2d;
    };

    // idx 0x0 members: 0xa
    enum hash_5190cca2e3bca610 {
        river_raid_game, // 0x0
        fishing_game, // 0x1
        boxing_game, // 0x2
        pitfall_game, // 0x3
        enduro_game, // 0x4
        kaboom_game, // 0x5
        pitfall_2_game, // 0x6
        grand_prix_game, // 0x7
        chopper_command_game, // 0x8
        barnstorming_game // 0x9
    };

    // idx 0x1 members: 0x5
    enum hash_2100329c22656398 {
        hash_11484ae12865f8c9, // 0x0
        hash_165afba597307403, // 0x1
        hash_1bcbed68b6504458, // 0x2
        hash_2423208923ced64e, // 0x3
        hash_7a524b2fff5dad2c // 0x4
    };

    // idx 0x2 members: 0x2
    enum hash_3499ffef0e97af77 {
        hash_38712d5dfff8ad31, // 0x0
        hash_5e8b1deaf714af9b // 0x1
    };

    // root: bitSize: 0x268, members: 8

    // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
    uint64 player_xuid;
    // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
    uint:3 hash_37c8f16eedbbcfbb;
    // offset: 0x48, bitSize: 0x20(0x4 Byte(s))
    int design_version;
    // offset: 0x68, bitSize: 0x1e8(0x3d Byte(s))
    globalstats playerstatslist;
    // offset: 0x250, bitSize: 0x5, array:0x5(hti:0x1)
    bool hash_3c02989079cbd05c[hash_2100329c22656398];
    // offset: 0x255, bitSize: 0xa, array:0xa(hti:0x0)
    bool hash_4bc6f04ed9a574bc[hash_5190cca2e3bca610];
    // offset: 0x25f, bitSize: 0x2, array:0x2(hti:0x2)
    bool hash_4450cbdb180d702[hash_3499ffef0e97af77];
};

version hash_36b836918ae56e81 {
    // enums ..... 5 (0x5)
    // structs ... 5 (0x5)
    // header bit size .. 800 (0x320)
    // header byte size . 100 (0x64)

    // bitSize: 0x10, members: 4
    struct hash_25508de9fa29a5d5 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte statvalue;
        // offset: 0x8, bitSize: 0x1
        bool challengevalue;
        // offset: 0x9, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x8, members: 4
    struct bitstat {
        // offset: 0x0, bitSize: 0x1
        bool challengevalue;
        // offset: 0x1, bitSize: 0x1
        bool statvalue;
        // offset: 0x2, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x10, members: 4
    struct hash_3666d1e81cd3a605 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengevalue;
        // offset: 0x8, bitSize: 0x1
        bool statvalue;
        // offset: 0x9, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x1e8, members: 48
    struct globalstats {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2ab499ed268510cc;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_432f14f446ec4fcc;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3449b16b901d6430;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_10c5fdaff9918dbb;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_6250c6257b578975;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_205258067ba85bbb;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_207bfcb27d3d2ac5;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 cp_dark;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 hash_2e2dc95b9f81e3fd;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_ar;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_sg;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5e17e7422df19173;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_516959939015770b;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_22e14d246f6dfe19;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5846fb59bec18f77;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_1ae186bfc1a1ec13;
        // offset: 0xb0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_37786130643e63d0;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_25dbb27e95661965;
        // offset: 0xc8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3ad1164ca20fa4af;
        // offset: 0xd0, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_lmg;
        // offset: 0xe0, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 cp_kills_smg;
        // offset: 0xf0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_397cbd8ba6842423;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_40fb0ec1661625f4;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        bitstat cp_proficient_yamantau;
        // offset: 0x108, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_a52c89604d483c1;
        // offset: 0x118, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_7af2992eebf41338;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_57693240f81b6777;
        // offset: 0x128, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_a8df4bf1b167949;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_7d8bd0cf90d899a4;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        bitstat cp_dark_prisoner;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_348c77b0d1f60503;
        // offset: 0x150, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36d0e0af1bd1b8c7;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36bacb4a6c637824;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        hash_3666d1e81cd3a605 hash_206e7871ca1d3dbe;
        // offset: 0x170, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2fe1208e904dc380;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_36445583f679a898;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3d9eacd5207117df;
        // offset: 0x188, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_1b921321a962d6a6;
        // offset: 0x190, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2a7a0008a3c3e07d;
        // offset: 0x198, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_66d228fbcd074f42;
        // offset: 0x1a0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_40745959404663d3;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_76803ad04be840f8;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_6cf378bf26dccb10;
        // offset: 0x1b8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_7aecba645ac8f6af;
        // offset: 0x1c0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_e4a452d4c328555;
        // offset: 0x1c8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2e8136ca701b3dad;
        // offset: 0x1d0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_46955261f659bca1;
        // offset: 0x1d8, bitSize: 0x10(0x2 Byte(s))
        hash_25508de9fa29a5d5 hash_62a55a4c32087c2d;
    };

    // idx 0x0 members: 0xa
    enum hash_5190cca2e3bca610 {
        river_raid_game, // 0x0
        fishing_game, // 0x1
        boxing_game, // 0x2
        pitfall_game, // 0x3
        enduro_game, // 0x4
        kaboom_game, // 0x5
        pitfall_2_game, // 0x6
        grand_prix_game, // 0x7
        chopper_command_game, // 0x8
        barnstorming_game // 0x9
    };

    // idx 0x1 members: 0x5
    enum hash_2100329c22656398 {
        hash_11484ae12865f8c9, // 0x0
        hash_165afba597307403, // 0x1
        hash_1bcbed68b6504458, // 0x2
        hash_2423208923ced64e, // 0x3
        hash_7a524b2fff5dad2c // 0x4
    };

    // idx 0x2 members: 0x2
    enum hash_3499ffef0e97af77 {
        hash_38712d5dfff8ad31, // 0x0
        hash_5e8b1deaf714af9b // 0x1
    };

    // idx 0x3 members: 0x4
    enum hash_5c8ce23f0edd13df {
        village, // 0x0
        rat_tunnels, // 0x1
        sniper_overlook, // 0x2
        caves // 0x3
    };

    // idx 0x4 members: 0x7
    enum hash_73afe20ada571b1a {
        hash_f9ee0df7af7bf0c, // 0x0
        memory_1_disobey, // 0x1
        memory_4, // 0x2
        hash_4a1e9d19df428406, // 0x3
        memory_3_disobey, // 0x4
        memory_2_obey, // 0x5
        memory_2_disobey // 0x6
    };

    // root: bitSize: 0x270, members: 10

    // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
    uint64 player_xuid;
    // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
    uint:3 hash_37c8f16eedbbcfbb;
    // offset: 0x48, bitSize: 0x20(0x4 Byte(s))
    int design_version;
    // offset: 0x68, bitSize: 0x1e8(0x3d Byte(s))
    globalstats playerstatslist;
    // offset: 0x250, bitSize: 0x4, array:0x4(hti:0x3)
    bool hash_5ac2b710366d831[hash_5c8ce23f0edd13df];
    // offset: 0x254, bitSize: 0x5, array:0x5(hti:0x1)
    bool hash_3c02989079cbd05c[hash_2100329c22656398];
    // offset: 0x259, bitSize: 0xa, array:0xa(hti:0x0)
    bool hash_4bc6f04ed9a574bc[hash_5190cca2e3bca610];
    // offset: 0x263, bitSize: 0x7, array:0x7(hti:0x4)
    bool hash_15134f1ecf5353a[hash_73afe20ada571b1a];
    // offset: 0x26a, bitSize: 0x2, array:0x2(hti:0x2)
    bool hash_4450cbdb180d702[hash_3499ffef0e97af77];
};

