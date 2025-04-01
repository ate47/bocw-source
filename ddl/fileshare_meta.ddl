// file .... fileshare_meta.ddl

#redirect hash_34be5def5f742525;

version hash_e7f4b8e6a04f8531 {
    // enums ..... 0 (0x0)
    // structs ... 1 (0x1)
    // header bit size .. 2168 (0x878)
    // header byte size . 271 (0x10f)

    // root: bitSize: 0x7c8, members: 11

    // offset: 0x0, bitSize: 0x100(0x20 Byte(s))
    string(32) name;
    // offset: 0x100, bitSize: 0x20(0x4 Byte(s))
    int timestamp;
    // offset: 0x120, bitSize: 0x40(0x8 Byte(s))
    uint64 originalfileid;
    // offset: 0x160, bitSize: 0x20(0x4 Byte(s))
    int duration;
    // offset: 0x180, bitSize: 0x400(0x80 Byte(s))
    string(128) description;
    // offset: 0x580, bitSize: 0x200(0x40 Byte(s))
    string(64) authorname;
    // offset: 0x780, bitSize: 0x40(0x8 Byte(s))
    uint64 authorxuid;
    // offset: 0x7c0, bitSize: 0x1
    bool ismodifiedname;
    // offset: 0x7c1, bitSize: 0x1
    bool ismodifieddescription;
    // offset: 0x7c2, bitSize: 0x1
    bool ispooled;
};

