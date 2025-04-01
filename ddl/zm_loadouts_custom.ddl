// file .... zm_loadouts_custom.ddl

#redirect hash_10bdfd8cb01adc89;

version hash_d42503081df5d533 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 93048 (0x16b78)
    // header byte size . 11631 (0x2d6f)

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
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0x108(0x21 Byte(s)), array:0x21(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2278, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23f0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x21
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

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16ac8, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc1e0(0x183c Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16ac0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_7e956438a53806a7 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 89912 (0x15f38)
    // header byte size . 11239 (0x2be7)

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

    // bitSize: 0x28, members: 2
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x20(0x4 Byte(s)), array:0x20(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x34, array:0x34(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2010, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1800(0x300 Byte(s)), array:0x20(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[32];
        // offset: 0x1810, bitSize: 0x800(0x100 Byte(s)), array:0x20(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[32];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
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
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:6 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:6 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
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

    // bitSize: 0xb5a0, members: 19
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bb8, bitSize: 0xc0(0x18 Byte(s)), array:0x18(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1c78, bitSize: 0x480(0x90 Byte(s)), array:0x6(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x20f8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2100, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2180, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xacb0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb530, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0xb570, bitSize: 0x28(0x5 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb598, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb599, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb59a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb59b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x20
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_digital_gambit_01, // 0x1
        wristaccessory_t9_s1_digital_inteculo_01, // 0x2
        wristaccessory_t9_s1_analog_brawler_01, // 0x3
        hash_1ccdff0ebb3ad612, // 0x4
        wristaccessory_t9_s1_analog_kremlin, // 0x5
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x6
        hash_25142303752f4324, // 0x7
        hash_25142503752f468a, // 0x8
        wristaccessory_t9_s1_analog_retroren_02, // 0x9
        wristaccessory_default, // 0xa
        wristaccessory_t9_s1_digital_kazuya_01, // 0xb
        wristaccessory_t9_s1_digital_diver, // 0xc
        wristaccessory_t9_s1_analog_bope_01, // 0xd
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0xe
        wristaccessory_t9_s1_analog_aviator_02, // 0xf
        wristaccessory_t9_s1_analog_horex_01, // 0x10
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x11
        hash_4fee76d1114701af, // 0x12
        wristaccessory_t9_s1_bracelet_skull_01, // 0x13
        wristaccessory_t9_s1_bracelet_01, // 0x14
        hash_575c967cd59c9145, // 0x15
        wristaccessory_t9_s1_analog_origin_01, // 0x16
        wristaccessory_t9_s1_analog_private_eye_03, // 0x17
        wristaccessory_t9_s1_analog_private_eye_02, // 0x18
        wristaccessory_t9_s1_analog_private_eye_01, // 0x19
        hash_636c300390323486, // 0x1a
        wristaccessory_t9_s1_digital_rank_01, // 0x1b
        hash_708a99620b81ea23, // 0x1c
        hash_708a9a620b81ebd6, // 0x1d
        wristaccessory_t9_s1_digital_compass_01, // 0x1e
        wristaccessory_t9_s1_digital_first_spy_01 // 0x1f
    };

    // idx 0x3 members: 0x34
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_132, // 0x6
        execution_133, // 0x7
        execution_130, // 0x8
        execution_136, // 0x9
        execution_135, // 0xa
        execution_129, // 0xb
        execution_124, // 0xc
        execution_127, // 0xd
        execution_126, // 0xe
        execution_121, // 0xf
        execution_120, // 0x10
        execution_123, // 0x11
        execution_099, // 0x12
        execution_029, // 0x13
        execution_020, // 0x14
        execution_021, // 0x15
        execution_022, // 0x16
        execution_024, // 0x17
        execution_025, // 0x18
        execution_026, // 0x19
        execution_027, // 0x1a
        execution_038, // 0x1b
        execution_033, // 0x1c
        execution_031, // 0x1d
        execution_030, // 0x1e
        execution_037, // 0x1f
        execution_036, // 0x20
        execution_034, // 0x21
        execution_007, // 0x22
        execution_004, // 0x23
        execution_005, // 0x24
        execution_002, // 0x25
        execution_003, // 0x26
        execution_001, // 0x27
        execution_010, // 0x28
        execution_013, // 0x29
        execution_015, // 0x2a
        execution_014, // 0x2b
        execution_017, // 0x2c
        execution_016, // 0x2d
        execution_018, // 0x2e
        execution_064, // 0x2f
        execution_066, // 0x30
        execution_062, // 0x31
        execution_048, // 0x32
        execution_051 // 0x33
    };

    // idx 0x4 members: 0x6
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_2db2176ba3a5b081, // 0x2
        hash_32a6681c2a6114e8, // 0x3
        hash_3be2180eba09e101, // 0x4
        hash_6b8377c83507a7f9 // 0x5
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x18
    enum upgradetiers {
        aether_shroud_tier, // 0x0
        hash_e4ec67369bdd326, // 0x1
        talent_deadshot_tier, // 0x2
        hash_1f78483ef16f84d5, // 0x3
        weapon_knife_tier, // 0x4
        hash_26e2a5c3f9bfe924, // 0x5
        weapon_smg_tier, // 0x6
        talent_speedcola_tier, // 0x7
        heal_aoe_tier, // 0x8
        frost_blast_tier, // 0x9
        hash_3908c184a5cbf339, // 0xa
        weapon_sniper_tier, // 0xb
        weapon_pistol_tier, // 0xc
        energy_mine_tier, // 0xd
        talent_quickrevive_tier, // 0xe
        ammomod_brainrot_tier, // 0xf
        weapon_lmg_tier, // 0x10
        ammomod_napalmburst_tier, // 0x11
        ring_of_fire_tier, // 0x12
        hash_63114aea3939d941, // 0x13
        ammomod_deadwire_tier, // 0x14
        talent_elemental_pop_tier, // 0x15
        talent_staminup_tier, // 0x16
        weapon_tactical_tier // 0x17
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x15e88, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb5a0(0x16b4 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x15e80, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_aff8b41014929473 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 89912 (0x15f38)
    // header byte size . 11239 (0x2be7)

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

    // bitSize: 0x28, members: 2
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x20(0x4 Byte(s)), array:0x20(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x34, array:0x34(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2010, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1800(0x300 Byte(s)), array:0x20(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[32];
        // offset: 0x1810, bitSize: 0x800(0x100 Byte(s)), array:0x20(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[32];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
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
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
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

    // bitSize: 0xb5a0, members: 19
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bb8, bitSize: 0xc0(0x18 Byte(s)), array:0x18(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1c78, bitSize: 0x480(0x90 Byte(s)), array:0x6(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x20f8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2100, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2180, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xacb0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb530, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0xb570, bitSize: 0x28(0x5 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb598, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb599, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb59a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb59b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x20
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_digital_gambit_01, // 0x1
        wristaccessory_t9_s1_digital_inteculo_01, // 0x2
        wristaccessory_t9_s1_analog_brawler_01, // 0x3
        hash_1ccdff0ebb3ad612, // 0x4
        wristaccessory_t9_s1_analog_kremlin, // 0x5
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x6
        hash_25142303752f4324, // 0x7
        hash_25142503752f468a, // 0x8
        wristaccessory_t9_s1_analog_retroren_02, // 0x9
        wristaccessory_default, // 0xa
        wristaccessory_t9_s1_digital_kazuya_01, // 0xb
        wristaccessory_t9_s1_digital_diver, // 0xc
        wristaccessory_t9_s1_analog_bope_01, // 0xd
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0xe
        wristaccessory_t9_s1_analog_aviator_02, // 0xf
        wristaccessory_t9_s1_analog_horex_01, // 0x10
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x11
        hash_4fee76d1114701af, // 0x12
        wristaccessory_t9_s1_bracelet_skull_01, // 0x13
        wristaccessory_t9_s1_bracelet_01, // 0x14
        hash_575c967cd59c9145, // 0x15
        wristaccessory_t9_s1_analog_origin_01, // 0x16
        wristaccessory_t9_s1_analog_private_eye_03, // 0x17
        wristaccessory_t9_s1_analog_private_eye_02, // 0x18
        wristaccessory_t9_s1_analog_private_eye_01, // 0x19
        hash_636c300390323486, // 0x1a
        wristaccessory_t9_s1_digital_rank_01, // 0x1b
        hash_708a99620b81ea23, // 0x1c
        hash_708a9a620b81ebd6, // 0x1d
        wristaccessory_t9_s1_digital_compass_01, // 0x1e
        wristaccessory_t9_s1_digital_first_spy_01 // 0x1f
    };

    // idx 0x3 members: 0x34
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_132, // 0x6
        execution_133, // 0x7
        execution_130, // 0x8
        execution_136, // 0x9
        execution_135, // 0xa
        execution_129, // 0xb
        execution_124, // 0xc
        execution_127, // 0xd
        execution_126, // 0xe
        execution_121, // 0xf
        execution_120, // 0x10
        execution_123, // 0x11
        execution_099, // 0x12
        execution_029, // 0x13
        execution_020, // 0x14
        execution_021, // 0x15
        execution_022, // 0x16
        execution_024, // 0x17
        execution_025, // 0x18
        execution_026, // 0x19
        execution_027, // 0x1a
        execution_038, // 0x1b
        execution_033, // 0x1c
        execution_031, // 0x1d
        execution_030, // 0x1e
        execution_037, // 0x1f
        execution_036, // 0x20
        execution_034, // 0x21
        execution_007, // 0x22
        execution_004, // 0x23
        execution_005, // 0x24
        execution_002, // 0x25
        execution_003, // 0x26
        execution_001, // 0x27
        execution_010, // 0x28
        execution_013, // 0x29
        execution_015, // 0x2a
        execution_014, // 0x2b
        execution_017, // 0x2c
        execution_016, // 0x2d
        execution_018, // 0x2e
        execution_064, // 0x2f
        execution_066, // 0x30
        execution_062, // 0x31
        execution_048, // 0x32
        execution_051 // 0x33
    };

    // idx 0x4 members: 0x6
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_2db2176ba3a5b081, // 0x2
        hash_32a6681c2a6114e8, // 0x3
        hash_3be2180eba09e101, // 0x4
        hash_6b8377c83507a7f9 // 0x5
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x18
    enum upgradetiers {
        aether_shroud_tier, // 0x0
        hash_e4ec67369bdd326, // 0x1
        talent_deadshot_tier, // 0x2
        hash_1f78483ef16f84d5, // 0x3
        weapon_knife_tier, // 0x4
        hash_26e2a5c3f9bfe924, // 0x5
        weapon_smg_tier, // 0x6
        talent_speedcola_tier, // 0x7
        heal_aoe_tier, // 0x8
        frost_blast_tier, // 0x9
        hash_3908c184a5cbf339, // 0xa
        weapon_sniper_tier, // 0xb
        weapon_pistol_tier, // 0xc
        energy_mine_tier, // 0xd
        talent_quickrevive_tier, // 0xe
        ammomod_brainrot_tier, // 0xf
        weapon_lmg_tier, // 0x10
        ammomod_napalmburst_tier, // 0x11
        ring_of_fire_tier, // 0x12
        hash_63114aea3939d941, // 0x13
        ammomod_deadwire_tier, // 0x14
        talent_elemental_pop_tier, // 0x15
        talent_staminup_tier, // 0x16
        weapon_tactical_tier // 0x17
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x15e88, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb5a0(0x16b4 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x15e80, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_ca9d4b907b7b7b28 {
    // enums ..... 7 (0x7)
    // structs ... 18 (0x12)
    // header bit size .. 84464 (0x149f0)
    // header byte size . 10558 (0x293e)

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

    // bitSize: 0x28, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x1d, array:0x1d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x38, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x2b, array:0x2b(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2010, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1800(0x300 Byte(s)), array:0x20(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[32];
        // offset: 0x1810, bitSize: 0x800(0x100 Byte(s)), array:0x20(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[32];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
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

    // bitSize: 0x320, members: 14
    struct hash_51ee933f6ee8ec54 {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:6 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:6 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x2f8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
        // offset: 0x300, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0x308, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0x318, bitSize: 0x1
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

    // bitSize: 0x7b0, members: 9
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
        // offset: 0x170, bitSize: 0x320(0x64 Byte(s))
        hash_51ee933f6ee8ec54 secondary;
        // offset: 0x490, bitSize: 0x320(0x64 Byte(s))
        hash_51ee933f6ee8ec54 primary;
    };

    // bitSize: 0xacd8, members: 18
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x40(0x8 Byte(s))
        charactercontext charactercontext;
        // offset: 0x58, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0x78, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xa78, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1b78, bitSize: 0xc0(0x18 Byte(s)), array:0x18(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1c38, bitSize: 0x480(0x90 Byte(s)), array:0x6(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x20b8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x20c0, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2140, bitSize: 0x82b0(0x1056 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xa3f0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xac70, bitSize: 0x38(0x7 Byte(s))
        execution execution;
        // offset: 0xaca8, bitSize: 0x28(0x5 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xacd0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xacd1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xacd2, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x1d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_digital_gambit_01, // 0x1
        wristaccessory_t9_s1_digital_inteculo_01, // 0x2
        wristaccessory_t9_s1_analog_brawler_01, // 0x3
        hash_1ccdff0ebb3ad612, // 0x4
        wristaccessory_t9_s1_analog_kremlin, // 0x5
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x6
        hash_25142303752f4324, // 0x7
        hash_25142503752f468a, // 0x8
        wristaccessory_t9_s1_analog_retroren_02, // 0x9
        wristaccessory_default, // 0xa
        wristaccessory_t9_s1_digital_kazuya_01, // 0xb
        wristaccessory_t9_s1_digital_diver, // 0xc
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0xd
        wristaccessory_t9_s1_analog_aviator_02, // 0xe
        wristaccessory_t9_s1_analog_horex_01, // 0xf
        hash_4fee76d1114701af, // 0x10
        wristaccessory_t9_s1_bracelet_skull_01, // 0x11
        wristaccessory_t9_s1_bracelet_01, // 0x12
        hash_575c967cd59c9145, // 0x13
        wristaccessory_t9_s1_analog_origin_01, // 0x14
        wristaccessory_t9_s1_analog_private_eye_03, // 0x15
        wristaccessory_t9_s1_analog_private_eye_02, // 0x16
        wristaccessory_t9_s1_analog_private_eye_01, // 0x17
        wristaccessory_t9_s1_digital_rank_01, // 0x18
        hash_708a99620b81ea23, // 0x19
        hash_708a9a620b81ebd6, // 0x1a
        wristaccessory_t9_s1_digital_compass_01, // 0x1b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x1c
    };

    // idx 0x3 members: 0x2b
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_132, // 0x6
        execution_133, // 0x7
        execution_130, // 0x8
        execution_136, // 0x9
        execution_135, // 0xa
        execution_129, // 0xb
        execution_124, // 0xc
        execution_127, // 0xd
        execution_126, // 0xe
        execution_121, // 0xf
        execution_120, // 0x10
        execution_123, // 0x11
        execution_099, // 0x12
        execution_029, // 0x13
        execution_020, // 0x14
        execution_021, // 0x15
        execution_022, // 0x16
        execution_024, // 0x17
        execution_025, // 0x18
        execution_026, // 0x19
        execution_038, // 0x1a
        execution_033, // 0x1b
        execution_030, // 0x1c
        execution_037, // 0x1d
        execution_036, // 0x1e
        execution_034, // 0x1f
        execution_007, // 0x20
        execution_004, // 0x21
        execution_005, // 0x22
        execution_002, // 0x23
        execution_001, // 0x24
        execution_014, // 0x25
        execution_017, // 0x26
        execution_018, // 0x27
        execution_066, // 0x28
        execution_062, // 0x29
        execution_048 // 0x2a
    };

    // idx 0x4 members: 0x6
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_2db2176ba3a5b081, // 0x2
        hash_32a6681c2a6114e8, // 0x3
        hash_3be2180eba09e101, // 0x4
        hash_6b8377c83507a7f9 // 0x5
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x18
    enum upgradetiers {
        aether_shroud_tier, // 0x0
        hash_e4ec67369bdd326, // 0x1
        talent_deadshot_tier, // 0x2
        hash_1f78483ef16f84d5, // 0x3
        weapon_knife_tier, // 0x4
        hash_26e2a5c3f9bfe924, // 0x5
        weapon_smg_tier, // 0x6
        talent_speedcola_tier, // 0x7
        heal_aoe_tier, // 0x8
        frost_blast_tier, // 0x9
        hash_3908c184a5cbf339, // 0xa
        weapon_sniper_tier, // 0xb
        weapon_pistol_tier, // 0xc
        energy_mine_tier, // 0xd
        talent_quickrevive_tier, // 0xe
        ammomod_brainrot_tier, // 0xf
        weapon_lmg_tier, // 0x10
        ammomod_napalmburst_tier, // 0x11
        ring_of_fire_tier, // 0x12
        hash_63114aea3939d941, // 0x13
        ammomod_deadwire_tier, // 0x14
        talent_elemental_pop_tier, // 0x15
        talent_staminup_tier, // 0x16
        weapon_tactical_tier // 0x17
    };

    // root: bitSize: 0x14940, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0x9c40(0x1388 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0x9c60, bitSize: 0xacd8(0x159b Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x14938, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_781656a1ad3d03a7 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 90320 (0x160d0)
    // header byte size . 11290 (0x2c1a)

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

    // bitSize: 0x38, members: 2
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x30(0x6 Byte(s)), array:0x30(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x34, array:0x34(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2010, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1800(0x300 Byte(s)), array:0x20(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[32];
        // offset: 0x1810, bitSize: 0x800(0x100 Byte(s)), array:0x20(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[32];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
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
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
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

    // bitSize: 0xb738, members: 19
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bb8, bitSize: 0xc8(0x19 Byte(s)), array:0x19(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1c80, bitSize: 0x600(0xc0 Byte(s)), array:0x8(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2280, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2288, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2308, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xae38, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb6b8, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0xb6f8, bitSize: 0x38(0x7 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb730, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb731, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb732, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb733, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x30
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        hash_41a46fee8bc2760, // 0x2
        hash_7b121e8fbe28e9a, // 0x3
        hash_f6d0fcf3180888b, // 0x4
        wristaccessory_t9_s1_digital_gambit_01, // 0x5
        wristaccessory_t9_s1_digital_inteculo_01, // 0x6
        wristaccessory_t9_s1_analog_brawler_01, // 0x7
        hash_1ccdff0ebb3ad612, // 0x8
        wristaccessory_t9_s1_analog_kremlin, // 0x9
        hash_207799341b37ad9e, // 0xa
        hash_20c87151807db74c, // 0xb
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0xc
        hash_23148a03a29fc4f8, // 0xd
        hash_25142303752f4324, // 0xe
        hash_25142503752f468a, // 0xf
        wristaccessory_t9_s1_analog_retroren_02, // 0x10
        wristaccessory_default, // 0x11
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x12
        hash_2f024205461e5edc, // 0x13
        wristaccessory_t9_s1_digital_kazuya_01, // 0x14
        hash_308ad8f9fd396d92, // 0x15
        wristaccessory_t9_s1_digital_diver, // 0x16
        wristaccessory_t9_s1_analog_bope_01, // 0x17
        hash_428539254336fec6, // 0x18
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x19
        wristaccessory_t9_s1_analog_aviator_02, // 0x1a
        wristaccessory_t9_s1_analog_horex_01, // 0x1b
        wristaccessory_t9_s1_analog_fancy, // 0x1c
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x1d
        hash_4fee76d1114701af, // 0x1e
        wristaccessory_t9_s1_bracelet_skull_01, // 0x1f
        wristaccessory_t9_s1_bracelet_01, // 0x20
        hash_55edd980d9d7fb58, // 0x21
        hash_575c967cd59c9145, // 0x22
        wristaccessory_t9_s1_analog_origin_01, // 0x23
        hash_6047ab0d37583ce5, // 0x24
        hash_6203a09a99728e2d, // 0x25
        wristaccessory_t9_s1_analog_private_eye_03, // 0x26
        wristaccessory_t9_s1_analog_private_eye_02, // 0x27
        wristaccessory_t9_s1_analog_private_eye_01, // 0x28
        hash_636c300390323486, // 0x29
        hash_6a1b78ca53c4838e, // 0x2a
        wristaccessory_t9_s1_digital_rank_01, // 0x2b
        hash_708a99620b81ea23, // 0x2c
        hash_708a9a620b81ebd6, // 0x2d
        wristaccessory_t9_s1_digital_compass_01, // 0x2e
        wristaccessory_t9_s1_digital_first_spy_01 // 0x2f
    };

    // idx 0x3 members: 0x34
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_132, // 0x6
        execution_133, // 0x7
        execution_130, // 0x8
        execution_136, // 0x9
        execution_135, // 0xa
        execution_129, // 0xb
        execution_124, // 0xc
        execution_127, // 0xd
        execution_126, // 0xe
        execution_121, // 0xf
        execution_120, // 0x10
        execution_123, // 0x11
        execution_099, // 0x12
        execution_029, // 0x13
        execution_020, // 0x14
        execution_021, // 0x15
        execution_022, // 0x16
        execution_024, // 0x17
        execution_025, // 0x18
        execution_026, // 0x19
        execution_027, // 0x1a
        execution_038, // 0x1b
        execution_033, // 0x1c
        execution_031, // 0x1d
        execution_030, // 0x1e
        execution_037, // 0x1f
        execution_036, // 0x20
        execution_034, // 0x21
        execution_007, // 0x22
        execution_004, // 0x23
        execution_005, // 0x24
        execution_002, // 0x25
        execution_003, // 0x26
        execution_001, // 0x27
        execution_010, // 0x28
        execution_013, // 0x29
        execution_015, // 0x2a
        execution_014, // 0x2b
        execution_017, // 0x2c
        execution_016, // 0x2d
        execution_018, // 0x2e
        execution_064, // 0x2f
        execution_066, // 0x30
        execution_062, // 0x31
        execution_048, // 0x32
        execution_051 // 0x33
    };

    // idx 0x4 members: 0x8
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3be2180eba09e101, // 0x5
        hash_6147e2b835fc3454, // 0x6
        hash_6b8377c83507a7f9 // 0x7
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x19
    enum upgradetiers {
        aether_shroud_tier, // 0x0
        hash_e4ec67369bdd326, // 0x1
        talent_deadshot_tier, // 0x2
        hash_1bb7d8d0caf94859, // 0x3
        hash_1f78483ef16f84d5, // 0x4
        weapon_knife_tier, // 0x5
        hash_26e2a5c3f9bfe924, // 0x6
        weapon_smg_tier, // 0x7
        talent_speedcola_tier, // 0x8
        heal_aoe_tier, // 0x9
        frost_blast_tier, // 0xa
        hash_3908c184a5cbf339, // 0xb
        weapon_sniper_tier, // 0xc
        weapon_pistol_tier, // 0xd
        energy_mine_tier, // 0xe
        talent_quickrevive_tier, // 0xf
        ammomod_brainrot_tier, // 0x10
        weapon_lmg_tier, // 0x11
        ammomod_napalmburst_tier, // 0x12
        ring_of_fire_tier, // 0x13
        hash_63114aea3939d941, // 0x14
        ammomod_deadwire_tier, // 0x15
        talent_elemental_pop_tier, // 0x16
        talent_staminup_tier, // 0x17
        weapon_tactical_tier // 0x18
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16020, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb738(0x16e7 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16018, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_b64dda6ad257249e {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 90320 (0x160d0)
    // header byte size . 11290 (0x2c1a)

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

    // bitSize: 0x38, members: 2
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x30(0x6 Byte(s)), array:0x30(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x34, array:0x34(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2010, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1800(0x300 Byte(s)), array:0x20(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[32];
        // offset: 0x1810, bitSize: 0x800(0x100 Byte(s)), array:0x20(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[32];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
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
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
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

    // bitSize: 0xb738, members: 19
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bb8, bitSize: 0xc8(0x19 Byte(s)), array:0x19(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1c80, bitSize: 0x600(0xc0 Byte(s)), array:0x8(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2280, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2288, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2308, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xae38, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb6b8, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0xb6f8, bitSize: 0x38(0x7 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb730, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb731, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb732, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb733, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x30
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        hash_41a46fee8bc2760, // 0x2
        hash_7b121e8fbe28e9a, // 0x3
        hash_f6d0fcf3180888b, // 0x4
        wristaccessory_t9_s1_digital_gambit_01, // 0x5
        wristaccessory_t9_s1_digital_inteculo_01, // 0x6
        wristaccessory_t9_s1_analog_brawler_01, // 0x7
        hash_1ccdff0ebb3ad612, // 0x8
        wristaccessory_t9_s1_analog_kremlin, // 0x9
        hash_207799341b37ad9e, // 0xa
        hash_20c87151807db74c, // 0xb
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0xc
        hash_23148a03a29fc4f8, // 0xd
        hash_25142303752f4324, // 0xe
        hash_25142503752f468a, // 0xf
        wristaccessory_t9_s1_analog_retroren_02, // 0x10
        wristaccessory_default, // 0x11
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x12
        hash_2f024205461e5edc, // 0x13
        wristaccessory_t9_s1_digital_kazuya_01, // 0x14
        hash_308ad8f9fd396d92, // 0x15
        wristaccessory_t9_s1_digital_diver, // 0x16
        wristaccessory_t9_s1_analog_bope_01, // 0x17
        hash_428539254336fec6, // 0x18
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x19
        wristaccessory_t9_s1_analog_aviator_02, // 0x1a
        wristaccessory_t9_s1_analog_horex_01, // 0x1b
        wristaccessory_t9_s1_analog_fancy, // 0x1c
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x1d
        hash_4fee76d1114701af, // 0x1e
        wristaccessory_t9_s1_bracelet_skull_01, // 0x1f
        wristaccessory_t9_s1_bracelet_01, // 0x20
        hash_55edd980d9d7fb58, // 0x21
        hash_575c967cd59c9145, // 0x22
        wristaccessory_t9_s1_analog_origin_01, // 0x23
        hash_6047ab0d37583ce5, // 0x24
        hash_6203a09a99728e2d, // 0x25
        wristaccessory_t9_s1_analog_private_eye_03, // 0x26
        wristaccessory_t9_s1_analog_private_eye_02, // 0x27
        wristaccessory_t9_s1_analog_private_eye_01, // 0x28
        hash_6a1b78ca53c4838e, // 0x29
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x2a
        wristaccessory_t9_s1_digital_rank_01, // 0x2b
        hash_708a99620b81ea23, // 0x2c
        hash_708a9a620b81ebd6, // 0x2d
        wristaccessory_t9_s1_digital_compass_01, // 0x2e
        wristaccessory_t9_s1_digital_first_spy_01 // 0x2f
    };

    // idx 0x3 members: 0x34
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_132, // 0x6
        execution_133, // 0x7
        execution_130, // 0x8
        execution_136, // 0x9
        execution_135, // 0xa
        execution_129, // 0xb
        execution_124, // 0xc
        execution_127, // 0xd
        execution_126, // 0xe
        execution_121, // 0xf
        execution_120, // 0x10
        execution_123, // 0x11
        execution_099, // 0x12
        execution_029, // 0x13
        execution_020, // 0x14
        execution_021, // 0x15
        execution_022, // 0x16
        execution_024, // 0x17
        execution_025, // 0x18
        execution_026, // 0x19
        execution_027, // 0x1a
        execution_038, // 0x1b
        execution_033, // 0x1c
        execution_031, // 0x1d
        execution_030, // 0x1e
        execution_037, // 0x1f
        execution_036, // 0x20
        execution_034, // 0x21
        execution_007, // 0x22
        execution_004, // 0x23
        execution_005, // 0x24
        execution_002, // 0x25
        execution_003, // 0x26
        execution_001, // 0x27
        execution_010, // 0x28
        execution_013, // 0x29
        execution_015, // 0x2a
        execution_014, // 0x2b
        execution_017, // 0x2c
        execution_016, // 0x2d
        execution_018, // 0x2e
        execution_064, // 0x2f
        execution_066, // 0x30
        execution_062, // 0x31
        execution_048, // 0x32
        execution_051 // 0x33
    };

    // idx 0x4 members: 0x8
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3be2180eba09e101, // 0x5
        hash_6147e2b835fc3454, // 0x6
        hash_6b8377c83507a7f9 // 0x7
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x19
    enum upgradetiers {
        aether_shroud_tier, // 0x0
        hash_e4ec67369bdd326, // 0x1
        talent_deadshot_tier, // 0x2
        hash_1bb7d8d0caf94859, // 0x3
        hash_1f78483ef16f84d5, // 0x4
        weapon_knife_tier, // 0x5
        hash_26e2a5c3f9bfe924, // 0x6
        weapon_smg_tier, // 0x7
        talent_speedcola_tier, // 0x8
        heal_aoe_tier, // 0x9
        frost_blast_tier, // 0xa
        hash_3908c184a5cbf339, // 0xb
        weapon_sniper_tier, // 0xc
        weapon_pistol_tier, // 0xd
        energy_mine_tier, // 0xe
        talent_quickrevive_tier, // 0xf
        ammomod_brainrot_tier, // 0x10
        weapon_lmg_tier, // 0x11
        ammomod_napalmburst_tier, // 0x12
        ring_of_fire_tier, // 0x13
        hash_63114aea3939d941, // 0x14
        ammomod_deadwire_tier, // 0x15
        talent_elemental_pop_tier, // 0x16
        talent_staminup_tier, // 0x17
        weapon_tactical_tier // 0x18
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16020, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb738(0x16e7 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16018, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_69bae4d0b38ccedf {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 90320 (0x160d0)
    // header byte size . 11290 (0x2c1a)

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

    // bitSize: 0x38, members: 2
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x30(0x6 Byte(s)), array:0x30(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x35, array:0x35(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2010, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1800(0x300 Byte(s)), array:0x20(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[32];
        // offset: 0x1810, bitSize: 0x800(0x100 Byte(s)), array:0x20(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[32];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
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
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
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

    // bitSize: 0xb738, members: 19
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bb8, bitSize: 0xc8(0x19 Byte(s)), array:0x19(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1c80, bitSize: 0x600(0xc0 Byte(s)), array:0x8(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2280, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2288, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2308, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xae38, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb6b8, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0xb6f8, bitSize: 0x38(0x7 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb730, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb731, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb732, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb733, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x30
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        hash_41a46fee8bc2760, // 0x2
        hash_7b121e8fbe28e9a, // 0x3
        hash_f6d0fcf3180888b, // 0x4
        wristaccessory_t9_s1_digital_gambit_01, // 0x5
        wristaccessory_t9_s1_digital_inteculo_01, // 0x6
        wristaccessory_t9_s1_analog_brawler_01, // 0x7
        hash_1ccdff0ebb3ad612, // 0x8
        wristaccessory_t9_s1_analog_kremlin, // 0x9
        hash_207799341b37ad9e, // 0xa
        hash_20c87151807db74c, // 0xb
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0xc
        hash_23148a03a29fc4f8, // 0xd
        hash_25142303752f4324, // 0xe
        hash_25142503752f468a, // 0xf
        wristaccessory_t9_s1_analog_retroren_02, // 0x10
        wristaccessory_default, // 0x11
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x12
        hash_2f024205461e5edc, // 0x13
        wristaccessory_t9_s1_digital_kazuya_01, // 0x14
        hash_308ad8f9fd396d92, // 0x15
        wristaccessory_t9_s1_digital_diver, // 0x16
        wristaccessory_t9_s1_analog_bope_01, // 0x17
        hash_428539254336fec6, // 0x18
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x19
        wristaccessory_t9_s1_analog_aviator_02, // 0x1a
        wristaccessory_t9_s1_analog_horex_01, // 0x1b
        wristaccessory_t9_s1_analog_fancy, // 0x1c
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x1d
        hash_4fee76d1114701af, // 0x1e
        wristaccessory_t9_s1_bracelet_skull_01, // 0x1f
        wristaccessory_t9_s1_bracelet_01, // 0x20
        hash_55edd980d9d7fb58, // 0x21
        hash_575c967cd59c9145, // 0x22
        wristaccessory_t9_s1_analog_origin_01, // 0x23
        hash_6047ab0d37583ce5, // 0x24
        hash_6203a09a99728e2d, // 0x25
        wristaccessory_t9_s1_analog_private_eye_03, // 0x26
        wristaccessory_t9_s1_analog_private_eye_02, // 0x27
        wristaccessory_t9_s1_analog_private_eye_01, // 0x28
        hash_6a1b78ca53c4838e, // 0x29
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x2a
        wristaccessory_t9_s1_digital_rank_01, // 0x2b
        hash_708a99620b81ea23, // 0x2c
        hash_708a9a620b81ebd6, // 0x2d
        wristaccessory_t9_s1_digital_compass_01, // 0x2e
        wristaccessory_t9_s1_digital_first_spy_01 // 0x2f
    };

    // idx 0x3 members: 0x35
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_132, // 0x6
        execution_133, // 0x7
        execution_130, // 0x8
        execution_136, // 0x9
        execution_137, // 0xa
        execution_135, // 0xb
        execution_129, // 0xc
        execution_124, // 0xd
        execution_127, // 0xe
        execution_126, // 0xf
        execution_121, // 0x10
        execution_120, // 0x11
        execution_123, // 0x12
        execution_099, // 0x13
        execution_029, // 0x14
        execution_020, // 0x15
        execution_021, // 0x16
        execution_022, // 0x17
        execution_024, // 0x18
        execution_025, // 0x19
        execution_026, // 0x1a
        execution_027, // 0x1b
        execution_038, // 0x1c
        execution_033, // 0x1d
        execution_031, // 0x1e
        execution_030, // 0x1f
        execution_037, // 0x20
        execution_036, // 0x21
        execution_034, // 0x22
        execution_007, // 0x23
        execution_004, // 0x24
        execution_005, // 0x25
        execution_002, // 0x26
        execution_003, // 0x27
        execution_001, // 0x28
        execution_010, // 0x29
        execution_013, // 0x2a
        execution_015, // 0x2b
        execution_014, // 0x2c
        execution_017, // 0x2d
        execution_016, // 0x2e
        execution_018, // 0x2f
        execution_064, // 0x30
        execution_066, // 0x31
        execution_062, // 0x32
        execution_048, // 0x33
        execution_051 // 0x34
    };

    // idx 0x4 members: 0x8
    enum hash_3ced56fc48a65743 {
        hash_9ce39fc243ede1a, // 0x0
        veh_t9_mil_boat_jetski_assembly, // 0x1
        hash_1fabb6398dc3abca, // 0x2
        hash_2db2176ba3a5b081, // 0x3
        hash_32a6681c2a6114e8, // 0x4
        hash_3be2180eba09e101, // 0x5
        hash_6147e2b835fc3454, // 0x6
        hash_6b8377c83507a7f9 // 0x7
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x19
    enum upgradetiers {
        aether_shroud_tier, // 0x0
        hash_e4ec67369bdd326, // 0x1
        talent_deadshot_tier, // 0x2
        hash_1bb7d8d0caf94859, // 0x3
        hash_1f78483ef16f84d5, // 0x4
        weapon_knife_tier, // 0x5
        hash_26e2a5c3f9bfe924, // 0x6
        weapon_smg_tier, // 0x7
        talent_speedcola_tier, // 0x8
        heal_aoe_tier, // 0x9
        frost_blast_tier, // 0xa
        hash_3908c184a5cbf339, // 0xb
        weapon_sniper_tier, // 0xc
        weapon_pistol_tier, // 0xd
        energy_mine_tier, // 0xe
        talent_quickrevive_tier, // 0xf
        ammomod_brainrot_tier, // 0x10
        weapon_lmg_tier, // 0x11
        ammomod_napalmburst_tier, // 0x12
        ring_of_fire_tier, // 0x13
        hash_63114aea3939d941, // 0x14
        ammomod_deadwire_tier, // 0x15
        talent_elemental_pop_tier, // 0x16
        talent_staminup_tier, // 0x17
        weapon_tactical_tier // 0x18
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16020, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb738(0x16e7 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16018, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_29a3e7d67c858426 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 90776 (0x16298)
    // header byte size . 11347 (0x2c53)

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

    // bitSize: 0x68, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x5c, array:0x5c(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x35, array:0x35(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
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
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
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

    // bitSize: 0xb900, members: 19
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bb8, bitSize: 0xe0(0x1c Byte(s)), array:0x1c(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1c98, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2418, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2420, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x24a0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xafd0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb850, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0xb890, bitSize: 0x68(0xd Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb8f8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb8f9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb8fa, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb8fb, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x5c
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_esports_rokkr_sy, // 0x5
        wristaccessory_t9_esports_rokkr_pc, // 0x6
        wristaccessory_t9_esports_rokkr_ms, // 0x7
        wristaccessory_t9_s2_analog_necro_king, // 0x8
        wristaccessory_t9_s2_digital_sforce, // 0x9
        wristaccessory_t9_s1_digital_gambit_01, // 0xa
        wristaccessory_t9_s1_digital_inteculo_01, // 0xb
        wristaccessory_t9_s1_analog_brawler_01, // 0xc
        hash_1ccdff0ebb3ad612, // 0xd
        wristaccessory_t9_s2_analog_jungle_aviator, // 0xe
        wristaccessory_t9_s1_analog_kremlin, // 0xf
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x10
        wristaccessory_t9_s2_analog_mortal, // 0x11
        wristaccessory_t9_esports_empire_ms, // 0x12
        wristaccessory_t9_esports_empire_pc, // 0x13
        wristaccessory_t9_esports_empire_sy, // 0x14
        hash_25142303752f4324, // 0x15
        hash_25142503752f468a, // 0x16
        wristaccessory_t9_s1_analog_retroren_02, // 0x17
        wristaccessory_default, // 0x18
        wristaccessory_t9_esports_royalravens_ms, // 0x19
        wristaccessory_t9_esports_royalravens_pc, // 0x1a
        wristaccessory_t9_esports_royalravens_sy, // 0x1b
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x1c
        wristaccessory_t9_s2_digital_mini_map, // 0x1d
        wristaccessory_t9_s1_digital_kazuya_01, // 0x1e
        wristaccessory_t9_s1_digital_diver, // 0x1f
        wristaccessory_t9_esports_thieves_ms, // 0x20
        wristaccessory_t9_esports_thieves_pc, // 0x21
        wristaccessory_t9_esports_thieves_sy, // 0x22
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x23
        wristaccessory_t9_s2_analog_naval_warfare, // 0x24
        wristaccessory_t9_esports_subliners_pc, // 0x25
        wristaccessory_t9_esports_subliners_sy, // 0x26
        wristaccessory_t9_esports_subliners_ms, // 0x27
        wristaccessory_t9_s2_analog_dark_aether, // 0x28
        wristaccessory_t9_s2_analog_mayan, // 0x29
        wristaccessory_t9_s1_analog_bope_01, // 0x2a
        wristaccessory_t9_esports_ultra_ms, // 0x2b
        wristaccessory_t9_esports_ultra_sy, // 0x2c
        wristaccessory_t9_esports_ultra_pc, // 0x2d
        wristaccessory_t9_s2_analog_paratroop, // 0x2e
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x2f
        wristaccessory_t9_s1_analog_aviator_02, // 0x30
        wristaccessory_t9_s1_analog_horex_01, // 0x31
        wristaccessory_t9_s1_analog_fancy, // 0x32
        wristaccessory_t9_esports_optic_ms, // 0x33
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x34
        wristaccessory_t9_esports_optic_sy, // 0x35
        wristaccessory_t9_esports_optic_pc, // 0x36
        wristaccessory_t9_s2_analog_rebel, // 0x37
        wristaccessory_t9_s2_analog_white_tiger, // 0x38
        wristaccessory_t9_s2_analog_caiman, // 0x39
        hash_4fee76d1114701af, // 0x3a
        wristaccessory_t9_s2_analog_broken_fancy, // 0x3b
        hash_511c7fa835d89891, // 0x3c
        wristaccessory_t9_s1_bracelet_skull_01, // 0x3d
        wristaccessory_t9_s1_bracelet_01, // 0x3e
        hash_575c967cd59c9145, // 0x3f
        wristaccessory_t9_esports_surge_sy, // 0x40
        wristaccessory_t9_esports_surge_pc, // 0x41
        wristaccessory_t9_esports_surge_ms, // 0x42
        wristaccessory_t9_esports_faze_ms, // 0x43
        wristaccessory_t9_esports_faze_pc, // 0x44
        wristaccessory_t9_esports_faze_sy, // 0x45
        wristaccessory_t9_s1_analog_origin_01, // 0x46
        wristaccessory_t9_esports_mutineers_pc, // 0x47
        wristaccessory_t9_esports_mutineers_sy, // 0x48
        wristaccessory_t9_esports_mutineers_ms, // 0x49
        wristaccessory_t9_s1_analog_private_eye_03, // 0x4a
        wristaccessory_t9_s1_analog_private_eye_02, // 0x4b
        wristaccessory_t9_s1_analog_private_eye_01, // 0x4c
        wristaccessory_t9_esports_guerillas_sy, // 0x4d
        wristaccessory_t9_esports_guerillas_pc, // 0x4e
        wristaccessory_t9_esports_guerillas_ms, // 0x4f
        wristaccessory_t9_s2_digital_river_slasher, // 0x50
        wristaccessory_t9_s2_bracelet_lure, // 0x51
        wristaccessory_t9_s2_analog_cold_hearted, // 0x52
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x53
        wristaccessory_t9_s1_digital_rank_01, // 0x54
        wristaccessory_t9_s2_digital_jade, // 0x55
        hash_708a99620b81ea23, // 0x56
        hash_708a9a620b81ebd6, // 0x57
        wristaccessory_t9_s2_analog_black_silver, // 0x58
        wristaccessory_t9_s2_analog_black_gold, // 0x59
        wristaccessory_t9_s1_digital_compass_01, // 0x5a
        wristaccessory_t9_s1_digital_first_spy_01 // 0x5b
    };

    // idx 0x3 members: 0x35
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_132, // 0x6
        execution_133, // 0x7
        execution_130, // 0x8
        execution_136, // 0x9
        execution_135, // 0xa
        execution_129, // 0xb
        execution_124, // 0xc
        execution_127, // 0xd
        execution_126, // 0xe
        execution_121, // 0xf
        execution_120, // 0x10
        execution_123, // 0x11
        execution_201, // 0x12
        execution_099, // 0x13
        execution_029, // 0x14
        execution_020, // 0x15
        execution_021, // 0x16
        execution_022, // 0x17
        execution_024, // 0x18
        execution_025, // 0x19
        execution_026, // 0x1a
        execution_027, // 0x1b
        execution_038, // 0x1c
        execution_033, // 0x1d
        execution_031, // 0x1e
        execution_030, // 0x1f
        execution_037, // 0x20
        execution_036, // 0x21
        execution_034, // 0x22
        execution_007, // 0x23
        execution_004, // 0x24
        execution_005, // 0x25
        execution_002, // 0x26
        execution_003, // 0x27
        execution_001, // 0x28
        execution_010, // 0x29
        execution_013, // 0x2a
        execution_015, // 0x2b
        execution_014, // 0x2c
        execution_017, // 0x2d
        execution_016, // 0x2e
        execution_018, // 0x2f
        execution_064, // 0x30
        execution_066, // 0x31
        execution_062, // 0x32
        execution_048, // 0x33
        execution_051 // 0x34
    };

    // idx 0x4 members: 0xa
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
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1c
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_deadshot_tier, // 0x4
        hash_1bb7d8d0caf94859, // 0x5
        hash_1f78483ef16f84d5, // 0x6
        weapon_knife_tier, // 0x7
        weapon_smg_tier, // 0x8
        talent_speedcola_tier, // 0x9
        heal_aoe_tier, // 0xa
        frost_blast_tier, // 0xb
        hash_38f1aae51e2d5f58, // 0xc
        hash_3908c184a5cbf339, // 0xd
        weapon_sniper_tier, // 0xe
        weapon_pistol_tier, // 0xf
        energy_mine_tier, // 0x10
        talent_quickrevive_tier, // 0x11
        ammomod_brainrot_tier, // 0x12
        weapon_lmg_tier, // 0x13
        ammomod_napalmburst_tier, // 0x14
        ring_of_fire_tier, // 0x15
        hash_63114aea3939d941, // 0x16
        ammomod_deadwire_tier, // 0x17
        talent_elemental_pop_tier, // 0x18
        talent_staminup_tier, // 0x19
        weapon_tactical_tier, // 0x1a
        weapon_special_tier // 0x1b
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x161e8, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb900(0x1720 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x161e0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_b22939a1af20017c {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 90776 (0x16298)
    // header byte size . 11347 (0x2c53)

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

    // bitSize: 0x68, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x5d, array:0x5d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x37, array:0x37(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
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
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
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

    // bitSize: 0xb900, members: 19
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bb8, bitSize: 0xe0(0x1c Byte(s)), array:0x1c(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1c98, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2418, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2420, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x24a0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xafd0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb850, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0xb890, bitSize: 0x68(0xd Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb8f8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb8f9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb8fa, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb8fb, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x5d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_esports_rokkr_sy, // 0x5
        wristaccessory_t9_esports_rokkr_pc, // 0x6
        wristaccessory_t9_esports_rokkr_ms, // 0x7
        wristaccessory_t9_s2_analog_necro_king, // 0x8
        wristaccessory_t9_s2_digital_sforce, // 0x9
        wristaccessory_t9_s1_digital_gambit_01, // 0xa
        wristaccessory_t9_s1_digital_inteculo_01, // 0xb
        wristaccessory_t9_s1_analog_brawler_01, // 0xc
        hash_1ccdff0ebb3ad612, // 0xd
        wristaccessory_t9_s2_analog_jungle_aviator, // 0xe
        wristaccessory_t9_s1_analog_kremlin, // 0xf
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x10
        wristaccessory_t9_s2_analog_mortal, // 0x11
        wristaccessory_t9_esports_empire_ms, // 0x12
        wristaccessory_t9_esports_empire_pc, // 0x13
        wristaccessory_t9_esports_empire_sy, // 0x14
        hash_25142303752f4324, // 0x15
        hash_25142503752f468a, // 0x16
        wristaccessory_t9_s1_analog_retroren_02, // 0x17
        wristaccessory_default, // 0x18
        wristaccessory_t9_esports_royalravens_ms, // 0x19
        wristaccessory_t9_esports_royalravens_pc, // 0x1a
        wristaccessory_t9_esports_royalravens_sy, // 0x1b
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x1c
        wristaccessory_t9_s2_digital_mini_map, // 0x1d
        wristaccessory_t9_s1_digital_kazuya_01, // 0x1e
        wristaccessory_t9_s2_digital_mayan, // 0x1f
        wristaccessory_t9_s1_digital_diver, // 0x20
        wristaccessory_t9_esports_thieves_ms, // 0x21
        wristaccessory_t9_esports_thieves_pc, // 0x22
        wristaccessory_t9_esports_thieves_sy, // 0x23
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x24
        wristaccessory_t9_s2_analog_naval_warfare, // 0x25
        wristaccessory_t9_esports_subliners_pc, // 0x26
        wristaccessory_t9_esports_subliners_sy, // 0x27
        wristaccessory_t9_esports_subliners_ms, // 0x28
        wristaccessory_t9_s2_analog_dark_aether, // 0x29
        wristaccessory_t9_s2_analog_mayan, // 0x2a
        wristaccessory_t9_s1_analog_bope_01, // 0x2b
        wristaccessory_t9_esports_ultra_ms, // 0x2c
        wristaccessory_t9_esports_ultra_sy, // 0x2d
        wristaccessory_t9_esports_ultra_pc, // 0x2e
        wristaccessory_t9_s2_analog_paratroop, // 0x2f
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x30
        wristaccessory_t9_s1_analog_aviator_02, // 0x31
        wristaccessory_t9_s1_analog_horex_01, // 0x32
        wristaccessory_t9_s1_analog_fancy, // 0x33
        wristaccessory_t9_esports_optic_ms, // 0x34
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x35
        wristaccessory_t9_esports_optic_sy, // 0x36
        wristaccessory_t9_esports_optic_pc, // 0x37
        wristaccessory_t9_s2_analog_rebel, // 0x38
        wristaccessory_t9_s2_analog_white_tiger, // 0x39
        wristaccessory_t9_s2_analog_caiman, // 0x3a
        hash_4fee76d1114701af, // 0x3b
        wristaccessory_t9_s2_analog_broken_fancy, // 0x3c
        hash_511c7fa835d89891, // 0x3d
        wristaccessory_t9_s1_bracelet_skull_01, // 0x3e
        wristaccessory_t9_s1_bracelet_01, // 0x3f
        hash_575c967cd59c9145, // 0x40
        wristaccessory_t9_esports_surge_sy, // 0x41
        wristaccessory_t9_esports_surge_pc, // 0x42
        wristaccessory_t9_esports_surge_ms, // 0x43
        wristaccessory_t9_esports_faze_ms, // 0x44
        wristaccessory_t9_esports_faze_pc, // 0x45
        wristaccessory_t9_esports_faze_sy, // 0x46
        wristaccessory_t9_s1_analog_origin_01, // 0x47
        wristaccessory_t9_esports_mutineers_pc, // 0x48
        wristaccessory_t9_esports_mutineers_sy, // 0x49
        wristaccessory_t9_esports_mutineers_ms, // 0x4a
        wristaccessory_t9_s1_analog_private_eye_03, // 0x4b
        wristaccessory_t9_s1_analog_private_eye_02, // 0x4c
        wristaccessory_t9_s1_analog_private_eye_01, // 0x4d
        wristaccessory_t9_esports_guerillas_sy, // 0x4e
        wristaccessory_t9_esports_guerillas_pc, // 0x4f
        wristaccessory_t9_esports_guerillas_ms, // 0x50
        wristaccessory_t9_s2_digital_river_slasher, // 0x51
        wristaccessory_t9_s2_bracelet_lure, // 0x52
        wristaccessory_t9_s2_analog_cold_hearted, // 0x53
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x54
        wristaccessory_t9_s1_digital_rank_01, // 0x55
        wristaccessory_t9_s2_digital_jade, // 0x56
        hash_708a99620b81ea23, // 0x57
        hash_708a9a620b81ebd6, // 0x58
        wristaccessory_t9_s2_analog_black_silver, // 0x59
        wristaccessory_t9_s2_analog_black_gold, // 0x5a
        wristaccessory_t9_s1_digital_compass_01, // 0x5b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x5c
    };

    // idx 0x3 members: 0x37
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_138, // 0x6
        execution_139, // 0x7
        execution_132, // 0x8
        execution_133, // 0x9
        execution_130, // 0xa
        execution_136, // 0xb
        execution_135, // 0xc
        execution_129, // 0xd
        execution_124, // 0xe
        execution_127, // 0xf
        execution_126, // 0x10
        execution_121, // 0x11
        execution_120, // 0x12
        execution_123, // 0x13
        execution_201, // 0x14
        execution_099, // 0x15
        execution_029, // 0x16
        execution_020, // 0x17
        execution_021, // 0x18
        execution_022, // 0x19
        execution_024, // 0x1a
        execution_025, // 0x1b
        execution_026, // 0x1c
        execution_027, // 0x1d
        execution_038, // 0x1e
        execution_033, // 0x1f
        execution_031, // 0x20
        execution_030, // 0x21
        execution_037, // 0x22
        execution_036, // 0x23
        execution_034, // 0x24
        execution_007, // 0x25
        execution_004, // 0x26
        execution_005, // 0x27
        execution_002, // 0x28
        execution_003, // 0x29
        execution_001, // 0x2a
        execution_010, // 0x2b
        execution_013, // 0x2c
        execution_015, // 0x2d
        execution_014, // 0x2e
        execution_017, // 0x2f
        execution_016, // 0x30
        execution_018, // 0x31
        execution_064, // 0x32
        execution_066, // 0x33
        execution_062, // 0x34
        execution_048, // 0x35
        execution_051 // 0x36
    };

    // idx 0x4 members: 0xa
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
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1c
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_deadshot_tier, // 0x4
        hash_1bb7d8d0caf94859, // 0x5
        hash_1f78483ef16f84d5, // 0x6
        weapon_knife_tier, // 0x7
        weapon_smg_tier, // 0x8
        talent_speedcola_tier, // 0x9
        heal_aoe_tier, // 0xa
        frost_blast_tier, // 0xb
        hash_38f1aae51e2d5f58, // 0xc
        hash_3908c184a5cbf339, // 0xd
        weapon_sniper_tier, // 0xe
        weapon_pistol_tier, // 0xf
        energy_mine_tier, // 0x10
        talent_quickrevive_tier, // 0x11
        ammomod_brainrot_tier, // 0x12
        weapon_lmg_tier, // 0x13
        ammomod_napalmburst_tier, // 0x14
        ring_of_fire_tier, // 0x15
        hash_63114aea3939d941, // 0x16
        ammomod_deadwire_tier, // 0x17
        talent_elemental_pop_tier, // 0x18
        talent_staminup_tier, // 0x19
        weapon_tactical_tier, // 0x1a
        weapon_special_tier // 0x1b
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x161e8, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb900(0x1720 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x161e0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_a90b3fa1ae806764 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 90776 (0x16298)
    // header byte size . 11347 (0x2c53)

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

    // bitSize: 0x68, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x5d, array:0x5d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x40, members: 2
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x38(0x7 Byte(s)), array:0x38(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
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
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
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

    // bitSize: 0xb900, members: 19
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bb8, bitSize: 0xe0(0x1c Byte(s)), array:0x1c(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1c98, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2418, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2420, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x24a0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xafd0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb850, bitSize: 0x40(0x8 Byte(s))
        execution execution;
        // offset: 0xb890, bitSize: 0x68(0xd Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb8f8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb8f9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb8fa, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb8fb, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x5d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_esports_rokkr_sy, // 0x5
        wristaccessory_t9_esports_rokkr_pc, // 0x6
        wristaccessory_t9_esports_rokkr_ms, // 0x7
        wristaccessory_t9_s2_analog_necro_king, // 0x8
        wristaccessory_t9_s2_digital_sforce, // 0x9
        wristaccessory_t9_s1_digital_gambit_01, // 0xa
        wristaccessory_t9_s1_digital_inteculo_01, // 0xb
        wristaccessory_t9_s1_analog_brawler_01, // 0xc
        hash_1ccdff0ebb3ad612, // 0xd
        wristaccessory_t9_s2_analog_jungle_aviator, // 0xe
        wristaccessory_t9_s1_analog_kremlin, // 0xf
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x10
        wristaccessory_t9_s2_analog_mortal, // 0x11
        wristaccessory_t9_esports_empire_ms, // 0x12
        wristaccessory_t9_esports_empire_pc, // 0x13
        wristaccessory_t9_esports_empire_sy, // 0x14
        hash_25142303752f4324, // 0x15
        hash_25142503752f468a, // 0x16
        wristaccessory_t9_s1_analog_retroren_02, // 0x17
        wristaccessory_default, // 0x18
        wristaccessory_t9_esports_royalravens_ms, // 0x19
        wristaccessory_t9_esports_royalravens_pc, // 0x1a
        wristaccessory_t9_esports_royalravens_sy, // 0x1b
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x1c
        wristaccessory_t9_s2_digital_mini_map, // 0x1d
        wristaccessory_t9_s1_digital_kazuya_01, // 0x1e
        wristaccessory_t9_s2_digital_mayan, // 0x1f
        wristaccessory_t9_s1_digital_diver, // 0x20
        wristaccessory_t9_esports_thieves_ms, // 0x21
        wristaccessory_t9_esports_thieves_pc, // 0x22
        wristaccessory_t9_esports_thieves_sy, // 0x23
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x24
        wristaccessory_t9_s2_analog_naval_warfare, // 0x25
        wristaccessory_t9_esports_subliners_pc, // 0x26
        wristaccessory_t9_esports_subliners_sy, // 0x27
        wristaccessory_t9_esports_subliners_ms, // 0x28
        wristaccessory_t9_s2_analog_dark_aether, // 0x29
        wristaccessory_t9_s2_analog_mayan, // 0x2a
        wristaccessory_t9_s1_analog_bope_01, // 0x2b
        wristaccessory_t9_esports_ultra_ms, // 0x2c
        wristaccessory_t9_esports_ultra_sy, // 0x2d
        wristaccessory_t9_esports_ultra_pc, // 0x2e
        wristaccessory_t9_s2_analog_paratroop, // 0x2f
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x30
        wristaccessory_t9_s1_analog_aviator_02, // 0x31
        wristaccessory_t9_s1_analog_horex_01, // 0x32
        wristaccessory_t9_s1_analog_fancy, // 0x33
        wristaccessory_t9_esports_optic_ms, // 0x34
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x35
        wristaccessory_t9_esports_optic_sy, // 0x36
        wristaccessory_t9_esports_optic_pc, // 0x37
        wristaccessory_t9_s2_analog_rebel, // 0x38
        wristaccessory_t9_s2_analog_white_tiger, // 0x39
        wristaccessory_t9_s2_analog_caiman, // 0x3a
        hash_4fee76d1114701af, // 0x3b
        wristaccessory_t9_s2_analog_broken_fancy, // 0x3c
        hash_511c7fa835d89891, // 0x3d
        wristaccessory_t9_s1_bracelet_skull_01, // 0x3e
        wristaccessory_t9_s1_bracelet_01, // 0x3f
        hash_575c967cd59c9145, // 0x40
        wristaccessory_t9_esports_surge_sy, // 0x41
        wristaccessory_t9_esports_surge_pc, // 0x42
        wristaccessory_t9_esports_surge_ms, // 0x43
        wristaccessory_t9_esports_faze_ms, // 0x44
        wristaccessory_t9_esports_faze_pc, // 0x45
        wristaccessory_t9_esports_faze_sy, // 0x46
        wristaccessory_t9_s1_analog_origin_01, // 0x47
        wristaccessory_t9_esports_mutineers_pc, // 0x48
        wristaccessory_t9_esports_mutineers_sy, // 0x49
        wristaccessory_t9_esports_mutineers_ms, // 0x4a
        wristaccessory_t9_s1_analog_private_eye_03, // 0x4b
        wristaccessory_t9_s1_analog_private_eye_02, // 0x4c
        wristaccessory_t9_s1_analog_private_eye_01, // 0x4d
        wristaccessory_t9_esports_guerillas_sy, // 0x4e
        wristaccessory_t9_esports_guerillas_pc, // 0x4f
        wristaccessory_t9_esports_guerillas_ms, // 0x50
        wristaccessory_t9_s2_digital_river_slasher, // 0x51
        wristaccessory_t9_s2_bracelet_lure, // 0x52
        wristaccessory_t9_s2_analog_cold_hearted, // 0x53
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x54
        wristaccessory_t9_s1_digital_rank_01, // 0x55
        wristaccessory_t9_s2_digital_jade, // 0x56
        hash_708a99620b81ea23, // 0x57
        hash_708a9a620b81ebd6, // 0x58
        wristaccessory_t9_s2_analog_black_silver, // 0x59
        wristaccessory_t9_s2_analog_black_gold, // 0x5a
        wristaccessory_t9_s1_digital_compass_01, // 0x5b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x5c
    };

    // idx 0x3 members: 0x38
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_138, // 0x6
        execution_139, // 0x7
        execution_132, // 0x8
        execution_133, // 0x9
        execution_130, // 0xa
        execution_136, // 0xb
        execution_135, // 0xc
        execution_129, // 0xd
        execution_124, // 0xe
        execution_127, // 0xf
        execution_126, // 0x10
        execution_121, // 0x11
        execution_120, // 0x12
        execution_123, // 0x13
        execution_201, // 0x14
        execution_099, // 0x15
        execution_029, // 0x16
        execution_020, // 0x17
        execution_021, // 0x18
        execution_022, // 0x19
        execution_024, // 0x1a
        execution_025, // 0x1b
        execution_026, // 0x1c
        execution_027, // 0x1d
        execution_038, // 0x1e
        execution_033, // 0x1f
        execution_031, // 0x20
        execution_030, // 0x21
        execution_037, // 0x22
        execution_036, // 0x23
        execution_034, // 0x24
        execution_007, // 0x25
        execution_004, // 0x26
        execution_005, // 0x27
        execution_002, // 0x28
        execution_003, // 0x29
        execution_001, // 0x2a
        execution_010, // 0x2b
        execution_013, // 0x2c
        execution_015, // 0x2d
        execution_014, // 0x2e
        execution_017, // 0x2f
        execution_016, // 0x30
        execution_018, // 0x31
        execution_064, // 0x32
        execution_066, // 0x33
        execution_062, // 0x34
        execution_048, // 0x35
        execution_058, // 0x36
        execution_051 // 0x37
    };

    // idx 0x4 members: 0xa
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
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1c
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_deadshot_tier, // 0x4
        hash_1bb7d8d0caf94859, // 0x5
        hash_1f78483ef16f84d5, // 0x6
        weapon_knife_tier, // 0x7
        weapon_smg_tier, // 0x8
        talent_speedcola_tier, // 0x9
        heal_aoe_tier, // 0xa
        frost_blast_tier, // 0xb
        hash_38f1aae51e2d5f58, // 0xc
        hash_3908c184a5cbf339, // 0xd
        weapon_sniper_tier, // 0xe
        weapon_pistol_tier, // 0xf
        energy_mine_tier, // 0x10
        talent_quickrevive_tier, // 0x11
        ammomod_brainrot_tier, // 0x12
        weapon_lmg_tier, // 0x13
        ammomod_napalmburst_tier, // 0x14
        ring_of_fire_tier, // 0x15
        hash_63114aea3939d941, // 0x16
        ammomod_deadwire_tier, // 0x17
        talent_elemental_pop_tier, // 0x18
        talent_staminup_tier, // 0x19
        weapon_tactical_tier, // 0x1a
        weapon_special_tier // 0x1b
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x161e8, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb900(0x1720 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x161e0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_c2d5dd32dc4a0752 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 90784 (0x162a0)
    // header byte size . 11348 (0x2c54)

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

    // bitSize: 0x68, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x5d, array:0x5d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x48, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x39, array:0x39(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
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
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
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

    // bitSize: 0xb908, members: 19
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bb8, bitSize: 0xe0(0x1c Byte(s)), array:0x1c(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1c98, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2418, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2420, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x24a0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xafd0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb850, bitSize: 0x48(0x9 Byte(s))
        execution execution;
        // offset: 0xb898, bitSize: 0x68(0xd Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb900, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb901, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb902, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb903, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x5d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_esports_rokkr_sy, // 0x5
        wristaccessory_t9_esports_rokkr_pc, // 0x6
        wristaccessory_t9_esports_rokkr_ms, // 0x7
        wristaccessory_t9_s2_analog_necro_king, // 0x8
        wristaccessory_t9_s2_digital_sforce, // 0x9
        wristaccessory_t9_s1_digital_gambit_01, // 0xa
        wristaccessory_t9_s1_digital_inteculo_01, // 0xb
        wristaccessory_t9_s1_analog_brawler_01, // 0xc
        hash_1ccdff0ebb3ad612, // 0xd
        wristaccessory_t9_s2_analog_jungle_aviator, // 0xe
        wristaccessory_t9_s1_analog_kremlin, // 0xf
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x10
        wristaccessory_t9_s2_analog_mortal, // 0x11
        wristaccessory_t9_esports_empire_ms, // 0x12
        wristaccessory_t9_esports_empire_pc, // 0x13
        wristaccessory_t9_esports_empire_sy, // 0x14
        hash_25142303752f4324, // 0x15
        hash_25142503752f468a, // 0x16
        wristaccessory_t9_s1_analog_retroren_02, // 0x17
        wristaccessory_default, // 0x18
        wristaccessory_t9_esports_royalravens_ms, // 0x19
        wristaccessory_t9_esports_royalravens_pc, // 0x1a
        wristaccessory_t9_esports_royalravens_sy, // 0x1b
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x1c
        wristaccessory_t9_s2_digital_mini_map, // 0x1d
        wristaccessory_t9_s1_digital_kazuya_01, // 0x1e
        wristaccessory_t9_s2_digital_mayan, // 0x1f
        wristaccessory_t9_s1_digital_diver, // 0x20
        wristaccessory_t9_esports_thieves_ms, // 0x21
        wristaccessory_t9_esports_thieves_pc, // 0x22
        wristaccessory_t9_esports_thieves_sy, // 0x23
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x24
        wristaccessory_t9_s2_analog_naval_warfare, // 0x25
        wristaccessory_t9_esports_subliners_pc, // 0x26
        wristaccessory_t9_esports_subliners_sy, // 0x27
        wristaccessory_t9_esports_subliners_ms, // 0x28
        wristaccessory_t9_s2_analog_dark_aether, // 0x29
        wristaccessory_t9_s2_analog_mayan, // 0x2a
        wristaccessory_t9_s1_analog_bope_01, // 0x2b
        wristaccessory_t9_esports_ultra_ms, // 0x2c
        wristaccessory_t9_esports_ultra_sy, // 0x2d
        wristaccessory_t9_esports_ultra_pc, // 0x2e
        wristaccessory_t9_s2_analog_paratroop, // 0x2f
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x30
        wristaccessory_t9_s1_analog_aviator_02, // 0x31
        wristaccessory_t9_s1_analog_horex_01, // 0x32
        wristaccessory_t9_s1_analog_fancy, // 0x33
        wristaccessory_t9_esports_optic_ms, // 0x34
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x35
        wristaccessory_t9_esports_optic_sy, // 0x36
        wristaccessory_t9_esports_optic_pc, // 0x37
        wristaccessory_t9_s2_analog_rebel, // 0x38
        wristaccessory_t9_s2_analog_white_tiger, // 0x39
        wristaccessory_t9_s2_analog_caiman, // 0x3a
        hash_4fee76d1114701af, // 0x3b
        wristaccessory_t9_s2_analog_broken_fancy, // 0x3c
        hash_511c7fa835d89891, // 0x3d
        wristaccessory_t9_s1_bracelet_skull_01, // 0x3e
        wristaccessory_t9_s1_bracelet_01, // 0x3f
        hash_575c967cd59c9145, // 0x40
        wristaccessory_t9_esports_surge_sy, // 0x41
        wristaccessory_t9_esports_surge_pc, // 0x42
        wristaccessory_t9_esports_surge_ms, // 0x43
        wristaccessory_t9_esports_faze_ms, // 0x44
        wristaccessory_t9_esports_faze_pc, // 0x45
        wristaccessory_t9_esports_faze_sy, // 0x46
        wristaccessory_t9_s1_analog_origin_01, // 0x47
        wristaccessory_t9_esports_mutineers_pc, // 0x48
        wristaccessory_t9_esports_mutineers_sy, // 0x49
        wristaccessory_t9_esports_mutineers_ms, // 0x4a
        wristaccessory_t9_s1_analog_private_eye_03, // 0x4b
        wristaccessory_t9_s1_analog_private_eye_02, // 0x4c
        wristaccessory_t9_s1_analog_private_eye_01, // 0x4d
        wristaccessory_t9_esports_guerillas_sy, // 0x4e
        wristaccessory_t9_esports_guerillas_pc, // 0x4f
        wristaccessory_t9_esports_guerillas_ms, // 0x50
        wristaccessory_t9_s2_digital_river_slasher, // 0x51
        wristaccessory_t9_s2_bracelet_lure, // 0x52
        wristaccessory_t9_s2_analog_cold_hearted, // 0x53
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x54
        wristaccessory_t9_s1_digital_rank_01, // 0x55
        wristaccessory_t9_s2_digital_jade, // 0x56
        hash_708a99620b81ea23, // 0x57
        hash_708a9a620b81ebd6, // 0x58
        wristaccessory_t9_s2_analog_black_silver, // 0x59
        wristaccessory_t9_s2_analog_black_gold, // 0x5a
        wristaccessory_t9_s1_digital_compass_01, // 0x5b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x5c
    };

    // idx 0x3 members: 0x39
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_117, // 0x2
        execution_118, // 0x3
        execution_101, // 0x4
        execution_100, // 0x5
        execution_138, // 0x6
        execution_139, // 0x7
        execution_132, // 0x8
        execution_133, // 0x9
        execution_130, // 0xa
        execution_136, // 0xb
        execution_135, // 0xc
        execution_129, // 0xd
        execution_124, // 0xe
        execution_127, // 0xf
        execution_126, // 0x10
        execution_121, // 0x11
        execution_120, // 0x12
        execution_123, // 0x13
        execution_201, // 0x14
        execution_099, // 0x15
        execution_029, // 0x16
        execution_020, // 0x17
        execution_021, // 0x18
        execution_022, // 0x19
        execution_024, // 0x1a
        execution_025, // 0x1b
        execution_026, // 0x1c
        execution_027, // 0x1d
        execution_038, // 0x1e
        execution_033, // 0x1f
        execution_031, // 0x20
        execution_030, // 0x21
        execution_037, // 0x22
        execution_036, // 0x23
        execution_034, // 0x24
        execution_007, // 0x25
        execution_004, // 0x26
        execution_005, // 0x27
        execution_002, // 0x28
        execution_003, // 0x29
        execution_001, // 0x2a
        execution_010, // 0x2b
        execution_013, // 0x2c
        execution_015, // 0x2d
        execution_014, // 0x2e
        execution_017, // 0x2f
        execution_016, // 0x30
        execution_018, // 0x31
        execution_064, // 0x32
        execution_066, // 0x33
        execution_062, // 0x34
        execution_048, // 0x35
        execution_040, // 0x36
        execution_058, // 0x37
        execution_051 // 0x38
    };

    // idx 0x4 members: 0xa
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
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1c
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_deadshot_tier, // 0x4
        hash_1bb7d8d0caf94859, // 0x5
        hash_1f78483ef16f84d5, // 0x6
        weapon_knife_tier, // 0x7
        weapon_smg_tier, // 0x8
        talent_speedcola_tier, // 0x9
        heal_aoe_tier, // 0xa
        frost_blast_tier, // 0xb
        hash_38f1aae51e2d5f58, // 0xc
        hash_3908c184a5cbf339, // 0xd
        weapon_sniper_tier, // 0xe
        weapon_pistol_tier, // 0xf
        energy_mine_tier, // 0x10
        talent_quickrevive_tier, // 0x11
        ammomod_brainrot_tier, // 0x12
        weapon_lmg_tier, // 0x13
        ammomod_napalmburst_tier, // 0x14
        ring_of_fire_tier, // 0x15
        hash_63114aea3939d941, // 0x16
        ammomod_deadwire_tier, // 0x17
        talent_elemental_pop_tier, // 0x18
        talent_staminup_tier, // 0x19
        weapon_tactical_tier, // 0x1a
        weapon_special_tier // 0x1b
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x161f0, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb908(0x1721 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x161e8, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_8967041c5ed5a82a {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 90824 (0x162c8)
    // header byte size . 11353 (0x2c59)

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

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6a, array:0x6a(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x50, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x47, array:0x47(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
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
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
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

    // bitSize: 0xb930, members: 20
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xac0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bc0, bitSize: 0xe8(0x1d Byte(s)), array:0x1d(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1ca8, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2428, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2430, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x24b0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xafe0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb860, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xb8b0, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb928, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb929, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb92a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb92b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x6a
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s2_analog_420, // 0x24
        wristaccessory_t9_s2_digital_mini_map, // 0x25
        wristaccessory_t9_s1_digital_kazuya_01, // 0x26
        wristaccessory_t9_s2_digital_mayan, // 0x27
        wristaccessory_t9_s1_digital_diver, // 0x28
        wristaccessory_t9_esports_thieves_ms, // 0x29
        wristaccessory_t9_esports_thieves_pc, // 0x2a
        wristaccessory_t9_esports_thieves_sy, // 0x2b
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2c
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2d
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2e
        wristaccessory_t9_esports_subliners_pc, // 0x2f
        wristaccessory_t9_esports_subliners_sy, // 0x30
        wristaccessory_t9_esports_subliners_ms, // 0x31
        wristaccessory_t9_s2_analog_dark_aether, // 0x32
        wristaccessory_t9_s2_analog_mayan, // 0x33
        wristaccessory_t9_s1_analog_bope_01, // 0x34
        wristaccessory_t9_esports_ultra_ms, // 0x35
        wristaccessory_t9_esports_ultra_sy, // 0x36
        wristaccessory_t9_esports_ultra_pc, // 0x37
        wristaccessory_t9_s2_analog_paratroop, // 0x38
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x39
        wristaccessory_t9_s1_analog_aviator_02, // 0x3a
        wristaccessory_t9_s1_analog_horex_01, // 0x3b
        wristaccessory_t9_s1_analog_fancy, // 0x3c
        wristaccessory_t9_esports_optic_ms, // 0x3d
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3e
        wristaccessory_t9_esports_optic_sy, // 0x3f
        wristaccessory_t9_esports_optic_pc, // 0x40
        wristaccessory_t9_s2_analog_rebel, // 0x41
        wristaccessory_t9_s2_analog_white_tiger, // 0x42
        wristaccessory_t9_s2_analog_caiman, // 0x43
        hash_4fee76d1114701af, // 0x44
        wristaccessory_t9_s2_analog_broken_fancy, // 0x45
        hash_511c7fa835d89891, // 0x46
        wristaccessory_t9_s1_bracelet_skull_01, // 0x47
        wristaccessory_t9_s3_digital_big_joke, // 0x48
        wristaccessory_t9_s1_bracelet_01, // 0x49
        hash_575c967cd59c9145, // 0x4a
        wristaccessory_t9_esports_surge_sy, // 0x4b
        wristaccessory_t9_esports_surge_pc, // 0x4c
        wristaccessory_t9_esports_surge_ms, // 0x4d
        wristaccessory_t9_esports_faze_ms, // 0x4e
        wristaccessory_t9_esports_faze_pc, // 0x4f
        wristaccessory_t9_esports_faze_sy, // 0x50
        wristaccessory_t9_s1_analog_origin_01, // 0x51
        wristaccessory_t9_esports_mutineers_pc, // 0x52
        wristaccessory_t9_esports_mutineers_sy, // 0x53
        wristaccessory_t9_esports_mutineers_ms, // 0x54
        wristaccessory_t9_s1_analog_private_eye_03, // 0x55
        wristaccessory_t9_s1_analog_private_eye_02, // 0x56
        wristaccessory_t9_s1_analog_private_eye_01, // 0x57
        wristaccessory_t9_esports_guerillas_sy, // 0x58
        wristaccessory_t9_esports_guerillas_pc, // 0x59
        wristaccessory_t9_esports_guerillas_ms, // 0x5a
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5b
        wristaccessory_t9_s2_digital_river_slasher, // 0x5c
        wristaccessory_t9_s2_bracelet_lure, // 0x5d
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5e
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x5f
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x60
        wristaccessory_t9_s1_digital_rank_01, // 0x61
        wristaccessory_t9_s2_digital_jade, // 0x62
        hash_708a99620b81ea23, // 0x63
        hash_708a9a620b81ebd6, // 0x64
        wristaccessory_t9_s2_analog_black_silver, // 0x65
        wristaccessory_t9_s3_digital_death_touch, // 0x66
        wristaccessory_t9_s2_analog_black_gold, // 0x67
        wristaccessory_t9_s1_digital_compass_01, // 0x68
        wristaccessory_t9_s1_digital_first_spy_01 // 0x69
    };

    // idx 0x3 members: 0x47
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_117, // 0x5
        execution_110, // 0x6
        execution_111, // 0x7
        execution_112, // 0x8
        execution_118, // 0x9
        execution_101, // 0xa
        execution_100, // 0xb
        execution_108, // 0xc
        execution_138, // 0xd
        execution_139, // 0xe
        execution_132, // 0xf
        execution_133, // 0x10
        execution_130, // 0x11
        execution_136, // 0x12
        execution_137, // 0x13
        execution_135, // 0x14
        execution_129, // 0x15
        execution_124, // 0x16
        execution_127, // 0x17
        execution_126, // 0x18
        execution_121, // 0x19
        execution_120, // 0x1a
        execution_123, // 0x1b
        execution_201, // 0x1c
        execution_202, // 0x1d
        execution_086, // 0x1e
        execution_084, // 0x1f
        execution_099, // 0x20
        execution_029, // 0x21
        execution_020, // 0x22
        execution_021, // 0x23
        execution_022, // 0x24
        execution_024, // 0x25
        execution_025, // 0x26
        execution_026, // 0x27
        execution_027, // 0x28
        execution_038, // 0x29
        execution_033, // 0x2a
        execution_031, // 0x2b
        execution_030, // 0x2c
        execution_037, // 0x2d
        execution_036, // 0x2e
        execution_034, // 0x2f
        execution_009, // 0x30
        execution_007, // 0x31
        execution_004, // 0x32
        execution_005, // 0x33
        execution_002, // 0x34
        execution_003, // 0x35
        execution_001, // 0x36
        execution_010, // 0x37
        execution_013, // 0x38
        execution_015, // 0x39
        execution_014, // 0x3a
        execution_017, // 0x3b
        execution_016, // 0x3c
        execution_018, // 0x3d
        execution_064, // 0x3e
        execution_066, // 0x3f
        execution_062, // 0x40
        execution_069, // 0x41
        execution_048, // 0x42
        execution_040, // 0x43
        execution_058, // 0x44
        execution_051, // 0x45
        hash_7f66c55f0f1308c2 // 0x46
    };

    // idx 0x4 members: 0xa
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
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1d
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        toxic_growth_tier, // 0x4
        talent_deadshot_tier, // 0x5
        hash_1bb7d8d0caf94859, // 0x6
        hash_1f78483ef16f84d5, // 0x7
        weapon_knife_tier, // 0x8
        weapon_smg_tier, // 0x9
        talent_speedcola_tier, // 0xa
        heal_aoe_tier, // 0xb
        frost_blast_tier, // 0xc
        hash_38f1aae51e2d5f58, // 0xd
        hash_3908c184a5cbf339, // 0xe
        weapon_sniper_tier, // 0xf
        weapon_pistol_tier, // 0x10
        energy_mine_tier, // 0x11
        talent_quickrevive_tier, // 0x12
        ammomod_brainrot_tier, // 0x13
        weapon_lmg_tier, // 0x14
        ammomod_napalmburst_tier, // 0x15
        ring_of_fire_tier, // 0x16
        hash_63114aea3939d941, // 0x17
        ammomod_deadwire_tier, // 0x18
        talent_elemental_pop_tier, // 0x19
        talent_staminup_tier, // 0x1a
        weapon_tactical_tier, // 0x1b
        weapon_special_tier // 0x1c
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16218, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb930(0x1726 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16210, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_3a8f79219da7e4c5 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 90824 (0x162c8)
    // header byte size . 11353 (0x2c59)

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

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6b, array:0x6b(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x50, members: 2
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x48(0x9 Byte(s)), array:0x48(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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

    // bitSize: 0xb8, members: 8
    struct weaponvariant {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s))
        string(16) variantname;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 reticleindex;
        // offset: 0xa0, bitSize: 0x10(0x2 Byte(s))
        uint:9 camoindex;
        // offset: 0xb0, bitSize: 0x1
        bool hash_411b72d2d83ecfac;
        // offset: 0xb1, bitSize: 0x1
        bool hash_24514dffb0cc7e88;
    };

    // bitSize: 0x450, members: 1
    struct hash_61afc0bbf9aeef64 {
        // offset: 0x0, bitSize: 0x450(0x8a Byte(s)), array:0x6(hti:0xffff)
        weaponvariant variant[6];
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
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_b52214733d52361;
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

    // bitSize: 0xb930, members: 20
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xac0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bc0, bitSize: 0xe8(0x1d Byte(s)), array:0x1d(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1ca8, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2428, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2430, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x24b0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xafe0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb860, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xb8b0, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb928, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb929, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb92a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb92b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x6b
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s3_analog_rebel_fighter, // 0x24
        wristaccessory_t9_s2_analog_420, // 0x25
        wristaccessory_t9_s2_digital_mini_map, // 0x26
        wristaccessory_t9_s1_digital_kazuya_01, // 0x27
        wristaccessory_t9_s2_digital_mayan, // 0x28
        wristaccessory_t9_s1_digital_diver, // 0x29
        wristaccessory_t9_esports_thieves_ms, // 0x2a
        wristaccessory_t9_esports_thieves_pc, // 0x2b
        wristaccessory_t9_esports_thieves_sy, // 0x2c
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2d
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2e
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2f
        wristaccessory_t9_esports_subliners_pc, // 0x30
        wristaccessory_t9_esports_subliners_sy, // 0x31
        wristaccessory_t9_esports_subliners_ms, // 0x32
        wristaccessory_t9_s2_analog_dark_aether, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x61
        wristaccessory_t9_s1_digital_rank_01, // 0x62
        wristaccessory_t9_s2_digital_jade, // 0x63
        hash_708a99620b81ea23, // 0x64
        hash_708a9a620b81ebd6, // 0x65
        wristaccessory_t9_s2_analog_black_silver, // 0x66
        wristaccessory_t9_s3_digital_death_touch, // 0x67
        wristaccessory_t9_s2_analog_black_gold, // 0x68
        wristaccessory_t9_s1_digital_compass_01, // 0x69
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6a
    };

    // idx 0x3 members: 0x48
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_117, // 0x5
        execution_110, // 0x6
        execution_111, // 0x7
        execution_112, // 0x8
        execution_118, // 0x9
        execution_101, // 0xa
        execution_100, // 0xb
        execution_108, // 0xc
        execution_138, // 0xd
        execution_139, // 0xe
        execution_132, // 0xf
        execution_133, // 0x10
        execution_130, // 0x11
        execution_136, // 0x12
        execution_137, // 0x13
        execution_135, // 0x14
        execution_129, // 0x15
        execution_124, // 0x16
        execution_127, // 0x17
        execution_126, // 0x18
        execution_121, // 0x19
        execution_120, // 0x1a
        execution_123, // 0x1b
        execution_201, // 0x1c
        execution_202, // 0x1d
        execution_203, // 0x1e
        execution_086, // 0x1f
        execution_084, // 0x20
        execution_099, // 0x21
        execution_029, // 0x22
        execution_020, // 0x23
        execution_021, // 0x24
        execution_022, // 0x25
        execution_024, // 0x26
        execution_025, // 0x27
        execution_026, // 0x28
        execution_027, // 0x29
        execution_038, // 0x2a
        execution_033, // 0x2b
        execution_031, // 0x2c
        execution_030, // 0x2d
        execution_037, // 0x2e
        execution_036, // 0x2f
        execution_034, // 0x30
        execution_009, // 0x31
        execution_007, // 0x32
        execution_004, // 0x33
        execution_005, // 0x34
        execution_002, // 0x35
        execution_003, // 0x36
        execution_001, // 0x37
        execution_010, // 0x38
        execution_013, // 0x39
        execution_015, // 0x3a
        execution_014, // 0x3b
        execution_017, // 0x3c
        execution_016, // 0x3d
        execution_018, // 0x3e
        execution_064, // 0x3f
        execution_066, // 0x40
        execution_062, // 0x41
        execution_069, // 0x42
        execution_048, // 0x43
        execution_040, // 0x44
        execution_058, // 0x45
        execution_051, // 0x46
        hash_7f66c55f0f1308c2 // 0x47
    };

    // idx 0x4 members: 0xa
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
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1d
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        toxic_growth_tier, // 0x4
        talent_deadshot_tier, // 0x5
        hash_1bb7d8d0caf94859, // 0x6
        hash_1f78483ef16f84d5, // 0x7
        weapon_knife_tier, // 0x8
        weapon_smg_tier, // 0x9
        talent_speedcola_tier, // 0xa
        heal_aoe_tier, // 0xb
        frost_blast_tier, // 0xc
        hash_38f1aae51e2d5f58, // 0xd
        hash_3908c184a5cbf339, // 0xe
        weapon_sniper_tier, // 0xf
        weapon_pistol_tier, // 0x10
        energy_mine_tier, // 0x11
        talent_quickrevive_tier, // 0x12
        ammomod_brainrot_tier, // 0x13
        weapon_lmg_tier, // 0x14
        ammomod_napalmburst_tier, // 0x15
        ring_of_fire_tier, // 0x16
        hash_63114aea3939d941, // 0x17
        ammomod_deadwire_tier, // 0x18
        talent_elemental_pop_tier, // 0x19
        talent_staminup_tier, // 0x1a
        weapon_tactical_tier, // 0x1b
        weapon_special_tier // 0x1c
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16218, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb930(0x1726 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16210, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_ea3b90f060ec065c {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 90824 (0x162c8)
    // header byte size . 11353 (0x2c59)

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

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6b, array:0x6b(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x50, members: 2
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x48(0x9 Byte(s)), array:0x48(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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
    struct hash_51ee933f6ee8ec54 {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_b52214733d52361;
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

    // bitSize: 0xb930, members: 20
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xac0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bc0, bitSize: 0xe8(0x1d Byte(s)), array:0x1d(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1ca8, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2428, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2430, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x24b0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xafe0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb860, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xb8b0, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb928, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb929, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb92a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb92b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x6b
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s3_analog_rebel_fighter, // 0x24
        wristaccessory_t9_s2_analog_420, // 0x25
        wristaccessory_t9_s2_digital_mini_map, // 0x26
        wristaccessory_t9_s1_digital_kazuya_01, // 0x27
        wristaccessory_t9_s2_digital_mayan, // 0x28
        wristaccessory_t9_s1_digital_diver, // 0x29
        wristaccessory_t9_esports_thieves_ms, // 0x2a
        wristaccessory_t9_esports_thieves_pc, // 0x2b
        wristaccessory_t9_esports_thieves_sy, // 0x2c
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2d
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2e
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2f
        wristaccessory_t9_esports_subliners_pc, // 0x30
        wristaccessory_t9_esports_subliners_sy, // 0x31
        wristaccessory_t9_esports_subliners_ms, // 0x32
        wristaccessory_t9_s2_analog_dark_aether, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x61
        wristaccessory_t9_s1_digital_rank_01, // 0x62
        wristaccessory_t9_s2_digital_jade, // 0x63
        hash_708a99620b81ea23, // 0x64
        hash_708a9a620b81ebd6, // 0x65
        wristaccessory_t9_s2_analog_black_silver, // 0x66
        wristaccessory_t9_s3_digital_death_touch, // 0x67
        wristaccessory_t9_s2_analog_black_gold, // 0x68
        wristaccessory_t9_s1_digital_compass_01, // 0x69
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6a
    };

    // idx 0x3 members: 0x48
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_117, // 0x5
        execution_110, // 0x6
        execution_111, // 0x7
        execution_112, // 0x8
        execution_118, // 0x9
        execution_101, // 0xa
        execution_100, // 0xb
        execution_108, // 0xc
        execution_138, // 0xd
        execution_139, // 0xe
        execution_132, // 0xf
        execution_133, // 0x10
        execution_130, // 0x11
        execution_136, // 0x12
        execution_137, // 0x13
        execution_135, // 0x14
        execution_129, // 0x15
        execution_124, // 0x16
        execution_127, // 0x17
        execution_126, // 0x18
        execution_121, // 0x19
        execution_120, // 0x1a
        execution_123, // 0x1b
        execution_201, // 0x1c
        execution_202, // 0x1d
        execution_203, // 0x1e
        execution_086, // 0x1f
        execution_084, // 0x20
        execution_099, // 0x21
        execution_029, // 0x22
        execution_020, // 0x23
        execution_021, // 0x24
        execution_022, // 0x25
        execution_024, // 0x26
        execution_025, // 0x27
        execution_026, // 0x28
        execution_027, // 0x29
        execution_038, // 0x2a
        execution_033, // 0x2b
        execution_031, // 0x2c
        execution_030, // 0x2d
        execution_037, // 0x2e
        execution_036, // 0x2f
        execution_034, // 0x30
        execution_009, // 0x31
        execution_007, // 0x32
        execution_004, // 0x33
        execution_005, // 0x34
        execution_002, // 0x35
        execution_003, // 0x36
        execution_001, // 0x37
        execution_010, // 0x38
        execution_013, // 0x39
        execution_015, // 0x3a
        execution_014, // 0x3b
        execution_017, // 0x3c
        execution_016, // 0x3d
        execution_018, // 0x3e
        execution_064, // 0x3f
        execution_066, // 0x40
        execution_062, // 0x41
        execution_069, // 0x42
        execution_048, // 0x43
        execution_040, // 0x44
        execution_058, // 0x45
        execution_051, // 0x46
        hash_7f66c55f0f1308c2 // 0x47
    };

    // idx 0x4 members: 0xa
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
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1d
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        toxic_growth_tier, // 0x4
        talent_deadshot_tier, // 0x5
        hash_1bb7d8d0caf94859, // 0x6
        hash_1f78483ef16f84d5, // 0x7
        weapon_knife_tier, // 0x8
        weapon_smg_tier, // 0x9
        talent_speedcola_tier, // 0xa
        heal_aoe_tier, // 0xb
        frost_blast_tier, // 0xc
        hash_38f1aae51e2d5f58, // 0xd
        hash_3908c184a5cbf339, // 0xe
        weapon_sniper_tier, // 0xf
        weapon_pistol_tier, // 0x10
        energy_mine_tier, // 0x11
        talent_quickrevive_tier, // 0x12
        ammomod_brainrot_tier, // 0x13
        weapon_lmg_tier, // 0x14
        ammomod_napalmburst_tier, // 0x15
        ring_of_fire_tier, // 0x16
        hash_63114aea3939d941, // 0x17
        ammomod_deadwire_tier, // 0x18
        talent_elemental_pop_tier, // 0x19
        talent_staminup_tier, // 0x1a
        weapon_tactical_tier, // 0x1b
        weapon_special_tier // 0x1c
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16218, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb930(0x1726 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16210, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_9d5d01e148c42588 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 90824 (0x162c8)
    // header byte size . 11353 (0x2c59)

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

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6c, array:0x6c(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x50, members: 2
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x48(0x9 Byte(s)), array:0x48(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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
    struct hash_51ee933f6ee8ec54 {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_b52214733d52361;
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

    // bitSize: 0xb930, members: 20
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xac0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bc0, bitSize: 0xe8(0x1d Byte(s)), array:0x1d(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1ca8, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2428, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2430, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x24b0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xafe0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb860, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xb8b0, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb928, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb929, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb92a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb92b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x6c
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s3_analog_rebel_fighter, // 0x24
        wristaccessory_t9_s2_analog_420, // 0x25
        wristaccessory_t9_s2_digital_mini_map, // 0x26
        wristaccessory_t9_s1_digital_kazuya_01, // 0x27
        wristaccessory_t9_s2_digital_mayan, // 0x28
        wristaccessory_t9_s1_digital_diver, // 0x29
        wristaccessory_t9_esports_thieves_ms, // 0x2a
        wristaccessory_t9_esports_thieves_pc, // 0x2b
        wristaccessory_t9_esports_thieves_sy, // 0x2c
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2d
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2e
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2f
        wristaccessory_t9_esports_subliners_pc, // 0x30
        wristaccessory_t9_esports_subliners_sy, // 0x31
        wristaccessory_t9_esports_subliners_ms, // 0x32
        wristaccessory_t9_s2_analog_dark_aether, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x61
        wristaccessory_t9_s1_digital_rank_01, // 0x62
        wristaccessory_t9_s2_digital_jade, // 0x63
        hash_708a99620b81ea23, // 0x64
        hash_708a9a620b81ebd6, // 0x65
        wristaccessory_t9_s3_analog_zombie_naga, // 0x66
        wristaccessory_t9_s2_analog_black_silver, // 0x67
        wristaccessory_t9_s3_digital_death_touch, // 0x68
        wristaccessory_t9_s2_analog_black_gold, // 0x69
        wristaccessory_t9_s1_digital_compass_01, // 0x6a
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6b
    };

    // idx 0x3 members: 0x48
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_117, // 0x5
        execution_110, // 0x6
        execution_111, // 0x7
        execution_112, // 0x8
        execution_118, // 0x9
        execution_101, // 0xa
        execution_100, // 0xb
        execution_108, // 0xc
        execution_138, // 0xd
        execution_139, // 0xe
        execution_132, // 0xf
        execution_133, // 0x10
        execution_130, // 0x11
        execution_136, // 0x12
        execution_137, // 0x13
        execution_135, // 0x14
        execution_129, // 0x15
        execution_124, // 0x16
        execution_127, // 0x17
        execution_126, // 0x18
        execution_121, // 0x19
        execution_120, // 0x1a
        execution_123, // 0x1b
        execution_201, // 0x1c
        execution_202, // 0x1d
        execution_203, // 0x1e
        execution_086, // 0x1f
        execution_084, // 0x20
        execution_099, // 0x21
        execution_029, // 0x22
        execution_020, // 0x23
        execution_021, // 0x24
        execution_022, // 0x25
        execution_024, // 0x26
        execution_025, // 0x27
        execution_026, // 0x28
        execution_027, // 0x29
        execution_038, // 0x2a
        execution_033, // 0x2b
        execution_031, // 0x2c
        execution_030, // 0x2d
        execution_037, // 0x2e
        execution_036, // 0x2f
        execution_034, // 0x30
        execution_009, // 0x31
        execution_007, // 0x32
        execution_004, // 0x33
        execution_005, // 0x34
        execution_002, // 0x35
        execution_003, // 0x36
        execution_001, // 0x37
        execution_010, // 0x38
        execution_013, // 0x39
        execution_015, // 0x3a
        execution_014, // 0x3b
        execution_017, // 0x3c
        execution_016, // 0x3d
        execution_018, // 0x3e
        execution_064, // 0x3f
        execution_066, // 0x40
        execution_062, // 0x41
        execution_069, // 0x42
        execution_048, // 0x43
        execution_040, // 0x44
        execution_058, // 0x45
        execution_051, // 0x46
        hash_7f66c55f0f1308c2 // 0x47
    };

    // idx 0x4 members: 0xa
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
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1d
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        toxic_growth_tier, // 0x4
        talent_deadshot_tier, // 0x5
        hash_1bb7d8d0caf94859, // 0x6
        hash_1f78483ef16f84d5, // 0x7
        weapon_knife_tier, // 0x8
        weapon_smg_tier, // 0x9
        talent_speedcola_tier, // 0xa
        heal_aoe_tier, // 0xb
        frost_blast_tier, // 0xc
        hash_38f1aae51e2d5f58, // 0xd
        hash_3908c184a5cbf339, // 0xe
        weapon_sniper_tier, // 0xf
        weapon_pistol_tier, // 0x10
        energy_mine_tier, // 0x11
        talent_quickrevive_tier, // 0x12
        ammomod_brainrot_tier, // 0x13
        weapon_lmg_tier, // 0x14
        ammomod_napalmburst_tier, // 0x15
        ring_of_fire_tier, // 0x16
        hash_63114aea3939d941, // 0x17
        ammomod_deadwire_tier, // 0x18
        talent_elemental_pop_tier, // 0x19
        talent_staminup_tier, // 0x1a
        weapon_tactical_tier, // 0x1b
        weapon_special_tier // 0x1c
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16218, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb930(0x1726 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16210, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_da09ba95c47a3df4 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 90824 (0x162c8)
    // header byte size . 11353 (0x2c59)

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

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6d, array:0x6d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x50, members: 2
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x48(0x9 Byte(s)), array:0x48(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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
    struct hash_51ee933f6ee8ec54 {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s))
        xhash hash_2d06ce54c49ebdd7;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:4 weaponmodelslot;
        // offset: 0x48, bitSize: 0x10(0x2 Byte(s))
        uint:11 charmindex;
        // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
        uint:8 paintjobslot;
        // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
        uint:7 blueprint;
        // offset: 0x68, bitSize: 0x10(0x2 Byte(s))
        uint:10 itemindex;
        // offset: 0x78, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 attachment[8];
        // offset: 0xb8, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0xffff)
        uint:7 hash_582c2bb894da965d[8];
        // offset: 0xf8, bitSize: 0x40(0x8 Byte(s)), array:0x4(hti:0xffff)
        uint:10 sticker[4];
        // offset: 0x138, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
        xhash hash_546165121d194b41[8];
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_b52214733d52361;
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

    // bitSize: 0xb930, members: 20
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xac0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bc0, bitSize: 0xe8(0x1d Byte(s)), array:0x1d(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1ca8, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2428, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2430, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x24b0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xafe0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb860, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xb8b0, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb928, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb929, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb92a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb92b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x6d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s3_analog_rebel_fighter, // 0x24
        wristaccessory_t9_s2_analog_420, // 0x25
        wristaccessory_t9_s2_digital_mini_map, // 0x26
        wristaccessory_t9_s1_digital_kazuya_01, // 0x27
        wristaccessory_t9_s2_digital_mayan, // 0x28
        wristaccessory_t9_s1_digital_diver, // 0x29
        wristaccessory_t9_esports_thieves_ms, // 0x2a
        wristaccessory_t9_esports_thieves_pc, // 0x2b
        wristaccessory_t9_esports_thieves_sy, // 0x2c
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2d
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2e
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2f
        wristaccessory_t9_esports_subliners_pc, // 0x30
        wristaccessory_t9_esports_subliners_sy, // 0x31
        wristaccessory_t9_esports_subliners_ms, // 0x32
        wristaccessory_t9_s2_analog_dark_aether, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x61
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x62
        wristaccessory_t9_s1_digital_rank_01, // 0x63
        wristaccessory_t9_s2_digital_jade, // 0x64
        hash_708a99620b81ea23, // 0x65
        hash_708a9a620b81ebd6, // 0x66
        wristaccessory_t9_s3_analog_zombie_naga, // 0x67
        wristaccessory_t9_s2_analog_black_silver, // 0x68
        wristaccessory_t9_s3_digital_death_touch, // 0x69
        wristaccessory_t9_s2_analog_black_gold, // 0x6a
        wristaccessory_t9_s1_digital_compass_01, // 0x6b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6c
    };

    // idx 0x3 members: 0x48
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_117, // 0x5
        execution_110, // 0x6
        execution_111, // 0x7
        execution_112, // 0x8
        execution_118, // 0x9
        execution_101, // 0xa
        execution_100, // 0xb
        execution_108, // 0xc
        execution_138, // 0xd
        execution_139, // 0xe
        execution_132, // 0xf
        execution_133, // 0x10
        execution_130, // 0x11
        execution_136, // 0x12
        execution_137, // 0x13
        execution_135, // 0x14
        execution_129, // 0x15
        execution_124, // 0x16
        execution_127, // 0x17
        execution_126, // 0x18
        execution_121, // 0x19
        execution_120, // 0x1a
        execution_123, // 0x1b
        execution_201, // 0x1c
        execution_202, // 0x1d
        execution_203, // 0x1e
        execution_086, // 0x1f
        execution_084, // 0x20
        execution_099, // 0x21
        execution_029, // 0x22
        execution_020, // 0x23
        execution_021, // 0x24
        execution_022, // 0x25
        execution_024, // 0x26
        execution_025, // 0x27
        execution_026, // 0x28
        execution_027, // 0x29
        execution_038, // 0x2a
        execution_033, // 0x2b
        execution_031, // 0x2c
        execution_030, // 0x2d
        execution_037, // 0x2e
        execution_036, // 0x2f
        execution_034, // 0x30
        execution_009, // 0x31
        execution_007, // 0x32
        execution_004, // 0x33
        execution_005, // 0x34
        execution_002, // 0x35
        execution_003, // 0x36
        execution_001, // 0x37
        execution_010, // 0x38
        execution_013, // 0x39
        execution_015, // 0x3a
        execution_014, // 0x3b
        execution_017, // 0x3c
        execution_016, // 0x3d
        execution_018, // 0x3e
        execution_064, // 0x3f
        execution_066, // 0x40
        execution_062, // 0x41
        execution_069, // 0x42
        execution_048, // 0x43
        execution_040, // 0x44
        execution_058, // 0x45
        execution_051, // 0x46
        hash_7f66c55f0f1308c2 // 0x47
    };

    // idx 0x4 members: 0xa
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
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1d
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        toxic_growth_tier, // 0x4
        talent_deadshot_tier, // 0x5
        hash_1bb7d8d0caf94859, // 0x6
        hash_1f78483ef16f84d5, // 0x7
        weapon_knife_tier, // 0x8
        weapon_smg_tier, // 0x9
        talent_speedcola_tier, // 0xa
        heal_aoe_tier, // 0xb
        frost_blast_tier, // 0xc
        hash_38f1aae51e2d5f58, // 0xd
        hash_3908c184a5cbf339, // 0xe
        weapon_sniper_tier, // 0xf
        weapon_pistol_tier, // 0x10
        energy_mine_tier, // 0x11
        talent_quickrevive_tier, // 0x12
        ammomod_brainrot_tier, // 0x13
        weapon_lmg_tier, // 0x14
        ammomod_napalmburst_tier, // 0x15
        ring_of_fire_tier, // 0x16
        hash_63114aea3939d941, // 0x17
        ammomod_deadwire_tier, // 0x18
        talent_elemental_pop_tier, // 0x19
        talent_staminup_tier, // 0x1a
        weapon_tactical_tier, // 0x1b
        weapon_special_tier // 0x1c
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16218, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb930(0x1726 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16210, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_4903068d6a3ac650 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 90824 (0x162c8)
    // header byte size . 11353 (0x2c59)

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

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6d, array:0x6d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x50, members: 2
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x48(0x9 Byte(s)), array:0x48(hti:0x3)
        bool hash_3afbc408397a1527[executions];
    };

    // bitSize: 0x40, members: 1
    struct hash_32aeae7311d2cd9b {
        // offset: 0x0, bitSize: 0x40(0x8 Byte(s)), array:0x8(hti:0x0)
        uint:5 hash_212bcdfa518cc913[hash_5ab26f037efe82c];
    };

    // bitSize: 0x2810, members: 4
    struct character {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:6 selectedoutfit;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_4d9fceac8ff24cbd;
        // offset: 0x10, bitSize: 0x1e00(0x3c0 Byte(s)), array:0x28(hti:0xffff)
        hash_768aeb6b928320d outfit_breadcrumbs[40];
        // offset: 0x1e10, bitSize: 0xa00(0x140 Byte(s)), array:0x28(hti:0xffff)
        hash_32aeae7311d2cd9b hash_e5c77948998e49[40];
    };

    // bitSize: 0x40, members: 2
    struct charactercontext {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint characterindex;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint charactermode;
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

    // bitSize: 0xb930, members: 20
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x80(0x10 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0x98, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xb8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xac0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bc0, bitSize: 0xe8(0x1d Byte(s)), array:0x1d(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1ca8, bitSize: 0x780(0xf0 Byte(s)), array:0xa(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2428, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2430, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x24b0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xafe0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb860, bitSize: 0x50(0xa Byte(s))
        execution execution;
        // offset: 0xb8b0, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xb928, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xb929, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xb92a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xb92b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x6d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s3_analog_rebel_fighter, // 0x24
        wristaccessory_t9_s2_analog_420, // 0x25
        wristaccessory_t9_s2_digital_mini_map, // 0x26
        wristaccessory_t9_s1_digital_kazuya_01, // 0x27
        wristaccessory_t9_s2_digital_mayan, // 0x28
        wristaccessory_t9_s1_digital_diver, // 0x29
        wristaccessory_t9_esports_thieves_ms, // 0x2a
        wristaccessory_t9_esports_thieves_pc, // 0x2b
        wristaccessory_t9_esports_thieves_sy, // 0x2c
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2d
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2e
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2f
        wristaccessory_t9_esports_subliners_pc, // 0x30
        wristaccessory_t9_esports_subliners_sy, // 0x31
        wristaccessory_t9_esports_subliners_ms, // 0x32
        wristaccessory_t9_s2_analog_dark_aether, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x61
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x62
        wristaccessory_t9_s1_digital_rank_01, // 0x63
        wristaccessory_t9_s2_digital_jade, // 0x64
        hash_708a99620b81ea23, // 0x65
        hash_708a9a620b81ebd6, // 0x66
        wristaccessory_t9_s3_analog_zombie_naga, // 0x67
        wristaccessory_t9_s2_analog_black_silver, // 0x68
        wristaccessory_t9_s3_digital_death_touch, // 0x69
        wristaccessory_t9_s2_analog_black_gold, // 0x6a
        wristaccessory_t9_s1_digital_compass_01, // 0x6b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6c
    };

    // idx 0x3 members: 0x48
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_117, // 0x5
        execution_110, // 0x6
        execution_111, // 0x7
        execution_112, // 0x8
        execution_118, // 0x9
        execution_101, // 0xa
        execution_100, // 0xb
        execution_108, // 0xc
        execution_138, // 0xd
        execution_139, // 0xe
        execution_132, // 0xf
        execution_133, // 0x10
        execution_130, // 0x11
        execution_136, // 0x12
        execution_137, // 0x13
        execution_135, // 0x14
        execution_129, // 0x15
        execution_124, // 0x16
        execution_127, // 0x17
        execution_126, // 0x18
        execution_121, // 0x19
        execution_120, // 0x1a
        execution_123, // 0x1b
        execution_201, // 0x1c
        execution_202, // 0x1d
        execution_203, // 0x1e
        execution_086, // 0x1f
        execution_084, // 0x20
        execution_099, // 0x21
        execution_029, // 0x22
        execution_020, // 0x23
        execution_021, // 0x24
        execution_022, // 0x25
        execution_024, // 0x26
        execution_025, // 0x27
        execution_026, // 0x28
        execution_027, // 0x29
        execution_038, // 0x2a
        execution_033, // 0x2b
        execution_031, // 0x2c
        execution_030, // 0x2d
        execution_037, // 0x2e
        execution_036, // 0x2f
        execution_034, // 0x30
        execution_009, // 0x31
        execution_007, // 0x32
        execution_004, // 0x33
        execution_005, // 0x34
        execution_002, // 0x35
        execution_003, // 0x36
        execution_001, // 0x37
        execution_010, // 0x38
        execution_013, // 0x39
        execution_015, // 0x3a
        execution_014, // 0x3b
        execution_017, // 0x3c
        execution_016, // 0x3d
        execution_018, // 0x3e
        execution_064, // 0x3f
        execution_066, // 0x40
        execution_062, // 0x41
        execution_069, // 0x42
        execution_048, // 0x43
        execution_040, // 0x44
        execution_058, // 0x45
        execution_051, // 0x46
        hash_7f66c55f0f1308c2 // 0x47
    };

    // idx 0x4 members: 0xa
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
        hash_6b8377c83507a7f9 // 0x9
    };

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1d
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        toxic_growth_tier, // 0x4
        talent_deadshot_tier, // 0x5
        hash_1bb7d8d0caf94859, // 0x6
        hash_1f78483ef16f84d5, // 0x7
        weapon_knife_tier, // 0x8
        weapon_smg_tier, // 0x9
        talent_speedcola_tier, // 0xa
        heal_aoe_tier, // 0xb
        frost_blast_tier, // 0xc
        hash_38f1aae51e2d5f58, // 0xd
        hash_3908c184a5cbf339, // 0xe
        weapon_sniper_tier, // 0xf
        weapon_pistol_tier, // 0x10
        energy_mine_tier, // 0x11
        talent_quickrevive_tier, // 0x12
        ammomod_brainrot_tier, // 0x13
        weapon_lmg_tier, // 0x14
        ammomod_napalmburst_tier, // 0x15
        ring_of_fire_tier, // 0x16
        hash_63114aea3939d941, // 0x17
        ammomod_deadwire_tier, // 0x18
        talent_elemental_pop_tier, // 0x19
        talent_staminup_tier, // 0x1a
        weapon_tactical_tier, // 0x1b
        weapon_special_tier // 0x1c
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16218, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xb930(0x1726 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16210, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_cb0d83884c748b3e {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 91040 (0x163a0)
    // header byte size . 11380 (0x2c74)

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

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6d, array:0x6d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x58, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x49, array:0x49(hti:0x3)
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

    // bitSize: 0xba08, members: 20
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xad0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bd0, bitSize: 0xe8(0x1d Byte(s)), array:0x1d(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1cb8, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x24f8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2500, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2580, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb0b0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb930, bitSize: 0x58(0xb Byte(s))
        execution execution;
        // offset: 0xb988, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xba00, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xba01, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xba02, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xba03, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x6d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s2_analog_420, // 0x24
        wristaccessory_t9_s2_digital_mini_map, // 0x25
        wristaccessory_t9_s1_digital_kazuya_01, // 0x26
        wristaccessory_t9_s2_digital_mayan, // 0x27
        wristaccessory_t9_s1_digital_diver, // 0x28
        wristaccessory_t9_esports_thieves_ms, // 0x29
        wristaccessory_t9_esports_thieves_pc, // 0x2a
        wristaccessory_t9_esports_thieves_sy, // 0x2b
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2c
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2d
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2e
        wristaccessory_t9_esports_subliners_pc, // 0x2f
        wristaccessory_t9_esports_subliners_sy, // 0x30
        wristaccessory_t9_esports_subliners_ms, // 0x31
        wristaccessory_t9_s2_analog_dark_aether, // 0x32
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x61
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x62
        wristaccessory_t9_s1_digital_rank_01, // 0x63
        wristaccessory_t9_s2_digital_jade, // 0x64
        hash_708a99620b81ea23, // 0x65
        hash_708a9a620b81ebd6, // 0x66
        wristaccessory_t9_s3_analog_zombie_naga, // 0x67
        wristaccessory_t9_s2_analog_black_silver, // 0x68
        wristaccessory_t9_s3_digital_death_touch, // 0x69
        wristaccessory_t9_s2_analog_black_gold, // 0x6a
        wristaccessory_t9_s1_digital_compass_01, // 0x6b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6c
    };

    // idx 0x3 members: 0x49
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_173, // 0x5
        execution_117, // 0x6
        execution_110, // 0x7
        execution_111, // 0x8
        execution_112, // 0x9
        execution_118, // 0xa
        execution_101, // 0xb
        execution_100, // 0xc
        execution_108, // 0xd
        execution_138, // 0xe
        execution_139, // 0xf
        execution_132, // 0x10
        execution_133, // 0x11
        execution_130, // 0x12
        execution_136, // 0x13
        execution_137, // 0x14
        execution_135, // 0x15
        execution_129, // 0x16
        execution_124, // 0x17
        execution_127, // 0x18
        execution_126, // 0x19
        execution_121, // 0x1a
        execution_120, // 0x1b
        execution_123, // 0x1c
        execution_201, // 0x1d
        execution_202, // 0x1e
        execution_203, // 0x1f
        execution_086, // 0x20
        execution_084, // 0x21
        execution_099, // 0x22
        execution_029, // 0x23
        execution_020, // 0x24
        execution_021, // 0x25
        execution_022, // 0x26
        execution_024, // 0x27
        execution_025, // 0x28
        execution_026, // 0x29
        execution_027, // 0x2a
        execution_038, // 0x2b
        execution_033, // 0x2c
        execution_031, // 0x2d
        execution_030, // 0x2e
        execution_037, // 0x2f
        execution_036, // 0x30
        execution_034, // 0x31
        execution_009, // 0x32
        execution_007, // 0x33
        execution_004, // 0x34
        execution_005, // 0x35
        execution_002, // 0x36
        execution_003, // 0x37
        execution_001, // 0x38
        execution_010, // 0x39
        execution_013, // 0x3a
        execution_015, // 0x3b
        execution_014, // 0x3c
        execution_017, // 0x3d
        execution_016, // 0x3e
        execution_018, // 0x3f
        execution_064, // 0x40
        execution_066, // 0x41
        execution_062, // 0x42
        execution_069, // 0x43
        execution_048, // 0x44
        execution_040, // 0x45
        execution_058, // 0x46
        execution_051, // 0x47
        hash_7f66c55f0f1308c2 // 0x48
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1d
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        toxic_growth_tier, // 0x4
        talent_deadshot_tier, // 0x5
        hash_1bb7d8d0caf94859, // 0x6
        hash_1f78483ef16f84d5, // 0x7
        weapon_knife_tier, // 0x8
        weapon_smg_tier, // 0x9
        talent_speedcola_tier, // 0xa
        heal_aoe_tier, // 0xb
        frost_blast_tier, // 0xc
        hash_38f1aae51e2d5f58, // 0xd
        hash_3908c184a5cbf339, // 0xe
        weapon_sniper_tier, // 0xf
        weapon_pistol_tier, // 0x10
        energy_mine_tier, // 0x11
        talent_quickrevive_tier, // 0x12
        ammomod_brainrot_tier, // 0x13
        weapon_lmg_tier, // 0x14
        ammomod_napalmburst_tier, // 0x15
        ring_of_fire_tier, // 0x16
        hash_63114aea3939d941, // 0x17
        ammomod_deadwire_tier, // 0x18
        talent_elemental_pop_tier, // 0x19
        talent_staminup_tier, // 0x1a
        weapon_tactical_tier, // 0x1b
        weapon_special_tier // 0x1c
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x162f0, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xba08(0x1741 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x162e8, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_3ddd480bcca981f8 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 91040 (0x163a0)
    // header byte size . 11380 (0x2c74)

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

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6d, array:0x6d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x58, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x4a, array:0x4a(hti:0x3)
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

    // bitSize: 0xba08, members: 20
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xad0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bd0, bitSize: 0xe8(0x1d Byte(s)), array:0x1d(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1cb8, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x24f8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2500, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2580, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb0b0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb930, bitSize: 0x58(0xb Byte(s))
        execution execution;
        // offset: 0xb988, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xba00, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xba01, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xba02, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xba03, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x6d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s2_analog_420, // 0x24
        wristaccessory_t9_s2_digital_mini_map, // 0x25
        wristaccessory_t9_s1_digital_kazuya_01, // 0x26
        wristaccessory_t9_s2_digital_mayan, // 0x27
        wristaccessory_t9_s1_digital_diver, // 0x28
        wristaccessory_t9_esports_thieves_ms, // 0x29
        wristaccessory_t9_esports_thieves_pc, // 0x2a
        wristaccessory_t9_esports_thieves_sy, // 0x2b
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2c
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2d
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2e
        wristaccessory_t9_esports_subliners_pc, // 0x2f
        wristaccessory_t9_esports_subliners_sy, // 0x30
        wristaccessory_t9_esports_subliners_ms, // 0x31
        wristaccessory_t9_s2_analog_dark_aether, // 0x32
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x61
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x62
        wristaccessory_t9_s1_digital_rank_01, // 0x63
        wristaccessory_t9_s2_digital_jade, // 0x64
        hash_708a99620b81ea23, // 0x65
        hash_708a9a620b81ebd6, // 0x66
        wristaccessory_t9_s3_analog_zombie_naga, // 0x67
        wristaccessory_t9_s2_analog_black_silver, // 0x68
        wristaccessory_t9_s3_digital_death_touch, // 0x69
        wristaccessory_t9_s2_analog_black_gold, // 0x6a
        wristaccessory_t9_s1_digital_compass_01, // 0x6b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6c
    };

    // idx 0x3 members: 0x4a
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_173, // 0x5
        execution_117, // 0x6
        execution_110, // 0x7
        execution_111, // 0x8
        execution_112, // 0x9
        execution_118, // 0xa
        execution_101, // 0xb
        execution_100, // 0xc
        execution_108, // 0xd
        execution_138, // 0xe
        execution_139, // 0xf
        execution_132, // 0x10
        execution_133, // 0x11
        execution_130, // 0x12
        execution_136, // 0x13
        execution_137, // 0x14
        execution_135, // 0x15
        execution_129, // 0x16
        execution_124, // 0x17
        execution_127, // 0x18
        execution_126, // 0x19
        execution_121, // 0x1a
        execution_120, // 0x1b
        execution_123, // 0x1c
        execution_201, // 0x1d
        execution_202, // 0x1e
        execution_203, // 0x1f
        execution_086, // 0x20
        execution_084, // 0x21
        execution_099, // 0x22
        execution_029, // 0x23
        execution_020, // 0x24
        execution_021, // 0x25
        execution_022, // 0x26
        execution_023, // 0x27
        execution_024, // 0x28
        execution_025, // 0x29
        execution_026, // 0x2a
        execution_027, // 0x2b
        execution_038, // 0x2c
        execution_033, // 0x2d
        execution_031, // 0x2e
        execution_030, // 0x2f
        execution_037, // 0x30
        execution_036, // 0x31
        execution_034, // 0x32
        execution_009, // 0x33
        execution_007, // 0x34
        execution_004, // 0x35
        execution_005, // 0x36
        execution_002, // 0x37
        execution_003, // 0x38
        execution_001, // 0x39
        execution_010, // 0x3a
        execution_013, // 0x3b
        execution_015, // 0x3c
        execution_014, // 0x3d
        execution_017, // 0x3e
        execution_016, // 0x3f
        execution_018, // 0x40
        execution_064, // 0x41
        execution_066, // 0x42
        execution_062, // 0x43
        execution_069, // 0x44
        execution_048, // 0x45
        execution_040, // 0x46
        execution_058, // 0x47
        execution_051, // 0x48
        hash_7f66c55f0f1308c2 // 0x49
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1d
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        toxic_growth_tier, // 0x4
        talent_deadshot_tier, // 0x5
        hash_1bb7d8d0caf94859, // 0x6
        hash_1f78483ef16f84d5, // 0x7
        weapon_knife_tier, // 0x8
        weapon_smg_tier, // 0x9
        talent_speedcola_tier, // 0xa
        heal_aoe_tier, // 0xb
        frost_blast_tier, // 0xc
        hash_38f1aae51e2d5f58, // 0xd
        hash_3908c184a5cbf339, // 0xe
        weapon_sniper_tier, // 0xf
        weapon_pistol_tier, // 0x10
        energy_mine_tier, // 0x11
        talent_quickrevive_tier, // 0x12
        ammomod_brainrot_tier, // 0x13
        weapon_lmg_tier, // 0x14
        ammomod_napalmburst_tier, // 0x15
        ring_of_fire_tier, // 0x16
        hash_63114aea3939d941, // 0x17
        ammomod_deadwire_tier, // 0x18
        talent_elemental_pop_tier, // 0x19
        talent_staminup_tier, // 0x1a
        weapon_tactical_tier, // 0x1b
        weapon_special_tier // 0x1c
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x162f0, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xba08(0x1741 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x162e8, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_fdb6331aaa26d255 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 91040 (0x163a0)
    // header byte size . 11380 (0x2c74)

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

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6d, array:0x6d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x58, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x4b, array:0x4b(hti:0x3)
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

    // bitSize: 0xba08, members: 20
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xad0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bd0, bitSize: 0xe8(0x1d Byte(s)), array:0x1d(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1cb8, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x24f8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2500, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2580, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb0b0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb930, bitSize: 0x58(0xb Byte(s))
        execution execution;
        // offset: 0xb988, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xba00, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xba01, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xba02, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xba03, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x6d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s2_analog_420, // 0x24
        wristaccessory_t9_s2_digital_mini_map, // 0x25
        wristaccessory_t9_s1_digital_kazuya_01, // 0x26
        wristaccessory_t9_s2_digital_mayan, // 0x27
        wristaccessory_t9_s1_digital_diver, // 0x28
        wristaccessory_t9_esports_thieves_ms, // 0x29
        wristaccessory_t9_esports_thieves_pc, // 0x2a
        wristaccessory_t9_esports_thieves_sy, // 0x2b
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2c
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2d
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2e
        wristaccessory_t9_esports_subliners_pc, // 0x2f
        wristaccessory_t9_esports_subliners_sy, // 0x30
        wristaccessory_t9_esports_subliners_ms, // 0x31
        wristaccessory_t9_s2_analog_dark_aether, // 0x32
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x61
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x62
        wristaccessory_t9_s1_digital_rank_01, // 0x63
        wristaccessory_t9_s2_digital_jade, // 0x64
        hash_708a99620b81ea23, // 0x65
        hash_708a9a620b81ebd6, // 0x66
        wristaccessory_t9_s3_analog_zombie_naga, // 0x67
        wristaccessory_t9_s2_analog_black_silver, // 0x68
        wristaccessory_t9_s3_digital_death_touch, // 0x69
        wristaccessory_t9_s2_analog_black_gold, // 0x6a
        wristaccessory_t9_s1_digital_compass_01, // 0x6b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6c
    };

    // idx 0x3 members: 0x4b
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_173, // 0x5
        execution_117, // 0x6
        execution_110, // 0x7
        execution_111, // 0x8
        execution_112, // 0x9
        execution_118, // 0xa
        execution_101, // 0xb
        execution_100, // 0xc
        execution_108, // 0xd
        execution_138, // 0xe
        execution_139, // 0xf
        execution_132, // 0x10
        execution_133, // 0x11
        execution_130, // 0x12
        execution_136, // 0x13
        execution_137, // 0x14
        execution_135, // 0x15
        execution_129, // 0x16
        execution_124, // 0x17
        execution_127, // 0x18
        execution_126, // 0x19
        execution_121, // 0x1a
        execution_120, // 0x1b
        execution_123, // 0x1c
        execution_201, // 0x1d
        execution_202, // 0x1e
        execution_203, // 0x1f
        execution_086, // 0x20
        execution_084, // 0x21
        execution_099, // 0x22
        execution_029, // 0x23
        execution_020, // 0x24
        execution_021, // 0x25
        execution_022, // 0x26
        execution_023, // 0x27
        execution_024, // 0x28
        execution_025, // 0x29
        execution_026, // 0x2a
        execution_027, // 0x2b
        execution_038, // 0x2c
        execution_033, // 0x2d
        execution_032, // 0x2e
        execution_031, // 0x2f
        execution_030, // 0x30
        execution_037, // 0x31
        execution_036, // 0x32
        execution_034, // 0x33
        execution_009, // 0x34
        execution_007, // 0x35
        execution_004, // 0x36
        execution_005, // 0x37
        execution_002, // 0x38
        execution_003, // 0x39
        execution_001, // 0x3a
        execution_010, // 0x3b
        execution_013, // 0x3c
        execution_015, // 0x3d
        execution_014, // 0x3e
        execution_017, // 0x3f
        execution_016, // 0x40
        execution_018, // 0x41
        execution_064, // 0x42
        execution_066, // 0x43
        execution_062, // 0x44
        execution_069, // 0x45
        execution_048, // 0x46
        execution_040, // 0x47
        execution_058, // 0x48
        execution_051, // 0x49
        hash_7f66c55f0f1308c2 // 0x4a
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1d
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        toxic_growth_tier, // 0x4
        talent_deadshot_tier, // 0x5
        hash_1bb7d8d0caf94859, // 0x6
        hash_1f78483ef16f84d5, // 0x7
        weapon_knife_tier, // 0x8
        weapon_smg_tier, // 0x9
        talent_speedcola_tier, // 0xa
        heal_aoe_tier, // 0xb
        frost_blast_tier, // 0xc
        hash_38f1aae51e2d5f58, // 0xd
        hash_3908c184a5cbf339, // 0xe
        weapon_sniper_tier, // 0xf
        weapon_pistol_tier, // 0x10
        energy_mine_tier, // 0x11
        talent_quickrevive_tier, // 0x12
        ammomod_brainrot_tier, // 0x13
        weapon_lmg_tier, // 0x14
        ammomod_napalmburst_tier, // 0x15
        ring_of_fire_tier, // 0x16
        hash_63114aea3939d941, // 0x17
        ammomod_deadwire_tier, // 0x18
        talent_elemental_pop_tier, // 0x19
        talent_staminup_tier, // 0x1a
        weapon_tactical_tier, // 0x1b
        weapon_special_tier // 0x1c
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x162f0, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xba08(0x1741 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x162e8, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_b17c10ff8a098eb1 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 91040 (0x163a0)
    // header byte size . 11380 (0x2c74)

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

    // bitSize: 0x78, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x6d, array:0x6d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x58, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x4c, array:0x4c(hti:0x3)
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

    // bitSize: 0xba08, members: 20
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xad0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bd0, bitSize: 0xe8(0x1d Byte(s)), array:0x1d(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1cb8, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x24f8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2500, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2580, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb0b0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xb930, bitSize: 0x58(0xb Byte(s))
        execution execution;
        // offset: 0xb988, bitSize: 0x78(0xf Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xba00, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xba01, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xba02, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xba03, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x6d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_esports_legion_sy, // 0x2
        wristaccessory_t9_esports_legion_pc, // 0x3
        wristaccessory_t9_esports_legion_ms, // 0x4
        wristaccessory_t9_s3_analog_winter_ash, // 0x5
        wristaccessory_t9_esports_rokkr_sy, // 0x6
        wristaccessory_t9_esports_rokkr_pc, // 0x7
        wristaccessory_t9_esports_rokkr_ms, // 0x8
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x9
        wristaccessory_t9_s2_analog_necro_king, // 0xa
        wristaccessory_t9_s2_digital_sforce, // 0xb
        wristaccessory_t9_s1_digital_gambit_01, // 0xc
        wristaccessory_t9_s3_digital_radiation, // 0xd
        wristaccessory_t9_s1_digital_inteculo_01, // 0xe
        wristaccessory_t9_s3_digital_ultrafunk, // 0xf
        wristaccessory_t9_s1_analog_brawler_01, // 0x10
        wristaccessory_t9_s3_bracelet_01, // 0x11
        hash_1ccdff0ebb3ad612, // 0x12
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x13
        wristaccessory_t9_s1_analog_kremlin, // 0x14
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x15
        wristaccessory_t9_s2_analog_mortal, // 0x16
        wristaccessory_t9_esports_empire_ms, // 0x17
        wristaccessory_t9_esports_empire_pc, // 0x18
        wristaccessory_t9_esports_empire_sy, // 0x19
        hash_25142303752f4324, // 0x1a
        hash_25142503752f468a, // 0x1b
        wristaccessory_t9_s1_analog_retroren_02, // 0x1c
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x1d
        wristaccessory_default, // 0x1e
        wristaccessory_t9_esports_royalravens_ms, // 0x1f
        wristaccessory_t9_esports_royalravens_pc, // 0x20
        wristaccessory_t9_esports_royalravens_sy, // 0x21
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x22
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x23
        wristaccessory_t9_s2_analog_420, // 0x24
        wristaccessory_t9_s2_digital_mini_map, // 0x25
        wristaccessory_t9_s1_digital_kazuya_01, // 0x26
        wristaccessory_t9_s2_digital_mayan, // 0x27
        wristaccessory_t9_s1_digital_diver, // 0x28
        wristaccessory_t9_esports_thieves_ms, // 0x29
        wristaccessory_t9_esports_thieves_pc, // 0x2a
        wristaccessory_t9_esports_thieves_sy, // 0x2b
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x2c
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x2d
        wristaccessory_t9_s2_analog_naval_warfare, // 0x2e
        wristaccessory_t9_esports_subliners_pc, // 0x2f
        wristaccessory_t9_esports_subliners_sy, // 0x30
        wristaccessory_t9_esports_subliners_ms, // 0x31
        wristaccessory_t9_s2_analog_dark_aether, // 0x32
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x33
        wristaccessory_t9_s2_analog_mayan, // 0x34
        wristaccessory_t9_s1_analog_bope_01, // 0x35
        wristaccessory_t9_esports_ultra_ms, // 0x36
        wristaccessory_t9_esports_ultra_sy, // 0x37
        wristaccessory_t9_esports_ultra_pc, // 0x38
        wristaccessory_t9_s2_analog_paratroop, // 0x39
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x3a
        wristaccessory_t9_s1_analog_aviator_02, // 0x3b
        wristaccessory_t9_s1_analog_horex_01, // 0x3c
        wristaccessory_t9_s1_analog_fancy, // 0x3d
        wristaccessory_t9_esports_optic_ms, // 0x3e
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x3f
        wristaccessory_t9_esports_optic_sy, // 0x40
        wristaccessory_t9_esports_optic_pc, // 0x41
        wristaccessory_t9_s2_analog_rebel, // 0x42
        wristaccessory_t9_s2_analog_white_tiger, // 0x43
        wristaccessory_t9_s2_analog_caiman, // 0x44
        hash_4fee76d1114701af, // 0x45
        wristaccessory_t9_s2_analog_broken_fancy, // 0x46
        hash_511c7fa835d89891, // 0x47
        wristaccessory_t9_s1_bracelet_skull_01, // 0x48
        wristaccessory_t9_s3_digital_big_joke, // 0x49
        wristaccessory_t9_s1_bracelet_01, // 0x4a
        hash_575c967cd59c9145, // 0x4b
        wristaccessory_t9_esports_surge_sy, // 0x4c
        wristaccessory_t9_esports_surge_pc, // 0x4d
        wristaccessory_t9_esports_surge_ms, // 0x4e
        wristaccessory_t9_esports_faze_ms, // 0x4f
        wristaccessory_t9_esports_faze_pc, // 0x50
        wristaccessory_t9_esports_faze_sy, // 0x51
        wristaccessory_t9_s1_analog_origin_01, // 0x52
        wristaccessory_t9_esports_mutineers_pc, // 0x53
        wristaccessory_t9_esports_mutineers_sy, // 0x54
        wristaccessory_t9_esports_mutineers_ms, // 0x55
        wristaccessory_t9_s1_analog_private_eye_03, // 0x56
        wristaccessory_t9_s1_analog_private_eye_02, // 0x57
        wristaccessory_t9_s1_analog_private_eye_01, // 0x58
        wristaccessory_t9_esports_guerillas_sy, // 0x59
        wristaccessory_t9_esports_guerillas_pc, // 0x5a
        wristaccessory_t9_esports_guerillas_ms, // 0x5b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x5c
        wristaccessory_t9_s2_digital_river_slasher, // 0x5d
        wristaccessory_t9_s2_bracelet_lure, // 0x5e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x5f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x60
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x61
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x62
        wristaccessory_t9_s1_digital_rank_01, // 0x63
        wristaccessory_t9_s2_digital_jade, // 0x64
        hash_708a99620b81ea23, // 0x65
        hash_708a9a620b81ebd6, // 0x66
        wristaccessory_t9_s3_analog_zombie_naga, // 0x67
        wristaccessory_t9_s2_analog_black_silver, // 0x68
        wristaccessory_t9_s3_digital_death_touch, // 0x69
        wristaccessory_t9_s2_analog_black_gold, // 0x6a
        wristaccessory_t9_s1_digital_compass_01, // 0x6b
        wristaccessory_t9_s1_digital_first_spy_01 // 0x6c
    };

    // idx 0x3 members: 0x4c
    enum executions {
        execution_158, // 0x0
        execution_150, // 0x1
        execution_148, // 0x2
        execution_147, // 0x3
        execution_146, // 0x4
        execution_173, // 0x5
        execution_117, // 0x6
        execution_110, // 0x7
        execution_111, // 0x8
        execution_112, // 0x9
        execution_118, // 0xa
        execution_101, // 0xb
        execution_100, // 0xc
        execution_108, // 0xd
        execution_138, // 0xe
        execution_139, // 0xf
        execution_132, // 0x10
        execution_133, // 0x11
        execution_130, // 0x12
        execution_136, // 0x13
        execution_137, // 0x14
        execution_135, // 0x15
        execution_129, // 0x16
        execution_124, // 0x17
        execution_127, // 0x18
        execution_126, // 0x19
        execution_121, // 0x1a
        execution_120, // 0x1b
        execution_123, // 0x1c
        execution_039bc, // 0x1d
        execution_201, // 0x1e
        execution_202, // 0x1f
        execution_203, // 0x20
        execution_086, // 0x21
        execution_084, // 0x22
        execution_099, // 0x23
        execution_029, // 0x24
        execution_020, // 0x25
        execution_021, // 0x26
        execution_022, // 0x27
        execution_023, // 0x28
        execution_024, // 0x29
        execution_025, // 0x2a
        execution_026, // 0x2b
        execution_027, // 0x2c
        execution_038, // 0x2d
        execution_033, // 0x2e
        execution_032, // 0x2f
        execution_031, // 0x30
        execution_030, // 0x31
        execution_037, // 0x32
        execution_036, // 0x33
        execution_034, // 0x34
        execution_009, // 0x35
        execution_007, // 0x36
        execution_004, // 0x37
        execution_005, // 0x38
        execution_002, // 0x39
        execution_003, // 0x3a
        execution_001, // 0x3b
        execution_010, // 0x3c
        execution_013, // 0x3d
        execution_015, // 0x3e
        execution_014, // 0x3f
        execution_017, // 0x40
        execution_016, // 0x41
        execution_018, // 0x42
        execution_064, // 0x43
        execution_066, // 0x44
        execution_062, // 0x45
        execution_069, // 0x46
        execution_048, // 0x47
        execution_040, // 0x48
        execution_058, // 0x49
        execution_051, // 0x4a
        hash_7f66c55f0f1308c2 // 0x4b
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1d
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        toxic_growth_tier, // 0x4
        talent_deadshot_tier, // 0x5
        hash_1bb7d8d0caf94859, // 0x6
        hash_1f78483ef16f84d5, // 0x7
        weapon_knife_tier, // 0x8
        weapon_smg_tier, // 0x9
        talent_speedcola_tier, // 0xa
        heal_aoe_tier, // 0xb
        frost_blast_tier, // 0xc
        hash_38f1aae51e2d5f58, // 0xd
        hash_3908c184a5cbf339, // 0xe
        weapon_sniper_tier, // 0xf
        weapon_pistol_tier, // 0x10
        energy_mine_tier, // 0x11
        talent_quickrevive_tier, // 0x12
        ammomod_brainrot_tier, // 0x13
        weapon_lmg_tier, // 0x14
        ammomod_napalmburst_tier, // 0x15
        ring_of_fire_tier, // 0x16
        hash_63114aea3939d941, // 0x17
        ammomod_deadwire_tier, // 0x18
        talent_elemental_pop_tier, // 0x19
        talent_staminup_tier, // 0x1a
        weapon_tactical_tier, // 0x1b
        weapon_special_tier // 0x1c
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x162f0, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xba08(0x1741 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x162e8, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_a2c2aa2f1a6d6b12 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 91456 (0x16540)
    // header byte size . 11432 (0x2ca8)

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

    // bitSize: 0x88, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x7c, array:0x7c(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x68, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x59, array:0x59(hti:0x3)
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

    // bitSize: 0xbba8, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xad0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bd0, bitSize: 0xf0(0x1e Byte(s)), array:0x1e(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1cc0, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x1e38, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2678, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2680, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2700, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb230, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xbab0, bitSize: 0x68(0xd Byte(s))
        execution execution;
        // offset: 0xbb18, bitSize: 0x88(0x11 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xbba0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xbba1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xbba2, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xbba3, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x7c
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_s3_analog_mctag, // 0x2
        wristaccessory_t9_s4_analog_spaceship, // 0x3
        wristaccessory_t9_esports_legion_sy, // 0x4
        wristaccessory_t9_esports_legion_pc, // 0x5
        wristaccessory_t9_esports_legion_ms, // 0x6
        wristaccessory_t9_s3_analog_winter_ash, // 0x7
        wristaccessory_t9_esports_rokkr_sy, // 0x8
        wristaccessory_t9_esports_rokkr_pc, // 0x9
        wristaccessory_t9_esports_rokkr_ms, // 0xa
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xb
        wristaccessory_t9_s2_analog_necro_king, // 0xc
        wristaccessory_t9_s2_digital_sforce, // 0xd
        wristaccessory_t9_s1_digital_gambit_01, // 0xe
        wristaccessory_t9_s3_digital_radiation, // 0xf
        wristaccessory_t9_s1_digital_inteculo_01, // 0x10
        wristaccessory_t9_s3_digital_ultrafunk, // 0x11
        wristaccessory_t9_s1_analog_brawler_01, // 0x12
        wristaccessory_t9_s4_bracelet_weathered, // 0x13
        wristaccessory_t9_s4_analog_future_soldier, // 0x14
        wristaccessory_t9_s3_bracelet_01, // 0x15
        hash_1ccdff0ebb3ad612, // 0x16
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x17
        wristaccessory_t9_s1_analog_kremlin, // 0x18
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x19
        wristaccessory_t9_s2_analog_mortal, // 0x1a
        wristaccessory_t9_esports_empire_ms, // 0x1b
        wristaccessory_t9_esports_empire_pc, // 0x1c
        wristaccessory_t9_esports_empire_sy, // 0x1d
        hash_25142303752f4324, // 0x1e
        hash_25142503752f468a, // 0x1f
        wristaccessory_t9_s1_analog_retroren_02, // 0x20
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x21
        wristaccessory_default, // 0x22
        wristaccessory_t9_esports_royalravens_ms, // 0x23
        wristaccessory_t9_esports_royalravens_pc, // 0x24
        wristaccessory_t9_esports_royalravens_sy, // 0x25
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x26
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x27
        wristaccessory_t9_s4_analog_rbear, // 0x28
        wristaccessory_t9_s2_analog_420, // 0x29
        wristaccessory_t9_s2_digital_mini_map, // 0x2a
        wristaccessory_t9_s1_digital_kazuya_01, // 0x2b
        wristaccessory_t9_s2_digital_mayan, // 0x2c
        wristaccessory_t9_s1_digital_diver, // 0x2d
        wristaccessory_t9_s4_analog_roadwar, // 0x2e
        wristaccessory_t9_esports_thieves_ms, // 0x2f
        wristaccessory_t9_esports_thieves_pc, // 0x30
        wristaccessory_t9_esports_thieves_sy, // 0x31
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x32
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x33
        wristaccessory_t9_s2_analog_naval_warfare, // 0x34
        wristaccessory_t9_esports_subliners_pc, // 0x35
        wristaccessory_t9_esports_subliners_sy, // 0x36
        wristaccessory_t9_esports_subliners_ms, // 0x37
        wristaccessory_t9_s3_digital_magic8, // 0x38
        wristaccessory_t9_s4_analog_assassin, // 0x39
        wristaccessory_t9_s2_analog_dark_aether, // 0x3a
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x3b
        wristaccessory_t9_s2_analog_mayan, // 0x3c
        wristaccessory_t9_s1_analog_bope_01, // 0x3d
        wristaccessory_t9_esports_ultra_ms, // 0x3e
        wristaccessory_t9_esports_ultra_sy, // 0x3f
        wristaccessory_t9_esports_ultra_pc, // 0x40
        wristaccessory_t9_s2_analog_paratroop, // 0x41
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x42
        wristaccessory_t9_s1_analog_aviator_02, // 0x43
        wristaccessory_t9_s1_analog_horex_01, // 0x44
        wristaccessory_t9_s1_analog_fancy, // 0x45
        wristaccessory_t9_esports_optic_ms, // 0x46
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x47
        wristaccessory_t9_esports_optic_sy, // 0x48
        wristaccessory_t9_esports_optic_pc, // 0x49
        wristaccessory_t9_s2_analog_rebel, // 0x4a
        wristaccessory_t9_s2_analog_white_tiger, // 0x4b
        wristaccessory_t9_s2_analog_caiman, // 0x4c
        hash_4fee76d1114701af, // 0x4d
        wristaccessory_t9_s3_analog_chrono_sea, // 0x4e
        wristaccessory_t9_s2_analog_broken_fancy, // 0x4f
        hash_511c7fa835d89891, // 0x50
        wristaccessory_t9_s4_digital_royal_decree, // 0x51
        wristaccessory_t9_s1_bracelet_skull_01, // 0x52
        wristaccessory_t9_s3_digital_big_joke, // 0x53
        wristaccessory_t9_s1_bracelet_01, // 0x54
        hash_575c967cd59c9145, // 0x55
        wristaccessory_t9_esports_surge_sy, // 0x56
        wristaccessory_t9_esports_surge_pc, // 0x57
        wristaccessory_t9_s4_digital_big_joke, // 0x58
        wristaccessory_t9_esports_surge_ms, // 0x59
        wristaccessory_t9_esports_faze_ms, // 0x5a
        wristaccessory_t9_esports_faze_pc, // 0x5b
        wristaccessory_t9_esports_faze_sy, // 0x5c
        wristaccessory_t9_s1_analog_origin_01, // 0x5d
        wristaccessory_t9_esports_mutineers_pc, // 0x5e
        wristaccessory_t9_esports_mutineers_sy, // 0x5f
        wristaccessory_t9_esports_mutineers_ms, // 0x60
        wristaccessory_t9_s1_analog_private_eye_03, // 0x61
        wristaccessory_t9_s1_analog_private_eye_02, // 0x62
        wristaccessory_t9_s1_analog_private_eye_01, // 0x63
        wristaccessory_t9_esports_guerillas_sy, // 0x64
        wristaccessory_t9_esports_guerillas_pc, // 0x65
        wristaccessory_t9_esports_guerillas_ms, // 0x66
        wristaccessory_t9_s4_analog_wasteland, // 0x67
        wristaccessory_t9_s3_digital_diver_wargames, // 0x68
        wristaccessory_t9_s2_digital_river_slasher, // 0x69
        wristaccessory_t9_s2_bracelet_lure, // 0x6a
        wristaccessory_t9_s2_analog_cold_hearted, // 0x6b
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x6c
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x6d
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x6e
        wristaccessory_t9_s1_digital_rank_01, // 0x6f
        wristaccessory_t9_s2_digital_jade, // 0x70
        hash_708a99620b81ea23, // 0x71
        hash_708a9a620b81ebd6, // 0x72
        wristaccessory_t9_s3_analog_zombie_naga, // 0x73
        wristaccessory_t9_s2_analog_black_silver, // 0x74
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x75
        wristaccessory_t9_s3_digital_death_touch, // 0x76
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x77
        wristaccessory_t9_s2_analog_black_gold, // 0x78
        wristaccessory_t9_s1_digital_compass_01, // 0x79
        wristaccessory_t9_s1_digital_first_spy_01, // 0x7a
        wristaccessory_t9_s1_digital_gaudy_01 // 0x7b
    };

    // idx 0x3 members: 0x59
    enum executions {
        execution_158, // 0x0
        execution_159, // 0x1
        execution_150, // 0x2
        execution_148, // 0x3
        execution_147, // 0x4
        execution_146, // 0x5
        execution_174, // 0x6
        execution_173, // 0x7
        execution_117, // 0x8
        execution_110, // 0x9
        execution_111, // 0xa
        execution_112, // 0xb
        execution_118, // 0xc
        execution_119, // 0xd
        execution_101, // 0xe
        execution_100, // 0xf
        execution_108, // 0x10
        execution_138, // 0x11
        execution_139, // 0x12
        execution_132, // 0x13
        execution_133, // 0x14
        execution_130, // 0x15
        execution_136, // 0x16
        execution_137, // 0x17
        execution_134, // 0x18
        execution_135, // 0x19
        execution_129, // 0x1a
        execution_125, // 0x1b
        execution_124, // 0x1c
        execution_127, // 0x1d
        execution_126, // 0x1e
        execution_121, // 0x1f
        execution_120, // 0x20
        execution_123, // 0x21
        execution_039bc, // 0x22
        execution_204, // 0x23
        execution_201, // 0x24
        execution_202, // 0x25
        execution_203, // 0x26
        execution_086, // 0x27
        execution_084, // 0x28
        execution_099, // 0x29
        execution_029, // 0x2a
        execution_020, // 0x2b
        execution_021, // 0x2c
        execution_022, // 0x2d
        execution_023, // 0x2e
        execution_024, // 0x2f
        execution_025, // 0x30
        execution_026, // 0x31
        execution_027, // 0x32
        execution_038, // 0x33
        execution_033, // 0x34
        execution_032, // 0x35
        execution_031, // 0x36
        execution_030, // 0x37
        execution_037, // 0x38
        execution_036, // 0x39
        execution_034, // 0x3a
        execution_009, // 0x3b
        execution_007, // 0x3c
        execution_004, // 0x3d
        execution_005, // 0x3e
        execution_002, // 0x3f
        execution_003, // 0x40
        execution_001, // 0x41
        execution_010, // 0x42
        execution_013, // 0x43
        execution_015, // 0x44
        execution_014, // 0x45
        execution_017, // 0x46
        execution_016, // 0x47
        execution_018, // 0x48
        execution_064, // 0x49
        execution_065, // 0x4a
        execution_066, // 0x4b
        execution_067, // 0x4c
        execution_061, // 0x4d
        execution_062, // 0x4e
        execution_069, // 0x4f
        execution_048, // 0x50
        execution_049, // 0x51
        execution_043, // 0x52
        execution_040, // 0x53
        execution_058, // 0x54
        execution_051, // 0x55
        execution_052, // 0x56
        execution_038r, // 0x57
        hash_7f66c55f0f1308c2 // 0x58
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1e
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_mulekick_tier, // 0x4
        toxic_growth_tier, // 0x5
        talent_deadshot_tier, // 0x6
        hash_1bb7d8d0caf94859, // 0x7
        hash_1f78483ef16f84d5, // 0x8
        weapon_knife_tier, // 0x9
        weapon_smg_tier, // 0xa
        talent_speedcola_tier, // 0xb
        heal_aoe_tier, // 0xc
        frost_blast_tier, // 0xd
        hash_38f1aae51e2d5f58, // 0xe
        hash_3908c184a5cbf339, // 0xf
        weapon_sniper_tier, // 0x10
        weapon_pistol_tier, // 0x11
        energy_mine_tier, // 0x12
        talent_quickrevive_tier, // 0x13
        ammomod_brainrot_tier, // 0x14
        weapon_lmg_tier, // 0x15
        ammomod_napalmburst_tier, // 0x16
        ring_of_fire_tier, // 0x17
        hash_63114aea3939d941, // 0x18
        ammomod_deadwire_tier, // 0x19
        talent_elemental_pop_tier, // 0x1a
        talent_staminup_tier, // 0x1b
        weapon_tactical_tier, // 0x1c
        weapon_special_tier // 0x1d
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16490, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xbba8(0x1775 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16488, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_96c00cb13316fa68 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 91456 (0x16540)
    // header byte size . 11432 (0x2ca8)

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

    // bitSize: 0x88, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x7c, array:0x7c(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x68, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x5a, array:0x5a(hti:0x3)
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

    // bitSize: 0xbba8, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xad0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bd0, bitSize: 0xf0(0x1e Byte(s)), array:0x1e(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1cc0, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x1e38, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2678, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2680, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2700, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb230, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xbab0, bitSize: 0x68(0xd Byte(s))
        execution execution;
        // offset: 0xbb18, bitSize: 0x88(0x11 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xbba0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xbba1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xbba2, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xbba3, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x7c
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_s3_analog_mctag, // 0x2
        wristaccessory_t9_s4_analog_spaceship, // 0x3
        wristaccessory_t9_esports_legion_sy, // 0x4
        wristaccessory_t9_esports_legion_pc, // 0x5
        wristaccessory_t9_esports_legion_ms, // 0x6
        wristaccessory_t9_s3_analog_winter_ash, // 0x7
        wristaccessory_t9_esports_rokkr_sy, // 0x8
        wristaccessory_t9_esports_rokkr_pc, // 0x9
        wristaccessory_t9_esports_rokkr_ms, // 0xa
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xb
        wristaccessory_t9_s2_analog_necro_king, // 0xc
        wristaccessory_t9_s2_digital_sforce, // 0xd
        wristaccessory_t9_s1_digital_gambit_01, // 0xe
        wristaccessory_t9_s3_digital_radiation, // 0xf
        wristaccessory_t9_s1_digital_inteculo_01, // 0x10
        wristaccessory_t9_s3_digital_ultrafunk, // 0x11
        wristaccessory_t9_s1_analog_brawler_01, // 0x12
        wristaccessory_t9_s4_bracelet_weathered, // 0x13
        wristaccessory_t9_s4_analog_future_soldier, // 0x14
        wristaccessory_t9_s3_bracelet_01, // 0x15
        hash_1ccdff0ebb3ad612, // 0x16
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x17
        wristaccessory_t9_s1_analog_kremlin, // 0x18
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x19
        wristaccessory_t9_s2_analog_mortal, // 0x1a
        wristaccessory_t9_esports_empire_ms, // 0x1b
        wristaccessory_t9_esports_empire_pc, // 0x1c
        wristaccessory_t9_esports_empire_sy, // 0x1d
        hash_25142303752f4324, // 0x1e
        hash_25142503752f468a, // 0x1f
        wristaccessory_t9_s1_analog_retroren_02, // 0x20
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x21
        wristaccessory_default, // 0x22
        wristaccessory_t9_esports_royalravens_ms, // 0x23
        wristaccessory_t9_esports_royalravens_pc, // 0x24
        wristaccessory_t9_esports_royalravens_sy, // 0x25
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x26
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x27
        wristaccessory_t9_s4_analog_rbear, // 0x28
        wristaccessory_t9_s2_analog_420, // 0x29
        wristaccessory_t9_s2_digital_mini_map, // 0x2a
        wristaccessory_t9_s1_digital_kazuya_01, // 0x2b
        wristaccessory_t9_s2_digital_mayan, // 0x2c
        wristaccessory_t9_s1_digital_diver, // 0x2d
        wristaccessory_t9_s4_analog_roadwar, // 0x2e
        wristaccessory_t9_esports_thieves_ms, // 0x2f
        wristaccessory_t9_esports_thieves_pc, // 0x30
        wristaccessory_t9_esports_thieves_sy, // 0x31
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x32
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x33
        wristaccessory_t9_s2_analog_naval_warfare, // 0x34
        wristaccessory_t9_esports_subliners_pc, // 0x35
        wristaccessory_t9_esports_subliners_sy, // 0x36
        wristaccessory_t9_esports_subliners_ms, // 0x37
        wristaccessory_t9_s3_digital_magic8, // 0x38
        wristaccessory_t9_s4_analog_assassin, // 0x39
        wristaccessory_t9_s2_analog_dark_aether, // 0x3a
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x3b
        wristaccessory_t9_s2_analog_mayan, // 0x3c
        wristaccessory_t9_s1_analog_bope_01, // 0x3d
        wristaccessory_t9_esports_ultra_ms, // 0x3e
        wristaccessory_t9_esports_ultra_sy, // 0x3f
        wristaccessory_t9_esports_ultra_pc, // 0x40
        wristaccessory_t9_s2_analog_paratroop, // 0x41
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x42
        wristaccessory_t9_s1_analog_aviator_02, // 0x43
        wristaccessory_t9_s1_analog_horex_01, // 0x44
        wristaccessory_t9_s1_analog_fancy, // 0x45
        wristaccessory_t9_esports_optic_ms, // 0x46
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x47
        wristaccessory_t9_esports_optic_sy, // 0x48
        wristaccessory_t9_esports_optic_pc, // 0x49
        wristaccessory_t9_s2_analog_rebel, // 0x4a
        wristaccessory_t9_s2_analog_white_tiger, // 0x4b
        wristaccessory_t9_s2_analog_caiman, // 0x4c
        hash_4fee76d1114701af, // 0x4d
        wristaccessory_t9_s3_analog_chrono_sea, // 0x4e
        wristaccessory_t9_s2_analog_broken_fancy, // 0x4f
        hash_511c7fa835d89891, // 0x50
        wristaccessory_t9_s4_digital_royal_decree, // 0x51
        wristaccessory_t9_s1_bracelet_skull_01, // 0x52
        wristaccessory_t9_s3_digital_big_joke, // 0x53
        wristaccessory_t9_s1_bracelet_01, // 0x54
        hash_575c967cd59c9145, // 0x55
        wristaccessory_t9_esports_surge_sy, // 0x56
        wristaccessory_t9_esports_surge_pc, // 0x57
        wristaccessory_t9_s4_digital_big_joke, // 0x58
        wristaccessory_t9_esports_surge_ms, // 0x59
        wristaccessory_t9_esports_faze_ms, // 0x5a
        wristaccessory_t9_esports_faze_pc, // 0x5b
        wristaccessory_t9_esports_faze_sy, // 0x5c
        wristaccessory_t9_s1_analog_origin_01, // 0x5d
        wristaccessory_t9_esports_mutineers_pc, // 0x5e
        wristaccessory_t9_esports_mutineers_sy, // 0x5f
        wristaccessory_t9_esports_mutineers_ms, // 0x60
        wristaccessory_t9_s1_analog_private_eye_03, // 0x61
        wristaccessory_t9_s1_analog_private_eye_02, // 0x62
        wristaccessory_t9_s1_analog_private_eye_01, // 0x63
        wristaccessory_t9_esports_guerillas_sy, // 0x64
        wristaccessory_t9_esports_guerillas_pc, // 0x65
        wristaccessory_t9_esports_guerillas_ms, // 0x66
        wristaccessory_t9_s4_analog_wasteland, // 0x67
        wristaccessory_t9_s3_digital_diver_wargames, // 0x68
        wristaccessory_t9_s2_digital_river_slasher, // 0x69
        wristaccessory_t9_s2_bracelet_lure, // 0x6a
        wristaccessory_t9_s2_analog_cold_hearted, // 0x6b
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x6c
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x6d
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x6e
        wristaccessory_t9_s1_digital_rank_01, // 0x6f
        wristaccessory_t9_s2_digital_jade, // 0x70
        hash_708a99620b81ea23, // 0x71
        hash_708a9a620b81ebd6, // 0x72
        wristaccessory_t9_s3_analog_zombie_naga, // 0x73
        wristaccessory_t9_s2_analog_black_silver, // 0x74
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x75
        wristaccessory_t9_s3_digital_death_touch, // 0x76
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x77
        wristaccessory_t9_s2_analog_black_gold, // 0x78
        wristaccessory_t9_s1_digital_compass_01, // 0x79
        wristaccessory_t9_s1_digital_first_spy_01, // 0x7a
        wristaccessory_t9_s1_digital_gaudy_01 // 0x7b
    };

    // idx 0x3 members: 0x5a
    enum executions {
        execution_158, // 0x0
        execution_159, // 0x1
        execution_150, // 0x2
        execution_148, // 0x3
        execution_147, // 0x4
        execution_146, // 0x5
        execution_174, // 0x6
        execution_173, // 0x7
        execution_117, // 0x8
        execution_110, // 0x9
        execution_111, // 0xa
        execution_112, // 0xb
        execution_118, // 0xc
        execution_119, // 0xd
        execution_101, // 0xe
        execution_100, // 0xf
        execution_108, // 0x10
        execution_138, // 0x11
        execution_139, // 0x12
        execution_132, // 0x13
        execution_133, // 0x14
        execution_130, // 0x15
        execution_136, // 0x16
        execution_137, // 0x17
        execution_134, // 0x18
        execution_135, // 0x19
        execution_129, // 0x1a
        execution_125, // 0x1b
        execution_124, // 0x1c
        execution_127, // 0x1d
        execution_126, // 0x1e
        execution_121, // 0x1f
        execution_120, // 0x20
        execution_123, // 0x21
        execution_039bc, // 0x22
        execution_204, // 0x23
        execution_201, // 0x24
        execution_202, // 0x25
        execution_203, // 0x26
        execution_086, // 0x27
        execution_084, // 0x28
        execution_099, // 0x29
        execution_029, // 0x2a
        execution_020, // 0x2b
        execution_021, // 0x2c
        execution_022, // 0x2d
        execution_023, // 0x2e
        execution_024, // 0x2f
        execution_025, // 0x30
        execution_026, // 0x31
        execution_027, // 0x32
        execution_038, // 0x33
        execution_033, // 0x34
        execution_032, // 0x35
        execution_031, // 0x36
        execution_030, // 0x37
        execution_037, // 0x38
        execution_036, // 0x39
        execution_034, // 0x3a
        execution_009, // 0x3b
        execution_007, // 0x3c
        execution_004, // 0x3d
        execution_005, // 0x3e
        execution_002, // 0x3f
        execution_003, // 0x40
        execution_001, // 0x41
        execution_010, // 0x42
        execution_013, // 0x43
        execution_015, // 0x44
        execution_014, // 0x45
        execution_017, // 0x46
        execution_016, // 0x47
        execution_018, // 0x48
        execution_064, // 0x49
        execution_065, // 0x4a
        execution_066, // 0x4b
        execution_067, // 0x4c
        execution_061, // 0x4d
        execution_062, // 0x4e
        execution_069, // 0x4f
        execution_048, // 0x50
        execution_049, // 0x51
        execution_043, // 0x52
        execution_040, // 0x53
        execution_059, // 0x54
        execution_058, // 0x55
        execution_051, // 0x56
        execution_052, // 0x57
        execution_038r, // 0x58
        hash_7f66c55f0f1308c2 // 0x59
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1e
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_mulekick_tier, // 0x4
        toxic_growth_tier, // 0x5
        talent_deadshot_tier, // 0x6
        hash_1bb7d8d0caf94859, // 0x7
        hash_1f78483ef16f84d5, // 0x8
        weapon_knife_tier, // 0x9
        weapon_smg_tier, // 0xa
        talent_speedcola_tier, // 0xb
        heal_aoe_tier, // 0xc
        frost_blast_tier, // 0xd
        hash_38f1aae51e2d5f58, // 0xe
        hash_3908c184a5cbf339, // 0xf
        weapon_sniper_tier, // 0x10
        weapon_pistol_tier, // 0x11
        energy_mine_tier, // 0x12
        talent_quickrevive_tier, // 0x13
        ammomod_brainrot_tier, // 0x14
        weapon_lmg_tier, // 0x15
        ammomod_napalmburst_tier, // 0x16
        ring_of_fire_tier, // 0x17
        hash_63114aea3939d941, // 0x18
        ammomod_deadwire_tier, // 0x19
        talent_elemental_pop_tier, // 0x1a
        talent_staminup_tier, // 0x1b
        weapon_tactical_tier, // 0x1c
        weapon_special_tier // 0x1d
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16490, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xbba8(0x1775 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16488, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_4ea9a27e49287ca {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 91456 (0x16540)
    // header byte size . 11432 (0x2ca8)

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

    // bitSize: 0x88, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x7d, array:0x7d(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x68, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x5a, array:0x5a(hti:0x3)
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

    // bitSize: 0xbba8, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xad0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bd0, bitSize: 0xf0(0x1e Byte(s)), array:0x1e(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1cc0, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x1e38, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2678, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2680, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2700, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb230, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xbab0, bitSize: 0x68(0xd Byte(s))
        execution execution;
        // offset: 0xbb18, bitSize: 0x88(0x11 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xbba0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xbba1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xbba2, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xbba3, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x7d
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_s3_analog_mctag, // 0x2
        wristaccessory_t9_s4_analog_spaceship, // 0x3
        wristaccessory_t9_esports_legion_sy, // 0x4
        wristaccessory_t9_esports_legion_pc, // 0x5
        wristaccessory_t9_esports_legion_ms, // 0x6
        wristaccessory_t9_s3_analog_winter_ash, // 0x7
        wristaccessory_t9_esports_rokkr_sy, // 0x8
        wristaccessory_t9_esports_rokkr_pc, // 0x9
        wristaccessory_t9_esports_rokkr_ms, // 0xa
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xb
        wristaccessory_t9_s2_analog_necro_king, // 0xc
        wristaccessory_t9_s2_digital_sforce, // 0xd
        wristaccessory_t9_s1_digital_gambit_01, // 0xe
        wristaccessory_t9_s3_digital_radiation, // 0xf
        wristaccessory_t9_s1_digital_inteculo_01, // 0x10
        wristaccessory_t9_s3_digital_ultrafunk, // 0x11
        wristaccessory_t9_s1_analog_brawler_01, // 0x12
        wristaccessory_t9_s4_bracelet_weathered, // 0x13
        wristaccessory_t9_s4_analog_future_soldier, // 0x14
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x15
        wristaccessory_t9_s3_bracelet_01, // 0x16
        hash_1ccdff0ebb3ad612, // 0x17
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x18
        wristaccessory_t9_s1_analog_kremlin, // 0x19
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x1a
        wristaccessory_t9_s2_analog_mortal, // 0x1b
        wristaccessory_t9_esports_empire_ms, // 0x1c
        wristaccessory_t9_esports_empire_pc, // 0x1d
        wristaccessory_t9_esports_empire_sy, // 0x1e
        hash_25142303752f4324, // 0x1f
        hash_25142503752f468a, // 0x20
        wristaccessory_t9_s1_analog_retroren_02, // 0x21
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x22
        wristaccessory_default, // 0x23
        wristaccessory_t9_esports_royalravens_ms, // 0x24
        wristaccessory_t9_esports_royalravens_pc, // 0x25
        wristaccessory_t9_esports_royalravens_sy, // 0x26
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x27
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x28
        wristaccessory_t9_s4_analog_rbear, // 0x29
        wristaccessory_t9_s2_analog_420, // 0x2a
        wristaccessory_t9_s2_digital_mini_map, // 0x2b
        wristaccessory_t9_s1_digital_kazuya_01, // 0x2c
        wristaccessory_t9_s2_digital_mayan, // 0x2d
        wristaccessory_t9_s1_digital_diver, // 0x2e
        wristaccessory_t9_s4_analog_roadwar, // 0x2f
        wristaccessory_t9_esports_thieves_ms, // 0x30
        wristaccessory_t9_esports_thieves_pc, // 0x31
        wristaccessory_t9_esports_thieves_sy, // 0x32
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x33
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x34
        wristaccessory_t9_s2_analog_naval_warfare, // 0x35
        wristaccessory_t9_esports_subliners_pc, // 0x36
        wristaccessory_t9_esports_subliners_sy, // 0x37
        wristaccessory_t9_esports_subliners_ms, // 0x38
        wristaccessory_t9_s3_digital_magic8, // 0x39
        wristaccessory_t9_s4_analog_assassin, // 0x3a
        wristaccessory_t9_s2_analog_dark_aether, // 0x3b
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x3c
        wristaccessory_t9_s2_analog_mayan, // 0x3d
        wristaccessory_t9_s1_analog_bope_01, // 0x3e
        wristaccessory_t9_esports_ultra_ms, // 0x3f
        wristaccessory_t9_esports_ultra_sy, // 0x40
        wristaccessory_t9_esports_ultra_pc, // 0x41
        wristaccessory_t9_s2_analog_paratroop, // 0x42
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x43
        wristaccessory_t9_s1_analog_aviator_02, // 0x44
        wristaccessory_t9_s1_analog_horex_01, // 0x45
        wristaccessory_t9_s1_analog_fancy, // 0x46
        wristaccessory_t9_esports_optic_ms, // 0x47
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x48
        wristaccessory_t9_esports_optic_sy, // 0x49
        wristaccessory_t9_esports_optic_pc, // 0x4a
        wristaccessory_t9_s2_analog_rebel, // 0x4b
        wristaccessory_t9_s2_analog_white_tiger, // 0x4c
        wristaccessory_t9_s2_analog_caiman, // 0x4d
        hash_4fee76d1114701af, // 0x4e
        wristaccessory_t9_s3_analog_chrono_sea, // 0x4f
        wristaccessory_t9_s2_analog_broken_fancy, // 0x50
        hash_511c7fa835d89891, // 0x51
        wristaccessory_t9_s4_digital_royal_decree, // 0x52
        wristaccessory_t9_s1_bracelet_skull_01, // 0x53
        wristaccessory_t9_s3_digital_big_joke, // 0x54
        wristaccessory_t9_s1_bracelet_01, // 0x55
        hash_575c967cd59c9145, // 0x56
        wristaccessory_t9_esports_surge_sy, // 0x57
        wristaccessory_t9_esports_surge_pc, // 0x58
        wristaccessory_t9_s4_digital_big_joke, // 0x59
        wristaccessory_t9_esports_surge_ms, // 0x5a
        wristaccessory_t9_esports_faze_ms, // 0x5b
        wristaccessory_t9_esports_faze_pc, // 0x5c
        wristaccessory_t9_esports_faze_sy, // 0x5d
        wristaccessory_t9_s1_analog_origin_01, // 0x5e
        wristaccessory_t9_esports_mutineers_pc, // 0x5f
        wristaccessory_t9_esports_mutineers_sy, // 0x60
        wristaccessory_t9_esports_mutineers_ms, // 0x61
        wristaccessory_t9_s1_analog_private_eye_03, // 0x62
        wristaccessory_t9_s1_analog_private_eye_02, // 0x63
        wristaccessory_t9_s1_analog_private_eye_01, // 0x64
        wristaccessory_t9_esports_guerillas_sy, // 0x65
        wristaccessory_t9_esports_guerillas_pc, // 0x66
        wristaccessory_t9_esports_guerillas_ms, // 0x67
        wristaccessory_t9_s4_analog_wasteland, // 0x68
        wristaccessory_t9_s3_digital_diver_wargames, // 0x69
        wristaccessory_t9_s2_digital_river_slasher, // 0x6a
        wristaccessory_t9_s2_bracelet_lure, // 0x6b
        wristaccessory_t9_s2_analog_cold_hearted, // 0x6c
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x6d
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x6e
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x6f
        wristaccessory_t9_s1_digital_rank_01, // 0x70
        wristaccessory_t9_s2_digital_jade, // 0x71
        hash_708a99620b81ea23, // 0x72
        hash_708a9a620b81ebd6, // 0x73
        wristaccessory_t9_s3_analog_zombie_naga, // 0x74
        wristaccessory_t9_s2_analog_black_silver, // 0x75
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x76
        wristaccessory_t9_s3_digital_death_touch, // 0x77
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x78
        wristaccessory_t9_s2_analog_black_gold, // 0x79
        wristaccessory_t9_s1_digital_compass_01, // 0x7a
        wristaccessory_t9_s1_digital_first_spy_01, // 0x7b
        wristaccessory_t9_s1_digital_gaudy_01 // 0x7c
    };

    // idx 0x3 members: 0x5a
    enum executions {
        execution_158, // 0x0
        execution_159, // 0x1
        execution_150, // 0x2
        execution_148, // 0x3
        execution_147, // 0x4
        execution_146, // 0x5
        execution_174, // 0x6
        execution_173, // 0x7
        execution_117, // 0x8
        execution_110, // 0x9
        execution_111, // 0xa
        execution_112, // 0xb
        execution_118, // 0xc
        execution_119, // 0xd
        execution_101, // 0xe
        execution_100, // 0xf
        execution_108, // 0x10
        execution_138, // 0x11
        execution_139, // 0x12
        execution_132, // 0x13
        execution_133, // 0x14
        execution_130, // 0x15
        execution_136, // 0x16
        execution_137, // 0x17
        execution_134, // 0x18
        execution_135, // 0x19
        execution_129, // 0x1a
        execution_125, // 0x1b
        execution_124, // 0x1c
        execution_127, // 0x1d
        execution_126, // 0x1e
        execution_121, // 0x1f
        execution_120, // 0x20
        execution_123, // 0x21
        execution_039bc, // 0x22
        execution_204, // 0x23
        execution_201, // 0x24
        execution_202, // 0x25
        execution_203, // 0x26
        execution_086, // 0x27
        execution_084, // 0x28
        execution_099, // 0x29
        execution_029, // 0x2a
        execution_020, // 0x2b
        execution_021, // 0x2c
        execution_022, // 0x2d
        execution_023, // 0x2e
        execution_024, // 0x2f
        execution_025, // 0x30
        execution_026, // 0x31
        execution_027, // 0x32
        execution_038, // 0x33
        execution_033, // 0x34
        execution_032, // 0x35
        execution_031, // 0x36
        execution_030, // 0x37
        execution_037, // 0x38
        execution_036, // 0x39
        execution_034, // 0x3a
        execution_009, // 0x3b
        execution_007, // 0x3c
        execution_004, // 0x3d
        execution_005, // 0x3e
        execution_002, // 0x3f
        execution_003, // 0x40
        execution_001, // 0x41
        execution_010, // 0x42
        execution_013, // 0x43
        execution_015, // 0x44
        execution_014, // 0x45
        execution_017, // 0x46
        execution_016, // 0x47
        execution_018, // 0x48
        execution_064, // 0x49
        execution_065, // 0x4a
        execution_066, // 0x4b
        execution_067, // 0x4c
        execution_061, // 0x4d
        execution_062, // 0x4e
        execution_069, // 0x4f
        execution_048, // 0x50
        execution_049, // 0x51
        execution_043, // 0x52
        execution_040, // 0x53
        execution_059, // 0x54
        execution_058, // 0x55
        execution_051, // 0x56
        execution_052, // 0x57
        execution_038r, // 0x58
        hash_7f66c55f0f1308c2 // 0x59
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1e
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_mulekick_tier, // 0x4
        toxic_growth_tier, // 0x5
        talent_deadshot_tier, // 0x6
        hash_1bb7d8d0caf94859, // 0x7
        hash_1f78483ef16f84d5, // 0x8
        weapon_knife_tier, // 0x9
        weapon_smg_tier, // 0xa
        talent_speedcola_tier, // 0xb
        heal_aoe_tier, // 0xc
        frost_blast_tier, // 0xd
        hash_38f1aae51e2d5f58, // 0xe
        hash_3908c184a5cbf339, // 0xf
        weapon_sniper_tier, // 0x10
        weapon_pistol_tier, // 0x11
        energy_mine_tier, // 0x12
        talent_quickrevive_tier, // 0x13
        ammomod_brainrot_tier, // 0x14
        weapon_lmg_tier, // 0x15
        ammomod_napalmburst_tier, // 0x16
        ring_of_fire_tier, // 0x17
        hash_63114aea3939d941, // 0x18
        ammomod_deadwire_tier, // 0x19
        talent_elemental_pop_tier, // 0x1a
        talent_staminup_tier, // 0x1b
        weapon_tactical_tier, // 0x1c
        weapon_special_tier // 0x1d
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16490, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xbba8(0x1775 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16488, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_23590e5484049b68 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 91456 (0x16540)
    // header byte size . 11432 (0x2ca8)

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

    // bitSize: 0x88, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x7e, array:0x7e(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x68, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x5a, array:0x5a(hti:0x3)
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

    // bitSize: 0xbba8, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xad0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bd0, bitSize: 0xf0(0x1e Byte(s)), array:0x1e(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1cc0, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x1e38, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2678, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2680, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2700, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb230, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xbab0, bitSize: 0x68(0xd Byte(s))
        execution execution;
        // offset: 0xbb18, bitSize: 0x88(0x11 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xbba0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xbba1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xbba2, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xbba3, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x7e
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_s3_analog_mctag, // 0x2
        wristaccessory_t9_s4_digital_evil, // 0x3
        wristaccessory_t9_s4_analog_spaceship, // 0x4
        wristaccessory_t9_esports_legion_sy, // 0x5
        wristaccessory_t9_esports_legion_pc, // 0x6
        wristaccessory_t9_esports_legion_ms, // 0x7
        wristaccessory_t9_s3_analog_winter_ash, // 0x8
        wristaccessory_t9_esports_rokkr_sy, // 0x9
        wristaccessory_t9_esports_rokkr_pc, // 0xa
        wristaccessory_t9_esports_rokkr_ms, // 0xb
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xc
        wristaccessory_t9_s2_analog_necro_king, // 0xd
        wristaccessory_t9_s2_digital_sforce, // 0xe
        wristaccessory_t9_s1_digital_gambit_01, // 0xf
        wristaccessory_t9_s3_digital_radiation, // 0x10
        wristaccessory_t9_s1_digital_inteculo_01, // 0x11
        wristaccessory_t9_s3_digital_ultrafunk, // 0x12
        wristaccessory_t9_s1_analog_brawler_01, // 0x13
        wristaccessory_t9_s4_bracelet_weathered, // 0x14
        wristaccessory_t9_s4_analog_future_soldier, // 0x15
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x16
        wristaccessory_t9_s3_bracelet_01, // 0x17
        hash_1ccdff0ebb3ad612, // 0x18
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x19
        wristaccessory_t9_s1_analog_kremlin, // 0x1a
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x1b
        wristaccessory_t9_s2_analog_mortal, // 0x1c
        wristaccessory_t9_esports_empire_ms, // 0x1d
        wristaccessory_t9_esports_empire_pc, // 0x1e
        wristaccessory_t9_esports_empire_sy, // 0x1f
        hash_25142303752f4324, // 0x20
        hash_25142503752f468a, // 0x21
        wristaccessory_t9_s1_analog_retroren_02, // 0x22
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x23
        wristaccessory_default, // 0x24
        wristaccessory_t9_esports_royalravens_ms, // 0x25
        wristaccessory_t9_esports_royalravens_pc, // 0x26
        wristaccessory_t9_esports_royalravens_sy, // 0x27
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x28
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x29
        wristaccessory_t9_s4_analog_rbear, // 0x2a
        wristaccessory_t9_s2_analog_420, // 0x2b
        wristaccessory_t9_s2_digital_mini_map, // 0x2c
        wristaccessory_t9_s1_digital_kazuya_01, // 0x2d
        wristaccessory_t9_s2_digital_mayan, // 0x2e
        wristaccessory_t9_s1_digital_diver, // 0x2f
        wristaccessory_t9_s4_analog_roadwar, // 0x30
        wristaccessory_t9_esports_thieves_ms, // 0x31
        wristaccessory_t9_esports_thieves_pc, // 0x32
        wristaccessory_t9_esports_thieves_sy, // 0x33
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x34
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x35
        wristaccessory_t9_s2_analog_naval_warfare, // 0x36
        wristaccessory_t9_esports_subliners_pc, // 0x37
        wristaccessory_t9_esports_subliners_sy, // 0x38
        wristaccessory_t9_esports_subliners_ms, // 0x39
        wristaccessory_t9_s3_digital_magic8, // 0x3a
        wristaccessory_t9_s4_analog_assassin, // 0x3b
        wristaccessory_t9_s2_analog_dark_aether, // 0x3c
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x3d
        wristaccessory_t9_s2_analog_mayan, // 0x3e
        wristaccessory_t9_s1_analog_bope_01, // 0x3f
        wristaccessory_t9_esports_ultra_ms, // 0x40
        wristaccessory_t9_esports_ultra_sy, // 0x41
        wristaccessory_t9_esports_ultra_pc, // 0x42
        wristaccessory_t9_s2_analog_paratroop, // 0x43
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x44
        wristaccessory_t9_s1_analog_aviator_02, // 0x45
        wristaccessory_t9_s1_analog_horex_01, // 0x46
        wristaccessory_t9_s1_analog_fancy, // 0x47
        wristaccessory_t9_esports_optic_ms, // 0x48
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x49
        wristaccessory_t9_esports_optic_sy, // 0x4a
        wristaccessory_t9_esports_optic_pc, // 0x4b
        wristaccessory_t9_s2_analog_rebel, // 0x4c
        wristaccessory_t9_s2_analog_white_tiger, // 0x4d
        wristaccessory_t9_s2_analog_caiman, // 0x4e
        hash_4fee76d1114701af, // 0x4f
        wristaccessory_t9_s3_analog_chrono_sea, // 0x50
        wristaccessory_t9_s2_analog_broken_fancy, // 0x51
        hash_511c7fa835d89891, // 0x52
        wristaccessory_t9_s4_digital_royal_decree, // 0x53
        wristaccessory_t9_s1_bracelet_skull_01, // 0x54
        wristaccessory_t9_s3_digital_big_joke, // 0x55
        wristaccessory_t9_s1_bracelet_01, // 0x56
        hash_575c967cd59c9145, // 0x57
        wristaccessory_t9_esports_surge_sy, // 0x58
        wristaccessory_t9_esports_surge_pc, // 0x59
        wristaccessory_t9_s4_digital_big_joke, // 0x5a
        wristaccessory_t9_esports_surge_ms, // 0x5b
        wristaccessory_t9_esports_faze_ms, // 0x5c
        wristaccessory_t9_esports_faze_pc, // 0x5d
        wristaccessory_t9_esports_faze_sy, // 0x5e
        wristaccessory_t9_s1_analog_origin_01, // 0x5f
        wristaccessory_t9_esports_mutineers_pc, // 0x60
        wristaccessory_t9_esports_mutineers_sy, // 0x61
        wristaccessory_t9_esports_mutineers_ms, // 0x62
        wristaccessory_t9_s1_analog_private_eye_03, // 0x63
        wristaccessory_t9_s1_analog_private_eye_02, // 0x64
        wristaccessory_t9_s1_analog_private_eye_01, // 0x65
        wristaccessory_t9_esports_guerillas_sy, // 0x66
        wristaccessory_t9_esports_guerillas_pc, // 0x67
        wristaccessory_t9_esports_guerillas_ms, // 0x68
        wristaccessory_t9_s4_analog_wasteland, // 0x69
        wristaccessory_t9_s3_digital_diver_wargames, // 0x6a
        wristaccessory_t9_s2_digital_river_slasher, // 0x6b
        wristaccessory_t9_s2_bracelet_lure, // 0x6c
        wristaccessory_t9_s2_analog_cold_hearted, // 0x6d
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x6e
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x6f
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x70
        wristaccessory_t9_s1_digital_rank_01, // 0x71
        wristaccessory_t9_s2_digital_jade, // 0x72
        hash_708a99620b81ea23, // 0x73
        hash_708a9a620b81ebd6, // 0x74
        wristaccessory_t9_s3_analog_zombie_naga, // 0x75
        wristaccessory_t9_s2_analog_black_silver, // 0x76
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x77
        wristaccessory_t9_s3_digital_death_touch, // 0x78
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x79
        wristaccessory_t9_s2_analog_black_gold, // 0x7a
        wristaccessory_t9_s1_digital_compass_01, // 0x7b
        wristaccessory_t9_s1_digital_first_spy_01, // 0x7c
        wristaccessory_t9_s1_digital_gaudy_01 // 0x7d
    };

    // idx 0x3 members: 0x5a
    enum executions {
        execution_158, // 0x0
        execution_159, // 0x1
        execution_150, // 0x2
        execution_148, // 0x3
        execution_147, // 0x4
        execution_146, // 0x5
        execution_174, // 0x6
        execution_173, // 0x7
        execution_117, // 0x8
        execution_110, // 0x9
        execution_111, // 0xa
        execution_112, // 0xb
        execution_118, // 0xc
        execution_119, // 0xd
        execution_101, // 0xe
        execution_100, // 0xf
        execution_108, // 0x10
        execution_138, // 0x11
        execution_139, // 0x12
        execution_132, // 0x13
        execution_133, // 0x14
        execution_130, // 0x15
        execution_136, // 0x16
        execution_137, // 0x17
        execution_134, // 0x18
        execution_135, // 0x19
        execution_129, // 0x1a
        execution_125, // 0x1b
        execution_124, // 0x1c
        execution_127, // 0x1d
        execution_126, // 0x1e
        execution_121, // 0x1f
        execution_120, // 0x20
        execution_123, // 0x21
        execution_039bc, // 0x22
        execution_204, // 0x23
        execution_201, // 0x24
        execution_202, // 0x25
        execution_203, // 0x26
        execution_086, // 0x27
        execution_084, // 0x28
        execution_099, // 0x29
        execution_029, // 0x2a
        execution_020, // 0x2b
        execution_021, // 0x2c
        execution_022, // 0x2d
        execution_023, // 0x2e
        execution_024, // 0x2f
        execution_025, // 0x30
        execution_026, // 0x31
        execution_027, // 0x32
        execution_038, // 0x33
        execution_033, // 0x34
        execution_032, // 0x35
        execution_031, // 0x36
        execution_030, // 0x37
        execution_037, // 0x38
        execution_036, // 0x39
        execution_034, // 0x3a
        execution_009, // 0x3b
        execution_007, // 0x3c
        execution_004, // 0x3d
        execution_005, // 0x3e
        execution_002, // 0x3f
        execution_003, // 0x40
        execution_001, // 0x41
        execution_010, // 0x42
        execution_013, // 0x43
        execution_015, // 0x44
        execution_014, // 0x45
        execution_017, // 0x46
        execution_016, // 0x47
        execution_018, // 0x48
        execution_064, // 0x49
        execution_065, // 0x4a
        execution_066, // 0x4b
        execution_067, // 0x4c
        execution_061, // 0x4d
        execution_062, // 0x4e
        execution_069, // 0x4f
        execution_048, // 0x50
        execution_049, // 0x51
        execution_043, // 0x52
        execution_040, // 0x53
        execution_059, // 0x54
        execution_058, // 0x55
        execution_051, // 0x56
        execution_052, // 0x57
        execution_038r, // 0x58
        hash_7f66c55f0f1308c2 // 0x59
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1e
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_mulekick_tier, // 0x4
        toxic_growth_tier, // 0x5
        talent_deadshot_tier, // 0x6
        hash_1bb7d8d0caf94859, // 0x7
        hash_1f78483ef16f84d5, // 0x8
        weapon_knife_tier, // 0x9
        weapon_smg_tier, // 0xa
        talent_speedcola_tier, // 0xb
        heal_aoe_tier, // 0xc
        frost_blast_tier, // 0xd
        hash_38f1aae51e2d5f58, // 0xe
        hash_3908c184a5cbf339, // 0xf
        weapon_sniper_tier, // 0x10
        weapon_pistol_tier, // 0x11
        energy_mine_tier, // 0x12
        talent_quickrevive_tier, // 0x13
        ammomod_brainrot_tier, // 0x14
        weapon_lmg_tier, // 0x15
        ammomod_napalmburst_tier, // 0x16
        ring_of_fire_tier, // 0x17
        hash_63114aea3939d941, // 0x18
        ammomod_deadwire_tier, // 0x19
        talent_elemental_pop_tier, // 0x1a
        talent_staminup_tier, // 0x1b
        weapon_tactical_tier, // 0x1c
        weapon_special_tier // 0x1d
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16490, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xbba8(0x1775 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16488, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_a513a29fda5bdc99 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 91456 (0x16540)
    // header byte size . 11432 (0x2ca8)

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

    // bitSize: 0x88, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x7f, array:0x7f(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x68, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x5a, array:0x5a(hti:0x3)
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

    // bitSize: 0xbba8, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xad0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bd0, bitSize: 0xf0(0x1e Byte(s)), array:0x1e(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1cc0, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x1e38, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2678, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2680, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2700, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb230, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xbab0, bitSize: 0x68(0xd Byte(s))
        execution execution;
        // offset: 0xbb18, bitSize: 0x88(0x11 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xbba0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xbba1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xbba2, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xbba3, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x7f
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_s3_analog_mctag, // 0x2
        wristaccessory_t9_s4_digital_evil, // 0x3
        wristaccessory_t9_s4_analog_spaceship, // 0x4
        wristaccessory_t9_esports_legion_sy, // 0x5
        wristaccessory_t9_esports_legion_pc, // 0x6
        wristaccessory_t9_esports_legion_ms, // 0x7
        wristaccessory_t9_s3_analog_winter_ash, // 0x8
        wristaccessory_t9_esports_rokkr_sy, // 0x9
        wristaccessory_t9_esports_rokkr_pc, // 0xa
        wristaccessory_t9_esports_rokkr_ms, // 0xb
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xc
        wristaccessory_t9_s2_analog_necro_king, // 0xd
        wristaccessory_t9_s2_digital_sforce, // 0xe
        wristaccessory_t9_s1_digital_gambit_01, // 0xf
        wristaccessory_t9_s3_digital_radiation, // 0x10
        wristaccessory_t9_s1_digital_inteculo_01, // 0x11
        wristaccessory_t9_s3_digital_ultrafunk, // 0x12
        wristaccessory_t9_s1_analog_brawler_01, // 0x13
        wristaccessory_t9_s4_bracelet_weathered, // 0x14
        wristaccessory_t9_s4_analog_future_soldier, // 0x15
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x16
        wristaccessory_t9_s3_bracelet_01, // 0x17
        hash_1ccdff0ebb3ad612, // 0x18
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x19
        wristaccessory_t9_s1_analog_kremlin, // 0x1a
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x1b
        wristaccessory_t9_s4_analog_horror, // 0x1c
        wristaccessory_t9_s2_analog_mortal, // 0x1d
        wristaccessory_t9_esports_empire_ms, // 0x1e
        wristaccessory_t9_esports_empire_pc, // 0x1f
        wristaccessory_t9_esports_empire_sy, // 0x20
        hash_25142303752f4324, // 0x21
        hash_25142503752f468a, // 0x22
        wristaccessory_t9_s1_analog_retroren_02, // 0x23
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x24
        wristaccessory_default, // 0x25
        wristaccessory_t9_esports_royalravens_ms, // 0x26
        wristaccessory_t9_esports_royalravens_pc, // 0x27
        wristaccessory_t9_esports_royalravens_sy, // 0x28
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x29
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x2a
        wristaccessory_t9_s4_analog_rbear, // 0x2b
        wristaccessory_t9_s2_analog_420, // 0x2c
        wristaccessory_t9_s2_digital_mini_map, // 0x2d
        wristaccessory_t9_s1_digital_kazuya_01, // 0x2e
        wristaccessory_t9_s2_digital_mayan, // 0x2f
        wristaccessory_t9_s1_digital_diver, // 0x30
        wristaccessory_t9_s4_analog_roadwar, // 0x31
        wristaccessory_t9_esports_thieves_ms, // 0x32
        wristaccessory_t9_esports_thieves_pc, // 0x33
        wristaccessory_t9_esports_thieves_sy, // 0x34
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x35
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x36
        wristaccessory_t9_s2_analog_naval_warfare, // 0x37
        wristaccessory_t9_esports_subliners_pc, // 0x38
        wristaccessory_t9_esports_subliners_sy, // 0x39
        wristaccessory_t9_esports_subliners_ms, // 0x3a
        wristaccessory_t9_s3_digital_magic8, // 0x3b
        wristaccessory_t9_s4_analog_assassin, // 0x3c
        wristaccessory_t9_s2_analog_dark_aether, // 0x3d
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x3e
        wristaccessory_t9_s2_analog_mayan, // 0x3f
        wristaccessory_t9_s1_analog_bope_01, // 0x40
        wristaccessory_t9_esports_ultra_ms, // 0x41
        wristaccessory_t9_esports_ultra_sy, // 0x42
        wristaccessory_t9_esports_ultra_pc, // 0x43
        wristaccessory_t9_s2_analog_paratroop, // 0x44
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x45
        wristaccessory_t9_s1_analog_aviator_02, // 0x46
        wristaccessory_t9_s1_analog_horex_01, // 0x47
        wristaccessory_t9_s1_analog_fancy, // 0x48
        wristaccessory_t9_esports_optic_ms, // 0x49
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x4a
        wristaccessory_t9_esports_optic_sy, // 0x4b
        wristaccessory_t9_esports_optic_pc, // 0x4c
        wristaccessory_t9_s2_analog_rebel, // 0x4d
        wristaccessory_t9_s2_analog_white_tiger, // 0x4e
        wristaccessory_t9_s2_analog_caiman, // 0x4f
        hash_4fee76d1114701af, // 0x50
        wristaccessory_t9_s3_analog_chrono_sea, // 0x51
        wristaccessory_t9_s2_analog_broken_fancy, // 0x52
        hash_511c7fa835d89891, // 0x53
        wristaccessory_t9_s4_digital_royal_decree, // 0x54
        wristaccessory_t9_s1_bracelet_skull_01, // 0x55
        wristaccessory_t9_s3_digital_big_joke, // 0x56
        wristaccessory_t9_s1_bracelet_01, // 0x57
        hash_575c967cd59c9145, // 0x58
        wristaccessory_t9_esports_surge_sy, // 0x59
        wristaccessory_t9_esports_surge_pc, // 0x5a
        wristaccessory_t9_s4_digital_big_joke, // 0x5b
        wristaccessory_t9_esports_surge_ms, // 0x5c
        wristaccessory_t9_esports_faze_ms, // 0x5d
        wristaccessory_t9_esports_faze_pc, // 0x5e
        wristaccessory_t9_esports_faze_sy, // 0x5f
        wristaccessory_t9_s1_analog_origin_01, // 0x60
        wristaccessory_t9_esports_mutineers_pc, // 0x61
        wristaccessory_t9_esports_mutineers_sy, // 0x62
        wristaccessory_t9_esports_mutineers_ms, // 0x63
        wristaccessory_t9_s1_analog_private_eye_03, // 0x64
        wristaccessory_t9_s1_analog_private_eye_02, // 0x65
        wristaccessory_t9_s1_analog_private_eye_01, // 0x66
        wristaccessory_t9_esports_guerillas_sy, // 0x67
        wristaccessory_t9_esports_guerillas_pc, // 0x68
        wristaccessory_t9_esports_guerillas_ms, // 0x69
        wristaccessory_t9_s4_analog_wasteland, // 0x6a
        wristaccessory_t9_s3_digital_diver_wargames, // 0x6b
        wristaccessory_t9_s2_digital_river_slasher, // 0x6c
        wristaccessory_t9_s2_bracelet_lure, // 0x6d
        wristaccessory_t9_s2_analog_cold_hearted, // 0x6e
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x6f
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x70
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x71
        wristaccessory_t9_s1_digital_rank_01, // 0x72
        wristaccessory_t9_s2_digital_jade, // 0x73
        hash_708a99620b81ea23, // 0x74
        hash_708a9a620b81ebd6, // 0x75
        wristaccessory_t9_s3_analog_zombie_naga, // 0x76
        wristaccessory_t9_s2_analog_black_silver, // 0x77
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x78
        wristaccessory_t9_s3_digital_death_touch, // 0x79
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x7a
        wristaccessory_t9_s2_analog_black_gold, // 0x7b
        wristaccessory_t9_s1_digital_compass_01, // 0x7c
        wristaccessory_t9_s1_digital_first_spy_01, // 0x7d
        wristaccessory_t9_s1_digital_gaudy_01 // 0x7e
    };

    // idx 0x3 members: 0x5a
    enum executions {
        execution_158, // 0x0
        execution_159, // 0x1
        execution_150, // 0x2
        execution_148, // 0x3
        execution_147, // 0x4
        execution_146, // 0x5
        execution_174, // 0x6
        execution_173, // 0x7
        execution_117, // 0x8
        execution_110, // 0x9
        execution_111, // 0xa
        execution_112, // 0xb
        execution_118, // 0xc
        execution_119, // 0xd
        execution_101, // 0xe
        execution_100, // 0xf
        execution_108, // 0x10
        execution_138, // 0x11
        execution_139, // 0x12
        execution_132, // 0x13
        execution_133, // 0x14
        execution_130, // 0x15
        execution_136, // 0x16
        execution_137, // 0x17
        execution_134, // 0x18
        execution_135, // 0x19
        execution_129, // 0x1a
        execution_125, // 0x1b
        execution_124, // 0x1c
        execution_127, // 0x1d
        execution_126, // 0x1e
        execution_121, // 0x1f
        execution_120, // 0x20
        execution_123, // 0x21
        execution_039bc, // 0x22
        execution_204, // 0x23
        execution_201, // 0x24
        execution_202, // 0x25
        execution_203, // 0x26
        execution_086, // 0x27
        execution_084, // 0x28
        execution_099, // 0x29
        execution_029, // 0x2a
        execution_020, // 0x2b
        execution_021, // 0x2c
        execution_022, // 0x2d
        execution_023, // 0x2e
        execution_024, // 0x2f
        execution_025, // 0x30
        execution_026, // 0x31
        execution_027, // 0x32
        execution_038, // 0x33
        execution_033, // 0x34
        execution_032, // 0x35
        execution_031, // 0x36
        execution_030, // 0x37
        execution_037, // 0x38
        execution_036, // 0x39
        execution_034, // 0x3a
        execution_009, // 0x3b
        execution_007, // 0x3c
        execution_004, // 0x3d
        execution_005, // 0x3e
        execution_002, // 0x3f
        execution_003, // 0x40
        execution_001, // 0x41
        execution_010, // 0x42
        execution_013, // 0x43
        execution_015, // 0x44
        execution_014, // 0x45
        execution_017, // 0x46
        execution_016, // 0x47
        execution_018, // 0x48
        execution_064, // 0x49
        execution_065, // 0x4a
        execution_066, // 0x4b
        execution_067, // 0x4c
        execution_061, // 0x4d
        execution_062, // 0x4e
        execution_069, // 0x4f
        execution_048, // 0x50
        execution_049, // 0x51
        execution_043, // 0x52
        execution_040, // 0x53
        execution_059, // 0x54
        execution_058, // 0x55
        execution_051, // 0x56
        execution_052, // 0x57
        execution_038r, // 0x58
        hash_7f66c55f0f1308c2 // 0x59
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1e
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_mulekick_tier, // 0x4
        toxic_growth_tier, // 0x5
        talent_deadshot_tier, // 0x6
        hash_1bb7d8d0caf94859, // 0x7
        hash_1f78483ef16f84d5, // 0x8
        weapon_knife_tier, // 0x9
        weapon_smg_tier, // 0xa
        talent_speedcola_tier, // 0xb
        heal_aoe_tier, // 0xc
        frost_blast_tier, // 0xd
        hash_38f1aae51e2d5f58, // 0xe
        hash_3908c184a5cbf339, // 0xf
        weapon_sniper_tier, // 0x10
        weapon_pistol_tier, // 0x11
        energy_mine_tier, // 0x12
        talent_quickrevive_tier, // 0x13
        ammomod_brainrot_tier, // 0x14
        weapon_lmg_tier, // 0x15
        ammomod_napalmburst_tier, // 0x16
        ring_of_fire_tier, // 0x17
        hash_63114aea3939d941, // 0x18
        ammomod_deadwire_tier, // 0x19
        talent_elemental_pop_tier, // 0x1a
        talent_staminup_tier, // 0x1b
        weapon_tactical_tier, // 0x1c
        weapon_special_tier // 0x1d
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16490, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xbba8(0x1775 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16488, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_ad21d290c09575a3 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 91456 (0x16540)
    // header byte size . 11432 (0x2ca8)

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

    // bitSize: 0x88, members: 2
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x80(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x68, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x5a, array:0x5a(hti:0x3)
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

    // bitSize: 0xbba8, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xa00(0x140 Byte(s)), array:0x20(hti:0xffff)
        hash_4acca593b6d4945b characters[32];
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0xad0, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x1bd0, bitSize: 0xf0(0x1e Byte(s)), array:0x1e(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x1cc0, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x1e38, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2678, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2680, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2700, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb230, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xbab0, bitSize: 0x68(0xd Byte(s))
        execution execution;
        // offset: 0xbb18, bitSize: 0x88(0x11 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xbba0, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xbba1, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xbba2, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xbba3, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x80
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_s3_analog_mctag, // 0x2
        wristaccessory_t9_s4_digital_evil, // 0x3
        wristaccessory_t9_s4_analog_spaceship, // 0x4
        wristaccessory_t9_esports_legion_sy, // 0x5
        wristaccessory_t9_esports_legion_pc, // 0x6
        wristaccessory_t9_esports_legion_ms, // 0x7
        wristaccessory_t9_s3_analog_winter_ash, // 0x8
        wristaccessory_t9_esports_rokkr_sy, // 0x9
        wristaccessory_t9_esports_rokkr_pc, // 0xa
        wristaccessory_t9_esports_rokkr_ms, // 0xb
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xc
        wristaccessory_t9_s2_analog_necro_king, // 0xd
        wristaccessory_t9_s2_digital_sforce, // 0xe
        wristaccessory_t9_s1_digital_gambit_01, // 0xf
        wristaccessory_t9_s3_digital_radiation, // 0x10
        wristaccessory_t9_s1_digital_inteculo_01, // 0x11
        wristaccessory_t9_s3_digital_ultrafunk, // 0x12
        wristaccessory_t9_s1_analog_brawler_01, // 0x13
        wristaccessory_t9_s4_bracelet_weathered, // 0x14
        wristaccessory_t9_s4_analog_future_soldier, // 0x15
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x16
        wristaccessory_t9_s3_bracelet_01, // 0x17
        hash_1ccdff0ebb3ad612, // 0x18
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x19
        wristaccessory_t9_s1_analog_kremlin, // 0x1a
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x1b
        wristaccessory_t9_s4_analog_horror, // 0x1c
        wristaccessory_t9_s2_analog_mortal, // 0x1d
        wristaccessory_t9_esports_empire_ms, // 0x1e
        wristaccessory_t9_esports_empire_pc, // 0x1f
        wristaccessory_t9_esports_empire_sy, // 0x20
        hash_25142303752f4324, // 0x21
        hash_25142503752f468a, // 0x22
        wristaccessory_t9_s1_analog_retroren_02, // 0x23
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x24
        wristaccessory_default, // 0x25
        wristaccessory_t9_esports_royalravens_ms, // 0x26
        wristaccessory_t9_esports_royalravens_pc, // 0x27
        wristaccessory_t9_esports_royalravens_sy, // 0x28
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x29
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x2a
        wristaccessory_t9_s4_analog_rbear, // 0x2b
        wristaccessory_t9_s2_analog_420, // 0x2c
        wristaccessory_t9_s2_digital_mini_map, // 0x2d
        wristaccessory_t9_s1_digital_kazuya_01, // 0x2e
        wristaccessory_t9_s2_digital_mayan, // 0x2f
        wristaccessory_t9_s1_digital_diver, // 0x30
        wristaccessory_t9_s4_analog_roadwar, // 0x31
        wristaccessory_t9_esports_thieves_ms, // 0x32
        wristaccessory_t9_esports_thieves_pc, // 0x33
        wristaccessory_t9_esports_thieves_sy, // 0x34
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x35
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x36
        wristaccessory_t9_s2_analog_naval_warfare, // 0x37
        wristaccessory_t9_esports_subliners_pc, // 0x38
        wristaccessory_t9_esports_subliners_sy, // 0x39
        wristaccessory_t9_esports_subliners_ms, // 0x3a
        wristaccessory_t9_s3_digital_magic8, // 0x3b
        wristaccessory_t9_s4_analog_assassin, // 0x3c
        wristaccessory_t9_s2_analog_dark_aether, // 0x3d
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x3e
        wristaccessory_t9_s2_analog_mayan, // 0x3f
        wristaccessory_t9_s1_analog_bope_01, // 0x40
        wristaccessory_t9_esports_ultra_ms, // 0x41
        wristaccessory_t9_esports_ultra_sy, // 0x42
        wristaccessory_t9_esports_ultra_pc, // 0x43
        wristaccessory_t9_s2_analog_paratroop, // 0x44
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x45
        wristaccessory_t9_s1_analog_aviator_02, // 0x46
        wristaccessory_t9_s1_analog_horex_01, // 0x47
        wristaccessory_t9_s1_analog_fancy, // 0x48
        wristaccessory_t9_esports_optic_ms, // 0x49
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x4a
        wristaccessory_t9_esports_optic_sy, // 0x4b
        wristaccessory_t9_esports_optic_pc, // 0x4c
        wristaccessory_t9_s2_analog_rebel, // 0x4d
        wristaccessory_t9_s2_analog_white_tiger, // 0x4e
        wristaccessory_t9_s2_analog_caiman, // 0x4f
        hash_4fee76d1114701af, // 0x50
        wristaccessory_t9_s3_analog_chrono_sea, // 0x51
        wristaccessory_t9_s2_analog_broken_fancy, // 0x52
        hash_511c7fa835d89891, // 0x53
        wristaccessory_t9_s4_digital_royal_decree, // 0x54
        wristaccessory_t9_s1_bracelet_skull_01, // 0x55
        wristaccessory_t9_s3_digital_big_joke, // 0x56
        wristaccessory_t9_s1_bracelet_01, // 0x57
        hash_575c967cd59c9145, // 0x58
        wristaccessory_t9_esports_surge_sy, // 0x59
        wristaccessory_t9_esports_surge_pc, // 0x5a
        wristaccessory_t9_s4_digital_big_joke, // 0x5b
        wristaccessory_t9_esports_surge_ms, // 0x5c
        wristaccessory_t9_esports_faze_ms, // 0x5d
        wristaccessory_t9_esports_faze_pc, // 0x5e
        wristaccessory_t9_esports_faze_sy, // 0x5f
        wristaccessory_t9_s1_analog_origin_01, // 0x60
        wristaccessory_t9_esports_mutineers_pc, // 0x61
        wristaccessory_t9_esports_mutineers_sy, // 0x62
        wristaccessory_t9_esports_mutineers_ms, // 0x63
        wristaccessory_t9_s1_analog_private_eye_03, // 0x64
        wristaccessory_t9_s1_analog_private_eye_02, // 0x65
        wristaccessory_t9_s1_analog_private_eye_01, // 0x66
        wristaccessory_t9_esports_guerillas_sy, // 0x67
        wristaccessory_t9_esports_guerillas_pc, // 0x68
        wristaccessory_t9_esports_guerillas_ms, // 0x69
        wristaccessory_t9_s4_analog_wasteland, // 0x6a
        wristaccessory_t9_s3_digital_diver_wargames, // 0x6b
        wristaccessory_t9_s2_digital_river_slasher, // 0x6c
        wristaccessory_t9_s2_bracelet_lure, // 0x6d
        wristaccessory_t9_s2_analog_cold_hearted, // 0x6e
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x6f
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x70
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x71
        wristaccessory_t9_s1_digital_rank_01, // 0x72
        wristaccessory_t9_s2_digital_jade, // 0x73
        hash_708a99620b81ea23, // 0x74
        hash_708a9a620b81ebd6, // 0x75
        wristaccessory_t9_s3_analog_zombie_naga, // 0x76
        wristaccessory_t9_s2_analog_black_silver, // 0x77
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x78
        wristaccessory_t9_s4_digital_holographic, // 0x79
        wristaccessory_t9_s3_digital_death_touch, // 0x7a
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x7b
        wristaccessory_t9_s2_analog_black_gold, // 0x7c
        wristaccessory_t9_s1_digital_compass_01, // 0x7d
        wristaccessory_t9_s1_digital_first_spy_01, // 0x7e
        wristaccessory_t9_s1_digital_gaudy_01 // 0x7f
    };

    // idx 0x3 members: 0x5a
    enum executions {
        execution_158, // 0x0
        execution_159, // 0x1
        execution_150, // 0x2
        execution_148, // 0x3
        execution_147, // 0x4
        execution_146, // 0x5
        execution_174, // 0x6
        execution_173, // 0x7
        execution_117, // 0x8
        execution_110, // 0x9
        execution_111, // 0xa
        execution_112, // 0xb
        execution_118, // 0xc
        execution_119, // 0xd
        execution_101, // 0xe
        execution_100, // 0xf
        execution_108, // 0x10
        execution_138, // 0x11
        execution_139, // 0x12
        execution_132, // 0x13
        execution_133, // 0x14
        execution_130, // 0x15
        execution_136, // 0x16
        execution_137, // 0x17
        execution_134, // 0x18
        execution_135, // 0x19
        execution_129, // 0x1a
        execution_125, // 0x1b
        execution_124, // 0x1c
        execution_127, // 0x1d
        execution_126, // 0x1e
        execution_121, // 0x1f
        execution_120, // 0x20
        execution_123, // 0x21
        execution_039bc, // 0x22
        execution_204, // 0x23
        execution_201, // 0x24
        execution_202, // 0x25
        execution_203, // 0x26
        execution_086, // 0x27
        execution_084, // 0x28
        execution_099, // 0x29
        execution_029, // 0x2a
        execution_020, // 0x2b
        execution_021, // 0x2c
        execution_022, // 0x2d
        execution_023, // 0x2e
        execution_024, // 0x2f
        execution_025, // 0x30
        execution_026, // 0x31
        execution_027, // 0x32
        execution_038, // 0x33
        execution_033, // 0x34
        execution_032, // 0x35
        execution_031, // 0x36
        execution_030, // 0x37
        execution_037, // 0x38
        execution_036, // 0x39
        execution_034, // 0x3a
        execution_009, // 0x3b
        execution_007, // 0x3c
        execution_004, // 0x3d
        execution_005, // 0x3e
        execution_002, // 0x3f
        execution_003, // 0x40
        execution_001, // 0x41
        execution_010, // 0x42
        execution_013, // 0x43
        execution_015, // 0x44
        execution_014, // 0x45
        execution_017, // 0x46
        execution_016, // 0x47
        execution_018, // 0x48
        execution_064, // 0x49
        execution_065, // 0x4a
        execution_066, // 0x4b
        execution_067, // 0x4c
        execution_061, // 0x4d
        execution_062, // 0x4e
        execution_069, // 0x4f
        execution_048, // 0x50
        execution_049, // 0x51
        execution_043, // 0x52
        execution_040, // 0x53
        execution_059, // 0x54
        execution_058, // 0x55
        execution_051, // 0x56
        execution_052, // 0x57
        execution_038r, // 0x58
        hash_7f66c55f0f1308c2 // 0x59
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1e
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_mulekick_tier, // 0x4
        toxic_growth_tier, // 0x5
        talent_deadshot_tier, // 0x6
        hash_1bb7d8d0caf94859, // 0x7
        hash_1f78483ef16f84d5, // 0x8
        weapon_knife_tier, // 0x9
        weapon_smg_tier, // 0xa
        talent_speedcola_tier, // 0xb
        heal_aoe_tier, // 0xc
        frost_blast_tier, // 0xd
        hash_38f1aae51e2d5f58, // 0xe
        hash_3908c184a5cbf339, // 0xf
        weapon_sniper_tier, // 0x10
        weapon_pistol_tier, // 0x11
        energy_mine_tier, // 0x12
        talent_quickrevive_tier, // 0x13
        ammomod_brainrot_tier, // 0x14
        weapon_lmg_tier, // 0x15
        ammomod_napalmburst_tier, // 0x16
        ring_of_fire_tier, // 0x17
        hash_63114aea3939d941, // 0x18
        ammomod_deadwire_tier, // 0x19
        talent_elemental_pop_tier, // 0x1a
        talent_staminup_tier, // 0x1b
        weapon_tactical_tier, // 0x1c
        weapon_special_tier // 0x1d
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16490, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xbba8(0x1775 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16488, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_18bce11f485a0ef6 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 92896 (0x16ae0)
    // header byte size . 11612 (0x2d5c)

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

    // bitSize: 0x88, members: 2
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x80(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x68, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x5a, array:0x5a(hti:0x3)
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

    // bitSize: 0xc148, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0xf0(0x1e Byte(s)), array:0x1e(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2260, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23d8, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c18, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c20, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2ca0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7d0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc050, bitSize: 0x68(0xd Byte(s))
        execution execution;
        // offset: 0xc0b8, bitSize: 0x88(0x11 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc140, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc141, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc142, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc143, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x80
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_s3_analog_mctag, // 0x2
        wristaccessory_t9_s4_digital_evil, // 0x3
        wristaccessory_t9_s4_analog_spaceship, // 0x4
        wristaccessory_t9_esports_legion_sy, // 0x5
        wristaccessory_t9_esports_legion_pc, // 0x6
        wristaccessory_t9_esports_legion_ms, // 0x7
        wristaccessory_t9_s3_analog_winter_ash, // 0x8
        wristaccessory_t9_esports_rokkr_sy, // 0x9
        wristaccessory_t9_esports_rokkr_pc, // 0xa
        wristaccessory_t9_esports_rokkr_ms, // 0xb
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xc
        wristaccessory_t9_s2_analog_necro_king, // 0xd
        wristaccessory_t9_s2_digital_sforce, // 0xe
        wristaccessory_t9_s1_digital_gambit_01, // 0xf
        wristaccessory_t9_s3_digital_radiation, // 0x10
        wristaccessory_t9_s1_digital_inteculo_01, // 0x11
        wristaccessory_t9_s3_digital_ultrafunk, // 0x12
        wristaccessory_t9_s1_analog_brawler_01, // 0x13
        wristaccessory_t9_s4_bracelet_weathered, // 0x14
        wristaccessory_t9_s4_analog_future_soldier, // 0x15
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x16
        wristaccessory_t9_s3_bracelet_01, // 0x17
        hash_1ccdff0ebb3ad612, // 0x18
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x19
        wristaccessory_t9_s1_analog_kremlin, // 0x1a
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x1b
        wristaccessory_t9_s4_analog_horror, // 0x1c
        wristaccessory_t9_s2_analog_mortal, // 0x1d
        wristaccessory_t9_esports_empire_ms, // 0x1e
        wristaccessory_t9_esports_empire_pc, // 0x1f
        wristaccessory_t9_esports_empire_sy, // 0x20
        hash_25142303752f4324, // 0x21
        hash_25142503752f468a, // 0x22
        wristaccessory_t9_s1_analog_retroren_02, // 0x23
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x24
        wristaccessory_default, // 0x25
        wristaccessory_t9_esports_royalravens_ms, // 0x26
        wristaccessory_t9_esports_royalravens_pc, // 0x27
        wristaccessory_t9_esports_royalravens_sy, // 0x28
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x29
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x2a
        wristaccessory_t9_s4_analog_rbear, // 0x2b
        wristaccessory_t9_s2_analog_420, // 0x2c
        wristaccessory_t9_s2_digital_mini_map, // 0x2d
        wristaccessory_t9_s1_digital_kazuya_01, // 0x2e
        wristaccessory_t9_s2_digital_mayan, // 0x2f
        wristaccessory_t9_s1_digital_diver, // 0x30
        wristaccessory_t9_s4_analog_roadwar, // 0x31
        wristaccessory_t9_esports_thieves_ms, // 0x32
        wristaccessory_t9_esports_thieves_pc, // 0x33
        wristaccessory_t9_esports_thieves_sy, // 0x34
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x35
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x36
        wristaccessory_t9_s2_analog_naval_warfare, // 0x37
        wristaccessory_t9_esports_subliners_pc, // 0x38
        wristaccessory_t9_esports_subliners_sy, // 0x39
        wristaccessory_t9_esports_subliners_ms, // 0x3a
        wristaccessory_t9_s3_digital_magic8, // 0x3b
        wristaccessory_t9_s4_analog_assassin, // 0x3c
        wristaccessory_t9_s2_analog_dark_aether, // 0x3d
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x3e
        wristaccessory_t9_s2_analog_mayan, // 0x3f
        wristaccessory_t9_s1_analog_bope_01, // 0x40
        wristaccessory_t9_esports_ultra_ms, // 0x41
        wristaccessory_t9_esports_ultra_sy, // 0x42
        wristaccessory_t9_esports_ultra_pc, // 0x43
        wristaccessory_t9_s2_analog_paratroop, // 0x44
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x45
        wristaccessory_t9_s1_analog_aviator_02, // 0x46
        wristaccessory_t9_s1_analog_horex_01, // 0x47
        wristaccessory_t9_s1_analog_fancy, // 0x48
        wristaccessory_t9_esports_optic_ms, // 0x49
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x4a
        wristaccessory_t9_esports_optic_sy, // 0x4b
        wristaccessory_t9_esports_optic_pc, // 0x4c
        wristaccessory_t9_s2_analog_rebel, // 0x4d
        wristaccessory_t9_s2_analog_white_tiger, // 0x4e
        wristaccessory_t9_s2_analog_caiman, // 0x4f
        hash_4fee76d1114701af, // 0x50
        wristaccessory_t9_s3_analog_chrono_sea, // 0x51
        wristaccessory_t9_s2_analog_broken_fancy, // 0x52
        hash_511c7fa835d89891, // 0x53
        wristaccessory_t9_s4_digital_royal_decree, // 0x54
        wristaccessory_t9_s1_bracelet_skull_01, // 0x55
        wristaccessory_t9_s3_digital_big_joke, // 0x56
        wristaccessory_t9_s1_bracelet_01, // 0x57
        hash_575c967cd59c9145, // 0x58
        wristaccessory_t9_esports_surge_sy, // 0x59
        wristaccessory_t9_esports_surge_pc, // 0x5a
        wristaccessory_t9_s4_digital_big_joke, // 0x5b
        wristaccessory_t9_esports_surge_ms, // 0x5c
        wristaccessory_t9_esports_faze_ms, // 0x5d
        wristaccessory_t9_esports_faze_pc, // 0x5e
        wristaccessory_t9_esports_faze_sy, // 0x5f
        wristaccessory_t9_s1_analog_origin_01, // 0x60
        wristaccessory_t9_esports_mutineers_pc, // 0x61
        wristaccessory_t9_esports_mutineers_sy, // 0x62
        wristaccessory_t9_esports_mutineers_ms, // 0x63
        wristaccessory_t9_s1_analog_private_eye_03, // 0x64
        wristaccessory_t9_s1_analog_private_eye_02, // 0x65
        wristaccessory_t9_s1_analog_private_eye_01, // 0x66
        wristaccessory_t9_esports_guerillas_sy, // 0x67
        wristaccessory_t9_esports_guerillas_pc, // 0x68
        wristaccessory_t9_esports_guerillas_ms, // 0x69
        wristaccessory_t9_s4_analog_wasteland, // 0x6a
        wristaccessory_t9_s3_digital_diver_wargames, // 0x6b
        wristaccessory_t9_s2_digital_river_slasher, // 0x6c
        wristaccessory_t9_s2_bracelet_lure, // 0x6d
        wristaccessory_t9_s2_analog_cold_hearted, // 0x6e
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x6f
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x70
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x71
        wristaccessory_t9_s1_digital_rank_01, // 0x72
        wristaccessory_t9_s2_digital_jade, // 0x73
        hash_708a99620b81ea23, // 0x74
        hash_708a9a620b81ebd6, // 0x75
        wristaccessory_t9_s3_analog_zombie_naga, // 0x76
        wristaccessory_t9_s2_analog_black_silver, // 0x77
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x78
        wristaccessory_t9_s4_digital_holographic, // 0x79
        wristaccessory_t9_s3_digital_death_touch, // 0x7a
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x7b
        wristaccessory_t9_s2_analog_black_gold, // 0x7c
        wristaccessory_t9_s1_digital_compass_01, // 0x7d
        wristaccessory_t9_s1_digital_first_spy_01, // 0x7e
        wristaccessory_t9_s1_digital_gaudy_01 // 0x7f
    };

    // idx 0x3 members: 0x5a
    enum executions {
        execution_158, // 0x0
        execution_159, // 0x1
        execution_150, // 0x2
        execution_148, // 0x3
        execution_147, // 0x4
        execution_146, // 0x5
        execution_174, // 0x6
        execution_173, // 0x7
        execution_117, // 0x8
        execution_110, // 0x9
        execution_111, // 0xa
        execution_112, // 0xb
        execution_118, // 0xc
        execution_119, // 0xd
        execution_101, // 0xe
        execution_100, // 0xf
        execution_108, // 0x10
        execution_138, // 0x11
        execution_139, // 0x12
        execution_132, // 0x13
        execution_133, // 0x14
        execution_130, // 0x15
        execution_136, // 0x16
        execution_137, // 0x17
        execution_134, // 0x18
        execution_135, // 0x19
        execution_129, // 0x1a
        execution_125, // 0x1b
        execution_124, // 0x1c
        execution_127, // 0x1d
        execution_126, // 0x1e
        execution_121, // 0x1f
        execution_120, // 0x20
        execution_123, // 0x21
        execution_039bc, // 0x22
        execution_204, // 0x23
        execution_201, // 0x24
        execution_202, // 0x25
        execution_203, // 0x26
        execution_086, // 0x27
        execution_084, // 0x28
        execution_099, // 0x29
        execution_029, // 0x2a
        execution_020, // 0x2b
        execution_021, // 0x2c
        execution_022, // 0x2d
        execution_023, // 0x2e
        execution_024, // 0x2f
        execution_025, // 0x30
        execution_026, // 0x31
        execution_027, // 0x32
        execution_038, // 0x33
        execution_033, // 0x34
        execution_032, // 0x35
        execution_031, // 0x36
        execution_030, // 0x37
        execution_037, // 0x38
        execution_036, // 0x39
        execution_034, // 0x3a
        execution_009, // 0x3b
        execution_007, // 0x3c
        execution_004, // 0x3d
        execution_005, // 0x3e
        execution_002, // 0x3f
        execution_003, // 0x40
        execution_001, // 0x41
        execution_010, // 0x42
        execution_013, // 0x43
        execution_015, // 0x44
        execution_014, // 0x45
        execution_017, // 0x46
        execution_016, // 0x47
        execution_018, // 0x48
        execution_064, // 0x49
        execution_065, // 0x4a
        execution_066, // 0x4b
        execution_067, // 0x4c
        execution_061, // 0x4d
        execution_062, // 0x4e
        execution_069, // 0x4f
        execution_048, // 0x50
        execution_049, // 0x51
        execution_043, // 0x52
        execution_040, // 0x53
        execution_059, // 0x54
        execution_058, // 0x55
        execution_051, // 0x56
        execution_052, // 0x57
        execution_038r, // 0x58
        hash_7f66c55f0f1308c2 // 0x59
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1e
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_mulekick_tier, // 0x4
        toxic_growth_tier, // 0x5
        talent_deadshot_tier, // 0x6
        hash_1bb7d8d0caf94859, // 0x7
        hash_1f78483ef16f84d5, // 0x8
        weapon_knife_tier, // 0x9
        weapon_smg_tier, // 0xa
        talent_speedcola_tier, // 0xb
        heal_aoe_tier, // 0xc
        frost_blast_tier, // 0xd
        hash_38f1aae51e2d5f58, // 0xe
        hash_3908c184a5cbf339, // 0xf
        weapon_sniper_tier, // 0x10
        weapon_pistol_tier, // 0x11
        energy_mine_tier, // 0x12
        talent_quickrevive_tier, // 0x13
        ammomod_brainrot_tier, // 0x14
        weapon_lmg_tier, // 0x15
        ammomod_napalmburst_tier, // 0x16
        ring_of_fire_tier, // 0x17
        hash_63114aea3939d941, // 0x18
        ammomod_deadwire_tier, // 0x19
        talent_elemental_pop_tier, // 0x1a
        talent_staminup_tier, // 0x1b
        weapon_tactical_tier, // 0x1c
        weapon_special_tier // 0x1d
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16a30, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc148(0x1829 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16a28, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_8c3ca4362ff5b36e {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 92904 (0x16ae8)
    // header byte size . 11613 (0x2d5d)

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

    // bitSize: 0x90, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x82, array:0x82(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x68, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x5e, array:0x5e(hti:0x3)
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

    // bitSize: 0xc150, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0xf0(0x1e Byte(s)), array:0x1e(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2260, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23d8, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c18, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c20, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2ca0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7d0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc050, bitSize: 0x68(0xd Byte(s))
        execution execution;
        // offset: 0xc0b8, bitSize: 0x90(0x12 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc148, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc149, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc14a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc14b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x82
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_s3_analog_mctag, // 0x2
        wristaccessory_t9_s4_digital_evil, // 0x3
        wristaccessory_t9_s4_analog_spaceship, // 0x4
        wristaccessory_t9_esports_legion_sy, // 0x5
        wristaccessory_t9_esports_legion_pc, // 0x6
        wristaccessory_t9_esports_legion_ms, // 0x7
        wristaccessory_t9_s3_analog_winter_ash, // 0x8
        wristaccessory_t9_esports_rokkr_sy, // 0x9
        wristaccessory_t9_esports_rokkr_pc, // 0xa
        wristaccessory_t9_esports_rokkr_ms, // 0xb
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xc
        wristaccessory_t9_s2_analog_necro_king, // 0xd
        wristaccessory_t9_s2_digital_sforce, // 0xe
        wristaccessory_t9_s1_digital_gambit_01, // 0xf
        wristaccessory_t9_s3_digital_radiation, // 0x10
        wristaccessory_t9_s1_digital_inteculo_01, // 0x11
        wristaccessory_t9_s3_digital_ultrafunk, // 0x12
        wristaccessory_t9_s1_analog_brawler_01, // 0x13
        wristaccessory_t9_s4_bracelet_weathered, // 0x14
        wristaccessory_t9_s4_analog_future_soldier, // 0x15
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x16
        wristaccessory_t9_s3_bracelet_01, // 0x17
        hash_1ccdff0ebb3ad612, // 0x18
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x19
        wristaccessory_t9_s1_analog_kremlin, // 0x1a
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x1b
        wristaccessory_t9_s4_analog_horror, // 0x1c
        wristaccessory_t9_s2_analog_mortal, // 0x1d
        wristaccessory_t9_esports_empire_ms, // 0x1e
        wristaccessory_t9_esports_empire_pc, // 0x1f
        wristaccessory_t9_esports_empire_sy, // 0x20
        hash_25142303752f4324, // 0x21
        hash_25142503752f468a, // 0x22
        wristaccessory_t9_s1_analog_retroren_02, // 0x23
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x24
        wristaccessory_default, // 0x25
        wristaccessory_t9_esports_royalravens_ms, // 0x26
        wristaccessory_t9_esports_royalravens_pc, // 0x27
        wristaccessory_t9_esports_royalravens_sy, // 0x28
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x29
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x2a
        wristaccessory_t9_s4_analog_rbear, // 0x2b
        wristaccessory_t9_s2_analog_420, // 0x2c
        wristaccessory_t9_s2_digital_mini_map, // 0x2d
        wristaccessory_t9_s1_digital_kazuya_01, // 0x2e
        wristaccessory_t9_s2_digital_mayan, // 0x2f
        wristaccessory_t9_s1_digital_diver, // 0x30
        wristaccessory_t9_s4_analog_roadwar, // 0x31
        wristaccessory_t9_esports_thieves_ms, // 0x32
        wristaccessory_t9_esports_thieves_pc, // 0x33
        wristaccessory_t9_esports_thieves_sy, // 0x34
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x35
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x36
        wristaccessory_t9_s4_digital_blade, // 0x37
        wristaccessory_t9_s2_analog_naval_warfare, // 0x38
        wristaccessory_t9_esports_subliners_pc, // 0x39
        wristaccessory_t9_esports_subliners_sy, // 0x3a
        wristaccessory_t9_esports_subliners_ms, // 0x3b
        wristaccessory_t9_s3_digital_magic8, // 0x3c
        wristaccessory_t9_s4_analog_assassin, // 0x3d
        wristaccessory_t9_s2_analog_dark_aether, // 0x3e
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x3f
        wristaccessory_t9_s2_analog_mayan, // 0x40
        wristaccessory_t9_s1_analog_bope_01, // 0x41
        wristaccessory_t9_esports_ultra_ms, // 0x42
        wristaccessory_t9_esports_ultra_sy, // 0x43
        wristaccessory_t9_esports_ultra_pc, // 0x44
        wristaccessory_t9_s2_analog_paratroop, // 0x45
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x46
        wristaccessory_t9_s1_analog_aviator_02, // 0x47
        wristaccessory_t9_s1_analog_horex_01, // 0x48
        wristaccessory_t9_s1_analog_fancy, // 0x49
        wristaccessory_t9_esports_optic_ms, // 0x4a
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x4b
        wristaccessory_t9_esports_optic_sy, // 0x4c
        wristaccessory_t9_esports_optic_pc, // 0x4d
        wristaccessory_t9_s2_analog_rebel, // 0x4e
        wristaccessory_t9_s2_analog_white_tiger, // 0x4f
        wristaccessory_t9_s2_analog_caiman, // 0x50
        hash_4fee76d1114701af, // 0x51
        wristaccessory_t9_s3_analog_chrono_sea, // 0x52
        wristaccessory_t9_s2_analog_broken_fancy, // 0x53
        hash_511c7fa835d89891, // 0x54
        wristaccessory_t9_s4_digital_royal_decree, // 0x55
        wristaccessory_t9_s1_bracelet_skull_01, // 0x56
        wristaccessory_t9_s3_digital_big_joke, // 0x57
        wristaccessory_t9_s1_bracelet_01, // 0x58
        hash_575c967cd59c9145, // 0x59
        wristaccessory_t9_esports_surge_sy, // 0x5a
        wristaccessory_t9_esports_surge_pc, // 0x5b
        wristaccessory_t9_s4_digital_big_joke, // 0x5c
        wristaccessory_t9_esports_surge_ms, // 0x5d
        wristaccessory_t9_s4_analog_jefe, // 0x5e
        wristaccessory_t9_esports_faze_ms, // 0x5f
        wristaccessory_t9_esports_faze_pc, // 0x60
        wristaccessory_t9_esports_faze_sy, // 0x61
        wristaccessory_t9_s1_analog_origin_01, // 0x62
        wristaccessory_t9_esports_mutineers_pc, // 0x63
        wristaccessory_t9_esports_mutineers_sy, // 0x64
        wristaccessory_t9_esports_mutineers_ms, // 0x65
        wristaccessory_t9_s1_analog_private_eye_03, // 0x66
        wristaccessory_t9_s1_analog_private_eye_02, // 0x67
        wristaccessory_t9_s1_analog_private_eye_01, // 0x68
        wristaccessory_t9_esports_guerillas_sy, // 0x69
        wristaccessory_t9_esports_guerillas_pc, // 0x6a
        wristaccessory_t9_esports_guerillas_ms, // 0x6b
        wristaccessory_t9_s4_analog_wasteland, // 0x6c
        wristaccessory_t9_s3_digital_diver_wargames, // 0x6d
        wristaccessory_t9_s2_digital_river_slasher, // 0x6e
        wristaccessory_t9_s2_bracelet_lure, // 0x6f
        wristaccessory_t9_s2_analog_cold_hearted, // 0x70
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x71
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x72
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x73
        wristaccessory_t9_s1_digital_rank_01, // 0x74
        wristaccessory_t9_s2_digital_jade, // 0x75
        hash_708a99620b81ea23, // 0x76
        hash_708a9a620b81ebd6, // 0x77
        wristaccessory_t9_s3_analog_zombie_naga, // 0x78
        wristaccessory_t9_s2_analog_black_silver, // 0x79
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x7a
        wristaccessory_t9_s4_digital_holographic, // 0x7b
        wristaccessory_t9_s3_digital_death_touch, // 0x7c
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x7d
        wristaccessory_t9_s2_analog_black_gold, // 0x7e
        wristaccessory_t9_s1_digital_compass_01, // 0x7f
        wristaccessory_t9_s1_digital_first_spy_01, // 0x80
        wristaccessory_t9_s1_digital_gaudy_01 // 0x81
    };

    // idx 0x3 members: 0x5e
    enum executions {
        execution_158, // 0x0
        execution_159, // 0x1
        execution_150, // 0x2
        execution_148, // 0x3
        execution_140, // 0x4
        execution_147, // 0x5
        execution_146, // 0x6
        execution_174, // 0x7
        execution_173, // 0x8
        execution_117, // 0x9
        execution_110, // 0xa
        execution_111, // 0xb
        execution_112, // 0xc
        execution_113, // 0xd
        execution_118, // 0xe
        execution_119, // 0xf
        execution_101, // 0x10
        execution_100, // 0x11
        execution_108, // 0x12
        execution_138, // 0x13
        execution_139, // 0x14
        execution_132, // 0x15
        execution_133, // 0x16
        execution_130, // 0x17
        execution_136, // 0x18
        execution_137, // 0x19
        execution_134, // 0x1a
        execution_135, // 0x1b
        execution_129, // 0x1c
        execution_125, // 0x1d
        execution_124, // 0x1e
        execution_127, // 0x1f
        execution_126, // 0x20
        execution_121, // 0x21
        execution_120, // 0x22
        execution_123, // 0x23
        execution_039bc, // 0x24
        execution_204, // 0x25
        execution_205, // 0x26
        execution_201, // 0x27
        execution_202, // 0x28
        execution_203, // 0x29
        execution_086, // 0x2a
        execution_084, // 0x2b
        execution_099, // 0x2c
        execution_029, // 0x2d
        execution_020, // 0x2e
        execution_021, // 0x2f
        execution_022, // 0x30
        execution_023, // 0x31
        execution_024, // 0x32
        execution_025, // 0x33
        execution_026, // 0x34
        execution_027, // 0x35
        execution_038, // 0x36
        execution_033, // 0x37
        execution_032, // 0x38
        execution_031, // 0x39
        execution_030, // 0x3a
        execution_037, // 0x3b
        execution_036, // 0x3c
        execution_034, // 0x3d
        execution_009, // 0x3e
        execution_007, // 0x3f
        execution_004, // 0x40
        execution_005, // 0x41
        execution_002, // 0x42
        execution_003, // 0x43
        execution_001, // 0x44
        execution_010, // 0x45
        execution_013, // 0x46
        execution_015, // 0x47
        execution_014, // 0x48
        execution_017, // 0x49
        execution_016, // 0x4a
        execution_018, // 0x4b
        execution_064, // 0x4c
        execution_065, // 0x4d
        execution_066, // 0x4e
        execution_067, // 0x4f
        execution_061, // 0x50
        execution_062, // 0x51
        execution_069, // 0x52
        execution_070, // 0x53
        execution_048, // 0x54
        execution_049, // 0x55
        execution_043, // 0x56
        execution_040, // 0x57
        execution_059, // 0x58
        execution_058, // 0x59
        execution_051, // 0x5a
        execution_052, // 0x5b
        execution_038r, // 0x5c
        hash_7f66c55f0f1308c2 // 0x5d
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1e
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_mulekick_tier, // 0x4
        toxic_growth_tier, // 0x5
        talent_deadshot_tier, // 0x6
        hash_1bb7d8d0caf94859, // 0x7
        hash_1f78483ef16f84d5, // 0x8
        weapon_knife_tier, // 0x9
        weapon_smg_tier, // 0xa
        talent_speedcola_tier, // 0xb
        heal_aoe_tier, // 0xc
        frost_blast_tier, // 0xd
        hash_38f1aae51e2d5f58, // 0xe
        hash_3908c184a5cbf339, // 0xf
        weapon_sniper_tier, // 0x10
        weapon_pistol_tier, // 0x11
        energy_mine_tier, // 0x12
        talent_quickrevive_tier, // 0x13
        ammomod_brainrot_tier, // 0x14
        weapon_lmg_tier, // 0x15
        ammomod_napalmburst_tier, // 0x16
        ring_of_fire_tier, // 0x17
        hash_63114aea3939d941, // 0x18
        ammomod_deadwire_tier, // 0x19
        talent_elemental_pop_tier, // 0x1a
        talent_staminup_tier, // 0x1b
        weapon_tactical_tier, // 0x1c
        weapon_special_tier // 0x1d
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16a38, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc150(0x182a Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16a30, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_eb59a545dd4fbae1 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 92928 (0x16b00)
    // header byte size . 11616 (0x2d60)

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

    // bitSize: 0x98, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x8e, array:0x8e(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x70, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x67, array:0x67(hti:0x3)
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

    // bitSize: 0xc168, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0xf8(0x1f Byte(s)), array:0x1f(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2268, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23e0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c20, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c28, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2ca8, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7d8, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc058, bitSize: 0x70(0xe Byte(s))
        execution execution;
        // offset: 0xc0c8, bitSize: 0x98(0x13 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc160, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc161, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc162, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc163, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x8e
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_s3_analog_mctag, // 0x2
        wristaccessory_t9_s4_digital_evil, // 0x3
        wristaccessory_t9_s4_analog_spaceship, // 0x4
        wristaccessory_t9_s5_analog_dis_assassin, // 0x5
        wristaccessory_t9_esports_legion_sy, // 0x6
        wristaccessory_t9_esports_legion_pc, // 0x7
        wristaccessory_t9_esports_legion_ms, // 0x8
        wristaccessory_t9_s3_analog_winter_ash, // 0x9
        wristaccessory_t9_esports_rokkr_sy, // 0xa
        wristaccessory_t9_esports_rokkr_pc, // 0xb
        wristaccessory_t9_esports_rokkr_ms, // 0xc
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xd
        wristaccessory_t9_s2_analog_necro_king, // 0xe
        wristaccessory_t9_s2_digital_sforce, // 0xf
        wristaccessory_t9_s1_digital_gambit_01, // 0x10
        wristaccessory_t9_s3_digital_radiation, // 0x11
        wristaccessory_t9_s1_digital_inteculo_01, // 0x12
        wristaccessory_t9_s3_digital_ultrafunk, // 0x13
        wristaccessory_t9_s1_analog_brawler_01, // 0x14
        wristaccessory_t9_s4_bracelet_weathered, // 0x15
        wristaccessory_t9_s4_analog_future_soldier, // 0x16
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x17
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x18
        wristaccessory_t9_s3_bracelet_01, // 0x19
        hash_1ccdff0ebb3ad612, // 0x1a
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x1b
        wristaccessory_t9_s1_analog_kremlin, // 0x1c
        wristaccessory_t9_s5_digital_checkmate, // 0x1d
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x1e
        wristaccessory_t9_s4_analog_horror, // 0x1f
        wristaccessory_t9_s2_analog_mortal, // 0x20
        wristaccessory_t9_esports_empire_ms, // 0x21
        wristaccessory_t9_esports_empire_pc, // 0x22
        wristaccessory_t9_esports_empire_sy, // 0x23
        hash_25142303752f4324, // 0x24
        hash_25142503752f468a, // 0x25
        wristaccessory_t9_s1_analog_retroren_02, // 0x26
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x27
        wristaccessory_default, // 0x28
        wristaccessory_t9_esports_royalravens_ms, // 0x29
        wristaccessory_t9_esports_royalravens_pc, // 0x2a
        wristaccessory_t9_esports_royalravens_sy, // 0x2b
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x2c
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x2d
        wristaccessory_t9_s4_analog_rbear, // 0x2e
        wristaccessory_t9_s4_digital_roadwarrior, // 0x2f
        wristaccessory_t9_s2_analog_420, // 0x30
        wristaccessory_t9_s2_digital_mini_map, // 0x31
        wristaccessory_t9_s1_digital_kazuya_01, // 0x32
        wristaccessory_t9_s2_digital_mayan, // 0x33
        wristaccessory_t9_s1_digital_diver, // 0x34
        wristaccessory_t9_s4_holographic_rank, // 0x35
        wristaccessory_t9_s4_analog_roadwar, // 0x36
        wristaccessory_t9_esports_thieves_ms, // 0x37
        wristaccessory_t9_esports_thieves_pc, // 0x38
        wristaccessory_t9_esports_thieves_sy, // 0x39
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x3a
        wristaccessory_t9_s5_analog_holographic, // 0x3b
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x3c
        wristaccessory_t9_s4_digital_blade, // 0x3d
        wristaccessory_t9_s2_analog_naval_warfare, // 0x3e
        wristaccessory_t9_esports_subliners_pc, // 0x3f
        wristaccessory_t9_esports_subliners_sy, // 0x40
        wristaccessory_t9_esports_subliners_ms, // 0x41
        wristaccessory_t9_s3_digital_magic8, // 0x42
        wristaccessory_t9_s4_analog_assassin, // 0x43
        wristaccessory_t9_s2_analog_dark_aether, // 0x44
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x45
        wristaccessory_t9_s2_analog_mayan, // 0x46
        wristaccessory_t9_s1_analog_bope_01, // 0x47
        wristaccessory_t9_esports_ultra_ms, // 0x48
        wristaccessory_t9_esports_ultra_sy, // 0x49
        wristaccessory_t9_esports_ultra_pc, // 0x4a
        wristaccessory_t9_s2_analog_paratroop, // 0x4b
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x4c
        wristaccessory_t9_s1_analog_aviator_02, // 0x4d
        wristaccessory_t9_s1_analog_horex_01, // 0x4e
        wristaccessory_t9_s1_analog_fancy, // 0x4f
        wristaccessory_t9_s1_analog_aviator_x2, // 0x50
        wristaccessory_t9_s5_analog_classic, // 0x51
        wristaccessory_t9_esports_optic_ms, // 0x52
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x53
        wristaccessory_t9_esports_optic_sy, // 0x54
        wristaccessory_t9_esports_optic_pc, // 0x55
        hash_49c1608438e3ee8b, // 0x56
        wristaccessory_t9_s2_analog_rebel, // 0x57
        wristaccessory_t9_s5_analog_egy_burial, // 0x58
        wristaccessory_t9_s2_analog_white_tiger, // 0x59
        wristaccessory_t9_s2_analog_caiman, // 0x5a
        hash_4fee76d1114701af, // 0x5b
        wristaccessory_t9_s3_analog_chrono_sea, // 0x5c
        wristaccessory_t9_s2_analog_broken_fancy, // 0x5d
        hash_511c7fa835d89891, // 0x5e
        wristaccessory_t9_s4_digital_royal_decree, // 0x5f
        wristaccessory_t9_s1_bracelet_skull_01, // 0x60
        wristaccessory_t9_s3_digital_big_joke, // 0x61
        wristaccessory_t9_s1_bracelet_01, // 0x62
        hash_575c967cd59c9145, // 0x63
        wristaccessory_t9_esports_surge_sy, // 0x64
        wristaccessory_t9_esports_surge_pc, // 0x65
        wristaccessory_t9_s4_digital_big_joke, // 0x66
        wristaccessory_t9_esports_surge_ms, // 0x67
        wristaccessory_t9_s4_analog_jefe, // 0x68
        wristaccessory_t9_esports_faze_ms, // 0x69
        wristaccessory_t9_esports_faze_pc, // 0x6a
        wristaccessory_t9_esports_faze_sy, // 0x6b
        wristaccessory_t9_s1_analog_origin_01, // 0x6c
        wristaccessory_t9_esports_mutineers_pc, // 0x6d
        wristaccessory_t9_esports_mutineers_sy, // 0x6e
        wristaccessory_t9_esports_mutineers_ms, // 0x6f
        wristaccessory_t9_s1_analog_private_eye_03, // 0x70
        wristaccessory_t9_s1_analog_private_eye_02, // 0x71
        wristaccessory_t9_s1_analog_private_eye_01, // 0x72
        wristaccessory_t9_esports_guerillas_sy, // 0x73
        wristaccessory_t9_esports_guerillas_pc, // 0x74
        wristaccessory_t9_esports_guerillas_ms, // 0x75
        wristaccessory_t9_s4_analog_wasteland, // 0x76
        wristaccessory_t9_s3_digital_diver_wargames, // 0x77
        wristaccessory_t9_s2_digital_river_slasher, // 0x78
        wristaccessory_t9_s2_bracelet_lure, // 0x79
        wristaccessory_t9_s2_analog_cold_hearted, // 0x7a
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x7b
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x7c
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x7d
        wristaccessory_t9_s1_digital_rank_01, // 0x7e
        wristaccessory_t9_s2_digital_jade, // 0x7f
        hash_708a99620b81ea23, // 0x80
        hash_708a9a620b81ebd6, // 0x81
        wristaccessory_t9_s3_analog_zombie_naga, // 0x82
        wristaccessory_t9_s2_analog_black_silver, // 0x83
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x84
        wristaccessory_t9_s4_digital_holographic, // 0x85
        wristaccessory_t9_s4_analog_fire_storm, // 0x86
        wristaccessory_t9_s3_digital_death_touch, // 0x87
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x88
        wristaccessory_t9_s2_analog_black_gold, // 0x89
        wristaccessory_t9_s1_digital_compass_01, // 0x8a
        wristaccessory_t9_s1_digital_first_spy_01, // 0x8b
        wristaccessory_t9_s1_digital_gaudy_01, // 0x8c
        wristaccessory_t9_s5_analog_retrotac // 0x8d
    };

    // idx 0x3 members: 0x67
    enum executions {
        execution_158, // 0x0
        execution_159, // 0x1
        execution_150, // 0x2
        execution_154, // 0x3
        execution_157, // 0x4
        execution_148, // 0x5
        execution_141, // 0x6
        execution_140, // 0x7
        execution_147, // 0x8
        execution_146, // 0x9
        execution_174, // 0xa
        execution_173, // 0xb
        execution_160, // 0xc
        execution_162, // 0xd
        execution_117, // 0xe
        execution_110, // 0xf
        execution_111, // 0x10
        execution_112, // 0x11
        execution_113, // 0x12
        execution_118, // 0x13
        execution_119, // 0x14
        execution_101, // 0x15
        execution_100, // 0x16
        execution_108, // 0x17
        execution_138, // 0x18
        execution_139, // 0x19
        execution_132, // 0x1a
        execution_133, // 0x1b
        execution_130, // 0x1c
        execution_136, // 0x1d
        execution_137, // 0x1e
        execution_134, // 0x1f
        execution_135, // 0x20
        execution_129, // 0x21
        execution_128, // 0x22
        execution_125, // 0x23
        execution_124, // 0x24
        execution_127, // 0x25
        execution_126, // 0x26
        execution_121, // 0x27
        execution_120, // 0x28
        execution_123, // 0x29
        execution_039bc, // 0x2a
        execution_204, // 0x2b
        execution_205, // 0x2c
        execution_206, // 0x2d
        execution_201, // 0x2e
        execution_202, // 0x2f
        execution_203, // 0x30
        execution_086, // 0x31
        execution_084, // 0x32
        execution_080, // 0x33
        execution_099, // 0x34
        execution_029, // 0x35
        execution_020, // 0x36
        execution_021, // 0x37
        execution_022, // 0x38
        execution_023, // 0x39
        execution_024, // 0x3a
        execution_025, // 0x3b
        execution_026, // 0x3c
        execution_027, // 0x3d
        execution_038, // 0x3e
        execution_033, // 0x3f
        execution_032, // 0x40
        execution_031, // 0x41
        execution_030, // 0x42
        execution_037, // 0x43
        execution_036, // 0x44
        execution_034, // 0x45
        execution_009, // 0x46
        execution_007, // 0x47
        execution_004, // 0x48
        execution_005, // 0x49
        execution_002, // 0x4a
        execution_003, // 0x4b
        execution_001, // 0x4c
        execution_010, // 0x4d
        execution_013, // 0x4e
        execution_015, // 0x4f
        execution_014, // 0x50
        execution_017, // 0x51
        execution_016, // 0x52
        execution_018, // 0x53
        execution_064, // 0x54
        execution_065, // 0x55
        execution_066, // 0x56
        execution_067, // 0x57
        execution_061, // 0x58
        execution_062, // 0x59
        execution_063, // 0x5a
        execution_069, // 0x5b
        execution_070, // 0x5c
        execution_048, // 0x5d
        execution_049, // 0x5e
        execution_043, // 0x5f
        execution_040, // 0x60
        execution_059, // 0x61
        execution_058, // 0x62
        execution_051, // 0x63
        execution_052, // 0x64
        execution_038r, // 0x65
        hash_7f66c55f0f1308c2 // 0x66
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1f
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_mulekick_tier, // 0x4
        toxic_growth_tier, // 0x5
        talent_deadshot_tier, // 0x6
        hash_1bb7d8d0caf94859, // 0x7
        hash_1f78483ef16f84d5, // 0x8
        lightning_links_tier, // 0x9
        weapon_knife_tier, // 0xa
        weapon_smg_tier, // 0xb
        talent_speedcola_tier, // 0xc
        heal_aoe_tier, // 0xd
        frost_blast_tier, // 0xe
        hash_38f1aae51e2d5f58, // 0xf
        hash_3908c184a5cbf339, // 0x10
        weapon_sniper_tier, // 0x11
        weapon_pistol_tier, // 0x12
        energy_mine_tier, // 0x13
        talent_quickrevive_tier, // 0x14
        ammomod_brainrot_tier, // 0x15
        weapon_lmg_tier, // 0x16
        ammomod_napalmburst_tier, // 0x17
        ring_of_fire_tier, // 0x18
        hash_63114aea3939d941, // 0x19
        ammomod_deadwire_tier, // 0x1a
        talent_elemental_pop_tier, // 0x1b
        talent_staminup_tier, // 0x1c
        weapon_tactical_tier, // 0x1d
        weapon_special_tier // 0x1e
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16a50, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc168(0x182d Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16a48, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_7891488389cae203 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 92928 (0x16b00)
    // header byte size . 11616 (0x2d60)

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

    // bitSize: 0x98, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x8e, array:0x8e(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x70, members: 2
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x68(0xd Byte(s)), array:0x68(hti:0x3)
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

    // bitSize: 0xc168, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0xf8(0x1f Byte(s)), array:0x1f(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2268, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23e0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c20, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c28, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2ca8, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7d8, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc058, bitSize: 0x70(0xe Byte(s))
        execution execution;
        // offset: 0xc0c8, bitSize: 0x98(0x13 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc160, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc161, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc162, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc163, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x8e
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_s3_analog_mctag, // 0x2
        wristaccessory_t9_s4_digital_evil, // 0x3
        wristaccessory_t9_s4_analog_spaceship, // 0x4
        wristaccessory_t9_s5_analog_dis_assassin, // 0x5
        wristaccessory_t9_esports_legion_sy, // 0x6
        wristaccessory_t9_esports_legion_pc, // 0x7
        wristaccessory_t9_esports_legion_ms, // 0x8
        wristaccessory_t9_s3_analog_winter_ash, // 0x9
        wristaccessory_t9_esports_rokkr_sy, // 0xa
        wristaccessory_t9_esports_rokkr_pc, // 0xb
        wristaccessory_t9_esports_rokkr_ms, // 0xc
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xd
        wristaccessory_t9_s2_analog_necro_king, // 0xe
        wristaccessory_t9_s2_digital_sforce, // 0xf
        wristaccessory_t9_s1_digital_gambit_01, // 0x10
        wristaccessory_t9_s3_digital_radiation, // 0x11
        wristaccessory_t9_s1_digital_inteculo_01, // 0x12
        wristaccessory_t9_s3_digital_ultrafunk, // 0x13
        wristaccessory_t9_s1_analog_brawler_01, // 0x14
        wristaccessory_t9_s4_bracelet_weathered, // 0x15
        wristaccessory_t9_s4_analog_future_soldier, // 0x16
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x17
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x18
        wristaccessory_t9_s3_bracelet_01, // 0x19
        hash_1ccdff0ebb3ad612, // 0x1a
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x1b
        wristaccessory_t9_s1_analog_kremlin, // 0x1c
        wristaccessory_t9_s5_digital_checkmate, // 0x1d
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x1e
        wristaccessory_t9_s4_analog_horror, // 0x1f
        wristaccessory_t9_s2_analog_mortal, // 0x20
        wristaccessory_t9_esports_empire_ms, // 0x21
        wristaccessory_t9_esports_empire_pc, // 0x22
        wristaccessory_t9_esports_empire_sy, // 0x23
        hash_25142303752f4324, // 0x24
        hash_25142503752f468a, // 0x25
        wristaccessory_t9_s1_analog_retroren_02, // 0x26
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x27
        wristaccessory_default, // 0x28
        wristaccessory_t9_esports_royalravens_ms, // 0x29
        wristaccessory_t9_esports_royalravens_pc, // 0x2a
        wristaccessory_t9_esports_royalravens_sy, // 0x2b
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x2c
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x2d
        wristaccessory_t9_s4_analog_rbear, // 0x2e
        wristaccessory_t9_s4_digital_roadwarrior, // 0x2f
        wristaccessory_t9_s2_analog_420, // 0x30
        wristaccessory_t9_s2_digital_mini_map, // 0x31
        wristaccessory_t9_s1_digital_kazuya_01, // 0x32
        wristaccessory_t9_s2_digital_mayan, // 0x33
        wristaccessory_t9_s1_digital_diver, // 0x34
        wristaccessory_t9_s4_holographic_rank, // 0x35
        wristaccessory_t9_s4_analog_roadwar, // 0x36
        wristaccessory_t9_esports_thieves_ms, // 0x37
        wristaccessory_t9_esports_thieves_pc, // 0x38
        wristaccessory_t9_esports_thieves_sy, // 0x39
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x3a
        wristaccessory_t9_s5_analog_holographic, // 0x3b
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x3c
        wristaccessory_t9_s4_digital_blade, // 0x3d
        wristaccessory_t9_s2_analog_naval_warfare, // 0x3e
        wristaccessory_t9_esports_subliners_pc, // 0x3f
        wristaccessory_t9_esports_subliners_sy, // 0x40
        wristaccessory_t9_esports_subliners_ms, // 0x41
        wristaccessory_t9_s3_digital_magic8, // 0x42
        wristaccessory_t9_s4_analog_assassin, // 0x43
        wristaccessory_t9_s2_analog_dark_aether, // 0x44
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x45
        wristaccessory_t9_s2_analog_mayan, // 0x46
        wristaccessory_t9_s1_analog_bope_01, // 0x47
        wristaccessory_t9_esports_ultra_ms, // 0x48
        wristaccessory_t9_esports_ultra_sy, // 0x49
        wristaccessory_t9_esports_ultra_pc, // 0x4a
        wristaccessory_t9_s2_analog_paratroop, // 0x4b
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x4c
        wristaccessory_t9_s1_analog_aviator_02, // 0x4d
        wristaccessory_t9_s1_analog_horex_01, // 0x4e
        wristaccessory_t9_s1_analog_fancy, // 0x4f
        wristaccessory_t9_s1_analog_aviator_x2, // 0x50
        wristaccessory_t9_s5_analog_classic, // 0x51
        wristaccessory_t9_esports_optic_ms, // 0x52
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x53
        wristaccessory_t9_esports_optic_sy, // 0x54
        wristaccessory_t9_esports_optic_pc, // 0x55
        hash_49c1608438e3ee8b, // 0x56
        wristaccessory_t9_s2_analog_rebel, // 0x57
        wristaccessory_t9_s5_analog_egy_burial, // 0x58
        wristaccessory_t9_s2_analog_white_tiger, // 0x59
        wristaccessory_t9_s2_analog_caiman, // 0x5a
        hash_4fee76d1114701af, // 0x5b
        wristaccessory_t9_s3_analog_chrono_sea, // 0x5c
        wristaccessory_t9_s2_analog_broken_fancy, // 0x5d
        hash_511c7fa835d89891, // 0x5e
        wristaccessory_t9_s4_digital_royal_decree, // 0x5f
        wristaccessory_t9_s1_bracelet_skull_01, // 0x60
        wristaccessory_t9_s3_digital_big_joke, // 0x61
        wristaccessory_t9_s1_bracelet_01, // 0x62
        hash_575c967cd59c9145, // 0x63
        wristaccessory_t9_esports_surge_sy, // 0x64
        wristaccessory_t9_esports_surge_pc, // 0x65
        wristaccessory_t9_s4_digital_big_joke, // 0x66
        wristaccessory_t9_esports_surge_ms, // 0x67
        wristaccessory_t9_s4_analog_jefe, // 0x68
        wristaccessory_t9_esports_faze_ms, // 0x69
        wristaccessory_t9_esports_faze_pc, // 0x6a
        wristaccessory_t9_esports_faze_sy, // 0x6b
        wristaccessory_t9_s1_analog_origin_01, // 0x6c
        wristaccessory_t9_esports_mutineers_pc, // 0x6d
        wristaccessory_t9_esports_mutineers_sy, // 0x6e
        wristaccessory_t9_esports_mutineers_ms, // 0x6f
        wristaccessory_t9_s1_analog_private_eye_03, // 0x70
        wristaccessory_t9_s1_analog_private_eye_02, // 0x71
        wristaccessory_t9_s1_analog_private_eye_01, // 0x72
        wristaccessory_t9_esports_guerillas_sy, // 0x73
        wristaccessory_t9_esports_guerillas_pc, // 0x74
        wristaccessory_t9_esports_guerillas_ms, // 0x75
        wristaccessory_t9_s4_analog_wasteland, // 0x76
        wristaccessory_t9_s3_digital_diver_wargames, // 0x77
        wristaccessory_t9_s2_digital_river_slasher, // 0x78
        wristaccessory_t9_s2_bracelet_lure, // 0x79
        wristaccessory_t9_s2_analog_cold_hearted, // 0x7a
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x7b
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x7c
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x7d
        wristaccessory_t9_s1_digital_rank_01, // 0x7e
        wristaccessory_t9_s2_digital_jade, // 0x7f
        hash_708a99620b81ea23, // 0x80
        hash_708a9a620b81ebd6, // 0x81
        wristaccessory_t9_s3_analog_zombie_naga, // 0x82
        wristaccessory_t9_s2_analog_black_silver, // 0x83
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x84
        wristaccessory_t9_s4_digital_holographic, // 0x85
        wristaccessory_t9_s4_analog_fire_storm, // 0x86
        wristaccessory_t9_s3_digital_death_touch, // 0x87
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x88
        wristaccessory_t9_s2_analog_black_gold, // 0x89
        wristaccessory_t9_s1_digital_compass_01, // 0x8a
        wristaccessory_t9_s1_digital_first_spy_01, // 0x8b
        wristaccessory_t9_s1_digital_gaudy_01, // 0x8c
        wristaccessory_t9_s5_analog_retrotac // 0x8d
    };

    // idx 0x3 members: 0x68
    enum executions {
        execution_158, // 0x0
        execution_159, // 0x1
        execution_150, // 0x2
        execution_154, // 0x3
        execution_157, // 0x4
        execution_148, // 0x5
        execution_141, // 0x6
        execution_140, // 0x7
        execution_147, // 0x8
        execution_146, // 0x9
        execution_174, // 0xa
        execution_173, // 0xb
        execution_160, // 0xc
        execution_162, // 0xd
        execution_117, // 0xe
        execution_110, // 0xf
        execution_111, // 0x10
        execution_112, // 0x11
        execution_113, // 0x12
        execution_118, // 0x13
        execution_119, // 0x14
        execution_101, // 0x15
        execution_100, // 0x16
        execution_108, // 0x17
        execution_138, // 0x18
        execution_139, // 0x19
        execution_132, // 0x1a
        execution_133, // 0x1b
        execution_130, // 0x1c
        execution_136, // 0x1d
        execution_137, // 0x1e
        execution_134, // 0x1f
        execution_135, // 0x20
        execution_129, // 0x21
        execution_128, // 0x22
        execution_125, // 0x23
        execution_124, // 0x24
        execution_127, // 0x25
        execution_126, // 0x26
        execution_121, // 0x27
        execution_120, // 0x28
        execution_123, // 0x29
        execution_040bc, // 0x2a
        execution_039bc, // 0x2b
        execution_204, // 0x2c
        execution_205, // 0x2d
        execution_206, // 0x2e
        execution_201, // 0x2f
        execution_202, // 0x30
        execution_203, // 0x31
        execution_086, // 0x32
        execution_084, // 0x33
        execution_080, // 0x34
        execution_099, // 0x35
        execution_029, // 0x36
        execution_020, // 0x37
        execution_021, // 0x38
        execution_022, // 0x39
        execution_023, // 0x3a
        execution_024, // 0x3b
        execution_025, // 0x3c
        execution_026, // 0x3d
        execution_027, // 0x3e
        execution_038, // 0x3f
        execution_033, // 0x40
        execution_032, // 0x41
        execution_031, // 0x42
        execution_030, // 0x43
        execution_037, // 0x44
        execution_036, // 0x45
        execution_034, // 0x46
        execution_009, // 0x47
        execution_007, // 0x48
        execution_004, // 0x49
        execution_005, // 0x4a
        execution_002, // 0x4b
        execution_003, // 0x4c
        execution_001, // 0x4d
        execution_010, // 0x4e
        execution_013, // 0x4f
        execution_015, // 0x50
        execution_014, // 0x51
        execution_017, // 0x52
        execution_016, // 0x53
        execution_018, // 0x54
        execution_064, // 0x55
        execution_065, // 0x56
        execution_066, // 0x57
        execution_067, // 0x58
        execution_061, // 0x59
        execution_062, // 0x5a
        execution_063, // 0x5b
        execution_069, // 0x5c
        execution_070, // 0x5d
        execution_048, // 0x5e
        execution_049, // 0x5f
        execution_043, // 0x60
        execution_040, // 0x61
        execution_059, // 0x62
        execution_058, // 0x63
        execution_051, // 0x64
        execution_052, // 0x65
        execution_038r, // 0x66
        hash_7f66c55f0f1308c2 // 0x67
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1f
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_mulekick_tier, // 0x4
        toxic_growth_tier, // 0x5
        talent_deadshot_tier, // 0x6
        hash_1bb7d8d0caf94859, // 0x7
        hash_1f78483ef16f84d5, // 0x8
        lightning_links_tier, // 0x9
        weapon_knife_tier, // 0xa
        weapon_smg_tier, // 0xb
        talent_speedcola_tier, // 0xc
        heal_aoe_tier, // 0xd
        frost_blast_tier, // 0xe
        hash_38f1aae51e2d5f58, // 0xf
        hash_3908c184a5cbf339, // 0x10
        weapon_sniper_tier, // 0x11
        weapon_pistol_tier, // 0x12
        energy_mine_tier, // 0x13
        talent_quickrevive_tier, // 0x14
        ammomod_brainrot_tier, // 0x15
        weapon_lmg_tier, // 0x16
        ammomod_napalmburst_tier, // 0x17
        ring_of_fire_tier, // 0x18
        hash_63114aea3939d941, // 0x19
        ammomod_deadwire_tier, // 0x1a
        talent_elemental_pop_tier, // 0x1b
        talent_staminup_tier, // 0x1c
        weapon_tactical_tier, // 0x1d
        weapon_special_tier // 0x1e
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16a50, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc168(0x182d Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16a48, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_9e46e29f2027acd7 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 92936 (0x16b08)
    // header byte size . 11617 (0x2d61)

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

    // bitSize: 0x98, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x8e, array:0x8e(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x78, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x69, array:0x69(hti:0x3)
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

    // bitSize: 0xc170, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0xf8(0x1f Byte(s)), array:0x1f(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2268, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23e0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c20, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c28, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2ca8, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7d8, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc058, bitSize: 0x78(0xf Byte(s))
        execution execution;
        // offset: 0xc0d0, bitSize: 0x98(0x13 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc168, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc169, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc16a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc16b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x8e
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_s3_analog_mctag, // 0x2
        wristaccessory_t9_s4_digital_evil, // 0x3
        wristaccessory_t9_s4_analog_spaceship, // 0x4
        wristaccessory_t9_s5_analog_dis_assassin, // 0x5
        wristaccessory_t9_esports_legion_sy, // 0x6
        wristaccessory_t9_esports_legion_pc, // 0x7
        wristaccessory_t9_esports_legion_ms, // 0x8
        wristaccessory_t9_s3_analog_winter_ash, // 0x9
        wristaccessory_t9_esports_rokkr_sy, // 0xa
        wristaccessory_t9_esports_rokkr_pc, // 0xb
        wristaccessory_t9_esports_rokkr_ms, // 0xc
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xd
        wristaccessory_t9_s2_analog_necro_king, // 0xe
        wristaccessory_t9_s2_digital_sforce, // 0xf
        wristaccessory_t9_s1_digital_gambit_01, // 0x10
        wristaccessory_t9_s3_digital_radiation, // 0x11
        wristaccessory_t9_s1_digital_inteculo_01, // 0x12
        wristaccessory_t9_s3_digital_ultrafunk, // 0x13
        wristaccessory_t9_s1_analog_brawler_01, // 0x14
        wristaccessory_t9_s4_bracelet_weathered, // 0x15
        wristaccessory_t9_s4_analog_future_soldier, // 0x16
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x17
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x18
        wristaccessory_t9_s3_bracelet_01, // 0x19
        hash_1ccdff0ebb3ad612, // 0x1a
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x1b
        wristaccessory_t9_s1_analog_kremlin, // 0x1c
        wristaccessory_t9_s5_digital_checkmate, // 0x1d
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x1e
        wristaccessory_t9_s4_analog_horror, // 0x1f
        wristaccessory_t9_s2_analog_mortal, // 0x20
        wristaccessory_t9_esports_empire_ms, // 0x21
        wristaccessory_t9_esports_empire_pc, // 0x22
        wristaccessory_t9_esports_empire_sy, // 0x23
        hash_25142303752f4324, // 0x24
        hash_25142503752f468a, // 0x25
        wristaccessory_t9_s1_analog_retroren_02, // 0x26
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x27
        wristaccessory_default, // 0x28
        wristaccessory_t9_esports_royalravens_ms, // 0x29
        wristaccessory_t9_esports_royalravens_pc, // 0x2a
        wristaccessory_t9_esports_royalravens_sy, // 0x2b
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x2c
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x2d
        wristaccessory_t9_s4_analog_rbear, // 0x2e
        wristaccessory_t9_s4_digital_roadwarrior, // 0x2f
        wristaccessory_t9_s2_analog_420, // 0x30
        wristaccessory_t9_s2_digital_mini_map, // 0x31
        wristaccessory_t9_s1_digital_kazuya_01, // 0x32
        wristaccessory_t9_s2_digital_mayan, // 0x33
        wristaccessory_t9_s1_digital_diver, // 0x34
        wristaccessory_t9_s4_holographic_rank, // 0x35
        wristaccessory_t9_s4_analog_roadwar, // 0x36
        wristaccessory_t9_esports_thieves_ms, // 0x37
        wristaccessory_t9_esports_thieves_pc, // 0x38
        wristaccessory_t9_esports_thieves_sy, // 0x39
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x3a
        wristaccessory_t9_s5_analog_holographic, // 0x3b
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x3c
        wristaccessory_t9_s4_digital_blade, // 0x3d
        wristaccessory_t9_s2_analog_naval_warfare, // 0x3e
        wristaccessory_t9_esports_subliners_pc, // 0x3f
        wristaccessory_t9_esports_subliners_sy, // 0x40
        wristaccessory_t9_esports_subliners_ms, // 0x41
        wristaccessory_t9_s3_digital_magic8, // 0x42
        wristaccessory_t9_s4_analog_assassin, // 0x43
        wristaccessory_t9_s2_analog_dark_aether, // 0x44
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x45
        wristaccessory_t9_s2_analog_mayan, // 0x46
        wristaccessory_t9_s1_analog_bope_01, // 0x47
        wristaccessory_t9_esports_ultra_ms, // 0x48
        wristaccessory_t9_esports_ultra_sy, // 0x49
        wristaccessory_t9_esports_ultra_pc, // 0x4a
        wristaccessory_t9_s2_analog_paratroop, // 0x4b
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x4c
        wristaccessory_t9_s1_analog_aviator_02, // 0x4d
        wristaccessory_t9_s1_analog_horex_01, // 0x4e
        wristaccessory_t9_s1_analog_fancy, // 0x4f
        wristaccessory_t9_s1_analog_aviator_x2, // 0x50
        wristaccessory_t9_s5_analog_classic, // 0x51
        wristaccessory_t9_esports_optic_ms, // 0x52
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x53
        wristaccessory_t9_esports_optic_sy, // 0x54
        wristaccessory_t9_esports_optic_pc, // 0x55
        hash_49c1608438e3ee8b, // 0x56
        wristaccessory_t9_s2_analog_rebel, // 0x57
        wristaccessory_t9_s5_analog_egy_burial, // 0x58
        wristaccessory_t9_s2_analog_white_tiger, // 0x59
        wristaccessory_t9_s2_analog_caiman, // 0x5a
        hash_4fee76d1114701af, // 0x5b
        wristaccessory_t9_s3_analog_chrono_sea, // 0x5c
        wristaccessory_t9_s2_analog_broken_fancy, // 0x5d
        hash_511c7fa835d89891, // 0x5e
        wristaccessory_t9_s4_digital_royal_decree, // 0x5f
        wristaccessory_t9_s1_bracelet_skull_01, // 0x60
        wristaccessory_t9_s3_digital_big_joke, // 0x61
        wristaccessory_t9_s1_bracelet_01, // 0x62
        hash_575c967cd59c9145, // 0x63
        wristaccessory_t9_esports_surge_sy, // 0x64
        wristaccessory_t9_esports_surge_pc, // 0x65
        wristaccessory_t9_s4_digital_big_joke, // 0x66
        wristaccessory_t9_esports_surge_ms, // 0x67
        wristaccessory_t9_s4_analog_jefe, // 0x68
        wristaccessory_t9_esports_faze_ms, // 0x69
        wristaccessory_t9_esports_faze_pc, // 0x6a
        wristaccessory_t9_esports_faze_sy, // 0x6b
        wristaccessory_t9_s1_analog_origin_01, // 0x6c
        wristaccessory_t9_esports_mutineers_pc, // 0x6d
        wristaccessory_t9_esports_mutineers_sy, // 0x6e
        wristaccessory_t9_esports_mutineers_ms, // 0x6f
        wristaccessory_t9_s1_analog_private_eye_03, // 0x70
        wristaccessory_t9_s1_analog_private_eye_02, // 0x71
        wristaccessory_t9_s1_analog_private_eye_01, // 0x72
        wristaccessory_t9_esports_guerillas_sy, // 0x73
        wristaccessory_t9_esports_guerillas_pc, // 0x74
        wristaccessory_t9_esports_guerillas_ms, // 0x75
        wristaccessory_t9_s4_analog_wasteland, // 0x76
        wristaccessory_t9_s3_digital_diver_wargames, // 0x77
        wristaccessory_t9_s2_digital_river_slasher, // 0x78
        wristaccessory_t9_s2_bracelet_lure, // 0x79
        wristaccessory_t9_s2_analog_cold_hearted, // 0x7a
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x7b
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x7c
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x7d
        wristaccessory_t9_s1_digital_rank_01, // 0x7e
        wristaccessory_t9_s2_digital_jade, // 0x7f
        hash_708a99620b81ea23, // 0x80
        hash_708a9a620b81ebd6, // 0x81
        wristaccessory_t9_s3_analog_zombie_naga, // 0x82
        wristaccessory_t9_s2_analog_black_silver, // 0x83
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x84
        wristaccessory_t9_s4_digital_holographic, // 0x85
        wristaccessory_t9_s4_analog_fire_storm, // 0x86
        wristaccessory_t9_s3_digital_death_touch, // 0x87
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x88
        wristaccessory_t9_s2_analog_black_gold, // 0x89
        wristaccessory_t9_s1_digital_compass_01, // 0x8a
        wristaccessory_t9_s1_digital_first_spy_01, // 0x8b
        wristaccessory_t9_s1_digital_gaudy_01, // 0x8c
        wristaccessory_t9_s5_analog_retrotac // 0x8d
    };

    // idx 0x3 members: 0x69
    enum executions {
        execution_158, // 0x0
        execution_159, // 0x1
        execution_150, // 0x2
        execution_154, // 0x3
        execution_157, // 0x4
        execution_148, // 0x5
        execution_141, // 0x6
        execution_140, // 0x7
        execution_147, // 0x8
        execution_146, // 0x9
        execution_174, // 0xa
        execution_173, // 0xb
        execution_160, // 0xc
        execution_162, // 0xd
        execution_117, // 0xe
        execution_110, // 0xf
        execution_111, // 0x10
        execution_112, // 0x11
        execution_113, // 0x12
        execution_118, // 0x13
        execution_119, // 0x14
        execution_101, // 0x15
        execution_100, // 0x16
        execution_108, // 0x17
        execution_138, // 0x18
        execution_139, // 0x19
        execution_132, // 0x1a
        execution_133, // 0x1b
        execution_130, // 0x1c
        execution_136, // 0x1d
        execution_137, // 0x1e
        execution_134, // 0x1f
        execution_135, // 0x20
        execution_129, // 0x21
        execution_128, // 0x22
        execution_125, // 0x23
        execution_124, // 0x24
        execution_127, // 0x25
        execution_126, // 0x26
        execution_121, // 0x27
        execution_120, // 0x28
        execution_123, // 0x29
        execution_040bc, // 0x2a
        execution_039bc, // 0x2b
        execution_208, // 0x2c
        execution_204, // 0x2d
        execution_205, // 0x2e
        execution_206, // 0x2f
        execution_201, // 0x30
        execution_202, // 0x31
        execution_203, // 0x32
        execution_086, // 0x33
        execution_084, // 0x34
        execution_080, // 0x35
        execution_099, // 0x36
        execution_029, // 0x37
        execution_020, // 0x38
        execution_021, // 0x39
        execution_022, // 0x3a
        execution_023, // 0x3b
        execution_024, // 0x3c
        execution_025, // 0x3d
        execution_026, // 0x3e
        execution_027, // 0x3f
        execution_038, // 0x40
        execution_033, // 0x41
        execution_032, // 0x42
        execution_031, // 0x43
        execution_030, // 0x44
        execution_037, // 0x45
        execution_036, // 0x46
        execution_034, // 0x47
        execution_009, // 0x48
        execution_007, // 0x49
        execution_004, // 0x4a
        execution_005, // 0x4b
        execution_002, // 0x4c
        execution_003, // 0x4d
        execution_001, // 0x4e
        execution_010, // 0x4f
        execution_013, // 0x50
        execution_015, // 0x51
        execution_014, // 0x52
        execution_017, // 0x53
        execution_016, // 0x54
        execution_018, // 0x55
        execution_064, // 0x56
        execution_065, // 0x57
        execution_066, // 0x58
        execution_067, // 0x59
        execution_061, // 0x5a
        execution_062, // 0x5b
        execution_063, // 0x5c
        execution_069, // 0x5d
        execution_070, // 0x5e
        execution_048, // 0x5f
        execution_049, // 0x60
        execution_043, // 0x61
        execution_040, // 0x62
        execution_059, // 0x63
        execution_058, // 0x64
        execution_051, // 0x65
        execution_052, // 0x66
        execution_038r, // 0x67
        hash_7f66c55f0f1308c2 // 0x68
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1f
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_mulekick_tier, // 0x4
        toxic_growth_tier, // 0x5
        talent_deadshot_tier, // 0x6
        hash_1bb7d8d0caf94859, // 0x7
        hash_1f78483ef16f84d5, // 0x8
        lightning_links_tier, // 0x9
        weapon_knife_tier, // 0xa
        weapon_smg_tier, // 0xb
        talent_speedcola_tier, // 0xc
        heal_aoe_tier, // 0xd
        frost_blast_tier, // 0xe
        hash_38f1aae51e2d5f58, // 0xf
        hash_3908c184a5cbf339, // 0x10
        weapon_sniper_tier, // 0x11
        weapon_pistol_tier, // 0x12
        energy_mine_tier, // 0x13
        talent_quickrevive_tier, // 0x14
        ammomod_brainrot_tier, // 0x15
        weapon_lmg_tier, // 0x16
        ammomod_napalmburst_tier, // 0x17
        ring_of_fire_tier, // 0x18
        hash_63114aea3939d941, // 0x19
        ammomod_deadwire_tier, // 0x1a
        talent_elemental_pop_tier, // 0x1b
        talent_staminup_tier, // 0x1c
        weapon_tactical_tier, // 0x1d
        weapon_special_tier // 0x1e
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16a58, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc170(0x182e Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16a50, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_cd460ba61c482fed {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 92936 (0x16b08)
    // header byte size . 11617 (0x2d61)

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

    // bitSize: 0x98, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x8f, array:0x8f(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x78, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x69, array:0x69(hti:0x3)
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

    // bitSize: 0xc170, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0xf8(0x1f Byte(s)), array:0x1f(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2268, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23e0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c20, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c28, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2ca8, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7d8, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc058, bitSize: 0x78(0xf Byte(s))
        execution execution;
        // offset: 0xc0d0, bitSize: 0x98(0x13 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc168, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc169, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc16a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc16b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x8f
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_s3_analog_mctag, // 0x2
        wristaccessory_t9_s4_digital_evil, // 0x3
        wristaccessory_t9_s4_analog_spaceship, // 0x4
        wristaccessory_t9_s5_analog_dis_assassin, // 0x5
        wristaccessory_t9_esports_legion_sy, // 0x6
        wristaccessory_t9_esports_legion_pc, // 0x7
        wristaccessory_t9_esports_legion_ms, // 0x8
        wristaccessory_t9_s3_analog_winter_ash, // 0x9
        wristaccessory_t9_esports_rokkr_sy, // 0xa
        wristaccessory_t9_esports_rokkr_pc, // 0xb
        wristaccessory_t9_esports_rokkr_ms, // 0xc
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xd
        wristaccessory_t9_s2_analog_necro_king, // 0xe
        wristaccessory_t9_s2_digital_sforce, // 0xf
        wristaccessory_t9_s1_digital_gambit_01, // 0x10
        wristaccessory_t9_s3_digital_radiation, // 0x11
        wristaccessory_t9_s1_digital_inteculo_01, // 0x12
        wristaccessory_t9_s3_digital_ultrafunk, // 0x13
        wristaccessory_t9_s1_analog_brawler_01, // 0x14
        wristaccessory_t9_s4_bracelet_weathered, // 0x15
        wristaccessory_t9_s4_analog_future_soldier, // 0x16
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x17
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x18
        wristaccessory_t9_s3_bracelet_01, // 0x19
        hash_1ccdff0ebb3ad612, // 0x1a
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x1b
        wristaccessory_t9_s1_analog_kremlin, // 0x1c
        wristaccessory_t9_s5_digital_checkmate, // 0x1d
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x1e
        wristaccessory_t9_s4_analog_horror, // 0x1f
        wristaccessory_t9_s2_analog_mortal, // 0x20
        wristaccessory_t9_esports_empire_ms, // 0x21
        wristaccessory_t9_esports_empire_pc, // 0x22
        wristaccessory_t9_esports_empire_sy, // 0x23
        hash_25142303752f4324, // 0x24
        hash_25142503752f468a, // 0x25
        wristaccessory_t9_s1_analog_retroren_02, // 0x26
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x27
        wristaccessory_default, // 0x28
        wristaccessory_t9_esports_royalravens_ms, // 0x29
        wristaccessory_t9_esports_royalravens_pc, // 0x2a
        wristaccessory_t9_esports_royalravens_sy, // 0x2b
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x2c
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x2d
        wristaccessory_t9_s4_analog_rbear, // 0x2e
        wristaccessory_t9_s4_digital_roadwarrior, // 0x2f
        wristaccessory_t9_s2_analog_420, // 0x30
        wristaccessory_t9_s2_digital_mini_map, // 0x31
        wristaccessory_t9_s1_digital_kazuya_01, // 0x32
        wristaccessory_t9_s2_digital_mayan, // 0x33
        wristaccessory_t9_s1_digital_diver, // 0x34
        wristaccessory_t9_s4_holographic_rank, // 0x35
        wristaccessory_t9_s4_analog_roadwar, // 0x36
        wristaccessory_t9_esports_thieves_ms, // 0x37
        wristaccessory_t9_esports_thieves_pc, // 0x38
        wristaccessory_t9_esports_thieves_sy, // 0x39
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x3a
        wristaccessory_t9_s5_analog_holographic, // 0x3b
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x3c
        wristaccessory_t9_s4_digital_blade, // 0x3d
        wristaccessory_t9_s2_analog_naval_warfare, // 0x3e
        wristaccessory_t9_esports_subliners_pc, // 0x3f
        wristaccessory_t9_esports_subliners_sy, // 0x40
        wristaccessory_t9_esports_subliners_ms, // 0x41
        wristaccessory_t9_s3_digital_magic8, // 0x42
        wristaccessory_t9_s4_analog_assassin, // 0x43
        wristaccessory_t9_s2_analog_dark_aether, // 0x44
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x45
        wristaccessory_t9_s2_analog_mayan, // 0x46
        wristaccessory_t9_s1_analog_bope_01, // 0x47
        wristaccessory_t9_esports_ultra_ms, // 0x48
        wristaccessory_t9_esports_ultra_sy, // 0x49
        wristaccessory_t9_esports_ultra_pc, // 0x4a
        wristaccessory_t9_s2_analog_paratroop, // 0x4b
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x4c
        wristaccessory_t9_s1_analog_aviator_02, // 0x4d
        wristaccessory_t9_s1_analog_horex_01, // 0x4e
        wristaccessory_t9_s1_analog_fancy, // 0x4f
        wristaccessory_t9_s1_analog_aviator_x2, // 0x50
        wristaccessory_t9_s5_analog_classic, // 0x51
        wristaccessory_t9_esports_optic_ms, // 0x52
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x53
        wristaccessory_t9_esports_optic_sy, // 0x54
        wristaccessory_t9_esports_optic_pc, // 0x55
        hash_49c1608438e3ee8b, // 0x56
        wristaccessory_t9_s2_analog_rebel, // 0x57
        wristaccessory_t9_s5_analog_egy_burial, // 0x58
        wristaccessory_t9_s2_analog_white_tiger, // 0x59
        wristaccessory_t9_s2_analog_caiman, // 0x5a
        hash_4fee76d1114701af, // 0x5b
        wristaccessory_t9_s3_analog_chrono_sea, // 0x5c
        wristaccessory_t9_s2_analog_broken_fancy, // 0x5d
        hash_511c7fa835d89891, // 0x5e
        wristaccessory_t9_s4_digital_royal_decree, // 0x5f
        wristaccessory_t9_s1_bracelet_skull_01, // 0x60
        wristaccessory_t9_s5_analog_rainbow_jewel, // 0x61
        wristaccessory_t9_s3_digital_big_joke, // 0x62
        wristaccessory_t9_s1_bracelet_01, // 0x63
        hash_575c967cd59c9145, // 0x64
        wristaccessory_t9_esports_surge_sy, // 0x65
        wristaccessory_t9_esports_surge_pc, // 0x66
        wristaccessory_t9_s4_digital_big_joke, // 0x67
        wristaccessory_t9_esports_surge_ms, // 0x68
        wristaccessory_t9_s4_analog_jefe, // 0x69
        wristaccessory_t9_esports_faze_ms, // 0x6a
        wristaccessory_t9_esports_faze_pc, // 0x6b
        wristaccessory_t9_esports_faze_sy, // 0x6c
        wristaccessory_t9_s1_analog_origin_01, // 0x6d
        wristaccessory_t9_esports_mutineers_pc, // 0x6e
        wristaccessory_t9_esports_mutineers_sy, // 0x6f
        wristaccessory_t9_esports_mutineers_ms, // 0x70
        wristaccessory_t9_s1_analog_private_eye_03, // 0x71
        wristaccessory_t9_s1_analog_private_eye_02, // 0x72
        wristaccessory_t9_s1_analog_private_eye_01, // 0x73
        wristaccessory_t9_esports_guerillas_sy, // 0x74
        wristaccessory_t9_esports_guerillas_pc, // 0x75
        wristaccessory_t9_esports_guerillas_ms, // 0x76
        wristaccessory_t9_s4_analog_wasteland, // 0x77
        wristaccessory_t9_s3_digital_diver_wargames, // 0x78
        wristaccessory_t9_s2_digital_river_slasher, // 0x79
        wristaccessory_t9_s2_bracelet_lure, // 0x7a
        wristaccessory_t9_s2_analog_cold_hearted, // 0x7b
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x7c
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x7d
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x7e
        wristaccessory_t9_s1_digital_rank_01, // 0x7f
        wristaccessory_t9_s2_digital_jade, // 0x80
        hash_708a99620b81ea23, // 0x81
        hash_708a9a620b81ebd6, // 0x82
        wristaccessory_t9_s3_analog_zombie_naga, // 0x83
        wristaccessory_t9_s2_analog_black_silver, // 0x84
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x85
        wristaccessory_t9_s4_digital_holographic, // 0x86
        wristaccessory_t9_s4_analog_fire_storm, // 0x87
        wristaccessory_t9_s3_digital_death_touch, // 0x88
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x89
        wristaccessory_t9_s2_analog_black_gold, // 0x8a
        wristaccessory_t9_s1_digital_compass_01, // 0x8b
        wristaccessory_t9_s1_digital_first_spy_01, // 0x8c
        wristaccessory_t9_s1_digital_gaudy_01, // 0x8d
        wristaccessory_t9_s5_analog_retrotac // 0x8e
    };

    // idx 0x3 members: 0x69
    enum executions {
        execution_158, // 0x0
        execution_159, // 0x1
        execution_150, // 0x2
        execution_154, // 0x3
        execution_157, // 0x4
        execution_148, // 0x5
        execution_141, // 0x6
        execution_140, // 0x7
        execution_147, // 0x8
        execution_146, // 0x9
        execution_174, // 0xa
        execution_173, // 0xb
        execution_160, // 0xc
        execution_162, // 0xd
        execution_117, // 0xe
        execution_110, // 0xf
        execution_111, // 0x10
        execution_112, // 0x11
        execution_113, // 0x12
        execution_118, // 0x13
        execution_119, // 0x14
        execution_101, // 0x15
        execution_100, // 0x16
        execution_108, // 0x17
        execution_138, // 0x18
        execution_139, // 0x19
        execution_132, // 0x1a
        execution_133, // 0x1b
        execution_130, // 0x1c
        execution_136, // 0x1d
        execution_137, // 0x1e
        execution_134, // 0x1f
        execution_135, // 0x20
        execution_129, // 0x21
        execution_128, // 0x22
        execution_125, // 0x23
        execution_124, // 0x24
        execution_127, // 0x25
        execution_126, // 0x26
        execution_121, // 0x27
        execution_120, // 0x28
        execution_123, // 0x29
        execution_040bc, // 0x2a
        execution_039bc, // 0x2b
        execution_208, // 0x2c
        execution_204, // 0x2d
        execution_205, // 0x2e
        execution_206, // 0x2f
        execution_201, // 0x30
        execution_202, // 0x31
        execution_203, // 0x32
        execution_086, // 0x33
        execution_084, // 0x34
        execution_080, // 0x35
        execution_099, // 0x36
        execution_029, // 0x37
        execution_020, // 0x38
        execution_021, // 0x39
        execution_022, // 0x3a
        execution_023, // 0x3b
        execution_024, // 0x3c
        execution_025, // 0x3d
        execution_026, // 0x3e
        execution_027, // 0x3f
        execution_038, // 0x40
        execution_033, // 0x41
        execution_032, // 0x42
        execution_031, // 0x43
        execution_030, // 0x44
        execution_037, // 0x45
        execution_036, // 0x46
        execution_034, // 0x47
        execution_009, // 0x48
        execution_007, // 0x49
        execution_004, // 0x4a
        execution_005, // 0x4b
        execution_002, // 0x4c
        execution_003, // 0x4d
        execution_001, // 0x4e
        execution_010, // 0x4f
        execution_013, // 0x50
        execution_015, // 0x51
        execution_014, // 0x52
        execution_017, // 0x53
        execution_016, // 0x54
        execution_018, // 0x55
        execution_064, // 0x56
        execution_065, // 0x57
        execution_066, // 0x58
        execution_067, // 0x59
        execution_061, // 0x5a
        execution_062, // 0x5b
        execution_063, // 0x5c
        execution_069, // 0x5d
        execution_070, // 0x5e
        execution_048, // 0x5f
        execution_049, // 0x60
        execution_043, // 0x61
        execution_040, // 0x62
        execution_059, // 0x63
        execution_058, // 0x64
        execution_051, // 0x65
        execution_052, // 0x66
        execution_038r, // 0x67
        hash_7f66c55f0f1308c2 // 0x68
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x1f
    enum upgradetiers {
        hash_17641d3ab556bd8, // 0x0
        aether_shroud_tier, // 0x1
        weapon_launcher_tier, // 0x2
        hash_e4ec67369bdd326, // 0x3
        talent_mulekick_tier, // 0x4
        toxic_growth_tier, // 0x5
        talent_deadshot_tier, // 0x6
        hash_1bb7d8d0caf94859, // 0x7
        hash_1f78483ef16f84d5, // 0x8
        lightning_links_tier, // 0x9
        weapon_knife_tier, // 0xa
        weapon_smg_tier, // 0xb
        talent_speedcola_tier, // 0xc
        heal_aoe_tier, // 0xd
        frost_blast_tier, // 0xe
        hash_38f1aae51e2d5f58, // 0xf
        hash_3908c184a5cbf339, // 0x10
        weapon_sniper_tier, // 0x11
        weapon_pistol_tier, // 0x12
        energy_mine_tier, // 0x13
        talent_quickrevive_tier, // 0x14
        ammomod_brainrot_tier, // 0x15
        weapon_lmg_tier, // 0x16
        ammomod_napalmburst_tier, // 0x17
        ring_of_fire_tier, // 0x18
        hash_63114aea3939d941, // 0x19
        ammomod_deadwire_tier, // 0x1a
        talent_elemental_pop_tier, // 0x1b
        talent_staminup_tier, // 0x1c
        weapon_tactical_tier, // 0x1d
        weapon_special_tier // 0x1e
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16a58, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc170(0x182e Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16a50, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_8c9024aebd3d68f4 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 92960 (0x16b20)
    // header byte size . 11620 (0x2d64)

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

    // bitSize: 0xa0, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x97, array:0x97(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x80, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x75, array:0x75(hti:0x3)
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

    // bitSize: 0xc188, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0x100(0x20 Byte(s)), array:0x20(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2270, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23e8, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c28, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c30, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2cb0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7e0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc060, bitSize: 0x80(0x10 Byte(s))
        execution execution;
        // offset: 0xc0e0, bitSize: 0xa0(0x14 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc180, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc181, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc182, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc183, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x97
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_s3_analog_mctag, // 0x2
        wristaccessory_t9_s4_digital_evil, // 0x3
        wristaccessory_t9_s4_analog_spaceship, // 0x4
        wristaccessory_t9_s5_analog_dis_assassin, // 0x5
        wristaccessory_t9_esports_legion_sy, // 0x6
        wristaccessory_t9_esports_legion_pc, // 0x7
        wristaccessory_t9_esports_legion_ms, // 0x8
        wristaccessory_t9_s3_analog_winter_ash, // 0x9
        wristaccessory_t9_esports_rokkr_sy, // 0xa
        wristaccessory_t9_esports_rokkr_pc, // 0xb
        wristaccessory_t9_esports_rokkr_ms, // 0xc
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xd
        wristaccessory_t9_s2_analog_necro_king, // 0xe
        wristaccessory_t9_s2_digital_sforce, // 0xf
        wristaccessory_t9_s1_digital_gambit_01, // 0x10
        wristaccessory_t9_s5_digital_arabian, // 0x11
        wristaccessory_t9_s3_digital_radiation, // 0x12
        wristaccessory_t9_s1_digital_inteculo_01, // 0x13
        wristaccessory_t9_s3_digital_ultrafunk, // 0x14
        wristaccessory_t9_s1_analog_brawler_01, // 0x15
        wristaccessory_t9_s4_bracelet_weathered, // 0x16
        wristaccessory_t9_s4_analog_future_soldier, // 0x17
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x18
        wristaccessory_t9_s5_analog_onyx_sy, // 0x19
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x1a
        wristaccessory_t9_s3_bracelet_01, // 0x1b
        hash_1ccdff0ebb3ad612, // 0x1c
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x1d
        wristaccessory_t9_s1_analog_kremlin, // 0x1e
        wristaccessory_t9_s5_digital_checkmate, // 0x1f
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x20
        wristaccessory_t9_s4_analog_horror, // 0x21
        wristaccessory_t9_s2_analog_mortal, // 0x22
        wristaccessory_t9_esports_empire_ms, // 0x23
        wristaccessory_t9_esports_empire_pc, // 0x24
        wristaccessory_t9_esports_empire_sy, // 0x25
        hash_25142303752f4324, // 0x26
        hash_25142503752f468a, // 0x27
        wristaccessory_t9_s1_analog_retroren_02, // 0x28
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x29
        wristaccessory_default, // 0x2a
        wristaccessory_t9_esports_royalravens_ms, // 0x2b
        wristaccessory_t9_esports_royalravens_pc, // 0x2c
        wristaccessory_t9_esports_royalravens_sy, // 0x2d
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x2e
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x2f
        wristaccessory_t9_s4_analog_rbear, // 0x30
        wristaccessory_t9_s4_digital_roadwarrior, // 0x31
        wristaccessory_t9_s5_analog_riptide, // 0x32
        wristaccessory_t9_s2_analog_420, // 0x33
        wristaccessory_t9_s2_digital_mini_map, // 0x34
        wristaccessory_t9_s1_digital_kazuya_01, // 0x35
        wristaccessory_t9_s2_digital_mayan, // 0x36
        wristaccessory_t9_s1_digital_diver, // 0x37
        wristaccessory_t9_s4_holographic_rank, // 0x38
        wristaccessory_t9_s4_analog_roadwar, // 0x39
        wristaccessory_t9_esports_thieves_ms, // 0x3a
        wristaccessory_t9_esports_thieves_pc, // 0x3b
        wristaccessory_t9_esports_thieves_sy, // 0x3c
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x3d
        wristaccessory_t9_s5_analog_holographic, // 0x3e
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x3f
        wristaccessory_t9_s4_digital_blade, // 0x40
        wristaccessory_t9_s2_analog_naval_warfare, // 0x41
        wristaccessory_t9_esports_subliners_pc, // 0x42
        wristaccessory_t9_esports_subliners_sy, // 0x43
        wristaccessory_t9_esports_subliners_ms, // 0x44
        wristaccessory_t9_s3_digital_magic8, // 0x45
        wristaccessory_t9_s4_analog_assassin, // 0x46
        wristaccessory_t9_s2_analog_dark_aether, // 0x47
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x48
        wristaccessory_t9_s2_analog_mayan, // 0x49
        wristaccessory_t9_s1_analog_bope_01, // 0x4a
        wristaccessory_t9_esports_ultra_ms, // 0x4b
        wristaccessory_t9_esports_ultra_sy, // 0x4c
        wristaccessory_t9_esports_ultra_pc, // 0x4d
        wristaccessory_t9_s2_analog_paratroop, // 0x4e
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x4f
        wristaccessory_t9_s1_analog_aviator_02, // 0x50
        wristaccessory_t9_s1_analog_horex_01, // 0x51
        wristaccessory_t9_s1_analog_fancy, // 0x52
        wristaccessory_t9_s1_analog_aviator_x2, // 0x53
        wristaccessory_t9_s5_analog_classic, // 0x54
        wristaccessory_t9_esports_optic_ms, // 0x55
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x56
        wristaccessory_t9_esports_optic_sy, // 0x57
        wristaccessory_t9_esports_optic_pc, // 0x58
        wristaccessory_t9_s5_analog_hacking_code, // 0x59
        wristaccessory_t9_s2_analog_rebel, // 0x5a
        wristaccessory_t9_s5_digital_ghosted, // 0x5b
        wristaccessory_t9_s5_analog_egy_burial, // 0x5c
        wristaccessory_t9_s2_analog_white_tiger, // 0x5d
        wristaccessory_t9_s2_analog_caiman, // 0x5e
        hash_4fee76d1114701af, // 0x5f
        wristaccessory_t9_s3_analog_chrono_sea, // 0x60
        wristaccessory_t9_s2_analog_broken_fancy, // 0x61
        hash_511c7fa835d89891, // 0x62
        wristaccessory_t9_s4_digital_royal_decree, // 0x63
        wristaccessory_t9_s1_bracelet_skull_01, // 0x64
        wristaccessory_t9_s5_analog_rainbow_jewel, // 0x65
        wristaccessory_t9_s3_digital_big_joke, // 0x66
        wristaccessory_t9_s1_bracelet_01, // 0x67
        wristaccessory_t9_s5_analog_demon, // 0x68
        hash_575c967cd59c9145, // 0x69
        wristaccessory_t9_esports_surge_sy, // 0x6a
        wristaccessory_t9_esports_surge_pc, // 0x6b
        wristaccessory_t9_s4_digital_big_joke, // 0x6c
        wristaccessory_t9_esports_surge_ms, // 0x6d
        wristaccessory_t9_s4_analog_jefe, // 0x6e
        wristaccessory_t9_esports_faze_ms, // 0x6f
        wristaccessory_t9_esports_faze_pc, // 0x70
        wristaccessory_t9_esports_faze_sy, // 0x71
        wristaccessory_t9_s1_analog_origin_01, // 0x72
        wristaccessory_t9_esports_mutineers_pc, // 0x73
        wristaccessory_t9_esports_mutineers_sy, // 0x74
        wristaccessory_t9_esports_mutineers_ms, // 0x75
        wristaccessory_t9_s5_digital_wonderland, // 0x76
        wristaccessory_t9_s1_analog_private_eye_03, // 0x77
        wristaccessory_t9_s1_analog_private_eye_02, // 0x78
        wristaccessory_t9_s1_analog_private_eye_01, // 0x79
        wristaccessory_t9_esports_guerillas_sy, // 0x7a
        wristaccessory_t9_esports_guerillas_pc, // 0x7b
        wristaccessory_t9_esports_guerillas_ms, // 0x7c
        wristaccessory_t9_s4_analog_wasteland, // 0x7d
        wristaccessory_t9_s3_digital_diver_wargames, // 0x7e
        wristaccessory_t9_s5_digital_rank_countdwn, // 0x7f
        wristaccessory_t9_s2_digital_river_slasher, // 0x80
        wristaccessory_t9_s2_bracelet_lure, // 0x81
        wristaccessory_t9_s2_analog_cold_hearted, // 0x82
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x83
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x84
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x85
        wristaccessory_t9_s1_digital_rank_01, // 0x86
        wristaccessory_t9_s2_digital_jade, // 0x87
        hash_708a99620b81ea23, // 0x88
        hash_708a9a620b81ebd6, // 0x89
        wristaccessory_t9_s3_analog_zombie_naga, // 0x8a
        wristaccessory_t9_s2_analog_black_silver, // 0x8b
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x8c
        wristaccessory_t9_s4_digital_holographic, // 0x8d
        wristaccessory_t9_s4_analog_fire_storm, // 0x8e
        wristaccessory_t9_s3_digital_death_touch, // 0x8f
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x90
        wristaccessory_t9_s2_analog_black_gold, // 0x91
        wristaccessory_t9_s1_digital_compass_01, // 0x92
        wristaccessory_t9_s1_digital_first_spy_01, // 0x93
        wristaccessory_t9_s1_digital_gaudy_01, // 0x94
        wristaccessory_t9_s5_analog_retrotac, // 0x95
        wristaccessory_t9_s5_digital_dark_weaver // 0x96
    };

    // idx 0x3 members: 0x75
    enum executions {
        execution_182, // 0x0
        execution_181, // 0x1
        execution_158, // 0x2
        execution_159, // 0x3
        execution_150, // 0x4
        execution_154, // 0x5
        execution_157, // 0x6
        execution_149, // 0x7
        execution_148, // 0x8
        execution_141, // 0x9
        execution_140, // 0xa
        execution_147, // 0xb
        execution_146, // 0xc
        execution_174, // 0xd
        execution_173, // 0xe
        execution_161, // 0xf
        execution_160, // 0x10
        execution_163, // 0x11
        execution_162, // 0x12
        execution_117, // 0x13
        execution_110, // 0x14
        execution_111, // 0x15
        execution_112, // 0x16
        execution_113, // 0x17
        execution_118, // 0x18
        execution_119, // 0x19
        execution_101, // 0x1a
        execution_100, // 0x1b
        execution_108, // 0x1c
        execution_138, // 0x1d
        execution_139, // 0x1e
        execution_132, // 0x1f
        execution_133, // 0x20
        execution_130, // 0x21
        execution_136, // 0x22
        execution_137, // 0x23
        execution_134, // 0x24
        execution_135, // 0x25
        execution_129, // 0x26
        execution_128, // 0x27
        execution_125, // 0x28
        execution_124, // 0x29
        execution_127, // 0x2a
        execution_126, // 0x2b
        execution_121, // 0x2c
        execution_120, // 0x2d
        execution_123, // 0x2e
        execution_040bc, // 0x2f
        execution_039bc, // 0x30
        execution_208, // 0x31
        execution_204, // 0x32
        execution_205, // 0x33
        execution_206, // 0x34
        execution_207, // 0x35
        execution_201, // 0x36
        execution_202, // 0x37
        execution_203, // 0x38
        execution_086, // 0x39
        execution_084, // 0x3a
        execution_082, // 0x3b
        execution_083, // 0x3c
        execution_080, // 0x3d
        execution_081, // 0x3e
        execution_099, // 0x3f
        execution_029, // 0x40
        execution_020, // 0x41
        execution_021, // 0x42
        execution_022, // 0x43
        execution_023, // 0x44
        execution_024, // 0x45
        execution_025, // 0x46
        execution_026, // 0x47
        execution_027, // 0x48
        execution_038, // 0x49
        execution_033, // 0x4a
        execution_032, // 0x4b
        execution_031, // 0x4c
        execution_030, // 0x4d
        execution_037, // 0x4e
        execution_036, // 0x4f
        execution_034, // 0x50
        execution_009, // 0x51
        execution_007, // 0x52
        execution_004, // 0x53
        execution_005, // 0x54
        execution_002, // 0x55
        execution_003, // 0x56
        execution_001, // 0x57
        execution_010, // 0x58
        execution_013, // 0x59
        execution_015, // 0x5a
        execution_014, // 0x5b
        execution_017, // 0x5c
        execution_016, // 0x5d
        execution_018, // 0x5e
        execution_064, // 0x5f
        execution_065, // 0x60
        execution_066, // 0x61
        execution_067, // 0x62
        execution_061, // 0x63
        execution_062, // 0x64
        execution_063, // 0x65
        execution_069, // 0x66
        execution_074, // 0x67
        execution_070, // 0x68
        execution_078, // 0x69
        execution_048, // 0x6a
        execution_049, // 0x6b
        execution_043, // 0x6c
        execution_040, // 0x6d
        execution_045, // 0x6e
        execution_059, // 0x6f
        execution_058, // 0x70
        execution_051, // 0x71
        execution_052, // 0x72
        execution_038r, // 0x73
        hash_7f66c55f0f1308c2 // 0x74
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x20
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
        weapon_smg_tier, // 0xc
        talent_speedcola_tier, // 0xd
        heal_aoe_tier, // 0xe
        frost_blast_tier, // 0xf
        hash_38f1aae51e2d5f58, // 0x10
        hash_3908c184a5cbf339, // 0x11
        weapon_sniper_tier, // 0x12
        weapon_pistol_tier, // 0x13
        energy_mine_tier, // 0x14
        talent_quickrevive_tier, // 0x15
        ammomod_brainrot_tier, // 0x16
        weapon_lmg_tier, // 0x17
        ammomod_napalmburst_tier, // 0x18
        ring_of_fire_tier, // 0x19
        hash_63114aea3939d941, // 0x1a
        ammomod_deadwire_tier, // 0x1b
        talent_elemental_pop_tier, // 0x1c
        talent_staminup_tier, // 0x1d
        weapon_tactical_tier, // 0x1e
        weapon_special_tier // 0x1f
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16a70, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc188(0x1831 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16a68, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_8ba5d4b24f638d81 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 92968 (0x16b28)
    // header byte size . 11621 (0x2d65)

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

    // bitSize: 0xa8, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x99, array:0x99(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x80, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x75, array:0x75(hti:0x3)
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

    // bitSize: 0xc190, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0x100(0x20 Byte(s)), array:0x20(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2270, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23e8, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c28, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c30, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2cb0, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7e0, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc060, bitSize: 0x80(0x10 Byte(s))
        execution execution;
        // offset: 0xc0e0, bitSize: 0xa8(0x15 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc188, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc189, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc18a, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc18b, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x99
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s1_analog_fancy_gold, // 0x1
        wristaccessory_t9_s3_analog_mctag, // 0x2
        wristaccessory_t9_s4_digital_evil, // 0x3
        wristaccessory_t9_s4_analog_spaceship, // 0x4
        wristaccessory_t9_s5_analog_dis_assassin, // 0x5
        wristaccessory_t9_esports_legion_sy, // 0x6
        wristaccessory_t9_esports_legion_pc, // 0x7
        wristaccessory_t9_esports_legion_ms, // 0x8
        wristaccessory_t9_s3_analog_winter_ash, // 0x9
        wristaccessory_t9_esports_rokkr_sy, // 0xa
        wristaccessory_t9_esports_rokkr_pc, // 0xb
        wristaccessory_t9_esports_rokkr_ms, // 0xc
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xd
        wristaccessory_t9_s2_analog_necro_king, // 0xe
        wristaccessory_t9_s2_digital_sforce, // 0xf
        wristaccessory_t9_s1_digital_gambit_01, // 0x10
        wristaccessory_t9_s5_digital_arabian, // 0x11
        wristaccessory_t9_s3_digital_radiation, // 0x12
        wristaccessory_t9_s1_digital_inteculo_01, // 0x13
        wristaccessory_t9_s3_digital_ultrafunk, // 0x14
        wristaccessory_t9_s1_analog_brawler_01, // 0x15
        wristaccessory_t9_s4_bracelet_weathered, // 0x16
        wristaccessory_t9_s4_analog_future_soldier, // 0x17
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x18
        wristaccessory_t9_s5_analog_onyx_sy, // 0x19
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x1a
        wristaccessory_t9_s3_bracelet_01, // 0x1b
        hash_1ccdff0ebb3ad612, // 0x1c
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x1d
        wristaccessory_t9_s1_analog_kremlin, // 0x1e
        wristaccessory_t9_s5_digital_checkmate, // 0x1f
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x20
        wristaccessory_t9_s4_analog_horror, // 0x21
        wristaccessory_t9_s2_analog_mortal, // 0x22
        wristaccessory_t9_esports_empire_ms, // 0x23
        wristaccessory_t9_esports_empire_pc, // 0x24
        wristaccessory_t9_esports_empire_sy, // 0x25
        hash_25142303752f4324, // 0x26
        hash_25142503752f468a, // 0x27
        wristaccessory_t9_s1_analog_retroren_02, // 0x28
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x29
        wristaccessory_default, // 0x2a
        wristaccessory_t9_esports_royalravens_ms, // 0x2b
        wristaccessory_t9_esports_royalravens_pc, // 0x2c
        wristaccessory_t9_esports_royalravens_sy, // 0x2d
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x2e
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x2f
        wristaccessory_t9_s4_analog_rbear, // 0x30
        wristaccessory_t9_s4_digital_roadwarrior, // 0x31
        wristaccessory_t9_s5_analog_riptide, // 0x32
        wristaccessory_t9_s2_analog_420, // 0x33
        wristaccessory_t9_s2_digital_mini_map, // 0x34
        wristaccessory_t9_s1_digital_kazuya_01, // 0x35
        wristaccessory_t9_s2_digital_mayan, // 0x36
        wristaccessory_t9_s1_digital_diver, // 0x37
        wristaccessory_t9_s4_holographic_rank, // 0x38
        wristaccessory_t9_s4_analog_roadwar, // 0x39
        wristaccessory_t9_esports_thieves_ms, // 0x3a
        wristaccessory_t9_esports_thieves_pc, // 0x3b
        wristaccessory_t9_esports_thieves_sy, // 0x3c
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x3d
        wristaccessory_t9_s5_analog_holographic, // 0x3e
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x3f
        wristaccessory_t9_s4_digital_blade, // 0x40
        wristaccessory_t9_s2_analog_naval_warfare, // 0x41
        wristaccessory_t9_esports_subliners_pc, // 0x42
        wristaccessory_t9_esports_subliners_sy, // 0x43
        wristaccessory_t9_esports_subliners_ms, // 0x44
        wristaccessory_t9_s3_digital_magic8, // 0x45
        wristaccessory_t9_s4_analog_assassin, // 0x46
        wristaccessory_t9_s2_analog_dark_aether, // 0x47
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x48
        wristaccessory_t9_s2_analog_mayan, // 0x49
        wristaccessory_t9_s1_analog_bope_01, // 0x4a
        wristaccessory_t9_esports_ultra_ms, // 0x4b
        wristaccessory_t9_esports_ultra_sy, // 0x4c
        wristaccessory_t9_esports_ultra_pc, // 0x4d
        wristaccessory_t9_s2_analog_paratroop, // 0x4e
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x4f
        wristaccessory_t9_s1_analog_aviator_02, // 0x50
        wristaccessory_t9_s1_analog_horex_01, // 0x51
        wristaccessory_t9_s1_analog_fancy, // 0x52
        wristaccessory_t9_s1_analog_aviator_x2, // 0x53
        wristaccessory_t9_s5_analog_classic, // 0x54
        wristaccessory_t9_esports_optic_ms, // 0x55
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x56
        wristaccessory_t9_esports_optic_sy, // 0x57
        wristaccessory_t9_esports_optic_pc, // 0x58
        wristaccessory_t9_s5_analog_hacking_code, // 0x59
        wristaccessory_t9_s2_analog_rebel, // 0x5a
        wristaccessory_t9_s5_digital_ghosted, // 0x5b
        wristaccessory_t9_s5_analog_egy_burial, // 0x5c
        wristaccessory_t9_s2_analog_white_tiger, // 0x5d
        wristaccessory_t9_s2_analog_caiman, // 0x5e
        hash_4fee76d1114701af, // 0x5f
        wristaccessory_t9_s3_analog_chrono_sea, // 0x60
        wristaccessory_t9_s2_analog_broken_fancy, // 0x61
        hash_511c7fa835d89891, // 0x62
        wristaccessory_t9_s5_digital_judge_d, // 0x63
        wristaccessory_t9_s4_digital_royal_decree, // 0x64
        wristaccessory_t9_s1_bracelet_skull_01, // 0x65
        wristaccessory_t9_s5_analog_robo, // 0x66
        wristaccessory_t9_s5_analog_rainbow_jewel, // 0x67
        wristaccessory_t9_s3_digital_big_joke, // 0x68
        wristaccessory_t9_s1_bracelet_01, // 0x69
        wristaccessory_t9_s5_analog_demon, // 0x6a
        hash_575c967cd59c9145, // 0x6b
        wristaccessory_t9_esports_surge_sy, // 0x6c
        wristaccessory_t9_esports_surge_pc, // 0x6d
        wristaccessory_t9_s4_digital_big_joke, // 0x6e
        wristaccessory_t9_esports_surge_ms, // 0x6f
        wristaccessory_t9_s4_analog_jefe, // 0x70
        wristaccessory_t9_esports_faze_ms, // 0x71
        wristaccessory_t9_esports_faze_pc, // 0x72
        wristaccessory_t9_esports_faze_sy, // 0x73
        wristaccessory_t9_s1_analog_origin_01, // 0x74
        wristaccessory_t9_esports_mutineers_pc, // 0x75
        wristaccessory_t9_esports_mutineers_sy, // 0x76
        wristaccessory_t9_esports_mutineers_ms, // 0x77
        wristaccessory_t9_s5_digital_wonderland, // 0x78
        wristaccessory_t9_s1_analog_private_eye_03, // 0x79
        wristaccessory_t9_s1_analog_private_eye_02, // 0x7a
        wristaccessory_t9_s1_analog_private_eye_01, // 0x7b
        wristaccessory_t9_esports_guerillas_sy, // 0x7c
        wristaccessory_t9_esports_guerillas_pc, // 0x7d
        wristaccessory_t9_esports_guerillas_ms, // 0x7e
        wristaccessory_t9_s4_analog_wasteland, // 0x7f
        wristaccessory_t9_s3_digital_diver_wargames, // 0x80
        wristaccessory_t9_s5_digital_rank_countdwn, // 0x81
        wristaccessory_t9_s2_digital_river_slasher, // 0x82
        wristaccessory_t9_s2_bracelet_lure, // 0x83
        wristaccessory_t9_s2_analog_cold_hearted, // 0x84
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x85
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x86
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x87
        wristaccessory_t9_s1_digital_rank_01, // 0x88
        wristaccessory_t9_s2_digital_jade, // 0x89
        hash_708a99620b81ea23, // 0x8a
        hash_708a9a620b81ebd6, // 0x8b
        wristaccessory_t9_s3_analog_zombie_naga, // 0x8c
        wristaccessory_t9_s2_analog_black_silver, // 0x8d
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x8e
        wristaccessory_t9_s4_digital_holographic, // 0x8f
        wristaccessory_t9_s4_analog_fire_storm, // 0x90
        wristaccessory_t9_s3_digital_death_touch, // 0x91
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x92
        wristaccessory_t9_s2_analog_black_gold, // 0x93
        wristaccessory_t9_s1_digital_compass_01, // 0x94
        wristaccessory_t9_s1_digital_first_spy_01, // 0x95
        wristaccessory_t9_s1_digital_gaudy_01, // 0x96
        wristaccessory_t9_s5_analog_retrotac, // 0x97
        wristaccessory_t9_s5_digital_dark_weaver // 0x98
    };

    // idx 0x3 members: 0x75
    enum executions {
        execution_182, // 0x0
        execution_181, // 0x1
        execution_158, // 0x2
        execution_159, // 0x3
        execution_150, // 0x4
        execution_154, // 0x5
        execution_157, // 0x6
        execution_149, // 0x7
        execution_148, // 0x8
        execution_141, // 0x9
        execution_140, // 0xa
        execution_147, // 0xb
        execution_146, // 0xc
        execution_174, // 0xd
        execution_173, // 0xe
        execution_161, // 0xf
        execution_160, // 0x10
        execution_163, // 0x11
        execution_162, // 0x12
        execution_117, // 0x13
        execution_110, // 0x14
        execution_111, // 0x15
        execution_112, // 0x16
        execution_113, // 0x17
        execution_118, // 0x18
        execution_119, // 0x19
        execution_101, // 0x1a
        execution_100, // 0x1b
        execution_108, // 0x1c
        execution_138, // 0x1d
        execution_139, // 0x1e
        execution_132, // 0x1f
        execution_133, // 0x20
        execution_130, // 0x21
        execution_136, // 0x22
        execution_137, // 0x23
        execution_134, // 0x24
        execution_135, // 0x25
        execution_129, // 0x26
        execution_128, // 0x27
        execution_125, // 0x28
        execution_124, // 0x29
        execution_127, // 0x2a
        execution_126, // 0x2b
        execution_121, // 0x2c
        execution_120, // 0x2d
        execution_123, // 0x2e
        execution_040bc, // 0x2f
        execution_039bc, // 0x30
        execution_208, // 0x31
        execution_204, // 0x32
        execution_205, // 0x33
        execution_206, // 0x34
        execution_207, // 0x35
        execution_201, // 0x36
        execution_202, // 0x37
        execution_203, // 0x38
        execution_086, // 0x39
        execution_084, // 0x3a
        execution_082, // 0x3b
        execution_083, // 0x3c
        execution_080, // 0x3d
        execution_081, // 0x3e
        execution_099, // 0x3f
        execution_029, // 0x40
        execution_020, // 0x41
        execution_021, // 0x42
        execution_022, // 0x43
        execution_023, // 0x44
        execution_024, // 0x45
        execution_025, // 0x46
        execution_026, // 0x47
        execution_027, // 0x48
        execution_038, // 0x49
        execution_033, // 0x4a
        execution_032, // 0x4b
        execution_031, // 0x4c
        execution_030, // 0x4d
        execution_037, // 0x4e
        execution_036, // 0x4f
        execution_034, // 0x50
        execution_009, // 0x51
        execution_007, // 0x52
        execution_004, // 0x53
        execution_005, // 0x54
        execution_002, // 0x55
        execution_003, // 0x56
        execution_001, // 0x57
        execution_010, // 0x58
        execution_013, // 0x59
        execution_015, // 0x5a
        execution_014, // 0x5b
        execution_017, // 0x5c
        execution_016, // 0x5d
        execution_018, // 0x5e
        execution_064, // 0x5f
        execution_065, // 0x60
        execution_066, // 0x61
        execution_067, // 0x62
        execution_061, // 0x63
        execution_062, // 0x64
        execution_063, // 0x65
        execution_069, // 0x66
        execution_074, // 0x67
        execution_070, // 0x68
        execution_078, // 0x69
        execution_048, // 0x6a
        execution_049, // 0x6b
        execution_043, // 0x6c
        execution_040, // 0x6d
        execution_045, // 0x6e
        execution_059, // 0x6f
        execution_058, // 0x70
        execution_051, // 0x71
        execution_052, // 0x72
        execution_038r, // 0x73
        hash_7f66c55f0f1308c2 // 0x74
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x20
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
        weapon_smg_tier, // 0xc
        talent_speedcola_tier, // 0xd
        heal_aoe_tier, // 0xe
        frost_blast_tier, // 0xf
        hash_38f1aae51e2d5f58, // 0x10
        hash_3908c184a5cbf339, // 0x11
        weapon_sniper_tier, // 0x12
        weapon_pistol_tier, // 0x13
        energy_mine_tier, // 0x14
        talent_quickrevive_tier, // 0x15
        ammomod_brainrot_tier, // 0x16
        weapon_lmg_tier, // 0x17
        ammomod_napalmburst_tier, // 0x18
        ring_of_fire_tier, // 0x19
        hash_63114aea3939d941, // 0x1a
        ammomod_deadwire_tier, // 0x1b
        talent_elemental_pop_tier, // 0x1c
        talent_staminup_tier, // 0x1d
        weapon_tactical_tier, // 0x1e
        weapon_special_tier // 0x1f
    };

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16a78, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc190(0x1832 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16a70, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_43b4af4339966415 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 92976 (0x16b30)
    // header byte size . 11622 (0x2d66)

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

    // bitSize: 0xa8, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x9f, array:0x9f(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x80, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x77, array:0x77(hti:0x3)
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

    // bitSize: 0xc198, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0x108(0x21 Byte(s)), array:0x21(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2278, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23f0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c38, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2cb8, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7e8, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc068, bitSize: 0x80(0x10 Byte(s))
        execution execution;
        // offset: 0xc0e8, bitSize: 0xa8(0x15 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc190, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc191, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc192, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc193, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x9f
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s5_analog_blood_fancy, // 0x1
        wristaccessory_t9_s1_analog_fancy_gold, // 0x2
        wristaccessory_t9_s3_analog_mctag, // 0x3
        wristaccessory_t9_s4_digital_evil, // 0x4
        wristaccessory_t9_s4_analog_spaceship, // 0x5
        wristaccessory_t9_s5_analog_dis_assassin, // 0x6
        wristaccessory_t9_esports_legion_sy, // 0x7
        wristaccessory_t9_esports_legion_pc, // 0x8
        wristaccessory_t9_esports_legion_ms, // 0x9
        wristaccessory_t9_s3_analog_winter_ash, // 0xa
        wristaccessory_t9_esports_rokkr_sy, // 0xb
        wristaccessory_t9_esports_rokkr_pc, // 0xc
        wristaccessory_t9_esports_rokkr_ms, // 0xd
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xe
        wristaccessory_t9_s2_analog_necro_king, // 0xf
        wristaccessory_t9_s2_digital_sforce, // 0x10
        wristaccessory_t9_s1_digital_gambit_01, // 0x11
        wristaccessory_t9_s5_digital_arabian, // 0x12
        wristaccessory_t9_s3_digital_radiation, // 0x13
        wristaccessory_t9_s1_digital_inteculo_01, // 0x14
        wristaccessory_t9_s3_digital_ultrafunk, // 0x15
        wristaccessory_t9_s1_analog_brawler_01, // 0x16
        wristaccessory_t9_s4_bracelet_weathered, // 0x17
        wristaccessory_t9_s4_analog_future_soldier, // 0x18
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x19
        wristaccessory_t9_s5_analog_onyx_sy, // 0x1a
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x1b
        wristaccessory_t9_s3_bracelet_01, // 0x1c
        hash_1ccdff0ebb3ad612, // 0x1d
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x1e
        wristaccessory_t9_s1_analog_kremlin, // 0x1f
        wristaccessory_t9_s5_digital_checkmate, // 0x20
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x21
        wristaccessory_t9_s4_analog_horror, // 0x22
        wristaccessory_t9_s2_analog_mortal, // 0x23
        wristaccessory_t9_esports_empire_ms, // 0x24
        wristaccessory_t9_esports_empire_pc, // 0x25
        wristaccessory_t9_esports_empire_sy, // 0x26
        hash_25142303752f4324, // 0x27
        hash_25142503752f468a, // 0x28
        wristaccessory_t9_s1_analog_retroren_02, // 0x29
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x2a
        wristaccessory_default, // 0x2b
        wristaccessory_t9_esports_royalravens_ms, // 0x2c
        wristaccessory_t9_esports_royalravens_pc, // 0x2d
        wristaccessory_t9_esports_royalravens_sy, // 0x2e
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x2f
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x30
        wristaccessory_t9_s4_analog_rbear, // 0x31
        wristaccessory_t9_s4_digital_roadwarrior, // 0x32
        wristaccessory_t9_s5_analog_riptide, // 0x33
        wristaccessory_t9_s2_analog_420, // 0x34
        wristaccessory_t9_s2_digital_mini_map, // 0x35
        wristaccessory_t9_s1_digital_kazuya_01, // 0x36
        wristaccessory_t9_s2_digital_mayan, // 0x37
        wristaccessory_t9_s1_digital_diver, // 0x38
        wristaccessory_t9_s4_holographic_rank, // 0x39
        wristaccessory_t9_s4_analog_roadwar, // 0x3a
        wristaccessory_t9_esports_thieves_ms, // 0x3b
        wristaccessory_t9_esports_thieves_pc, // 0x3c
        wristaccessory_t9_esports_thieves_sy, // 0x3d
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x3e
        wristaccessory_t9_s5_analog_holographic, // 0x3f
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x40
        wristaccessory_t9_s4_digital_blade, // 0x41
        wristaccessory_t9_s2_analog_naval_warfare, // 0x42
        wristaccessory_t9_esports_subliners_pc, // 0x43
        wristaccessory_t9_esports_subliners_sy, // 0x44
        wristaccessory_t9_esports_subliners_ms, // 0x45
        wristaccessory_t9_s3_digital_magic8, // 0x46
        wristaccessory_t9_s4_analog_assassin, // 0x47
        wristaccessory_t9_s2_analog_dark_aether, // 0x48
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x49
        wristaccessory_t9_s2_analog_mayan, // 0x4a
        wristaccessory_t9_s1_analog_bope_01, // 0x4b
        wristaccessory_t9_esports_ultra_ms, // 0x4c
        wristaccessory_t9_esports_ultra_sy, // 0x4d
        wristaccessory_t9_esports_ultra_pc, // 0x4e
        wristaccessory_t9_s2_analog_paratroop, // 0x4f
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x50
        wristaccessory_t9_s1_analog_aviator_02, // 0x51
        wristaccessory_t9_s1_analog_horex_01, // 0x52
        wristaccessory_t9_s1_analog_fancy, // 0x53
        wristaccessory_t9_s1_analog_aviator_x2, // 0x54
        wristaccessory_t9_s5_analog_classic, // 0x55
        wristaccessory_t9_esports_optic_ms, // 0x56
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x57
        wristaccessory_t9_esports_optic_sy, // 0x58
        wristaccessory_t9_esports_optic_pc, // 0x59
        wristaccessory_t9_s5_analog_beer_o_clock, // 0x5a
        wristaccessory_t9_s5_analog_hacking_code, // 0x5b
        wristaccessory_t9_s2_analog_rebel, // 0x5c
        wristaccessory_t9_s5_digital_ghosted, // 0x5d
        wristaccessory_t9_s5_analog_egy_burial, // 0x5e
        wristaccessory_t9_s2_analog_white_tiger, // 0x5f
        wristaccessory_t9_s5_digital_critical_kill, // 0x60
        wristaccessory_t9_s2_analog_caiman, // 0x61
        hash_4fee76d1114701af, // 0x62
        wristaccessory_t9_s3_analog_chrono_sea, // 0x63
        wristaccessory_t9_s2_analog_broken_fancy, // 0x64
        hash_511c7fa835d89891, // 0x65
        wristaccessory_t9_s5_digital_judge_d, // 0x66
        wristaccessory_t9_s4_digital_royal_decree, // 0x67
        wristaccessory_t9_s1_bracelet_skull_01, // 0x68
        wristaccessory_t9_s5_analog_robo, // 0x69
        wristaccessory_t9_s5_analog_rainbow_jewel, // 0x6a
        wristaccessory_t9_s3_digital_big_joke, // 0x6b
        wristaccessory_t9_s1_bracelet_01, // 0x6c
        wristaccessory_t9_s5_analog_demon, // 0x6d
        hash_575c967cd59c9145, // 0x6e
        wristaccessory_t9_s5_analog_no_numbers, // 0x6f
        wristaccessory_t9_s5_digital_mummy_cat, // 0x70
        wristaccessory_t9_esports_surge_sy, // 0x71
        wristaccessory_t9_esports_surge_pc, // 0x72
        wristaccessory_t9_s4_digital_big_joke, // 0x73
        wristaccessory_t9_esports_surge_ms, // 0x74
        wristaccessory_t9_s4_analog_jefe, // 0x75
        wristaccessory_t9_esports_faze_ms, // 0x76
        wristaccessory_t9_esports_faze_pc, // 0x77
        wristaccessory_t9_esports_faze_sy, // 0x78
        wristaccessory_t9_s1_analog_origin_01, // 0x79
        wristaccessory_t9_esports_mutineers_pc, // 0x7a
        wristaccessory_t9_esports_mutineers_sy, // 0x7b
        wristaccessory_t9_esports_mutineers_ms, // 0x7c
        wristaccessory_t9_s5_digital_wonderland, // 0x7d
        wristaccessory_t9_s1_analog_private_eye_03, // 0x7e
        wristaccessory_t9_s1_analog_private_eye_02, // 0x7f
        wristaccessory_t9_s1_analog_private_eye_01, // 0x80
        wristaccessory_t9_esports_guerillas_sy, // 0x81
        wristaccessory_t9_esports_guerillas_pc, // 0x82
        wristaccessory_t9_esports_guerillas_ms, // 0x83
        wristaccessory_t9_s4_analog_wasteland, // 0x84
        wristaccessory_t9_s3_digital_diver_wargames, // 0x85
        wristaccessory_t9_s5_digital_rank_countdwn, // 0x86
        wristaccessory_t9_s2_digital_river_slasher, // 0x87
        wristaccessory_t9_s2_bracelet_lure, // 0x88
        wristaccessory_t9_s2_analog_cold_hearted, // 0x89
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x8a
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x8b
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x8c
        wristaccessory_t9_s1_digital_rank_01, // 0x8d
        wristaccessory_t9_s2_digital_jade, // 0x8e
        hash_708a99620b81ea23, // 0x8f
        hash_708a9a620b81ebd6, // 0x90
        wristaccessory_t9_s3_analog_zombie_naga, // 0x91
        wristaccessory_t9_s5_digital_tagger, // 0x92
        wristaccessory_t9_s2_analog_black_silver, // 0x93
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x94
        wristaccessory_t9_s4_digital_holographic, // 0x95
        wristaccessory_t9_s4_analog_fire_storm, // 0x96
        wristaccessory_t9_s3_digital_death_touch, // 0x97
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x98
        wristaccessory_t9_s2_analog_black_gold, // 0x99
        wristaccessory_t9_s1_digital_compass_01, // 0x9a
        wristaccessory_t9_s1_digital_first_spy_01, // 0x9b
        wristaccessory_t9_s1_digital_gaudy_01, // 0x9c
        wristaccessory_t9_s5_analog_retrotac, // 0x9d
        wristaccessory_t9_s5_digital_dark_weaver // 0x9e
    };

    // idx 0x3 members: 0x77
    enum executions {
        execution_194, // 0x0
        execution_195, // 0x1
        execution_182, // 0x2
        execution_181, // 0x3
        execution_158, // 0x4
        execution_159, // 0x5
        execution_150, // 0x6
        execution_154, // 0x7
        execution_157, // 0x8
        execution_149, // 0x9
        execution_148, // 0xa
        execution_141, // 0xb
        execution_140, // 0xc
        execution_147, // 0xd
        execution_146, // 0xe
        execution_174, // 0xf
        execution_173, // 0x10
        execution_161, // 0x11
        execution_160, // 0x12
        execution_163, // 0x13
        execution_162, // 0x14
        execution_117, // 0x15
        execution_110, // 0x16
        execution_111, // 0x17
        execution_112, // 0x18
        execution_113, // 0x19
        execution_118, // 0x1a
        execution_119, // 0x1b
        execution_101, // 0x1c
        execution_100, // 0x1d
        execution_108, // 0x1e
        execution_138, // 0x1f
        execution_139, // 0x20
        execution_132, // 0x21
        execution_133, // 0x22
        execution_130, // 0x23
        execution_136, // 0x24
        execution_137, // 0x25
        execution_134, // 0x26
        execution_135, // 0x27
        execution_129, // 0x28
        execution_128, // 0x29
        execution_125, // 0x2a
        execution_124, // 0x2b
        execution_127, // 0x2c
        execution_126, // 0x2d
        execution_121, // 0x2e
        execution_120, // 0x2f
        execution_123, // 0x30
        execution_040bc, // 0x31
        execution_039bc, // 0x32
        execution_208, // 0x33
        execution_204, // 0x34
        execution_205, // 0x35
        execution_206, // 0x36
        execution_207, // 0x37
        execution_201, // 0x38
        execution_202, // 0x39
        execution_203, // 0x3a
        execution_086, // 0x3b
        execution_084, // 0x3c
        execution_082, // 0x3d
        execution_083, // 0x3e
        execution_080, // 0x3f
        execution_081, // 0x40
        execution_099, // 0x41
        execution_029, // 0x42
        execution_020, // 0x43
        execution_021, // 0x44
        execution_022, // 0x45
        execution_023, // 0x46
        execution_024, // 0x47
        execution_025, // 0x48
        execution_026, // 0x49
        execution_027, // 0x4a
        execution_038, // 0x4b
        execution_033, // 0x4c
        execution_032, // 0x4d
        execution_031, // 0x4e
        execution_030, // 0x4f
        execution_037, // 0x50
        execution_036, // 0x51
        execution_034, // 0x52
        execution_009, // 0x53
        execution_007, // 0x54
        execution_004, // 0x55
        execution_005, // 0x56
        execution_002, // 0x57
        execution_003, // 0x58
        execution_001, // 0x59
        execution_010, // 0x5a
        execution_013, // 0x5b
        execution_015, // 0x5c
        execution_014, // 0x5d
        execution_017, // 0x5e
        execution_016, // 0x5f
        execution_018, // 0x60
        execution_064, // 0x61
        execution_065, // 0x62
        execution_066, // 0x63
        execution_067, // 0x64
        execution_061, // 0x65
        execution_062, // 0x66
        execution_063, // 0x67
        execution_069, // 0x68
        execution_074, // 0x69
        execution_070, // 0x6a
        execution_078, // 0x6b
        execution_048, // 0x6c
        execution_049, // 0x6d
        execution_043, // 0x6e
        execution_040, // 0x6f
        execution_045, // 0x70
        execution_059, // 0x71
        execution_058, // 0x72
        execution_051, // 0x73
        execution_052, // 0x74
        execution_038r, // 0x75
        hash_7f66c55f0f1308c2 // 0x76
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x21
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

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16a80, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc198(0x1833 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16a78, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_bdb5bc6f939d69fb {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 92976 (0x16b30)
    // header byte size . 11622 (0x2d66)

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

    // bitSize: 0xa8, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x9e, array:0x9e(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x80, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x76, array:0x76(hti:0x3)
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

    // bitSize: 0xc198, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0x108(0x21 Byte(s)), array:0x21(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2278, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23f0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c38, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2cb8, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7e8, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc068, bitSize: 0x80(0x10 Byte(s))
        execution execution;
        // offset: 0xc0e8, bitSize: 0xa8(0x15 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc190, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc191, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc192, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc193, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x9e
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s5_analog_blood_fancy, // 0x1
        wristaccessory_t9_s1_analog_fancy_gold, // 0x2
        wristaccessory_t9_s3_analog_mctag, // 0x3
        wristaccessory_t9_s4_digital_evil, // 0x4
        wristaccessory_t9_s4_analog_spaceship, // 0x5
        wristaccessory_t9_s5_analog_dis_assassin, // 0x6
        wristaccessory_t9_esports_legion_sy, // 0x7
        wristaccessory_t9_esports_legion_pc, // 0x8
        wristaccessory_t9_esports_legion_ms, // 0x9
        wristaccessory_t9_s3_analog_winter_ash, // 0xa
        wristaccessory_t9_esports_rokkr_sy, // 0xb
        wristaccessory_t9_esports_rokkr_pc, // 0xc
        wristaccessory_t9_esports_rokkr_ms, // 0xd
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xe
        wristaccessory_t9_s2_analog_necro_king, // 0xf
        wristaccessory_t9_s2_digital_sforce, // 0x10
        wristaccessory_t9_s1_digital_gambit_01, // 0x11
        wristaccessory_t9_s5_digital_arabian, // 0x12
        wristaccessory_t9_s3_digital_radiation, // 0x13
        wristaccessory_t9_s1_digital_inteculo_01, // 0x14
        wristaccessory_t9_s3_digital_ultrafunk, // 0x15
        wristaccessory_t9_s1_analog_brawler_01, // 0x16
        wristaccessory_t9_s4_bracelet_weathered, // 0x17
        wristaccessory_t9_s4_analog_future_soldier, // 0x18
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x19
        wristaccessory_t9_s5_analog_onyx_sy, // 0x1a
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x1b
        wristaccessory_t9_s3_bracelet_01, // 0x1c
        hash_1ccdff0ebb3ad612, // 0x1d
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x1e
        wristaccessory_t9_s1_analog_kremlin, // 0x1f
        wristaccessory_t9_s5_digital_checkmate, // 0x20
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x21
        wristaccessory_t9_s4_analog_horror, // 0x22
        wristaccessory_t9_s2_analog_mortal, // 0x23
        wristaccessory_t9_esports_empire_ms, // 0x24
        wristaccessory_t9_esports_empire_pc, // 0x25
        wristaccessory_t9_esports_empire_sy, // 0x26
        hash_25142303752f4324, // 0x27
        hash_25142503752f468a, // 0x28
        wristaccessory_t9_s1_analog_retroren_02, // 0x29
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x2a
        wristaccessory_default, // 0x2b
        wristaccessory_t9_esports_royalravens_ms, // 0x2c
        wristaccessory_t9_esports_royalravens_pc, // 0x2d
        wristaccessory_t9_esports_royalravens_sy, // 0x2e
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x2f
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x30
        wristaccessory_t9_s4_analog_rbear, // 0x31
        wristaccessory_t9_s4_digital_roadwarrior, // 0x32
        wristaccessory_t9_s5_analog_riptide, // 0x33
        wristaccessory_t9_s2_analog_420, // 0x34
        wristaccessory_t9_s2_digital_mini_map, // 0x35
        wristaccessory_t9_s1_digital_kazuya_01, // 0x36
        wristaccessory_t9_s2_digital_mayan, // 0x37
        wristaccessory_t9_s1_digital_diver, // 0x38
        wristaccessory_t9_s4_holographic_rank, // 0x39
        wristaccessory_t9_s4_analog_roadwar, // 0x3a
        wristaccessory_t9_esports_thieves_ms, // 0x3b
        wristaccessory_t9_esports_thieves_pc, // 0x3c
        wristaccessory_t9_esports_thieves_sy, // 0x3d
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x3e
        wristaccessory_t9_s5_analog_holographic, // 0x3f
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x40
        wristaccessory_t9_s4_digital_blade, // 0x41
        wristaccessory_t9_s2_analog_naval_warfare, // 0x42
        wristaccessory_t9_esports_subliners_pc, // 0x43
        wristaccessory_t9_esports_subliners_sy, // 0x44
        wristaccessory_t9_esports_subliners_ms, // 0x45
        wristaccessory_t9_s3_digital_magic8, // 0x46
        wristaccessory_t9_s4_analog_assassin, // 0x47
        wristaccessory_t9_s2_analog_dark_aether, // 0x48
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x49
        wristaccessory_t9_s2_analog_mayan, // 0x4a
        wristaccessory_t9_s1_analog_bope_01, // 0x4b
        wristaccessory_t9_esports_ultra_ms, // 0x4c
        wristaccessory_t9_esports_ultra_sy, // 0x4d
        wristaccessory_t9_esports_ultra_pc, // 0x4e
        wristaccessory_t9_s2_analog_paratroop, // 0x4f
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x50
        wristaccessory_t9_s1_analog_aviator_02, // 0x51
        wristaccessory_t9_s1_analog_horex_01, // 0x52
        wristaccessory_t9_s1_analog_fancy, // 0x53
        wristaccessory_t9_s1_analog_aviator_x2, // 0x54
        wristaccessory_t9_s5_analog_classic, // 0x55
        wristaccessory_t9_esports_optic_ms, // 0x56
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x57
        wristaccessory_t9_esports_optic_sy, // 0x58
        wristaccessory_t9_esports_optic_pc, // 0x59
        wristaccessory_t9_s5_analog_beer_o_clock, // 0x5a
        wristaccessory_t9_s5_analog_hacking_code, // 0x5b
        wristaccessory_t9_s2_analog_rebel, // 0x5c
        wristaccessory_t9_s5_digital_ghosted, // 0x5d
        wristaccessory_t9_s5_analog_egy_burial, // 0x5e
        wristaccessory_t9_s2_analog_white_tiger, // 0x5f
        wristaccessory_t9_s5_digital_critical_kill, // 0x60
        wristaccessory_t9_s2_analog_caiman, // 0x61
        hash_4fee76d1114701af, // 0x62
        wristaccessory_t9_s3_analog_chrono_sea, // 0x63
        wristaccessory_t9_s2_analog_broken_fancy, // 0x64
        hash_511c7fa835d89891, // 0x65
        wristaccessory_t9_s5_digital_judge_d, // 0x66
        wristaccessory_t9_s4_digital_royal_decree, // 0x67
        wristaccessory_t9_s1_bracelet_skull_01, // 0x68
        wristaccessory_t9_s5_analog_rainbow_jewel, // 0x69
        wristaccessory_t9_s3_digital_big_joke, // 0x6a
        wristaccessory_t9_s1_bracelet_01, // 0x6b
        wristaccessory_t9_s5_analog_demon, // 0x6c
        hash_575c967cd59c9145, // 0x6d
        wristaccessory_t9_s5_analog_no_numbers, // 0x6e
        wristaccessory_t9_s5_digital_mummy_cat, // 0x6f
        wristaccessory_t9_esports_surge_sy, // 0x70
        wristaccessory_t9_esports_surge_pc, // 0x71
        wristaccessory_t9_s4_digital_big_joke, // 0x72
        wristaccessory_t9_esports_surge_ms, // 0x73
        wristaccessory_t9_s4_analog_jefe, // 0x74
        wristaccessory_t9_esports_faze_ms, // 0x75
        wristaccessory_t9_esports_faze_pc, // 0x76
        wristaccessory_t9_esports_faze_sy, // 0x77
        wristaccessory_t9_s1_analog_origin_01, // 0x78
        wristaccessory_t9_esports_mutineers_pc, // 0x79
        wristaccessory_t9_esports_mutineers_sy, // 0x7a
        wristaccessory_t9_esports_mutineers_ms, // 0x7b
        wristaccessory_t9_s5_digital_wonderland, // 0x7c
        wristaccessory_t9_s1_analog_private_eye_03, // 0x7d
        wristaccessory_t9_s1_analog_private_eye_02, // 0x7e
        wristaccessory_t9_s1_analog_private_eye_01, // 0x7f
        wristaccessory_t9_esports_guerillas_sy, // 0x80
        wristaccessory_t9_esports_guerillas_pc, // 0x81
        wristaccessory_t9_esports_guerillas_ms, // 0x82
        wristaccessory_t9_s4_analog_wasteland, // 0x83
        wristaccessory_t9_s3_digital_diver_wargames, // 0x84
        wristaccessory_t9_s5_digital_rank_countdwn, // 0x85
        wristaccessory_t9_s2_digital_river_slasher, // 0x86
        wristaccessory_t9_s2_bracelet_lure, // 0x87
        wristaccessory_t9_s2_analog_cold_hearted, // 0x88
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x89
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x8a
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x8b
        wristaccessory_t9_s1_digital_rank_01, // 0x8c
        wristaccessory_t9_s2_digital_jade, // 0x8d
        hash_708a99620b81ea23, // 0x8e
        hash_708a9a620b81ebd6, // 0x8f
        wristaccessory_t9_s3_analog_zombie_naga, // 0x90
        wristaccessory_t9_s5_digital_tagger, // 0x91
        wristaccessory_t9_s2_analog_black_silver, // 0x92
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x93
        wristaccessory_t9_s4_digital_holographic, // 0x94
        wristaccessory_t9_s4_analog_fire_storm, // 0x95
        wristaccessory_t9_s3_digital_death_touch, // 0x96
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x97
        wristaccessory_t9_s2_analog_black_gold, // 0x98
        wristaccessory_t9_s1_digital_compass_01, // 0x99
        wristaccessory_t9_s1_digital_first_spy_01, // 0x9a
        wristaccessory_t9_s1_digital_gaudy_01, // 0x9b
        wristaccessory_t9_s5_analog_retrotac, // 0x9c
        wristaccessory_t9_s5_digital_dark_weaver // 0x9d
    };

    // idx 0x3 members: 0x76
    enum executions {
        execution_194, // 0x0
        execution_182, // 0x1
        execution_181, // 0x2
        execution_158, // 0x3
        execution_159, // 0x4
        execution_150, // 0x5
        execution_154, // 0x6
        execution_157, // 0x7
        execution_149, // 0x8
        execution_148, // 0x9
        execution_141, // 0xa
        execution_140, // 0xb
        execution_147, // 0xc
        execution_146, // 0xd
        execution_174, // 0xe
        execution_173, // 0xf
        execution_161, // 0x10
        execution_160, // 0x11
        execution_163, // 0x12
        execution_162, // 0x13
        execution_117, // 0x14
        execution_110, // 0x15
        execution_111, // 0x16
        execution_112, // 0x17
        execution_113, // 0x18
        execution_118, // 0x19
        execution_119, // 0x1a
        execution_101, // 0x1b
        execution_100, // 0x1c
        execution_108, // 0x1d
        execution_138, // 0x1e
        execution_139, // 0x1f
        execution_132, // 0x20
        execution_133, // 0x21
        execution_130, // 0x22
        execution_136, // 0x23
        execution_137, // 0x24
        execution_134, // 0x25
        execution_135, // 0x26
        execution_129, // 0x27
        execution_128, // 0x28
        execution_125, // 0x29
        execution_124, // 0x2a
        execution_127, // 0x2b
        execution_126, // 0x2c
        execution_121, // 0x2d
        execution_120, // 0x2e
        execution_123, // 0x2f
        execution_040bc, // 0x30
        execution_039bc, // 0x31
        execution_208, // 0x32
        execution_204, // 0x33
        execution_205, // 0x34
        execution_206, // 0x35
        execution_207, // 0x36
        execution_201, // 0x37
        execution_202, // 0x38
        execution_203, // 0x39
        execution_086, // 0x3a
        execution_084, // 0x3b
        execution_082, // 0x3c
        execution_083, // 0x3d
        execution_080, // 0x3e
        execution_081, // 0x3f
        execution_099, // 0x40
        execution_029, // 0x41
        execution_020, // 0x42
        execution_021, // 0x43
        execution_022, // 0x44
        execution_023, // 0x45
        execution_024, // 0x46
        execution_025, // 0x47
        execution_026, // 0x48
        execution_027, // 0x49
        execution_038, // 0x4a
        execution_033, // 0x4b
        execution_032, // 0x4c
        execution_031, // 0x4d
        execution_030, // 0x4e
        execution_037, // 0x4f
        execution_036, // 0x50
        execution_034, // 0x51
        execution_009, // 0x52
        execution_007, // 0x53
        execution_004, // 0x54
        execution_005, // 0x55
        execution_002, // 0x56
        execution_003, // 0x57
        execution_001, // 0x58
        execution_010, // 0x59
        execution_013, // 0x5a
        execution_015, // 0x5b
        execution_014, // 0x5c
        execution_017, // 0x5d
        execution_016, // 0x5e
        execution_018, // 0x5f
        execution_064, // 0x60
        execution_065, // 0x61
        execution_066, // 0x62
        execution_067, // 0x63
        execution_061, // 0x64
        execution_062, // 0x65
        execution_063, // 0x66
        execution_069, // 0x67
        execution_074, // 0x68
        execution_070, // 0x69
        execution_078, // 0x6a
        execution_048, // 0x6b
        execution_049, // 0x6c
        execution_043, // 0x6d
        execution_040, // 0x6e
        execution_045, // 0x6f
        execution_059, // 0x70
        execution_058, // 0x71
        execution_051, // 0x72
        execution_052, // 0x73
        execution_038r, // 0x74
        hash_7f66c55f0f1308c2 // 0x75
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x21
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

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16a80, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc198(0x1833 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16a78, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_6253d0924ad85c4d {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 92976 (0x16b30)
    // header byte size . 11622 (0x2d66)

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

    // bitSize: 0xa8, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0x9f, array:0x9f(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x80, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x76, array:0x76(hti:0x3)
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

    // bitSize: 0xc198, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0x108(0x21 Byte(s)), array:0x21(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2278, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23f0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c38, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2cb8, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7e8, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc068, bitSize: 0x80(0x10 Byte(s))
        execution execution;
        // offset: 0xc0e8, bitSize: 0xa8(0x15 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc190, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc191, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc192, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc193, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0x9f
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s1_bracelet_braided_02, // 0x0
        wristaccessory_t9_s5_analog_blood_fancy, // 0x1
        wristaccessory_t9_s1_analog_fancy_gold, // 0x2
        wristaccessory_t9_s3_analog_mctag, // 0x3
        wristaccessory_t9_s4_digital_evil, // 0x4
        wristaccessory_t9_s4_analog_spaceship, // 0x5
        wristaccessory_t9_s5_analog_dis_assassin, // 0x6
        wristaccessory_t9_esports_legion_sy, // 0x7
        wristaccessory_t9_esports_legion_pc, // 0x8
        wristaccessory_t9_esports_legion_ms, // 0x9
        wristaccessory_t9_s3_analog_winter_ash, // 0xa
        wristaccessory_t9_esports_rokkr_sy, // 0xb
        wristaccessory_t9_esports_rokkr_pc, // 0xc
        wristaccessory_t9_esports_rokkr_ms, // 0xd
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0xe
        wristaccessory_t9_s2_analog_necro_king, // 0xf
        wristaccessory_t9_s2_digital_sforce, // 0x10
        wristaccessory_t9_s1_digital_gambit_01, // 0x11
        wristaccessory_t9_s5_digital_arabian, // 0x12
        wristaccessory_t9_s3_digital_radiation, // 0x13
        wristaccessory_t9_s1_digital_inteculo_01, // 0x14
        wristaccessory_t9_s3_digital_ultrafunk, // 0x15
        wristaccessory_t9_s1_analog_brawler_01, // 0x16
        wristaccessory_t9_s4_bracelet_weathered, // 0x17
        wristaccessory_t9_s4_analog_future_soldier, // 0x18
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x19
        wristaccessory_t9_s5_analog_onyx_sy, // 0x1a
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x1b
        wristaccessory_t9_s6_digital_undead_warrior, // 0x1c
        wristaccessory_t9_s3_bracelet_01, // 0x1d
        hash_1ccdff0ebb3ad612, // 0x1e
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x1f
        wristaccessory_t9_s1_analog_kremlin, // 0x20
        wristaccessory_t9_s5_digital_checkmate, // 0x21
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x22
        wristaccessory_t9_s4_analog_horror, // 0x23
        wristaccessory_t9_s2_analog_mortal, // 0x24
        wristaccessory_t9_esports_empire_ms, // 0x25
        wristaccessory_t9_esports_empire_pc, // 0x26
        wristaccessory_t9_esports_empire_sy, // 0x27
        hash_25142303752f4324, // 0x28
        hash_25142503752f468a, // 0x29
        wristaccessory_t9_s1_analog_retroren_02, // 0x2a
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x2b
        wristaccessory_default, // 0x2c
        wristaccessory_t9_esports_royalravens_ms, // 0x2d
        wristaccessory_t9_esports_royalravens_pc, // 0x2e
        wristaccessory_t9_esports_royalravens_sy, // 0x2f
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x30
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x31
        wristaccessory_t9_s4_analog_rbear, // 0x32
        wristaccessory_t9_s4_digital_roadwarrior, // 0x33
        wristaccessory_t9_s5_analog_riptide, // 0x34
        wristaccessory_t9_s2_analog_420, // 0x35
        wristaccessory_t9_s2_digital_mini_map, // 0x36
        wristaccessory_t9_s1_digital_kazuya_01, // 0x37
        wristaccessory_t9_s2_digital_mayan, // 0x38
        wristaccessory_t9_s1_digital_diver, // 0x39
        wristaccessory_t9_s4_holographic_rank, // 0x3a
        wristaccessory_t9_s4_analog_roadwar, // 0x3b
        wristaccessory_t9_esports_thieves_ms, // 0x3c
        wristaccessory_t9_esports_thieves_pc, // 0x3d
        wristaccessory_t9_esports_thieves_sy, // 0x3e
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x3f
        wristaccessory_t9_s5_analog_holographic, // 0x40
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x41
        wristaccessory_t9_s4_digital_blade, // 0x42
        wristaccessory_t9_s2_analog_naval_warfare, // 0x43
        wristaccessory_t9_esports_subliners_pc, // 0x44
        wristaccessory_t9_esports_subliners_sy, // 0x45
        wristaccessory_t9_esports_subliners_ms, // 0x46
        wristaccessory_t9_s3_digital_magic8, // 0x47
        wristaccessory_t9_s4_analog_assassin, // 0x48
        wristaccessory_t9_s2_analog_dark_aether, // 0x49
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x4a
        wristaccessory_t9_s2_analog_mayan, // 0x4b
        wristaccessory_t9_s1_analog_bope_01, // 0x4c
        wristaccessory_t9_esports_ultra_ms, // 0x4d
        wristaccessory_t9_esports_ultra_sy, // 0x4e
        wristaccessory_t9_esports_ultra_pc, // 0x4f
        wristaccessory_t9_s2_analog_paratroop, // 0x50
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x51
        wristaccessory_t9_s1_analog_aviator_02, // 0x52
        wristaccessory_t9_s1_analog_horex_01, // 0x53
        wristaccessory_t9_s1_analog_fancy, // 0x54
        wristaccessory_t9_s1_analog_aviator_x2, // 0x55
        wristaccessory_t9_s5_analog_classic, // 0x56
        wristaccessory_t9_esports_optic_ms, // 0x57
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x58
        wristaccessory_t9_esports_optic_sy, // 0x59
        wristaccessory_t9_esports_optic_pc, // 0x5a
        wristaccessory_t9_s5_analog_beer_o_clock, // 0x5b
        wristaccessory_t9_s5_analog_hacking_code, // 0x5c
        wristaccessory_t9_s2_analog_rebel, // 0x5d
        wristaccessory_t9_s5_digital_ghosted, // 0x5e
        wristaccessory_t9_s5_analog_egy_burial, // 0x5f
        wristaccessory_t9_s2_analog_white_tiger, // 0x60
        wristaccessory_t9_s5_digital_critical_kill, // 0x61
        wristaccessory_t9_s2_analog_caiman, // 0x62
        hash_4fee76d1114701af, // 0x63
        wristaccessory_t9_s3_analog_chrono_sea, // 0x64
        wristaccessory_t9_s2_analog_broken_fancy, // 0x65
        hash_511c7fa835d89891, // 0x66
        wristaccessory_t9_s5_digital_judge_d, // 0x67
        wristaccessory_t9_s4_digital_royal_decree, // 0x68
        wristaccessory_t9_s1_bracelet_skull_01, // 0x69
        wristaccessory_t9_s5_analog_rainbow_jewel, // 0x6a
        wristaccessory_t9_s3_digital_big_joke, // 0x6b
        wristaccessory_t9_s1_bracelet_01, // 0x6c
        wristaccessory_t9_s5_analog_demon, // 0x6d
        hash_575c967cd59c9145, // 0x6e
        wristaccessory_t9_s5_analog_no_numbers, // 0x6f
        wristaccessory_t9_s5_digital_mummy_cat, // 0x70
        wristaccessory_t9_esports_surge_sy, // 0x71
        wristaccessory_t9_esports_surge_pc, // 0x72
        wristaccessory_t9_s4_digital_big_joke, // 0x73
        wristaccessory_t9_esports_surge_ms, // 0x74
        wristaccessory_t9_s4_analog_jefe, // 0x75
        wristaccessory_t9_esports_faze_ms, // 0x76
        wristaccessory_t9_esports_faze_pc, // 0x77
        wristaccessory_t9_esports_faze_sy, // 0x78
        wristaccessory_t9_s1_analog_origin_01, // 0x79
        wristaccessory_t9_esports_mutineers_pc, // 0x7a
        wristaccessory_t9_esports_mutineers_sy, // 0x7b
        wristaccessory_t9_esports_mutineers_ms, // 0x7c
        wristaccessory_t9_s5_digital_wonderland, // 0x7d
        wristaccessory_t9_s1_analog_private_eye_03, // 0x7e
        wristaccessory_t9_s1_analog_private_eye_02, // 0x7f
        wristaccessory_t9_s1_analog_private_eye_01, // 0x80
        wristaccessory_t9_esports_guerillas_sy, // 0x81
        wristaccessory_t9_esports_guerillas_pc, // 0x82
        wristaccessory_t9_esports_guerillas_ms, // 0x83
        wristaccessory_t9_s4_analog_wasteland, // 0x84
        wristaccessory_t9_s3_digital_diver_wargames, // 0x85
        wristaccessory_t9_s5_digital_rank_countdwn, // 0x86
        wristaccessory_t9_s2_digital_river_slasher, // 0x87
        wristaccessory_t9_s2_bracelet_lure, // 0x88
        wristaccessory_t9_s2_analog_cold_hearted, // 0x89
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x8a
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x8b
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x8c
        wristaccessory_t9_s1_digital_rank_01, // 0x8d
        wristaccessory_t9_s2_digital_jade, // 0x8e
        hash_708a99620b81ea23, // 0x8f
        hash_708a9a620b81ebd6, // 0x90
        wristaccessory_t9_s3_analog_zombie_naga, // 0x91
        wristaccessory_t9_s5_digital_tagger, // 0x92
        wristaccessory_t9_s2_analog_black_silver, // 0x93
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0x94
        wristaccessory_t9_s4_digital_holographic, // 0x95
        wristaccessory_t9_s4_analog_fire_storm, // 0x96
        wristaccessory_t9_s3_digital_death_touch, // 0x97
        wristaccessory_t9_s4_bracelet_leather_studd, // 0x98
        wristaccessory_t9_s2_analog_black_gold, // 0x99
        wristaccessory_t9_s1_digital_compass_01, // 0x9a
        wristaccessory_t9_s1_digital_first_spy_01, // 0x9b
        wristaccessory_t9_s1_digital_gaudy_01, // 0x9c
        wristaccessory_t9_s5_analog_retrotac, // 0x9d
        wristaccessory_t9_s5_digital_dark_weaver // 0x9e
    };

    // idx 0x3 members: 0x76
    enum executions {
        execution_194, // 0x0
        execution_182, // 0x1
        execution_181, // 0x2
        execution_158, // 0x3
        execution_159, // 0x4
        execution_150, // 0x5
        execution_154, // 0x6
        execution_157, // 0x7
        execution_149, // 0x8
        execution_148, // 0x9
        execution_141, // 0xa
        execution_140, // 0xb
        execution_147, // 0xc
        execution_146, // 0xd
        execution_174, // 0xe
        execution_173, // 0xf
        execution_161, // 0x10
        execution_160, // 0x11
        execution_163, // 0x12
        execution_162, // 0x13
        execution_117, // 0x14
        execution_110, // 0x15
        execution_111, // 0x16
        execution_112, // 0x17
        execution_113, // 0x18
        execution_118, // 0x19
        execution_119, // 0x1a
        execution_101, // 0x1b
        execution_100, // 0x1c
        execution_108, // 0x1d
        execution_138, // 0x1e
        execution_139, // 0x1f
        execution_132, // 0x20
        execution_133, // 0x21
        execution_130, // 0x22
        execution_136, // 0x23
        execution_137, // 0x24
        execution_134, // 0x25
        execution_135, // 0x26
        execution_129, // 0x27
        execution_128, // 0x28
        execution_125, // 0x29
        execution_124, // 0x2a
        execution_127, // 0x2b
        execution_126, // 0x2c
        execution_121, // 0x2d
        execution_120, // 0x2e
        execution_123, // 0x2f
        execution_040bc, // 0x30
        execution_039bc, // 0x31
        execution_208, // 0x32
        execution_204, // 0x33
        execution_205, // 0x34
        execution_206, // 0x35
        execution_207, // 0x36
        execution_201, // 0x37
        execution_202, // 0x38
        execution_203, // 0x39
        execution_086, // 0x3a
        execution_084, // 0x3b
        execution_082, // 0x3c
        execution_083, // 0x3d
        execution_080, // 0x3e
        execution_081, // 0x3f
        execution_099, // 0x40
        execution_029, // 0x41
        execution_020, // 0x42
        execution_021, // 0x43
        execution_022, // 0x44
        execution_023, // 0x45
        execution_024, // 0x46
        execution_025, // 0x47
        execution_026, // 0x48
        execution_027, // 0x49
        execution_038, // 0x4a
        execution_033, // 0x4b
        execution_032, // 0x4c
        execution_031, // 0x4d
        execution_030, // 0x4e
        execution_037, // 0x4f
        execution_036, // 0x50
        execution_034, // 0x51
        execution_009, // 0x52
        execution_007, // 0x53
        execution_004, // 0x54
        execution_005, // 0x55
        execution_002, // 0x56
        execution_003, // 0x57
        execution_001, // 0x58
        execution_010, // 0x59
        execution_013, // 0x5a
        execution_015, // 0x5b
        execution_014, // 0x5c
        execution_017, // 0x5d
        execution_016, // 0x5e
        execution_018, // 0x5f
        execution_064, // 0x60
        execution_065, // 0x61
        execution_066, // 0x62
        execution_067, // 0x63
        execution_061, // 0x64
        execution_062, // 0x65
        execution_063, // 0x66
        execution_069, // 0x67
        execution_074, // 0x68
        execution_070, // 0x69
        execution_078, // 0x6a
        execution_048, // 0x6b
        execution_049, // 0x6c
        execution_043, // 0x6d
        execution_040, // 0x6e
        execution_045, // 0x6f
        execution_059, // 0x70
        execution_058, // 0x71
        execution_051, // 0x72
        execution_052, // 0x73
        execution_038r, // 0x74
        hash_7f66c55f0f1308c2 // 0x75
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x21
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

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16a80, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc198(0x1833 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16a78, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_ac3be95a8b9c6852 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 93016 (0x16b58)
    // header byte size . 11627 (0x2d6b)

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

    // bitSize: 0xc0, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0xb7, array:0xb7(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x90, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x83, array:0x83(hti:0x3)
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

    // bitSize: 0xc1c0, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0x108(0x21 Byte(s)), array:0x21(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2278, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23f0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c38, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2cb8, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7e8, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc068, bitSize: 0x90(0x12 Byte(s))
        execution execution;
        // offset: 0xc0f8, bitSize: 0xc0(0x18 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc1b8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc1b9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc1ba, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc1bb, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0xb7
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s6_analog_camo, // 0x0
        wristaccessory_t9_s1_bracelet_braided_02, // 0x1
        wristaccessory_t9_s5_analog_blood_fancy, // 0x2
        wristaccessory_t9_s1_analog_fancy_gold, // 0x3
        wristaccessory_t9_s3_analog_mctag, // 0x4
        wristaccessory_t9_s4_digital_evil, // 0x5
        wristaccessory_t9_s4_analog_spaceship, // 0x6
        wristaccessory_t9_s6_analog_agony, // 0x7
        wristaccessory_t9_s5_analog_dis_assassin, // 0x8
        wristaccessory_t9_esports_legion_sy, // 0x9
        wristaccessory_t9_esports_legion_pc, // 0xa
        wristaccessory_t9_esports_legion_ms, // 0xb
        wristaccessory_t9_s3_analog_winter_ash, // 0xc
        wristaccessory_t9_esports_rokkr_sy, // 0xd
        wristaccessory_t9_esports_rokkr_pc, // 0xe
        wristaccessory_t9_esports_rokkr_ms, // 0xf
        wristaccessory_t9_s6_digital_atomic_ash, // 0x10
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x11
        wristaccessory_t9_s6_digital_tagger_sy, // 0x12
        wristaccessory_t9_s6_digital_tagger_pc, // 0x13
        wristaccessory_t9_s6_digital_tagger_ms, // 0x14
        wristaccessory_t9_s2_analog_necro_king, // 0x15
        wristaccessory_t9_s2_digital_sforce, // 0x16
        wristaccessory_t9_s1_digital_gambit_01, // 0x17
        wristaccessory_t9_s5_digital_arabian, // 0x18
        wristaccessory_t9_s6_analog_big_joke4_ms, // 0x19
        wristaccessory_t9_s6_analog_big_joke4_sy, // 0x1a
        wristaccessory_t9_s6_analog_big_joke4_pc, // 0x1b
        wristaccessory_t9_s3_digital_radiation, // 0x1c
        wristaccessory_t9_s1_digital_inteculo_01, // 0x1d
        wristaccessory_t9_s3_digital_ultrafunk, // 0x1e
        wristaccessory_t9_s1_analog_brawler_01, // 0x1f
        wristaccessory_t9_s4_bracelet_weathered, // 0x20
        wristaccessory_t9_s6_digital_ww, // 0x21
        wristaccessory_t9_s4_analog_future_soldier, // 0x22
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x23
        wristaccessory_t9_s5_analog_onyx_sy, // 0x24
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x25
        wristaccessory_t9_s6_digital_undead_warrior, // 0x26
        wristaccessory_t9_s3_bracelet_01, // 0x27
        hash_1ccdff0ebb3ad612, // 0x28
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x29
        wristaccessory_t9_s1_analog_kremlin, // 0x2a
        wristaccessory_t9_s5_digital_checkmate, // 0x2b
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x2c
        wristaccessory_t9_s4_analog_horror, // 0x2d
        wristaccessory_t9_s2_analog_mortal, // 0x2e
        wristaccessory_t9_esports_empire_ms, // 0x2f
        wristaccessory_t9_esports_empire_pc, // 0x30
        wristaccessory_t9_esports_empire_sy, // 0x31
        hash_25142303752f4324, // 0x32
        hash_25142503752f468a, // 0x33
        wristaccessory_t9_s1_analog_retroren_02, // 0x34
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x35
        wristaccessory_default, // 0x36
        wristaccessory_t9_esports_royalravens_ms, // 0x37
        wristaccessory_t9_esports_royalravens_pc, // 0x38
        wristaccessory_t9_esports_royalravens_sy, // 0x39
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x3a
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x3b
        wristaccessory_t9_s4_analog_rbear, // 0x3c
        wristaccessory_t9_s4_digital_roadwarrior, // 0x3d
        wristaccessory_t9_s5_analog_riptide, // 0x3e
        wristaccessory_t9_s2_analog_420, // 0x3f
        wristaccessory_t9_s2_digital_mini_map, // 0x40
        wristaccessory_t9_s6_analog_gilded, // 0x41
        wristaccessory_t9_s1_digital_kazuya_01, // 0x42
        wristaccessory_t9_s2_digital_mayan, // 0x43
        wristaccessory_t9_s1_digital_diver, // 0x44
        wristaccessory_t9_s4_holographic_rank, // 0x45
        wristaccessory_t9_s4_analog_roadwar, // 0x46
        wristaccessory_t9_esports_thieves_ms, // 0x47
        wristaccessory_t9_esports_thieves_pc, // 0x48
        wristaccessory_t9_esports_thieves_sy, // 0x49
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x4a
        wristaccessory_t9_s5_analog_holographic, // 0x4b
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x4c
        wristaccessory_t9_s6_digital_tagger_solo, // 0x4d
        wristaccessory_t9_s4_digital_blade, // 0x4e
        wristaccessory_t9_s2_analog_naval_warfare, // 0x4f
        wristaccessory_t9_esports_subliners_pc, // 0x50
        wristaccessory_t9_esports_subliners_sy, // 0x51
        wristaccessory_t9_esports_subliners_ms, // 0x52
        wristaccessory_t9_s3_digital_magic8, // 0x53
        wristaccessory_t9_s4_analog_assassin, // 0x54
        wristaccessory_t9_s2_analog_dark_aether, // 0x55
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x56
        wristaccessory_t9_s6_analog_scream, // 0x57
        wristaccessory_t9_s2_analog_mayan, // 0x58
        wristaccessory_t9_s1_analog_bope_01, // 0x59
        wristaccessory_t9_esports_ultra_ms, // 0x5a
        wristaccessory_t9_esports_ultra_sy, // 0x5b
        wristaccessory_t9_esports_ultra_pc, // 0x5c
        wristaccessory_t9_s6_analog_hypnosis, // 0x5d
        wristaccessory_t9_s2_analog_paratroop, // 0x5e
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x5f
        wristaccessory_t9_s1_analog_aviator_02, // 0x60
        wristaccessory_t9_s1_analog_horex_01, // 0x61
        wristaccessory_t9_s1_analog_fancy, // 0x62
        wristaccessory_t9_s1_analog_aviator_x2, // 0x63
        wristaccessory_t9_s5_analog_classic, // 0x64
        wristaccessory_t9_esports_optic_ms, // 0x65
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x66
        wristaccessory_t9_esports_optic_sy, // 0x67
        wristaccessory_t9_esports_optic_pc, // 0x68
        wristaccessory_t9_s5_analog_beer_o_clock, // 0x69
        wristaccessory_t9_s5_analog_hacking_code, // 0x6a
        wristaccessory_t9_s2_analog_rebel, // 0x6b
        wristaccessory_t9_s5_digital_ghosted, // 0x6c
        wristaccessory_t9_s5_analog_egy_burial, // 0x6d
        wristaccessory_t9_s2_analog_white_tiger, // 0x6e
        wristaccessory_t9_s5_digital_critical_kill, // 0x6f
        wristaccessory_t9_s2_analog_caiman, // 0x70
        hash_4fee76d1114701af, // 0x71
        wristaccessory_t9_s3_analog_chrono_sea, // 0x72
        wristaccessory_t9_s2_analog_broken_fancy, // 0x73
        hash_511c7fa835d89891, // 0x74
        wristaccessory_t9_s5_digital_judge_d, // 0x75
        wristaccessory_t9_s4_digital_royal_decree, // 0x76
        wristaccessory_t9_s6_analog_street_mech_sy, // 0x77
        wristaccessory_t9_s1_bracelet_skull_01, // 0x78
        wristaccessory_t9_s5_analog_rainbow_jewel, // 0x79
        wristaccessory_t9_s3_digital_big_joke, // 0x7a
        wristaccessory_t9_s1_bracelet_01, // 0x7b
        wristaccessory_t9_s5_analog_demon, // 0x7c
        hash_575c967cd59c9145, // 0x7d
        wristaccessory_t9_s6_digital_rank_carnival, // 0x7e
        wristaccessory_t9_s5_analog_no_numbers, // 0x7f
        wristaccessory_t9_s6_analog_blue_chroma, // 0x80
        wristaccessory_t9_s5_digital_mummy_cat, // 0x81
        wristaccessory_t9_esports_surge_sy, // 0x82
        wristaccessory_t9_esports_surge_pc, // 0x83
        wristaccessory_t9_s4_digital_big_joke, // 0x84
        wristaccessory_t9_esports_surge_ms, // 0x85
        wristaccessory_t9_s4_analog_jefe, // 0x86
        wristaccessory_t9_esports_faze_ms, // 0x87
        wristaccessory_t9_esports_faze_pc, // 0x88
        wristaccessory_t9_esports_faze_sy, // 0x89
        wristaccessory_t9_s1_analog_origin_01, // 0x8a
        wristaccessory_t9_esports_mutineers_pc, // 0x8b
        wristaccessory_t9_esports_mutineers_sy, // 0x8c
        wristaccessory_t9_esports_mutineers_ms, // 0x8d
        wristaccessory_t9_s5_digital_wonderland, // 0x8e
        wristaccessory_t9_s1_analog_private_eye_03, // 0x8f
        wristaccessory_t9_s1_analog_private_eye_02, // 0x90
        wristaccessory_t9_s1_analog_private_eye_01, // 0x91
        wristaccessory_t9_esports_guerillas_sy, // 0x92
        wristaccessory_t9_esports_guerillas_pc, // 0x93
        wristaccessory_t9_esports_guerillas_ms, // 0x94
        wristaccessory_t9_s4_analog_wasteland, // 0x95
        wristaccessory_t9_s3_digital_diver_wargames, // 0x96
        wristaccessory_t9_s5_digital_rank_countdwn, // 0x97
        wristaccessory_t9_s6_analog_halloween, // 0x98
        wristaccessory_t9_s2_digital_river_slasher, // 0x99
        wristaccessory_t9_s2_bracelet_lure, // 0x9a
        wristaccessory_t9_s2_analog_cold_hearted, // 0x9b
        wristaccessory_t9_s6_analog_donnie, // 0x9c
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x9d
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x9e
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0x9f
        wristaccessory_t9_s1_digital_rank_01, // 0xa0
        wristaccessory_t9_s2_digital_jade, // 0xa1
        hash_708a99620b81ea23, // 0xa2
        hash_708a9a620b81ebd6, // 0xa3
        wristaccessory_t9_s3_analog_zombie_naga, // 0xa4
        wristaccessory_t9_s6_digital_sultan, // 0xa5
        wristaccessory_t9_s6_digital_gov1, // 0xa6
        wristaccessory_t9_s6_digital_gov2, // 0xa7
        wristaccessory_t9_s5_digital_tagger, // 0xa8
        wristaccessory_t9_s2_analog_black_silver, // 0xa9
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0xaa
        wristaccessory_t9_s4_digital_holographic, // 0xab
        wristaccessory_t9_s4_analog_fire_storm, // 0xac
        wristaccessory_t9_s3_digital_death_touch, // 0xad
        wristaccessory_t9_s6_analog_big_joke4_solo, // 0xae
        wristaccessory_t9_s4_bracelet_leather_studd, // 0xaf
        wristaccessory_t9_s2_analog_black_gold, // 0xb0
        wristaccessory_t9_s1_digital_compass_01, // 0xb1
        wristaccessory_t9_s1_digital_first_spy_01, // 0xb2
        wristaccessory_t9_s1_digital_gaudy_01, // 0xb3
        wristaccessory_t9_s5_analog_retrotac, // 0xb4
        wristaccessory_t9_s5_digital_dark_weaver, // 0xb5
        wristaccessory_t9_s6_digital_frost // 0xb6
    };

    // idx 0x3 members: 0x83
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
        execution_154, // 0x9
        execution_157, // 0xa
        execution_149, // 0xb
        execution_148, // 0xc
        execution_142, // 0xd
        execution_141, // 0xe
        execution_140, // 0xf
        execution_147, // 0x10
        execution_146, // 0x11
        execution_145, // 0x12
        execution_144, // 0x13
        execution_176, // 0x14
        execution_174, // 0x15
        execution_173, // 0x16
        execution_161, // 0x17
        execution_160, // 0x18
        execution_163, // 0x19
        execution_162, // 0x1a
        execution_117, // 0x1b
        execution_110, // 0x1c
        execution_111, // 0x1d
        execution_112, // 0x1e
        execution_113, // 0x1f
        execution_118, // 0x20
        execution_119, // 0x21
        execution_101, // 0x22
        execution_100, // 0x23
        execution_108, // 0x24
        execution_138, // 0x25
        execution_139, // 0x26
        execution_132, // 0x27
        execution_133, // 0x28
        execution_130, // 0x29
        execution_136, // 0x2a
        execution_137, // 0x2b
        execution_134, // 0x2c
        execution_135, // 0x2d
        execution_129, // 0x2e
        execution_128, // 0x2f
        execution_125, // 0x30
        execution_124, // 0x31
        execution_127, // 0x32
        execution_126, // 0x33
        execution_121, // 0x34
        execution_120, // 0x35
        execution_123, // 0x36
        execution_040bc, // 0x37
        execution_039bc, // 0x38
        execution_208, // 0x39
        execution_209, // 0x3a
        execution_204, // 0x3b
        execution_205, // 0x3c
        execution_206, // 0x3d
        execution_207, // 0x3e
        execution_201, // 0x3f
        execution_202, // 0x40
        execution_203, // 0x41
        execution_210, // 0x42
        execution_086, // 0x43
        execution_087, // 0x44
        execution_084, // 0x45
        execution_082, // 0x46
        execution_083, // 0x47
        execution_080, // 0x48
        execution_081, // 0x49
        execution_089, // 0x4a
        execution_099, // 0x4b
        execution_098, // 0x4c
        execution_029, // 0x4d
        execution_020, // 0x4e
        execution_021, // 0x4f
        execution_022, // 0x50
        execution_023, // 0x51
        execution_024, // 0x52
        execution_025, // 0x53
        execution_026, // 0x54
        execution_027, // 0x55
        execution_038, // 0x56
        execution_033, // 0x57
        execution_032, // 0x58
        execution_031, // 0x59
        execution_030, // 0x5a
        execution_037, // 0x5b
        execution_036, // 0x5c
        execution_034, // 0x5d
        execution_009, // 0x5e
        execution_007, // 0x5f
        execution_004, // 0x60
        execution_005, // 0x61
        execution_002, // 0x62
        execution_003, // 0x63
        execution_001, // 0x64
        execution_010, // 0x65
        execution_013, // 0x66
        execution_015, // 0x67
        execution_014, // 0x68
        execution_017, // 0x69
        execution_016, // 0x6a
        execution_018, // 0x6b
        execution_064, // 0x6c
        execution_065, // 0x6d
        execution_066, // 0x6e
        execution_067, // 0x6f
        execution_061, // 0x70
        execution_062, // 0x71
        execution_063, // 0x72
        execution_069, // 0x73
        execution_074, // 0x74
        execution_070, // 0x75
        execution_078, // 0x76
        execution_048, // 0x77
        execution_049, // 0x78
        execution_042, // 0x79
        execution_043, // 0x7a
        execution_040, // 0x7b
        execution_045, // 0x7c
        execution_059, // 0x7d
        execution_058, // 0x7e
        execution_051, // 0x7f
        execution_052, // 0x80
        execution_038r, // 0x81
        hash_7f66c55f0f1308c2 // 0x82
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x21
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

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16aa8, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc1c0(0x1838 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16aa0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_99ab11322b587ff1 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 93016 (0x16b58)
    // header byte size . 11627 (0x2d6b)

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

    // bitSize: 0xc0, members: 2
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0xb8(0x17 Byte(s)), array:0xb8(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x90, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x83, array:0x83(hti:0x3)
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

    // bitSize: 0xc1c0, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0x108(0x21 Byte(s)), array:0x21(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2278, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23f0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c38, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2cb8, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7e8, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc068, bitSize: 0x90(0x12 Byte(s))
        execution execution;
        // offset: 0xc0f8, bitSize: 0xc0(0x18 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc1b8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc1b9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc1ba, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc1bb, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0xb8
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s6_analog_camo, // 0x0
        wristaccessory_t9_s1_bracelet_braided_02, // 0x1
        wristaccessory_t9_s5_analog_blood_fancy, // 0x2
        wristaccessory_t9_s1_analog_fancy_gold, // 0x3
        wristaccessory_t9_s3_analog_mctag, // 0x4
        wristaccessory_t9_s4_digital_evil, // 0x5
        wristaccessory_t9_s4_analog_spaceship, // 0x6
        wristaccessory_t9_s6_analog_agony, // 0x7
        wristaccessory_t9_s5_analog_dis_assassin, // 0x8
        wristaccessory_t9_esports_legion_sy, // 0x9
        wristaccessory_t9_esports_legion_pc, // 0xa
        wristaccessory_t9_esports_legion_ms, // 0xb
        wristaccessory_t9_s6_analog_bite_me, // 0xc
        wristaccessory_t9_s3_analog_winter_ash, // 0xd
        wristaccessory_t9_esports_rokkr_sy, // 0xe
        wristaccessory_t9_esports_rokkr_pc, // 0xf
        wristaccessory_t9_esports_rokkr_ms, // 0x10
        wristaccessory_t9_s6_digital_atomic_ash, // 0x11
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x12
        wristaccessory_t9_s6_digital_tagger_sy, // 0x13
        wristaccessory_t9_s6_digital_tagger_pc, // 0x14
        wristaccessory_t9_s6_digital_tagger_ms, // 0x15
        wristaccessory_t9_s2_analog_necro_king, // 0x16
        wristaccessory_t9_s2_digital_sforce, // 0x17
        wristaccessory_t9_s1_digital_gambit_01, // 0x18
        wristaccessory_t9_s5_digital_arabian, // 0x19
        wristaccessory_t9_s6_analog_big_joke4_ms, // 0x1a
        wristaccessory_t9_s6_analog_big_joke4_sy, // 0x1b
        wristaccessory_t9_s6_analog_big_joke4_pc, // 0x1c
        wristaccessory_t9_s3_digital_radiation, // 0x1d
        wristaccessory_t9_s1_digital_inteculo_01, // 0x1e
        wristaccessory_t9_s3_digital_ultrafunk, // 0x1f
        wristaccessory_t9_s1_analog_brawler_01, // 0x20
        wristaccessory_t9_s4_bracelet_weathered, // 0x21
        wristaccessory_t9_s6_digital_ww, // 0x22
        wristaccessory_t9_s4_analog_future_soldier, // 0x23
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x24
        wristaccessory_t9_s5_analog_onyx_sy, // 0x25
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x26
        wristaccessory_t9_s6_digital_undead_warrior, // 0x27
        wristaccessory_t9_s3_bracelet_01, // 0x28
        hash_1ccdff0ebb3ad612, // 0x29
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x2a
        wristaccessory_t9_s1_analog_kremlin, // 0x2b
        wristaccessory_t9_s5_digital_checkmate, // 0x2c
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x2d
        wristaccessory_t9_s4_analog_horror, // 0x2e
        wristaccessory_t9_s2_analog_mortal, // 0x2f
        wristaccessory_t9_esports_empire_ms, // 0x30
        wristaccessory_t9_esports_empire_pc, // 0x31
        wristaccessory_t9_esports_empire_sy, // 0x32
        hash_25142303752f4324, // 0x33
        hash_25142503752f468a, // 0x34
        wristaccessory_t9_s1_analog_retroren_02, // 0x35
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x36
        wristaccessory_default, // 0x37
        wristaccessory_t9_esports_royalravens_ms, // 0x38
        wristaccessory_t9_esports_royalravens_pc, // 0x39
        wristaccessory_t9_esports_royalravens_sy, // 0x3a
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x3b
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x3c
        wristaccessory_t9_s4_analog_rbear, // 0x3d
        wristaccessory_t9_s4_digital_roadwarrior, // 0x3e
        wristaccessory_t9_s5_analog_riptide, // 0x3f
        wristaccessory_t9_s2_analog_420, // 0x40
        wristaccessory_t9_s2_digital_mini_map, // 0x41
        wristaccessory_t9_s6_analog_gilded, // 0x42
        wristaccessory_t9_s1_digital_kazuya_01, // 0x43
        wristaccessory_t9_s2_digital_mayan, // 0x44
        wristaccessory_t9_s1_digital_diver, // 0x45
        wristaccessory_t9_s4_holographic_rank, // 0x46
        wristaccessory_t9_s4_analog_roadwar, // 0x47
        wristaccessory_t9_esports_thieves_ms, // 0x48
        wristaccessory_t9_esports_thieves_pc, // 0x49
        wristaccessory_t9_esports_thieves_sy, // 0x4a
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x4b
        wristaccessory_t9_s5_analog_holographic, // 0x4c
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x4d
        wristaccessory_t9_s6_digital_tagger_solo, // 0x4e
        wristaccessory_t9_s4_digital_blade, // 0x4f
        wristaccessory_t9_s2_analog_naval_warfare, // 0x50
        wristaccessory_t9_esports_subliners_pc, // 0x51
        wristaccessory_t9_esports_subliners_sy, // 0x52
        wristaccessory_t9_esports_subliners_ms, // 0x53
        wristaccessory_t9_s3_digital_magic8, // 0x54
        wristaccessory_t9_s4_analog_assassin, // 0x55
        wristaccessory_t9_s2_analog_dark_aether, // 0x56
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x57
        wristaccessory_t9_s6_analog_scream, // 0x58
        wristaccessory_t9_s2_analog_mayan, // 0x59
        wristaccessory_t9_s1_analog_bope_01, // 0x5a
        wristaccessory_t9_esports_ultra_ms, // 0x5b
        wristaccessory_t9_esports_ultra_sy, // 0x5c
        wristaccessory_t9_esports_ultra_pc, // 0x5d
        wristaccessory_t9_s6_analog_hypnosis, // 0x5e
        wristaccessory_t9_s2_analog_paratroop, // 0x5f
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x60
        wristaccessory_t9_s1_analog_aviator_02, // 0x61
        wristaccessory_t9_s1_analog_horex_01, // 0x62
        wristaccessory_t9_s1_analog_fancy, // 0x63
        wristaccessory_t9_s1_analog_aviator_x2, // 0x64
        wristaccessory_t9_s5_analog_classic, // 0x65
        wristaccessory_t9_esports_optic_ms, // 0x66
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x67
        wristaccessory_t9_esports_optic_sy, // 0x68
        wristaccessory_t9_esports_optic_pc, // 0x69
        wristaccessory_t9_s5_analog_beer_o_clock, // 0x6a
        wristaccessory_t9_s5_analog_hacking_code, // 0x6b
        wristaccessory_t9_s2_analog_rebel, // 0x6c
        wristaccessory_t9_s5_digital_ghosted, // 0x6d
        wristaccessory_t9_s5_analog_egy_burial, // 0x6e
        wristaccessory_t9_s2_analog_white_tiger, // 0x6f
        wristaccessory_t9_s5_digital_critical_kill, // 0x70
        wristaccessory_t9_s2_analog_caiman, // 0x71
        hash_4fee76d1114701af, // 0x72
        wristaccessory_t9_s3_analog_chrono_sea, // 0x73
        wristaccessory_t9_s2_analog_broken_fancy, // 0x74
        hash_511c7fa835d89891, // 0x75
        wristaccessory_t9_s5_digital_judge_d, // 0x76
        wristaccessory_t9_s4_digital_royal_decree, // 0x77
        wristaccessory_t9_s6_analog_street_mech_sy, // 0x78
        wristaccessory_t9_s1_bracelet_skull_01, // 0x79
        wristaccessory_t9_s5_analog_rainbow_jewel, // 0x7a
        wristaccessory_t9_s3_digital_big_joke, // 0x7b
        wristaccessory_t9_s1_bracelet_01, // 0x7c
        wristaccessory_t9_s5_analog_demon, // 0x7d
        hash_575c967cd59c9145, // 0x7e
        wristaccessory_t9_s6_digital_rank_carnival, // 0x7f
        wristaccessory_t9_s5_analog_no_numbers, // 0x80
        wristaccessory_t9_s6_analog_blue_chroma, // 0x81
        wristaccessory_t9_s5_digital_mummy_cat, // 0x82
        wristaccessory_t9_esports_surge_sy, // 0x83
        wristaccessory_t9_esports_surge_pc, // 0x84
        wristaccessory_t9_s4_digital_big_joke, // 0x85
        wristaccessory_t9_esports_surge_ms, // 0x86
        wristaccessory_t9_s4_analog_jefe, // 0x87
        wristaccessory_t9_esports_faze_ms, // 0x88
        wristaccessory_t9_esports_faze_pc, // 0x89
        wristaccessory_t9_esports_faze_sy, // 0x8a
        wristaccessory_t9_s1_analog_origin_01, // 0x8b
        wristaccessory_t9_esports_mutineers_pc, // 0x8c
        wristaccessory_t9_esports_mutineers_sy, // 0x8d
        wristaccessory_t9_esports_mutineers_ms, // 0x8e
        wristaccessory_t9_s5_digital_wonderland, // 0x8f
        wristaccessory_t9_s1_analog_private_eye_03, // 0x90
        wristaccessory_t9_s1_analog_private_eye_02, // 0x91
        wristaccessory_t9_s1_analog_private_eye_01, // 0x92
        wristaccessory_t9_esports_guerillas_sy, // 0x93
        wristaccessory_t9_esports_guerillas_pc, // 0x94
        wristaccessory_t9_esports_guerillas_ms, // 0x95
        wristaccessory_t9_s4_analog_wasteland, // 0x96
        wristaccessory_t9_s3_digital_diver_wargames, // 0x97
        wristaccessory_t9_s5_digital_rank_countdwn, // 0x98
        wristaccessory_t9_s6_analog_halloween, // 0x99
        wristaccessory_t9_s2_digital_river_slasher, // 0x9a
        wristaccessory_t9_s2_bracelet_lure, // 0x9b
        wristaccessory_t9_s2_analog_cold_hearted, // 0x9c
        wristaccessory_t9_s6_analog_donnie, // 0x9d
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0x9e
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0x9f
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0xa0
        wristaccessory_t9_s1_digital_rank_01, // 0xa1
        wristaccessory_t9_s2_digital_jade, // 0xa2
        hash_708a99620b81ea23, // 0xa3
        hash_708a9a620b81ebd6, // 0xa4
        wristaccessory_t9_s3_analog_zombie_naga, // 0xa5
        wristaccessory_t9_s6_digital_sultan, // 0xa6
        wristaccessory_t9_s6_digital_gov1, // 0xa7
        wristaccessory_t9_s6_digital_gov2, // 0xa8
        wristaccessory_t9_s5_digital_tagger, // 0xa9
        wristaccessory_t9_s2_analog_black_silver, // 0xaa
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0xab
        wristaccessory_t9_s4_digital_holographic, // 0xac
        wristaccessory_t9_s4_analog_fire_storm, // 0xad
        wristaccessory_t9_s3_digital_death_touch, // 0xae
        wristaccessory_t9_s6_analog_big_joke4_solo, // 0xaf
        wristaccessory_t9_s4_bracelet_leather_studd, // 0xb0
        wristaccessory_t9_s2_analog_black_gold, // 0xb1
        wristaccessory_t9_s1_digital_compass_01, // 0xb2
        wristaccessory_t9_s1_digital_first_spy_01, // 0xb3
        wristaccessory_t9_s1_digital_gaudy_01, // 0xb4
        wristaccessory_t9_s5_analog_retrotac, // 0xb5
        wristaccessory_t9_s5_digital_dark_weaver, // 0xb6
        wristaccessory_t9_s6_digital_frost // 0xb7
    };

    // idx 0x3 members: 0x83
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
        execution_154, // 0x9
        execution_157, // 0xa
        execution_149, // 0xb
        execution_148, // 0xc
        execution_142, // 0xd
        execution_141, // 0xe
        execution_140, // 0xf
        execution_147, // 0x10
        execution_146, // 0x11
        execution_145, // 0x12
        execution_144, // 0x13
        execution_176, // 0x14
        execution_174, // 0x15
        execution_173, // 0x16
        execution_161, // 0x17
        execution_160, // 0x18
        execution_163, // 0x19
        execution_162, // 0x1a
        execution_117, // 0x1b
        execution_110, // 0x1c
        execution_111, // 0x1d
        execution_112, // 0x1e
        execution_113, // 0x1f
        execution_118, // 0x20
        execution_119, // 0x21
        execution_101, // 0x22
        execution_100, // 0x23
        execution_108, // 0x24
        execution_138, // 0x25
        execution_139, // 0x26
        execution_132, // 0x27
        execution_133, // 0x28
        execution_130, // 0x29
        execution_136, // 0x2a
        execution_137, // 0x2b
        execution_134, // 0x2c
        execution_135, // 0x2d
        execution_129, // 0x2e
        execution_128, // 0x2f
        execution_125, // 0x30
        execution_124, // 0x31
        execution_127, // 0x32
        execution_126, // 0x33
        execution_121, // 0x34
        execution_120, // 0x35
        execution_123, // 0x36
        execution_040bc, // 0x37
        execution_039bc, // 0x38
        execution_208, // 0x39
        execution_209, // 0x3a
        execution_204, // 0x3b
        execution_205, // 0x3c
        execution_206, // 0x3d
        execution_207, // 0x3e
        execution_201, // 0x3f
        execution_202, // 0x40
        execution_203, // 0x41
        execution_210, // 0x42
        execution_086, // 0x43
        execution_087, // 0x44
        execution_084, // 0x45
        execution_082, // 0x46
        execution_083, // 0x47
        execution_080, // 0x48
        execution_081, // 0x49
        execution_089, // 0x4a
        execution_099, // 0x4b
        execution_098, // 0x4c
        execution_029, // 0x4d
        execution_020, // 0x4e
        execution_021, // 0x4f
        execution_022, // 0x50
        execution_023, // 0x51
        execution_024, // 0x52
        execution_025, // 0x53
        execution_026, // 0x54
        execution_027, // 0x55
        execution_038, // 0x56
        execution_033, // 0x57
        execution_032, // 0x58
        execution_031, // 0x59
        execution_030, // 0x5a
        execution_037, // 0x5b
        execution_036, // 0x5c
        execution_034, // 0x5d
        execution_009, // 0x5e
        execution_007, // 0x5f
        execution_004, // 0x60
        execution_005, // 0x61
        execution_002, // 0x62
        execution_003, // 0x63
        execution_001, // 0x64
        execution_010, // 0x65
        execution_013, // 0x66
        execution_015, // 0x67
        execution_014, // 0x68
        execution_017, // 0x69
        execution_016, // 0x6a
        execution_018, // 0x6b
        execution_064, // 0x6c
        execution_065, // 0x6d
        execution_066, // 0x6e
        execution_067, // 0x6f
        execution_061, // 0x70
        execution_062, // 0x71
        execution_063, // 0x72
        execution_069, // 0x73
        execution_074, // 0x74
        execution_070, // 0x75
        execution_078, // 0x76
        execution_048, // 0x77
        execution_049, // 0x78
        execution_042, // 0x79
        execution_043, // 0x7a
        execution_040, // 0x7b
        execution_045, // 0x7c
        execution_059, // 0x7d
        execution_058, // 0x7e
        execution_051, // 0x7f
        execution_052, // 0x80
        execution_038r, // 0x81
        hash_7f66c55f0f1308c2 // 0x82
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x21
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

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16aa8, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc1c0(0x1838 Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16aa0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_7821ba3075e93a82 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 93032 (0x16b68)
    // header byte size . 11629 (0x2d6d)

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

    // bitSize: 0xc8, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0xbb, array:0xbb(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x98, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x89, array:0x89(hti:0x3)
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

    // bitSize: 0xc1d0, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0x108(0x21 Byte(s)), array:0x21(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2278, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23f0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c38, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2cb8, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7e8, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc068, bitSize: 0x98(0x13 Byte(s))
        execution execution;
        // offset: 0xc100, bitSize: 0xc8(0x19 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc1c8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc1c9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc1ca, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc1cb, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0xbb
    enum hash_15b5a49eecd89562 {
        wristaccessory_t9_s6_analog_camo, // 0x0
        wristaccessory_t9_s1_bracelet_braided_02, // 0x1
        wristaccessory_t9_s5_analog_blood_fancy, // 0x2
        wristaccessory_t9_s1_analog_fancy_gold, // 0x3
        wristaccessory_t9_s3_analog_mctag, // 0x4
        wristaccessory_t9_s4_digital_evil, // 0x5
        wristaccessory_t9_s4_analog_spaceship, // 0x6
        wristaccessory_t9_s6_analog_agony, // 0x7
        wristaccessory_t9_s5_analog_dis_assassin, // 0x8
        wristaccessory_t9_esports_legion_sy, // 0x9
        wristaccessory_t9_esports_legion_pc, // 0xa
        wristaccessory_t9_esports_legion_ms, // 0xb
        wristaccessory_t9_s6_analog_bite_me, // 0xc
        wristaccessory_t9_s3_analog_winter_ash, // 0xd
        wristaccessory_t9_esports_rokkr_sy, // 0xe
        wristaccessory_t9_esports_rokkr_pc, // 0xf
        wristaccessory_t9_esports_rokkr_ms, // 0x10
        wristaccessory_t9_s6_digital_atomic_ash, // 0x11
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x12
        wristaccessory_t9_s6_digital_tagger_sy, // 0x13
        wristaccessory_t9_s6_digital_tagger_pc, // 0x14
        wristaccessory_t9_s6_digital_tagger_ms, // 0x15
        wristaccessory_t9_s2_analog_necro_king, // 0x16
        wristaccessory_t9_s2_digital_sforce, // 0x17
        wristaccessory_t9_s1_digital_gambit_01, // 0x18
        wristaccessory_t9_s5_digital_arabian, // 0x19
        wristaccessory_t9_s6_analog_big_joke4_ms, // 0x1a
        wristaccessory_t9_s6_analog_big_joke4_sy, // 0x1b
        wristaccessory_t9_s6_analog_big_joke4_pc, // 0x1c
        wristaccessory_t9_s3_digital_radiation, // 0x1d
        wristaccessory_t9_s1_digital_inteculo_01, // 0x1e
        wristaccessory_t9_s3_digital_ultrafunk, // 0x1f
        wristaccessory_t9_s1_analog_brawler_01, // 0x20
        wristaccessory_t9_s4_bracelet_weathered, // 0x21
        wristaccessory_t9_s6_digital_ww, // 0x22
        wristaccessory_t9_s4_analog_future_soldier, // 0x23
        wristaccessory_t9_s6_digital_zm_critical_kill, // 0x24
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x25
        wristaccessory_t9_s5_analog_onyx_sy, // 0x26
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x27
        wristaccessory_t9_s6_digital_undead_warrior, // 0x28
        wristaccessory_t9_s3_bracelet_01, // 0x29
        hash_1ccdff0ebb3ad612, // 0x2a
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x2b
        wristaccessory_t9_s1_analog_kremlin, // 0x2c
        wristaccessory_t9_s5_digital_checkmate, // 0x2d
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x2e
        wristaccessory_t9_s4_analog_horror, // 0x2f
        wristaccessory_t9_s2_analog_mortal, // 0x30
        wristaccessory_t9_esports_empire_ms, // 0x31
        wristaccessory_t9_esports_empire_pc, // 0x32
        wristaccessory_t9_esports_empire_sy, // 0x33
        hash_25142303752f4324, // 0x34
        hash_25142503752f468a, // 0x35
        wristaccessory_t9_s1_analog_retroren_02, // 0x36
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x37
        wristaccessory_default, // 0x38
        wristaccessory_t9_esports_royalravens_ms, // 0x39
        wristaccessory_t9_s6_analog_bog_ops, // 0x3a
        wristaccessory_t9_esports_royalravens_pc, // 0x3b
        wristaccessory_t9_esports_royalravens_sy, // 0x3c
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x3d
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x3e
        wristaccessory_t9_s4_analog_rbear, // 0x3f
        wristaccessory_t9_s4_digital_roadwarrior, // 0x40
        wristaccessory_t9_s5_analog_riptide, // 0x41
        wristaccessory_t9_s2_analog_420, // 0x42
        wristaccessory_t9_s2_digital_mini_map, // 0x43
        wristaccessory_t9_s6_analog_gilded, // 0x44
        wristaccessory_t9_s1_digital_kazuya_01, // 0x45
        wristaccessory_t9_s2_digital_mayan, // 0x46
        wristaccessory_t9_s1_digital_diver, // 0x47
        wristaccessory_t9_s4_holographic_rank, // 0x48
        wristaccessory_t9_s4_analog_roadwar, // 0x49
        wristaccessory_t9_esports_thieves_ms, // 0x4a
        wristaccessory_t9_esports_thieves_pc, // 0x4b
        wristaccessory_t9_esports_thieves_sy, // 0x4c
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x4d
        wristaccessory_t9_s5_analog_holographic, // 0x4e
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x4f
        wristaccessory_t9_s6_digital_tagger_solo, // 0x50
        wristaccessory_t9_s4_digital_blade, // 0x51
        wristaccessory_t9_s2_analog_naval_warfare, // 0x52
        wristaccessory_t9_esports_subliners_pc, // 0x53
        wristaccessory_t9_esports_subliners_sy, // 0x54
        wristaccessory_t9_esports_subliners_ms, // 0x55
        wristaccessory_t9_s3_digital_magic8, // 0x56
        wristaccessory_t9_s4_analog_assassin, // 0x57
        wristaccessory_t9_s2_analog_dark_aether, // 0x58
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x59
        wristaccessory_t9_s6_analog_scream, // 0x5a
        wristaccessory_t9_s2_analog_mayan, // 0x5b
        wristaccessory_t9_s1_analog_bope_01, // 0x5c
        wristaccessory_t9_esports_ultra_ms, // 0x5d
        wristaccessory_t9_esports_ultra_sy, // 0x5e
        wristaccessory_t9_esports_ultra_pc, // 0x5f
        wristaccessory_t9_s6_analog_hypnosis, // 0x60
        wristaccessory_t9_s2_analog_paratroop, // 0x61
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x62
        wristaccessory_t9_s1_analog_aviator_02, // 0x63
        wristaccessory_t9_s1_analog_horex_01, // 0x64
        wristaccessory_t9_s1_analog_fancy, // 0x65
        wristaccessory_t9_s1_analog_aviator_x2, // 0x66
        wristaccessory_t9_s5_analog_classic, // 0x67
        wristaccessory_t9_esports_optic_ms, // 0x68
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x69
        wristaccessory_t9_esports_optic_sy, // 0x6a
        wristaccessory_t9_esports_optic_pc, // 0x6b
        wristaccessory_t9_s5_analog_beer_o_clock, // 0x6c
        wristaccessory_t9_s5_analog_hacking_code, // 0x6d
        wristaccessory_t9_s2_analog_rebel, // 0x6e
        wristaccessory_t9_s5_digital_ghosted, // 0x6f
        wristaccessory_t9_s5_analog_egy_burial, // 0x70
        wristaccessory_t9_s2_analog_white_tiger, // 0x71
        wristaccessory_t9_s5_digital_critical_kill, // 0x72
        wristaccessory_t9_s2_analog_caiman, // 0x73
        hash_4fee76d1114701af, // 0x74
        wristaccessory_t9_s3_analog_chrono_sea, // 0x75
        wristaccessory_t9_s2_analog_broken_fancy, // 0x76
        hash_511c7fa835d89891, // 0x77
        wristaccessory_t9_s5_digital_judge_d, // 0x78
        wristaccessory_t9_s4_digital_royal_decree, // 0x79
        wristaccessory_t9_s6_analog_street_mech_sy, // 0x7a
        wristaccessory_t9_s1_bracelet_skull_01, // 0x7b
        wristaccessory_t9_s5_analog_rainbow_jewel, // 0x7c
        wristaccessory_t9_s3_digital_big_joke, // 0x7d
        wristaccessory_t9_s1_bracelet_01, // 0x7e
        wristaccessory_t9_s5_analog_demon, // 0x7f
        hash_575c967cd59c9145, // 0x80
        wristaccessory_t9_s6_digital_rank_carnival, // 0x81
        wristaccessory_t9_s5_analog_no_numbers, // 0x82
        wristaccessory_t9_s6_analog_blue_chroma, // 0x83
        wristaccessory_t9_s5_digital_mummy_cat, // 0x84
        wristaccessory_t9_esports_surge_sy, // 0x85
        wristaccessory_t9_esports_surge_pc, // 0x86
        wristaccessory_t9_s4_digital_big_joke, // 0x87
        wristaccessory_t9_esports_surge_ms, // 0x88
        wristaccessory_t9_s4_analog_jefe, // 0x89
        wristaccessory_t9_esports_faze_ms, // 0x8a
        wristaccessory_t9_esports_faze_pc, // 0x8b
        wristaccessory_t9_esports_faze_sy, // 0x8c
        wristaccessory_t9_s1_analog_origin_01, // 0x8d
        wristaccessory_t9_esports_mutineers_pc, // 0x8e
        wristaccessory_t9_esports_mutineers_sy, // 0x8f
        wristaccessory_t9_esports_mutineers_ms, // 0x90
        wristaccessory_t9_s5_digital_wonderland, // 0x91
        wristaccessory_t9_s1_analog_private_eye_03, // 0x92
        wristaccessory_t9_s1_analog_private_eye_02, // 0x93
        wristaccessory_t9_s1_analog_private_eye_01, // 0x94
        wristaccessory_t9_esports_guerillas_sy, // 0x95
        wristaccessory_t9_esports_guerillas_pc, // 0x96
        wristaccessory_t9_esports_guerillas_ms, // 0x97
        wristaccessory_t9_s4_analog_wasteland, // 0x98
        wristaccessory_t9_s3_digital_diver_wargames, // 0x99
        wristaccessory_t9_s5_digital_rank_countdwn, // 0x9a
        wristaccessory_t9_s6_analog_halloween, // 0x9b
        wristaccessory_t9_s2_digital_river_slasher, // 0x9c
        wristaccessory_t9_s2_bracelet_lure, // 0x9d
        wristaccessory_t9_s2_analog_cold_hearted, // 0x9e
        wristaccessory_t9_s6_analog_donnie, // 0x9f
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0xa0
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0xa1
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0xa2
        wristaccessory_t9_s1_digital_rank_01, // 0xa3
        wristaccessory_t9_s2_digital_jade, // 0xa4
        hash_708a99620b81ea23, // 0xa5
        hash_708a9a620b81ebd6, // 0xa6
        wristaccessory_t9_s3_analog_zombie_naga, // 0xa7
        wristaccessory_t9_s6_digital_sultan, // 0xa8
        wristaccessory_t9_s6_digital_gov1, // 0xa9
        wristaccessory_t9_s6_digital_gov2, // 0xaa
        wristaccessory_t9_s5_digital_tagger, // 0xab
        wristaccessory_t9_s2_analog_black_silver, // 0xac
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0xad
        wristaccessory_t9_s4_digital_holographic, // 0xae
        wristaccessory_t9_s4_analog_fire_storm, // 0xaf
        wristaccessory_t9_s3_digital_death_touch, // 0xb0
        wristaccessory_t9_s6_analog_big_joke4_solo, // 0xb1
        wristaccessory_t9_s4_bracelet_leather_studd, // 0xb2
        wristaccessory_t9_s2_analog_black_gold, // 0xb3
        wristaccessory_t9_s1_digital_compass_01, // 0xb4
        wristaccessory_t9_s1_digital_first_spy_01, // 0xb5
        wristaccessory_t9_s1_digital_gaudy_01, // 0xb6
        wristaccessory_t9_s5_analog_retrotac, // 0xb7
        wristaccessory_t9_s6_analog_krieger, // 0xb8
        wristaccessory_t9_s5_digital_dark_weaver, // 0xb9
        wristaccessory_t9_s6_digital_frost // 0xba
    };

    // idx 0x3 members: 0x89
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
        execution_154, // 0x9
        execution_157, // 0xa
        execution_149, // 0xb
        execution_148, // 0xc
        execution_143, // 0xd
        execution_142, // 0xe
        execution_141, // 0xf
        execution_140, // 0x10
        execution_147, // 0x11
        execution_146, // 0x12
        execution_145, // 0x13
        execution_144, // 0x14
        execution_176, // 0x15
        execution_174, // 0x16
        execution_172, // 0x17
        execution_173, // 0x18
        execution_171, // 0x19
        execution_161, // 0x1a
        execution_160, // 0x1b
        execution_163, // 0x1c
        execution_162, // 0x1d
        execution_117, // 0x1e
        execution_110, // 0x1f
        execution_111, // 0x20
        execution_112, // 0x21
        execution_113, // 0x22
        execution_118, // 0x23
        execution_119, // 0x24
        execution_101, // 0x25
        execution_100, // 0x26
        execution_108, // 0x27
        execution_138, // 0x28
        execution_139, // 0x29
        execution_132, // 0x2a
        execution_133, // 0x2b
        execution_130, // 0x2c
        execution_136, // 0x2d
        execution_137, // 0x2e
        execution_134, // 0x2f
        execution_135, // 0x30
        execution_129, // 0x31
        execution_128, // 0x32
        execution_125, // 0x33
        execution_124, // 0x34
        execution_127, // 0x35
        execution_126, // 0x36
        execution_121, // 0x37
        execution_120, // 0x38
        execution_123, // 0x39
        execution_040bc, // 0x3a
        execution_039bc, // 0x3b
        execution_208, // 0x3c
        execution_209, // 0x3d
        execution_204, // 0x3e
        execution_205, // 0x3f
        execution_206, // 0x40
        execution_207, // 0x41
        execution_201, // 0x42
        execution_202, // 0x43
        execution_203, // 0x44
        execution_211, // 0x45
        execution_210, // 0x46
        execution_086, // 0x47
        execution_087, // 0x48
        execution_084, // 0x49
        execution_082, // 0x4a
        execution_083, // 0x4b
        execution_080, // 0x4c
        execution_081, // 0x4d
        execution_088, // 0x4e
        execution_089, // 0x4f
        execution_099, // 0x50
        execution_098, // 0x51
        execution_096, // 0x52
        execution_029, // 0x53
        execution_020, // 0x54
        execution_021, // 0x55
        execution_022, // 0x56
        execution_023, // 0x57
        execution_024, // 0x58
        execution_025, // 0x59
        execution_026, // 0x5a
        execution_027, // 0x5b
        execution_038, // 0x5c
        execution_033, // 0x5d
        execution_032, // 0x5e
        execution_031, // 0x5f
        execution_030, // 0x60
        execution_037, // 0x61
        execution_036, // 0x62
        execution_034, // 0x63
        execution_009, // 0x64
        execution_007, // 0x65
        execution_004, // 0x66
        execution_005, // 0x67
        execution_002, // 0x68
        execution_003, // 0x69
        execution_001, // 0x6a
        execution_010, // 0x6b
        execution_013, // 0x6c
        execution_015, // 0x6d
        execution_014, // 0x6e
        execution_017, // 0x6f
        execution_016, // 0x70
        execution_018, // 0x71
        execution_064, // 0x72
        execution_065, // 0x73
        execution_066, // 0x74
        execution_067, // 0x75
        execution_061, // 0x76
        execution_062, // 0x77
        execution_063, // 0x78
        execution_069, // 0x79
        execution_074, // 0x7a
        execution_070, // 0x7b
        execution_078, // 0x7c
        execution_048, // 0x7d
        execution_049, // 0x7e
        execution_042, // 0x7f
        execution_043, // 0x80
        execution_040, // 0x81
        execution_045, // 0x82
        execution_059, // 0x83
        execution_058, // 0x84
        execution_051, // 0x85
        execution_052, // 0x86
        execution_038r, // 0x87
        hash_7f66c55f0f1308c2 // 0x88
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x21
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

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16ab8, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc1d0(0x183a Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16ab0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_df4c89f699c0b582 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 93032 (0x16b68)
    // header byte size . 11629 (0x2d6d)

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

    // bitSize: 0xc8, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0xbc, array:0xbc(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x98, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x89, array:0x89(hti:0x3)
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

    // bitSize: 0xc1d0, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0x108(0x21 Byte(s)), array:0x21(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2278, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23f0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c38, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2cb8, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7e8, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc068, bitSize: 0x98(0x13 Byte(s))
        execution execution;
        // offset: 0xc100, bitSize: 0xc8(0x19 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc1c8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc1c9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc1ca, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc1cb, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0xbc
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
        wristaccessory_t9_s6_digital_atomic_ash, // 0x12
        wristaccessory_t9_s3_digital_nuclear_fallout, // 0x13
        wristaccessory_t9_s6_digital_tagger_sy, // 0x14
        wristaccessory_t9_s6_digital_tagger_pc, // 0x15
        wristaccessory_t9_s6_digital_tagger_ms, // 0x16
        wristaccessory_t9_s2_analog_necro_king, // 0x17
        wristaccessory_t9_s2_digital_sforce, // 0x18
        wristaccessory_t9_s1_digital_gambit_01, // 0x19
        wristaccessory_t9_s5_digital_arabian, // 0x1a
        wristaccessory_t9_s6_analog_big_joke4_ms, // 0x1b
        wristaccessory_t9_s6_analog_big_joke4_sy, // 0x1c
        wristaccessory_t9_s6_analog_big_joke4_pc, // 0x1d
        wristaccessory_t9_s3_digital_radiation, // 0x1e
        wristaccessory_t9_s1_digital_inteculo_01, // 0x1f
        wristaccessory_t9_s3_digital_ultrafunk, // 0x20
        wristaccessory_t9_s1_analog_brawler_01, // 0x21
        wristaccessory_t9_s4_bracelet_weathered, // 0x22
        wristaccessory_t9_s6_digital_ww, // 0x23
        wristaccessory_t9_s4_analog_future_soldier, // 0x24
        wristaccessory_t9_s6_digital_zm_critical_kill, // 0x25
        wristaccessory_t9_s4_analog_sleek_assassin, // 0x26
        wristaccessory_t9_s5_analog_onyx_sy, // 0x27
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x28
        wristaccessory_t9_s6_digital_undead_warrior, // 0x29
        wristaccessory_t9_s3_bracelet_01, // 0x2a
        hash_1ccdff0ebb3ad612, // 0x2b
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x2c
        wristaccessory_t9_s1_analog_kremlin, // 0x2d
        wristaccessory_t9_s5_digital_checkmate, // 0x2e
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x2f
        wristaccessory_t9_s4_analog_horror, // 0x30
        wristaccessory_t9_s2_analog_mortal, // 0x31
        wristaccessory_t9_esports_empire_ms, // 0x32
        wristaccessory_t9_esports_empire_pc, // 0x33
        wristaccessory_t9_esports_empire_sy, // 0x34
        hash_25142303752f4324, // 0x35
        hash_25142503752f468a, // 0x36
        wristaccessory_t9_s1_analog_retroren_02, // 0x37
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x38
        wristaccessory_default, // 0x39
        wristaccessory_t9_esports_royalravens_ms, // 0x3a
        wristaccessory_t9_s6_analog_bog_ops, // 0x3b
        wristaccessory_t9_esports_royalravens_pc, // 0x3c
        wristaccessory_t9_esports_royalravens_sy, // 0x3d
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x3e
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x3f
        wristaccessory_t9_s4_analog_rbear, // 0x40
        wristaccessory_t9_s4_digital_roadwarrior, // 0x41
        wristaccessory_t9_s5_analog_riptide, // 0x42
        wristaccessory_t9_s2_analog_420, // 0x43
        wristaccessory_t9_s2_digital_mini_map, // 0x44
        wristaccessory_t9_s6_analog_gilded, // 0x45
        wristaccessory_t9_s1_digital_kazuya_01, // 0x46
        wristaccessory_t9_s2_digital_mayan, // 0x47
        wristaccessory_t9_s1_digital_diver, // 0x48
        wristaccessory_t9_s4_holographic_rank, // 0x49
        wristaccessory_t9_s4_analog_roadwar, // 0x4a
        wristaccessory_t9_esports_thieves_ms, // 0x4b
        wristaccessory_t9_esports_thieves_pc, // 0x4c
        wristaccessory_t9_esports_thieves_sy, // 0x4d
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x4e
        wristaccessory_t9_s5_analog_holographic, // 0x4f
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x50
        wristaccessory_t9_s6_digital_tagger_solo, // 0x51
        wristaccessory_t9_s4_digital_blade, // 0x52
        wristaccessory_t9_s2_analog_naval_warfare, // 0x53
        wristaccessory_t9_esports_subliners_pc, // 0x54
        wristaccessory_t9_esports_subliners_sy, // 0x55
        wristaccessory_t9_esports_subliners_ms, // 0x56
        wristaccessory_t9_s3_digital_magic8, // 0x57
        wristaccessory_t9_s4_analog_assassin, // 0x58
        wristaccessory_t9_s2_analog_dark_aether, // 0x59
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x5a
        wristaccessory_t9_s6_analog_scream, // 0x5b
        wristaccessory_t9_s2_analog_mayan, // 0x5c
        wristaccessory_t9_s1_analog_bope_01, // 0x5d
        wristaccessory_t9_esports_ultra_ms, // 0x5e
        wristaccessory_t9_esports_ultra_sy, // 0x5f
        wristaccessory_t9_esports_ultra_pc, // 0x60
        wristaccessory_t9_s6_analog_hypnosis, // 0x61
        wristaccessory_t9_s2_analog_paratroop, // 0x62
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x63
        wristaccessory_t9_s1_analog_aviator_02, // 0x64
        wristaccessory_t9_s1_analog_horex_01, // 0x65
        wristaccessory_t9_s1_analog_fancy, // 0x66
        wristaccessory_t9_s1_analog_aviator_x2, // 0x67
        wristaccessory_t9_s5_analog_classic, // 0x68
        wristaccessory_t9_esports_optic_ms, // 0x69
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x6a
        wristaccessory_t9_esports_optic_sy, // 0x6b
        wristaccessory_t9_esports_optic_pc, // 0x6c
        wristaccessory_t9_s5_analog_beer_o_clock, // 0x6d
        wristaccessory_t9_s5_analog_hacking_code, // 0x6e
        wristaccessory_t9_s2_analog_rebel, // 0x6f
        wristaccessory_t9_s5_digital_ghosted, // 0x70
        wristaccessory_t9_s5_analog_egy_burial, // 0x71
        wristaccessory_t9_s2_analog_white_tiger, // 0x72
        wristaccessory_t9_s5_digital_critical_kill, // 0x73
        wristaccessory_t9_s2_analog_caiman, // 0x74
        hash_4fee76d1114701af, // 0x75
        wristaccessory_t9_s3_analog_chrono_sea, // 0x76
        wristaccessory_t9_s2_analog_broken_fancy, // 0x77
        hash_511c7fa835d89891, // 0x78
        wristaccessory_t9_s5_digital_judge_d, // 0x79
        wristaccessory_t9_s4_digital_royal_decree, // 0x7a
        wristaccessory_t9_s6_analog_street_mech_sy, // 0x7b
        wristaccessory_t9_s1_bracelet_skull_01, // 0x7c
        wristaccessory_t9_s5_analog_rainbow_jewel, // 0x7d
        wristaccessory_t9_s3_digital_big_joke, // 0x7e
        wristaccessory_t9_s1_bracelet_01, // 0x7f
        wristaccessory_t9_s5_analog_demon, // 0x80
        hash_575c967cd59c9145, // 0x81
        wristaccessory_t9_s6_digital_rank_carnival, // 0x82
        wristaccessory_t9_s5_analog_no_numbers, // 0x83
        wristaccessory_t9_s6_analog_blue_chroma, // 0x84
        wristaccessory_t9_s5_digital_mummy_cat, // 0x85
        wristaccessory_t9_esports_surge_sy, // 0x86
        wristaccessory_t9_esports_surge_pc, // 0x87
        wristaccessory_t9_s4_digital_big_joke, // 0x88
        wristaccessory_t9_esports_surge_ms, // 0x89
        wristaccessory_t9_s4_analog_jefe, // 0x8a
        wristaccessory_t9_esports_faze_ms, // 0x8b
        wristaccessory_t9_esports_faze_pc, // 0x8c
        wristaccessory_t9_esports_faze_sy, // 0x8d
        wristaccessory_t9_s1_analog_origin_01, // 0x8e
        wristaccessory_t9_esports_mutineers_pc, // 0x8f
        wristaccessory_t9_esports_mutineers_sy, // 0x90
        wristaccessory_t9_esports_mutineers_ms, // 0x91
        wristaccessory_t9_s5_digital_wonderland, // 0x92
        wristaccessory_t9_s1_analog_private_eye_03, // 0x93
        wristaccessory_t9_s1_analog_private_eye_02, // 0x94
        wristaccessory_t9_s1_analog_private_eye_01, // 0x95
        wristaccessory_t9_esports_guerillas_sy, // 0x96
        wristaccessory_t9_esports_guerillas_pc, // 0x97
        wristaccessory_t9_esports_guerillas_ms, // 0x98
        wristaccessory_t9_s4_analog_wasteland, // 0x99
        wristaccessory_t9_s3_digital_diver_wargames, // 0x9a
        wristaccessory_t9_s5_digital_rank_countdwn, // 0x9b
        wristaccessory_t9_s6_analog_halloween, // 0x9c
        wristaccessory_t9_s2_digital_river_slasher, // 0x9d
        wristaccessory_t9_s2_bracelet_lure, // 0x9e
        wristaccessory_t9_s2_analog_cold_hearted, // 0x9f
        wristaccessory_t9_s6_analog_donnie, // 0xa0
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0xa1
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0xa2
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0xa3
        wristaccessory_t9_s1_digital_rank_01, // 0xa4
        wristaccessory_t9_s2_digital_jade, // 0xa5
        hash_708a99620b81ea23, // 0xa6
        hash_708a9a620b81ebd6, // 0xa7
        wristaccessory_t9_s3_analog_zombie_naga, // 0xa8
        wristaccessory_t9_s6_digital_sultan, // 0xa9
        wristaccessory_t9_s6_digital_gov1, // 0xaa
        wristaccessory_t9_s6_digital_gov2, // 0xab
        wristaccessory_t9_s5_digital_tagger, // 0xac
        wristaccessory_t9_s2_analog_black_silver, // 0xad
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0xae
        wristaccessory_t9_s4_digital_holographic, // 0xaf
        wristaccessory_t9_s4_analog_fire_storm, // 0xb0
        wristaccessory_t9_s3_digital_death_touch, // 0xb1
        wristaccessory_t9_s6_analog_big_joke4_solo, // 0xb2
        wristaccessory_t9_s4_bracelet_leather_studd, // 0xb3
        wristaccessory_t9_s2_analog_black_gold, // 0xb4
        wristaccessory_t9_s1_digital_compass_01, // 0xb5
        wristaccessory_t9_s1_digital_first_spy_01, // 0xb6
        wristaccessory_t9_s1_digital_gaudy_01, // 0xb7
        wristaccessory_t9_s5_analog_retrotac, // 0xb8
        wristaccessory_t9_s6_analog_krieger, // 0xb9
        wristaccessory_t9_s5_digital_dark_weaver, // 0xba
        wristaccessory_t9_s6_digital_frost // 0xbb
    };

    // idx 0x3 members: 0x89
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
        execution_154, // 0x9
        execution_157, // 0xa
        execution_149, // 0xb
        execution_148, // 0xc
        execution_143, // 0xd
        execution_142, // 0xe
        execution_141, // 0xf
        execution_140, // 0x10
        execution_147, // 0x11
        execution_146, // 0x12
        execution_145, // 0x13
        execution_144, // 0x14
        execution_176, // 0x15
        execution_174, // 0x16
        execution_172, // 0x17
        execution_173, // 0x18
        execution_171, // 0x19
        execution_161, // 0x1a
        execution_160, // 0x1b
        execution_163, // 0x1c
        execution_162, // 0x1d
        execution_117, // 0x1e
        execution_110, // 0x1f
        execution_111, // 0x20
        execution_112, // 0x21
        execution_113, // 0x22
        execution_118, // 0x23
        execution_119, // 0x24
        execution_101, // 0x25
        execution_100, // 0x26
        execution_108, // 0x27
        execution_138, // 0x28
        execution_139, // 0x29
        execution_132, // 0x2a
        execution_133, // 0x2b
        execution_130, // 0x2c
        execution_136, // 0x2d
        execution_137, // 0x2e
        execution_134, // 0x2f
        execution_135, // 0x30
        execution_129, // 0x31
        execution_128, // 0x32
        execution_125, // 0x33
        execution_124, // 0x34
        execution_127, // 0x35
        execution_126, // 0x36
        execution_121, // 0x37
        execution_120, // 0x38
        execution_123, // 0x39
        execution_040bc, // 0x3a
        execution_039bc, // 0x3b
        execution_208, // 0x3c
        execution_209, // 0x3d
        execution_204, // 0x3e
        execution_205, // 0x3f
        execution_206, // 0x40
        execution_207, // 0x41
        execution_201, // 0x42
        execution_202, // 0x43
        execution_203, // 0x44
        execution_211, // 0x45
        execution_210, // 0x46
        execution_086, // 0x47
        execution_087, // 0x48
        execution_084, // 0x49
        execution_082, // 0x4a
        execution_083, // 0x4b
        execution_080, // 0x4c
        execution_081, // 0x4d
        execution_088, // 0x4e
        execution_089, // 0x4f
        execution_099, // 0x50
        execution_098, // 0x51
        execution_096, // 0x52
        execution_029, // 0x53
        execution_020, // 0x54
        execution_021, // 0x55
        execution_022, // 0x56
        execution_023, // 0x57
        execution_024, // 0x58
        execution_025, // 0x59
        execution_026, // 0x5a
        execution_027, // 0x5b
        execution_038, // 0x5c
        execution_033, // 0x5d
        execution_032, // 0x5e
        execution_031, // 0x5f
        execution_030, // 0x60
        execution_037, // 0x61
        execution_036, // 0x62
        execution_034, // 0x63
        execution_009, // 0x64
        execution_007, // 0x65
        execution_004, // 0x66
        execution_005, // 0x67
        execution_002, // 0x68
        execution_003, // 0x69
        execution_001, // 0x6a
        execution_010, // 0x6b
        execution_013, // 0x6c
        execution_015, // 0x6d
        execution_014, // 0x6e
        execution_017, // 0x6f
        execution_016, // 0x70
        execution_018, // 0x71
        execution_064, // 0x72
        execution_065, // 0x73
        execution_066, // 0x74
        execution_067, // 0x75
        execution_061, // 0x76
        execution_062, // 0x77
        execution_063, // 0x78
        execution_069, // 0x79
        execution_074, // 0x7a
        execution_070, // 0x7b
        execution_078, // 0x7c
        execution_048, // 0x7d
        execution_049, // 0x7e
        execution_042, // 0x7f
        execution_043, // 0x80
        execution_040, // 0x81
        execution_045, // 0x82
        execution_059, // 0x83
        execution_058, // 0x84
        execution_051, // 0x85
        execution_052, // 0x86
        execution_038r, // 0x87
        hash_7f66c55f0f1308c2 // 0x88
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x21
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

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16ab8, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc1d0(0x183a Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16ab0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_aa9997f8f063e105 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 93032 (0x16b68)
    // header byte size . 11629 (0x2d6d)

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

    // bitSize: 0xc8, members: 3
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0xbf, array:0xbf(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x98, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x8c, array:0x8c(hti:0x3)
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

    // bitSize: 0xc1d0, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0x108(0x21 Byte(s)), array:0x21(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2278, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23f0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c38, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2cb8, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7e8, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc068, bitSize: 0x98(0x13 Byte(s))
        execution execution;
        // offset: 0xc100, bitSize: 0xc8(0x19 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc1c8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc1c9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc1ca, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc1cb, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0xbf
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
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x2a
        wristaccessory_t9_s6_digital_undead_warrior, // 0x2b
        wristaccessory_t9_s3_bracelet_01, // 0x2c
        hash_1ccdff0ebb3ad612, // 0x2d
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x2e
        wristaccessory_t9_s1_analog_kremlin, // 0x2f
        wristaccessory_t9_s5_digital_checkmate, // 0x30
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x31
        wristaccessory_t9_s4_analog_horror, // 0x32
        wristaccessory_t9_s2_analog_mortal, // 0x33
        wristaccessory_t9_esports_empire_ms, // 0x34
        wristaccessory_t9_esports_empire_pc, // 0x35
        wristaccessory_t9_esports_empire_sy, // 0x36
        hash_25142303752f4324, // 0x37
        hash_25142503752f468a, // 0x38
        wristaccessory_t9_s1_analog_retroren_02, // 0x39
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x3a
        wristaccessory_default, // 0x3b
        wristaccessory_t9_esports_royalravens_ms, // 0x3c
        wristaccessory_t9_s6_analog_bog_ops, // 0x3d
        wristaccessory_t9_esports_royalravens_pc, // 0x3e
        wristaccessory_t9_esports_royalravens_sy, // 0x3f
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x40
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x41
        wristaccessory_t9_s4_analog_rbear, // 0x42
        wristaccessory_t9_s4_digital_roadwarrior, // 0x43
        wristaccessory_t9_s5_analog_riptide, // 0x44
        wristaccessory_t9_s2_analog_420, // 0x45
        wristaccessory_t9_s2_digital_mini_map, // 0x46
        wristaccessory_t9_s6_analog_gilded, // 0x47
        wristaccessory_t9_s1_digital_kazuya_01, // 0x48
        wristaccessory_t9_s2_digital_mayan, // 0x49
        wristaccessory_t9_s1_digital_diver, // 0x4a
        wristaccessory_t9_s4_holographic_rank, // 0x4b
        wristaccessory_t9_s4_analog_roadwar, // 0x4c
        wristaccessory_t9_esports_thieves_ms, // 0x4d
        wristaccessory_t9_esports_thieves_pc, // 0x4e
        wristaccessory_t9_esports_thieves_sy, // 0x4f
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x50
        wristaccessory_t9_s5_analog_holographic, // 0x51
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x52
        wristaccessory_t9_s6_digital_tagger_solo, // 0x53
        wristaccessory_t9_s4_digital_blade, // 0x54
        wristaccessory_t9_s2_analog_naval_warfare, // 0x55
        wristaccessory_t9_esports_subliners_pc, // 0x56
        wristaccessory_t9_esports_subliners_sy, // 0x57
        wristaccessory_t9_esports_subliners_ms, // 0x58
        wristaccessory_t9_s3_digital_magic8, // 0x59
        wristaccessory_t9_s4_analog_assassin, // 0x5a
        wristaccessory_t9_s2_analog_dark_aether, // 0x5b
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x5c
        wristaccessory_t9_s6_analog_scream, // 0x5d
        wristaccessory_t9_s2_analog_mayan, // 0x5e
        wristaccessory_t9_s1_analog_bope_01, // 0x5f
        wristaccessory_t9_esports_ultra_ms, // 0x60
        wristaccessory_t9_esports_ultra_sy, // 0x61
        wristaccessory_t9_esports_ultra_pc, // 0x62
        wristaccessory_t9_s6_analog_hypnosis, // 0x63
        wristaccessory_t9_s2_analog_paratroop, // 0x64
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x65
        wristaccessory_t9_s1_analog_aviator_02, // 0x66
        wristaccessory_t9_s1_analog_horex_01, // 0x67
        wristaccessory_t9_s1_analog_fancy, // 0x68
        wristaccessory_t9_s1_analog_aviator_x2, // 0x69
        wristaccessory_t9_s5_analog_classic, // 0x6a
        wristaccessory_t9_esports_optic_ms, // 0x6b
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x6c
        wristaccessory_t9_esports_optic_sy, // 0x6d
        wristaccessory_t9_esports_optic_pc, // 0x6e
        wristaccessory_t9_s5_analog_beer_o_clock, // 0x6f
        wristaccessory_t9_s5_analog_hacking_code, // 0x70
        wristaccessory_t9_s2_analog_rebel, // 0x71
        wristaccessory_t9_s5_digital_ghosted, // 0x72
        wristaccessory_t9_s5_analog_egy_burial, // 0x73
        wristaccessory_t9_s2_analog_white_tiger, // 0x74
        wristaccessory_t9_s5_digital_critical_kill, // 0x75
        wristaccessory_t9_s2_analog_caiman, // 0x76
        hash_4fee76d1114701af, // 0x77
        wristaccessory_t9_s3_analog_chrono_sea, // 0x78
        wristaccessory_t9_s2_analog_broken_fancy, // 0x79
        hash_511c7fa835d89891, // 0x7a
        wristaccessory_t9_s5_digital_judge_d, // 0x7b
        wristaccessory_t9_s4_digital_royal_decree, // 0x7c
        wristaccessory_t9_s6_analog_street_mech_sy, // 0x7d
        wristaccessory_t9_s1_bracelet_skull_01, // 0x7e
        wristaccessory_t9_s5_analog_rainbow_jewel, // 0x7f
        wristaccessory_t9_s3_digital_big_joke, // 0x80
        wristaccessory_t9_s1_bracelet_01, // 0x81
        wristaccessory_t9_s5_analog_demon, // 0x82
        hash_575c967cd59c9145, // 0x83
        wristaccessory_t9_s6_digital_rank_carnival, // 0x84
        wristaccessory_t9_s5_analog_no_numbers, // 0x85
        wristaccessory_t9_s6_analog_blue_chroma, // 0x86
        wristaccessory_t9_s5_digital_mummy_cat, // 0x87
        wristaccessory_t9_esports_surge_sy, // 0x88
        wristaccessory_t9_esports_surge_pc, // 0x89
        wristaccessory_t9_s4_digital_big_joke, // 0x8a
        wristaccessory_t9_esports_surge_ms, // 0x8b
        wristaccessory_t9_s4_analog_jefe, // 0x8c
        wristaccessory_t9_esports_faze_ms, // 0x8d
        wristaccessory_t9_esports_faze_pc, // 0x8e
        wristaccessory_t9_esports_faze_sy, // 0x8f
        wristaccessory_t9_s1_analog_origin_01, // 0x90
        wristaccessory_t9_esports_mutineers_pc, // 0x91
        wristaccessory_t9_esports_mutineers_sy, // 0x92
        wristaccessory_t9_esports_mutineers_ms, // 0x93
        wristaccessory_t9_s5_digital_wonderland, // 0x94
        wristaccessory_t9_s1_analog_private_eye_03, // 0x95
        wristaccessory_t9_s1_analog_private_eye_02, // 0x96
        wristaccessory_t9_s1_analog_private_eye_01, // 0x97
        wristaccessory_t9_esports_guerillas_sy, // 0x98
        wristaccessory_t9_esports_guerillas_pc, // 0x99
        wristaccessory_t9_esports_guerillas_ms, // 0x9a
        wristaccessory_t9_s4_analog_wasteland, // 0x9b
        wristaccessory_t9_s3_digital_diver_wargames, // 0x9c
        wristaccessory_t9_s5_digital_rank_countdwn, // 0x9d
        wristaccessory_t9_s6_analog_halloween, // 0x9e
        wristaccessory_t9_s2_digital_river_slasher, // 0x9f
        wristaccessory_t9_s2_bracelet_lure, // 0xa0
        wristaccessory_t9_s2_analog_cold_hearted, // 0xa1
        wristaccessory_t9_s6_digital_reaper_bunny, // 0xa2
        wristaccessory_t9_s6_analog_donnie, // 0xa3
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0xa4
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0xa5
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0xa6
        wristaccessory_t9_s1_digital_rank_01, // 0xa7
        wristaccessory_t9_s2_digital_jade, // 0xa8
        hash_708a99620b81ea23, // 0xa9
        hash_708a9a620b81ebd6, // 0xaa
        wristaccessory_t9_s3_analog_zombie_naga, // 0xab
        wristaccessory_t9_s6_digital_sultan, // 0xac
        wristaccessory_t9_s6_digital_gov1, // 0xad
        wristaccessory_t9_s6_digital_gov2, // 0xae
        wristaccessory_t9_s5_digital_tagger, // 0xaf
        wristaccessory_t9_s2_analog_black_silver, // 0xb0
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0xb1
        wristaccessory_t9_s4_digital_holographic, // 0xb2
        wristaccessory_t9_s4_analog_fire_storm, // 0xb3
        wristaccessory_t9_s3_digital_death_touch, // 0xb4
        wristaccessory_t9_s6_analog_big_joke4_solo, // 0xb5
        wristaccessory_t9_s4_bracelet_leather_studd, // 0xb6
        wristaccessory_t9_s2_analog_black_gold, // 0xb7
        wristaccessory_t9_s1_digital_compass_01, // 0xb8
        wristaccessory_t9_s1_digital_first_spy_01, // 0xb9
        wristaccessory_t9_s1_digital_gaudy_01, // 0xba
        wristaccessory_t9_s5_analog_retrotac, // 0xbb
        wristaccessory_t9_s6_analog_krieger, // 0xbc
        wristaccessory_t9_s5_digital_dark_weaver, // 0xbd
        wristaccessory_t9_s6_digital_frost // 0xbe
    };

    // idx 0x3 members: 0x8c
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
        execution_154, // 0x9
        execution_157, // 0xa
        execution_149, // 0xb
        execution_148, // 0xc
        execution_143, // 0xd
        execution_142, // 0xe
        execution_141, // 0xf
        execution_140, // 0x10
        execution_147, // 0x11
        execution_146, // 0x12
        execution_145, // 0x13
        execution_144, // 0x14
        execution_176, // 0x15
        execution_174, // 0x16
        execution_172, // 0x17
        execution_173, // 0x18
        execution_171, // 0x19
        execution_161, // 0x1a
        execution_160, // 0x1b
        execution_163, // 0x1c
        execution_162, // 0x1d
        execution_166, // 0x1e
        execution_117, // 0x1f
        execution_110, // 0x20
        execution_111, // 0x21
        execution_112, // 0x22
        execution_113, // 0x23
        execution_118, // 0x24
        execution_119, // 0x25
        execution_101, // 0x26
        execution_100, // 0x27
        execution_108, // 0x28
        execution_138, // 0x29
        execution_139, // 0x2a
        execution_132, // 0x2b
        execution_133, // 0x2c
        execution_130, // 0x2d
        execution_136, // 0x2e
        execution_137, // 0x2f
        execution_134, // 0x30
        execution_135, // 0x31
        execution_129, // 0x32
        execution_128, // 0x33
        execution_125, // 0x34
        execution_124, // 0x35
        execution_127, // 0x36
        execution_126, // 0x37
        execution_121, // 0x38
        execution_120, // 0x39
        execution_123, // 0x3a
        execution_040bc, // 0x3b
        execution_039bc, // 0x3c
        execution_208, // 0x3d
        execution_209, // 0x3e
        execution_204, // 0x3f
        execution_205, // 0x40
        execution_206, // 0x41
        execution_207, // 0x42
        execution_201, // 0x43
        execution_202, // 0x44
        execution_203, // 0x45
        execution_211, // 0x46
        execution_210, // 0x47
        execution_086, // 0x48
        execution_087, // 0x49
        execution_084, // 0x4a
        execution_082, // 0x4b
        execution_083, // 0x4c
        execution_080, // 0x4d
        execution_081, // 0x4e
        execution_088, // 0x4f
        execution_089, // 0x50
        execution_099, // 0x51
        execution_098, // 0x52
        execution_097, // 0x53
        execution_096, // 0x54
        execution_028, // 0x55
        execution_029, // 0x56
        execution_020, // 0x57
        execution_021, // 0x58
        execution_022, // 0x59
        execution_023, // 0x5a
        execution_024, // 0x5b
        execution_025, // 0x5c
        execution_026, // 0x5d
        execution_027, // 0x5e
        execution_038, // 0x5f
        execution_033, // 0x60
        execution_032, // 0x61
        execution_031, // 0x62
        execution_030, // 0x63
        execution_037, // 0x64
        execution_036, // 0x65
        execution_034, // 0x66
        execution_009, // 0x67
        execution_007, // 0x68
        execution_004, // 0x69
        execution_005, // 0x6a
        execution_002, // 0x6b
        execution_003, // 0x6c
        execution_001, // 0x6d
        execution_010, // 0x6e
        execution_013, // 0x6f
        execution_015, // 0x70
        execution_014, // 0x71
        execution_017, // 0x72
        execution_016, // 0x73
        execution_018, // 0x74
        execution_064, // 0x75
        execution_065, // 0x76
        execution_066, // 0x77
        execution_067, // 0x78
        execution_061, // 0x79
        execution_062, // 0x7a
        execution_063, // 0x7b
        execution_069, // 0x7c
        execution_074, // 0x7d
        execution_070, // 0x7e
        execution_078, // 0x7f
        execution_048, // 0x80
        execution_049, // 0x81
        execution_042, // 0x82
        execution_043, // 0x83
        execution_040, // 0x84
        execution_045, // 0x85
        execution_059, // 0x86
        execution_058, // 0x87
        execution_051, // 0x88
        execution_052, // 0x89
        execution_038r, // 0x8a
        hash_7f66c55f0f1308c2 // 0x8b
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x21
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

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16ab8, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc1d0(0x183a Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16ab0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_7838555a2e718cc5 {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 93032 (0x16b68)
    // header byte size . 11629 (0x2d6d)

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

    // bitSize: 0xc8, members: 2
    struct wristaccessory {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        hash_15b5a49eecd89562 hash_20eb515dce978fcf;
        // offset: 0x8, bitSize: 0xc0(0x18 Byte(s)), array:0xc0(hti:0x2)
        bool hash_3afbc408397a1527[hash_15b5a49eecd89562];
    };

    // bitSize: 0x98, members: 3
    struct execution {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        executions hash_555270a5af5a5e12;
        // offset: 0x8, bitSize: 0x8c, array:0x8c(hti:0x3)
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

    // bitSize: 0xc1d0, members: 21
    struct hash_18b04f5b045db908 {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:10 loadoutversion;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        int:5 equippedbubblegumpack;
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0x108(0x21 Byte(s)), array:0x21(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2278, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23f0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
        vehiclecustomization vehicles[hash_3ced56fc48a65743];
        // offset: 0x2c30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_78e9cef0ed273bd;
        // offset: 0x2c38, bitSize: 0x80(0x10 Byte(s)), array:0x8(hti:0xffff)
        uint:11 hash_20d6751cb2f9ca09[8];
        // offset: 0x2cb8, bitSize: 0x8b30(0x1166 Byte(s)), array:0x11(hti:0xffff)
        zmloadout customclass[17];
        // offset: 0xb7e8, bitSize: 0x880(0x110 Byte(s)), array:0x11(hti:0xffff)
        string(16) customclassname[17];
        // offset: 0xc068, bitSize: 0x98(0x13 Byte(s))
        execution execution;
        // offset: 0xc100, bitSize: 0xc8(0x19 Byte(s))
        wristaccessory wristaccessory;
        // offset: 0xc1c8, bitSize: 0x1
        bool hash_6daffc8ba44646eb;
        // offset: 0xc1c9, bitSize: 0x1
        bool hash_4a7be35adcdd0183;
        // offset: 0xc1ca, bitSize: 0x1
        hash_3a71885fe7e328bd superfaction;
        // offset: 0xc1cb, bitSize: 0x1
        bool hash_490318f2d43cdc68;
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

    // idx 0x2 members: 0xc0
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
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x2a
        wristaccessory_t9_s6_digital_undead_warrior, // 0x2b
        wristaccessory_t9_s3_bracelet_01, // 0x2c
        hash_1ccdff0ebb3ad612, // 0x2d
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x2e
        wristaccessory_t9_s1_analog_kremlin, // 0x2f
        wristaccessory_t9_s5_digital_checkmate, // 0x30
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x31
        wristaccessory_t9_s4_analog_horror, // 0x32
        wristaccessory_t9_s2_analog_mortal, // 0x33
        wristaccessory_t9_esports_empire_ms, // 0x34
        wristaccessory_t9_esports_empire_pc, // 0x35
        wristaccessory_t9_esports_empire_sy, // 0x36
        hash_25142303752f4324, // 0x37
        hash_25142503752f468a, // 0x38
        wristaccessory_t9_s1_analog_retroren_02, // 0x39
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x3a
        wristaccessory_default, // 0x3b
        wristaccessory_t9_s6_analog_cyber_venom, // 0x3c
        wristaccessory_t9_esports_royalravens_ms, // 0x3d
        wristaccessory_t9_s6_analog_bog_ops, // 0x3e
        wristaccessory_t9_esports_royalravens_pc, // 0x3f
        wristaccessory_t9_esports_royalravens_sy, // 0x40
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x41
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x42
        wristaccessory_t9_s4_analog_rbear, // 0x43
        wristaccessory_t9_s4_digital_roadwarrior, // 0x44
        wristaccessory_t9_s5_analog_riptide, // 0x45
        wristaccessory_t9_s2_analog_420, // 0x46
        wristaccessory_t9_s2_digital_mini_map, // 0x47
        wristaccessory_t9_s6_analog_gilded, // 0x48
        wristaccessory_t9_s1_digital_kazuya_01, // 0x49
        wristaccessory_t9_s2_digital_mayan, // 0x4a
        wristaccessory_t9_s1_digital_diver, // 0x4b
        wristaccessory_t9_s4_holographic_rank, // 0x4c
        wristaccessory_t9_s4_analog_roadwar, // 0x4d
        wristaccessory_t9_esports_thieves_ms, // 0x4e
        wristaccessory_t9_esports_thieves_pc, // 0x4f
        wristaccessory_t9_esports_thieves_sy, // 0x50
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x51
        wristaccessory_t9_s5_analog_holographic, // 0x52
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x53
        wristaccessory_t9_s6_digital_tagger_solo, // 0x54
        wristaccessory_t9_s4_digital_blade, // 0x55
        wristaccessory_t9_s2_analog_naval_warfare, // 0x56
        wristaccessory_t9_esports_subliners_pc, // 0x57
        wristaccessory_t9_esports_subliners_sy, // 0x58
        wristaccessory_t9_esports_subliners_ms, // 0x59
        wristaccessory_t9_s3_digital_magic8, // 0x5a
        wristaccessory_t9_s4_analog_assassin, // 0x5b
        wristaccessory_t9_s2_analog_dark_aether, // 0x5c
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x5d
        wristaccessory_t9_s6_analog_scream, // 0x5e
        wristaccessory_t9_s2_analog_mayan, // 0x5f
        wristaccessory_t9_s1_analog_bope_01, // 0x60
        wristaccessory_t9_esports_ultra_ms, // 0x61
        wristaccessory_t9_esports_ultra_sy, // 0x62
        wristaccessory_t9_esports_ultra_pc, // 0x63
        wristaccessory_t9_s6_analog_hypnosis, // 0x64
        wristaccessory_t9_s2_analog_paratroop, // 0x65
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x66
        wristaccessory_t9_s1_analog_aviator_02, // 0x67
        wristaccessory_t9_s1_analog_horex_01, // 0x68
        wristaccessory_t9_s1_analog_fancy, // 0x69
        wristaccessory_t9_s1_analog_aviator_x2, // 0x6a
        wristaccessory_t9_s5_analog_classic, // 0x6b
        wristaccessory_t9_esports_optic_ms, // 0x6c
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x6d
        wristaccessory_t9_esports_optic_sy, // 0x6e
        wristaccessory_t9_esports_optic_pc, // 0x6f
        wristaccessory_t9_s5_analog_beer_o_clock, // 0x70
        wristaccessory_t9_s5_analog_hacking_code, // 0x71
        wristaccessory_t9_s2_analog_rebel, // 0x72
        wristaccessory_t9_s5_digital_ghosted, // 0x73
        wristaccessory_t9_s5_analog_egy_burial, // 0x74
        wristaccessory_t9_s2_analog_white_tiger, // 0x75
        wristaccessory_t9_s5_digital_critical_kill, // 0x76
        wristaccessory_t9_s2_analog_caiman, // 0x77
        hash_4fee76d1114701af, // 0x78
        wristaccessory_t9_s3_analog_chrono_sea, // 0x79
        wristaccessory_t9_s2_analog_broken_fancy, // 0x7a
        hash_511c7fa835d89891, // 0x7b
        wristaccessory_t9_s5_digital_judge_d, // 0x7c
        wristaccessory_t9_s4_digital_royal_decree, // 0x7d
        wristaccessory_t9_s6_analog_street_mech_sy, // 0x7e
        wristaccessory_t9_s1_bracelet_skull_01, // 0x7f
        wristaccessory_t9_s5_analog_rainbow_jewel, // 0x80
        wristaccessory_t9_s3_digital_big_joke, // 0x81
        wristaccessory_t9_s1_bracelet_01, // 0x82
        wristaccessory_t9_s5_analog_demon, // 0x83
        hash_575c967cd59c9145, // 0x84
        wristaccessory_t9_s6_digital_rank_carnival, // 0x85
        wristaccessory_t9_s5_analog_no_numbers, // 0x86
        wristaccessory_t9_s6_analog_blue_chroma, // 0x87
        wristaccessory_t9_s5_digital_mummy_cat, // 0x88
        wristaccessory_t9_esports_surge_sy, // 0x89
        wristaccessory_t9_esports_surge_pc, // 0x8a
        wristaccessory_t9_s4_digital_big_joke, // 0x8b
        wristaccessory_t9_esports_surge_ms, // 0x8c
        wristaccessory_t9_s4_analog_jefe, // 0x8d
        wristaccessory_t9_esports_faze_ms, // 0x8e
        wristaccessory_t9_esports_faze_pc, // 0x8f
        wristaccessory_t9_esports_faze_sy, // 0x90
        wristaccessory_t9_s1_analog_origin_01, // 0x91
        wristaccessory_t9_esports_mutineers_pc, // 0x92
        wristaccessory_t9_esports_mutineers_sy, // 0x93
        wristaccessory_t9_esports_mutineers_ms, // 0x94
        wristaccessory_t9_s5_digital_wonderland, // 0x95
        wristaccessory_t9_s1_analog_private_eye_03, // 0x96
        wristaccessory_t9_s1_analog_private_eye_02, // 0x97
        wristaccessory_t9_s1_analog_private_eye_01, // 0x98
        wristaccessory_t9_esports_guerillas_sy, // 0x99
        wristaccessory_t9_esports_guerillas_pc, // 0x9a
        wristaccessory_t9_esports_guerillas_ms, // 0x9b
        wristaccessory_t9_s4_analog_wasteland, // 0x9c
        wristaccessory_t9_s3_digital_diver_wargames, // 0x9d
        wristaccessory_t9_s5_digital_rank_countdwn, // 0x9e
        wristaccessory_t9_s6_analog_halloween, // 0x9f
        wristaccessory_t9_s2_digital_river_slasher, // 0xa0
        wristaccessory_t9_s2_bracelet_lure, // 0xa1
        wristaccessory_t9_s2_analog_cold_hearted, // 0xa2
        wristaccessory_t9_s6_digital_reaper_bunny, // 0xa3
        wristaccessory_t9_s6_analog_donnie, // 0xa4
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0xa5
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0xa6
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0xa7
        wristaccessory_t9_s1_digital_rank_01, // 0xa8
        wristaccessory_t9_s2_digital_jade, // 0xa9
        hash_708a99620b81ea23, // 0xaa
        hash_708a9a620b81ebd6, // 0xab
        wristaccessory_t9_s3_analog_zombie_naga, // 0xac
        wristaccessory_t9_s6_digital_sultan, // 0xad
        wristaccessory_t9_s6_digital_gov1, // 0xae
        wristaccessory_t9_s6_digital_gov2, // 0xaf
        wristaccessory_t9_s5_digital_tagger, // 0xb0
        wristaccessory_t9_s2_analog_black_silver, // 0xb1
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0xb2
        wristaccessory_t9_s4_digital_holographic, // 0xb3
        wristaccessory_t9_s4_analog_fire_storm, // 0xb4
        wristaccessory_t9_s3_digital_death_touch, // 0xb5
        wristaccessory_t9_s6_analog_big_joke4_solo, // 0xb6
        wristaccessory_t9_s4_bracelet_leather_studd, // 0xb7
        wristaccessory_t9_s2_analog_black_gold, // 0xb8
        wristaccessory_t9_s1_digital_compass_01, // 0xb9
        wristaccessory_t9_s1_digital_first_spy_01, // 0xba
        wristaccessory_t9_s1_digital_gaudy_01, // 0xbb
        wristaccessory_t9_s5_analog_retrotac, // 0xbc
        wristaccessory_t9_s6_analog_krieger, // 0xbd
        wristaccessory_t9_s5_digital_dark_weaver, // 0xbe
        wristaccessory_t9_s6_digital_frost // 0xbf
    };

    // idx 0x3 members: 0x8c
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
        execution_154, // 0x9
        execution_157, // 0xa
        execution_149, // 0xb
        execution_148, // 0xc
        execution_143, // 0xd
        execution_142, // 0xe
        execution_141, // 0xf
        execution_140, // 0x10
        execution_147, // 0x11
        execution_146, // 0x12
        execution_145, // 0x13
        execution_144, // 0x14
        execution_176, // 0x15
        execution_174, // 0x16
        execution_172, // 0x17
        execution_173, // 0x18
        execution_171, // 0x19
        execution_161, // 0x1a
        execution_160, // 0x1b
        execution_163, // 0x1c
        execution_162, // 0x1d
        execution_166, // 0x1e
        execution_117, // 0x1f
        execution_110, // 0x20
        execution_111, // 0x21
        execution_112, // 0x22
        execution_113, // 0x23
        execution_118, // 0x24
        execution_119, // 0x25
        execution_101, // 0x26
        execution_100, // 0x27
        execution_108, // 0x28
        execution_138, // 0x29
        execution_139, // 0x2a
        execution_132, // 0x2b
        execution_133, // 0x2c
        execution_130, // 0x2d
        execution_136, // 0x2e
        execution_137, // 0x2f
        execution_134, // 0x30
        execution_135, // 0x31
        execution_129, // 0x32
        execution_128, // 0x33
        execution_125, // 0x34
        execution_124, // 0x35
        execution_127, // 0x36
        execution_126, // 0x37
        execution_121, // 0x38
        execution_120, // 0x39
        execution_123, // 0x3a
        execution_040bc, // 0x3b
        execution_039bc, // 0x3c
        execution_208, // 0x3d
        execution_209, // 0x3e
        execution_204, // 0x3f
        execution_205, // 0x40
        execution_206, // 0x41
        execution_207, // 0x42
        execution_201, // 0x43
        execution_202, // 0x44
        execution_203, // 0x45
        execution_211, // 0x46
        execution_210, // 0x47
        execution_086, // 0x48
        execution_087, // 0x49
        execution_084, // 0x4a
        execution_082, // 0x4b
        execution_083, // 0x4c
        execution_080, // 0x4d
        execution_081, // 0x4e
        execution_088, // 0x4f
        execution_089, // 0x50
        execution_099, // 0x51
        execution_098, // 0x52
        execution_097, // 0x53
        execution_096, // 0x54
        execution_028, // 0x55
        execution_029, // 0x56
        execution_020, // 0x57
        execution_021, // 0x58
        execution_022, // 0x59
        execution_023, // 0x5a
        execution_024, // 0x5b
        execution_025, // 0x5c
        execution_026, // 0x5d
        execution_027, // 0x5e
        execution_038, // 0x5f
        execution_033, // 0x60
        execution_032, // 0x61
        execution_031, // 0x62
        execution_030, // 0x63
        execution_037, // 0x64
        execution_036, // 0x65
        execution_034, // 0x66
        execution_009, // 0x67
        execution_007, // 0x68
        execution_004, // 0x69
        execution_005, // 0x6a
        execution_002, // 0x6b
        execution_003, // 0x6c
        execution_001, // 0x6d
        execution_010, // 0x6e
        execution_013, // 0x6f
        execution_015, // 0x70
        execution_014, // 0x71
        execution_017, // 0x72
        execution_016, // 0x73
        execution_018, // 0x74
        execution_064, // 0x75
        execution_065, // 0x76
        execution_066, // 0x77
        execution_067, // 0x78
        execution_061, // 0x79
        execution_062, // 0x7a
        execution_063, // 0x7b
        execution_069, // 0x7c
        execution_074, // 0x7d
        execution_070, // 0x7e
        execution_078, // 0x7f
        execution_048, // 0x80
        execution_049, // 0x81
        execution_042, // 0x82
        execution_043, // 0x83
        execution_040, // 0x84
        execution_045, // 0x85
        execution_059, // 0x86
        execution_058, // 0x87
        execution_051, // 0x88
        execution_052, // 0x89
        execution_038r, // 0x8a
        hash_7f66c55f0f1308c2 // 0x8b
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x21
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

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16ab8, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc1d0(0x183a Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16ab0, bitSize: 0x1
    bool loadoutinitialized;
};

version hash_1d39d9cc9829a62e {
    // enums ..... 8 (0x8)
    // structs ... 18 (0x12)
    // header bit size .. 93048 (0x16b78)
    // header byte size . 11631 (0x2d6f)

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
        // offset: 0x8, bitSize: 0xc4, array:0xc4(hti:0x2)
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
        // offset: 0x18, bitSize: 0x90(0x12 Byte(s)), array:0x2(hti:0x7)
        charactercontext charactercontext[hash_3a71885fe7e328bd];
        // offset: 0xa8, bitSize: 0x20(0x4 Byte(s))
        uint firstselectedcharacterindex;
        // offset: 0xc8, bitSize: 0xfa0(0x1f4 Byte(s)), array:0x32(hti:0xffff)
        hash_4acca593b6d4945b characters[50];
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_12970a5aeaee015;
        // offset: 0x1070, bitSize: 0x1100(0x220 Byte(s)), array:0x11(hti:0xffff)
        hash_5fe8e8cb2b27ba05 bubblegumpack[17];
        // offset: 0x2170, bitSize: 0x108(0x21 Byte(s)), array:0x21(hti:0x6)
        byte upgrade_tiers[upgradetiers];
        // offset: 0x2278, bitSize: 0x178(0x2f Byte(s))
        weaponvariant hash_2ab01373ffdd165c;
        // offset: 0x23f0, bitSize: 0x840(0x108 Byte(s)), array:0xb(hti:0x4)
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

    // idx 0x2 members: 0xc4
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
        wristaccessory_t9_s5_bracelet_sliver_chain, // 0x2a
        wristaccessory_t9_s6_digital_undead_warrior, // 0x2b
        wristaccessory_t9_s3_bracelet_01, // 0x2c
        hash_1ccdff0ebb3ad612, // 0x2d
        wristaccessory_t9_s2_analog_jungle_aviator, // 0x2e
        wristaccessory_t9_s1_analog_kremlin, // 0x2f
        wristaccessory_t9_s5_digital_checkmate, // 0x30
        wristaccessory_t9_s1_digital_zm_heart_rate_01, // 0x31
        wristaccessory_t9_s4_analog_horror, // 0x32
        wristaccessory_t9_s2_analog_mortal, // 0x33
        wristaccessory_t9_esports_empire_ms, // 0x34
        wristaccessory_t9_esports_empire_pc, // 0x35
        wristaccessory_t9_esports_empire_sy, // 0x36
        hash_25142303752f4324, // 0x37
        hash_25142503752f468a, // 0x38
        wristaccessory_t9_s1_analog_retroren_02, // 0x39
        wristaccessory_t9_s3_digital_rank_winter_fallout, // 0x3a
        wristaccessory_default, // 0x3b
        wristaccessory_t9_s6_analog_cyber_venom, // 0x3c
        wristaccessory_t9_esports_royalravens_ms, // 0x3d
        wristaccessory_t9_s6_analog_bog_ops, // 0x3e
        wristaccessory_t9_esports_royalravens_pc, // 0x3f
        wristaccessory_t9_esports_royalravens_sy, // 0x40
        wristaccessory_t9_s3_digital_inteculo_w_fallout, // 0x41
        wristaccessory_t9_s1_analog_fancy_debt_collector, // 0x42
        wristaccessory_t9_s4_analog_rbear, // 0x43
        wristaccessory_t9_s4_digital_roadwarrior, // 0x44
        wristaccessory_t9_s5_analog_riptide, // 0x45
        wristaccessory_t9_s2_analog_420, // 0x46
        wristaccessory_t9_s2_digital_mini_map, // 0x47
        wristaccessory_t9_s6_analog_gilded, // 0x48
        wristaccessory_t9_s1_digital_kazuya_01, // 0x49
        wristaccessory_t9_s2_digital_mayan, // 0x4a
        wristaccessory_t9_s1_digital_diver, // 0x4b
        wristaccessory_t9_s4_holographic_rank, // 0x4c
        wristaccessory_t9_s4_analog_roadwar, // 0x4d
        wristaccessory_t9_esports_thieves_ms, // 0x4e
        wristaccessory_t9_esports_thieves_pc, // 0x4f
        wristaccessory_t9_esports_thieves_sy, // 0x50
        wristaccessory_t9_s6_digital_undead_magic, // 0x51
        wristaccessory_t9_s3_digital_inteculo_spycraft, // 0x52
        wristaccessory_t9_s5_analog_holographic, // 0x53
        wristaccessory_t9_s2_bracelet_mardi_gras, // 0x54
        wristaccessory_t9_s6_digital_tagger_solo, // 0x55
        wristaccessory_t9_s4_digital_blade, // 0x56
        wristaccessory_t9_s2_analog_naval_warfare, // 0x57
        wristaccessory_t9_esports_subliners_pc, // 0x58
        wristaccessory_t9_esports_subliners_sy, // 0x59
        wristaccessory_t9_esports_subliners_ms, // 0x5a
        wristaccessory_t9_s3_digital_magic8, // 0x5b
        wristaccessory_t9_s4_analog_assassin, // 0x5c
        wristaccessory_t9_s2_analog_dark_aether, // 0x5d
        wristaccessory_t9_s3_analog_rebel_fighter_sy, // 0x5e
        wristaccessory_t9_s6_analog_scream, // 0x5f
        wristaccessory_t9_s2_analog_mayan, // 0x60
        wristaccessory_t9_s1_analog_bope_01, // 0x61
        wristaccessory_t9_esports_ultra_ms, // 0x62
        wristaccessory_t9_esports_ultra_sy, // 0x63
        wristaccessory_t9_esports_ultra_pc, // 0x64
        wristaccessory_t9_s6_analog_hypnosis, // 0x65
        wristaccessory_t9_s2_analog_paratroop, // 0x66
        wristaccessory_t9_s1_bracelet_gold_chain_01, // 0x67
        wristaccessory_t9_s1_analog_aviator_02, // 0x68
        wristaccessory_t9_s1_analog_horex_01, // 0x69
        wristaccessory_t9_s1_analog_fancy, // 0x6a
        wristaccessory_t9_s1_analog_aviator_x2, // 0x6b
        wristaccessory_t9_s5_analog_classic, // 0x6c
        wristaccessory_t9_esports_optic_ms, // 0x6d
        wristaccessory_t9_s1_digital_zm_heart_rate_black_02, // 0x6e
        wristaccessory_t9_esports_optic_sy, // 0x6f
        wristaccessory_t9_esports_optic_pc, // 0x70
        wristaccessory_t9_s5_analog_beer_o_clock, // 0x71
        wristaccessory_t9_s5_analog_hacking_code, // 0x72
        wristaccessory_t9_s2_analog_rebel, // 0x73
        wristaccessory_t9_s5_digital_ghosted, // 0x74
        wristaccessory_t9_s5_analog_egy_burial, // 0x75
        wristaccessory_t9_s2_analog_white_tiger, // 0x76
        wristaccessory_t9_s5_digital_critical_kill, // 0x77
        wristaccessory_t9_s2_analog_caiman, // 0x78
        hash_4fee76d1114701af, // 0x79
        wristaccessory_t9_s3_analog_chrono_sea, // 0x7a
        wristaccessory_t9_s4_holographic_rank_cyber, // 0x7b
        wristaccessory_t9_s2_analog_broken_fancy, // 0x7c
        hash_511c7fa835d89891, // 0x7d
        wristaccessory_t9_s5_digital_judge_d, // 0x7e
        wristaccessory_t9_s4_digital_royal_decree, // 0x7f
        wristaccessory_t9_s6_analog_street_mech_sy, // 0x80
        wristaccessory_t9_s1_bracelet_skull_01, // 0x81
        wristaccessory_t9_s5_analog_rainbow_jewel, // 0x82
        wristaccessory_t9_s3_digital_big_joke, // 0x83
        wristaccessory_t9_s1_bracelet_01, // 0x84
        wristaccessory_t9_s5_analog_demon, // 0x85
        wristaccessory_t9_s6_digital_compass_stitch, // 0x86
        hash_575c967cd59c9145, // 0x87
        wristaccessory_t9_s6_digital_rank_carnival, // 0x88
        wristaccessory_t9_s5_analog_no_numbers, // 0x89
        wristaccessory_t9_s6_analog_blue_chroma, // 0x8a
        wristaccessory_t9_s5_digital_mummy_cat, // 0x8b
        wristaccessory_t9_esports_surge_sy, // 0x8c
        wristaccessory_t9_esports_surge_pc, // 0x8d
        wristaccessory_t9_s4_digital_big_joke, // 0x8e
        wristaccessory_t9_esports_surge_ms, // 0x8f
        wristaccessory_t9_s4_analog_jefe, // 0x90
        wristaccessory_t9_esports_faze_ms, // 0x91
        wristaccessory_t9_esports_faze_pc, // 0x92
        wristaccessory_t9_esports_faze_sy, // 0x93
        wristaccessory_t9_s1_analog_origin_01, // 0x94
        wristaccessory_t9_esports_mutineers_pc, // 0x95
        wristaccessory_t9_esports_mutineers_sy, // 0x96
        wristaccessory_t9_esports_mutineers_ms, // 0x97
        wristaccessory_t9_s5_digital_wonderland, // 0x98
        wristaccessory_t9_s1_analog_private_eye_03, // 0x99
        wristaccessory_t9_s1_analog_private_eye_02, // 0x9a
        wristaccessory_t9_s1_analog_private_eye_01, // 0x9b
        wristaccessory_t9_esports_guerillas_sy, // 0x9c
        wristaccessory_t9_esports_guerillas_pc, // 0x9d
        wristaccessory_t9_esports_guerillas_ms, // 0x9e
        wristaccessory_t9_s6_digital_nightmare_fuel, // 0x9f
        wristaccessory_t9_s4_analog_wasteland, // 0xa0
        wristaccessory_t9_s3_digital_diver_wargames, // 0xa1
        wristaccessory_t9_s5_digital_rank_countdwn, // 0xa2
        wristaccessory_t9_s6_analog_halloween, // 0xa3
        wristaccessory_t9_s2_digital_river_slasher, // 0xa4
        wristaccessory_t9_s2_bracelet_lure, // 0xa5
        wristaccessory_t9_s2_analog_cold_hearted, // 0xa6
        wristaccessory_t9_s6_digital_reaper_bunny, // 0xa7
        wristaccessory_t9_s6_analog_donnie, // 0xa8
        wristaccessory_t9_s1_digital_rank_penumbra_sy, // 0xa9
        wristaccessory_t9_s3_analog_nuclear_fallout, // 0xaa
        wristaccessory_t9_s3_digital_heart_rate_alien, // 0xab
        wristaccessory_t9_s1_digital_rank_01, // 0xac
        wristaccessory_t9_s2_digital_jade, // 0xad
        hash_708a99620b81ea23, // 0xae
        hash_708a9a620b81ebd6, // 0xaf
        wristaccessory_t9_s3_analog_zombie_naga, // 0xb0
        wristaccessory_t9_s6_digital_sultan, // 0xb1
        wristaccessory_t9_s6_digital_gov1, // 0xb2
        wristaccessory_t9_s6_digital_gov2, // 0xb3
        wristaccessory_t9_s5_digital_tagger, // 0xb4
        wristaccessory_t9_s2_analog_black_silver, // 0xb5
        wristaccessory_t9_s2_digital_mini_map_hot_rod, // 0xb6
        wristaccessory_t9_s4_digital_holographic, // 0xb7
        wristaccessory_t9_s4_analog_fire_storm, // 0xb8
        wristaccessory_t9_s3_digital_death_touch, // 0xb9
        wristaccessory_t9_s6_analog_big_joke4_solo, // 0xba
        wristaccessory_t9_s4_bracelet_leather_studd, // 0xbb
        wristaccessory_t9_s2_analog_black_gold, // 0xbc
        wristaccessory_t9_s1_digital_compass_01, // 0xbd
        wristaccessory_t9_s1_digital_first_spy_01, // 0xbe
        wristaccessory_t9_s1_digital_gaudy_01, // 0xbf
        wristaccessory_t9_s5_analog_retrotac, // 0xc0
        wristaccessory_t9_s6_analog_krieger, // 0xc1
        wristaccessory_t9_s5_digital_dark_weaver, // 0xc2
        wristaccessory_t9_s6_digital_frost // 0xc3
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

    // idx 0x5 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x6 members: 0x21
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

    // idx 0x7 members: 0x2
    enum hash_3a71885fe7e328bd {
        superfaction_nato, // 0x0
        superfaction_warsaw_pact // 0x1
    };

    // root: bitSize: 0x16ac8, members: 5

    // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
    int loadoutversion;
    // offset: 0x20, bitSize: 0xa8c0(0x1518 Byte(s)), array:0x32(hti:0xffff)
    hash_51ee933f6ee8ec54 variant[50];
    // offset: 0xa8e0, bitSize: 0xc1e0(0x183c Byte(s))
    hash_18b04f5b045db908 cacloadouts;
    // offset: 0x16ac0, bitSize: 0x1
    bool loadoutinitialized;
};

