// file .... zm_match_record.ddl

#redirect hash_1c4ba12d8fb7fee5;

version hash_f7f91d63bcae19f5 {
    // enums ..... 13 (0xd)
    // structs ... 50 (0x32)
    // header bit size .. 2042592 (0x1f2ae0)
    // header byte size . 255324 (0x3e55c)

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
    struct region_info {
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

    // bitSize: 0x10, members: 1
    struct hash_705fa6d3f50ff148 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s)), array:0x10(hti:0xffff)
        bool hash_3d834aee4bd18d13[16];
    };

    // bitSize: 0xc0, members: 2
    struct hash_768aeb6b928320d {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0x5)
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
        // offset: 0x8, bitSize: 0xc6, array:0xc6(hti:0x7)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0xa0, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x92, array:0x92(hti:0x8)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x5)
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
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x5)
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
    struct hash_51ee933f6ee8ec54 {
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

    // bitSize: 0x100, members: 3
    struct hash_5fe8e8cb2b27ba05 {
        // offset: 0x0, bitSize: 0x88(0x11 Byte(s))
        string(17) packname;
        // offset: 0x88, bitSize: 0x50(0xa Byte(s)), array:0x5(hti:0xffff)
        uint:10 bubblegumbuff[5];
        // offset: 0xd8, bitSize: 0x28(0x5 Byte(s)), array:0x5(hti:0xffff)
        uint:8 hash_10b7b244c876d78a[5];
    };

    // bitSize: 0x830, members: 9
    struct zmloadout {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 primarygrenade;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_4e153e9373f1683c;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:6 talisman1;
        // offset: 0x20, bitSize: 0x30(0x6 Byte(s)), array:0x6(hti:0xffff)
        uint:5 specialty[6];
        // offset: 0x50, bitSize: 0x100(0x20 Byte(s))
        hash_5fe8e8cb2b27ba05 elixirs;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        uint:10 herogadget;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        uint:10 specialgrenade;
        // offset: 0x170, bitSize: 0x360(0x6c Byte(s))
        hash_51ee933f6ee8ec54 secondary;
        // offset: 0x4d0, bitSize: 0x360(0x6c Byte(s))
        hash_51ee933f6ee8ec54 primary;
    };

    // bitSize: 0xc1e0, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0xc)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0x108(0x21 Byte(s)), array:0x21(hti:0xb)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2278, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23f0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x9)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c38, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2cb8, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7e8, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc068, bitSize: 0xa0(0x14 Byte(s))
        execution execution;
        // offset: 0xc108, bitSize: 0xd0(0x1a Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc1d8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc1d9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc1da, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc1db, bitSize: 0x1
        bool hash_490318f2d43cdc68;
    };

    // bitSize: 0x93b0, members: 2
    struct cacloadoutlistcustomgames_s {
        // offset: 0x0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0x8b30, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
    };

    // bitSize: 0x266f0, members: 1059
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmpowerdoorstate;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x28, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x78, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        uint:7 zmmysteryboxlimit;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmmysteryboxstate;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0xa8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0xb0, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xb8, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xe0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xf0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0x100, bitSize: 0x20(0x4 Byte(s))
        uint zmpapenabled;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0x128, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_4a10303376ed2d10;
        // offset: 0x148, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x168, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmrandomwallbuys;
        // offset: 0x170, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x180, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x190, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x1a0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_407d7afcff755230;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_312848239629f5b9;
        // offset: 0x1c8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x1d8, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x1e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x200, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x210, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x220, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmdoorstate;
        // offset: 0x228, bitSize: 0x10(0x2 Byte(s))
        uint:16 zmkillcap;
        // offset: 0x238, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x240, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x248, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x258, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x260, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x268, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x278, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x280, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x288, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x290, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_35ac79d2ca5673c8;
        // offset: 0x298, bitSize: 0x8(0x1 Byte(s))
        uint:7 zmpointlossonteammatedeath;
        // offset: 0x2a0, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x2a8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x2c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x2c8, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x2d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x2e0, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x300, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x310, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x328, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x340, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x358, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x360, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x368, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x370, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_3afb9ec2416f3b78;
        // offset: 0x378, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x390, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x398, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x3a0, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_23d7891cf2b9471c;
        // offset: 0x3a8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x3b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x3b8, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x3c0, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x3c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x3d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 randomobjectivelocations;
        // offset: 0x3d8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x3f0, bitSize: 0x8(0x1 Byte(s))
        uint:8 zmexfilround;
        // offset: 0x3f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x400, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x408, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x418, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmzombieminspeed;
        // offset: 0x420, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x430, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x440, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_29b057ccce3ee75f;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmhealthregendelay;
        // offset: 0x468, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x478, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x480, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_4035c12ee5837454;
        // offset: 0x488, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x4a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x4b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_49d61407873849a2;
        // offset: 0x4b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmrunnerstate;
        // offset: 0x4c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x4c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x4d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x4d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x4e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmzombiespread;
        // offset: 0x4e8, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x4f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x510, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x518, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x520, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x530, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x538, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x540, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_f3d3533f21841ae;
        // offset: 0x548, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x550, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x560, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmcrawlerdamagemult;
        // offset: 0x568, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0x578, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x588, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x590, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmhealthonkill;
        // offset: 0x598, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x5a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x5b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x5c8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x5d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x5e0, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x600, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmzombiehealthmult;
        // offset: 0x608, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x618, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x628, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x638, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x648, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x658, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x670, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x680, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x688, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_164754ccf007dbb4;
        // offset: 0x690, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x698, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1f6f54b27b4e9860;
        // offset: 0x6a0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x6a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmequipmentchargerate;
        // offset: 0x6b0, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x6c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x6c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x6d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x6e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmpowerupfrequency;
        // offset: 0x6e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x6f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x708, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x718, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x720, bitSize: 0x10(0x2 Byte(s))
        uint:14 playersprintrecoverydelayoverridems;
        // offset: 0x730, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x738, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x748, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x750, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x768, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x770, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x780, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x788, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x798, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x7a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x7b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x7c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x7d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x7e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x7f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmshielddurability;
        // offset: 0x7f8, bitSize: 0x10(0x2 Byte(s))
        uint:14 zmpointslossvalue;
        // offset: 0x808, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x810, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmspecweaponchargerate;
        // offset: 0x818, bitSize: 0x258(0x4b Byte(s)), array:0x4b(hti:0xffff)
        uint:5 maxuniquerolesperteam[75];
        // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0xa78, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0xa80, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0xaa8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0xac0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0xad0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0xad8, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmcrawlerstate;
        // offset: 0xae0, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0xaf0, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0xaf8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0xb08, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0xb20, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0xb28, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0xb30, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0xb38, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0xb50, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0xb58, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0xb68, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0xb70, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0xb78, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0xb88, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmlaststandduration;
        // offset: 0xb90, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0xba8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0xbb8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0xbc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 zmpointsstarting;
        // offset: 0xbd0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0xbd8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0xbe0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0xbe8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0xbf0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0xbf8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0xc00, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0xc08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xc10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xc20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xc30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xc40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xc50, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xc60, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_366e11af2b3a233;
        // offset: 0xc68, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xc78, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xc88, bitSize: 0x8(0x1 Byte(s))
        uint:4 zmmysteryboxlimitmove;
        // offset: 0xc90, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xc98, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xca8, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xcb0, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xcb8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xcc0, bitSize: 0x8(0x1 Byte(s))
        uint:7 zmpointlossondeath;
        // offset: 0xcc8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xcd0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xcd8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xce8, bitSize: 0x8(0x1 Byte(s))
        uint:5 zmpowerupslimitround;
        // offset: 0xcf0, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xd00, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xd08, bitSize: 0x8(0x1 Byte(s))
        uint:7 zmroundcap;
        // offset: 0xd10, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_37698d5973834ce8;
        // offset: 0xd18, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xd20, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xd28, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xd30, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmperkdecay;
        // offset: 0xd38, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xd40, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_4e802ac0cfc8e1ba;
        // offset: 0xd48, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xd50, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xd58, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_260fe4ac4d0ee7c7;
        // offset: 0xd60, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostminigun;
        // offset: 0xd68, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_55a92a1d652b5edc;
        // offset: 0xd70, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xd78, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xd80, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xd90, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xda0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xda8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xdb0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xdb8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xdd0, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xdd8, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xde8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xdf0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xdf8, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xe08, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xe18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xe28, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xe30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xe40, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmpowerstate;
        // offset: 0xe48, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_2d0db902620447a8;
        // offset: 0xe50, bitSize: 0x8(0x1 Byte(s))
        uint:6 startround;
        // offset: 0xe58, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xe60, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xe68, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xe70, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_443cfbf2a6fbc040;
        // offset: 0xe78, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xe80, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xe88, bitSize: 0x8(0x1 Byte(s))
        uint:4 zmmysteryboxlimitround;
        // offset: 0xe90, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xe98, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xea0, bitSize: 0x8(0x1 Byte(s))
        uint:3 zmhealthregenrate;
        // offset: 0xea8, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmzombiemaxspeed;
        // offset: 0xeb0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xed0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xee8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xef8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xf00, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xf08, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xf18, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xf20, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xf28, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xf38, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xf40, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xf48, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xf50, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xf60, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmzombiedamagemult;
        // offset: 0xf68, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xf70, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3c2c78e639bfd3c6;
        // offset: 0xf78, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xf80, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xf88, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xf90, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmwalkerstate;
        // offset: 0xf98, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xfa8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_3e1334207938d6a7;
        // offset: 0xfb0, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_4269e873a0c207c;
        // offset: 0xfb8, bitSize: 0x10(0x2 Byte(s))
        int:10 hash_3ccd8e1bf3864fa1;
        // offset: 0xfc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xfd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xfe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcoststraferun;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xff0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xff8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0x1000, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0x1010, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0x1018, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3e1bb1840c4ab667;
        // offset: 0x1028, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0x1038, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0x1048, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0x1050, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0x1058, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0x1060, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0x1070, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmpointslosstype;
        // offset: 0x1078, bitSize: 0x8(0x1 Byte(s))
        uint:3 zmhealthstartingbars;
        // offset: 0x1080, bitSize: 0x8(0x1 Byte(s))
        uint:7 zmselfreviveamount;
        // offset: 0x1088, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0x10a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0x10b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0x10c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0x10d0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0x10d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0x10e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0x10f8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0x1100, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0x1118, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmelixirscooldown;
        // offset: 0x1120, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0x1128, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0x1138, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0x1148, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0x1150, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0x1170, bitSize: 0x8(0x1 Byte(s))
        uint:7 zmpointslosspercent;
        // offset: 0x1178, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0x1198, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0x11a0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0x11a8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0x11b0, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_f370576ccd22b54;
        // offset: 0x11b8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0x11c0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0x11d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0x11d8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0x11f0, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0x11f8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0x1208, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0x1210, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_51c6226ba6a8b2e0;
        // offset: 0x1218, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0x1230, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0x1240, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0x1250, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0x1260, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0x1270, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0x1280, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0x1288, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0x1290, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0x1298, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_6d8c09b7927b8d9b;
        // offset: 0x12a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0x12a8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0x12b8, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0x12c0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0x12c8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0x12d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0x12d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0x12e0, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0x12e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmhealthdrain;
        // offset: 0x12f0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0x12f8, bitSize: 0x8(0x1 Byte(s))
        uint:7 zmpointlossondown;
        // offset: 0x1300, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0x1308, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0x1310, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0x1328, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0x1330, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0x1348, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0x1350, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0x1360, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_96215e6d55c4b2b;
        // offset: 0x1370, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_6cd27d9716989cf5;
        // offset: 0x1380, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0x1388, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0x1390, bitSize: 0x24ec0(0x49d8 Byte(s)), array:0x4(hti:0xffff)
        cacloadoutlistcustomgames_s cacloadouts[4];
        // offset: 0x26250, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0x26258, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0x26260, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0x26268, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostreconplane;
        // offset: 0x26270, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0x26278, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x26288, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x26290, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_69262a31e0f8f91c;
        // offset: 0x26298, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x262a0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x262b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x262c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x262c8, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmcrawlerhealthmult;
        // offset: 0x262d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 zmfriendlyfiretype;
        // offset: 0x262d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x262e0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x262e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x26300, bitSize: 0x8(0x1 Byte(s))
        uint:2 zmdifficulty;
        // offset: 0x26308, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x26310, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47683a928d3b5c50;
        // offset: 0x26318, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_6996c421425cbae9;
        // offset: 0x26320, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x26340, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x26348, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x26350, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x26360, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x26368, bitSize: 0x8(0x1 Byte(s))
        uint:4 zmtrialsvariant;
        // offset: 0x26370, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x26380, bitSize: 0x10(0x2 Byte(s))
        uint:9 zmtimecap;
        // offset: 0x26390, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x263a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x263b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x263c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x263d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x263e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x263e8, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x26408, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x26410, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x26428, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x26430, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x26448, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x26450, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x26458, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x26468, bitSize: 0x8(0x1 Byte(s))
        uint:7 zmlimiteddownsamount;
        // offset: 0x26470, bitSize: 0x1
        bool zmtalismansenabled;
        // offset: 0x26471, bitSize: 0x1
        bool hash_4bf87ef3ad101bb4;
        // offset: 0x26472, bitSize: 0x1
        bool hash_1456b26ab6d295ef;
        // offset: 0x26473, bitSize: 0x1
        bool delayplayer;
        // offset: 0x26474, bitSize: 0x1
        bool hash_24d18e3942c82edb;
        // offset: 0x26475, bitSize: 0x1
        bool zmelixirreigndrops;
        // offset: 0x26476, bitSize: 0x1
        bool zmstartingweaponenabled;
        // offset: 0x26477, bitSize: 0x1
        bool hash_196e997a082443a9;
        // offset: 0x26478, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x26479, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x2647a, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x2647b, bitSize: 0x1
        bool hash_4ddf1b97bee2b93;
        // offset: 0x2647c, bitSize: 0x1
        bool magic;
        // offset: 0x2647d, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x2647e, bitSize: 0x1
        bool hash_110164134bd3e56b;
        // offset: 0x2647f, bitSize: 0x1
        bool zmelixirblooddebt;
        // offset: 0x26480, bitSize: 0x1
        bool hash_6df7f3b336fa9540;
        // offset: 0x26481, bitSize: 0x1
        bool hash_1f65a3791067d2e8;
        // offset: 0x26482, bitSize: 0x1
        bool draftenabled;
        // offset: 0x26483, bitSize: 0x1
        bool hash_85fbdce1f1a0290;
        // offset: 0x26484, bitSize: 0x1
        bool zmtalismanperkpermanent1;
        // offset: 0x26485, bitSize: 0x1
        bool zmtalismanperkpermanent2;
        // offset: 0x26486, bitSize: 0x1
        bool zmtalismanperkpermanent3;
        // offset: 0x26487, bitSize: 0x1
        bool zmtalismanperkpermanent4;
        // offset: 0x26488, bitSize: 0x1
        bool hash_23fe21eb92ffbc2c;
        // offset: 0x26489, bitSize: 0x1
        bool hash_23331c459fc1fe23;
        // offset: 0x2648a, bitSize: 0x1
        bool hash_444f9d0410b85ddf;
        // offset: 0x2648b, bitSize: 0x1
        bool hash_4437cd0410a41d8e;
        // offset: 0x2648c, bitSize: 0x1
        bool hash_64a988c3a72dea56;
        // offset: 0x2648d, bitSize: 0x1
        bool hash_19c3b46e9dd9d7c5;
        // offset: 0x2648e, bitSize: 0x1
        bool hash_68113c8c43f83f21;
        // offset: 0x2648f, bitSize: 0x1
        bool zmtalismanspecialstartlvl2;
        // offset: 0x26490, bitSize: 0x1
        bool zmtalismanspecialstartlvl3;
        // offset: 0x26491, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x26492, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x26493, bitSize: 0x1
        bool hash_3cd4e4f070668ada;
        // offset: 0x26494, bitSize: 0x1
        bool zmperksspeed;
        // offset: 0x26495, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0x26496, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x26497, bitSize: 0x1
        bool zmtalismanextrasemtex;
        // offset: 0x26498, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x26499, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x2649a, bitSize: 0x1
        bool zmtalismanboxguaranteelmg;
        // offset: 0x2649b, bitSize: 0x1
        bool zmelixirundeadmanwalking;
        // offset: 0x2649c, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x2649d, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x2649e, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x2649f, bitSize: 0x1
        bool hash_3b9cbac29f690970;
        // offset: 0x264a0, bitSize: 0x1
        bool hash_7bc197f18ad9c160;
        // offset: 0x264a1, bitSize: 0x1
        bool hash_58c821bc828f5ebe;
        // offset: 0x264a2, bitSize: 0x1
        bool hash_5183877c20675325;
        // offset: 0x264a3, bitSize: 0x1
        bool zmelixirwallpower;
        // offset: 0x264a4, bitSize: 0x1
        bool hash_2b42adb78f8dd85;
        // offset: 0x264a5, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x264a6, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x264a7, bitSize: 0x1
        bool zmelixirfreefire;
        // offset: 0x264a8, bitSize: 0x1
        bool hash_bdf13864e52da12;
        // offset: 0x264a9, bitSize: 0x1
        bool allowdogs;
        // offset: 0x264aa, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x264ab, bitSize: 0x1
        bool hash_538641f0b1aebc8c;
        // offset: 0x264ac, bitSize: 0x1
        bool hash_3a1bcecdeb68529a;
        // offset: 0x264ad, bitSize: 0x1
        bool hash_61d2c98cd4f42430;
        // offset: 0x264ae, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x264af, bitSize: 0x1
        bool hash_1e1a5ebefe2772ba;
        // offset: 0x264b0, bitSize: 0x1
        bool hash_27c9278627272303;
        // offset: 0x264b1, bitSize: 0x1
        bool hash_7b0522e8455161b3;
        // offset: 0x264b2, bitSize: 0x1
        bool hash_580b0e5930bebbd1;
        // offset: 0x264b3, bitSize: 0x1
        bool zmelixirpowervacuum;
        // offset: 0x264b4, bitSize: 0x1
        bool hash_cb11922d3737605;
        // offset: 0x264b5, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x264b6, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x264b7, bitSize: 0x1
        bool zmelixirsenabled;
        // offset: 0x264b8, bitSize: 0x1
        bool zmpowerupfiresale;
        // offset: 0x264b9, bitSize: 0x1
        bool zmperksetherealrazor;
        // offset: 0x264ba, bitSize: 0x1
        bool zmelixirctrlz;
        // offset: 0x264bb, bitSize: 0x1
        bool hash_627b8890e37ca076;
        // offset: 0x264bc, bitSize: 0x1
        bool hash_30fcc5c576cf049c;
        // offset: 0x264bd, bitSize: 0x1
        bool hash_4230e2ce569b5e48;
        // offset: 0x264be, bitSize: 0x1
        bool zmperksquickrevive;
        // offset: 0x264bf, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x264c0, bitSize: 0x1
        bool hash_49c3a9d150ecbb16;
        // offset: 0x264c1, bitSize: 0x1
        bool hash_7da80c21d54c06fe;
        // offset: 0x264c2, bitSize: 0x1
        bool hash_1b556d0ef1bd7a36;
        // offset: 0x264c3, bitSize: 0x1
        bool zmelixirsepic;
        // offset: 0x264c4, bitSize: 0x1
        bool zmelixirsrare;
        // offset: 0x264c5, bitSize: 0x1
        bool forcegibbing;
        // offset: 0x264c6, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x264c7, bitSize: 0x1
        bool zmelixirdangerclosest;
        // offset: 0x264c8, bitSize: 0x1
        bool zmtrapsenabled;
        // offset: 0x264c9, bitSize: 0x1
        bool hash_115a6ae50a238213;
        // offset: 0x264ca, bitSize: 0x1
        bool hash_751384283abde22c;
        // offset: 0x264cb, bitSize: 0x1
        bool zmelixirshoppingfree;
        // offset: 0x264cc, bitSize: 0x1
        bool hash_21138fb9940856ed;
        // offset: 0x264cd, bitSize: 0x1
        bool zmtalismanpermanentheroweaparmor;
        // offset: 0x264ce, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x264cf, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x264d0, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x264d1, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x264d2, bitSize: 0x1
        bool silentplant;
        // offset: 0x264d3, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x264d4, bitSize: 0x1
        bool hash_1e2b95e15661dad;
        // offset: 0x264d5, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x264d6, bitSize: 0x1
        bool hash_3f800fdfdeecf1a4;
        // offset: 0x264d7, bitSize: 0x1
        bool hash_23a116036c0c1772;
        // offset: 0x264d8, bitSize: 0x1
        bool hash_23a117036c0c1925;
        // offset: 0x264d9, bitSize: 0x1
        bool hash_196d0df204447726;
        // offset: 0x264da, bitSize: 0x1
        bool hash_5b33393a60d164e;
        // offset: 0x264db, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x264dc, bitSize: 0x1
        bool hash_61b10205e83c5849;
        // offset: 0x264dd, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x264de, bitSize: 0x1
        bool zmperksjuggernaut;
        // offset: 0x264df, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x264e0, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x264e1, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x264e2, bitSize: 0x1
        bool kothmode;
        // offset: 0x264e3, bitSize: 0x1
        bool zmperkswidowswail;
        // offset: 0x264e4, bitSize: 0x1
        bool zmperksdeathperception;
        // offset: 0x264e5, bitSize: 0x1
        bool zmweaponsar;
        // offset: 0x264e6, bitSize: 0x1
        bool zmweaponstr;
        // offset: 0x264e7, bitSize: 0x1
        bool hash_1fc262f0136c2814;
        // offset: 0x264e8, bitSize: 0x1
        bool zmtalismanperkmodsingle;
        // offset: 0x264e9, bitSize: 0x1
        bool hash_70c6890214831a58;
        // offset: 0x264ea, bitSize: 0x1
        bool hash_34c2c463f81af043;
        // offset: 0x264eb, bitSize: 0x1
        bool hash_21f347fcb9fbef2a;
        // offset: 0x264ec, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x264ed, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x264ee, bitSize: 0x1
        bool hash_ffe306b56f17a7b;
        // offset: 0x264ef, bitSize: 0x1
        bool hash_5cc58dfc6675a68e;
        // offset: 0x264f0, bitSize: 0x1
        bool hash_1a5305df17fdcc40;
        // offset: 0x264f1, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x264f2, bitSize: 0x1
        bool hash_2d9172b182d08475;
        // offset: 0x264f3, bitSize: 0x1
        bool zmelixirheadscan;
        // offset: 0x264f4, bitSize: 0x1
        bool hash_5db80c269fca68d2;
        // offset: 0x264f5, bitSize: 0x1
        bool zmelixirlicensedcontractor;
        // offset: 0x264f6, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0x264f7, bitSize: 0x1
        bool hash_429b520a87274afb;
        // offset: 0x264f8, bitSize: 0x1
        bool zmelixirextracredit;
        // offset: 0x264f9, bitSize: 0x1
        bool hash_26d369152c14a7f1;
        // offset: 0x264fa, bitSize: 0x1
        bool hash_5d6471cd7038852e;
        // offset: 0x264fb, bitSize: 0x1
        bool hash_5cb59df3a875fa4e;
        // offset: 0x264fc, bitSize: 0x1
        bool decayprogress;
        // offset: 0x264fd, bitSize: 0x1
        bool zmperkszombshell;
        // offset: 0x264fe, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x264ff, bitSize: 0x1
        bool onlyexecution;
        // offset: 0x26500, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x26501, bitSize: 0x1
        bool hash_17d1136ac99cdb85;
        // offset: 0x26502, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x26503, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x26504, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x26505, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x26506, bitSize: 0x1
        bool hash_240adf6a97ca2bdc;
        // offset: 0x26507, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x26508, bitSize: 0x1
        bool zmspecweaponisenabled;
        // offset: 0x26509, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x2650a, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x2650b, bitSize: 0x1
        bool zmperkselectricburst;
        // offset: 0x2650c, bitSize: 0x1
        bool hash_a496839f1b02b42;
        // offset: 0x2650d, bitSize: 0x1
        bool hash_7cc2f3e9453e060b;
        // offset: 0x2650e, bitSize: 0x1
        bool hash_4ac1f31d592e3f3d;
        // offset: 0x2650f, bitSize: 0x1
        bool zmelixirquacknarok;
        // offset: 0x26510, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x26511, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x26512, bitSize: 0x1
        bool hash_5bffbdd0ee4c82ed;
        // offset: 0x26513, bitSize: 0x1
        bool hash_77e5bcb82c95cf00;
        // offset: 0x26514, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x26515, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x26516, bitSize: 0x1
        bool zmwallbuysenabled;
        // offset: 0x26517, bitSize: 0x1
        bool zmelixirsodafountain;
        // offset: 0x26518, bitSize: 0x1
        bool hash_7ead02dd6721f46a;
        // offset: 0x26519, bitSize: 0x1
        bool zmendonquest;
        // offset: 0x2651a, bitSize: 0x1
        bool zmelixirdeadofnuclearwinter;
        // offset: 0x2651b, bitSize: 0x1
        bool zmtalismanscommon;
        // offset: 0x2651c, bitSize: 0x1
        bool zmelixiranywherebuthere;
        // offset: 0x2651d, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x2651e, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x2651f, bitSize: 0x1
        bool hash_7e95e1074078a0b4;
        // offset: 0x26520, bitSize: 0x1
        bool zmelixircrawlspace;
        // offset: 0x26521, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x26522, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0x26523, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x26524, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x26525, bitSize: 0x1
        bool hash_596181cc4de6aad0;
        // offset: 0x26526, bitSize: 0x1
        bool zmpowerupsactive;
        // offset: 0x26527, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x26528, bitSize: 0x1
        bool zmelixirburnedout;
        // offset: 0x26529, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x2652a, bitSize: 0x1
        bool hash_322e83f1e3af77c3;
        // offset: 0x2652b, bitSize: 0x1
        bool hash_569740eb69009df4;
        // offset: 0x2652c, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x2652d, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x2652e, bitSize: 0x1
        bool hash_5fcc23190f135afe;
        // offset: 0x2652f, bitSize: 0x1
        bool hash_54537cc749c2001d;
        // offset: 0x26530, bitSize: 0x1
        bool zmtalismansultra;
        // offset: 0x26531, bitSize: 0x1
        bool hash_6b4d9c563903b948;
        // offset: 0x26532, bitSize: 0x1
        bool hash_1e8998fd7f271bb7;
        // offset: 0x26533, bitSize: 0x1
        bool hash_daa01e426a57a0a;
        // offset: 0x26534, bitSize: 0x1
        bool zmtalismanspecialxprate;
        // offset: 0x26535, bitSize: 0x1
        bool hash_678c1d3307b1d73a;
        // offset: 0x26536, bitSize: 0x1
        bool headshotsonly;
        // offset: 0x26537, bitSize: 0x1
        bool hash_672081a388e4e5a2;
        // offset: 0x26538, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x26539, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x2653a, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x2653b, bitSize: 0x1
        bool hash_2d40f1434ed94a2b;
        // offset: 0x2653c, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x2653d, bitSize: 0x1
        bool zmtalismanimpatient;
        // offset: 0x2653e, bitSize: 0x1
        bool hash_15e3cdab677aed;
        // offset: 0x2653f, bitSize: 0x1
        bool hash_3a16dccdcb82e664;
        // offset: 0x26540, bitSize: 0x1
        bool hash_6837e26094ac7578;
        // offset: 0x26541, bitSize: 0x1
        bool hash_9574295c8d1417e;
        // offset: 0x26542, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x26543, bitSize: 0x1
        bool hash_430002f66a3fd19b;
        // offset: 0x26544, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x26545, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x26546, bitSize: 0x1
        bool autoheal;
        // offset: 0x26547, bitSize: 0x1
        bool zmelixirinplainsight;
        // offset: 0x26548, bitSize: 0x1
        bool hash_45fa8995b51490e8;
        // offset: 0x26549, bitSize: 0x1
        bool hash_64069be594107ddf;
        // offset: 0x2654a, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x2654b, bitSize: 0x1
        bool zmbarricadestate;
        // offset: 0x2654c, bitSize: 0x1
        bool hash_1e668f64bc52ca0b;
        // offset: 0x2654d, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x2654e, bitSize: 0x1
        bool hash_7fafd95fb5eeb3cd;
        // offset: 0x2654f, bitSize: 0x1
        bool zmtalismanstartweaponar;
        // offset: 0x26550, bitSize: 0x1
        bool hash_3ad94f36f9fe01c3;
        // offset: 0x26551, bitSize: 0x1
        bool zmelixirslegendary;
        // offset: 0x26552, bitSize: 0x1
        bool hash_57a94eeed5771bca;
        // offset: 0x26553, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x26554, bitSize: 0x1
        bool hash_7fd1ff1f0b2dc779;
        // offset: 0x26555, bitSize: 0x1
        bool zmelixirswordflay;
        // offset: 0x26556, bitSize: 0x1
        bool hash_e2896eee66cc912;
        // offset: 0x26557, bitSize: 0x1
        bool hash_2434908be5662858;
        // offset: 0x26558, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x26559, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x2655a, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x2655b, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x2655c, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x2655d, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x2655e, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x2655f, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x26560, bitSize: 0x1
        bool hash_6a5453075de4b0b3;
        // offset: 0x26561, bitSize: 0x1
        bool hash_78c5c63d405656fc;
        // offset: 0x26562, bitSize: 0x1
        bool hash_3e5289b2695c4ca9;
        // offset: 0x26563, bitSize: 0x1
        bool hash_7af999d88a5c3e9e;
        // offset: 0x26564, bitSize: 0x1
        bool zmpowerupchaospoints;
        // offset: 0x26565, bitSize: 0x1
        bool zmelixirpopshocks;
        // offset: 0x26566, bitSize: 0x1
        bool hash_45f866da7af3a609;
        // offset: 0x26567, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x26568, bitSize: 0x1
        bool hash_d9c18f112ff4552;
        // offset: 0x26569, bitSize: 0x1
        bool hash_26a2c5ac44218a16;
        // offset: 0x2656a, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x2656b, bitSize: 0x1
        bool hash_5cedd3fe49a8b4e1;
        // offset: 0x2656c, bitSize: 0x1
        bool hash_50cc93a10c9d2175;
        // offset: 0x2656d, bitSize: 0x1
        bool zmelixirpointdrops;
        // offset: 0x2656e, bitSize: 0x1
        bool zmcraftingkeyline;
        // offset: 0x2656f, bitSize: 0x1
        bool hash_1aaf37c19b933d03;
        // offset: 0x26570, bitSize: 0x1
        bool hash_66cad2a554f4d928;
        // offset: 0x26571, bitSize: 0x1
        bool zmpowerupinstakill;
        // offset: 0x26572, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x26573, bitSize: 0x1
        bool hash_67a7a1b18751c7b4;
        // offset: 0x26574, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x26575, bitSize: 0x1
        bool zmelixirkilljoy;
        // offset: 0x26576, bitSize: 0x1
        bool hash_4f1f179b0cd480f1;
        // offset: 0x26577, bitSize: 0x1
        bool hash_4c45273c674d9ee4;
        // offset: 0x26578, bitSize: 0x1
        bool hash_428c952907d62b61;
        // offset: 0x26579, bitSize: 0x1
        bool hash_5dee59f4f540e800;
        // offset: 0x2657a, bitSize: 0x1
        bool hash_38fc677b479b1b9b;
        // offset: 0x2657b, bitSize: 0x1
        bool hash_6fd518232d24ffe0;
        // offset: 0x2657c, bitSize: 0x1
        bool hash_2626d22dd381efe2;
        // offset: 0x2657d, bitSize: 0x1
        bool zmtalismanextrafrag;
        // offset: 0x2657e, bitSize: 0x1
        bool hash_1bfbbf0be6b090f6;
        // offset: 0x2657f, bitSize: 0x1
        bool hash_1bfbc00be6b092a9;
        // offset: 0x26580, bitSize: 0x1
        bool hash_1bfbc10be6b0945c;
        // offset: 0x26581, bitSize: 0x1
        bool zmpowerupcarpenter;
        // offset: 0x26582, bitSize: 0x1
        bool zmelixirscommon;
        // offset: 0x26583, bitSize: 0x1
        bool zmelixirsecretshopper;
        // offset: 0x26584, bitSize: 0x1
        bool zmelixirjointheparty;
        // offset: 0x26585, bitSize: 0x1
        bool hash_46d3411097467f2d;
        // offset: 0x26586, bitSize: 0x1
        bool neutralzone;
        // offset: 0x26587, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x26588, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x26589, bitSize: 0x1
        bool hash_45aec06707484fef;
        // offset: 0x2658a, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x2658b, bitSize: 0x1
        bool hash_525f16f31abe7e44;
        // offset: 0x2658c, bitSize: 0x1
        bool hash_7dedd27bf994a9a9;
        // offset: 0x2658d, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x2658e, bitSize: 0x1
        bool hash_72ad1c2b51381a57;
        // offset: 0x2658f, bitSize: 0x1
        bool zmelixirsdurables;
        // offset: 0x26590, bitSize: 0x1
        bool zmshieldisenabled;
        // offset: 0x26591, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x26592, bitSize: 0x1
        bool zmelixirimmolationliquidation;
        // offset: 0x26593, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0x26594, bitSize: 0x1
        bool hash_7b822d42a5d1643d;
        // offset: 0x26595, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x26596, bitSize: 0x1
        bool hash_5566698b97a6282e;
        // offset: 0x26597, bitSize: 0x1
        bool hash_4b8929fb898a9e80;
        // offset: 0x26598, bitSize: 0x1
        bool zmelixirphoenixup;
        // offset: 0x26599, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x2659a, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x2659b, bitSize: 0x1
        bool hash_160f3f7bd6c73057;
        // offset: 0x2659c, bitSize: 0x1
        bool hash_10de3b1cea667398;
        // offset: 0x2659d, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x2659e, bitSize: 0x1
        bool zmelixiraftertaste;
        // offset: 0x2659f, bitSize: 0x1
        bool hash_183fac0f1cab9dc6;
        // offset: 0x265a0, bitSize: 0x1
        bool hash_48d605c9ac0d9395;
        // offset: 0x265a1, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x265a2, bitSize: 0x1
        bool zmcrawleraggro;
        // offset: 0x265a3, bitSize: 0x1
        bool zmperkscooldown;
        // offset: 0x265a4, bitSize: 0x1
        bool hash_235cec66e8d6bee4;
        // offset: 0x265a5, bitSize: 0x1
        bool hash_27bb3c5a1198d400;
        // offset: 0x265a6, bitSize: 0x1
        bool hash_4057701fc646435d;
        // offset: 0x265a7, bitSize: 0x1
        bool hash_55a58334a47dd0cb;
        // offset: 0x265a8, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x265a9, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x265aa, bitSize: 0x1
        bool hash_3e70ce2c501807dc;
        // offset: 0x265ab, bitSize: 0x1
        bool zmprivatematchtype;
        // offset: 0x265ac, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x265ad, bitSize: 0x1
        bool hash_40c823219ff89d55;
        // offset: 0x265ae, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x265af, bitSize: 0x1
        bool zmheadshotsonly;
        // offset: 0x265b0, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x265b1, bitSize: 0x1
        bool zmspecialroundsenabled;
        // offset: 0x265b2, bitSize: 0x1
        bool zmelixirperkup;
        // offset: 0x265b3, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x265b4, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x265b5, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x265b6, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x265b7, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x265b8, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x265b9, bitSize: 0x1
        bool hash_33dfbf870d70dcff;
        // offset: 0x265ba, bitSize: 0x1
        bool zmelixirboardgames;
        // offset: 0x265bb, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x265bc, bitSize: 0x1
        bool hash_36996ba5b37104c9;
        // offset: 0x265bd, bitSize: 0x1
        bool zmelixirperkaholic;
        // offset: 0x265be, bitSize: 0x1
        bool zmenablescorestreaknapalmstrike;
        // offset: 0x265bf, bitSize: 0x1
        bool hash_2c17d5c5b5deb1d6;
        // offset: 0x265c0, bitSize: 0x1
        bool hash_55e6f3de65ca7e70;
        // offset: 0x265c1, bitSize: 0x1
        bool zmperksactive;
        // offset: 0x265c2, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x265c3, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x265c4, bitSize: 0x1
        bool hash_40f536a8f29d74ba;
        // offset: 0x265c5, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x265c6, bitSize: 0x1
        bool hash_170998bbdeb41682;
        // offset: 0x265c7, bitSize: 0x1
        bool hash_4e9980349237e457;
        // offset: 0x265c8, bitSize: 0x1
        bool zmelixirsuitup;
        // offset: 0x265c9, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x265ca, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x265cb, bitSize: 0x1
        bool hash_4cbfbe5e677ce735;
        // offset: 0x265cc, bitSize: 0x1
        bool hash_325ba7c748b18956;
        // offset: 0x265cd, bitSize: 0x1
        bool zmequipmentisenabled;
        // offset: 0x265ce, bitSize: 0x1
        bool zmsuperpapenabled;
        // offset: 0x265cf, bitSize: 0x1
        bool hash_7db8d2ae05b98ba1;
        // offset: 0x265d0, bitSize: 0x1
        bool zmweaponsknife;
        // offset: 0x265d1, bitSize: 0x1
        bool zmweaponsmelee;
        // offset: 0x265d2, bitSize: 0x1
        bool zmelixirconflagrationliquidation;
        // offset: 0x265d3, bitSize: 0x1
        bool perksenabled;
        // offset: 0x265d4, bitSize: 0x1
        bool zmperkswolfprotector;
        // offset: 0x265d5, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x265d6, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x265d7, bitSize: 0x1
        bool zmelixirwalltowall;
        // offset: 0x265d8, bitSize: 0x1
        bool hash_87dd6c14b668b1d;
        // offset: 0x265d9, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x265da, bitSize: 0x1
        bool hash_37d48bb6639008a1;
        // offset: 0x265db, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x265dc, bitSize: 0x1
        bool hash_1e45aded9d98eb83;
        // offset: 0x265dd, bitSize: 0x1
        bool hash_7edbf65b1ef09118;
        // offset: 0x265de, bitSize: 0x1
        bool zmpowerupspecialweapon;
        // offset: 0x265df, bitSize: 0x1
        bool hash_1a61e028f785b11b;
        // offset: 0x265e0, bitSize: 0x1
        bool hash_65528f8939d7f73;
        // offset: 0x265e1, bitSize: 0x1
        bool hash_3a7ec0a6978ebd27;
        // offset: 0x265e2, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x265e3, bitSize: 0x1
        bool robotshield;
        // offset: 0x265e4, bitSize: 0x1
        bool hash_4e8a552c8b6dcbb2;
        // offset: 0x265e5, bitSize: 0x1
        bool zmretainweapons;
        // offset: 0x265e6, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x265e7, bitSize: 0x1
        bool zmpowerupdouble;
        // offset: 0x265e8, bitSize: 0x1
        bool hash_50bcc0278b8ff6b2;
        // offset: 0x265e9, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x265ea, bitSize: 0x1
        bool disableattachments;
        // offset: 0x265eb, bitSize: 0x1
        bool disablecompass;
        // offset: 0x265ec, bitSize: 0x1
        bool hash_6a0b096c6bbfd5eb;
        // offset: 0x265ed, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x265ee, bitSize: 0x1
        bool zmpointsfixed;
        // offset: 0x265ef, bitSize: 0x1
        bool hash_26dc68686741b223;
        // offset: 0x265f0, bitSize: 0x1
        bool hash_350adc73849f66ad;
        // offset: 0x265f1, bitSize: 0x1
        bool hash_197b8b458c4577b9;
        // offset: 0x265f2, bitSize: 0x1
        bool zmtalismancoagulant;
        // offset: 0x265f3, bitSize: 0x1
        bool hash_76986c7749f63b9a;
        // offset: 0x265f4, bitSize: 0x1
        bool hash_62cadb1ee561ae0d;
        // offset: 0x265f5, bitSize: 0x1
        bool hash_62c0d91ee5595622;
        // offset: 0x265f6, bitSize: 0x1
        bool hash_7e8e34cc69a77e0b;
        // offset: 0x265f7, bitSize: 0x1
        bool hash_7bf18814d3e2c8f7;
        // offset: 0x265f8, bitSize: 0x1
        bool hash_110289ee8ee0bdf5;
        // offset: 0x265f9, bitSize: 0x1
        bool zmperkssecretsauce;
        // offset: 0x265fa, bitSize: 0x1
        bool hash_70ed9f3754351408;
        // offset: 0x265fb, bitSize: 0x1
        bool zmelixirphantomreload;
        // offset: 0x265fc, bitSize: 0x1
        bool hash_704e4a94667cfe72;
        // offset: 0x265fd, bitSize: 0x1
        bool hash_7d1368d8d487beed;
        // offset: 0x265fe, bitSize: 0x1
        bool zmperksphdslider;
        // offset: 0x265ff, bitSize: 0x1
        bool hash_7d458c697d0c4966;
        // offset: 0x26600, bitSize: 0x1
        bool zmelixircacheback;
        // offset: 0x26601, bitSize: 0x1
        bool zmweaponspistol;
        // offset: 0x26602, bitSize: 0x1
        bool hash_1eaa149676ef52d9;
        // offset: 0x26603, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x26604, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x26605, bitSize: 0x1
        bool hash_7029ea8551fb906f;
        // offset: 0x26606, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x26607, bitSize: 0x1
        bool hash_332bb2baad5b58ff;
        // offset: 0x26608, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x26609, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x2660a, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x2660b, bitSize: 0x1
        bool hash_6e7905f68c5d7bdd;
        // offset: 0x2660c, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x2660d, bitSize: 0x1
        bool hash_3846b38f23c3d539;
        // offset: 0x2660e, bitSize: 0x1
        bool zmperksdoubletap2;
        // offset: 0x2660f, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x26610, bitSize: 0x1
        bool zmweaponssniper;
        // offset: 0x26611, bitSize: 0x1
        bool hash_634569782c55f196;
        // offset: 0x26612, bitSize: 0x1
        bool hash_6891ea2844c28717;
        // offset: 0x26613, bitSize: 0x1
        bool zmelixirpowerkeg;
        // offset: 0x26614, bitSize: 0x1
        bool hash_e62f83d1be06913;
        // offset: 0x26615, bitSize: 0x1
        bool hash_5288d81f40e45f48;
        // offset: 0x26616, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x26617, bitSize: 0x1
        bool zmwonderweaponisenabled;
        // offset: 0x26618, bitSize: 0x1
        bool zmelixirnowyouseeme;
        // offset: 0x26619, bitSize: 0x1
        bool hash_4751990deae37e66;
        // offset: 0x2661a, bitSize: 0x1
        bool zmpowerupmaxammo;
        // offset: 0x2661b, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x2661c, bitSize: 0x1
        bool hash_10756ba8dff36e5a;
        // offset: 0x2661d, bitSize: 0x1
        bool zmpowerupnuke;
        // offset: 0x2661e, bitSize: 0x1
        bool zmelixirnewtoniannegation;
        // offset: 0x2661f, bitSize: 0x1
        bool zmelixirrefreshmint;
        // offset: 0x26620, bitSize: 0x1
        bool zmelixirbulletboost;
        // offset: 0x26621, bitSize: 0x1
        bool hash_7732e7b9e5c4e0e;
        // offset: 0x26622, bitSize: 0x1
        bool hash_70c3412e2cba1306;
        // offset: 0x26623, bitSize: 0x1
        bool zmtalismanslegendary;
        // offset: 0x26624, bitSize: 0x1
        bool hash_4384633993522bf4;
        // offset: 0x26625, bitSize: 0x1
        bool hash_5428069c26ac7a85;
        // offset: 0x26626, bitSize: 0x1
        bool zmtalismanshieldprice;
        // offset: 0x26627, bitSize: 0x1
        bool hash_5164b603aedfbe2a;
        // offset: 0x26628, bitSize: 0x1
        bool zmperksstonecold;
        // offset: 0x26629, bitSize: 0x1
        bool hash_4e946885bf06df52;
        // offset: 0x2662a, bitSize: 0x1
        bool hash_7880919be865d57b;
        // offset: 0x2662b, bitSize: 0x1
        bool hash_56993805c86d5f25;
        // offset: 0x2662c, bitSize: 0x1
        bool hash_fb69584de9657e3;
        // offset: 0x2662d, bitSize: 0x1
        bool hash_7889914479f048a1;
        // offset: 0x2662e, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x2662f, bitSize: 0x1
        bool zmtalismanshielddurabilityrare;
        // offset: 0x26630, bitSize: 0x1
        bool zmelixirstockoption;
        // offset: 0x26631, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x26632, bitSize: 0x1
        bool hash_318abd2654cf527a;
        // offset: 0x26633, bitSize: 0x1
        bool zmtalismanextraselfrevive;
        // offset: 0x26634, bitSize: 0x1
        bool zmelixirheaddrama;
        // offset: 0x26635, bitSize: 0x1
        bool allowprone;
        // offset: 0x26636, bitSize: 0x1
        bool zmtalismanextramolotov;
        // offset: 0x26637, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x26638, bitSize: 0x1
        bool zmtalismansindividual;
        // offset: 0x26639, bitSize: 0x1
        bool zmelixirtalkinboutregeneration;
        // offset: 0x2663a, bitSize: 0x1
        bool hash_7e3300640a5b26bf;
        // offset: 0x2663b, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x2663c, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x2663d, bitSize: 0x1
        bool zmperksdeadshot;
        // offset: 0x2663e, bitSize: 0x1
        bool hash_64433bd5b95b8e2;
        // offset: 0x2663f, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x26640, bitSize: 0x1
        bool multibomb;
        // offset: 0x26641, bitSize: 0x1
        bool hash_4a23f5a8d8193e57;
        // offset: 0x26642, bitSize: 0x1
        bool hash_7e967deb0d6b9649;
        // offset: 0x26643, bitSize: 0x1
        bool hash_6c0eea959e1beea9;
        // offset: 0x26644, bitSize: 0x1
        bool hash_af8083f7ea1c28b;
        // offset: 0x26645, bitSize: 0x1
        bool zmtalismanboxguaranteeboxonly;
        // offset: 0x26646, bitSize: 0x1
        bool hash_f8c884a70b46f1f;
        // offset: 0x26647, bitSize: 0x1
        bool zmtalismanperkstart1;
        // offset: 0x26648, bitSize: 0x1
        bool zmtalismanperkstart2;
        // offset: 0x26649, bitSize: 0x1
        bool zmtalismanperkstart3;
        // offset: 0x2664a, bitSize: 0x1
        bool zmtalismanperkstart4;
        // offset: 0x2664b, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x2664c, bitSize: 0x1
        bool zmtalismanperkreducecost1;
        // offset: 0x2664d, bitSize: 0x1
        bool zmtalismanperkreducecost2;
        // offset: 0x2664e, bitSize: 0x1
        bool zmtalismanperkreducecost3;
        // offset: 0x2664f, bitSize: 0x1
        bool zmtalismanperkreducecost4;
        // offset: 0x26650, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x26651, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x26652, bitSize: 0x1
        bool zmperksmulekick;
        // offset: 0x26653, bitSize: 0x1
        bool zmelixirwhoskeepingscore;
        // offset: 0x26654, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x26655, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0x26656, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x26657, bitSize: 0x1
        bool deathcircle;
        // offset: 0x26658, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x26659, bitSize: 0x1
        bool hash_616a22c5c1ebe5b8;
        // offset: 0x2665a, bitSize: 0x1
        bool boastenabled;
        // offset: 0x2665b, bitSize: 0x1
        bool hash_5002b8a3b8882084;
        // offset: 0x2665c, bitSize: 0x1
        bool hash_4a821fd3ce297dbb;
        // offset: 0x2665d, bitSize: 0x1
        bool zmtalismanshielddurabilitylegendary;
        // offset: 0x2665e, bitSize: 0x1
        bool hash_759fe9a9853a9b36;
        // offset: 0x2665f, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x26660, bitSize: 0x1
        bool hash_7322ca6ba3d467f0;
        // offset: 0x26661, bitSize: 0x1
        bool hash_187bb4d683e57608;
        // offset: 0x26662, bitSize: 0x1
        bool zmperksdyingwish;
        // offset: 0x26663, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x26664, bitSize: 0x1
        bool zmperksvictorious;
        // offset: 0x26665, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x26666, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x26667, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x26668, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x26669, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x2666a, bitSize: 0x1
        bool hash_5958b4d3a9664b7e;
        // offset: 0x2666b, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x2666c, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x2666d, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x2666e, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x2666f, bitSize: 0x1
        bool zmtalismanextraclaymore;
        // offset: 0x26670, bitSize: 0x1
        bool zmprivateimmersivemode;
        // offset: 0x26671, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x26672, bitSize: 0x1
        bool hash_55a71b8eec91f064;
        // offset: 0x26673, bitSize: 0x1
        bool zmtalismanstartweaponlmg;
        // offset: 0x26674, bitSize: 0x1
        bool zmtalismanstartweaponsmg;
        // offset: 0x26675, bitSize: 0x1
        bool hash_346c0aea148a07d9;
        // offset: 0x26676, bitSize: 0x1
        bool hash_59854c1f30538261;
        // offset: 0x26677, bitSize: 0x1
        bool allowspectating;
        // offset: 0x26678, bitSize: 0x1
        bool zmpowerupsislimitedround;
        // offset: 0x26679, bitSize: 0x1
        bool hash_4fed85baf6c05ff1;
        // offset: 0x2667a, bitSize: 0x1
        bool hash_534a70940dadf3e7;
        // offset: 0x2667b, bitSize: 0x1
        bool usabledynents;
        // offset: 0x2667c, bitSize: 0x1
        bool zmtalismansepic;
        // offset: 0x2667d, bitSize: 0x1
        bool zmtalismansrare;
        // offset: 0x2667e, bitSize: 0x1
        bool hash_3c5363541b97ca3e;
        // offset: 0x2667f, bitSize: 0x1
        bool hash_5bbfb03d6f36d3c3;
        // offset: 0x26680, bitSize: 0x1
        bool hash_72c534ee96e553ba;
        // offset: 0x26681, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x26682, bitSize: 0x1
        bool hash_4eabe0978dc92ef7;
        // offset: 0x26683, bitSize: 0x1
        bool hash_21dfcc8984dad931;
        // offset: 0x26684, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x26685, bitSize: 0x1
        bool hash_1ff9ab7a376254f4;
        // offset: 0x26686, bitSize: 0x1
        bool hash_5d8dd9151ffe3c3f;
        // offset: 0x26687, bitSize: 0x1
        bool zmweaponsshotgun;
        // offset: 0x26688, bitSize: 0x1
        bool hash_783783e66c8036bb;
        // offset: 0x26689, bitSize: 0x1
        bool hash_2015355bc530a7e8;
        // offset: 0x2668a, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x2668b, bitSize: 0x1
        bool zmperksbandolier;
        // offset: 0x2668c, bitSize: 0x1
        bool hash_70343e0c02c9f7b9;
        // offset: 0x2668d, bitSize: 0x1
        bool zmweaponslmg;
        // offset: 0x2668e, bitSize: 0x1
        bool zmweaponssmg;
        // offset: 0x2668f, bitSize: 0x1
        bool hash_276c762aa3f9fb83;
        // offset: 0x26690, bitSize: 0x1
        bool zmtalismanreducepapcost;
        // offset: 0x26691, bitSize: 0x1
        bool hash_7379657f823bfef9;
        // offset: 0x26692, bitSize: 0x1
        bool zmelixirneardeathexperience;
        // offset: 0x26693, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x26694, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x26695, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x26696, bitSize: 0x1
        bool hash_6e08ae9c93d49fa9;
        // offset: 0x26697, bitSize: 0x1
        bool zmelixirnowherebutthere;
        // offset: 0x26698, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x26699, bitSize: 0x1
        bool hash_2c3ed1049b2a9bb8;
        // offset: 0x2669a, bitSize: 0x1
        bool hash_294ddd2442e040f4;
        // offset: 0x2669b, bitSize: 0x1
        bool hash_5d65c0983698a539;
        // offset: 0x2669c, bitSize: 0x1
        bool zmelixirtemporalgift;
        // offset: 0x2669d, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x2669e, bitSize: 0x1
        bool zmelixirantientrapment;
        // offset: 0x2669f, bitSize: 0x1
        bool zmpowerupfreeperk;
        // offset: 0x266a0, bitSize: 0x1
        bool hash_12f776f6bc579bb4;
        // offset: 0x266a1, bitSize: 0x1
        bool zmelixiralchemicalantithesis;
        // offset: 0x266a2, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x266a3, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x266a4, bitSize: 0x1
        bool hash_cd096e90260a26b;
        // offset: 0x266a5, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0x266a6, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x266a7, bitSize: 0x1
        bool hash_3626be8164d82cbc;
        // offset: 0x266a8, bitSize: 0x1
        bool hash_379326ac1c160c72;
        // offset: 0x266a9, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x266aa, bitSize: 0x1
        bool zmperksstaminup;
        // offset: 0x266ab, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x266ac, bitSize: 0x1
        bool zmelixirdividendyield;
        // offset: 0x266ad, bitSize: 0x1
        bool disallowprone;
        // offset: 0x266ae, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x266af, bitSize: 0x1
        bool hash_5fa8eb8092935d4a;
        // offset: 0x266b0, bitSize: 0x1
        bool hash_61695e52556ff2d1;
        // offset: 0x266b1, bitSize: 0x1
        bool hash_1eae2946efd5fc50;
        // offset: 0x266b2, bitSize: 0x1
        bool moveplayers;
        // offset: 0x266b3, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x266b4, bitSize: 0x1
        bool hash_75dc05dded650042;
        // offset: 0x266b5, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x266b6, bitSize: 0x1
        bool hash_4cec0e29a8901e65;
        // offset: 0x266b7, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x266b8, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x266b9, bitSize: 0x1
        bool hash_2f2281537f0463f7;
        // offset: 0x266ba, bitSize: 0x1
        bool zmelixirsindividual;
        // offset: 0x266bb, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x266bc, bitSize: 0x1
        bool zmpowerupsharing;
        // offset: 0x266bd, bitSize: 0x1
        bool zmtalismanextraminiturret;
        // offset: 0x266be, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x266bf, bitSize: 0x1
        bool hash_6bedad625441f5f9;
        // offset: 0x266c0, bitSize: 0x1
        bool zmelixirshieldsup;
        // offset: 0x266c1, bitSize: 0x1
        bool hash_1ab1a89d032f7080;
        // offset: 0x266c2, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x266c3, bitSize: 0x1
        bool hash_51b60215d13d454;
        // offset: 0x266c4, bitSize: 0x1
        bool hash_22e96504754e8375;
        // offset: 0x266c5, bitSize: 0x1
        bool hash_c6635a2daea5f19;
        // offset: 0x266c6, bitSize: 0x1
        bool use_doors;
        // offset: 0x266c7, bitSize: 0x1
        bool zmelixirarsenalaccelerator;
        // offset: 0x266c8, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x266c9, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x266ca, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x266cb, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x266cc, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x266cd, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x266ce, bitSize: 0x1
        bool hash_52f19cd89938e56a;
        // offset: 0x266cf, bitSize: 0x1
        bool deathzones;
        // offset: 0x266d0, bitSize: 0x1
        bool hash_2537d92585f4fce2;
        // offset: 0x266d1, bitSize: 0x1
        bool hash_790760c24def02df;
        // offset: 0x266d2, bitSize: 0x1
        bool classicmode;
        // offset: 0x266d3, bitSize: 0x1
        bool hash_12c8b36832284f70;
        // offset: 0x266d4, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x266d5, bitSize: 0x1
        bool hash_3c47218eb5aa98c9;
        // offset: 0x266d6, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x266d7, bitSize: 0x1
        bool capdecay;
        // offset: 0x266d8, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x266d9, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x266da, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x266db, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x266dc, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x266dd, bitSize: 0x1
        bool hash_7e206914418d0318;
        // offset: 0x266de, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x266df, bitSize: 0x1
        bool hash_7a6bdc0af120a35f;
        // offset: 0x266e0, bitSize: 0x1
        bool hash_f75e8d54b6ad799;
        // offset: 0x266e1, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x266e2, bitSize: 0x1
        bool zmshowtimer;
        // offset: 0x266e3, bitSize: 0x1
        bool hash_5965373b6c028d10;
        // offset: 0x266e4, bitSize: 0x1
        bool hash_13b948d391d89415;
        // offset: 0x266e5, bitSize: 0x1
        bool zmelixirequipmint;
        // offset: 0x266e6, bitSize: 0x1
        bool zmelixiralwaysdoneswiftly;
        // offset: 0x266e7, bitSize: 0x1
        bool hash_52a73dca4cbce600;
        // offset: 0x266e8, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x266e9, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // bitSize: 0x18, members: 1
    struct hash_6c116eea1f7184ec {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        uint:24 statvalue;
    };

    // bitSize: 0x38, members: 3
    struct intstat {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        short challengevalue;
        // offset: 0x10, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x38, members: 3
    struct hash_77427c7b6edfc9f {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        uint:24 challengevalue;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        uint:24 statvalue;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x30, members: 3
    struct hash_3a0863dc1d7d622d {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 challengevalue;
        // offset: 0x10, bitSize: 0x18(0x3 Byte(s))
        uint:24 statvalue;
        // offset: 0x28, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x48, members: 3
    struct hash_18a8724145eb9652 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint challengevalue;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint statvalue;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x18, members: 3
    struct hash_25508de9fa29a5d5 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte challengevalue;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        byte statvalue;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x18, members: 3
    struct hash_126773fe8808efc0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte challengevalue;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        byte statvalue;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x10, members: 4
    struct hash_298a7e7626f32fe0 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 challengevalue;
        // offset: 0x8, bitSize: 0x1
        bool statvalue;
        // offset: 0x9, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x28, members: 3
    struct hash_2b6b162a9af31225 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte challengevalue;
        // offset: 0x8, bitSize: 0x18(0x3 Byte(s))
        uint:24 statvalue;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
    };

    // bitSize: 0x18, members: 4
    struct hash_285aa5a19a4bbb20 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 challengevalue;
        // offset: 0x10, bitSize: 0x1
        bool statvalue;
        // offset: 0x11, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x8, members: 4
    struct bitstat {
        // offset: 0x0, bitSize: 0x1
        bool challengevalue;
        // offset: 0x1, bitSize: 0x1
        bool statvalue;
        // offset: 0x2, bitSize: 0x1
        bool challengetier;
    };

    // bitSize: 0x48, members: 3
    struct itemgroupstats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec times_used;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deaths;
    };

    // bitSize: 0x48, members: 3
    struct attachmentstats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deaths;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec usecount;
    };

    // bitSize: 0x18, members: 4
    struct hash_7a45118e770e0c70 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 challengevalue;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
        // offset: 0x10, bitSize: 0x1
        bool statvalue;
    };

    // bitSize: 0x20, members: 4
    struct hash_1dd529d6f1f087b0 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 challengevalue;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:4 challengetier;
        // offset: 0x18, bitSize: 0x1
        bool statvalue;
    };

    // bitSize: 0x5240, members: 762
    struct globalstats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec doors_purchased;
        // offset: 0x18, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_4fe158e23ff60c71;
        // offset: 0x40, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hits;
        // offset: 0x58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec rank;
        // offset: 0x70, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ties;
        // offset: 0x88, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5510c810d2c654;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_78e5512f079af452;
        // offset: 0xa8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_6b4fded9783baabb;
        // offset: 0xd0, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d packedkills;
        // offset: 0x100, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5d77c9a44bc6f7eb;
        // offset: 0x128, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_152390f1e6352547;
        // offset: 0x140, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_2a1239190cd1bb23;
        // offset: 0x158, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_6e93bb5e8c2ba491;
        // offset: 0x178, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec player_kills;
        // offset: 0x190, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec wraith_fire_kills;
        // offset: 0x1a8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_216cc6f546326278;
        // offset: 0x1d0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3a4cc9109fa72702;
        // offset: 0x1e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec talent_juggernog_drank;
        // offset: 0x1f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec downs;
        // offset: 0x210, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec drops;
        // offset: 0x228, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec bgbs_chewed;
        // offset: 0x240, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d kills;
        // offset: 0x270, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_cec186092dce3f2;
        // offset: 0x288, bitSize: 0x38(0x7 Byte(s))
        intstat maxxp;
        // offset: 0x2c0, bitSize: 0x38(0x7 Byte(s))
        intstat minxp;
        // offset: 0x2f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec score;
        // offset: 0x310, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec wallbuy_weapons_purchased;
        // offset: 0x328, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_62b2fe2395dd516d;
        // offset: 0x340, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec timestamplastday1;
        // offset: 0x358, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec timestamplastday2;
        // offset: 0x370, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec timestamplastday3;
        // offset: 0x388, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec timestamplastday4;
        // offset: 0x3a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec timestamplastday5;
        // offset: 0x3b8, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d pap_kills;
        // offset: 0x3e8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2d868c0eda640cc6;
        // offset: 0x3f8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3551fbb8f9272df6;
        // offset: 0x420, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_28d06d169d6df927;
        // offset: 0x438, bitSize: 0x38(0x7 Byte(s))
        hash_77427c7b6edfc9f hash_4264deaabcb7bb38;
        // offset: 0x470, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_518010f809e66024;
        // offset: 0x480, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3c5830545dd9407a;
        // offset: 0x498, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_685c28b32c045f5c;
        // offset: 0x4b0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_30e4e9155368a6a9;
        // offset: 0x4d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec shotgun_kills;
        // offset: 0x4f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec talent_staminup_drank;
        // offset: 0x508, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_158beead6820875f;
        // offset: 0x528, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4ef1a8ab0124a4d9;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1dbfc19533279bd1;
        // offset: 0x550, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_3baee3fe30b6ea65;
        // offset: 0x568, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7cb905c409de3ce8;
        // offset: 0x580, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_36199b2fd0602c5d;
        // offset: 0x598, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_73bcca6cdadc5ddc;
        // offset: 0x5a0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1daafc9c2aadfb3d;
        // offset: 0x5b8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_81dfbfc52acbb4b;
        // offset: 0x5d0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_22485a4cae21822b;
        // offset: 0x5f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec talent_deadshot_drank;
        // offset: 0x610, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_165462f560a0538c;
        // offset: 0x628, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_7a72e4b09f5dc89b;
        // offset: 0x640, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_78260b4431f8764e;
        // offset: 0x658, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4124fad6c16b36d3;
        // offset: 0x668, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_44a8be5f522bfbb;
        // offset: 0x680, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_558f7942e2401eff;
        // offset: 0x6a8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_232f596c7bb640f4;
        // offset: 0x6b8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5440867be903f580;
        // offset: 0x6d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7b8b9fde65918131;
        // offset: 0x6e8, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_526aeb1ca606fe59;
        // offset: 0x708, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3036b265137cb0c0;
        // offset: 0x720, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6c7c994f6bae8ecf;
        // offset: 0x738, bitSize: 0x38(0x7 Byte(s))
        hash_77427c7b6edfc9f kill_enemies;
        // offset: 0x770, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5637dbe66b1e3feb;
        // offset: 0x788, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_31e51e924e57c83a;
        // offset: 0x7a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec talent_speedcola_drank;
        // offset: 0x7c0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5a04e5e551fdc490;
        // offset: 0x7d8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_637627fb0019084;
        // offset: 0x7f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec time_played_total;
        // offset: 0x808, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_351323b673476913;
        // offset: 0x820, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_15bf92bd80c31d99;
        // offset: 0x838, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec power_turnedoff;
        // offset: 0x850, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_ca318f6e8260fe1;
        // offset: 0x878, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_3d6a930809a732e6;
        // offset: 0x890, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_2b71f0bb19aa0c6f;
        // offset: 0x8a8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1cd482b5aaa76a63;
        // offset: 0x8c0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_64e4655b2bad9f63;
        // offset: 0x8d8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5d23b07f5d93408d;
        // offset: 0x8f0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_fb085e65c4ecdd;
        // offset: 0x900, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d criticals;
        // offset: 0x930, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_590388fa68a69753;
        // offset: 0x948, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_517bf5c8991ad97a;
        // offset: 0x970, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5699cbd949051396;
        // offset: 0x978, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7ae5fe673f863826;
        // offset: 0x990, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_120456cb37b4ac3b;
        // offset: 0x9a0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3c8e09a04082db5e;
        // offset: 0x9c8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_453e998083809449;
        // offset: 0x9d8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_45b90af94bc28199;
        // offset: 0xa00, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3a1e0f80bb1fc682;
        // offset: 0xa08, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1a2bee1841f18a4;
        // offset: 0xa20, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2edde9215d77b0f1;
        // offset: 0xa38, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3d103095b8d51932;
        // offset: 0xa50, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_57e965d0cd558b43;
        // offset: 0xa68, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_18b0754477746c0e;
        // offset: 0xa78, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_1c14b86adf849ce0;
        // offset: 0xa98, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5e89396e6f618c5a;
        // offset: 0xaa8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_70a2e253d4eafa89;
        // offset: 0xab8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_6a37af3afff55532;
        // offset: 0xad0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2adda7cd2b43ffaa;
        // offset: 0xaf8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7194d6070704fc2e;
        // offset: 0xb10, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_3139fa102654452a;
        // offset: 0xb28, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_768adb0a89648a89;
        // offset: 0xb38, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6a3b487c924d7081;
        // offset: 0xb48, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_72b597c540b86d8d;
        // offset: 0xb70, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_67429a304536459;
        // offset: 0xb98, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1b4587ccc6718a54;
        // offset: 0xba8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec weighted_rounds_played;
        // offset: 0xbc0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 challenges;
        // offset: 0xbe8, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_7da86f9ce11e5b2f;
        // offset: 0xc08, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_deadshot_kills;
        // offset: 0xc20, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_708cbf9c621c9597;
        // offset: 0xc38, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec teamkills_nostats;
        // offset: 0xc50, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_28f078b404c0e6d9;
        // offset: 0xc68, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_34f8fe4251de7f39;
        // offset: 0xc88, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_39c86e169b57d8b5;
        // offset: 0xc98, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_66292e9d9de31883;
        // offset: 0xcb0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_1eaffdbd7f765b07;
        // offset: 0xcd8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_740fbcb881407c22;
        // offset: 0xd00, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2ab68853897a8d0c;
        // offset: 0xd10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_531de7d0a461034c;
        // offset: 0xd28, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_61fccc0731a4a01a;
        // offset: 0xd40, bitSize: 0x38(0x7 Byte(s))
        hash_77427c7b6edfc9f hash_512344494f0da53e;
        // offset: 0xd78, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_60469384a8d07186;
        // offset: 0xd90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_452e07bec3b77c8e;
        // offset: 0xda8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_219ef9b2525d760c;
        // offset: 0xdc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec total_points;
        // offset: 0xdd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec zdog_rounds_finished;
        // offset: 0xdf0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_65472fa120ebce1c;
        // offset: 0xe08, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_6a767447a03e9b21;
        // offset: 0xe30, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_6cde4583797a1e4d;
        // offset: 0xe58, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_677d29dcb0c038a7;
        // offset: 0xe80, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_7e1412cacb1d2d6b;
        // offset: 0xea8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_6dcdf2fb5a6cf4a0;
        // offset: 0xed0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_5bbe74ea4f5afcf2;
        // offset: 0xee8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_453743f534bcb9db;
        // offset: 0xef8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_17c6d5faa49457e1;
        // offset: 0xf20, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_57b95e90f6cbac0d;
        // offset: 0xf40, bitSize: 0x8(0x1 Byte(s))
        bitstat tu21_t9_onslaught_gold_zm_firebase_fixedup;
        // offset: 0xf48, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6b9b36fedfb95f3c;
        // offset: 0xf58, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_139c5d1048195803;
        // offset: 0xf80, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 power_activated;
        // offset: 0xfa8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7e4b300f1e1f2274;
        // offset: 0xfc0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3eacfddc84997ba5;
        // offset: 0xfc8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3cdbf06308503032;
        // offset: 0xff0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_80f17b0b548e17e;
        // offset: 0x1018, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_65ed7b0fe5ddfe4c;
        // offset: 0x1040, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_525fc5df1c43afe4;
        // offset: 0x1068, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2079511ab3c945bf;
        // offset: 0x1080, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_2b7368bb97d41c4f;
        // offset: 0x1098, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7e74c2c266f4b3a8;
        // offset: 0x10b0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_474edef2893daed1;
        // offset: 0x10d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7eb5a07a2592d261;
        // offset: 0x10f0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_268fa1d97a2fab27;
        // offset: 0x10f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_17cd6f2f7e794f3d;
        // offset: 0x1110, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3c1a94bb292d8e96;
        // offset: 0x1120, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2a4f45731a30e13a;
        // offset: 0x1138, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_31cd429fc96c48d7;
        // offset: 0x1160, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_629e66bd82d8cd38;
        // offset: 0x1178, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec planted_buildables_pickedup;
        // offset: 0x1190, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1c411a909421fc85;
        // offset: 0x11a0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4fda6c4372b053eb;
        // offset: 0x11b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5fd2600d7d44b293;
        // offset: 0x11c8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4b940f1a2905c9ec;
        // offset: 0x11e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec upgraded_ammo_purchased;
        // offset: 0x11f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec lifetime_buyin;
        // offset: 0x1210, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5e9fbf4fb934f162;
        // offset: 0x1220, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_19ddacc82a4cd51f;
        // offset: 0x1238, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_60d897a933e21edc;
        // offset: 0x1250, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec total_games_played;
        // offset: 0x1268, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_22670e78a2fecea;
        // offset: 0x1290, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1e1cccf58903bfa8;
        // offset: 0x12a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_27ee7de48fe345d3;
        // offset: 0x12c0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7128b5364ae54a0d;
        // offset: 0x12d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_37d246adceb02686;
        // offset: 0x12f0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_2805701e53ce32a1;
        // offset: 0x1308, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_48f57ba1008a331f;
        // offset: 0x1320, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_e7080a2e314b310;
        // offset: 0x1348, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 weapons_mastery_tactical;
        // offset: 0x1370, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_6c3dae3eba6c9c0c;
        // offset: 0x1388, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d hash_26686e13063f6b52;
        // offset: 0x13b8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_6515936e245d91f6;
        // offset: 0x13e0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_68da023c8208d751;
        // offset: 0x13f8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7fa0fb7abd1293d1;
        // offset: 0x1408, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_28e512c6ed6d36da;
        // offset: 0x1420, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec bouncingbetty_pickedup;
        // offset: 0x1438, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7c2104436691d80d;
        // offset: 0x1448, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 weapons_mastery_sniper;
        // offset: 0x1470, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ammo_purchased;
        // offset: 0x1488, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 elite_kills;
        // offset: 0x14b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5e8b4c7f1e47be33;
        // offset: 0x14c8, bitSize: 0x38(0x7 Byte(s))
        intstat paragon_maxxp;
        // offset: 0x1500, bitSize: 0x38(0x7 Byte(s))
        intstat paragon_minxp;
        // offset: 0x1538, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec killed_by_zdog;
        // offset: 0x1550, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4fd2828ae0a89ef4;
        // offset: 0x1568, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d hash_3171d9bb6e1519ac;
        // offset: 0x1598, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_649bed5e02596850;
        // offset: 0x15b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_stronghold_headshots;
        // offset: 0x15c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec grabbed_from_magicbox;
        // offset: 0x15e0, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_3c8dc5747bf561e2;
        // offset: 0x1600, bitSize: 0x38(0x7 Byte(s))
        hash_77427c7b6edfc9f hash_53751bfa0573d9b8;
        // offset: 0x1638, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1bcba3bbca05dee0;
        // offset: 0x1650, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec fire_sale_pickedup;
        // offset: 0x1668, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 equipment_kills;
        // offset: 0x1690, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3c5a993c0208d6a6;
        // offset: 0x16a0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4bcd9e9baf9fef9d;
        // offset: 0x16b0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_c564d52a7c51ad4;
        // offset: 0x16c0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5014636a724f5c14;
        // offset: 0x16e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec paragon_rank;
        // offset: 0x1700, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3c55e3e2a9134760;
        // offset: 0x1710, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7e96bc9d2f95e49e;
        // offset: 0x1728, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3b540abd221a6d9;
        // offset: 0x1750, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_255cd64167fc9d64;
        // offset: 0x1778, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_133973d140372afe;
        // offset: 0x1790, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_48e4f004511eee67;
        // offset: 0x17a0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_66d504a1593b165;
        // offset: 0x17c8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_e128de9fe167bdf;
        // offset: 0x17f0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_1328a9a4fc66d61a;
        // offset: 0x1818, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1d42ebe10bc79f19;
        // offset: 0x1830, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3c8437e4e9f1e638;
        // offset: 0x1858, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_1d2c3c200f429ec9;
        // offset: 0x1878, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_37ff3a21d194b40c;
        // offset: 0x18a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec revives;
        // offset: 0x18b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7283f3e1d914d95b;
        // offset: 0x18d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec currencyspent;
        // offset: 0x18e8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5da5da5770a64639;
        // offset: 0x1900, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5e2d0a6005f8bb7f;
        // offset: 0x1928, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec shields_built;
        // offset: 0x1940, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_110c57c2a15f9f1f;
        // offset: 0x1958, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_e9b414f0e35b790;
        // offset: 0x1968, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec bouncingbetty_devil_planted;
        // offset: 0x1980, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec special_weapon_used;
        // offset: 0x1998, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_694301c8ee631a5;
        // offset: 0x19b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec sentry_kills;
        // offset: 0x19c8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_4748a07c715661dc;
        // offset: 0x19f0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_28a2a7b195211268;
        // offset: 0x19f8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_6077506b8728c093;
        // offset: 0x1a10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1f488ae03b38b6eb;
        // offset: 0x1a28, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_78b5865817a3c321;
        // offset: 0x1a38, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec talent_quickrevive_drank;
        // offset: 0x1a50, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1f2e2a07900d9e2d;
        // offset: 0x1a68, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_36df4a3528961605;
        // offset: 0x1a80, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3b13dc0e3c4bb2a2;
        // offset: 0x1a90, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_3eed494910a05bbc;
        // offset: 0x1aa8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2d451e3bdc5fc297;
        // offset: 0x1ab8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec double_pap_kills;
        // offset: 0x1ad0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_675ef8818802bb0f;
        // offset: 0x1ae8, bitSize: 0x8(0x1 Byte(s))
        bitstat t9_tu5_zm_hunter_mastery_fixup;
        // offset: 0x1af0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_39310ccdb302c15b;
        // offset: 0x1b18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec shield_charge_pickedup;
        // offset: 0x1b30, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5be51e5d5cd87967;
        // offset: 0x1b38, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_b672726889db04a;
        // offset: 0x1b60, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_2fa65e71a6411a7a;
        // offset: 0x1b78, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_617a35610ee3f4c1;
        // offset: 0x1b90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec tr_kills;
        // offset: 0x1ba8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_1b624464514f34b1;
        // offset: 0x1bd0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_794996196e74a949;
        // offset: 0x1be8, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_2b4013f15361c880;
        // offset: 0x1c08, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_3e45baf53f91deb9;
        // offset: 0x1c10, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_4cecac797f35ee4;
        // offset: 0x1c38, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6bfa77dd951df445;
        // offset: 0x1c50, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2e698f3f78ce7272;
        // offset: 0x1c58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_681c2ac0ee27a0b2;
        // offset: 0x1c70, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_76b222292bb7ea6a;
        // offset: 0x1c80, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d hash_730fd5daf2821481;
        // offset: 0x1cb0, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_3f7fe50fe83a3441;
        // offset: 0x1cd0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5a24fb70659e8b75;
        // offset: 0x1ce8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_2f835612b65f4272;
        // offset: 0x1cf8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec lifetime_earnings;
        // offset: 0x1d10, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_174eca25428cfdd3;
        // offset: 0x1d38, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_555ecf047c4d0aa4;
        // offset: 0x1d60, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_3b12ed4f1d5665e1;
        // offset: 0x1d78, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_6a28c3c8320ac9a9;
        // offset: 0x1d90, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_6baa731ac0cca35a;
        // offset: 0x1da8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3fc221bf84554824;
        // offset: 0x1dc0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 big_heals;
        // offset: 0x1de8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec cheat_total;
        // offset: 0x1e00, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 criticalmultikill;
        // offset: 0x1e28, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_3c096a414d5b9096;
        // offset: 0x1e40, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_132df2b4183bc9c8;
        // offset: 0x1e68, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_793cb36230ece12;
        // offset: 0x1e70, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_149f5861932281df;
        // offset: 0x1e98, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_796cd4fb6181046f;
        // offset: 0x1eb0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5a234b7c00ae1ae4;
        // offset: 0x1ed8, bitSize: 0x38(0x7 Byte(s))
        hash_77427c7b6edfc9f points_spent;
        // offset: 0x1f10, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_46966fbb78682d24;
        // offset: 0x1f28, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1727d39fbbd4c2cd;
        // offset: 0x1f40, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1a378f2459f69119;
        // offset: 0x1f58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3e6a6af966ec8c28;
        // offset: 0x1f70, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec cheat_out_of_playable;
        // offset: 0x1f88, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_21a4c7bf07dab2eb;
        // offset: 0x1fa0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec wonder_weapon_kills;
        // offset: 0x1fb8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4b3dd1ff72b58844;
        // offset: 0x1fd0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_72a7b15d4ee25e8a;
        // offset: 0x1fd8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_12ebd02003c58809;
        // offset: 0x2000, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_312a7fdb766b9876;
        // offset: 0x2008, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_7d8ee900ddefa146;
        // offset: 0x2030, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec claymores_pickedup;
        // offset: 0x2048, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7571a5aebc58c0df;
        // offset: 0x2058, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec wlratio;
        // offset: 0x2070, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_26af314c2ada744f;
        // offset: 0x2088, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_370c230dce9e1be6;
        // offset: 0x20a0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_45b12633e87eb866;
        // offset: 0x20c8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_79af8de54e6f5a0a;
        // offset: 0x20d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec cheat_too_friendly;
        // offset: 0x20f0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_3822203fc7c2eadf;
        // offset: 0x2100, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3d79fa20a5d0fb7;
        // offset: 0x2128, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec claymore_kills;
        // offset: 0x2140, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_77660914e8c70a14;
        // offset: 0x2158, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_aaa9c900cdfefaa;
        // offset: 0x2168, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_926b4857266e7a2;
        // offset: 0x2180, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_138e156dd57f9824;
        // offset: 0x21a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7c953169e3ac2bc1;
        // offset: 0x21c0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_721e9724b59755a7;
        // offset: 0x21e8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_63e962bd4021d604;
        // offset: 0x21f0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5939a7f27c84412c;
        // offset: 0x2208, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_12937ad639a31538;
        // offset: 0x2220, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_203f53d43e7b5525;
        // offset: 0x2248, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5698f14f777a2bf5;
        // offset: 0x2260, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec total_rounds_survived;
        // offset: 0x2278, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2643c82ae6e4649c;
        // offset: 0x22a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec grabbed_from_perk_random;
        // offset: 0x22b8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 zombie_hunter_mastery;
        // offset: 0x22e0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_79f623602d23af5a;
        // offset: 0x2308, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec sacrifices;
        // offset: 0x2320, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_726e331558583e86;
        // offset: 0x2338, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_690242ede350e378;
        // offset: 0x2350, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec pistol_kills;
        // offset: 0x2368, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_30eb116ef7af7ff5;
        // offset: 0x2380, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_7f0ce2a2e0a76e67;
        // offset: 0x2398, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2edbb2ffba8d18c2;
        // offset: 0x23c0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_3969fa6c05de12ef;
        // offset: 0x23d8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_679d2a2e1b786309;
        // offset: 0x23f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_46fd738f777b1ed1;
        // offset: 0x2408, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perks_drank;
        // offset: 0x2420, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec gametypeban;
        // offset: 0x2438, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_43cf01ce2a0622c9;
        // offset: 0x2460, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec grenade_kills;
        // offset: 0x2478, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec laststatsbackup;
        // offset: 0x2490, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_45419091cdb5f154;
        // offset: 0x24b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec bouncingbetty_holly_pickedup;
        // offset: 0x24d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4bb632268a7ca18c;
        // offset: 0x24e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec zspiders_killed;
        // offset: 0x2500, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1fb0f883567707e2;
        // offset: 0x2518, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_2bcf4fba492d765a;
        // offset: 0x2530, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec power_turnedon;
        // offset: 0x2548, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_9f4ad7eba874404;
        // offset: 0x2550, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_75a098c0db2ab15c;
        // offset: 0x2578, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_18840c28c3e337a6;
        // offset: 0x2590, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_78334d9117ca1925;
        // offset: 0x25b0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_1cb9f04cdc593ac2;
        // offset: 0x25d8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_666f9063a85fcd9;
        // offset: 0x2600, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7df91106483d60b6;
        // offset: 0x2618, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6d52ae8b2b73008b;
        // offset: 0x2628, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ballistic_knives_pickedup;
        // offset: 0x2640, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5c5cab0cce302a01;
        // offset: 0x2658, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_346e6565d0a79066;
        // offset: 0x2670, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5c4576daa133ceb8;
        // offset: 0x2698, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_798c6e3a05cdf8d8;
        // offset: 0x26b0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4568ec6d243eafa1;
        // offset: 0x26c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6930a4c285c10cee;
        // offset: 0x26e0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4a546c8840434f5b;
        // offset: 0x26f8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1aba6fb35597bd85;
        // offset: 0x2708, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_7cbdacb851430bb1;
        // offset: 0x2730, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2ad38b3cd161c0e8;
        // offset: 0x2758, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec rounds_no_downs;
        // offset: 0x2770, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_6289f0dc7ba983ec;
        // offset: 0x2798, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_71fb6d66e0007d1d;
        // offset: 0x27a8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5dc6f030420d1d6b;
        // offset: 0x27c0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_141b0e8dbfaf9468;
        // offset: 0x27e8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_6b661e56021d4c49;
        // offset: 0x27f0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_40c259a28bc275ba;
        // offset: 0x2818, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_27329bfa569c11d3;
        // offset: 0x2830, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_359f26f3fe7b3e34;
        // offset: 0x2840, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_59d8674357c2b6de;
        // offset: 0x2858, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_59ec774113410688;
        // offset: 0x2870, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec acid_bomb_kills;
        // offset: 0x2888, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5a554472dd2b62ad;
        // offset: 0x28b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_b3de5780cc890c1;
        // offset: 0x28c8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_774b3a384fb5ad;
        // offset: 0x28d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec zdog_rounds_lost;
        // offset: 0x28e8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5381188bbb5fca9b;
        // offset: 0x2910, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1c0f761ca8920f0b;
        // offset: 0x2928, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 secondary_mastery;
        // offset: 0x2950, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec zraps_killed;
        // offset: 0x2968, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3464a638f7ae0cf1;
        // offset: 0x2990, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec zdogs_killed;
        // offset: 0x29a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec failed_revives;
        // offset: 0x29c0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_41333e39d398c7e1;
        // offset: 0x29e8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5f78704720a048b2;
        // offset: 0x2a10, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d explosive_kills;
        // offset: 0x2a40, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_15e38ff835419f29;
        // offset: 0x2a50, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4945dccf0e8c820a;
        // offset: 0x2a68, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7660d304fd91efaa;
        // offset: 0x2a80, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_503b908f2a98419d;
        // offset: 0x2aa8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1a9d6b83204c7c28;
        // offset: 0x2ac0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_399e533eb62256f6;
        // offset: 0x2ad8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4de87f4ac352d31c;
        // offset: 0x2ae8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec cur_win_streak;
        // offset: 0x2b00, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_electric_cherry_kills;
        // offset: 0x2b18, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_312f711fa7c206d6;
        // offset: 0x2b40, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec nuke_pickedup;
        // offset: 0x2b58, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_184d672dc3614f1f;
        // offset: 0x2b68, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4633cd5d032f64ee;
        // offset: 0x2b80, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_59685457ec89f211;
        // offset: 0x2b90, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_b023b1e339c3ab;
        // offset: 0x2bb8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_7b4e9ebeabbe183a;
        // offset: 0x2be0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_607cee7194682397;
        // offset: 0x2c08, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_c3db4d34d330b35;
        // offset: 0x2c30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_17fef7e340332114;
        // offset: 0x2c48, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_739a48fafddd915c;
        // offset: 0x2c60, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_6f05f4cee5d4d81d;
        // offset: 0x2c88, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec failed_sacrifices;
        // offset: 0x2ca0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_e822c99f16c5e3a;
        // offset: 0x2cb0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_516a5f0ca98a6fc4;
        // offset: 0x2cd8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_49d075d62f45e274;
        // offset: 0x2d00, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_7b7db9592bf8ce56;
        // offset: 0x2d28, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_66ee2888bd7ddb12;
        // offset: 0x2d50, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7acad282df481b4d;
        // offset: 0x2d68, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_53222585ac81741a;
        // offset: 0x2d90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7ef956ebe4f8295b;
        // offset: 0x2da8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_186df82d2a8482b2;
        // offset: 0x2dc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_36300c5cd8fa40c3;
        // offset: 0x2dd8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_60eb36f8a47a2d1a;
        // offset: 0x2df0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec paragon_icon_id;
        // offset: 0x2e08, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec talent_tombstone_drank;
        // offset: 0x2e20, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_6e761859bc1ffd3d;
        // offset: 0x2e38, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec zthrashers_killed;
        // offset: 0x2e50, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec combined_rank;
        // offset: 0x2e68, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d hash_2d6bcee038d7e728;
        // offset: 0x2e98, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_690bf214175428d;
        // offset: 0x2ec0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 weapons_mastery;
        // offset: 0x2ee8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_1ada6297a317cb2f;
        // offset: 0x2f10, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_38bef53143af72bc;
        // offset: 0x2f38, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec double_points_pickedup;
        // offset: 0x2f50, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_40199f1bfb79141d;
        // offset: 0x2f78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec Accuracy;
        // offset: 0x2f90, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_4b37fc756befb798;
        // offset: 0x2f98, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_23fe7ee198149ca7;
        // offset: 0x2fb8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_2cbe744ecd9ac482;
        // offset: 0x2fd0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_critical;
        // offset: 0x2fe8, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_153b001a46288fe6;
        // offset: 0x3008, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1e7c5dc6e73c2ea9;
        // offset: 0x3020, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_63ea17009520197c;
        // offset: 0x3048, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 eliteeliminations;
        // offset: 0x3070, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_6108873685067f70;
        // offset: 0x3088, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_789a1be1f68c2a24;
        // offset: 0x30a0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_6467b5d2acb35b8a;
        // offset: 0x30b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec pack_a_punch_pickedup;
        // offset: 0x30d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perks_full;
        // offset: 0x30e8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_56778cda5cdf54df;
        // offset: 0x3110, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_52d449d3aae2c5fa;
        // offset: 0x3138, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_6e9ed00c931e3aad;
        // offset: 0x3158, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_3e5ce5fa7934ca93;
        // offset: 0x3170, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_540dc31c9853dedc;
        // offset: 0x3188, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_20ef0c16d41d9cd2;
        // offset: 0x3198, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5d5cac785e5018aa;
        // offset: 0x31a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2d0df4c6df1d5c60;
        // offset: 0x31c0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_588caccb5ea9a399;
        // offset: 0x31d8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4d5ecc0ade47e69b;
        // offset: 0x31e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6d4975a73053050d;
        // offset: 0x3200, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_6a861f1323ce4ae9;
        // offset: 0x3218, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3e8fc17206dbe863;
        // offset: 0x3240, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_ee7b7bd94593585;
        // offset: 0x3258, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_405bcd5604ca958f;
        // offset: 0x3280, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2834f989d9bd9f6;
        // offset: 0x3298, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_203003e51c5621d;
        // offset: 0x32c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_334c8a7a4c41de86;
        // offset: 0x32d8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_29dfe2453ddf80ae;
        // offset: 0x32e0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_303fec58454fcda6;
        // offset: 0x32f8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_49f1cf535b9700b2;
        // offset: 0x3310, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_36c9caf1c41a8356;
        // offset: 0x3338, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3ada34911786e667;
        // offset: 0x3360, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6099223c62d03376;
        // offset: 0x3378, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_70f048948f3fb670;
        // offset: 0x3388, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d melee_finishers;
        // offset: 0x33b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec suicides;
        // offset: 0x33d0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_1f3b0d3bd9acb4a5;
        // offset: 0x33f8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 secondary_mastery_pistol;
        // offset: 0x3420, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_56ed77cdf639564e;
        // offset: 0x3448, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_43719a488aec98d3;
        // offset: 0x3470, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d critical_finishers;
        // offset: 0x34a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec buildables_built;
        // offset: 0x34b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2c90c444d1523f5d;
        // offset: 0x34d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ar_kills;
        // offset: 0x34e8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_46e6329f4b3c275d;
        // offset: 0x3500, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_66505d6a5bcab598;
        // offset: 0x3528, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2c19b26a825c1467;
        // offset: 0x3550, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_2291cc79d49e6296;
        // offset: 0x3568, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ww_grenade_pickedup;
        // offset: 0x3580, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_74bdf43cc4c31e72;
        // offset: 0x3598, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec talent_elemental_pop_drank;
        // offset: 0x35b0, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_511e51f8c2848fc5;
        // offset: 0x35c8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_748d4c2ba56a6cdd;
        // offset: 0x35f0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_4f8679e10c170ac9;
        // offset: 0x3618, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_78912627d043be;
        // offset: 0x3640, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec extra_lives_pickedup;
        // offset: 0x3658, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec shields_purchased;
        // offset: 0x3670, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5c5e418bf55e75e7;
        // offset: 0x3698, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2d74918796164e23;
        // offset: 0x36c0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_2a8df2f4c20fc21a;
        // offset: 0x36d8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_4b9152a0994640e4;
        // offset: 0x3700, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_3a35f1174ff0dfe1;
        // offset: 0x3718, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_429e3354c9a7450d;
        // offset: 0x3730, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5dc4288a3e83811e;
        // offset: 0x3738, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_571cea79e8b2833b;
        // offset: 0x3750, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_27c44d5fe453f50e;
        // offset: 0x3758, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1a8c582d9511cea8;
        // offset: 0x3770, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_51898678eead02fd;
        // offset: 0x3788, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d hash_2a35d5d67e994b88;
        // offset: 0x37b8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_60594d8f8bc8764b;
        // offset: 0x37e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_40fcd0b22d2495fc;
        // offset: 0x37f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec badhostcount;
        // offset: 0x3810, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7c5dfd9a8b4b34e;
        // offset: 0x3828, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_20a9dbd1ca99a444;
        // offset: 0x3840, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_43c2b3a0dfc9bab3;
        // offset: 0x3868, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5be9c19eb061c8e;
        // offset: 0x3870, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2030b96b5a4b7a90;
        // offset: 0x3898, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_52d86f82675aaf1a;
        // offset: 0x38c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec talisman_used;
        // offset: 0x38d8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2af02abad4aeb7cd;
        // offset: 0x3900, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_768a330ec53898c9;
        // offset: 0x3928, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_741795f6bb2a5c51;
        // offset: 0x3940, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7a4b90d85af21324;
        // offset: 0x3958, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1980318fd2865f5a;
        // offset: 0x3970, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_231ce4bb96dad98;
        // offset: 0x3988, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_585b66ad59f45eae;
        // offset: 0x39a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec cheat_too_many_weapons;
        // offset: 0x39c0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4801eab040b132f5;
        // offset: 0x39d8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_398fdc7794697d06;
        // offset: 0x39e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec aat_catalyst_kills;
        // offset: 0x3a00, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_72a217263c8a78f;
        // offset: 0x3a18, bitSize: 0x38(0x7 Byte(s))
        intstat paragon_rankxp;
        // offset: 0x3a50, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_758066c25ccc99a8;
        // offset: 0x3a68, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3cafddf0b282008c;
        // offset: 0x3a80, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_2afbe016fb359bb5;
        // offset: 0x3a98, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec frag_kills;
        // offset: 0x3ab0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_317ce42b59caf89;
        // offset: 0x3ac8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7b482d2a97abe802;
        // offset: 0x3ae0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec zsentinel_killed;
        // offset: 0x3af8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_76ae2db178b3ffcc;
        // offset: 0x3b00, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec boards;
        // offset: 0x3b18, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_1a5bd2708defa02b;
        // offset: 0x3b30, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_1a9f296012aa60db;
        // offset: 0x3b58, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7a07b005bc08a081;
        // offset: 0x3b70, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_1404f61a3c181b21;
        // offset: 0x3b98, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_25f24cc0bc429da8;
        // offset: 0x3bb0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_57e42cdb892d3717;
        // offset: 0x3bd8, bitSize: 0x38(0x7 Byte(s))
        hash_77427c7b6edfc9f hash_264f73a843a3e379;
        // offset: 0x3c10, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d frost_kills;
        // offset: 0x3c40, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deaths;
        // offset: 0x3c58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec bouncingbetty_devil_pickedup;
        // offset: 0x3c70, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_6a5a02b577e1c527;
        // offset: 0x3c98, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5af7140c7463d733;
        // offset: 0x3cc0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5670ae565826fea2;
        // offset: 0x3cd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_mule_kick_kills;
        // offset: 0x3cf0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec sniper_kills;
        // offset: 0x3d08, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_567e99c4a5fb9fc8;
        // offset: 0x3d30, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_775bd6b063e325ff;
        // offset: 0x3d58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec highest_round_reached;
        // offset: 0x3d70, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec distance_traveled;
        // offset: 0x3d88, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec insta_kill_pickedup;
        // offset: 0x3da0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_6aa4504e2d10ff37;
        // offset: 0x3da8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2b4c8ac9156d7564;
        // offset: 0x3db0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec fast_travels;
        // offset: 0x3dc8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2467f4d08b89456;
        // offset: 0x3df0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_6dee1f7a2cf24f0a;
        // offset: 0x3e18, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 weapons_mastery_lmg;
        // offset: 0x3e40, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 weapons_mastery_smg;
        // offset: 0x3e68, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_34ec8cb3373fd6e3;
        // offset: 0x3e80, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_492732555967d2a2;
        // offset: 0x3e98, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_404a29a3ead5edb3;
        // offset: 0x3ec0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_44961f90979e3ba9;
        // offset: 0x3ee8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_21e2f8fd18871114;
        // offset: 0x3f00, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 multikill;
        // offset: 0x3f28, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 weapons_mastery_assault;
        // offset: 0x3f50, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec lmg_kills;
        // offset: 0x3f68, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_65628ce6e317b18a;
        // offset: 0x3f80, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_30f04720fb250afb;
        // offset: 0x3f98, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_c602b888cc99522;
        // offset: 0x3fa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7ea66b44d6518c0a;
        // offset: 0x3fc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5faffeb16b584e02;
        // offset: 0x3fd8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_510817c4cd9369ef;
        // offset: 0x3ff0, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_53d56458688e1eda;
        // offset: 0x3ff8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_b1ca52c5ef21dcb;
        // offset: 0x4020, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec rounds_no_damage;
        // offset: 0x4038, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec minigun_pickedup;
        // offset: 0x4050, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_392d0a1cbcbec210;
        // offset: 0x4068, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2509e6ed81b9096b;
        // offset: 0x4090, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_172d82afa5eb40a8;
        // offset: 0x4098, bitSize: 0x38(0x7 Byte(s))
        intstat lastxp;
        // offset: 0x40d0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5c79495cf16e0818;
        // offset: 0x40e8, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_4184958c0a55d46f;
        // offset: 0x4108, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_4fb345ddd49a654c;
        // offset: 0x4130, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_a57523eeb5e616e;
        // offset: 0x4158, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_749dcb744f4ce29d;
        // offset: 0x4170, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec zmarcade_key_pickedup;
        // offset: 0x4188, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_24ccc77cf1df2b49;
        // offset: 0x41a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec misses;
        // offset: 0x41b8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_f6d02bd887e8a67;
        // offset: 0x41d0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_cb6c1fa7289ca52;
        // offset: 0x41e8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_57991934859bfc0;
        // offset: 0x4200, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_3aecbf73ceecadaa;
        // offset: 0x4228, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_1f1e05ecdb4321ff;
        // offset: 0x4248, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_5c77fb32f73c647d;
        // offset: 0x4268, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5816ea22ec181ce9;
        // offset: 0x4280, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_51dde81caeacecdd;
        // offset: 0x4288, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_68a05283e6b947f6;
        // offset: 0x42a0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7ce9029b025320f0;
        // offset: 0x42b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec plevel;
        // offset: 0x42d0, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d hash_52ead07d6d583a9a;
        // offset: 0x4300, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4f74d3d969ac6be8;
        // offset: 0x4318, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec claymores_planted;
        // offset: 0x4330, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6b67d5b1604e1d1c;
        // offset: 0x4348, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec smg_kills;
        // offset: 0x4360, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_61889584186beb05;
        // offset: 0x4378, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_6f6e8d66ed930a13;
        // offset: 0x4388, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec shield_kills;
        // offset: 0x43a0, bitSize: 0x38(0x7 Byte(s))
        intstat rankxp;
        // offset: 0x43d8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_534c9832ce5fb8e1;
        // offset: 0x43e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec rounds;
        // offset: 0x43f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5deb9abfdd4f90ab;
        // offset: 0x4410, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec use_magicbox;
        // offset: 0x4428, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_72b0fc7205732661;
        // offset: 0x4440, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d electric_kills;
        // offset: 0x4470, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2e13067f3890aae5;
        // offset: 0x4488, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 aether_shroud_medals;
        // offset: 0x44b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_44178d4eaa5feb2c;
        // offset: 0x44c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec zraz_killed;
        // offset: 0x44e0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2e23bde8d7a24fc5;
        // offset: 0x4508, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec perk_slider_kills;
        // offset: 0x4520, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_4cd4e442cac88468;
        // offset: 0x4548, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_339ce8c4252def9e;
        // offset: 0x4560, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_67ed5d971276484f;
        // offset: 0x4578, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_57f49fd5e493248f;
        // offset: 0x45a0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_43ea4e7159b99b9c;
        // offset: 0x45c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec dung_pickedup;
        // offset: 0x45e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec carpenter_pickedup;
        // offset: 0x45f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kdratio;
        // offset: 0x4610, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_7ff6f7b0eafc8be9;
        // offset: 0x4628, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_42ad6596af9cd4d;
        // offset: 0x4638, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec codpoints;
        // offset: 0x4650, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5e20e47c6fcae6d7;
        // offset: 0x4668, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hero_weapon_power_pickedup;
        // offset: 0x4680, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec maxed_special_weapon_kills;
        // offset: 0x4698, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_38a132ff33294724;
        // offset: 0x46a8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_61b15880248761c8;
        // offset: 0x46d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec timewhennexthost;
        // offset: 0x46e8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5a0a939781d296e7;
        // offset: 0x4710, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_7c8f5be8bd9ffa06;
        // offset: 0x4730, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_2c0504992b5785f2;
        // offset: 0x4758, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_55555c9902aaba01;
        // offset: 0x4760, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_2d811e79d85e0017;
        // offset: 0x4778, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_40b4e16c1b39585;
        // offset: 0x4790, bitSize: 0x38(0x7 Byte(s))
        hash_77427c7b6edfc9f hash_7c268f858b56322e;
        // offset: 0x47c8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_69d1db585aa0b98a;
        // offset: 0x47e0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_5235cb868a2e5bc1;
        // offset: 0x4808, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d hash_7fe169cf58d1d6ef;
        // offset: 0x4838, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_6cf6b4ae9ac877b0;
        // offset: 0x4860, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec talent_doubletap_drank;
        // offset: 0x4878, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assists;
        // offset: 0x4890, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec melee_kills;
        // offset: 0x48a8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4975a47f10046ed;
        // offset: 0x48c0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_17759c33232585f;
        // offset: 0x48d0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5a6d38dd5c5f950d;
        // offset: 0x48e8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_42135ae3e30a83ab;
        // offset: 0x48f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_381d3c36ba671865;
        // offset: 0x4908, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_5819ea0165c41e4;
        // offset: 0x4918, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 support_kills;
        // offset: 0x4940, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2bd7ea2aeec51431;
        // offset: 0x4958, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6539088c37f11e00;
        // offset: 0x4970, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4b011cd0269a8502;
        // offset: 0x4988, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_27399de28b76c5c6;
        // offset: 0x49a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec scepter_revives;
        // offset: 0x49b8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_2da7b8a1df41011c;
        // offset: 0x49d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_equipment;
        // offset: 0x49e8, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d trapper_kills;
        // offset: 0x4a18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec zwasp_killed;
        // offset: 0x4a30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec use_perk_random;
        // offset: 0x4a48, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4a2a695d0f0137d9;
        // offset: 0x4a60, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_444372d7b49ca39a;
        // offset: 0x4a88, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1b510c3803746a43;
        // offset: 0x4a98, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_a2f3ba1ce10b5da;
        // offset: 0x4ab0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec special_kills;
        // offset: 0x4ac8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec bouncingbetty_holly_planted;
        // offset: 0x4ae0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_18cc2a45d11a4e80;
        // offset: 0x4af8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_1dce8a1f4224e648;
        // offset: 0x4b08, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 assisted_revive;
        // offset: 0x4b30, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_663c5435d8707d89;
        // offset: 0x4b58, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_d89d61477cee38f;
        // offset: 0x4b68, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec weighted_downs;
        // offset: 0x4b80, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_77814b03edd946bc;
        // offset: 0x4b98, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d hash_1c3294f143668662;
        // offset: 0x4bc8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_5be5c4c5dacd7bec;
        // offset: 0x4be0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec full_ammo_pickedup;
        // offset: 0x4bf8, bitSize: 0x18(0x3 Byte(s))
        hash_25508de9fa29a5d5 hash_60d916826ca6a779;
        // offset: 0x4c10, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_ec057f8bdec38d9;
        // offset: 0x4c38, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec bonus_points_team_pickedup;
        // offset: 0x4c50, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec total_downs;
        // offset: 0x4c68, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec total_shots;
        // offset: 0x4c80, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_49ee01ddb38e868e;
        // offset: 0x4ca0, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_7157c967c371c77c;
        // offset: 0x4cb0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_32e5fd6487f5c9fa;
        // offset: 0x4cc8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4a36eb44cec2bd14;
        // offset: 0x4ce0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_1c907a3cbd04a346;
        // offset: 0x4d08, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec island_seed_pickedup;
        // offset: 0x4d20, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_77fdc1340a34667d;
        // offset: 0x4d48, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_63e05acfb272a296;
        // offset: 0x4d58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_73c67d9995c7a1a8;
        // offset: 0x4d70, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec bouncingbetty_planted;
        // offset: 0x4d88, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_54e6dd19b5d8ac9a;
        // offset: 0x4db0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_3f2b5f5f5c66ddd3;
        // offset: 0x4dc8, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d fire_kills;
        // offset: 0x4df8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec special_weapon_levels;
        // offset: 0x4e10, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_3aade606855dd31b;
        // offset: 0x4e28, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d hash_1ceaeed13ab4546b;
        // offset: 0x4e58, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec player_returns;
        // offset: 0x4e70, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4c0d9457aef9aed2;
        // offset: 0x4e80, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_39fd6dba5e5b592f;
        // offset: 0x4ea8, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_11dc4c118b41495;
        // offset: 0x4ec0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_54df583b05e784c0;
        // offset: 0x4ee8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec leaderboardfailures;
        // offset: 0x4f00, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_53f2c142041511ec;
        // offset: 0x4f18, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_51b6a492525184b5;
        // offset: 0x4f30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec nowhere_but_there_revives;
        // offset: 0x4f48, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_7aecddb420d2f602;
        // offset: 0x4f70, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7f4d9be7afc10d0b;
        // offset: 0x4f88, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7f4d9ce7afc10ebe;
        // offset: 0x4fa0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7f4d9de7afc11071;
        // offset: 0x4fb8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec headshots;
        // offset: 0x4fd0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_224ecbf6d64681c1;
        // offset: 0x4fe8, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_4b723faebc6cb297;
        // offset: 0x4ff8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec teamkills;
        // offset: 0x5010, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_9d8677f2b8f6e88;
        // offset: 0x5030, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 hash_174d558bf59e241a;
        // offset: 0x5050, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3fa2584a22ebf623;
        // offset: 0x5068, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec use_pap;
        // offset: 0x5080, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_ef6105e1ae756e0;
        // offset: 0x5098, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4a0bf1a42205d8a1;
        // offset: 0x50b0, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_2dd97472bfdc1750;
        // offset: 0x50c8, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_65d7028060285fa0;
        // offset: 0x50f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec bowie_kills;
        // offset: 0x5108, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4d2a981a2583461e;
        // offset: 0x5120, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_20d6f7d2734b4bfa;
        // offset: 0x5148, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_20b572f2b9dab35;
        // offset: 0x5170, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1ae84a930b571902;
        // offset: 0x5188, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_4ec43679ab49c017;
        // offset: 0x51a0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_15a7d102d2edb893;
        // offset: 0x51c8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_307ac432179b93ba;
        // offset: 0x51d0, bitSize: 0x18(0x3 Byte(s))
        hash_7a45118e770e0c70 hash_681c57e8ca4bcdf3;
        // offset: 0x51e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec sessionbans;
        // offset: 0x5200, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_6077b7c41db3907a;
        // offset: 0x5208, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_2157c2e652a3a1e4;
        // offset: 0x5210, bitSize: 0x10(0x2 Byte(s))
        hash_298a7e7626f32fe0 hash_195bc77f835411ca;
        // offset: 0x5220, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec mappackmask;
        // offset: 0x5238, bitSize: 0x1
        bool hash_516183f89adeace1;
        // offset: 0x5239, bitSize: 0x1
        bool hash_41e6d91af864e15a;
    };

    // bitSize: 0x528, members: 121
    struct hash_6cef3682083171db {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte doors_purchased;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        short hits;
        // offset: 0x18, bitSize: 0x40(0x8 Byte(s))
        uint64 xuid;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        byte downs;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        int:7 drops;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:8 bgbs_chewed;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        byte kills;
        // offset: 0x78, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        int:7 wallbuy_weapons_purchased;
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        int:6 specialty_deadshot_drank;
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        int startingzone;
        // offset: 0xc8, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_brutus;
        // offset: 0xd0, bitSize: 0x8(0x1 Byte(s))
        int:8 catalyst_plasmas_killed;
        // offset: 0xd8, bitSize: 0x20(0x4 Byte(s))
        int time_played_total;
        // offset: 0xf8, bitSize: 0x8(0x1 Byte(s))
        int:8 gladiators_killed;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        int:5 power_turnedoff;
        // offset: 0x108, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_crimson_nosferatu;
        // offset: 0x110, bitSize: 0x8(0x1 Byte(s))
        int:8 nova_crawlers_killed;
        // offset: 0x118, bitSize: 0x20(0x4 Byte(s))
        int endingzone;
        // offset: 0x138, bitSize: 0x8(0x1 Byte(s))
        byte gumballoffered;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        int:4 hash_61ab9b1fe717c788;
        // offset: 0x148, bitSize: 0x8(0x1 Byte(s))
        int:6 specialty_fastreload_drank;
        // offset: 0x150, bitSize: 0x8(0x1 Byte(s))
        int:3 hash_6f146f46a0a2a22d;
        // offset: 0x158, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_gladiator;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_nosferatu;
        // offset: 0x168, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_stoker;
        // offset: 0x170, bitSize: 0x8(0x1 Byte(s))
        int:8 planted_buildables_pickedup;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        int:8 upgraded_ammo_purchased;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        int:6 hash_2cbf90cf690a2bf5;
        // offset: 0x188, bitSize: 0x10(0x2 Byte(s))
        short windowsboarded;
        // offset: 0x198, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_catalyst_plasma;
        // offset: 0x1a0, bitSize: 0x8(0x1 Byte(s))
        int:8 ammo_purchased;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_zdog;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        int:6 grabbed_from_magicbox;
        // offset: 0x1b8, bitSize: 0x8(0x1 Byte(s))
        int:6 hash_1730001079b9bb8b;
        // offset: 0x1c0, bitSize: 0x8(0x1 Byte(s))
        int:6 hash_1bcba3bbca05dee0;
        // offset: 0x1c8, bitSize: 0x20(0x4 Byte(s))
        uint scoreearned;
        // offset: 0x1e8, bitSize: 0x8(0x1 Byte(s))
        int:8 nosferatus_killed;
        // offset: 0x1f0, bitSize: 0x8(0x1 Byte(s))
        byte revives;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        byte special_weapon_used;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        int:8 catalyst_waters_killed;
        // offset: 0x208, bitSize: 0x8(0x1 Byte(s))
        byte wonder_weapon_kills;
        // offset: 0x210, bitSize: 0x8(0x1 Byte(s))
        int:7 claymores_pickedup;
        // offset: 0x218, bitSize: 0x20(0x4 Byte(s))
        uint scorespent;
        // offset: 0x238, bitSize: 0x8(0x1 Byte(s))
        int:8 sacrifices;
        // offset: 0x240, bitSize: 0x8(0x1 Byte(s))
        int:8 hash_1fe46d3f08c0f775;
        // offset: 0x248, bitSize: 0x8(0x1 Byte(s))
        byte perks_drank;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        byte grenade_kills;
        // offset: 0x258, bitSize: 0x8(0x1 Byte(s))
        int:5 power_turnedon;
        // offset: 0x260, bitSize: 0x8(0x1 Byte(s))
        int:7 ballistic_knives_pickedup;
        // offset: 0x268, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_catalyst_water;
        // offset: 0x270, bitSize: 0x8(0x1 Byte(s))
        int:8 zdogs_killed;
        // offset: 0x278, bitSize: 0x8(0x1 Byte(s))
        int:8 failed_revives;
        // offset: 0x280, bitSize: 0x8(0x1 Byte(s))
        int:5 hash_34b5c3e59fa8806;
        // offset: 0x288, bitSize: 0x8(0x1 Byte(s))
        int:4 nuke_pickedup;
        // offset: 0x290, bitSize: 0x8(0x1 Byte(s))
        int:8 failed_sacrifices;
        // offset: 0x298, bitSize: 0x8(0x1 Byte(s))
        int:4 double_points_pickedup;
        // offset: 0x2a0, bitSize: 0x8(0x1 Byte(s))
        int:4 hash_34a94a124319e4d8;
        // offset: 0x2a8, bitSize: 0x8(0x1 Byte(s))
        int:8 stokers_killed;
        // offset: 0x2b0, bitSize: 0x10(0x2 Byte(s))
        short hits_taken;
        // offset: 0x2c0, bitSize: 0x8(0x1 Byte(s))
        byte suicides;
        // offset: 0x2c8, bitSize: 0x8(0x1 Byte(s))
        int:7 buildables_built;
        // offset: 0x2d0, bitSize: 0x10(0x2 Byte(s))
        short gumballmachinetimedeciseconds;
        // offset: 0x2e0, bitSize: 0x8(0x1 Byte(s))
        int:8 tigers_killed;
        // offset: 0x2e8, bitSize: 0x8(0x1 Byte(s))
        int:8 catalysts_killed;
        // offset: 0x2f0, bitSize: 0x8(0x1 Byte(s))
        int:6 specialty_quickrevive_drank;
        // offset: 0x2f8, bitSize: 0x8(0x1 Byte(s))
        int:8 shields_purchased;
        // offset: 0x300, bitSize: 0x8(0x1 Byte(s))
        int:8 hash_20b9fe0537e68b52;
        // offset: 0x308, bitSize: 0x8(0x1 Byte(s))
        int:6 hash_537fbb0922d067e4;
        // offset: 0x310, bitSize: 0x8(0x1 Byte(s))
        int:6 specialty_etherealrazor_drank;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        int:6 specialty_additionalprimaryweapon_drank;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        int:8 blightfathers_killed;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        int:8 catalyst_corrosives_killed;
        // offset: 0x330, bitSize: 0x10(0x2 Byte(s))
        short boards;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_tiger;
        // offset: 0x348, bitSize: 0x8(0x1 Byte(s))
        byte deaths;
        // offset: 0x350, bitSize: 0x20(0x4 Byte(s))
        uint distance_traveled;
        // offset: 0x370, bitSize: 0x8(0x1 Byte(s))
        int:4 insta_kill_pickedup;
        // offset: 0x378, bitSize: 0x8(0x1 Byte(s))
        int:8 crimson_nosferatus_killed;
        // offset: 0x380, bitSize: 0x8(0x1 Byte(s))
        int:6 hash_3e81af6f59379d91;
        // offset: 0x388, bitSize: 0x8(0x1 Byte(s))
        byte gumballholding;
        // offset: 0x390, bitSize: 0x8(0x1 Byte(s))
        int:6 specialty_armorvest_drank;
        // offset: 0x398, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_nova_crawler;
        // offset: 0x3a0, bitSize: 0x10(0x2 Byte(s))
        short misses;
        // offset: 0x3b0, bitSize: 0x8(0x1 Byte(s))
        int:8 werewolves_killed;
        // offset: 0x3b8, bitSize: 0x8(0x1 Byte(s))
        int:7 claymores_planted;
        // offset: 0x3c0, bitSize: 0x8(0x1 Byte(s))
        int:8 bats_killed;
        // offset: 0x3c8, bitSize: 0x8(0x1 Byte(s))
        int:6 use_magicbox;
        // offset: 0x3d0, bitSize: 0x8(0x1 Byte(s))
        int:8 brutuses_killed;
        // offset: 0x3d8, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_blightfather;
        // offset: 0x3e0, bitSize: 0x8(0x1 Byte(s))
        int:4 carpenter_pickedup;
        // offset: 0x3e8, bitSize: 0x8(0x1 Byte(s))
        int:6 hash_62802f6702919d2a;
        // offset: 0x3f0, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_catalyst_corrosive;
        // offset: 0x3f8, bitSize: 0x8(0x1 Byte(s))
        byte melee_kills;
        // offset: 0x400, bitSize: 0x8(0x1 Byte(s))
        byte hash_6a1827943bd32f02;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        byte hash_6a1828943bd330b5;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        byte hash_6a1825943bd32b9c;
        // offset: 0x418, bitSize: 0x8(0x1 Byte(s))
        int:4 meat_stink_pickedup;
        // offset: 0x420, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_werewolf;
        // offset: 0x428, bitSize: 0x20(0x4 Byte(s))
        int gumballmachinex;
        // offset: 0x448, bitSize: 0x20(0x4 Byte(s))
        int gumballmachiney;
        // offset: 0x468, bitSize: 0x20(0x4 Byte(s))
        int gumballmachinez;
        // offset: 0x488, bitSize: 0x8(0x1 Byte(s))
        int:4 full_ammo_pickedup;
        // offset: 0x490, bitSize: 0x8(0x1 Byte(s))
        int:6 hash_7f79e7bd2aeb30df;
        // offset: 0x498, bitSize: 0x10(0x2 Byte(s))
        short total_shots;
        // offset: 0x4a8, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_catalyst_electric;
        // offset: 0x4b0, bitSize: 0x8(0x1 Byte(s))
        int:6 killed_by_catalyst;
        // offset: 0x4b8, bitSize: 0x8(0x1 Byte(s))
        int:6 hash_7f4d9be7afc10d0b;
        // offset: 0x4c0, bitSize: 0x8(0x1 Byte(s))
        int:6 hash_7f4d9ce7afc10ebe;
        // offset: 0x4c8, bitSize: 0x8(0x1 Byte(s))
        int:6 hash_7f4d9de7afc11071;
        // offset: 0x4d0, bitSize: 0x8(0x1 Byte(s))
        byte headshots;
        // offset: 0x4d8, bitSize: 0x8(0x1 Byte(s))
        byte hash_1625854dcdcd498b;
        // offset: 0x4e0, bitSize: 0x8(0x1 Byte(s))
        byte hash_1625844dcdcd47d8;
        // offset: 0x4e8, bitSize: 0x8(0x1 Byte(s))
        byte hash_1625874dcdcd4cf1;
        // offset: 0x4f0, bitSize: 0x8(0x1 Byte(s))
        int:6 use_pap;
        // offset: 0x4f8, bitSize: 0x20(0x4 Byte(s))
        uint hash_413781c59b1b3913;
        // offset: 0x518, bitSize: 0x8(0x1 Byte(s))
        int:8 catalyst_electrics_killed;
        // offset: 0x520, bitSize: 0x1
        bool gumballtaken;
        // offset: 0x521, bitSize: 0x1
        bool ghostball;
        // offset: 0x522, bitSize: 0x1
        bool gumballfiresale;
    };

    // bitSize: 0x33e0, members: 4
    struct hash_799ba263ba2ce91e {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        short numplayers;
        // offset: 0x10, bitSize: 0x3390(0x672 Byte(s)), array:0xa(hti:0xffff)
        hash_6cef3682083171db player[10];
        // offset: 0x33a0, bitSize: 0x20(0x4 Byte(s))
        int roundstart;
        // offset: 0x33c0, bitSize: 0x20(0x4 Byte(s))
        int roundend;
    };

    // bitSize: 0x80, members: 8
    struct hash_48cae9b9fcff7a5e {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        short hits;
        // offset: 0x10, bitSize: 0x10(0x2 Byte(s))
        uint:10 index;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0x40, bitSize: 0x10(0x2 Byte(s))
        short shots;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        byte deathsduringuse;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_36f7fa2d825ec851;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        short timeused;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        short headshots;
    };

    // bitSize: 0x5240, members: 1
    struct hash_19b7fd3ee0d97cf {
        // offset: 0x0, bitSize: 0x5240(0xa48 Byte(s))
        globalstats global_stats;
    };

    // bitSize: 0xf0, members: 7
    struct hash_70eb821ca470e26b {
        // offset: 0x0, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int event_pos[3];
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        uint:16 player_index;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        short event_type;
        // offset: 0x80, bitSize: 0x20(0x4 Byte(s))
        int optional1;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int optional2;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint time_ms;
        // offset: 0xe0, bitSize: 0x10(0x2 Byte(s))
        uint:16 round_num;
    };

    // bitSize: 0x9c48, members: 5
    struct hash_256aa27edf73c4fc {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte loadoutversion;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x10, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1110, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x1118, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
    };

    // bitSize: 0x6728, members: 117
    struct player {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint ip;
        // offset: 0x20, bitSize: 0x6d8(0xdb Byte(s))
        region_info dml;
        // offset: 0x6f8, bitSize: 0x40(0x8 Byte(s))
        uint64 dwid;
        // offset: 0x738, bitSize: 0x8(0x1 Byte(s))
        byte team;
        // offset: 0x740, bitSize: 0x20(0x4 Byte(s))
        int downs;
        // offset: 0x760, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x780, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0xffff)
        uint:16 hash_28e223b2b55169af[16];
        // offset: 0x880, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_catalyst_plasma;
        // offset: 0x8a0, bitSize: 0x20(0x4 Byte(s))
        uint boas_brutuses_killed;
        // offset: 0x8c0, bitSize: 0x20(0x4 Byte(s))
        uint hash_70237ccc7f5ac2e0;
        // offset: 0x8e0, bitSize: 0x20(0x4 Byte(s))
        uint boas_catalyst_corrosives_killed;
        // offset: 0x900, bitSize: 0x20(0x4 Byte(s))
        uint boas_boards;
        // offset: 0x920, bitSize: 0x20(0x4 Byte(s))
        uint boas_deaths;
        // offset: 0x940, bitSize: 0x20(0x4 Byte(s))
        uint hash_4fa2bc4e529eb995;
        // offset: 0x960, bitSize: 0x20(0x4 Byte(s))
        float skill_variance_start;
        // offset: 0x980, bitSize: 0x10(0x2 Byte(s))
        short currentdown;
        // offset: 0x990, bitSize: 0x20(0x4 Byte(s))
        uint boas_zdogs_killed;
        // offset: 0x9b0, bitSize: 0x20(0x4 Byte(s))
        uint boas_gladiators_killed;
        // offset: 0x9d0, bitSize: 0x20(0x4 Byte(s))
        uint boas_scoreearned;
        // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
        uint hash_3e428c87cd41cb83;
        // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
        float skill_rating_start;
        // offset: 0xa30, bitSize: 0x20(0x4 Byte(s))
        uint boas_use_pap;
        // offset: 0xa50, bitSize: 0x20(0x4 Byte(s))
        uint boas_nova_crawlers_killed;
        // offset: 0xa70, bitSize: 0x20(0x4 Byte(s))
        uint hash_25f563f42b385422;
        // offset: 0xa90, bitSize: 0x20(0x4 Byte(s))
        uint utc_connect_time_s;
        // offset: 0xab0, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_catalyst_water;
        // offset: 0xad0, bitSize: 0x20(0x4 Byte(s))
        uint connectivitybits;
        // offset: 0xaf0, bitSize: 0xc0(0x18 Byte(s))
        string(24) hash_ce47f1f62861550;
        // offset: 0xbb0, bitSize: 0x20(0x4 Byte(s))
        uint boas_doors_purchased;
        // offset: 0xbd0, bitSize: 0x20(0x4 Byte(s))
        uint boas_headshots;
        // offset: 0xbf0, bitSize: 0x20(0x4 Byte(s))
        uint hash_24f66fb1b7349954;
        // offset: 0xc10, bitSize: 0x20(0x4 Byte(s))
        uint start_xp;
        // offset: 0xc30, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_catalyst_electric;
        // offset: 0xc50, bitSize: 0x20(0x4 Byte(s))
        uint boas_nosferatus_killed;
        // offset: 0xc70, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_nova_crawler;
        // offset: 0xc90, bitSize: 0x20(0x4 Byte(s))
        uint hash_333f9fb8d403bc06;
        // offset: 0xcb0, bitSize: 0x4600(0x8c0 Byte(s)), array:0x8c(hti:0xffff)
        hash_48cae9b9fcff7a5e itembuffer[140];
        // offset: 0x52b0, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_blightfather;
        // offset: 0x52d0, bitSize: 0x20(0x4 Byte(s))
        uint boas_suicides;
        // offset: 0x52f0, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_gladiator;
        // offset: 0x5310, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_nosferatu;
        // offset: 0x5330, bitSize: 0x20(0x4 Byte(s))
        uint boas_distancesprinted;
        // offset: 0x5350, bitSize: 0x20(0x4 Byte(s))
        uint boas_windowsboarded;
        // offset: 0x5370, bitSize: 0x8(0x1 Byte(s))
        byte end_rank;
        // offset: 0x5378, bitSize: 0x78(0xf Byte(s))
        string(15) boas_gametype;
        // offset: 0x53f0, bitSize: 0x20(0x4 Byte(s))
        uint boas_ammo_purchased;
        // offset: 0x5410, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_zdog;
        // offset: 0x5430, bitSize: 0x8(0x1 Byte(s))
        hash_54196e9e9860f0be platform;
        // offset: 0x5438, bitSize: 0x20(0x4 Byte(s))
        uint boas_tigers_killed;
        // offset: 0x5458, bitSize: 0x10(0x2 Byte(s))
        short hash_ec4aea1a8bbd82;
        // offset: 0x5468, bitSize: 0x20(0x4 Byte(s))
        uint boas_revives;
        // offset: 0x5488, bitSize: 0x40(0x8 Byte(s))
        uint64 macaddress;
        // offset: 0x54c8, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_brutus;
        // offset: 0x54e8, bitSize: 0x20(0x4 Byte(s))
        uint boas_use_magicbox;
        // offset: 0x5508, bitSize: 0x20(0x4 Byte(s))
        int highest_multiplier;
        // offset: 0x5528, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_crimson_nosferatu;
        // offset: 0x5548, bitSize: 0x20(0x4 Byte(s))
        uint boas_special_weapon_used;
        // offset: 0x5568, bitSize: 0x20(0x4 Byte(s))
        uint boas_gamelength;
        // offset: 0x5588, bitSize: 0x100(0x20 Byte(s))
        string(32) consoleid64;
        // offset: 0x5688, bitSize: 0x20(0x4 Byte(s))
        uint boas_wonder_weapon_kills;
        // offset: 0x56a8, bitSize: 0x20(0x4 Byte(s))
        uint boas_crimson_nosferatus_killed;
        // offset: 0x56c8, bitSize: 0x20(0x4 Byte(s))
        uint boas_downs;
        // offset: 0x56e8, bitSize: 0x20(0x4 Byte(s))
        uint boas_drops;
        // offset: 0x5708, bitSize: 0x20(0x4 Byte(s))
        uint boas_kills;
        // offset: 0x5728, bitSize: 0x20(0x4 Byte(s))
        uint boas_score;
        // offset: 0x5748, bitSize: 0x20(0x4 Byte(s))
        uint boas_power_turnedon;
        // offset: 0x5768, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_stoker;
        // offset: 0x5788, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_catalyst_corrosive;
        // offset: 0x57a8, bitSize: 0x20(0x4 Byte(s))
        uint hash_383d2cb19f142aa4;
        // offset: 0x57c8, bitSize: 0x20(0x4 Byte(s))
        uint boas_hits;
        // offset: 0x57e8, bitSize: 0x8(0x1 Byte(s))
        byte hash_2b2e4e83da414b1e;
        // offset: 0x57f0, bitSize: 0x20(0x4 Byte(s))
        uint boas_failed_revives;
        // offset: 0x5810, bitSize: 0x40(0x8 Byte(s))
        xhash disconnect_reason;
        // offset: 0x5850, bitSize: 0x20(0x4 Byte(s))
        uint boas_shields_purchased;
        // offset: 0x5870, bitSize: 0x20(0x4 Byte(s))
        uint boas_bats_killed;
        // offset: 0x5890, bitSize: 0x20(0x4 Byte(s))
        float skill_rating;
        // offset: 0x58b0, bitSize: 0x20(0x4 Byte(s))
        uint hash_1e346898f291a01b;
        // offset: 0x58d0, bitSize: 0xa0(0x14 Byte(s))
        client_header client;
        // offset: 0x5970, bitSize: 0x20(0x4 Byte(s))
        uint hash_5a8ecc228e978012;
        // offset: 0x5990, bitSize: 0x20(0x4 Byte(s))
        uint end_xp;
        // offset: 0x59b0, bitSize: 0x8(0x1 Byte(s))
        uint:7 tier_boost;
        // offset: 0x59b8, bitSize: 0x8(0x1 Byte(s))
        byte prestige;
        // offset: 0x59c0, bitSize: 0x20(0x4 Byte(s))
        uint boas_catalyst_plasmas_killed;
        // offset: 0x59e0, bitSize: 0x20(0x4 Byte(s))
        uint boas_melee_kills;
        // offset: 0x5a00, bitSize: 0x20(0x4 Byte(s))
        uint boas_blightfathers_killed;
        // offset: 0x5a20, bitSize: 0x20(0x4 Byte(s))
        uint boas_stokers_killed;
        // offset: 0x5a40, bitSize: 0x20(0x4 Byte(s))
        uint boas_numzombierounds;
        // offset: 0x5a60, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_werewolf;
        // offset: 0x5a80, bitSize: 0x20(0x4 Byte(s))
        uint hash_1e9c704afc774d03;
        // offset: 0x5aa0, bitSize: 0x20(0x4 Byte(s))
        uint boas_scorespent;
        // offset: 0x5ac0, bitSize: 0x20(0x4 Byte(s))
        uint total_xp;
        // offset: 0x5ae0, bitSize: 0x20(0x4 Byte(s))
        uint boas_total_shots;
        // offset: 0x5b00, bitSize: 0x20(0x4 Byte(s))
        int upload;
        // offset: 0x5b20, bitSize: 0x20(0x4 Byte(s))
        uint boas_pap_weapon_not_grabbed;
        // offset: 0x5b40, bitSize: 0x20(0x4 Byte(s))
        uint partyid;
        // offset: 0x5b60, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_catalyst;
        // offset: 0x5b80, bitSize: 0x20(0x4 Byte(s))
        uint boas_werewolves_killed;
        // offset: 0x5ba0, bitSize: 0x20(0x4 Byte(s))
        uint boas_catalyst_electrics_killed;
        // offset: 0x5bc0, bitSize: 0x20(0x4 Byte(s))
        uint connectedbits;
        // offset: 0x5be0, bitSize: 0x20(0x4 Byte(s))
        uint utc_disconnect_time_s;
        // offset: 0x5c00, bitSize: 0x20(0x4 Byte(s))
        uint boas_catalyst_waters_killed;
        // offset: 0x5c20, bitSize: 0x20(0x4 Byte(s))
        uint boas_wallbuy_weapons_purchased;
        // offset: 0x5c40, bitSize: 0x40(0x8 Byte(s))
        uint64 connection_id;
        // offset: 0x5c80, bitSize: 0x9c0(0x138 Byte(s)), array:0x9c(hti:0xffff)
        uint:16 hash_4bb657eb94ad1948[156];
        // offset: 0x6640, bitSize: 0x20(0x4 Byte(s))
        float skill_variance;
        // offset: 0x6660, bitSize: 0x20(0x4 Byte(s))
        uint boas_bgbs_chewed;
        // offset: 0x6680, bitSize: 0x20(0x4 Byte(s))
        uint hash_6997820d1006e9e1;
        // offset: 0x66a0, bitSize: 0x20(0x4 Byte(s))
        uint boas_killed_by_tiger;
        // offset: 0x66c0, bitSize: 0x20(0x4 Byte(s))
        uint boas_hits_taken;
        // offset: 0x66e0, bitSize: 0x20(0x4 Byte(s))
        uint boas_grabbed_from_magicbox;
        // offset: 0x6700, bitSize: 0x20(0x4 Byte(s))
        uint boas_catalysts_killed;
        // offset: 0x6720, bitSize: 0x1
        bool hash_5c3a460a4b80bb21;
        // offset: 0x6721, bitSize: 0x1
        bool present_at_end;
        // offset: 0x6722, bitSize: 0x1
        bool boas_no_talisman;
        // offset: 0x6723, bitSize: 0x1
        bool is_bot;
        // offset: 0x6724, bitSize: 0x1
        bool playingonwifi;
    };

    // bitSize: 0x1b0, members: 12
    struct hash_2a7de7adde57550b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte player_index;
        // offset: 0x8, bitSize: 0x20(0x4 Byte(s))
        int hash_6e5b19c572681334;
        // offset: 0x28, bitSize: 0x20(0x4 Byte(s))
        int time_played_total;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        uint64 reviver_xuid;
        // offset: 0x88, bitSize: 0x10(0x2 Byte(s))
        short hash_67e7ffe4f1c4eb88;
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        int downzoneindex;
        // offset: 0xb8, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int hash_6301246c408b7b44[3];
        // offset: 0x118, bitSize: 0x10(0x2 Byte(s))
        short hash_3cad3313268b9d31;
        // offset: 0x128, bitSize: 0x20(0x4 Byte(s))
        int hash_7c5a630513a7bfd5;
        // offset: 0x148, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        int spawn_pos[3];
        // offset: 0x1a8, bitSize: 0x1
        bool died;
    };

    // bitSize: 0x4a8, members: 15
    struct hash_5117bce61a2e0fe3 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte hostmigrationcount;
        // offset: 0x8, bitSize: 0x78(0xf Byte(s))
        string(15) gametypegroup;
        // offset: 0x80, bitSize: 0x50(0xa Byte(s))
        string(10) maplocation;
        // offset: 0xd0, bitSize: 0x10(0x2 Byte(s))
        short hash_46963b574671801d;
        // offset: 0xe0, bitSize: 0x20(0x4 Byte(s))
        uint difficulty;
        // offset: 0x100, bitSize: 0x200(0x40 Byte(s))
        string(64) localtimestring;
        // offset: 0x300, bitSize: 0x40(0x8 Byte(s))
        uint64 matchhashlow;
        // offset: 0x340, bitSize: 0x10(0x2 Byte(s))
        short numzombierounds;
        // offset: 0x350, bitSize: 0x10(0x2 Byte(s))
        short mapeventscount;
        // offset: 0x360, bitSize: 0x40(0x8 Byte(s))
        uint64 demofileid;
        // offset: 0x3a0, bitSize: 0x78(0xf Byte(s))
        string(15) gametype;
        // offset: 0x418, bitSize: 0x40(0x8 Byte(s))
        uint64 matchhashhigh;
        // offset: 0x458, bitSize: 0x20(0x4 Byte(s))
        uint utcoffsetfromserver;
        // offset: 0x478, bitSize: 0x20(0x4 Byte(s))
        int networkprotocolversion;
        // offset: 0x498, bitSize: 0x10(0x2 Byte(s))
        short roundend;
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

    // idx 0x5 members: 0x8
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

    // idx 0x6 members: 0x3
    enum hash_6eb19cb9fcf5e143 {
        wingsuit, // 0x0
        parachute, // 0x1
        trail // 0x2
    };

    // idx 0x7 members: 0xc6
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

    // idx 0x8 members: 0x92
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

    // idx 0x9 members: 0xb
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

    // idx 0xa members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0xb members: 0x21
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        talent_deathperception_tier, // 0x2
        weapon_launcher_tier, // 0x3
        hash_e4ec67369bdd326, // 0x4
        talent_mulekick_tier, // 0x5
        toxic_growth_tier, // 0x6
        talent_deadshot_tier, // 0x7
        hash_1bb7d8d0caf94859, // 0x8
        hash_1f78483ef16f84d5, // 0x9
        lightning_links_tier, // 0xa
        weapon_knife_tier, // 0xb
        talent_phdslider_tier, // 0xc
        weapon_smg_tier, // 0xd
        talent_speedcola_tier, // 0xe
        heal_aoe_tier, // 0xf
        frost_blast_tier, // 0x10
        hash_38f1aae51e2d5f58, // 0x11
        hash_3908c184a5cbf339, // 0x12
        weapon_sniper_tier, // 0x13
        weapon_pistol_tier, // 0x14
        energy_mine_tier, // 0x15
        talent_quickrevive_tier, // 0x16
        ammomod_brainrot_tier, // 0x17
        weapon_lmg_tier, // 0x18
        ammomod_napalmburst_tier, // 0x19
        ring_of_fire_tier, // 0x1a
        hash_63114aea3939d941, // 0x1b
        ammomod_deadwire_tier, // 0x1c
        talent_elemental_pop_tier, // 0x1d
        talent_staminup_tier, // 0x1e
        weapon_tactical_tier, // 0x1f
        weapon_special_tier // 0x20
    };

    // idx 0xc members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x1f2a30, members: 47

    // offset: 0x0, bitSize: 0x100(0x20 Byte(s))
    string(32) map;
    // offset: 0x100, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x120, bitSize: 0x20(0x4 Byte(s))
    uint allies_score;
    // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
    byte player_count;
    // offset: 0x148, bitSize: 0x20(0x4 Byte(s))
    uint hash_7888f9b0e8c46d42;
    // offset: 0x168, bitSize: 0x20(0x4 Byte(s))
    int hash_20e770cec441c9f2;
    // offset: 0x188, bitSize: 0x20(0x4 Byte(s))
    int hash_20e46acec43f89e9;
    // offset: 0x1a8, bitSize: 0x40(0x8 Byte(s))
    uint64 match_id;
    // offset: 0x1e8, bitSize: 0x20(0x4 Byte(s))
    int server_frame_msec;
    // offset: 0x208, bitSize: 0x20(0x4 Byte(s))
    uint axis_score;
    // offset: 0x228, bitSize: 0x20(0x4 Byte(s))
    int gamelength;
    // offset: 0x248, bitSize: 0x57e40(0xafc8 Byte(s)), array:0x5dc(hti:0xffff)
    hash_70eb821ca470e26b mapevents[1500];
    // offset: 0x58088, bitSize: 0x380(0x70 Byte(s))
    telemetry_header telemetry;
    // offset: 0x58408, bitSize: 0x15180(0x2a30 Byte(s)), array:0xc8(hti:0xffff)
    hash_2a7de7adde57550b downbuffer[200];
    // offset: 0x6d588, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_4e397fa6657da523;
    // offset: 0x6d688, bitSize: 0x20(0x4 Byte(s))
    int hash_2678ed840a344d55;
    // offset: 0x6d6a8, bitSize: 0x8(0x1 Byte(s))
    byte player_count_end;
    // offset: 0x6d6b0, bitSize: 0x40(0x8 Byte(s))
    xhash game_type;
    // offset: 0x6d6f0, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_4270d43d00e554ea;
    // offset: 0x6d7f0, bitSize: 0x40(0x8 Byte(s))
    uint64 host_id;
    // offset: 0x6d830, bitSize: 0x20(0x4 Byte(s))
    uint hash_7baa59adf52de2d1;
    // offset: 0x6d850, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
    int compass_map_upper_left[3];
    // offset: 0x6d8b0, bitSize: 0x8(0x1 Byte(s))
    byte hash_53437329fef70258;
    // offset: 0x6d8b8, bitSize: 0x20(0x4 Byte(s))
    int playlist_id;
    // offset: 0x6d8d8, bitSize: 0x20(0x4 Byte(s))
    uint utc_end_time_s;
    // offset: 0x6d8f8, bitSize: 0x8(0x1 Byte(s))
    byte hash_63f745385e07b822;
    // offset: 0x6d900, bitSize: 0x20(0x4 Byte(s))
    uint utc_start_time_s;
    // offset: 0x6d920, bitSize: 0x8(0x1 Byte(s))
    byte player_count_start;
    // offset: 0x6d928, bitSize: 0x4a8(0x95 Byte(s))
    hash_5117bce61a2e0fe3 header;
    // offset: 0x6ddd0, bitSize: 0x40(0x8 Byte(s))
    xhash test_name;
    // offset: 0x6de10, bitSize: 0x20(0x4 Byte(s))
    int team_score;
    // offset: 0x6de30, bitSize: 0x20(0x4 Byte(s))
    uint breadcrumbs_total;
    // offset: 0x6de50, bitSize: 0x144380(0x28870 Byte(s)), array:0x64(hti:0xffff)
    hash_799ba263ba2ce91e rounds[100];
    // offset: 0x1b21d0, bitSize: 0x8(0x1 Byte(s))
    byte player_count_left;
    // offset: 0x1b21d8, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
    int compass_map_lower_right[3];
    // offset: 0x1b2238, bitSize: 0x20(0x4 Byte(s))
    int fastest_time_to_complete_round_30;
    // offset: 0x1b2258, bitSize: 0x40790(0x80f2 Byte(s)), array:0xa(hti:0xffff)
    player players[10];
    // offset: 0x1f29e8, bitSize: 0x20(0x4 Byte(s))
    uint duration_ms;
    // offset: 0x1f2a08, bitSize: 0x20(0x4 Byte(s))
    int ffotd_version;
    // offset: 0x1f2a28, bitSize: 0x1
    bool is_playtest;
    // offset: 0x1f2a29, bitSize: 0x1
    bool hash_74d0769494af24a9;
    // offset: 0x1f2a2a, bitSize: 0x1
    bool loadoutinitialized;
    // offset: 0x1f2a2b, bitSize: 0x1
    bool main_quest_completed;
    // offset: 0x1f2a2c, bitSize: 0x1
    bool is_private_match;
    // offset: 0x1f2a2d, bitSize: 0x1
    bool is_dedicated;
    // offset: 0x1f2a2e, bitSize: 0x1
    bool hash_9bb341c4fe5412b;
};

