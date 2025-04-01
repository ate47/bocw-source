// file .... zm_map_transition.ddl

#redirect hash_148a405425eaa592;

version hash_502418f36914bffe {
    // enums ..... 3 (0x3)
    // structs ... 9 (0x9)
    // header bit size .. 34680 (0x8778)
    // header byte size . 4335 (0x10ef)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 18
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x409, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x40a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x40b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x40c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x40d, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x40e, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x350, members: 14
    struct hash_72861a724cbff619 {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x108, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x308, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x348, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x349, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x34a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x34b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x34c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x34d, bitSize: 0x1
        bool hash_455cfe820071b143;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1b48, members: 43
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_76d7fda5546b7d;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xe0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x380, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x3a0, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_737acdd971f0af48;
        // offset: 0x3e0, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x3e8, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x3f8, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x400, bitSize: 0x20(0x4 Byte(s))
        uint hash_2c7dccb1d75c9993;
        // offset: 0x420, bitSize: 0x20(0x4 Byte(s))
        uint hash_376217ca748b6f62;
        // offset: 0x440, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1480, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1490, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x14f0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x14f8, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        uint hash_47c5fe6b4bbd9f0f[3];
        // offset: 0x1558, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x1578, bitSize: 0x20(0x4 Byte(s))
        uint scoretotal;
        // offset: 0x1598, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4118467bee30e606;
        // offset: 0x15d8, bitSize: 0x20(0x4 Byte(s))
        uint hash_1824003b58adcb7e;
        // offset: 0x15f8, bitSize: 0x350(0x6a Byte(s))
        hash_72861a724cbff619 hash_5e1b2fdec911ccdf;
        // offset: 0x1948, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x1950, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x1970, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x1978, bitSize: 0x20(0x4 Byte(s))
        uint hash_3d0d59f6f3da2e5b;
        // offset: 0x1998, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x19b8, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x19d8, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x19f8, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1a08, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1a48, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1a90, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1ad8, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1af8, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1b40, bitSize: 0x1
        bool valid;
        // offset: 0x1b41, bitSize: 0x1
        bool hash_7cbf6a38abb6c4fe;
        // offset: 0x1b42, bitSize: 0x1
        bool selectedloadout;
        // offset: 0x1b43, bitSize: 0x1
        bool hash_1cd82a25a6e6afe8;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x7
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend, // 0x5
        transport // 0x6
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x86c8, members: 20

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xe38(0x1c7 Byte(s)), array:0x7(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xed8, bitSize: 0x20(0x4 Byte(s))
    uint hash_3d1c462f6d4757c2;
    // offset: 0xef8, bitSize: 0x480(0x90 Byte(s)), array:0x8(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[8];
    // offset: 0x1378, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1380, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1390, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1890, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1990, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1998, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x19a0, bitSize: 0x6d20(0xda4 Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x86c0, bitSize: 0x1
    bool hash_6b772645c0ad8598;
    // offset: 0x86c1, bitSize: 0x1
    bool hash_62df6469a6590d1c;
    // offset: 0x86c2, bitSize: 0x1
    bool initialized;
    // offset: 0x86c3, bitSize: 0x1
    bool hash_17d8f2b850883bac;
    // offset: 0x86c4, bitSize: 0x1
    bool hash_1153a17aabbab61f;
    // offset: 0x86c5, bitSize: 0x1
    bool hash_569773895b461123;
    // offset: 0x86c6, bitSize: 0x1
    bool hash_48a412c1da6da338;
    // offset: 0x86c7, bitSize: 0x1
    bool hash_74df6580d1c35b58;
};

version hash_3e22e5b96769e6b2 {
    // enums ..... 0 (0x0)
    // structs ... 4 (0x4)
    // header bit size .. 12328 (0x3028)
    // header byte size . 1541 (0x605)

    // bitSize: 0x2e8, members: 6
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0xe8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0xbd8, members: 15
    struct player {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0x40, bitSize: 0x180(0x30 Byte(s)), array:0x6(hti:0xffff)
        xhash perks[6];
        // offset: 0x1c0, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x1e0, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x1f0, bitSize: 0x8b8(0x117 Byte(s)), array:0x3(hti:0xffff)
        weapon weapons[3];
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0xab0, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_2e483c12c2bd26cd;
        // offset: 0xab8, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0xad8, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0xae8, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0xb28, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0xb70, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0xbb8, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
    };

    // root: bitSize: 0x2f78, members: 4

    // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x10, bitSize: 0x2f60(0x5ec Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x2f70, bitSize: 0x1
    bool initialized;
};

version hash_cf3264a2a406a278 {
    // enums ..... 2 (0x2)
    // structs ... 7 (0x7)
    // header bit size .. 20056 (0x4e58)
    // header byte size . 2507 (0x9cb)

    // bitSize: 0x3b0, members: 12
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0xe8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x128, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x168, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x368, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x3a8, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x3a9, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x50, members: 4
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        byte tribute;
        // offset: 0x28, bitSize: 0x20(0x4 Byte(s))
        uint hash_f0eccd443684741;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1320, members: 25
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0x60, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0x80, bitSize: 0x180(0x30 Byte(s)), array:0x6(hti:0xffff)
        xhash perks[6];
        // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x220, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x240, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x248, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x258, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x260, bitSize: 0xec0(0x1d8 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1120, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1130, bitSize: 0x50(0xa Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x1180, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x1188, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x1190, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x11b0, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x11d0, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x11e0, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1220, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1268, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x12b0, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x12d0, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1318, bitSize: 0x1
        bool valid;
    };

    // bitSize: 0x10, members: 2
    struct destination {
        // offset: 0x0, bitSize: 0xe, array:0xe(hti:0x1)
        bool hash_51416992d6e52e2d[hash_7636414aeff3cce4];
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // idx 0x0 members: 0x6
    enum hash_3cf9bad1617a0ffd {
        wz_zoo, // 0x0
        wz_sanatorium, // 0x1
        wz_golova, // 0x2
        wz_ski_slopes, // 0x3
        wz_duga, // 0x4
        wz_forest // 0x5
    };

    // idx 0x1 members: 0xe
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        hash_5077900a6875c57, // 0x2
        exfil, // 0x3
        ee, // 0x4
        hash_235c12d261984c1d, // 0x5
        destroy, // 0x6
        hash_3eb0da94cd242359, // 0x7
        final_battle, // 0x8
        payload, // 0x9
        collect, // 0xa
        secure, // 0xb
        retrieval, // 0xc
        defend // 0xd
    };

    // root: bitSize: 0x4da8, members: 7

    // offset: 0x0, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0x0)
    byte hash_7d90dd0798930e91[hash_3cf9bad1617a0ffd];
    // offset: 0x30, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0xc0, bitSize: 0x60(0xc Byte(s)), array:0x6(hti:0x0)
    destination hash_501fca63bac8cf9[hash_3cf9bad1617a0ffd];
    // offset: 0x120, bitSize: 0x4c80(0x990 Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x4da0, bitSize: 0x1
    bool initialized;
};

version hash_b540907f21d98f48 {
    // enums ..... 2 (0x2)
    // structs ... 7 (0x7)
    // header bit size .. 20312 (0x4f58)
    // header byte size . 2539 (0x9eb)

    // bitSize: 0x3b0, members: 12
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0xe8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x128, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x168, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x368, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x3a8, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x3a9, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x50, members: 4
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        byte tribute;
        // offset: 0x28, bitSize: 0x20(0x4 Byte(s))
        uint hash_f0eccd443684741;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1360, members: 27
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0x80, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xc0, bitSize: 0x180(0x30 Byte(s)), array:0x6(hti:0xffff)
        xhash perks[6];
        // offset: 0x240, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x260, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x280, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x288, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x298, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x2a0, bitSize: 0xec0(0x1d8 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1160, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1170, bitSize: 0x50(0xa Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x11c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x11c8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x11d0, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x11f0, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x1210, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1220, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1260, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x12a8, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x12f0, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1310, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1358, bitSize: 0x1
        bool valid;
        // offset: 0x1359, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x10, members: 2
    struct destination {
        // offset: 0x0, bitSize: 0xe, array:0xe(hti:0x1)
        bool hash_51416992d6e52e2d[hash_7636414aeff3cce4];
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // idx 0x0 members: 0x6
    enum hash_3cf9bad1617a0ffd {
        wz_zoo, // 0x0
        wz_sanatorium, // 0x1
        wz_golova, // 0x2
        wz_ski_slopes, // 0x3
        wz_duga, // 0x4
        wz_forest // 0x5
    };

    // idx 0x1 members: 0xe
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        hash_5077900a6875c57, // 0x2
        exfil, // 0x3
        ee, // 0x4
        hash_235c12d261984c1d, // 0x5
        destroy, // 0x6
        hash_3eb0da94cd242359, // 0x7
        final_battle, // 0x8
        payload, // 0x9
        collect, // 0xa
        secure, // 0xb
        retrieval, // 0xc
        defend // 0xd
    };

    // root: bitSize: 0x4ea8, members: 7

    // offset: 0x0, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0x0)
    byte hash_7d90dd0798930e91[hash_3cf9bad1617a0ffd];
    // offset: 0x30, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0xc0, bitSize: 0x60(0xc Byte(s)), array:0x6(hti:0x0)
    destination hash_501fca63bac8cf9[hash_3cf9bad1617a0ffd];
    // offset: 0x120, bitSize: 0x4d80(0x9b0 Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x4ea0, bitSize: 0x1
    bool initialized;
};

version hash_d94d5ab568c2c1b1 {
    // enums ..... 2 (0x2)
    // structs ... 7 (0x7)
    // header bit size .. 20440 (0x4fd8)
    // header byte size . 2555 (0x9fb)

    // bitSize: 0x3b0, members: 12
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0xe8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x128, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x168, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x368, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x3a8, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x3a9, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x50, members: 4
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        byte tribute;
        // offset: 0x28, bitSize: 0x20(0x4 Byte(s))
        uint hash_f0eccd443684741;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1380, members: 28
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0x80, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xc0, bitSize: 0x180(0x30 Byte(s)), array:0x6(hti:0xffff)
        xhash perks[6];
        // offset: 0x240, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x260, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x280, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x288, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x298, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x2a0, bitSize: 0xec0(0x1d8 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1160, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1170, bitSize: 0x50(0xa Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x11c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x11c8, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x11e8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x11f0, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x1210, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x1230, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1240, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1280, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x12c8, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1310, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1330, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1378, bitSize: 0x1
        bool valid;
        // offset: 0x1379, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x10, members: 2
    struct destination {
        // offset: 0x0, bitSize: 0xe, array:0xe(hti:0x1)
        bool hash_51416992d6e52e2d[hash_7636414aeff3cce4];
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // idx 0x0 members: 0x6
    enum hash_3cf9bad1617a0ffd {
        wz_zoo, // 0x0
        wz_sanatorium, // 0x1
        wz_golova, // 0x2
        wz_ski_slopes, // 0x3
        wz_duga, // 0x4
        wz_forest // 0x5
    };

    // idx 0x1 members: 0xe
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        hash_5077900a6875c57, // 0x2
        exfil, // 0x3
        ee, // 0x4
        hash_235c12d261984c1d, // 0x5
        destroy, // 0x6
        hash_3eb0da94cd242359, // 0x7
        final_battle, // 0x8
        payload, // 0x9
        collect, // 0xa
        secure, // 0xb
        retrieval, // 0xc
        defend // 0xd
    };

    // root: bitSize: 0x4f28, members: 7

    // offset: 0x0, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0x0)
    byte hash_7d90dd0798930e91[hash_3cf9bad1617a0ffd];
    // offset: 0x30, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0xc0, bitSize: 0x60(0xc Byte(s)), array:0x6(hti:0x0)
    destination hash_501fca63bac8cf9[hash_3cf9bad1617a0ffd];
    // offset: 0x120, bitSize: 0x4e00(0x9c0 Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x4f20, bitSize: 0x1
    bool initialized;
};

version hash_bd70bd1cd2ac1c5e {
    // enums ..... 1 (0x1)
    // structs ... 7 (0x7)
    // header bit size .. 25576 (0x63e8)
    // header byte size . 3197 (0xc7d)

    // bitSize: 0x3b0, members: 12
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0xe8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x128, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x168, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x368, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x3a8, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x3a9, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x50, members: 4
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        byte tribute;
        // offset: 0x28, bitSize: 0x20(0x4 Byte(s))
        uint hash_f0eccd443684741;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1380, members: 28
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0x80, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xc0, bitSize: 0x180(0x30 Byte(s)), array:0x6(hti:0xffff)
        xhash perks[6];
        // offset: 0x240, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x260, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x280, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x288, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x298, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x2a0, bitSize: 0xec0(0x1d8 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1160, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1170, bitSize: 0x50(0xa Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x11c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x11c8, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x11e8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x11f0, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x1210, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x1230, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1240, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1280, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x12c8, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1310, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1330, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1378, bitSize: 0x1
        bool valid;
        // offset: 0x1379, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x6
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend // 0x5
    };

    // root: bitSize: 0x6338, members: 10

    // offset: 0x0, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0x80, bitSize: 0xc30(0x186 Byte(s)), array:0x6(hti:0x0)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xcb0, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1010, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1020, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1520, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1528, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1530, bitSize: 0x4e00(0x9c0 Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x6330, bitSize: 0x1
    bool initialized;
};

