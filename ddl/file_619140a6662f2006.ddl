// file .... ddl_619140a6662f2006

#redirect hash_2e3a4a3b89296c0b;

version hash_2954e86961a2c561 {
    // enums ..... 0 (0x0)
    // structs ... 23 (0x17)
    // header bit size .. 1576 (0x628)
    // header byte size . 197 (0xc5)

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

    // bitSize: 0x518, members: 84
    struct globalstats {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3838c32bb431ef26;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3838c22bb431ed73;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3838c12bb431ebc0;
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3838c82bb431f7a5;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3838c72bb431f5f2;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3838c62bb431f43f;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3838c52bb431f28c;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3838cc2bb431fe71;
        // offset: 0x80, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3838cb2bb431fcbe;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_6e6d659291806b0a;
        // offset: 0x98, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6c9bd8c5ae1a5496;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3d48d424c78e2c71;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1a3a3332aeba03a1;
        // offset: 0xc8, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_3bc242e9c32bbf0e;
        // offset: 0xd0, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_7c2434b9e52af4f8;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_5cdb34e762e6c13c;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_29b3640368e489f5;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_6561f9fe9f8b35fe;
        // offset: 0xf0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4941bc4d64a8e38;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_77949922a2548da2;
        // offset: 0x108, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7208e21496453ace;
        // offset: 0x118, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7208e1149645391b;
        // offset: 0x128, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7208e01496453768;
        // offset: 0x138, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7208e7149645434d;
        // offset: 0x148, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3a26c6202d86ed8d;
        // offset: 0x158, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3a26c3202d86e874;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3a26c4202d86ea27;
        // offset: 0x178, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3a26c1202d86e50e;
        // offset: 0x188, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_545701dba0e9f13c;
        // offset: 0x198, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_513bd1963a91e24d;
        // offset: 0x1a8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_513bce963a91dd34;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_513bcf963a91dee7;
        // offset: 0x1c8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_513bcc963a91d9ce;
        // offset: 0x1d8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_513bcd963a91db81;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_513bca963a91d668;
        // offset: 0x1f8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_513bcb963a91d81b;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_513bc8963a91d302;
        // offset: 0x218, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_513bc9963a91d4b5;
        // offset: 0x228, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_888da2016aa5d1c;
        // offset: 0x230, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_5262fef4c26cc2ab;
        // offset: 0x238, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3d9159bfdb045054;
        // offset: 0x248, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3d915cbfdb04556d;
        // offset: 0x258, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_3d915bbfdb0453ba;
        // offset: 0x270, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3d9156bfdb044b3b;
        // offset: 0x280, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_122768477016f4e5;
        // offset: 0x290, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7e82640bedc5ea04;
        // offset: 0x2a0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_24abaa59aafa466b;
        // offset: 0x2b0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_24abab59aafa481e;
        // offset: 0x2c0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_24abac59aafa49d1;
        // offset: 0x2d0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_24abad59aafa4b84;
        // offset: 0x2e0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_47351685227336cc;
        // offset: 0x2f0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_725adb52613ffb99;
        // offset: 0x300, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_777767b99c350232;
        // offset: 0x310, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_777766b99c35007f;
        // offset: 0x320, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_777765b99c34fecc;
        // offset: 0x330, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_777764b99c34fd19;
        // offset: 0x340, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4711f96a09147c;
        // offset: 0x358, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4714f96a091995;
        // offset: 0x368, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_4713f96a0917e2;
        // offset: 0x388, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5677d9133114a8ac;
        // offset: 0x398, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_734f1d49f5395c1;
        // offset: 0x3a8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_734eed49f5390a8;
        // offset: 0x3b8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_734efd49f53925b;
        // offset: 0x3c8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_734f4d49f539ada;
        // offset: 0x3d8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_440a913b1fa5afba;
        // offset: 0x3e8, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_354e181f9cfcfaa;
        // offset: 0x3f0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5eed955767f06002;
        // offset: 0x400, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_76bf58f08a08d598;
        // offset: 0x410, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_76bf5bf08a08dab1;
        // offset: 0x420, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_76bf5af08a08d8fe;
        // offset: 0x438, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_76bf5df08a08de17;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_444f1dac1f53fa7f;
        // offset: 0x458, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_359d28a01a8a6dfe;
        // offset: 0x468, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5135a4983fb81980;
        // offset: 0x478, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_3dff37191ad5c7d0;
        // offset: 0x480, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a970e436e734f6;
        // offset: 0x490, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a96fe436e73343;
        // offset: 0x4a0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a96ee436e73190;
        // offset: 0x4b0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a975e436e73d75;
        // offset: 0x4c0, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_5a974e436e73bc2;
        // offset: 0x4d8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a973e436e73a0f;
        // offset: 0x4e8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a972e436e7385c;
        // offset: 0x4f8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a979e436e74441;
        // offset: 0x508, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a978e436e7428e;
    };

    // root: bitSize: 0x578, members: 3

    // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
    uint64 player_xuid;
    // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
    int design_version;
    // offset: 0x60, bitSize: 0x518(0xa3 Byte(s))
    globalstats playerstatslist;
};

