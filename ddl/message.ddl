// file .... message.ddl

#redirect hash_3217afd3ee6110bb;

version hash_62ed642e7db4a2f5 {
    // enums ..... 2 (0x2)
    // structs ... 4 (0x4)
    // header bit size .. 8464 (0x2110)
    // header byte size . 1058 (0x422)

    // bitSize: 0x60, members: 3
    struct hash_5117bce61a2e0fe3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint id;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint size;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint type;
    };

    // bitSize: 0x2000, members: 1
    struct hash_445d98a7d5d65334 {
        // offset: 0x0, bitSize: 0x2000(0x400 Byte(s)), array:0x400(hti:0xffff)
        byte data[1024];
    };

    // bitSize: 0x2060, members: 2
    struct hash_5f41ae426bb85b16 {
        // offset: 0x0, bitSize: 0x60(0xc Byte(s))
        hash_5117bce61a2e0fe3 header;
        // offset: 0x60, bitSize: 0x2000(0x400 Byte(s))
        hash_445d98a7d5d65334 payload;
    };

    // idx 0x0 members: 0x3
    enum hash_5a1a6feae655a2fa {
        hash_47fba947fb3dd638, // 0x0
        hash_5fe815c098116dc5, // 0x1
        hash_6946fd6149126560 // 0x2
    };

    // idx 0x1 members: 0x5
    enum hash_41ab1db9fb7f0729 {
        hash_1d09e13ab9d7f100, // 0x0
        hash_3872ecf8e7c092e9, // 0x1
        hash_49770c7996332df0, // 0x2
        hash_60fcb91e792dbd14, // 0x3
        hash_6f4dd5ca4344893a // 0x4
    };

    // root: bitSize: 0x2060, members: 1

    // offset: 0x0, bitSize: 0x2060(0x40c Byte(s))
    hash_5f41ae426bb85b16 hash_4eb855cfa6004f3a;
};

