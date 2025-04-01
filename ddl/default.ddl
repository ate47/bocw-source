// file .... default.ddl

#redirect hash_3460538a6d756ee9;

version hash_464274a4abfb497 {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 528 (0x210)
    // header byte size . 66 (0x42)

    // bitSize: 0x58, members: 2
    struct foo_t {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte varbyte;
        // offset: 0x8, bitSize: 0x50(0xa Byte(s))
        string(10) varstring;
    };

    // root: bitSize: 0x160, members: 4

    // offset: 0x0, bitSize: 0x58(0xb Byte(s))
    foo_t bar;
    // offset: 0x58, bitSize: 0x58(0xb Byte(s))
    foo_t bar2;
    // offset: 0xb0, bitSize: 0x58(0xb Byte(s))
    foo_t bar3;
    // offset: 0x108, bitSize: 0x58(0xb Byte(s))
    foo_t bar4;
};

