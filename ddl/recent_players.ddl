// file .... recent_players.ddl

#redirect hash_2bafb8dbb348db88;

version hash_150e6af1288cdd6e {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 4992 (0x1380)
    // header byte size . 624 (0x270)

    // bitSize: 0x60, members: 2
    struct recentplayer {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        int time;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
    };

    // root: bitSize: 0x12d0, members: 4

    // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
    uint:6 count;
    // offset: 0x8, bitSize: 0x12c0(0x258 Byte(s)), array:0x32(hti:0xffff)
    recentplayer hash_224419b9dcb9832d[50];
    // offset: 0x12c8, bitSize: 0x1
    bool issorted;
};

