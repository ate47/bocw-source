// file .... cp_stats.ddl

#redirect hash_7e14552959454f41;

version hash_210f25eb4e5b9f6 {
    // enums ..... 2 (0x2)
    // structs ... 3 (0x3)
    // header bit size .. 2752 (0xac0)
    // header byte size . 344 (0x158)

    // bitSize: 0x28, members: 6
    struct hash_73ecef1abc22306b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:3 highestdifficulty;
        // offset: 0x8, bitSize: 0xa, array:0xa(hti:0xffff)
        bool evidence[10];
        // offset: 0x12, bitSize: 0xa, array:0xa(hti:0xffff)
        bool hash_42b984266100b32[10];
        // offset: 0x1c, bitSize: 0xa, array:0xa(hti:0xffff)
        bool hash_43a738b893199779[10];
        // offset: 0x26, bitSize: 0x1
        bool complete;
        // offset: 0x27, bitSize: 0x1
        bool unlocked;
    };

    // bitSize: 0x8, members: 1
    struct hash_70661afa1f4668c2 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 missionindex;
    };

    // idx 0x0 members: 0x12
    enum hash_77d9cc12441881d5 {
        cp_ger_hub, // 0x0
        cp_nam_armada, // 0x1
        cp_rus_amerika, // 0x2
        cp_rus_yamantau, // 0x3
        cp_nam_prisoner, // 0x4
        cp_ger_hub_post_cuba, // 0x5
        cp_rus_duga, // 0x6
        cp_takedown, // 0x7
        cp_sidemission_tundra, // 0x8
        cp_sidemission_takedown, // 0x9
        cp_nic_revolucion, // 0xa
        cp_rus_kgb, // 0xb
        cp_ger_hub8, // 0xc
        cp_ger_stakeout, // 0xd
        cp_ger_hub_post_yamantau, // 0xe
        cp_ger_hub_post_armada, // 0xf
        cp_ger_hub_post_kgb, // 0x10
        cp_rus_siege // 0x11
    };

    // idx 0x1 members: 0x2
    enum hash_64d0f7f5c2ee19f5 {
        cp_sidemission_tundra, // 0x0
        cp_sidemission_takedown // 0x1
    };

    // root: bitSize: 0xa10, members: 17

    // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
    uint64 player_xuid;
    // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
    hash_77d9cc12441881d5 hash_19d9ddd673699368;
    // offset: 0x48, bitSize: 0x20(0x4 Byte(s))
    uint hash_6addb0d6ea1de644;
    // offset: 0x68, bitSize: 0x10(0x2 Byte(s)), array:0x2(hti:0x1)
    hash_70661afa1f4668c2 hash_1e7fdd28f2a28f78[hash_64d0f7f5c2ee19f5];
    // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
    int:4 hash_5a9ce7cd1e0428d8;
    // offset: 0x80, bitSize: 0x20(0x4 Byte(s))
    int design_version;
    // offset: 0xa0, bitSize: 0x2d0(0x5a Byte(s)), array:0x12(hti:0x0)
    hash_73ecef1abc22306b mapdata[hash_77d9cc12441881d5];
    // offset: 0x370, bitSize: 0x8(0x1 Byte(s))
    uint:3 currentdifficulty;
    // offset: 0x378, bitSize: 0x200(0x40 Byte(s))
    string(64) hash_47f2aa02a53a0d57;
    // offset: 0x578, bitSize: 0x80(0x10 Byte(s))
    string(16) hash_5e4bddb020fecb90;
    // offset: 0x5f8, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_37a113cbd02390eb;
    // offset: 0x6f8, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_37a114cbd023929e;
    // offset: 0x7f8, bitSize: 0x200(0x40 Byte(s))
    string(64) hash_56496a50c42322a9;
    // offset: 0x9f8, bitSize: 0xa, array:0xa(hti:0xffff)
    bool hash_6a289d8183e39dc5[10];
    // offset: 0xa02, bitSize: 0x1
    bool hash_74b91965f8d9ed72;
    // offset: 0xa03, bitSize: 0x6, array:0x6(hti:0xffff)
    bool collectibles[6];
};

