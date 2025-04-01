// file .... league.ddl

#redirect hash_4ed8d052b7c5500f;

version hash_84dfde3a00631e26 {
    // enums ..... 0 (0x0)
    // structs ... 3 (0x3)
    // header bit size .. 4800 (0x12c0)
    // header byte size . 600 (0x258)

    // bitSize: 0x90, members: 14
    struct emblemlayer {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 red;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 blue;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:9 icon;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:9 posx;
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:9 posy;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:8 alpha;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:9 angle;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:7 color;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 green;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:9 scalex;
        // offset: 0x78, bitSize: 0x10(0x2 Byte(s))
        uint:9 scaley;
        // offset: 0x88, bitSize: 0x1
        bool flip;
        // offset: 0x89, bitSize: 0x1
        bool outline;
    };

    // bitSize: 0x1210, members: 2
    struct emblem {
        // offset: 0x0, bitSize: 0x1200(0x240 Byte(s)), array:0x20(hti:0xffff)
        emblemlayer layer[32];
        // offset: 0x1200, bitSize: 0x10(0x2 Byte(s))
        uint:9 background;
    };

    // root: bitSize: 0x1210, members: 1

    // offset: 0x0, bitSize: 0x1210(0x242 Byte(s))
    emblem emblem;
};

