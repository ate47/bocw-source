// file .... wz_match_record.ddl

#redirect hash_6813b33a5dfc8d11;

version hash_3c4947fa588d21ce {
    // enums ..... 8 (0x8)
    // structs ... 26 (0x1a)
    // header bit size .. 2752920 (0x2a0198)
    // header byte size . 344115 (0x54033)

    // bitSize: 0x78, members: 8
    struct hash_2c79abcce61676aa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x78, members: 8
    struct hash_20631b664715b1fa {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        int:8 attachment[8];
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:6 camoindex;
        // offset: 0x70, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x168, members: 9
    struct hash_27580df06d232ed1 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:5 talent[6];
        // offset: 0x70, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0xe8, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
        // offset: 0x160, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0x110, members: 4
    struct hash_1489c97943984433 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 herogadget;
        // offset: 0x20, bitSize: 0x78(0xf Byte(s))
        hash_20631b664715b1fa secondary;
        // offset: 0x98, bitSize: 0x78(0xf Byte(s))
        hash_2c79abcce61676aa primary;
    };

    // bitSize: 0x1ef8, members: 12
    struct hash_71e57d488b0eb24d {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1680(0x2d0 Byte(s)), array:0x10(hti:0xffff)
        hash_27580df06d232ed1 customclass[16];
        // offset: 0x16b0, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1eb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0x1ec0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0x1ed0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0x1ee0, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0x1ef0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1ef1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1ef2, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x1938, members: 8
    struct hash_31d8d99be94a78b7 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x30, bitSize: 0x1100(0x220 Byte(s)), array:0x10(hti:0xffff)
        hash_1489c97943984433 customclass[16];
        // offset: 0x1130, bitSize: 0x800(0x100 Byte(s)), array:0x10(hti:0xffff)
        string(16) customclassname[16];
        // offset: 0x1930, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0x1931, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0x1932, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

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

    // bitSize: 0x6d8, members: 8
    struct hash_6580ccf5f8a0ef6 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint asn;
        // offset: 0x20, bitSize: 0x400(0x80 Byte(s))
        string(128) city;
        // offset: 0x420, bitSize: 0x20(0x4 Byte(s))
        float longitude;
        // offset: 0x440, bitSize: 0x10(0x2 Byte(s))
        string(2) country;
        // offset: 0x450, bitSize: 0x40(0x8 Byte(s))
        string(8) timezone;
        // offset: 0x490, bitSize: 0x28(0x5 Byte(s))
        string(5) language;
        // offset: 0x4b8, bitSize: 0x20(0x4 Byte(s))
        float latitude;
        // offset: 0x4d8, bitSize: 0x200(0x40 Byte(s))
        string(64) region;
    };

    // bitSize: 0xb0, members: 5
    struct killstreakevent {
        // offset: 0x0, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int event_pos[3];
        // offset: 0x60, bitSize: 0x20(0x4 Byte(s))
        uint hash_41037faade6d9357;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        byte player_index;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        byte event_type;
        // offset: 0x90, bitSize: 0x20(0x4 Byte(s))
        uint time_ms;
    };

    // bitSize: 0x40, members: 4
    struct hash_70fd30917359da6c {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte player_index;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        short kills_total;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        byte event_type;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint time_ms;
    };

    // bitSize: 0x88, members: 6
    struct hash_2c63a98fdae81bb5 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        int hash_375e93395e4f1f12;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        int hash_209155237819d179;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint start_time_ms;
        // offset: 0x60, bitSize: 0x20(0x4 Byte(s))
        uint end_time_ms;
        // offset: 0x80, bitSize: 0x1
        bool hash_1f2c1112324566e5;
    };

    // bitSize: 0x520, members: 22
    struct hash_5117bce61a2e0fe3 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint hash_4f4661f71ba9b642;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint hash_5d03a11cca20029d;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_388c001cb4f44253;
        // offset: 0x60, bitSize: 0x20(0x4 Byte(s))
        uint hash_38a7161cb50b2f6d;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        uint64 gamelobbyid;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        byte hostmigrationcount;
        // offset: 0xc8, bitSize: 0x20(0x4 Byte(s))
        uint hash_178ca468b39c2feb;
        // offset: 0xe8, bitSize: 0x200(0x40 Byte(s))
        string(64) localtimestring;
        // offset: 0x2e8, bitSize: 0x40(0x8 Byte(s))
        uint64 matchhashlow;
        // offset: 0x328, bitSize: 0x100(0x20 Byte(s))
        string(32) consoleid64;
        // offset: 0x428, bitSize: 0x40(0x8 Byte(s))
        uint64 demofileid;
        // offset: 0x468, bitSize: 0x40(0x8 Byte(s))
        uint64 matchhashhigh;
        // offset: 0x4a8, bitSize: 0x20(0x4 Byte(s))
        uint hash_374014802bf0424a;
        // offset: 0x4c8, bitSize: 0x10(0x2 Byte(s))
        short hash_1e270dd38289b20c;
        // offset: 0x4d8, bitSize: 0x20(0x4 Byte(s))
        int lootxptocryptokeyratio;
        // offset: 0x4f8, bitSize: 0x20(0x4 Byte(s))
        uint utcoffsetfromserver;
        // offset: 0x518, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x519, bitSize: 0x1
        bool oldschool;
        // offset: 0x51a, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x51b, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x51c, bitSize: 0x1
        bool hash_47df56af71e4df3;
    };

    // bitSize: 0x2d70, members: 153
    struct player {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint ip;
        // offset: 0x20, bitSize: 0x6d8(0xdb Byte(s))
        hash_6580ccf5f8a0ef6 dml;
        // offset: 0x6f8, bitSize: 0x40(0x8 Byte(s))
        uint64 dwid;
        // offset: 0x738, bitSize: 0x8(0x1 Byte(s))
        byte team;
        // offset: 0x740, bitSize: 0x20(0x4 Byte(s))
        float averagespeedduringmatch;
        // offset: 0x760, bitSize: 0x10(0x2 Byte(s))
        short kills;
        // offset: 0x770, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x790, bitSize: 0x40(0x8 Byte(s))
        uint64 ucdid;
        // offset: 0x7d0, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0xffff)
        uint:16 hash_28e223b2b55169af[16];
        // offset: 0x8d0, bitSize: 0x20(0x4 Byte(s))
        int end_losses;
        // offset: 0x8f0, bitSize: 0x10(0x2 Byte(s))
        short killsdenied;
        // offset: 0x900, bitSize: 0x20(0x4 Byte(s))
        float totalkilldistances;
        // offset: 0x920, bitSize: 0x20(0x4 Byte(s))
        int end_misses;
        // offset: 0x940, bitSize: 0x20(0x4 Byte(s))
        uint match_xp;
        // offset: 0x960, bitSize: 0x98(0x13 Byte(s)), array:0x13(hti:0xffff)
        byte hitlocations[19];
        // offset: 0x9f8, bitSize: 0x20(0x4 Byte(s))
        float numkilldistanceentries;
        // offset: 0xa18, bitSize: 0x10(0x2 Byte(s))
        uint:16 challenges;
        // offset: 0xa28, bitSize: 0x20(0x4 Byte(s))
        float skill_variance_start;
        // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
        int loottimeplayed;
        // offset: 0xa68, bitSize: 0x10(0x2 Byte(s))
        uint:16 challengescompletedcount;
        // offset: 0xa78, bitSize: 0x20(0x4 Byte(s))
        int end_prestige;
        // offset: 0xa98, bitSize: 0x20(0x4 Byte(s))
        float boostingscore;
        // offset: 0xab8, bitSize: 0x20(0x4 Byte(s))
        uint hash_3e428c87cd41cb83;
        // offset: 0xad8, bitSize: 0x20(0x4 Byte(s))
        float skill_rating_start;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        byte hash_709c4368e326c4f6;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        byte position;
        // offset: 0xb08, bitSize: 0x20(0x4 Byte(s))
        int start_prestige;
        // offset: 0xb28, bitSize: 0x20(0x4 Byte(s))
        int controllerparticipationchecksskipped;
        // offset: 0xb48, bitSize: 0x20(0x4 Byte(s))
        uint hash_630fffa7f053a2b7;
        // offset: 0xb68, bitSize: 0x20(0x4 Byte(s))
        uint hash_3498c2a577aa328e;
        // offset: 0xb88, bitSize: 0x20(0x4 Byte(s))
        uint utc_connect_time_s;
        // offset: 0xba8, bitSize: 0x20(0x4 Byte(s))
        uint connectivitybits;
        // offset: 0xbc8, bitSize: 0xc0(0x18 Byte(s))
        string(24) hash_ce47f1f62861550;
        // offset: 0xc88, bitSize: 0x20(0x4 Byte(s))
        uint lootxpearned;
        // offset: 0xca8, bitSize: 0x20(0x4 Byte(s))
        int controllerparticipationendgameresult;
        // offset: 0xcc8, bitSize: 0x20(0x4 Byte(s))
        float percentageoftimemoving;
        // offset: 0xce8, bitSize: 0x20(0x4 Byte(s))
        uint pointstowin;
        // offset: 0xd08, bitSize: 0x8(0x1 Byte(s))
        byte party_id;
        // offset: 0xd10, bitSize: 0x20(0x4 Byte(s))
        int controllerparticipationconsecutivefailuremax;
        // offset: 0xd30, bitSize: 0x20(0x4 Byte(s))
        int start_games_played;
        // offset: 0xd50, bitSize: 0x8(0x1 Byte(s))
        byte hash_73577b207cfb7411;
        // offset: 0xd58, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int hash_1657e02fb5073e4a[3];
        // offset: 0xdb8, bitSize: 0x8(0x1 Byte(s))
        uint:8 playerquitteamscore;
        // offset: 0xdc0, bitSize: 0x20(0x4 Byte(s))
        float totaldistancetravelled;
        // offset: 0xde0, bitSize: 0x998(0x133 Byte(s)), array:0x133(hti:0x7)
        byte score_events[scoreevents_e];
        // offset: 0x1778, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_35e13b49beac01b0;
        // offset: 0x17b8, bitSize: 0x20(0x4 Byte(s))
        uint start_xp;
        // offset: 0x17d8, bitSize: 0x20(0x4 Byte(s))
        int objectivetime;
        // offset: 0x17f8, bitSize: 0x10(0x2 Byte(s))
        short killsconfirmed;
        // offset: 0x1808, bitSize: 0x8(0x1 Byte(s))
        uint:8 playerquitopposingteamscore;
        // offset: 0x1810, bitSize: 0x10(0x2 Byte(s))
        short player_placement;
        // offset: 0x1820, bitSize: 0x10(0x2 Byte(s))
        short highestkillstreak;
        // offset: 0x1830, bitSize: 0x20(0x4 Byte(s))
        int controllerparticipation;
        // offset: 0x1850, bitSize: 0x10(0x2 Byte(s))
        short cryptokeysbeforematch;
        // offset: 0x1860, bitSize: 0x20(0x4 Byte(s))
        float timeplayedalive;
        // offset: 0x1880, bitSize: 0x10(0x2 Byte(s))
        short num_lives;
        // offset: 0x1890, bitSize: 0x20(0x4 Byte(s))
        float timeplayedmoving;
        // offset: 0x18b0, bitSize: 0x20(0x4 Byte(s))
        float numspeedswhenmovingentries;
        // offset: 0x18d0, bitSize: 0x20(0x4 Byte(s))
        int code_client_num;
        // offset: 0x18f0, bitSize: 0x20(0x4 Byte(s))
        int end_hits;
        // offset: 0x1910, bitSize: 0x8(0x1 Byte(s))
        byte end_rank;
        // offset: 0x1918, bitSize: 0x20(0x4 Byte(s))
        int end_wins;
        // offset: 0x1938, bitSize: 0x30(0x6 Byte(s)), array:0x3(hti:0xffff)
        short hash_68e4530b257fb42f[3];
        // offset: 0x1968, bitSize: 0x20(0x4 Byte(s))
        int end_games_played;
        // offset: 0x1988, bitSize: 0x40(0x8 Byte(s))
        uint64 lobby_id;
        // offset: 0x19c8, bitSize: 0x8(0x1 Byte(s))
        hash_54196e9e9860f0be platform;
        // offset: 0x19d0, bitSize: 0x20(0x4 Byte(s))
        int end_kills;
        // offset: 0x19f0, bitSize: 0x20(0x4 Byte(s))
        int end_score;
        // offset: 0x1a10, bitSize: 0x10(0x2 Byte(s))
        short hash_ec4aea1a8bbd82;
        // offset: 0x1a20, bitSize: 0x30(0x6 Byte(s)), array:0x3(hti:0xffff)
        short hash_2044e5ddbbd19a8e[3];
        // offset: 0x1a50, bitSize: 0x20(0x4 Byte(s))
        float hash_14813a3c1b267555;
        // offset: 0x1a70, bitSize: 0x20(0x4 Byte(s))
        uint hash_3e8d4387ea9e7f42;
        // offset: 0x1a90, bitSize: 0x8(0x1 Byte(s))
        byte hash_51db55fc1339e092;
        // offset: 0x1a98, bitSize: 0x8(0x1 Byte(s))
        uint:8 playerquitroundnumber;
        // offset: 0x1aa0, bitSize: 0x100(0x20 Byte(s))
        string(32) consoleid64;
        // offset: 0x1ba0, bitSize: 0x10(0x2 Byte(s))
        short hash_49ea128912ee851d;
        // offset: 0x1bb0, bitSize: 0x8(0x1 Byte(s))
        byte suicides;
        // offset: 0x1bb8, bitSize: 0x20(0x4 Byte(s))
        int end_total_time_played_s;
        // offset: 0x1bd8, bitSize: 0x8(0x1 Byte(s))
        byte totalkillcamsskipped;
        // offset: 0x1be0, bitSize: 0x8(0x1 Byte(s))
        byte numdogscalled;
        // offset: 0x1be8, bitSize: 0x20(0x4 Byte(s))
        int controllerparticipationchecks;
        // offset: 0x1c08, bitSize: 0x10(0x2 Byte(s))
        short hash_6c4bd48708d6ca7d;
        // offset: 0x1c18, bitSize: 0x20(0x4 Byte(s))
        int start_hits;
        // offset: 0x1c38, bitSize: 0x8(0x1 Byte(s))
        byte hash_2b2e4e83da414b1e;
        // offset: 0x1c40, bitSize: 0x20(0x4 Byte(s))
        int start_wins;
        // offset: 0x1c60, bitSize: 0x40(0x8 Byte(s))
        xhash disconnect_reason;
        // offset: 0x1ca0, bitSize: 0x20(0x4 Byte(s))
        int start_kills;
        // offset: 0x1cc0, bitSize: 0x20(0x4 Byte(s))
        int start_score;
        // offset: 0x1ce0, bitSize: 0x20(0x4 Byte(s))
        uint hash_154d42f200303577;
        // offset: 0x1d00, bitSize: 0x10(0x2 Byte(s))
        uint:9 lootxpbeforematch;
        // offset: 0x1d10, bitSize: 0x20(0x4 Byte(s))
        float skill_rating;
        // offset: 0x1d30, bitSize: 0x8(0x1 Byte(s))
        byte jointype;
        // offset: 0x1d38, bitSize: 0xa0(0x14 Byte(s))
        client_header client;
        // offset: 0x1dd8, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1de8, bitSize: 0x20(0x4 Byte(s))
        uint end_xp;
        // offset: 0x1e08, bitSize: 0x8(0x1 Byte(s))
        uint:7 tier_boost;
        // offset: 0x1e10, bitSize: 0x8(0x1 Byte(s))
        byte prestige;
        // offset: 0x1e18, bitSize: 0x20(0x4 Byte(s))
        int participation;
        // offset: 0x1e38, bitSize: 0x8(0x1 Byte(s))
        byte weaponpickupscount;
        // offset: 0x1e40, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        byte dailychallenges[3];
        // offset: 0x1e58, bitSize: 0x30(0x6 Byte(s)), array:0x3(hti:0xffff)
        short hash_73dcab1bc83f37e2[3];
        // offset: 0x1e88, bitSize: 0x20(0x4 Byte(s))
        int hash_5efee4632dc32539;
        // offset: 0x1ea8, bitSize: 0x8(0x1 Byte(s))
        byte hash_6860858624175f84;
        // offset: 0x1eb0, bitSize: 0x8(0x1 Byte(s))
        byte hash_62898b408adf277d;
        // offset: 0x1eb8, bitSize: 0x20(0x4 Byte(s))
        int hash_16618233fdac5c29;
        // offset: 0x1ed8, bitSize: 0x20(0x4 Byte(s))
        uint total_xp;
        // offset: 0x1ef8, bitSize: 0x10(0x2 Byte(s))
        short upload;
        // offset: 0x1f08, bitSize: 0x8(0x1 Byte(s))
        byte numuavcalled;
        // offset: 0x1f10, bitSize: 0x8(0x1 Byte(s))
        uint:3 onboardingstate;
        // offset: 0x1f18, bitSize: 0x10(0x2 Byte(s))
        short team_placement;
        // offset: 0x1f28, bitSize: 0x20(0x4 Byte(s))
        uint hash_4325caae17068c55;
        // offset: 0x1f48, bitSize: 0x8(0x1 Byte(s))
        byte assists;
        // offset: 0x1f50, bitSize: 0x20(0x4 Byte(s))
        int playerxpmultiplier;
        // offset: 0x1f70, bitSize: 0x20(0x4 Byte(s))
        float averagekilldistance;
        // offset: 0x1f90, bitSize: 0x20(0x4 Byte(s))
        uint connectedbits;
        // offset: 0x1fb0, bitSize: 0x20(0x4 Byte(s))
        uint utc_disconnect_time_s;
        // offset: 0x1fd0, bitSize: 0x8(0x1 Byte(s))
        byte numdogskills;
        // offset: 0x1fd8, bitSize: 0x30(0x6 Byte(s)), array:0x3(hti:0xffff)
        short hash_e4d259ef22b4635[3];
        // offset: 0x2008, bitSize: 0x20(0x4 Byte(s))
        int controllerparticipationconsecutivesuccessmax;
        // offset: 0x2028, bitSize: 0x20(0x4 Byte(s))
        int end_unlock_points;
        // offset: 0x2048, bitSize: 0x20(0x4 Byte(s))
        int hash_70fe9df744d614f3;
        // offset: 0x2068, bitSize: 0x20(0x4 Byte(s))
        int escorttime;
        // offset: 0x2088, bitSize: 0x40(0x8 Byte(s))
        uint64 connection_id;
        // offset: 0x20c8, bitSize: 0x20(0x4 Byte(s))
        int hash_679439e9a51687ef;
        // offset: 0x20e8, bitSize: 0x8(0x1 Byte(s))
        byte platoon;
        // offset: 0x20f0, bitSize: 0x20(0x4 Byte(s))
        uint score_xp;
        // offset: 0x2110, bitSize: 0x20(0x4 Byte(s))
        int start_total_time_played_s;
        // offset: 0x2130, bitSize: 0x20(0x4 Byte(s))
        int hash_136288c07ffd7b0c;
        // offset: 0x2150, bitSize: 0x20(0x4 Byte(s))
        float totalspeedswhenmoving;
        // offset: 0x2170, bitSize: 0x20(0x4 Byte(s))
        int start_deaths;
        // offset: 0x2190, bitSize: 0x9c0(0x138 Byte(s)), array:0x9c(hti:0xffff)
        uint:16 hash_4bb657eb94ad1948[156];
        // offset: 0x2b50, bitSize: 0x20(0x4 Byte(s))
        float skill_variance;
        // offset: 0x2b70, bitSize: 0x20(0x4 Byte(s))
        int controllerparticipationinactivitywarnings;
        // offset: 0x2b90, bitSize: 0x98(0x13 Byte(s)), array:0x13(hti:0xffff)
        byte criticalhitlocations[19];
        // offset: 0x2c28, bitSize: 0x20(0x4 Byte(s))
        uint damage_dealt;
        // offset: 0x2c48, bitSize: 0x20(0x4 Byte(s))
        int weaponxpmultiplier;
        // offset: 0x2c68, bitSize: 0x10(0x2 Byte(s))
        short headshots;
        // offset: 0x2c78, bitSize: 0x20(0x4 Byte(s))
        int hash_1469faf3180d8b7a;
        // offset: 0x2c98, bitSize: 0x20(0x4 Byte(s))
        int start_losses;
        // offset: 0x2cb8, bitSize: 0x8(0x1 Byte(s))
        byte teamkills;
        // offset: 0x2cc0, bitSize: 0x20(0x4 Byte(s))
        int start_misses;
        // offset: 0x2ce0, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int hash_7d9d379ecba10793[3];
        // offset: 0x2d40, bitSize: 0x20(0x4 Byte(s))
        int end_deaths;
        // offset: 0x2d60, bitSize: 0x1
        bool hash_418487ab0985610b;
        // offset: 0x2d61, bitSize: 0x1
        bool hash_5c3a460a4b80bb21;
        // offset: 0x2d62, bitSize: 0x1
        bool hash_38793b233cd7e431;
        // offset: 0x2d63, bitSize: 0x1
        bool hash_12fac6a33938170e;
        // offset: 0x2d64, bitSize: 0x1
        bool present_at_end;
        // offset: 0x2d65, bitSize: 0x1
        bool hash_63b95d780b2bd355;
        // offset: 0x2d66, bitSize: 0x1
        bool is_bot;
        // offset: 0x2d67, bitSize: 0x1
        bool playingonwifi;
        // offset: 0x2d68, bitSize: 0x1
        bool controllerparticipationsuccessafterinactivitywarning;
    };

    // bitSize: 0x940, members: 72
    struct life {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float longest_hit_distance;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        byte player_index;
        // offset: 0x28, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x48, bitSize: 0x20(0x4 Byte(s))
        uint hash_6e5b19c572681334;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        byte killer_index;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:8 victimdecisecondssincelastboostjump;
        // offset: 0x78, bitSize: 0x30(0x6 Byte(s)), array:0x3(hti:0xffff)
        int:16 attacker_angles[3];
        // offset: 0xa8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_5fd40d280de4f20a;
        // offset: 0xb0, bitSize: 0x8(0x1 Byte(s))
        uint:8 killerdecisecondssincelastkneeslide;
        // offset: 0xb8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_66088b270a9d0d5f;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        byte attacker_index;
        // offset: 0xc8, bitSize: 0x20(0x4 Byte(s))
        uint hash_7567115bc2aa4bf;
        // offset: 0xe8, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int attacker_pos[3];
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        byte hash_67e7ffe4f1c4eb88;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        uint:16 victimtimespentswimmingdeciseconds;
        // offset: 0x160, bitSize: 0x20(0x4 Byte(s))
        uint xp_earned;
        // offset: 0x180, bitSize: 0x10(0x2 Byte(s))
        uint:16 victimtimespentwallrunningdeciseconds;
        // offset: 0x190, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int victim_pos[3];
        // offset: 0x1f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 attackerdelta;
        // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
        uint score_earned;
        // offset: 0x220, bitSize: 0x8(0x1 Byte(s))
        uint:8 victimdecisecondssincelastwallrun;
        // offset: 0x228, bitSize: 0x20(0x4 Byte(s))
        uint hash_7c5a630513a7bfd5;
        // offset: 0x248, bitSize: 0x20(0x4 Byte(s))
        float hash_202011f4c98c00b1;
        // offset: 0x268, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6677b86a4c2c0d54;
        // offset: 0x278, bitSize: 0x40(0x8 Byte(s))
        xhash character_decal_lootid;
        // offset: 0x2b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3976a49a3ab81759;
        // offset: 0x2c8, bitSize: 0x8(0x1 Byte(s))
        byte hash_5281edda9cfbd66a;
        // offset: 0x2d0, bitSize: 0x8(0x1 Byte(s))
        uint:8 killerdecisecondssincelastboostjump;
        // offset: 0x2d8, bitSize: 0x240(0x48 Byte(s)), array:0x9(hti:0xffff)
        xhash hash_20d6751cb2f9ca09[9];
        // offset: 0x518, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4f557c87c0538129;
        // offset: 0x558, bitSize: 0x40(0x8 Byte(s))
        xhash character_outfit_lootid;
        // offset: 0x598, bitSize: 0x8(0x1 Byte(s))
        byte hash_56e7eb0d1597ec79;
        // offset: 0x5a0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_63862160f8335af2;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9071b1ce927d040;
        // offset: 0x5f0, bitSize: 0x8(0x1 Byte(s))
        uint:8 victimdecisecondssincelastswim;
        // offset: 0x5f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 victimdelta;
        // offset: 0x608, bitSize: 0x10(0x2 Byte(s))
        short means_of_death;
        // offset: 0x618, bitSize: 0x30(0x6 Byte(s)), array:0x3(hti:0xffff)
        int:16 victim_angles[3];
        // offset: 0x648, bitSize: 0x8(0x1 Byte(s))
        byte multikill;
        // offset: 0x650, bitSize: 0x10(0x2 Byte(s))
        short hash_3ca62fd7f5d50ede;
        // offset: 0x660, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int hash_9677cf4f08d8697[3];
        // offset: 0x6c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 killerdecisecondssincelastwallrun;
        // offset: 0x6c8, bitSize: 0x10(0x2 Byte(s))
        short hash_1783a3513be4bd7c;
        // offset: 0x6d8, bitSize: 0x40(0x8 Byte(s))
        xhash specialist;
        // offset: 0x718, bitSize: 0x30(0x6 Byte(s)), array:0x3(hti:0xffff)
        int:16 hash_648ba56f725b9077[3];
        // offset: 0x748, bitSize: 0x20(0x4 Byte(s))
        uint hash_3faf0f7b322f3cfc;
        // offset: 0x768, bitSize: 0x8(0x1 Byte(s))
        uint:8 vicitmdecisecondssincelastkneeslide;
        // offset: 0x770, bitSize: 0x20(0x4 Byte(s))
        float dotofdeath;
        // offset: 0x790, bitSize: 0x40(0x8 Byte(s))
        string(8) character_gender;
        // offset: 0x7d0, bitSize: 0x8(0x1 Byte(s))
        uint:8 killerdecisecondssincelastswim;
        // offset: 0x7d8, bitSize: 0x8(0x1 Byte(s))
        uint:8 victimnumberofkneeslides;
        // offset: 0x7e0, bitSize: 0x8(0x1 Byte(s))
        byte assists;
        // offset: 0x7e8, bitSize: 0x20(0x4 Byte(s))
        uint hash_cc61feedcebaa4d;
        // offset: 0x808, bitSize: 0x8(0x1 Byte(s))
        uint:5 character_outfit;
        // offset: 0x810, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4b4bd85ab964d386;
        // offset: 0x850, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int spawn_pos[3];
        // offset: 0x8b0, bitSize: 0x40(0x8 Byte(s))
        xhash character_warpaint_lootid;
        // offset: 0x8f0, bitSize: 0x8(0x1 Byte(s))
        uint:5 character_warpaint_outfit;
        // offset: 0x8f8, bitSize: 0x8(0x1 Byte(s))
        uint:8 victimnumberofboostjumps;
        // offset: 0x900, bitSize: 0x20(0x4 Byte(s))
        uint hash_1167938b851224e;
        // offset: 0x920, bitSize: 0x1
        bool died;
        // offset: 0x921, bitSize: 0x1
        bool hash_7e25889643b8fe1b;
        // offset: 0x922, bitSize: 0x1
        bool killersweaponaltmode;
        // offset: 0x923, bitSize: 0x1
        bool hash_244864600cc60ac8;
        // offset: 0x924, bitSize: 0x1
        bool hash_35ccbe74e6d95ab5;
        // offset: 0x925, bitSize: 0x1
        bool hash_37c081085bfecffa;
        // offset: 0x926, bitSize: 0x1
        bool hash_61cc3ce6a5e5b529;
        // offset: 0x927, bitSize: 0x1
        bool hash_37fd9537b3e20888;
        // offset: 0x928, bitSize: 0x1
        bool hash_2f090963f5d45718;
        // offset: 0x929, bitSize: 0x1
        bool hash_47ca5f583ae26a22;
        // offset: 0x92a, bitSize: 0x11, array:0x11(hti:0x6)
        bool hash_1a3b58ae3753c6f8[events];
    };

    // bitSize: 0xd0, members: 4
    struct hash_6455b0739942db12 {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash item;
        // offset: 0x40, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int event_pos[3];
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint time_ms;
        // offset: 0xc0, bitSize: 0x10(0x2 Byte(s))
        uint:9 life_index;
    };

    // bitSize: 0xd0, members: 4
    struct hash_4cc3ca9227e9ee6e {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash item;
        // offset: 0x40, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int event_pos[3];
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint time_ms;
        // offset: 0xc0, bitSize: 0x10(0x2 Byte(s))
        uint:9 life_index;
    };

    // bitSize: 0xe8, members: 8
    struct hash_40387f9bff6d9d3c {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hits;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s))
        xhash item;
        // offset: 0x48, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int event_pos[3];
        // offset: 0xa8, bitSize: 0x8(0x1 Byte(s))
        uint:4 shots;
        // offset: 0xb0, bitSize: 0x20(0x4 Byte(s))
        uint time_ms;
        // offset: 0xd0, bitSize: 0x10(0x2 Byte(s))
        uint:9 life_index;
        // offset: 0xe0, bitSize: 0x1
        bool expirationthroughdeath;
    };

    // bitSize: 0x28, members: 3
    struct hash_5efdb8ef8b6af1cb {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:9 victimlifeindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 killstreakindex;
        // offset: 0x18, bitSize: 0x10(0x2 Byte(s))
        uint:9 killerlifeindex;
    };

    // bitSize: 0x260, members: 6
    struct hash_c464eb471b1c18a {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_62e7261a9dd66829;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        byte playerindex;
        // offset: 0x48, bitSize: 0x200(0x40 Byte(s))
        string(64) challengestring;
        // offset: 0x248, bitSize: 0x8(0x1 Byte(s))
        uint:8 itemindex;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:8 statsmilestonescsvnum;
        // offset: 0x258, bitSize: 0x8(0x1 Byte(s))
        uint:8 challengetier;
    };

    // bitSize: 0x100, members: 6
    struct deathcircle {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float wait_sec;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        float scale_sec;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        float damage_interval;
        // offset: 0x60, bitSize: 0x20(0x4 Byte(s))
        int damage;
        // offset: 0x80, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int origin[3];
        // offset: 0xe0, bitSize: 0x20(0x4 Byte(s))
        int radius;
    };

    // bitSize: 0x88, members: 3
    struct hash_298025d6535ffa40 {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash zone_name;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash item_name;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:5 item_count;
    };

    // bitSize: 0x100, members: 14
    struct aizone {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash name;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 death_circle;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:3 zone_hellhounds;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_46c66659061c4df6;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_468f7191e8118876;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3bd0e72c0da688b8;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_78530caab146b8b2;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_7c33a0c7c454cdeb;
        // offset: 0x78, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int origin[3];
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:3 zone_activated;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2778c481a1f0f691;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:3 zone_brutus;
        // offset: 0xf0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_2f54ea56d60207e4;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        uint:3 zone_blightfather;
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
        none, // 0x1
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
        hash_1e620d7931792cb4, // 0x4
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

    // idx 0x5 members: 0x18
    enum meansofdeath {
        mod_explosive, // 0x0
        mod_telefrag, // 0x1
        mod_grenade, // 0x2
        mod_unknown, // 0x3
        mod_post_game, // 0x4
        mod_burned, // 0x5
        mod_melee_weapon_butt, // 0x6
        mod_rifle_bullet, // 0x7
        mod_crush, // 0x8
        mod_projectile, // 0x9
        mod_electrocuted, // 0xa
        mod_hit_by_object, // 0xb
        mod_head_shot, // 0xc
        mod_grenade_splash, // 0xd
        mod_melee_assassinate, // 0xe
        mod_pistol_bullet, // 0xf
        mod_projectile_splash, // 0x10
        mod_impact, // 0x11
        mod_drown, // 0x12
        mod_melee, // 0x13
        mod_trigger_hurt, // 0x14
        mod_suicide, // 0x15
        mod_gas, // 0x16
        mod_falling // 0x17
    };

    // idx 0x6 members: 0x11
    enum events {
        buzzkill, // 0x0
        assaulting, // 0x1
        firstblood, // 0x2
        defusing, // 0x3
        longshot, // 0x4
        carrying, // 0x5
        assistedsuicide, // 0x6
        killstreak, // 0x7
        execution, // 0x8
        defending, // 0x9
        planting, // 0xa
        defender, // 0xb
        posthumous, // 0xc
        comeback, // 0xd
        revenge, // 0xe
        avenger, // 0xf
        headshot // 0x10
    };

    // idx 0x7 members: 0x133
    enum scoreevents_e {
        counter_uav_assist, // 0x0
        assist_flash, // 0x1
        optic_camo_kill, // 0x2
        defused_bomb_last_man_alive, // 0x3
        retrieve_own_tags, // 0x4
        hash_313dc1283175a02, // 0x5
        gelgun_multikill_2, // 0x6
        annihilator_multikill_2, // 0x7
        hacked_uav, // 0x8
        hash_446d4826a38438c, // 0x9
        uninterrupted_obit_feed_kills, // 0xa
        flamethrower_multikill_2, // 0xb
        hacked_counteruav, // 0xc
        hacked_satellite, // 0xd
        assist_emp, // 0xe
        hq_destroyed, // 0xf
        hover_rcxd_kill, // 0x10
        disarm_hacked_care_package, // 0x11
        hash_6c13d938ab90061, // 0x12
        suicide, // 0x13
        kill_enemy_after_death, // 0x14
        hash_95270c3a7b3f486, // 0x15
        share_care_package, // 0x16
        killed_bowlauncher_enemy, // 0x17
        kill_enemy_who_is_speedbursting, // 0x18
        kill_enemy_with_more_ammo_oic, // 0x19
        annihilator_kill, // 0x1a
        hash_c103a57bdbf94dd, // 0x1b
        kill_enemy_while_stunned, // 0x1c
        hash_ccaa673a5d7041b, // 0x1d
        hash_cea2cf8570190db, // 0x1e
        capture_enemy_crate, // 0x1f
        escort_robot_disable, // 0x20
        koth_secure, // 0x21
        hash_e04f3035798378d, // 0x22
        heatwave_kill, // 0x23
        end_enemy_psychosis, // 0x24
        hash_1071cf93d87489fb, // 0x25
        team_kill, // 0x26
        hash_112fadad4b5d840a, // 0x27
        flag_grab, // 0x28
        hash_113928d60e53dfe1, // 0x29
        kill_underwater_enemy_explosive, // 0x2a
        gelgun_multikill, // 0x2b
        first_kill, // 0x2c
        hpm_suppress, // 0x2d
        quickly_secure_point, // 0x2e
        hacked_killstreak_protection, // 0x2f
        hash_156609c5b075a8ae, // 0x30
        destroyed_trophy_system, // 0x31
        hash_170fea11fe7de6e7, // 0x32
        dom_point_secured, // 0x33
        hash_17edb6b68a001f59, // 0x34
        armblades_kill, // 0x35
        flag_carrier_kill_return_close, // 0x36
        kill_enemy_with_their_weapon, // 0x37
        raps_kill, // 0x38
        hash_1acd9e99eabf5080, // 0x39
        completed_match, // 0x3a
        killed_dog, // 0x3b
        downed_player, // 0x3c
        killstreak_8, // 0x3d
        killstreak_9, // 0x3e
        killstreak_2, // 0x3f
        killstreak_3, // 0x40
        killstreak_4, // 0x41
        killstreak_5, // 0x42
        killstreak_6, // 0x43
        killstreak_7, // 0x44
        hash_1ecdac7d70cffddf, // 0x45
        kill_enemy_grenade_throwback, // 0x46
        hash_1f70f320390df72c, // 0x47
        won_match, // 0x48
        kill_enemies_one_bullet, // 0x49
        kill_enemy_while_flashbanged, // 0x4a
        kill_enemy_that_used_resurrect, // 0x4b
        hash_2326e0e41c5e790f, // 0x4c
        hash_233f7edfe0b05dbe, // 0x4d
        kill_enemy_one_bullet, // 0x4e
        hash_23a674d2ecf323fe, // 0x4f
        killed_enemy_while_carrying_flag, // 0x50
        killed_minigun_enemy, // 0x51
        hash_26185ebdf182fe1d, // 0x52
        hash_26d28bf9e79156e0, // 0x53
        hash_26d2c4a807a3e16b, // 0x54
        hash_27dad6d784f5e83e, // 0x55
        assisted_suicide, // 0x56
        melee_leader_gun, // 0x57
        mothership_assist_kill, // 0x58
        kill_enemy_that_is_using_optic_camo, // 0x59
        lightninggun_multikill, // 0x5a
        kill_sd, // 0x5b
        sentinel_kill, // 0x5c
        kill_enemy_with_hacked_care_package, // 0x5d
        destroyed_remote_missile, // 0x5e
        flag_capture, // 0x5f
        killstreak_more_than_30, // 0x60
        hash_2fefd31ae2a021e0, // 0x61
        kill_enemy_while_sliding, // 0x62
        kill_enemy_that_is_wallrunning, // 0x63
        defused_bomb, // 0x64
        kill_enemy_while_capping_dom, // 0x65
        killed_armblades_enemy, // 0x66
        gelgun_kill, // 0x67
        electrified, // 0x68
        kill_denied, // 0x69
        kill_enemy_injuring_teammate, // 0x6a
        aircraft_flare_assist, // 0x6b
        hash_3292cdf061996209, // 0x6c
        bomb_detonated, // 0x6d
        hash_332eb22437d12ae6, // 0x6e
        hash_335e75276452517a, // 0x6f
        hash_3368e127645b5d83, // 0x70
        hash_336f70276460bc2e, // 0x71
        kill_enemy_who_has_high_score, // 0x72
        hash_33f3e57b5a556807, // 0x73
        assist_25, // 0x74
        assist_75, // 0x75
        assist_50, // 0x76
        longshot_kill, // 0x77
        hash_3602655194af1e28, // 0x78
        revenge_kill, // 0x79
        destroyed_tac_insert, // 0x7a
        hash_3799ece9776712f5, // 0x7b
        dart_kill, // 0x7c
        dom_point_neutral_secured, // 0x7d
        kill_enemy_who_is_using_focus, // 0x7e
        hash_3a1fa22fa29528e7, // 0x7f
        flamethrower_multikill, // 0x80
        killed_attacker, // 0x81
        hash_3a5eaaf8d03d8f10, // 0x82
        hash_3b82ba992d5ae488, // 0x83
        kill_enemy_who_has_powerarmor, // 0x84
        kill_enemy_when_injured, // 0x85
        killed_bomb_planter, // 0x86
        assist_concussion, // 0x87
        kill_in_3_seconds_gun, // 0x88
        minigun_multikill_2, // 0x89
        destroyed_claymore, // 0x8a
        backstabber_kill, // 0x8b
        kill_enemy_while_in_air, // 0x8c
        hash_423dabc44273f6cb, // 0x8d
        hash_423dacc44273f87e, // 0x8e
        hash_423dadc44273fa31, // 0x8f
        sentry_gun_kill, // 0x90
        killed_dog_assist, // 0x91
        hash_4394cdd031e4272c, // 0x92
        combat_robot_kill, // 0x93
        destroyed_combat_robot, // 0x94
        hash_46b6299d2fce3776, // 0x95
        destroyed_bouncingbetty, // 0x96
        hash_488af6388b81ad58, // 0x97
        kill_enemy_with_care_package_crush, // 0x98
        escort_robot_disable_assist_50, // 0x99
        escort_robot_disable_assist_25, // 0x9a
        hash_495df1bd31bf7bba, // 0x9b
        hash_497ea90172a82b12, // 0x9c
        escort_robot_escort_goal, // 0x9d
        shield_blocked_damage, // 0x9e
        hash_4bcb83b1a39c5c8e, // 0x9f
        rescue_flag_carrier, // 0xa0
        killed_gelgun_enemy, // 0xa1
        emp_assist, // 0xa2
        hash_4d69456db152f5a5, // 0xa3
        destroyed_shield, // 0xa4
        bowlauncher_multikill, // 0xa5
        hash_51c71d7db0e27c9d, // 0xa6
        trophy_defense, // 0xa7
        flamethrower_kill, // 0xa8
        multikill_more_than_8, // 0xa9
        shield_blocked_damage_reduced, // 0xaa
        hash_52abffb28461993b, // 0xab
        hacked_dart, // 0xac
        hash_532ef081664c1d6d, // 0xad
        stop_enemy_killstreak, // 0xae
        optic_camo_capture_objective, // 0xaf
        minigun_kill, // 0xb0
        hash_54305d3c97781673, // 0xb1
        escort_robot_escort, // 0xb2
        hardpoint_kill, // 0xb3
        hash_55ac6aa1f99f2fa1, // 0xb4
        escort_robot_disable_near_goal, // 0xb5
        armblades_multikill, // 0xb6
        hash_56581115240dd9db, // 0xb7
        hash_5721da03722c632b, // 0xb8
        hash_582dfe7a00b5db59, // 0xb9
        destroyed_helicopter_giunit_drop, // 0xba
        hacked_mothership, // 0xbb
        kill_enemy_that_heatwaved_you, // 0xbc
        kill_enemy_while_using_psychosis, // 0xbd
        hash_5a40685d5a3dac3c, // 0xbe
        hash_5aa91fb1d4010928, // 0xbf
        hash_5b5829eb65f58fea, // 0xc0
        hash_5be2722d390b060b, // 0xc1
        resurrect_kill, // 0xc2
        reboot_robot, // 0xc3
        destroyed_helicopter_agr_drop, // 0xc4
        focus_earn_scorestreak, // 0xc5
        kill_enemy_who_killed_teammate, // 0xc6
        clear_2_attackers, // 0xc7
        hash_5d6aa79e0e308ca2, // 0xc8
        hash_5d6f7fc5ce73166e, // 0xc9
        kill_enemy_while_both_in_air, // 0xca
        hash_5e417d3ad081d60e, // 0xcb
        killed_flamethrower_enemy, // 0xcc
        armblades_multikill_2, // 0xcd
        hacked_autoturret, // 0xce
        killed_bomb_defuser, // 0xcf
        kill_confirmed, // 0xd0
        humiliation_gun, // 0xd1
        bowlauncher_multikill_2, // 0xd2
        shield_assist, // 0xd3
        killed_defender, // 0xd4
        hash_658ad0ee7468d1e9, // 0xd5
        hash_6637cc9a0ee9c570, // 0xd6
        hash_665ed726363e8b77, // 0xd7
        hacked_rcbomb, // 0xd8
        hash_679b0b2d035a256e, // 0xd9
        assist_proximity, // 0xda
        hash_68634aca4e3c1ae6, // 0xdb
        bowlauncher_kill, // 0xdc
        hash_6a0d078cab2c142e, // 0xdd
        c4_multikill, // 0xde
        knife_with_ammo_oic, // 0xdf
        speed_burst_kill, // 0xe0
        hatchet_kill, // 0xe1
        focus_earn_multiscorestreak, // 0xe2
        microwave_turret_assist, // 0xe3
        hash_6dcbcbcbe69d31fb, // 0xe4
        teammate_kill_confirmed, // 0xe5
        kill, // 0xe6
        hash_7044f404f9735b47, // 0xe7
        hash_71b3df7fa2af0a16, // 0xe8
        hash_71babcd3787132f6, // 0xe9
        hash_71ed5667d93ff41d, // 0xea
        vision_pulse_kill, // 0xeb
        comeback_from_deathstreak, // 0xec
        hash_722402e7712a3370, // 0xed
        survivor, // 0xee
        microwave_turret_kill, // 0xef
        kill_confirmed_multi, // 0xf0
        defend_flag_carrier, // 0xf1
        bounce_hatchet_kill, // 0xf2
        death, // 0xf3
        destroyed_plane_mortar, // 0xf4
        hash_749ea84d7c098477, // 0xf5
        hash_74c93d98bfd57cf1, // 0xf6
        hash_74d4d90db8e3856b, // 0xf7
        kill_enemy_with_gunbutt, // 0xf8
        hash_7633b9087328afdd, // 0xf9
        kill_flag_carrier, // 0xfa
        destroyed_dart, // 0xfb
        minigun_multikill, // 0xfc
        hacked, // 0xfd
        multikill_8, // 0xfe
        multikill_3, // 0xff
        multikill_2, // 0x100
        multikill_7, // 0x101
        multikill_6, // 0x102
        multikill_5, // 0x103
        multikill_4, // 0x104
        elimination_and_last_player_alive, // 0x105
        planted_bomb, // 0x106
        kill_gun, // 0x107
        hash_7970558375b871cb, // 0x108
        kill_enemy_with_fists, // 0x109
        final_kill_elimination, // 0x10a
        kill_enemy_while_wallrunning, // 0x10b
        hash_7a530d311f541318, // 0x10c
        hash_7ad353dbba2f7dd9, // 0x10d
        hash_7b1786a1004b465e, // 0x10e
        hash_7bd61d3cda0a6fec, // 0x10f
        headshot, // 0x110
        hash_7c832209b65d0c28, // 0x111
        melee_kill, // 0x112
        hash_7d115f1d9abd3979, // 0x113
        kill_enemy_that_is_in_air, // 0x114
        traversal_kill, // 0x115
        hash_7e54290bb0149959, // 0x116
        escort_robot_reboot, // 0x117
        killstreak_19, // 0x118
        killstreak_18, // 0x119
        killstreak_13, // 0x11a
        killstreak_12, // 0x11b
        killstreak_11, // 0x11c
        killstreak_10, // 0x11d
        killstreak_17, // 0x11e
        killstreak_16, // 0x11f
        killstreak_15, // 0x120
        killstreak_14, // 0x121
        killstreak_28, // 0x122
        killstreak_29, // 0x123
        killstreak_26, // 0x124
        killstreak_27, // 0x125
        killstreak_24, // 0x126
        killstreak_25, // 0x127
        killstreak_22, // 0x128
        killstreak_23, // 0x129
        killstreak_20, // 0x12a
        killstreak_21, // 0x12b
        killstreak_30, // 0x12c
        flag_return, // 0x12d
        power_armor_kill, // 0x12e
        uav_assist, // 0x12f
        hash_7f93049491be6104, // 0x130
        hash_7fc37e28bad8da01, // 0x131
        hash_7fcdd1e43d78a610 // 0x132
    };

    // root: bitSize: 0x2a00e8, members: 65

    // offset: 0x0, bitSize: 0x100(0x20 Byte(s))
    string(32) map;
    // offset: 0x100, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x120, bitSize: 0x20(0x4 Byte(s))
    uint hash_375e93395e4f1f12;
    // offset: 0x140, bitSize: 0xf00(0x1e0 Byte(s)), array:0xf(hti:0xffff)
    deathcircle death_circle[15];
    // offset: 0x1040, bitSize: 0x8(0x1 Byte(s))
    byte player_count;
    // offset: 0x1048, bitSize: 0x20(0x4 Byte(s))
    uint hash_7888f9b0e8c46d42;
    // offset: 0x1068, bitSize: 0x11b480(0x23690 Byte(s)), array:0x1ea(hti:0xffff)
    life lives[490];
    // offset: 0x11c4e8, bitSize: 0x1388(0x271 Byte(s)), array:0x7d(hti:0xffff)
    hash_5efdb8ef8b6af1cb nondamageassists[125];
    // offset: 0x11d870, bitSize: 0x40(0x8 Byte(s))
    uint64 match_id;
    // offset: 0x11d8b0, bitSize: 0x20(0x4 Byte(s))
    int server_frame_msec;
    // offset: 0x11d8d0, bitSize: 0x20(0x4 Byte(s))
    uint hash_209155237819d179;
    // offset: 0x11d8f0, bitSize: 0x8(0x1 Byte(s))
    byte hash_5be2776e72fe7105;
    // offset: 0x11d8f8, bitSize: 0x20(0x4 Byte(s))
    int item_spawn_seed;
    // offset: 0x11d918, bitSize: 0x380(0x70 Byte(s))
    telemetry_header telemetry;
    // offset: 0x11dc98, bitSize: 0x40(0x8 Byte(s))
    xhash playlist_name;
    // offset: 0x11dcd8, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_4e397fa6657da523;
    // offset: 0x11ddd8, bitSize: 0x20(0x4 Byte(s))
    int hash_2678ed840a344d55;
    // offset: 0x11ddf8, bitSize: 0x20(0x4 Byte(s))
    int hash_6ed65ba529599bb5;
    // offset: 0x11de18, bitSize: 0x8(0x1 Byte(s))
    byte player_count_end;
    // offset: 0x11de20, bitSize: 0x40(0x8 Byte(s))
    xhash game_type;
    // offset: 0x11de60, bitSize: 0x8(0x1 Byte(s))
    byte hash_481ee9109f272237;
    // offset: 0x11de68, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_4270d43d00e554ea;
    // offset: 0x11df68, bitSize: 0x40(0x8 Byte(s))
    uint64 host_id;
    // offset: 0x11dfa8, bitSize: 0x20(0x4 Byte(s))
    uint hash_7baa59adf52de2d1;
    // offset: 0x11dfc8, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
    int compass_map_upper_left[3];
    // offset: 0x11e028, bitSize: 0xed80(0x1db0 Byte(s)), array:0x64(hti:0xffff)
    hash_c464eb471b1c18a challengescompleted[100];
    // offset: 0x12cda8, bitSize: 0x55f0(0xabe Byte(s)), array:0x7d(hti:0xffff)
    killstreakevent killstreaks[125];
    // offset: 0x132398, bitSize: 0xaa0(0x154 Byte(s)), array:0x14(hti:0xffff)
    hash_298025d6535ffa40 hash_7357a4f64d8993b7[20];
    // offset: 0x132e38, bitSize: 0x8(0x1 Byte(s))
    byte hash_7f29e138a8813e47;
    // offset: 0x132e40, bitSize: 0x10(0x2 Byte(s))
    short numnondamageassists;
    // offset: 0x132e50, bitSize: 0x8(0x1 Byte(s))
    byte bot_count;
    // offset: 0x132e58, bitSize: 0x10(0x2 Byte(s))
    uint:16 hash_7701efac52d36b8d;
    // offset: 0x132e68, bitSize: 0x1f40(0x3e8 Byte(s)), array:0x7d(hti:0xffff)
    hash_70fd30917359da6c hash_74f514e2df10ccfe[125];
    // offset: 0x134da8, bitSize: 0x8(0x1 Byte(s))
    byte hash_53437329fef70258;
    // offset: 0x134db0, bitSize: 0x20(0x4 Byte(s))
    int playlist_id;
    // offset: 0x134dd0, bitSize: 0x20(0x4 Byte(s))
    uint utc_end_time_s;
    // offset: 0x134df0, bitSize: 0x8(0x1 Byte(s))
    byte hash_63f745385e07b822;
    // offset: 0x134df8, bitSize: 0x20(0x4 Byte(s))
    uint utc_start_time_s;
    // offset: 0x134e18, bitSize: 0x8(0x1 Byte(s))
    byte player_count_start;
    // offset: 0x134e20, bitSize: 0x520(0xa4 Byte(s))
    hash_5117bce61a2e0fe3 header;
    // offset: 0x135340, bitSize: 0xa00(0x140 Byte(s)), array:0xa(hti:0xffff)
    aizone ai_zones[10];
    // offset: 0x135d40, bitSize: 0x40(0x8 Byte(s))
    xhash test_name;
    // offset: 0x135d80, bitSize: 0x10(0x2 Byte(s))
    short team_count;
    // offset: 0x135d90, bitSize: 0x20(0x4 Byte(s))
    uint breadcrumbs_total;
    // offset: 0x135db0, bitSize: 0x20(0x4 Byte(s))
    int playlist_version;
    // offset: 0x135dd0, bitSize: 0xcc0(0x198 Byte(s)), array:0x18(hti:0xffff)
    hash_2c63a98fdae81bb5 rounds[24];
    // offset: 0x136a90, bitSize: 0x10(0x2 Byte(s))
    uint:10 life_count;
    // offset: 0x136aa0, bitSize: 0x8(0x1 Byte(s))
    byte player_count_left;
    // offset: 0x136aa8, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
    int compass_map_lower_right[3];
    // offset: 0x136b08, bitSize: 0x10(0x2 Byte(s))
    short victor;
    // offset: 0x136b18, bitSize: 0x10(0x2 Byte(s))
    uint:16 numchallengescompleted;
    // offset: 0x136b28, bitSize: 0x8(0x1 Byte(s))
    byte heatmapdatagenerated;
    // offset: 0x136b30, bitSize: 0x168a90(0x2d152 Byte(s)), array:0x7f(hti:0xffff)
    player players[127];
    // offset: 0x29f5c0, bitSize: 0x20(0x4 Byte(s))
    uint duration_ms;
    // offset: 0x29f5e0, bitSize: 0x20(0x4 Byte(s))
    int ffotd_version;
    // offset: 0x29f600, bitSize: 0xaa0(0x154 Byte(s)), array:0x14(hti:0xffff)
    hash_298025d6535ffa40 hash_5ca6052f03257d05[20];
    // offset: 0x2a00a0, bitSize: 0x20(0x4 Byte(s))
    int hash_7b16fbbf75fe39b3;
    // offset: 0x2a00c0, bitSize: 0x20(0x4 Byte(s))
    int hash_5288d149bac65a79;
    // offset: 0x2a00e0, bitSize: 0x1
    bool hash_706dd6b881aa67f4;
    // offset: 0x2a00e1, bitSize: 0x1
    bool hash_74d0769494af24a9;
    // offset: 0x2a00e2, bitSize: 0x1
    bool is_draw;
    // offset: 0x2a00e3, bitSize: 0x1
    bool is_private_match;
    // offset: 0x2a00e4, bitSize: 0x1
    bool is_dedicated;
    // offset: 0x2a00e5, bitSize: 0x1
    bool hash_9bb341c4fe5412b;
};

