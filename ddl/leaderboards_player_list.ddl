// file .... leaderboards_player_list.ddl

#redirect hash_23ebfa2935da8797;

version hash_d97108b99fddddf5 {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 25800 (0x64c8)
    // header byte size . 3225 (0xc99)

    // bitSize: 0x40, members: 1
    struct player {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
    };

    // root: bitSize: 0x6418, members: 7

    // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
    uint:8 count;
    // offset: 0x8, bitSize: 0x3200(0x640 Byte(s)), array:0xc8(hti:0xffff)
    player playerslist[200];
    // offset: 0x3208, bitSize: 0x8(0x1 Byte(s))
    uint:8 hash_b941cba3c015f7b;
    // offset: 0x3210, bitSize: 0x3200(0x640 Byte(s)), array:0xc8(hti:0xffff)
    player hash_143b64839d071be4[200];
    // offset: 0x6410, bitSize: 0x1
    bool hash_710508e409e21d7a;
    // offset: 0x6411, bitSize: 0x1
    bool hash_60bfa70a97ce6004;
};

