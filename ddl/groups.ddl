// file .... groups.ddl

#redirect hash_23e3b8db838962b6;

version hash_3dd6d5d674235d4d {
    // enums ..... 1 (0x1)
    // structs ... 11 (0xb)
    // header bit size .. 5128 (0x1408)
    // header byte size . 641 (0x281)

    // bitSize: 0x100, members: 28
    struct emblemlayer {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 icon;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:12 posx;
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:12 posy;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        uint:9 angle;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:7 gradientfill;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:2 gradienttype;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:4 groupindex;
        // offset: 0x88, bitSize: 0x10(0x2 Byte(s))
        uint:9 gradientangle;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:9 materialangle;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 scalex;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:10 scaley;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:7 materialid;
        // offset: 0xf0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xf8, bitSize: 0x1
        bool flip;
        // offset: 0xf9, bitSize: 0x1
        bool mask;
        // offset: 0xfa, bitSize: 0x1
        bool blend;
        // offset: 0xfb, bitSize: 0x1
        bool outline;
    };

    // bitSize: 0xe8, members: 28
    struct hash_24f699c797bc9492 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:12 posx;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:12 posy;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:9 angle;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 gradientfill;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:2 gradienttype;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:9 gradientangle;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        uint:9 materialangle;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:10 scalex;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 scaley;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0xc8, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xd0, bitSize: 0x8(0x1 Byte(s))
        uint:7 materialid;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xe0, bitSize: 0x1
        bool flip;
        // offset: 0xe1, bitSize: 0x1
        bool mask;
        // offset: 0xe2, bitSize: 0x1
        bool blend;
        // offset: 0xe3, bitSize: 0x1
        bool groupedlook;
        // offset: 0xe4, bitSize: 0x1
        bool outline;
        // offset: 0xe5, bitSize: 0x1
        bool isgrouped;
    };

    // bitSize: 0x4e8, members: 2
    struct hash_62325f44a788da78 {
        // offset: 0x0, bitSize: 0x400(0x80 Byte(s)), array:0x4(hti:0xffff)
        emblemlayer layer[4];
        // offset: 0x400, bitSize: 0xe8(0x1d Byte(s)), array:0x1(hti:0xffff)
        hash_24f699c797bc9492 groups[1];
    };

    // bitSize: 0x40e8, members: 2
    struct hash_6ac42a2c4c8f3b10 {
        // offset: 0x0, bitSize: 0x4000(0x800 Byte(s)), array:0x40(hti:0xffff)
        emblemlayer layer[64];
        // offset: 0x4000, bitSize: 0xe8(0x1d Byte(s)), array:0x1(hti:0xffff)
        hash_24f699c797bc9492 groups[1];
    };

    // bitSize: 0x4f8, members: 2
    struct emblem {
        // offset: 0x0, bitSize: 0x4e8(0x9d Byte(s))
        hash_62325f44a788da78 layerinfo;
        // offset: 0x4e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 background;
    };

    // bitSize: 0x4e8, members: 1
    struct hash_4e00feaf81ba241c {
        // offset: 0x0, bitSize: 0x4e8(0x9d Byte(s))
        hash_62325f44a788da78 layerinfo;
    };

    // bitSize: 0x4e8, members: 1
    struct paintshop {
        // offset: 0x0, bitSize: 0x4e8(0x9d Byte(s)), array:0x1(hti:0x0)
        hash_4e00feaf81ba241c view[hash_1d2ac7bb711046eb];
    };

    // bitSize: 0x600, members: 7
    struct weaponpaintjob {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x4e8(0x9d Byte(s))
        paintshop paintjob;
        // offset: 0x528, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x548, bitSize: 0x80(0x10 Byte(s))
        string(16) paintjobname;
        // offset: 0x5c8, bitSize: 0x8(0x1 Byte(s))
        int:2 readonly;
        // offset: 0x5d0, bitSize: 0x10(0x2 Byte(s))
        int:12 weaponindex;
        // offset: 0x5e0, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // bitSize: 0x1b0, members: 16
    struct variant {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:5 classnum;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_282031f7c26123e3[8];
        // offset: 0x50, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprintindex;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        int:8 paintjobslot;
        // offset: 0x80, bitSize: 0x10(0x2 Byte(s))
        int:11 variantindex;
        // offset: 0x90, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0xd0, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x150, bitSize: 0x8(0x1 Byte(s))
        int:2 readonly;
        // offset: 0x158, bitSize: 0x10(0x2 Byte(s))
        int:11 reticleindex;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        int:11 weaponindex;
        // offset: 0x178, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x188, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
        // offset: 0x1a8, bitSize: 0x1
        bool isprimary;
    };

    // bitSize: 0x2a8, members: 7
    struct leaderboard {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint timeframe;
        // offset: 0x20, bitSize: 0x200(0x40 Byte(s))
        string(64) leaderboarddef;
        // offset: 0x220, bitSize: 0x80(0x10 Byte(s))
        string(16) sorttype;
        // offset: 0x2a0, bitSize: 0x1
        bool initialized;
        // offset: 0x2a1, bitSize: 0x1
        bool isarena;
        // offset: 0x2a2, bitSize: 0x1
        bool ishardcore;
    };

    // idx 0x0 members: 0x1
    enum hash_1d2ac7bb711046eb {
        left // 0x0
    };

    // root: bitSize: 0x1358, members: 6

    // offset: 0x0, bitSize: 0x100(0x20 Byte(s))
    string(32) ownername;
    // offset: 0x100, bitSize: 0x7f8(0xff Byte(s))
    string(255) message;
    // offset: 0x8f8, bitSize: 0x280(0x50 Byte(s))
    string(80) description;
    // offset: 0xb78, bitSize: 0x2a8(0x55 Byte(s))
    leaderboard leaderboard;
    // offset: 0xe20, bitSize: 0x4f8(0x9f Byte(s))
    emblem emblem;
    // offset: 0x1318, bitSize: 0x40(0x8 Byte(s))
    uint64 creationtimestamp;
};