version hash_1e0ba40f467d46a0 {
    // enums ..... 0 (0x0)
    // structs ... 1 (0x1)
    // header bit size .. 272 (0x110)
    // header byte size . 34 (0x22)

    // root: bitSize: 0x60, members: 2

    // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
    uint64 player_xuid;
    // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
    int design_version;
};

version hash_6d59da97f809e1b8 {
    // enums ..... 0 (0x0)
    // structs ... 22 (0x16)
    // header bit size .. 520 (0x208)
    // header byte size . 65 (0x41)

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

    // bitSize: 0xf8, members: 14
    struct globalstats {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6c9bd8c5ae1a5496;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3d48d424c78e2c71;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4941bc4d64a8e38;
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_122768477016f4e5;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7e82640bedc5ea04;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_47351685227336cc;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_725adb52613ffb99;
        // offset: 0x70, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4711f96a09147c;
        // offset: 0x88, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4714f96a091995;
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_4713f96a0917e2;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5677d9133114a8ac;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_440a913b1fa5afba;
        // offset: 0xd8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5eed955767f06002;
        // offset: 0xe8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5135a4983fb81980;
    };

    // root: bitSize: 0x158, members: 3

    // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
    uint64 player_xuid;
    // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
    int design_version;
    // offset: 0x60, bitSize: 0xf8(0x1f Byte(s))
    globalstats playerstatslist;
};

version hash_18d26033c4b2bb9e {
    // enums ..... 0 (0x0)
    // structs ... 23 (0x17)
    // header bit size .. 520 (0x208)
    // header byte size . 65 (0x41)

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

    // bitSize: 0xf8, members: 14
    struct globalstats {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6c9bd8c5ae1a5496;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3d48d424c78e2c71;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4941bc4d64a8e38;
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_122768477016f4e5;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7e82640bedc5ea04;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_47351685227336cc;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_725adb52613ffb99;
        // offset: 0x70, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4711f96a09147c;
        // offset: 0x88, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4714f96a091995;
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_4713f96a0917e2;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5677d9133114a8ac;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_440a913b1fa5afba;
        // offset: 0xd8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5eed955767f06002;
        // offset: 0xe8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5135a4983fb81980;
    };

    // root: bitSize: 0x158, members: 3

    // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
    uint64 player_xuid;
    // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
    int design_version;
    // offset: 0x60, bitSize: 0xf8(0x1f Byte(s))
    globalstats playerstatslist;
};

