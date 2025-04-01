// file .... mp_match_record.ddl

#redirect hash_16504b575cce91ad;

version hash_e011f44eed413a0a {
    // enums ..... 14 (0xe)
    // structs ... 36 (0x24)
    // header bit size .. 1622312 (0x18c128)
    // header byte size . 202789 (0x31825)

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x0)
        hash_705fa6d3f50ff148 parts[hash_5ab26f037efe82c];
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x40(hti:0xffff)
        bool hash_63930aafa5d6ac7b[64];
    };

    // bitSize: 0x100, members: 1
    struct hash_729f42618cb8bf17 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s)), array:0x100(hti:0xffff)
        bool hash_28fca43539ff7944[256];
    };

    // bitSize: 0xd0, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0xc6, array:0xc6(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0xa0, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x92, array:0x92(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2818, members: 6
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
        // offset: 0x2810, bitSize: 0x1
        bool hash_47f87dceb703a2b4;
    };

    // bitSize: 0x48, members: 4
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
        // offset: 0x40, bitSize: 0x1
        bool hash_1d33f21d5494465;
    };

    // bitSize: 0x58, members: 5
    struct selectedcharacter {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 outfitindex;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 outfititems[hash_5ab26f037efe82c];
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:6 warpaintoutfitindex;
        // offset: 0x50, bitSize: 0x1
        bool locked;
    };

    // bitSize: 0x50, members: 3
    struct hash_4acca593b6d4945b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x40(0x8 Byte(s))
        hash_32aeae7311d2cd9b hash_e5c77948998e49;
    };

    // bitSize: 0x178, members: 10
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x18, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0x58, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x98, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0xd8, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x170, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0xeb0, members: 1
    struct hash_7de705fac54227d2 {
        // offset: 0x0, bitSize: 0xeb0(0x1d6 Byte(s)), array:0xa(hti:0xffff)
        weaponvariant variant[10];
    };

    // bitSize: 0xc0, members: 3
    struct vehiclecustomization {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash horn;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        xhash skin;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        xhash battletrack;
    };

    // bitSize: 0x360, members: 15
    struct mploadoutweapon {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_21f27cf6b4dae6b3;
        // offset: 0x50, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xc0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0x100, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x140, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x358, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
    };

    // bitSize: 0x748, members: 11
    struct mploadout {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:5 tacticalgear;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        uint:5 bonuscard[3];
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 secondarygrenade;
        // offset: 0x50, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:6 talent[6];
        // offset: 0x80, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon secondary;
        // offset: 0x3e0, bitSize: 0x360(0x6c Byte(s))
        mploadoutweapon primary;
        // offset: 0x740, bitSize: 0x1
        bool hash_f002b6aa8c771f0;
        // offset: 0x741, bitSize: 0x1
        bool primarygrenadecount;
    };

    // bitSize: 0xd598, members: 11
    struct hash_6ae2bd306baa2303 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1038, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x10b8, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xd550, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xd560, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xd570, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xd580, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xd590, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
    };

    // bitSize: 0xecf0, members: 20
    struct hash_7d7ba6a7d36476a0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1058, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1060, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x18a0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1920, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xddb8, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xeb38, bitSize: 0xa0(0x14 Byte(s))
        execution execution;
        // offset: 0xebd8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xebe8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xebf8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xec08, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xec18, bitSize: 0xd0(0x1a Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xece8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xece9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xecea, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xeceb, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0xecd0, members: 16
    struct hash_7dc6a8bfa8184f33 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x5)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1038, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1040, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x1880, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x1900, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xdd98, bitSize: 0xd80(0x1b0 Byte(s)), array:0x1b(hti:0xffff)
        string(16) customclassname[27];
        // offset: 0xeb18, bitSize: 0xa0(0x14 Byte(s))
        execution execution;
        // offset: 0xebb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xebc8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xebd8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xebe8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
        // offset: 0xebf8, bitSize: 0xd0(0x1a Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xecc8, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
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

    // bitSize: 0x798, members: 29
    struct hash_5117bce61a2e0fe3 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte hash_67b62b296d706394;
        // offset: 0x8, bitSize: 0x20(0x4 Byte(s))
        uint hash_4f4661f71ba9b642;
        // offset: 0x28, bitSize: 0x20(0x4 Byte(s))
        uint hash_5d03a11cca20029d;
        // offset: 0x48, bitSize: 0x20(0x4 Byte(s))
        uint hash_388c001cb4f44253;
        // offset: 0x68, bitSize: 0x20(0x4 Byte(s))
        uint hash_38a7161cb50b2f6d;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 gamelobbyid;
        // offset: 0xc8, bitSize: 0x30(0x6 Byte(s))
        string(6) hash_171ccd1d53f4a29c;
        // offset: 0xf8, bitSize: 0x30(0x6 Byte(s))
        string(6) hash_6a09a522fc58eb9c;
        // offset: 0x128, bitSize: 0x20(0x4 Byte(s))
        uint hash_178ca468b39c2feb;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        byte hash_63abbc412baff248;
        // offset: 0x150, bitSize: 0x200(0x40 Byte(s))
        string(64) localtimestring;
        // offset: 0x350, bitSize: 0x40(0x8 Byte(s))
        uint64 matchhashlow;
        // offset: 0x390, bitSize: 0x100(0x20 Byte(s))
        string(32) consoleid64;
        // offset: 0x490, bitSize: 0x40(0x8 Byte(s))
        uint64 demofileid;
        // offset: 0x4d0, bitSize: 0x8(0x1 Byte(s))
        byte hash_397b8ccc620c9686;
        // offset: 0x4d8, bitSize: 0x8(0x1 Byte(s))
        byte hash_11df063e5227e9e2;
        // offset: 0x4e0, bitSize: 0x40(0x8 Byte(s))
        uint64 matchhashhigh;
        // offset: 0x520, bitSize: 0x20(0x4 Byte(s))
        uint hash_374014802bf0424a;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        short hash_1e270dd38289b20c;
        // offset: 0x550, bitSize: 0x20(0x4 Byte(s))
        int lootxptocryptokeyratio;
        // offset: 0x570, bitSize: 0x100(0x20 Byte(s))
        string(32) hash_1ae4c6d20b5e797f;
        // offset: 0x670, bitSize: 0x100(0x20 Byte(s))
        string(32) hash_5651360773a57427;
        // offset: 0x770, bitSize: 0x20(0x4 Byte(s))
        uint utcoffsetfromserver;
        // offset: 0x790, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x791, bitSize: 0x1
        bool oldschool;
        // offset: 0x792, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x793, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x794, bitSize: 0x1
        bool hash_47df56af71e4df3;
    };

    // bitSize: 0xc4d8, members: 5
    struct hash_7cc11183a39c74dc {
        // offset: 0x0, bitSize: 0xc498(0x1893 Byte(s)), array:0x1b(hti:0xffff)
        mploadout customclass[27];
        // offset: 0xc498, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak1;
        // offset: 0xc4a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak2;
        // offset: 0xc4b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak3;
        // offset: 0xc4c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 killstreak4;
    };

    // bitSize: 0xc0, members: 13
    struct hash_6425595b349c2207 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 ekia;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:16 hits;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        uint:16 kills;
        // offset: 0x30, bitSize: 0x10(0x2 Byte(s))
        uint:16 shots;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        uint:10 weapon_index;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte loadout_index;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        uint:16 time_used_s;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:16 xp_earned;
        // offset: 0x78, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_119b4b446cd1cdca;
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        int end_level;
        // offset: 0xa8, bitSize: 0x10(0x2 Byte(s))
        uint:16 headshots;
        // offset: 0xb8, bitSize: 0x1
        bool slot_used;
    };

    // bitSize: 0x60, members: 2
    struct hash_1bef350b03b6f166 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint count;
        // offset: 0x20, bitSize: 0x40(0x8 Byte(s))
        xhash event;
    };

    // bitSize: 0xb0, members: 7
    struct arenastats {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte eventtype;
        // offset: 0x8, bitSize: 0x20(0x4 Byte(s))
        uint hash_4d82c094cb43bbd7;
        // offset: 0x28, bitSize: 0x20(0x4 Byte(s))
        uint hash_40ab2c89a089b5a1;
        // offset: 0x48, bitSize: 0x20(0x4 Byte(s))
        float performancevalue;
        // offset: 0x68, bitSize: 0x20(0x4 Byte(s))
        uint hash_3c61243adce9f00c;
        // offset: 0x88, bitSize: 0x20(0x4 Byte(s))
        uint hash_650daed6d12d46cc;
        // offset: 0xa8, bitSize: 0x8(0x1 Byte(s))
        byte season;
    };

    // bitSize: 0x23b8, members: 150
    struct player {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint ip;
        // offset: 0x20, bitSize: 0x6d8(0xdb Byte(s))
        hash_6580ccf5f8a0ef6 dml;
        // offset: 0x6f8, bitSize: 0x40(0x8 Byte(s))
        uint64 dwid;
        // offset: 0x738, bitSize: 0x10(0x2 Byte(s))
        short ekia;
        // offset: 0x748, bitSize: 0x8(0x1 Byte(s))
        byte team;
        // offset: 0x750, bitSize: 0x20(0x4 Byte(s))
        float averagespeedduringmatch;
        // offset: 0x770, bitSize: 0x10(0x2 Byte(s))
        short kills;
        // offset: 0x780, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x7a0, bitSize: 0x40(0x8 Byte(s))
        uint64 ucdid;
        // offset: 0x7e0, bitSize: 0x20(0x4 Byte(s))
        uint challenge_xp;
        // offset: 0x800, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0xffff)
        uint:16 hash_28e223b2b55169af[16];
        // offset: 0x900, bitSize: 0x20(0x4 Byte(s))
        int end_losses;
        // offset: 0x920, bitSize: 0x10(0x2 Byte(s))
        short killsdenied;
        // offset: 0x930, bitSize: 0x20(0x4 Byte(s))
        float totalkilldistances;
        // offset: 0x950, bitSize: 0x20(0x4 Byte(s))
        int end_misses;
        // offset: 0x970, bitSize: 0x20(0x4 Byte(s))
        uint match_xp;
        // offset: 0x990, bitSize: 0x98(0x13 Byte(s)), array:0x13(hti:0xffff)
        byte hitlocations[19];
        // offset: 0xa28, bitSize: 0x40(0x8 Byte(s))
        string(8) hash_3966aeef290c6840;
        // offset: 0xa68, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_4a7e06dfdb6ac120;
        // offset: 0xa78, bitSize: 0x20(0x4 Byte(s))
        float numkilldistanceentries;
        // offset: 0xa98, bitSize: 0x10(0x2 Byte(s))
        uint:16 challenges;
        // offset: 0xaa8, bitSize: 0x20(0x4 Byte(s))
        float skill_variance_start;
        // offset: 0xac8, bitSize: 0x20(0x4 Byte(s))
        uint hash_4cfee808be9cf408;
        // offset: 0xae8, bitSize: 0x20(0x4 Byte(s))
        int loottimeplayed;
        // offset: 0xb08, bitSize: 0x10(0x2 Byte(s))
        uint:16 challengescompletedcount;
        // offset: 0xb18, bitSize: 0x20(0x4 Byte(s))
        int end_prestige;
        // offset: 0xb38, bitSize: 0x20(0x4 Byte(s))
        float boostingscore;
        // offset: 0xb58, bitSize: 0x20(0x4 Byte(s))
        uint hash_3e428c87cd41cb83;
        // offset: 0xb78, bitSize: 0x20(0x4 Byte(s))
        float skill_rating_start;
        // offset: 0xb98, bitSize: 0x8(0x1 Byte(s))
        byte hash_709c4368e326c4f6;
        // offset: 0xba0, bitSize: 0x8(0x1 Byte(s))
        byte position;
        // offset: 0xba8, bitSize: 0x20(0x4 Byte(s))
        int start_prestige;
        // offset: 0xbc8, bitSize: 0x20(0x4 Byte(s))
        int controllerparticipationchecksskipped;
        // offset: 0xbe8, bitSize: 0x20(0x4 Byte(s))
        uint utc_connect_time_s;
        // offset: 0xc08, bitSize: 0x20(0x4 Byte(s))
        uint connectivitybits;
        // offset: 0xc28, bitSize: 0xc0(0x18 Byte(s))
        string(24) hash_ce47f1f62861550;
        // offset: 0xce8, bitSize: 0x20(0x4 Byte(s))
        uint lootxpearned;
        // offset: 0xd08, bitSize: 0x20(0x4 Byte(s))
        uint misc_xp;
        // offset: 0xd28, bitSize: 0x20(0x4 Byte(s))
        int controllerparticipationendgameresult;
        // offset: 0xd48, bitSize: 0x20(0x4 Byte(s))
        float percentageoftimemoving;
        // offset: 0xd68, bitSize: 0x20(0x4 Byte(s))
        uint pointstowin;
        // offset: 0xd88, bitSize: 0x8(0x1 Byte(s))
        byte party_id;
        // offset: 0xd90, bitSize: 0x20(0x4 Byte(s))
        int controllerparticipationconsecutivefailuremax;
        // offset: 0xdb0, bitSize: 0x20(0x4 Byte(s))
        int start_games_played;
        // offset: 0xdd0, bitSize: 0x8(0x1 Byte(s))
        byte hash_73577b207cfb7411;
        // offset: 0xdd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 playerquitteamscore;
        // offset: 0xde0, bitSize: 0x20(0x4 Byte(s))
        float totaldistancetravelled;
        // offset: 0xe00, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_35e13b49beac01b0;
        // offset: 0xe40, bitSize: 0x20(0x4 Byte(s))
        uint start_xp;
        // offset: 0xe60, bitSize: 0x20(0x4 Byte(s))
        int objectivetime;
        // offset: 0xe80, bitSize: 0x10(0x2 Byte(s))
        short killsconfirmed;
        // offset: 0xe90, bitSize: 0x8(0x1 Byte(s))
        uint:8 playerquitopposingteamscore;
        // offset: 0xe98, bitSize: 0x10(0x2 Byte(s))
        short highestkillstreak;
        // offset: 0xea8, bitSize: 0x20(0x4 Byte(s))
        int controllerparticipation;
        // offset: 0xec8, bitSize: 0x10(0x2 Byte(s))
        short cryptokeysbeforematch;
        // offset: 0xed8, bitSize: 0x20(0x4 Byte(s))
        float timeplayedalive;
        // offset: 0xef8, bitSize: 0x10(0x2 Byte(s))
        short num_lives;
        // offset: 0xf08, bitSize: 0x20(0x4 Byte(s))
        float timeplayedmoving;
        // offset: 0xf28, bitSize: 0x20(0x4 Byte(s))
        int code_client_num;
        // offset: 0xf48, bitSize: 0x20(0x4 Byte(s))
        int end_hits;
        // offset: 0xf68, bitSize: 0x8(0x1 Byte(s))
        byte end_rank;
        // offset: 0xf70, bitSize: 0x20(0x4 Byte(s))
        int end_wins;
        // offset: 0xf90, bitSize: 0x30(0x6 Byte(s)), array:0x3(hti:0xffff)
        short hash_68e4530b257fb42f[3];
        // offset: 0xfc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 nemesis;
        // offset: 0xfc8, bitSize: 0x20(0x4 Byte(s))
        int end_games_played;
        // offset: 0xfe8, bitSize: 0x40(0x8 Byte(s))
        uint64 lobby_id;
        // offset: 0x1028, bitSize: 0x8(0x1 Byte(s))
        hash_54196e9e9860f0be platform;
        // offset: 0x1030, bitSize: 0x20(0x4 Byte(s))
        int end_kills;
        // offset: 0x1050, bitSize: 0x20(0x4 Byte(s))
        int end_score;
        // offset: 0x1070, bitSize: 0x10(0x2 Byte(s))
        short hash_ec4aea1a8bbd82;
        // offset: 0x1080, bitSize: 0x30(0x6 Byte(s)), array:0x3(hti:0xffff)
        short hash_2044e5ddbbd19a8e[3];
        // offset: 0x10b0, bitSize: 0x20(0x4 Byte(s))
        float hash_14813a3c1b267555;
        // offset: 0x10d0, bitSize: 0x8(0x1 Byte(s))
        byte hash_51db55fc1339e092;
        // offset: 0x10d8, bitSize: 0x8(0x1 Byte(s))
        uint:8 playerquitroundnumber;
        // offset: 0x10e0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6d28b22a32f35904;
        // offset: 0x10f0, bitSize: 0x100(0x20 Byte(s))
        string(32) consoleid64;
        // offset: 0x11f0, bitSize: 0x10(0x2 Byte(s))
        short hash_49ea128912ee851d;
        // offset: 0x1200, bitSize: 0x8(0x1 Byte(s))
        byte suicides;
        // offset: 0x1208, bitSize: 0x20(0x4 Byte(s))
        int end_total_time_played_s;
        // offset: 0x1228, bitSize: 0x8(0x1 Byte(s))
        byte totalkillcamsskipped;
        // offset: 0x1230, bitSize: 0x8(0x1 Byte(s))
        byte numdogscalled;
        // offset: 0x1238, bitSize: 0x20(0x4 Byte(s))
        int controllerparticipationchecks;
        // offset: 0x1258, bitSize: 0x10(0x2 Byte(s))
        short hash_6c4bd48708d6ca7d;
        // offset: 0x1268, bitSize: 0x20(0x4 Byte(s))
        int start_hits;
        // offset: 0x1288, bitSize: 0x8(0x1 Byte(s))
        byte hash_2b2e4e83da414b1e;
        // offset: 0x1290, bitSize: 0x20(0x4 Byte(s))
        int start_wins;
        // offset: 0x12b0, bitSize: 0x40(0x8 Byte(s))
        xhash disconnect_reason;
        // offset: 0x12f0, bitSize: 0x20(0x4 Byte(s))
        int start_kills;
        // offset: 0x1310, bitSize: 0x20(0x4 Byte(s))
        int start_score;
        // offset: 0x1330, bitSize: 0x10(0x2 Byte(s))
        uint:9 lootxpbeforematch;
        // offset: 0x1340, bitSize: 0x20(0x4 Byte(s))
        float skill_rating;
        // offset: 0x1360, bitSize: 0x8(0x1 Byte(s))
        byte jointype;
        // offset: 0x1368, bitSize: 0xa0(0x14 Byte(s))
        client_header client;
        // offset: 0x1408, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0x1418, bitSize: 0x20(0x4 Byte(s))
        uint end_xp;
        // offset: 0x1438, bitSize: 0x8(0x1 Byte(s))
        uint:7 tier_boost;
        // offset: 0x1440, bitSize: 0x8(0x1 Byte(s))
        byte prestige;
        // offset: 0x1448, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_4d677b6f6fa9cd5b;
        // offset: 0x1458, bitSize: 0x20(0x4 Byte(s))
        int participation;
        // offset: 0x1478, bitSize: 0x8(0x1 Byte(s))
        byte weaponpickupscount;
        // offset: 0x1480, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
        byte dailychallenges[3];
        // offset: 0x1498, bitSize: 0x30(0x6 Byte(s)), array:0x3(hti:0xffff)
        short hash_73dcab1bc83f37e2[3];
        // offset: 0x14c8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6db7fa32705e7eaa;
        // offset: 0x14d0, bitSize: 0x20(0x4 Byte(s))
        int hash_5efee4632dc32539;
        // offset: 0x14f0, bitSize: 0x8(0x1 Byte(s))
        byte hash_6860858624175f84;
        // offset: 0x14f8, bitSize: 0x8(0x1 Byte(s))
        byte hash_62898b408adf277d;
        // offset: 0x1500, bitSize: 0x20(0x4 Byte(s))
        uint total_xp;
        // offset: 0x1520, bitSize: 0x10(0x2 Byte(s))
        short upload;
        // offset: 0x1530, bitSize: 0x8(0x1 Byte(s))
        byte numuavcalled;
        // offset: 0x1538, bitSize: 0x8(0x1 Byte(s))
        uint:3 onboardingstate;
        // offset: 0x1540, bitSize: 0x20(0x4 Byte(s))
        float totaldistancewhenmoving;
        // offset: 0x1560, bitSize: 0x20(0x4 Byte(s))
        uint hash_4325caae17068c55;
        // offset: 0x1580, bitSize: 0x8(0x1 Byte(s))
        byte assists;
        // offset: 0x1588, bitSize: 0x20(0x4 Byte(s))
        int playerxpmultiplier;
        // offset: 0x15a8, bitSize: 0x20(0x4 Byte(s))
        float averagekilldistance;
        // offset: 0x15c8, bitSize: 0x20(0x4 Byte(s))
        uint connectedbits;
        // offset: 0x15e8, bitSize: 0x20(0x4 Byte(s))
        uint utc_disconnect_time_s;
        // offset: 0x1608, bitSize: 0x8(0x1 Byte(s))
        byte numdogskills;
        // offset: 0x1610, bitSize: 0x30(0x6 Byte(s)), array:0x3(hti:0xffff)
        short hash_e4d259ef22b4635[3];
        // offset: 0x1640, bitSize: 0x20(0x4 Byte(s))
        int controllerparticipationconsecutivesuccessmax;
        // offset: 0x1660, bitSize: 0x20(0x4 Byte(s))
        int end_unlock_points;
        // offset: 0x1680, bitSize: 0x20(0x4 Byte(s))
        int hash_70fe9df744d614f3;
        // offset: 0x16a0, bitSize: 0x20(0x4 Byte(s))
        int escorttime;
        // offset: 0x16c0, bitSize: 0x40(0x8 Byte(s))
        uint64 connection_id;
        // offset: 0x1700, bitSize: 0x20(0x4 Byte(s))
        int hash_679439e9a51687ef;
        // offset: 0x1720, bitSize: 0x20(0x4 Byte(s))
        uint score_xp;
        // offset: 0x1740, bitSize: 0x20(0x4 Byte(s))
        int start_total_time_played_s;
        // offset: 0x1760, bitSize: 0x20(0x4 Byte(s))
        int hash_136288c07ffd7b0c;
        // offset: 0x1780, bitSize: 0x20(0x4 Byte(s))
        int start_deaths;
        // offset: 0x17a0, bitSize: 0x9c0(0x138 Byte(s)), array:0x9c(hti:0xffff)
        uint:16 hash_4bb657eb94ad1948[156];
        // offset: 0x2160, bitSize: 0x20(0x4 Byte(s))
        float skill_variance;
        // offset: 0x2180, bitSize: 0x20(0x4 Byte(s))
        int controllerparticipationinactivitywarnings;
        // offset: 0x21a0, bitSize: 0x98(0x13 Byte(s)), array:0x13(hti:0xffff)
        byte criticalhitlocations[19];
        // offset: 0x2238, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_5e97583b134955e1;
        // offset: 0x2248, bitSize: 0x20(0x4 Byte(s))
        uint damage_dealt;
        // offset: 0x2268, bitSize: 0x20(0x4 Byte(s))
        int weaponxpmultiplier;
        // offset: 0x2288, bitSize: 0x10(0x2 Byte(s))
        short headshots;
        // offset: 0x2298, bitSize: 0x20(0x4 Byte(s))
        int start_losses;
        // offset: 0x22b8, bitSize: 0x8(0x1 Byte(s))
        byte teamkills;
        // offset: 0x22c0, bitSize: 0x20(0x4 Byte(s))
        int start_misses;
        // offset: 0x22e0, bitSize: 0xb0(0x16 Byte(s))
        arenastats arenastats;
        // offset: 0x2390, bitSize: 0x20(0x4 Byte(s))
        int end_deaths;
        // offset: 0x23b0, bitSize: 0x1
        bool hash_418487ab0985610b;
        // offset: 0x23b1, bitSize: 0x1
        bool hash_5c3a460a4b80bb21;
        // offset: 0x23b2, bitSize: 0x1
        bool hash_38793b233cd7e431;
        // offset: 0x23b3, bitSize: 0x1
        bool hash_12fac6a33938170e;
        // offset: 0x23b4, bitSize: 0x1
        bool present_at_end;
        // offset: 0x23b5, bitSize: 0x1
        bool is_bot;
        // offset: 0x23b6, bitSize: 0x1
        bool playingonwifi;
        // offset: 0x23b7, bitSize: 0x1
        bool controllerparticipationsuccessafterinactivitywarning;
    };

    // bitSize: 0x930, members: 80
    struct life {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte player_index;
        // offset: 0x8, bitSize: 0x20(0x4 Byte(s))
        uint hash_6e5b19c572681334;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        byte killer_index;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:8 victimdecisecondssincelastboostjump;
        // offset: 0x38, bitSize: 0x30(0x6 Byte(s)), array:0x3(hti:0xffff)
        int:16 attacker_angles[3];
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        byte hash_2380fc76594e930d;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_5fd40d280de4f20a;
        // offset: 0x78, bitSize: 0x8(0x1 Byte(s))
        uint:8 killerdecisecondssincelastkneeslide;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        byte loadout_index;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_66088b270a9d0d5f;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        byte attacker_index;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        byte hash_1b81d2fe509f0457;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint hash_7567115bc2aa4bf;
        // offset: 0xc0, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int attacker_pos[3];
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        byte hash_67e7ffe4f1c4eb88;
        // offset: 0x128, bitSize: 0x8(0x1 Byte(s))
        byte hash_180d7941d4c7a89b;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:16 victimtimespentswimmingdeciseconds;
        // offset: 0x140, bitSize: 0x20(0x4 Byte(s))
        uint xp_earned;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        uint:16 victimtimespentwallrunningdeciseconds;
        // offset: 0x170, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int victim_pos[3];
        // offset: 0x1d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 attackerdelta;
        // offset: 0x1e0, bitSize: 0x20(0x4 Byte(s))
        uint score_earned;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:2 spawn_type;
        // offset: 0x208, bitSize: 0x8(0x1 Byte(s))
        byte hash_35bd3b1cbe489e62;
        // offset: 0x210, bitSize: 0x8(0x1 Byte(s))
        uint:8 victimdecisecondssincelastwallrun;
        // offset: 0x218, bitSize: 0x20(0x4 Byte(s))
        uint hash_7c5a630513a7bfd5;
        // offset: 0x238, bitSize: 0x20(0x4 Byte(s))
        float hash_202011f4c98c00b1;
        // offset: 0x258, bitSize: 0x8(0x1 Byte(s))
        byte hash_656f3981134db095;
        // offset: 0x260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6677b86a4c2c0d54;
        // offset: 0x270, bitSize: 0x40(0x8 Byte(s))
        xhash character_decal_lootid;
        // offset: 0x2b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3976a49a3ab81759;
        // offset: 0x2c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 killerdecisecondssincelastboostjump;
        // offset: 0x2c8, bitSize: 0x240(0x48 Byte(s)), array:0x9(hti:0xffff)
        xhash hash_20d6751cb2f9ca09[9];
        // offset: 0x508, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4f557c87c0538129;
        // offset: 0x548, bitSize: 0x40(0x8 Byte(s))
        xhash character_outfit_lootid;
        // offset: 0x588, bitSize: 0x8(0x1 Byte(s))
        byte hash_56e7eb0d1597ec79;
        // offset: 0x590, bitSize: 0x40(0x8 Byte(s))
        xhash hash_63862160f8335af2;
        // offset: 0x5d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9071b1ce927d040;
        // offset: 0x5e0, bitSize: 0x8(0x1 Byte(s))
        uint:8 victimdecisecondssincelastswim;
        // offset: 0x5e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 victimdelta;
        // offset: 0x5f8, bitSize: 0x10(0x2 Byte(s))
        short means_of_death;
        // offset: 0x608, bitSize: 0x30(0x6 Byte(s)), array:0x3(hti:0xffff)
        int:16 victim_angles[3];
        // offset: 0x638, bitSize: 0x8(0x1 Byte(s))
        byte multikill;
        // offset: 0x640, bitSize: 0x10(0x2 Byte(s))
        short hash_3ca62fd7f5d50ede;
        // offset: 0x650, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int hash_9677cf4f08d8697[3];
        // offset: 0x6b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 killerdecisecondssincelastwallrun;
        // offset: 0x6b8, bitSize: 0x10(0x2 Byte(s))
        short hash_1783a3513be4bd7c;
        // offset: 0x6c8, bitSize: 0x40(0x8 Byte(s))
        xhash specialist;
        // offset: 0x708, bitSize: 0x30(0x6 Byte(s)), array:0x3(hti:0xffff)
        int:16 hash_648ba56f725b9077[3];
        // offset: 0x738, bitSize: 0x20(0x4 Byte(s))
        uint hash_3faf0f7b322f3cfc;
        // offset: 0x758, bitSize: 0x8(0x1 Byte(s))
        uint:8 vicitmdecisecondssincelastkneeslide;
        // offset: 0x760, bitSize: 0x20(0x4 Byte(s))
        float dotofdeath;
        // offset: 0x780, bitSize: 0x40(0x8 Byte(s))
        string(8) character_gender;
        // offset: 0x7c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 killerdecisecondssincelastswim;
        // offset: 0x7c8, bitSize: 0x8(0x1 Byte(s))
        uint:8 victimnumberofkneeslides;
        // offset: 0x7d0, bitSize: 0x8(0x1 Byte(s))
        byte assists;
        // offset: 0x7d8, bitSize: 0x20(0x4 Byte(s))
        uint hash_cc61feedcebaa4d;
        // offset: 0x7f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 character_outfit;
        // offset: 0x800, bitSize: 0x40(0x8 Byte(s))
        xhash hash_4b4bd85ab964d386;
        // offset: 0x840, bitSize: 0x10(0x2 Byte(s))
        short hash_267c492e9ba804df;
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
        bool hash_4b3e577f8ed51943;
        // offset: 0x925, bitSize: 0x1
        bool hash_35ccbe74e6d95ab5;
        // offset: 0x926, bitSize: 0x1
        bool hash_37c081085bfecffa;
        // offset: 0x927, bitSize: 0x1
        bool hash_61cc3ce6a5e5b529;
        // offset: 0x928, bitSize: 0x1
        bool hash_37fd9537b3e20888;
        // offset: 0x929, bitSize: 0x1
        bool hash_2f090963f5d45718;
        // offset: 0x92a, bitSize: 0x1
        bool hash_47ca5f583ae26a22;
        // offset: 0x92b, bitSize: 0x1
        bool hash_674598aa9fe3d19a;
        // offset: 0x92c, bitSize: 0x1
        bool hash_7736beab2de1a2e8;
        // offset: 0x92d, bitSize: 0x1
        bool hash_6c3353c097547c79;
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

    // idx 0x0 members: 0x8
    enum hash_5ab26f037efe82c {
        arms, // 0x0
        head, // 0x1
        palette, // 0x2
        legs, // 0x3
        decals, // 0x4
        war_paint, // 0x5
        torso, // 0x6
        headgear // 0x7
    };

    // idx 0x1 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x2 members: 0xc6
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s6_analog_camo, // 0x0
        wristaccessory_t9_s1_bracelet_braided_02, // 0x1
        wristaccessory_t9_s6_digital_egyptian_fire, // 0x2
        wristaccessory_t9_s5_analog_blood_fancy, // 0x3
        wristaccessory_t9_s1_analog_fancy_gold, // 0x4
        wristaccessory_t9_s3_analog_mctag, // 0x5
        wristaccessory_t9_s4_digital_evil, // 0x6
        wristaccessory_t9_s4_analog_spaceship, // 0x7
        wristaccessory_t9_s6_analog_agony, // 0x8
        wristaccessory_t9_s5_analog_dis_assassin, // 0x9
        wristaccessory_t9_esports_legion_sy, // 0xa
        wristaccessory_t9_esports_legion_pc, // 0xb
        wristaccessory_t9_esports_legion_ms, // 0xc
        wristaccessory_t9_s6_analog_bite_me, // 0xd
        wristaccessory_t9_s3_analog_winter_ash, // 0xe
        wristaccessory_t9_esports_rokkr_sy, // 0xf
        wristaccessory_t9_esports_rokkr_pc, // 0x10
        wristaccessory_t9_esports_rokkr_ms, // 0x11
        wristaccessory_t9_s6_analog_scrapyard, // 0x12
        wristaccessory_t9_s6_digital_atomic_ash, // 0x13
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x14
        wristaccessory_t9_s6_digital_tagger_sy, // 0x15
        wristaccessory_t9_s6_digital_tagger_pc, // 0x16
        wristaccessory_t9_s6_digital_tagger_ms, // 0x17
        wristaccessory_t9_s2_analog_necro_king, // 0x18
        wristaccessory_t9_s2_digital_sforce, // 0x19
        wristaccessory_t9_s1_digital_gambit_01, // 0x1a
        wristaccessory_t9_s5_digital_arabian, // 0x1b
        wristaccessory_t9_s6_analog_big_joke4_ms, // 0x1c
        wristaccessory_t9_s6_analog_big_joke4_sy, // 0x1d
        wristaccessory_t9_s6_analog_big_joke4_pc, // 0x1e
        wristaccessory_t9_s3_digital_radiation, // 0x1f
        wristaccessory_t9_s1_digital_inteculo_01, // 0x20
        wristaccessory_t9_s3_digital_ultrafunk, // 0x21
        wristaccessory_t9_s1_analog_brawler_01, // 0x22
        wristaccessory_t9_s4_bracelet_weathered, // 0x23
        wristaccessory_t9_s6_digital_ww, // 0x24
        wristaccessory_t9_s4_analog_future_soldier, // 0x25
        wristaccessory_t9_s6_digital_zm_critical_kill, // 0x26
        wristaccessory_t9_s6_analog_edutain, // 0x27
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x28
        wristaccessory_t9_s5_analog_onyx_sy, // 0x29
        wristaccessory_t9_s4_analog_sleek_assassin_endgame, // 0x2a
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x2b
        wristaccessory_t9_s6_digital_undead_warrior, // 0x2c
        wristaccessory_t9_s3_bracelet_01, // 0x2d
        hash_1ccdff0ebb3ad612, // 0x2e
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x2f
        wristaccessory_t9_s1_analog_kremlin, // 0x30
        wristaccessory_t9_s5_digital_checkmate, // 0x31
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x32
        wristaccessory_t9_s6_digital_endgame, // 0x33
        wristaccessory_t9_s4_analog_horror, // 0x34
        wristaccessory_t9_s2_analog_mortal, // 0x35
        wristaccessory_t9_esports_empire_ms, // 0x36
        wristaccessory_t9_esports_empire_pc, // 0x37
        wristaccessory_t9_esports_empire_sy, // 0x38
        hash_25142303752f4324, // 0x39
        hash_25142503752f468a, // 0x3a
        wristaccessory_t9_s1_analog_retroren_02, // 0x3b
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x3c
        wristaccessory_default, // 0x3d
        wristaccessory_t9_s6_analog_cyber_venom, // 0x3e
        wristaccessory_t9_esports_royalravens_ms, // 0x3f
        wristaccessory_t9_s6_analog_bog_ops, // 0x40
        wristaccessory_t9_esports_royalravens_pc, // 0x41
        wristaccessory_t9_esports_royalravens_sy, // 0x42
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x43
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x44
        wristaccessory_t9_s4_analog_rbear, // 0x45
        wristaccessory_t9_s4_digital_roadwarrior, // 0x46
        wristaccessory_t9_s5_analog_riptide, // 0x47
        wristaccessory_t9_s2_analog_420, // 0x48
        wristaccessory_t9_s2_digital_mini_map, // 0x49
        wristaccessory_t9_s6_analog_gilded, // 0x4a
        wristaccessory_t9_s1_digital_kazuya_01, // 0x4b
        wristaccessory_t9_s2_digital_mayan, // 0x4c
        wristaccessory_t9_s1_digital_diver, // 0x4d
        wristaccessory_t9_s4_holographic_rank, // 0x4e
        wristaccessory_t9_s4_analog_roadwar, // 0x4f
        wristaccessory_t9_esports_thieves_ms, // 0x50
        wristaccessory_t9_esports_thieves_pc, // 0x51
        wristaccessory_t9_esports_thieves_sy, // 0x52
        wristaccessory_t9_s6_digital_undead_magic, // 0x53
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x54
        wristaccessory_t9_s5_analog_holographic, // 0x55
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x56
        wristaccessory_t9_s6_digital_tagger_solo, // 0x57
        wristaccessory_t9_s4_digital_blade, // 0x58
        wristaccessory_t9_s2_analog_naval_warfare, // 0x59
        wristaccessory_t9_esports_subliners_pc, // 0x5a
        wristaccessory_t9_esports_subliners_sy, // 0x5b
        wristaccessory_t9_esports_subliners_ms, // 0x5c
        wristaccessory_t9_s3_digital_magic8, // 0x5d
        wristaccessory_t9_s4_analog_assassin, // 0x5e
        wristaccessory_t9_s2_analog_dark_aether, // 0x5f
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x60
        wristaccessory_t9_s6_analog_scream, // 0x61
        wristaccessory_t9_s2_analog_mayan, // 0x62
        wristaccessory_t9_s1_analog_bope_01, // 0x63
        wristaccessory_t9_esports_ultra_ms, // 0x64
        wristaccessory_t9_esports_ultra_sy, // 0x65
        wristaccessory_t9_esports_ultra_pc, // 0x66
        wristaccessory_t9_s6_analog_hypnosis, // 0x67
        wristaccessory_t9_s2_analog_paratroop, // 0x68
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x69
        wristaccessory_t9_s1_analog_aviator_02, // 0x6a
        wristaccessory_t9_s1_analog_horex_01, // 0x6b
        wristaccessory_t9_s1_analog_fancy, // 0x6c
        wristaccessory_t9_s1_analog_aviator_x2, // 0x6d
        wristaccessory_t9_s5_analog_classic, // 0x6e
        wristaccessory_t9_esports_optic_ms, // 0x6f
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x70
        wristaccessory_t9_esports_optic_sy, // 0x71
        wristaccessory_t9_esports_optic_pc, // 0x72
        wristaccessory_t9_s5_analog_beer_o_clock, // 0x73
        wristaccessory_t9_s5_analog_hacking_code, // 0x74
        wristaccessory_t9_s2_analog_rebel, // 0x75
        wristaccessory_t9_s5_digital_ghosted, // 0x76
        wristaccessory_t9_s5_analog_egy_burial, // 0x77
        wristaccessory_t9_s2_analog_white_tiger, // 0x78
        wristaccessory_t9_s5_digital_critical_kill, // 0x79
        wristaccessory_t9_s2_analog_caiman, // 0x7a
        hash_4fee76d1114701af, // 0x7b
        wristaccessory_t9_s3_analog_chrono_sea, // 0x7c
        wristaccessory_t9_s4_holographic_rank_cyber, // 0x7d
        wristaccessory_t9_s2_analog_broken_fancy, // 0x7e
        hash_511c7fa835d89891, // 0x7f
        wristaccessory_t9_s5_digital_judge_d, // 0x80
        wristaccessory_t9_s4_digital_royal_decree, // 0x81
        wristaccessory_t9_s6_analog_street_mech_sy, // 0x82
        wristaccessory_t9_s1_bracelet_skull_01, // 0x83
        wristaccessory_t9_s5_analog_rainbow_jewel, // 0x84
        wristaccessory_t9_s3_digital_big_joke, // 0x85
        wristaccessory_t9_s1_bracelet_01, // 0x86
        wristaccessory_t9_s5_analog_demon, // 0x87
        wristaccessory_t9_s6_digital_compass_stitch, // 0x88
        hash_575c967cd59c9145, // 0x89
        wristaccessory_t9_s6_digital_rank_carnival, // 0x8a
        wristaccessory_t9_s5_analog_no_numbers, // 0x8b
        wristaccessory_t9_s6_analog_blue_chroma, // 0x8c
        wristaccessory_t9_s5_digital_mummy_cat, // 0x8d
        wristaccessory_t9_esports_surge_sy, // 0x8e
        wristaccessory_t9_esports_surge_pc, // 0x8f
        wristaccessory_t9_s4_digital_big_joke, // 0x90
        wristaccessory_t9_esports_surge_ms, // 0x91
        wristaccessory_t9_s4_analog_jefe, // 0x92
        wristaccessory_t9_esports_faze_ms, // 0x93
        wristaccessory_t9_esports_faze_pc, // 0x94
        wristaccessory_t9_esports_faze_sy, // 0x95
        wristaccessory_t9_s1_analog_origin_01, // 0x96
        wristaccessory_t9_esports_mutineers_pc, // 0x97
        wristaccessory_t9_esports_mutineers_sy, // 0x98
        wristaccessory_t9_esports_mutineers_ms, // 0x99
        wristaccessory_t9_s5_digital_wonderland, // 0x9a
        wristaccessory_t9_s1_analog_private_eye_03, // 0x9b
        wristaccessory_t9_s1_analog_private_eye_02, // 0x9c
        wristaccessory_t9_s1_analog_private_eye_01, // 0x9d
        wristaccessory_t9_esports_guerillas_sy, // 0x9e
        wristaccessory_t9_esports_guerillas_pc, // 0x9f
        wristaccessory_t9_esports_guerillas_ms, // 0xa0
        wristaccessory_t9_s6_digital_nightmare_fuel, // 0xa1
        wristaccessory_t9_s4_analog_wasteland, // 0xa2
        wristaccessory_t9_s3_digital_diver_wargames, // 0xa3
        wristaccessory_t9_s5_digital_rank_countdwn, // 0xa4
        wristaccessory_t9_s6_analog_halloween, // 0xa5
        wristaccessory_t9_s2_digital_river_slasher, // 0xa6
        wristaccessory_t9_s2_bracelet_lure, // 0xa7
        wristaccessory_t9_s2_analog_cold_hearted, // 0xa8
        wristaccessory_t9_s6_digital_reaper_bunny, // 0xa9
        wristaccessory_t9_s6_analog_donnie, // 0xaa
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0xab
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0xac
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0xad
        wristaccessory_t9_s1_digital_rank_01, // 0xae
        wristaccessory_t9_s2_digital_jade, // 0xaf
        hash_708a99620b81ea23, // 0xb0
        hash_708a9a620b81ebd6, // 0xb1
        wristaccessory_t9_s3_analog_zombie_naga, // 0xb2
        wristaccessory_t9_s6_digital_sultan, // 0xb3
        wristaccessory_t9_s6_digital_gov1, // 0xb4
        wristaccessory_t9_s6_digital_gov2, // 0xb5
        wristaccessory_t9_s5_digital_tagger, // 0xb6
        wristaccessory_t9_s2_analog_black_silver, // 0xb7
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0xb8
        wristaccessory_t9_s4_digital_holographic, // 0xb9
        wristaccessory_t9_s4_analog_fire_storm, // 0xba
        wristaccessory_t9_s3_digital_death_touch, // 0xbb
        wristaccessory_t9_s6_analog_big_joke4_solo, // 0xbc
        wristaccessory_t9_s4_bracelet_leather_studd, // 0xbd
        wristaccessory_t9_s2_analog_black_gold, // 0xbe
        wristaccessory_t9_s1_digital_compass_01, // 0xbf
        wristaccessory_t9_s1_digital_first_spy_01, // 0xc0
        wristaccessory_t9_s1_digital_gaudy_01, // 0xc1
        wristaccessory_t9_s5_analog_retrotac, // 0xc2
        wristaccessory_t9_s6_analog_krieger, // 0xc3
        wristaccessory_t9_s5_digital_dark_weaver, // 0xc4
        wristaccessory_t9_s6_digital_frost // 0xc5
    };

    // idx 0x3 members: 0x92
    enum executions {
        execution_198, // 0x0
        execution_199, // 0x1
        execution_194, // 0x2
        execution_196, // 0x3
        execution_182, // 0x4
        execution_181, // 0x5
        execution_158, // 0x6
        execution_159, // 0x7
        execution_150, // 0x8
        execution_152, // 0x9
        execution_154, // 0xa
        execution_157, // 0xb
        execution_149, // 0xc
        execution_148, // 0xd
        execution_143, // 0xe
        execution_142, // 0xf
        execution_141, // 0x10
        execution_140, // 0x11
        execution_147, // 0x12
        execution_146, // 0x13
        execution_145, // 0x14
        execution_144, // 0x15
        execution_176, // 0x16
        execution_174, // 0x17
        execution_172, // 0x18
        execution_173, // 0x19
        execution_171, // 0x1a
        execution_161, // 0x1b
        execution_160, // 0x1c
        execution_163, // 0x1d
        execution_162, // 0x1e
        execution_166, // 0x1f
        execution_117, // 0x20
        execution_110, // 0x21
        execution_111, // 0x22
        execution_112, // 0x23
        execution_113, // 0x24
        execution_118, // 0x25
        execution_119, // 0x26
        execution_101, // 0x27
        execution_100, // 0x28
        execution_108, // 0x29
        execution_138, // 0x2a
        execution_139, // 0x2b
        execution_132, // 0x2c
        execution_133, // 0x2d
        execution_130, // 0x2e
        execution_131, // 0x2f
        execution_136, // 0x30
        execution_137, // 0x31
        execution_134, // 0x32
        execution_135, // 0x33
        execution_129, // 0x34
        execution_128, // 0x35
        execution_125, // 0x36
        execution_124, // 0x37
        execution_127, // 0x38
        execution_126, // 0x39
        execution_121, // 0x3a
        execution_120, // 0x3b
        execution_123, // 0x3c
        execution_040bc, // 0x3d
        execution_039bc, // 0x3e
        execution_208, // 0x3f
        execution_209, // 0x40
        execution_204, // 0x41
        execution_205, // 0x42
        execution_206, // 0x43
        execution_207, // 0x44
        execution_201, // 0x45
        execution_202, // 0x46
        execution_203, // 0x47
        execution_211, // 0x48
        execution_210, // 0x49
        execution_086, // 0x4a
        execution_087, // 0x4b
        execution_084, // 0x4c
        execution_082, // 0x4d
        execution_083, // 0x4e
        execution_080, // 0x4f
        execution_081, // 0x50
        execution_088, // 0x51
        execution_089, // 0x52
        execution_099, // 0x53
        execution_098, // 0x54
        execution_097, // 0x55
        execution_096, // 0x56
        execution_028, // 0x57
        execution_029, // 0x58
        execution_020, // 0x59
        execution_021, // 0x5a
        execution_022, // 0x5b
        execution_023, // 0x5c
        execution_024, // 0x5d
        execution_025, // 0x5e
        execution_026, // 0x5f
        execution_027, // 0x60
        execution_038, // 0x61
        execution_033, // 0x62
        execution_032, // 0x63
        execution_031, // 0x64
        execution_030, // 0x65
        execution_037, // 0x66
        execution_036, // 0x67
        execution_034, // 0x68
        execution_008, // 0x69
        execution_009, // 0x6a
        execution_007, // 0x6b
        execution_004, // 0x6c
        execution_005, // 0x6d
        execution_002, // 0x6e
        execution_003, // 0x6f
        execution_001, // 0x70
        execution_010, // 0x71
        execution_013, // 0x72
        execution_015, // 0x73
        execution_014, // 0x74
        execution_017, // 0x75
        execution_016, // 0x76
        execution_018, // 0x77
        execution_064, // 0x78
        execution_065, // 0x79
        execution_066, // 0x7a
        execution_067, // 0x7b
        execution_061, // 0x7c
        execution_062, // 0x7d
        execution_063, // 0x7e
        execution_068, // 0x7f
        execution_069, // 0x80
        execution_075, // 0x81
        execution_074, // 0x82
        execution_070, // 0x83
        execution_078, // 0x84
        execution_048, // 0x85
        execution_049, // 0x86
        execution_042, // 0x87
        execution_043, // 0x88
        execution_040, // 0x89
        execution_046, // 0x8a
        execution_045, // 0x8b
        execution_059, // 0x8c
        execution_058, // 0x8d
        execution_051, // 0x8e
        execution_052, // 0x8f
        execution_038r, // 0x90
        hash_7f66c55f0f1308c2 // 0x91
    };

    // idx 0x4 members: 0xb
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3b8b893f96bdf417, // 0x5
        hash_3be2180eba09e101, // 0x6
        hash_59ceeeb3e696e728, // 0x7
        hash_6147e2b835fc3454, // 0x8
        hash_677f13ab4aa620fe, // 0x9
        hash_6b8377c83507a7f9 // 0xa
    };

    // idx 0x5 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // idx 0x6 members: 0x19
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

    // idx 0x7 members: 0x6
    enum hash_73f7173befdca784 {
        hash_3431756dd03a21c0, // 0x0
        none, // 0x1
        hash_52d666fca8db781b, // 0x2
        linux, // 0x3
        windows, // 0x4
        hash_70683717084c3558 // 0x5
    };

    // idx 0x8 members: 0xa
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

    // idx 0x9 members: 0xf
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

    // idx 0xa members: 0xe
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

    // idx 0xb members: 0x18
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

    // idx 0xc members: 0x11
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

    // idx 0xd members: 0x133
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

    // root: bitSize: 0x18c078, members: 62

    // offset: 0x0, bitSize: 0x100(0x20 Byte(s))
    string(32) map;
    // offset: 0x100, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x120, bitSize: 0x20(0x4 Byte(s))
    uint hash_375e93395e4f1f12;
    // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
    byte player_count;
    // offset: 0x148, bitSize: 0x20(0x4 Byte(s))
    uint hash_7888f9b0e8c46d42;
    // offset: 0x168, bitSize: 0x1195e0(0x232bc Byte(s)), array:0x1ea(hti:0xffff)
    life lives[490];
    // offset: 0x119748, bitSize: 0x1388(0x271 Byte(s)), array:0x7d(hti:0xffff)
    hash_5efdb8ef8b6af1cb nondamageassists[125];
    // offset: 0x11aad0, bitSize: 0x40(0x8 Byte(s))
    uint64 match_id;
    // offset: 0x11ab10, bitSize: 0x20(0x4 Byte(s))
    int server_frame_msec;
    // offset: 0x11ab30, bitSize: 0x20(0x4 Byte(s))
    uint hash_209155237819d179;
    // offset: 0x11ab50, bitSize: 0x8(0x1 Byte(s))
    byte hash_5be2776e72fe7105;
    // offset: 0x11ab58, bitSize: 0x380(0x70 Byte(s))
    telemetry_header telemetry;
    // offset: 0x11aed8, bitSize: 0x40(0x8 Byte(s))
    xhash playlist_name;
    // offset: 0x11af18, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_4e397fa6657da523;
    // offset: 0x11b018, bitSize: 0x20(0x4 Byte(s))
    int hash_2678ed840a344d55;
    // offset: 0x11b038, bitSize: 0x8(0x1 Byte(s))
    byte player_count_end;
    // offset: 0x11b040, bitSize: 0x40(0x8 Byte(s))
    xhash game_type;
    // offset: 0x11b080, bitSize: 0x8(0x1 Byte(s))
    byte hash_481ee9109f272237;
    // offset: 0x11b088, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_4270d43d00e554ea;
    // offset: 0x11b188, bitSize: 0x40(0x8 Byte(s))
    uint64 host_id;
    // offset: 0x11b1c8, bitSize: 0x20(0x4 Byte(s))
    uint hash_7baa59adf52de2d1;
    // offset: 0x11b1e8, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
    int compass_map_upper_left[3];
    // offset: 0x11b248, bitSize: 0xed80(0x1db0 Byte(s)), array:0x64(hti:0xffff)
    hash_c464eb471b1c18a challengescompleted[100];
    // offset: 0x129fc8, bitSize: 0x55f0(0xabe Byte(s)), array:0x7d(hti:0xffff)
    killstreakevent killstreaks[125];
    // offset: 0x12f5b8, bitSize: 0x8(0x1 Byte(s))
    byte hash_7f29e138a8813e47;
    // offset: 0x12f5c0, bitSize: 0x10(0x2 Byte(s))
    short numnondamageassists;
    // offset: 0x12f5d0, bitSize: 0x8(0x1 Byte(s))
    byte bot_count;
    // offset: 0x12f5d8, bitSize: 0x10(0x2 Byte(s))
    uint:16 hash_7701efac52d36b8d;
    // offset: 0x12f5e8, bitSize: 0x1f40(0x3e8 Byte(s)), array:0x7d(hti:0xffff)
    hash_70fd30917359da6c hash_74f514e2df10ccfe[125];
    // offset: 0x131528, bitSize: 0x8(0x1 Byte(s))
    byte hash_53437329fef70258;
    // offset: 0x131530, bitSize: 0x20(0x4 Byte(s))
    uint hash_3653705f019c3698;
    // offset: 0x131550, bitSize: 0x20(0x4 Byte(s))
    int playlist_id;
    // offset: 0x131570, bitSize: 0x20(0x4 Byte(s))
    uint utc_end_time_s;
    // offset: 0x131590, bitSize: 0x8(0x1 Byte(s))
    byte hash_63f745385e07b822;
    // offset: 0x131598, bitSize: 0x20(0x4 Byte(s))
    uint utc_start_time_s;
    // offset: 0x1315b8, bitSize: 0x8(0x1 Byte(s))
    byte player_count_start;
    // offset: 0x1315c0, bitSize: 0x798(0xf3 Byte(s))
    hash_5117bce61a2e0fe3 header;
    // offset: 0x131d58, bitSize: 0x40(0x8 Byte(s))
    xhash test_name;
    // offset: 0x131d98, bitSize: 0x10(0x2 Byte(s))
    short team_count;
    // offset: 0x131da8, bitSize: 0x20(0x4 Byte(s))
    uint breadcrumbs_total;
    // offset: 0x131dc8, bitSize: 0x20(0x4 Byte(s))
    int playlist_version;
    // offset: 0x131de8, bitSize: 0xcc0(0x198 Byte(s)), array:0x18(hti:0xffff)
    hash_2c63a98fdae81bb5 rounds[24];
    // offset: 0x132aa8, bitSize: 0x10(0x2 Byte(s))
    uint:10 life_count;
    // offset: 0x132ab8, bitSize: 0x8(0x1 Byte(s))
    byte player_count_left;
    // offset: 0x132ac0, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
    int compass_map_lower_right[3];
    // offset: 0x132b20, bitSize: 0x10(0x2 Byte(s))
    short victor;
    // offset: 0x132b30, bitSize: 0x10(0x2 Byte(s))
    uint:16 numchallengescompleted;
    // offset: 0x132b40, bitSize: 0x8(0x1 Byte(s))
    byte heatmapdatagenerated;
    // offset: 0x132b48, bitSize: 0x594c0(0xb298 Byte(s)), array:0x28(hti:0xffff)
    player players[40];
    // offset: 0x18c008, bitSize: 0x20(0x4 Byte(s))
    uint duration_ms;
    // offset: 0x18c028, bitSize: 0x20(0x4 Byte(s))
    int ffotd_version;
    // offset: 0x18c048, bitSize: 0x20(0x4 Byte(s))
    int hash_7b16fbbf75fe39b3;
    // offset: 0x18c068, bitSize: 0x1
    bool hash_30cd270fd17b61b9;
    // offset: 0x18c069, bitSize: 0x1
    bool hash_706dd6b881aa67f4;
    // offset: 0x18c06a, bitSize: 0x1
    bool hash_74d0769494af24a9;
    // offset: 0x18c06b, bitSize: 0x1
    bool is_draw;
    // offset: 0x18c06c, bitSize: 0x1
    bool hash_405bc5b0e581dd5e;
    // offset: 0x18c06d, bitSize: 0x1
    bool loadoutinitialized;
    // offset: 0x18c06e, bitSize: 0x1
    bool is_private_match;
    // offset: 0x18c06f, bitSize: 0x1
    bool is_dedicated;
    // offset: 0x18c070, bitSize: 0x1
    bool hash_9bb341c4fe5412b;
};