version hash_a8ec89208270b02b {
    // enums ..... 1 (0x1)
    // structs ... 11 (0xb)
    // header bit size .. 5128 (0x1408)
    // header byte size . 641 (0x281)

    // bitSize: 0x100, members: 28
    struct emblemlayer {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 icon;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:12 posx;
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:12 posy;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        uint:9 angle;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:7 gradientfill;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:2 gradienttype;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:4 groupindex;
        // offset: 0x88, bitSize: 0x10(0x2 Byte(s))
        uint:9 gradientangle;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:9 materialangle;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 scalex;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:10 scaley;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:7 materialid;
        // offset: 0xf0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xf8, bitSize: 0x1
        bool flip;
        // offset: 0xf9, bitSize: 0x1
        bool mask;
        // offset: 0xfa, bitSize: 0x1
        bool blend;
        // offset: 0xfb, bitSize: 0x1
        bool outline;
    };

    // bitSize: 0xe8, members: 28
    struct hash_24f699c797bc9492 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:12 posx;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:12 posy;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:9 angle;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 gradientfill;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:2 gradienttype;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:9 gradientangle;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        uint:9 materialangle;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:10 scalex;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 scaley;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0xc8, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xd0, bitSize: 0x8(0x1 Byte(s))
        uint:7 materialid;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xe0, bitSize: 0x1
        bool flip;
        // offset: 0xe1, bitSize: 0x1
        bool mask;
        // offset: 0xe2, bitSize: 0x1
        bool blend;
        // offset: 0xe3, bitSize: 0x1
        bool groupedlook;
        // offset: 0xe4, bitSize: 0x1
        bool outline;
        // offset: 0xe5, bitSize: 0x1
        bool isgrouped;
    };

    // bitSize: 0x4e8, members: 2
    struct hash_62325f44a788da78 {
        // offset: 0x0, bitSize: 0x400(0x80 Byte(s)), array:0x4(hti:0xffff)
        emblemlayer layer[4];
        // offset: 0x400, bitSize: 0xe8(0x1d Byte(s)), array:0x1(hti:0xffff)
        hash_24f699c797bc9492 groups[1];
    };

    // bitSize: 0x40e8, members: 2
    struct hash_6ac42a2c4c8f3b10 {
        // offset: 0x0, bitSize: 0x4000(0x800 Byte(s)), array:0x40(hti:0xffff)
        emblemlayer layer[64];
        // offset: 0x4000, bitSize: 0xe8(0x1d Byte(s)), array:0x1(hti:0xffff)
        hash_24f699c797bc9492 groups[1];
    };

    // bitSize: 0x4f8, members: 2
    struct emblem {
        // offset: 0x0, bitSize: 0x4e8(0x9d Byte(s))
        hash_62325f44a788da78 layerinfo;
        // offset: 0x4e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 background;
    };

    // bitSize: 0x4e8, members: 1
    struct hash_4e00feaf81ba241c {
        // offset: 0x0, bitSize: 0x4e8(0x9d Byte(s))
        hash_62325f44a788da78 layerinfo;
    };

    // bitSize: 0x4e8, members: 1
    struct paintshop {
        // offset: 0x0, bitSize: 0x4e8(0x9d Byte(s)), array:0x1(hti:0x0)
        hash_4e00feaf81ba241c view[hash_1d2ac7bb711046eb];
    };

    // bitSize: 0x600, members: 7
    struct weaponpaintjob {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x4e8(0x9d Byte(s))
        paintshop paintjob;
        // offset: 0x528, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x548, bitSize: 0x80(0x10 Byte(s))
        string(16) paintjobname;
        // offset: 0x5c8, bitSize: 0x8(0x1 Byte(s))
        int:2 readonly;
        // offset: 0x5d0, bitSize: 0x10(0x2 Byte(s))
        int:12 weaponindex;
        // offset: 0x5e0, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // bitSize: 0x158, members: 11
    struct variant {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        int:8 paintjobslot;
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        int:11 variantindex;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x80, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        int:2 readonly;
        // offset: 0x108, bitSize: 0x10(0x2 Byte(s))
        int:11 reticleindex;
        // offset: 0x118, bitSize: 0x10(0x2 Byte(s))
        int:11 weaponindex;
        // offset: 0x128, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x138, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // bitSize: 0x2a8, members: 7
    struct leaderboard {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint timeframe;
        // offset: 0x20, bitSize: 0x200(0x40 Byte(s))
        string(64) leaderboarddef;
        // offset: 0x220, bitSize: 0x80(0x10 Byte(s))
        string(16) sorttype;
        // offset: 0x2a0, bitSize: 0x1
        bool initialized;
        // offset: 0x2a1, bitSize: 0x1
        bool isarena;
        // offset: 0x2a2, bitSize: 0x1
        bool ishardcore;
    };

    // idx 0x0 members: 0x1
    enum hash_1d2ac7bb711046eb {
        left // 0x0
    };

    // root: bitSize: 0x1358, members: 6

    // offset: 0x0, bitSize: 0x100(0x20 Byte(s))
    string(32) ownername;
    // offset: 0x100, bitSize: 0x7f8(0xff Byte(s))
    string(255) message;
    // offset: 0x8f8, bitSize: 0x280(0x50 Byte(s))
    string(80) description;
    // offset: 0xb78, bitSize: 0x2a8(0x55 Byte(s))
    leaderboard leaderboard;
    // offset: 0xe20, bitSize: 0x4f8(0x9f Byte(s))
    emblem emblem;
    // offset: 0x1318, bitSize: 0x40(0x8 Byte(s))
    uint64 creationtimestamp;
};

version hash_4570611de09d3da1 {
    // enums ..... 1 (0x1)
    // structs ... 11 (0xb)
    // header bit size .. 5128 (0x1408)
    // header byte size . 641 (0x281)

    // bitSize: 0x100, members: 28
    struct emblemlayer {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 icon;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:12 posx;
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:12 posy;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        uint:9 angle;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:7 gradientfill;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:2 gradienttype;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:4 groupindex;
        // offset: 0x88, bitSize: 0x10(0x2 Byte(s))
        uint:9 gradientangle;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:9 materialangle;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 scalex;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:10 scaley;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:7 materialid;
        // offset: 0xf0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xf8, bitSize: 0x1
        bool flip;
        // offset: 0xf9, bitSize: 0x1
        bool mask;
        // offset: 0xfa, bitSize: 0x1
        bool blend;
        // offset: 0xfb, bitSize: 0x1
        bool outline;
    };

    // bitSize: 0xe8, members: 28
    struct hash_24f699c797bc9492 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:12 posx;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:12 posy;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:9 angle;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 gradientfill;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:2 gradienttype;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:9 gradientangle;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        uint:9 materialangle;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:10 scalex;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 scaley;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0xc8, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xd0, bitSize: 0x8(0x1 Byte(s))
        uint:7 materialid;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xe0, bitSize: 0x1
        bool flip;
        // offset: 0xe1, bitSize: 0x1
        bool mask;
        // offset: 0xe2, bitSize: 0x1
        bool blend;
        // offset: 0xe3, bitSize: 0x1
        bool groupedlook;
        // offset: 0xe4, bitSize: 0x1
        bool outline;
        // offset: 0xe5, bitSize: 0x1
        bool isgrouped;
    };

    // bitSize: 0x4e8, members: 2
    struct hash_62325f44a788da78 {
        // offset: 0x0, bitSize: 0x400(0x80 Byte(s)), array:0x4(hti:0xffff)
        emblemlayer layer[4];
        // offset: 0x400, bitSize: 0xe8(0x1d Byte(s)), array:0x1(hti:0xffff)
        hash_24f699c797bc9492 groups[1];
    };

    // bitSize: 0x40e8, members: 2
    struct hash_6ac42a2c4c8f3b10 {
        // offset: 0x0, bitSize: 0x4000(0x800 Byte(s)), array:0x40(hti:0xffff)
        emblemlayer layer[64];
        // offset: 0x4000, bitSize: 0xe8(0x1d Byte(s)), array:0x1(hti:0xffff)
        hash_24f699c797bc9492 groups[1];
    };

    // bitSize: 0x4f8, members: 2
    struct emblem {
        // offset: 0x0, bitSize: 0x4e8(0x9d Byte(s))
        hash_62325f44a788da78 layerinfo;
        // offset: 0x4e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 background;
    };

    // bitSize: 0x4e8, members: 1
    struct hash_4e00feaf81ba241c {
        // offset: 0x0, bitSize: 0x4e8(0x9d Byte(s))
        hash_62325f44a788da78 layerinfo;
    };

    // bitSize: 0x4e8, members: 1
    struct paintshop {
        // offset: 0x0, bitSize: 0x4e8(0x9d Byte(s)), array:0x1(hti:0x0)
        hash_4e00feaf81ba241c view[hash_1d2ac7bb711046eb];
    };

    // bitSize: 0x600, members: 7
    struct weaponpaintjob {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x4e8(0x9d Byte(s))
        paintshop paintjob;
        // offset: 0x528, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x548, bitSize: 0x80(0x10 Byte(s))
        string(16) paintjobname;
        // offset: 0x5c8, bitSize: 0x8(0x1 Byte(s))
        int:2 readonly;
        // offset: 0x5d0, bitSize: 0x10(0x2 Byte(s))
        int:12 weaponindex;
        // offset: 0x5e0, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // bitSize: 0x1a0, members: 13
    struct variant {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_282031f7c26123e3[8];
        // offset: 0x48, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprintindex;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        int:8 paintjobslot;
        // offset: 0x78, bitSize: 0x10(0x2 Byte(s))
        int:11 variantindex;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0xc8, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        int:2 readonly;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        int:11 reticleindex;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        int:11 weaponindex;
        // offset: 0x170, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x180, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // bitSize: 0x2a8, members: 7
    struct leaderboard {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint timeframe;
        // offset: 0x20, bitSize: 0x200(0x40 Byte(s))
        string(64) leaderboarddef;
        // offset: 0x220, bitSize: 0x80(0x10 Byte(s))
        string(16) sorttype;
        // offset: 0x2a0, bitSize: 0x1
        bool initialized;
        // offset: 0x2a1, bitSize: 0x1
        bool isarena;
        // offset: 0x2a2, bitSize: 0x1
        bool ishardcore;
    };

    // idx 0x0 members: 0x1
    enum hash_1d2ac7bb711046eb {
        left // 0x0
    };

    // root: bitSize: 0x1358, members: 6

    // offset: 0x0, bitSize: 0x100(0x20 Byte(s))
    string(32) ownername;
    // offset: 0x100, bitSize: 0x7f8(0xff Byte(s))
    string(255) message;
    // offset: 0x8f8, bitSize: 0x280(0x50 Byte(s))
    string(80) description;
    // offset: 0xb78, bitSize: 0x2a8(0x55 Byte(s))
    leaderboard leaderboard;
    // offset: 0xe20, bitSize: 0x4f8(0x9f Byte(s))
    emblem emblem;
    // offset: 0x1318, bitSize: 0x40(0x8 Byte(s))
    uint64 creationtimestamp;
};

version hash_31153d8251035637 {
    // enums ..... 1 (0x1)
    // structs ... 11 (0xb)
    // header bit size .. 22808 (0x5918)
    // header byte size . 2851 (0xb23)

    // bitSize: 0x100, members: 28
    struct emblemlayer {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 icon;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:12 posx;
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:12 posy;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        uint:9 angle;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:7 gradientfill;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:2 gradienttype;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:4 groupindex;
        // offset: 0x88, bitSize: 0x10(0x2 Byte(s))
        uint:9 gradientangle;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:9 materialangle;
        // offset: 0xb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 scalex;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:10 scaley;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:7 materialid;
        // offset: 0xf0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xf8, bitSize: 0x1
        bool flip;
        // offset: 0xf9, bitSize: 0x1
        bool mask;
        // offset: 0xfa, bitSize: 0x1
        bool blend;
        // offset: 0xfb, bitSize: 0x1
        bool outline;
    };

    // bitSize: 0xe8, members: 28
    struct hash_24f699c797bc9492 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:12 posx;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:12 posy;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:9 angle;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 gradientfill;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:2 gradienttype;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:9 gradientangle;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0x90, bitSize: 0x10(0x2 Byte(s))
        uint:9 materialangle;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:10 scalex;
        // offset: 0xb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 scaley;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0xc8, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xd0, bitSize: 0x8(0x1 Byte(s))
        uint:7 materialid;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xe0, bitSize: 0x1
        bool flip;
        // offset: 0xe1, bitSize: 0x1
        bool mask;
        // offset: 0xe2, bitSize: 0x1
        bool blend;
        // offset: 0xe3, bitSize: 0x1
        bool groupedlook;
        // offset: 0xe4, bitSize: 0x1
        bool outline;
        // offset: 0xe5, bitSize: 0x1
        bool isgrouped;
    };

    // bitSize: 0x49f8, members: 2
    struct hash_62325f44a788da78 {
        // offset: 0x0, bitSize: 0x4000(0x800 Byte(s)), array:0x40(hti:0xffff)
        emblemlayer layer[64];
        // offset: 0x4000, bitSize: 0x9f8(0x13f Byte(s)), array:0xb(hti:0xffff)
        hash_24f699c797bc9492 groups[11];
    };

    // bitSize: 0x40e8, members: 2
    struct hash_6ac42a2c4c8f3b10 {
        // offset: 0x0, bitSize: 0x4000(0x800 Byte(s)), array:0x40(hti:0xffff)
        emblemlayer layer[64];
        // offset: 0x4000, bitSize: 0xe8(0x1d Byte(s)), array:0x1(hti:0xffff)
        hash_24f699c797bc9492 groups[1];
    };

    // bitSize: 0x4a08, members: 2
    struct emblem {
        // offset: 0x0, bitSize: 0x49f8(0x93f Byte(s))
        hash_62325f44a788da78 layerinfo;
        // offset: 0x49f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 background;
    };

    // bitSize: 0x49f8, members: 1
    struct hash_4e00feaf81ba241c {
        // offset: 0x0, bitSize: 0x49f8(0x93f Byte(s))
        hash_62325f44a788da78 layerinfo;
    };

    // bitSize: 0x49f8, members: 1
    struct paintshop {
        // offset: 0x0, bitSize: 0x49f8(0x93f Byte(s)), array:0x1(hti:0x0)
        hash_4e00feaf81ba241c view[hash_1d2ac7bb711046eb];
    };

    // bitSize: 0x4b10, members: 7
    struct weaponpaintjob {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x49f8(0x93f Byte(s))
        paintshop paintjob;
        // offset: 0x4a38, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x4a58, bitSize: 0x80(0x10 Byte(s))
        string(16) paintjobname;
        // offset: 0x4ad8, bitSize: 0x8(0x1 Byte(s))
        int:2 readonly;
        // offset: 0x4ae0, bitSize: 0x10(0x2 Byte(s))
        int:12 weaponindex;
        // offset: 0x4af0, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // bitSize: 0x158, members: 11
    struct variant {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        int:8 paintjobslot;
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        int:11 variantindex;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x80, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        int:2 readonly;
        // offset: 0x108, bitSize: 0x10(0x2 Byte(s))
        int:11 reticleindex;
        // offset: 0x118, bitSize: 0x10(0x2 Byte(s))
        int:11 weaponindex;
        // offset: 0x128, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x138, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // bitSize: 0x2a8, members: 7
    struct leaderboard {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint timeframe;
        // offset: 0x20, bitSize: 0x200(0x40 Byte(s))
        string(64) leaderboarddef;
        // offset: 0x220, bitSize: 0x80(0x10 Byte(s))
        string(16) sorttype;
        // offset: 0x2a0, bitSize: 0x1
        bool initialized;
        // offset: 0x2a1, bitSize: 0x1
        bool isarena;
        // offset: 0x2a2, bitSize: 0x1
        bool ishardcore;
    };

    // idx 0x0 members: 0x1
    enum hash_1d2ac7bb711046eb {
        left // 0x0
    };

    // root: bitSize: 0x5868, members: 6

    // offset: 0x0, bitSize: 0x100(0x20 Byte(s))
    string(32) ownername;
    // offset: 0x100, bitSize: 0x7f8(0xff Byte(s))
    string(255) message;
    // offset: 0x8f8, bitSize: 0x280(0x50 Byte(s))
    string(80) description;
    // offset: 0xb78, bitSize: 0x2a8(0x55 Byte(s))
    leaderboard leaderboard;
    // offset: 0xe20, bitSize: 0x4a08(0x941 Byte(s))
    emblem emblem;
    // offset: 0x5828, bitSize: 0x40(0x8 Byte(s))
    uint64 creationtimestamp;
};

