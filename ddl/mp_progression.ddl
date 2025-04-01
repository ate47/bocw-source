// file .... mp_progression.ddl

#redirect hash_75f47ec29090ba57;

version hash_d1f294a075785edd {
    // enums ..... 66 (0x42)
    // structs ... 53 (0x35)
    // header bit size .. 1336792 (0x1465d8)
    // header byte size . 167099 (0x28cbb)

    // bitSize: 0x38, members: 3
    struct intstat {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        short challengevalue;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x40, members: 3
    struct hash_6e522b658d49b7ba {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        uint:24 challengevalue;
        // offset: 0x18, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x10, members: 1
    struct hash_3fe0577c80ed2247 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 statvalue;
    };

    // bitSize: 0x18, members: 1
    struct hash_6c116eea1f7184ec {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        uint:24 statvalue;
    };

    // bitSize: 0x28, members: 3
    struct hash_7114ea3f9fe06a15 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        short challengevalue;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        short statvalue;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x38, members: 3
    struct hash_44d4a3dc051e6da2 {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        uint:24 challengevalue;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        uint:24 statvalue;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x28, members: 3
    struct hash_2b6b162a9af31225 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte challengevalue;
        // offset: 0x8, bitSize: 0x18(0x3 Byte(s))
        uint:24 statvalue;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x30, members: 3
    struct hash_3a0863dc1d7d622d {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 challengevalue;
        // offset: 0x10, bitSize: 0x18(0x3 Byte(s))
        uint:24 statvalue;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x20, members: 4
    struct hash_2a676da7026d7618 {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        uint:24 statvalue;
        // offset: 0x18, bitSize: 0x1
        bool challengevalue;
        // offset: 0x19, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x18, members: 4
    struct hash_2df14ab4ac36cb9 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 statvalue;
        // offset: 0x10, bitSize: 0x1
        bool challengevalue;
        // offset: 0x11, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x20, members: 4
    struct hash_3c449a1a07677764 {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        uint:24 statvalue;
        // offset: 0x18, bitSize: 0x1
        bool challengevalue;
        // offset: 0x19, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x18, members: 3
    struct hash_25508de9fa29a5d5 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte challengevalue;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        byte statvalue;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x18, members: 3
    struct hash_126773fe8808efc0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte challengevalue;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        byte statvalue;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x10, members: 4
    struct hash_798fe6dfb7cfb479 {
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

    // bitSize: 0x8, members: 4
    struct hash_5f229cdf260868d1 {
        // offset: 0x0, bitSize: 0x1
        bool challengevalue;
        // offset: 0x1, bitSize: 0x1
        bool statvalue;
        // offset: 0x2, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x10, members: 4
    struct hash_298a7e7626f32fe0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 challengevalue;
        // offset: 0x8, bitSize: 0x1
        bool statvalue;
        // offset: 0x9, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x18, members: 4
    struct hash_285aa5a19a4bbb20 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 challengevalue;
        // offset: 0x10, bitSize: 0x1
        bool statvalue;
        // offset: 0x11, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x18, members: 4
    struct hash_7a45118e770e0c70 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 challengevalue;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
        // offset: 0x10, bitSize: 0x1
        bool statvalue;
    };

    // bitSize: 0x20, members: 4
    struct hash_1dd529d6f1f087b0 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 challengevalue;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
        // offset: 0x18, bitSize: 0x1
        bool statvalue;
    };

    // bitSize: 0x28, members: 4
    struct hash_77427c7b6edfc9f {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        uint:24 challengevalue;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
        // offset: 0x20, bitSize: 0x1
        bool statvalue;
    };

    // bitSize: 0x13b0, members: 39
    struct hash_327b7cf54ef729b1 {
        // offset: 0x0, bitSize: 0x138(0x27 Byte(s)), array:0x27(hti:0x16)
        uint:2 hash_38483ac09b694b38[hash_4ae36c0820937a7d];
        // offset: 0x138, bitSize: 0x80(0x10 Byte(s)), array:0x10(hti:0x25)
        uint:2 hash_572050055e786d32[hash_7958c23db376dd7];
        // offset: 0x1b8, bitSize: 0x38(0x7 Byte(s)), array:0x7(hti:0x24)
        uint:2 hash_46b0c1b44ff6dccb[hash_7ecc2f4c0fcd9384];
        // offset: 0x1f0, bitSize: 0x50(0xa Byte(s)), array:0xa(hti:0x2d)
        uint:2 hash_41db204503120a05[hash_57c2000b18db1b66];
        // offset: 0x240, bitSize: 0x58(0xb Byte(s)), array:0xb(hti:0x26)
        uint:2 hash_71717ef651cdedfb[hash_73329db2b3c3cfd4];
        // offset: 0x298, bitSize: 0x110(0x22 Byte(s)), array:0x22(hti:0x2c)
        uint:2 hash_10d99c51363d023b[hash_119a2723c18cf14];
        // offset: 0x3a8, bitSize: 0x10(0x2 Byte(s)), array:0x2(hti:0x2e)
        uint:2 hash_511bbcd521bfe80e[hash_64ae17c6326a478b];
        // offset: 0x3b8, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x12)
        uint:2 hash_1f80861358483d86[hash_5a65280ea064bab3];
        // offset: 0x3d8, bitSize: 0x130(0x26 Byte(s)), array:0x26(hti:0x2f)
        uint:2 hash_46ddf1f925e6a50b[hash_54c65df8de14c4];
        // offset: 0x508, bitSize: 0x10(0x2 Byte(s)), array:0x2(hti:0x1f)
        uint:2 hash_6db018ffcad34401[hash_1aa652a8cf02637a];
        // offset: 0x518, bitSize: 0x138(0x27 Byte(s)), array:0x27(hti:0x17)
        uint:2 hash_5914dc15bf67164a[hash_45c601f803af245f];
        // offset: 0x650, bitSize: 0x60(0xc Byte(s)), array:0xc(hti:0x21)
        uint:2 hash_33960bf06b2ab138[hash_7a62ede7338dfc7d];
        // offset: 0x6b0, bitSize: 0x38(0x7 Byte(s)), array:0x7(hti:0x22)
        uint:2 hash_450371f075108196[hash_79cefc35f54e5a3];
        // offset: 0x6e8, bitSize: 0x10(0x2 Byte(s)), array:0x2(hti:0x29)
        uint:2 hash_4b153669f5b79216[hash_3f7b1b622cd3b323];
        // offset: 0x6f8, bitSize: 0x58(0xb Byte(s)), array:0xb(hti:0x20)
        uint:2 hash_1d1d15360c795f59[hash_d86a6c44db9ed02];
        // offset: 0x750, bitSize: 0x28(0x5 Byte(s)), array:0x5(hti:0x30)
        uint:2 hash_45ab587a7a64e42f[hash_341e259060efcc60];
        // offset: 0x778, bitSize: 0x38(0x7 Byte(s)), array:0x7(hti:0x1d)
        uint:2 hash_642363ae71879232[hash_6a8fcee5e3a0f4d7];
        // offset: 0x7b0, bitSize: 0x110(0x22 Byte(s)), array:0x22(hti:0x11)
        uint:2 hash_4cc3c84feeb4b041[hash_29f81b1301bd1fba];
        // offset: 0x8c0, bitSize: 0x88(0x11 Byte(s)), array:0x11(hti:0x18)
        uint:2 hash_1c4d4b1d9ce5263d[hash_701adfbe90b3b30e];
        // offset: 0x948, bitSize: 0xa0(0x14 Byte(s)), array:0x14(hti:0x19)
        uint:2 hash_1c4d481d9ce52124[hash_7cb6f8bc234268e1];
        // offset: 0x9e8, bitSize: 0xc0(0x18 Byte(s)), array:0x18(hti:0x1a)
        uint:2 hash_1c4d491d9ce522d7[hash_b2ae44cbcf23ed8];
        // offset: 0xaa8, bitSize: 0xc0(0x18 Byte(s)), array:0x18(hti:0x1b)
        uint:2 hash_1c4d461d9ce51dbe[hash_41ef925febc870db];
        // offset: 0xb68, bitSize: 0xb8(0x17 Byte(s)), array:0x17(hti:0x1c)
        uint:2 hash_1c4d471d9ce51f71[hash_65b81abda30a6f0a];
        // offset: 0xc20, bitSize: 0x28(0x5 Byte(s)), array:0x5(hti:0x36)
        uint:2 hash_381c15994be5cdbc[hash_360b670030cff729];
        // offset: 0xc48, bitSize: 0x110(0x22 Byte(s)), array:0x22(hti:0x23)
        uint:2 hash_35640e9ffafb0a55[hash_2a41bcedd076b096];
        // offset: 0xd58, bitSize: 0x110(0x22 Byte(s)), array:0x22(hti:0x1e)
        uint:2 hash_7a22dc6feec296b4[hash_7bfb6ec94c87c111];
        // offset: 0xe68, bitSize: 0x10(0x2 Byte(s)), array:0x2(hti:0x32)
        uint:2 hash_73179528704b9caf[hash_3722012a797a51e0];
        // offset: 0xe78, bitSize: 0x60(0xc Byte(s)), array:0xc(hti:0x14)
        uint:2 hash_70689c2756a65f21[hash_74f25244e08c2e1a];
        // offset: 0xed8, bitSize: 0x50(0xa Byte(s)), array:0xa(hti:0x15)
        uint:2 hash_2038d53f1f435f6d[hash_206ac9ed3740c51e];
        // offset: 0xf28, bitSize: 0x58(0xb Byte(s)), array:0xb(hti:0x31)
        uint:2 hash_6702092755c542d6[hash_1b643018d71a38e3];
        // offset: 0xf80, bitSize: 0x10(0x2 Byte(s)), array:0x2(hti:0x34)
        uint:2 hash_7a4c918df5ed914b[hash_1e5985e0a2172d04];
        // offset: 0xf90, bitSize: 0x10(0x2 Byte(s)), array:0x2(hti:0x35)
        uint:2 hash_28bcb1a74fb9506[hash_779a38a9d11be533];
        // offset: 0xfa0, bitSize: 0xe8(0x1d Byte(s)), array:0x1d(hti:0x37)
        uint:2 hash_70a73affe7ecd67a[hash_7f3d9959cd998def];
        // offset: 0x1088, bitSize: 0x10(0x2 Byte(s)), array:0x2(hti:0x27)
        uint:2 hash_696912d12c054663[hash_27e39161b580acc];
        // offset: 0x1098, bitSize: 0x160(0x2c Byte(s)), array:0x2c(hti:0x28)
        uint:2 hash_7f9f7a55a86777c3[hash_123fd6ca601be2ac];
        // offset: 0x11f8, bitSize: 0x10(0x2 Byte(s)), array:0x2(hti:0x2a)
        uint:2 hash_1f2793552979c402[hash_5ce66b213a8bfd87];
        // offset: 0x1208, bitSize: 0x150(0x2a Byte(s)), array:0x2a(hti:0x33)
        uint:2 hash_3d3ba2ecf4d30874[hash_39dae39406e713d1];
        // offset: 0x1358, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0x13)
        uint:2 hash_319cbf14b4fdff70[hash_5ce6dadd2ab937a5];
        // offset: 0x1370, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x2b)
        uint:2 hash_5462e18ed384e309[hash_570d8e8d1a9b9792];
    };

    // bitSize: 0x278, members: 40
    struct hash_1577ff85bb9d3ca {
        // offset: 0x0, bitSize: 0x27, array:0x27(hti:0x16)
        bool hash_38483ac09b694b38[hash_4ae36c0820937a7d];
        // offset: 0x27, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0x25)
        bool hash_572050055e786d32[hash_7958c23db376dd7];
        // offset: 0x37, bitSize: 0x7, array:0x7(hti:0x24)
        bool hash_46b0c1b44ff6dccb[hash_7ecc2f4c0fcd9384];
        // offset: 0x3e, bitSize: 0xa, array:0xa(hti:0x2d)
        bool hash_41db204503120a05[hash_57c2000b18db1b66];
        // offset: 0x48, bitSize: 0xb, array:0xb(hti:0x26)
        bool hash_71717ef651cdedfb[hash_73329db2b3c3cfd4];
        // offset: 0x53, bitSize: 0x22, array:0x22(hti:0x2c)
        bool hash_10d99c51363d023b[hash_119a2723c18cf14];
        // offset: 0x75, bitSize: 0x2, array:0x2(hti:0x2e)
        bool hash_511bbcd521bfe80e[hash_64ae17c6326a478b];
        // offset: 0x77, bitSize: 0x4, array:0x4(hti:0x12)
        bool hash_1f80861358483d86[hash_5a65280ea064bab3];
        // offset: 0x7b, bitSize: 0x26, array:0x26(hti:0x2f)
        bool hash_46ddf1f925e6a50b[hash_54c65df8de14c4];
        // offset: 0xa1, bitSize: 0x2, array:0x2(hti:0x1f)
        bool hash_6db018ffcad34401[hash_1aa652a8cf02637a];
        // offset: 0xa3, bitSize: 0x27, array:0x27(hti:0x17)
        bool hash_5914dc15bf67164a[hash_45c601f803af245f];
        // offset: 0xca, bitSize: 0xc, array:0xc(hti:0x21)
        bool hash_33960bf06b2ab138[hash_7a62ede7338dfc7d];
        // offset: 0xd6, bitSize: 0x7, array:0x7(hti:0x22)
        bool hash_450371f075108196[hash_79cefc35f54e5a3];
        // offset: 0xdd, bitSize: 0x2, array:0x2(hti:0x29)
        bool hash_4b153669f5b79216[hash_3f7b1b622cd3b323];
        // offset: 0xdf, bitSize: 0xb, array:0xb(hti:0x20)
        bool hash_1d1d15360c795f59[hash_d86a6c44db9ed02];
        // offset: 0xea, bitSize: 0x5, array:0x5(hti:0x30)
        bool hash_45ab587a7a64e42f[hash_341e259060efcc60];
        // offset: 0xef, bitSize: 0x7, array:0x7(hti:0x1d)
        bool hash_642363ae71879232[hash_6a8fcee5e3a0f4d7];
        // offset: 0xf6, bitSize: 0x22, array:0x22(hti:0x11)
        bool hash_4cc3c84feeb4b041[hash_29f81b1301bd1fba];
        // offset: 0x118, bitSize: 0x11, array:0x11(hti:0x18)
        bool hash_1c4d4b1d9ce5263d[hash_701adfbe90b3b30e];
        // offset: 0x129, bitSize: 0x14, array:0x14(hti:0x19)
        bool hash_1c4d481d9ce52124[hash_7cb6f8bc234268e1];
        // offset: 0x13d, bitSize: 0x18(0x3 Byte(s)), array:0x18(hti:0x1a)
        bool hash_1c4d491d9ce522d7[hash_b2ae44cbcf23ed8];
        // offset: 0x155, bitSize: 0x18(0x3 Byte(s)), array:0x18(hti:0x1b)
        bool hash_1c4d461d9ce51dbe[hash_41ef925febc870db];
        // offset: 0x16d, bitSize: 0x17, array:0x17(hti:0x1c)
        bool hash_1c4d471d9ce51f71[hash_65b81abda30a6f0a];
        // offset: 0x184, bitSize: 0x5, array:0x5(hti:0x36)
        bool hash_381c15994be5cdbc[hash_360b670030cff729];
        // offset: 0x189, bitSize: 0x22, array:0x22(hti:0x23)
        bool hash_35640e9ffafb0a55[hash_2a41bcedd076b096];
        // offset: 0x1ab, bitSize: 0x22, array:0x22(hti:0x1e)
        bool hash_7a22dc6feec296b4[hash_7bfb6ec94c87c111];
        // offset: 0x1cd, bitSize: 0x2, array:0x2(hti:0x32)
        bool hash_73179528704b9caf[hash_3722012a797a51e0];
        // offset: 0x1cf, bitSize: 0xc, array:0xc(hti:0x14)
        bool hash_70689c2756a65f21[hash_74f25244e08c2e1a];
        // offset: 0x1db, bitSize: 0xa, array:0xa(hti:0x15)
        bool hash_2038d53f1f435f6d[hash_206ac9ed3740c51e];
        // offset: 0x1e5, bitSize: 0xb, array:0xb(hti:0x31)
        bool hash_6702092755c542d6[hash_1b643018d71a38e3];
        // offset: 0x1f0, bitSize: 0x2, array:0x2(hti:0x34)
        bool hash_7a4c918df5ed914b[hash_1e5985e0a2172d04];
        // offset: 0x1f2, bitSize: 0x2, array:0x2(hti:0x35)
        bool hash_28bcb1a74fb9506[hash_779a38a9d11be533];
        // offset: 0x1f4, bitSize: 0x1d, array:0x1d(hti:0x37)
        bool hash_70a73affe7ecd67a[hash_7f3d9959cd998def];
        // offset: 0x211, bitSize: 0x2, array:0x2(hti:0x27)
        bool hash_696912d12c054663[hash_27e39161b580acc];
        // offset: 0x213, bitSize: 0x2c, array:0x2c(hti:0x28)
        bool hash_7f9f7a55a86777c3[hash_123fd6ca601be2ac];
        // offset: 0x23f, bitSize: 0x2, array:0x2(hti:0x2a)
        bool hash_1f2793552979c402[hash_5ce66b213a8bfd87];
        // offset: 0x241, bitSize: 0x2a, array:0x2a(hti:0x33)
        bool hash_3d3ba2ecf4d30874[hash_39dae39406e713d1];
        // offset: 0x26b, bitSize: 0x3, array:0x3(hti:0x13)
        bool hash_319cbf14b4fdff70[hash_5ce6dadd2ab937a5];
        // offset: 0x26e, bitSize: 0x8(0x1 Byte(s)), array:0x8(hti:0x2b)
        bool hash_5462e18ed384e309[hash_570d8e8d1a9b9792];
    };

    // bitSize: 0xe0, members: 13
    struct prevscores {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 ekia;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:16 kills;
        // offset: 0x20, bitSize: 0x18(0x3 Byte(s))
        uint:24 score;
        // offset: 0x38, bitSize: 0x20(0x4 Byte(s))
        uint timeplayed;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        uint:16 objectiveekia;
        // offset: 0x68, bitSize: 0x20(0x4 Byte(s))
        uint objectivetime;
        // offset: 0x88, bitSize: 0x10(0x2 Byte(s))
        uint:16 objectivescore;
        // offset: 0x98, bitSize: 0x10(0x2 Byte(s))
        uint:16 objectivedefends;
        // offset: 0xa8, bitSize: 0x18(0x3 Byte(s))
        uint:24 damage;
        // offset: 0xc0, bitSize: 0x10(0x2 Byte(s))
        uint:16 deaths;
        // offset: 0xd0, bitSize: 0x8(0x1 Byte(s))
        outcome outcome;
        // offset: 0xd8, bitSize: 0x1
        bool valid;
    };

    // bitSize: 0x1050, members: 71
    struct gametypestats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hits;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ties;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec wins;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2e8b68c9d172d72;
        // offset: 0x60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec crush;
        // offset: 0x78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills;
        // offset: 0x90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2c800d9270aea253;
        // offset: 0xa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_64f04c6f982fed06;
        // offset: 0xc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec score;
        // offset: 0xd8, bitSize: 0x28(0x5 Byte(s))
        hash_7114ea3f9fe06a15 hash_5f135c62c4abba27;
        // offset: 0x100, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec total_damage;
        // offset: 0x118, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_380c95374d9e6b5c;
        // offset: 0x130, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec time_played_total;
        // offset: 0x148, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_264d7e45be4b0c56;
        // offset: 0x160, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge1;
        // offset: 0x190, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge2;
        // offset: 0x1c0, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge3;
        // offset: 0x1f0, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge4;
        // offset: 0x220, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge5;
        // offset: 0x250, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge6;
        // offset: 0x280, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge7;
        // offset: 0x2b0, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge8;
        // offset: 0x2e0, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge9;
        // offset: 0x310, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_41556a712a504d9b;
        // offset: 0x328, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_streak;
        // offset: 0x340, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_35c7f39c43772db1;
        // offset: 0x358, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_ekia;
        // offset: 0x370, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_kills;
        // offset: 0x388, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_score;
        // offset: 0x3a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_d2b4dbd902779f7;
        // offset: 0x3b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_75477f88c5551f60;
        // offset: 0x3d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec wlratio;
        // offset: 0x3e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec defends;
        // offset: 0x400, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec score_core;
        // offset: 0x418, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_cdcfdbbd7e2b4c9;
        // offset: 0x430, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_51331a47f6abe3db;
        // offset: 0x448, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6d2dda5aa5646c2a;
        // offset: 0x460, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_kill_streak;
        // offset: 0x478, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec win_streak;
        // offset: 0x490, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2a5b5b35bf0ee751;
        // offset: 0x4a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec cur_win_streak;
        // offset: 0x4c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3c79e0a509575a03;
        // offset: 0x4d8, bitSize: 0x8(0x1 Byte(s))
        int:5 prevscoreindex;
        // offset: 0x4e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_438dd63c5f27e257;
        // offset: 0x4f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4e2b10f9704783ce;
        // offset: 0x510, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4a72871f32aa66a1;
        // offset: 0x528, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7aa5d966aaba6d3e;
        // offset: 0x540, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec offends;
        // offset: 0x558, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_75c5c00847117bfb;
        // offset: 0x570, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deaths;
        // offset: 0x588, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec objective_score;
        // offset: 0x5a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec losses;
        // offset: 0x5b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_976e228ecad1a36;
        // offset: 0x5d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kdratio;
        // offset: 0x5e8, bitSize: 0x20(0x4 Byte(s))
        float hash_21d546d4f53cd409;
        // offset: 0x608, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1caf83415b78e5a0;
        // offset: 0x620, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assists;
        // offset: 0x638, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5cd164b625ff1544;
        // offset: 0x650, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge10;
        // offset: 0x680, bitSize: 0x8c0(0x118 Byte(s)), array:0xa(hti:0xffff)
        prevscores prevscores[10];
        // offset: 0xf40, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1b563e11d9caca7e;
        // offset: 0xf58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6ae9a3797a35f5b2;
        // offset: 0xf70, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_19d9303e05e8a7df;
        // offset: 0xf88, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_19d92e3e05e8a479;
        // offset: 0xfa0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_19d93a3e05e8b8dd;
        // offset: 0xfb8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec average_kill_streak;
        // offset: 0xfd0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_61cf0b4451d9ff9b;
        // offset: 0xfe8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_8bdbd052bdb213;
        // offset: 0x1000, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec headshots;
        // offset: 0x1018, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1cfa004323a2ffe6;
        // offset: 0x1030, bitSize: 0x20(0x4 Byte(s))
        float hash_2c483cba5b0df367;
    };

    // bitSize: 0x420, members: 23
    struct weaponstats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hits;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec used;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multi_kills;
        // offset: 0x60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills;
        // offset: 0x78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec shots;
        // offset: 0x90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5cb35ea54e039f91;
        // offset: 0xa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4a9884492d4561b;
        // offset: 0xc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_kills;
        // offset: 0xd8, bitSize: 0x1b0(0x36 Byte(s)), array:0x12(hti:0x3d)
        hash_6c116eea1f7184ec hash_5b635080228b9c03[hitlocations];
        // offset: 0x288, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec one_shot_kills;
        // offset: 0x2a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_110787096944486b;
        // offset: 0x2b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_109b0615c82fd4af;
        // offset: 0x2d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deathsduringuse;
        // offset: 0x2e8, bitSize: 0x78(0xf Byte(s)), array:0x5(hti:0xffff)
        hash_6c116eea1f7184ec engagement_ranges[5];
        // offset: 0x360, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroyed;
        // offset: 0x378, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deaths;
        // offset: 0x390, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assists;
        // offset: 0x3a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1253a442c652a94d;
        // offset: 0x3c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7720eea600a81a53;
        // offset: 0x3d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec headshots;
        // offset: 0x3f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_320ca7faa51ca7a5;
        // offset: 0x408, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_assists;
    };

    // bitSize: 0x198, members: 17
    struct scorestreakstats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec uses;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7bf29fa438d54aad;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_23c90082f12a6770;
        // offset: 0x60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_kills;
        // offset: 0x78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_475b7b7447960e6f;
        // offset: 0x90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec armored_kills;
        // offset: 0xa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_522722579f6b3630;
        // offset: 0xc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_35d993e984abfcd8;
        // offset: 0xd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_e970dce71c27a65;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3bcc31ccdaa15b95;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deaths;
        // offset: 0x120, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destructions;
        // offset: 0x138, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assists;
        // offset: 0x150, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5a706fa7c83f5df3;
        // offset: 0x168, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_destructions;
        // offset: 0x180, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_assists;
    };

    // bitSize: 0x420, members: 44
    struct equipmentstats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec uses;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multi_kills;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5cb35ea54e039f91;
        // offset: 0x60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_14d32aad854916ec;
        // offset: 0x78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_e9cf3a9bab04ac7;
        // offset: 0x90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7575a19de6d2f3bd;
        // offset: 0xa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_52fbd3f855752244;
        // offset: 0xc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7bf29fa438d54aad;
        // offset: 0xd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4c2be004ea3925a6;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4dd6292b47d5e341;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_46d03e3b314f09bb;
        // offset: 0x120, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_46edd7370e0c7f87;
        // offset: 0x138, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec nightingale_kills_near;
        // offset: 0x150, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec flashbang_blind_assists;
        // offset: 0x168, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_ekia;
        // offset: 0x180, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_kills;
        // offset: 0x198, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7dec06273af56b68;
        // offset: 0x1b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_45668719408ee692;
        // offset: 0x1c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3d7965db54a794ce;
        // offset: 0x1e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7612343d459539e4;
        // offset: 0x1f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_434a5a95d07bf751;
        // offset: 0x210, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec nightingale_assists;
        // offset: 0x228, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1bc3e0ea4bf67adf;
        // offset: 0x240, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_41506feb42f4422a;
        // offset: 0x258, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1eed93e0c1faa7cf;
        // offset: 0x270, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec concussion_assists;
        // offset: 0x288, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec concussion_stun_kills;
        // offset: 0x2a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deaths;
        // offset: 0x2b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_45ef9ed5d55c6e43;
        // offset: 0x2d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_348944bfb1b2471;
        // offset: 0x2e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_cac64f745e7f76d;
        // offset: 0x300, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destructions;
        // offset: 0x318, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_55a3a303ebacf692;
        // offset: 0x330, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5189e7a2aac6c8ac;
        // offset: 0x348, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec flashbang_blind_kills;
        // offset: 0x360, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assists;
        // offset: 0x378, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec semtex_sticks;
        // offset: 0x390, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7542f0d7d9ea6e78;
        // offset: 0x3a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2bc3b9360ca17edf;
        // offset: 0x3c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_f9a67191c902167;
        // offset: 0x3d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7720eea600a81a53;
        // offset: 0x3f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_765f6705c5e48827;
        // offset: 0x408, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_assists;
    };

    // bitSize: 0x198, members: 17
    struct hash_4083bced4c7759a2 {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_22d1f7a01be6531c;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec gunner_kills;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3daecb63bddd62e1;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec driver_kills;
        // offset: 0x60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_336b4a559842d72c;
        // offset: 0x78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_66e44aa1270586a0;
        // offset: 0x90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_368d390a483d963a;
        // offset: 0xa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec infil_assists;
        // offset: 0xc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec driver_captures;
        // offset: 0xd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec passenger_assists;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec infil_objectives;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec objective_kills;
        // offset: 0x120, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destructions;
        // offset: 0x138, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7a6c20f80f626451;
        // offset: 0x150, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec objective_assists;
        // offset: 0x168, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7bc0417624c7b8ad;
        // offset: 0x180, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_79b6d5046add3690;
    };

    // bitSize: 0xa4a8, members: 1625
    struct globalstats {
        // offset: 0x0, bitSize: 0x38(0x7 Byte(s))
        intstat ekia;
        // offset: 0x38, bitSize: 0x38(0x7 Byte(s))
        intstat hits;
        // offset: 0x70, bitSize: 0x38(0x7 Byte(s))
        intstat ties;
        // offset: 0xa8, bitSize: 0x38(0x7 Byte(s))
        intstat wins;
        // offset: 0xe0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_infected_survivor;
        // offset: 0xf8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_539cbd04b9471ee4;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_ecfab430ac110e2;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_1fad18ffd7086c2a;
        // offset: 0x128, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1fad15ffd7086711;
        // offset: 0x138, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6d29bd299d3db828;
        // offset: 0x150, bitSize: 0x38(0x7 Byte(s))
        intstat assists;
        // offset: 0x188, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_21a608644ae7afcc;
        // offset: 0x198, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3f9ba286e92137dd;
        // offset: 0x1a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_655e57c8a95f6ab7;
        // offset: 0x1c0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_718f05b5fd44a07e;
        // offset: 0x1d0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 multikill_s1;
        // offset: 0x1e0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_48509be6907f6897;
        // offset: 0x1f0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_492a4e8875009b7b;
        // offset: 0x208, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2a708c95aef05cb5;
        // offset: 0x220, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3cbe820401e3d5c6;
        // offset: 0x230, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6da6f256a59a895a;
        // offset: 0x248, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_492f50ceea7d2d5c;
        // offset: 0x258, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_swarm_shutdown;
        // offset: 0x270, bitSize: 0x38(0x7 Byte(s))
        intstat career_score_hc;
        // offset: 0x2a8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_enemy_thats_in_air;
        // offset: 0x2d0, bitSize: 0x38(0x7 Byte(s))
        intstat downs;
        // offset: 0x308, bitSize: 0x38(0x7 Byte(s))
        intstat kills;
        // offset: 0x340, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_war_machine_kill;
        // offset: 0x358, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec death_dodger;
        // offset: 0x370, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_755831c765749822;
        // offset: 0x390, bitSize: 0x38(0x7 Byte(s))
        intstat shots;
        // offset: 0x3c8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_57495bb6f7e6d2f9;
        // offset: 0x3d8, bitSize: 0x38(0x7 Byte(s))
        intstat kills_underwater;
        // offset: 0x410, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_tac_deploy_destroy;
        // offset: 0x428, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6b1f1900b1afff8b;
        // offset: 0x440, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_stop_enemy_killstreak;
        // offset: 0x458, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3d7d26fa33ba6f97;
        // offset: 0x468, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_4c84965d6d12a705;
        // offset: 0x480, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_4c84905d6d129cd3;
        // offset: 0x498, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec field;
        // offset: 0x4b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_tak5_boosted;
        // offset: 0x4c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_308b22e7c87a0709;
        // offset: 0x4e0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 stats_kill_enemy_with_gunbutt;
        // offset: 0x508, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_enemy_on_land_underwater;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_479a90d3f970186d;
        // offset: 0x540, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec melee;
        // offset: 0x558, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_care_package_killjoy;
        // offset: 0x570, bitSize: 0x38(0x7 Byte(s))
        intstat total_games_played;
        // offset: 0x5a8, bitSize: 0x40(0x8 Byte(s))
        hash_6e522b658d49b7ba score;
        // offset: 0x5e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_ammo_pickup_scavenger;
        // offset: 0x600, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_enemy_injuring_teammate;
        // offset: 0x618, bitSize: 0x38(0x7 Byte(s))
        intstat hc_time_played;
        // offset: 0x650, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 mastery_humiliation;
        // offset: 0x668, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_64941a7011c17b39;
        // offset: 0x680, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_destructions;
        // offset: 0x698, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6f4a03c7df254b96;
        // offset: 0x6a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6edacd218965f8bd;
        // offset: 0x6c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_bayonet_tacknife;
        // offset: 0x6d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_53be30ddabe56984;
        // offset: 0x6f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_stim_kill;
        // offset: 0x708, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2ea1e3bae9652e55;
        // offset: 0x720, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_5_tactical_inserts;
        // offset: 0x738, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_359f05e4bb4fa57;
        // offset: 0x750, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4f45ca1828646934;
        // offset: 0x760, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_64ced1c22131123e;
        // offset: 0x778, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_457a3db89d8cbef7;
        // offset: 0x788, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_1e31fd681b6d19f;
        // offset: 0x7a0, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_392b1599a0b76c6a;
        // offset: 0x7a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_656a2ab7e777796b;
        // offset: 0x7c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_retrieve_own_tags;
        // offset: 0x7d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_rcxd_killjoy;
        // offset: 0x7f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5ef338957e940e7d;
        // offset: 0x808, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_enemy_after_switching_weapons;
        // offset: 0x820, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3a99adcb0a44c32b;
        // offset: 0x848, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3e107dcbf6a27d6b;
        // offset: 0x860, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_103a235d7563069c;
        // offset: 0x878, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2d553b0cd6606d50;
        // offset: 0x888, bitSize: 0x38(0x7 Byte(s))
        intstat kills_hc;
        // offset: 0x8c0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_60c539b6c6bc428;
        // offset: 0x8d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_25447d735c4d36e6;
        // offset: 0x8e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_hipfire_steadyaim_rf;
        // offset: 0x900, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_18cc315440f11102;
        // offset: 0x928, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1fdfb27491a52cc2;
        // offset: 0x940, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_59b75115ee254217;
        // offset: 0x950, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_finishers;
        // offset: 0x968, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec wins_core;
        // offset: 0x980, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2744901d51719355;
        // offset: 0x990, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_27448e1d51718fef;
        // offset: 0x9a0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5e93644ea362349e;
        // offset: 0x9b8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4de1ffd2115bd019;
        // offset: 0x9c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_15427af2783e4a2d;
        // offset: 0x9e0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_7af46cc50d39f583;
        // offset: 0x9f8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_430f303e03007f59;
        // offset: 0xa10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_warthog_kill;
        // offset: 0xa28, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_2e82801fbae18571;
        // offset: 0xa48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_battle_shield_kill;
        // offset: 0xa60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2686fe80d2524e8b;
        // offset: 0xa78, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_7120961e7102ee0c;
        // offset: 0xaa0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5f8a3ee10f5e53dc;
        // offset: 0xab8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_enemy_shooting_in_partial_cover;
        // offset: 0xae0, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_7ea1f7d46d889aff;
        // offset: 0xb00, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5f20e4f510b85f5e;
        // offset: 0xb10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_enemy_with_hacked_care_package;
        // offset: 0xb28, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_purifier_kill;
        // offset: 0xb40, bitSize: 0x38(0x7 Byte(s))
        intstat items_paint_cans_collected;
        // offset: 0xb78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_disruptor_kill;
        // offset: 0xb90, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1fa18fc0b5bb6695;
        // offset: 0xba8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_first_kill;
        // offset: 0xbc0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4749db0b7b2d6e3;
        // offset: 0xbd0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_clean_multi_deposit_normal;
        // offset: 0xbe8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_27008cbf02436529;
        // offset: 0xc00, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec disables;
        // offset: 0xc18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4ed745a0ed607a71;
        // offset: 0xc30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_seeker_destroy;
        // offset: 0xc48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_prop_killed_all_props;
        // offset: 0xc60, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_32a02036b210e14d;
        // offset: 0xc70, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_580b295b38c0ee38;
        // offset: 0xc98, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1b5a22bbb1c029a2;
        // offset: 0xcb0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5bdb4dad0048aead;
        // offset: 0xcc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3b9d5d597636c45c;
        // offset: 0xcd8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_726639776bb5add;
        // offset: 0xd00, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_specialist_equipment_equipmentcharge;
        // offset: 0xd18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_bounty_hunter_revived_teammate;
        // offset: 0xd30, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_26fc476300986ac1;
        // offset: 0xd40, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_near_plant_engineer_hardwired;
        // offset: 0xd58, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7d6a0749d37a5428;
        // offset: 0xd68, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_723bd70b9a80a581;
        // offset: 0xd78, bitSize: 0x38(0x7 Byte(s))
        intstat hash_6aaa9fcccdca32e8;
        // offset: 0xdb0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec contracts_purchased;
        // offset: 0xdc8, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 hash_56126d4493e77983;
        // offset: 0xde0, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_4808274db2565c0d;
        // offset: 0xdf8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_315eb81146ec9089;
        // offset: 0xe08, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 stats_kill_enemy_with_their_weapon;
        // offset: 0xe30, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_1ffb9d5647330a52;
        // offset: 0xe58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6c5abcc42d7e277d;
        // offset: 0xe70, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1793c828270825be;
        // offset: 0xe88, bitSize: 0x38(0x7 Byte(s))
        intstat time_played_alive;
        // offset: 0xec0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_hellstorm_missile_killjoy;
        // offset: 0xed8, bitSize: 0x38(0x7 Byte(s))
        intstat hash_5387d5e6f15c6b55;
        // offset: 0xf10, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_1bc5843853724fa9;
        // offset: 0xf28, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_concertina_wire_multikill_x2_summary;
        // offset: 0xf40, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_tempest_shutdown;
        // offset: 0xf58, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_2859c7926269f2a7;
        // offset: 0xf70, bitSize: 0x10(0x2 Byte(s))
        hash_798fe6dfb7cfb479 hash_70cd6c54d1c07272;
        // offset: 0xf80, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_41ca7e5eeaa76eeb;
        // offset: 0xf98, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec time_played_other;
        // offset: 0xfb0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_31ca5558fc28aa3b;
        // offset: 0xfc8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5eb597b88ee14385;
        // offset: 0xfe0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_39e43b41e43d1803;
        // offset: 0xff8, bitSize: 0x38(0x7 Byte(s))
        intstat time_played_total;
        // offset: 0x1030, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_specialized_weapons;
        // offset: 0x1048, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_657cf19d17d5b366;
        // offset: 0x1060, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_334c33ef9f40a58a;
        // offset: 0x1068, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_groundbased_scorestreak;
        // offset: 0x1080, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_51450dcbfe052908;
        // offset: 0x1088, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_hip_gung_ho;
        // offset: 0x10a0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_60545a50ce7c9791;
        // offset: 0x10c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_hipfire_rapidfire_lasersights_fasthands;
        // offset: 0x10e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_470c0ed4799f236a;
        // offset: 0x10f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_shield_blocked_damage;
        // offset: 0x1110, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_humiliation_gun;
        // offset: 0x1128, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_53a4a6fe65772536;
        // offset: 0x1140, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4bdd06fd222df3f4;
        // offset: 0x1158, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_517bf5c8991ad97a;
        // offset: 0x1170, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_position_secure;
        // offset: 0x1188, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_with_pickup;
        // offset: 0x11b0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_59c247870ba8f396;
        // offset: 0x11c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6c36aa2d7d6f2b4;
        // offset: 0x11e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_29361ee6a3ecd300;
        // offset: 0x11f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec blackjack_challenge;
        // offset: 0x1210, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3c794263f2d7e231;
        // offset: 0x1228, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_prop_killed_three_props;
        // offset: 0x1240, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_19868ed34c58dae;
        // offset: 0x1250, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3dd233c2a2cb7eec;
        // offset: 0x1260, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multikill_2_with_heroability;
        // offset: 0x1278, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_362025f564dfa464;
        // offset: 0x1290, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7ea091987cc17c99;
        // offset: 0x12a8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3a8433be848d44c5;
        // offset: 0x12b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_swat_team_killjoy;
        // offset: 0x12d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_flashed_enemy;
        // offset: 0x12e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_uav_killjoy;
        // offset: 0x1300, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_quickly_secure_point;
        // offset: 0x1318, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2cd7f6dca1ce1d14;
        // offset: 0x1328, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6d6935026ede6415;
        // offset: 0x1338, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6d692e026ede5830;
        // offset: 0x1348, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6d692f026ede59e3;
        // offset: 0x1358, bitSize: 0x38(0x7 Byte(s))
        intstat distance_traveled_vehicle_water;
        // offset: 0x1390, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6c3172682467122;
        // offset: 0x13a8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5fb1bddfef22fc62;
        // offset: 0x13b8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_45c809e6fc999f3a;
        // offset: 0x13c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_confirmed_multi;
        // offset: 0x13e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7845f764968426b0;
        // offset: 0x13f8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_36fa9e723c26f593;
        // offset: 0x1410, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_4515a9ce55b8bc47;
        // offset: 0x1428, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_13b256d1af149ece;
        // offset: 0x1440, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_103be234630de92;
        // offset: 0x1458, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_41fbdc6f4aa1a875;
        // offset: 0x1468, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_tripwire_ied_kill;
        // offset: 0x1480, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_76497bde4ff277c1;
        // offset: 0x1498, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_shield_assist;
        // offset: 0x14b0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_61993e47134677e2;
        // offset: 0x14c0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_61993c471346747c;
        // offset: 0x14d0, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_1a31e9546b33c22d;
        // offset: 0x14d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hero_transmissions;
        // offset: 0x14f0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1d73823f33cb13ff;
        // offset: 0x1500, bitSize: 0x10(0x2 Byte(s))
        hash_3fe0577c80ed2247 hash_56a0e77eea02664d;
        // offset: 0x1510, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_longshot_kill;
        // offset: 0x1528, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_386525eb8f4537c2;
        // offset: 0x1540, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_14151d499f4c3da0;
        // offset: 0x1568, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4b19afce40dfc918;
        // offset: 0x1580, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_34001d400c0aa7bb;
        // offset: 0x1590, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1f8dde89d75659ab;
        // offset: 0x15a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec challenges;
        // offset: 0x15b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_attack_chopper_kill;
        // offset: 0x15d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_revenge_kill;
        // offset: 0x15e8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_73d936b41c0e7db3;
        // offset: 0x15f8, bitSize: 0x38(0x7 Byte(s))
        intstat kills_vehicle_driver;
        // offset: 0x1630, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3ef216ff42894960;
        // offset: 0x1640, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec carries;
        // offset: 0x1658, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec eliminated_final_enemy;
        // offset: 0x1670, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec teamkills_nostats;
        // offset: 0x1688, bitSize: 0x38(0x7 Byte(s))
        intstat kills_after_damage;
        // offset: 0x16c0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_76c2a7d61abd306d;
        // offset: 0x16d0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5f8a23bbf07a8769;
        // offset: 0x16e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_hacked_equipment;
        // offset: 0x16f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_attack_dog_shutdown;
        // offset: 0x1710, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 ekia_every_enemy_onelife;
        // offset: 0x1738, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4234fb2534d8a2d7;
        // offset: 0x1748, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_7b25ab6b37350720;
        // offset: 0x1760, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_f40631461a61b36;
        // offset: 0x1770, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7455e919746eba4d;
        // offset: 0x1788, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_661621bdcf8b9cf3;
        // offset: 0x1798, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_661627bdcf8ba725;
        // offset: 0x17a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_enemy_with_armor;
        // offset: 0x17c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_battle_shield_shutdown;
        // offset: 0x17d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_enemy_with_fists;
        // offset: 0x17f0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 mastery_air_assault;
        // offset: 0x1808, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_67c1416f36b6e6db;
        // offset: 0x1820, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_17d0d0cb03016ae5;
        // offset: 0x1838, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_cluster_semtex_multikill_x2_summary;
        // offset: 0x1850, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_6c77def2a9dbbb1e;
        // offset: 0x1868, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3a2c1b5b8901cb5b;
        // offset: 0x1878, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5ca3004cfbc713c4;
        // offset: 0x1888, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5ca3014cfbc71577;
        // offset: 0x1898, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_spawn_beacon_insertion;
        // offset: 0x18b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_658ad0ee7468d1e9;
        // offset: 0x18c8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_9d7fba655e34b0a;
        // offset: 0x18d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assist_score_cuav;
        // offset: 0x18f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2e20b25b7a785719;
        // offset: 0x1908, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_hacked_kill;
        // offset: 0x1920, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_17b5e73b9a9626e3;
        // offset: 0x1930, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_7397ba07e9e0325d;
        // offset: 0x1948, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5f4d95085e8f9a1c;
        // offset: 0x1960, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_assault_pack_destroy;
        // offset: 0x1978, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_fe34dbd25b26a05;
        // offset: 0x1990, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 mastery_specialist_killjoy;
        // offset: 0x19a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_swat_grenade_multikill_x2_summary;
        // offset: 0x19c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_25aca9d0455d0cdc;
        // offset: 0x19d8, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d stats_ekia;
        // offset: 0x1a08, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kills_molotov;
        // offset: 0x1a30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_gravity_slam_multikill_x2;
        // offset: 0x1a48, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_d8ed5062e7b639d;
        // offset: 0x1a70, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec disarm_hacked_carepackage;
        // offset: 0x1a88, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_380d0317d7caf20;
        // offset: 0x1a98, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_52b4d13e62f857e5;
        // offset: 0x1ab0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_16e0efab9e84e9d2;
        // offset: 0x1ac0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_16e0ecab9e84e4b9;
        // offset: 0x1ad0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_perk1_greed;
        // offset: 0x1ae8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6e9f9d0d3ae59765;
        // offset: 0x1af8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6f41f79a13199c79;
        // offset: 0x1b08, bitSize: 0x38(0x7 Byte(s))
        intstat vehicle_escapes;
        // offset: 0x1b40, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_58db264373a617ac;
        // offset: 0x1b58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_581ed3cfbcb8f584;
        // offset: 0x1b70, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_5afc248bef0531a3;
        // offset: 0x1b88, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 killstreak_30_no_scorestreaks;
        // offset: 0x1ba8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec contracts_completed;
        // offset: 0x1bc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_33a248f0eeeed968;
        // offset: 0x1bd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_gunship_killjoy;
        // offset: 0x1bf0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_gravity_slam_kill;
        // offset: 0x1c08, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_365e781f4a2d8599;
        // offset: 0x1c28, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_5_teammates_assists;
        // offset: 0x1c40, bitSize: 0x38(0x7 Byte(s))
        intstat cur_win_streak;
        // offset: 0x1c78, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_64d75a7ec139fdf7;
        // offset: 0x1c88, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec dirty_bomb_deposits;
        // offset: 0x1ca0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_fac49b9c9fcdb8d;
        // offset: 0x1cb0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_elimination_and_last_player_alive;
        // offset: 0x1cc8, bitSize: 0x38(0x7 Byte(s))
        intstat vehicles_destroyed_occupied_using_vehicle;
        // offset: 0x1d00, bitSize: 0x38(0x7 Byte(s))
        intstat distance_traveled_wingsuit;
        // offset: 0x1d38, bitSize: 0x38(0x7 Byte(s))
        intstat kills_zombie;
        // offset: 0x1d70, bitSize: 0x38(0x7 Byte(s))
        intstat longest_distance_kill;
        // offset: 0x1da8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_496927d497fdf692;
        // offset: 0x1db8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5028183e53dba047;
        // offset: 0x1de0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_close_deadsilence_awareness;
        // offset: 0x1df8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1970343201f6d4b2;
        // offset: 0x1e08, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1970323201f6d14c;
        // offset: 0x1e18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec lifetime_buyin;
        // offset: 0x1e30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_deployable_cover_shutdown;
        // offset: 0x1e48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assist_score_satellite;
        // offset: 0x1e60, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_9da725fe15aa048;
        // offset: 0x1e88, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_9eb7f104b26e17c;
        // offset: 0x1ea0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_28b6ab1b019d73;
        // offset: 0x1eb8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_457be5a3937a1a34;
        // offset: 0x1ed0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_73653f3482eed5a1;
        // offset: 0x1ee0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec humiliate_victim;
        // offset: 0x1ef8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_sixthsense_awareness;
        // offset: 0x1f10, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_488b3dbe0a2f928c;
        // offset: 0x1f20, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_45ded1ec7f7d3992;
        // offset: 0x1f38, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_74ff35a98f3ae296;
        // offset: 0x1f48, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_139b997bc49d4b16;
        // offset: 0x1f60, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_4b3049ba027dd495;
        // offset: 0x1f88, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_enemy_while_flashed_slowed_stunned;
        // offset: 0x1fa0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_equipment_with_emp_grenade;
        // offset: 0x1fb8, bitSize: 0x38(0x7 Byte(s))
        intstat hash_46971a941d93cbb4;
        // offset: 0x1ff0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1cff4559423034cd;
        // offset: 0x2008, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_clear_2_attackers;
        // offset: 0x2020, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_protection_stun_kills;
        // offset: 0x2038, bitSize: 0x38(0x7 Byte(s))
        intstat hash_3498c2a577aa328e;
        // offset: 0x2070, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6f0ed93d0ba3fa09;
        // offset: 0x2088, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 mastery_support;
        // offset: 0x20a0, bitSize: 0x38(0x7 Byte(s))
        intstat hash_10ab034e9d2e65c4;
        // offset: 0x20d8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3c511176cb6b5853;
        // offset: 0x20e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assist_score_emp;
        // offset: 0x2100, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assist_score_uav;
        // offset: 0x2118, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_36a1f1959ae7445e;
        // offset: 0x2128, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_36a1ef959ae740f8;
        // offset: 0x2138, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_171796d645780487;
        // offset: 0x2148, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_15247715242be695;
        // offset: 0x2160, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_war_machine_x2_multikill_summary;
        // offset: 0x2178, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_dead_silence;
        // offset: 0x2190, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_deadsilence;
        // offset: 0x21a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_deployable_cover_x2_multikill_summary;
        // offset: 0x21c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec activate_cuav_while_enemy_satelite_active;
        // offset: 0x21d8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_66f86d062e57a06b;
        // offset: 0x21e8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 most_ekias_least_deaths;
        // offset: 0x2210, bitSize: 0x38(0x7 Byte(s))
        intstat total_damage;
        // offset: 0x2248, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_47aa6679efd7b139;
        // offset: 0x2258, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_47aa6579efd7af86;
        // offset: 0x2268, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 shutdown_gravslam_midair_after_grapple;
        // offset: 0x2288, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_26187deba312d31f;
        // offset: 0x22a0, bitSize: 0x38(0x7 Byte(s))
        intstat kills_eliminated;
        // offset: 0x22d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_15_with_blade;
        // offset: 0x22f0, bitSize: 0x38(0x7 Byte(s))
        intstat activation_count_jukebox;
        // offset: 0x2328, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_sensor_dart_kill;
        // offset: 0x2340, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_55a5fc51678a4dde;
        // offset: 0x2358, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2e71c083194285c9;
        // offset: 0x2370, bitSize: 0x38(0x7 Byte(s))
        intstat wins_last_alive;
        // offset: 0x23a8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_58ee12dacf893367;
        // offset: 0x23d0, bitSize: 0x38(0x7 Byte(s))
        intstat kills_longshot_sniper;
        // offset: 0x2408, bitSize: 0x40(0x8 Byte(s))
        hash_6e522b658d49b7ba score_specialized_equipment;
        // offset: 0x2448, bitSize: 0x38(0x7 Byte(s))
        intstat hash_630fffa7f053a2b7;
        // offset: 0x2480, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_assisted_suicide;
        // offset: 0x2498, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 camo_active_lmg_standard_base;
        // offset: 0x24b0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4cb341530c521448;
        // offset: 0x24c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1140aecd70c5e057;
        // offset: 0x24d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killed_bomb_defuser;
        // offset: 0x24f0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2db8ed5da8ee8550;
        // offset: 0x2500, bitSize: 0x38(0x7 Byte(s))
        intstat hash_1b3182f99881069d;
        // offset: 0x2538, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_55658382e18b3ec8;
        // offset: 0x2550, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5df87ce6dd360abf;
        // offset: 0x2560, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_40a19266327e603c;
        // offset: 0x2578, bitSize: 0x38(0x7 Byte(s))
        intstat kills_after_revive;
        // offset: 0x25b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6e42517661114fa;
        // offset: 0x25c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_50253bf63c3f8b9d;
        // offset: 0x25e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6c13ae81deff608b;
        // offset: 0x25f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_vision_pulse_kill;
        // offset: 0x2610, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_escort_robot_escort_goal;
        // offset: 0x2628, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_disruptor_assist;
        // offset: 0x2640, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_enemy_uav_sensordart_ghost;
        // offset: 0x2658, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroyed_qrdrone_with_bullet;
        // offset: 0x2670, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_a367df14eae87f0;
        // offset: 0x2680, bitSize: 0x38(0x7 Byte(s))
        intstat hash_4e9801d856eb3277;
        // offset: 0x26b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_fastmantle_kills;
        // offset: 0x26d0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_172b3bc29a9fabde;
        // offset: 0x26e0, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_5c41a492b47fc297;
        // offset: 0x2700, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3ef5b668aaef6551;
        // offset: 0x2710, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4c27fd1e8308d82b;
        // offset: 0x2728, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_flak_tac_while_stunned;
        // offset: 0x2740, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_185c3c78ebc24268;
        // offset: 0x2750, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_20bf80a75132c05;
        // offset: 0x2760, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_19a15fdb3f31884a;
        // offset: 0x2770, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_awareness;
        // offset: 0x2788, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6cda7af101a7813b;
        // offset: 0x27a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_entire_team_with_specialist_weapon;
        // offset: 0x27b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5604b2cc01137e0e;
        // offset: 0x27d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_concussion_grenade_multikill_x2_summary;
        // offset: 0x27e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_scythe_shutdown;
        // offset: 0x2800, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_441923b366b62fc3;
        // offset: 0x2810, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_441924b366b63176;
        // offset: 0x2820, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_441925b366b63329;
        // offset: 0x2830, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_441926b366b634dc;
        // offset: 0x2840, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_441927b366b6368f;
        // offset: 0x2850, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_441928b366b63842;
        // offset: 0x2860, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6d3e557eb8472748;
        // offset: 0x2878, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_vision_pulse_x2_multikill_summary;
        // offset: 0x2890, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_61a2b2e6028a56e8;
        // offset: 0x28a0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3b7d759c8864b5d8;
        // offset: 0x28b0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_529cb0a2c0619c09;
        // offset: 0x28c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_swat_grenade_kill_blinded_enemy;
        // offset: 0x28d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_20555c0e913428ad;
        // offset: 0x28f0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_74b19794b9a484d9;
        // offset: 0x2900, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5d841dfc6114d2ae;
        // offset: 0x2918, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_41d7899e04e68759;
        // offset: 0x2928, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_44655b9f24b38f68;
        // offset: 0x2938, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_stun_lethal;
        // offset: 0x2950, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_32227db686e80e47;
        // offset: 0x2968, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 shutdown_gravslam_before_impact;
        // offset: 0x2990, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_68f56bb01d2ea427;
        // offset: 0x29a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_33889a3c04861b3c;
        // offset: 0x29b8, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_2db210a1cfea8647;
        // offset: 0x29d8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 mastery_tactical;
        // offset: 0x29f0, bitSize: 0x38(0x7 Byte(s))
        intstat hash_736fa2bcc0b0bf62;
        // offset: 0x2a28, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_64d78a0e86ba8b55;
        // offset: 0x2a38, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec killsdenied;
        // offset: 0x2a50, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec returns;
        // offset: 0x2a68, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_38d5b7c2db747144;
        // offset: 0x2a78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2934211bcdcc9e9f;
        // offset: 0x2a90, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_79914da435788fe4;
        // offset: 0x2aa0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multikill_2_zone_attackers;
        // offset: 0x2ab8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_472752551d494882;
        // offset: 0x2ad0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_47c20b0aa74ca0c;
        // offset: 0x2ae0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_393ee8c94a7bccb9;
        // offset: 0x2af8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2f9649f2756709d6;
        // offset: 0x2b10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_29df6e4bac8ff741;
        // offset: 0x2b28, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_4551622490fb634f;
        // offset: 0x2b50, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_critical_heal_medicalinjectiongun_revenge;
        // offset: 0x2b68, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec currencyspent;
        // offset: 0x2b80, bitSize: 0x38(0x7 Byte(s))
        intstat kills_without_damage;
        // offset: 0x2bb8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1b44d2efdcfc12b1;
        // offset: 0x2bd0, bitSize: 0x38(0x7 Byte(s))
        intstat hash_525930f2f981aaa9;
        // offset: 0x2c08, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_scorestreak_with_specialist;
        // offset: 0x2c20, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3bf4605458c33226;
        // offset: 0x2c48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_416018859c2a61e0;
        // offset: 0x2c60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_275d8ac4ea32e7c8;
        // offset: 0x2c78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_eliminated_enemy;
        // offset: 0x2c90, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 headshots_s2;
        // offset: 0x2ca8, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d hash_2d62481543a7209;
        // offset: 0x2cd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4ad196e3eaceeb26;
        // offset: 0x2cf0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1aa963d190a41652;
        // offset: 0x2d00, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_4693318a66e8a0b7;
        // offset: 0x2d18, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_50ce2207b80f9fa5;
        // offset: 0x2d28, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_purifier_shutdown;
        // offset: 0x2d40, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_quieter_kills;
        // offset: 0x2d58, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_3fe247a47fed579e;
        // offset: 0x2d70, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_473fa810546b3693;
        // offset: 0x2d88, bitSize: 0x38(0x7 Byte(s))
        intstat hits_headshot;
        // offset: 0x2dc0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4aec80d782b89cf5;
        // offset: 0x2dd0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec films_shoutcasted;
        // offset: 0x2de8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_1e1bcf8500951b7c;
        // offset: 0x2e10, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_160d0dd620800569;
        // offset: 0x2e28, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6e9e59a789ec1e80;
        // offset: 0x2e38, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_101aa1c56608b02d;
        // offset: 0x2e50, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_75c3033c8b4cabc7;
        // offset: 0x2e60, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_6bb0fc620daac525;
        // offset: 0x2e78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec get_final_kill;
        // offset: 0x2e90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_radiation_field_assist;
        // offset: 0x2ea8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_54faafb480f79981;
        // offset: 0x2ec0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_753784669444a09d;
        // offset: 0x2ed0, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_1593f24b861eb245;
        // offset: 0x2ee8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_42acd971be8883ca;
        // offset: 0x2f00, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_sensor_dart_assist;
        // offset: 0x2f18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_gpsjammer_immune_kills;
        // offset: 0x2f30, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6735e4eb7d54b9f4;
        // offset: 0x2f40, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7686cce076b616b;
        // offset: 0x2f50, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_hc_in_tdm_dm;
        // offset: 0x2f68, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_33d24eb29a631f61;
        // offset: 0x2f90, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_1239a476be0ab35d;
        // offset: 0x2fa8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_77fa206964523e57;
        // offset: 0x2fb8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_282c9a3c92912ce6;
        // offset: 0x2fd0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_794996196e74a949;
        // offset: 0x2fe8, bitSize: 0x38(0x7 Byte(s))
        intstat kills_after_damage_unarmed;
        // offset: 0x3020, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_51430fd20ccb2b05;
        // offset: 0x3038, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_559746d22c5e43fd;
        // offset: 0x3050, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2bd95491d08078a3;
        // offset: 0x3060, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_73a57f5f2565ac51;
        // offset: 0x3070, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 shutdown_purifier_with_molotov;
        // offset: 0x3090, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_extclip_grip_fastmag_quickdraw_stock;
        // offset: 0x30a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2864c17bca6e0048;
        // offset: 0x30c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_seeker_shock_mine_paralyzed_headshot;
        // offset: 0x30d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_with_specialist_overclock;
        // offset: 0x30f0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_33fd6fbea2e1d112;
        // offset: 0x3100, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4d6b858ad789777;
        // offset: 0x3110, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec lifetime_earnings;
        // offset: 0x3128, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_656ed135421aed97;
        // offset: 0x3140, bitSize: 0x38(0x7 Byte(s))
        intstat hash_154d42f200303577;
        // offset: 0x3178, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_minimap_awareness_tracker;
        // offset: 0x3190, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_specialist_with_specialist;
        // offset: 0x31a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_636e38d21d529ce3;
        // offset: 0x31c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec killstreak_5_picked_up_weapon;
        // offset: 0x31d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_defused_bomb;
        // offset: 0x31f0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4dcf9dfecdf28746;
        // offset: 0x3200, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1dd0ef4785aa4084;
        // offset: 0x3218, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6f14dca5dad9d904;
        // offset: 0x3230, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec wins_hc;
        // offset: 0x3248, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2d27ed7c35d831b4;
        // offset: 0x3260, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6daf88d537c4ae9d;
        // offset: 0x3270, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_71b8e34a1ad838f8;
        // offset: 0x3280, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_71b8e54a1ad83c5e;
        // offset: 0x3290, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_26e871c3fec523d3;
        // offset: 0x32a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_revealed_by_team_fog_of_war;
        // offset: 0x32b8, bitSize: 0x38(0x7 Byte(s))
        intstat hash_3ebdd48293407853;
        // offset: 0x32f0, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_1674502cb913305d;
        // offset: 0x32f8, bitSize: 0x18(0x3 Byte(s))
        hash_2df14ab4ac36cb9 hash_354bfe5c140365bf;
        // offset: 0x3310, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1495fbfdffa645f1;
        // offset: 0x3328, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_43a02e8eda81d313;
        // offset: 0x3338, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_with_controlled_ai_tank;
        // offset: 0x3350, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_grapple_gun_kill;
        // offset: 0x3368, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7c57503401c09f0f;
        // offset: 0x3380, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_66e8176635440bb2;
        // offset: 0x3390, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_double_kill_3_lethal;
        // offset: 0x33a8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_53c962b66dc62fd1;
        // offset: 0x33c0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_200b9eaa7df992a8;
        // offset: 0x33d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_sprinting_dual_wield_and_gung_ho;
        // offset: 0x33e8, bitSize: 0x38(0x7 Byte(s))
        intstat hash_5e9a745460a10f80;
        // offset: 0x3420, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec dirty_bomb_detonates;
        // offset: 0x3438, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_26cbd2aa4d6b9947;
        // offset: 0x3450, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_b43107a1061f227;
        // offset: 0x3468, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_468600d9dca57133;
        // offset: 0x3480, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6c9b07f9cd4f45d6;
        // offset: 0x3490, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multikill_3_near_death;
        // offset: 0x34a8, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_730e8686137b90ed;
        // offset: 0x34c0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_14a4a5b2685c0bfc;
        // offset: 0x34d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_survivor;
        // offset: 0x34e8, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_5f908aacdf8ae872;
        // offset: 0x34f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec defend_teammate_who_captured_package;
        // offset: 0x3508, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_39e738852f3d1b6e;
        // offset: 0x3520, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3b25d69f938af30c;
        // offset: 0x3530, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_544dc5b57d96f408;
        // offset: 0x3548, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_escort_robot_disable_near_goal;
        // offset: 0x3560, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7d215eff481f4f85;
        // offset: 0x3578, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 mastery_killer;
        // offset: 0x3590, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_ads_swayreduc;
        // offset: 0x35a8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_300c58880c01bf58;
        // offset: 0x35b8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_43ad1d063cdd0cb7;
        // offset: 0x35d0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_6cc53905c5a9ce6f;
        // offset: 0x35f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5f4bac2d7c3bb2fa;
        // offset: 0x3610, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6e4a9baca51be0d2;
        // offset: 0x3628, bitSize: 0x38(0x7 Byte(s))
        intstat longest_firing_range_bullseye;
        // offset: 0x3660, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_519555d106fdf1e7;
        // offset: 0x3678, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 stats_kill_enemies_one_bullet;
        // offset: 0x36a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4cb5d718c79cca63;
        // offset: 0x36b8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5f4b951cc4725fe2;
        // offset: 0x36c8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5f4b941cc4725e2f;
        // offset: 0x36d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_automated_turret_kill;
        // offset: 0x36f0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_7dfdf288a8fccdb0;
        // offset: 0x3718, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3d8ab0cad09d7ec;
        // offset: 0x3730, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7b0b54996f4aafbc;
        // offset: 0x3748, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_prop_survived_entire_round;
        // offset: 0x3760, bitSize: 0x38(0x7 Byte(s))
        intstat distance_traveled_vehicle_land_miles;
        // offset: 0x3798, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_koth_secure;
        // offset: 0x37b0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_78961e51d07dc4ad;
        // offset: 0x37c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_sensor_dart_destroy;
        // offset: 0x37e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4474df73df91d1a5;
        // offset: 0x37f8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4a20ff7cceff217c;
        // offset: 0x3808, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_252a4cbc963fc617;
        // offset: 0x3830, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_tank_robot_killjoy;
        // offset: 0x3848, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_enemy_while_sliding;
        // offset: 0x3860, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_equipment_with_emp_engineer;
        // offset: 0x3878, bitSize: 0x38(0x7 Byte(s))
        intstat hash_7b8d2c77874a1c24;
        // offset: 0x38b0, bitSize: 0x38(0x7 Byte(s))
        intstat hash_6e03ccc704762c8f;
        // offset: 0x38e8, bitSize: 0x38(0x7 Byte(s))
        intstat baskets_made;
        // offset: 0x3920, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_756c14267fbeda46;
        // offset: 0x3938, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec defends;
        // offset: 0x3950, bitSize: 0x20(0x4 Byte(s))
        hash_3c449a1a07677764 defuses;
        // offset: 0x3970, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7db6a4180312b94c;
        // offset: 0x3988, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec defused_bomb_last_man_alive;
        // offset: 0x39a0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_33a592ef2526f0a2;
        // offset: 0x39b0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_580adbed89cd7532;
        // offset: 0x39c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_e04f3035798378d;
        // offset: 0x39d8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 camo_active_ar_fastfire_base;
        // offset: 0x39f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7e50fc83d4b305e0;
        // offset: 0x3a08, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec triple_kill_defenders_and_capture;
        // offset: 0x3a20, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2a7cb14d33becd69;
        // offset: 0x3a38, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6be4fc5f3e98048c;
        // offset: 0x3a48, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6ed460230fb70df8;
        // offset: 0x3a58, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_520b4041f0b9063a;
        // offset: 0x3a80, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_scorestreak_with_dart;
        // offset: 0x3a98, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_46a88cf34bc4309f;
        // offset: 0x3aa8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_46a88bf34bc42eec;
        // offset: 0x3ab8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4829b4727bf98b59;
        // offset: 0x3ac8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_24559930e19985c0;
        // offset: 0x3ae0, bitSize: 0x40(0x8 Byte(s))
        hash_6e522b658d49b7ba score_core;
        // offset: 0x3b20, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_tank_robot_kill;
        // offset: 0x3b38, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_54e3f535b083802e;
        // offset: 0x3b48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3575d01e5d018761;
        // offset: 0x3b60, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 hash_70c5595e6963954b;
        // offset: 0x3b78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_overwatch_helicopter_killjoy;
        // offset: 0x3b90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_perk2_greed;
        // offset: 0x3ba8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_7f0ce2a2e0a76e67;
        // offset: 0x3bc0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 stats_cluster_semtex_stick;
        // offset: 0x3be8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2bc9c4530b5e2623;
        // offset: 0x3c00, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_clean_multi_deposit_big;
        // offset: 0x3c18, bitSize: 0x38(0x7 Byte(s))
        intstat hash_7175d03d46c6d815;
        // offset: 0x3c50, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6eea40459827b86;
        // offset: 0x3c60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_441a12674d46923e;
        // offset: 0x3c78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7daf653f5e86b75;
        // offset: 0x3c90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6515f9350c7db403;
        // offset: 0x3ca8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec last_escrow;
        // offset: 0x3cc0, bitSize: 0x38(0x7 Byte(s))
        intstat kills_underwater_enemy;
        // offset: 0x3cf8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_15e9f992b5497ad7;
        // offset: 0x3d08, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_clean_multi_deny_tacos;
        // offset: 0x3d20, bitSize: 0x38(0x7 Byte(s))
        intstat hash_79e8d5c110dc79d6;
        // offset: 0x3d58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec gametypeban;
        // offset: 0x3d70, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_perk3_gluttony;
        // offset: 0x3d88, bitSize: 0x38(0x7 Byte(s))
        intstat hits_hc;
        // offset: 0x3dc0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_94d913babcd584;
        // offset: 0x3dd0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec wins_multiteam;
        // offset: 0x3de8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3d0bf673b9ea1117;
        // offset: 0x3df8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5004dee0210ef879;
        // offset: 0x3e08, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec laststatsbackup;
        // offset: 0x3e20, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_ads_quickdraw_and_grip;
        // offset: 0x3e38, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_primary_secondary_weapon;
        // offset: 0x3e50, bitSize: 0x38(0x7 Byte(s))
        intstat deaths_hc;
        // offset: 0x3e88, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_26f18c40643aa0e3;
        // offset: 0x3e98, bitSize: 0x38(0x7 Byte(s))
        intstat character_quests_completed;
        // offset: 0x3ed0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_loudenemies_kills;
        // offset: 0x3ee8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1715d388ed114bcd;
        // offset: 0x3f00, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_10e2902d2d4ffcc;
        // offset: 0x3f10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_movefaster_kills;
        // offset: 0x3f28, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_778662db221c6d9f;
        // offset: 0x3f38, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_20179a04c1573a20;
        // offset: 0x3f50, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_ads_stock_and_cpu;
        // offset: 0x3f68, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_447f0767a3441ea1;
        // offset: 0x3f78, bitSize: 0x38(0x7 Byte(s))
        intstat kills_enemy_in_vehicle_water;
        // offset: 0x3fb0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5c5cab0cce302a01;
        // offset: 0x3fc8, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_52aa8f35541651b8;
        // offset: 0x3fe8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_18c0785801027269;
        // offset: 0x3ff8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_while_underwater;
        // offset: 0x4020, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_golden_ammo_bonus;
        // offset: 0x4038, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_as_support_gunner;
        // offset: 0x4050, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2b2887daddeb75a7;
        // offset: 0x4060, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_specialized_equipment;
        // offset: 0x4078, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1d965783ae1b802;
        // offset: 0x4088, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5789abde42504f4c;
        // offset: 0x40a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_while_prone;
        // offset: 0x40b8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_40035722dda93fc9;
        // offset: 0x40c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_72717fdf9b734c8;
        // offset: 0x40e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_who_has_bonus_health;
        // offset: 0x40f8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_421ceddf01cb65c6;
        // offset: 0x4110, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_760f298458773e70;
        // offset: 0x4120, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_10090ce1490926e;
        // offset: 0x4130, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multikill_3_with_mgl;
        // offset: 0x4148, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_414c5885507e9aa6;
        // offset: 0x4158, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5dd25904c990744e;
        // offset: 0x4170, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2fe91bb302563c57;
        // offset: 0x4180, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2fe91ab302563aa4;
        // offset: 0x4190, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 camo_active_pistol_standard_base;
        // offset: 0x41a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6897cfddaedbe28a;
        // offset: 0x41c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_warthog_killjoy;
        // offset: 0x41d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_37e875290614f1e1;
        // offset: 0x41f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_molotov_multikill_x2_summary;
        // offset: 0x4208, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kills_first_throw_both_hatchets;
        // offset: 0x4230, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 shutdown_annihilator_with_revolver;
        // offset: 0x4258, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_16b2c41d0ccb0961;
        // offset: 0x4268, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 destroy_aircraft;
        // offset: 0x4290, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_uav_enemy_with_ghost;
        // offset: 0x42a8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_141b0e8dbfaf9468;
        // offset: 0x42b0, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 multikill_5_attackers;
        // offset: 0x42d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killed_enemy_while_carrying_flag;
        // offset: 0x42e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec streaker;
        // offset: 0x4300, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_44d45db438754e8b;
        // offset: 0x4318, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_709699a31c8f89f7;
        // offset: 0x4330, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_11840e244dff52d3;
        // offset: 0x4348, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_73d55c17397447b;
        // offset: 0x4360, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_tempest_shock_chain;
        // offset: 0x4378, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5d209f828d9bbd96;
        // offset: 0x4388, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_816e30933fc24d9;
        // offset: 0x4398, bitSize: 0x38(0x7 Byte(s))
        intstat items_health_used;
        // offset: 0x43d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2a6dbaa528b5f3e;
        // offset: 0x43e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7c7067d81784dd9d;
        // offset: 0x4400, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_swap_weapon_jump_mantle_dexterity;
        // offset: 0x4418, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_with_resupplied_lethal_grenade;
        // offset: 0x4430, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec wins_arena;
        // offset: 0x4448, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_cdd16b48f26b85f;
        // offset: 0x4460, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_12b2c63ec1a158f5;
        // offset: 0x4470, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1e44ac63ebde7a17;
        // offset: 0x4480, bitSize: 0x38(0x7 Byte(s))
        intstat revives;
        // offset: 0x44b8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_7d5e8b4ec3e7589d;
        // offset: 0x44d0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_49b83486e6f9bc38;
        // offset: 0x44e0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 camo_active_smg_standard_base;
        // offset: 0x44f8, bitSize: 0x38(0x7 Byte(s))
        intstat downs_eliminated_team;
        // offset: 0x4530, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_21792d157fabd319;
        // offset: 0x4540, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_completed_match;
        // offset: 0x4558, bitSize: 0x40(0x8 Byte(s))
        hash_6e522b658d49b7ba score_arena;
        // offset: 0x4598, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_perk2_gluttony;
        // offset: 0x45b0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 secondary_mastery;
        // offset: 0x45c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_2_attackers_with_comlink;
        // offset: 0x45e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_788bac17841d0cac;
        // offset: 0x45f8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5e6403da30069b30;
        // offset: 0x4610, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_315afd945b989705;
        // offset: 0x4620, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6dd113d8d98809c3;
        // offset: 0x4638, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1546fa6f8e98bd61;
        // offset: 0x4650, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1c68fbe2a42d2b26;
        // offset: 0x4660, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1c68fae2a42d2973;
        // offset: 0x4670, bitSize: 0x38(0x7 Byte(s))
        intstat hash_6b8b3c007d78b659;
        // offset: 0x46a8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_70d4e38a66f99086;
        // offset: 0x46b8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_70d4e48a66f99239;
        // offset: 0x46c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_724d2e5770c9d1b4;
        // offset: 0x46e0, bitSize: 0x38(0x7 Byte(s))
        intstat activation_count_broadcast;
        // offset: 0x4718, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec survive_with_flak;
        // offset: 0x4730, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_3_resupplied_nade_one_life;
        // offset: 0x4748, bitSize: 0x38(0x7 Byte(s))
        intstat hash_5174fc8085f9ba7d;
        // offset: 0x4780, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_522dfb6da6f47203;
        // offset: 0x4790, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_74dd5470143acfbb;
        // offset: 0x47a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_sparrow_kill;
        // offset: 0x47c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_assists;
        // offset: 0x47d8, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_54112cceeab59f46;
        // offset: 0x47f8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_ff6f0ad45e36936;
        // offset: 0x4810, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 shutdown_enemy_by_controlling_scorestreak;
        // offset: 0x4838, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_after_you_heal;
        // offset: 0x4850, bitSize: 0x38(0x7 Byte(s))
        intstat hash_63307a0460c698ac;
        // offset: 0x4888, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_39d29f9c4fe7e54e;
        // offset: 0x4898, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_enemy_one_bullet_headshot;
        // offset: 0x48c0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_47d74e5c1e3b9691;
        // offset: 0x48d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_against_armor_damager;
        // offset: 0x48e8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_760e917a4024491a;
        // offset: 0x4910, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d stats_headshot;
        // offset: 0x4940, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hc_games_played;
        // offset: 0x4958, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_fastreload_mixclip;
        // offset: 0x4970, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1b18c55e5bfab97d;
        // offset: 0x4988, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_52fa8eccf7ee293d;
        // offset: 0x49a0, bitSize: 0x38(0x7 Byte(s))
        intstat hash_4a226bdcff995085;
        // offset: 0x49d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_through_objects;
        // offset: 0x49f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec capture_own_carepackage;
        // offset: 0x4a08, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5149c3617e49007f;
        // offset: 0x4a18, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_367ce404273b24f;
        // offset: 0x4a30, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 mastery_handling;
        // offset: 0x4a48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_comeback_from_deathstreak;
        // offset: 0x4a60, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 completed_all_challenges;
        // offset: 0x4a78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_razor_wire_destroy;
        // offset: 0x4a90, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5f61b89b6d2a2ad3;
        // offset: 0x4aa0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_9a724d151675675;
        // offset: 0x4ab0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2b222f6f7b6e9a2;
        // offset: 0x4ac8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_tempest_x2_multikill_summary;
        // offset: 0x4ae0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_349aad0f6083abf5;
        // offset: 0x4af8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec match_bonus;
        // offset: 0x4b10, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_a77c3dd233743eb;
        // offset: 0x4b20, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_403b2535e53d1991;
        // offset: 0x4b38, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1fc3943adb73363f;
        // offset: 0x4b48, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 mastery_perks;
        // offset: 0x4b60, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1b42c1080de59066;
        // offset: 0x4b70, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_6096515c94e5363a;
        // offset: 0x4b88, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_691a382cfa94a2e7;
        // offset: 0x4b98, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_10b266bec758c000;
        // offset: 0x4ba8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_pistol_lasersight_suppressor_longbarrel;
        // offset: 0x4bc0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_77e825d8cbdaad23;
        // offset: 0x4bd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_deployable_cover_assist;
        // offset: 0x4bf0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_609f4df480177cea;
        // offset: 0x4c08, bitSize: 0x38(0x7 Byte(s))
        intstat deaths;
        // offset: 0x4c40, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_won_match;
        // offset: 0x4c58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_clean_kill_enemy_carrying_tacos;
        // offset: 0x4c70, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_180122e749fb5a26;
        // offset: 0x4c80, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_4dd8ba4e6feef49;
        // offset: 0x4c88, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_30b33fd494ceee37;
        // offset: 0x4ca0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 mastery_ground_assault;
        // offset: 0x4cb8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_perk1_gluttony;
        // offset: 0x4cd0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_4b703056e870752e;
        // offset: 0x4cf8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_37ca29310542d08e;
        // offset: 0x4d08, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1b148631540ae995;
        // offset: 0x4d20, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_8bd14f245fe35fb;
        // offset: 0x4d38, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_6d80510c601c5bb9;
        // offset: 0x4d58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multikill_2_with_rcbomb;
        // offset: 0x4d70, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_65c83c5e46c88196;
        // offset: 0x4d78, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1b9a630b78eba522;
        // offset: 0x4d88, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_38bfa4a737627909;
        // offset: 0x4d98, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3eab9afb4f03dab0;
        // offset: 0x4da8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1b4787484de869e1;
        // offset: 0x4dc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_while_damaging_with_microwave_turret;
        // offset: 0x4dd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_40daf732d58242ae;
        // offset: 0x4df0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_overwatch_helicopter_kill;
        // offset: 0x4e08, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_war_killed_enemy_while_capping_control;
        // offset: 0x4e20, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_43bc196ae14ca147;
        // offset: 0x4e38, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6b344091a61ea57a;
        // offset: 0x4e48, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6b343b91a61e9cfb;
        // offset: 0x4e58, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6b343a91a61e9b48;
        // offset: 0x4e68, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6b343d91a61ea061;
        // offset: 0x4e78, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_48f5753f9361f31;
        // offset: 0x4e88, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_3f64e1151a8f356b;
        // offset: 0x4ea0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_60f3f9adb22e924;
        // offset: 0x4eb8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_203e2f871fb43394;
        // offset: 0x4ed0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_15512193d31af0cc;
        // offset: 0x4ee0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_concertina_wire_snared_kill;
        // offset: 0x4ef8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_helicopter;
        // offset: 0x4f10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_annihilator_x2_multikill_summary;
        // offset: 0x4f28, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_21575a60e8a6ab32;
        // offset: 0x4f40, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3704dab636d3e04e;
        // offset: 0x4f50, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3704dbb636d3e201;
        // offset: 0x4f60, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_607598d00d891bd0;
        // offset: 0x4f70, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kills_frag_grenade;
        // offset: 0x4f98, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_enemy_who_has_high_score;
        // offset: 0x4fb0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec field_specialist;
        // offset: 0x4fc8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7d65f6cc85a27569;
        // offset: 0x4fd8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3436173279a2c7a3;
        // offset: 0x4fe8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3c299d0329cb332c;
        // offset: 0x5000, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_gravity_slam_shutdown;
        // offset: 0x5018, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6cff9f8c30192558;
        // offset: 0x5028, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 weapons_mastery;
        // offset: 0x5040, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_who_has_goldenammo;
        // offset: 0x5058, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_equipment_engineer;
        // offset: 0x5070, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1030d5aac01a491e;
        // offset: 0x5080, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_mesh_mine_destroy;
        // offset: 0x5098, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_79b3d91844b4917;
        // offset: 0x50b0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_2fca7627f5274fc4;
        // offset: 0x50c8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_3541308979ee478f;
        // offset: 0x50e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_64c0bac013acc9f6;
        // offset: 0x50f8, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_3c8329e0d002b5a1;
        // offset: 0x5100, bitSize: 0x38(0x7 Byte(s))
        intstat wlratio;
        // offset: 0x5138, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_58ce82019e4dfd1c;
        // offset: 0x5150, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec accuracy;
        // offset: 0x5168, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_16e0a7b81c1be41e;
        // offset: 0x5178, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d objective_ekia;
        // offset: 0x51a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec objective_time;
        // offset: 0x51c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_13eb46cb3c4c5613;
        // offset: 0x51d8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_dfaf3206d734ea9;
        // offset: 0x51e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_hacker_shutdown;
        // offset: 0x5200, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_25852f7c1659407a;
        // offset: 0x5228, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_21bfdd7a5c4f23c;
        // offset: 0x5240, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 mastery_marksman;
        // offset: 0x5258, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_14b128576d0f9b17;
        // offset: 0x5270, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_disrupted_equipment;
        // offset: 0x5288, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_567d404e2f27433b;
        // offset: 0x52a0, bitSize: 0x38(0x7 Byte(s))
        intstat kills_unarmed;
        // offset: 0x52d8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 camo_active_smg_accurate_base;
        // offset: 0x52f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_flag_carrier;
        // offset: 0x5308, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_ads_quickdraw_stalker_grip;
        // offset: 0x5320, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7fb734eea073a2c7;
        // offset: 0x5338, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6016b0a57e1cd493;
        // offset: 0x5348, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_6f392a12f973aea5;
        // offset: 0x5360, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_47c5c8af0f105c71;
        // offset: 0x5378, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multikill_2_rcbomb;
        // offset: 0x5390, bitSize: 0x10(0x2 Byte(s))
        hash_798fe6dfb7cfb479 hash_3b30f98820bc20cf;
        // offset: 0x53a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2bc315db95982551;
        // offset: 0x53b8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_37adf828f2a9ecfe;
        // offset: 0x53c8, bitSize: 0x38(0x7 Byte(s))
        intstat losses;
        // offset: 0x5400, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4d1dfcd775e80c6d;
        // offset: 0x5410, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_annihilator_shutdown;
        // offset: 0x5428, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_57f979618206b04;
        // offset: 0x5440, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_ice_pick_shutdown;
        // offset: 0x5458, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2faf858929671640;
        // offset: 0x5470, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 camo_active_ar_accurate_base;
        // offset: 0x5488, bitSize: 0x38(0x7 Byte(s))
        intstat misses;
        // offset: 0x54c0, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_41393b0369e02954;
        // offset: 0x54e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_ai_scorestreak_coldblooded;
        // offset: 0x54f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec statresetcount;
        // offset: 0x5510, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_58e366e5dfa6f45c;
        // offset: 0x5520, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_20d3ebfde79fa4c8;
        // offset: 0x5548, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_37e5b09fc86a64e7;
        // offset: 0x5558, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_cuav_killjoy;
        // offset: 0x5570, bitSize: 0x38(0x7 Byte(s))
        intstat distance_traveled_vehicle_air;
        // offset: 0x55a8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5a39ce02accda426;
        // offset: 0x55d0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3ecd1137e44e6325;
        // offset: 0x55e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_minimap_teamlink;
        // offset: 0x55f8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_52e978325c91fe24;
        // offset: 0x5620, bitSize: 0x38(0x7 Byte(s))
        intstat distance_traveled_vehicle_air_miles;
        // offset: 0x5658, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_who_stunned_you_during_stun;
        // offset: 0x5670, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6ccc99527a5a05e2;
        // offset: 0x5680, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 plants_defuses;
        // offset: 0x56a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multikill_2_with_heroweapon;
        // offset: 0x56c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_car;
        // offset: 0x56d8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_341d75738a58c294;
        // offset: 0x56e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7e1640694aedc1d6;
        // offset: 0x5700, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_18fc969186722670;
        // offset: 0x5718, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_266899c5f3b4e93f;
        // offset: 0x5728, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_dart_kill;
        // offset: 0x5740, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_close_blast_deadsilence;
        // offset: 0x5758, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_495a843c176b50c;
        // offset: 0x5770, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_707d06184cf09b50;
        // offset: 0x5798, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2cd1dd809f2f478e;
        // offset: 0x57b0, bitSize: 0x38(0x7 Byte(s))
        intstat hash_15b27df39a4715a3;
        // offset: 0x57e8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_7f1e483693e56277;
        // offset: 0x57f0, bitSize: 0x18(0x3 Byte(s))
        hash_2df14ab4ac36cb9 hash_6c1c399dcbe1af97;
        // offset: 0x5808, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1468ae1763b44910;
        // offset: 0x5818, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_46d214ee909c2c6a;
        // offset: 0x5828, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_2;
        // offset: 0x5840, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_3;
        // offset: 0x5858, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_4;
        // offset: 0x5870, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 stats_killstreak_5;
        // offset: 0x5898, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_6;
        // offset: 0x58b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_7;
        // offset: 0x58c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_8;
        // offset: 0x58e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_9;
        // offset: 0x58f8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_335ad5d90b73c973;
        // offset: 0x5910, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_64834a65d1e57778;
        // offset: 0x5928, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_38e163160277b085;
        // offset: 0x5940, bitSize: 0x38(0x7 Byte(s))
        intstat wins_without_kills;
        // offset: 0x5978, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4733deea0d442bf1;
        // offset: 0x5988, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 headshot_5;
        // offset: 0x59b0, bitSize: 0x38(0x7 Byte(s))
        intstat distance_traveled_vehicle_land;
        // offset: 0x59e8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_33f9252e23c8b29b;
        // offset: 0x59f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_lightweight;
        // offset: 0x5a10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_after_reload_fastreload;
        // offset: 0x5a28, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1464eb72733fe9f8;
        // offset: 0x5a38, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1464f272733ff5dd;
        // offset: 0x5a48, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1464f172733ff42a;
        // offset: 0x5a58, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1464f072733ff277;
        // offset: 0x5a68, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5465ee91c99dca6c;
        // offset: 0x5a80, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_f45daddf9382418;
        // offset: 0x5a98, bitSize: 0x38(0x7 Byte(s))
        intstat destroy_equipment;
        // offset: 0x5ad0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7acfe5e8673be4ca;
        // offset: 0x5ae8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_24f356ecf6fb6c0e;
        // offset: 0x5af8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4c3c3affa43f9f08;
        // offset: 0x5b08, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_534a88a25d5f0737;
        // offset: 0x5b18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2fa96b97166080d2;
        // offset: 0x5b30, bitSize: 0x38(0x7 Byte(s))
        intstat rankxp;
        // offset: 0x5b68, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_689e13f25737ea0;
        // offset: 0x5b80, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_battle_shield_x2_multikill_summary;
        // offset: 0x5b98, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multikill_3_attackers_ai_tank;
        // offset: 0x5bb0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec suicides;
        // offset: 0x5bc8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1b4f4f15443e26c0;
        // offset: 0x5be0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec emblem_version;
        // offset: 0x5bf8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_63afeb1820e32bc2;
        // offset: 0x5c10, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 secondary_mastery_pistol;
        // offset: 0x5c28, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_73961fa132aff2ba;
        // offset: 0x5c48, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_218546f223c5cb22;
        // offset: 0x5c70, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_159fd29d46091f2c;
        // offset: 0x5c88, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_hc_crit_health;
        // offset: 0x5ca0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3d273263b5e1745d;
        // offset: 0x5cb8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_59a333a70cbf2d40;
        // offset: 0x5ce0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_drone_squadron_kill;
        // offset: 0x5cf8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_512dd9eae51dae25;
        // offset: 0x5d10, bitSize: 0x38(0x7 Byte(s))
        intstat vehicles_destroyed_occupied;
        // offset: 0x5d48, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 last_man_defeat_3_enemies;
        // offset: 0x5d70, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_hardwired_coldblooded;
        // offset: 0x5d88, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_24f4b0625c70f270;
        // offset: 0x5da0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_carrier;
        // offset: 0x5db8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6803083fa39064a4;
        // offset: 0x5dd0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1e2dfda54cd5e4c9;
        // offset: 0x5de8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4d5d6f748ea6e4be;
        // offset: 0x5df8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_31b411ec244beff6;
        // offset: 0x5e10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assist_score_microwave_turret;
        // offset: 0x5e28, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4425e8a9deb73e9a;
        // offset: 0x5e38, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_speedcenter_beltfed_sentrygrip;
        // offset: 0x5e50, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 longshot_3_onelife;
        // offset: 0x5e78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7defc25e5bddb2c4;
        // offset: 0x5e90, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4d854a6b2d8ad76a;
        // offset: 0x5ea0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_enemy_that_is_capping_your_objective;
        // offset: 0x5eb8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_6053e9e65851d5c4;
        // offset: 0x5ee0, bitSize: 0x38(0x7 Byte(s))
        intstat items_picked_up;
        // offset: 0x5f18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_perk3_greed;
        // offset: 0x5f30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_hipfire_moving_steadyaim2_burstaccelerator_wildfire_firingunit;
        // offset: 0x5f48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_34a7d453bd85e800;
        // offset: 0x5f60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_29c1c8dbf69364a7;
        // offset: 0x5f78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_37f91979b0e8701d;
        // offset: 0x5f90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_sixth_sense;
        // offset: 0x5fa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1cb57fe399b5519a;
        // offset: 0x5fc0, bitSize: 0x40(0x8 Byte(s))
        hash_6e522b658d49b7ba score_specialized_weapons;
        // offset: 0x6000, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stun_aitank_with_emp_grenade;
        // offset: 0x6018, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_548c820e6ab72848;
        // offset: 0x6030, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_85ed95e3662c128;
        // offset: 0x6048, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_be93d1227e6db1;
        // offset: 0x6060, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_38b93f97da20f2e1;
        // offset: 0x6070, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_38b93c97da20edc8;
        // offset: 0x6088, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4e5cf49838f58e32;
        // offset: 0x60a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4667e99dc6606eae;
        // offset: 0x60b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_burstaccelerator_wildfire_firingunit;
        // offset: 0x60d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_seeker_shock_mine_paralyzed_enemy;
        // offset: 0x60e8, bitSize: 0x18(0x3 Byte(s))
        hash_2df14ab4ac36cb9 hash_51eff59939399dc9;
        // offset: 0x6100, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5072c55850678079;
        // offset: 0x6118, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_survive_flak;
        // offset: 0x6130, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_53d3b431b9fc73c6;
        // offset: 0x6158, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2ebd387ffb67e1dc;
        // offset: 0x6180, bitSize: 0x38(0x7 Byte(s))
        intstat hash_39bec815482994bd;
        // offset: 0x61b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_rcxd_kill;
        // offset: 0x61d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_10b0c56ae630070d;
        // offset: 0x61e8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 ar_peacekeeper_gold;
        // offset: 0x6200, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3c5cf6f4fae0b8c6;
        // offset: 0x6218, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_2932bf9faf2f8a4d;
        // offset: 0x6238, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_24c25fad1ac01302;
        // offset: 0x6250, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3d392c6f96aa2ac1;
        // offset: 0x6278, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6a34be0ae51df16d;
        // offset: 0x6288, bitSize: 0x38(0x7 Byte(s))
        intstat distance_traveled_foot;
        // offset: 0x62c0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 stats_uninterrupted_obit_feed_kills;
        // offset: 0x62e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_golden_kill_bonus;
        // offset: 0x6300, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_18ef4c50d0338dbb;
        // offset: 0x6318, bitSize: 0x38(0x7 Byte(s))
        intstat headshots;
        // offset: 0x6350, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_booby_trap_engineer;
        // offset: 0x6368, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7fa27167eb8b2f65;
        // offset: 0x6380, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6dd07caf70ac2810;
        // offset: 0x6398, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_417ca489457d2cf4;
        // offset: 0x63b0, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_231dd7ca6b97126;
        // offset: 0x63d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4554fcf61894d082;
        // offset: 0x63e8, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 ekia_s1;
        // offset: 0x6408, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4926ee717d694914;
        // offset: 0x6420, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_74ae17ad1b32b3ba;
        // offset: 0x6438, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_4bcae745dc40dd;
        // offset: 0x6460, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_2f86e77179c4ba91;
        // offset: 0x6478, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_war_captured_zone;
        // offset: 0x6490, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_fastweaponswitch_kill_after_swap;
        // offset: 0x64a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_sensor_dart_multikill_x2_summary;
        // offset: 0x64c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_644326620d99cbbb;
        // offset: 0x64d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3197470cc31930a4;
        // offset: 0x64f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_375aea27b23ebfd;
        // offset: 0x6508, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_counteruav;
        // offset: 0x6520, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 mastery_boot_camp;
        // offset: 0x6538, bitSize: 0x38(0x7 Byte(s))
        intstat kills_while_stunned;
        // offset: 0x6570, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec satlink_batteries;
        // offset: 0x6588, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_26f3858ac994b858;
        // offset: 0x6598, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_hc_fist;
        // offset: 0x65b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_hc_stim;
        // offset: 0x65c8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 mastery_wildcards;
        // offset: 0x65e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4f4597af75828585;
        // offset: 0x65f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6e3204181846ddf5;
        // offset: 0x6610, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_scorestreaks_equipment_engineer;
        // offset: 0x6628, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec badhostcount;
        // offset: 0x6640, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2ed3de647f5090f1;
        // offset: 0x6658, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_2c05c0d9d29dfc93;
        // offset: 0x6670, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_bounty_hunter_melee_downed_enemy;
        // offset: 0x6688, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 kill_enemy_after_surviving_rcxd;
        // offset: 0x66a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_aircraft_with_missile_drone;
        // offset: 0x66c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multikill_2_objective_scorestreak_projectile;
        // offset: 0x66d8, bitSize: 0x38(0x7 Byte(s))
        intstat total_shots;
        // offset: 0x6710, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_before_specialist_weapon_use;
        // offset: 0x6728, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1e868415652219af;
        // offset: 0x6740, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_36dfb920467c2f92;
        // offset: 0x6750, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_373fd5819588488b;
        // offset: 0x6778, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_gunship_kill;
        // offset: 0x6790, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 mastery_game_mode_heroics;
        // offset: 0x67a8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_3ac445125408a0fc;
        // offset: 0x67c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6f0a5b0f2c1e8ed5;
        // offset: 0x67d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_676d3f9503f1513e;
        // offset: 0x67f0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_78bb79acb13394d0;
        // offset: 0x6808, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4bf0f3e0bc9b7391;
        // offset: 0x6818, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_565dc844d8939160;
        // offset: 0x6828, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_through_objects_with_fmj;
        // offset: 0x6840, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_concertina_wire_kill;
        // offset: 0x6858, bitSize: 0x38(0x7 Byte(s))
        intstat hash_6d5e162204f447f4;
        // offset: 0x6890, bitSize: 0x38(0x7 Byte(s))
        intstat distance_traveled_vehicle_water_miles;
        // offset: 0x68c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_detect_tracker;
        // offset: 0x68e0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_3f8f3c056d0347a8;
        // offset: 0x68f8, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 hash_50d79b09bdd96a55;
        // offset: 0x6918, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec offends;
        // offset: 0x6930, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_tripwire_ied_multikill_x2_summary;
        // offset: 0x6948, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_48c09600fe06dba9;
        // offset: 0x6958, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_enemy_with_fists;
        // offset: 0x6980, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_154b0a4b01b8b616;
        // offset: 0x6998, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_1520f1a6c192f48e;
        // offset: 0x69b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec humiliate_attacker;
        // offset: 0x69c8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_enemy_damage_you;
        // offset: 0x69f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_enemy_through_wall_with_fmj;
        // offset: 0x6a08, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assist_score;
        // offset: 0x6a20, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1f41fbb737aeddc2;
        // offset: 0x6a38, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7ef1a1bd8a7aaea7;
        // offset: 0x6a48, bitSize: 0x38(0x7 Byte(s))
        intstat hash_1a9ca1048465163f;
        // offset: 0x6a80, bitSize: 0x38(0x7 Byte(s))
        intstat kills_equipment;
        // offset: 0x6ab8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 stats_bounce_hatchet_kill;
        // offset: 0x6ae0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4b735f945ca5d5b5;
        // offset: 0x6af0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_53316bf26e1435bb;
        // offset: 0x6b18, bitSize: 0x38(0x7 Byte(s))
        intstat kills_enemy_in_vehicle_land;
        // offset: 0x6b50, bitSize: 0x38(0x7 Byte(s))
        intstat fracking_blast_doors_opened;
        // offset: 0x6b88, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_optic_5_attachments;
        // offset: 0x6ba0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec escorts;
        // offset: 0x6bb8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_every_enemy;
        // offset: 0x6bd0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_10f2c3998c0efe9c;
        // offset: 0x6be0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_10f2c4998c0f004f;
        // offset: 0x6bf0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_10f2c5998c0f0202;
        // offset: 0x6c00, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_core_in_tdm_dm;
        // offset: 0x6c18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_enemy_with_care_package_crush;
        // offset: 0x6c30, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_690dea6b04058192;
        // offset: 0x6c40, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_690de56b04057913;
        // offset: 0x6c50, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2b9a36e7204239f0;
        // offset: 0x6c78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_447f69a3666203a5;
        // offset: 0x6c90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_with_thermal_and_smoke_ads;
        // offset: 0x6ca8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1355b2bc41e3a3d6;
        // offset: 0x6cb8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1dd6ef050456461a;
        // offset: 0x6cd0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_54f62feef023cb4f;
        // offset: 0x6ce8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_207f20afd71816c;
        // offset: 0x6d10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_39cb2fce357bfc5a;
        // offset: 0x6d28, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 captures_in_capture_area;
        // offset: 0x6d50, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec score_multiteam;
        // offset: 0x6d68, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_68b5c40f079f4af0;
        // offset: 0x6d78, bitSize: 0x38(0x7 Byte(s))
        intstat headshot_damage;
        // offset: 0x6db0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7f46653ece7c03be;
        // offset: 0x6dc8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assist;
        // offset: 0x6de0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_75cb4218072916b4;
        // offset: 0x6df8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_71804c7bbbaad1f6;
        // offset: 0x6e08, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec calling_card_breadcrumb_fix;
        // offset: 0x6e20, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_43f515139ba38c55;
        // offset: 0x6e48, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_d6e068459b6a04b;
        // offset: 0x6e60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_radiation_field_shutdown;
        // offset: 0x6e78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5944fa5ab0189744;
        // offset: 0x6e90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_hatchet_kill;
        // offset: 0x6ea8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_hpm_suppress;
        // offset: 0x6ec0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_shutdowns;
        // offset: 0x6ed8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_20b4a91c344d73ec;
        // offset: 0x6f00, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_74759011f9f616a7;
        // offset: 0x6f08, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 hash_70670980a3a22c4;
        // offset: 0x6f28, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7f05b25034ae349f;
        // offset: 0x6f38, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_debuffed_enemies_specialized_weapon_equipment;
        // offset: 0x6f50, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_1be224b059c35269;
        // offset: 0x6f78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_air_and_ground_blindeye_coldblooded;
        // offset: 0x6f90, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_75953e02a0eacbac;
        // offset: 0x6fa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_753f02ea48b19cd;
        // offset: 0x6fc0, bitSize: 0x38(0x7 Byte(s))
        intstat hash_902186fde728b49;
        // offset: 0x6ff8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_258a142c083b632f;
        // offset: 0x7008, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_258a122c083b5fc9;
        // offset: 0x7018, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_after_resupply;
        // offset: 0x7030, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4e450148b31156f5;
        // offset: 0x7048, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_779e1fc5021c532c;
        // offset: 0x7060, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2e0ea94ec30d05e2;
        // offset: 0x7078, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_seeker_shock_mine_multikill_x2_summary;
        // offset: 0x7090, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_spawn_beacon_kill;
        // offset: 0x70a8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_13789554a310aa8f;
        // offset: 0x70b8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_13789354a310a729;
        // offset: 0x70c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7723ab7cbc5265fc;
        // offset: 0x70e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec defend_carrier;
        // offset: 0x70f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4563c8418dc6e528;
        // offset: 0x7110, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_lightning_strike_kill;
        // offset: 0x7128, bitSize: 0x38(0x7 Byte(s))
        intstat vehicle_lock_exits;
        // offset: 0x7160, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_9ec015959184d80;
        // offset: 0x7170, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_596967747fefaf17;
        // offset: 0x7188, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_64f7d07880a0dc03;
        // offset: 0x7198, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_12a1bb4be79bb684;
        // offset: 0x71a8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_386bc6b7cd50a202;
        // offset: 0x71b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_shocked_enemy;
        // offset: 0x71d0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_1de982bb9af8c4bc;
        // offset: 0x71e8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_enemy_that_blinded_you;
        // offset: 0x7210, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_enemy_while_crouched;
        // offset: 0x7238, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_761538e74afeed6c;
        // offset: 0x7250, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_404a29a3ead5edb3;
        // offset: 0x7258, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3bba76aa8987218;
        // offset: 0x7270, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec cleandeposits;
        // offset: 0x7288, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_final_survivor;
        // offset: 0x72a0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4cf0323c7ecb3711;
        // offset: 0x72b0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_9cb2805c8c9d8fb;
        // offset: 0x72c0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_9cb2e05c8c9e32d;
        // offset: 0x72d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_nottargetedbyairsupport_destroy_aircraft;
        // offset: 0x72e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec end_enemy_specialist_weapon_on_objective;
        // offset: 0x7300, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2757aee498da350f;
        // offset: 0x7310, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_2f7a1e0927acdc3;
        // offset: 0x7328, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_disrupted_barricade;
        // offset: 0x7340, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1172385a3669cfc0;
        // offset: 0x7358, bitSize: 0x38(0x7 Byte(s))
        intstat downs_eliminated;
        // offset: 0x7390, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_45a89ffba23d61de;
        // offset: 0x73a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2f5a58f5816a88a9;
        // offset: 0x73c0, bitSize: 0x38(0x7 Byte(s))
        intstat kills_vehicle_passenger;
        // offset: 0x73f8, bitSize: 0x38(0x7 Byte(s))
        intstat hash_6261ee704206fecb;
        // offset: 0x7430, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2b1731575362632a;
        // offset: 0x7458, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_58ca8b182e6db699;
        // offset: 0x7480, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_with_weapon_in_right_hand_only;
        // offset: 0x74a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_attack_chopper_killjoy;
        // offset: 0x74c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_deployable_cover_kill;
        // offset: 0x74d8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_52acb9c328698c58;
        // offset: 0x7500, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_9cb265b8b1483b0;
        // offset: 0x7518, bitSize: 0x38(0x7 Byte(s))
        intstat vehicle_used_all;
        // offset: 0x7550, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hack_streak_with_blindeye_or_engineer;
        // offset: 0x7568, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5803a1b332accd42;
        // offset: 0x7590, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_hacker_destroy;
        // offset: 0x75a8, bitSize: 0x38(0x7 Byte(s))
        intstat hash_702849e1bf1e3915;
        // offset: 0x75e0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2c01bc7b9ae95b81;
        // offset: 0x7608, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3a861a8644c0de3d;
        // offset: 0x7618, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_defused_bomb_last_man_alive;
        // offset: 0x7630, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_more_than_30;
        // offset: 0x7648, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_hacked_enemy;
        // offset: 0x7660, bitSize: 0x10(0x2 Byte(s))
        hash_798fe6dfb7cfb479 hash_7ecfcae46143397c;
        // offset: 0x7670, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7bc34d1910ad008;
        // offset: 0x7680, bitSize: 0x38(0x7 Byte(s))
        intstat cargo_supply_opened;
        // offset: 0x76b8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_15fb183dc7fd005f;
        // offset: 0x76c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_38cf622aaf2ce3d7;
        // offset: 0x76e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_vision_pulse_shutdown;
        // offset: 0x76f8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 mastery_efficiency;
        // offset: 0x7710, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_611f84a4a10d3e3e;
        // offset: 0x7728, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_prop_survived;
        // offset: 0x7740, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_grapple_gun_multikill_x2_summary;
        // offset: 0x7758, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5cd23704d9c298c1;
        // offset: 0x7770, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1f4655121772d2c5;
        // offset: 0x7780, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killed_bomb_planter;
        // offset: 0x7798, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3bd72103b95eb93e;
        // offset: 0x77a8, bitSize: 0x8(0x1 Byte(s))
        bitstat wins_first;
        // offset: 0x77b0, bitSize: 0x38(0x7 Byte(s))
        intstat tanbor_fudgely_interactions;
        // offset: 0x77e8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 camo_active_shotgun_semiauto_base;
        // offset: 0x7800, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec killed_dog;
        // offset: 0x7818, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_52acdc587dd59266;
        // offset: 0x7830, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6189a4d9159c681f;
        // offset: 0x7840, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_bulletflinch_kills;
        // offset: 0x7858, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec specialist_multikill;
        // offset: 0x7870, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_explosive_with_trophy;
        // offset: 0x7888, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_scorestreak_rapidfire_fmj;
        // offset: 0x78a0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_529c12e133e45b94;
        // offset: 0x78b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1bb99705ba9a0e6c;
        // offset: 0x78c8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_7e557a14cae08554;
        // offset: 0x78f0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_19cdb54bb392db3f;
        // offset: 0x7900, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_19cdb44bb392d98c;
        // offset: 0x7910, bitSize: 0x10(0x2 Byte(s))
        hash_798fe6dfb7cfb479 hash_2ea8a6bab2364c58;
        // offset: 0x7920, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 hash_32a7829d2c230f5;
        // offset: 0x7938, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec call_in_3_care_packages;
        // offset: 0x7950, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1b0c06f37648493f;
        // offset: 0x7968, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_vision_pulse_assist;
        // offset: 0x7980, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_1032f7bc4947cc70;
        // offset: 0x7998, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 multikill_3_lmg_or_smg_hip_fire;
        // offset: 0x79b8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_458e8316073535c4;
        // offset: 0x79c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_34d9af35f8b02185;
        // offset: 0x79e0, bitSize: 0x38(0x7 Byte(s))
        intstat hash_6429d1fccdef2c9;
        // offset: 0x7a18, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3837599602e870c;
        // offset: 0x7a28, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_495f79260cd17fc1;
        // offset: 0x7a40, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 shutdown_visionpulse_immediately;
        // offset: 0x7a68, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_14821486655da5ec;
        // offset: 0x7a78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_23d2a4d333f13590;
        // offset: 0x7a90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6df09ff7e0a31041;
        // offset: 0x7aa8, bitSize: 0x20(0x4 Byte(s))
        hash_3c449a1a07677764 plants;
        // offset: 0x7ac8, bitSize: 0x38(0x7 Byte(s))
        intstat hash_44caad08afb32e51;
        // offset: 0x7b00, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 hash_340bf77df256e6ce;
        // offset: 0x7b18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_72752a9adfaa2b00;
        // offset: 0x7b30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5e7d4fbf52e478d2;
        // offset: 0x7b48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec recover_full_health_from_critical;
        // offset: 0x7b60, bitSize: 0x38(0x7 Byte(s))
        intstat ekia_hc;
        // offset: 0x7b98, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_b97c02528f0717e;
        // offset: 0x7ba0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7aa90c8abdf600e6;
        // offset: 0x7bb8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_31d5721ee9793424;
        // offset: 0x7bc8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_436fffdd733392ba;
        // offset: 0x7bd8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_437000dd7333946d;
        // offset: 0x7be8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7adb8f843b82a52a;
        // offset: 0x7bf8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_382ca9fc9d4af1ee;
        // offset: 0x7c08, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_6a6377a03ebc1503;
        // offset: 0x7c20, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_48bce293a3c7ef5d;
        // offset: 0x7c30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3e1d14abbe39a781;
        // offset: 0x7c48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_ai_aircraft_using_blindeye;
        // offset: 0x7c60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_attack_dog_kill;
        // offset: 0x7c78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_bounty_hunter_downed_enemy;
        // offset: 0x7c90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_ads_grip;
        // offset: 0x7ca8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_55531d9b7bb2a748;
        // offset: 0x7cc0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_3fa60224fea08f53;
        // offset: 0x7cd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_34783bf7a1179064;
        // offset: 0x7cf0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 ar_peacekeeper_for_diamond;
        // offset: 0x7d08, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_62a87fc76f3eca12;
        // offset: 0x7d18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_55fec19a7934aaad;
        // offset: 0x7d30, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3c5a82d06549abcc;
        // offset: 0x7d40, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_71469963d480c64e;
        // offset: 0x7d58, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_8f34b5961bffd48;
        // offset: 0x7d68, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_42c4c610ae16bd73;
        // offset: 0x7d78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_attacker_with_robot_or_tank;
        // offset: 0x7d90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_191b49ff8bb1c5af;
        // offset: 0x7da8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3c6b9a79e1aca4d9;
        // offset: 0x7dd0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_1618546aad5f38af;
        // offset: 0x7de8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_with_cooked_grenade;
        // offset: 0x7e10, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_564599a9526a816e;
        // offset: 0x7e28, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_173e56cb34460575;
        // offset: 0x7e38, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_173e55cb344603c2;
        // offset: 0x7e48, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_173e54cb3446020f;
        // offset: 0x7e58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destructions;
        // offset: 0x7e70, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7bf32e23f3be8ec6;
        // offset: 0x7e88, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5eed179b63d40718;
        // offset: 0x7ea0, bitSize: 0x38(0x7 Byte(s))
        intstat losses_hc;
        // offset: 0x7ed8, bitSize: 0x38(0x7 Byte(s))
        intstat hash_7158067d85c1402a;
        // offset: 0x7f10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec throws;
        // offset: 0x7f28, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_55becb3a18f3c612;
        // offset: 0x7f38, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_685060487df5e226;
        // offset: 0x7f50, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3183bd76e4f93d3d;
        // offset: 0x7f78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_11d98f202734032b;
        // offset: 0x7f90, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_427fcf61792ac9eb;
        // offset: 0x7fa8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3035a5f29811a3f9;
        // offset: 0x7fb8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6dea6e2c0ae9dfd2;
        // offset: 0x7fd0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6523f5ee7894ca94;
        // offset: 0x7fe8, bitSize: 0x38(0x7 Byte(s))
        intstat downs_revived;
        // offset: 0x8020, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_swat_team_kill;
        // offset: 0x8038, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1bc0e2d787ec3594;
        // offset: 0x8050, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_682c9c0ef5677f2d;
        // offset: 0x8068, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7ddba69a0de126e5;
        // offset: 0x8080, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec shoot_aircraft;
        // offset: 0x8098, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_50513027398440db;
        // offset: 0x80a8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1a83f392aff69fc3;
        // offset: 0x80b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_d73110a583bac76;
        // offset: 0x80d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_52f5a81d5f96353f;
        // offset: 0x80e8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_55f8a59c6d7132a8;
        // offset: 0x8110, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_51035ce3c359156;
        // offset: 0x8120, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_51037ce3c3594bc;
        // offset: 0x8130, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_450f99ce50083544;
        // offset: 0x8148, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3cd0e341588351df;
        // offset: 0x8158, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_73579fbf50ae9cb6;
        // offset: 0x8168, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_56072d4f6aaf655f;
        // offset: 0x8180, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_1e29607accbdb212;
        // offset: 0x8198, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_282b3ba00aaf35a1;
        // offset: 0x81b0, bitSize: 0x38(0x7 Byte(s))
        intstat hash_6e4e1eb9512ba7b5;
        // offset: 0x81e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_367db24a58b3809f;
        // offset: 0x8200, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5ea3238f59bae1e5;
        // offset: 0x8210, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec codpoints;
        // offset: 0x8228, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_uav;
        // offset: 0x8240, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2b75a2161643473b;
        // offset: 0x8258, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_603615ffae21f65f;
        // offset: 0x8268, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_44978e0160dc6c6;
        // offset: 0x8278, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1a2391c6ff1cc84;
        // offset: 0x8288, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec killstreak_10_no_weapons_perks;
        // offset: 0x82a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec timewhennexthost;
        // offset: 0x82b8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_15da16b6b9032af;
        // offset: 0x82e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_70a6bc21016d1916;
        // offset: 0x82f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec satlink_deposits;
        // offset: 0x8310, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_42d584c6dc3908bb;
        // offset: 0x8320, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec longest_killstreak;
        // offset: 0x8338, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_purifier_x2_multikill_summary;
        // offset: 0x8350, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_174beaaa686374bd;
        // offset: 0x8368, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_34e0fb49ecfca3e4;
        // offset: 0x8380, bitSize: 0x38(0x7 Byte(s))
        intstat items_armor_used;
        // offset: 0x83b8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_6400ff0ff3d29c3e;
        // offset: 0x83e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_qrdrone;
        // offset: 0x83f8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_647fad939355f5e7;
        // offset: 0x8408, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_500ec14cbdae7c8a;
        // offset: 0x8418, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_500ec24cbdae7e3d;
        // offset: 0x8428, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_61a7e8e7b1999b5;
        // offset: 0x8440, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_e46234e26adf731;
        // offset: 0x8458, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1519552f0db891c2;
        // offset: 0x8468, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2c4ee1b3a4f8cec3;
        // offset: 0x8480, bitSize: 0x38(0x7 Byte(s))
        intstat vehicle_damage;
        // offset: 0x84b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_disrupted_mantis;
        // offset: 0x84d0, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_1cd9a591d101dca;
        // offset: 0x84e8, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d kill_hc;
        // offset: 0x8518, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_melee_leader_gun;
        // offset: 0x8530, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 long_distance_hatchet_kill;
        // offset: 0x8550, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_hacked_assist;
        // offset: 0x8568, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_58206f6cb3d7fd92;
        // offset: 0x8580, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_791f8416bde65df1;
        // offset: 0x8598, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_53a70b3824c43354;
        // offset: 0x85b0, bitSize: 0x38(0x7 Byte(s))
        intstat kills_revenge;
        // offset: 0x85e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5d409c26ab2b77d5;
        // offset: 0x8600, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_flag_carrier_kill_return_close;
        // offset: 0x8618, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_46faf6240c2fe71a;
        // offset: 0x8628, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killed_attacker;
        // offset: 0x8640, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec killsconfirmed;
        // offset: 0x8658, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec killed_dog_close_to_teammate;
        // offset: 0x8670, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_257e02b9fc52278b;
        // offset: 0x8688, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_radiation_field_kill;
        // offset: 0x86a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_trip_mine_shocked;
        // offset: 0x86b8, bitSize: 0x38(0x7 Byte(s))
        intstat vehicle_damage_occupied;
        // offset: 0x86f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5ff2a0c4a2a3d4a0;
        // offset: 0x8708, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4605553e8458607e;
        // offset: 0x8718, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_stunned_slowed_irradiated_cuav_resistance;
        // offset: 0x8730, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 top_scorer;
        // offset: 0x8758, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1e0aca21e6c6e00c;
        // offset: 0x8768, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_515c3ec5c8a5d793;
        // offset: 0x8778, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_40c77418f9182719;
        // offset: 0x8788, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 hash_d32f8463f692122;
        // offset: 0x87a0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4c52eb020ea39538;
        // offset: 0x87b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multikill_3_with_heroweapon;
        // offset: 0x87c8, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_5d07bb5d067ff8da;
        // offset: 0x87d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1be36c00d02a3702;
        // offset: 0x87e8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3ee4e98fc8943aa1;
        // offset: 0x87f8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_59b46a27ebbdb7d0;
        // offset: 0x8810, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_war_machine_shutdown;
        // offset: 0x8828, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1ca13a22c5b59987;
        // offset: 0x8838, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2fb4d0164593f277;
        // offset: 0x8848, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4da14f9b7ebe092d;
        // offset: 0x8858, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3fd3d25ffb7203bf;
        // offset: 0x8870, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 hash_3af994bdca6c16b3;
        // offset: 0x8888, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_2f0e334e8017b000;
        // offset: 0x88a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4b6eca29e69997c3;
        // offset: 0x88b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3427f2d4181d570;
        // offset: 0x88d0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6c9ea22e0bd57fc1;
        // offset: 0x88e0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_70f315edc128f861;
        // offset: 0x88f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7c0782bd740c812d;
        // offset: 0x8910, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_revives;
        // offset: 0x8928, bitSize: 0x38(0x7 Byte(s))
        intstat ties_hc;
        // offset: 0x8960, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 hash_4e1188b58a62db00;
        // offset: 0x8978, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_62c4816f8e75e33;
        // offset: 0x8988, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_62c4e16f8e76865;
        // offset: 0x8998, bitSize: 0x38(0x7 Byte(s))
        intstat squads_eliminated_unassisted;
        // offset: 0x89d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec penetration_shots;
        // offset: 0x89e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_405015b29793595f;
        // offset: 0x8a00, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3ac0b25bcb4d86c5;
        // offset: 0x8a18, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_304caa23a8e24278;
        // offset: 0x8a28, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5e3e453862ca1816;
        // offset: 0x8a38, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_193d0738fd876c0f;
        // offset: 0x8a50, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_313a23cbc59f9824;
        // offset: 0x8a68, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_swat_grenade_assist;
        // offset: 0x8a80, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_disrupted_enemy;
        // offset: 0x8a98, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7827f0f7d21957d;
        // offset: 0x8ab0, bitSize: 0x38(0x7 Byte(s))
        intstat distance_traveled_wingsuit_miles;
        // offset: 0x8ae8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_frag_multikill_x2_summary;
        // offset: 0x8b00, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2071b9ab532d8ab;
        // offset: 0x8b10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec pickups;
        // offset: 0x8b28, bitSize: 0x38(0x7 Byte(s))
        intstat hash_35020c395a89befb;
        // offset: 0x8b60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_spawn_beacon_multikill_x2_summary;
        // offset: 0x8b78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1da85bdad459d5da;
        // offset: 0x8b90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multikill_3_with_heroability;
        // offset: 0x8ba8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killed_defender;
        // offset: 0x8bc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3ca06b81e4a25e7b;
        // offset: 0x8bd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2c411357aa10f4c1;
        // offset: 0x8bf0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_explosive;
        // offset: 0x8c08, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_tracker_sixthsense;
        // offset: 0x8c20, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_621283451861c9e1;
        // offset: 0x8c38, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_nemesis;
        // offset: 0x8c60, bitSize: 0x38(0x7 Byte(s))
        intstat career_score;
        // offset: 0x8c98, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec long_shot_longbarrel_suppressor_optic;
        // offset: 0x8cb0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_ads_quickdraw;
        // offset: 0x8cc8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1efa6ab922134e1d;
        // offset: 0x8ce0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_d4a989a2da3fa72;
        // offset: 0x8cf8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_disrupted_sentry;
        // offset: 0x8d10, bitSize: 0x38(0x7 Byte(s))
        intstat vehicles_destroyed;
        // offset: 0x8d48, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_191b00b02f6c4144;
        // offset: 0x8d58, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_17973dab722356fe;
        // offset: 0x8d68, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_179742ab72235f7d;
        // offset: 0x8d78, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_522726cf51951b8;
        // offset: 0x8d88, bitSize: 0x10(0x2 Byte(s))
        hash_798fe6dfb7cfb479 hash_4075f20007923416;
        // offset: 0x8d98, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_383d73e35a0c6d17;
        // offset: 0x8da8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_backstabber_kill;
        // offset: 0x8dc0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 stats_multikill_2;
        // offset: 0x8de8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 stats_multikill_3;
        // offset: 0x8e10, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 stats_multikill_4;
        // offset: 0x8e30, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 stats_multikill_5;
        // offset: 0x8e50, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 stats_multikill_6;
        // offset: 0x8e70, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 stats_multikill_7;
        // offset: 0x8e90, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d stats_kill_enemy_one_bullet;
        // offset: 0x8ec0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2e55c5e03a8a812c;
        // offset: 0x8ed8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_22b3691c8306fb2c;
        // offset: 0x8ef0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec losses_late_join;
        // offset: 0x8f08, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_26aa9cf1b9f61e70;
        // offset: 0x8f18, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5bfd15fb1c1fb736;
        // offset: 0x8f28, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5bfd13fb1c1fb3d0;
        // offset: 0x8f38, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec optic_camo_capture_objective;
        // offset: 0x8f50, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_38b6f2ae0bee048f;
        // offset: 0x8f68, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2cceb05c88366b28;
        // offset: 0x8f78, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_6bf229eca4bb8729;
        // offset: 0x8f90, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_6bf226eca4bb8210;
        // offset: 0x8fa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_32d6e076ee5ccdf8;
        // offset: 0x8fc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_13ea35c63c00066c;
        // offset: 0x8fd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4bc21297932935d2;
        // offset: 0x8ff0, bitSize: 0x18(0x3 Byte(s))
        hash_2df14ab4ac36cb9 hash_5630ec40181e1db3;
        // offset: 0x9008, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_345a3aa1489f6839;
        // offset: 0x9018, bitSize: 0x40(0x8 Byte(s))
        hash_6e522b658d49b7ba score_hc;
        // offset: 0x9058, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2bf56577a0bfec0c;
        // offset: 0x9070, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_4b541bb81f48fcf0;
        // offset: 0x9088, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4c67670e68b1faab;
        // offset: 0x90a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_ads_reload_quickdraw_fastreload2;
        // offset: 0x90b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_minimap_awareness;
        // offset: 0x90d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_after_they_heal;
        // offset: 0x90e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_52abffb28461993b;
        // offset: 0x9100, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_26e0be3755c42495;
        // offset: 0x9118, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4ef7534ca1c8f27b;
        // offset: 0x9128, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_67e2e956f75df47a;
        // offset: 0x9138, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_587511702acfa7cc;
        // offset: 0x9150, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7659bc4836c71dee;
        // offset: 0x9160, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2ae5241330ed389f;
        // offset: 0x9178, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_tempest_kill;
        // offset: 0x9190, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_33dd7ef72b15e6ac;
        // offset: 0x91a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_traversal_kill;
        // offset: 0x91c0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_87899862a43291d;
        // offset: 0x91d8, bitSize: 0x28(0x5 Byte(s))
        hash_77427c7b6edfc9f hash_550ac37d4c3f5f49;
        // offset: 0x9200, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_escort_robot_disable;
        // offset: 0x9218, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2cce173f0c4e3ecd;
        // offset: 0x9230, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_a35eb7542985769;
        // offset: 0x9248, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7f2ed78b0d2848f2;
        // offset: 0x9260, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_one_bullet_sniper;
        // offset: 0x9278, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_immune_cuav_kills;
        // offset: 0x9290, bitSize: 0x38(0x7 Byte(s))
        intstat hash_41f134c3e727d877;
        // offset: 0x92c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_attack_dog_x2_multikill_summary;
        // offset: 0x92e0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_369bb5d15d4b680d;
        // offset: 0x92f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec total_heals;
        // offset: 0x9308, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_26ab65b8fbfeab28;
        // offset: 0x9318, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_70320f43067a9540;
        // offset: 0x9330, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_hellstorm_missile_kill;
        // offset: 0x9348, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 hash_a354281889f532b;
        // offset: 0x9360, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_68132ad0d6af6bda;
        // offset: 0x9378, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_26a22e3ac6a9a301;
        // offset: 0x9380, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec direct_action_kills;
        // offset: 0x9398, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7dab2161d3681f85;
        // offset: 0x93a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6a0a7bacdb35d08d;
        // offset: 0x93c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7edcc1ac6898f588;
        // offset: 0x93d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_radiation_field_multikill_x2_summary;
        // offset: 0x93f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_bomb_detonated;
        // offset: 0x9408, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4f81cd91028ce8d2;
        // offset: 0x9418, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4f81cb91028ce56c;
        // offset: 0x9428, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec cleandenies;
        // offset: 0x9440, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 mastery_specialized;
        // offset: 0x9458, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_396f347b1d4c7db7;
        // offset: 0x9468, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_seeker_shock_mine_killed_paralyzed_enemy;
        // offset: 0x9480, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 shutdown_ballisticshield_in_back;
        // offset: 0x94a8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_38bc3cf519198f90;
        // offset: 0x94b8, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_6e8aebca8a7e908d;
        // offset: 0x94d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6e5bfc968b257dc0;
        // offset: 0x94f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1955afb91e917849;
        // offset: 0x9508, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_full_heal_medicalinjectiongun;
        // offset: 0x9520, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6b9dbfd78454d618;
        // offset: 0x9530, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_68179bba77f0a8aa;
        // offset: 0x9540, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_681796ba77f0a02b;
        // offset: 0x9550, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_681795ba77f09e78;
        // offset: 0x9560, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7049f63ee0b63090;
        // offset: 0x9578, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_scavenger_kills_after_resupply;
        // offset: 0x9590, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6d5cb8df079ca66c;
        // offset: 0x95a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_automated_turret_killjoy;
        // offset: 0x95c0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2dc09a051d45038d;
        // offset: 0x95d0, bitSize: 0x38(0x7 Byte(s))
        intstat items_backpacks_used;
        // offset: 0x9608, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_313d36442505f30c;
        // offset: 0x9620, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_34051123544f3dd1;
        // offset: 0x9638, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_626ed693fa15cd7;
        // offset: 0x9650, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroyed_helicopter_with_bullet;
        // offset: 0x9668, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_59e07dd9354c6be6;
        // offset: 0x9678, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_dw_fatbarrel_skullsplitter_dragonbreath;
        // offset: 0x9690, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_65e44379203e1e58;
        // offset: 0x96a8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6b018ac14c58cef1;
        // offset: 0x96b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroy_aircraft_with_emp;
        // offset: 0x96d0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3d11f2e0b14e9cac;
        // offset: 0x96e0, bitSize: 0x38(0x7 Byte(s))
        intstat kills_early;
        // offset: 0x9718, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_24b8c6ce81fdead6;
        // offset: 0x9728, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_24b8c5ce81fde923;
        // offset: 0x9738, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec capture_enemy_carepackage;
        // offset: 0x9750, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6bbcfc2328216bf9;
        // offset: 0x9768, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4cef080aa44cd2f6;
        // offset: 0x9780, bitSize: 0x38(0x7 Byte(s))
        intstat hash_5daf843b05ac67e3;
        // offset: 0x97b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1a6b1966beb37b71;
        // offset: 0x97d0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_e085a5f8fda7fec;
        // offset: 0x97f8, bitSize: 0x38(0x7 Byte(s))
        intstat career_score_multiteam;
        // offset: 0x9830, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6879fc59dd39612a;
        // offset: 0x9848, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5778f54a3c432314;
        // offset: 0x9860, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_enemy_grenade_throwback;
        // offset: 0x9888, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_3cec8f96e8988e85;
        // offset: 0x98a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_700c8d90023497d3;
        // offset: 0x98b8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5cef349da6997d78;
        // offset: 0x98c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_tracker;
        // offset: 0x98e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec leaderboardfailures;
        // offset: 0x98f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_9904e795162f703;
        // offset: 0x9910, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_6ed19b98000fb441;
        // offset: 0x9938, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_cluster_semtex_kill;
        // offset: 0x9950, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_24052ca7b1fcd538;
        // offset: 0x9968, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_5d76de366ce52bb3;
        // offset: 0x9980, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hack_enemy_target;
        // offset: 0x9998, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_18a3416361174e88;
        // offset: 0x99b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_ae91a087c51e5e7;
        // offset: 0x99c8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_69a54125cf436285;
        // offset: 0x99d8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1e0052c9f31de889;
        // offset: 0x99f0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_512b329b0603295f;
        // offset: 0x9a00, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_tak5_multikill_x2_multikill_summary;
        // offset: 0x9a18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_one_life_fastmags_and_extclip;
        // offset: 0x9a30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_neutral_b_secured;
        // offset: 0x9a48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_one_bullet_shotgun;
        // offset: 0x9a60, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_19b522874d71d0c2;
        // offset: 0x9a70, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1379d16cee958f3e;
        // offset: 0x9a88, bitSize: 0x38(0x7 Byte(s))
        intstat kills_enemy_in_vehicle_air;
        // offset: 0x9ac0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7db4297dc4736e7f;
        // offset: 0x9ad0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5cf945d7954a39e0;
        // offset: 0x9af8, bitSize: 0x10(0x2 Byte(s))
        hash_798fe6dfb7cfb479 hash_18816731b999fbfb;
        // offset: 0x9b08, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5f4c94fd6506e731;
        // offset: 0x9b18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec teamkills;
        // offset: 0x9b30, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_52b5cb629bbde814;
        // offset: 0x9b48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_annihilator_kill;
        // offset: 0x9b60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_45fca5cee12d8bdb;
        // offset: 0x9b78, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_515b8f2bd79567f8;
        // offset: 0x9b88, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6bce948678791597;
        // offset: 0x9ba0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5221b0475b9fd5af;
        // offset: 0x9bb8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_in_3_seconds_gun;
        // offset: 0x9bd0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_17b0303893ccdd19;
        // offset: 0x9be8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assist_score_killstreak;
        // offset: 0x9c00, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_392ee0534adcefe8;
        // offset: 0x9c10, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_392ee1534adcf19b;
        // offset: 0x9c20, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_392ee2534adcf34e;
        // offset: 0x9c30, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 kill_after_shot_in_back;
        // offset: 0x9c58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_enemy_who_damaged_robot;
        // offset: 0x9c70, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 stats_multikill_more_than_7;
        // offset: 0x9c90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_scavenger_tracker_resupply;
        // offset: 0x9ca8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_enemy_when_injured;
        // offset: 0x9cc0, bitSize: 0x38(0x7 Byte(s))
        intstat hash_56fe2b909f5129be;
        // offset: 0x9cf8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_ad0d6648c240285;
        // offset: 0x9d08, bitSize: 0x38(0x7 Byte(s))
        intstat kdratio;
        // offset: 0x9d40, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_e061e324ef28d57;
        // offset: 0x9d58, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_cce5e38ca00479d;
        // offset: 0x9d68, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_seeker_shock_mine_paralyze_assist;
        // offset: 0x9d80, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_21a7824cfc151de4;
        // offset: 0x9d90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_longersprint;
        // offset: 0x9da8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_ads_stalker;
        // offset: 0x9dc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_anteup_overclock_scorestreak_specialist;
        // offset: 0x9dd8, bitSize: 0x38(0x7 Byte(s))
        intstat hash_337e05385393e3a6;
        // offset: 0x9e10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_enemy_while_capping;
        // offset: 0x9e28, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_blindeye_ghost_aircraft;
        // offset: 0x9e40, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_suppressor_ghost_hardwired_blastsuppressor;
        // offset: 0x9e58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_enemy_who_killed_teammate;
        // offset: 0x9e70, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_kill_enemy_after_death;
        // offset: 0x9e88, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_b584efad55d38c4;
        // offset: 0x9ea8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_73d187ebf36663a3;
        // offset: 0x9ec0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 mastery_gear;
        // offset: 0x9ed8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia_strobeflash_suppressivebarrel;
        // offset: 0x9ef0, bitSize: 0x10(0x2 Byte(s))
        hash_798fe6dfb7cfb479 hash_6b828c2fcb0e8df5;
        // offset: 0x9f00, bitSize: 0x10(0x2 Byte(s))
        hash_798fe6dfb7cfb479 hash_72d1952fced05f40;
        // offset: 0x9f10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3df6e30cbf932e68;
        // offset: 0x9f28, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec air_assault_total_kills;
        // offset: 0x9f40, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_noname_kills;
        // offset: 0x9f58, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1cf4be42778c8b60;
        // offset: 0x9f68, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1cf4c542778c9745;
        // offset: 0x9f78, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1cf4c442778c9592;
        // offset: 0x9f88, bitSize: 0x38(0x7 Byte(s))
        intstat wins_without_down;
        // offset: 0x9fc0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_65ae5dabb9c13a06;
        // offset: 0x9fd0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_65ae5fabb9c13d6c;
        // offset: 0x9fe0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_56bb9eba7da13617;
        // offset: 0xa008, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec radiation_field_shutdown_ekia;
        // offset: 0xa020, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec highlights_created;
        // offset: 0xa038, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_concertina_wire_assist;
        // offset: 0xa050, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_escort_robot_delivered;
        // offset: 0xa068, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_548697522dba9e7a;
        // offset: 0xa078, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_counteruav_emp_hardline;
        // offset: 0xa090, bitSize: 0x20(0x4 Byte(s))
        hash_3c449a1a07677764 captures;
        // offset: 0xa0b0, bitSize: 0x38(0x7 Byte(s))
        intstat hash_25f4611fc9d40aa8;
        // offset: 0xa0e8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3b463a7a4b6fb7d7;
        // offset: 0xa0f8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3b46377a4b6fb2be;
        // offset: 0xa108, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3b46387a4b6fb471;
        // offset: 0xa118, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3b46357a4b6faf58;
        // offset: 0xa128, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_d9fe863a1e9e4d8;
        // offset: 0xa140, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec headshot_fmj_highcaliber_longbarrel;
        // offset: 0xa158, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec sessionbans;
        // offset: 0xa170, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multikill_3_remote_missile;
        // offset: 0xa188, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_dart_killjoy;
        // offset: 0xa1a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_flag_capture;
        // offset: 0xa1b8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 featured_in_best_play;
        // offset: 0xa1e0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_fdebb63217e34a0;
        // offset: 0xa208, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_radiation_field_radiating_enemy;
        // offset: 0xa220, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_403bf319c5b8aa47;
        // offset: 0xa230, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 stats_killstreak_10;
        // offset: 0xa258, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_11;
        // offset: 0xa270, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_12;
        // offset: 0xa288, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_13;
        // offset: 0xa2a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_14;
        // offset: 0xa2b8, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 stats_killstreak_15;
        // offset: 0xa2d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_16;
        // offset: 0xa2f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_17;
        // offset: 0xa308, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_18;
        // offset: 0xa320, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_19;
        // offset: 0xa338, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 stats_killstreak_20;
        // offset: 0xa360, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_21;
        // offset: 0xa378, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_22;
        // offset: 0xa390, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_23;
        // offset: 0xa3a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_24;
        // offset: 0xa3c0, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 stats_killstreak_25;
        // offset: 0xa3e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_26;
        // offset: 0xa3f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_27;
        // offset: 0xa410, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_28;
        // offset: 0xa428, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec stats_killstreak_29;
        // offset: 0xa440, bitSize: 0x20(0x4 Byte(s))
        hash_2a676da7026d7618 stats_killstreak_30;
        // offset: 0xa460, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_cb8c5c845093e02;
        // offset: 0xa478, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_63b656007f0362c4;
        // offset: 0xa488, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec mappackmask;
        // offset: 0xa4a0, bitSize: 0x1
        bool hash_195a18a5697c5c96;
    };

    // bitSize: 0x20, members: 2
    struct rankeditemstats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        uint:24 xp;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        byte plevel;
    };

    // bitSize: 0x4f0, members: 47
    struct itemstats {
        // offset: 0x0, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d ekia;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hits;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec used;
        // offset: 0x60, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d kills;
        // offset: 0x90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec shots;
        // offset: 0xa8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_55a8e5d42964c1ea;
        // offset: 0xc0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_6759c0df02e8aa9d;
        // offset: 0xd8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 multikill_2;
        // offset: 0xf0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 backstabber_kill;
        // offset: 0x118, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 challenge1;
        // offset: 0x138, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 challenge2;
        // offset: 0x158, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 challenge3;
        // offset: 0x178, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 challenge4;
        // offset: 0x198, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 challenge5;
        // offset: 0x1b8, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 challenges;
        // offset: 0x1d0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 kill_enemy_while_sliding;
        // offset: 0x1e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec gamesused;
        // offset: 0x200, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 killstreak_3;
        // offset: 0x218, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 killstreak_5;
        // offset: 0x230, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_14b7133a39a0456e;
        // offset: 0x248, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_67536f932f6aeb36;
        // offset: 0x260, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_56ede06b1821a561;
        // offset: 0x278, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 kill_enemy_when_injured;
        // offset: 0x290, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deathsduringuse;
        // offset: 0x2a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroyed;
        // offset: 0x2c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec timeused;
        // offset: 0x2d8, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 challenges_completed;
        // offset: 0x2f0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 destroy_any;
        // offset: 0x308, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec damagedone;
        // offset: 0x320, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_44ee37a6f2b220c9;
        // offset: 0x338, bitSize: 0x18(0x3 Byte(s))
        hash_2df14ab4ac36cb9 killstreak_30;
        // offset: 0x350, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_19fbe2645c7f53a7;
        // offset: 0x368, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_dd38fe3b56f0644;
        // offset: 0x380, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec combatrecordstat;
        // offset: 0x398, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deaths;
        // offset: 0x3b0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 longshot_kill;
        // offset: 0x3c8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5a2ba340560103b3;
        // offset: 0x3d0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_21b62e7a039a069f;
        // offset: 0x3e8, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_49b586d05aaa0209;
        // offset: 0x400, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_6a9ef93d619f4bcc;
        // offset: 0x418, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assists;
        // offset: 0x430, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 kill_enemy_one_bullet_sniper;
        // offset: 0x448, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7ecef0e52a9dcf4b;
        // offset: 0x460, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4c3e48c162ff0279;
        // offset: 0x478, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d headshots;
        // offset: 0x4a8, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d hash_497df827743010c3;
        // offset: 0x4d8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_8fafad87a8bd288;
    };

    // bitSize: 0x168, members: 14
    struct attachmentstats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ekia;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hits;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec used;
        // offset: 0x48, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d kills;
        // offset: 0x78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec shots;
        // offset: 0x90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec gamesused;
        // offset: 0xa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deathsduringuse;
        // offset: 0xc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroyed;
        // offset: 0xd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec timeused;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec damagedone;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec combatrecordstat;
        // offset: 0x120, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deaths;
        // offset: 0x138, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assists;
        // offset: 0x150, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec headshots;
    };

    // bitSize: 0xa8, members: 7
    struct hash_395a924a7ae5bc75 {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        uint:24 win;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        uint:24 draw;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        uint:24 loss;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        int:24 stat1;
        // offset: 0x60, bitSize: 0x18(0x3 Byte(s))
        int:24 stat2;
        // offset: 0x78, bitSize: 0x18(0x3 Byte(s))
        uint:24 timeplayed;
        // offset: 0x90, bitSize: 0x18(0x3 Byte(s))
        uint:24 gamesplayed;
    };

    // bitSize: 0x198, members: 12
    struct specialiststats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_weapon;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills;
        // offset: 0x30, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge1;
        // offset: 0x60, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge2;
        // offset: 0x90, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge3;
        // offset: 0xc0, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge4;
        // offset: 0xf0, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d challenge5;
        // offset: 0x120, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_one_game_ability;
        // offset: 0x138, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_ability;
        // offset: 0x150, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multikill_ability;
        // offset: 0x168, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_one_game_weapon;
        // offset: 0x180, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec multikill_weapon;
    };

    // bitSize: 0x348, members: 20
    struct aarstats {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        short nemesisrankicon;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        short characterindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s))
        uint64 matchid;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        byte clientnum;
        // offset: 0x68, bitSize: 0x40(0x8 Byte(s))
        uint64 demofileid;
        // offset: 0xa8, bitSize: 0x100(0x20 Byte(s))
        string(32) gametype;
        // offset: 0x1a8, bitSize: 0x20(0x4 Byte(s))
        int surveyid;
        // offset: 0x1c8, bitSize: 0x10(0x2 Byte(s))
        short nemesiskills;
        // offset: 0x1d8, bitSize: 0x10(0x2 Byte(s))
        short nemesiskilledby;
        // offset: 0x1e8, bitSize: 0x8(0x1 Byte(s))
        byte nemesisheroindex;
        // offset: 0x1f0, bitSize: 0x100(0x20 Byte(s))
        string(32) nemesisname;
        // offset: 0x2f0, bitSize: 0x10(0x2 Byte(s))
        short nemesisrank;
        // offset: 0x300, bitSize: 0x40(0x8 Byte(s))
        uint64 nemesisxuid;
        // offset: 0x340, bitSize: 0x1
        bool hash_2ef93ce9247e7287;
        // offset: 0x341, bitSize: 0x1
        bool valid;
        // offset: 0x342, bitSize: 0x1
        bool hardcore;
        // offset: 0x343, bitSize: 0x1
        bool hash_771c0c2047e83de0;
        // offset: 0x344, bitSize: 0x1
        bool hash_74adf231e7a9636e;
        // offset: 0x345, bitSize: 0x1
        bool privatematch;
    };

    // bitSize: 0x90, members: 6
    struct hash_1b2a05426d7c883b {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        uint:24 quit;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        uint:24 started;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        uint:24 completed;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        uint:24 timeout;
        // offset: 0x60, bitSize: 0x18(0x3 Byte(s))
        uint:24 kicked;
        // offset: 0x78, bitSize: 0x18(0x3 Byte(s))
        uint:24 dashboard;
    };

    // bitSize: 0x120, members: 2
    struct gamecompletion {
        // offset: 0x0, bitSize: 0x90(0x12 Byte(s))
        hash_1b2a05426d7c883b hosted;
        // offset: 0x90, bitSize: 0x90(0x12 Byte(s))
        hash_1b2a05426d7c883b played;
    };

    // bitSize: 0xb8, members: 11
    struct matchhistorystats {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        short kills;
        // offset: 0x10, bitSize: 0x18(0x3 Byte(s))
        uint:24 score;
        // offset: 0x28, bitSize: 0x20(0x4 Byte(s))
        uint startingtime;
        // offset: 0x48, bitSize: 0x20(0x4 Byte(s))
        uint endingtime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 scoreboardposition;
        // offset: 0x70, bitSize: 0x20(0x4 Byte(s))
        float teamscoreratio;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:5 gametype;
        // offset: 0x98, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0xa8, bitSize: 0x8(0x1 Byte(s))
        uint:3 quittype;
        // offset: 0xb0, bitSize: 0x1
        bool forgiven;
    };

    // bitSize: 0x1828, members: 3
    struct gamehistorystats {
        // offset: 0x0, bitSize: 0x1700(0x2e0 Byte(s)), array:0x20(hti:0xffff)
        matchhistorystats matchhistory[32];
        // offset: 0x1700, bitSize: 0x120(0x24 Byte(s))
        gamecompletion modehistory;
        // offset: 0x1820, bitSize: 0x8(0x1 Byte(s))
        byte currentmatchhistoryindex;
    };

    // bitSize: 0x60, members: 3
    struct hash_16df3a6474be0b92 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint count;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint version;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint timewhenprobationisdone;
    };

    // bitSize: 0x20, members: 4
    struct hash_25a11738b4152d0e {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte a;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        byte b;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        byte c;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        byte d;
    };

    // bitSize: 0x1c0, members: 6
    struct hash_4976dab983b23e8c {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint timestamp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint nattype;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        uint64 macaddress;
        // offset: 0x80, bitSize: 0x100(0x20 Byte(s))
        string(32) consoleid64;
        // offset: 0x180, bitSize: 0x20(0x4 Byte(s))
        hash_25a11738b4152d0e ipexternal;
        // offset: 0x1a0, bitSize: 0x20(0x4 Byte(s))
        uint usecount;
    };

    // bitSize: 0x28, members: 1
    struct hash_402baff65ae9b838 {
        // offset: 0x0, bitSize: 0x28(0x5 Byte(s))
        string(5) clanname;
    };

    // bitSize: 0xa0, members: 2
    struct dlc_t {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint mappacks;
        // offset: 0x20, bitSize: 0x80(0x10 Byte(s)), array:0x80(hti:0xffff)
        bool mtx[128];
    };

    // bitSize: 0x168, members: 2
    struct hash_1608f63ae729eda5 {
        // offset: 0x0, bitSize: 0x3c, array:0x3c(hti:0x5)
        bool attachmentmarkedold[hash_1e2de876fb880be2];
        // offset: 0x3c, bitSize: 0x12c, array:0x12c(hti:0xffff)
        bool optionmarkedasold[300];
    };

    // bitSize: 0x1, members: 1
    struct hash_18562676c03c7954 {
        // offset: 0x0, bitSize: 0x1
        bool markedold;
    };

    // bitSize: 0x1, members: 1
    struct hash_2d74f509e9d33a86 {
        // offset: 0x0, bitSize: 0x1
        bool markedold;
    };

    // bitSize: 0xfb0, members: 7
    struct hash_790a163d0959fa18 {
        // offset: 0x0, bitSize: 0x400(0x80 Byte(s)), array:0x400(hti:0xffff)
        hash_18562676c03c7954 icons[1024];
        // offset: 0x400, bitSize: 0x80(0x10 Byte(s)), array:0x80(hti:0xffff)
        hash_2d74f509e9d33a86 materials[128];
        // offset: 0x480, bitSize: 0x400(0x80 Byte(s)), array:0x400(hti:0xffff)
        bool hash_147e541febfeb366[1024];
        // offset: 0x880, bitSize: 0x320(0x64 Byte(s)), array:0x320(hti:0xffff)
        hash_18562676c03c7954 backgrounds[800];
        // offset: 0xba0, bitSize: 0xc, array:0xc(hti:0xffff)
        hash_2d74f509e9d33a86 layers[12];
        // offset: 0xbac, bitSize: 0x400(0x80 Byte(s)), array:0x400(hti:0xffff)
        bool icons_unlocked[1024];
    };

    // bitSize: 0x80, members: 1
    struct hash_78ac7dfcd6939c25 {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x80(hti:0xffff)
        bool markedold[128];
    };

    // bitSize: 0x60, members: 11
    struct contract_s {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 index;
        // offset: 0x10, bitSize: 0x18(0x3 Byte(s))
        uint:24 hash_32271b98ab28ea47;
        // offset: 0x28, bitSize: 0x18(0x3 Byte(s))
        uint:24 hash_32271a98ab28e894;
        // offset: 0x40, bitSize: 0x18(0x3 Byte(s))
        uint:24 progress;
        // offset: 0x58, bitSize: 0x1
        bool hash_2c2d1020cb1a97eb;
        // offset: 0x59, bitSize: 0x1
        bool hash_2c2d0f20cb1a9638;
        // offset: 0x5a, bitSize: 0x1
        bool hash_2c2d1220cb1a9b51;
        // offset: 0x5b, bitSize: 0x1
        bool hash_2c2d1120cb1a999e;
        // offset: 0x5c, bitSize: 0x1
        bool active;
        // offset: 0x5d, bitSize: 0x1
        bool hash_766ec4f61a382e04;
    };

    // bitSize: 0x26b8, members: 1
    struct mapstats {
        // offset: 0x0, bitSize: 0x26b8(0x4d7 Byte(s)), array:0x3b(hti:0x9)
        hash_395a924a7ae5bc75 permode[hash_38abf0e3af75eb5b];
    };

    // idx 0x0 members: 0xcb
    enum hash_10d50fe10481423c {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        napalm_strike_zm, // 0x2
        ability_smart_cover, // 0x3
        dart, // 0x4
        ultimate_turret, // 0x5
        hash_5a7fd1af4a1d5c9, // 0x6
        ar_season6_t9, // 0x7
        hash_7a083f7ba43fa06, // 0x8
        lmg_accurate_t9, // 0x9
        melee_etool_t9, // 0xa
        ray_gun_mk2z, // 0xb
        ray_gun_mk2y, // 0xc
        ray_gun_mk2x, // 0xd
        sniper_powersemi_t9, // 0xe
        eq_wraith_fire, // 0xf
        counteruav, // 0x10
        missile_turret, // 0x11
        eq_shroud, // 0x12
        gadget_supplypod, // 0x13
        ar_damage_t9, // 0x14
        homunculus, // 0x15
        spknifeork, // 0x16
        shotgun_leveraction_t9, // 0x17
        melee_bowie, // 0x18
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x19
        ww_random_ray_gun1, // 0x1a
        recon_plane, // 0x1b
        sig_buckler_dw, // 0x1c
        hash_18696150427f2efb, // 0x1d
        gadget_vision_pulse, // 0x1e
        waterballoon, // 0x1f
        special_crossbow_t9, // 0x20
        weapon_armor, // 0x21
        eq_arm_blade, // 0x22
        ww_blundergat_t8, // 0x23
        gadget_heat_wave, // 0x24
        eq_localheal, // 0x25
        hoverjet, // 0x26
        nightingale, // 0x27
        pistol_fullauto_t9, // 0x28
        remote_missile, // 0x29
        gadget_smart_cover, // 0x2a
        willy_pete, // 0x2b
        eq_emp_grenade, // 0x2c
        special_grenadelauncher_t9, // 0x2d
        melee_machete_t9, // 0x2e
        launcher_freefire_t9, // 0x2f
        ar_accurate_t9, // 0x30
        sig_lmg, // 0x31
        ww_crossbow_impaler_t8, // 0x32
        ar_soviet_t9, // 0x33
        ww_freezegun_t8, // 0x34
        frag_grenade, // 0x35
        smg_cqb_t9, // 0x36
        knife_loadout, // 0x37
        feature_default_class_1, // 0x38
        feature_default_class_3, // 0x39
        feature_default_class_2, // 0x3a
        feature_default_class_5, // 0x3b
        feature_default_class_4, // 0x3c
        feature_default_class_6, // 0x3d
        hash_28fdaa999c8aa3af, // 0x3e
        spy_wanted_order, // 0x3f
        swat_team, // 0x40
        land_mine, // 0x41
        hatchet, // 0x42
        supplydrop_marker, // 0x43
        mute_smoke, // 0x44
        hash_2ea46ca74ebdfcac, // 0x45
        smg_capacity_t9, // 0x46
        chopper_gunner, // 0x47
        melee_baseballbat_t9, // 0x48
        null_offhand_secondary, // 0x49
        gadget_health_regen, // 0x4a
        hash_31be8125c7d0f273, // 0x4b
        pistol_shotgun_t9, // 0x4c
        listening_device, // 0x4d
        spork_alcatraz, // 0x4e
        drone_squadron, // 0x4f
        pistol_semiauto_t9, // 0x50
        melee_mace_t9, // 0x51
        null_offhand_primary, // 0x52
        smg_burst_t9, // 0x53
        hash_3507beb47a6b634e, // 0x54
        pistol_revolver_t9, // 0x55
        eq_stimshot, // 0x56
        ww_mega_barrel_fullauto_copycat_t9, // 0x57
        overwatch_helicopter, // 0x58
        gadget_jammer, // 0x59
        hash_3ab58e40011df941, // 0x5a
        melee_coldwar_t9_dw, // 0x5b
        launcher_standard_t9, // 0x5c
        melee_sai_t9_dw, // 0x5d
        melee_bowie_bloody, // 0x5e
        eq_sticky_grenade, // 0x5f
        special_ballisticknife_t9_dw, // 0x60
        hash_3f47e8be065a0dc0, // 0x61
        ww_ieu_shockwave_t9, // 0x62
        melee_sledgehammer_t9, // 0x63
        sig_blade, // 0x64
        pistol_burst_t9, // 0x65
        hash_4385cf507401820f, // 0x66
        napalm_strike, // 0x67
        sniper_accurate_t9, // 0x68
        ar_fastfire_t9, // 0x69
        melee_wakizashi_t9, // 0x6a
        hero_pineapplegun, // 0x6b
        hash_48206b17d50533c2, // 0x6c
        sniper_quickscope_t9, // 0x6d
        ability_dog, // 0x6e
        straferun, // 0x6f
        eq_seeker_mine, // 0x70
        ww_crossbow_t8, // 0x71
        recon_car, // 0x72
        hash_4b1854c2ff5135b2, // 0x73
        snowball, // 0x74
        feature_custom_class_9, // 0x75
        feature_custom_class_8, // 0x76
        feature_custom_class_3, // 0x77
        feature_custom_class_2, // 0x78
        feature_custom_class_1, // 0x79
        feature_custom_class_7, // 0x7a
        feature_custom_class_6, // 0x7b
        feature_custom_class_5, // 0x7c
        feature_custom_class_4, // 0x7d
        uav, // 0x7e
        eq_concertina_wire, // 0x7f
        feature_custom_class_10, // 0x80
        ar_slowhandling_t9, // 0x81
        eq_acid_bomb, // 0x82
        gadget_spawnbeacon, // 0x83
        ac130, // 0x84
        tr_precisionsemi_t9, // 0x85
        helicopter_comlink, // 0x86
        gadget_armor, // 0x87
        tr_damagesemi_t9, // 0x88
        feature_cac, // 0x89
        tomahawk_t8, // 0x8a
        shotgun_pump_t9, // 0x8b
        gadget_health_boost, // 0x8c
        spectre_grenade, // 0x8d
        eq_flash_grenade, // 0x8e
        hash_55c23f24d806e3a6, // 0x8f
        bare_hands, // 0x90
        ar_slowfire_t9, // 0x91
        tr_powerburst_t9, // 0x92
        trophy_system, // 0x93
        ray_gun_mk2, // 0x94
        tr_longburst_t9, // 0x95
        nuke, // 0x96
        ww_ray_rifle_t9, // 0x97
        smg_standard_t9, // 0x98
        sig_bow_flame, // 0x99
        eq_slow_grenade, // 0x9a
        special_nailgun_t9, // 0x9b
        smg_accurate_t9, // 0x9c
        hash_603c083704cefb0c, // 0x9d
        jetfighter, // 0x9e
        smg_heavy_t9, // 0x9f
        tear_gas, // 0xa0
        eq_molotov, // 0xa1
        smg_fastfire_t9, // 0xa2
        lmg_light_t9, // 0xa3
        melee_scythe_t9, // 0xa4
        ai_tank_marker, // 0xa5
        gadget_cleanse, // 0xa6
        ar_british_t9, // 0xa7
        hero_flamethrower, // 0xa8
        melee_battleaxe_t9, // 0xa9
        ww_axe_gun_melee_t9, // 0xaa
        sniper_standard_t9, // 0xab
        melee_cane_t9, // 0xac
        smg_spray_t9, // 0xad
        hero_annihilator, // 0xae
        ar_fasthandling_t9, // 0xaf
        ar_mobility_t9, // 0xb0
        planemortar, // 0xb1
        sniper_cannon_t9, // 0xb2
        shotgun_semiauto_t9, // 0xb3
        lmg_fastfire_t9, // 0xb4
        ar_standard_t9, // 0xb5
        weapon_null, // 0xb6
        satchel_charge, // 0xb7
        default_specialist_equipment, // 0xb8
        gadget_health_regen_squad, // 0xb9
        hash_76b56e7e0b3b7aac, // 0xba
        eq_decoy_grenade, // 0xbb
        smg_season6_t9, // 0xbc
        smg_semiauto_t9, // 0xbd
        ray_gun, // 0xbe
        hash_788c96e19cc7a46e, // 0xbf
        claymore, // 0xc0
        smg_handling_t9, // 0xc1
        cymbal_monkey, // 0xc2
        shotgun_fullauto_t9, // 0xc3
        smg_flechette_t9, // 0xc4
        hash_7ab3f9a730359659, // 0xc5
        gadget_icepick, // 0xc6
        ww_mega_barrel_fullauto_micro_missile_t9, // 0xc7
        basketball, // 0xc8
        gadget_camo, // 0xc9
        lmg_slowfire_t9 // 0xca
    };

    // idx 0x1 members: 0x61
    enum hash_4b8d95aacf149fb9 {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        ar_season6_t9, // 0x2
        lmg_accurate_t9, // 0x3
        melee_etool_t9, // 0x4
        ray_gun_mk2z, // 0x5
        ray_gun_mk2y, // 0x6
        ray_gun_mk2x, // 0x7
        sniper_powersemi_t9, // 0x8
        hash_c21b61b32a5d972, // 0x9
        ar_damage_t9, // 0xa
        homunculus, // 0xb
        spknifeork, // 0xc
        shotgun_leveraction_t9, // 0xd
        melee_bowie, // 0xe
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0xf
        ww_random_ray_gun1, // 0x10
        hash_165cf52ce418f5a1, // 0x11
        hash_18696150427f2efb, // 0x12
        special_crossbow_t9, // 0x13
        ww_blundergat_t8, // 0x14
        pistol_fullauto_t9, // 0x15
        special_grenadelauncher_t9, // 0x16
        melee_machete_t9, // 0x17
        launcher_freefire_t9, // 0x18
        ar_accurate_t9, // 0x19
        ww_crossbow_impaler_t8, // 0x1a
        ar_soviet_t9, // 0x1b
        ww_freezegun_t8, // 0x1c
        smg_cqb_t9, // 0x1d
        knife_loadout, // 0x1e
        hash_28fdaa999c8aa3af, // 0x1f
        hash_2ea46ca74ebdfcac, // 0x20
        smg_capacity_t9, // 0x21
        melee_baseballbat_t9, // 0x22
        pistol_shotgun_t9, // 0x23
        spork_alcatraz, // 0x24
        pistol_semiauto_t9, // 0x25
        melee_mace_t9, // 0x26
        smg_burst_t9, // 0x27
        pistol_revolver_t9, // 0x28
        ww_mega_barrel_fullauto_copycat_t9, // 0x29
        melee_coldwar_t9_dw, // 0x2a
        launcher_standard_t9, // 0x2b
        melee_sai_t9_dw, // 0x2c
        melee_bowie_bloody, // 0x2d
        special_ballisticknife_t9_dw, // 0x2e
        hash_3f47e8be065a0dc0, // 0x2f
        ww_ieu_shockwave_t9, // 0x30
        melee_sledgehammer_t9, // 0x31
        pistol_burst_t9, // 0x32
        hash_4385cf507401820f, // 0x33
        sniper_accurate_t9, // 0x34
        ar_fastfire_t9, // 0x35
        melee_wakizashi_t9, // 0x36
        hash_48206b17d50533c2, // 0x37
        sniper_quickscope_t9, // 0x38
        ww_crossbow_t8, // 0x39
        ar_slowhandling_t9, // 0x3a
        tr_precisionsemi_t9, // 0x3b
        tr_damagesemi_t9, // 0x3c
        shotgun_pump_t9, // 0x3d
        hash_55c23f24d806e3a6, // 0x3e
        ar_slowfire_t9, // 0x3f
        tr_powerburst_t9, // 0x40
        ray_gun_mk2, // 0x41
        tr_longburst_t9, // 0x42
        ww_ray_rifle_t9, // 0x43
        smg_standard_t9, // 0x44
        special_nailgun_t9, // 0x45
        smg_accurate_t9, // 0x46
        hash_603c083704cefb0c, // 0x47
        smg_heavy_t9, // 0x48
        smg_fastfire_t9, // 0x49
        lmg_light_t9, // 0x4a
        melee_scythe_t9, // 0x4b
        ar_british_t9, // 0x4c
        melee_battleaxe_t9, // 0x4d
        ww_axe_gun_melee_t9, // 0x4e
        sniper_standard_t9, // 0x4f
        melee_cane_t9, // 0x50
        smg_spray_t9, // 0x51
        ar_fasthandling_t9, // 0x52
        ar_mobility_t9, // 0x53
        sniper_cannon_t9, // 0x54
        shotgun_semiauto_t9, // 0x55
        lmg_fastfire_t9, // 0x56
        ar_standard_t9, // 0x57
        smg_season6_t9, // 0x58
        smg_semiauto_t9, // 0x59
        ray_gun, // 0x5a
        smg_handling_t9, // 0x5b
        shotgun_fullauto_t9, // 0x5c
        smg_flechette_t9, // 0x5d
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x5e
        basketball, // 0x5f
        lmg_slowfire_t9 // 0x60
    };

    // idx 0x2 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x3 members: 0x20
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        spy_med_pack, // 0x8
        sig_lmg, // 0x9
        spy_wanted_order, // 0xa
        swat_team, // 0xb
        supplydrop_marker, // 0xc
        chopper_gunner, // 0xd
        drone_squadron, // 0xe
        overwatch_helicopter, // 0xf
        napalm_strike, // 0x10
        hero_pineapplegun, // 0x11
        ability_dog, // 0x12
        straferun, // 0x13
        recon_car, // 0x14
        uav, // 0x15
        ac130, // 0x16
        helicopter_comlink, // 0x17
        nuke, // 0x18
        sig_bow_flame, // 0x19
        jetfighter, // 0x1a
        ai_tank_marker, // 0x1b
        helicopter_guard, // 0x1c
        hero_flamethrower, // 0x1d
        hero_annihilator, // 0x1e
        planemortar // 0x1f
    };

    // idx 0x4 members: 0x36
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        trophy_system_spy, // 0x16
        eq_stimshot, // 0x17
        gadget_jammer, // 0x18
        hash_3ab58e40011df941, // 0x19
        eq_sticky_grenade, // 0x1a
        eq_seeker_mine, // 0x1b
        hash_4b1854c2ff5135b2, // 0x1c
        snowball, // 0x1d
        eq_concertina_wire, // 0x1e
        eq_acid_bomb, // 0x1f
        gadget_spawnbeacon, // 0x20
        gadget_armor, // 0x21
        tomahawk_t8, // 0x22
        gadget_health_boost, // 0x23
        spectre_grenade, // 0x24
        eq_flash_grenade, // 0x25
        trophy_system, // 0x26
        eq_slow_grenade, // 0x27
        tear_gas, // 0x28
        eq_molotov, // 0x29
        gadget_cleanse, // 0x2a
        satchel_charge, // 0x2b
        default_specialist_equipment, // 0x2c
        gadget_health_regen_squad, // 0x2d
        hash_76b56e7e0b3b7aac, // 0x2e
        eq_decoy_grenade, // 0x2f
        hash_788c96e19cc7a46e, // 0x30
        claymore, // 0x31
        cymbal_monkey, // 0x32
        hash_7ab3f9a730359659, // 0x33
        gadget_icepick, // 0x34
        gadget_camo // 0x35
    };

    // idx 0x5 members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0x6 members: 0x3e
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_phdslider, // 0x1
        talent_engineer, // 0x2
        talent_coldblooded, // 0x3
        hash_9fb2125b3e673e5, // 0x4
        gear_armor, // 0x5
        hash_cd70e712f842296, // 0x6
        talent_tracker, // 0x7
        hash_101808cdfcd390d6, // 0x8
        hash_128256155e755170, // 0x9
        hash_16cfc7f70dbd8712, // 0xa
        talent_flakjacket, // 0xb
        talent_logistics, // 0xc
        talent_looter, // 0xd
        gadget_medicalinjectiongun, // 0xe
        hash_1d8863d0b864a48b, // 0xf
        hash_1db03fa9862ba330, // 0x10
        hash_20290a682a974c94, // 0x11
        talent_dexterity, // 0x12
        hash_249e75e962ea5275, // 0x13
        talent_resistance, // 0x14
        gear_awareness, // 0x15
        hash_2c3a32e6e2afd1f2, // 0x16
        hash_311283e3107dec74, // 0x17
        talent_lightweight, // 0x18
        talent_awareness, // 0x19
        gear_equipmentcharge, // 0x1a
        talent_phdslider_1, // 0x1b
        hash_38c08136902fd553, // 0x1c
        hash_39045b0020cc3e00, // 0x1d
        hash_3c323c7819b10b4d, // 0x1e
        hash_3c60422123a9075b, // 0x1f
        talent_scavenger, // 0x20
        talent_skulker, // 0x21
        gear_scorestreakcharge, // 0x22
        talent_ghost, // 0x23
        hash_4f80a2c3398e97c9, // 0x24
        talent_elemental_pop, // 0x25
        talent_brawler, // 0x26
        talent_quartermaster, // 0x27
        hash_59dbe7f72baaa0f0, // 0x28
        hash_59dbe8f72baaa2a3, // 0x29
        hash_59dbecf72baaa96f, // 0x2a
        hash_59dbedf72baaab22, // 0x2b
        hash_59dbeef72baaacd5, // 0x2c
        hash_5c80935e7a319f21, // 0x2d
        talent_paranoia, // 0x2e
        talent_teamlink, // 0x2f
        talent_deadsilence, // 0x30
        hash_646fc27884bdaa02, // 0x31
        gear_medicalinjectiongun, // 0x32
        hash_661cd0d6fb33878c, // 0x33
        talent_spycraft, // 0x34
        hash_7321f9058ee65217, // 0x35
        hash_7716cb3888f5dd8a, // 0x36
        talent_elemental_pop_2, // 0x37
        talent_elemental_pop_3, // 0x38
        talent_elemental_pop_1, // 0x39
        talent_elemental_pop_4, // 0x3a
        talent_elemental_pop_5, // 0x3b
        hash_7ca561e40dc3c5de, // 0x3c
        hash_7f79d3ba6ed1a1d7 // 0x3d
    };

    // idx 0x7 members: 0x16
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        talent_mulekick, // 0x3
        talent_deathperception, // 0x4
        talent_mulekick_1, // 0x5
        talent_mulekick_2, // 0x6
        talent_mulekick_3, // 0x7
        talent_mulekick_4, // 0x8
        talent_mulekick_5, // 0x9
        talent_phdslider_4, // 0xa
        talent_phdslider_5, // 0xb
        talent_phdslider_2, // 0xc
        talent_phdslider_3, // 0xd
        hash_4a12859000892dda, // 0xe
        hash_639ebbcda56447e7, // 0xf
        bonuscard_primary_gunfighter, // 0x10
        talent_deathperception_2, // 0x11
        talent_deathperception_3, // 0x12
        talent_deathperception_1, // 0x13
        talent_deathperception_4, // 0x14
        talent_deathperception_5 // 0x15
    };

    // idx 0x8 members: 0x11f
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x1
        talent_gungho, // 0x2
        talent_phdslider, // 0x3
        tr_fastburst_t9, // 0x4
        talent_engineer, // 0x5
        napalm_strike_zm, // 0x6
        ability_smart_cover, // 0x7
        dart, // 0x8
        ultimate_turret, // 0x9
        hash_5a7fd1af4a1d5c9, // 0xa
        ar_season6_t9, // 0xb
        hash_7a083f7ba43fa06, // 0xc
        talent_coldblooded, // 0xd
        lmg_accurate_t9, // 0xe
        melee_etool_t9, // 0xf
        ray_gun_mk2z, // 0x10
        ray_gun_mk2y, // 0x11
        ray_gun_mk2x, // 0x12
        hash_9fb2125b3e673e5, // 0x13
        sniper_powersemi_t9, // 0x14
        eq_wraith_fire, // 0x15
        gear_armor, // 0x16
        counteruav, // 0x17
        hash_cd70e712f842296, // 0x18
        talent_tracker, // 0x19
        missile_turret, // 0x1a
        eq_shroud, // 0x1b
        gadget_supplypod, // 0x1c
        hash_101808cdfcd390d6, // 0x1d
        ar_damage_t9, // 0x1e
        homunculus, // 0x1f
        spknifeork, // 0x20
        shotgun_leveraction_t9, // 0x21
        melee_bowie, // 0x22
        hash_128256155e755170, // 0x23
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x24
        ww_random_ray_gun1, // 0x25
        bonuscard_underkill, // 0x26
        recon_plane, // 0x27
        hash_16cfc7f70dbd8712, // 0x28
        bonuscard_perk_1_greed, // 0x29
        sig_buckler_dw, // 0x2a
        talent_mulekick, // 0x2b
        talent_flakjacket, // 0x2c
        hash_18696150427f2efb, // 0x2d
        gadget_vision_pulse, // 0x2e
        waterballoon, // 0x2f
        special_crossbow_t9, // 0x30
        weapon_armor, // 0x31
        eq_arm_blade, // 0x32
        talent_logistics, // 0x33
        ww_blundergat_t8, // 0x34
        gadget_heat_wave, // 0x35
        eq_localheal, // 0x36
        hoverjet, // 0x37
        talent_looter, // 0x38
        gadget_medicalinjectiongun, // 0x39
        hash_1d8863d0b864a48b, // 0x3a
        hash_1db03fa9862ba330, // 0x3b
        nightingale, // 0x3c
        talent_deathperception, // 0x3d
        pistol_fullauto_t9, // 0x3e
        remote_missile, // 0x3f
        gadget_smart_cover, // 0x40
        hash_20290a682a974c94, // 0x41
        willy_pete, // 0x42
        eq_emp_grenade, // 0x43
        special_grenadelauncher_t9, // 0x44
        melee_machete_t9, // 0x45
        talent_dexterity, // 0x46
        launcher_freefire_t9, // 0x47
        hash_249e75e962ea5275, // 0x48
        ar_accurate_t9, // 0x49
        sig_lmg, // 0x4a
        ww_crossbow_impaler_t8, // 0x4b
        ar_soviet_t9, // 0x4c
        ww_freezegun_t8, // 0x4d
        frag_grenade, // 0x4e
        smg_cqb_t9, // 0x4f
        knife_loadout, // 0x50
        feature_default_class_1, // 0x51
        feature_default_class_3, // 0x52
        feature_default_class_2, // 0x53
        feature_default_class_5, // 0x54
        feature_default_class_4, // 0x55
        feature_default_class_6, // 0x56
        hash_28fdaa999c8aa3af, // 0x57
        talent_resistance, // 0x58
        spy_wanted_order, // 0x59
        swat_team, // 0x5a
        gear_awareness, // 0x5b
        land_mine, // 0x5c
        hatchet, // 0x5d
        hash_2c3a32e6e2afd1f2, // 0x5e
        talent_mulekick_1, // 0x5f
        talent_mulekick_2, // 0x60
        talent_mulekick_3, // 0x61
        talent_mulekick_4, // 0x62
        talent_mulekick_5, // 0x63
        supplydrop_marker, // 0x64
        mute_smoke, // 0x65
        hash_2ea46ca74ebdfcac, // 0x66
        smg_capacity_t9, // 0x67
        chopper_gunner, // 0x68
        melee_baseballbat_t9, // 0x69
        hash_311283e3107dec74, // 0x6a
        null_offhand_secondary, // 0x6b
        gadget_health_regen, // 0x6c
        hash_31be8125c7d0f273, // 0x6d
        pistol_shotgun_t9, // 0x6e
        listening_device, // 0x6f
        talent_lightweight, // 0x70
        talent_awareness, // 0x71
        spork_alcatraz, // 0x72
        drone_squadron, // 0x73
        gear_equipmentcharge, // 0x74
        talent_phdslider_4, // 0x75
        talent_phdslider_5, // 0x76
        talent_phdslider_2, // 0x77
        talent_phdslider_3, // 0x78
        talent_phdslider_1, // 0x79
        pistol_semiauto_t9, // 0x7a
        melee_mace_t9, // 0x7b
        null_offhand_primary, // 0x7c
        smg_burst_t9, // 0x7d
        hash_3507beb47a6b634e, // 0x7e
        pistol_revolver_t9, // 0x7f
        eq_stimshot, // 0x80
        ww_mega_barrel_fullauto_copycat_t9, // 0x81
        hash_38c08136902fd553, // 0x82
        hash_39045b0020cc3e00, // 0x83
        overwatch_helicopter, // 0x84
        gadget_jammer, // 0x85
        hash_3ab58e40011df941, // 0x86
        melee_coldwar_t9_dw, // 0x87
        launcher_standard_t9, // 0x88
        melee_sai_t9_dw, // 0x89
        hash_3c323c7819b10b4d, // 0x8a
        hash_3c60422123a9075b, // 0x8b
        melee_bowie_bloody, // 0x8c
        eq_sticky_grenade, // 0x8d
        special_ballisticknife_t9_dw, // 0x8e
        hash_3f47e8be065a0dc0, // 0x8f
        ww_ieu_shockwave_t9, // 0x90
        melee_sledgehammer_t9, // 0x91
        sig_blade, // 0x92
        talent_scavenger, // 0x93
        pistol_burst_t9, // 0x94
        hash_4385cf507401820f, // 0x95
        napalm_strike, // 0x96
        sniper_accurate_t9, // 0x97
        ar_fastfire_t9, // 0x98
        melee_wakizashi_t9, // 0x99
        hero_pineapplegun, // 0x9a
        talent_skulker, // 0x9b
        hash_48206b17d50533c2, // 0x9c
        sniper_quickscope_t9, // 0x9d
        ability_dog, // 0x9e
        straferun, // 0x9f
        hash_4a12859000892dda, // 0xa0
        eq_seeker_mine, // 0xa1
        ww_crossbow_t8, // 0xa2
        recon_car, // 0xa3
        hash_4b1854c2ff5135b2, // 0xa4
        snowball, // 0xa5
        feature_custom_class_9, // 0xa6
        feature_custom_class_8, // 0xa7
        feature_custom_class_3, // 0xa8
        feature_custom_class_2, // 0xa9
        feature_custom_class_1, // 0xaa
        feature_custom_class_7, // 0xab
        feature_custom_class_6, // 0xac
        feature_custom_class_5, // 0xad
        feature_custom_class_4, // 0xae
        uav, // 0xaf
        eq_concertina_wire, // 0xb0
        gear_scorestreakcharge, // 0xb1
        feature_custom_class_10, // 0xb2
        ar_slowhandling_t9, // 0xb3
        eq_acid_bomb, // 0xb4
        gadget_spawnbeacon, // 0xb5
        ac130, // 0xb6
        talent_ghost, // 0xb7
        hash_4f80a2c3398e97c9, // 0xb8
        tr_precisionsemi_t9, // 0xb9
        helicopter_comlink, // 0xba
        gadget_armor, // 0xbb
        tr_damagesemi_t9, // 0xbc
        feature_cac, // 0xbd
        talent_elemental_pop, // 0xbe
        tomahawk_t8, // 0xbf
        shotgun_pump_t9, // 0xc0
        gadget_health_boost, // 0xc1
        spectre_grenade, // 0xc2
        talent_brawler, // 0xc3
        eq_flash_grenade, // 0xc4
        hash_55c23f24d806e3a6, // 0xc5
        bare_hands, // 0xc6
        ar_slowfire_t9, // 0xc7
        tr_powerburst_t9, // 0xc8
        trophy_system, // 0xc9
        talent_quartermaster, // 0xca
        hash_59dbe7f72baaa0f0, // 0xcb
        hash_59dbe8f72baaa2a3, // 0xcc
        hash_59dbecf72baaa96f, // 0xcd
        hash_59dbedf72baaab22, // 0xce
        hash_59dbeef72baaacd5, // 0xcf
        ray_gun_mk2, // 0xd0
        tr_longburst_t9, // 0xd1
        nuke, // 0xd2
        ww_ray_rifle_t9, // 0xd3
        smg_standard_t9, // 0xd4
        hash_5c80935e7a319f21, // 0xd5
        sig_bow_flame, // 0xd6
        eq_slow_grenade, // 0xd7
        talent_paranoia, // 0xd8
        special_nailgun_t9, // 0xd9
        smg_accurate_t9, // 0xda
        hash_603c083704cefb0c, // 0xdb
        jetfighter, // 0xdc
        talent_teamlink, // 0xdd
        smg_heavy_t9, // 0xde
        talent_deadsilence, // 0xdf
        tear_gas, // 0xe0
        hash_639ebbcda56447e7, // 0xe1
        eq_molotov, // 0xe2
        smg_fastfire_t9, // 0xe3
        hash_646fc27884bdaa02, // 0xe4
        bonuscard_primary_gunfighter, // 0xe5
        lmg_light_t9, // 0xe6
        melee_scythe_t9, // 0xe7
        ai_tank_marker, // 0xe8
        gear_medicalinjectiongun, // 0xe9
        hash_661cd0d6fb33878c, // 0xea
        gadget_cleanse, // 0xeb
        ar_british_t9, // 0xec
        hero_flamethrower, // 0xed
        melee_battleaxe_t9, // 0xee
        ww_axe_gun_melee_t9, // 0xef
        sniper_standard_t9, // 0xf0
        melee_cane_t9, // 0xf1
        smg_spray_t9, // 0xf2
        hero_annihilator, // 0xf3
        ar_fasthandling_t9, // 0xf4
        ar_mobility_t9, // 0xf5
        planemortar, // 0xf6
        sniper_cannon_t9, // 0xf7
        shotgun_semiauto_t9, // 0xf8
        talent_deathperception_2, // 0xf9
        talent_deathperception_3, // 0xfa
        talent_deathperception_1, // 0xfb
        talent_deathperception_4, // 0xfc
        talent_deathperception_5, // 0xfd
        lmg_fastfire_t9, // 0xfe
        ar_standard_t9, // 0xff
        weapon_null, // 0x100
        talent_spycraft, // 0x101
        hash_7321f9058ee65217, // 0x102
        satchel_charge, // 0x103
        default_specialist_equipment, // 0x104
        gadget_health_regen_squad, // 0x105
        hash_76b56e7e0b3b7aac, // 0x106
        eq_decoy_grenade, // 0x107
        hash_7716cb3888f5dd8a, // 0x108
        smg_season6_t9, // 0x109
        smg_semiauto_t9, // 0x10a
        ray_gun, // 0x10b
        hash_788c96e19cc7a46e, // 0x10c
        claymore, // 0x10d
        talent_elemental_pop_2, // 0x10e
        talent_elemental_pop_3, // 0x10f
        talent_elemental_pop_1, // 0x110
        talent_elemental_pop_4, // 0x111
        talent_elemental_pop_5, // 0x112
        smg_handling_t9, // 0x113
        cymbal_monkey, // 0x114
        shotgun_fullauto_t9, // 0x115
        smg_flechette_t9, // 0x116
        hash_7ab3f9a730359659, // 0x117
        gadget_icepick, // 0x118
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x119
        hash_7ca561e40dc3c5de, // 0x11a
        basketball, // 0x11b
        gadget_camo, // 0x11c
        hash_7f79d3ba6ed1a1d7, // 0x11d
        lmg_slowfire_t9 // 0x11e
    };

    // idx 0x9 members: 0x3b
    enum hash_38abf0e3af75eb5b {
        koth, // 0x0
        sas, // 0x1
        spy, // 0x2
        prop, // 0x3
        control, // 0x4
        dm, // 0x5
        hash_8985b07b541d6a8, // 0x6
        ct, // 0x7
        sd, // 0x8
        fireteam_koth, // 0x9
        conf, // 0xa
        scream, // 0xb
        tdm10v10, // 0xc
        ball, // 0xd
        oic, // 0xe
        control_hc, // 0xf
        hash_1e1515dc71a38bb9, // 0x10
        dom10v10, // 0x11
        fireteam_satlink, // 0x12
        hash_2561ffe336f1f9e3, // 0x13
        hash_2767e356860246dd, // 0x14
        fireteam_elimination, // 0x15
        tdm_hc, // 0x16
        dom_hc, // 0x17
        dom_dm, // 0x18
        hash_2dee5072d8b3cbe8, // 0x19
        fireteam, // 0x1a
        hash_35e9174ce58d5bc2, // 0x1b
        escort, // 0x1c
        fireteam_dirty_bomb, // 0x1d
        conf_hc, // 0x1e
        frontline, // 0x1f
        dm_hc, // 0x20
        dem, // 0x21
        dom, // 0x22
        hash_4b3f8badcee0b623, // 0x23
        payload, // 0x24
        dropkick, // 0x25
        bounty, // 0x26
        hostage, // 0x27
        gun, // 0x28
        hash_55786ad6106fde1c, // 0x29
        tdm, // 0x2a
        hash_5a63e4bb11fd4fa8, // 0x2b
        koth10v10, // 0x2c
        war12v12, // 0x2d
        war, // 0x2e
        gunfight, // 0x2f
        hash_6463dea5fa2dbea5, // 0x30
        vip, // 0x31
        dem_hc, // 0x32
        hash_6b09c57ad0a48988, // 0x33
        hash_6bb45d707ccd80ee, // 0x34
        hash_7020e89c237486d0, // 0x35
        infil, // 0x36
        clean, // 0x37
        ctf, // 0x38
        sd_hc, // 0x39
        infect // 0x3a
    };

    // idx 0xa members: 0x3
    enum hash_10c36141534bc4b3 {
        koth, // 0x0
        control, // 0x1
        sd // 0x2
    };

    // idx 0xb members: 0x2b
    enum mpmaps {
        mp_sm_game_show, // 0x0
        mp_miami, // 0x1
        mp_moscow, // 0x2
        mp_amerika, // 0x3
        wz_zoo, // 0x4
        mp_satellite, // 0x5
        mp_cartel, // 0x6
        mp_sm_finance, // 0x7
        mp_raid_rm, // 0x8
        mp_express_rm, // 0x9
        mp_drivein_rm, // 0xa
        hash_2a5c9d82575f9045, // 0xb
        wz_sanatorium, // 0xc
        wz_golova, // 0xd
        mp_nuketown6, // 0xe
        mp_sm_amsterdam, // 0xf
        wz_ski_slopes, // 0x10
        mp_firebase, // 0x11
        mp_sm_market, // 0x12
        mp_kgb, // 0x13
        mp_mall, // 0x14
        mp_echelon, // 0x15
        mp_cliffhanger, // 0x16
        hash_4f0163e68a9333ac, // 0x17
        mp_village_rm, // 0x18
        mp_zoo_rm, // 0x19
        mp_slums_rm, // 0x1a
        mp_sm_deptstore, // 0x1b
        mp_sm_gas_station, // 0x1c
        mp_dune, // 0x1d
        mp_sm_vault, // 0x1e
        mp_black_sea, // 0x1f
        mp_sm_central, // 0x20
        mp_tank, // 0x21
        mp_miami_strike, // 0x22
        mp_apocalypse, // 0x23
        mp_tundra, // 0x24
        mp_hijacked_rm, // 0x25
        wz_duga, // 0x26
        mp_sm_berlin_tunnel, // 0x27
        wz_forest, // 0x28
        wz_russia, // 0x29
        mp_paintball_rm // 0x2a
    };

    // idx 0xc members: 0x1c
    enum hash_f63c30a3cf473b7 {
        mp_sm_game_show, // 0x0
        mp_amerika, // 0x1
        mp_satellite, // 0x2
        mp_sm_finance, // 0x3
        mp_raid_rm, // 0x4
        mp_express_rm, // 0x5
        mp_drivein_rm, // 0x6
        hash_2a5c9d82575f9045, // 0x7
        mp_nuketown6, // 0x8
        mp_sm_amsterdam, // 0x9
        mp_sm_market, // 0xa
        mp_kgb, // 0xb
        mp_echelon, // 0xc
        mp_cliffhanger, // 0xd
        hash_4f0163e68a9333ac, // 0xe
        mp_village_rm, // 0xf
        mp_zoo_rm, // 0x10
        mp_slums_rm, // 0x11
        mp_sm_deptstore, // 0x12
        mp_sm_gas_station, // 0x13
        mp_dune, // 0x14
        mp_sm_vault, // 0x15
        mp_tank, // 0x16
        mp_apocalypse, // 0x17
        mp_tundra, // 0x18
        mp_hijacked_rm, // 0x19
        mp_sm_berlin_tunnel, // 0x1a
        mp_paintball_rm // 0x1b
    };

    // idx 0xd members: 0x4
    enum hash_4e52d9b748f0a4a7 {
        hash_2600390d2c09814, // 0x0
        hash_2d314630debbdb2d, // 0x1
        hash_38d3b5707998a8bd, // 0x2
        hash_47033e679d8e8a1a // 0x3
    };

    // idx 0xe members: 0x15
    enum cp_character_customization {
        hash_5a56be47ad8b81c, // 0x0
        hash_f256f6e520f5db9, // 0x1
        hash_147b933a24ec2f87, // 0x2
        hash_1f7d8f60ddc1873a, // 0x3
        hash_21e25e6cfb186cbe, // 0x4
        hash_2901ac8b96de7092, // 0x5
        hash_2ffb9d97c10f7898, // 0x6
        hash_355ec43fbee7e1d6, // 0x7
        hash_362c3d20cd82d239, // 0x8
        hash_3bef0d3600b6f4b5, // 0x9
        hash_3c50039c7c2a2769, // 0xa
        hash_433ce4bffb28e579, // 0xb
        hash_46628495be54e1ae, // 0xc
        hash_59088eb02dac46a0, // 0xd
        hash_5b54f4a7aa8fd03f, // 0xe
        hash_67cb41a35e8e6061, // 0xf
        hash_6b8d7a6d60989282, // 0x10
        hash_6defb3c44fe08ec3, // 0x11
        hash_70a9e45a65a7e3f1, // 0x12
        hash_72044fa9ca18509a, // 0x13
        hash_7f2aea5bed100015 // 0x14
    };

    // idx 0xf members: 0x1
    enum hash_440e27b396356913 {
        hash_24e4e0f3373914fe // 0x0
    };

    // idx 0x10 members: 0x4
    enum hash_66085fda26016fc1 {
        hash_20e3de30a8b3eb2e, // 0x0
        hash_43b74b05ee8ebd93, // 0x1
        hash_534c8d705e3b7bb3, // 0x2
        hash_5d3210690b50d7be // 0x3
    };

    // idx 0x11 members: 0x22
    enum hash_29f81b1301bd1fba {
        c_t9_cub_pl_dgi_brawler, // 0x0
        c_t9_cub_pl_dgi_warlord, // 0x1
        po_c_t9_cub_pl_dgi_slasher_brown, // 0x2
        po_c_t9_cub_pl_dgi_flick_variant01, // 0x3
        po_c_t9_cub_pl_dgi_flick_variant02, // 0x4
        c_t9_cub_pl_dgi_tropas_pc, // 0x5
        c_t9_cub_pl_dgi_tropas_sy, // 0x6
        c_t9_cub_pl_dgi_tropas_ms, // 0x7
        c_t9_cub_pl_dgi_el_jefe, // 0x8
        c_t9_cub_pl_dgi_general, // 0x9
        c_t9_cub_pl_sicario_urbano, // 0xa
        c_t9_cub_pl_dgi_slasher, // 0xb
        c_t9_cub_pl_dgi_mechanic, // 0xc
        c_t9_cub_pl_dgi_havana, // 0xd
        c_t9_cub_pl_dgi_hitman, // 0xe
        po_c_t9_cub_pl_dgi_barrio, // 0xf
        c_t9_cub_pl_dgi_lucha_v2, // 0x10
        c_t9_cub_pl_dgi_rebel_leader, // 0x11
        c_t9_cub_pl_dgi_lucha, // 0x12
        c_t9_cub_pl_dgi_bongo, // 0x13
        c_t9_cub_pl_dgi_sicario_eldoctor, // 0x14
        c_t9_cub_pl_dgi_flick, // 0x15
        c_t9_cub_pl_dgi_sicario_santeria, // 0x16
        po_c_t9_cub_pl_dgi_rebel_leader_v2, // 0x17
        po_c_t9_cub_pl_dgi_rebel_leader_v1, // 0x18
        po_c_t9_cub_pl_dgi_slasher_winter, // 0x19
        c_t9_cub_pl_sicario, // 0x1a
        c_t9_cub_pl_sicario_miami, // 0x1b
        mtx_outfit_mp_cub_dgi_infiltration, // 0x1c
        c_t9_cub_pl_dgi_jack_sy, // 0x1d
        c_t9_cub_pl_dgi_jack_pc, // 0x1e
        c_t9_cub_pl_dgi_jack_ms, // 0x1f
        c_t9_cub_pl_dgi_jack_base, // 0x20
        c_t9_cub_pl_dgi_commando // 0x21
    };

    // idx 0x12 members: 0x4
    enum hash_5a65280ea064bab3 {
        c_t9_eg_pl_quicksand_slither, // 0x0
        c_t9_eg_pl_quicksand_slither_1, // 0x1
        hash_33f82242744b4a83, // 0x2
        c_t9_eg_pl_quicksand // 0x3
    };

    // idx 0x13 members: 0x3
    enum hash_5ce6dadd2ab937a5 {
        c_t9_esp_pl_goe_bomber, // 0x0
        c_t9_esp_pl_goe_bomber_dusty, // 0x1
        hash_6b2744508778ef0d // 0x2
    };

    // idx 0x14 members: 0xc
    enum hash_74f25244e08c2e1a {
        c_t9_fin_pl_wraith_burnout, // 0x0
        po_c_t9_fin_pl_wraith_variant03, // 0x1
        po_c_t9_fin_pl_wraith_variant02, // 0x2
        po_c_t9_fin_pl_wraith_variant01, // 0x3
        po_c_t9_fin_pl_wraith_variant04, // 0x4
        hash_2690d7f929e02e16, // 0x5
        c_t9_fin_pl_wraith, // 0x6
        hash_4190f32f9e84c1c1, // 0x7
        po_c_t9_fin_pl_wraith_white_queen_furious, // 0x8
        po_c_t9_fin_pl_wraith_white_queen_sandstorm, // 0x9
        c_t9_fin_pl_wraith_white_queen, // 0xa
        c_t9_fin_pl_wraith_havoc // 0xb
    };

    // idx 0x15 members: 0xa
    enum hash_206ac9ed3740c51e {
        c_t9_fra_pl_dgse_dakar_bandlands, // 0x0
        c_t9_fra_pl_dgse_amped, // 0x1
        c_t9_fra_pl_dgse_dakar, // 0x2
        c_t9_fra_pl_dgse_arc, // 0x3
        c_t9_fra_pl_dgse_dakar_proven, // 0x4
        c_t9_fra_pl_dgse_mademoiselle, // 0x5
        po_c_t9_fra_pl_dgse_mademoiselle_variant02, // 0x6
        po_c_t9_fra_pl_dgse_mademoiselle_variant01, // 0x7
        c_t9_fra_pl_dgse_gign, // 0x8
        c_t9_fra_pl_dgse_infiltration // 0x9
    };

    // idx 0x16 members: 0x27
    enum hash_4ae36c0820937a7d {
        po_c_t9_gen_pl_esports_male_mutineers_home_ms, // 0x0
        po_c_t9_gen_pl_esports_male_mutineers_home_sy, // 0x1
        po_c_t9_gen_pl_esports_male_mutineers_home_pc, // 0x2
        po_c_t9_gen_pl_esports_male_optic_home_ms, // 0x3
        po_c_t9_gen_pl_esports_male_optic_home_sy, // 0x4
        po_c_t9_gen_pl_esports_male_optic_home_pc, // 0x5
        po_c_t9_gen_pl_esports_male_legion_home_ms, // 0x6
        po_c_t9_gen_pl_esports_male_legion_home_pc, // 0x7
        po_c_t9_gen_pl_esports_male_legion_home_sy, // 0x8
        po_c_t9_gen_pl_esports_male_ultra_home_pc, // 0x9
        po_c_t9_gen_pl_esports_male_ultra_home_sy, // 0xa
        po_c_t9_gen_pl_esports_male_ultra_home_ms, // 0xb
        po_c_t9_gen_pl_esports_male_surge_home_ms, // 0xc
        po_c_t9_gen_pl_esports_male_surge_home_pc, // 0xd
        po_c_t9_gen_pl_esports_male_surge_home_sy, // 0xe
        po_c_t9_gen_pl_esports_male_guerillas_home_pc, // 0xf
        po_c_t9_gen_pl_esports_male_guerillas_home_sy, // 0x10
        po_c_t9_gen_pl_esports_male_guerillas_home_ms, // 0x11
        po_c_t9_gen_pl_esports_male_rokkr_home_ms, // 0x12
        po_c_t9_gen_pl_esports_male_rokkr_home_sy, // 0x13
        po_c_t9_gen_pl_esports_male_rokkr_home_pc, // 0x14
        po_c_t9_gen_pl_esports_male_cdl_home_sy, // 0x15
        po_c_t9_gen_pl_esports_male_cdl_home_pc, // 0x16
        po_c_t9_gen_pl_esports_male_cdl_home_ms, // 0x17
        po_c_t9_gen_pl_esports_male_royalravens_home_ms, // 0x18
        po_c_t9_gen_pl_esports_male_royalravens_home_sy, // 0x19
        po_c_t9_gen_pl_esports_male_royalravens_home_pc, // 0x1a
        po_c_t9_gen_pl_esports_male_faze_home_ms, // 0x1b
        po_c_t9_gen_pl_esports_male_faze_home_sy, // 0x1c
        po_c_t9_gen_pl_esports_male_faze_home_pc, // 0x1d
        po_c_t9_gen_pl_esports_male_thieves_home_ms, // 0x1e
        po_c_t9_gen_pl_esports_male_thieves_home_sy, // 0x1f
        po_c_t9_gen_pl_esports_male_thieves_home_pc, // 0x20
        po_c_t9_gen_pl_esports_male_subliners_home_ms, // 0x21
        po_c_t9_gen_pl_esports_male_subliners_home_pc, // 0x22
        po_c_t9_gen_pl_esports_male_subliners_home_sy, // 0x23
        po_c_t9_gen_pl_esports_male_empire_home_ms, // 0x24
        po_c_t9_gen_pl_esports_male_empire_home_sy, // 0x25
        po_c_t9_gen_pl_esports_male_empire_home_pc // 0x26
    };

    // idx 0x17 members: 0x27
    enum hash_45c601f803af245f {
        po_c_t9_gen_pl_esports_male_rokkr_away_ms, // 0x0
        po_c_t9_gen_pl_esports_male_rokkr_away_pc, // 0x1
        po_c_t9_gen_pl_esports_male_rokkr_away_sy, // 0x2
        po_c_t9_gen_pl_esports_male_empire_away_ms, // 0x3
        po_c_t9_gen_pl_esports_male_empire_away_pc, // 0x4
        po_c_t9_gen_pl_esports_male_empire_away_sy, // 0x5
        po_c_t9_gen_pl_esports_male_cdl_away_pc, // 0x6
        po_c_t9_gen_pl_esports_male_cdl_away_sy, // 0x7
        po_c_t9_gen_pl_esports_male_cdl_away_ms, // 0x8
        po_c_t9_gen_pl_esports_male_faze_away_ms, // 0x9
        po_c_t9_gen_pl_esports_male_faze_away_pc, // 0xa
        po_c_t9_gen_pl_esports_male_faze_away_sy, // 0xb
        po_c_t9_gen_pl_esports_male_thieves_away_ms, // 0xc
        po_c_t9_gen_pl_esports_male_thieves_away_pc, // 0xd
        po_c_t9_gen_pl_esports_male_thieves_away_sy, // 0xe
        po_c_t9_gen_pl_esports_male_surge_away_ms, // 0xf
        po_c_t9_gen_pl_esports_male_surge_away_sy, // 0x10
        po_c_t9_gen_pl_esports_male_surge_away_pc, // 0x11
        po_c_t9_gen_pl_esports_male_optic_away_ms, // 0x12
        po_c_t9_gen_pl_esports_male_optic_away_pc, // 0x13
        po_c_t9_gen_pl_esports_male_optic_away_sy, // 0x14
        po_c_t9_gen_pl_esports_male_mutineers_away_pc, // 0x15
        po_c_t9_gen_pl_esports_male_mutineers_away_sy, // 0x16
        po_c_t9_gen_pl_esports_male_mutineers_away_ms, // 0x17
        po_c_t9_gen_pl_esports_male_guerillas_away_ms, // 0x18
        po_c_t9_gen_pl_esports_male_guerillas_away_sy, // 0x19
        po_c_t9_gen_pl_esports_male_guerillas_away_pc, // 0x1a
        po_c_t9_gen_pl_esports_male_legion_away_ms, // 0x1b
        po_c_t9_gen_pl_esports_male_legion_away_sy, // 0x1c
        po_c_t9_gen_pl_esports_male_legion_away_pc, // 0x1d
        po_c_t9_gen_pl_esports_male_subliners_away_sy, // 0x1e
        po_c_t9_gen_pl_esports_male_subliners_away_pc, // 0x1f
        po_c_t9_gen_pl_esports_male_subliners_away_ms, // 0x20
        po_c_t9_gen_pl_esports_male_royalravens_away_ms, // 0x21
        po_c_t9_gen_pl_esports_male_royalravens_away_pc, // 0x22
        po_c_t9_gen_pl_esports_male_royalravens_away_sy, // 0x23
        po_c_t9_gen_pl_esports_male_ultra_away_sy, // 0x24
        po_c_t9_gen_pl_esports_male_ultra_away_pc, // 0x25
        po_c_t9_gen_pl_esports_male_ultra_away_ms // 0x26
    };

    // idx 0x18 members: 0x11
    enum hash_701adfbe90b3b30e {
        c_t9_gen_pl_starter1_hunter_dash, // 0x0
        po_c_t9_gen_pl_starter1_hunter_dash_variant01, // 0x1
        po_c_t9_gen_pl_starter1_hunter_dash_variant02, // 0x2
        c_t9_gen_pl_starter1_hunter_inferno, // 0x3
        c_t9_gen_pl_starter1_hunter_killer, // 0x4
        c_t9_gen_pl_starter1_hunter_frontline_fall, // 0x5
        po_c_t9_gen_pl_starter1_hunger_eagle_eye_pitch, // 0x6
        c_t9_gen_pl_starter1_hunter_frontline_winter, // 0x7
        c_t9_gen_pl_starter1_hunter_frontline, // 0x8
        po_c_t9_gen_pl_starter1_hunger_eagle_eye_riptide, // 0x9
        c_t9_gen_pl_starter1_hunter_rescue_lethal, // 0xa
        po_c_t9_gen_pl_starter1_hunger_eagle_eye_arid, // 0xb
        po_c_t9_gen_pl_starter1_hunger_eagle_eye_autumn, // 0xc
        c_t9_gen_pl_starter1_hunter_rescue, // 0xd
        mtx_outfit_prt_mp_gen_starter1_default, // 0xe
        c_t9_gen_pl_starter1_hunter_eagle_eye, // 0xf
        c_t9_gen_pl_starter1_hunter_rescue_charge // 0x10
    };

    // idx 0x19 members: 0x14
    enum hash_7cb6f8bc234268e1 {
        po_c_t9_gen_pl_starter2_vargas_stovepipe_variant04, // 0x0
        po_c_t9_gen_pl_starter2_vargas_stovepipe_variant01, // 0x1
        po_c_t9_gen_pl_starter2_vargas_stovepipe_variant03, // 0x2
        po_c_t9_gen_pl_starter2_vargas_stovepipe_variant02, // 0x3
        mtx_outfit_prt_mp_gen_starter2_default, // 0x4
        c_t9_gen_pl_starter2_vargas_bull_ms, // 0x5
        c_t9_gen_pl_starter2_vargas_bull_sy, // 0x6
        c_t9_gen_pl_starter2_vargas_bull_pc, // 0x7
        c_t9_gen_pl_starter2_vargas_stovepipe, // 0x8
        c_t9_gen_pl_starter2_vargas_bacano, // 0x9
        po_c_t9_gen_pl_starter2_vargas_major_variant01, // 0xa
        po_c_t9_gen_pl_starter2_vargas_major_variant02, // 0xb
        c_t9_gen_pl_starter2_vargas_steel, // 0xc
        c_t9_gen_pl_starter2_vargas_steel_tourist, // 0xd
        po_c_t9_gen_pl_starter2_vargas_steel_bunker, // 0xe
        c_t9_gen_pl_starter2_vargas_major, // 0xf
        c_t9_gen_pl_starter2_vargas_finishline, // 0x10
        po_c_t9_gen_pl_starter2_vargas_bunker_alt1, // 0x11
        po_c_t9_gen_pl_starter2_vargas_bunker_alt2, // 0x12
        c_t9_gen_pl_starter2_vargas_bunker // 0x13
    };

    // idx 0x1a members: 0x18
    enum hash_b2ae44cbcf23ed8 {
        hash_12f322f108763a4, // 0x0
        c_t9_gen_pl_starter3_stone_bugscreen, // 0x1
        po_c_t9_gen_pl_starter3_stone_insurgent_variant03, // 0x2
        po_c_t9_gen_pl_starter3_stone_insurgent_variant02, // 0x3
        po_c_t9_gen_pl_starter3_stone_insurgent_variant01, // 0x4
        hash_ceab78ba3a366ac, // 0x5
        c_t9_ger_pl_west_stealth, // 0x6
        c_t9_gen_pl_starter3_stone_bollocks_sy, // 0x7
        c_t9_gen_pl_starter3_stone_bollocks_pc, // 0x8
        c_t9_gen_pl_starter3_stone_bollocks_ms, // 0x9
        c_t9_gen_pl_starter3_stone_stoned, // 0xa
        c_t9_gen_pl_starter3_stone_carver, // 0xb
        c_t9_gen_pl_starter3_stone_ash, // 0xc
        c_t9_gen_pl_starter3_stone_storefront, // 0xd
        c_t9_gen_pl_starter3_stone_jammy, // 0xe
        c_t9_gen_pl_starter3_stone_insurgent, // 0xf
        po_c_t9_gen_pl_starter3_stone_insurgent_vampire, // 0x10
        c_t9_gen_pl_starter3_stone_squelch, // 0x11
        c_t9_usa_pl_navyseal_wolf, // 0x12
        mtx_outfit_prt_mp_gen_starter3_default, // 0x13
        c_t9_usa_pl_navyseal_knucklehead, // 0x14
        c_t9_gen_pl_starter3_stone_seige_breach, // 0x15
        c_t9_gen_pl_starter3_stone_seige_clear, // 0x16
        po_c_t9_gen_pl_starter3_stone_seige // 0x17
    };

    // idx 0x1b members: 0x18
    enum hash_41ef925febc870db {
        c_t9_gen_pl_starter4_song_counter, // 0x0
        mtx_outfit_prt_mp_gen_starter4_default, // 0x1
        c_t9_gen_pl_starter4_song_dagger, // 0x2
        po_c_t9_gen_pl_starter4_song_tiger_blue, // 0x3
        c_t9_gen_pl_starter4_song_tiger, // 0x4
        po_c_t9_gen_pl_starter4_song_tiger_tan, // 0x5
        c_t9_gen_pl_starter4_song_counter_jinx, // 0x6
        c_t9_gen_pl_starter4_song_observer_variant01, // 0x7
        c_t9_gen_pl_starter4_song_observer_variant02, // 0x8
        c_t9_gen_pl_starter4_song_bloom, // 0x9
        po_c_t9_gen_pl_starter4_dagger_v1, // 0xa
        po_c_t9_gen_pl_starter4_dagger_v2, // 0xb
        c_t9_gen_pl_starter4_song_backflip, // 0xc
        po_c_t9_gen_pl_starter4_song_busted, // 0xd
        c_t9_gen_pl_starter4_song_observer, // 0xe
        po_c_t9_gen_pl_starter4_song_busted_variant02, // 0xf
        po_c_t9_gen_pl_starter4_song_busted_variant03, // 0x10
        po_c_t9_gen_pl_starter4_song_busted_variant01, // 0x11
        po_c_t9_gen_pl_starter4_song_busted_variant04, // 0x12
        c_t9_gen_pl_starter4_song_counter_skirmish, // 0x13
        c_t9_gen_pl_starter4_song_mechanic_sy, // 0x14
        c_t9_gen_pl_starter4_song_mechanic_pc, // 0x15
        c_t9_gen_pl_starter4_song_mechanic_ms, // 0x16
        c_t9_gen_pl_starter4_song_flare // 0x17
    };

    // idx 0x1c members: 0x17
    enum hash_65b81abda30a6f0a {
        c_t9_gen_pl_starter5_powers_dust, // 0x0
        c_t9_gen_pl_starter5_powers_dust_urban, // 0x1
        c_t9_gen_pl_starter5_powers_cameroon, // 0x2
        c_t9_gen_pl_starter5_powers_desert, // 0x3
        c_t9_gen_pl_starter5_powers_stealth, // 0x4
        c_t9_gen_starter5_powers_swift, // 0x5
        c_t9_gen_pl_starter5_powers_cameroon_variant04, // 0x6
        c_t9_gen_pl_starter5_powers_cameroon_variant01, // 0x7
        c_t9_gen_pl_starter5_powers_cameroon_variant03, // 0x8
        c_t9_gen_pl_starter5_powers_cameroon_variant02, // 0x9
        c_t9_gen_pl_starter5_powers_gun_v1, // 0xa
        c_t9_gen_pl_starter5_powers_gun_v2, // 0xb
        po_c_t9_gen_pl_starter5_powers_stealth_variant02, // 0xc
        po_c_t9_gen_pl_starter5_powers_stealth_variant01, // 0xd
        c_t9_gen_pl_starter5_powers_driver, // 0xe
        po_c_t9_gen_pl_starter5_powers_dust_military, // 0xf
        po_c_t9_gen_pl_starter5_powers_driver_variant03, // 0x10
        po_c_t9_gen_pl_starter5_powers_driver_variant02, // 0x11
        po_c_t9_gen_pl_starter5_powers_driver_variant01, // 0x12
        po_c_t9_gen_pl_starter5_powers_driver_variant04, // 0x13
        c_t9_gen_pl_starter5_powers_gun, // 0x14
        mtx_outfit_prt_mp_gen_starter5_default, // 0x15
        c_t9_gen_pl_starter5_powers_ffl // 0x16
    };

    // idx 0x1d members: 0x7
    enum hash_6a8fcee5e3a0f4d7 {
        c_t9_ger_pl_maxis_scythe, // 0x0
        c_t9_ger_pl_maxis_bride, // 0x1
        c_t9_ger_pl_maxis_traveler, // 0x2
        hash_2ee8f2b56a775ffd, // 0x3
        c_t9_ger_pl_maxis_dark, // 0x4
        c_t9_ger_pl_maxis_lumens, // 0x5
        hash_743f84f37b1a455c // 0x6
    };

    // idx 0x1e members: 0x22
    enum hash_7bfb6ec94c87c111 {
        c_t9_ger_pl_west_racer_sky_incentive, // 0x0
        c_t9_ger_pl_west_klown, // 0x1
        c_t9_ger_pl_west_raider_bruiser, // 0x2
        c_t9_ger_pl_west_gsg9_3_munchen, // 0x3
        c_t9_ger_pl_west_paratrooper, // 0x4
        c_t9_ger_pl_west_winter, // 0x5
        c_t9_ger_pl_west_raider, // 0x6
        c_t9_ger_pl_west_gothic, // 0x7
        c_t9_ger_pl_west_judge_dredd, // 0x8
        c_t9_ger_pl_west_stronghold, // 0x9
        c_t9_ger_pl_west_judge_dredd_variant01, // 0xa
        c_t9_ger_pl_west_carnage, // 0xb
        c_t9_ger_pl_west_tagger_ii, // 0xc
        c_t9_ger_pl_west_professor_v2, // 0xd
        c_t9_ger_pl_west_swat, // 0xe
        c_t9_ger_pl_west_gsg9_3, // 0xf
        c_t9_ger_pl_west_racer_xfinity_incentive, // 0x10
        mtx_outfit_mp_ger_west_infiltration, // 0x11
        c_t9_ger_pl_west_police, // 0x12
        po_c_t9_ger_pl_west_stalker_blue, // 0x13
        c_t9_ger_pl_west_gsg9_hardhat_v2, // 0x14
        c_t9_ger_pl_west_stalker, // 0x15
        c_t9_ger_pl_west_bomber, // 0x16
        c_t9_ger_pl_west_patrol, // 0x17
        po_c_t9_ger_pl_west_racer_ufo, // 0x18
        po_c_t9_ger_pl_west_stalker_tan, // 0x19
        po_c_t9_ger_pl_west_gsg9_hardhat_v1, // 0x1a
        c_t9_ger_pl_west_raider_wildcat, // 0x1b
        po_c_t9_ger_pl_west_stronghold_variant02, // 0x1c
        po_c_t9_ger_pl_west_stronghold_variant01, // 0x1d
        c_t9_ger_pl_west_professor, // 0x1e
        c_t9_ger_pl_west_nightops, // 0x1f
        po_c_t9_ger_pl_west_gsg9_3_wachter, // 0x20
        c_t9_ger_pl_west_gsg9_hardhat // 0x21
    };

    // idx 0x1f members: 0x2
    enum hash_1aa652a8cf02637a {
        hash_f55538db3f20489, // 0x0
        hash_65f7f4f7250fd2bf // 0x1
    };

    // idx 0x20 members: 0xb
    enum hash_d86a6c44db9ed02 {
        po_c_t9_jpn_pl_kitsune_bosozoku, // 0x0
        c_t9_jpn_pl_kitsune_ultra, // 0x1
        po_c_t9_jpn_pl_kitsune_ultra_shinrei, // 0x2
        po_c_t9_jpn_pl_kitsune_gothic, // 0x3
        c_t9_jpn_pl_kitsune_biteme, // 0x4
        hash_39371800fe806196, // 0x5
        c_t9_jpn_pl_kitsune, // 0x6
        po_c_t9_jpn_pl_kitsune_code, // 0x7
        po_c_t9_jpn_pl_kitsune_kunoichi, // 0x8
        c_t9_jpn_pl_kitsune_boss, // 0x9
        po_c_t9_jpn_pl_kitsune_ultra_kogane // 0xa
    };

    // idx 0x21 members: 0xc
    enum hash_7a62ede7338dfc7d {
        c_t9_lao_pl_serpent_warlord_tiger, // 0x0
        c_t9_lao_pl_serpent_ashen_scale, // 0x1
        c_t9_lao_pl_serpent_crimson_code, // 0x2
        c_t9_lao_pl_serpent_warlord_infiltrator, // 0x3
        c_t9_lao_pl_serpent_cobalt, // 0x4
        c_t9_lao_pl_serpent_haggler, // 0x5
        c_t9_lao_pl_serpent_overgrowth, // 0x6
        c_t9_lao_pl_serpent_rattlesnake, // 0x7
        c_t9_lao_pl_serpent_hollow, // 0x8
        c_t9_lao_pl_serpent_warlord, // 0x9
        c_t9_lao_pl_serpent_shadow, // 0xa
        c_t9_lao_pl_serpent // 0xb
    };

    // idx 0x22 members: 0x7
    enum hash_79cefc35f54e5a3 {
        c_t9_nic_pl_smuggler_mural, // 0x0
        c_t9_nic_pl_smuggler_stinger, // 0x1
        c_t9_nic_pl_smuggler, // 0x2
        c_t9_nic_pl_smuggler_whiskey, // 0x3
        po_c_t9_gen_pl_female_esports_ms, // 0x4
        po_c_t9_gen_pl_female_esports_pc, // 0x5
        po_c_t9_gen_pl_female_esports_sy // 0x6
    };

    // idx 0x23 members: 0x22
    enum hash_2a41bcedd076b096 {
        c_t9_rus_pl_kgb_gunshow, // 0x0
        mtx_outfit_mp_rus_kgb_infiltration, // 0x1
        c_t9_rus_pl_kgb_assassin, // 0x2
        c_t9_rus_pl_kgb_thekid_militia, // 0x3
        c_t9_rus_pl_kgb_breakout, // 0x4
        c_t9_rus_pl_kgb_smoker_ridge, // 0x5
        c_t9_rus_pl_kgb_hash, // 0x6
        c_t9_rus_pl_kgb_mach1_sy, // 0x7
        c_t9_rus_pl_kgb_mach1_pc, // 0x8
        c_t9_rus_pl_kgb_mach1_ms, // 0x9
        c_t9_rus_pl_kgb_ghost, // 0xa
        po_c_t9_rus_pl_kgb_infantry_variant03, // 0xb
        po_c_t9_rus_pl_kgb_infantry_variant02, // 0xc
        po_c_t9_rus_pl_kgb_infantry_variant01, // 0xd
        po_c_t9_rus_pl_kgb_infantry_variant04, // 0xe
        c_t9_rus_pl_kgb_burglar_blizzard, // 0xf
        c_t9_rus_pl_kgb_thekid, // 0x10
        c_t9_rus_pl_kgb_shadow, // 0x11
        c_t9_rus_pl_kgb_spyglass, // 0x12
        po_c_t9_rus_pl_kgb_urban, // 0x13
        c_t9_rus_pl_kgb_poison, // 0x14
        c_t9_rus_pl_kgb_lab, // 0x15
        c_t9_rus_pl_kgb_smoker_blitz, // 0x16
        c_t9_rus_pl_kgb_thekid_treehugger, // 0x17
        c_t9_rus_pl_kgb_valentines, // 0x18
        c_t9_rus_pl_kgb_funnybone, // 0x19
        c_t9_rus_pl_kgb_bunny, // 0x1a
        c_t9_rus_pl_kgb_infantry, // 0x1b
        c_t9_rus_pl_kgb_punk, // 0x1c
        c_t9_rus_pl_kgb_burglar_duck, // 0x1d
        c_t9_rus_pl_kgb_burglar, // 0x1e
        c_t9_rus_pl_kgb_smoker, // 0x1f
        c_t9_rus_pl_kgb_winter, // 0x20
        c_t9_rus_pl_kgb_tacticalgoth // 0x21
    };

    // idx 0x24 members: 0x7
    enum hash_7ecc2f4c0fcd9384 {
        c_t9_rus_pl_spetsnaz_afghan_sniper, // 0x0
        c_t9_rus_pl_spetsnaz_chernobyl, // 0x1
        po_c_t9_rus_pl_spetsnaz_afghan_sniper_variant02, // 0x2
        po_c_t9_rus_pl_spetsnaz_afghan_sniper_variant01, // 0x3
        c_t9_rus_pl_spetsnaz_infiltration, // 0x4
        c_t9_rus_pl_spetsnaz_melted, // 0x5
        c_t9_rus_pl_spetsnaz_grudge // 0x6
    };

    // idx 0x25 members: 0x10
    enum hash_7958c23db376dd7 {
        c_t9_rus_pl_stitch_brute, // 0x0
        c_t9_rus_pl_stitch, // 0x1
        c_t9_rus_pl_stitch_marine, // 0x2
        hash_f7a985424aea7b9, // 0x3
        c_t9_rus_pl_stitch_torn, // 0x4
        po_c_t9_rus_pl_stitch_cultist_black_gold_pc, // 0x5
        po_c_t9_rus_pl_stitch_cultist_black_gold_sy, // 0x6
        po_c_t9_rus_pl_stitch_cultist_black_gold_ms, // 0x7
        c_t9_rus_pl_stitch_undercover, // 0x8
        c_t9_rus_pl_stitch_prisoner_stripes, // 0x9
        c_t9_rus_pl_stitch_prisoner_punk, // 0xa
        c_t9_rus_pl_stitch_spectre, // 0xb
        c_t9_rus_pl_stitch_cultist_ghoul, // 0xc
        c_t9_rus_pl_stitch_echo, // 0xd
        c_t9_rus_pl_stitch_urban, // 0xe
        c_t9_rus_pl_stitch_prisoner // 0xf
    };

    // idx 0x26 members: 0xb
    enum hash_73329db2b3c3cfd4 {
        c_t9_sa_pl_deathstalker_snake_water, // 0x0
        c_t9_sa_pl_deathstalker_snake_copper, // 0x1
        c_t9_sa_pl_deathstalker_snake, // 0x2
        c_t9_sa_pl_deathstalker_bearclaw_ms, // 0x3
        c_t9_sa_pl_deathstalker_bearclaw_pc, // 0x4
        c_t9_sa_pl_deathstalker_bearclaw_sy, // 0x5
        c_t9_sa_pl_deathstalker_scorpion, // 0x6
        c_t9_sa_pl_deathstalker, // 0x7
        c_t9_sa_pl_deathstalker_hyena, // 0x8
        c_t9_sa_pl_deathstalker_urban, // 0x9
        c_t9_sa_pl_deathstalker_shaman // 0xa
    };

    // idx 0x27 members: 0x2
    enum hash_27e39161b580acc {
        hash_107954fd60f09a77, // 0x0
        c_t9_uk_pl_kingsley // 0x1
    };

    // idx 0x28 members: 0x2c
    enum hash_123fd6ca601be2ac {
        c_t9_uk_pl_mi6_coal_variant04, // 0x0
        c_t9_uk_pl_mi6_coal_variant01, // 0x1
        c_t9_uk_pl_mi6_coal_variant03, // 0x2
        c_t9_uk_pl_mi6_coal_variant02, // 0x3
        c_t9_uk_pl_mi6_derby, // 0x4
        c_t9_uk_pl_mi6_badblood, // 0x5
        c_t9_uk_pl_mi6_dystopia, // 0x6
        c_t9_uk_pl_mi6_football, // 0x7
        c_t9_uk_pl_mi6_heist, // 0x8
        po_c_t9_uk_pl_mi6_football_uk, // 0x9
        c_t9_uk_pl_mi6_doubleagent, // 0xa
        c_t9_uk_pl_mi6_badblood_commando, // 0xb
        c_t9_uk_pl_mi6_ignite, // 0xc
        c_t9_uk_pl_mi6_racer, // 0xd
        c_t9_uk_pl_mi6_standoff, // 0xe
        c_t9_uk_pl_mi6_guard, // 0xf
        c_t9_uk_pl_mi6_survivor_solstice, // 0x10
        c_t9_uk_pl_mi6_badblood_glamour, // 0x11
        c_t9_uk_pl_mi6_clandestine, // 0x12
        c_t9_uk_pl_mi6_checker, // 0x13
        c_t9_uk_pl_mi6_xray, // 0x14
        c_t9_uk_pl_mi6_fob, // 0x15
        c_t9_uk_pl_mi6_scorch, // 0x16
        c_t9_uk_pl_mi6_coal, // 0x17
        po_c_t9_uk_pl_mi6_checker_variant01, // 0x18
        po_c_t9_uk_pl_mi6_checker_variant02, // 0x19
        c_t9_uk_pl_mi6_uncharted, // 0x1a
        po_c_t9_uk_pl_mi6_football_germany, // 0x1b
        c_t9_uk_pl_mi6_survivor, // 0x1c
        c_t9_uk_pl_mi6_napalm, // 0x1d
        po_c_t9_uk_pl_mi6_fob_v1, // 0x1e
        po_c_t9_uk_pl_mi6_fob_v2, // 0x1f
        po_c_t9_uk_pl_mi6_football_french, // 0x20
        c_t9_uk_pl_mi6_glam, // 0x21
        mtx_outfit_mp_uk_mi6_infiltration, // 0x22
        c_t9_uk_pl_mi6_sis, // 0x23
        c_t9_uk_pl_mi6_tagger, // 0x24
        e0po_c_t9_uk_pl_mi6_handler, // 0x25
        hash_770025c31b97d142, // 0x26
        c_t9_uk_pl_mi6_skyhook_pc, // 0x27
        c_t9_uk_pl_mi6_skyhook_sy, // 0x28
        c_t9_uk_pl_mi6_skyhook_ms, // 0x29
        c_t9_uk_pl_mi6_survivor_autumn, // 0x2a
        po_c_t9_uk_pl_mi6_snapshot // 0x2b
    };

    // idx 0x29 members: 0x2
    enum hash_3f7b1b622cd3b323 {
        hash_929fd5d1247ab68, // 0x0
        c_t9_uk_pl_price // 0x1
    };

    // idx 0x2a members: 0x2
    enum hash_5ce66b213a8bfd87 {
        c_t9_uk_pl_sas_gridlock, // 0x0
        c_t9_uk_pl_sas_blackknight // 0x1
    };

    // idx 0x2b members: 0x8
    enum hash_570d8e8d1a9b9792 {
        po_c_t9_usa_pl_bulldozer_panda_variant02, // 0x0
        po_c_t9_usa_pl_bulldozer_panda_variant01, // 0x1
        c_t9_usa_pl_bulldozer_forged, // 0x2
        c_t9_usa_pl_bulldozer_panda, // 0x3
        c_t9_usa_pl_bulldozer_01, // 0x4
        c_t9_usa_pl_bulldozer_toxin, // 0x5
        c_t9_usa_pl_bulldozer_boom, // 0x6
        c_t9_usa_pl_bulldozer_hawk // 0x7
    };

    // idx 0x2c members: 0x22
    enum hash_119a2723c18cf14 {
        po_c_t9_usa_pl_cia_macv_code_ms, // 0x0
        po_c_t9_usa_pl_cia_macv_code_pc, // 0x1
        po_c_t9_usa_pl_cia_macv_code_sy, // 0x2
        c_t9_usa_pl_cia_advisor_variant01, // 0x3
        c_t9_usa_pl_cia_advisor_variant02, // 0x4
        mtx_outfit_mp_usa_cia_infiltration, // 0x5
        c_t9_usa_pl_cia_advisor, // 0x6
        c_t9_usa_pl_cia_sog_tee, // 0x7
        c_t9_usa_pl_cia_grit, // 0x8
        c_t9_usa_pl_cia_snatch, // 0x9
        c_t9_usa_pl_cia_logger, // 0xa
        c_t9_usa_pl_cia_covert, // 0xb
        c_t9_usa_pl_cia_macv, // 0xc
        po_c_t9_usa_pl_cia_captain_variant04, // 0xd
        po_c_t9_usa_pl_cia_captain_variant01, // 0xe
        po_c_t9_usa_pl_cia_captain_variant02, // 0xf
        po_c_t9_usa_pl_cia_captain_variant03, // 0x10
        c_t9_usa_pl_cia_boss, // 0x11
        po_c_t9_usa_pl_deltaforce_urgentfury_ranger_scout, // 0x12
        po_c_t9_usa_pl_deltaforce_urgentfury_airborne, // 0x13
        c_t9_usa_pl_cia_sogman, // 0x14
        c_t9_usa_pl_deltaforce_urgentfury, // 0x15
        po_c_t9_usa_pl_cia_penumbra_ms, // 0x16
        po_c_t9_usa_pl_cia_penumbra_sy, // 0x17
        po_c_t9_usa_pl_cia_penumbra_pc, // 0x18
        c_t9_usa_pl_cia_grit_blockparty, // 0x19
        c_t9_usa_pl_cia_kick, // 0x1a
        c_t9_usa_pl_cia_grit_street, // 0x1b
        c_t9_usa_pl_cia_captain, // 0x1c
        c_t9_usa_pl_cia_regulator, // 0x1d
        c_t9_usa_pl_cia_agent, // 0x1e
        c_t9_usa_pl_cia_big_joke3, // 0x1f
        c_t9_usa_pl_cia_commando, // 0x20
        c_t9_usa_pl_cia_frostbite // 0x21
    };

    // idx 0x2d members: 0xa
    enum hash_57c2000b18db1b66 {
        c_t9_usa_pl_deltaforce_halo, // 0x0
        c_t9_usa_pl_deltaforce_cyclone, // 0x1
        c_t9_usa_pl_deltaforce_jungle_warfare, // 0x2
        c_t9_usa_pl_deltaforce_brutalist_pc, // 0x3
        c_t9_usa_pl_deltaforce_brutalist_sy, // 0x4
        c_t9_usa_pl_deltaforce_brutalist_ms, // 0x5
        po_c_t9_usa_pl_deltaforce_halo_variant01, // 0x6
        po_c_t9_usa_pl_deltaforce_halo_variant02, // 0x7
        c_t9_usa_pl_deltaforce_dynamite, // 0x8
        c_t9_usa_pl_deltaforce_brutalist_base // 0x9
    };

    // idx 0x2e members: 0x2
    enum hash_64ae17c6326a478b {
        c_t9_usa_pl_ghostface, // 0x0
        hash_6c255687a18e2690 // 0x1
    };

    // idx 0x2f members: 0x26
    enum hash_54c65df8de14c4 {
        po_c_t9_usa_pl_adler_vbss_variant_01, // 0x0
        po_c_t9_usa_pl_adler_vbss_variant_02, // 0x1
        c_t9_usa_pl_adler_vbss, // 0x2
        c_t9_usa_pl_adler_renegade_goblin, // 0x3
        c_t9_usa_pl_adler_gunslinger_whiskey, // 0x4
        c_t9_usa_pl_adler_lancer, // 0x5
        hash_1238a78295bf2755, // 0x6
        c_t9_usa_pl_adler_hostage, // 0x7
        po_c_t9_usa_pl_adler_detective_juice_ms, // 0x8
        po_c_t9_usa_pl_adler_detective_juice_sy, // 0x9
        po_c_t9_usa_pl_adler_detective_juice_pc, // 0xa
        c_t9_usa_pl_adler_tropic, // 0xb
        c_t9_usa_pl_adler_ranger, // 0xc
        c_t9_usa_pl_adler_gunslinger, // 0xd
        c_t9_usa_pl_adler_bloodhound_dusk, // 0xe
        c_t9_usa_pl_adler_pressed, // 0xf
        c_t9_usa_pl_adler_traveler, // 0x10
        c_t9_usa_pl_adler_control, // 0x11
        po_c_t9_usa_pl_adler_miami, // 0x12
        mtx_outfit_mp_usa_hero_adler_infiltration, // 0x13
        c_t9_usa_pl_adler_traveler_windbreaker, // 0x14
        c_t9_usa_pl_adler_red, // 0x15
        c_t9_usa_pl_adler_bloodhound_glitz, // 0x16
        c_t9_usa_pl_adler_gunslinger_smokey, // 0x17
        c_t9_usa_pl_adler_renegade_gonefishin, // 0x18
        c_t9_usa_pl_adler_wire, // 0x19
        c_t9_usa_pl_adler_bloodhound, // 0x1a
        c_t9_usa_pl_adler_slayer, // 0x1b
        c_t9_usa_pl_adler_renegade_redshirt, // 0x1c
        c_t9_usa_pl_adler_detective, // 0x1d
        c_t9_usa_pl_adler_gator, // 0x1e
        c_t9_usa_pl_adler_game_fuel, // 0x1f
        c_t9_usa_pl_adler_traveler_summit, // 0x20
        po_c_t9_usa_pl_adler_control_variant02, // 0x21
        po_c_t9_usa_pl_adler_control_variant01, // 0x22
        c_t9_usa_pl_adler_renegade, // 0x23
        c_t9_usa_pl_adler_buoy, // 0x24
        c_t9_usa_pl_adler_renegade_asphalt // 0x25
    };

    // idx 0x30 members: 0x5
    enum hash_341e259060efcc60 {
        hash_36bc019f6bf73c7, // 0x0
        c_t9_usa_pl_hudson_hazmat_ms, // 0x1
        c_t9_usa_pl_hudson_hazmat_sy, // 0x2
        c_t9_usa_pl_hudson_hazmat_pc, // 0x3
        c_t9_usa_pl_hudson // 0x4
    };

    // idx 0x31 members: 0xb
    enum hash_1b643018d71a38e3 {
        po_c_t9_usa_pl_mason_ultra_variant04, // 0x0
        po_c_t9_usa_pl_mason_ultra_variant01, // 0x1
        po_c_t9_usa_pl_mason_ultra_variant03, // 0x2
        po_c_t9_usa_pl_mason_ultra_variant02, // 0x3
        hash_2b1cb703fa90e3f9, // 0x4
        c_t9_usa_pl_mason, // 0x5
        po_c_t9_usa_pl_mason_variant02, // 0x6
        po_c_t9_usa_pl_mason_variant03, // 0x7
        po_c_t9_usa_pl_mason_variant01, // 0x8
        po_c_t9_usa_pl_mason_variant04, // 0x9
        c_t9_usa_pl_mason_ultra // 0xa
    };

    // idx 0x32 members: 0x2
    enum hash_3722012a797a51e0 {
        hash_22e1b84da50b3a63, // 0x0
        po_c_t9_usa_pl_mcclane_preset_1 // 0x1
    };

    // idx 0x33 members: 0x2a
    enum hash_39dae39406e713d1 {
        c_t9_usa_pl_navyseal_maverick, // 0x0
        po_c_t9_usa_pl_navyseal_land_ms, // 0x1
        po_c_t9_usa_pl_navyseal_land_sy, // 0x2
        po_c_t9_usa_pl_navyseal_land_pc, // 0x3
        po_c_t9_usa_pl_navyseal_air_pc, // 0x4
        po_c_t9_usa_pl_navyseal_air_sy, // 0x5
        po_c_t9_usa_pl_navyseal_air_ms, // 0x6
        po_c_t9_usa_pl_navyseal_endurance_ms, // 0x7
        c_t9_usa_pl_navyseal_bluedevil, // 0x8
        po_c_t9_usa_pl_navyseal_endurance_sy, // 0x9
        po_c_t9_usa_pl_navyseal_endurance_pc, // 0xa
        c_t9_usa_pl_navyseal_ringleader, // 0xb
        c_t9_usa_pl_navyseal_clown, // 0xc
        mtx_outfit_mp_usa_navy_seal_infiltration, // 0xd
        c_t9_usa_pl_navyseal_business, // 0xe
        c_t9_usa_pl_navyseal_gigawhen, // 0xf
        c_t9_usa_pl_navyseal_grunge, // 0x10
        c_t9_usa_pl_navyseal_hopper, // 0x11
        c_t9_usa_pl_navyseal_sniper, // 0x12
        c_t9_usa_pl_navyseal_maverick_jackal, // 0x13
        c_t9_usa_pl_navyseal_hopper_v2, // 0x14
        c_t9_usa_pl_navyseal_maverick_pitcher, // 0x15
        c_t9_usa_pl_navyseal_hunter, // 0x16
        po_c_t9_usa_pl_navyseal_dissident, // 0x17
        c_t9_usa_pl_navyseal_grip, // 0x18
        c_t9_usa_pl_navyseal_gigawho, // 0x19
        c_t9_usa_pl_navyseal_solitude, // 0x1a
        c_t9_usa_pl_navyseal_slugger, // 0x1b
        po_c_t9_usa_pl_navyseal_grip_variant02, // 0x1c
        po_c_t9_usa_pl_navyseal_grip_variant01, // 0x1d
        po_c_t9_usa_pl_navyseal_bluedevil_variant01, // 0x1e
        po_c_t9_usa_pl_navyseal_bluedevil_variant02, // 0x1f
        c_t9_usa_pl_navyseal_breaker, // 0x20
        c_t9_usa_pl_navyseal_frank, // 0x21
        c_t9_usa_pl_navyseal_frogman_variant01, // 0x22
        c_t9_usa_pl_navyseal_frogman_variant02, // 0x23
        po_c_t9_usa_pl_navyseal_sea_pc, // 0x24
        po_c_t9_usa_pl_navyseal_sea_sy, // 0x25
        c_t9_usa_pl_navyseal_strike, // 0x26
        po_c_t9_usa_pl_navyseal_sea_ms, // 0x27
        c_t9_usa_pl_navyseal_gigawatt, // 0x28
        c_t9_usa_pl_navyseal_frogman // 0x29
    };

    // idx 0x34 members: 0x2
    enum hash_1e5985e0a2172d04 {
        c_t9_usa_pl_rambo, // 0x0
        hash_5b0c594cb1709b2f // 0x1
    };

    // idx 0x35 members: 0x2
    enum hash_779a38a9d11be533 {
        hash_21a6abe514496350, // 0x0
        c_t9_usa_pl_surge // 0x1
    };

    // idx 0x36 members: 0x5
    enum hash_360b670030cff729 {
        c_t9_usa_pl_weaver_sons_of_orda, // 0x0
        c_t9_usa_pl_weaver_cosmodrome, // 0x1
        c_t9_usa_pl_weaver_rebirth, // 0x2
        c_t9_usa_pl_weaver_sons_of_orda_pulsar, // 0x3
        hash_3eed2f3ede253369 // 0x4
    };

    // idx 0x37 members: 0x1d
    enum hash_7f3d9959cd998def {
        po_c_t9_usa_pl_woods_haha_variant04, // 0x0
        po_c_t9_usa_pl_woods_haha_variant01, // 0x1
        po_c_t9_usa_pl_woods_haha_variant03, // 0x2
        po_c_t9_usa_pl_woods_haha_variant02, // 0x3
        mtx_outfit_mp_usa_woods_infiltration, // 0x4
        c_t9_usa_pl_woods_payback, // 0x5
        c_t9_usa_pl_woods_holidaywoods, // 0x6
        c_t9_usa_pl_cia_pow, // 0x7
        c_t9_usa_pl_woods_eagleclaw, // 0x8
        c_t9_usa_pl_woods_whirlwind, // 0x9
        c_t9_usa_pl_woods_whirlwind_fire, // 0xa
        c_t9_usa_pl_woods_dope, // 0xb
        c_t9_usa_pl_woods_slaughter, // 0xc
        c_t9_usa_pl_woods_haha, // 0xd
        c_t9_usa_pl_woods_whirlwind_air, // 0xe
        c_t9_usa_pl_woods_dapper, // 0xf
        po_c_t9_usa_pl_woods_payback_variant01, // 0x10
        po_c_t9_usa_pl_woods_payback_variant02, // 0x11
        c_t9_usa_pl_woods_conquer, // 0x12
        c_t9_usa_pl_woods_eagleclaw_metro, // 0x13
        c_t9_usa_pl_woods_swamp, // 0x14
        c_t9_usa_pl_woods_eagleclaw_undergrowth, // 0x15
        c_t9_usa_pl_woods_fisherman, // 0x16
        c_t9_usa_woods_pl_eliminator, // 0x17
        c_t9_usa_pl_woods_trucker, // 0x18
        c_t9_usa_pl_woods_sandstorm, // 0x19
        c_t9_usa_pl_woods_rogue, // 0x1a
        c_t9_usa_pl_woods_biker, // 0x1b
        c_t9_usa_pl_woods_mellow // 0x1c
    };

    // idx 0x38 members: 0x27
    enum mp_character_customization {
        hash_28bcb1a74fb9506, // 0x0
        hash_10d99c51363d023b, // 0x1
        hash_1c4d461d9ce51dbe, // 0x2
        hash_1c4d471d9ce51f71, // 0x3
        hash_1c4d481d9ce52124, // 0x4
        hash_1c4d491d9ce522d7, // 0x5
        hash_1c4d4b1d9ce5263d, // 0x6
        hash_1d1d15360c795f59, // 0x7
        hash_1f2793552979c402, // 0x8
        hash_1f80861358483d86, // 0x9
        hash_2038d53f1f435f6d, // 0xa
        hash_319cbf14b4fdff70, // 0xb
        hash_33960bf06b2ab138, // 0xc
        hash_35640e9ffafb0a55, // 0xd
        hash_381c15994be5cdbc, // 0xe
        hash_38483ac09b694b38, // 0xf
        hash_3d3ba2ecf4d30874, // 0x10
        hash_41db204503120a05, // 0x11
        hash_450371f075108196, // 0x12
        hash_45ab587a7a64e42f, // 0x13
        hash_46b0c1b44ff6dccb, // 0x14
        hash_46ddf1f925e6a50b, // 0x15
        hash_4b153669f5b79216, // 0x16
        hash_4cc3c84feeb4b041, // 0x17
        hash_511bbcd521bfe80e, // 0x18
        hash_5462e18ed384e309, // 0x19
        hash_572050055e786d32, // 0x1a
        hash_5914dc15bf67164a, // 0x1b
        hash_642363ae71879232, // 0x1c
        hash_6702092755c542d6, // 0x1d
        hash_696912d12c054663, // 0x1e
        hash_6db018ffcad34401, // 0x1f
        hash_70689c2756a65f21, // 0x20
        hash_70a73affe7ecd67a, // 0x21
        hash_71717ef651cdedfb, // 0x22
        hash_73179528704b9caf, // 0x23
        hash_7a22dc6feec296b4, // 0x24
        hash_7a4c918df5ed914b, // 0x25
        hash_7f9f7a55a86777c3 // 0x26
    };

    // idx 0x39 members: 0x8
    enum zm_character_customization {
        prt_zm_dempsey, // 0x0
        prt_zm_nikolai, // 0x1
        prt_zm_richtofen_ofc, // 0x2
        prt_zm_takeo, // 0x3
        prt_zm_dempsey_ofc, // 0x4
        prt_zm_nikolai_ofc, // 0x5
        prt_zm_richtofen, // 0x6
        prt_zm_takeo_ofc // 0x7
    };

    // idx 0x3a members: 0xc
    enum hash_5c71c24be793aa0c {
        player_sedan, // 0x0
        player_motorcycle_2wd, // 0x1
        player_snowmobile, // 0x2
        player_jetski, // 0x3
        player_truck_transport, // 0x4
        player_uaz, // 0x5
        tactical_raft_wz, // 0x6
        player_atv, // 0x7
        player_pbr, // 0x8
        player_fav_light, // 0x9
        helicopter_heavy, // 0xa
        player_tank // 0xb
    };

    // idx 0x3b members: 0xeb
    enum hash_695531b979c27e9b {
        medal_vip_killed, // 0x0
        medal_listening_device_multikill_2, // 0x1
        medal_harp_multikill_2, // 0x2
        medal_war_captured_zone, // 0x3
        medal_bomb_detonated, // 0x4
        medal_flag_capture, // 0x5
        medal_infect_3_enemies, // 0x6
        medal_humiliation_sas, // 0x7
        medal_satchel_charge_destroyed_vehicle, // 0x8
        medal_gas_trap_multikill_2, // 0x9
        medal_dropkick_kill_carrier_carry_30_seconds, // 0xa
        medal_flag_carrier_kill_return_close, // 0xb
        medal_top_scorer, // 0xc
        medal_capture_objective_under_smoke, // 0xd
        medal_swat_team_killjoy, // 0xe
        medal_tempest_shutdown, // 0xf
        medal_driver_vehicle_integrated_weapon_kill, // 0x10
        medal_land_mine_kill, // 0x11
        medal_golden_ammo_multikill, // 0x12
        medal_defused_bomb, // 0x13
        hash_1200f67c0e53f28d, // 0x14
        medal_completed_match, // 0x15
        medal_radiation_field_shutdown, // 0x16
        medal_jackpot, // 0x17
        medal_clean_multi_deposit_big, // 0x18
        medal_napalm_strike_kill, // 0x19
        medal_gungame_gunslinger, // 0x1a
        medal_purifier_shutdown, // 0x1b
        medal_spy_defuse_bomb, // 0x1c
        medal_kill_enemy_who_killed_teammate, // 0x1d
        medal_purifier_x2_multikill_summary, // 0x1e
        medal_uav_multikill_2, // 0x1f
        medal_seeker_shock_mine_paralyzed_headshot, // 0x20
        medal_rcxd_kill, // 0x21
        medal_soa_first_kill, // 0x22
        medal_multikill_7, // 0x23
        medal_multikill_6, // 0x24
        medal_multikill_5, // 0x25
        medal_multikill_4, // 0x26
        medal_multikill_3, // 0x27
        medal_multikill_2, // 0x28
        medal_prop_killed_three_props, // 0x29
        medal_prop_killed_all_props, // 0x2a
        medal_vehicle_impact_kill, // 0x2b
        medal_swat_team_kill, // 0x2c
        medal_clean_multi_deny_tacos, // 0x2d
        medal_destroyed_jet_sweep, // 0x2e
        medal_hover_jet_kill, // 0x2f
        medal_hellstorm_missile_kill, // 0x30
        medal_scythe_shutdown, // 0x31
        medal_clear_2_attackers, // 0x32
        medal_cluster_semtex_stick, // 0x33
        medal_kill_enemy_while_flashed_slowed_stunned, // 0x34
        medal_war_captured_objective_total, // 0x35
        medal_prop_survived_entire_round, // 0x36
        medal_heavy_attack_chopper_kill, // 0x37
        medal_sensor_dart_multikill_x2_summary, // 0x38
        medal_multikill_more_than_7, // 0x39
        medal_kill_enemy_after_switching_weapons, // 0x3a
        medal_sparrow_multikill_x2, // 0x3b
        medal_hatchet_longshot_kill, // 0x3c
        medal_dart_killjoy, // 0x3d
        medal_overwatch_helicopter_killjoy, // 0x3e
        medal_swarm_shutdown, // 0x3f
        medal_spawn_beacon_multikill_x2_summary, // 0x40
        medal_survive_30_seconds, // 0x41
        medal_kill_enemy_with_armor, // 0x42
        medal_destroyed_weaponized_vehicle, // 0x43
        medal_elimination_all_enemies_in_round, // 0x44
        medal_gunship_killjoy, // 0x45
        medal_kill_enemy_who_has_high_score, // 0x46
        medal_gunship_kill, // 0x47
        medal_quickly_secure_point, // 0x48
        medal_infected_survivor, // 0x49
        medal_longshot_kill, // 0x4a
        medal_nightingale_multikill_2, // 0x4b
        medal_shroud_multikill_2, // 0x4c
        medal_escort_robot_disable, // 0x4d
        medal_jet_sweep_destroyed_vehicle, // 0x4e
        medal_killstreak_5, // 0x4f
        medal_traversal_kill, // 0x50
        medal_kill_enemy_with_their_weapon, // 0x51
        medal_kill_flag_carrier, // 0x52
        medal_land_mine_multikill_2, // 0x53
        medal_napalm_strike_killjoy, // 0x54
        medal_soa_kill_enemies_rapidly_without_reloading_auto, // 0x55
        medal_killed_enemy_while_carrying_flag, // 0x56
        medal_revenge_kill, // 0x57
        medal_prop_survived, // 0x58
        medal_cluster_semtex_multikill_x2_summary, // 0x59
        medal_escort_robot_escort_goal, // 0x5a
        medal_vip_defended, // 0x5b
        medal_kill_enemy_after_death, // 0x5c
        medal_gunfight_capture_point, // 0x5d
        medal_backstabber_kill, // 0x5e
        medal_destroyed_light_transport_vehicle, // 0x5f
        medal_disrupted, // 0x60
        medal_dart_kill, // 0x61
        medal_land_mine_destroyed_vehicle, // 0x62
        medal_killed_bomb_planter, // 0x63
        medal_uninterrupted_obit_feed_kills, // 0x64
        medal_kill_enemy_with_care_package_crush, // 0x65
        medal_hawk_tag_multikill_x2, // 0x66
        medal_overwatch_helicopter_kill, // 0x67
        medal_kill_enemy_with_hacked_care_package, // 0x68
        medal_gravity_slam_shutdown, // 0x69
        medal_elimination_and_last_player_alive, // 0x6a
        medal_gunfight_kill_both_enemies_in_15_seconds, // 0x6b
        medal_annihilator_x2_multikill_summary, // 0x6c
        medal_vision_pulse_shutdown, // 0x6d
        medal_dropkick_carry_football_melee_kill, // 0x6e
        medal_scythe_multikill_2, // 0x6f
        medal_tank_robot_killjoy, // 0x70
        medal_battle_shield_shutdown, // 0x71
        medal_bounce_hatchet_kill, // 0x72
        medal_zeroed_out, // 0x73
        medal_automated_turret_kill, // 0x74
        medal_comeback_from_deathstreak, // 0x75
        medal_kill_enemy_with_fists, // 0x76
        medal_war_killed_enemy_while_capping_control, // 0x77
        medal_neutral_b_secured, // 0x78
        medal_spectre_blade_throw_kill, // 0x79
        medal_cuav_during_active_enemy_spy_plane, // 0x7a
        medal_kill_enemy_with_hacked_care_package_teammate, // 0x7b
        medal_driver_fav_passenger_kill, // 0x7c
        medal_destroyed_harp, // 0x7d
        medal_gunfight_kill_both_enemies_by_yourself, // 0x7e
        medal_tak5_multikill_x2, // 0x7f
        medal_mesh_mine_multikill_x2_summary, // 0x80
        medal_won_match, // 0x81
        medal_retrieve_own_tags, // 0x82
        medal_spy_plane_killjoy, // 0x83
        medal_flashbang_flashed_enemy_multikill_2, // 0x84
        medal_point_blank_kill, // 0x85
        medal_clean_multi_deposit_normal, // 0x86
        medal_kill_enemy_while_sliding, // 0x87
        medal_battle_shield_x2_multikill_summary, // 0x88
        hash_495845302ef43789, // 0x89
        medal_hellstorm_missile_killjoy, // 0x8a
        medal_hatchet_kill, // 0x8b
        medal_vision_pulse_x2_multikill_summary, // 0x8c
        medal_dirty_bomb_armed_under_fire, // 0x8d
        medal_gungame_regicide, // 0x8e
        medal_soa_kill_enemy_with_death_machine, // 0x8f
        medal_destroyed_chopper_gunner, // 0x90
        medal_soa_kill_enemy_with_melee_weapon, // 0x91
        medal_satchel_charge_multikill_2, // 0x92
        medal_soa_hatchet_kill, // 0x93
        medal_molotov_multikill_x2_summary, // 0x94
        medal_killed_bomb_defuser, // 0x95
        medal_kill_enemy_injuring_teammate, // 0x96
        medal_spy_investigator_won, // 0x97
        medal_attack_dog_shutdown, // 0x98
        medal_bounty_hunter_melee_downed_enemy, // 0x99
        medal_attack_chopper_killjoy, // 0x9a
        medal_killed_driver_with_weapon, // 0x9b
        medal_deployable_cover_multikill_2, // 0x9c
        medal_kill_enemy_one_bullet, // 0x9d
        medal_killstreak_more_than_30, // 0x9e
        medal_quickshot_bow_shutdown, // 0x9f
        medal_kill_enemy_when_injured, // 0xa0
        medal_kill_enemy_that_is_capping_your_objective, // 0xa1
        medal_chopper_gunner_kill, // 0xa2
        medal_dirty_bomb_armed, // 0xa3
        medal_kill_confirmed_multi, // 0xa4
        medal_dom_point_secured, // 0xa5
        medal_warthog_kill, // 0xa6
        medal_fireteam_enemy_squad_wipe, // 0xa7
        medal_tempest_x2_multikill_summary, // 0xa8
        medal_destroyed_heavy_attack_chopper, // 0xa9
        medal_automated_turret_killjoy, // 0xaa
        medal_gungame_humillation, // 0xab
        medal_spy_bomb_detonated, // 0xac
        medal_body_armor_survived_damage_multikill_2, // 0xad
        medal_kill_enemy_with_gunbutt, // 0xae
        medal_vip_revived, // 0xaf
        medal_drone_squadron_kill, // 0xb0
        medal_clean_kill_enemy_carrying_tacos, // 0xb1
        medal_frag_multikill_x2_summary, // 0xb2
        medal_concussion_grenade_multikill_x2_summary, // 0xb3
        medal_tak_5_shutdown, // 0xb4
        medal_missile_turret_assist_multiple_vehicles_2, // 0xb5
        medal_soa_kill_enemy_with_explosion, // 0xb6
        medal_jammer_multikill_2, // 0xb7
        medal_gas_trap_kill, // 0xb8
        medal_spy_spy_won, // 0xb9
        medal_spy_operative_survive, // 0xba
        medal_first_kill, // 0xbb
        medal_dirty_bomb_killed_2_bomb_planters, // 0xbc
        medal_escort_robot_disable_near_goal, // 0xbd
        medal_passenger_gunner_kill, // 0xbe
        medal_grapple_gun_multikill_x2_summary, // 0xbf
        medal_assisted_suicide, // 0xc0
        medal_setback_sas, // 0xc1
        medal_rcxd_killjoy, // 0xc2
        hash_690e2ef893be1ea9, // 0xc3
        medal_destroyed_hover_jet, // 0xc4
        medal_stop_enemy_killstreak, // 0xc5
        medal_driver_weapon_kill, // 0xc6
        medal_dirty_bomb_killed_enemy_holding_uranium, // 0xc7
        medal_spectre_blade_multikill_2, // 0xc8
        medal_eliminated_enemy, // 0xc9
        medal_dropkick_carry_football_kill_5_enemies, // 0xca
        medal_war_machine_x2_multikill_summary, // 0xcb
        medal_war_killed_enemy_capturing_home, // 0xcc
        medal_warthog_killjoy, // 0xcd
        medal_cuav_killjoy, // 0xce
        medal_radiation_field_multikill_x2_summary, // 0xcf
        medal_kill_enemies_one_bullet, // 0xd0
        medal_spectre_blade_shutdown, // 0xd1
        medal_annihilator_shutdown, // 0xd2
        medal_gravity_slam_multikill_x2, // 0xd3
        medal_dropkick_hold_football_50_seconds, // 0xd4
        medal_vip_exfil, // 0xd5
        medal_finishing_move_kill, // 0xd6
        medal_final_survivor, // 0xd7
        medal_kill_enemy_while_capping_dom, // 0xd8
        medal_killstreak_15, // 0xd9
        medal_killstreak_10, // 0xda
        medal_killstreak_20, // 0xdb
        medal_killstreak_25, // 0xdc
        medal_killstreak_30, // 0xdd
        medal_tank_robot_kill, // 0xde
        medal_concertina_wire_multikill_x2_summary, // 0xdf
        medal_care_package_killjoy, // 0xe0
        medal_uav_killjoy, // 0xe1
        medal_lightning_strike_kill, // 0xe2
        medal_stim_shot_multikill_2, // 0xe3
        medal_war_machine_shutdown, // 0xe4
        medal_kill_with_thrown_back_grenade, // 0xe5
        medal_defused_bomb_last_man_alive, // 0xe6
        medal_attack_chopper_kill, // 0xe7
        medal_trophy_system_multiple_interceptions, // 0xe8
        medal_headshot, // 0xe9
        medal_anti_hack // 0xea
    };

    // idx 0x3c members: 0x3
    enum outcome {
        loss, // 0x0
        win, // 0x1
        draw // 0x2
    };

    // idx 0x3d members: 0x12
    enum hitlocations {
        right_leg_upper, // 0x0
        head, // 0x1
        left_arm_lower, // 0x2
        left_arm_upper, // 0x3
        left_leg_lower, // 0x4
        torso_upper, // 0x5
        torso_lower, // 0x6
        helmet, // 0x7
        right_arm_lower, // 0x8
        torso_mid, // 0x9
        left_hand, // 0xa
        right_leg_lower, // 0xb
        right_arm_upper, // 0xc
        left_foot, // 0xd
        right_foot, // 0xe
        left_leg_upper, // 0xf
        neck, // 0x10
        right_hand // 0x11
    };

    // idx 0x3e members: 0x2
    enum gamehistorymodes {
        publicmatch, // 0x0
        leaguematch // 0x1
    };

    // idx 0x3f members: 0x5
    enum quittype {
        dashboard, // 0x0
        quit, // 0x1
        kicked, // 0x2
        finished, // 0x3
        timeout // 0x4
    };

    // idx 0x40 members: 0x14
    enum hash_1609003ae729fea3 {
        destroyed, // 0x0
        combatrecordstat, // 0x1
        backstabber_kill, // 0x2
        deathsduringuse, // 0x3
        deaths, // 0x4
        challenge6, // 0x5
        challenge7, // 0x6
        challenge4, // 0x7
        challenge5, // 0x8
        challenge2, // 0x9
        challenge3, // 0xa
        challenge1, // 0xb
        challenges, // 0xc
        timeused, // 0xd
        hits, // 0xe
        headshots, // 0xf
        shots, // 0x10
        kills, // 0x11
        used, // 0x12
        assists // 0x13
    };

    // idx 0x41 members: 0x2
    enum hash_5d3fe1ad289b65a7 {
        blackmarket, // 0x0
        default // 0x1
    };

    // root: bitSize: 0x146528, members: 58

    // offset: 0x0, bitSize: 0xa0(0x14 Byte(s))
    dlc_t dlc;
    // offset: 0xa0, bitSize: 0x5dd0(0xbba Byte(s)), array:0x13(hti:0x2)
    itemstats item_group_stats[hash_7493d39e2637c1e7];
    // offset: 0x5e70, bitSize: 0x20(0x4 Byte(s))
    uint hash_151429c0411edbfb;
    // offset: 0x5e90, bitSize: 0x680e8(0xd01d Byte(s)), array:0x2b(hti:0xb)
    mapstats mapstats[mpmaps];
    // offset: 0x6df78, bitSize: 0x20(0x4 Byte(s))
    uint hash_3ec47111a3993e52;
    // offset: 0x6df98, bitSize: 0x8(0x1 Byte(s))
    uint:4 lastconsolesave;
    // offset: 0x6dfa0, bitSize: 0x40(0x8 Byte(s))
    uint64 player_xuid;
    // offset: 0x6dfe0, bitSize: 0x8(0x1 Byte(s))
    uint:5 selectedcustomclass;
    // offset: 0x6dfe8, bitSize: 0x5460(0xa8c Byte(s)), array:0x3c(hti:0x5)
    attachmentstats attachment_stats[hash_1e2de876fb880be2];
    // offset: 0x73448, bitSize: 0x20(0x4 Byte(s))
    uint hashlen;
    // offset: 0x73468, bitSize: 0x40(0x8 Byte(s))
    uint64 hash_37aeca4d39214e62;
    // offset: 0x734a8, bitSize: 0x200(0x40 Byte(s)), array:0x40(hti:0xffff)
    byte extrabytes[64];
    // offset: 0x736a8, bitSize: 0x3050(0x60a Byte(s)), array:0x2(hti:0x3e)
    gamehistorystats gamehistory[gamehistorymodes];
    // offset: 0x766f8, bitSize: 0x8(0x1 Byte(s))
    uint:3 hash_606b282bcebd3b66;
    // offset: 0x76700, bitSize: 0x16800(0x2d00 Byte(s)), array:0x100(hti:0xffff)
    hash_1608f63ae729eda5 weaponstats[256];
    // offset: 0x8cf00, bitSize: 0x100(0x20 Byte(s)), array:0x2(hti:0x41)
    hash_78ac7dfcd6939c25 hash_4414ff885506d857[hash_5d3fe1ad289b65a7];
    // offset: 0x8d000, bitSize: 0x20(0x4 Byte(s))
    uint hash_56c806cc4a28c108;
    // offset: 0x8d020, bitSize: 0xc20(0x184 Byte(s)), array:0x61(hti:0x1)
    rankeditemstats ranked_item_stats[hash_4b8d95aacf149fb9];
    // offset: 0x8dc40, bitSize: 0x19020(0x3204 Byte(s)), array:0x61(hti:0x1)
    weaponstats hash_3713686a5fc7b39e[hash_4b8d95aacf149fb9];
    // offset: 0xa6c60, bitSize: 0xdec0(0x1bd8 Byte(s)), array:0x36(hti:0x4)
    equipmentstats hash_7a634ccef92080c6[hash_507792265be6dcc4];
    // offset: 0xb4b20, bitSize: 0x280(0x50 Byte(s)), array:0x14(hti:0xffff)
    uint hash_658c026fb3d608db[20];
    // offset: 0xb4da0, bitSize: 0x20(0x4 Byte(s))
    float performancevalue;
    // offset: 0xb4dc0, bitSize: 0x20(0x4 Byte(s))
    int combattrainingwins;
    // offset: 0xb4de0, bitSize: 0x40(0x8 Byte(s))
    uint64 connectionid;
    // offset: 0xb4e20, bitSize: 0x8(0x1 Byte(s))
    uint:5 gamebookmarkindex;
    // offset: 0xb4e28, bitSize: 0x20(0x4 Byte(s))
    int motdversionviewed;
    // offset: 0xb4e48, bitSize: 0x20(0x4 Byte(s))
    int design_version;
    // offset: 0xb4e68, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
    byte statshash[50];
    // offset: 0xb4ff8, bitSize: 0x3ea50(0x7d4a Byte(s)), array:0xcb(hti:0x0)
    itemstats item_stats[hash_10d50fe10481423c];
    // offset: 0xf3a48, bitSize: 0x1180(0x230 Byte(s)), array:0xa(hti:0xffff)
    hash_4976dab983b23e8c consoleinfo[10];
    // offset: 0xf4bc8, bitSize: 0x20(0x4 Byte(s))
    uint hash_10ddf783cbee6688;
    // offset: 0xf4be8, bitSize: 0x40(0x8 Byte(s))
    uint64 hash_188ecc3aca50f93d;
    // offset: 0xf4c28, bitSize: 0x3c270(0x784e Byte(s)), array:0x3b(hti:0x9)
    gametypestats playerstatsbygametype[hash_38abf0e3af75eb5b];
    // offset: 0x130e98, bitSize: 0x100(0x20 Byte(s)), array:0x20(hti:0xffff)
    byte demonwareflags[32];
    // offset: 0x130f98, bitSize: 0x20(0x4 Byte(s))
    float skill_rating;
    // offset: 0x130fb8, bitSize: 0x760(0xec Byte(s)), array:0x3b(hti:0x9)
    float hash_2363e7e74077b1c0[hash_38abf0e3af75eb5b];
    // offset: 0x131718, bitSize: 0x20(0x4 Byte(s))
    uint uploadbandwidth;
    // offset: 0x131738, bitSize: 0x3e28(0x7c5 Byte(s)), array:0x27(hti:0x38)
    specialiststats specialist_stats[mp_character_customization];
    // offset: 0x135560, bitSize: 0xc0(0x18 Byte(s)), array:0x2(hti:0x3e)
    hash_16df3a6474be0b92 probation[gamehistorymodes];
    // offset: 0x135620, bitSize: 0x20(0x4 Byte(s))
    int motdviewtime;
    // offset: 0x135640, bitSize: 0x400(0x80 Byte(s)), array:0x10(hti:0xffff)
    uint64 gamebookmarks[16];
    // offset: 0x135a40, bitSize: 0x8(0x1 Byte(s))
    uint:3 onboardingstate;
    // offset: 0x135a48, bitSize: 0xa4a8(0x1495 Byte(s))
    globalstats playerstatslist;
    // offset: 0x13fef0, bitSize: 0x28(0x5 Byte(s))
    hash_402baff65ae9b838 clantagstats;
    // offset: 0x13ff18, bitSize: 0x3c0(0x78 Byte(s)), array:0xa(hti:0xffff)
    contract_s contracts[10];
    // offset: 0x1402d8, bitSize: 0x20(0x4 Byte(s))
    float skill_variance;
    // offset: 0x1402f8, bitSize: 0x760(0xec Byte(s)), array:0x3b(hti:0x9)
    float hash_3a7324ad328f0e2e[hash_38abf0e3af75eb5b];
    // offset: 0x140a58, bitSize: 0x348(0x69 Byte(s))
    aarstats afteractionreportstats;
    // offset: 0x140da0, bitSize: 0x100(0x20 Byte(s)), array:0x20(hti:0xffff)
    byte unlocks[32];
    // offset: 0x140ea0, bitSize: 0xfb0(0x1f6 Byte(s))
    hash_790a163d0959fa18 emblemstats;
    // offset: 0x141e50, bitSize: 0x3300(0x660 Byte(s)), array:0x20(hti:0x3)
    scorestreakstats hash_5d925e2af850ce9e[hash_d5731f85b8cf294];
    // offset: 0x145150, bitSize: 0x30(0x6 Byte(s))
    string(6) hash_6073ea7c9a394456;
    // offset: 0x145180, bitSize: 0x1320(0x264 Byte(s)), array:0xc(hti:0x3a)
    hash_4083bced4c7759a2 hash_3d466b9663c34ff2[hash_5c71c24be793aa0c];
    // offset: 0x1464a0, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
    bool extrabools[64];
    // offset: 0x1464e0, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
    bool hash_1576a2fd30a2dfb0[64];
    // offset: 0x146520, bitSize: 0x1
    bool playingonwifi;
    // offset: 0x146521, bitSize: 0x1
    bool completedfirsttimeflow;
};

