// file .... file_share.ddl

#redirect hash_2f14fec1fdaddc6c;

version hash_e803c5b826108f9b {
    // enums ..... 0 (0x0)
    // structs ... 1 (0x1)
    // header bit size .. 2744 (0xab8)
    // header byte size . 343 (0x157)

    // root: bitSize: 0xa08, members: 11

    // offset: 0x0, bitSize: 0x200(0x40 Byte(s))
    string(64) name;
    // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
    uint createtime;
    // offset: 0x220, bitSize: 0x40(0x8 Byte(s))
    uint64 origfileid;
    // offset: 0x260, bitSize: 0x640(0xc8 Byte(s))
    string(200) description;
    // offset: 0x8a0, bitSize: 0x100(0x20 Byte(s))
    string(32) authorname;
    // offset: 0x9a0, bitSize: 0x40(0x8 Byte(s))
    uint64 authorxuid;
    // offset: 0x9e0, bitSize: 0x20(0x4 Byte(s))
    uint length;
    // offset: 0xa00, bitSize: 0x1
    bool ismodifiedname;
    // offset: 0xa01, bitSize: 0x1
    bool ismodifieddescription;
    // offset: 0xa02, bitSize: 0x1
    bool ispooled;
};

version hash_ee7fac5d87c7cfbb {
    // enums ..... 0 (0x0)
    // structs ... 1 (0x1)
    // header bit size .. 1656 (0x678)
    // header byte size . 207 (0xcf)

    // root: bitSize: 0x5c8, members: 11

    // offset: 0x0, bitSize: 0x200(0x40 Byte(s))
    string(64) name;
    // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
    uint createtime;
    // offset: 0x220, bitSize: 0x40(0x8 Byte(s))
    uint64 origfileid;
    // offset: 0x260, bitSize: 0x200(0x40 Byte(s))
    string(64) description;
    // offset: 0x460, bitSize: 0x100(0x20 Byte(s))
    string(32) authorname;
    // offset: 0x560, bitSize: 0x40(0x8 Byte(s))
    uint64 authorxuid;
    // offset: 0x5a0, bitSize: 0x20(0x4 Byte(s))
    uint length;
    // offset: 0x5c0, bitSize: 0x1
    bool ismodifiedname;
    // offset: 0x5c1, bitSize: 0x1
    bool ismodifieddescription;
    // offset: 0x5c2, bitSize: 0x1
    bool ispooled;
};

