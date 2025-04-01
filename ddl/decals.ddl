// file .... decals.ddl

#redirect hash_2ae584918088b534;

version hash_dbfe5576138e398 {
    // enums ..... 1 (0x1)
    // structs ... 11 (0xb)
    // header bit size .. 504128 (0x7b140)
    // header byte size . 63016 (0xf628)

    // bitSize: 0xc0, members: 27
    struct emblemlayer {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0xa
        uint:10 icon;
        // offset: 0x1a, bitSize: 0xc
        uint:12 posx;
        // offset: 0x26, bitSize: 0xc
        uint:12 posy;
        // offset: 0x32, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x3a, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x42, bitSize: 0x9
        uint:9 angle;
        // offset: 0x4b, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x53, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x5b, bitSize: 0x7
        uint:7 gradientfill;
        // offset: 0x62, bitSize: 0x2
        uint:2 gradienttype;
        // offset: 0x64, bitSize: 0x4
        uint:4 groupindex;
        // offset: 0x68, bitSize: 0x9
        uint:9 gradientangle;
        // offset: 0x71, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0x79, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0x81, bitSize: 0x9
        uint:9 materialangle;
        // offset: 0x8a, bitSize: 0xa
        uint:10 scalex;
        // offset: 0x94, bitSize: 0xa
        uint:10 scaley;
        // offset: 0x9e, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0xa6, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xae, bitSize: 0x7
        uint:7 materialid;
        // offset: 0xb5, bitSize: 0x7
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xbc, bitSize: 0x1
        bool flip;
        // offset: 0xbd, bitSize: 0x1
        bool mask;
        // offset: 0xbe, bitSize: 0x1
        bool blend;
        // offset: 0xbf, bitSize: 0x1
        bool outline;
    };

    // bitSize: 0xb4, members: 27
    struct hash_24f699c797bc9492 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0xc
        uint:12 posx;
        // offset: 0x1c, bitSize: 0xc
        uint:12 posy;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x38, bitSize: 0x9
        uint:9 angle;
        // offset: 0x41, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x49, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x51, bitSize: 0x7
        uint:7 gradientfill;
        // offset: 0x58, bitSize: 0x2
        uint:2 gradienttype;
        // offset: 0x5a, bitSize: 0x9
        uint:9 gradientangle;
        // offset: 0x63, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0x6b, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0x73, bitSize: 0x9
        uint:9 materialangle;
        // offset: 0x7c, bitSize: 0xa
        uint:10 scalex;
        // offset: 0x86, bitSize: 0xa
        uint:10 scaley;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xa0, bitSize: 0x7
        uint:7 materialid;
        // offset: 0xa7, bitSize: 0x7
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xae, bitSize: 0x1
        bool flip;
        // offset: 0xaf, bitSize: 0x1
        bool mask;
        // offset: 0xb0, bitSize: 0x1
        bool blend;
        // offset: 0xb1, bitSize: 0x1
        bool groupedlook;
        // offset: 0xb2, bitSize: 0x1
        bool outline;
        // offset: 0xb3, bitSize: 0x1
        bool isgrouped;
    };

    // bitSize: 0x3b4, members: 2
    struct hash_62325f44a788da78 {
        // offset: 0x0, bitSize: 0x300(0x60 Byte(s)), array:0x4(hti:0xffff)
        emblemlayer layer[4];
        // offset: 0x300, bitSize: 0xb4, array:0x1(hti:0xffff)
        hash_24f699c797bc9492 groups[1];
    };

    // bitSize: 0x30b4, members: 2
    struct hash_6ac42a2c4c8f3b10 {
        // offset: 0x0, bitSize: 0x3000(0x600 Byte(s)), array:0x40(hti:0xffff)
        emblemlayer layer[64];
        // offset: 0x3000, bitSize: 0xb4, array:0x1(hti:0xffff)
        hash_24f699c797bc9492 groups[1];
    };

    // bitSize: 0x3be, members: 2
    struct emblem {
        // offset: 0x0, bitSize: 0x3b4
        hash_62325f44a788da78 layerinfo;
        // offset: 0x3b4, bitSize: 0xa
        uint:10 background;
    };

    // bitSize: 0x3b4, members: 1
    struct hash_4e00feaf81ba241c {
        // offset: 0x0, bitSize: 0x3b4
        hash_62325f44a788da78 layerinfo;
    };

    // bitSize: 0x3b4, members: 1
    struct paintshop {
        // offset: 0x0, bitSize: 0x3b4, array:0x1(hti:0x0)
        hash_4e00feaf81ba241c view[hash_1d2ac7bb711046eb];
    };

    // bitSize: 0x4c2, members: 7
    struct weaponpaintjob {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x3b4
        paintshop paintjob;
        // offset: 0x3f4, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x414, bitSize: 0x80(0x10 Byte(s))
        string(16) paintjobname;
        // offset: 0x494, bitSize: 0x2
        int:2 readonly;
        // offset: 0x496, bitSize: 0xc
        int:12 weaponindex;
        // offset: 0x4a2, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // bitSize: 0x17d, members: 15
    struct variant {
        // offset: 0x0, bitSize: 0x4
        uint:4 weaponmodelslot;
        // offset: 0x4, bitSize: 0x5
        uint:5 classnum;
        // offset: 0x9, bitSize: 0x38(0x7 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_282031f7c26123e3[8];
        // offset: 0x41, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x61, bitSize: 0x7
        uint:7 blueprintindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        int:8 paintjobslot;
        // offset: 0x70, bitSize: 0xb
        int:11 variantindex;
        // offset: 0x7b, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0xbb, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x13b, bitSize: 0x2
        int:2 readonly;
        // offset: 0x13d, bitSize: 0xb
        int:11 reticleindex;
        // offset: 0x148, bitSize: 0xb
        int:11 weaponindex;
        // offset: 0x153, bitSize: 0x9
        uint:9 camoindex;
        // offset: 0x15c, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
        // offset: 0x17c, bitSize: 0x1
        bool isprimary;
    };

    // bitSize: 0x3136, members: 4
    struct decal {
        // offset: 0x0, bitSize: 0x30b4
        hash_6ac42a2c4c8f3b10 decal;
        // offset: 0x30b4, bitSize: 0x60(0xc Byte(s))
        string(12) hash_2e62c0f5c511d22d;
        // offset: 0x3114, bitSize: 0x2
        int:2 isused;
        // offset: 0x3116, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // idx 0x0 members: 0x1
    enum hash_1d2ac7bb711046eb {
        left // 0x0
    };

    // root: bitSize: 0x7b090, members: 2

    // offset: 0x0, bitSize: 0x7b070(0xf60e Byte(s)), array:0x28(hti:0xffff)
    decal hash_6036e407d49c517a[40];
    // offset: 0x7b070, bitSize: 0x20(0x4 Byte(s))
    uint version;
};

version hash_f43d100465f1081d {
    // enums ..... 1 (0x1)
    // structs ... 11 (0xb)
    // header bit size .. 504128 (0x7b140)
    // header byte size . 63016 (0xf628)

    // bitSize: 0xc0, members: 27
    struct emblemlayer {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0xa
        uint:10 icon;
        // offset: 0x1a, bitSize: 0xc
        uint:12 posx;
        // offset: 0x26, bitSize: 0xc
        uint:12 posy;
        // offset: 0x32, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x3a, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x42, bitSize: 0x9
        uint:9 angle;
        // offset: 0x4b, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x53, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x5b, bitSize: 0x7
        uint:7 gradientfill;
        // offset: 0x62, bitSize: 0x2
        uint:2 gradienttype;
        // offset: 0x64, bitSize: 0x4
        uint:4 groupindex;
        // offset: 0x68, bitSize: 0x9
        uint:9 gradientangle;
        // offset: 0x71, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0x79, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0x81, bitSize: 0x9
        uint:9 materialangle;
        // offset: 0x8a, bitSize: 0xa
        uint:10 scalex;
        // offset: 0x94, bitSize: 0xa
        uint:10 scaley;
        // offset: 0x9e, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0xa6, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xae, bitSize: 0x7
        uint:7 materialid;
        // offset: 0xb5, bitSize: 0x7
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xbc, bitSize: 0x1
        bool flip;
        // offset: 0xbd, bitSize: 0x1
        bool mask;
        // offset: 0xbe, bitSize: 0x1
        bool blend;
        // offset: 0xbf, bitSize: 0x1
        bool outline;
    };

    // bitSize: 0xb4, members: 27
    struct hash_24f699c797bc9492 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0xc
        uint:12 posx;
        // offset: 0x1c, bitSize: 0xc
        uint:12 posy;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x38, bitSize: 0x9
        uint:9 angle;
        // offset: 0x41, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x49, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x51, bitSize: 0x7
        uint:7 gradientfill;
        // offset: 0x58, bitSize: 0x2
        uint:2 gradienttype;
        // offset: 0x5a, bitSize: 0x9
        uint:9 gradientangle;
        // offset: 0x63, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0x6b, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0x73, bitSize: 0x9
        uint:9 materialangle;
        // offset: 0x7c, bitSize: 0xa
        uint:10 scalex;
        // offset: 0x86, bitSize: 0xa
        uint:10 scaley;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xa0, bitSize: 0x7
        uint:7 materialid;
        // offset: 0xa7, bitSize: 0x7
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xae, bitSize: 0x1
        bool flip;
        // offset: 0xaf, bitSize: 0x1
        bool mask;
        // offset: 0xb0, bitSize: 0x1
        bool blend;
        // offset: 0xb1, bitSize: 0x1
        bool groupedlook;
        // offset: 0xb2, bitSize: 0x1
        bool outline;
        // offset: 0xb3, bitSize: 0x1
        bool isgrouped;
    };

    // bitSize: 0x3b4, members: 2
    struct hash_62325f44a788da78 {
        // offset: 0x0, bitSize: 0x300(0x60 Byte(s)), array:0x4(hti:0xffff)
        emblemlayer layer[4];
        // offset: 0x300, bitSize: 0xb4, array:0x1(hti:0xffff)
        hash_24f699c797bc9492 groups[1];
    };

    // bitSize: 0x30b4, members: 2
    struct hash_6ac42a2c4c8f3b10 {
        // offset: 0x0, bitSize: 0x3000(0x600 Byte(s)), array:0x40(hti:0xffff)
        emblemlayer layer[64];
        // offset: 0x3000, bitSize: 0xb4, array:0x1(hti:0xffff)
        hash_24f699c797bc9492 groups[1];
    };

    // bitSize: 0x3be, members: 2
    struct emblem {
        // offset: 0x0, bitSize: 0x3b4
        hash_62325f44a788da78 layerinfo;
        // offset: 0x3b4, bitSize: 0xa
        uint:10 background;
    };

    // bitSize: 0x3b4, members: 1
    struct hash_4e00feaf81ba241c {
        // offset: 0x0, bitSize: 0x3b4
        hash_62325f44a788da78 layerinfo;
    };

    // bitSize: 0x3b4, members: 1
    struct paintshop {
        // offset: 0x0, bitSize: 0x3b4, array:0x1(hti:0x0)
        hash_4e00feaf81ba241c view[hash_1d2ac7bb711046eb];
    };

    // bitSize: 0x4c2, members: 7
    struct weaponpaintjob {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x3b4
        paintshop paintjob;
        // offset: 0x3f4, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x414, bitSize: 0x80(0x10 Byte(s))
        string(16) paintjobname;
        // offset: 0x494, bitSize: 0x2
        int:2 readonly;
        // offset: 0x496, bitSize: 0xc
        int:12 weaponindex;
        // offset: 0x4a2, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // bitSize: 0x138, members: 11
    struct variant {
        // offset: 0x0, bitSize: 0x4
        uint:4 weaponmodelslot;
        // offset: 0x4, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x24, bitSize: 0x8(0x1 Byte(s))
        int:8 paintjobslot;
        // offset: 0x2c, bitSize: 0xb
        int:11 variantindex;
        // offset: 0x37, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x77, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0xf7, bitSize: 0x2
        int:2 readonly;
        // offset: 0xf9, bitSize: 0xb
        int:11 reticleindex;
        // offset: 0x104, bitSize: 0xb
        int:11 weaponindex;
        // offset: 0x10f, bitSize: 0x9
        uint:9 camoindex;
        // offset: 0x118, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // bitSize: 0x3136, members: 4
    struct decal {
        // offset: 0x0, bitSize: 0x30b4
        hash_6ac42a2c4c8f3b10 decal;
        // offset: 0x30b4, bitSize: 0x60(0xc Byte(s))
        string(12) hash_2e62c0f5c511d22d;
        // offset: 0x3114, bitSize: 0x2
        int:2 isused;
        // offset: 0x3116, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // idx 0x0 members: 0x1
    enum hash_1d2ac7bb711046eb {
        left // 0x0
    };

    // root: bitSize: 0x7b090, members: 2

    // offset: 0x0, bitSize: 0x7b070(0xf60e Byte(s)), array:0x28(hti:0xffff)
    decal hash_6036e407d49c517a[40];
    // offset: 0x7b070, bitSize: 0x20(0x4 Byte(s))
    uint version;
};

version hash_2b98ce1417e11723 {
    // enums ..... 1 (0x1)
    // structs ... 11 (0xb)
    // header bit size .. 504128 (0x7b140)
    // header byte size . 63016 (0xf628)

    // bitSize: 0xc0, members: 27
    struct emblemlayer {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0xa
        uint:10 icon;
        // offset: 0x1a, bitSize: 0xc
        uint:12 posx;
        // offset: 0x26, bitSize: 0xc
        uint:12 posy;
        // offset: 0x32, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x3a, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x42, bitSize: 0x9
        uint:9 angle;
        // offset: 0x4b, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x53, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x5b, bitSize: 0x7
        uint:7 gradientfill;
        // offset: 0x62, bitSize: 0x2
        uint:2 gradienttype;
        // offset: 0x64, bitSize: 0x4
        uint:4 groupindex;
        // offset: 0x68, bitSize: 0x9
        uint:9 gradientangle;
        // offset: 0x71, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0x79, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0x81, bitSize: 0x9
        uint:9 materialangle;
        // offset: 0x8a, bitSize: 0xa
        uint:10 scalex;
        // offset: 0x94, bitSize: 0xa
        uint:10 scaley;
        // offset: 0x9e, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0xa6, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xae, bitSize: 0x7
        uint:7 materialid;
        // offset: 0xb5, bitSize: 0x7
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xbc, bitSize: 0x1
        bool flip;
        // offset: 0xbd, bitSize: 0x1
        bool mask;
        // offset: 0xbe, bitSize: 0x1
        bool blend;
        // offset: 0xbf, bitSize: 0x1
        bool outline;
    };

    // bitSize: 0xb4, members: 27
    struct hash_24f699c797bc9492 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0xc
        uint:12 posx;
        // offset: 0x1c, bitSize: 0xc
        uint:12 posy;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x38, bitSize: 0x9
        uint:9 angle;
        // offset: 0x41, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x49, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x51, bitSize: 0x7
        uint:7 gradientfill;
        // offset: 0x58, bitSize: 0x2
        uint:2 gradienttype;
        // offset: 0x5a, bitSize: 0x9
        uint:9 gradientangle;
        // offset: 0x63, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0x6b, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0x73, bitSize: 0x9
        uint:9 materialangle;
        // offset: 0x7c, bitSize: 0xa
        uint:10 scalex;
        // offset: 0x86, bitSize: 0xa
        uint:10 scaley;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xa0, bitSize: 0x7
        uint:7 materialid;
        // offset: 0xa7, bitSize: 0x7
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xae, bitSize: 0x1
        bool flip;
        // offset: 0xaf, bitSize: 0x1
        bool mask;
        // offset: 0xb0, bitSize: 0x1
        bool blend;
        // offset: 0xb1, bitSize: 0x1
        bool groupedlook;
        // offset: 0xb2, bitSize: 0x1
        bool outline;
        // offset: 0xb3, bitSize: 0x1
        bool isgrouped;
    };

    // bitSize: 0x3b4, members: 2
    struct hash_62325f44a788da78 {
        // offset: 0x0, bitSize: 0x300(0x60 Byte(s)), array:0x4(hti:0xffff)
        emblemlayer layer[4];
        // offset: 0x300, bitSize: 0xb4, array:0x1(hti:0xffff)
        hash_24f699c797bc9492 groups[1];
    };

    // bitSize: 0x30b4, members: 2
    struct hash_6ac42a2c4c8f3b10 {
        // offset: 0x0, bitSize: 0x3000(0x600 Byte(s)), array:0x40(hti:0xffff)
        emblemlayer layer[64];
        // offset: 0x3000, bitSize: 0xb4, array:0x1(hti:0xffff)
        hash_24f699c797bc9492 groups[1];
    };

    // bitSize: 0x3be, members: 2
    struct emblem {
        // offset: 0x0, bitSize: 0x3b4
        hash_62325f44a788da78 layerinfo;
        // offset: 0x3b4, bitSize: 0xa
        uint:10 background;
    };

    // bitSize: 0x3b4, members: 1
    struct hash_4e00feaf81ba241c {
        // offset: 0x0, bitSize: 0x3b4
        hash_62325f44a788da78 layerinfo;
    };

    // bitSize: 0x3b4, members: 1
    struct paintshop {
        // offset: 0x0, bitSize: 0x3b4, array:0x1(hti:0x0)
        hash_4e00feaf81ba241c view[hash_1d2ac7bb711046eb];
    };

    // bitSize: 0x4c2, members: 7
    struct weaponpaintjob {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x3b4
        paintshop paintjob;
        // offset: 0x3f4, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x414, bitSize: 0x80(0x10 Byte(s))
        string(16) paintjobname;
        // offset: 0x494, bitSize: 0x2
        int:2 readonly;
        // offset: 0x496, bitSize: 0xc
        int:12 weaponindex;
        // offset: 0x4a2, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // bitSize: 0x177, members: 13
    struct variant {
        // offset: 0x0, bitSize: 0x4
        uint:4 weaponmodelslot;
        // offset: 0x4, bitSize: 0x38(0x7 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_282031f7c26123e3[8];
        // offset: 0x3c, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x5c, bitSize: 0x7
        uint:7 blueprintindex;
        // offset: 0x63, bitSize: 0x8(0x1 Byte(s))
        int:8 paintjobslot;
        // offset: 0x6b, bitSize: 0xb
        int:11 variantindex;
        // offset: 0x76, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0xb6, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x136, bitSize: 0x2
        int:2 readonly;
        // offset: 0x138, bitSize: 0xb
        int:11 reticleindex;
        // offset: 0x143, bitSize: 0xb
        int:11 weaponindex;
        // offset: 0x14e, bitSize: 0x9
        uint:9 camoindex;
        // offset: 0x157, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // bitSize: 0x3136, members: 4
    struct decal {
        // offset: 0x0, bitSize: 0x30b4
        hash_6ac42a2c4c8f3b10 decal;
        // offset: 0x30b4, bitSize: 0x60(0xc Byte(s))
        string(12) hash_2e62c0f5c511d22d;
        // offset: 0x3114, bitSize: 0x2
        int:2 isused;
        // offset: 0x3116, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // idx 0x0 members: 0x1
    enum hash_1d2ac7bb711046eb {
        left // 0x0
    };

    // root: bitSize: 0x7b090, members: 2

    // offset: 0x0, bitSize: 0x7b070(0xf60e Byte(s)), array:0x28(hti:0xffff)
    decal hash_6036e407d49c517a[40];
    // offset: 0x7b070, bitSize: 0x20(0x4 Byte(s))
    uint version;
};

version hash_6d9d24d242c3aa61 {
    // enums ..... 1 (0x1)
    // structs ... 11 (0xb)
    // header bit size .. 504128 (0x7b140)
    // header byte size . 63016 (0xf628)

    // bitSize: 0xc0, members: 27
    struct emblemlayer {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0xa
        uint:10 icon;
        // offset: 0x1a, bitSize: 0xc
        uint:12 posx;
        // offset: 0x26, bitSize: 0xc
        uint:12 posy;
        // offset: 0x32, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x3a, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x42, bitSize: 0x9
        uint:9 angle;
        // offset: 0x4b, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x53, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x5b, bitSize: 0x7
        uint:7 gradientfill;
        // offset: 0x62, bitSize: 0x2
        uint:2 gradienttype;
        // offset: 0x64, bitSize: 0x4
        uint:4 groupindex;
        // offset: 0x68, bitSize: 0x9
        uint:9 gradientangle;
        // offset: 0x71, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0x79, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0x81, bitSize: 0x9
        uint:9 materialangle;
        // offset: 0x8a, bitSize: 0xa
        uint:10 scalex;
        // offset: 0x94, bitSize: 0xa
        uint:10 scaley;
        // offset: 0x9e, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0xa6, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xae, bitSize: 0x7
        uint:7 materialid;
        // offset: 0xb5, bitSize: 0x7
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xbc, bitSize: 0x1
        bool flip;
        // offset: 0xbd, bitSize: 0x1
        bool mask;
        // offset: 0xbe, bitSize: 0x1
        bool blend;
        // offset: 0xbf, bitSize: 0x1
        bool outline;
    };

    // bitSize: 0xb4, members: 27
    struct hash_24f699c797bc9492 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0xc
        uint:12 posx;
        // offset: 0x1c, bitSize: 0xc
        uint:12 posy;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:8 red1;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x38, bitSize: 0x9
        uint:9 angle;
        // offset: 0x41, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue1;
        // offset: 0x49, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x51, bitSize: 0x7
        uint:7 gradientfill;
        // offset: 0x58, bitSize: 0x2
        uint:2 gradienttype;
        // offset: 0x5a, bitSize: 0x9
        uint:9 gradientangle;
        // offset: 0x63, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha1;
        // offset: 0x6b, bitSize: 0x8(0x1 Byte(s))
        uint:8 green1;
        // offset: 0x73, bitSize: 0x9
        uint:9 materialangle;
        // offset: 0x7c, bitSize: 0xa
        uint:10 scalex;
        // offset: 0x86, bitSize: 0xa
        uint:10 scaley;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscalex;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 materialscaley;
        // offset: 0xa0, bitSize: 0x7
        uint:7 materialid;
        // offset: 0xa7, bitSize: 0x7
        uint:7 hash_4c4aff5f26267e55;
        // offset: 0xae, bitSize: 0x1
        bool flip;
        // offset: 0xaf, bitSize: 0x1
        bool mask;
        // offset: 0xb0, bitSize: 0x1
        bool blend;
        // offset: 0xb1, bitSize: 0x1
        bool groupedlook;
        // offset: 0xb2, bitSize: 0x1
        bool outline;
        // offset: 0xb3, bitSize: 0x1
        bool isgrouped;
    };

    // bitSize: 0x37bc, members: 2
    struct hash_62325f44a788da78 {
        // offset: 0x0, bitSize: 0x3000(0x600 Byte(s)), array:0x40(hti:0xffff)
        emblemlayer layer[64];
        // offset: 0x3000, bitSize: 0x7bc, array:0xb(hti:0xffff)
        hash_24f699c797bc9492 groups[11];
    };

    // bitSize: 0x30b4, members: 2
    struct hash_6ac42a2c4c8f3b10 {
        // offset: 0x0, bitSize: 0x3000(0x600 Byte(s)), array:0x40(hti:0xffff)
        emblemlayer layer[64];
        // offset: 0x3000, bitSize: 0xb4, array:0x1(hti:0xffff)
        hash_24f699c797bc9492 groups[1];
    };

    // bitSize: 0x37c6, members: 2
    struct emblem {
        // offset: 0x0, bitSize: 0x37bc
        hash_62325f44a788da78 layerinfo;
        // offset: 0x37bc, bitSize: 0xa
        uint:10 background;
    };

    // bitSize: 0x37bc, members: 1
    struct hash_4e00feaf81ba241c {
        // offset: 0x0, bitSize: 0x37bc
        hash_62325f44a788da78 layerinfo;
    };

    // bitSize: 0x37bc, members: 1
    struct paintshop {
        // offset: 0x0, bitSize: 0x37bc, array:0x1(hti:0x0)
        hash_4e00feaf81ba241c view[hash_1d2ac7bb711046eb];
    };

    // bitSize: 0x38ca, members: 7
    struct weaponpaintjob {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x40, bitSize: 0x37bc
        paintshop paintjob;
        // offset: 0x37fc, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x381c, bitSize: 0x80(0x10 Byte(s))
        string(16) paintjobname;
        // offset: 0x389c, bitSize: 0x2
        int:2 readonly;
        // offset: 0x389e, bitSize: 0xc
        int:12 weaponindex;
        // offset: 0x38aa, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // bitSize: 0x138, members: 11
    struct variant {
        // offset: 0x0, bitSize: 0x4
        uint:4 weaponmodelslot;
        // offset: 0x4, bitSize: 0x20(0x4 Byte(s))
        uint createtime;
        // offset: 0x24, bitSize: 0x8(0x1 Byte(s))
        int:8 paintjobslot;
        // offset: 0x2c, bitSize: 0xb
        int:11 variantindex;
        // offset: 0x37, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x77, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0xf7, bitSize: 0x2
        int:2 readonly;
        // offset: 0xf9, bitSize: 0xb
        int:11 reticleindex;
        // offset: 0x104, bitSize: 0xb
        int:11 weaponindex;
        // offset: 0x10f, bitSize: 0x9
        uint:9 camoindex;
        // offset: 0x118, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // bitSize: 0x3136, members: 4
    struct decal {
        // offset: 0x0, bitSize: 0x30b4
        hash_6ac42a2c4c8f3b10 decal;
        // offset: 0x30b4, bitSize: 0x60(0xc Byte(s))
        string(12) hash_2e62c0f5c511d22d;
        // offset: 0x3114, bitSize: 0x2
        int:2 isused;
        // offset: 0x3116, bitSize: 0x20(0x4 Byte(s))
        int sortindex;
    };

    // idx 0x0 members: 0x1
    enum hash_1d2ac7bb711046eb {
        left // 0x0
    };

    // root: bitSize: 0x7b090, members: 2

    // offset: 0x0, bitSize: 0x7b070(0xf60e Byte(s)), array:0x28(hti:0xffff)
    decal hash_6036e407d49c517a[40];
    // offset: 0x7b070, bitSize: 0x20(0x4 Byte(s))
    uint version;
};