version hash_b290a68665dee5d8 {
    // enums ..... 0 (0x0)
    // structs ... 23 (0x17)
    // header bit size .. 720 (0x2d0)
    // header byte size . 90 (0x5a)

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

    // bitSize: 0x1c0, members: 26
    struct globalstats {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6c9bd8c5ae1a5496;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3d48d424c78e2c71;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4941bc4d64a8e38;
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_122768477016f4e5;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7e82640bedc5ea04;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_47351685227336cc;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_725adb52613ffb99;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_777767b99c350232;
        // offset: 0x80, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_777766b99c35007f;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_777765b99c34fecc;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_777764b99c34fd19;
        // offset: 0xb0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4711f96a09147c;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4714f96a091995;
        // offset: 0xd8, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_4713f96a0917e2;
        // offset: 0xf8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5677d9133114a8ac;
        // offset: 0x108, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_734f1d49f5395c1;
        // offset: 0x118, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_734eed49f5390a8;
        // offset: 0x128, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_734efd49f53925b;
        // offset: 0x138, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_734f4d49f539ada;
        // offset: 0x148, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_440a913b1fa5afba;
        // offset: 0x158, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5eed955767f06002;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_76bf58f08a08d598;
        // offset: 0x178, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_76bf5bf08a08dab1;
        // offset: 0x188, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_76bf5af08a08d8fe;
        // offset: 0x1a0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_76bf5df08a08de17;
        // offset: 0x1b0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5135a4983fb81980;
    };

    // root: bitSize: 0x220, members: 3

    // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
    uint64 player_xuid;
    // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
    int design_version;
    // offset: 0x60, bitSize: 0x1c0(0x38 Byte(s))
    globalstats playerstatslist;
};

version hash_79f3b2be6c6ba515 {
    // enums ..... 0 (0x0)
    // structs ... 23 (0x17)
    // header bit size .. 984 (0x3d8)
    // header byte size . 123 (0x7b)

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

    // bitSize: 0x2c8, members: 47
    struct globalstats {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_6e6d659291806b0a;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6c9bd8c5ae1a5496;
        // offset: 0x18, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3d48d424c78e2c71;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_3bc242e9c32bbf0e;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_5cdb34e762e6c13c;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_29b3640368e489f5;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_6561f9fe9f8b35fe;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4941bc4d64a8e38;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_77949922a2548da2;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_545701dba0e9f13c;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_888da2016aa5d1c;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_5262fef4c26cc2ab;
        // offset: 0x80, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_122768477016f4e5;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7e82640bedc5ea04;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_47351685227336cc;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_725adb52613ffb99;
        // offset: 0xc0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_777767b99c350232;
        // offset: 0xd0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_777766b99c35007f;
        // offset: 0xe0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_777765b99c34fecc;
        // offset: 0xf0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_777764b99c34fd19;
        // offset: 0x100, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4711f96a09147c;
        // offset: 0x118, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4714f96a091995;
        // offset: 0x128, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_4713f96a0917e2;
        // offset: 0x148, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5677d9133114a8ac;
        // offset: 0x158, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_734f1d49f5395c1;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_734eed49f5390a8;
        // offset: 0x178, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_734efd49f53925b;
        // offset: 0x188, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_734f4d49f539ada;
        // offset: 0x198, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_440a913b1fa5afba;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_354e181f9cfcfaa;
        // offset: 0x1b0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5eed955767f06002;
        // offset: 0x1c0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_76bf58f08a08d598;
        // offset: 0x1d0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_76bf5bf08a08dab1;
        // offset: 0x1e0, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_76bf5af08a08d8fe;
        // offset: 0x1f8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_76bf5df08a08de17;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_444f1dac1f53fa7f;
        // offset: 0x218, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5135a4983fb81980;
        // offset: 0x228, bitSize: 0x8(0x1 Byte(s))
        hash_5f229cdf260868d1 hash_3dff37191ad5c7d0;
        // offset: 0x230, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a970e436e734f6;
        // offset: 0x240, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a96fe436e73343;
        // offset: 0x250, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a96ee436e73190;
        // offset: 0x260, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a975e436e73d75;
        // offset: 0x270, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_5a974e436e73bc2;
        // offset: 0x288, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a973e436e73a0f;
        // offset: 0x298, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a972e436e7385c;
        // offset: 0x2a8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a979e436e74441;
        // offset: 0x2b8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5a978e436e7428e;
    };

    // root: bitSize: 0x328, members: 3

    // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
    uint64 player_xuid;
    // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
    int design_version;
    // offset: 0x60, bitSize: 0x2c8(0x59 Byte(s))
    globalstats playerstatslist;
};

