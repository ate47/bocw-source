// file .... ddl_7560425ca618ad12

#redirect hash_68d7bda4758f3a7f;

version hash_9be154f778fa7357 {
    // enums ..... 5 (0x5)
    // structs ... 5 (0x5)
    // header bit size .. 3088 (0xc10)
    // header byte size . 386 (0x182)

    // bitSize: 0x380, members: 14
    struct telemetry_header {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 tu;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        int changelist_number;
        // offset: 0x30, bitSize: 0x20(0x4 Byte(s))
        uint hash_59cac0740a4b87a7;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        uint:16 ffotd;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        hash_29b2604fc09efe95 hash_198496d4e9596614;
        // offset: 0x68, bitSize: 0x40(0x8 Byte(s))
        xhash action_type;
        // offset: 0xa8, bitSize: 0x8(0x1 Byte(s))
        hash_73f7173befdca784 hash_6df0100be5a0b578;
        // offset: 0xb0, bitSize: 0x8(0x1 Byte(s))
        hash_54196e9e9860f0be platform;
        // offset: 0xb8, bitSize: 0x200(0x40 Byte(s))
        string(64) build_version;
        // offset: 0x2b8, bitSize: 0x20(0x4 Byte(s))
        uint title_id;
        // offset: 0x2d8, bitSize: 0x8(0x1 Byte(s))
        hash_69c3102673a86ddb hash_1ca9db94b2870d4c;
        // offset: 0x2e0, bitSize: 0x20(0x4 Byte(s))
        uint hash_56a1b6d783aa7a25;
        // offset: 0x300, bitSize: 0x40(0x8 Byte(s))
        xhash product;
        // offset: 0x340, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_f2ad74d8edb8204;
    };

    // bitSize: 0xa0, members: 8
    struct client_header {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_4b3b54620788bc34 account_type;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        hash_29b2604fc09efe95 hash_198496d4e9596614;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        hash_69c3102673a86ddb hash_1ca9db94b2870d4c;
        // offset: 0x18, bitSize: 0x40(0x8 Byte(s))
        uint64 user_session_id;
        // offset: 0x58, bitSize: 0x40(0x8 Byte(s))
        uint64 uno_id;
        // offset: 0x98, bitSize: 0x1
        bool hash_7cbf5890cd501351;
        // offset: 0x99, bitSize: 0x1
        bool is_bot;
    };

    // bitSize: 0x540, members: 6
    struct match_header {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_4595f140258e4a28;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        uint64 match_id;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_c05315ddb26eb93;
        // offset: 0xc0, bitSize: 0x40(0x8 Byte(s))
        uint64 lobby_id;
        // offset: 0x100, bitSize: 0x400(0x80 Byte(s))
        string(128) hash_28b8a59971714cba;
        // offset: 0x500, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_7440d8b299a5728f;
    };

    // bitSize: 0x80, members: 2
    struct hash_2d35f90d3a9b5b5e {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        uint64 dedi_id;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        uint64 uno_id;
    };

    // idx 0x0 members: 0x19
    enum hash_54196e9e9860f0be {
        hash_1edc71005dcf693, // 0x0
        nx, // 0x1
        studio, // 0x2
        steam, // 0x3
        epic, // 0x4
        switch, // 0x5
        wiiu, // 0x6
        hash_285365f7f507007f, // 0x7
        hash_2b62bdcc81544a4f, // 0x8
        ios, // 0x9
        android, // 0xa
        hash_3ef92ccdf7488404, // 0xb
        unknown, // 0xc
        uwp, // 0xd
        uno, // 0xe
        hash_57103d7c59a4a2c3, // 0xf
        wii, // 0x10
        hash_623db27183737229, // 0x11
        hash_650fc3a0458e59ea, // 0x12
        we_game, // 0x13
        hash_67f341df29709b3e, // 0x14
        dedicated, // 0x15
        ps4, // 0x16
        ps5, // 0x17
        ps3 // 0x18
    };

    // idx 0x1 members: 0x6
    enum hash_73f7173befdca784 {
        hash_3431756dd03a21c0, // 0x0
        NONE, // 0x1
        hash_52d666fca8db781b, // 0x2
        linux, // 0x3
        windows, // 0x4
        hash_70683717084c3558 // 0x5
    };

    // idx 0x2 members: 0xa
    enum hash_29b2604fc09efe95 {
        pc, // 0x0
        hash_9702152ab384009, // 0x1
        hash_285365f7f507007f, // 0x2
        hash_2b62bdcc81544a4f, // 0x3
        ios, // 0x4
        android, // 0x5
        unknown, // 0x6
        dedicated, // 0x7
        ps4, // 0x8
        ps5 // 0x9
    };

    // idx 0x3 members: 0xf
    enum hash_69c3102673a86ddb {
        durango, // 0x0
        nx, // 0x1
        pc, // 0x2
        hash_c67f31956fdefbf, // 0x3
        anaconda, // 0x4
        orbis, // 0x5
        neo, // 0x6
        ios, // 0x7
        hash_2c52ec15d49b9ffb, // 0x8
        hash_32d96314433cd3a7, // 0x9
        android, // 0xa
        hash_3b2520472cab7630, // 0xb
        scorpio, // 0xc
        unknown, // 0xd
        gemini // 0xe
    };

    // idx 0x4 members: 0xe
    enum hash_4b3b54620788bc34 {
        hash_253c0a169f23acf, // 0x0
        studio, // 0x1
        steam, // 0x2
        epic, // 0x3
        xbl, // 0x4
        nnid, // 0x5
        hash_4700c4b94b8267d1, // 0x6
        unknown, // 0x7
        hash_57103d7c59a4a2c3, // 0x8
        hash_5af9ed0a7ebcd4dc, // 0x9
        hash_62ec010bdaceb6b1, // 0xa
        hash_650fc3a0458e59ea, // 0xb
        hash_67f341df29709b3e, // 0xc
        psn // 0xd
    };

    // root: bitSize: 0xb60, members: 8

    // offset: 0x0, bitSize: 0x540(0xa8 Byte(s))
    match_header match;
    // offset: 0x540, bitSize: 0xc0(0x18 Byte(s))
    string(24) map_name;
    // offset: 0x600, bitSize: 0x380(0x70 Byte(s))
    telemetry_header telemetry;
    // offset: 0x980, bitSize: 0x40(0x8 Byte(s))
    string(8) game_type;
    // offset: 0x9c0, bitSize: 0x40(0x8 Byte(s))
    string(8) team1_name;
    // offset: 0xa00, bitSize: 0x40(0x8 Byte(s))
    string(8) team2_name;
    // offset: 0xa40, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0xae0, bitSize: 0x80(0x10 Byte(s))
    hash_2d35f90d3a9b5b5e server;
};