version hash_4729ff830416fe84 {
    // enums ..... 1 (0x1)
    // structs ... 7 (0x7)
    // header bit size .. 26600 (0x67e8)
    // header byte size . 3325 (0xcfd)

    // bitSize: 0x3b0, members: 12
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0xe8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x128, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x168, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x368, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x3a8, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x3a9, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x50, members: 4
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        byte tribute;
        // offset: 0x28, bitSize: 0x20(0x4 Byte(s))
        uint hash_f0eccd443684741;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1480, members: 28
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0x80, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xc0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x340, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x380, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x388, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x398, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x3a0, bitSize: 0xec0(0x1d8 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1260, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1270, bitSize: 0x50(0xa Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x12c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x12c8, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x12e8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x12f0, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x1310, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x1330, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1340, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1380, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x13c8, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1410, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1430, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1478, bitSize: 0x1
        bool valid;
        // offset: 0x1479, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x6
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend // 0x5
    };

    // root: bitSize: 0x6738, members: 10

    // offset: 0x0, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0x80, bitSize: 0xc30(0x186 Byte(s)), array:0x6(hti:0x0)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xcb0, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1010, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1020, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1520, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1528, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1530, bitSize: 0x5200(0xa40 Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x6730, bitSize: 0x1
    bool initialized;
};

version hash_3fc2e79e3fca3702 {
    // enums ..... 1 (0x1)
    // structs ... 8 (0x8)
    // header bit size .. 28136 (0x6de8)
    // header byte size . 3517 (0xdbd)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 13
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x409, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x50, members: 4
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        byte tribute;
        // offset: 0x28, bitSize: 0x20(0x4 Byte(s))
        uint hash_f0eccd443684741;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1600, members: 28
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0x80, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xc0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x340, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x380, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x388, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x398, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x3a0, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x13e0, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x13f0, bitSize: 0x50(0xa Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x1440, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x1448, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x1468, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x1470, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x1490, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x14b0, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x14c0, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1500, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1548, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1590, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x15b0, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x15f8, bitSize: 0x1
        bool valid;
        // offset: 0x15f9, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x6
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend // 0x5
    };

    // root: bitSize: 0x6d38, members: 10

    // offset: 0x0, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0x80, bitSize: 0xc30(0x186 Byte(s)), array:0x6(hti:0x0)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xcb0, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1010, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1020, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1520, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1528, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1530, bitSize: 0x5800(0xb00 Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x6d30, bitSize: 0x1
    bool initialized;
};

version hash_15cf9d15771f11e5 {
    // enums ..... 1 (0x1)
    // structs ... 8 (0x8)
    // header bit size .. 28272 (0x6e70)
    // header byte size . 3534 (0xdce)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 13
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x409, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1618, members: 29
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0x80, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xc0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x340, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x380, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x388, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x398, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x3a0, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x13e0, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x13f0, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x1450, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x1458, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x1478, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x1480, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x1488, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x14a8, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x14c8, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x14d8, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1518, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1560, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x15a8, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x15c8, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1610, bitSize: 0x1
        bool valid;
        // offset: 0x1611, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x6
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend // 0x5
    };

    // root: bitSize: 0x6dc0, members: 12

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xc30(0x186 Byte(s)), array:0x6(hti:0x0)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xcd0, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1030, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1038, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1048, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1548, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1550, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1558, bitSize: 0x5860(0xb0c Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x6db8, bitSize: 0x1
    bool initialized;
};

version hash_52a41ff430c195c1 {
    // enums ..... 1 (0x1)
    // structs ... 8 (0x8)
    // header bit size .. 28400 (0x6ef0)
    // header byte size . 3550 (0xdde)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 13
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x409, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1638, members: 30
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0x80, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xc0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x340, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x380, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x388, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x398, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x3a0, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x13e0, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x13f0, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x1450, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x1458, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x1478, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x1480, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x14a0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x14a8, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x14c8, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x14e8, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x14f8, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1538, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1580, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x15c8, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x15e8, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1630, bitSize: 0x1
        bool valid;
        // offset: 0x1631, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x6
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend // 0x5
    };

    // root: bitSize: 0x6e40, members: 12

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xc30(0x186 Byte(s)), array:0x6(hti:0x0)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xcd0, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1030, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1038, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1048, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1548, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1550, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1558, bitSize: 0x58e0(0xb1c Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x6e38, bitSize: 0x1
    bool initialized;
};

version hash_7db54bf1aef5db84 {
    // enums ..... 3 (0x3)
    // structs ... 8 (0x8)
    // header bit size .. 28784 (0x7070)
    // header byte size . 3598 (0xe0e)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 13
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x409, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1658, members: 31
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0x80, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xc0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x340, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x380, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x388, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x398, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x3a0, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x13e0, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x13f0, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x1450, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x1458, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x1478, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x1480, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x14a0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x14a8, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x14c8, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x14e8, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x1508, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1518, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1558, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x15a0, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x15e8, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1608, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1650, bitSize: 0x1
        bool valid;
        // offset: 0x1651, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x6
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend // 0x5
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x6fc0, members: 13

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xc30(0x186 Byte(s)), array:0x6(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xcd0, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1030, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1038, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1048, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1548, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1648, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1650, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1658, bitSize: 0x5960(0xb2c Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x6fb8, bitSize: 0x1
    bool initialized;
};

version hash_7c6f1c6fe711f835 {
    // enums ..... 3 (0x3)
    // structs ... 8 (0x8)
    // header bit size .. 29168 (0x71f0)
    // header byte size . 3646 (0xe3e)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 13
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x409, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x16b8, members: 33
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_76d7fda5546b7d;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xe0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x380, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x3a0, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x3a8, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x3b8, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x3c0, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1400, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1410, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x1470, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x1478, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x1498, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4118467bee30e606;
        // offset: 0x14d8, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x14e0, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x1500, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x1508, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x1528, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x1548, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x1568, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1578, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x15b8, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1600, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1648, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1668, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x16b0, bitSize: 0x1
        bool valid;
        // offset: 0x16b1, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x6
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend // 0x5
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x7140, members: 13

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xc30(0x186 Byte(s)), array:0x6(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xcd0, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1030, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1038, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1048, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1548, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1648, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1650, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1658, bitSize: 0x5ae0(0xb5c Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x7138, bitSize: 0x1
    bool initialized;
};

version hash_32bd1e8d1d049093 {
    // enums ..... 3 (0x3)
    // structs ... 8 (0x8)
    // header bit size .. 29168 (0x71f0)
    // header byte size . 3646 (0xe3e)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 13
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x409, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x16b8, members: 33
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_76d7fda5546b7d;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xe0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x380, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x3a0, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x3a8, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x3b8, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x3c0, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1400, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1410, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x1470, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x1478, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x1498, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4118467bee30e606;
        // offset: 0x14d8, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x14e0, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x1500, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x1508, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x1528, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x1548, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x1568, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1578, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x15b8, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1600, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1648, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1668, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x16b0, bitSize: 0x1
        bool valid;
        // offset: 0x16b1, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x6
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend // 0x5
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x7140, members: 17

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xc30(0x186 Byte(s)), array:0x6(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xcd0, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1030, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1038, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1048, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1548, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1648, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1650, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1658, bitSize: 0x5ae0(0xb5c Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x7138, bitSize: 0x1
    bool hash_62df6469a6590d1c;
    // offset: 0x7139, bitSize: 0x1
    bool initialized;
    // offset: 0x713a, bitSize: 0x1
    bool hash_569773895b461123;
    // offset: 0x713b, bitSize: 0x1
    bool hash_48a412c1da6da338;
    // offset: 0x713c, bitSize: 0x1
    bool hash_74df6580d1c35b58;
};

version hash_959b57a72a8ecb28 {
    // enums ..... 3 (0x3)
    // structs ... 8 (0x8)
    // header bit size .. 29816 (0x7478)
    // header byte size . 3727 (0xe8f)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 13
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x409, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x16d8, members: 34
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_76d7fda5546b7d;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xe0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x380, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x3a0, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x3a8, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x3b8, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x3c0, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1400, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1410, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x1470, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x1478, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x1498, bitSize: 0x20(0x4 Byte(s))
        uint scoretotal;
        // offset: 0x14b8, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4118467bee30e606;
        // offset: 0x14f8, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x1500, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x1520, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x1528, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x1548, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x1568, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x1588, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1598, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x15d8, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1620, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1668, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1688, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x16d0, bitSize: 0x1
        bool valid;
        // offset: 0x16d1, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x7
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend, // 0x5
        transport // 0x6
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x73c8, members: 17

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xe38(0x1c7 Byte(s)), array:0x7(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xed8, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1238, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1240, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1250, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1750, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1850, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1858, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1860, bitSize: 0x5b60(0xb6c Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x73c0, bitSize: 0x1
    bool hash_62df6469a6590d1c;
    // offset: 0x73c1, bitSize: 0x1
    bool initialized;
    // offset: 0x73c2, bitSize: 0x1
    bool hash_569773895b461123;
    // offset: 0x73c3, bitSize: 0x1
    bool hash_48a412c1da6da338;
    // offset: 0x73c4, bitSize: 0x1
    bool hash_74df6580d1c35b58;
};

version hash_b2a7759f39966da5 {
    // enums ..... 3 (0x3)
    // structs ... 8 (0x8)
    // header bit size .. 29816 (0x7478)
    // header byte size . 3727 (0xe8f)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 13
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x409, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x16d8, members: 35
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_76d7fda5546b7d;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xe0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x380, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x3a0, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x3a8, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x3b8, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x3c0, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1400, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1410, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x1470, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x1478, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x1498, bitSize: 0x20(0x4 Byte(s))
        uint scoretotal;
        // offset: 0x14b8, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4118467bee30e606;
        // offset: 0x14f8, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x1500, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x1520, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x1528, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x1548, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x1568, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x1588, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1598, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x15d8, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1620, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1668, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1688, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x16d0, bitSize: 0x1
        bool valid;
        // offset: 0x16d1, bitSize: 0x1
        bool hash_7cbf6a38abb6c4fe;
        // offset: 0x16d2, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x7
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend, // 0x5
        transport // 0x6
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x73c8, members: 17

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xe38(0x1c7 Byte(s)), array:0x7(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xed8, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1238, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1240, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1250, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1750, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1850, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1858, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1860, bitSize: 0x5b60(0xb6c Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x73c0, bitSize: 0x1
    bool hash_62df6469a6590d1c;
    // offset: 0x73c1, bitSize: 0x1
    bool initialized;
    // offset: 0x73c2, bitSize: 0x1
    bool hash_569773895b461123;
    // offset: 0x73c3, bitSize: 0x1
    bool hash_48a412c1da6da338;
    // offset: 0x73c4, bitSize: 0x1
    bool hash_74df6580d1c35b58;
};

version hash_6abfa8438b631f43 {
    // enums ..... 3 (0x3)
    // structs ... 8 (0x8)
    // header bit size .. 29816 (0x7478)
    // header byte size . 3727 (0xe8f)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 13
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x409, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x16d8, members: 35
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_76d7fda5546b7d;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xe0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x380, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x3a0, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x3a8, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x3b8, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x3c0, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1400, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1410, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x1470, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x1478, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x1498, bitSize: 0x20(0x4 Byte(s))
        uint scoretotal;
        // offset: 0x14b8, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4118467bee30e606;
        // offset: 0x14f8, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x1500, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x1520, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x1528, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x1548, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x1568, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x1588, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1598, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x15d8, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1620, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1668, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1688, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x16d0, bitSize: 0x1
        bool valid;
        // offset: 0x16d1, bitSize: 0x1
        bool hash_7cbf6a38abb6c4fe;
        // offset: 0x16d2, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x7
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend, // 0x5
        transport // 0x6
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x73c8, members: 19

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xe38(0x1c7 Byte(s)), array:0x7(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xed8, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1238, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1240, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1250, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1750, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1850, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1858, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1860, bitSize: 0x5b60(0xb6c Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x73c0, bitSize: 0x1
    bool hash_6b772645c0ad8598;
    // offset: 0x73c1, bitSize: 0x1
    bool hash_62df6469a6590d1c;
    // offset: 0x73c2, bitSize: 0x1
    bool initialized;
    // offset: 0x73c3, bitSize: 0x1
    bool hash_17d8f2b850883bac;
    // offset: 0x73c4, bitSize: 0x1
    bool hash_1153a17aabbab61f;
    // offset: 0x73c5, bitSize: 0x1
    bool hash_569773895b461123;
    // offset: 0x73c6, bitSize: 0x1
    bool hash_48a412c1da6da338;
    // offset: 0x73c7, bitSize: 0x1
    bool hash_74df6580d1c35b58;
};

version hash_fa58df819847f261 {
    // enums ..... 3 (0x3)
    // structs ... 8 (0x8)
    // header bit size .. 30200 (0x75f8)
    // header byte size . 3775 (0xebf)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 13
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x409, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1738, members: 36
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_76d7fda5546b7d;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xe0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x380, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x3a0, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x3a8, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x3b8, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x3c0, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1400, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1410, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x1470, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x1478, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        uint hash_47c5fe6b4bbd9f0f[3];
        // offset: 0x14d8, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x14f8, bitSize: 0x20(0x4 Byte(s))
        uint scoretotal;
        // offset: 0x1518, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4118467bee30e606;
        // offset: 0x1558, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x1560, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x1580, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x1588, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x15a8, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x15c8, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x15e8, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x15f8, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1638, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1680, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x16c8, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x16e8, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1730, bitSize: 0x1
        bool valid;
        // offset: 0x1731, bitSize: 0x1
        bool hash_7cbf6a38abb6c4fe;
        // offset: 0x1732, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x7
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend, // 0x5
        transport // 0x6
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x7548, members: 19

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xe38(0x1c7 Byte(s)), array:0x7(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xed8, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1238, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1240, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1250, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1750, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1850, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1858, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1860, bitSize: 0x5ce0(0xb9c Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x7540, bitSize: 0x1
    bool hash_6b772645c0ad8598;
    // offset: 0x7541, bitSize: 0x1
    bool hash_62df6469a6590d1c;
    // offset: 0x7542, bitSize: 0x1
    bool initialized;
    // offset: 0x7543, bitSize: 0x1
    bool hash_17d8f2b850883bac;
    // offset: 0x7544, bitSize: 0x1
    bool hash_1153a17aabbab61f;
    // offset: 0x7545, bitSize: 0x1
    bool hash_569773895b461123;
    // offset: 0x7546, bitSize: 0x1
    bool hash_48a412c1da6da338;
    // offset: 0x7547, bitSize: 0x1
    bool hash_74df6580d1c35b58;
};

version hash_dfa9778bf735bf84 {
    // enums ..... 3 (0x3)
    // structs ... 9 (0x9)
    // header bit size .. 33592 (0x8338)
    // header byte size . 4199 (0x1067)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 18
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x409, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x40a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x40b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x40c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x40d, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x40e, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x350, members: 14
    struct hash_72861a724cbff619 {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x108, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x308, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x348, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x349, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x34a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x34b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x34c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x34d, bitSize: 0x1
        bool hash_455cfe820071b143;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1a88, members: 37
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_76d7fda5546b7d;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xe0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x380, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x3a0, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x3a8, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x3b8, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x3c0, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1400, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1410, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x1470, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x1478, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        uint hash_47c5fe6b4bbd9f0f[3];
        // offset: 0x14d8, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x14f8, bitSize: 0x20(0x4 Byte(s))
        uint scoretotal;
        // offset: 0x1518, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4118467bee30e606;
        // offset: 0x1558, bitSize: 0x350(0x6a Byte(s))
        hash_72861a724cbff619 hash_5e1b2fdec911ccdf;
        // offset: 0x18a8, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x18b0, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x18d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x18d8, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x18f8, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x1918, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x1938, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1948, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1988, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x19d0, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1a18, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1a38, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1a80, bitSize: 0x1
        bool valid;
        // offset: 0x1a81, bitSize: 0x1
        bool hash_7cbf6a38abb6c4fe;
        // offset: 0x1a82, bitSize: 0x1
        bool selectedloadout;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x7
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend, // 0x5
        transport // 0x6
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x8288, members: 19

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xe38(0x1c7 Byte(s)), array:0x7(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xed8, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1238, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1240, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1250, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1750, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1850, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1858, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1860, bitSize: 0x6a20(0xd44 Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x8280, bitSize: 0x1
    bool hash_6b772645c0ad8598;
    // offset: 0x8281, bitSize: 0x1
    bool hash_62df6469a6590d1c;
    // offset: 0x8282, bitSize: 0x1
    bool initialized;
    // offset: 0x8283, bitSize: 0x1
    bool hash_17d8f2b850883bac;
    // offset: 0x8284, bitSize: 0x1
    bool hash_1153a17aabbab61f;
    // offset: 0x8285, bitSize: 0x1
    bool hash_569773895b461123;
    // offset: 0x8286, bitSize: 0x1
    bool hash_48a412c1da6da338;
    // offset: 0x8287, bitSize: 0x1
    bool hash_74df6580d1c35b58;
};

version hash_a0aed5d273d9a81e {
    // enums ..... 3 (0x3)
    // structs ... 9 (0x9)
    // header bit size .. 33624 (0x8358)
    // header byte size . 4203 (0x106b)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 18
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x409, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x40a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x40b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x40c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x40d, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x40e, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x350, members: 14
    struct hash_72861a724cbff619 {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x108, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x308, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x348, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x349, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x34a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x34b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x34c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x34d, bitSize: 0x1
        bool hash_455cfe820071b143;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1a88, members: 38
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_76d7fda5546b7d;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xe0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x380, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x3a0, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x3a8, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x3b8, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x3c0, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1400, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1410, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x1470, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x1478, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        uint hash_47c5fe6b4bbd9f0f[3];
        // offset: 0x14d8, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x14f8, bitSize: 0x20(0x4 Byte(s))
        uint scoretotal;
        // offset: 0x1518, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4118467bee30e606;
        // offset: 0x1558, bitSize: 0x350(0x6a Byte(s))
        hash_72861a724cbff619 hash_5e1b2fdec911ccdf;
        // offset: 0x18a8, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x18b0, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x18d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x18d8, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x18f8, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x1918, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x1938, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1948, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1988, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x19d0, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1a18, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1a38, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1a80, bitSize: 0x1
        bool valid;
        // offset: 0x1a81, bitSize: 0x1
        bool hash_7cbf6a38abb6c4fe;
        // offset: 0x1a82, bitSize: 0x1
        bool selectedloadout;
        // offset: 0x1a83, bitSize: 0x1
        bool hash_1cd82a25a6e6afe8;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x7
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend, // 0x5
        transport // 0x6
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x82a8, members: 20

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xe38(0x1c7 Byte(s)), array:0x7(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xed8, bitSize: 0x20(0x4 Byte(s))
    uint hash_3d1c462f6d4757c2;
    // offset: 0xef8, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1258, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1260, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1270, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1770, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1870, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1878, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1880, bitSize: 0x6a20(0xd44 Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x82a0, bitSize: 0x1
    bool hash_6b772645c0ad8598;
    // offset: 0x82a1, bitSize: 0x1
    bool hash_62df6469a6590d1c;
    // offset: 0x82a2, bitSize: 0x1
    bool initialized;
    // offset: 0x82a3, bitSize: 0x1
    bool hash_17d8f2b850883bac;
    // offset: 0x82a4, bitSize: 0x1
    bool hash_1153a17aabbab61f;
    // offset: 0x82a5, bitSize: 0x1
    bool hash_569773895b461123;
    // offset: 0x82a6, bitSize: 0x1
    bool hash_48a412c1da6da338;
    // offset: 0x82a7, bitSize: 0x1
    bool hash_74df6580d1c35b58;
};

version hash_90c10021207ffe15 {
    // enums ..... 3 (0x3)
    // structs ... 9 (0x9)
    // header bit size .. 33752 (0x83d8)
    // header byte size . 4219 (0x107b)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 18
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x409, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x40a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x40b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x40c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x40d, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x40e, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x350, members: 14
    struct hash_72861a724cbff619 {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x108, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x308, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x348, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x349, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x34a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x34b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x34c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x34d, bitSize: 0x1
        bool hash_455cfe820071b143;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1aa8, members: 39
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_76d7fda5546b7d;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xe0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x380, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x3a0, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x3a8, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x3b8, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x3c0, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1400, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1410, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x1470, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x1478, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        uint hash_47c5fe6b4bbd9f0f[3];
        // offset: 0x14d8, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x14f8, bitSize: 0x20(0x4 Byte(s))
        uint scoretotal;
        // offset: 0x1518, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4118467bee30e606;
        // offset: 0x1558, bitSize: 0x20(0x4 Byte(s))
        uint hash_1824003b58adcb7e;
        // offset: 0x1578, bitSize: 0x350(0x6a Byte(s))
        hash_72861a724cbff619 hash_5e1b2fdec911ccdf;
        // offset: 0x18c8, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x18d0, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x18f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x18f8, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x1918, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x1938, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x1958, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1968, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x19a8, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x19f0, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1a38, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1a58, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1aa0, bitSize: 0x1
        bool valid;
        // offset: 0x1aa1, bitSize: 0x1
        bool hash_7cbf6a38abb6c4fe;
        // offset: 0x1aa2, bitSize: 0x1
        bool selectedloadout;
        // offset: 0x1aa3, bitSize: 0x1
        bool hash_1cd82a25a6e6afe8;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x7
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend, // 0x5
        transport // 0x6
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x8328, members: 20

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xe38(0x1c7 Byte(s)), array:0x7(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xed8, bitSize: 0x20(0x4 Byte(s))
    uint hash_3d1c462f6d4757c2;
    // offset: 0xef8, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1258, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1260, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1270, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1770, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1870, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1878, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1880, bitSize: 0x6aa0(0xd54 Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x8320, bitSize: 0x1
    bool hash_6b772645c0ad8598;
    // offset: 0x8321, bitSize: 0x1
    bool hash_62df6469a6590d1c;
    // offset: 0x8322, bitSize: 0x1
    bool initialized;
    // offset: 0x8323, bitSize: 0x1
    bool hash_17d8f2b850883bac;
    // offset: 0x8324, bitSize: 0x1
    bool hash_1153a17aabbab61f;
    // offset: 0x8325, bitSize: 0x1
    bool hash_569773895b461123;
    // offset: 0x8326, bitSize: 0x1
    bool hash_48a412c1da6da338;
    // offset: 0x8327, bitSize: 0x1
    bool hash_74df6580d1c35b58;
};

version hash_1daa829a1895deaf {
    // enums ..... 3 (0x3)
    // structs ... 9 (0x9)
    // header bit size .. 34008 (0x84d8)
    // header byte size . 4251 (0x109b)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 18
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x409, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x40a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x40b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x40c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x40d, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x40e, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x350, members: 14
    struct hash_72861a724cbff619 {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x108, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x308, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x348, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x349, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x34a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x34b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x34c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x34d, bitSize: 0x1
        bool hash_455cfe820071b143;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1ae8, members: 40
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_76d7fda5546b7d;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xe0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x380, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x3a0, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_737acdd971f0af48;
        // offset: 0x3e0, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x3e8, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x3f8, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x400, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1440, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1450, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x14b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x14b8, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        uint hash_47c5fe6b4bbd9f0f[3];
        // offset: 0x1518, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x1538, bitSize: 0x20(0x4 Byte(s))
        uint scoretotal;
        // offset: 0x1558, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4118467bee30e606;
        // offset: 0x1598, bitSize: 0x20(0x4 Byte(s))
        uint hash_1824003b58adcb7e;
        // offset: 0x15b8, bitSize: 0x350(0x6a Byte(s))
        hash_72861a724cbff619 hash_5e1b2fdec911ccdf;
        // offset: 0x1908, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x1910, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x1930, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x1938, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x1958, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x1978, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x1998, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x19a8, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x19e8, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1a30, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1a78, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1a98, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1ae0, bitSize: 0x1
        bool valid;
        // offset: 0x1ae1, bitSize: 0x1
        bool hash_7cbf6a38abb6c4fe;
        // offset: 0x1ae2, bitSize: 0x1
        bool selectedloadout;
        // offset: 0x1ae3, bitSize: 0x1
        bool hash_1cd82a25a6e6afe8;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x7
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend, // 0x5
        transport // 0x6
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x8428, members: 20

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xe38(0x1c7 Byte(s)), array:0x7(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xed8, bitSize: 0x20(0x4 Byte(s))
    uint hash_3d1c462f6d4757c2;
    // offset: 0xef8, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1258, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1260, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1270, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1770, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1870, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1878, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1880, bitSize: 0x6ba0(0xd74 Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x8420, bitSize: 0x1
    bool hash_6b772645c0ad8598;
    // offset: 0x8421, bitSize: 0x1
    bool hash_62df6469a6590d1c;
    // offset: 0x8422, bitSize: 0x1
    bool initialized;
    // offset: 0x8423, bitSize: 0x1
    bool hash_17d8f2b850883bac;
    // offset: 0x8424, bitSize: 0x1
    bool hash_1153a17aabbab61f;
    // offset: 0x8425, bitSize: 0x1
    bool hash_569773895b461123;
    // offset: 0x8426, bitSize: 0x1
    bool hash_48a412c1da6da338;
    // offset: 0x8427, bitSize: 0x1
    bool hash_74df6580d1c35b58;
};

version hash_e9b4d75ef1446221 {
    // enums ..... 3 (0x3)
    // structs ... 9 (0x9)
    // header bit size .. 34136 (0x8558)
    // header byte size . 4267 (0x10ab)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 18
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x409, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x40a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x40b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x40c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x40d, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x40e, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x350, members: 14
    struct hash_72861a724cbff619 {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x108, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x308, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x348, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x349, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x34a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x34b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x34c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x34d, bitSize: 0x1
        bool hash_455cfe820071b143;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1b08, members: 43
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_76d7fda5546b7d;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xe0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x380, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x3a0, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_737acdd971f0af48;
        // offset: 0x3e0, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x3e8, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x3f8, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x400, bitSize: 0x20(0x4 Byte(s))
        uint hash_2c7dccb1d75c9993;
        // offset: 0x420, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1460, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1470, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x14d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x14d8, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        uint hash_47c5fe6b4bbd9f0f[3];
        // offset: 0x1538, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x1558, bitSize: 0x20(0x4 Byte(s))
        uint scoretotal;
        // offset: 0x1578, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4118467bee30e606;
        // offset: 0x15b8, bitSize: 0x20(0x4 Byte(s))
        uint hash_1824003b58adcb7e;
        // offset: 0x15d8, bitSize: 0x350(0x6a Byte(s))
        hash_72861a724cbff619 hash_5e1b2fdec911ccdf;
        // offset: 0x1928, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x1930, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x1950, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x1958, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x1978, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x1998, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x19b8, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x19c8, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1a08, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1a50, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1a98, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1ab8, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1b00, bitSize: 0x1
        bool valid;
        // offset: 0x1b01, bitSize: 0x1
        bool hash_b9a20a5a7302349;
        // offset: 0x1b02, bitSize: 0x1
        bool hash_3c8f0ad52a628ed2;
        // offset: 0x1b03, bitSize: 0x1
        bool hash_7cbf6a38abb6c4fe;
        // offset: 0x1b04, bitSize: 0x1
        bool selectedloadout;
        // offset: 0x1b05, bitSize: 0x1
        bool hash_1cd82a25a6e6afe8;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x7
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend, // 0x5
        transport // 0x6
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x84a8, members: 20

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xe38(0x1c7 Byte(s)), array:0x7(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xed8, bitSize: 0x20(0x4 Byte(s))
    uint hash_3d1c462f6d4757c2;
    // offset: 0xef8, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1258, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1260, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1270, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1770, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1870, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1878, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1880, bitSize: 0x6c20(0xd84 Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x84a0, bitSize: 0x1
    bool hash_6b772645c0ad8598;
    // offset: 0x84a1, bitSize: 0x1
    bool hash_62df6469a6590d1c;
    // offset: 0x84a2, bitSize: 0x1
    bool initialized;
    // offset: 0x84a3, bitSize: 0x1
    bool hash_17d8f2b850883bac;
    // offset: 0x84a4, bitSize: 0x1
    bool hash_1153a17aabbab61f;
    // offset: 0x84a5, bitSize: 0x1
    bool hash_569773895b461123;
    // offset: 0x84a6, bitSize: 0x1
    bool hash_48a412c1da6da338;
    // offset: 0x84a7, bitSize: 0x1
    bool hash_74df6580d1c35b58;
};

version hash_c1ac0f6f8f464b7b {
    // enums ..... 3 (0x3)
    // structs ... 9 (0x9)
    // header bit size .. 34392 (0x8658)
    // header byte size . 4299 (0x10cb)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 18
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x409, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x40a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x40b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x40c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x40d, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x40e, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x350, members: 14
    struct hash_72861a724cbff619 {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x108, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x308, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x348, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x349, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x34a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x34b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x34c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x34d, bitSize: 0x1
        bool hash_455cfe820071b143;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1b48, members: 45
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_76d7fda5546b7d;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xe0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x380, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x3a0, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_737acdd971f0af48;
        // offset: 0x3e0, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x3e8, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x3f8, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x400, bitSize: 0x20(0x4 Byte(s))
        uint hash_2c7dccb1d75c9993;
        // offset: 0x420, bitSize: 0x20(0x4 Byte(s))
        uint hash_376217ca748b6f62;
        // offset: 0x440, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1480, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1490, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x14f0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x14f8, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        uint hash_47c5fe6b4bbd9f0f[3];
        // offset: 0x1558, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x1578, bitSize: 0x20(0x4 Byte(s))
        uint scoretotal;
        // offset: 0x1598, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4118467bee30e606;
        // offset: 0x15d8, bitSize: 0x20(0x4 Byte(s))
        uint hash_1824003b58adcb7e;
        // offset: 0x15f8, bitSize: 0x350(0x6a Byte(s))
        hash_72861a724cbff619 hash_5e1b2fdec911ccdf;
        // offset: 0x1948, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x1950, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x1970, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x1978, bitSize: 0x20(0x4 Byte(s))
        uint hash_3d0d59f6f3da2e5b;
        // offset: 0x1998, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x19b8, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x19d8, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x19f8, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1a08, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1a48, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1a90, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1ad8, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1af8, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1b40, bitSize: 0x1
        bool valid;
        // offset: 0x1b41, bitSize: 0x1
        bool hash_b9a20a5a7302349;
        // offset: 0x1b42, bitSize: 0x1
        bool hash_3c8f0ad52a628ed2;
        // offset: 0x1b43, bitSize: 0x1
        bool hash_7cbf6a38abb6c4fe;
        // offset: 0x1b44, bitSize: 0x1
        bool selectedloadout;
        // offset: 0x1b45, bitSize: 0x1
        bool hash_1cd82a25a6e6afe8;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x7
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend, // 0x5
        transport // 0x6
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x85a8, members: 20

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xe38(0x1c7 Byte(s)), array:0x7(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xed8, bitSize: 0x20(0x4 Byte(s))
    uint hash_3d1c462f6d4757c2;
    // offset: 0xef8, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1258, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1260, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1270, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1770, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1870, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1878, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1880, bitSize: 0x6d20(0xda4 Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x85a0, bitSize: 0x1
    bool hash_6b772645c0ad8598;
    // offset: 0x85a1, bitSize: 0x1
    bool hash_62df6469a6590d1c;
    // offset: 0x85a2, bitSize: 0x1
    bool initialized;
    // offset: 0x85a3, bitSize: 0x1
    bool hash_17d8f2b850883bac;
    // offset: 0x85a4, bitSize: 0x1
    bool hash_1153a17aabbab61f;
    // offset: 0x85a5, bitSize: 0x1
    bool hash_569773895b461123;
    // offset: 0x85a6, bitSize: 0x1
    bool hash_48a412c1da6da338;
    // offset: 0x85a7, bitSize: 0x1
    bool hash_74df6580d1c35b58;
};

version hash_5faa99dae364fa4e {
    // enums ..... 3 (0x3)
    // structs ... 9 (0x9)
    // header bit size .. 34392 (0x8658)
    // header byte size . 4299 (0x10cb)

    // bitSize: 0x60, members: 2
    struct hash_63f0851f53ab627c {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash bundlename;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
    };

    // bitSize: 0x410, members: 18
    struct weapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint ammo;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0xa8, bitSize: 0x60(0xc Byte(s))
        hash_63f0851f53ab627c hash_63f0851f53ab627c;
        // offset: 0x108, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x188, bitSize: 0x40(0x8 Byte(s))
        xhash rarity;
        // offset: 0x1c8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x3c8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x408, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x409, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x40a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x40b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x40c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x40d, bitSize: 0x1
        bool hash_455cfe820071b143;
        // offset: 0x40e, bitSize: 0x1
        bool hash_22de893145a66a64;
    };

    // bitSize: 0x350, members: 14
    struct hash_72861a724cbff619 {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash aat;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:4 paplv;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 weaponoptions;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_6ebd8dec863a7782;
        // offset: 0x108, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash attachments[8];
        // offset: 0x308, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_17f911763bde5dfe;
        // offset: 0x348, bitSize: 0x1
        bool hash_4696d1f524b4b683;
        // offset: 0x349, bitSize: 0x1
        bool hash_98bbe4497a6c326;
        // offset: 0x34a, bitSize: 0x1
        bool hash_4071d18f7d9f2e36;
        // offset: 0x34b, bitSize: 0x1
        bool hash_4090fe15080f2da0;
        // offset: 0x34c, bitSize: 0x1
        bool hash_5b4b4e5cc381eb9b;
        // offset: 0x34d, bitSize: 0x1
        bool hash_455cfe820071b143;
    };

    // bitSize: 0x48, members: 2
    struct equipment {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte amount;
    };

    // bitSize: 0x60, members: 5
    struct hash_47c4be8aba4a94b3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float hash_67fa39d03fd168d9;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:10 tribute;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        float hash_f0eccd443684741;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte hash_115e695af69d2e5c;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte hash_183357499f14d5b7;
    };

    // bitSize: 0x1b48, members: 43
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_76d7fda5546b7d;
        // offset: 0x60, bitSize: 0x40(0x8 Byte(s))
        xhash killstreakitem;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        short armor;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        short downs;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0xe0, bitSize: 0x280(0x50 Byte(s)), array:0xa(hti:0xffff)
        xhash perks[10];
        // offset: 0x360, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x380, bitSize: 0x20(0x4 Byte(s))
        uint scrap;
        // offset: 0x3a0, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_737acdd971f0af48;
        // offset: 0x3e0, bitSize: 0x8(0x1 Byte(s))
        byte classnum;
        // offset: 0x3e8, bitSize: 0x10(0x2 Byte(s))
        short revives;
        // offset: 0x3f8, bitSize: 0x8(0x1 Byte(s))
        byte selfrevivecount;
        // offset: 0x400, bitSize: 0x20(0x4 Byte(s))
        uint hash_2c7dccb1d75c9993;
        // offset: 0x420, bitSize: 0x20(0x4 Byte(s))
        uint hash_376217ca748b6f62;
        // offset: 0x440, bitSize: 0x1040(0x208 Byte(s)), array:0x4(hti:0xffff)
        weapon weapons[4];
        // offset: 0x1480, bitSize: 0x10(0x2 Byte(s))
        short hash_fffea0defd338fe;
        // offset: 0x1490, bitSize: 0x60(0xc Byte(s))
        hash_47c4be8aba4a94b3 hash_7cd550c023e602c2;
        // offset: 0x14f0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f0fb00cfee3f5e4;
        // offset: 0x14f8, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        uint hash_47c5fe6b4bbd9f0f[3];
        // offset: 0x1558, bitSize: 0x20(0x4 Byte(s))
        uint hash_709ac244d8923f57;
        // offset: 0x1578, bitSize: 0x20(0x4 Byte(s))
        uint scoretotal;
        // offset: 0x1598, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4118467bee30e606;
        // offset: 0x15d8, bitSize: 0x20(0x4 Byte(s))
        uint hash_1824003b58adcb7e;
        // offset: 0x15f8, bitSize: 0x350(0x6a Byte(s))
        hash_72861a724cbff619 hash_5e1b2fdec911ccdf;
        // offset: 0x1948, bitSize: 0x8(0x1 Byte(s))
        byte hash_28e11648279d2037;
        // offset: 0x1950, bitSize: 0x20(0x4 Byte(s))
        uint kills_critical;
        // offset: 0x1970, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_2e483c12c2bd26cd;
        // offset: 0x1978, bitSize: 0x20(0x4 Byte(s))
        uint hash_3d0d59f6f3da2e5b;
        // offset: 0x1998, bitSize: 0x20(0x4 Byte(s))
        uint rarescrap;
        // offset: 0x19b8, bitSize: 0x20(0x4 Byte(s)), array:0x4(hti:0x0)
        byte hash_3e9559cb9b09e090[hash_62eba2a3159c2f79];
        // offset: 0x19d8, bitSize: 0x20(0x4 Byte(s))
        uint damage;
        // offset: 0x19f8, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1a08, bitSize: 0x40(0x8 Byte(s))
        xhash armoritem;
        // offset: 0x1a48, bitSize: 0x48(0x9 Byte(s))
        equipment lethal;
        // offset: 0x1a90, bitSize: 0x48(0x9 Byte(s))
        equipment tactical;
        // offset: 0x1ad8, bitSize: 0x20(0x4 Byte(s))
        uint headshots;
        // offset: 0x1af8, bitSize: 0x48(0x9 Byte(s))
        equipment fieldupgrade;
        // offset: 0x1b40, bitSize: 0x1
        bool valid;
        // offset: 0x1b41, bitSize: 0x1
        bool hash_7cbf6a38abb6c4fe;
        // offset: 0x1b42, bitSize: 0x1
        bool selectedloadout;
        // offset: 0x1b43, bitSize: 0x1
        bool hash_1cd82a25a6e6afe8;
    };

    // bitSize: 0x80, members: 2
    struct objective {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash category;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash variant;
    };

    // bitSize: 0x208, members: 2
    struct objectivevariants {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte variantindex;
        // offset: 0x8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash variants[8];
    };

    // idx 0x0 members: 0x4
    enum hash_62eba2a3159c2f79 {
        requiem, // 0x0
        omega, // 0x1
        maxis, // 0x2
        dark_aether // 0x3
    };

    // idx 0x1 members: 0x7
    enum hash_7636414aeff3cce4 {
        hunt, // 0x0
        holdout, // 0x1
        payload, // 0x2
        secure, // 0x3
        retrieval, // 0x4
        defend, // 0x5
        transport // 0x6
    };

    // idx 0x2 members: 0x10
    enum hash_397bc2195548b7b0 {
        hash_4b4ab7b6cf4d87c, // 0x0
        hash_11b4177e0f079bb6, // 0x1
        hash_1bba6b368675561e, // 0x2
        hash_1db5106df3c3c0c4, // 0x3
        hash_25a76ab3d0a73b03, // 0x4
        hash_388a24efa2077ef6, // 0x5
        hash_41722fe0656b9a5f, // 0x6
        hash_4af69b7011fd4702, // 0x7
        hash_5ab9ff1ebbf2de17, // 0x8
        hash_62bc7c158375f1f2, // 0x9
        hash_63791b9ae55043b5, // 0xa
        hash_6541d5a40f6a8dcc, // 0xb
        hash_6c9f941878e99c63, // 0xc
        hash_710afd3a5e44458f, // 0xd
        hash_72b2e5815bcbcc12, // 0xe
        hash_749e36c2ffef5f86 // 0xf
    };

    // root: bitSize: 0x85a8, members: 20

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    uint hash_4c6551b221159068;
    // offset: 0x20, bitSize: 0x80(0x10 Byte(s))
    objective forcedobjective;
    // offset: 0xa0, bitSize: 0xe38(0x1c7 Byte(s)), array:0x7(hti:0x1)
    objectivevariants objectivevariants[hash_7636414aeff3cce4];
    // offset: 0xed8, bitSize: 0x20(0x4 Byte(s))
    uint hash_3d1c462f6d4757c2;
    // offset: 0xef8, bitSize: 0x360(0x6c Byte(s)), array:0x6(hti:0xffff)
    string(18) hash_60af8d9cfbbe06bd[6];
    // offset: 0x1258, bitSize: 0x8(0x1 Byte(s))
    byte hash_44f5d4b321e92263;
    // offset: 0x1260, bitSize: 0x10(0x2 Byte(s))
    short hash_1601cc3215f4f8b3;
    // offset: 0x1270, bitSize: 0x500(0xa0 Byte(s)), array:0x14(hti:0xffff)
    xhash hash_5eba90da524edc31[20];
    // offset: 0x1770, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0x2)
    short hash_774b5f9b053e5af[hash_397bc2195548b7b0];
    // offset: 0x1870, bitSize: 0x8(0x1 Byte(s))
    byte hash_1fe8bc20266a252b;
    // offset: 0x1878, bitSize: 0x8(0x1 Byte(s))
    byte hash_2ab6464d4c124e87;
    // offset: 0x1880, bitSize: 0x6d20(0xda4 Byte(s)), array:0x4(hti:0xffff)
    player players[4];
    // offset: 0x85a0, bitSize: 0x1
    bool hash_6b772645c0ad8598;
    // offset: 0x85a1, bitSize: 0x1
    bool hash_62df6469a6590d1c;
    // offset: 0x85a2, bitSize: 0x1
    bool initialized;
    // offset: 0x85a3, bitSize: 0x1
    bool hash_17d8f2b850883bac;
    // offset: 0x85a4, bitSize: 0x1
    bool hash_1153a17aabbab61f;
    // offset: 0x85a5, bitSize: 0x1
    bool hash_569773895b461123;
    // offset: 0x85a6, bitSize: 0x1
    bool hash_48a412c1da6da338;
    // offset: 0x85a7, bitSize: 0x1
    bool hash_74df6580d1c35b58;
};

