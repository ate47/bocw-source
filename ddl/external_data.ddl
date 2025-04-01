// file .... external_data.ddl

#redirect hash_1b8a44ead833ac64;

version hash_4f2996df8ee5e154 {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 4272 (0x10b0)
    // header byte size . 534 (0x216)

    // bitSize: 0x40, members: 2
    struct message {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        int state;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        int version;
    };

    // root: bitSize: 0x1000, members: 1

    // offset: 0x0, bitSize: 0x1000(0x200 Byte(s)), array:0x40(hti:0xffff)
    message messages[64];
};

