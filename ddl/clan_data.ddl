// file .... clan_data.ddl

#redirect hash_28bcc2c63f0bf6a1;

version hash_9aa272f8a54ea3ae {
    // enums ..... 0 (0x0)
    // structs ... 1 (0x1)
    // header bit size .. 2288 (0x8f0)
    // header byte size . 286 (0x11e)

    // root: bitSize: 0x840, members: 3

    // offset: 0x0, bitSize: 0x400(0x80 Byte(s))
    string(128) message;
    // offset: 0x400, bitSize: 0x400(0x80 Byte(s))
    string(128) description;
    // offset: 0x800, bitSize: 0x40(0x8 Byte(s))
    uint64 messagexuid;
};

