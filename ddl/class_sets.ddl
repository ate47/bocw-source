// file .... class_sets.ddl

#redirect hash_5d977fb724a8437a;

version hash_e7aeac5d59ea9f8d {
    // enums ..... 0 (0x0)
    // structs ... 8 (0x8)
    // header bit size .. 38736 (0x9750)
    // header byte size . 4842 (0x12ea)

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

    // bitSize: 0xc88, members: 3
    struct hash_5814f20693f11787 {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s))
        string(16) classsetname;
        // offset: 0x80, bitSize: 0x708(0xe1 Byte(s)), array:0x5(hti:0xffff)
        hash_27580df06d232ed1 customclass[5];
        // offset: 0x788, bitSize: 0x500(0xa0 Byte(s)), array:0xa(hti:0xffff)
        string(16) customclassname[10];
    };

    // root: bitSize: 0x96a0, members: 9

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xc88(0x191 Byte(s))
    hash_5814f20693f11787 hash_eeca5d678902a83;
    // offset: 0xca8, bitSize: 0x8(0x1 Byte(s))
    uint:4 custommatchcurrentclasssetindex;
    // offset: 0xcb0, bitSize: 0x8(0x1 Byte(s))
    uint:4 hash_18ba05e4ae1bcfff;
    // offset: 0xcb8, bitSize: 0x3ea8(0x7d5 Byte(s)), array:0x5(hti:0xffff)
    hash_5814f20693f11787 custommatchclasssets[5];
    // offset: 0x4b60, bitSize: 0xc88(0x191 Byte(s))
    hash_5814f20693f11787 hash_4318aa0e7238f645;
    // offset: 0x57e8, bitSize: 0x8(0x1 Byte(s))
    uint:4 publicmatchcurrentclasssetindex;
    // offset: 0x57f0, bitSize: 0x8(0x1 Byte(s))
    uint:4 hash_4148199a85d44d69;
    // offset: 0x57f8, bitSize: 0x3ea8(0x7d5 Byte(s)), array:0x5(hti:0xffff)
    hash_5814f20693f11787 publicmatchclasssets[5];
};

